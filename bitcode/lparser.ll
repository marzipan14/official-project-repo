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
@__A_VARIABLE = internal global i32 0

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  %23 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 3, i32 0
  %24 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 5
  br label %25, !dbg !622

; <label>:25:                                     ; preds = %33, %22
  %26 = load i32, i32* %23, align 8, !dbg !623, !tbaa !624
  switch i32 %26, label %28 [
    i32 260, label %27
    i32 261, label %27
    i32 262, label %27
    i32 276, label %27
    i32 287, label %27
  ], !dbg !632

; <label>:27:                                     ; preds = %25, %25, %25, %25, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  br label %42

; <label>:28:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  %29 = call fastcc i32 @statement(%struct.LexState* nonnull %5) #5, !dbg !634
  %30 = load i32, i32* %23, align 8, !dbg !645, !tbaa !624
  %31 = icmp eq i32 %30, 59, !dbg !647
  br i1 %31, label %32, label %33, !dbg !648

; <label>:32:                                     ; preds = %28
  call void @luaX_next(%struct.LexState* nonnull %5) #5, !dbg !649
  br label %33, !dbg !651

; <label>:33:                                     ; preds = %32, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  %34 = load %struct.FuncState*, %struct.FuncState** %24, align 8, !dbg !653, !tbaa !654
  %35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %34, i64 0, i32 13, !dbg !655
  %36 = load i8, i8* %35, align 2, !dbg !655, !tbaa !656
  %37 = zext i8 %36 to i32, !dbg !657
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %34, i64 0, i32 9, !dbg !658
  store i32 %37, i32* %38, align 4, !dbg !659, !tbaa !660
  %39 = icmp eq i32 %29, 0, !dbg !661
  br i1 %39, label %25, label %40, !dbg !622, !llvm.loop !662

; <label>:40:                                     ; preds = %33
  %41 = load i32, i32* %23, align 8, !dbg !665, !tbaa !624
  br label %42, !dbg !674

; <label>:42:                                     ; preds = %40, %27
  %43 = phi i32 [ %41, %40 ], [ %26, %27 ], !dbg !665
  %44 = load %struct.lua_State*, %struct.lua_State** %15, align 8, !dbg !674, !tbaa !611
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %44, i64 0, i32 15, !dbg !674
  %46 = load i16, i16* %45, align 8, !dbg !674, !tbaa !614
  %47 = add i16 %46, -1, !dbg !674
  store i16 %47, i16* %45, align 8, !dbg !674, !tbaa !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  %48 = icmp eq i32 %43, 287, !dbg !678
  br i1 %48, label %52, label %49, !dbg !679

; <label>:49:                                     ; preds = %42
  %50 = call i8* @luaX_token2str(%struct.LexState* nonnull %5, i32 287) #5, !dbg !687
  %51 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %50) #5, !dbg !688
  call void @luaX_syntaxerror(%struct.LexState* nonnull %5, i8* %51) #5, !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  br label %52, !dbg !691

; <label>:52:                                     ; preds = %42, %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  call fastcc void @close_func(%struct.LexState* nonnull %5) #6, !dbg !693
  %53 = load %struct.Proto*, %struct.Proto** %12, align 8, !dbg !694, !tbaa !585
  call void @llvm.lifetime.end.p0i8(i64 600, i8* nonnull %8) #4, !dbg !695
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %7) #4, !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  ret %struct.Proto* %53, !dbg !696
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
define internal fastcc void @open_func(%struct.LexState*, %struct.FuncState*) unnamed_addr #0 !dbg !697 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !713
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !dbg !713, !tbaa !611
  %5 = tail call %struct.Proto* @luaF_newproto(%struct.lua_State* %4) #5, !dbg !715
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 0, !dbg !717
  store %struct.Proto* %5, %struct.Proto** %6, align 8, !dbg !718, !tbaa !585
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !719
  %8 = bitcast %struct.FuncState** %7 to i64*, !dbg !719
  %9 = load i64, i64* %8, align 8, !dbg !719, !tbaa !654
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 2, !dbg !720
  %11 = bitcast %struct.FuncState** %10 to i64*, !dbg !721
  store i64 %9, i64* %11, align 8, !dbg !721, !tbaa !722
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 3, !dbg !723
  store %struct.LexState* %0, %struct.LexState** %12, align 8, !dbg !724, !tbaa !725
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 4, !dbg !726
  store %struct.lua_State* %4, %struct.lua_State** %13, align 8, !dbg !727, !tbaa !728
  store %struct.FuncState* %1, %struct.FuncState** %7, align 8, !dbg !729, !tbaa !654
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 6, !dbg !730
  %15 = bitcast i32* %14 to <4 x i32>*, !dbg !731
  store <4 x i32> <i32 0, i32 -1, i32 -1, i32 0>, <4 x i32>* %15, align 8, !dbg !731, !tbaa !732
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 10, !dbg !733
  store i32 0, i32* %16, align 8, !dbg !734, !tbaa !735
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 11, !dbg !736
  store i32 0, i32* %17, align 4, !dbg !737, !tbaa !738
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 12, !dbg !739
  store i16 0, i16* %18, align 8, !dbg !740, !tbaa !741
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 13, !dbg !742
  store i8 0, i8* %19, align 2, !dbg !743, !tbaa !656
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 5, !dbg !744
  store %struct.BlockCnt* null, %struct.BlockCnt** %20, align 8, !dbg !745, !tbaa !746
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9, !dbg !747
  %22 = bitcast %union.TString** %21 to i64*, !dbg !747
  %23 = load i64, i64* %22, align 8, !dbg !747, !tbaa !748
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 9, !dbg !749
  %25 = bitcast %union.TString** %24 to i64*, !dbg !750
  store i64 %23, i64* %25, align 8, !dbg !750, !tbaa !751
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 22, !dbg !752
  store i8 2, i8* %26, align 1, !dbg !753, !tbaa !754
  %27 = tail call %struct.Table* @luaH_new(%struct.lua_State* %4, i32 0, i32 0) #5, !dbg !755
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 1, !dbg !756
  store %struct.Table* %27, %struct.Table** %28, align 8, !dbg !757, !tbaa !758
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i64 0, i32 4, !dbg !759
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %29, align 8, !dbg !759, !tbaa !760
  %31 = bitcast %struct.lua_TValue* %30 to %struct.Table**, !dbg !759
  store %struct.Table* %27, %struct.Table** %31, align 8, !dbg !759, !tbaa !761
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i64 0, i32 1, !dbg !759
  store i32 5, i32* %32, align 8, !dbg !759, !tbaa !762
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i64 0, i32 9, !dbg !763
  %34 = bitcast %struct.lua_TValue** %33 to i64*, !dbg !763
  %35 = load i64, i64* %34, align 8, !dbg !763, !tbaa !766
  %36 = bitcast %struct.lua_TValue** %29 to i64*, !dbg !763
  %37 = load i64, i64* %36, align 8, !dbg !763, !tbaa !760
  %38 = sub i64 %35, %37, !dbg !763
  %39 = icmp slt i64 %38, 17, !dbg !763
  %40 = inttoptr i64 %37 to %struct.lua_TValue*, !dbg !767
  br i1 %39, label %41, label %43, !dbg !767

; <label>:41:                                     ; preds = %2
  tail call void @luaD_growstack(%struct.lua_State* %4, i32 1) #5, !dbg !763
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %29, align 8, !dbg !767, !tbaa !760
  br label %43, !dbg !763

; <label>:43:                                     ; preds = %2, %41
  %44 = phi %struct.lua_TValue* [ %40, %2 ], [ %42, %41 ], !dbg !767
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i64 1, !dbg !767
  store %struct.lua_TValue* %45, %struct.lua_TValue** %29, align 8, !dbg !767, !tbaa !760
  %46 = bitcast %struct.lua_TValue* %45 to %struct.Proto**, !dbg !768
  store %struct.Proto* %5, %struct.Proto** %46, align 8, !dbg !768, !tbaa !761
  %47 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i64 1, i32 1, !dbg !768
  store i32 9, i32* %47, align 8, !dbg !768, !tbaa !762
  %48 = load i64, i64* %34, align 8, !dbg !769, !tbaa !766
  %49 = load i64, i64* %36, align 8, !dbg !769, !tbaa !760
  %50 = sub i64 %48, %49, !dbg !769
  %51 = icmp slt i64 %50, 17, !dbg !769
  %52 = inttoptr i64 %49 to %struct.lua_TValue*, !dbg !772
  br i1 %51, label %53, label %55, !dbg !772

; <label>:53:                                     ; preds = %43
  tail call void @luaD_growstack(%struct.lua_State* nonnull %4, i32 1) #5, !dbg !769
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %29, align 8, !dbg !772, !tbaa !760
  br label %55, !dbg !769

; <label>:55:                                     ; preds = %43, %53
  %56 = phi %struct.lua_TValue* [ %52, %43 ], [ %54, %53 ], !dbg !772
  %57 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %56, i64 1, !dbg !772
  store %struct.lua_TValue* %57, %struct.lua_TValue** %29, align 8, !dbg !772, !tbaa !760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  ret void, !dbg !773
}

; Function Attrs: noredzone
declare hidden void @luaX_next(%struct.LexState*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @close_func(%struct.LexState*) unnamed_addr #0 !dbg !774 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !781
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8, !dbg !781, !tbaa !611
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !783
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !783, !tbaa !654
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0, !dbg !785
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !dbg !785, !tbaa !585
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 13, !dbg !796
  %9 = load i8, i8* %8, align 2, !dbg !796, !tbaa !656
  %10 = icmp eq i8 %9, 0, !dbg !797
  %11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 6
  br i1 %10, label %48, label %12, !dbg !798

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %11, align 8, !tbaa !799
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 7
  %15 = load %struct.LocVar*, %struct.LocVar** %14, align 8, !tbaa !800
  %16 = zext i8 %9 to i64, !dbg !798
  %17 = and i8 %9, 1, !dbg !798
  %18 = icmp eq i8 %17, 0, !dbg !798
  br i1 %18, label %27, label %19, !dbg !798

; <label>:19:                                     ; preds = %12
  %20 = add i8 %9, -1, !dbg !801
  %21 = zext i8 %20 to i64, !dbg !801
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 15, i64 %21, !dbg !801
  %23 = load i16, i16* %22, align 2, !dbg !801, !tbaa !802
  %24 = zext i16 %23 to i64, !dbg !801
  %25 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %15, i64 %24, i32 2, !dbg !803
  store i32 %13, i32* %25, align 4, !dbg !804, !tbaa !805
  %26 = add nsw i64 %16, -1, !dbg !801
  br label %27, !dbg !798

; <label>:27:                                     ; preds = %12, %19
  %28 = phi i64 [ %16, %12 ], [ %26, %19 ]
  %29 = icmp eq i8 %9, 1, !dbg !798
  br i1 %29, label %47, label %30, !dbg !798

; <label>:30:                                     ; preds = %27, %30
  %31 = phi i64 [ %46, %30 ], [ %28, %27 ]
  %32 = add i64 %31, 255, !dbg !801
  %33 = and i64 %32, 255, !dbg !801
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 15, i64 %33, !dbg !801
  %35 = load i16, i16* %34, align 2, !dbg !801, !tbaa !802
  %36 = zext i16 %35 to i64, !dbg !801
  %37 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %15, i64 %36, i32 2, !dbg !803
  store i32 %13, i32* %37, align 4, !dbg !804, !tbaa !805
  %38 = trunc i64 %31 to i8, !dbg !801
  %39 = add i8 %38, -2, !dbg !801
  %40 = zext i8 %39 to i64, !dbg !801
  %41 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 15, i64 %40, !dbg !801
  %42 = load i16, i16* %41, align 2, !dbg !801, !tbaa !802
  %43 = zext i16 %42 to i64, !dbg !801
  %44 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %15, i64 %43, i32 2, !dbg !803
  store i32 %13, i32* %44, align 4, !dbg !804, !tbaa !805
  %45 = icmp eq i8 %39, 0, !dbg !797
  %46 = add nsw i64 %31, -2, !dbg !801
  br i1 %45, label %47, label %30, !dbg !798, !llvm.loop !807

; <label>:47:                                     ; preds = %30, %27
  store i8 0, i8* %8, align 2, !dbg !801, !tbaa !656
  br label %48, !dbg !798

; <label>:48:                                     ; preds = %1, %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  tail call void @luaK_ret(%struct.FuncState* %5, i32 0, i32 0) #5, !dbg !811
  %49 = load i32, i32* %11, align 8, !dbg !812, !tbaa !799
  %50 = icmp sgt i32 %49, -2, !dbg !812
  br i1 %50, label %51, label %62, !dbg !812

; <label>:51:                                     ; preds = %48
  %52 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 4, !dbg !812
  %53 = bitcast i32** %52 to i8**, !dbg !812
  %54 = load i8*, i8** %53, align 8, !dbg !812, !tbaa !813
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 12, !dbg !812
  %56 = load i32, i32* %55, align 8, !dbg !812, !tbaa !814
  %57 = sext i32 %56 to i64, !dbg !812
  %58 = shl nsw i64 %57, 2, !dbg !812
  %59 = sext i32 %49 to i64, !dbg !812
  %60 = shl nsw i64 %59, 2, !dbg !812
  %61 = tail call i8* @luaM_realloc_(%struct.lua_State* %3, i8* %54, i64 %58, i64 %60) #5, !dbg !812
  br label %67, !dbg !812

; <label>:62:                                     ; preds = %48
  %63 = tail call i8* @luaM_toobig(%struct.lua_State* %3) #5, !dbg !812
  %64 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 4, !dbg !812
  %65 = bitcast i32** %64 to i8**, !dbg !812
  %66 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 12, !dbg !815
  br label %67, !dbg !812

; <label>:67:                                     ; preds = %62, %51
  %68 = phi i32* [ %66, %62 ], [ %55, %51 ], !dbg !815
  %69 = phi i8** [ %65, %62 ], [ %53, %51 ], !dbg !812
  %70 = phi i8* [ %63, %62 ], [ %61, %51 ], !dbg !812
  store i8* %70, i8** %69, align 8, !dbg !812, !tbaa !813
  %71 = load i32, i32* %11, align 8, !dbg !816, !tbaa !799
  store i32 %71, i32* %68, align 8, !dbg !817, !tbaa !814
  %72 = icmp sgt i32 %71, -2, !dbg !818
  br i1 %72, label %73, label %84, !dbg !818

; <label>:73:                                     ; preds = %67
  %74 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 6, !dbg !818
  %75 = bitcast i32** %74 to i8**, !dbg !818
  %76 = load i8*, i8** %75, align 8, !dbg !818, !tbaa !819
  %77 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 13, !dbg !818
  %78 = load i32, i32* %77, align 4, !dbg !818, !tbaa !820
  %79 = sext i32 %78 to i64, !dbg !818
  %80 = shl nsw i64 %79, 2, !dbg !818
  %81 = sext i32 %71 to i64, !dbg !818
  %82 = shl nsw i64 %81, 2, !dbg !818
  %83 = tail call i8* @luaM_realloc_(%struct.lua_State* %3, i8* %76, i64 %80, i64 %82) #5, !dbg !818
  br label %89, !dbg !818

; <label>:84:                                     ; preds = %67
  %85 = tail call i8* @luaM_toobig(%struct.lua_State* %3) #5, !dbg !818
  %86 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 6, !dbg !818
  %87 = bitcast i32** %86 to i8**, !dbg !818
  %88 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 13, !dbg !821
  br label %89, !dbg !818

; <label>:89:                                     ; preds = %84, %73
  %90 = phi i32* [ %88, %84 ], [ %77, %73 ], !dbg !821
  %91 = phi i8** [ %87, %84 ], [ %75, %73 ], !dbg !818
  %92 = phi i8* [ %85, %84 ], [ %83, %73 ], !dbg !818
  store i8* %92, i8** %91, align 8, !dbg !818, !tbaa !819
  %93 = load i32, i32* %11, align 8, !dbg !822, !tbaa !799
  store i32 %93, i32* %90, align 4, !dbg !823, !tbaa !820
  %94 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 10, !dbg !824
  %95 = load i32, i32* %94, align 8, !dbg !824, !tbaa !735
  %96 = icmp sgt i32 %95, -2, !dbg !824
  br i1 %96, label %97, label %108, !dbg !824

; <label>:97:                                     ; preds = %89
  %98 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 3, !dbg !824
  %99 = bitcast %struct.lua_TValue** %98 to i8**, !dbg !824
  %100 = load i8*, i8** %99, align 8, !dbg !824, !tbaa !825
  %101 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 11, !dbg !824
  %102 = load i32, i32* %101, align 4, !dbg !824, !tbaa !826
  %103 = sext i32 %102 to i64, !dbg !824
  %104 = shl nsw i64 %103, 4, !dbg !824
  %105 = sext i32 %95 to i64, !dbg !824
  %106 = shl nsw i64 %105, 4, !dbg !824
  %107 = tail call i8* @luaM_realloc_(%struct.lua_State* %3, i8* %100, i64 %104, i64 %106) #5, !dbg !824
  br label %113, !dbg !824

; <label>:108:                                    ; preds = %89
  %109 = tail call i8* @luaM_toobig(%struct.lua_State* %3) #5, !dbg !824
  %110 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 3, !dbg !824
  %111 = bitcast %struct.lua_TValue** %110 to i8**, !dbg !824
  %112 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 11, !dbg !827
  br label %113, !dbg !824

; <label>:113:                                    ; preds = %108, %97
  %114 = phi i32* [ %112, %108 ], [ %101, %97 ], !dbg !827
  %115 = phi i8** [ %111, %108 ], [ %99, %97 ], !dbg !824
  %116 = phi i8* [ %109, %108 ], [ %107, %97 ], !dbg !824
  store i8* %116, i8** %115, align 8, !dbg !824, !tbaa !825
  %117 = load i32, i32* %94, align 8, !dbg !828, !tbaa !735
  store i32 %117, i32* %114, align 4, !dbg !829, !tbaa !826
  %118 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 11, !dbg !830
  %119 = load i32, i32* %118, align 4, !dbg !830, !tbaa !738
  %120 = icmp sgt i32 %119, -2, !dbg !830
  br i1 %120, label %121, label %132, !dbg !830

; <label>:121:                                    ; preds = %113
  %122 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 5, !dbg !830
  %123 = bitcast %struct.Proto*** %122 to i8**, !dbg !830
  %124 = load i8*, i8** %123, align 8, !dbg !830, !tbaa !831
  %125 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 14, !dbg !830
  %126 = load i32, i32* %125, align 8, !dbg !830, !tbaa !832
  %127 = sext i32 %126 to i64, !dbg !830
  %128 = shl nsw i64 %127, 3, !dbg !830
  %129 = sext i32 %119 to i64, !dbg !830
  %130 = shl nsw i64 %129, 3, !dbg !830
  %131 = tail call i8* @luaM_realloc_(%struct.lua_State* %3, i8* %124, i64 %128, i64 %130) #5, !dbg !830
  br label %137, !dbg !830

; <label>:132:                                    ; preds = %113
  %133 = tail call i8* @luaM_toobig(%struct.lua_State* %3) #5, !dbg !830
  %134 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 5, !dbg !830
  %135 = bitcast %struct.Proto*** %134 to i8**, !dbg !830
  %136 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 14, !dbg !833
  br label %137, !dbg !830

; <label>:137:                                    ; preds = %132, %121
  %138 = phi i32* [ %136, %132 ], [ %125, %121 ], !dbg !833
  %139 = phi i8** [ %135, %132 ], [ %123, %121 ], !dbg !830
  %140 = phi i8* [ %133, %132 ], [ %131, %121 ], !dbg !830
  store i8* %140, i8** %139, align 8, !dbg !830, !tbaa !831
  %141 = load i32, i32* %118, align 4, !dbg !834, !tbaa !738
  store i32 %141, i32* %138, align 8, !dbg !835, !tbaa !832
  %142 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 12, !dbg !836
  %143 = load i16, i16* %142, align 8, !dbg !836, !tbaa !741
  %144 = sext i16 %143 to i64, !dbg !836
  %145 = add nsw i64 %144, 1, !dbg !836
  %146 = icmp ult i64 %145, 1152921504606846976, !dbg !836
  br i1 %146, label %147, label %157, !dbg !836

; <label>:147:                                    ; preds = %137
  %148 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 7, !dbg !836
  %149 = bitcast %struct.LocVar** %148 to i8**, !dbg !836
  %150 = load i8*, i8** %149, align 8, !dbg !836, !tbaa !800
  %151 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 15, !dbg !836
  %152 = load i32, i32* %151, align 4, !dbg !836, !tbaa !837
  %153 = sext i32 %152 to i64, !dbg !836
  %154 = shl nsw i64 %153, 4, !dbg !836
  %155 = shl nsw i64 %144, 4, !dbg !836
  %156 = tail call i8* @luaM_realloc_(%struct.lua_State* %3, i8* %150, i64 %154, i64 %155) #5, !dbg !836
  br label %162, !dbg !836

; <label>:157:                                    ; preds = %137
  %158 = tail call i8* @luaM_toobig(%struct.lua_State* %3) #5, !dbg !836
  %159 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 7, !dbg !836
  %160 = bitcast %struct.LocVar** %159 to i8**, !dbg !836
  %161 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 15, !dbg !838
  br label %162, !dbg !836

; <label>:162:                                    ; preds = %147, %157
  %163 = phi i32* [ %151, %147 ], [ %161, %157 ], !dbg !838
  %164 = phi i8** [ %149, %147 ], [ %160, %157 ], !dbg !836
  %165 = phi i8* [ %156, %147 ], [ %158, %157 ], !dbg !836
  store i8* %165, i8** %164, align 8, !dbg !836, !tbaa !800
  %166 = load i16, i16* %142, align 8, !dbg !839, !tbaa !741
  %167 = sext i16 %166 to i32, !dbg !840
  store i32 %167, i32* %163, align 4, !dbg !841, !tbaa !837
  %168 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 19, !dbg !842
  %169 = load i8, i8* %168, align 8, !dbg !842, !tbaa !843
  %170 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 8, !dbg !842
  %171 = bitcast %union.TString*** %170 to i8**, !dbg !842
  %172 = load i8*, i8** %171, align 8, !dbg !842, !tbaa !844
  %173 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 10, !dbg !842
  %174 = load i32, i32* %173, align 8, !dbg !842, !tbaa !845
  %175 = sext i32 %174 to i64, !dbg !842
  %176 = shl nsw i64 %175, 3, !dbg !842
  %177 = zext i8 %169 to i64, !dbg !842
  %178 = shl nuw nsw i64 %177, 3, !dbg !842
  %179 = tail call i8* @luaM_realloc_(%struct.lua_State* %3, i8* %172, i64 %176, i64 %178) #5, !dbg !842
  store i8* %179, i8** %171, align 8, !dbg !842, !tbaa !844
  %180 = load i8, i8* %168, align 8, !dbg !846, !tbaa !843
  %181 = zext i8 %180 to i32, !dbg !847
  store i32 %181, i32* %173, align 8, !dbg !848, !tbaa !845
  %182 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 2, !dbg !849
  %183 = bitcast %struct.FuncState** %182 to i64*, !dbg !849
  %184 = load i64, i64* %183, align 8, !dbg !849, !tbaa !722
  %185 = bitcast %struct.FuncState** %4 to i64*, !dbg !850
  store i64 %184, i64* %185, align 8, !dbg !850, !tbaa !654
  %186 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !860
  %187 = load i32, i32* %186, align 8, !dbg !860, !tbaa !624
  %188 = add i32 %187, -285, !dbg !861
  %189 = icmp ult i32 %188, 2, !dbg !861
  br i1 %189, label %190, label %199, !dbg !861

; <label>:190:                                    ; preds = %162
  %191 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !862
  %192 = bitcast %union.SemInfo* %191 to %union.TString**, !dbg !863
  %193 = load %union.TString*, %union.TString** %192, align 8, !dbg !863, !tbaa !761
  %194 = getelementptr inbounds %union.TString, %union.TString* %193, i64 1, !dbg !865
  %195 = bitcast %union.TString* %194 to i8*, !dbg !865
  %196 = getelementptr inbounds %union.TString, %union.TString* %193, i64 0, i32 0, i32 5, !dbg !866
  %197 = load i64, i64* %196, align 8, !dbg !866, !tbaa !761
  %198 = tail call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* nonnull %195, i64 %197) #5, !dbg !867
  br label %199, !dbg !868

; <label>:199:                                    ; preds = %190, %162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  %200 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i64 0, i32 4, !dbg !870
  %201 = load %struct.lua_TValue*, %struct.lua_TValue** %200, align 8, !dbg !871, !tbaa !760
  %202 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %201, i64 -2, !dbg !871
  store %struct.lua_TValue* %202, %struct.lua_TValue** %200, align 8, !dbg !871, !tbaa !760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  ret void, !dbg !872
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
define internal fastcc i32 @statement(%struct.LexState*) unnamed_addr #0 !dbg !873 {
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
  %13 = alloca %struct.expdesc, align 8
  %14 = alloca %struct.expdesc, align 8
  %15 = alloca %struct.BlockCnt, align 8
  %16 = alloca %struct.BlockCnt, align 8
  %17 = alloca %struct.expdesc, align 8
  %18 = alloca %struct.BlockCnt, align 8
  %19 = alloca %struct.expdesc, align 8
  %20 = alloca %struct.BlockCnt, align 8
  %21 = alloca i32, align 4
  %22 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !880
  %23 = load i32, i32* %22, align 4, !dbg !880, !tbaa !881
  %24 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !883
  %25 = load i32, i32* %24, align 8, !dbg !883, !tbaa !624
  switch i32 %25, label %943 [
    i32 266, label %26
    i32 277, label %42
    i32 259, label %142
    i32 264, label %143
    i32 272, label %327
    i32 265, label %626
    i32 268, label %694
    i32 273, label %851
    i32 258, label %909
  ], !dbg !884

; <label>:26:                                     ; preds = %1
  %27 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !897
  %28 = load %struct.FuncState*, %struct.FuncState** %27, align 8, !dbg !897, !tbaa !654
  %29 = bitcast i32* %21 to i8*, !dbg !899
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #4, !dbg !899
  store i32 -1, i32* %21, align 4, !dbg !900, !tbaa !732
  %30 = tail call fastcc i32 @test_then_block(%struct.LexState* nonnull %0) #5, !dbg !901
  br label %31, !dbg !903

; <label>:31:                                     ; preds = %34, %26
  %32 = phi i32 [ %30, %26 ], [ %36, %34 ], !dbg !904
  %33 = load i32, i32* %24, align 8, !dbg !906, !tbaa !624
  switch i32 %33, label %39 [
    i32 261, label %34
    i32 260, label %37
  ], !dbg !903

; <label>:34:                                     ; preds = %31
  %35 = call i32 @luaK_jump(%struct.FuncState* %28) #5, !dbg !907
  call void @luaK_concat(%struct.FuncState* %28, i32* nonnull %21, i32 %35) #5, !dbg !908
  call void @luaK_patchtohere(%struct.FuncState* %28, i32 %32) #5, !dbg !909
  %36 = call fastcc i32 @test_then_block(%struct.LexState* nonnull %0) #5, !dbg !910
  br label %31, !dbg !903, !llvm.loop !911

; <label>:37:                                     ; preds = %31
  %38 = call i32 @luaK_jump(%struct.FuncState* %28) #5, !dbg !914
  call void @luaK_concat(%struct.FuncState* %28, i32* nonnull %21, i32 %38) #5, !dbg !917
  call void @luaK_patchtohere(%struct.FuncState* %28, i32 %32) #5, !dbg !918
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !919
  call fastcc void @block(%struct.LexState* nonnull %0) #5, !dbg !920
  br label %40, !dbg !921

; <label>:39:                                     ; preds = %31
  call void @luaK_concat(%struct.FuncState* %28, i32* nonnull %21, i32 %32) #5, !dbg !922
  br label %40

; <label>:40:                                     ; preds = %37, %39
  %41 = load i32, i32* %21, align 4, !dbg !923, !tbaa !732
  call void @luaK_patchtohere(%struct.FuncState* %28, i32 %41) #5, !dbg !924
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 266, i32 %23) #5, !dbg !925
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #4, !dbg !926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !926
  br label %967, !dbg !927

; <label>:42:                                     ; preds = %1
  %43 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !941
  %44 = load %struct.FuncState*, %struct.FuncState** %43, align 8, !dbg !941, !tbaa !654
  %45 = bitcast %struct.BlockCnt* %20 to i8*, !dbg !943
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %45) #4, !dbg !943
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !944
  %46 = tail call i32 @luaK_getlabel(%struct.FuncState* %44) #5, !dbg !945
  %47 = bitcast %struct.expdesc* %19 to i8*, !dbg !969
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %47) #4, !dbg !969
  %48 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %19, i32 0) #5, !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  %49 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i64 0, i32 0, !dbg !983
  %50 = load i32, i32* %49, align 8, !dbg !983, !tbaa !985
  %51 = icmp eq i32 %50, 1, !dbg !987
  br i1 %51, label %52, label %53, !dbg !988

; <label>:52:                                     ; preds = %42
  store i32 3, i32* %49, align 8, !dbg !989, !tbaa !985
  br label %53, !dbg !990

; <label>:53:                                     ; preds = %52, %42
  %54 = load %struct.FuncState*, %struct.FuncState** %43, align 8, !dbg !991, !tbaa !654
  call void @luaK_goiftrue(%struct.FuncState* %54, %struct.expdesc* nonnull %19) #5, !dbg !992
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i64 0, i32 3, !dbg !993
  %56 = load i32, i32* %55, align 4, !dbg !993, !tbaa !994
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %47) #4, !dbg !995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !996
  %57 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 1, !dbg !1011
  store i32 -1, i32* %57, align 8, !dbg !1012, !tbaa !1013
  %58 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 4, !dbg !1015
  store i8 1, i8* %58, align 2, !dbg !1016, !tbaa !1017
  %59 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %44, i64 0, i32 13, !dbg !1018
  %60 = load i8, i8* %59, align 2, !dbg !1018, !tbaa !656
  %61 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 2, !dbg !1019
  store i8 %60, i8* %61, align 4, !dbg !1020, !tbaa !1021
  %62 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 3, !dbg !1022
  store i8 0, i8* %62, align 1, !dbg !1023, !tbaa !1024
  %63 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %44, i64 0, i32 5, !dbg !1025
  %64 = bitcast %struct.BlockCnt** %63 to i64*, !dbg !1025
  %65 = load i64, i64* %64, align 8, !dbg !1025, !tbaa !746
  %66 = bitcast %struct.BlockCnt* %20 to i64*, !dbg !1026
  store i64 %65, i64* %66, align 8, !dbg !1026, !tbaa !1027
  store %struct.BlockCnt* %20, %struct.BlockCnt** %63, align 8, !dbg !1028, !tbaa !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  %67 = load i32, i32* %24, align 8, !dbg !1040, !tbaa !624
  %68 = icmp eq i32 %67, 259, !dbg !1041
  br i1 %68, label %74, label %69, !dbg !1042

; <label>:69:                                     ; preds = %53
  %70 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1046
  %71 = load %struct.lua_State*, %struct.lua_State** %70, align 8, !dbg !1046, !tbaa !611
  %72 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 259) #5, !dbg !1047
  %73 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %72) #5, !dbg !1048
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %73) #5, !dbg !1049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1050
  br label %74, !dbg !1051

; <label>:74:                                     ; preds = %69, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1052
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1054
  call fastcc void @block(%struct.LexState* nonnull %0) #5, !dbg !1055
  %75 = call i32 @luaK_jump(%struct.FuncState* nonnull %44) #5, !dbg !1056
  call void @luaK_patchlist(%struct.FuncState* nonnull %44, i32 %75, i32 %46) #5, !dbg !1057
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 277, i32 %23) #5, !dbg !1058
  %76 = load %struct.BlockCnt*, %struct.BlockCnt** %63, align 8, !dbg !1067, !tbaa !746
  %77 = bitcast %struct.BlockCnt* %76 to i64*, !dbg !1069
  %78 = load i64, i64* %77, align 8, !dbg !1069, !tbaa !1027
  store i64 %78, i64* %64, align 8, !dbg !1070, !tbaa !746
  %79 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %44, i64 0, i32 3, !dbg !1071
  %80 = load %struct.LexState*, %struct.LexState** %79, align 8, !dbg !1071, !tbaa !725
  %81 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %76, i64 0, i32 2, !dbg !1072
  %82 = load i8, i8* %81, align 4, !dbg !1072, !tbaa !1021
  %83 = zext i8 %82 to i32, !dbg !1073
  %84 = getelementptr inbounds %struct.LexState, %struct.LexState* %80, i64 0, i32 5, !dbg !1077
  %85 = load %struct.FuncState*, %struct.FuncState** %84, align 8, !dbg !1077, !tbaa !654
  %86 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %85, i64 0, i32 13, !dbg !1079
  %87 = load i8, i8* %86, align 2, !dbg !1079, !tbaa !656
  %88 = icmp ugt i8 %87, %82, !dbg !1080
  br i1 %88, label %89, label %130, !dbg !1081

; <label>:89:                                     ; preds = %74
  %90 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %85, i64 0, i32 6
  %91 = load i32, i32* %90, align 8, !tbaa !799
  %92 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %85, i64 0, i32 0
  %93 = load %struct.Proto*, %struct.Proto** %92, align 8, !tbaa !585
  %94 = getelementptr inbounds %struct.Proto, %struct.Proto* %93, i64 0, i32 7
  %95 = load %struct.LocVar*, %struct.LocVar** %94, align 8, !tbaa !800
  %96 = zext i8 %87 to i64, !dbg !1081
  %97 = sub i8 %87, %82, !dbg !1081
  %98 = and i8 %97, 1, !dbg !1081
  %99 = icmp eq i8 %98, 0, !dbg !1081
  br i1 %99, label %108, label %100, !dbg !1081

; <label>:100:                                    ; preds = %89
  %101 = add i8 %87, -1, !dbg !1082
  %102 = zext i8 %101 to i64, !dbg !1082
  %103 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %85, i64 0, i32 15, i64 %102, !dbg !1082
  %104 = load i16, i16* %103, align 2, !dbg !1082, !tbaa !802
  %105 = zext i16 %104 to i64, !dbg !1082
  %106 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %95, i64 %105, i32 2, !dbg !1083
  store i32 %91, i32* %106, align 4, !dbg !1084, !tbaa !805
  %107 = add nsw i64 %96, -1, !dbg !1082
  br label %108, !dbg !1081

; <label>:108:                                    ; preds = %89, %100
  %109 = phi i64 [ %96, %89 ], [ %107, %100 ]
  %110 = add i8 %82, 1, !dbg !1081
  %111 = icmp eq i8 %87, %110, !dbg !1081
  br i1 %111, label %129, label %112, !dbg !1081

; <label>:112:                                    ; preds = %108, %112
  %113 = phi i64 [ %128, %112 ], [ %109, %108 ]
  %114 = add i64 %113, 255, !dbg !1082
  %115 = and i64 %114, 255, !dbg !1082
  %116 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %85, i64 0, i32 15, i64 %115, !dbg !1082
  %117 = load i16, i16* %116, align 2, !dbg !1082, !tbaa !802
  %118 = zext i16 %117 to i64, !dbg !1082
  %119 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %95, i64 %118, i32 2, !dbg !1083
  store i32 %91, i32* %119, align 4, !dbg !1084, !tbaa !805
  %120 = trunc i64 %113 to i8, !dbg !1082
  %121 = add i8 %120, -2, !dbg !1082
  %122 = zext i8 %121 to i64, !dbg !1082
  %123 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %85, i64 0, i32 15, i64 %122, !dbg !1082
  %124 = load i16, i16* %123, align 2, !dbg !1082, !tbaa !802
  %125 = zext i16 %124 to i64, !dbg !1082
  %126 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %95, i64 %125, i32 2, !dbg !1083
  store i32 %91, i32* %126, align 4, !dbg !1084, !tbaa !805
  %127 = icmp ugt i8 %121, %82, !dbg !1080
  %128 = add nsw i64 %113, -2, !dbg !1082
  br i1 %127, label %112, label %129, !dbg !1081, !llvm.loop !807

; <label>:129:                                    ; preds = %112, %108
  store i8 %82, i8* %86, align 2, !dbg !1082, !tbaa !656
  br label %130, !dbg !1081

; <label>:130:                                    ; preds = %129, %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1085
  %131 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %76, i64 0, i32 3, !dbg !1086
  %132 = load i8, i8* %131, align 1, !dbg !1086, !tbaa !1024
  %133 = icmp eq i8 %132, 0, !dbg !1088
  br i1 %133, label %136, label %134, !dbg !1089

; <label>:134:                                    ; preds = %130
  %135 = call i32 @luaK_codeABC(%struct.FuncState* %44, i32 35, i32 %83, i32 0, i32 0) #5, !dbg !1090
  br label %136, !dbg !1090

; <label>:136:                                    ; preds = %130, %134
  %137 = load i8, i8* %59, align 2, !dbg !1091, !tbaa !656
  %138 = zext i8 %137 to i32, !dbg !1092
  %139 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %44, i64 0, i32 9, !dbg !1093
  store i32 %138, i32* %139, align 4, !dbg !1094, !tbaa !660
  %140 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %76, i64 0, i32 1, !dbg !1095
  %141 = load i32, i32* %140, align 8, !dbg !1095, !tbaa !1013
  call void @luaK_patchtohere(%struct.FuncState* %44, i32 %141) #5, !dbg !1096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1097
  call void @luaK_patchtohere(%struct.FuncState* %44, i32 %56) #5, !dbg !1098
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %45) #4, !dbg !1099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1099
  br label %967, !dbg !1100

; <label>:142:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1101
  tail call fastcc void @block(%struct.LexState* nonnull %0) #6, !dbg !1103
  tail call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 259, i32 %23) #6, !dbg !1104
  br label %967, !dbg !1105

; <label>:143:                                    ; preds = %1
  %144 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1117
  %145 = load %struct.FuncState*, %struct.FuncState** %144, align 8, !dbg !1117, !tbaa !654
  %146 = bitcast %struct.BlockCnt* %18 to i8*, !dbg !1119
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %146) #4, !dbg !1119
  %147 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %18, i64 0, i32 1, !dbg !1125
  store i32 -1, i32* %147, align 8, !dbg !1126, !tbaa !1013
  %148 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %18, i64 0, i32 4, !dbg !1127
  store i8 1, i8* %148, align 2, !dbg !1128, !tbaa !1017
  %149 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %145, i64 0, i32 13, !dbg !1129
  %150 = load i8, i8* %149, align 2, !dbg !1129, !tbaa !656
  %151 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %18, i64 0, i32 2, !dbg !1130
  store i8 %150, i8* %151, align 4, !dbg !1131, !tbaa !1021
  %152 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %18, i64 0, i32 3, !dbg !1132
  store i8 0, i8* %152, align 1, !dbg !1133, !tbaa !1024
  %153 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %145, i64 0, i32 5, !dbg !1134
  %154 = bitcast %struct.BlockCnt** %153 to i64*, !dbg !1134
  %155 = load i64, i64* %154, align 8, !dbg !1134, !tbaa !746
  %156 = bitcast %struct.BlockCnt* %18 to i64*, !dbg !1135
  store i64 %155, i64* %156, align 8, !dbg !1135, !tbaa !1027
  store %struct.BlockCnt* %18, %struct.BlockCnt** %153, align 8, !dbg !1136, !tbaa !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1137
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1138
  %157 = load i32, i32* %24, align 8, !dbg !1150, !tbaa !624
  %158 = icmp eq i32 %157, 285, !dbg !1151
  br i1 %158, label %164, label %159, !dbg !1152

; <label>:159:                                    ; preds = %143
  %160 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1156
  %161 = load %struct.lua_State*, %struct.lua_State** %160, align 8, !dbg !1156, !tbaa !611
  %162 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !1157
  %163 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %161, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %162) #5, !dbg !1158
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %163) #5, !dbg !1159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1160
  br label %164, !dbg !1161

; <label>:164:                                    ; preds = %159, %143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  %165 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !1163
  %166 = bitcast %union.SemInfo* %165 to %union.TString**, !dbg !1164
  %167 = load %union.TString*, %union.TString** %166, align 8, !dbg !1164, !tbaa !761
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1167
  %168 = load i32, i32* %24, align 8, !dbg !1169, !tbaa !624
  switch i32 %168, label %259 [
    i32 61, label %169
    i32 44, label %209
    i32 267, label %209
  ], !dbg !1170

; <label>:169:                                    ; preds = %164
  %170 = load %struct.FuncState*, %struct.FuncState** %144, align 8, !dbg !1185, !tbaa !654
  %171 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %170, i64 0, i32 9, !dbg !1187
  %172 = load i32, i32* %171, align 4, !dbg !1187, !tbaa !660
  %173 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i64 11) #5, !dbg !1189
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %173, i32 0) #5, !dbg !1189
  %174 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i64 11) #5, !dbg !1190
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %174, i32 1) #5, !dbg !1190
  %175 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i64 10) #5, !dbg !1191
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %175, i32 2) #5, !dbg !1191
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %167, i32 3) #5, !dbg !1192
  %176 = load i32, i32* %24, align 8, !dbg !1199, !tbaa !624
  %177 = icmp eq i32 %176, 61, !dbg !1200
  br i1 %177, label %183, label %178, !dbg !1201

; <label>:178:                                    ; preds = %169
  %179 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1205
  %180 = load %struct.lua_State*, %struct.lua_State** %179, align 8, !dbg !1205, !tbaa !611
  %181 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 61) #5, !dbg !1206
  %182 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %180, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %181) #5, !dbg !1207
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %182) #5, !dbg !1208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  br label %183, !dbg !1210

; <label>:183:                                    ; preds = %178, %169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1213
  %184 = bitcast %struct.expdesc* %4 to i8*, !dbg !1221
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %184) #4, !dbg !1221
  %185 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #5, !dbg !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  %186 = load %struct.FuncState*, %struct.FuncState** %144, align 8, !dbg !1229, !tbaa !654
  call void @luaK_exp2nextreg(%struct.FuncState* %186, %struct.expdesc* nonnull %4) #5, !dbg !1230
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %184) #4, !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  %187 = load i32, i32* %24, align 8, !dbg !1239, !tbaa !624
  %188 = icmp eq i32 %187, 44, !dbg !1240
  br i1 %188, label %194, label %189, !dbg !1241

; <label>:189:                                    ; preds = %183
  %190 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1245
  %191 = load %struct.lua_State*, %struct.lua_State** %190, align 8, !dbg !1245, !tbaa !611
  %192 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 44) #5, !dbg !1246
  %193 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %191, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %192) #5, !dbg !1247
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %193) #5, !dbg !1248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1249
  br label %194, !dbg !1250

; <label>:194:                                    ; preds = %189, %183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1251
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1253
  %195 = bitcast %struct.expdesc* %3 to i8*, !dbg !1256
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %195) #4, !dbg !1256
  %196 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3, i32 0) #5, !dbg !1261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  %197 = load %struct.FuncState*, %struct.FuncState** %144, align 8, !dbg !1264, !tbaa !654
  call void @luaK_exp2nextreg(%struct.FuncState* %197, %struct.expdesc* nonnull %3) #5, !dbg !1265
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %195) #4, !dbg !1266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1267
  %198 = load i32, i32* %24, align 8, !dbg !1272, !tbaa !624
  %199 = icmp eq i32 %198, 44, !dbg !1273
  br i1 %199, label %200, label %204, !dbg !1274

; <label>:200:                                    ; preds = %194
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  %201 = bitcast %struct.expdesc* %2 to i8*, !dbg !1279
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %201) #4, !dbg !1279
  %202 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %2, i32 0) #5, !dbg !1284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1285
  %203 = load %struct.FuncState*, %struct.FuncState** %144, align 8, !dbg !1287, !tbaa !654
  call void @luaK_exp2nextreg(%struct.FuncState* %203, %struct.expdesc* nonnull %2) #5, !dbg !1288
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %201) #4, !dbg !1289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1290
  br label %208, !dbg !1291

; <label>:204:                                    ; preds = %194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  %205 = load i32, i32* %171, align 4, !dbg !1292, !tbaa !660
  %206 = call i32 @luaK_numberK(%struct.FuncState* %170, double 1.000000e+00) #5, !dbg !1294
  %207 = call i32 @luaK_codeABx(%struct.FuncState* %170, i32 1, i32 %205, i32 %206) #5, !dbg !1295
  call void @luaK_reserveregs(%struct.FuncState* %170, i32 1) #5, !dbg !1296
  br label %208

; <label>:208:                                    ; preds = %204, %200
  call fastcc void @forbody(%struct.LexState* nonnull %0, i32 %172, i32 %23, i32 1, i32 1) #5, !dbg !1297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1298
  br label %260, !dbg !1299

; <label>:209:                                    ; preds = %164, %164
  %210 = load %struct.FuncState*, %struct.FuncState** %144, align 8, !dbg !1314, !tbaa !654
  %211 = bitcast %struct.expdesc* %17 to i8*, !dbg !1316
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %211) #4, !dbg !1316
  %212 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %210, i64 0, i32 9, !dbg !1318
  %213 = load i32, i32* %212, align 4, !dbg !1318, !tbaa !660
  %214 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i64 15) #5, !dbg !1320
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %214, i32 0) #5, !dbg !1320
  %215 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i64 11) #5, !dbg !1321
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %215, i32 1) #5, !dbg !1321
  %216 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i64 13) #5, !dbg !1322
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %216, i32 2) #5, !dbg !1322
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %167, i32 3) #5, !dbg !1323
  %217 = load i32, i32* %24, align 8, !dbg !1327, !tbaa !624
  %218 = icmp eq i32 %217, 44, !dbg !1328
  br i1 %218, label %219, label %236, !dbg !1329

; <label>:219:                                    ; preds = %209
  %220 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  br label %221, !dbg !1329

; <label>:221:                                    ; preds = %219, %229
  %222 = phi i32 [ 4, %219 ], [ %231, %229 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  %223 = load i32, i32* %24, align 8, !dbg !1337, !tbaa !624
  %224 = icmp eq i32 %223, 285, !dbg !1338
  br i1 %224, label %229, label %225, !dbg !1339

; <label>:225:                                    ; preds = %221
  %226 = load %struct.lua_State*, %struct.lua_State** %220, align 8, !dbg !1343, !tbaa !611
  %227 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !1344
  %228 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %226, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %227) #5, !dbg !1345
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %228) #5, !dbg !1346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  br label %229, !dbg !1348

; <label>:229:                                    ; preds = %225, %221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  %230 = load %union.TString*, %union.TString** %166, align 8, !dbg !1350, !tbaa !761
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1353
  %231 = add nuw nsw i32 %222, 1, !dbg !1354
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %230, i32 %222) #5, !dbg !1355
  %232 = load i32, i32* %24, align 8, !dbg !1327, !tbaa !624
  %233 = icmp eq i32 %232, 44, !dbg !1328
  br i1 %233, label %221, label %234, !dbg !1329, !llvm.loop !1356

; <label>:234:                                    ; preds = %229
  %235 = add nsw i32 %222, -2, !dbg !1331
  br label %236, !dbg !1331

; <label>:236:                                    ; preds = %234, %209
  %237 = phi i32 [ %217, %209 ], [ %232, %234 ], !dbg !1359
  %238 = phi i32 [ 1, %209 ], [ %235, %234 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  %239 = icmp eq i32 %237, 267, !dbg !1366
  br i1 %239, label %245, label %240, !dbg !1367

; <label>:240:                                    ; preds = %236
  %241 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1371
  %242 = load %struct.lua_State*, %struct.lua_State** %241, align 8, !dbg !1371, !tbaa !611
  %243 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 267) #5, !dbg !1372
  %244 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %242, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %243) #5, !dbg !1373
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %244) #5, !dbg !1374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1375
  br label %245, !dbg !1376

; <label>:245:                                    ; preds = %240, %236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1377
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1379
  %246 = load i32, i32* %22, align 4, !dbg !1380, !tbaa !881
  %247 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %17, i32 0) #5, !dbg !1397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1398
  %248 = load i32, i32* %24, align 8, !dbg !1402, !tbaa !624
  %249 = icmp eq i32 %248, 44, !dbg !1403
  br i1 %249, label %250, label %257, !dbg !1404

; <label>:250:                                    ; preds = %245, %250
  %251 = phi i32 [ %254, %250 ], [ 1, %245 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1406
  %252 = load %struct.FuncState*, %struct.FuncState** %144, align 8, !dbg !1407, !tbaa !654
  call void @luaK_exp2nextreg(%struct.FuncState* %252, %struct.expdesc* nonnull %17) #5, !dbg !1409
  %253 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %17, i32 0) #5, !dbg !1413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1414
  %254 = add nuw nsw i32 %251, 1, !dbg !1415
  %255 = load i32, i32* %24, align 8, !dbg !1402, !tbaa !624
  %256 = icmp eq i32 %255, 44, !dbg !1403
  br i1 %256, label %250, label %257, !dbg !1404, !llvm.loop !1416

; <label>:257:                                    ; preds = %250, %245
  %258 = phi i32 [ 1, %245 ], [ %254, %250 ], !dbg !1419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1420
  call fastcc void @adjust_assign(%struct.LexState* nonnull %0, i32 3, i32 %258, %struct.expdesc* nonnull %17) #5, !dbg !1421
  call void @luaK_checkstack(%struct.FuncState* %210, i32 3) #5, !dbg !1422
  call fastcc void @forbody(%struct.LexState* nonnull %0, i32 %213, i32 %246, i32 %238, i32 0) #5, !dbg !1423
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %211) #4, !dbg !1424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1424
  br label %260, !dbg !1425

; <label>:259:                                    ; preds = %164
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0)) #5, !dbg !1426
  br label %260, !dbg !1427

; <label>:260:                                    ; preds = %259, %257, %208
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 264, i32 %23) #5, !dbg !1428
  %261 = load %struct.BlockCnt*, %struct.BlockCnt** %153, align 8, !dbg !1431, !tbaa !746
  %262 = bitcast %struct.BlockCnt* %261 to i64*, !dbg !1433
  %263 = load i64, i64* %262, align 8, !dbg !1433, !tbaa !1027
  store i64 %263, i64* %154, align 8, !dbg !1434, !tbaa !746
  %264 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %145, i64 0, i32 3, !dbg !1435
  %265 = load %struct.LexState*, %struct.LexState** %264, align 8, !dbg !1435, !tbaa !725
  %266 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %261, i64 0, i32 2, !dbg !1436
  %267 = load i8, i8* %266, align 4, !dbg !1436, !tbaa !1021
  %268 = zext i8 %267 to i32, !dbg !1437
  %269 = getelementptr inbounds %struct.LexState, %struct.LexState* %265, i64 0, i32 5, !dbg !1441
  %270 = load %struct.FuncState*, %struct.FuncState** %269, align 8, !dbg !1441, !tbaa !654
  %271 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %270, i64 0, i32 13, !dbg !1443
  %272 = load i8, i8* %271, align 2, !dbg !1443, !tbaa !656
  %273 = icmp ugt i8 %272, %267, !dbg !1444
  br i1 %273, label %274, label %315, !dbg !1445

; <label>:274:                                    ; preds = %260
  %275 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %270, i64 0, i32 6
  %276 = load i32, i32* %275, align 8, !tbaa !799
  %277 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %270, i64 0, i32 0
  %278 = load %struct.Proto*, %struct.Proto** %277, align 8, !tbaa !585
  %279 = getelementptr inbounds %struct.Proto, %struct.Proto* %278, i64 0, i32 7
  %280 = load %struct.LocVar*, %struct.LocVar** %279, align 8, !tbaa !800
  %281 = zext i8 %272 to i64, !dbg !1445
  %282 = sub i8 %272, %267, !dbg !1445
  %283 = and i8 %282, 1, !dbg !1445
  %284 = icmp eq i8 %283, 0, !dbg !1445
  br i1 %284, label %293, label %285, !dbg !1445

; <label>:285:                                    ; preds = %274
  %286 = add i8 %272, -1, !dbg !1446
  %287 = zext i8 %286 to i64, !dbg !1446
  %288 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %270, i64 0, i32 15, i64 %287, !dbg !1446
  %289 = load i16, i16* %288, align 2, !dbg !1446, !tbaa !802
  %290 = zext i16 %289 to i64, !dbg !1446
  %291 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %280, i64 %290, i32 2, !dbg !1447
  store i32 %276, i32* %291, align 4, !dbg !1448, !tbaa !805
  %292 = add nsw i64 %281, -1, !dbg !1446
  br label %293, !dbg !1445

; <label>:293:                                    ; preds = %274, %285
  %294 = phi i64 [ %281, %274 ], [ %292, %285 ]
  %295 = add i8 %267, 1, !dbg !1445
  %296 = icmp eq i8 %272, %295, !dbg !1445
  br i1 %296, label %314, label %297, !dbg !1445

; <label>:297:                                    ; preds = %293, %297
  %298 = phi i64 [ %313, %297 ], [ %294, %293 ]
  %299 = add i64 %298, 255, !dbg !1446
  %300 = and i64 %299, 255, !dbg !1446
  %301 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %270, i64 0, i32 15, i64 %300, !dbg !1446
  %302 = load i16, i16* %301, align 2, !dbg !1446, !tbaa !802
  %303 = zext i16 %302 to i64, !dbg !1446
  %304 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %280, i64 %303, i32 2, !dbg !1447
  store i32 %276, i32* %304, align 4, !dbg !1448, !tbaa !805
  %305 = trunc i64 %298 to i8, !dbg !1446
  %306 = add i8 %305, -2, !dbg !1446
  %307 = zext i8 %306 to i64, !dbg !1446
  %308 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %270, i64 0, i32 15, i64 %307, !dbg !1446
  %309 = load i16, i16* %308, align 2, !dbg !1446, !tbaa !802
  %310 = zext i16 %309 to i64, !dbg !1446
  %311 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %280, i64 %310, i32 2, !dbg !1447
  store i32 %276, i32* %311, align 4, !dbg !1448, !tbaa !805
  %312 = icmp ugt i8 %306, %267, !dbg !1444
  %313 = add nsw i64 %298, -2, !dbg !1446
  br i1 %312, label %297, label %314, !dbg !1445, !llvm.loop !807

; <label>:314:                                    ; preds = %297, %293
  store i8 %267, i8* %271, align 2, !dbg !1446, !tbaa !656
  br label %315, !dbg !1445

; <label>:315:                                    ; preds = %314, %260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1449
  %316 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %261, i64 0, i32 3, !dbg !1450
  %317 = load i8, i8* %316, align 1, !dbg !1450, !tbaa !1024
  %318 = icmp eq i8 %317, 0, !dbg !1451
  br i1 %318, label %321, label %319, !dbg !1452

; <label>:319:                                    ; preds = %315
  %320 = call i32 @luaK_codeABC(%struct.FuncState* %145, i32 35, i32 %268, i32 0, i32 0) #5, !dbg !1453
  br label %321, !dbg !1453

; <label>:321:                                    ; preds = %315, %319
  %322 = load i8, i8* %149, align 2, !dbg !1454, !tbaa !656
  %323 = zext i8 %322 to i32, !dbg !1455
  %324 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %145, i64 0, i32 9, !dbg !1456
  store i32 %323, i32* %324, align 4, !dbg !1457, !tbaa !660
  %325 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %261, i64 0, i32 1, !dbg !1458
  %326 = load i32, i32* %325, align 8, !dbg !1458, !tbaa !1013
  call void @luaK_patchtohere(%struct.FuncState* %145, i32 %326) #5, !dbg !1459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1460
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %146) #4, !dbg !1461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  br label %967, !dbg !1462

; <label>:327:                                    ; preds = %1
  %328 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1476
  %329 = load %struct.FuncState*, %struct.FuncState** %328, align 8, !dbg !1476, !tbaa !654
  %330 = tail call i32 @luaK_getlabel(%struct.FuncState* %329) #5, !dbg !1478
  %331 = bitcast %struct.BlockCnt* %15 to i8*, !dbg !1480
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %331) #4, !dbg !1480
  %332 = bitcast %struct.BlockCnt* %16 to i8*, !dbg !1480
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %332) #4, !dbg !1480
  %333 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 1, !dbg !1486
  store i32 -1, i32* %333, align 8, !dbg !1487, !tbaa !1013
  %334 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 4, !dbg !1488
  store i8 1, i8* %334, align 2, !dbg !1489, !tbaa !1017
  %335 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %329, i64 0, i32 13, !dbg !1490
  %336 = load i8, i8* %335, align 2, !dbg !1490, !tbaa !656
  %337 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 2, !dbg !1491
  store i8 %336, i8* %337, align 4, !dbg !1492, !tbaa !1021
  %338 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 3, !dbg !1493
  store i8 0, i8* %338, align 1, !dbg !1494, !tbaa !1024
  %339 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %329, i64 0, i32 5, !dbg !1495
  %340 = bitcast %struct.BlockCnt** %339 to i64*, !dbg !1495
  %341 = load i64, i64* %340, align 8, !dbg !1495, !tbaa !746
  %342 = bitcast %struct.BlockCnt* %15 to i64*, !dbg !1496
  store i64 %341, i64* %342, align 8, !dbg !1496, !tbaa !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1497
  %343 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 1, !dbg !1503
  store i32 -1, i32* %343, align 8, !dbg !1504, !tbaa !1013
  %344 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 4, !dbg !1505
  store i8 0, i8* %344, align 2, !dbg !1506, !tbaa !1017
  %345 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 2, !dbg !1507
  store i8 %336, i8* %345, align 4, !dbg !1508, !tbaa !1021
  %346 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 3, !dbg !1509
  store i8 0, i8* %346, align 1, !dbg !1510, !tbaa !1024
  %347 = ptrtoint %struct.BlockCnt* %15 to i64, !dbg !1511
  %348 = bitcast %struct.BlockCnt* %16 to i64*, !dbg !1512
  store i64 %347, i64* %348, align 8, !dbg !1512, !tbaa !1027
  store %struct.BlockCnt* %16, %struct.BlockCnt** %339, align 8, !dbg !1513, !tbaa !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1514
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1515
  %349 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1521
  %350 = load %struct.lua_State*, %struct.lua_State** %349, align 8, !dbg !1521, !tbaa !611
  %351 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %350, i64 0, i32 15, !dbg !1522
  %352 = load i16, i16* %351, align 8, !dbg !1523, !tbaa !614
  %353 = add i16 %352, 1, !dbg !1523
  store i16 %353, i16* %351, align 8, !dbg !1523, !tbaa !614
  %354 = icmp ugt i16 %353, 200, !dbg !1524
  br i1 %354, label %355, label %356, !dbg !1525

; <label>:355:                                    ; preds = %327
  call void @luaX_lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 0) #5, !dbg !1526
  br label %356, !dbg !1526

; <label>:356:                                    ; preds = %355, %327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1527
  br label %357, !dbg !1528

; <label>:357:                                    ; preds = %356, %365
  %358 = load i32, i32* %24, align 8, !dbg !1529, !tbaa !624
  switch i32 %358, label %360 [
    i32 260, label %359
    i32 261, label %359
    i32 262, label %359
    i32 276, label %359
    i32 287, label %359
  ], !dbg !1532

; <label>:359:                                    ; preds = %357, %357, %357, %357, %357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1533
  br label %372

; <label>:360:                                    ; preds = %357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1533
  %361 = call fastcc i32 @statement(%struct.LexState* nonnull %0) #5, !dbg !1534
  %362 = load i32, i32* %24, align 8, !dbg !1538, !tbaa !624
  %363 = icmp eq i32 %362, 59, !dbg !1539
  br i1 %363, label %364, label %365, !dbg !1540

; <label>:364:                                    ; preds = %360
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1541
  br label %365, !dbg !1542

; <label>:365:                                    ; preds = %364, %360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1543
  %366 = load %struct.FuncState*, %struct.FuncState** %328, align 8, !dbg !1544, !tbaa !654
  %367 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %366, i64 0, i32 13, !dbg !1545
  %368 = load i8, i8* %367, align 2, !dbg !1545, !tbaa !656
  %369 = zext i8 %368 to i32, !dbg !1546
  %370 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %366, i64 0, i32 9, !dbg !1547
  store i32 %369, i32* %370, align 4, !dbg !1548, !tbaa !660
  %371 = icmp eq i32 %361, 0, !dbg !1549
  br i1 %371, label %357, label %372, !dbg !1528, !llvm.loop !662

; <label>:372:                                    ; preds = %365, %359
  %373 = load %struct.lua_State*, %struct.lua_State** %349, align 8, !dbg !1550, !tbaa !611
  %374 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %373, i64 0, i32 15, !dbg !1550
  %375 = load i16, i16* %374, align 8, !dbg !1550, !tbaa !614
  %376 = add i16 %375, -1, !dbg !1550
  store i16 %376, i16* %374, align 8, !dbg !1550, !tbaa !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1551
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 276, i32 272, i32 %23) #5, !dbg !1552
  %377 = bitcast %struct.expdesc* %14 to i8*, !dbg !1555
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %377) #4, !dbg !1555
  %378 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %14, i32 0) #5, !dbg !1560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1561
  %379 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %14, i64 0, i32 0, !dbg !1562
  %380 = load i32, i32* %379, align 8, !dbg !1562, !tbaa !985
  %381 = icmp eq i32 %380, 1, !dbg !1563
  br i1 %381, label %382, label %383, !dbg !1564

; <label>:382:                                    ; preds = %372
  store i32 3, i32* %379, align 8, !dbg !1565, !tbaa !985
  br label %383, !dbg !1566

; <label>:383:                                    ; preds = %382, %372
  %384 = load %struct.FuncState*, %struct.FuncState** %328, align 8, !dbg !1567, !tbaa !654
  call void @luaK_goiftrue(%struct.FuncState* %384, %struct.expdesc* nonnull %14) #5, !dbg !1568
  %385 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %14, i64 0, i32 3, !dbg !1569
  %386 = load i32, i32* %385, align 4, !dbg !1569, !tbaa !994
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %377) #4, !dbg !1570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1571
  %387 = load i8, i8* %346, align 1, !dbg !1573, !tbaa !1024
  %388 = icmp eq i8 %387, 0, !dbg !1575
  br i1 %388, label %389, label %457, !dbg !1576

; <label>:389:                                    ; preds = %383
  %390 = load %struct.BlockCnt*, %struct.BlockCnt** %339, align 8, !dbg !1580, !tbaa !746
  %391 = bitcast %struct.BlockCnt* %390 to i64*, !dbg !1582
  %392 = load i64, i64* %391, align 8, !dbg !1582, !tbaa !1027
  store i64 %392, i64* %340, align 8, !dbg !1583, !tbaa !746
  %393 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %329, i64 0, i32 3, !dbg !1584
  %394 = load %struct.LexState*, %struct.LexState** %393, align 8, !dbg !1584, !tbaa !725
  %395 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %390, i64 0, i32 2, !dbg !1585
  %396 = load i8, i8* %395, align 4, !dbg !1585, !tbaa !1021
  %397 = zext i8 %396 to i32, !dbg !1586
  %398 = getelementptr inbounds %struct.LexState, %struct.LexState* %394, i64 0, i32 5, !dbg !1590
  %399 = load %struct.FuncState*, %struct.FuncState** %398, align 8, !dbg !1590, !tbaa !654
  %400 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %399, i64 0, i32 13, !dbg !1592
  %401 = load i8, i8* %400, align 2, !dbg !1592, !tbaa !656
  %402 = icmp ugt i8 %401, %396, !dbg !1593
  br i1 %402, label %403, label %444, !dbg !1594

; <label>:403:                                    ; preds = %389
  %404 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %399, i64 0, i32 6
  %405 = load i32, i32* %404, align 8, !tbaa !799
  %406 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %399, i64 0, i32 0
  %407 = load %struct.Proto*, %struct.Proto** %406, align 8, !tbaa !585
  %408 = getelementptr inbounds %struct.Proto, %struct.Proto* %407, i64 0, i32 7
  %409 = load %struct.LocVar*, %struct.LocVar** %408, align 8, !tbaa !800
  %410 = zext i8 %401 to i64, !dbg !1594
  %411 = sub i8 %401, %396, !dbg !1594
  %412 = and i8 %411, 1, !dbg !1594
  %413 = icmp eq i8 %412, 0, !dbg !1594
  br i1 %413, label %422, label %414, !dbg !1594

; <label>:414:                                    ; preds = %403
  %415 = add i8 %401, -1, !dbg !1595
  %416 = zext i8 %415 to i64, !dbg !1595
  %417 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %399, i64 0, i32 15, i64 %416, !dbg !1595
  %418 = load i16, i16* %417, align 2, !dbg !1595, !tbaa !802
  %419 = zext i16 %418 to i64, !dbg !1595
  %420 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %409, i64 %419, i32 2, !dbg !1596
  store i32 %405, i32* %420, align 4, !dbg !1597, !tbaa !805
  %421 = add nsw i64 %410, -1, !dbg !1595
  br label %422, !dbg !1594

; <label>:422:                                    ; preds = %403, %414
  %423 = phi i64 [ %410, %403 ], [ %421, %414 ]
  %424 = add i8 %396, 1, !dbg !1594
  %425 = icmp eq i8 %401, %424, !dbg !1594
  br i1 %425, label %443, label %426, !dbg !1594

; <label>:426:                                    ; preds = %422, %426
  %427 = phi i64 [ %442, %426 ], [ %423, %422 ]
  %428 = add i64 %427, 255, !dbg !1595
  %429 = and i64 %428, 255, !dbg !1595
  %430 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %399, i64 0, i32 15, i64 %429, !dbg !1595
  %431 = load i16, i16* %430, align 2, !dbg !1595, !tbaa !802
  %432 = zext i16 %431 to i64, !dbg !1595
  %433 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %409, i64 %432, i32 2, !dbg !1596
  store i32 %405, i32* %433, align 4, !dbg !1597, !tbaa !805
  %434 = trunc i64 %427 to i8, !dbg !1595
  %435 = add i8 %434, -2, !dbg !1595
  %436 = zext i8 %435 to i64, !dbg !1595
  %437 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %399, i64 0, i32 15, i64 %436, !dbg !1595
  %438 = load i16, i16* %437, align 2, !dbg !1595, !tbaa !802
  %439 = zext i16 %438 to i64, !dbg !1595
  %440 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %409, i64 %439, i32 2, !dbg !1596
  store i32 %405, i32* %440, align 4, !dbg !1597, !tbaa !805
  %441 = icmp ugt i8 %435, %396, !dbg !1593
  %442 = add nsw i64 %427, -2, !dbg !1595
  br i1 %441, label %426, label %443, !dbg !1594, !llvm.loop !807

; <label>:443:                                    ; preds = %426, %422
  store i8 %396, i8* %400, align 2, !dbg !1595, !tbaa !656
  br label %444, !dbg !1594

; <label>:444:                                    ; preds = %443, %389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  %445 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %390, i64 0, i32 3, !dbg !1599
  %446 = load i8, i8* %445, align 1, !dbg !1599, !tbaa !1024
  %447 = icmp eq i8 %446, 0, !dbg !1600
  br i1 %447, label %450, label %448, !dbg !1601

; <label>:448:                                    ; preds = %444
  %449 = call i32 @luaK_codeABC(%struct.FuncState* %329, i32 35, i32 %397, i32 0, i32 0) #5, !dbg !1602
  br label %450, !dbg !1602

; <label>:450:                                    ; preds = %448, %444
  %451 = load i8, i8* %335, align 2, !dbg !1603, !tbaa !656
  %452 = zext i8 %451 to i32, !dbg !1604
  %453 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %329, i64 0, i32 9, !dbg !1605
  store i32 %452, i32* %453, align 4, !dbg !1606, !tbaa !660
  %454 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %390, i64 0, i32 1, !dbg !1607
  %455 = load i32, i32* %454, align 8, !dbg !1607, !tbaa !1013
  call void @luaK_patchtohere(%struct.FuncState* %329, i32 %455) #5, !dbg !1608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1609
  %456 = load %struct.FuncState*, %struct.FuncState** %328, align 8, !dbg !1610, !tbaa !654
  call void @luaK_patchlist(%struct.FuncState* %456, i32 %386, i32 %330) #5, !dbg !1611
  br label %559, !dbg !1612

; <label>:457:                                    ; preds = %383
  %458 = load %struct.FuncState*, %struct.FuncState** %328, align 8, !dbg !1622, !tbaa !654
  %459 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %458, i64 0, i32 5, !dbg !1624
  %460 = load %struct.BlockCnt*, %struct.BlockCnt** %459, align 8, !dbg !1627, !tbaa !1629
  %461 = icmp eq %struct.BlockCnt* %460, null, !dbg !1630
  br i1 %461, label %476, label %462, !dbg !1631

; <label>:462:                                    ; preds = %457, %468
  %463 = phi %struct.BlockCnt* [ %474, %468 ], [ %460, %457 ]
  %464 = phi i32 [ %472, %468 ], [ 0, %457 ]
  %465 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %463, i64 0, i32 4, !dbg !1632
  %466 = load i8, i8* %465, align 2, !dbg !1632, !tbaa !1017
  %467 = icmp eq i8 %466, 0, !dbg !1633
  br i1 %467, label %468, label %478, !dbg !1634

; <label>:468:                                    ; preds = %462
  %469 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %463, i64 0, i32 3, !dbg !1635
  %470 = load i8, i8* %469, align 1, !dbg !1635, !tbaa !1024
  %471 = zext i8 %470 to i32, !dbg !1636
  %472 = or i32 %464, %471, !dbg !1637
  %473 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %463, i64 0, i32 0, !dbg !1638
  %474 = load %struct.BlockCnt*, %struct.BlockCnt** %473, align 8, !dbg !1627, !tbaa !1629
  %475 = icmp eq %struct.BlockCnt* %474, null, !dbg !1630
  br i1 %475, label %476, label %462, !dbg !1631, !llvm.loop !1639

; <label>:476:                                    ; preds = %468, %457
  %477 = phi i32 [ 0, %457 ], [ %472, %468 ], !dbg !1627
  call void @luaX_syntaxerror(%struct.LexState* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0)) #5, !dbg !1642
  br label %478, !dbg !1642

; <label>:478:                                    ; preds = %462, %476
  %479 = phi i32 [ %477, %476 ], [ %464, %462 ]
  %480 = phi %struct.BlockCnt* [ null, %476 ], [ %463, %462 ]
  %481 = icmp eq i32 %479, 0, !dbg !1644
  br i1 %481, label %487, label %482, !dbg !1646

; <label>:482:                                    ; preds = %478
  %483 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %480, i64 0, i32 2, !dbg !1647
  %484 = load i8, i8* %483, align 4, !dbg !1647, !tbaa !1021
  %485 = zext i8 %484 to i32, !dbg !1648
  %486 = call i32 @luaK_codeABC(%struct.FuncState* %458, i32 35, i32 %485, i32 0, i32 0) #5, !dbg !1649
  br label %487, !dbg !1649

; <label>:487:                                    ; preds = %482, %478
  %488 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %480, i64 0, i32 1, !dbg !1650
  %489 = call i32 @luaK_jump(%struct.FuncState* %458) #5, !dbg !1651
  call void @luaK_concat(%struct.FuncState* %458, i32* nonnull %488, i32 %489) #5, !dbg !1652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1653
  %490 = load %struct.FuncState*, %struct.FuncState** %328, align 8, !dbg !1654, !tbaa !654
  call void @luaK_patchtohere(%struct.FuncState* %490, i32 %386) #5, !dbg !1655
  %491 = load %struct.BlockCnt*, %struct.BlockCnt** %339, align 8, !dbg !1658, !tbaa !746
  %492 = bitcast %struct.BlockCnt* %491 to i64*, !dbg !1660
  %493 = load i64, i64* %492, align 8, !dbg !1660, !tbaa !1027
  store i64 %493, i64* %340, align 8, !dbg !1661, !tbaa !746
  %494 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %329, i64 0, i32 3, !dbg !1662
  %495 = load %struct.LexState*, %struct.LexState** %494, align 8, !dbg !1662, !tbaa !725
  %496 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %491, i64 0, i32 2, !dbg !1663
  %497 = load i8, i8* %496, align 4, !dbg !1663, !tbaa !1021
  %498 = zext i8 %497 to i32, !dbg !1664
  %499 = getelementptr inbounds %struct.LexState, %struct.LexState* %495, i64 0, i32 5, !dbg !1668
  %500 = load %struct.FuncState*, %struct.FuncState** %499, align 8, !dbg !1668, !tbaa !654
  %501 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %500, i64 0, i32 13, !dbg !1670
  %502 = load i8, i8* %501, align 2, !dbg !1670, !tbaa !656
  %503 = icmp ugt i8 %502, %497, !dbg !1671
  br i1 %503, label %504, label %545, !dbg !1672

; <label>:504:                                    ; preds = %487
  %505 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %500, i64 0, i32 6
  %506 = load i32, i32* %505, align 8, !tbaa !799
  %507 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %500, i64 0, i32 0
  %508 = load %struct.Proto*, %struct.Proto** %507, align 8, !tbaa !585
  %509 = getelementptr inbounds %struct.Proto, %struct.Proto* %508, i64 0, i32 7
  %510 = load %struct.LocVar*, %struct.LocVar** %509, align 8, !tbaa !800
  %511 = zext i8 %502 to i64, !dbg !1672
  %512 = sub i8 %502, %497, !dbg !1672
  %513 = and i8 %512, 1, !dbg !1672
  %514 = icmp eq i8 %513, 0, !dbg !1672
  br i1 %514, label %523, label %515, !dbg !1672

; <label>:515:                                    ; preds = %504
  %516 = add i8 %502, -1, !dbg !1673
  %517 = zext i8 %516 to i64, !dbg !1673
  %518 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %500, i64 0, i32 15, i64 %517, !dbg !1673
  %519 = load i16, i16* %518, align 2, !dbg !1673, !tbaa !802
  %520 = zext i16 %519 to i64, !dbg !1673
  %521 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %510, i64 %520, i32 2, !dbg !1674
  store i32 %506, i32* %521, align 4, !dbg !1675, !tbaa !805
  %522 = add nsw i64 %511, -1, !dbg !1673
  br label %523, !dbg !1672

; <label>:523:                                    ; preds = %504, %515
  %524 = phi i64 [ %511, %504 ], [ %522, %515 ]
  %525 = add i8 %497, 1, !dbg !1672
  %526 = icmp eq i8 %502, %525, !dbg !1672
  br i1 %526, label %544, label %527, !dbg !1672

; <label>:527:                                    ; preds = %523, %527
  %528 = phi i64 [ %543, %527 ], [ %524, %523 ]
  %529 = add i64 %528, 255, !dbg !1673
  %530 = and i64 %529, 255, !dbg !1673
  %531 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %500, i64 0, i32 15, i64 %530, !dbg !1673
  %532 = load i16, i16* %531, align 2, !dbg !1673, !tbaa !802
  %533 = zext i16 %532 to i64, !dbg !1673
  %534 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %510, i64 %533, i32 2, !dbg !1674
  store i32 %506, i32* %534, align 4, !dbg !1675, !tbaa !805
  %535 = trunc i64 %528 to i8, !dbg !1673
  %536 = add i8 %535, -2, !dbg !1673
  %537 = zext i8 %536 to i64, !dbg !1673
  %538 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %500, i64 0, i32 15, i64 %537, !dbg !1673
  %539 = load i16, i16* %538, align 2, !dbg !1673, !tbaa !802
  %540 = zext i16 %539 to i64, !dbg !1673
  %541 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %510, i64 %540, i32 2, !dbg !1674
  store i32 %506, i32* %541, align 4, !dbg !1675, !tbaa !805
  %542 = icmp ugt i8 %536, %497, !dbg !1671
  %543 = add nsw i64 %528, -2, !dbg !1673
  br i1 %542, label %527, label %544, !dbg !1672, !llvm.loop !807

; <label>:544:                                    ; preds = %527, %523
  store i8 %497, i8* %501, align 2, !dbg !1673, !tbaa !656
  br label %545, !dbg !1672

; <label>:545:                                    ; preds = %544, %487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1676
  %546 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %491, i64 0, i32 3, !dbg !1677
  %547 = load i8, i8* %546, align 1, !dbg !1677, !tbaa !1024
  %548 = icmp eq i8 %547, 0, !dbg !1678
  br i1 %548, label %551, label %549, !dbg !1679

; <label>:549:                                    ; preds = %545
  %550 = call i32 @luaK_codeABC(%struct.FuncState* %329, i32 35, i32 %498, i32 0, i32 0) #5, !dbg !1680
  br label %551, !dbg !1680

; <label>:551:                                    ; preds = %549, %545
  %552 = load i8, i8* %335, align 2, !dbg !1681, !tbaa !656
  %553 = zext i8 %552 to i32, !dbg !1682
  %554 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %329, i64 0, i32 9, !dbg !1683
  store i32 %553, i32* %554, align 4, !dbg !1684, !tbaa !660
  %555 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %491, i64 0, i32 1, !dbg !1685
  %556 = load i32, i32* %555, align 8, !dbg !1685, !tbaa !1013
  call void @luaK_patchtohere(%struct.FuncState* %329, i32 %556) #5, !dbg !1686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1687
  %557 = load %struct.FuncState*, %struct.FuncState** %328, align 8, !dbg !1688, !tbaa !654
  %558 = call i32 @luaK_jump(%struct.FuncState* %329) #5, !dbg !1689
  call void @luaK_patchlist(%struct.FuncState* %557, i32 %558, i32 %330) #5, !dbg !1690
  br label %559

; <label>:559:                                    ; preds = %551, %450
  %560 = phi %struct.LexState** [ %494, %551 ], [ %393, %450 ], !dbg !1691
  %561 = load %struct.BlockCnt*, %struct.BlockCnt** %339, align 8, !dbg !1694, !tbaa !746
  %562 = bitcast %struct.BlockCnt* %561 to i64*, !dbg !1696
  %563 = load i64, i64* %562, align 8, !dbg !1696, !tbaa !1027
  store i64 %563, i64* %340, align 8, !dbg !1697, !tbaa !746
  %564 = load %struct.LexState*, %struct.LexState** %560, align 8, !dbg !1691, !tbaa !725
  %565 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %561, i64 0, i32 2, !dbg !1698
  %566 = load i8, i8* %565, align 4, !dbg !1698, !tbaa !1021
  %567 = zext i8 %566 to i32, !dbg !1699
  %568 = getelementptr inbounds %struct.LexState, %struct.LexState* %564, i64 0, i32 5, !dbg !1703
  %569 = load %struct.FuncState*, %struct.FuncState** %568, align 8, !dbg !1703, !tbaa !654
  %570 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %569, i64 0, i32 13, !dbg !1705
  %571 = load i8, i8* %570, align 2, !dbg !1705, !tbaa !656
  %572 = icmp ugt i8 %571, %566, !dbg !1706
  br i1 %572, label %573, label %614, !dbg !1707

; <label>:573:                                    ; preds = %559
  %574 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %569, i64 0, i32 6
  %575 = load i32, i32* %574, align 8, !tbaa !799
  %576 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %569, i64 0, i32 0
  %577 = load %struct.Proto*, %struct.Proto** %576, align 8, !tbaa !585
  %578 = getelementptr inbounds %struct.Proto, %struct.Proto* %577, i64 0, i32 7
  %579 = load %struct.LocVar*, %struct.LocVar** %578, align 8, !tbaa !800
  %580 = zext i8 %571 to i64, !dbg !1707
  %581 = sub i8 %571, %566, !dbg !1707
  %582 = and i8 %581, 1, !dbg !1707
  %583 = icmp eq i8 %582, 0, !dbg !1707
  br i1 %583, label %592, label %584, !dbg !1707

; <label>:584:                                    ; preds = %573
  %585 = add i8 %571, -1, !dbg !1708
  %586 = zext i8 %585 to i64, !dbg !1708
  %587 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %569, i64 0, i32 15, i64 %586, !dbg !1708
  %588 = load i16, i16* %587, align 2, !dbg !1708, !tbaa !802
  %589 = zext i16 %588 to i64, !dbg !1708
  %590 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %579, i64 %589, i32 2, !dbg !1709
  store i32 %575, i32* %590, align 4, !dbg !1710, !tbaa !805
  %591 = add nsw i64 %580, -1, !dbg !1708
  br label %592, !dbg !1707

; <label>:592:                                    ; preds = %573, %584
  %593 = phi i64 [ %580, %573 ], [ %591, %584 ]
  %594 = add i8 %566, 1, !dbg !1707
  %595 = icmp eq i8 %571, %594, !dbg !1707
  br i1 %595, label %613, label %596, !dbg !1707

; <label>:596:                                    ; preds = %592, %596
  %597 = phi i64 [ %612, %596 ], [ %593, %592 ]
  %598 = add i64 %597, 255, !dbg !1708
  %599 = and i64 %598, 255, !dbg !1708
  %600 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %569, i64 0, i32 15, i64 %599, !dbg !1708
  %601 = load i16, i16* %600, align 2, !dbg !1708, !tbaa !802
  %602 = zext i16 %601 to i64, !dbg !1708
  %603 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %579, i64 %602, i32 2, !dbg !1709
  store i32 %575, i32* %603, align 4, !dbg !1710, !tbaa !805
  %604 = trunc i64 %597 to i8, !dbg !1708
  %605 = add i8 %604, -2, !dbg !1708
  %606 = zext i8 %605 to i64, !dbg !1708
  %607 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %569, i64 0, i32 15, i64 %606, !dbg !1708
  %608 = load i16, i16* %607, align 2, !dbg !1708, !tbaa !802
  %609 = zext i16 %608 to i64, !dbg !1708
  %610 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %579, i64 %609, i32 2, !dbg !1709
  store i32 %575, i32* %610, align 4, !dbg !1710, !tbaa !805
  %611 = icmp ugt i8 %605, %566, !dbg !1706
  %612 = add nsw i64 %597, -2, !dbg !1708
  br i1 %611, label %596, label %613, !dbg !1707, !llvm.loop !807

; <label>:613:                                    ; preds = %596, %592
  store i8 %566, i8* %570, align 2, !dbg !1708, !tbaa !656
  br label %614, !dbg !1707

; <label>:614:                                    ; preds = %613, %559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1711
  %615 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %561, i64 0, i32 3, !dbg !1712
  %616 = load i8, i8* %615, align 1, !dbg !1712, !tbaa !1024
  %617 = icmp eq i8 %616, 0, !dbg !1713
  br i1 %617, label %620, label %618, !dbg !1714

; <label>:618:                                    ; preds = %614
  %619 = call i32 @luaK_codeABC(%struct.FuncState* %329, i32 35, i32 %567, i32 0, i32 0) #5, !dbg !1715
  br label %620, !dbg !1715

; <label>:620:                                    ; preds = %614, %618
  %621 = load i8, i8* %335, align 2, !dbg !1716, !tbaa !656
  %622 = zext i8 %621 to i32, !dbg !1717
  %623 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %329, i64 0, i32 9, !dbg !1718
  store i32 %622, i32* %623, align 4, !dbg !1719, !tbaa !660
  %624 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %561, i64 0, i32 1, !dbg !1720
  %625 = load i32, i32* %624, align 8, !dbg !1720, !tbaa !1013
  call void @luaK_patchtohere(%struct.FuncState* %329, i32 %625) #5, !dbg !1721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1722
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %332) #4, !dbg !1723
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %331) #4, !dbg !1723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1723
  br label %967, !dbg !1724

; <label>:626:                                    ; preds = %1
  %627 = bitcast %struct.expdesc* %12 to i8*, !dbg !1736
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %627) #4, !dbg !1736
  %628 = bitcast %struct.expdesc* %13 to i8*, !dbg !1736
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %628) #4, !dbg !1736
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1737
  %629 = load i32, i32* %24, align 8, !dbg !1762, !tbaa !624
  %630 = icmp eq i32 %629, 285, !dbg !1763
  br i1 %630, label %636, label %631, !dbg !1764

; <label>:631:                                    ; preds = %626
  %632 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1768
  %633 = load %struct.lua_State*, %struct.lua_State** %632, align 8, !dbg !1768, !tbaa !611
  %634 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !1769
  %635 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %633, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %634) #5, !dbg !1770
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %635) #5, !dbg !1771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1772
  br label %636, !dbg !1773

; <label>:636:                                    ; preds = %631, %626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1774
  %637 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !1775
  %638 = bitcast %union.SemInfo* %637 to %union.TString**, !dbg !1776
  %639 = load %union.TString*, %union.TString** %638, align 8, !dbg !1776, !tbaa !761
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1779
  %640 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1781
  %641 = load %struct.FuncState*, %struct.FuncState** %640, align 8, !dbg !1781, !tbaa !654
  %642 = call fastcc i32 @singlevaraux(%struct.FuncState* %641, %union.TString* %639, %struct.expdesc* nonnull %12, i32 1) #5, !dbg !1783
  %643 = icmp eq i32 %642, 8, !dbg !1785
  br i1 %643, label %644, label %648, !dbg !1786

; <label>:644:                                    ; preds = %636
  %645 = tail call i32 @luaK_stringK(%struct.FuncState* %641, %union.TString* %639) #5, !dbg !1787
  %646 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %12, i64 0, i32 1, !dbg !1788
  %647 = bitcast %union.anon.3* %646 to i32*, !dbg !1789
  store i32 %645, i32* %647, align 8, !dbg !1790, !tbaa !761
  br label %648, !dbg !1791

; <label>:648:                                    ; preds = %644, %636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1792
  %649 = bitcast %struct.expdesc* %11 to i8*
  %650 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %11, i64 0, i32 2
  %651 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %11, i64 0, i32 3
  %652 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %11, i64 0, i32 0
  %653 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %11, i64 0, i32 1
  %654 = bitcast %union.anon.3* %653 to i32*
  %655 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  br label %656, !dbg !1793

; <label>:656:                                    ; preds = %667, %648
  %657 = load i32, i32* %24, align 8, !dbg !1794, !tbaa !624
  switch i32 %657, label %690 [
    i32 46, label %658
    i32 58, label %671
  ], !dbg !1793

; <label>:658:                                    ; preds = %656
  %659 = load %struct.FuncState*, %struct.FuncState** %640, align 8, !dbg !1804, !tbaa !654
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %649) #4, !dbg !1806
  %660 = call i32 @luaK_exp2anyreg(%struct.FuncState* %659, %struct.expdesc* nonnull %12) #5, !dbg !1807
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1808
  %661 = load i32, i32* %24, align 8, !dbg !1822, !tbaa !624
  %662 = icmp eq i32 %661, 285, !dbg !1823
  br i1 %662, label %667, label %663, !dbg !1824

; <label>:663:                                    ; preds = %658
  %664 = load %struct.lua_State*, %struct.lua_State** %655, align 8, !dbg !1828, !tbaa !611
  %665 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !1829
  %666 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %664, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %665) #5, !dbg !1830
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %666) #5, !dbg !1831
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1832
  br label %667, !dbg !1833

; <label>:667:                                    ; preds = %663, %658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1834
  %668 = load %union.TString*, %union.TString** %638, align 8, !dbg !1835, !tbaa !761
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1838
  %669 = load %struct.FuncState*, %struct.FuncState** %640, align 8, !dbg !1850, !tbaa !654
  %670 = call i32 @luaK_stringK(%struct.FuncState* %669, %union.TString* %668) #5, !dbg !1851
  store i32 -1, i32* %650, align 8, !dbg !1863, !tbaa !1864
  store i32 -1, i32* %651, align 4, !dbg !1865, !tbaa !994
  store i32 4, i32* %652, align 8, !dbg !1866, !tbaa !985
  store i32 %670, i32* %654, align 8, !dbg !1867, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  call void @luaK_indexed(%struct.FuncState* %659, %struct.expdesc* nonnull %12, %struct.expdesc* nonnull %11) #5, !dbg !1871
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %649) #4, !dbg !1872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1872
  br label %656, !dbg !1793, !llvm.loop !1873

; <label>:671:                                    ; preds = %656
  %672 = load %struct.FuncState*, %struct.FuncState** %640, align 8, !dbg !1881, !tbaa !654
  %673 = bitcast %struct.expdesc* %10 to i8*, !dbg !1883
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %673) #4, !dbg !1883
  %674 = call i32 @luaK_exp2anyreg(%struct.FuncState* %672, %struct.expdesc* nonnull %12) #5, !dbg !1884
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1885
  %675 = load i32, i32* %24, align 8, !dbg !1895, !tbaa !624
  %676 = icmp eq i32 %675, 285, !dbg !1896
  br i1 %676, label %681, label %677, !dbg !1897

; <label>:677:                                    ; preds = %671
  %678 = load %struct.lua_State*, %struct.lua_State** %655, align 8, !dbg !1901, !tbaa !611
  %679 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !1902
  %680 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %678, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %679) #5, !dbg !1903
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %680) #5, !dbg !1904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1905
  br label %681, !dbg !1906

; <label>:681:                                    ; preds = %677, %671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1907
  %682 = load %union.TString*, %union.TString** %638, align 8, !dbg !1908, !tbaa !761
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1911
  %683 = load %struct.FuncState*, %struct.FuncState** %640, align 8, !dbg !1916, !tbaa !654
  %684 = call i32 @luaK_stringK(%struct.FuncState* %683, %union.TString* %682) #5, !dbg !1917
  %685 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i64 0, i32 2, !dbg !1922
  store i32 -1, i32* %685, align 8, !dbg !1923, !tbaa !1864
  %686 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i64 0, i32 3, !dbg !1924
  store i32 -1, i32* %686, align 4, !dbg !1925, !tbaa !994
  %687 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i64 0, i32 0, !dbg !1926
  store i32 4, i32* %687, align 8, !dbg !1927, !tbaa !985
  %688 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i64 0, i32 1, !dbg !1928
  %689 = bitcast %union.anon.3* %688 to i32*, !dbg !1929
  store i32 %684, i32* %689, align 8, !dbg !1930, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1932
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1933
  call void @luaK_indexed(%struct.FuncState* %672, %struct.expdesc* nonnull %12, %struct.expdesc* nonnull %10) #5, !dbg !1934
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %673) #4, !dbg !1935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1935
  br label %690, !dbg !1936

; <label>:690:                                    ; preds = %656, %681
  %691 = phi i32 [ 1, %681 ], [ 0, %656 ], !dbg !1937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1938
  call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %13, i32 %691, i32 %23) #5, !dbg !1941
  %692 = load %struct.FuncState*, %struct.FuncState** %640, align 8, !dbg !1942, !tbaa !654
  call void @luaK_storevar(%struct.FuncState* %692, %struct.expdesc* nonnull %12, %struct.expdesc* nonnull %13) #5, !dbg !1943
  %693 = load %struct.FuncState*, %struct.FuncState** %640, align 8, !dbg !1944, !tbaa !654
  call void @luaK_fixline(%struct.FuncState* %693, i32 %23) #5, !dbg !1945
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %628) #4, !dbg !1946
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %627) #4, !dbg !1946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1946
  br label %967, !dbg !1947

; <label>:694:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1948
  %695 = load i32, i32* %24, align 8, !dbg !1954, !tbaa !624
  %696 = icmp eq i32 %695, 265, !dbg !1955
  br i1 %696, label %697, label %751, !dbg !1956

; <label>:697:                                    ; preds = %694
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1958
  %698 = bitcast %struct.expdesc* %8 to i8*, !dbg !1967
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %698) #4, !dbg !1967
  %699 = bitcast %struct.expdesc* %9 to i8*, !dbg !1967
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %699) #4, !dbg !1967
  %700 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1968
  %701 = load %struct.FuncState*, %struct.FuncState** %700, align 8, !dbg !1968, !tbaa !654
  %702 = load i32, i32* %24, align 8, !dbg !1975, !tbaa !624
  %703 = icmp eq i32 %702, 285, !dbg !1976
  br i1 %703, label %709, label %704, !dbg !1977

; <label>:704:                                    ; preds = %697
  %705 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1981
  %706 = load %struct.lua_State*, %struct.lua_State** %705, align 8, !dbg !1981, !tbaa !611
  %707 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !1982
  %708 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %706, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %707) #5, !dbg !1983
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %708) #5, !dbg !1984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1985
  br label %709, !dbg !1986

; <label>:709:                                    ; preds = %704, %697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1987
  %710 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !1988
  %711 = bitcast %union.SemInfo* %710 to %union.TString**, !dbg !1989
  %712 = load %union.TString*, %union.TString** %711, align 8, !dbg !1989, !tbaa !761
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1992
  tail call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %712, i32 0) #5, !dbg !1993
  %713 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %701, i64 0, i32 9, !dbg !1994
  %714 = load i32, i32* %713, align 4, !dbg !1994, !tbaa !660
  %715 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 2, !dbg !2000
  store i32 -1, i32* %715, align 8, !dbg !2001, !tbaa !1864
  %716 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 3, !dbg !2002
  store i32 -1, i32* %716, align 4, !dbg !2003, !tbaa !994
  %717 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 0, !dbg !2004
  store i32 6, i32* %717, align 8, !dbg !2005, !tbaa !985
  %718 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 1, !dbg !2006
  %719 = bitcast %union.anon.3* %718 to i32*, !dbg !2007
  store i32 %714, i32* %719, align 8, !dbg !2008, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2009
  tail call void @luaK_reserveregs(%struct.FuncState* %701, i32 1) #5, !dbg !2010
  %720 = load %struct.FuncState*, %struct.FuncState** %700, align 8, !dbg !2019, !tbaa !654
  %721 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %720, i64 0, i32 13, !dbg !2021
  %722 = load i8, i8* %721, align 2, !dbg !2021, !tbaa !656
  %723 = add i8 %722, 1, !dbg !2021
  store i8 %723, i8* %721, align 2, !dbg !2022, !tbaa !656
  %724 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %720, i64 0, i32 6
  %725 = load i32, i32* %724, align 8, !tbaa !799
  %726 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %720, i64 0, i32 0
  %727 = load %struct.Proto*, %struct.Proto** %726, align 8, !tbaa !585
  %728 = getelementptr inbounds %struct.Proto, %struct.Proto* %727, i64 0, i32 7
  %729 = load %struct.LocVar*, %struct.LocVar** %728, align 8, !tbaa !800
  %730 = zext i8 %723 to i64, !dbg !2023
  %731 = add nsw i64 %730, -1, !dbg !2025
  %732 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %720, i64 0, i32 15, i64 %731, !dbg !2025
  %733 = load i16, i16* %732, align 2, !dbg !2025, !tbaa !802
  %734 = zext i16 %733 to i64, !dbg !2025
  %735 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %729, i64 %734, i32 1, !dbg !2028
  store i32 %725, i32* %735, align 8, !dbg !2029, !tbaa !2030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2031
  %736 = load i32, i32* %22, align 4, !dbg !2032, !tbaa !881
  call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %9, i32 0, i32 %736) #5, !dbg !2034
  call void @luaK_storevar(%struct.FuncState* %701, %struct.expdesc* nonnull %8, %struct.expdesc* nonnull %9) #5, !dbg !2035
  %737 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %701, i64 0, i32 6, !dbg !2036
  %738 = load i32, i32* %737, align 8, !dbg !2036, !tbaa !799
  %739 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %701, i64 0, i32 0, !dbg !2037
  %740 = load %struct.Proto*, %struct.Proto** %739, align 8, !dbg !2037, !tbaa !585
  %741 = getelementptr inbounds %struct.Proto, %struct.Proto* %740, i64 0, i32 7, !dbg !2037
  %742 = load %struct.LocVar*, %struct.LocVar** %741, align 8, !dbg !2037, !tbaa !800
  %743 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %701, i64 0, i32 13, !dbg !2037
  %744 = load i8, i8* %743, align 2, !dbg !2037, !tbaa !656
  %745 = zext i8 %744 to i64, !dbg !2037
  %746 = add nsw i64 %745, -1, !dbg !2037
  %747 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %701, i64 0, i32 15, i64 %746, !dbg !2037
  %748 = load i16, i16* %747, align 2, !dbg !2037, !tbaa !802
  %749 = zext i16 %748 to i64, !dbg !2037
  %750 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %742, i64 %749, i32 1, !dbg !2038
  store i32 %738, i32* %750, align 8, !dbg !2039, !tbaa !2030
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %699) #4, !dbg !2040
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %698) #4, !dbg !2040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2040
  br label %967, !dbg !2041

; <label>:751:                                    ; preds = %694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1958
  %752 = bitcast %struct.expdesc* %7 to i8*, !dbg !2051
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %752) #4, !dbg !2051
  %753 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %754 = bitcast %union.SemInfo* %753 to %union.TString**
  %755 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  br label %756, !dbg !2052

; <label>:756:                                    ; preds = %769, %751
  %757 = phi i32 [ %695, %751 ], [ %770, %769 ], !dbg !2053
  %758 = phi i32 [ 0, %751 ], [ %766, %769 ], !dbg !2057
  %759 = icmp eq i32 %757, 285, !dbg !2061
  br i1 %759, label %764, label %760, !dbg !2062

; <label>:760:                                    ; preds = %756
  %761 = load %struct.lua_State*, %struct.lua_State** %755, align 8, !dbg !2066, !tbaa !611
  %762 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !2067
  %763 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %761, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %762) #5, !dbg !2068
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %763) #5, !dbg !2069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2070
  br label %764, !dbg !2071

; <label>:764:                                    ; preds = %760, %756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2072
  %765 = load %union.TString*, %union.TString** %754, align 8, !dbg !2073, !tbaa !761
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2076
  %766 = add nuw nsw i32 %758, 1, !dbg !2077
  tail call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %765, i32 %758) #5, !dbg !2078
  %767 = load i32, i32* %24, align 8, !dbg !2082, !tbaa !624
  %768 = icmp eq i32 %767, 44, !dbg !2083
  br i1 %768, label %769, label %771, !dbg !2084

; <label>:769:                                    ; preds = %764
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2086
  %770 = load i32, i32* %24, align 8, !dbg !2053, !tbaa !624
  br label %756, !dbg !2087

; <label>:771:                                    ; preds = %764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2086
  %772 = icmp eq i32 %767, 61, !dbg !2092
  br i1 %772, label %773, label %788, !dbg !2093

; <label>:773:                                    ; preds = %771
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2094
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2095
  %774 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %7, i32 0) #5, !dbg !2104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2105
  %775 = load i32, i32* %24, align 8, !dbg !2109, !tbaa !624
  %776 = icmp eq i32 %775, 44, !dbg !2110
  br i1 %776, label %777, label %786, !dbg !2111

; <label>:777:                                    ; preds = %773
  %778 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br label %779, !dbg !2111

; <label>:779:                                    ; preds = %777, %779
  %780 = phi i32 [ 1, %777 ], [ %783, %779 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2113
  %781 = load %struct.FuncState*, %struct.FuncState** %778, align 8, !dbg !2114, !tbaa !654
  call void @luaK_exp2nextreg(%struct.FuncState* %781, %struct.expdesc* nonnull %7) #5, !dbg !2115
  %782 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %7, i32 0) #5, !dbg !2119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2120
  %783 = add nuw nsw i32 %780, 1, !dbg !2121
  %784 = load i32, i32* %24, align 8, !dbg !2109, !tbaa !624
  %785 = icmp eq i32 %784, 44, !dbg !2110
  br i1 %785, label %779, label %786, !dbg !2111, !llvm.loop !1416

; <label>:786:                                    ; preds = %779, %773
  %787 = phi i32 [ 1, %773 ], [ %783, %779 ], !dbg !2122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2123
  br label %790, !dbg !2125

; <label>:788:                                    ; preds = %771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2095
  %789 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i64 0, i32 0, !dbg !2126
  store i32 0, i32* %789, align 8, !dbg !2128, !tbaa !985
  br label %790

; <label>:790:                                    ; preds = %788, %786
  %791 = phi i32 [ %787, %786 ], [ 0, %788 ], !dbg !2129
  call fastcc void @adjust_assign(%struct.LexState* nonnull %0, i32 %766, i32 %791, %struct.expdesc* nonnull %7) #5, !dbg !2130
  %792 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2134
  %793 = load %struct.FuncState*, %struct.FuncState** %792, align 8, !dbg !2134, !tbaa !654
  %794 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %793, i64 0, i32 13, !dbg !2136
  %795 = load i8, i8* %794, align 2, !dbg !2136, !tbaa !656
  %796 = trunc i32 %766 to i8, !dbg !2136
  %797 = add i8 %795, %796, !dbg !2136
  store i8 %797, i8* %794, align 2, !dbg !2137, !tbaa !656
  %798 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %793, i64 0, i32 6
  %799 = load i32, i32* %798, align 8, !tbaa !799
  %800 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %793, i64 0, i32 0
  %801 = load %struct.Proto*, %struct.Proto** %800, align 8, !tbaa !585
  %802 = getelementptr inbounds %struct.Proto, %struct.Proto* %801, i64 0, i32 7
  %803 = load %struct.LocVar*, %struct.LocVar** %802, align 8, !tbaa !800
  %804 = zext i32 %766 to i64, !dbg !2138
  %805 = zext i8 %797 to i64, !dbg !2138
  %806 = and i32 %766, 3, !dbg !2138
  %807 = icmp eq i32 %806, 0, !dbg !2138
  br i1 %807, label %819, label %808, !dbg !2138

; <label>:808:                                    ; preds = %790, %808
  %809 = phi i64 [ %816, %808 ], [ %804, %790 ]
  %810 = phi i32 [ %817, %808 ], [ %806, %790 ]
  %811 = sub nsw i64 %805, %809, !dbg !2139
  %812 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %793, i64 0, i32 15, i64 %811, !dbg !2139
  %813 = load i16, i16* %812, align 2, !dbg !2139, !tbaa !802
  %814 = zext i16 %813 to i64, !dbg !2139
  %815 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %803, i64 %814, i32 1, !dbg !2140
  store i32 %799, i32* %815, align 8, !dbg !2141, !tbaa !2030
  %816 = add nsw i64 %809, -1, !dbg !2142
  %817 = add i32 %810, -1, !dbg !2138
  %818 = icmp eq i32 %817, 0, !dbg !2138
  br i1 %818, label %819, label %808, !dbg !2138, !llvm.loop !2143

; <label>:819:                                    ; preds = %808, %790
  %820 = phi i64 [ %804, %790 ], [ %816, %808 ]
  %821 = icmp ult i32 %758, 3, !dbg !2138
  br i1 %821, label %850, label %822, !dbg !2138

; <label>:822:                                    ; preds = %819, %822
  %823 = phi i64 [ %847, %822 ], [ %820, %819 ]
  %824 = sub nsw i64 %805, %823, !dbg !2139
  %825 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %793, i64 0, i32 15, i64 %824, !dbg !2139
  %826 = load i16, i16* %825, align 2, !dbg !2139, !tbaa !802
  %827 = zext i16 %826 to i64, !dbg !2139
  %828 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %803, i64 %827, i32 1, !dbg !2140
  store i32 %799, i32* %828, align 8, !dbg !2141, !tbaa !2030
  %829 = add nsw i64 %823, -1, !dbg !2142
  %830 = sub nsw i64 %805, %829, !dbg !2139
  %831 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %793, i64 0, i32 15, i64 %830, !dbg !2139
  %832 = load i16, i16* %831, align 2, !dbg !2139, !tbaa !802
  %833 = zext i16 %832 to i64, !dbg !2139
  %834 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %803, i64 %833, i32 1, !dbg !2140
  store i32 %799, i32* %834, align 8, !dbg !2141, !tbaa !2030
  %835 = add nsw i64 %823, -2, !dbg !2142
  %836 = sub nsw i64 %805, %835, !dbg !2139
  %837 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %793, i64 0, i32 15, i64 %836, !dbg !2139
  %838 = load i16, i16* %837, align 2, !dbg !2139, !tbaa !802
  %839 = zext i16 %838 to i64, !dbg !2139
  %840 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %803, i64 %839, i32 1, !dbg !2140
  store i32 %799, i32* %840, align 8, !dbg !2141, !tbaa !2030
  %841 = add nsw i64 %823, -3, !dbg !2142
  %842 = sub nsw i64 %805, %841, !dbg !2139
  %843 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %793, i64 0, i32 15, i64 %842, !dbg !2139
  %844 = load i16, i16* %843, align 2, !dbg !2139, !tbaa !802
  %845 = zext i16 %844 to i64, !dbg !2139
  %846 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %803, i64 %845, i32 1, !dbg !2140
  store i32 %799, i32* %846, align 8, !dbg !2141, !tbaa !2030
  %847 = add nsw i64 %823, -4, !dbg !2142
  %848 = trunc i64 %847 to i32, !dbg !2138
  %849 = icmp eq i32 %848, 0, !dbg !2138
  br i1 %849, label %850, label %822, !dbg !2138, !llvm.loop !2145

; <label>:850:                                    ; preds = %822, %819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2148
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %752) #4, !dbg !2149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2149
  br label %967

; <label>:851:                                    ; preds = %1
  %852 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2160
  %853 = load %struct.FuncState*, %struct.FuncState** %852, align 8, !dbg !2160, !tbaa !654
  %854 = bitcast %struct.expdesc* %6 to i8*, !dbg !2162
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %854) #4, !dbg !2162
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2163
  %855 = load i32, i32* %24, align 8, !dbg !2164, !tbaa !624
  switch i32 %855, label %857 [
    i32 260, label %856
    i32 261, label %856
    i32 262, label %856
    i32 276, label %856
    i32 287, label %856
  ], !dbg !2168

; <label>:856:                                    ; preds = %851, %851, %851, %851, %851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2169
  br label %906

; <label>:857:                                    ; preds = %851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2169
  %858 = icmp eq i32 %855, 59, !dbg !2170
  br i1 %858, label %906, label %859, !dbg !2171

; <label>:859:                                    ; preds = %857
  %860 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %6, i32 0) #5, !dbg !2181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2182
  %861 = load i32, i32* %24, align 8, !dbg !2186, !tbaa !624
  %862 = icmp eq i32 %861, 44, !dbg !2187
  br i1 %862, label %863, label %870, !dbg !2188

; <label>:863:                                    ; preds = %859, %863
  %864 = phi i32 [ %867, %863 ], [ 1, %859 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2190
  %865 = load %struct.FuncState*, %struct.FuncState** %852, align 8, !dbg !2191, !tbaa !654
  call void @luaK_exp2nextreg(%struct.FuncState* %865, %struct.expdesc* nonnull %6) #5, !dbg !2192
  %866 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %6, i32 0) #5, !dbg !2196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2197
  %867 = add nuw nsw i32 %864, 1, !dbg !2198
  %868 = load i32, i32* %24, align 8, !dbg !2186, !tbaa !624
  %869 = icmp eq i32 %868, 44, !dbg !2187
  br i1 %869, label %863, label %870, !dbg !2188, !llvm.loop !1416

; <label>:870:                                    ; preds = %863, %859
  %871 = phi i32 [ 1, %859 ], [ %867, %863 ], !dbg !2199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2200
  %872 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %6, i64 0, i32 0, !dbg !2202
  %873 = load i32, i32* %872, align 8, !dbg !2202, !tbaa !985
  %874 = add i32 %873, -13, !dbg !2202
  %875 = icmp ult i32 %874, 2, !dbg !2202
  br i1 %875, label %876, label %898, !dbg !2202

; <label>:876:                                    ; preds = %870
  call void @luaK_setreturns(%struct.FuncState* %853, %struct.expdesc* nonnull %6, i32 -1) #5, !dbg !2204
  %877 = load i32, i32* %872, align 8, !dbg !2206, !tbaa !985
  %878 = icmp eq i32 %877, 13, !dbg !2208
  %879 = icmp eq i32 %871, 1, !dbg !2209
  %880 = and i1 %879, %878, !dbg !2210
  br i1 %880, label %881, label %894, !dbg !2210

; <label>:881:                                    ; preds = %876
  %882 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %853, i64 0, i32 0, !dbg !2211
  %883 = load %struct.Proto*, %struct.Proto** %882, align 8, !dbg !2211, !tbaa !585
  %884 = getelementptr inbounds %struct.Proto, %struct.Proto* %883, i64 0, i32 4, !dbg !2211
  %885 = load i32*, i32** %884, align 8, !dbg !2211, !tbaa !813
  %886 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %6, i64 0, i32 1, !dbg !2211
  %887 = bitcast %union.anon.3* %886 to i32*, !dbg !2211
  %888 = load i32, i32* %887, align 8, !dbg !2211, !tbaa !761
  %889 = sext i32 %888 to i64, !dbg !2211
  %890 = getelementptr inbounds i32, i32* %885, i64 %889, !dbg !2211
  %891 = load i32, i32* %890, align 4, !dbg !2211, !tbaa !732
  %892 = and i32 %891, -64, !dbg !2211
  %893 = or i32 %892, 29, !dbg !2211
  store i32 %893, i32* %890, align 4, !dbg !2211, !tbaa !732
  br label %894, !dbg !2213

; <label>:894:                                    ; preds = %881, %876
  %895 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %853, i64 0, i32 13, !dbg !2214
  %896 = load i8, i8* %895, align 2, !dbg !2214, !tbaa !656
  %897 = zext i8 %896 to i32, !dbg !2215
  br label %906, !dbg !2217

; <label>:898:                                    ; preds = %870
  %899 = icmp eq i32 %871, 1, !dbg !2218
  br i1 %899, label %900, label %902, !dbg !2221

; <label>:900:                                    ; preds = %898
  %901 = call i32 @luaK_exp2anyreg(%struct.FuncState* %853, %struct.expdesc* nonnull %6) #5, !dbg !2222
  br label %906, !dbg !2223

; <label>:902:                                    ; preds = %898
  call void @luaK_exp2nextreg(%struct.FuncState* %853, %struct.expdesc* nonnull %6) #5, !dbg !2224
  %903 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %853, i64 0, i32 13, !dbg !2226
  %904 = load i8, i8* %903, align 2, !dbg !2226, !tbaa !656
  %905 = zext i8 %904 to i32, !dbg !2227
  br label %906

; <label>:906:                                    ; preds = %856, %857, %894, %900, %902
  %907 = phi i32 [ %897, %894 ], [ %901, %900 ], [ %905, %902 ], [ 0, %856 ], [ 0, %857 ], !dbg !2228
  %908 = phi i32 [ -1, %894 ], [ 1, %900 ], [ %871, %902 ], [ 0, %856 ], [ 0, %857 ], !dbg !2229
  call void @luaK_ret(%struct.FuncState* %853, i32 %907, i32 %908) #5, !dbg !2230
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %854) #4, !dbg !2231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2231
  br label %967, !dbg !2232

; <label>:909:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2233
  %910 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2237
  %911 = load %struct.FuncState*, %struct.FuncState** %910, align 8, !dbg !2237, !tbaa !654
  %912 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %911, i64 0, i32 5, !dbg !2239
  %913 = load %struct.BlockCnt*, %struct.BlockCnt** %912, align 8, !dbg !2242, !tbaa !1629
  %914 = icmp eq %struct.BlockCnt* %913, null, !dbg !2243
  br i1 %914, label %929, label %915, !dbg !2244

; <label>:915:                                    ; preds = %909, %921
  %916 = phi %struct.BlockCnt* [ %927, %921 ], [ %913, %909 ]
  %917 = phi i32 [ %925, %921 ], [ 0, %909 ]
  %918 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %916, i64 0, i32 4, !dbg !2245
  %919 = load i8, i8* %918, align 2, !dbg !2245, !tbaa !1017
  %920 = icmp eq i8 %919, 0, !dbg !2246
  br i1 %920, label %921, label %931, !dbg !2247

; <label>:921:                                    ; preds = %915
  %922 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %916, i64 0, i32 3, !dbg !2248
  %923 = load i8, i8* %922, align 1, !dbg !2248, !tbaa !1024
  %924 = zext i8 %923 to i32, !dbg !2249
  %925 = or i32 %917, %924, !dbg !2250
  %926 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %916, i64 0, i32 0, !dbg !2251
  %927 = load %struct.BlockCnt*, %struct.BlockCnt** %926, align 8, !dbg !2242, !tbaa !1629
  %928 = icmp eq %struct.BlockCnt* %927, null, !dbg !2243
  br i1 %928, label %929, label %915, !dbg !2244, !llvm.loop !1639

; <label>:929:                                    ; preds = %921, %909
  %930 = phi i32 [ 0, %909 ], [ %925, %921 ], !dbg !2242
  tail call void @luaX_syntaxerror(%struct.LexState* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0)) #5, !dbg !2252
  br label %931, !dbg !2252

; <label>:931:                                    ; preds = %915, %929
  %932 = phi i32 [ %930, %929 ], [ %917, %915 ]
  %933 = phi %struct.BlockCnt* [ null, %929 ], [ %916, %915 ]
  %934 = icmp eq i32 %932, 0, !dbg !2253
  br i1 %934, label %940, label %935, !dbg !2254

; <label>:935:                                    ; preds = %931
  %936 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %933, i64 0, i32 2, !dbg !2255
  %937 = load i8, i8* %936, align 4, !dbg !2255, !tbaa !1021
  %938 = zext i8 %937 to i32, !dbg !2256
  %939 = tail call i32 @luaK_codeABC(%struct.FuncState* %911, i32 35, i32 %938, i32 0, i32 0) #5, !dbg !2257
  br label %940, !dbg !2257

; <label>:940:                                    ; preds = %931, %935
  %941 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %933, i64 0, i32 1, !dbg !2258
  %942 = tail call i32 @luaK_jump(%struct.FuncState* %911) #5, !dbg !2259
  tail call void @luaK_concat(%struct.FuncState* %911, i32* nonnull %941, i32 %942) #5, !dbg !2260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2261
  br label %967, !dbg !2262

; <label>:943:                                    ; preds = %1
  %944 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2276
  %945 = load %struct.FuncState*, %struct.FuncState** %944, align 8, !dbg !2276, !tbaa !654
  %946 = bitcast %struct.LHS_assign* %5 to i8*, !dbg !2278
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %946) #4, !dbg !2278
  %947 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1, !dbg !2279
  call fastcc void @primaryexp(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %947) #5, !dbg !2280
  %948 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %947, i64 0, i32 0, !dbg !2281
  %949 = load i32, i32* %948, align 8, !dbg !2281, !tbaa !2283
  %950 = icmp eq i32 %949, 13, !dbg !2285
  br i1 %950, label %951, label %964, !dbg !2286

; <label>:951:                                    ; preds = %943
  %952 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %945, i64 0, i32 0, !dbg !2287
  %953 = load %struct.Proto*, %struct.Proto** %952, align 8, !dbg !2287, !tbaa !585
  %954 = getelementptr inbounds %struct.Proto, %struct.Proto* %953, i64 0, i32 4, !dbg !2287
  %955 = load i32*, i32** %954, align 8, !dbg !2287, !tbaa !813
  %956 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1, i32 1, !dbg !2287
  %957 = bitcast %union.anon.3* %956 to i32*, !dbg !2287
  %958 = load i32, i32* %957, align 8, !dbg !2287, !tbaa !761
  %959 = sext i32 %958 to i64, !dbg !2287
  %960 = getelementptr inbounds i32, i32* %955, i64 %959, !dbg !2287
  %961 = load i32, i32* %960, align 4, !dbg !2287, !tbaa !732
  %962 = and i32 %961, -8372225, !dbg !2287
  %963 = or i32 %962, 16384, !dbg !2287
  store i32 %963, i32* %960, align 4, !dbg !2287, !tbaa !732
  br label %966, !dbg !2287

; <label>:964:                                    ; preds = %943
  %965 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 0, !dbg !2288
  store %struct.LHS_assign* null, %struct.LHS_assign** %965, align 8, !dbg !2290, !tbaa !2291
  call fastcc void @assignment(%struct.LexState* nonnull %0, %struct.LHS_assign* nonnull %5, i32 1) #5, !dbg !2293
  br label %966

; <label>:966:                                    ; preds = %951, %964
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %946) #4, !dbg !2294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2294
  br label %967, !dbg !2295

; <label>:967:                                    ; preds = %709, %850, %966, %940, %906, %690, %620, %321, %142, %136, %40
  %968 = phi i32 [ 0, %966 ], [ 1, %940 ], [ 1, %906 ], [ 0, %690 ], [ 0, %620 ], [ 0, %321 ], [ 0, %142 ], [ 0, %136 ], [ 0, %40 ], [ 0, %850 ], [ 0, %709 ], !dbg !2296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2297
  ret i32 %968, !dbg !2297
}

; Function Attrs: noredzone
declare hidden void @luaX_lexerror(%struct.LexState*, i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @block(%struct.LexState*) unnamed_addr #0 !dbg !2298 {
  %2 = alloca %struct.BlockCnt, align 8
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2304
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !dbg !2304, !tbaa !654
  %5 = bitcast %struct.BlockCnt* %2 to i8*, !dbg !2306
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #4, !dbg !2306
  %6 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %2, i64 0, i32 1, !dbg !2312
  store i32 -1, i32* %6, align 8, !dbg !2313, !tbaa !1013
  %7 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %2, i64 0, i32 4, !dbg !2314
  store i8 0, i8* %7, align 2, !dbg !2315, !tbaa !1017
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 13, !dbg !2316
  %9 = load i8, i8* %8, align 2, !dbg !2316, !tbaa !656
  %10 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %2, i64 0, i32 2, !dbg !2317
  store i8 %9, i8* %10, align 4, !dbg !2318, !tbaa !1021
  %11 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %2, i64 0, i32 3, !dbg !2319
  store i8 0, i8* %11, align 1, !dbg !2320, !tbaa !1024
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 5, !dbg !2321
  %13 = bitcast %struct.BlockCnt** %12 to i64*, !dbg !2321
  %14 = load i64, i64* %13, align 8, !dbg !2321, !tbaa !746
  %15 = bitcast %struct.BlockCnt* %2 to i64*, !dbg !2322
  store i64 %14, i64* %15, align 8, !dbg !2322, !tbaa !1027
  store %struct.BlockCnt* %2, %struct.BlockCnt** %12, align 8, !dbg !2323, !tbaa !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2324
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !2330
  %17 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !dbg !2330, !tbaa !611
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i64 0, i32 15, !dbg !2331
  %19 = load i16, i16* %18, align 8, !dbg !2332, !tbaa !614
  %20 = add i16 %19, 1, !dbg !2332
  store i16 %20, i16* %18, align 8, !dbg !2332, !tbaa !614
  %21 = icmp ugt i16 %20, 200, !dbg !2333
  br i1 %21, label %22, label %23, !dbg !2334

; <label>:22:                                     ; preds = %1
  call void @luaX_lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 0) #5, !dbg !2335
  br label %23, !dbg !2335

; <label>:23:                                     ; preds = %22, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2336
  %24 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  br label %25, !dbg !2337

; <label>:25:                                     ; preds = %23, %33
  %26 = load i32, i32* %24, align 8, !dbg !2338, !tbaa !624
  switch i32 %26, label %28 [
    i32 260, label %27
    i32 261, label %27
    i32 262, label %27
    i32 276, label %27
    i32 287, label %27
  ], !dbg !2341

; <label>:27:                                     ; preds = %25, %25, %25, %25, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2342
  br label %40

; <label>:28:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2342
  %29 = call fastcc i32 @statement(%struct.LexState* nonnull %0) #5, !dbg !2343
  %30 = load i32, i32* %24, align 8, !dbg !2347, !tbaa !624
  %31 = icmp eq i32 %30, 59, !dbg !2348
  br i1 %31, label %32, label %33, !dbg !2349

; <label>:32:                                     ; preds = %28
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2350
  br label %33, !dbg !2351

; <label>:33:                                     ; preds = %32, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2352
  %34 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !dbg !2353, !tbaa !654
  %35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %34, i64 0, i32 13, !dbg !2354
  %36 = load i8, i8* %35, align 2, !dbg !2354, !tbaa !656
  %37 = zext i8 %36 to i32, !dbg !2355
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %34, i64 0, i32 9, !dbg !2356
  store i32 %37, i32* %38, align 4, !dbg !2357, !tbaa !660
  %39 = icmp eq i32 %29, 0, !dbg !2358
  br i1 %39, label %25, label %40, !dbg !2337, !llvm.loop !662

; <label>:40:                                     ; preds = %33, %27
  %41 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !dbg !2359, !tbaa !611
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %41, i64 0, i32 15, !dbg !2359
  %43 = load i16, i16* %42, align 8, !dbg !2359, !tbaa !614
  %44 = add i16 %43, -1, !dbg !2359
  store i16 %44, i16* %42, align 8, !dbg !2359, !tbaa !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2360
  %45 = load %struct.BlockCnt*, %struct.BlockCnt** %12, align 8, !dbg !2363, !tbaa !746
  %46 = bitcast %struct.BlockCnt* %45 to i64*, !dbg !2365
  %47 = load i64, i64* %46, align 8, !dbg !2365, !tbaa !1027
  store i64 %47, i64* %13, align 8, !dbg !2366, !tbaa !746
  %48 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 3, !dbg !2367
  %49 = load %struct.LexState*, %struct.LexState** %48, align 8, !dbg !2367, !tbaa !725
  %50 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %45, i64 0, i32 2, !dbg !2368
  %51 = load i8, i8* %50, align 4, !dbg !2368, !tbaa !1021
  %52 = zext i8 %51 to i32, !dbg !2369
  %53 = getelementptr inbounds %struct.LexState, %struct.LexState* %49, i64 0, i32 5, !dbg !2373
  %54 = load %struct.FuncState*, %struct.FuncState** %53, align 8, !dbg !2373, !tbaa !654
  %55 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %54, i64 0, i32 13, !dbg !2375
  %56 = load i8, i8* %55, align 2, !dbg !2375, !tbaa !656
  %57 = icmp ugt i8 %56, %51, !dbg !2376
  br i1 %57, label %58, label %99, !dbg !2377

; <label>:58:                                     ; preds = %40
  %59 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %54, i64 0, i32 6
  %60 = load i32, i32* %59, align 8, !tbaa !799
  %61 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %54, i64 0, i32 0
  %62 = load %struct.Proto*, %struct.Proto** %61, align 8, !tbaa !585
  %63 = getelementptr inbounds %struct.Proto, %struct.Proto* %62, i64 0, i32 7
  %64 = load %struct.LocVar*, %struct.LocVar** %63, align 8, !tbaa !800
  %65 = zext i8 %56 to i64, !dbg !2377
  %66 = sub i8 %56, %51, !dbg !2377
  %67 = and i8 %66, 1, !dbg !2377
  %68 = icmp eq i8 %67, 0, !dbg !2377
  br i1 %68, label %77, label %69, !dbg !2377

; <label>:69:                                     ; preds = %58
  %70 = add i8 %56, -1, !dbg !2378
  %71 = zext i8 %70 to i64, !dbg !2378
  %72 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %54, i64 0, i32 15, i64 %71, !dbg !2378
  %73 = load i16, i16* %72, align 2, !dbg !2378, !tbaa !802
  %74 = zext i16 %73 to i64, !dbg !2378
  %75 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %64, i64 %74, i32 2, !dbg !2379
  store i32 %60, i32* %75, align 4, !dbg !2380, !tbaa !805
  %76 = add nsw i64 %65, -1, !dbg !2378
  br label %77, !dbg !2377

; <label>:77:                                     ; preds = %58, %69
  %78 = phi i64 [ %65, %58 ], [ %76, %69 ]
  %79 = add i8 %51, 1, !dbg !2377
  %80 = icmp eq i8 %56, %79, !dbg !2377
  br i1 %80, label %98, label %81, !dbg !2377

; <label>:81:                                     ; preds = %77, %81
  %82 = phi i64 [ %97, %81 ], [ %78, %77 ]
  %83 = add i64 %82, 255, !dbg !2378
  %84 = and i64 %83, 255, !dbg !2378
  %85 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %54, i64 0, i32 15, i64 %84, !dbg !2378
  %86 = load i16, i16* %85, align 2, !dbg !2378, !tbaa !802
  %87 = zext i16 %86 to i64, !dbg !2378
  %88 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %64, i64 %87, i32 2, !dbg !2379
  store i32 %60, i32* %88, align 4, !dbg !2380, !tbaa !805
  %89 = trunc i64 %82 to i8, !dbg !2378
  %90 = add i8 %89, -2, !dbg !2378
  %91 = zext i8 %90 to i64, !dbg !2378
  %92 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %54, i64 0, i32 15, i64 %91, !dbg !2378
  %93 = load i16, i16* %92, align 2, !dbg !2378, !tbaa !802
  %94 = zext i16 %93 to i64, !dbg !2378
  %95 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %64, i64 %94, i32 2, !dbg !2379
  store i32 %60, i32* %95, align 4, !dbg !2380, !tbaa !805
  %96 = icmp ugt i8 %90, %51, !dbg !2376
  %97 = add nsw i64 %82, -2, !dbg !2378
  br i1 %96, label %81, label %98, !dbg !2377, !llvm.loop !807

; <label>:98:                                     ; preds = %81, %77
  store i8 %51, i8* %55, align 2, !dbg !2378, !tbaa !656
  br label %99, !dbg !2377

; <label>:99:                                     ; preds = %98, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2381
  %100 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %45, i64 0, i32 3, !dbg !2382
  %101 = load i8, i8* %100, align 1, !dbg !2382, !tbaa !1024
  %102 = icmp eq i8 %101, 0, !dbg !2383
  br i1 %102, label %105, label %103, !dbg !2384

; <label>:103:                                    ; preds = %99
  %104 = call i32 @luaK_codeABC(%struct.FuncState* %4, i32 35, i32 %52, i32 0, i32 0) #5, !dbg !2385
  br label %105, !dbg !2385

; <label>:105:                                    ; preds = %99, %103
  %106 = load i8, i8* %8, align 2, !dbg !2386, !tbaa !656
  %107 = zext i8 %106 to i32, !dbg !2387
  %108 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 9, !dbg !2388
  store i32 %107, i32* %108, align 4, !dbg !2389, !tbaa !660
  %109 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %45, i64 0, i32 1, !dbg !2390
  %110 = load i32, i32* %109, align 8, !dbg !2390, !tbaa !1013
  call void @luaK_patchtohere(%struct.FuncState* %4, i32 %110) #5, !dbg !2391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2392
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #4, !dbg !2393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2393
  ret void, !dbg !2393
}

; Function Attrs: noredzone nounwind
define internal fastcc void @check_match(%struct.LexState*, i32, i32, i32) unnamed_addr #0 !dbg !2394 {
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !2410
  %6 = load i32, i32* %5, align 8, !dbg !2410, !tbaa !624
  %7 = icmp eq i32 %6, %1, !dbg !2411
  br i1 %7, label %8, label %9, !dbg !2412

; <label>:8:                                      ; preds = %4
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2414
  br label %21, !dbg !2415

; <label>:9:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2414
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !2416
  %11 = load i32, i32* %10, align 4, !dbg !2416, !tbaa !881
  %12 = icmp eq i32 %11, %3, !dbg !2419
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !2420
  %14 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !dbg !2420, !tbaa !611
  %15 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 %1) #5, !dbg !2420
  br i1 %12, label %16, label %18, !dbg !2422

; <label>:16:                                     ; preds = %9
  %17 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %15) #5, !dbg !2426
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %17) #5, !dbg !2427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2428
  br label %21, !dbg !2429

; <label>:18:                                     ; preds = %9
  %19 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 %2) #5, !dbg !2430
  %20 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i8* %15, i8* %19, i32 %3) #5, !dbg !2431
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %20) #5, !dbg !2432
  br label %21

; <label>:21:                                     ; preds = %8, %16, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2433
  ret void, !dbg !2433
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @test_then_block(%struct.LexState*) unnamed_addr #0 !dbg !2434 {
  %2 = alloca %struct.expdesc, align 8
  tail call void @luaX_next(%struct.LexState* %0) #5, !dbg !2439
  %3 = bitcast %struct.expdesc* %2 to i8*, !dbg !2442
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #4, !dbg !2442
  %4 = call fastcc i32 @subexpr(%struct.LexState* %0, %struct.expdesc* nonnull %2, i32 0) #5, !dbg !2447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2448
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2449
  %6 = load i32, i32* %5, align 8, !dbg !2449, !tbaa !985
  %7 = icmp eq i32 %6, 1, !dbg !2450
  br i1 %7, label %8, label %9, !dbg !2451

; <label>:8:                                      ; preds = %1
  store i32 3, i32* %5, align 8, !dbg !2452, !tbaa !985
  br label %9, !dbg !2453

; <label>:9:                                      ; preds = %1, %8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2454
  %11 = load %struct.FuncState*, %struct.FuncState** %10, align 8, !dbg !2454, !tbaa !654
  call void @luaK_goiftrue(%struct.FuncState* %11, %struct.expdesc* nonnull %2) #5, !dbg !2455
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2456
  %13 = load i32, i32* %12, align 4, !dbg !2456, !tbaa !994
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #4, !dbg !2457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2458
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !2466
  %15 = load i32, i32* %14, align 8, !dbg !2466, !tbaa !624
  %16 = icmp eq i32 %15, 274, !dbg !2467
  br i1 %16, label %22, label %17, !dbg !2468

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !2472
  %19 = load %struct.lua_State*, %struct.lua_State** %18, align 8, !dbg !2472, !tbaa !611
  %20 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 274) #5, !dbg !2473
  %21 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %20) #5, !dbg !2474
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %21) #5, !dbg !2475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2476
  br label %22, !dbg !2477

; <label>:22:                                     ; preds = %9, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2478
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2480
  call fastcc void @block(%struct.LexState* nonnull %0) #6, !dbg !2481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2482
  ret i32 %13, !dbg !2482
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
define internal fastcc i32 @subexpr(%struct.LexState*, %struct.expdesc*, i32) unnamed_addr #0 !dbg !2483 {
  %4 = alloca %struct.expdesc, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !2502
  %6 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !dbg !2502, !tbaa !611
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i64 0, i32 15, !dbg !2503
  %8 = load i16, i16* %7, align 8, !dbg !2504, !tbaa !614
  %9 = add i16 %8, 1, !dbg !2504
  store i16 %9, i16* %7, align 8, !dbg !2504, !tbaa !614
  %10 = icmp ugt i16 %9, 200, !dbg !2505
  br i1 %10, label %11, label %12, !dbg !2506

; <label>:11:                                     ; preds = %3
  tail call void @luaX_lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 0) #5, !dbg !2507
  br label %12, !dbg !2507

; <label>:12:                                     ; preds = %3, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2508
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !2509
  %14 = load i32, i32* %13, align 8, !dbg !2509, !tbaa !624
  switch i32 %14, label %22 [
    i32 270, label %17
    i32 45, label %15
    i32 35, label %16
  ], !dbg !2517

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !2518

; <label>:16:                                     ; preds = %12
  br label %17, !dbg !2520

; <label>:17:                                     ; preds = %16, %15, %12
  %18 = phi i32 [ 1, %12 ], [ 0, %15 ], [ 2, %16 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2521
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2523
  %19 = tail call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 8) #6, !dbg !2526
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2527
  %21 = load %struct.FuncState*, %struct.FuncState** %20, align 8, !dbg !2527, !tbaa !654
  tail call void @luaK_prefix(%struct.FuncState* %21, i32 %18, %struct.expdesc* %1) #5, !dbg !2528
  br label %92, !dbg !2529

; <label>:22:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2521
  switch i32 %14, label %89 [
    i32 284, label %23
    i32 286, label %33
    i32 269, label %45
    i32 275, label %51
    i32 263, label %57
    i32 279, label %63
    i32 123, label %85
    i32 265, label %86
  ], !dbg !2540

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2546
  store i32 -1, i32* %24, align 8, !dbg !2547, !tbaa !1864
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2548
  store i32 -1, i32* %25, align 4, !dbg !2549, !tbaa !994
  %26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2550
  store i32 5, i32* %26, align 8, !dbg !2551, !tbaa !985
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2552
  %28 = bitcast %union.anon.3* %27 to i32*, !dbg !2553
  store i32 0, i32* %28, align 8, !dbg !2554, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2555
  %29 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, i32 0, !dbg !2556
  %30 = bitcast double* %29 to i64*, !dbg !2556
  %31 = load i64, i64* %30, align 8, !dbg !2556, !tbaa !761
  %32 = bitcast %union.anon.3* %27 to i64*, !dbg !2557
  store i64 %31, i64* %32, align 8, !dbg !2557, !tbaa !761
  br label %90, !dbg !2558

; <label>:33:                                     ; preds = %22
  %34 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !2559
  %35 = bitcast %union.SemInfo* %34 to %union.TString**, !dbg !2561
  %36 = load %union.TString*, %union.TString** %35, align 8, !dbg !2561, !tbaa !761
  %37 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2566
  %38 = load %struct.FuncState*, %struct.FuncState** %37, align 8, !dbg !2566, !tbaa !654
  %39 = tail call i32 @luaK_stringK(%struct.FuncState* %38, %union.TString* %36) #5, !dbg !2567
  %40 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2572
  store i32 -1, i32* %40, align 8, !dbg !2573, !tbaa !1864
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2574
  store i32 -1, i32* %41, align 4, !dbg !2575, !tbaa !994
  %42 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2576
  store i32 4, i32* %42, align 8, !dbg !2577, !tbaa !985
  %43 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2578
  %44 = bitcast %union.anon.3* %43 to i32*, !dbg !2579
  store i32 %39, i32* %44, align 8, !dbg !2580, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2582
  br label %90, !dbg !2583

; <label>:45:                                     ; preds = %22
  %46 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2589
  store i32 -1, i32* %46, align 8, !dbg !2590, !tbaa !1864
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2591
  store i32 -1, i32* %47, align 4, !dbg !2592, !tbaa !994
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2593
  store i32 1, i32* %48, align 8, !dbg !2594, !tbaa !985
  %49 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2595
  %50 = bitcast %union.anon.3* %49 to i32*, !dbg !2596
  store i32 0, i32* %50, align 8, !dbg !2597, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2598
  br label %90, !dbg !2599

; <label>:51:                                     ; preds = %22
  %52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2605
  store i32 -1, i32* %52, align 8, !dbg !2606, !tbaa !1864
  %53 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2607
  store i32 -1, i32* %53, align 4, !dbg !2608, !tbaa !994
  %54 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2609
  store i32 2, i32* %54, align 8, !dbg !2610, !tbaa !985
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2611
  %56 = bitcast %union.anon.3* %55 to i32*, !dbg !2612
  store i32 0, i32* %56, align 8, !dbg !2613, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2614
  br label %90, !dbg !2615

; <label>:57:                                     ; preds = %22
  %58 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2621
  store i32 -1, i32* %58, align 8, !dbg !2622, !tbaa !1864
  %59 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2623
  store i32 -1, i32* %59, align 4, !dbg !2624, !tbaa !994
  %60 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2625
  store i32 3, i32* %60, align 8, !dbg !2626, !tbaa !985
  %61 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2627
  %62 = bitcast %union.anon.3* %61 to i32*, !dbg !2628
  store i32 0, i32* %62, align 8, !dbg !2629, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2630
  br label %90, !dbg !2631

; <label>:63:                                     ; preds = %22
  %64 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2632
  %65 = load %struct.FuncState*, %struct.FuncState** %64, align 8, !dbg !2632, !tbaa !654
  %66 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %65, i64 0, i32 0, !dbg !2634
  %67 = load %struct.Proto*, %struct.Proto** %66, align 8, !dbg !2634, !tbaa !585
  %68 = getelementptr inbounds %struct.Proto, %struct.Proto* %67, i64 0, i32 21, !dbg !2634
  %69 = load i8, i8* %68, align 2, !dbg !2634, !tbaa !590
  %70 = icmp eq i8 %69, 0, !dbg !2634
  br i1 %70, label %71, label %75, !dbg !2637

; <label>:71:                                     ; preds = %63
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !2634
  %72 = load %struct.Proto*, %struct.Proto** %66, align 8, !dbg !2638, !tbaa !585
  %73 = getelementptr inbounds %struct.Proto, %struct.Proto* %72, i64 0, i32 21
  %74 = load i8, i8* %73, align 2, !dbg !2639, !tbaa !590
  br label %75, !dbg !2634

; <label>:75:                                     ; preds = %71, %63
  %76 = phi i8* [ %73, %71 ], [ %68, %63 ], !dbg !2640
  %77 = phi i8 [ %74, %71 ], [ %69, %63 ], !dbg !2639
  %78 = and i8 %77, -5, !dbg !2639
  store i8 %78, i8* %76, align 2, !dbg !2639, !tbaa !590
  %79 = tail call i32 @luaK_codeABC(%struct.FuncState* %65, i32 37, i32 0, i32 1, i32 0) #5, !dbg !2641
  %80 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2646
  store i32 -1, i32* %80, align 8, !dbg !2647, !tbaa !1864
  %81 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2648
  store i32 -1, i32* %81, align 4, !dbg !2649, !tbaa !994
  %82 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2650
  store i32 14, i32* %82, align 8, !dbg !2651, !tbaa !985
  %83 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2652
  %84 = bitcast %union.anon.3* %83 to i32*, !dbg !2653
  store i32 %79, i32* %84, align 8, !dbg !2654, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2655
  br label %90

; <label>:85:                                     ; preds = %22
  tail call fastcc void @constructor(%struct.LexState* nonnull %0, %struct.expdesc* %1) #5, !dbg !2656
  br label %91, !dbg !2658

; <label>:86:                                     ; preds = %22
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2659
  %87 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !2661
  %88 = load i32, i32* %87, align 4, !dbg !2661, !tbaa !881
  tail call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 0, i32 %88) #5, !dbg !2662
  br label %91, !dbg !2663

; <label>:89:                                     ; preds = %22
  tail call fastcc void @primaryexp(%struct.LexState* nonnull %0, %struct.expdesc* %1) #5, !dbg !2664
  br label %91, !dbg !2666

; <label>:90:                                     ; preds = %75, %57, %51, %45, %33, %23
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2667
  br label %91, !dbg !2668

; <label>:91:                                     ; preds = %85, %86, %89, %90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2668
  br label %92

; <label>:92:                                     ; preds = %91, %17
  %93 = load i32, i32* %13, align 8, !dbg !2669, !tbaa !624
  switch i32 %93, label %108 [
    i32 43, label %109
    i32 45, label %94
    i32 42, label %95
    i32 47, label %96
    i32 37, label %97
    i32 94, label %98
    i32 278, label %99
    i32 283, label %100
    i32 280, label %101
    i32 60, label %102
    i32 282, label %103
    i32 62, label %104
    i32 281, label %105
    i32 257, label %106
    i32 271, label %107
  ], !dbg !2677

; <label>:94:                                     ; preds = %92
  br label %109, !dbg !2678

; <label>:95:                                     ; preds = %92
  br label %109, !dbg !2680

; <label>:96:                                     ; preds = %92
  br label %109, !dbg !2681

; <label>:97:                                     ; preds = %92
  br label %109, !dbg !2682

; <label>:98:                                     ; preds = %92
  br label %109, !dbg !2683

; <label>:99:                                     ; preds = %92
  br label %109, !dbg !2684

; <label>:100:                                    ; preds = %92
  br label %109, !dbg !2685

; <label>:101:                                    ; preds = %92
  br label %109, !dbg !2686

; <label>:102:                                    ; preds = %92
  br label %109, !dbg !2687

; <label>:103:                                    ; preds = %92
  br label %109, !dbg !2688

; <label>:104:                                    ; preds = %92
  br label %109, !dbg !2689

; <label>:105:                                    ; preds = %92
  br label %109, !dbg !2690

; <label>:106:                                    ; preds = %92
  br label %109, !dbg !2691

; <label>:107:                                    ; preds = %92
  br label %109, !dbg !2692

; <label>:108:                                    ; preds = %92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2693
  br label %128, !dbg !2695

; <label>:109:                                    ; preds = %107, %106, %105, %104, %103, %102, %101, %100, %99, %98, %97, %96, %95, %94, %92
  %110 = phi i32 [ 0, %92 ], [ 1, %94 ], [ 2, %95 ], [ 3, %96 ], [ 4, %97 ], [ 5, %98 ], [ 6, %99 ], [ 7, %100 ], [ 8, %101 ], [ 9, %102 ], [ 10, %103 ], [ 11, %104 ], [ 12, %105 ], [ 13, %106 ], [ 14, %107 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2693
  %111 = bitcast %struct.expdesc* %4 to i8*
  %112 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br label %113, !dbg !2695

; <label>:113:                                    ; preds = %109, %120
  %114 = phi i32 [ %110, %109 ], [ %125, %120 ]
  %115 = zext i32 %114 to i64, !dbg !2696
  %116 = getelementptr inbounds [15 x %struct.anon.5], [15 x %struct.anon.5]* @priority, i64 0, i64 %115, i32 0, !dbg !2697
  %117 = load i8, i8* %116, align 2, !dbg !2697, !tbaa !2698
  %118 = zext i8 %117 to i32, !dbg !2696
  %119 = icmp ugt i32 %118, %2, !dbg !2700
  br i1 %119, label %120, label %128, !dbg !2701

; <label>:120:                                    ; preds = %113
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %111) #4, !dbg !2702
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2703
  %121 = load %struct.FuncState*, %struct.FuncState** %112, align 8, !dbg !2704, !tbaa !654
  call void @luaK_infix(%struct.FuncState* %121, i32 %114, %struct.expdesc* %1) #5, !dbg !2705
  %122 = getelementptr inbounds [15 x %struct.anon.5], [15 x %struct.anon.5]* @priority, i64 0, i64 %115, i32 1, !dbg !2706
  %123 = load i8, i8* %122, align 1, !dbg !2706, !tbaa !2707
  %124 = zext i8 %123 to i32, !dbg !2708
  %125 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 %124) #6, !dbg !2710
  %126 = load %struct.FuncState*, %struct.FuncState** %112, align 8, !dbg !2712, !tbaa !654
  call void @luaK_posfix(%struct.FuncState* %126, i32 %114, %struct.expdesc* %1, %struct.expdesc* nonnull %4) #5, !dbg !2713
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %111) #4, !dbg !2714
  %127 = icmp eq i32 %125, 15, !dbg !2715
  br i1 %127, label %128, label %113, !dbg !2695, !llvm.loop !2716

; <label>:128:                                    ; preds = %113, %120, %108
  %129 = phi i32 [ 15, %108 ], [ 15, %120 ], [ %114, %113 ], !dbg !2717
  %130 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !dbg !2718, !tbaa !611
  %131 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %130, i64 0, i32 15, !dbg !2718
  %132 = load i16, i16* %131, align 8, !dbg !2718, !tbaa !614
  %133 = add i16 %132, -1, !dbg !2718
  store i16 %133, i16* %131, align 8, !dbg !2718, !tbaa !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2719
  ret i32 %129, !dbg !2719
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
define internal fastcc void @constructor(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 !dbg !2720 {
  %3 = alloca %struct.ConsControl, align 8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2737
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !2737, !tbaa !654
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !2739
  %7 = load i32, i32* %6, align 4, !dbg !2739, !tbaa !881
  %8 = tail call i32 @luaK_codeABC(%struct.FuncState* %5, i32 10, i32 0, i32 0, i32 0) #5, !dbg !2741
  %9 = bitcast %struct.ConsControl* %3 to i8*, !dbg !2743
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #4, !dbg !2743
  %10 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 4, !dbg !2744
  store i32 0, i32* %10, align 8, !dbg !2745, !tbaa !2746
  %11 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 2, !dbg !2748
  store i32 0, i32* %11, align 8, !dbg !2749, !tbaa !2750
  %12 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 3, !dbg !2751
  store i32 0, i32* %12, align 4, !dbg !2752, !tbaa !2753
  %13 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 1, !dbg !2754
  store %struct.expdesc* %1, %struct.expdesc** %13, align 8, !dbg !2755, !tbaa !2756
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2761
  store i32 -1, i32* %14, align 8, !dbg !2762, !tbaa !1864
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2763
  store i32 -1, i32* %15, align 4, !dbg !2764, !tbaa !994
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2765
  store i32 11, i32* %16, align 8, !dbg !2766, !tbaa !985
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2767
  %18 = bitcast %union.anon.3* %17 to i32*, !dbg !2768
  store i32 %8, i32* %18, align 8, !dbg !2769, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2770
  %19 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, !dbg !2771
  %20 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, i32 2, !dbg !2776
  store i32 -1, i32* %20, align 8, !dbg !2777, !tbaa !1864
  %21 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, i32 3, !dbg !2778
  store i32 -1, i32* %21, align 4, !dbg !2779, !tbaa !994
  %22 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, i32 0, !dbg !2780
  store i32 0, i32* %22, align 8, !dbg !2781, !tbaa !985
  %23 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, i32 1, !dbg !2782
  %24 = bitcast %union.anon.3* %23 to i32*, !dbg !2783
  store i32 0, i32* %24, align 8, !dbg !2784, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2785
  %25 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !2786, !tbaa !654
  tail call void @luaK_exp2nextreg(%struct.FuncState* %25, %struct.expdesc* %1) #5, !dbg !2787
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !2794
  %27 = load i32, i32* %26, align 8, !dbg !2794, !tbaa !624
  %28 = icmp eq i32 %27, 123, !dbg !2795
  br i1 %28, label %34, label %29, !dbg !2796

; <label>:29:                                     ; preds = %2
  %30 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !2800
  %31 = load %struct.lua_State*, %struct.lua_State** %30, align 8, !dbg !2800, !tbaa !611
  %32 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 123) #5, !dbg !2801
  %33 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %32) #5, !dbg !2802
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %33) #5, !dbg !2803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2804
  br label %34, !dbg !2805

; <label>:34:                                     ; preds = %2, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2806
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2808
  %35 = load i32, i32* %26, align 8, !dbg !2809, !tbaa !624
  %36 = icmp eq i32 %35, 125, !dbg !2812
  br i1 %36, label %125, label %37, !dbg !2813

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4, i32 0
  br label %39, !dbg !2813

; <label>:39:                                     ; preds = %119, %37
  %40 = phi i32 [ %120, %119 ], [ 0, %37 ], !dbg !2814
  %41 = icmp eq i32 %40, 0, !dbg !2827
  br i1 %41, label %51, label %42, !dbg !2828

; <label>:42:                                     ; preds = %39
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* nonnull %19) #5, !dbg !2829
  store i32 0, i32* %22, align 8, !dbg !2830, !tbaa !2831
  %43 = load i32, i32* %10, align 8, !dbg !2832, !tbaa !2746
  %44 = icmp eq i32 %43, 50, !dbg !2834
  br i1 %44, label %45, label %51, !dbg !2835

; <label>:45:                                     ; preds = %42
  %46 = load %struct.expdesc*, %struct.expdesc** %13, align 8, !dbg !2836, !tbaa !2756
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %46, i64 0, i32 1, !dbg !2838
  %48 = bitcast %union.anon.3* %47 to i32*, !dbg !2839
  %49 = load i32, i32* %48, align 8, !dbg !2839, !tbaa !761
  %50 = load i32, i32* %12, align 4, !dbg !2840, !tbaa !2753
  call void @luaK_setlist(%struct.FuncState* %5, i32 %49, i32 %50, i32 50) #5, !dbg !2841
  store i32 0, i32* %10, align 8, !dbg !2842, !tbaa !2746
  br label %51, !dbg !2843

; <label>:51:                                     ; preds = %39, %42, %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2844
  %52 = load i32, i32* %26, align 8, !dbg !2845, !tbaa !624
  switch i32 %52, label %85 [
    i32 285, label %53
    i32 91, label %84
  ], !dbg !2846

; <label>:53:                                     ; preds = %51
  call void @luaX_lookahead(%struct.LexState* nonnull %0) #5, !dbg !2847
  %54 = load i32, i32* %38, align 8, !dbg !2850, !tbaa !2852
  %55 = icmp eq i32 %54, 61, !dbg !2853
  br i1 %55, label %83, label %56, !dbg !2854

; <label>:56:                                     ; preds = %53
  %57 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %19, i32 0) #5, !dbg !2867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2868
  %58 = load i32, i32* %12, align 4, !dbg !2869, !tbaa !2753
  %59 = icmp sgt i32 %58, 2147483645, !dbg !2869
  br i1 %59, label %60, label %78, !dbg !2871

; <label>:60:                                     ; preds = %56
  %61 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !2869, !tbaa !654
  %62 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %61, i64 0, i32 0, !dbg !2884
  %63 = load %struct.Proto*, %struct.Proto** %62, align 8, !dbg !2884, !tbaa !585
  %64 = getelementptr inbounds %struct.Proto, %struct.Proto* %63, i64 0, i32 16, !dbg !2885
  %65 = load i32, i32* %64, align 8, !dbg !2885, !tbaa !2886
  %66 = icmp eq i32 %65, 0, !dbg !2887
  %67 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %61, i64 0, i32 4, !dbg !2888
  %68 = load %struct.lua_State*, %struct.lua_State** %67, align 8, !dbg !2888, !tbaa !728
  br i1 %66, label %69, label %71, !dbg !2889

; <label>:69:                                     ; preds = %60
  %70 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 2147483645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !2890
  br label %73, !dbg !2889

; <label>:71:                                     ; preds = %60
  %72 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %65, i32 2147483645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !2891
  br label %73, !dbg !2889

; <label>:73:                                     ; preds = %69, %71
  %74 = phi i8* [ %70, %69 ], [ %72, %71 ], !dbg !2889
  %75 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %61, i64 0, i32 3, !dbg !2893
  %76 = load %struct.LexState*, %struct.LexState** %75, align 8, !dbg !2893, !tbaa !725
  call void @luaX_lexerror(%struct.LexState* %76, i8* %74, i32 0) #5, !dbg !2894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2895
  %77 = load i32, i32* %12, align 4, !dbg !2896, !tbaa !2753
  br label %78, !dbg !2869

; <label>:78:                                     ; preds = %56, %73
  %79 = phi i32 [ %58, %56 ], [ %77, %73 ], !dbg !2896
  %80 = add nsw i32 %79, 1, !dbg !2896
  store i32 %80, i32* %12, align 4, !dbg !2896, !tbaa !2753
  %81 = load i32, i32* %10, align 8, !dbg !2897, !tbaa !2746
  %82 = add nsw i32 %81, 1, !dbg !2897
  store i32 %82, i32* %10, align 8, !dbg !2897, !tbaa !2746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2898
  br label %112, !dbg !2899

; <label>:83:                                     ; preds = %53
  call fastcc void @recfield(%struct.LexState* nonnull %0, %struct.ConsControl* nonnull %3) #6, !dbg !2900
  br label %112

; <label>:84:                                     ; preds = %51
  call fastcc void @recfield(%struct.LexState* nonnull %0, %struct.ConsControl* nonnull %3) #6, !dbg !2901
  br label %112, !dbg !2903

; <label>:85:                                     ; preds = %51
  %86 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %19, i32 0) #5, !dbg !2911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2912
  %87 = load i32, i32* %12, align 4, !dbg !2913, !tbaa !2753
  %88 = icmp sgt i32 %87, 2147483645, !dbg !2913
  br i1 %88, label %89, label %107, !dbg !2914

; <label>:89:                                     ; preds = %85
  %90 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !2913, !tbaa !654
  %91 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %90, i64 0, i32 0, !dbg !2919
  %92 = load %struct.Proto*, %struct.Proto** %91, align 8, !dbg !2919, !tbaa !585
  %93 = getelementptr inbounds %struct.Proto, %struct.Proto* %92, i64 0, i32 16, !dbg !2920
  %94 = load i32, i32* %93, align 8, !dbg !2920, !tbaa !2886
  %95 = icmp eq i32 %94, 0, !dbg !2921
  %96 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %90, i64 0, i32 4, !dbg !2922
  %97 = load %struct.lua_State*, %struct.lua_State** %96, align 8, !dbg !2922, !tbaa !728
  br i1 %95, label %98, label %100, !dbg !2923

; <label>:98:                                     ; preds = %89
  %99 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 2147483645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !2924
  br label %102, !dbg !2923

; <label>:100:                                    ; preds = %89
  %101 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %94, i32 2147483645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !2925
  br label %102, !dbg !2923

; <label>:102:                                    ; preds = %98, %100
  %103 = phi i8* [ %99, %98 ], [ %101, %100 ], !dbg !2923
  %104 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %90, i64 0, i32 3, !dbg !2927
  %105 = load %struct.LexState*, %struct.LexState** %104, align 8, !dbg !2927, !tbaa !725
  call void @luaX_lexerror(%struct.LexState* %105, i8* %103, i32 0) #5, !dbg !2928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2929
  %106 = load i32, i32* %12, align 4, !dbg !2930, !tbaa !2753
  br label %107, !dbg !2913

; <label>:107:                                    ; preds = %85, %102
  %108 = phi i32 [ %87, %85 ], [ %106, %102 ], !dbg !2930
  %109 = add nsw i32 %108, 1, !dbg !2930
  store i32 %109, i32* %12, align 4, !dbg !2930, !tbaa !2753
  %110 = load i32, i32* %10, align 8, !dbg !2931, !tbaa !2746
  %111 = add nsw i32 %110, 1, !dbg !2931
  store i32 %111, i32* %10, align 8, !dbg !2931, !tbaa !2746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2932
  br label %112, !dbg !2933

; <label>:112:                                    ; preds = %84, %107, %83, %78
  %113 = load i32, i32* %26, align 8, !dbg !2937, !tbaa !624
  %114 = icmp eq i32 %113, 44, !dbg !2938
  br i1 %114, label %115, label %121, !dbg !2939

; <label>:115:                                    ; preds = %112
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2940
  br label %116, !dbg !2941

; <label>:116:                                    ; preds = %115, %124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2942
  %117 = load i32, i32* %26, align 8, !dbg !2809, !tbaa !624
  %118 = icmp eq i32 %117, 125, !dbg !2812
  br i1 %118, label %125, label %119, !dbg !2813

; <label>:119:                                    ; preds = %116
  %120 = load i32, i32* %22, align 8, !dbg !2814, !tbaa !2831
  br label %39, !dbg !2813

; <label>:121:                                    ; preds = %112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2942
  %122 = icmp eq i32 %113, 59, !dbg !2946
  br i1 %122, label %124, label %123, !dbg !2947

; <label>:123:                                    ; preds = %121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2948
  br label %125, !dbg !2949

; <label>:124:                                    ; preds = %121
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2950
  br label %116, !dbg !2949

; <label>:125:                                    ; preds = %116, %34, %123
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 125, i32 123, i32 %7) #6, !dbg !2951
  %126 = load i32, i32* %10, align 8, !dbg !2959, !tbaa !2746
  %127 = icmp eq i32 %126, 0, !dbg !2961
  br i1 %127, label %147, label %128, !dbg !2962

; <label>:128:                                    ; preds = %125
  %129 = load i32, i32* %22, align 8, !dbg !2963, !tbaa !2831
  switch i32 %129, label %138 [
    i32 13, label %130
    i32 14, label %130
    i32 0, label %140
  ], !dbg !2963

; <label>:130:                                    ; preds = %128, %128
  call void @luaK_setreturns(%struct.FuncState* %5, %struct.expdesc* nonnull %19, i32 -1) #5, !dbg !2965
  %131 = load %struct.expdesc*, %struct.expdesc** %13, align 8, !dbg !2967, !tbaa !2756
  %132 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %131, i64 0, i32 1, !dbg !2968
  %133 = bitcast %union.anon.3* %132 to i32*, !dbg !2969
  %134 = load i32, i32* %133, align 8, !dbg !2969, !tbaa !761
  %135 = load i32, i32* %12, align 4, !dbg !2970, !tbaa !2753
  call void @luaK_setlist(%struct.FuncState* %5, i32 %134, i32 %135, i32 -1) #5, !dbg !2971
  %136 = load i32, i32* %12, align 4, !dbg !2972, !tbaa !2753
  %137 = add nsw i32 %136, -1, !dbg !2972
  store i32 %137, i32* %12, align 4, !dbg !2972, !tbaa !2753
  br label %147, !dbg !2973

; <label>:138:                                    ; preds = %128
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* nonnull %19) #5, !dbg !2974
  %139 = load i32, i32* %10, align 8, !dbg !2977, !tbaa !2746
  br label %140, !dbg !2974

; <label>:140:                                    ; preds = %138, %128
  %141 = phi i32 [ %126, %128 ], [ %139, %138 ], !dbg !2977
  %142 = load %struct.expdesc*, %struct.expdesc** %13, align 8, !dbg !2978, !tbaa !2756
  %143 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %142, i64 0, i32 1, !dbg !2979
  %144 = bitcast %union.anon.3* %143 to i32*, !dbg !2980
  %145 = load i32, i32* %144, align 8, !dbg !2980, !tbaa !761
  %146 = load i32, i32* %12, align 4, !dbg !2981, !tbaa !2753
  call void @luaK_setlist(%struct.FuncState* %5, i32 %145, i32 %146, i32 %141) #5, !dbg !2982
  br label %147

; <label>:147:                                    ; preds = %125, %130, %140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2983
  %148 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0, !dbg !2984
  %149 = load %struct.Proto*, %struct.Proto** %148, align 8, !dbg !2984, !tbaa !585
  %150 = getelementptr inbounds %struct.Proto, %struct.Proto* %149, i64 0, i32 4, !dbg !2984
  %151 = load i32*, i32** %150, align 8, !dbg !2984, !tbaa !813
  %152 = sext i32 %8 to i64, !dbg !2984
  %153 = getelementptr inbounds i32, i32* %151, i64 %152, !dbg !2984
  %154 = load i32, i32* %153, align 4, !dbg !2984, !tbaa !732
  %155 = and i32 %154, 8388607, !dbg !2984
  %156 = load i32, i32* %12, align 4, !dbg !2984, !tbaa !2753
  %157 = call i32 @luaO_int2fb(i32 %156) #5, !dbg !2984
  %158 = shl i32 %157, 23, !dbg !2984
  %159 = or i32 %158, %155, !dbg !2984
  %160 = load %struct.Proto*, %struct.Proto** %148, align 8, !dbg !2984, !tbaa !585
  %161 = getelementptr inbounds %struct.Proto, %struct.Proto* %160, i64 0, i32 4, !dbg !2984
  %162 = load i32*, i32** %161, align 8, !dbg !2984, !tbaa !813
  %163 = getelementptr inbounds i32, i32* %162, i64 %152, !dbg !2984
  store i32 %159, i32* %163, align 4, !dbg !2984, !tbaa !732
  %164 = and i32 %159, -8372225, !dbg !2985
  %165 = load i32, i32* %11, align 8, !dbg !2985, !tbaa !2750
  %166 = call i32 @luaO_int2fb(i32 %165) #5, !dbg !2985
  %167 = shl i32 %166, 14, !dbg !2985
  %168 = and i32 %167, 8372224, !dbg !2985
  %169 = or i32 %168, %164, !dbg !2985
  %170 = load %struct.Proto*, %struct.Proto** %148, align 8, !dbg !2985, !tbaa !585
  %171 = getelementptr inbounds %struct.Proto, %struct.Proto* %170, i64 0, i32 4, !dbg !2985
  %172 = load i32*, i32** %171, align 8, !dbg !2985, !tbaa !813
  %173 = getelementptr inbounds i32, i32* %172, i64 %152, !dbg !2985
  store i32 %169, i32* %173, align 4, !dbg !2985, !tbaa !732
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #4, !dbg !2986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2986
  ret void, !dbg !2986
}

; Function Attrs: noredzone nounwind
define internal fastcc void @body(%struct.LexState*, %struct.expdesc* nocapture, i32, i32) unnamed_addr #0 !dbg !2987 {
  %5 = alloca %struct.FuncState, align 8
  %6 = bitcast %struct.FuncState* %5 to i8*, !dbg !3000
  call void @llvm.lifetime.start.p0i8(i64 600, i8* nonnull %6) #4, !dbg !3000
  call fastcc void @open_func(%struct.LexState* %0, %struct.FuncState* nonnull %5) #6, !dbg !3002
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0, !dbg !3003
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8, !dbg !3003, !tbaa !585
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 16, !dbg !3004
  store i32 %3, i32* %9, align 8, !dbg !3005, !tbaa !2886
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !3012
  %11 = load i32, i32* %10, align 8, !dbg !3012, !tbaa !624
  %12 = icmp eq i32 %11, 40, !dbg !3013
  br i1 %12, label %18, label %13, !dbg !3014

; <label>:13:                                     ; preds = %4
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !3018
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8, !dbg !3018, !tbaa !611
  %16 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 40) #5, !dbg !3019
  %17 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %16) #5, !dbg !3020
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %17) #5, !dbg !3021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3022
  br label %18, !dbg !3023

; <label>:18:                                     ; preds = %4, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3024
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3025
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3026
  %19 = icmp eq i32 %2, 0, !dbg !3027
  br i1 %19, label %20, label %25, !dbg !3029

; <label>:20:                                     ; preds = %18
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %22 = load %struct.FuncState*, %struct.FuncState** %21, align 8, !dbg !3030, !tbaa !654
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %22, i64 0, i32 0
  %24 = load %struct.Proto*, %struct.Proto** %23, align 8, !dbg !3038, !tbaa !585
  br label %44, !dbg !3029

; <label>:25:                                     ; preds = %18
  %26 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 4) #5, !dbg !3039
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %26, i32 0) #6, !dbg !3039
  %27 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3044
  %28 = load %struct.FuncState*, %struct.FuncState** %27, align 8, !dbg !3044, !tbaa !654
  %29 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %28, i64 0, i32 13, !dbg !3046
  %30 = load i8, i8* %29, align 2, !dbg !3046, !tbaa !656
  %31 = add i8 %30, 1, !dbg !3046
  store i8 %31, i8* %29, align 2, !dbg !3047, !tbaa !656
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %28, i64 0, i32 6
  %33 = load i32, i32* %32, align 8, !tbaa !799
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %28, i64 0, i32 0
  %35 = load %struct.Proto*, %struct.Proto** %34, align 8, !tbaa !585
  %36 = getelementptr inbounds %struct.Proto, %struct.Proto* %35, i64 0, i32 7
  %37 = load %struct.LocVar*, %struct.LocVar** %36, align 8, !tbaa !800
  %38 = zext i8 %31 to i64, !dbg !3048
  %39 = add nsw i64 %38, -1, !dbg !3049
  %40 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %28, i64 0, i32 15, i64 %39, !dbg !3049
  %41 = load i16, i16* %40, align 2, !dbg !3049, !tbaa !802
  %42 = zext i16 %41 to i64, !dbg !3049
  %43 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %37, i64 %42, i32 1, !dbg !3050
  store i32 %33, i32* %43, align 8, !dbg !3051, !tbaa !2030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3052
  br label %44, !dbg !3053

; <label>:44:                                     ; preds = %20, %25
  %45 = phi %struct.FuncState** [ %21, %20 ], [ %27, %25 ], !dbg !3030
  %46 = phi %struct.Proto* [ %24, %20 ], [ %35, %25 ], !dbg !3038
  %47 = phi %struct.FuncState* [ %22, %20 ], [ %28, %25 ], !dbg !3030
  %48 = getelementptr inbounds %struct.Proto, %struct.Proto* %46, i64 0, i32 21, !dbg !3058
  store i8 0, i8* %48, align 2, !dbg !3059, !tbaa !590
  %49 = load i32, i32* %10, align 8, !dbg !3060, !tbaa !624
  %50 = icmp eq i32 %49, 41, !dbg !3062
  br i1 %50, label %76, label %51, !dbg !3063

; <label>:51:                                     ; preds = %44
  %52 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %53 = bitcast %union.SemInfo* %52 to %union.TString**
  br label %56, !dbg !3064

; <label>:54:                                     ; preds = %70
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3069
  %55 = load i32, i32* %10, align 8, !dbg !3070, !tbaa !624
  br label %56, !dbg !3070

; <label>:56:                                     ; preds = %54, %51
  %57 = phi i32 [ %55, %54 ], [ %49, %51 ], !dbg !3070
  %58 = phi i32 [ %67, %54 ], [ 0, %51 ], !dbg !3057
  switch i32 %57, label %65 [
    i32 285, label %59
    i32 279, label %62
  ], !dbg !3064

; <label>:59:                                     ; preds = %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3071
  %60 = load %union.TString*, %union.TString** %53, align 8, !dbg !3076, !tbaa !761
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  %61 = add nsw i32 %58, 1, !dbg !3080
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %60, i32 %58) #5, !dbg !3081
  br label %66, !dbg !3082

; <label>:62:                                     ; preds = %56
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3083
  %63 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i64 3) #5, !dbg !3085
  %64 = add nsw i32 %58, 1, !dbg !3085
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %63, i32 %58) #5, !dbg !3085
  store i8 7, i8* %48, align 2, !dbg !3086, !tbaa !590
  br label %76, !dbg !3087

; <label>:65:                                     ; preds = %56
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0)) #5, !dbg !3088
  br label %66, !dbg !3089

; <label>:66:                                     ; preds = %65, %59
  %67 = phi i32 [ %61, %59 ], [ %58, %65 ]
  %68 = load i8, i8* %48, align 2, !dbg !3090, !tbaa !590
  %69 = icmp eq i8 %68, 0, !dbg !3091
  br i1 %69, label %70, label %74, !dbg !3087

; <label>:70:                                     ; preds = %66
  %71 = load i32, i32* %10, align 8, !dbg !3094, !tbaa !624
  %72 = icmp eq i32 %71, 44, !dbg !3095
  br i1 %72, label %54, label %73, !dbg !3096

; <label>:73:                                     ; preds = %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3069
  br label %76, !dbg !3097

; <label>:74:                                     ; preds = %66
  %75 = and i8 %68, 1, !dbg !3098
  br label %76, !dbg !3098

; <label>:76:                                     ; preds = %74, %73, %62, %44
  %77 = phi i8 [ 0, %44 ], [ 1, %62 ], [ 0, %73 ], [ %75, %74 ]
  %78 = phi i32 [ 0, %44 ], [ %64, %62 ], [ %67, %73 ], [ %67, %74 ], !dbg !3057
  %79 = load %struct.FuncState*, %struct.FuncState** %45, align 8, !dbg !3098, !tbaa !654
  %80 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %79, i64 0, i32 13, !dbg !3103
  %81 = load i8, i8* %80, align 2, !dbg !3103, !tbaa !656
  %82 = trunc i32 %78 to i8, !dbg !3103
  %83 = add i8 %81, %82, !dbg !3103
  store i8 %83, i8* %80, align 2, !dbg !3104, !tbaa !656
  %84 = icmp eq i32 %78, 0, !dbg !3105
  br i1 %84, label %139, label %85, !dbg !3105

; <label>:85:                                     ; preds = %76
  %86 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %79, i64 0, i32 6
  %87 = load i32, i32* %86, align 8, !tbaa !799
  %88 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %79, i64 0, i32 0
  %89 = load %struct.Proto*, %struct.Proto** %88, align 8, !tbaa !585
  %90 = getelementptr inbounds %struct.Proto, %struct.Proto* %89, i64 0, i32 7
  %91 = load %struct.LocVar*, %struct.LocVar** %90, align 8, !tbaa !800
  %92 = sext i32 %78 to i64, !dbg !3105
  %93 = zext i8 %83 to i64, !dbg !3105
  %94 = add i32 %78, -1, !dbg !3105
  %95 = and i32 %78, 3, !dbg !3105
  %96 = icmp eq i32 %95, 0, !dbg !3105
  br i1 %96, label %108, label %97, !dbg !3105

; <label>:97:                                     ; preds = %85, %97
  %98 = phi i64 [ %105, %97 ], [ %92, %85 ]
  %99 = phi i32 [ %106, %97 ], [ %95, %85 ]
  %100 = sub nsw i64 %93, %98, !dbg !3106
  %101 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %79, i64 0, i32 15, i64 %100, !dbg !3106
  %102 = load i16, i16* %101, align 2, !dbg !3106, !tbaa !802
  %103 = zext i16 %102 to i64, !dbg !3106
  %104 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %91, i64 %103, i32 1, !dbg !3107
  store i32 %87, i32* %104, align 8, !dbg !3108, !tbaa !2030
  %105 = add nsw i64 %98, -1, !dbg !3109
  %106 = add i32 %99, -1, !dbg !3105
  %107 = icmp eq i32 %106, 0, !dbg !3105
  br i1 %107, label %108, label %97, !dbg !3105, !llvm.loop !3110

; <label>:108:                                    ; preds = %97, %85
  %109 = phi i64 [ %92, %85 ], [ %105, %97 ]
  %110 = icmp ult i32 %94, 3, !dbg !3105
  br i1 %110, label %139, label %111, !dbg !3105

; <label>:111:                                    ; preds = %108, %111
  %112 = phi i64 [ %136, %111 ], [ %109, %108 ]
  %113 = sub nsw i64 %93, %112, !dbg !3106
  %114 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %79, i64 0, i32 15, i64 %113, !dbg !3106
  %115 = load i16, i16* %114, align 2, !dbg !3106, !tbaa !802
  %116 = zext i16 %115 to i64, !dbg !3106
  %117 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %91, i64 %116, i32 1, !dbg !3107
  store i32 %87, i32* %117, align 8, !dbg !3108, !tbaa !2030
  %118 = add nsw i64 %112, -1, !dbg !3109
  %119 = sub nsw i64 %93, %118, !dbg !3106
  %120 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %79, i64 0, i32 15, i64 %119, !dbg !3106
  %121 = load i16, i16* %120, align 2, !dbg !3106, !tbaa !802
  %122 = zext i16 %121 to i64, !dbg !3106
  %123 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %91, i64 %122, i32 1, !dbg !3107
  store i32 %87, i32* %123, align 8, !dbg !3108, !tbaa !2030
  %124 = add nsw i64 %112, -2, !dbg !3109
  %125 = sub nsw i64 %93, %124, !dbg !3106
  %126 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %79, i64 0, i32 15, i64 %125, !dbg !3106
  %127 = load i16, i16* %126, align 2, !dbg !3106, !tbaa !802
  %128 = zext i16 %127 to i64, !dbg !3106
  %129 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %91, i64 %128, i32 1, !dbg !3107
  store i32 %87, i32* %129, align 8, !dbg !3108, !tbaa !2030
  %130 = add nsw i64 %112, -3, !dbg !3109
  %131 = sub nsw i64 %93, %130, !dbg !3106
  %132 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %79, i64 0, i32 15, i64 %131, !dbg !3106
  %133 = load i16, i16* %132, align 2, !dbg !3106, !tbaa !802
  %134 = zext i16 %133 to i64, !dbg !3106
  %135 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %91, i64 %134, i32 1, !dbg !3107
  store i32 %87, i32* %135, align 8, !dbg !3108, !tbaa !2030
  %136 = add nsw i64 %112, -4, !dbg !3109
  %137 = trunc i64 %136 to i32, !dbg !3105
  %138 = icmp eq i32 %137, 0, !dbg !3105
  br i1 %138, label %139, label %111, !dbg !3105, !llvm.loop !2145

; <label>:139:                                    ; preds = %108, %111, %76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3111
  %140 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %47, i64 0, i32 13, !dbg !3112
  %141 = load i8, i8* %140, align 2, !dbg !3112, !tbaa !656
  %142 = sub i8 %141, %77, !dbg !3112
  %143 = getelementptr inbounds %struct.Proto, %struct.Proto* %46, i64 0, i32 20, !dbg !3113
  store i8 %142, i8* %143, align 1, !dbg !3114, !tbaa !3115
  %144 = zext i8 %141 to i32, !dbg !3116
  call void @luaK_reserveregs(%struct.FuncState* %47, i32 %144) #5, !dbg !3117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3118
  %145 = load i32, i32* %10, align 8, !dbg !3125, !tbaa !624
  %146 = icmp eq i32 %145, 41, !dbg !3126
  %147 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !3127
  br i1 %146, label %152, label %148, !dbg !3128

; <label>:148:                                    ; preds = %139
  %149 = load %struct.lua_State*, %struct.lua_State** %147, align 8, !dbg !3132, !tbaa !611
  %150 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 41) #5, !dbg !3133
  %151 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %150) #5, !dbg !3134
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %151) #5, !dbg !3135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3136
  br label %152, !dbg !3137

; <label>:152:                                    ; preds = %139, %148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3138
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3140
  %153 = load %struct.lua_State*, %struct.lua_State** %147, align 8, !dbg !3146, !tbaa !611
  %154 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %153, i64 0, i32 15, !dbg !3147
  %155 = load i16, i16* %154, align 8, !dbg !3148, !tbaa !614
  %156 = add i16 %155, 1, !dbg !3148
  store i16 %156, i16* %154, align 8, !dbg !3148, !tbaa !614
  %157 = icmp ugt i16 %156, 200, !dbg !3149
  br i1 %157, label %158, label %159, !dbg !3150

; <label>:158:                                    ; preds = %152
  call void @luaX_lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 0) #5, !dbg !3151
  br label %159, !dbg !3151

; <label>:159:                                    ; preds = %158, %152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3152
  br label %160, !dbg !3153

; <label>:160:                                    ; preds = %159, %168
  %161 = load i32, i32* %10, align 8, !dbg !3154, !tbaa !624
  switch i32 %161, label %163 [
    i32 260, label %162
    i32 261, label %162
    i32 262, label %162
    i32 276, label %162
    i32 287, label %162
  ], !dbg !3157

; <label>:162:                                    ; preds = %160, %160, %160, %160, %160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3158
  br label %175

; <label>:163:                                    ; preds = %160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3158
  %164 = call fastcc i32 @statement(%struct.LexState* nonnull %0) #5, !dbg !3159
  %165 = load i32, i32* %10, align 8, !dbg !3163, !tbaa !624
  %166 = icmp eq i32 %165, 59, !dbg !3164
  br i1 %166, label %167, label %168, !dbg !3165

; <label>:167:                                    ; preds = %163
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3166
  br label %168, !dbg !3167

; <label>:168:                                    ; preds = %167, %163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3168
  %169 = load %struct.FuncState*, %struct.FuncState** %45, align 8, !dbg !3169, !tbaa !654
  %170 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %169, i64 0, i32 13, !dbg !3170
  %171 = load i8, i8* %170, align 2, !dbg !3170, !tbaa !656
  %172 = zext i8 %171 to i32, !dbg !3171
  %173 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %169, i64 0, i32 9, !dbg !3172
  store i32 %172, i32* %173, align 4, !dbg !3173, !tbaa !660
  %174 = icmp eq i32 %164, 0, !dbg !3174
  br i1 %174, label %160, label %175, !dbg !3153, !llvm.loop !662

; <label>:175:                                    ; preds = %168, %162
  %176 = load %struct.lua_State*, %struct.lua_State** %147, align 8, !dbg !3175, !tbaa !611
  %177 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %176, i64 0, i32 15, !dbg !3175
  %178 = load i16, i16* %177, align 8, !dbg !3175, !tbaa !614
  %179 = add i16 %178, -1, !dbg !3175
  store i16 %179, i16* %177, align 8, !dbg !3175, !tbaa !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3176
  %180 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !3177
  %181 = load i32, i32* %180, align 4, !dbg !3177, !tbaa !881
  %182 = load %struct.Proto*, %struct.Proto** %7, align 8, !dbg !3178, !tbaa !585
  %183 = getelementptr inbounds %struct.Proto, %struct.Proto* %182, i64 0, i32 17, !dbg !3179
  store i32 %181, i32* %183, align 4, !dbg !3180, !tbaa !3181
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 265, i32 %3) #6, !dbg !3182
  call fastcc void @close_func(%struct.LexState* nonnull %0) #6, !dbg !3183
  %184 = load %struct.FuncState*, %struct.FuncState** %45, align 8, !dbg !3204, !tbaa !654
  %185 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %184, i64 0, i32 0, !dbg !3206
  %186 = load %struct.Proto*, %struct.Proto** %185, align 8, !dbg !3206, !tbaa !585
  %187 = getelementptr inbounds %struct.Proto, %struct.Proto* %186, i64 0, i32 14, !dbg !3208
  %188 = load i32, i32* %187, align 8, !dbg !3208, !tbaa !832
  %189 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %184, i64 0, i32 11, !dbg !3210
  %190 = load i32, i32* %189, align 4, !dbg !3210, !tbaa !738
  %191 = icmp slt i32 %190, %188, !dbg !3210
  br i1 %191, label %192, label %194, !dbg !3212

; <label>:192:                                    ; preds = %175
  %193 = getelementptr inbounds %struct.Proto, %struct.Proto* %186, i64 0, i32 5, !dbg !3213
  br label %242, !dbg !3212

; <label>:194:                                    ; preds = %175
  %195 = load %struct.lua_State*, %struct.lua_State** %147, align 8, !dbg !3210, !tbaa !611
  %196 = getelementptr inbounds %struct.Proto, %struct.Proto* %186, i64 0, i32 5, !dbg !3210
  %197 = bitcast %struct.Proto*** %196 to i8**, !dbg !3210
  %198 = load i8*, i8** %197, align 8, !dbg !3210, !tbaa !831
  %199 = call i8* @luaM_growaux_(%struct.lua_State* %195, i8* %198, i32* nonnull %187, i64 8, i32 262143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #5, !dbg !3210
  store i8* %199, i8** %197, align 8, !dbg !3210, !tbaa !831
  %200 = load i32, i32* %187, align 8, !dbg !3214, !tbaa !832
  %201 = icmp slt i32 %188, %200, !dbg !3215
  br i1 %201, label %202, label %242, !dbg !3216

; <label>:202:                                    ; preds = %194
  %203 = bitcast i8* %199 to %struct.Proto**, !dbg !3216
  %204 = sext i32 %188 to i64, !dbg !3216
  %205 = sext i32 %200 to i64, !dbg !3216
  %206 = add nsw i64 %204, 1, !dbg !3217
  %207 = getelementptr inbounds %struct.Proto*, %struct.Proto** %203, i64 %204, !dbg !3218
  store %struct.Proto* null, %struct.Proto** %207, align 8, !dbg !3219, !tbaa !1629
  %208 = icmp eq i64 %206, %205, !dbg !3215
  br i1 %208, label %242, label %209, !dbg !3216, !llvm.loop !3220

; <label>:209:                                    ; preds = %202
  %210 = xor i64 %204, 3, !dbg !3223
  %211 = add nsw i64 %210, %205, !dbg !3223
  %212 = add nsw i64 %205, -2, !dbg !3223
  %213 = sub nsw i64 %212, %204, !dbg !3223
  %214 = and i64 %211, 3, !dbg !3223
  %215 = icmp eq i64 %214, 0, !dbg !3223
  br i1 %215, label %224, label %216, !dbg !3223

; <label>:216:                                    ; preds = %209, %216
  %217 = phi i64 [ %220, %216 ], [ %206, %209 ]
  %218 = phi i64 [ %222, %216 ], [ %214, %209 ]
  %219 = load %struct.Proto**, %struct.Proto*** %196, align 8, !dbg !3223, !tbaa !831
  %220 = add nsw i64 %217, 1, !dbg !3217
  %221 = getelementptr inbounds %struct.Proto*, %struct.Proto** %219, i64 %217, !dbg !3218
  store %struct.Proto* null, %struct.Proto** %221, align 8, !dbg !3219, !tbaa !1629
  %222 = add i64 %218, -1, !dbg !3216
  %223 = icmp eq i64 %222, 0, !dbg !3216
  br i1 %223, label %224, label %216, !dbg !3216, !llvm.loop !3224

; <label>:224:                                    ; preds = %216, %209
  %225 = phi i64 [ %206, %209 ], [ %220, %216 ]
  %226 = icmp ult i64 %213, 3, !dbg !3223
  br i1 %226, label %242, label %227, !dbg !3223

; <label>:227:                                    ; preds = %224, %227
  %228 = phi i64 [ %239, %227 ], [ %225, %224 ]
  %229 = load %struct.Proto**, %struct.Proto*** %196, align 8, !dbg !3223, !tbaa !831
  %230 = add nsw i64 %228, 1, !dbg !3217
  %231 = getelementptr inbounds %struct.Proto*, %struct.Proto** %229, i64 %228, !dbg !3218
  store %struct.Proto* null, %struct.Proto** %231, align 8, !dbg !3219, !tbaa !1629
  %232 = load %struct.Proto**, %struct.Proto*** %196, align 8, !dbg !3223, !tbaa !831
  %233 = add nsw i64 %228, 2, !dbg !3217
  %234 = getelementptr inbounds %struct.Proto*, %struct.Proto** %232, i64 %230, !dbg !3218
  store %struct.Proto* null, %struct.Proto** %234, align 8, !dbg !3219, !tbaa !1629
  %235 = load %struct.Proto**, %struct.Proto*** %196, align 8, !dbg !3223, !tbaa !831
  %236 = add nsw i64 %228, 3, !dbg !3217
  %237 = getelementptr inbounds %struct.Proto*, %struct.Proto** %235, i64 %233, !dbg !3218
  store %struct.Proto* null, %struct.Proto** %237, align 8, !dbg !3219, !tbaa !1629
  %238 = load %struct.Proto**, %struct.Proto*** %196, align 8, !dbg !3223, !tbaa !831
  %239 = add nsw i64 %228, 4, !dbg !3217
  %240 = getelementptr inbounds %struct.Proto*, %struct.Proto** %238, i64 %236, !dbg !3218
  store %struct.Proto* null, %struct.Proto** %240, align 8, !dbg !3219, !tbaa !1629
  %241 = icmp eq i64 %239, %205, !dbg !3215
  br i1 %241, label %242, label %227, !dbg !3216, !llvm.loop !3220

; <label>:242:                                    ; preds = %224, %227, %202, %194, %192
  %243 = phi %struct.Proto*** [ %193, %192 ], [ %196, %194 ], [ %196, %202 ], [ %196, %227 ], [ %196, %224 ], !dbg !3213
  %244 = bitcast %struct.FuncState* %5 to i64*, !dbg !3225
  %245 = load i64, i64* %244, align 8, !dbg !3225, !tbaa !585
  %246 = load %struct.Proto**, %struct.Proto*** %243, align 8, !dbg !3213, !tbaa !831
  %247 = load i32, i32* %189, align 4, !dbg !3226, !tbaa !738
  %248 = add nsw i32 %247, 1, !dbg !3226
  store i32 %248, i32* %189, align 4, !dbg !3226, !tbaa !738
  %249 = sext i32 %247 to i64, !dbg !3227
  %250 = getelementptr inbounds %struct.Proto*, %struct.Proto** %246, i64 %249, !dbg !3227
  %251 = bitcast %struct.Proto** %250 to i64*, !dbg !3228
  store i64 %245, i64* %251, align 8, !dbg !3228, !tbaa !1629
  %252 = bitcast %struct.FuncState* %5 to %union.GCObject**, !dbg !3229
  %253 = load %union.GCObject*, %union.GCObject** %252, align 8, !dbg !3229, !tbaa !585
  %254 = getelementptr inbounds %union.GCObject, %union.GCObject* %253, i64 0, i32 0, i32 2, !dbg !3229
  %255 = load i8, i8* %254, align 1, !dbg !3229, !tbaa !761
  %256 = and i8 %255, 3, !dbg !3229
  %257 = icmp eq i8 %256, 0, !dbg !3229
  br i1 %257, label %267, label %258, !dbg !3229

; <label>:258:                                    ; preds = %242
  %259 = getelementptr inbounds %struct.Proto, %struct.Proto* %186, i64 0, i32 2, !dbg !3229
  %260 = load i8, i8* %259, align 1, !dbg !3229, !tbaa !761
  %261 = and i8 %260, 4, !dbg !3229
  %262 = icmp eq i8 %261, 0, !dbg !3229
  br i1 %262, label %267, label %263, !dbg !3232

; <label>:263:                                    ; preds = %258
  %264 = bitcast %struct.Proto* %186 to %union.GCObject*, !dbg !3229
  %265 = load %struct.lua_State*, %struct.lua_State** %147, align 8, !dbg !3229, !tbaa !611
  call void @luaC_barrierf(%struct.lua_State* %265, %union.GCObject* %264, %union.GCObject* %253) #5, !dbg !3229
  %266 = load i32, i32* %189, align 4, !dbg !3233, !tbaa !738
  br label %267, !dbg !3229

; <label>:267:                                    ; preds = %263, %258, %242
  %268 = phi i32 [ %248, %258 ], [ %248, %242 ], [ %266, %263 ], !dbg !3233
  %269 = add nsw i32 %268, -1, !dbg !3234
  %270 = call i32 @luaK_codeABx(%struct.FuncState* nonnull %184, i32 36, i32 0, i32 %269) #5, !dbg !3235
  %271 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !3240
  store i32 -1, i32* %271, align 8, !dbg !3241, !tbaa !1864
  %272 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !3242
  store i32 -1, i32* %272, align 4, !dbg !3243, !tbaa !994
  %273 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !3244
  store i32 11, i32* %273, align 8, !dbg !3245, !tbaa !985
  %274 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !3246
  %275 = bitcast %union.anon.3* %274 to i32*, !dbg !3247
  store i32 %270, i32* %275, align 8, !dbg !3248, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3249
  %276 = load %struct.Proto*, %struct.Proto** %7, align 8, !dbg !3251, !tbaa !585
  %277 = getelementptr inbounds %struct.Proto, %struct.Proto* %276, i64 0, i32 19, !dbg !3252
  %278 = load i8, i8* %277, align 8, !dbg !3252, !tbaa !843
  %279 = icmp eq i8 %278, 0, !dbg !3253
  br i1 %279, label %296, label %280, !dbg !3254

; <label>:280:                                    ; preds = %267, %280
  %281 = phi i64 [ %290, %280 ], [ 0, %267 ]
  %282 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 14, i64 %281, i32 0, !dbg !3255
  %283 = load i8, i8* %282, align 1, !dbg !3255, !tbaa !3256
  %284 = icmp eq i8 %283, 6, !dbg !3258
  %285 = select i1 %284, i32 0, i32 4, !dbg !3259
  %286 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 14, i64 %281, i32 1, !dbg !3261
  %287 = load i8, i8* %286, align 1, !dbg !3261, !tbaa !3262
  %288 = zext i8 %287 to i32, !dbg !3263
  %289 = call i32 @luaK_codeABC(%struct.FuncState* %184, i32 %285, i32 0, i32 %288, i32 0) #5, !dbg !3264
  %290 = add nuw nsw i64 %281, 1, !dbg !3265
  %291 = load %struct.Proto*, %struct.Proto** %7, align 8, !dbg !3251, !tbaa !585
  %292 = getelementptr inbounds %struct.Proto, %struct.Proto* %291, i64 0, i32 19, !dbg !3252
  %293 = load i8, i8* %292, align 8, !dbg !3252, !tbaa !843
  %294 = zext i8 %293 to i64, !dbg !3253
  %295 = icmp ult i64 %290, %294, !dbg !3253
  br i1 %295, label %280, label %296, !dbg !3254, !llvm.loop !3266

; <label>:296:                                    ; preds = %280, %267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3269
  call void @llvm.lifetime.end.p0i8(i64 600, i8* nonnull %6) #4, !dbg !3270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3270
  ret void, !dbg !3270
}

; Function Attrs: noredzone nounwind
define internal fastcc void @primaryexp(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 !dbg !3271 {
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = alloca %struct.expdesc, align 8
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3286
  %7 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !dbg !3286, !tbaa !654
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !3298
  %9 = load i32, i32* %8, align 8, !dbg !3298, !tbaa !624
  switch i32 %9, label %27 [
    i32 40, label %10
    i32 285, label %15
  ], !dbg !3299

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !3300
  %12 = load i32, i32* %11, align 4, !dbg !3300, !tbaa !881
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3302
  %13 = tail call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 0) #5, !dbg !3306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3307
  tail call fastcc void @check_match(%struct.LexState* nonnull %0, i32 41, i32 40, i32 %12) #5, !dbg !3308
  %14 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !dbg !3309, !tbaa !654
  tail call void @luaK_dischargevars(%struct.FuncState* %14, %struct.expdesc* %1) #5, !dbg !3310
  br label %28

; <label>:15:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3311
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !3316
  %17 = bitcast %union.SemInfo* %16 to %union.TString**, !dbg !3317
  %18 = load %union.TString*, %union.TString** %17, align 8, !dbg !3317, !tbaa !761
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3320
  %19 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !dbg !3322, !tbaa !654
  %20 = tail call fastcc i32 @singlevaraux(%struct.FuncState* %19, %union.TString* %18, %struct.expdesc* %1, i32 1) #5, !dbg !3324
  %21 = icmp eq i32 %20, 8, !dbg !3325
  br i1 %21, label %22, label %26, !dbg !3326

; <label>:22:                                     ; preds = %15
  %23 = tail call i32 @luaK_stringK(%struct.FuncState* %19, %union.TString* %18) #5, !dbg !3327
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !3328
  %25 = bitcast %union.anon.3* %24 to i32*, !dbg !3329
  store i32 %23, i32* %25, align 8, !dbg !3330, !tbaa !761
  br label %26, !dbg !3331

; <label>:26:                                     ; preds = %22, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3332
  br label %28, !dbg !3333

; <label>:27:                                     ; preds = %2
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !3334
  br label %28, !dbg !3336

; <label>:28:                                     ; preds = %10, %26, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3337
  %29 = bitcast %struct.expdesc* %3 to i8*
  %30 = bitcast %struct.expdesc* %4 to i8*
  %31 = bitcast %struct.expdesc* %5 to i8*
  %32 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %33 = bitcast %union.SemInfo* %32 to %union.TString**
  %34 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2
  %35 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0
  %37 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1
  %38 = bitcast %union.anon.3* %37 to i32*
  %39 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %40 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i64 0, i32 2
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i64 0, i32 3
  %42 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i64 0, i32 0
  %43 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %5, i64 0, i32 1
  %44 = bitcast %union.anon.3* %43 to i32*
  br label %45, !dbg !3338

; <label>:45:                                     ; preds = %74, %28
  %46 = load i32, i32* %8, align 8, !dbg !3339, !tbaa !624
  switch i32 %46, label %75 [
    i32 46, label %47
    i32 91, label %60
    i32 58, label %62
    i32 40, label %73
    i32 286, label %73
    i32 123, label %73
  ], !dbg !3340

; <label>:47:                                     ; preds = %45
  %48 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !dbg !3345, !tbaa !654
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %29) #4, !dbg !3347
  %49 = call i32 @luaK_exp2anyreg(%struct.FuncState* %48, %struct.expdesc* %1) #5, !dbg !3348
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3349
  %50 = load i32, i32* %8, align 8, !dbg !3359, !tbaa !624
  %51 = icmp eq i32 %50, 285, !dbg !3360
  br i1 %51, label %56, label %52, !dbg !3361

; <label>:52:                                     ; preds = %47
  %53 = load %struct.lua_State*, %struct.lua_State** %39, align 8, !dbg !3365, !tbaa !611
  %54 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !3366
  %55 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %54) #5, !dbg !3367
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %55) #5, !dbg !3368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3369
  br label %56, !dbg !3370

; <label>:56:                                     ; preds = %47, %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3371
  %57 = load %union.TString*, %union.TString** %33, align 8, !dbg !3372, !tbaa !761
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3375
  %58 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !dbg !3380, !tbaa !654
  %59 = call i32 @luaK_stringK(%struct.FuncState* %58, %union.TString* %57) #5, !dbg !3381
  store i32 -1, i32* %34, align 8, !dbg !3386, !tbaa !1864
  store i32 -1, i32* %35, align 4, !dbg !3387, !tbaa !994
  store i32 4, i32* %36, align 8, !dbg !3388, !tbaa !985
  store i32 %59, i32* %38, align 8, !dbg !3389, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3392
  call void @luaK_indexed(%struct.FuncState* %48, %struct.expdesc* %1, %struct.expdesc* nonnull %3) #5, !dbg !3393
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %29) #4, !dbg !3394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3394
  br label %74, !dbg !3395

; <label>:60:                                     ; preds = %45
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %30) #4, !dbg !3396
  %61 = call i32 @luaK_exp2anyreg(%struct.FuncState* %7, %struct.expdesc* %1) #5, !dbg !3397
  call fastcc void @yindex(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4) #6, !dbg !3399
  call void @luaK_indexed(%struct.FuncState* %7, %struct.expdesc* %1, %struct.expdesc* nonnull %4) #5, !dbg !3400
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %30) #4, !dbg !3401
  br label %74

; <label>:62:                                     ; preds = %45
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %31) #4, !dbg !3402
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3403
  %63 = load i32, i32* %8, align 8, !dbg !3413, !tbaa !624
  %64 = icmp eq i32 %63, 285, !dbg !3414
  br i1 %64, label %69, label %65, !dbg !3415

; <label>:65:                                     ; preds = %62
  %66 = load %struct.lua_State*, %struct.lua_State** %39, align 8, !dbg !3419, !tbaa !611
  %67 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !3420
  %68 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %67) #5, !dbg !3421
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %68) #5, !dbg !3422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3423
  br label %69, !dbg !3424

; <label>:69:                                     ; preds = %62, %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3425
  %70 = load %union.TString*, %union.TString** %33, align 8, !dbg !3426, !tbaa !761
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3429
  %71 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !dbg !3434, !tbaa !654
  %72 = call i32 @luaK_stringK(%struct.FuncState* %71, %union.TString* %70) #5, !dbg !3435
  store i32 -1, i32* %40, align 8, !dbg !3440, !tbaa !1864
  store i32 -1, i32* %41, align 4, !dbg !3441, !tbaa !994
  store i32 4, i32* %42, align 8, !dbg !3442, !tbaa !985
  store i32 %72, i32* %44, align 8, !dbg !3443, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3446
  call void @luaK_self(%struct.FuncState* %7, %struct.expdesc* %1, %struct.expdesc* nonnull %5) #5, !dbg !3447
  call fastcc void @funcargs(%struct.LexState* nonnull %0, %struct.expdesc* %1) #6, !dbg !3448
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %31) #4, !dbg !3449
  br label %74

; <label>:73:                                     ; preds = %45, %45, %45
  call void @luaK_exp2nextreg(%struct.FuncState* %7, %struct.expdesc* %1) #5, !dbg !3450
  call fastcc void @funcargs(%struct.LexState* nonnull %0, %struct.expdesc* %1) #6, !dbg !3452
  br label %74, !dbg !3453

; <label>:74:                                     ; preds = %73, %69, %60, %56
  br label %45, !dbg !3339, !llvm.loop !3454

; <label>:75:                                     ; preds = %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3457
  ret void, !dbg !3457
}

; Function Attrs: noredzone
declare hidden i32 @luaK_stringK(%struct.FuncState*, %union.TString*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_exp2nextreg(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaX_lookahead(%struct.LexState*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @recfield(%struct.LexState*, %struct.ConsControl* nocapture) unnamed_addr #0 !dbg !3458 {
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3469
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !dbg !3469, !tbaa !654
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 9, !dbg !3471
  %8 = load i32, i32* %7, align 4, !dbg !3471, !tbaa !660
  %9 = bitcast %struct.expdesc* %3 to i8*, !dbg !3473
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #4, !dbg !3473
  %10 = bitcast %struct.expdesc* %4 to i8*, !dbg !3473
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #4, !dbg !3473
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !3474
  %12 = load i32, i32* %11, align 8, !dbg !3474, !tbaa !624
  %13 = icmp eq i32 %12, 285, !dbg !3476
  br i1 %13, label %14, label %52, !dbg !3477

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 2, !dbg !3478
  %16 = load i32, i32* %15, align 8, !dbg !3478, !tbaa !2750
  %17 = icmp sgt i32 %16, 2147483645, !dbg !3478
  br i1 %17, label %18, label %41, !dbg !3481

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 0, !dbg !3486
  %20 = load %struct.Proto*, %struct.Proto** %19, align 8, !dbg !3486, !tbaa !585
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i64 0, i32 16, !dbg !3487
  %22 = load i32, i32* %21, align 8, !dbg !3487, !tbaa !2886
  %23 = icmp eq i32 %22, 0, !dbg !3488
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 4, !dbg !3489
  %25 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !3489, !tbaa !728
  br i1 %23, label %26, label %28, !dbg !3490

; <label>:26:                                     ; preds = %18
  %27 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 2147483645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !3491
  br label %30, !dbg !3490

; <label>:28:                                     ; preds = %18
  %29 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %22, i32 2147483645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !3492
  br label %30, !dbg !3490

; <label>:30:                                     ; preds = %28, %26
  %31 = phi i8* [ %27, %26 ], [ %29, %28 ], !dbg !3490
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 3, !dbg !3494
  %33 = load %struct.LexState*, %struct.LexState** %32, align 8, !dbg !3494, !tbaa !725
  tail call void @luaX_lexerror(%struct.LexState* %33, i8* %31, i32 0) #5, !dbg !3495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3496
  %34 = load i32, i32* %11, align 8, !dbg !3497, !tbaa !624
  %35 = icmp eq i32 %34, 285, !dbg !3478
  br i1 %35, label %41, label %36, !dbg !3507

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !3511
  %38 = load %struct.lua_State*, %struct.lua_State** %37, align 8, !dbg !3511, !tbaa !611
  %39 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !3512
  %40 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %39) #5, !dbg !3513
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %40) #5, !dbg !3514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3515
  br label %41, !dbg !3516

; <label>:41:                                     ; preds = %14, %30, %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3517
  %42 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !3518
  %43 = bitcast %union.SemInfo* %42 to %union.TString**, !dbg !3519
  %44 = load %union.TString*, %union.TString** %43, align 8, !dbg !3519, !tbaa !761
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3522
  %45 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !dbg !3527, !tbaa !654
  %46 = tail call i32 @luaK_stringK(%struct.FuncState* %45, %union.TString* %44) #5, !dbg !3528
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2, !dbg !3533
  store i32 -1, i32* %47, align 8, !dbg !3534, !tbaa !1864
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3, !dbg !3535
  store i32 -1, i32* %48, align 4, !dbg !3536, !tbaa !994
  %49 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3537
  store i32 4, i32* %49, align 8, !dbg !3538, !tbaa !985
  %50 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3539
  %51 = bitcast %union.anon.3* %50 to i32*, !dbg !3540
  store i32 %46, i32* %51, align 8, !dbg !3541, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3544
  br label %54, !dbg !3545

; <label>:52:                                     ; preds = %2
  call fastcc void @yindex(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3) #6, !dbg !3546
  %53 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 2, !dbg !3547
  br label %54

; <label>:54:                                     ; preds = %52, %41
  %55 = phi i32* [ %53, %52 ], [ %15, %41 ], !dbg !3547
  %56 = load i32, i32* %55, align 8, !dbg !3548, !tbaa !2750
  %57 = add nsw i32 %56, 1, !dbg !3548
  store i32 %57, i32* %55, align 8, !dbg !3548, !tbaa !2750
  %58 = load i32, i32* %11, align 8, !dbg !3555, !tbaa !624
  %59 = icmp eq i32 %58, 61, !dbg !3556
  br i1 %59, label %65, label %60, !dbg !3557

; <label>:60:                                     ; preds = %54
  %61 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !3561
  %62 = load %struct.lua_State*, %struct.lua_State** %61, align 8, !dbg !3561, !tbaa !611
  %63 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 61) #5, !dbg !3562
  %64 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %63) #5, !dbg !3563
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %64) #5, !dbg !3564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3565
  br label %65, !dbg !3566

; <label>:65:                                     ; preds = %54, %60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3567
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3569
  %66 = call i32 @luaK_exp2RK(%struct.FuncState* %6, %struct.expdesc* nonnull %3) #5, !dbg !3570
  %67 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #5, !dbg !3576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3577
  %68 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 1, !dbg !3578
  %69 = load %struct.expdesc*, %struct.expdesc** %68, align 8, !dbg !3578, !tbaa !2756
  %70 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %69, i64 0, i32 1, !dbg !3579
  %71 = bitcast %union.anon.3* %70 to i32*, !dbg !3580
  %72 = load i32, i32* %71, align 8, !dbg !3580, !tbaa !761
  %73 = call i32 @luaK_exp2RK(%struct.FuncState* %6, %struct.expdesc* nonnull %4) #5, !dbg !3581
  %74 = call i32 @luaK_codeABC(%struct.FuncState* %6, i32 9, i32 %72, i32 %66, i32 %73) #5, !dbg !3582
  store i32 %8, i32* %7, align 4, !dbg !3583, !tbaa !660
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #4, !dbg !3584
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #4, !dbg !3584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3584
  ret void, !dbg !3584
}

; Function Attrs: noredzone
declare hidden i32 @luaO_int2fb(i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_setlist(%struct.FuncState*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @yindex(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 !dbg !3585 {
  tail call void @luaX_next(%struct.LexState* %0) #5, !dbg !3591
  %3 = tail call fastcc i32 @subexpr(%struct.LexState* %0, %struct.expdesc* %1, i32 0) #5, !dbg !3595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3596
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3597
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !3597, !tbaa !654
  tail call void @luaK_exp2val(%struct.FuncState* %5, %struct.expdesc* %1) #5, !dbg !3598
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !3605
  %7 = load i32, i32* %6, align 8, !dbg !3605, !tbaa !624
  %8 = icmp eq i32 %7, 93, !dbg !3606
  br i1 %8, label %14, label %9, !dbg !3607

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !3611
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !dbg !3611, !tbaa !611
  %12 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 93) #5, !dbg !3612
  %13 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %12) #5, !dbg !3613
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %13) #5, !dbg !3614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3615
  br label %14, !dbg !3616

; <label>:14:                                     ; preds = %2, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3617
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3620
  ret void, !dbg !3620
}

; Function Attrs: noredzone
declare hidden i32 @luaK_exp2RK(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_exp2val(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_setreturns(%struct.FuncState*, %struct.expdesc*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @new_localvar(%struct.LexState* nocapture readonly, %union.TString*, i32) unnamed_addr #0 !dbg !3621 {
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3630
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !3630, !tbaa !654
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 13, !dbg !3632
  %7 = load i8, i8* %6, align 2, !dbg !3632, !tbaa !656
  %8 = zext i8 %7 to i32, !dbg !3632
  %9 = add nsw i32 %8, %2, !dbg !3632
  %10 = icmp sgt i32 %9, 199, !dbg !3632
  br i1 %10, label %11, label %28, !dbg !3634

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0, !dbg !3639
  %13 = load %struct.Proto*, %struct.Proto** %12, align 8, !dbg !3639, !tbaa !585
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 16, !dbg !3640
  %15 = load i32, i32* %14, align 8, !dbg !3640, !tbaa !2886
  %16 = icmp eq i32 %15, 0, !dbg !3641
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 4, !dbg !3642
  %18 = load %struct.lua_State*, %struct.lua_State** %17, align 8, !dbg !3642, !tbaa !728
  br i1 %16, label %19, label %21, !dbg !3643

; <label>:19:                                     ; preds = %11
  %20 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !3644
  br label %23, !dbg !3643

; <label>:21:                                     ; preds = %11
  %22 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %15, i32 200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !3645
  br label %23, !dbg !3643

; <label>:23:                                     ; preds = %19, %21
  %24 = phi i8* [ %20, %19 ], [ %22, %21 ], !dbg !3643
  %25 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 3, !dbg !3647
  %26 = load %struct.LexState*, %struct.LexState** %25, align 8, !dbg !3647, !tbaa !725
  tail call void @luaX_lexerror(%struct.LexState* %26, i8* %24, i32 0) #5, !dbg !3648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3649
  %27 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !3650, !tbaa !654
  br label %28, !dbg !3632

; <label>:28:                                     ; preds = %23, %3
  %29 = phi %struct.FuncState* [ %27, %23 ], [ %5, %3 ], !dbg !3650
  %30 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %29, i64 0, i32 0, !dbg !3664
  %31 = load %struct.Proto*, %struct.Proto** %30, align 8, !dbg !3664, !tbaa !585
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 15, !dbg !3666
  %33 = load i32, i32* %32, align 4, !dbg !3666, !tbaa !837
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %29, i64 0, i32 12, !dbg !3668
  %35 = load i16, i16* %34, align 8, !dbg !3668, !tbaa !741
  %36 = sext i16 %35 to i32, !dbg !3668
  %37 = icmp sgt i32 %33, %36, !dbg !3668
  br i1 %37, label %38, label %41, !dbg !3670

; <label>:38:                                     ; preds = %28
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 7
  %40 = load %struct.LocVar*, %struct.LocVar** %39, align 8, !dbg !3671, !tbaa !800
  br label %80, !dbg !3672

; <label>:41:                                     ; preds = %28
  %42 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !3668
  %43 = load %struct.lua_State*, %struct.lua_State** %42, align 8, !dbg !3668, !tbaa !611
  %44 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 7, !dbg !3668
  %45 = bitcast %struct.LocVar** %44 to i8**, !dbg !3668
  %46 = load i8*, i8** %45, align 8, !dbg !3668, !tbaa !800
  %47 = tail call i8* @luaM_growaux_(%struct.lua_State* %43, i8* %46, i32* nonnull %32, i64 16, i32 32767, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !3668
  store i8* %47, i8** %45, align 8, !dbg !3668, !tbaa !800
  %48 = load i32, i32* %32, align 4, !dbg !3673, !tbaa !837
  %49 = bitcast i8* %47 to %struct.LocVar*, !dbg !3668
  %50 = icmp slt i32 %33, %48, !dbg !3674
  br i1 %50, label %51, label %80, !dbg !3672

; <label>:51:                                     ; preds = %41
  %52 = sext i32 %33 to i64, !dbg !3672
  %53 = sext i32 %48 to i64, !dbg !3672
  %54 = sub nsw i64 %53, %52, !dbg !3672
  %55 = xor i64 %52, -1, !dbg !3672
  %56 = add nsw i64 %55, %53, !dbg !3672
  %57 = and i64 %54, 3, !dbg !3672
  %58 = icmp eq i64 %57, 0, !dbg !3672
  br i1 %58, label %66, label %59, !dbg !3672

; <label>:59:                                     ; preds = %51, %59
  %60 = phi i64 [ %62, %59 ], [ %52, %51 ]
  %61 = phi i64 [ %64, %59 ], [ %57, %51 ]
  %62 = add nsw i64 %60, 1, !dbg !3675
  %63 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %49, i64 %60, i32 0, !dbg !3676
  store %union.TString* null, %union.TString** %63, align 8, !dbg !3677, !tbaa !3678
  %64 = add i64 %61, -1, !dbg !3672
  %65 = icmp eq i64 %64, 0, !dbg !3672
  br i1 %65, label %66, label %59, !dbg !3672, !llvm.loop !3679

; <label>:66:                                     ; preds = %59, %51
  %67 = phi i64 [ %52, %51 ], [ %62, %59 ]
  %68 = icmp ult i64 %56, 3, !dbg !3672
  br i1 %68, label %80, label %69, !dbg !3672

; <label>:69:                                     ; preds = %66, %69
  %70 = phi i64 [ %77, %69 ], [ %67, %66 ]
  %71 = add nsw i64 %70, 1, !dbg !3675
  %72 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %49, i64 %70, i32 0, !dbg !3676
  store %union.TString* null, %union.TString** %72, align 8, !dbg !3677, !tbaa !3678
  %73 = add nsw i64 %70, 2, !dbg !3675
  %74 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %49, i64 %71, i32 0, !dbg !3676
  store %union.TString* null, %union.TString** %74, align 8, !dbg !3677, !tbaa !3678
  %75 = add nsw i64 %70, 3, !dbg !3675
  %76 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %49, i64 %73, i32 0, !dbg !3676
  store %union.TString* null, %union.TString** %76, align 8, !dbg !3677, !tbaa !3678
  %77 = add nsw i64 %70, 4, !dbg !3675
  %78 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %49, i64 %75, i32 0, !dbg !3676
  store %union.TString* null, %union.TString** %78, align 8, !dbg !3677, !tbaa !3678
  %79 = icmp eq i64 %77, %53, !dbg !3674
  br i1 %79, label %80, label %69, !dbg !3672, !llvm.loop !3680

; <label>:80:                                     ; preds = %66, %69, %41, %38
  %81 = phi %struct.LocVar* [ %49, %41 ], [ %40, %38 ], [ %49, %69 ], [ %49, %66 ], !dbg !3671
  %82 = load i16, i16* %34, align 8, !dbg !3683, !tbaa !741
  %83 = sext i16 %82 to i64, !dbg !3684
  %84 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %81, i64 %83, i32 0, !dbg !3685
  store %union.TString* %1, %union.TString** %84, align 8, !dbg !3686, !tbaa !3678
  %85 = bitcast %union.TString* %1 to %union.GCObject*, !dbg !3687
  %86 = getelementptr inbounds %union.TString, %union.TString* %1, i64 0, i32 0, i32 2, !dbg !3687
  %87 = load i8, i8* %86, align 1, !dbg !3687, !tbaa !761
  %88 = and i8 %87, 3, !dbg !3687
  %89 = icmp eq i8 %88, 0, !dbg !3687
  br i1 %89, label %100, label %90, !dbg !3687

; <label>:90:                                     ; preds = %80
  %91 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 2, !dbg !3687
  %92 = load i8, i8* %91, align 1, !dbg !3687, !tbaa !761
  %93 = and i8 %92, 4, !dbg !3687
  %94 = icmp eq i8 %93, 0, !dbg !3687
  br i1 %94, label %100, label %95, !dbg !3690

; <label>:95:                                     ; preds = %90
  %96 = bitcast %struct.Proto* %31 to %union.GCObject*, !dbg !3687
  %97 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !3687
  %98 = load %struct.lua_State*, %struct.lua_State** %97, align 8, !dbg !3687, !tbaa !611
  tail call void @luaC_barrierf(%struct.lua_State* %98, %union.GCObject* %96, %union.GCObject* %85) #5, !dbg !3687
  %99 = load i16, i16* %34, align 8, !dbg !3691, !tbaa !741
  br label %100, !dbg !3687

; <label>:100:                                    ; preds = %80, %90, %95
  %101 = phi i16 [ %82, %90 ], [ %82, %80 ], [ %99, %95 ], !dbg !3691
  %102 = add i16 %101, 1, !dbg !3691
  store i16 %102, i16* %34, align 8, !dbg !3691, !tbaa !741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3692
  %103 = load i8, i8* %6, align 2, !dbg !3693, !tbaa !656
  %104 = zext i8 %103 to i32, !dbg !3694
  %105 = add nsw i32 %104, %2, !dbg !3695
  %106 = sext i32 %105 to i64, !dbg !3696
  %107 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 15, i64 %106, !dbg !3696
  store i16 %101, i16* %107, align 2, !dbg !3697, !tbaa !802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3698
  ret void, !dbg !3698
}

; Function Attrs: noredzone
declare hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32*, i64, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaC_barrierf(%struct.lua_State*, %union.GCObject*, %union.GCObject*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_reserveregs(%struct.FuncState*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i32 @luaK_codeABx(%struct.FuncState*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i32 @luaK_exp2anyreg(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_indexed(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_self(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @funcargs(%struct.LexState*, %struct.expdesc* nocapture) unnamed_addr #0 !dbg !3699 {
  %3 = alloca %struct.expdesc, align 8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3710
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !3710, !tbaa !654
  %6 = bitcast %struct.expdesc* %3 to i8*, !dbg !3712
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #4, !dbg !3712
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !3713
  %8 = load i32, i32* %7, align 4, !dbg !3713, !tbaa !881
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !3715
  %10 = load i32, i32* %9, align 8, !dbg !3715, !tbaa !624
  switch i32 %10, label %43 [
    i32 40, label %11
    i32 123, label %32
    i32 286, label %33
  ], !dbg !3716

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 2, !dbg !3717
  %13 = load i32, i32* %12, align 8, !dbg !3717, !tbaa !3721
  %14 = icmp eq i32 %8, %13, !dbg !3722
  br i1 %14, label %16, label %15, !dbg !3723

; <label>:15:                                     ; preds = %11
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0)) #5, !dbg !3724
  br label %16, !dbg !3724

; <label>:16:                                     ; preds = %11, %15
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3725
  %17 = load i32, i32* %9, align 8, !dbg !3726, !tbaa !624
  %18 = icmp eq i32 %17, 41, !dbg !3728
  br i1 %18, label %19, label %21, !dbg !3729

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3730
  store i32 0, i32* %20, align 8, !dbg !3731, !tbaa !985
  br label %31, !dbg !3732

; <label>:21:                                     ; preds = %16
  %22 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3, i32 0) #5, !dbg !3742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3743
  %23 = load i32, i32* %9, align 8, !dbg !3747, !tbaa !624
  %24 = icmp eq i32 %23, 44, !dbg !3748
  br i1 %24, label %25, label %30, !dbg !3749

; <label>:25:                                     ; preds = %21, %25
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3751
  %26 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !3752, !tbaa !654
  call void @luaK_exp2nextreg(%struct.FuncState* %26, %struct.expdesc* nonnull %3) #5, !dbg !3753
  %27 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3, i32 0) #5, !dbg !3757
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3758
  %28 = load i32, i32* %9, align 8, !dbg !3747, !tbaa !624
  %29 = icmp eq i32 %28, 44, !dbg !3748
  br i1 %29, label %25, label %30, !dbg !3749, !llvm.loop !1416

; <label>:30:                                     ; preds = %25, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  call void @luaK_setreturns(%struct.FuncState* %5, %struct.expdesc* nonnull %3, i32 -1) #5, !dbg !3760
  br label %31

; <label>:31:                                     ; preds = %30, %19
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 41, i32 40, i32 %8) #6, !dbg !3761
  br label %44, !dbg !3762

; <label>:32:                                     ; preds = %2
  call fastcc void @constructor(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3) #6, !dbg !3763
  br label %44, !dbg !3765

; <label>:33:                                     ; preds = %2
  %34 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !3766
  %35 = bitcast %union.SemInfo* %34 to %union.TString**, !dbg !3768
  %36 = load %union.TString*, %union.TString** %35, align 8, !dbg !3768, !tbaa !761
  %37 = tail call i32 @luaK_stringK(%struct.FuncState* %5, %union.TString* %36) #5, !dbg !3773
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2, !dbg !3778
  store i32 -1, i32* %38, align 8, !dbg !3779, !tbaa !1864
  %39 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3, !dbg !3780
  store i32 -1, i32* %39, align 4, !dbg !3781, !tbaa !994
  %40 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3782
  store i32 4, i32* %40, align 8, !dbg !3783, !tbaa !985
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3784
  %42 = bitcast %union.anon.3* %41 to i32*, !dbg !3785
  store i32 %37, i32* %42, align 8, !dbg !3786, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3788
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3789
  br label %44, !dbg !3790

; <label>:43:                                     ; preds = %2
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !3791
  br label %63, !dbg !3793

; <label>:44:                                     ; preds = %33, %32, %31
  %45 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !3794
  %46 = bitcast %union.anon.3* %45 to i32*, !dbg !3795
  %47 = load i32, i32* %46, align 8, !dbg !3795, !tbaa !761
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3797
  %49 = load i32, i32* %48, align 8, !dbg !3797, !tbaa !985
  switch i32 %49, label %50 [
    i32 13, label %55
    i32 14, label %55
    i32 0, label %51
  ], !dbg !3797

; <label>:50:                                     ; preds = %44
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* nonnull %3) #5, !dbg !3799
  br label %51, !dbg !3799

; <label>:51:                                     ; preds = %44, %50
  %52 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 9, !dbg !3802
  %53 = load i32, i32* %52, align 4, !dbg !3802, !tbaa !660
  %54 = sub i32 %53, %47
  br label %55

; <label>:55:                                     ; preds = %44, %44, %51
  %56 = phi i32 [ %54, %51 ], [ 0, %44 ], [ 0, %44 ]
  %57 = call i32 @luaK_codeABC(%struct.FuncState* %5, i32 28, i32 %47, i32 %56, i32 2) #5, !dbg !3804
  %58 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !3809
  store i32 -1, i32* %58, align 8, !dbg !3810, !tbaa !1864
  %59 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !3811
  store i32 -1, i32* %59, align 4, !dbg !3812, !tbaa !994
  %60 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !3813
  store i32 13, i32* %60, align 8, !dbg !3814, !tbaa !985
  store i32 %57, i32* %46, align 8, !dbg !3815, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3816
  call void @luaK_fixline(%struct.FuncState* %5, i32 %8) #5, !dbg !3817
  %61 = add nsw i32 %47, 1, !dbg !3818
  %62 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 9, !dbg !3819
  store i32 %61, i32* %62, align 4, !dbg !3820, !tbaa !660
  br label %63, !dbg !3821

; <label>:63:                                     ; preds = %55, %43
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #4, !dbg !3821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3821
  ret void, !dbg !3821
}

; Function Attrs: noredzone
declare hidden void @luaK_dischargevars(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @singlevaraux(%struct.FuncState*, %union.TString*, %struct.expdesc* nocapture, i32) unnamed_addr #0 !dbg !3822 {
  %5 = icmp eq %struct.FuncState* %0, null, !dbg !3837
  br i1 %5, label %6, label %12, !dbg !3838

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !3844
  store i32 -1, i32* %7, align 8, !dbg !3845, !tbaa !1864
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !3846
  store i32 -1, i32* %8, align 4, !dbg !3847, !tbaa !994
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !3848
  store i32 8, i32* %9, align 8, !dbg !3849, !tbaa !985
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !3850
  %11 = bitcast %union.anon.3* %10 to i32*, !dbg !3851
  store i32 255, i32* %11, align 8, !dbg !3852, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3853
  br label %211, !dbg !3854

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3865
  %14 = load i8, i8* %13, align 2, !dbg !3865, !tbaa !656
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0, !dbg !3867
  %16 = zext i8 %14 to i64, !dbg !3871
  br label %17, !dbg !3871

; <label>:17:                                     ; preds = %22, %12
  %18 = phi i64 [ %19, %22 ], [ %16, %12 ]
  %19 = add nsw i64 %18, -1, !dbg !3872
  %20 = icmp sgt i64 %18, 0, !dbg !3874
  br i1 %20, label %22, label %21, !dbg !3875

; <label>:21:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3876
  br label %59, !dbg !3878

; <label>:22:                                     ; preds = %17
  %23 = load %struct.Proto*, %struct.Proto** %15, align 8, !dbg !3867, !tbaa !585
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %23, i64 0, i32 7, !dbg !3867
  %25 = load %struct.LocVar*, %struct.LocVar** %24, align 8, !dbg !3867, !tbaa !800
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15, i64 %19, !dbg !3867
  %27 = load i16, i16* %26, align 2, !dbg !3867, !tbaa !802
  %28 = zext i16 %27 to i64, !dbg !3867
  %29 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %25, i64 %28, i32 0, !dbg !3879
  %30 = load %union.TString*, %union.TString** %29, align 8, !dbg !3879, !tbaa !3678
  %31 = icmp eq %union.TString* %30, %1, !dbg !3880
  br i1 %31, label %32, label %17, !dbg !3881, !llvm.loop !3882

; <label>:32:                                     ; preds = %22
  %33 = trunc i64 %19 to i32, !dbg !3881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3876
  %34 = icmp sgt i32 %33, -1, !dbg !3885
  br i1 %34, label %35, label %59, !dbg !3878

; <label>:35:                                     ; preds = %32
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !3892
  store i32 -1, i32* %36, align 8, !dbg !3893, !tbaa !1864
  %37 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !3894
  store i32 -1, i32* %37, align 4, !dbg !3895, !tbaa !994
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !3896
  store i32 6, i32* %38, align 8, !dbg !3897, !tbaa !985
  %39 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !3898
  %40 = bitcast %union.anon.3* %39 to i32*, !dbg !3899
  store i32 %33, i32* %40, align 8, !dbg !3900, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3901
  %41 = icmp eq i32 %3, 0, !dbg !3902
  br i1 %41, label %42, label %211, !dbg !3904

; <label>:42:                                     ; preds = %35
  %43 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5, !dbg !3915
  %44 = load %struct.BlockCnt*, %struct.BlockCnt** %43, align 8, !dbg !3917, !tbaa !1629
  %45 = icmp eq %struct.BlockCnt* %44, null, !dbg !3918
  br i1 %45, label %58, label %46, !dbg !3919

; <label>:46:                                     ; preds = %42, %52
  %47 = phi %struct.BlockCnt* [ %54, %52 ], [ %44, %42 ]
  %48 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %47, i64 0, i32 2, !dbg !3920
  %49 = load i8, i8* %48, align 4, !dbg !3920, !tbaa !1021
  %50 = zext i8 %49 to i32, !dbg !3921
  %51 = icmp sgt i32 %50, %33, !dbg !3922
  br i1 %51, label %52, label %56, !dbg !3923

; <label>:52:                                     ; preds = %46
  %53 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %47, i64 0, i32 0, !dbg !3924
  %54 = load %struct.BlockCnt*, %struct.BlockCnt** %53, align 8, !dbg !3917, !tbaa !1629
  %55 = icmp eq %struct.BlockCnt* %54, null, !dbg !3918
  br i1 %55, label %58, label %46, !dbg !3919, !llvm.loop !3925

; <label>:56:                                     ; preds = %46
  %57 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %47, i64 0, i32 3, !dbg !3928
  store i8 1, i8* %57, align 1, !dbg !3930, !tbaa !1024
  br label %58, !dbg !3931

; <label>:58:                                     ; preds = %52, %42, %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3932
  br label %211, !dbg !3933

; <label>:59:                                     ; preds = %21, %32
  %60 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2, !dbg !3934
  %61 = load %struct.FuncState*, %struct.FuncState** %60, align 8, !dbg !3934, !tbaa !722
  %62 = tail call fastcc i32 @singlevaraux(%struct.FuncState* %61, %union.TString* %1, %struct.expdesc* %2, i32 0) #6, !dbg !3937
  %63 = icmp eq i32 %62, 8, !dbg !3938
  br i1 %63, label %211, label %64, !dbg !3939

; <label>:64:                                     ; preds = %59
  %65 = load %struct.Proto*, %struct.Proto** %15, align 8, !dbg !3954, !tbaa !585
  %66 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 10, !dbg !3956
  %67 = load i32, i32* %66, align 8, !dbg !3956, !tbaa !845
  %68 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 19, !dbg !3959
  %69 = load i8, i8* %68, align 8, !dbg !3959, !tbaa !843
  %70 = icmp eq i8 %69, 0, !dbg !3962
  br i1 %70, label %110, label %71, !dbg !3963

; <label>:71:                                     ; preds = %64
  %72 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %73 = load i32, i32* %72, align 8, !tbaa !985
  %74 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %75 = bitcast %union.anon.3* %74 to i32*
  %76 = zext i8 %69 to i64
  br label %77, !dbg !3963

; <label>:77:                                     ; preds = %89, %71
  %78 = phi i64 [ 0, %71 ], [ %90, %89 ]
  %79 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 14, i64 %78, i32 0, !dbg !3964
  %80 = load i8, i8* %79, align 1, !dbg !3964, !tbaa !3256
  %81 = zext i8 %80 to i32, !dbg !3967
  %82 = icmp eq i32 %73, %81, !dbg !3968
  br i1 %82, label %83, label %89, !dbg !3969

; <label>:83:                                     ; preds = %77
  %84 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 14, i64 %78, i32 1, !dbg !3970
  %85 = load i8, i8* %84, align 1, !dbg !3970, !tbaa !3262
  %86 = zext i8 %85 to i32, !dbg !3971
  %87 = load i32, i32* %75, align 8, !dbg !3972, !tbaa !761
  %88 = icmp eq i32 %87, %86, !dbg !3973
  br i1 %88, label %205, label %89, !dbg !3974

; <label>:89:                                     ; preds = %83, %77
  %90 = add nuw nsw i64 %78, 1, !dbg !3975
  %91 = icmp ult i64 %90, %76, !dbg !3962
  br i1 %91, label %77, label %92, !dbg !3963, !llvm.loop !3976

; <label>:92:                                     ; preds = %89
  %93 = icmp ugt i8 %69, 59, !dbg !3979
  br i1 %93, label %94, label %110, !dbg !3981

; <label>:94:                                     ; preds = %92
  %95 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 16, !dbg !3986
  %96 = load i32, i32* %95, align 8, !dbg !3986, !tbaa !2886
  %97 = icmp eq i32 %96, 0, !dbg !3987
  %98 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4, !dbg !3988
  %99 = load %struct.lua_State*, %struct.lua_State** %98, align 8, !dbg !3988, !tbaa !728
  br i1 %97, label %100, label %102, !dbg !3989

; <label>:100:                                    ; preds = %94
  %101 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)) #5, !dbg !3990
  br label %104, !dbg !3989

; <label>:102:                                    ; preds = %94
  %103 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %99, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %96, i32 60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)) #5, !dbg !3991
  br label %104, !dbg !3989

; <label>:104:                                    ; preds = %102, %100
  %105 = phi i8* [ %101, %100 ], [ %103, %102 ], !dbg !3989
  %106 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3993
  %107 = load %struct.LexState*, %struct.LexState** %106, align 8, !dbg !3993, !tbaa !725
  tail call void @luaX_lexerror(%struct.LexState* %107, i8* %105, i32 0) #5, !dbg !3994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3995
  %108 = load i8, i8* %68, align 8, !dbg !3996, !tbaa !843
  %109 = load i32, i32* %66, align 8, !dbg !3996, !tbaa !845
  br label %110, !dbg !3979

; <label>:110:                                    ; preds = %104, %92, %64
  %111 = phi i32 [ %109, %104 ], [ %67, %92 ], [ %67, %64 ], !dbg !3996
  %112 = phi i8 [ %108, %104 ], [ %69, %92 ], [ 0, %64 ], !dbg !3996
  %113 = zext i8 %112 to i32, !dbg !3996
  %114 = icmp sgt i32 %111, %113, !dbg !3996
  br i1 %114, label %115, label %118, !dbg !3998

; <label>:115:                                    ; preds = %110
  %116 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 8
  %117 = load %union.TString**, %union.TString*** %116, align 8, !dbg !3999, !tbaa !844
  br label %127, !dbg !3998

; <label>:118:                                    ; preds = %110
  %119 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4, !dbg !3996
  %120 = load %struct.lua_State*, %struct.lua_State** %119, align 8, !dbg !3996, !tbaa !728
  %121 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 8, !dbg !3996
  %122 = bitcast %union.TString*** %121 to i8**, !dbg !3996
  %123 = load i8*, i8** %122, align 8, !dbg !3996, !tbaa !844
  %124 = tail call i8* @luaM_growaux_(%struct.lua_State* %120, i8* %123, i32* nonnull %66, i64 8, i32 2147483645, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #5, !dbg !3996
  store i8* %124, i8** %122, align 8, !dbg !3996, !tbaa !844
  %125 = load i32, i32* %66, align 8, !dbg !4000, !tbaa !845
  %126 = bitcast i8* %124 to %union.TString**, !dbg !3996
  br label %127, !dbg !3996

; <label>:127:                                    ; preds = %118, %115
  %128 = phi %union.TString*** [ %116, %115 ], [ %121, %118 ], !dbg !3999
  %129 = phi %union.TString** [ %117, %115 ], [ %126, %118 ], !dbg !3999
  %130 = phi i32 [ %111, %115 ], [ %125, %118 ], !dbg !4000
  %131 = icmp slt i32 %67, %130, !dbg !4001
  br i1 %131, label %132, label %170, !dbg !4002

; <label>:132:                                    ; preds = %127
  %133 = sext i32 %67 to i64, !dbg !4002
  %134 = sext i32 %130 to i64, !dbg !4002
  %135 = sub nsw i64 %134, %133, !dbg !4002
  %136 = xor i64 %133, -1, !dbg !4002
  %137 = add nsw i64 %136, %134, !dbg !4002
  %138 = and i64 %135, 3, !dbg !4002
  %139 = icmp eq i64 %138, 0, !dbg !4002
  br i1 %139, label %149, label %140, !dbg !4002

; <label>:140:                                    ; preds = %132, %140
  %141 = phi i64 [ %144, %140 ], [ %133, %132 ]
  %142 = phi %union.TString** [ %146, %140 ], [ %129, %132 ]
  %143 = phi i64 [ %147, %140 ], [ %138, %132 ]
  %144 = add nsw i64 %141, 1, !dbg !4003
  %145 = getelementptr inbounds %union.TString*, %union.TString** %142, i64 %141, !dbg !4004
  store %union.TString* null, %union.TString** %145, align 8, !dbg !4005, !tbaa !1629
  %146 = load %union.TString**, %union.TString*** %128, align 8, !dbg !3999, !tbaa !844
  %147 = add i64 %143, -1, !dbg !4002
  %148 = icmp eq i64 %147, 0, !dbg !4002
  br i1 %148, label %149, label %140, !dbg !4002, !llvm.loop !4006

; <label>:149:                                    ; preds = %140, %132
  %150 = phi %union.TString** [ undef, %132 ], [ %146, %140 ]
  %151 = phi i64 [ %133, %132 ], [ %144, %140 ]
  %152 = phi %union.TString** [ %129, %132 ], [ %146, %140 ]
  %153 = icmp ult i64 %137, 3, !dbg !4002
  br i1 %153, label %170, label %154, !dbg !4002

; <label>:154:                                    ; preds = %149, %154
  %155 = phi i64 [ %166, %154 ], [ %151, %149 ]
  %156 = phi %union.TString** [ %168, %154 ], [ %152, %149 ]
  %157 = add nsw i64 %155, 1, !dbg !4003
  %158 = getelementptr inbounds %union.TString*, %union.TString** %156, i64 %155, !dbg !4004
  store %union.TString* null, %union.TString** %158, align 8, !dbg !4005, !tbaa !1629
  %159 = load %union.TString**, %union.TString*** %128, align 8, !dbg !3999, !tbaa !844
  %160 = add nsw i64 %155, 2, !dbg !4003
  %161 = getelementptr inbounds %union.TString*, %union.TString** %159, i64 %157, !dbg !4004
  store %union.TString* null, %union.TString** %161, align 8, !dbg !4005, !tbaa !1629
  %162 = load %union.TString**, %union.TString*** %128, align 8, !dbg !3999, !tbaa !844
  %163 = add nsw i64 %155, 3, !dbg !4003
  %164 = getelementptr inbounds %union.TString*, %union.TString** %162, i64 %160, !dbg !4004
  store %union.TString* null, %union.TString** %164, align 8, !dbg !4005, !tbaa !1629
  %165 = load %union.TString**, %union.TString*** %128, align 8, !dbg !3999, !tbaa !844
  %166 = add nsw i64 %155, 4, !dbg !4003
  %167 = getelementptr inbounds %union.TString*, %union.TString** %165, i64 %163, !dbg !4004
  store %union.TString* null, %union.TString** %167, align 8, !dbg !4005, !tbaa !1629
  %168 = load %union.TString**, %union.TString*** %128, align 8, !dbg !3999, !tbaa !844
  %169 = icmp eq i64 %166, %134, !dbg !4001
  br i1 %169, label %170, label %154, !dbg !4002, !llvm.loop !4007

; <label>:170:                                    ; preds = %149, %154, %127
  %171 = phi %union.TString** [ %129, %127 ], [ %150, %149 ], [ %168, %154 ], !dbg !3999
  %172 = load i8, i8* %68, align 8, !dbg !4010, !tbaa !843
  %173 = zext i8 %172 to i64, !dbg !4011
  %174 = getelementptr inbounds %union.TString*, %union.TString** %171, i64 %173, !dbg !4011
  store %union.TString* %1, %union.TString** %174, align 8, !dbg !4012, !tbaa !1629
  %175 = bitcast %union.TString* %1 to %union.GCObject*, !dbg !4013
  %176 = getelementptr inbounds %union.TString, %union.TString* %1, i64 0, i32 0, i32 2, !dbg !4013
  %177 = load i8, i8* %176, align 1, !dbg !4013, !tbaa !761
  %178 = and i8 %177, 3, !dbg !4013
  %179 = icmp eq i8 %178, 0, !dbg !4013
  br i1 %179, label %191, label %180, !dbg !4013

; <label>:180:                                    ; preds = %170
  %181 = getelementptr inbounds %struct.Proto, %struct.Proto* %65, i64 0, i32 2, !dbg !4013
  %182 = load i8, i8* %181, align 1, !dbg !4013, !tbaa !761
  %183 = and i8 %182, 4, !dbg !4013
  %184 = icmp eq i8 %183, 0, !dbg !4013
  br i1 %184, label %191, label %185, !dbg !4016

; <label>:185:                                    ; preds = %180
  %186 = bitcast %struct.Proto* %65 to %union.GCObject*, !dbg !4013
  %187 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4, !dbg !4013
  %188 = load %struct.lua_State*, %struct.lua_State** %187, align 8, !dbg !4013, !tbaa !728
  tail call void @luaC_barrierf(%struct.lua_State* %188, %union.GCObject* %186, %union.GCObject* %175) #5, !dbg !4013
  %189 = load i8, i8* %68, align 8, !dbg !4017, !tbaa !843
  %190 = zext i8 %189 to i64, !dbg !4018
  br label %191, !dbg !4013

; <label>:191:                                    ; preds = %185, %180, %170
  %192 = phi i64 [ %173, %180 ], [ %173, %170 ], [ %190, %185 ], !dbg !4018
  %193 = phi i8 [ %172, %180 ], [ %172, %170 ], [ %189, %185 ], !dbg !4017
  %194 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !4019
  %195 = load i32, i32* %194, align 8, !dbg !4019, !tbaa !985
  %196 = trunc i32 %195 to i8, !dbg !4019
  %197 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 14, i64 %192, i32 0, !dbg !4020
  store i8 %196, i8* %197, align 1, !dbg !4021, !tbaa !3256
  %198 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !4022
  %199 = bitcast %union.anon.3* %198 to i32*, !dbg !4022
  %200 = load i32, i32* %199, align 8, !dbg !4022, !tbaa !761
  %201 = trunc i32 %200 to i8, !dbg !4022
  %202 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 14, i64 %192, i32 1, !dbg !4023
  store i8 %201, i8* %202, align 1, !dbg !4024, !tbaa !3262
  %203 = add i8 %193, 1, !dbg !4025
  store i8 %203, i8* %68, align 8, !dbg !4025, !tbaa !843
  %204 = zext i8 %193 to i32, !dbg !4026
  br label %207, !dbg !4027

; <label>:205:                                    ; preds = %83
  %206 = trunc i64 %78 to i32, !dbg !3958
  br label %207, !dbg !4028

; <label>:207:                                    ; preds = %191, %205
  %208 = phi i32* [ %194, %191 ], [ %72, %205 ], !dbg !4029
  %209 = phi i32* [ %199, %191 ], [ %75, %205 ], !dbg !4030
  %210 = phi i32 [ %204, %191 ], [ %206, %205 ], !dbg !3999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4028
  store i32 %210, i32* %209, align 8, !dbg !4031, !tbaa !761
  store i32 7, i32* %208, align 8, !dbg !4032, !tbaa !985
  br label %211, !dbg !4033

; <label>:211:                                    ; preds = %207, %35, %58, %59, %6
  %212 = phi i32 [ 8, %6 ], [ 7, %207 ], [ 6, %35 ], [ 6, %58 ], [ 8, %59 ], !dbg !4034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4035
  ret i32 %212, !dbg !4035
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
define internal fastcc void @forbody(%struct.LexState*, i32, i32, i32, i32) unnamed_addr #0 !dbg !4036 {
  %6 = alloca %struct.BlockCnt, align 8
  %7 = bitcast %struct.BlockCnt* %6 to i8*, !dbg !4054
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #4, !dbg !4054
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !4055
  %9 = load %struct.FuncState*, %struct.FuncState** %8, align 8, !dbg !4055, !tbaa !654
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 13, !dbg !4061
  %11 = load i8, i8* %10, align 2, !dbg !4061, !tbaa !656
  %12 = add i8 %11, 3, !dbg !4061
  store i8 %12, i8* %10, align 2, !dbg !4062, !tbaa !656
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 6
  %14 = load i32, i32* %13, align 8, !tbaa !799
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 0
  %16 = load %struct.Proto*, %struct.Proto** %15, align 8, !tbaa !585
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i64 0, i32 7
  %18 = load %struct.LocVar*, %struct.LocVar** %17, align 8, !tbaa !800
  %19 = zext i8 %12 to i64, !dbg !4063
  %20 = add nsw i64 %19, -3, !dbg !4064
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 15, i64 %20, !dbg !4064
  %22 = load i16, i16* %21, align 2, !dbg !4064, !tbaa !802
  %23 = zext i16 %22 to i64, !dbg !4064
  %24 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %18, i64 %23, i32 1, !dbg !4065
  store i32 %14, i32* %24, align 8, !dbg !4066, !tbaa !2030
  %25 = add nsw i64 %19, -2, !dbg !4064
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 15, i64 %25, !dbg !4064
  %27 = load i16, i16* %26, align 2, !dbg !4064, !tbaa !802
  %28 = zext i16 %27 to i64, !dbg !4064
  %29 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %18, i64 %28, i32 1, !dbg !4065
  store i32 %14, i32* %29, align 8, !dbg !4066, !tbaa !2030
  %30 = add nsw i64 %19, -1, !dbg !4064
  %31 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 15, i64 %30, !dbg !4064
  %32 = load i16, i16* %31, align 2, !dbg !4064, !tbaa !802
  %33 = zext i16 %32 to i64, !dbg !4064
  %34 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %18, i64 %33, i32 1, !dbg !4065
  store i32 %14, i32* %34, align 8, !dbg !4066, !tbaa !2030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4067
  %35 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !4074
  %36 = load i32, i32* %35, align 8, !dbg !4074, !tbaa !624
  %37 = icmp eq i32 %36, 259, !dbg !4075
  br i1 %37, label %43, label %38, !dbg !4076

; <label>:38:                                     ; preds = %5
  %39 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !4080
  %40 = load %struct.lua_State*, %struct.lua_State** %39, align 8, !dbg !4080, !tbaa !611
  %41 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 259) #5, !dbg !4081
  %42 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %41) #5, !dbg !4082
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %42) #5, !dbg !4083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4084
  br label %43, !dbg !4085

; <label>:43:                                     ; preds = %5, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4086
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !4087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4088
  %44 = icmp ne i32 %4, 0, !dbg !4089
  br i1 %44, label %45, label %47, !dbg !4089

; <label>:45:                                     ; preds = %43
  %46 = tail call i32 @luaK_codeABx(%struct.FuncState* nonnull %9, i32 32, i32 %1, i32 131070) #5, !dbg !4090
  br label %49, !dbg !4089

; <label>:47:                                     ; preds = %43
  %48 = tail call i32 @luaK_jump(%struct.FuncState* nonnull %9) #5, !dbg !4091
  br label %49, !dbg !4089

; <label>:49:                                     ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ], !dbg !4089
  %51 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 1, !dbg !4098
  store i32 -1, i32* %51, align 8, !dbg !4099, !tbaa !1013
  %52 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 4, !dbg !4100
  store i8 0, i8* %52, align 2, !dbg !4101, !tbaa !1017
  %53 = load i8, i8* %10, align 2, !dbg !4102, !tbaa !656
  %54 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 2, !dbg !4103
  store i8 %53, i8* %54, align 4, !dbg !4104, !tbaa !1021
  %55 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 3, !dbg !4105
  store i8 0, i8* %55, align 1, !dbg !4106, !tbaa !1024
  %56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 5, !dbg !4107
  %57 = bitcast %struct.BlockCnt** %56 to i64*, !dbg !4107
  %58 = load i64, i64* %57, align 8, !dbg !4107, !tbaa !746
  %59 = bitcast %struct.BlockCnt* %6 to i64*, !dbg !4108
  store i64 %58, i64* %59, align 8, !dbg !4108, !tbaa !1027
  store %struct.BlockCnt* %6, %struct.BlockCnt** %56, align 8, !dbg !4109, !tbaa !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4110
  %60 = load %struct.FuncState*, %struct.FuncState** %8, align 8, !dbg !4114, !tbaa !654
  %61 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 13, !dbg !4116
  %62 = load i8, i8* %61, align 2, !dbg !4116, !tbaa !656
  %63 = trunc i32 %3 to i8, !dbg !4116
  %64 = add i8 %62, %63, !dbg !4116
  store i8 %64, i8* %61, align 2, !dbg !4117, !tbaa !656
  %65 = icmp eq i32 %3, 0, !dbg !4118
  br i1 %65, label %120, label %66, !dbg !4118

; <label>:66:                                     ; preds = %49
  %67 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 6
  %68 = load i32, i32* %67, align 8, !tbaa !799
  %69 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 0
  %70 = load %struct.Proto*, %struct.Proto** %69, align 8, !tbaa !585
  %71 = getelementptr inbounds %struct.Proto, %struct.Proto* %70, i64 0, i32 7
  %72 = load %struct.LocVar*, %struct.LocVar** %71, align 8, !tbaa !800
  %73 = sext i32 %3 to i64, !dbg !4118
  %74 = zext i8 %64 to i64, !dbg !4118
  %75 = add i32 %3, -1, !dbg !4118
  %76 = and i32 %3, 3, !dbg !4118
  %77 = icmp eq i32 %76, 0, !dbg !4118
  br i1 %77, label %89, label %78, !dbg !4118

; <label>:78:                                     ; preds = %66, %78
  %79 = phi i64 [ %86, %78 ], [ %73, %66 ]
  %80 = phi i32 [ %87, %78 ], [ %76, %66 ]
  %81 = sub nsw i64 %74, %79, !dbg !4119
  %82 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 15, i64 %81, !dbg !4119
  %83 = load i16, i16* %82, align 2, !dbg !4119, !tbaa !802
  %84 = zext i16 %83 to i64, !dbg !4119
  %85 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %72, i64 %84, i32 1, !dbg !4120
  store i32 %68, i32* %85, align 8, !dbg !4121, !tbaa !2030
  %86 = add nsw i64 %79, -1, !dbg !4122
  %87 = add i32 %80, -1, !dbg !4118
  %88 = icmp eq i32 %87, 0, !dbg !4118
  br i1 %88, label %89, label %78, !dbg !4118, !llvm.loop !4123

; <label>:89:                                     ; preds = %78, %66
  %90 = phi i64 [ %73, %66 ], [ %86, %78 ]
  %91 = icmp ult i32 %75, 3, !dbg !4118
  br i1 %91, label %120, label %92, !dbg !4118

; <label>:92:                                     ; preds = %89, %92
  %93 = phi i64 [ %117, %92 ], [ %90, %89 ]
  %94 = sub nsw i64 %74, %93, !dbg !4119
  %95 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 15, i64 %94, !dbg !4119
  %96 = load i16, i16* %95, align 2, !dbg !4119, !tbaa !802
  %97 = zext i16 %96 to i64, !dbg !4119
  %98 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %72, i64 %97, i32 1, !dbg !4120
  store i32 %68, i32* %98, align 8, !dbg !4121, !tbaa !2030
  %99 = add nsw i64 %93, -1, !dbg !4122
  %100 = sub nsw i64 %74, %99, !dbg !4119
  %101 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 15, i64 %100, !dbg !4119
  %102 = load i16, i16* %101, align 2, !dbg !4119, !tbaa !802
  %103 = zext i16 %102 to i64, !dbg !4119
  %104 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %72, i64 %103, i32 1, !dbg !4120
  store i32 %68, i32* %104, align 8, !dbg !4121, !tbaa !2030
  %105 = add nsw i64 %93, -2, !dbg !4122
  %106 = sub nsw i64 %74, %105, !dbg !4119
  %107 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 15, i64 %106, !dbg !4119
  %108 = load i16, i16* %107, align 2, !dbg !4119, !tbaa !802
  %109 = zext i16 %108 to i64, !dbg !4119
  %110 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %72, i64 %109, i32 1, !dbg !4120
  store i32 %68, i32* %110, align 8, !dbg !4121, !tbaa !2030
  %111 = add nsw i64 %93, -3, !dbg !4122
  %112 = sub nsw i64 %74, %111, !dbg !4119
  %113 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 15, i64 %112, !dbg !4119
  %114 = load i16, i16* %113, align 2, !dbg !4119, !tbaa !802
  %115 = zext i16 %114 to i64, !dbg !4119
  %116 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %72, i64 %115, i32 1, !dbg !4120
  store i32 %68, i32* %116, align 8, !dbg !4121, !tbaa !2030
  %117 = add nsw i64 %93, -4, !dbg !4122
  %118 = trunc i64 %117 to i32, !dbg !4118
  %119 = icmp eq i32 %118, 0, !dbg !4118
  br i1 %119, label %120, label %92, !dbg !4118, !llvm.loop !2145

; <label>:120:                                    ; preds = %89, %92, %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4124
  call void @luaK_reserveregs(%struct.FuncState* %9, i32 %3) #5, !dbg !4125
  call fastcc void @block(%struct.LexState* %0) #6, !dbg !4126
  %121 = load %struct.BlockCnt*, %struct.BlockCnt** %56, align 8, !dbg !4129, !tbaa !746
  %122 = bitcast %struct.BlockCnt* %121 to i64*, !dbg !4131
  %123 = load i64, i64* %122, align 8, !dbg !4131, !tbaa !1027
  store i64 %123, i64* %57, align 8, !dbg !4132, !tbaa !746
  %124 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 3, !dbg !4133
  %125 = load %struct.LexState*, %struct.LexState** %124, align 8, !dbg !4133, !tbaa !725
  %126 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %121, i64 0, i32 2, !dbg !4134
  %127 = load i8, i8* %126, align 4, !dbg !4134, !tbaa !1021
  %128 = zext i8 %127 to i32, !dbg !4135
  %129 = getelementptr inbounds %struct.LexState, %struct.LexState* %125, i64 0, i32 5, !dbg !4139
  %130 = load %struct.FuncState*, %struct.FuncState** %129, align 8, !dbg !4139, !tbaa !654
  %131 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %130, i64 0, i32 13, !dbg !4141
  %132 = load i8, i8* %131, align 2, !dbg !4141, !tbaa !656
  %133 = icmp ugt i8 %132, %127, !dbg !4142
  br i1 %133, label %134, label %175, !dbg !4143

; <label>:134:                                    ; preds = %120
  %135 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %130, i64 0, i32 6
  %136 = load i32, i32* %135, align 8, !tbaa !799
  %137 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %130, i64 0, i32 0
  %138 = load %struct.Proto*, %struct.Proto** %137, align 8, !tbaa !585
  %139 = getelementptr inbounds %struct.Proto, %struct.Proto* %138, i64 0, i32 7
  %140 = load %struct.LocVar*, %struct.LocVar** %139, align 8, !tbaa !800
  %141 = zext i8 %132 to i64, !dbg !4143
  %142 = sub i8 %132, %127, !dbg !4143
  %143 = and i8 %142, 1, !dbg !4143
  %144 = icmp eq i8 %143, 0, !dbg !4143
  br i1 %144, label %153, label %145, !dbg !4143

; <label>:145:                                    ; preds = %134
  %146 = add i8 %132, -1, !dbg !4144
  %147 = zext i8 %146 to i64, !dbg !4144
  %148 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %130, i64 0, i32 15, i64 %147, !dbg !4144
  %149 = load i16, i16* %148, align 2, !dbg !4144, !tbaa !802
  %150 = zext i16 %149 to i64, !dbg !4144
  %151 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %140, i64 %150, i32 2, !dbg !4145
  store i32 %136, i32* %151, align 4, !dbg !4146, !tbaa !805
  %152 = add nsw i64 %141, -1, !dbg !4144
  br label %153, !dbg !4143

; <label>:153:                                    ; preds = %134, %145
  %154 = phi i64 [ %141, %134 ], [ %152, %145 ]
  %155 = add i8 %127, 1, !dbg !4143
  %156 = icmp eq i8 %132, %155, !dbg !4143
  br i1 %156, label %174, label %157, !dbg !4143

; <label>:157:                                    ; preds = %153, %157
  %158 = phi i64 [ %173, %157 ], [ %154, %153 ]
  %159 = add i64 %158, 255, !dbg !4144
  %160 = and i64 %159, 255, !dbg !4144
  %161 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %130, i64 0, i32 15, i64 %160, !dbg !4144
  %162 = load i16, i16* %161, align 2, !dbg !4144, !tbaa !802
  %163 = zext i16 %162 to i64, !dbg !4144
  %164 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %140, i64 %163, i32 2, !dbg !4145
  store i32 %136, i32* %164, align 4, !dbg !4146, !tbaa !805
  %165 = trunc i64 %158 to i8, !dbg !4144
  %166 = add i8 %165, -2, !dbg !4144
  %167 = zext i8 %166 to i64, !dbg !4144
  %168 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %130, i64 0, i32 15, i64 %167, !dbg !4144
  %169 = load i16, i16* %168, align 2, !dbg !4144, !tbaa !802
  %170 = zext i16 %169 to i64, !dbg !4144
  %171 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %140, i64 %170, i32 2, !dbg !4145
  store i32 %136, i32* %171, align 4, !dbg !4146, !tbaa !805
  %172 = icmp ugt i8 %166, %127, !dbg !4142
  %173 = add nsw i64 %158, -2, !dbg !4144
  br i1 %172, label %157, label %174, !dbg !4143, !llvm.loop !807

; <label>:174:                                    ; preds = %157, %153
  store i8 %127, i8* %131, align 2, !dbg !4144, !tbaa !656
  br label %175, !dbg !4143

; <label>:175:                                    ; preds = %174, %120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4147
  %176 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %121, i64 0, i32 3, !dbg !4148
  %177 = load i8, i8* %176, align 1, !dbg !4148, !tbaa !1024
  %178 = icmp eq i8 %177, 0, !dbg !4149
  br i1 %178, label %181, label %179, !dbg !4150

; <label>:179:                                    ; preds = %175
  %180 = call i32 @luaK_codeABC(%struct.FuncState* %9, i32 35, i32 %128, i32 0, i32 0) #5, !dbg !4151
  br label %181, !dbg !4151

; <label>:181:                                    ; preds = %175, %179
  %182 = load i8, i8* %10, align 2, !dbg !4152, !tbaa !656
  %183 = zext i8 %182 to i32, !dbg !4153
  %184 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 9, !dbg !4154
  store i32 %183, i32* %184, align 4, !dbg !4155, !tbaa !660
  %185 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %121, i64 0, i32 1, !dbg !4156
  %186 = load i32, i32* %185, align 8, !dbg !4156, !tbaa !1013
  call void @luaK_patchtohere(%struct.FuncState* %9, i32 %186) #5, !dbg !4157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4158
  call void @luaK_patchtohere(%struct.FuncState* %9, i32 %50) #5, !dbg !4159
  br i1 %44, label %187, label %189, !dbg !4160

; <label>:187:                                    ; preds = %181
  %188 = call i32 @luaK_codeABx(%struct.FuncState* nonnull %9, i32 31, i32 %1, i32 131070) #5, !dbg !4161
  call void @luaK_fixline(%struct.FuncState* nonnull %9, i32 %2) #5, !dbg !4163
  br label %192, !dbg !4164

; <label>:189:                                    ; preds = %181
  %190 = call i32 @luaK_codeABC(%struct.FuncState* nonnull %9, i32 33, i32 %1, i32 0, i32 %3) #5, !dbg !4165
  call void @luaK_fixline(%struct.FuncState* nonnull %9, i32 %2) #5, !dbg !4163
  %191 = call i32 @luaK_jump(%struct.FuncState* nonnull %9) #5, !dbg !4166
  br label %192, !dbg !4164

; <label>:192:                                    ; preds = %187, %189
  %193 = phi i32 [ %191, %189 ], [ %188, %187 ], !dbg !4164
  %194 = add nsw i32 %50, 1, !dbg !4167
  call void @luaK_patchlist(%struct.FuncState* nonnull %9, i32 %193, i32 %194) #5, !dbg !4168
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #4, !dbg !4169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4169
  ret void, !dbg !4169
}

; Function Attrs: noredzone nounwind
define internal fastcc void @adjust_assign(%struct.LexState* nocapture readonly, i32, i32, %struct.expdesc*) unnamed_addr #0 !dbg !4170 {
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !4189
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !dbg !4189, !tbaa !654
  %7 = sub nsw i32 %1, %2, !dbg !4191
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !4193
  %9 = load i32, i32* %8, align 8, !dbg !4193, !tbaa !985
  switch i32 %9, label %17 [
    i32 13, label %10
    i32 14, label %10
    i32 0, label %18
  ], !dbg !4193

; <label>:10:                                     ; preds = %4, %4
  %11 = add nsw i32 %7, 1, !dbg !4194
  %12 = icmp sgt i32 %11, 0, !dbg !4196
  %13 = select i1 %12, i32 %11, i32 0, !dbg !4196
  tail call void @luaK_setreturns(%struct.FuncState* %6, %struct.expdesc* nonnull %3, i32 %13) #5, !dbg !4197
  %14 = icmp sgt i32 %13, 1, !dbg !4198
  br i1 %14, label %15, label %23, !dbg !4200

; <label>:15:                                     ; preds = %10
  %16 = add nsw i32 %13, -1, !dbg !4201
  tail call void @luaK_reserveregs(%struct.FuncState* %6, i32 %16) #5, !dbg !4202
  br label %23, !dbg !4202

; <label>:17:                                     ; preds = %4
  tail call void @luaK_exp2nextreg(%struct.FuncState* %6, %struct.expdesc* nonnull %3) #5, !dbg !4203
  br label %18, !dbg !4203

; <label>:18:                                     ; preds = %4, %17
  %19 = icmp sgt i32 %7, 0, !dbg !4205
  br i1 %19, label %20, label %23, !dbg !4206

; <label>:20:                                     ; preds = %18
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 9, !dbg !4207
  %22 = load i32, i32* %21, align 4, !dbg !4207, !tbaa !660
  tail call void @luaK_reserveregs(%struct.FuncState* %6, i32 %7) #5, !dbg !4209
  tail call void @luaK_nil(%struct.FuncState* %6, i32 %22, i32 %7) #5, !dbg !4210
  br label %23, !dbg !4211

; <label>:23:                                     ; preds = %18, %20, %10, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4212
  ret void, !dbg !4212
}

; Function Attrs: noredzone
declare hidden void @luaK_checkstack(%struct.FuncState*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_nil(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_storevar(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @assignment(%struct.LexState*, %struct.LHS_assign*, i32) unnamed_addr #0 !dbg !4213 {
  %4 = alloca %struct.expdesc, align 8
  %5 = alloca %struct.LHS_assign, align 8
  %6 = bitcast %struct.expdesc* %4 to i8*, !dbg !4229
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #4, !dbg !4229
  %7 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %1, i64 0, i32 1, !dbg !4230
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i64 0, i32 0, !dbg !4230
  %9 = load i32, i32* %8, align 8, !dbg !4230, !tbaa !2283
  %10 = add i32 %9, -6, !dbg !4230
  %11 = icmp ult i32 %10, 4, !dbg !4230
  br i1 %11, label %13, label %12, !dbg !4230

; <label>:12:                                     ; preds = %3
  tail call void @luaX_syntaxerror(%struct.LexState* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0)) #5, !dbg !4230
  br label %13, !dbg !4230

; <label>:13:                                     ; preds = %3, %12
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !4236
  %15 = load i32, i32* %14, align 8, !dbg !4236, !tbaa !624
  %16 = icmp eq i32 %15, 44, !dbg !4237
  br i1 %16, label %17, label %93, !dbg !4238

; <label>:17:                                     ; preds = %13
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !4239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4240
  %18 = bitcast %struct.LHS_assign* %5 to i8*, !dbg !4241
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %18) #4, !dbg !4241
  %19 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 0, !dbg !4242
  store %struct.LHS_assign* %1, %struct.LHS_assign** %19, align 8, !dbg !4243, !tbaa !2291
  %20 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1, !dbg !4244
  call fastcc void @primaryexp(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %20) #6, !dbg !4245
  %21 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %20, i64 0, i32 0, !dbg !4246
  %22 = load i32, i32* %21, align 8, !dbg !4246, !tbaa !2283
  %23 = icmp eq i32 %22, 6, !dbg !4248
  br i1 %23, label %24, label %65, !dbg !4249

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !4264
  %26 = load %struct.FuncState*, %struct.FuncState** %25, align 8, !dbg !4264, !tbaa !654
  %27 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %26, i64 0, i32 9, !dbg !4266
  %28 = load i32, i32* %27, align 4, !dbg !4266, !tbaa !660
  %29 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1, i32 1
  %30 = bitcast %union.anon.3* %29 to i32*
  br label %31, !dbg !4269

; <label>:31:                                     ; preds = %53, %24
  %32 = phi i32 [ 0, %24 ], [ %54, %53 ]
  %33 = phi %struct.LHS_assign* [ %1, %24 ], [ %56, %53 ]
  %34 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %33, i64 0, i32 1, i32 0, !dbg !4271
  %35 = load i32, i32* %34, align 8, !dbg !4271, !tbaa !2283
  %36 = icmp eq i32 %35, 9, !dbg !4275
  br i1 %36, label %37, label %53, !dbg !4276

; <label>:37:                                     ; preds = %31
  %38 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %33, i64 0, i32 1, i32 1, !dbg !4277
  %39 = bitcast %union.anon.3* %38 to %struct.anon.4*, !dbg !4280
  %40 = bitcast %union.anon.3* %38 to i32*, !dbg !4281
  %41 = load i32, i32* %40, align 8, !dbg !4281, !tbaa !761
  %42 = load i32, i32* %30, align 8, !dbg !4282, !tbaa !761
  %43 = icmp eq i32 %41, %42, !dbg !4283
  br i1 %43, label %44, label %46, !dbg !4284

; <label>:44:                                     ; preds = %37
  store i32 %28, i32* %40, align 8, !dbg !4285, !tbaa !761
  %45 = load i32, i32* %30, align 8, !dbg !4287, !tbaa !761
  br label %46, !dbg !4289

; <label>:46:                                     ; preds = %44, %37
  %47 = phi i32 [ %45, %44 ], [ %42, %37 ], !dbg !4287
  %48 = phi i32 [ 1, %44 ], [ %32, %37 ], !dbg !4290
  %49 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %39, i64 0, i32 1, !dbg !4291
  %50 = load i32, i32* %49, align 4, !dbg !4291, !tbaa !761
  %51 = icmp eq i32 %50, %47, !dbg !4292
  br i1 %51, label %52, label %53, !dbg !4293

; <label>:52:                                     ; preds = %46
  store i32 %28, i32* %49, align 4, !dbg !4294, !tbaa !761
  br label %53, !dbg !4296

; <label>:53:                                     ; preds = %52, %46, %31
  %54 = phi i32 [ 1, %52 ], [ %48, %46 ], [ %32, %31 ], !dbg !4290
  %55 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %33, i64 0, i32 0, !dbg !4297
  %56 = load %struct.LHS_assign*, %struct.LHS_assign** %55, align 8, !dbg !4297, !tbaa !2291
  %57 = icmp eq %struct.LHS_assign* %56, null, !dbg !4269
  br i1 %57, label %58, label %31, !dbg !4269, !llvm.loop !4298

; <label>:58:                                     ; preds = %53
  %59 = icmp eq i32 %54, 0, !dbg !4301
  br i1 %59, label %64, label %60, !dbg !4303

; <label>:60:                                     ; preds = %58
  %61 = load i32, i32* %27, align 4, !dbg !4304, !tbaa !660
  %62 = load i32, i32* %30, align 8, !dbg !4306, !tbaa !761
  %63 = call i32 @luaK_codeABC(%struct.FuncState* %26, i32 0, i32 %61, i32 %62, i32 0) #5, !dbg !4307
  call void @luaK_reserveregs(%struct.FuncState* %26, i32 1) #5, !dbg !4308
  br label %64, !dbg !4309

; <label>:64:                                     ; preds = %58, %60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4310
  br label %65, !dbg !4311

; <label>:65:                                     ; preds = %64, %17
  %66 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !4312
  %67 = load %struct.lua_State*, %struct.lua_State** %66, align 8, !dbg !4312, !tbaa !611
  %68 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %67, i64 0, i32 15, !dbg !4312
  %69 = load i16, i16* %68, align 8, !dbg !4312, !tbaa !614
  %70 = zext i16 %69 to i32, !dbg !4312
  %71 = sub nsw i32 200, %70, !dbg !4312
  %72 = icmp slt i32 %71, %2, !dbg !4312
  br i1 %72, label %73, label %91, !dbg !4314

; <label>:73:                                     ; preds = %65
  %74 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !4312
  %75 = load %struct.FuncState*, %struct.FuncState** %74, align 8, !dbg !4312, !tbaa !654
  %76 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %75, i64 0, i32 0, !dbg !4319
  %77 = load %struct.Proto*, %struct.Proto** %76, align 8, !dbg !4319, !tbaa !585
  %78 = getelementptr inbounds %struct.Proto, %struct.Proto* %77, i64 0, i32 16, !dbg !4320
  %79 = load i32, i32* %78, align 8, !dbg !4320, !tbaa !2886
  %80 = icmp eq i32 %79, 0, !dbg !4321
  %81 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %75, i64 0, i32 4, !dbg !4322
  %82 = load %struct.lua_State*, %struct.lua_State** %81, align 8, !dbg !4322, !tbaa !728
  br i1 %80, label %83, label %85, !dbg !4323

; <label>:83:                                     ; preds = %73
  %84 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0)) #5, !dbg !4324
  br label %87, !dbg !4323

; <label>:85:                                     ; preds = %73
  %86 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %82, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %79, i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0)) #5, !dbg !4325
  br label %87, !dbg !4323

; <label>:87:                                     ; preds = %83, %85
  %88 = phi i8* [ %84, %83 ], [ %86, %85 ], !dbg !4323
  %89 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %75, i64 0, i32 3, !dbg !4327
  %90 = load %struct.LexState*, %struct.LexState** %89, align 8, !dbg !4327, !tbaa !725
  call void @luaX_lexerror(%struct.LexState* %90, i8* %88, i32 0) #5, !dbg !4328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4329
  br label %91, !dbg !4312

; <label>:91:                                     ; preds = %87, %65
  %92 = add nsw i32 %2, 1, !dbg !4330
  call fastcc void @assignment(%struct.LexState* nonnull %0, %struct.LHS_assign* nonnull %5, i32 %92) #6, !dbg !4332
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %18) #4, !dbg !4333
  br label %129, !dbg !4334

; <label>:93:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4240
  %94 = icmp eq i32 %15, 61, !dbg !4341
  br i1 %94, label %100, label %95, !dbg !4342

; <label>:95:                                     ; preds = %93
  %96 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !4346
  %97 = load %struct.lua_State*, %struct.lua_State** %96, align 8, !dbg !4346, !tbaa !611
  %98 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 61) #5, !dbg !4347
  %99 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %98) #5, !dbg !4348
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %99) #5, !dbg !4349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4350
  br label %100, !dbg !4351

; <label>:100:                                    ; preds = %93, %95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4352
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !4353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4354
  %101 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #5, !dbg !4363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4364
  %102 = load i32, i32* %14, align 8, !dbg !4368, !tbaa !624
  %103 = icmp eq i32 %102, 44, !dbg !4369
  br i1 %103, label %104, label %113, !dbg !4370

; <label>:104:                                    ; preds = %100
  %105 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br label %106, !dbg !4370

; <label>:106:                                    ; preds = %104, %106
  %107 = phi i32 [ 1, %104 ], [ %110, %106 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !4371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4372
  %108 = load %struct.FuncState*, %struct.FuncState** %105, align 8, !dbg !4373, !tbaa !654
  call void @luaK_exp2nextreg(%struct.FuncState* %108, %struct.expdesc* nonnull %4) #5, !dbg !4374
  %109 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #5, !dbg !4378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4379
  %110 = add nuw nsw i32 %107, 1, !dbg !4380
  %111 = load i32, i32* %14, align 8, !dbg !4368, !tbaa !624
  %112 = icmp eq i32 %111, 44, !dbg !4369
  br i1 %112, label %106, label %113, !dbg !4370, !llvm.loop !1416

; <label>:113:                                    ; preds = %106, %100
  %114 = phi i32 [ 1, %100 ], [ %110, %106 ], !dbg !4381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4382
  %115 = icmp eq i32 %114, %2, !dbg !4384
  br i1 %115, label %125, label %116, !dbg !4386

; <label>:116:                                    ; preds = %113
  call fastcc void @adjust_assign(%struct.LexState* nonnull %0, i32 %2, i32 %114, %struct.expdesc* nonnull %4) #6, !dbg !4387
  %117 = icmp sgt i32 %114, %2, !dbg !4389
  br i1 %117, label %118, label %129, !dbg !4391

; <label>:118:                                    ; preds = %116
  %119 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !4392
  %120 = load %struct.FuncState*, %struct.FuncState** %119, align 8, !dbg !4392, !tbaa !654
  %121 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %120, i64 0, i32 9, !dbg !4393
  %122 = load i32, i32* %121, align 4, !dbg !4394, !tbaa !660
  %123 = sub i32 %2, %114, !dbg !4394
  %124 = add i32 %123, %122, !dbg !4394
  store i32 %124, i32* %121, align 4, !dbg !4394, !tbaa !660
  br label %129, !dbg !4395

; <label>:125:                                    ; preds = %113
  %126 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !4396
  %127 = load %struct.FuncState*, %struct.FuncState** %126, align 8, !dbg !4396, !tbaa !654
  call void @luaK_setoneret(%struct.FuncState* %127, %struct.expdesc* nonnull %4) #5, !dbg !4398
  %128 = load %struct.FuncState*, %struct.FuncState** %126, align 8, !dbg !4399, !tbaa !654
  call void @luaK_storevar(%struct.FuncState* %128, %struct.expdesc* nonnull %7, %struct.expdesc* nonnull %4) #5, !dbg !4400
  br label %140

; <label>:129:                                    ; preds = %116, %118, %91
  %130 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !4401
  %131 = load %struct.FuncState*, %struct.FuncState** %130, align 8, !dbg !4401, !tbaa !654
  %132 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %131, i64 0, i32 9, !dbg !4402
  %133 = load i32, i32* %132, align 4, !dbg !4402, !tbaa !660
  %134 = add nsw i32 %133, -1, !dbg !4403
  %135 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2, !dbg !4408
  store i32 -1, i32* %135, align 8, !dbg !4409, !tbaa !1864
  %136 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3, !dbg !4410
  store i32 -1, i32* %136, align 4, !dbg !4411, !tbaa !994
  %137 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0, !dbg !4412
  store i32 12, i32* %137, align 8, !dbg !4413, !tbaa !985
  %138 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1, !dbg !4414
  %139 = bitcast %union.anon.3* %138 to i32*, !dbg !4415
  store i32 %134, i32* %139, align 8, !dbg !4416, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4417
  call void @luaK_storevar(%struct.FuncState* %131, %struct.expdesc* nonnull %7, %struct.expdesc* nonnull %4) #5, !dbg !4418
  br label %140, !dbg !4419

; <label>:140:                                    ; preds = %125, %129
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #4, !dbg !4419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4419
  ret void, !dbg !4419
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
!621 = !DILocation(line: 279, column: 1, scope: !605, inlinedAt: !608)
!622 = !DILocation(line: 1329, column: 18, scope: !594, inlinedAt: !602)
!623 = !DILocation(line: 1329, column: 41, scope: !594, inlinedAt: !602)
!624 = !{!573, !574, i64 16}
!625 = !DILocalVariable(name: "token", arg: 1, scope: !626, file: !3, line: 871, type: !203)
!626 = distinct !DISubprogram(name: "block_follow", scope: !3, file: !3, line: 871, type: !627, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !629)
!627 = !DISubroutineType(types: !628)
!628 = !{!203, !203}
!629 = !{!625}
!630 = !DILocation(line: 871, column: 30, scope: !626, inlinedAt: !631)
!631 = distinct !DILocation(line: 1329, column: 22, scope: !594, inlinedAt: !602)
!632 = !DILocation(line: 872, column: 3, scope: !626, inlinedAt: !631)
!633 = !DILocation(line: 878, column: 1, scope: !626, inlinedAt: !631)
!634 = !DILocation(line: 1330, column: 14, scope: !635, inlinedAt: !602)
!635 = distinct !DILexicalBlock(scope: !594, file: !3, line: 1329, column: 49)
!636 = !DILocalVariable(name: "ls", arg: 1, scope: !637, file: !3, line: 80, type: !597)
!637 = distinct !DISubprogram(name: "testnext", scope: !3, file: !3, line: 80, type: !638, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !640)
!638 = !DISubroutineType(types: !639)
!639 = !{!203, !597, !203}
!640 = !{!636, !641}
!641 = !DILocalVariable(name: "c", arg: 2, scope: !637, file: !3, line: 80, type: !203)
!642 = !DILocation(line: 80, column: 32, scope: !637, inlinedAt: !643)
!643 = distinct !DILocation(line: 1331, column: 5, scope: !635, inlinedAt: !602)
!644 = !DILocation(line: 80, column: 40, scope: !637, inlinedAt: !643)
!645 = !DILocation(line: 81, column: 13, scope: !646, inlinedAt: !643)
!646 = distinct !DILexicalBlock(scope: !637, file: !3, line: 81, column: 7)
!647 = !DILocation(line: 81, column: 19, scope: !646, inlinedAt: !643)
!648 = !DILocation(line: 81, column: 7, scope: !637, inlinedAt: !643)
!649 = !DILocation(line: 82, column: 5, scope: !650, inlinedAt: !643)
!650 = distinct !DILexicalBlock(scope: !646, file: !3, line: 81, column: 25)
!651 = !DILocation(line: 83, column: 5, scope: !650, inlinedAt: !643)
!652 = !DILocation(line: 86, column: 1, scope: !637, inlinedAt: !643)
!653 = !DILocation(line: 1334, column: 27, scope: !635, inlinedAt: !602)
!654 = !{!573, !578, i64 48}
!655 = !DILocation(line: 1334, column: 31, scope: !635, inlinedAt: !602)
!656 = !{!586, !575, i64 74}
!657 = !DILocation(line: 1334, column: 23, scope: !635, inlinedAt: !602)
!658 = !DILocation(line: 1334, column: 13, scope: !635, inlinedAt: !602)
!659 = !DILocation(line: 1334, column: 21, scope: !635, inlinedAt: !602)
!660 = !{!586, !574, i64 60}
!661 = !DILocation(line: 1329, column: 11, scope: !594, inlinedAt: !602)
!662 = distinct !{!662, !663, !664}
!663 = !DILocation(line: 1329, column: 3, scope: !594)
!664 = !DILocation(line: 1335, column: 3, scope: !594)
!665 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !673)
!666 = distinct !DILexicalBlock(scope: !667, file: !3, line: 90, column: 7)
!667 = distinct !DISubprogram(name: "check", scope: !3, file: !3, line: 89, type: !668, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !670)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !597, !203}
!670 = !{!671, !672}
!671 = !DILocalVariable(name: "ls", arg: 1, scope: !667, file: !3, line: 89, type: !597)
!672 = !DILocalVariable(name: "c", arg: 2, scope: !667, file: !3, line: 89, type: !203)
!673 = distinct !DILocation(line: 392, column: 3, scope: !476)
!674 = !DILocation(line: 1336, column: 3, scope: !594, inlinedAt: !602)
!675 = !DILocation(line: 1337, column: 1, scope: !594, inlinedAt: !602)
!676 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !673)
!677 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !673)
!678 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !673)
!679 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !673)
!680 = !DILocalVariable(name: "ls", arg: 1, scope: !681, file: !3, line: 65, type: !597)
!681 = distinct !DISubprogram(name: "error_expected", scope: !3, file: !3, line: 65, type: !668, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !682)
!682 = !{!680, !683}
!683 = !DILocalVariable(name: "token", arg: 2, scope: !681, file: !3, line: 65, type: !203)
!684 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !685)
!685 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !673)
!686 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !685)
!687 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !685)
!688 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !685)
!689 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !685)
!690 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !685)
!691 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !673)
!692 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !673)
!693 = !DILocation(line: 393, column: 3, scope: !476)
!694 = !DILocation(line: 397, column: 20, scope: !476)
!695 = !DILocation(line: 398, column: 1, scope: !476)
!696 = !DILocation(line: 397, column: 3, scope: !476)
!697 = distinct !DISubprogram(name: "open_func", scope: !3, file: !3, line: 328, type: !698, isLocal: true, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !702)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !597, !700}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "FuncState", file: !41, line: 75, baseType: !519)
!702 = !{!703, !704, !705, !706, !707, !709}
!703 = !DILocalVariable(name: "ls", arg: 1, scope: !697, file: !3, line: 328, type: !597)
!704 = !DILocalVariable(name: "fs", arg: 2, scope: !697, file: !3, line: 328, type: !700)
!705 = !DILocalVariable(name: "L", scope: !697, file: !3, line: 329, type: !247)
!706 = !DILocalVariable(name: "f", scope: !697, file: !3, line: 330, type: !459)
!707 = !DILocalVariable(name: "i_o", scope: !708, file: !3, line: 349, type: !189)
!708 = distinct !DILexicalBlock(scope: !697, file: !3, line: 349, column: 3)
!709 = !DILocalVariable(name: "i_o", scope: !710, file: !3, line: 351, type: !189)
!710 = distinct !DILexicalBlock(scope: !697, file: !3, line: 351, column: 3)
!711 = !DILocation(line: 328, column: 34, scope: !697)
!712 = !DILocation(line: 328, column: 49, scope: !697)
!713 = !DILocation(line: 329, column: 22, scope: !697)
!714 = !DILocation(line: 329, column: 14, scope: !697)
!715 = !DILocation(line: 330, column: 14, scope: !697)
!716 = !DILocation(line: 330, column: 10, scope: !697)
!717 = !DILocation(line: 331, column: 7, scope: !697)
!718 = !DILocation(line: 331, column: 9, scope: !697)
!719 = !DILocation(line: 332, column: 18, scope: !697)
!720 = !DILocation(line: 332, column: 7, scope: !697)
!721 = !DILocation(line: 332, column: 12, scope: !697)
!722 = !{!586, !578, i64 16}
!723 = !DILocation(line: 333, column: 7, scope: !697)
!724 = !DILocation(line: 333, column: 10, scope: !697)
!725 = !{!586, !578, i64 24}
!726 = !DILocation(line: 334, column: 7, scope: !697)
!727 = !DILocation(line: 334, column: 9, scope: !697)
!728 = !{!586, !578, i64 32}
!729 = !DILocation(line: 335, column: 10, scope: !697)
!730 = !DILocation(line: 336, column: 7, scope: !697)
!731 = !DILocation(line: 336, column: 10, scope: !697)
!732 = !{!574, !574, i64 0}
!733 = !DILocation(line: 340, column: 7, scope: !697)
!734 = !DILocation(line: 340, column: 10, scope: !697)
!735 = !{!586, !574, i64 64}
!736 = !DILocation(line: 341, column: 7, scope: !697)
!737 = !DILocation(line: 341, column: 10, scope: !697)
!738 = !{!586, !574, i64 68}
!739 = !DILocation(line: 342, column: 7, scope: !697)
!740 = !DILocation(line: 342, column: 16, scope: !697)
!741 = !{!586, !587, i64 72}
!742 = !DILocation(line: 343, column: 7, scope: !697)
!743 = !DILocation(line: 343, column: 15, scope: !697)
!744 = !DILocation(line: 344, column: 7, scope: !697)
!745 = !DILocation(line: 344, column: 10, scope: !697)
!746 = !{!586, !578, i64 40}
!747 = !DILocation(line: 345, column: 19, scope: !697)
!748 = !{!573, !578, i64 80}
!749 = !DILocation(line: 345, column: 6, scope: !697)
!750 = !DILocation(line: 345, column: 13, scope: !697)
!751 = !{!591, !578, i64 64}
!752 = !DILocation(line: 346, column: 6, scope: !697)
!753 = !DILocation(line: 346, column: 19, scope: !697)
!754 = !{!591, !575, i64 115}
!755 = !DILocation(line: 347, column: 11, scope: !697)
!756 = !DILocation(line: 347, column: 7, scope: !697)
!757 = !DILocation(line: 347, column: 9, scope: !697)
!758 = !{!586, !578, i64 8}
!759 = !DILocation(line: 349, column: 3, scope: !708)
!760 = !{!615, !578, i64 16}
!761 = !{!575, !575, i64 0}
!762 = !{!616, !574, i64 8}
!763 = !DILocation(line: 350, column: 3, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 350, column: 3)
!765 = distinct !DILexicalBlock(scope: !697, file: !3, line: 350, column: 3)
!766 = !{!615, !578, i64 56}
!767 = !DILocation(line: 350, column: 3, scope: !765)
!768 = !DILocation(line: 351, column: 3, scope: !710)
!769 = !DILocation(line: 352, column: 3, scope: !770)
!770 = distinct !DILexicalBlock(scope: !771, file: !3, line: 352, column: 3)
!771 = distinct !DILexicalBlock(scope: !697, file: !3, line: 352, column: 3)
!772 = !DILocation(line: 352, column: 3, scope: !771)
!773 = !DILocation(line: 353, column: 1, scope: !697)
!774 = distinct !DISubprogram(name: "close_func", scope: !3, file: !3, line: 356, type: !595, isLocal: true, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !775)
!775 = !{!776, !777, !778, !779}
!776 = !DILocalVariable(name: "ls", arg: 1, scope: !774, file: !3, line: 356, type: !597)
!777 = !DILocalVariable(name: "L", scope: !774, file: !3, line: 357, type: !247)
!778 = !DILocalVariable(name: "fs", scope: !774, file: !3, line: 358, type: !700)
!779 = !DILocalVariable(name: "f", scope: !774, file: !3, line: 359, type: !459)
!780 = !DILocation(line: 356, column: 35, scope: !774)
!781 = !DILocation(line: 357, column: 22, scope: !774)
!782 = !DILocation(line: 357, column: 14, scope: !774)
!783 = !DILocation(line: 358, column: 23, scope: !774)
!784 = !DILocation(line: 358, column: 14, scope: !774)
!785 = !DILocation(line: 359, column: 18, scope: !774)
!786 = !DILocation(line: 359, column: 10, scope: !774)
!787 = !DILocalVariable(name: "ls", arg: 1, scope: !788, file: !3, line: 176, type: !597)
!788 = distinct !DISubprogram(name: "removevars", scope: !3, file: !3, line: 176, type: !668, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !789)
!789 = !{!787, !790, !791}
!790 = !DILocalVariable(name: "tolevel", arg: 2, scope: !788, file: !3, line: 176, type: !203)
!791 = !DILocalVariable(name: "fs", scope: !788, file: !3, line: 177, type: !700)
!792 = !DILocation(line: 176, column: 35, scope: !788, inlinedAt: !793)
!793 = distinct !DILocation(line: 360, column: 3, scope: !774)
!794 = !DILocation(line: 176, column: 43, scope: !788, inlinedAt: !793)
!795 = !DILocation(line: 177, column: 14, scope: !788, inlinedAt: !793)
!796 = !DILocation(line: 178, column: 14, scope: !788, inlinedAt: !793)
!797 = !DILocation(line: 178, column: 22, scope: !788, inlinedAt: !793)
!798 = !DILocation(line: 178, column: 3, scope: !788, inlinedAt: !793)
!799 = !{!586, !574, i64 48}
!800 = !{!591, !578, i64 48}
!801 = !DILocation(line: 179, column: 5, scope: !788, inlinedAt: !793)
!802 = !{!587, !587, i64 0}
!803 = !DILocation(line: 179, column: 34, scope: !788, inlinedAt: !793)
!804 = !DILocation(line: 179, column: 40, scope: !788, inlinedAt: !793)
!805 = !{!806, !574, i64 12}
!806 = !{!"LocVar", !578, i64 0, !574, i64 8, !574, i64 12}
!807 = distinct !{!807, !808, !809}
!808 = !DILocation(line: 178, column: 3, scope: !788)
!809 = !DILocation(line: 179, column: 46, scope: !788)
!810 = !DILocation(line: 180, column: 1, scope: !788, inlinedAt: !793)
!811 = !DILocation(line: 361, column: 3, scope: !774)
!812 = !DILocation(line: 362, column: 3, scope: !774)
!813 = !{!591, !578, i64 24}
!814 = !{!591, !574, i64 80}
!815 = !DILocation(line: 363, column: 6, scope: !774)
!816 = !DILocation(line: 363, column: 21, scope: !774)
!817 = !DILocation(line: 363, column: 15, scope: !774)
!818 = !DILocation(line: 364, column: 3, scope: !774)
!819 = !{!591, !578, i64 40}
!820 = !{!591, !574, i64 84}
!821 = !DILocation(line: 365, column: 6, scope: !774)
!822 = !DILocation(line: 365, column: 25, scope: !774)
!823 = !DILocation(line: 365, column: 19, scope: !774)
!824 = !DILocation(line: 366, column: 3, scope: !774)
!825 = !{!591, !578, i64 16}
!826 = !{!591, !574, i64 76}
!827 = !DILocation(line: 367, column: 6, scope: !774)
!828 = !DILocation(line: 367, column: 18, scope: !774)
!829 = !DILocation(line: 367, column: 12, scope: !774)
!830 = !DILocation(line: 368, column: 3, scope: !774)
!831 = !{!591, !578, i64 32}
!832 = !{!591, !574, i64 88}
!833 = !DILocation(line: 369, column: 6, scope: !774)
!834 = !DILocation(line: 369, column: 18, scope: !774)
!835 = !DILocation(line: 369, column: 12, scope: !774)
!836 = !DILocation(line: 370, column: 3, scope: !774)
!837 = !{!591, !574, i64 92}
!838 = !DILocation(line: 371, column: 6, scope: !774)
!839 = !DILocation(line: 371, column: 24, scope: !774)
!840 = !DILocation(line: 371, column: 20, scope: !774)
!841 = !DILocation(line: 371, column: 18, scope: !774)
!842 = !DILocation(line: 372, column: 3, scope: !774)
!843 = !{!591, !575, i64 112}
!844 = !{!591, !578, i64 56}
!845 = !{!591, !574, i64 72}
!846 = !DILocation(line: 373, column: 24, scope: !774)
!847 = !DILocation(line: 373, column: 21, scope: !774)
!848 = !DILocation(line: 373, column: 19, scope: !774)
!849 = !DILocation(line: 376, column: 16, scope: !774)
!850 = !DILocation(line: 376, column: 10, scope: !774)
!851 = !DILocalVariable(name: "ls", arg: 1, scope: !852, file: !3, line: 57, type: !597)
!852 = distinct !DISubprogram(name: "anchor_token", scope: !3, file: !3, line: 57, type: !595, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !853)
!853 = !{!851, !854}
!854 = !DILocalVariable(name: "ts", scope: !855, file: !3, line: 59, type: !332)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 58, column: 59)
!856 = distinct !DILexicalBlock(scope: !852, file: !3, line: 58, column: 7)
!857 = !DILocation(line: 57, column: 37, scope: !852, inlinedAt: !858)
!858 = distinct !DILocation(line: 378, column: 11, scope: !859)
!859 = distinct !DILexicalBlock(scope: !774, file: !3, line: 378, column: 7)
!860 = !DILocation(line: 58, column: 13, scope: !856, inlinedAt: !858)
!861 = !DILocation(line: 58, column: 30, scope: !856, inlinedAt: !858)
!862 = !DILocation(line: 59, column: 25, scope: !855, inlinedAt: !858)
!863 = !DILocation(line: 59, column: 33, scope: !855, inlinedAt: !858)
!864 = !DILocation(line: 59, column: 14, scope: !855, inlinedAt: !858)
!865 = !DILocation(line: 60, column: 24, scope: !855, inlinedAt: !858)
!866 = !DILocation(line: 60, column: 44, scope: !855, inlinedAt: !858)
!867 = !DILocation(line: 60, column: 5, scope: !855, inlinedAt: !858)
!868 = !DILocation(line: 61, column: 3, scope: !855, inlinedAt: !858)
!869 = !DILocation(line: 62, column: 1, scope: !852, inlinedAt: !858)
!870 = !DILocation(line: 379, column: 6, scope: !774)
!871 = !DILocation(line: 379, column: 10, scope: !774)
!872 = !DILocation(line: 380, column: 1, scope: !774)
!873 = distinct !DISubprogram(name: "statement", scope: !3, file: !3, line: 1271, type: !874, isLocal: true, isDefinition: true, scopeLine: 1271, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !876)
!874 = !DISubroutineType(types: !875)
!875 = !{!203, !597}
!876 = !{!877, !878}
!877 = !DILocalVariable(name: "ls", arg: 1, scope: !873, file: !3, line: 1271, type: !597)
!878 = !DILocalVariable(name: "line", scope: !873, file: !3, line: 1272, type: !203)
!879 = !DILocation(line: 1271, column: 33, scope: !873)
!880 = !DILocation(line: 1272, column: 18, scope: !873)
!881 = !{!573, !574, i64 4}
!882 = !DILocation(line: 1272, column: 7, scope: !873)
!883 = !DILocation(line: 1273, column: 17, scope: !873)
!884 = !DILocation(line: 1273, column: 3, scope: !873)
!885 = !DILocalVariable(name: "ls", arg: 1, scope: !886, file: !3, line: 1141, type: !597)
!886 = distinct !DISubprogram(name: "ifstat", scope: !3, file: !3, line: 1141, type: !668, isLocal: true, isDefinition: true, scopeLine: 1141, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !887)
!887 = !{!885, !888, !889, !890, !891}
!888 = !DILocalVariable(name: "line", arg: 2, scope: !886, file: !3, line: 1141, type: !203)
!889 = !DILocalVariable(name: "fs", scope: !886, file: !3, line: 1143, type: !700)
!890 = !DILocalVariable(name: "flist", scope: !886, file: !3, line: 1144, type: !203)
!891 = !DILocalVariable(name: "escapelist", scope: !886, file: !3, line: 1145, type: !203)
!892 = !DILocation(line: 1141, column: 31, scope: !886, inlinedAt: !893)
!893 = distinct !DILocation(line: 1275, column: 7, scope: !894)
!894 = distinct !DILexicalBlock(scope: !895, file: !3, line: 1274, column: 17)
!895 = distinct !DILexicalBlock(scope: !873, file: !3, line: 1273, column: 24)
!896 = !DILocation(line: 1141, column: 39, scope: !886, inlinedAt: !893)
!897 = !DILocation(line: 1143, column: 23, scope: !886, inlinedAt: !893)
!898 = !DILocation(line: 1143, column: 14, scope: !886, inlinedAt: !893)
!899 = !DILocation(line: 1145, column: 3, scope: !886, inlinedAt: !893)
!900 = !DILocation(line: 1145, column: 7, scope: !886, inlinedAt: !893)
!901 = !DILocation(line: 1146, column: 11, scope: !886, inlinedAt: !893)
!902 = !DILocation(line: 1144, column: 7, scope: !886, inlinedAt: !893)
!903 = !DILocation(line: 1147, column: 3, scope: !886, inlinedAt: !893)
!904 = !DILocation(line: 0, scope: !905, inlinedAt: !893)
!905 = distinct !DILexicalBlock(scope: !886, file: !3, line: 1147, column: 36)
!906 = !DILocation(line: 1147, column: 16, scope: !886, inlinedAt: !893)
!907 = !DILocation(line: 1148, column: 34, scope: !905, inlinedAt: !893)
!908 = !DILocation(line: 1148, column: 5, scope: !905, inlinedAt: !893)
!909 = !DILocation(line: 1149, column: 5, scope: !905, inlinedAt: !893)
!910 = !DILocation(line: 1150, column: 13, scope: !905, inlinedAt: !893)
!911 = distinct !{!911, !912, !913}
!912 = !DILocation(line: 1147, column: 3, scope: !886)
!913 = !DILocation(line: 1151, column: 3, scope: !886)
!914 = !DILocation(line: 1153, column: 34, scope: !915, inlinedAt: !893)
!915 = distinct !DILexicalBlock(scope: !916, file: !3, line: 1152, column: 31)
!916 = distinct !DILexicalBlock(scope: !886, file: !3, line: 1152, column: 7)
!917 = !DILocation(line: 1153, column: 5, scope: !915, inlinedAt: !893)
!918 = !DILocation(line: 1154, column: 5, scope: !915, inlinedAt: !893)
!919 = !DILocation(line: 1155, column: 5, scope: !915, inlinedAt: !893)
!920 = !DILocation(line: 1156, column: 5, scope: !915, inlinedAt: !893)
!921 = !DILocation(line: 1157, column: 3, scope: !915, inlinedAt: !893)
!922 = !DILocation(line: 1159, column: 5, scope: !916, inlinedAt: !893)
!923 = !DILocation(line: 1160, column: 24, scope: !886, inlinedAt: !893)
!924 = !DILocation(line: 1160, column: 3, scope: !886, inlinedAt: !893)
!925 = !DILocation(line: 1161, column: 3, scope: !886, inlinedAt: !893)
!926 = !DILocation(line: 1162, column: 1, scope: !886, inlinedAt: !893)
!927 = !DILocation(line: 1276, column: 7, scope: !894)
!928 = !DILocalVariable(name: "ls", arg: 1, scope: !929, file: !3, line: 991, type: !597)
!929 = distinct !DISubprogram(name: "whilestat", scope: !3, file: !3, line: 991, type: !668, isLocal: true, isDefinition: true, scopeLine: 991, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !930)
!930 = !{!928, !931, !932, !933, !934, !935}
!931 = !DILocalVariable(name: "line", arg: 2, scope: !929, file: !3, line: 991, type: !203)
!932 = !DILocalVariable(name: "fs", scope: !929, file: !3, line: 993, type: !700)
!933 = !DILocalVariable(name: "whileinit", scope: !929, file: !3, line: 994, type: !203)
!934 = !DILocalVariable(name: "condexit", scope: !929, file: !3, line: 995, type: !203)
!935 = !DILocalVariable(name: "bl", scope: !929, file: !3, line: 996, type: !936)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockCnt", file: !3, line: 46, baseType: !531)
!937 = !DILocation(line: 991, column: 34, scope: !929, inlinedAt: !938)
!938 = distinct !DILocation(line: 1279, column: 7, scope: !939)
!939 = distinct !DILexicalBlock(scope: !895, file: !3, line: 1278, column: 20)
!940 = !DILocation(line: 991, column: 42, scope: !929, inlinedAt: !938)
!941 = !DILocation(line: 993, column: 23, scope: !929, inlinedAt: !938)
!942 = !DILocation(line: 993, column: 14, scope: !929, inlinedAt: !938)
!943 = !DILocation(line: 996, column: 3, scope: !929, inlinedAt: !938)
!944 = !DILocation(line: 997, column: 3, scope: !929, inlinedAt: !938)
!945 = !DILocation(line: 998, column: 15, scope: !929, inlinedAt: !938)
!946 = !DILocation(line: 994, column: 7, scope: !929, inlinedAt: !938)
!947 = !DILocalVariable(name: "ls", arg: 1, scope: !948, file: !3, line: 965, type: !597)
!948 = distinct !DISubprogram(name: "cond", scope: !3, file: !3, line: 965, type: !874, isLocal: true, isDefinition: true, scopeLine: 965, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !949)
!949 = !{!947, !950}
!950 = !DILocalVariable(name: "v", scope: !948, file: !3, line: 967, type: !951)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "expdesc", file: !41, line: 45, baseType: !952)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "expdesc", file: !41, line: 37, size: 192, elements: !953)
!953 = !{!954, !956, !965, !966}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !952, file: !41, line: 38, baseType: !955, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "expkind", file: !41, line: 35, baseType: !40)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !952, file: !41, line: 42, baseType: !957, size: 64, offset: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !952, file: !41, line: 39, size: 64, elements: !958)
!958 = !{!959, !964}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !957, file: !41, line: 40, baseType: !960, size: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !957, file: !41, line: 40, size: 64, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !960, file: !41, line: 40, baseType: !203, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !960, file: !41, line: 40, baseType: !203, size: 32, offset: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "nval", scope: !957, file: !41, line: 41, baseType: !200, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !952, file: !41, line: 43, baseType: !203, size: 32, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !952, file: !41, line: 44, baseType: !203, size: 32, offset: 160)
!967 = !DILocation(line: 965, column: 28, scope: !948, inlinedAt: !968)
!968 = distinct !DILocation(line: 999, column: 14, scope: !929, inlinedAt: !938)
!969 = !DILocation(line: 967, column: 3, scope: !948, inlinedAt: !968)
!970 = !DILocation(line: 967, column: 11, scope: !948, inlinedAt: !968)
!971 = !DILocalVariable(name: "ls", arg: 1, scope: !972, file: !3, line: 856, type: !597)
!972 = distinct !DISubprogram(name: "expr", scope: !3, file: !3, line: 856, type: !973, isLocal: true, isDefinition: true, scopeLine: 856, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !976)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !597, !975}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!976 = !{!971, !977}
!977 = !DILocalVariable(name: "v", arg: 2, scope: !972, file: !3, line: 856, type: !975)
!978 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !979)
!979 = distinct !DILocation(line: 968, column: 3, scope: !948, inlinedAt: !968)
!980 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !979)
!981 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !979)
!982 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !979)
!983 = !DILocation(line: 969, column: 9, scope: !984, inlinedAt: !968)
!984 = distinct !DILexicalBlock(scope: !948, file: !3, line: 969, column: 7)
!985 = !{!986, !575, i64 0}
!986 = !{!"expdesc", !575, i64 0, !575, i64 8, !574, i64 16, !574, i64 20}
!987 = !DILocation(line: 969, column: 11, scope: !984, inlinedAt: !968)
!988 = !DILocation(line: 969, column: 7, scope: !948, inlinedAt: !968)
!989 = !DILocation(line: 969, column: 24, scope: !984, inlinedAt: !968)
!990 = !DILocation(line: 969, column: 20, scope: !984, inlinedAt: !968)
!991 = !DILocation(line: 970, column: 21, scope: !948, inlinedAt: !968)
!992 = !DILocation(line: 970, column: 3, scope: !948, inlinedAt: !968)
!993 = !DILocation(line: 971, column: 12, scope: !948, inlinedAt: !968)
!994 = !{!986, !574, i64 20}
!995 = !DILocation(line: 972, column: 1, scope: !948, inlinedAt: !968)
!996 = !DILocation(line: 971, column: 3, scope: !948, inlinedAt: !968)
!997 = !DILocation(line: 995, column: 7, scope: !929, inlinedAt: !938)
!998 = !DILocation(line: 996, column: 12, scope: !929, inlinedAt: !938)
!999 = !DILocalVariable(name: "fs", arg: 1, scope: !1000, file: !3, line: 285, type: !700)
!1000 = distinct !DISubprogram(name: "enterblock", scope: !3, file: !3, line: 285, type: !1001, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1004)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{null, !700, !1003, !137}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!1004 = !{!999, !1005, !1006}
!1005 = !DILocalVariable(name: "bl", arg: 2, scope: !1000, file: !3, line: 285, type: !1003)
!1006 = !DILocalVariable(name: "isbreakable", arg: 3, scope: !1000, file: !3, line: 285, type: !137)
!1007 = !DILocation(line: 285, column: 36, scope: !1000, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 1000, column: 3, scope: !929, inlinedAt: !938)
!1009 = !DILocation(line: 285, column: 50, scope: !1000, inlinedAt: !1008)
!1010 = !DILocation(line: 285, column: 62, scope: !1000, inlinedAt: !1008)
!1011 = !DILocation(line: 286, column: 7, scope: !1000, inlinedAt: !1008)
!1012 = !DILocation(line: 286, column: 17, scope: !1000, inlinedAt: !1008)
!1013 = !{!1014, !574, i64 8}
!1014 = !{!"BlockCnt", !578, i64 0, !574, i64 8, !575, i64 12, !575, i64 13, !575, i64 14}
!1015 = !DILocation(line: 287, column: 7, scope: !1000, inlinedAt: !1008)
!1016 = !DILocation(line: 287, column: 19, scope: !1000, inlinedAt: !1008)
!1017 = !{!1014, !575, i64 14}
!1018 = !DILocation(line: 288, column: 21, scope: !1000, inlinedAt: !1008)
!1019 = !DILocation(line: 288, column: 7, scope: !1000, inlinedAt: !1008)
!1020 = !DILocation(line: 288, column: 15, scope: !1000, inlinedAt: !1008)
!1021 = !{!1014, !575, i64 12}
!1022 = !DILocation(line: 289, column: 7, scope: !1000, inlinedAt: !1008)
!1023 = !DILocation(line: 289, column: 13, scope: !1000, inlinedAt: !1008)
!1024 = !{!1014, !575, i64 13}
!1025 = !DILocation(line: 290, column: 22, scope: !1000, inlinedAt: !1008)
!1026 = !DILocation(line: 290, column: 16, scope: !1000, inlinedAt: !1008)
!1027 = !{!1014, !578, i64 0}
!1028 = !DILocation(line: 291, column: 10, scope: !1000, inlinedAt: !1008)
!1029 = !DILocation(line: 293, column: 1, scope: !1000, inlinedAt: !1008)
!1030 = !DILocalVariable(name: "ls", arg: 1, scope: !1031, file: !3, line: 94, type: !597)
!1031 = distinct !DISubprogram(name: "checknext", scope: !3, file: !3, line: 94, type: !668, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1032)
!1032 = !{!1030, !1033}
!1033 = !DILocalVariable(name: "c", arg: 2, scope: !1031, file: !3, line: 94, type: !203)
!1034 = !DILocation(line: 94, column: 34, scope: !1031, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 1001, column: 3, scope: !929, inlinedAt: !938)
!1036 = !DILocation(line: 94, column: 42, scope: !1031, inlinedAt: !1035)
!1037 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 95, column: 3, scope: !1031, inlinedAt: !1035)
!1039 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !1038)
!1040 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !1038)
!1041 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !1038)
!1042 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !1038)
!1043 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !1038)
!1045 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !1044)
!1046 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !1044)
!1047 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !1044)
!1048 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !1044)
!1049 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !1044)
!1050 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !1044)
!1051 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !1038)
!1052 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !1038)
!1053 = !DILocation(line: 96, column: 3, scope: !1031, inlinedAt: !1035)
!1054 = !DILocation(line: 97, column: 1, scope: !1031, inlinedAt: !1035)
!1055 = !DILocation(line: 1002, column: 3, scope: !929, inlinedAt: !938)
!1056 = !DILocation(line: 1003, column: 22, scope: !929, inlinedAt: !938)
!1057 = !DILocation(line: 1003, column: 3, scope: !929, inlinedAt: !938)
!1058 = !DILocation(line: 1004, column: 3, scope: !929, inlinedAt: !938)
!1059 = !DILocalVariable(name: "fs", arg: 1, scope: !1060, file: !3, line: 296, type: !700)
!1060 = distinct !DISubprogram(name: "leaveblock", scope: !3, file: !3, line: 296, type: !1061, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1063)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{null, !700}
!1063 = !{!1059, !1064}
!1064 = !DILocalVariable(name: "bl", scope: !1060, file: !3, line: 297, type: !1003)
!1065 = !DILocation(line: 296, column: 36, scope: !1060, inlinedAt: !1066)
!1066 = distinct !DILocation(line: 1005, column: 3, scope: !929, inlinedAt: !938)
!1067 = !DILocation(line: 297, column: 22, scope: !1060, inlinedAt: !1066)
!1068 = !DILocation(line: 297, column: 13, scope: !1060, inlinedAt: !1066)
!1069 = !DILocation(line: 298, column: 16, scope: !1060, inlinedAt: !1066)
!1070 = !DILocation(line: 298, column: 10, scope: !1060, inlinedAt: !1066)
!1071 = !DILocation(line: 299, column: 18, scope: !1060, inlinedAt: !1066)
!1072 = !DILocation(line: 299, column: 26, scope: !1060, inlinedAt: !1066)
!1073 = !DILocation(line: 299, column: 22, scope: !1060, inlinedAt: !1066)
!1074 = !DILocation(line: 176, column: 35, scope: !788, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 299, column: 3, scope: !1060, inlinedAt: !1066)
!1076 = !DILocation(line: 176, column: 43, scope: !788, inlinedAt: !1075)
!1077 = !DILocation(line: 177, column: 23, scope: !788, inlinedAt: !1075)
!1078 = !DILocation(line: 177, column: 14, scope: !788, inlinedAt: !1075)
!1079 = !DILocation(line: 178, column: 14, scope: !788, inlinedAt: !1075)
!1080 = !DILocation(line: 178, column: 22, scope: !788, inlinedAt: !1075)
!1081 = !DILocation(line: 178, column: 3, scope: !788, inlinedAt: !1075)
!1082 = !DILocation(line: 179, column: 5, scope: !788, inlinedAt: !1075)
!1083 = !DILocation(line: 179, column: 34, scope: !788, inlinedAt: !1075)
!1084 = !DILocation(line: 179, column: 40, scope: !788, inlinedAt: !1075)
!1085 = !DILocation(line: 180, column: 1, scope: !788, inlinedAt: !1075)
!1086 = !DILocation(line: 300, column: 11, scope: !1087, inlinedAt: !1066)
!1087 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 300, column: 7)
!1088 = !DILocation(line: 300, column: 7, scope: !1087, inlinedAt: !1066)
!1089 = !DILocation(line: 300, column: 7, scope: !1060, inlinedAt: !1066)
!1090 = !DILocation(line: 301, column: 5, scope: !1087, inlinedAt: !1066)
!1091 = !DILocation(line: 305, column: 21, scope: !1060, inlinedAt: !1066)
!1092 = !DILocation(line: 305, column: 17, scope: !1060, inlinedAt: !1066)
!1093 = !DILocation(line: 305, column: 7, scope: !1060, inlinedAt: !1066)
!1094 = !DILocation(line: 305, column: 15, scope: !1060, inlinedAt: !1066)
!1095 = !DILocation(line: 306, column: 28, scope: !1060, inlinedAt: !1066)
!1096 = !DILocation(line: 306, column: 3, scope: !1060, inlinedAt: !1066)
!1097 = !DILocation(line: 307, column: 1, scope: !1060, inlinedAt: !1066)
!1098 = !DILocation(line: 1006, column: 3, scope: !929, inlinedAt: !938)
!1099 = !DILocation(line: 1007, column: 1, scope: !929, inlinedAt: !938)
!1100 = !DILocation(line: 1280, column: 7, scope: !939)
!1101 = !DILocation(line: 1283, column: 7, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !895, file: !3, line: 1282, column: 17)
!1103 = !DILocation(line: 1284, column: 7, scope: !1102)
!1104 = !DILocation(line: 1285, column: 7, scope: !1102)
!1105 = !DILocation(line: 1286, column: 7, scope: !1102)
!1106 = !DILocalVariable(name: "ls", arg: 1, scope: !1107, file: !3, line: 1112, type: !597)
!1107 = distinct !DISubprogram(name: "forstat", scope: !3, file: !3, line: 1112, type: !668, isLocal: true, isDefinition: true, scopeLine: 1112, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1108)
!1108 = !{!1106, !1109, !1110, !1111, !1112}
!1109 = !DILocalVariable(name: "line", arg: 2, scope: !1107, file: !3, line: 1112, type: !203)
!1110 = !DILocalVariable(name: "fs", scope: !1107, file: !3, line: 1114, type: !700)
!1111 = !DILocalVariable(name: "varname", scope: !1107, file: !3, line: 1115, type: !332)
!1112 = !DILocalVariable(name: "bl", scope: !1107, file: !3, line: 1116, type: !936)
!1113 = !DILocation(line: 1112, column: 32, scope: !1107, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 1289, column: 7, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !895, file: !3, line: 1288, column: 18)
!1116 = !DILocation(line: 1112, column: 40, scope: !1107, inlinedAt: !1114)
!1117 = !DILocation(line: 1114, column: 23, scope: !1107, inlinedAt: !1114)
!1118 = !DILocation(line: 1114, column: 14, scope: !1107, inlinedAt: !1114)
!1119 = !DILocation(line: 1116, column: 3, scope: !1107, inlinedAt: !1114)
!1120 = !DILocation(line: 1116, column: 12, scope: !1107, inlinedAt: !1114)
!1121 = !DILocation(line: 285, column: 36, scope: !1000, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 1117, column: 3, scope: !1107, inlinedAt: !1114)
!1123 = !DILocation(line: 285, column: 50, scope: !1000, inlinedAt: !1122)
!1124 = !DILocation(line: 285, column: 62, scope: !1000, inlinedAt: !1122)
!1125 = !DILocation(line: 286, column: 7, scope: !1000, inlinedAt: !1122)
!1126 = !DILocation(line: 286, column: 17, scope: !1000, inlinedAt: !1122)
!1127 = !DILocation(line: 287, column: 7, scope: !1000, inlinedAt: !1122)
!1128 = !DILocation(line: 287, column: 19, scope: !1000, inlinedAt: !1122)
!1129 = !DILocation(line: 288, column: 21, scope: !1000, inlinedAt: !1122)
!1130 = !DILocation(line: 288, column: 7, scope: !1000, inlinedAt: !1122)
!1131 = !DILocation(line: 288, column: 15, scope: !1000, inlinedAt: !1122)
!1132 = !DILocation(line: 289, column: 7, scope: !1000, inlinedAt: !1122)
!1133 = !DILocation(line: 289, column: 13, scope: !1000, inlinedAt: !1122)
!1134 = !DILocation(line: 290, column: 22, scope: !1000, inlinedAt: !1122)
!1135 = !DILocation(line: 290, column: 16, scope: !1000, inlinedAt: !1122)
!1136 = !DILocation(line: 291, column: 10, scope: !1000, inlinedAt: !1122)
!1137 = !DILocation(line: 293, column: 1, scope: !1000, inlinedAt: !1122)
!1138 = !DILocation(line: 1118, column: 3, scope: !1107, inlinedAt: !1114)
!1139 = !DILocalVariable(name: "ls", arg: 1, scope: !1140, file: !3, line: 117, type: !597)
!1140 = distinct !DISubprogram(name: "str_checkname", scope: !3, file: !3, line: 117, type: !1141, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1143)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!332, !597}
!1143 = !{!1139, !1144}
!1144 = !DILocalVariable(name: "ts", scope: !1140, file: !3, line: 118, type: !332)
!1145 = !DILocation(line: 117, column: 42, scope: !1140, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 1119, column: 13, scope: !1107, inlinedAt: !1114)
!1147 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 119, column: 3, scope: !1140, inlinedAt: !1146)
!1149 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !1148)
!1150 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !1148)
!1151 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !1148)
!1152 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !1148)
!1153 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !1148)
!1155 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !1154)
!1156 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !1154)
!1157 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !1154)
!1158 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !1154)
!1159 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !1154)
!1160 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !1154)
!1161 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !1148)
!1162 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !1148)
!1163 = !DILocation(line: 120, column: 14, scope: !1140, inlinedAt: !1146)
!1164 = !DILocation(line: 120, column: 22, scope: !1140, inlinedAt: !1146)
!1165 = !DILocation(line: 118, column: 12, scope: !1140, inlinedAt: !1146)
!1166 = !DILocation(line: 121, column: 3, scope: !1140, inlinedAt: !1146)
!1167 = !DILocation(line: 122, column: 3, scope: !1140, inlinedAt: !1146)
!1168 = !DILocation(line: 1115, column: 12, scope: !1107, inlinedAt: !1114)
!1169 = !DILocation(line: 1120, column: 17, scope: !1107, inlinedAt: !1114)
!1170 = !DILocation(line: 1120, column: 3, scope: !1107, inlinedAt: !1114)
!1171 = !DILocalVariable(name: "ls", arg: 1, scope: !1172, file: !3, line: 1067, type: !597)
!1172 = distinct !DISubprogram(name: "fornum", scope: !3, file: !3, line: 1067, type: !1173, isLocal: true, isDefinition: true, scopeLine: 1067, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1175)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{null, !597, !332, !203}
!1175 = !{!1171, !1176, !1177, !1178, !1179}
!1176 = !DILocalVariable(name: "varname", arg: 2, scope: !1172, file: !3, line: 1067, type: !332)
!1177 = !DILocalVariable(name: "line", arg: 3, scope: !1172, file: !3, line: 1067, type: !203)
!1178 = !DILocalVariable(name: "fs", scope: !1172, file: !3, line: 1069, type: !700)
!1179 = !DILocalVariable(name: "base", scope: !1172, file: !3, line: 1070, type: !203)
!1180 = !DILocation(line: 1067, column: 31, scope: !1172, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 1121, column: 15, scope: !1182, inlinedAt: !1114)
!1182 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 1120, column: 24)
!1183 = !DILocation(line: 1067, column: 44, scope: !1172, inlinedAt: !1181)
!1184 = !DILocation(line: 1067, column: 57, scope: !1172, inlinedAt: !1181)
!1185 = !DILocation(line: 1069, column: 23, scope: !1172, inlinedAt: !1181)
!1186 = !DILocation(line: 1069, column: 14, scope: !1172, inlinedAt: !1181)
!1187 = !DILocation(line: 1070, column: 18, scope: !1172, inlinedAt: !1181)
!1188 = !DILocation(line: 1070, column: 7, scope: !1172, inlinedAt: !1181)
!1189 = !DILocation(line: 1071, column: 3, scope: !1172, inlinedAt: !1181)
!1190 = !DILocation(line: 1072, column: 3, scope: !1172, inlinedAt: !1181)
!1191 = !DILocation(line: 1073, column: 3, scope: !1172, inlinedAt: !1181)
!1192 = !DILocation(line: 1074, column: 3, scope: !1172, inlinedAt: !1181)
!1193 = !DILocation(line: 94, column: 34, scope: !1031, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 1075, column: 3, scope: !1172, inlinedAt: !1181)
!1195 = !DILocation(line: 94, column: 42, scope: !1031, inlinedAt: !1194)
!1196 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 95, column: 3, scope: !1031, inlinedAt: !1194)
!1198 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !1197)
!1199 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !1197)
!1200 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !1197)
!1201 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !1197)
!1202 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !1197)
!1204 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !1203)
!1205 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !1203)
!1206 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !1203)
!1207 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !1203)
!1208 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !1203)
!1209 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !1203)
!1210 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !1197)
!1211 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !1197)
!1212 = !DILocation(line: 96, column: 3, scope: !1031, inlinedAt: !1194)
!1213 = !DILocation(line: 97, column: 1, scope: !1031, inlinedAt: !1194)
!1214 = !DILocalVariable(name: "ls", arg: 1, scope: !1215, file: !3, line: 1036, type: !597)
!1215 = distinct !DISubprogram(name: "exp1", scope: !3, file: !3, line: 1036, type: !874, isLocal: true, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1216)
!1216 = !{!1214, !1217, !1218}
!1217 = !DILocalVariable(name: "e", scope: !1215, file: !3, line: 1037, type: !951)
!1218 = !DILocalVariable(name: "k", scope: !1215, file: !3, line: 1038, type: !203)
!1219 = !DILocation(line: 1036, column: 28, scope: !1215, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 1076, column: 3, scope: !1172, inlinedAt: !1181)
!1221 = !DILocation(line: 1037, column: 3, scope: !1215, inlinedAt: !1220)
!1222 = !DILocation(line: 1037, column: 11, scope: !1215, inlinedAt: !1220)
!1223 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 1039, column: 3, scope: !1215, inlinedAt: !1220)
!1225 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !1224)
!1226 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !1224)
!1227 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !1224)
!1228 = !DILocation(line: 1038, column: 7, scope: !1215, inlinedAt: !1220)
!1229 = !DILocation(line: 1041, column: 24, scope: !1215, inlinedAt: !1220)
!1230 = !DILocation(line: 1041, column: 3, scope: !1215, inlinedAt: !1220)
!1231 = !DILocation(line: 1043, column: 1, scope: !1215, inlinedAt: !1220)
!1232 = !DILocation(line: 1042, column: 3, scope: !1215, inlinedAt: !1220)
!1233 = !DILocation(line: 94, column: 34, scope: !1031, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 1077, column: 3, scope: !1172, inlinedAt: !1181)
!1235 = !DILocation(line: 94, column: 42, scope: !1031, inlinedAt: !1234)
!1236 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 95, column: 3, scope: !1031, inlinedAt: !1234)
!1238 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !1237)
!1239 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !1237)
!1240 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !1237)
!1241 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !1237)
!1242 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !1237)
!1244 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !1243)
!1245 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !1243)
!1246 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !1243)
!1247 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !1243)
!1248 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !1243)
!1249 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !1243)
!1250 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !1237)
!1251 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !1237)
!1252 = !DILocation(line: 96, column: 3, scope: !1031, inlinedAt: !1234)
!1253 = !DILocation(line: 97, column: 1, scope: !1031, inlinedAt: !1234)
!1254 = !DILocation(line: 1036, column: 28, scope: !1215, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 1078, column: 3, scope: !1172, inlinedAt: !1181)
!1256 = !DILocation(line: 1037, column: 3, scope: !1215, inlinedAt: !1255)
!1257 = !DILocation(line: 1037, column: 11, scope: !1215, inlinedAt: !1255)
!1258 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 1039, column: 3, scope: !1215, inlinedAt: !1255)
!1260 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !1259)
!1261 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !1259)
!1262 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !1259)
!1263 = !DILocation(line: 1038, column: 7, scope: !1215, inlinedAt: !1255)
!1264 = !DILocation(line: 1041, column: 24, scope: !1215, inlinedAt: !1255)
!1265 = !DILocation(line: 1041, column: 3, scope: !1215, inlinedAt: !1255)
!1266 = !DILocation(line: 1043, column: 1, scope: !1215, inlinedAt: !1255)
!1267 = !DILocation(line: 1042, column: 3, scope: !1215, inlinedAt: !1255)
!1268 = !DILocation(line: 80, column: 32, scope: !637, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 1079, column: 7, scope: !1270, inlinedAt: !1181)
!1270 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 1079, column: 7)
!1271 = !DILocation(line: 80, column: 40, scope: !637, inlinedAt: !1269)
!1272 = !DILocation(line: 81, column: 13, scope: !646, inlinedAt: !1269)
!1273 = !DILocation(line: 81, column: 19, scope: !646, inlinedAt: !1269)
!1274 = !DILocation(line: 81, column: 7, scope: !637, inlinedAt: !1269)
!1275 = !DILocation(line: 82, column: 5, scope: !650, inlinedAt: !1269)
!1276 = !DILocation(line: 86, column: 1, scope: !637, inlinedAt: !1269)
!1277 = !DILocation(line: 1036, column: 28, scope: !1215, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 1080, column: 5, scope: !1270, inlinedAt: !1181)
!1279 = !DILocation(line: 1037, column: 3, scope: !1215, inlinedAt: !1278)
!1280 = !DILocation(line: 1037, column: 11, scope: !1215, inlinedAt: !1278)
!1281 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !1282)
!1282 = distinct !DILocation(line: 1039, column: 3, scope: !1215, inlinedAt: !1278)
!1283 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !1282)
!1284 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !1282)
!1285 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !1282)
!1286 = !DILocation(line: 1038, column: 7, scope: !1215, inlinedAt: !1278)
!1287 = !DILocation(line: 1041, column: 24, scope: !1215, inlinedAt: !1278)
!1288 = !DILocation(line: 1041, column: 3, scope: !1215, inlinedAt: !1278)
!1289 = !DILocation(line: 1043, column: 1, scope: !1215, inlinedAt: !1278)
!1290 = !DILocation(line: 1042, column: 3, scope: !1215, inlinedAt: !1278)
!1291 = !DILocation(line: 1080, column: 5, scope: !1270, inlinedAt: !1181)
!1292 = !DILocation(line: 1082, column: 36, scope: !1293, inlinedAt: !1181)
!1293 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 1081, column: 8)
!1294 = !DILocation(line: 1082, column: 45, scope: !1293, inlinedAt: !1181)
!1295 = !DILocation(line: 1082, column: 5, scope: !1293, inlinedAt: !1181)
!1296 = !DILocation(line: 1083, column: 5, scope: !1293, inlinedAt: !1181)
!1297 = !DILocation(line: 1085, column: 3, scope: !1172, inlinedAt: !1181)
!1298 = !DILocation(line: 1086, column: 1, scope: !1172, inlinedAt: !1181)
!1299 = !DILocation(line: 1121, column: 42, scope: !1182, inlinedAt: !1114)
!1300 = !DILocalVariable(name: "ls", arg: 1, scope: !1301, file: !3, line: 1089, type: !597)
!1301 = distinct !DISubprogram(name: "forlist", scope: !3, file: !3, line: 1089, type: !1302, isLocal: true, isDefinition: true, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1304)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !597, !332}
!1304 = !{!1300, !1305, !1306, !1307, !1308, !1309, !1310}
!1305 = !DILocalVariable(name: "indexname", arg: 2, scope: !1301, file: !3, line: 1089, type: !332)
!1306 = !DILocalVariable(name: "fs", scope: !1301, file: !3, line: 1091, type: !700)
!1307 = !DILocalVariable(name: "e", scope: !1301, file: !3, line: 1092, type: !951)
!1308 = !DILocalVariable(name: "nvars", scope: !1301, file: !3, line: 1093, type: !203)
!1309 = !DILocalVariable(name: "line", scope: !1301, file: !3, line: 1094, type: !203)
!1310 = !DILocalVariable(name: "base", scope: !1301, file: !3, line: 1095, type: !203)
!1311 = !DILocation(line: 1089, column: 32, scope: !1301, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 1122, column: 27, scope: !1182, inlinedAt: !1114)
!1313 = !DILocation(line: 1089, column: 45, scope: !1301, inlinedAt: !1312)
!1314 = !DILocation(line: 1091, column: 23, scope: !1301, inlinedAt: !1312)
!1315 = !DILocation(line: 1091, column: 14, scope: !1301, inlinedAt: !1312)
!1316 = !DILocation(line: 1092, column: 3, scope: !1301, inlinedAt: !1312)
!1317 = !DILocation(line: 1093, column: 7, scope: !1301, inlinedAt: !1312)
!1318 = !DILocation(line: 1095, column: 18, scope: !1301, inlinedAt: !1312)
!1319 = !DILocation(line: 1095, column: 7, scope: !1301, inlinedAt: !1312)
!1320 = !DILocation(line: 1097, column: 3, scope: !1301, inlinedAt: !1312)
!1321 = !DILocation(line: 1098, column: 3, scope: !1301, inlinedAt: !1312)
!1322 = !DILocation(line: 1099, column: 3, scope: !1301, inlinedAt: !1312)
!1323 = !DILocation(line: 1101, column: 3, scope: !1301, inlinedAt: !1312)
!1324 = !DILocation(line: 80, column: 32, scope: !637, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 1102, column: 10, scope: !1301, inlinedAt: !1312)
!1326 = !DILocation(line: 80, column: 40, scope: !637, inlinedAt: !1325)
!1327 = !DILocation(line: 81, column: 13, scope: !646, inlinedAt: !1325)
!1328 = !DILocation(line: 81, column: 19, scope: !646, inlinedAt: !1325)
!1329 = !DILocation(line: 81, column: 7, scope: !637, inlinedAt: !1325)
!1330 = !DILocation(line: 82, column: 5, scope: !650, inlinedAt: !1325)
!1331 = !DILocation(line: 86, column: 1, scope: !637, inlinedAt: !1325)
!1332 = !DILocation(line: 117, column: 42, scope: !1140, inlinedAt: !1333)
!1333 = distinct !DILocation(line: 1103, column: 22, scope: !1301, inlinedAt: !1312)
!1334 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 119, column: 3, scope: !1140, inlinedAt: !1333)
!1336 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !1335)
!1337 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !1335)
!1338 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !1335)
!1339 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !1335)
!1340 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !1335)
!1342 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !1341)
!1343 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !1341)
!1344 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !1341)
!1345 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !1341)
!1346 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !1341)
!1347 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !1341)
!1348 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !1335)
!1349 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !1335)
!1350 = !DILocation(line: 120, column: 22, scope: !1140, inlinedAt: !1333)
!1351 = !DILocation(line: 118, column: 12, scope: !1140, inlinedAt: !1333)
!1352 = !DILocation(line: 121, column: 3, scope: !1140, inlinedAt: !1333)
!1353 = !DILocation(line: 122, column: 3, scope: !1140, inlinedAt: !1333)
!1354 = !DILocation(line: 1103, column: 46, scope: !1301, inlinedAt: !1312)
!1355 = !DILocation(line: 1103, column: 5, scope: !1301, inlinedAt: !1312)
!1356 = distinct !{!1356, !1357, !1358}
!1357 = !DILocation(line: 1102, column: 3, scope: !1301)
!1358 = !DILocation(line: 1103, column: 48, scope: !1301)
!1359 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 95, column: 3, scope: !1031, inlinedAt: !1361)
!1361 = distinct !DILocation(line: 1104, column: 3, scope: !1301, inlinedAt: !1312)
!1362 = !DILocation(line: 94, column: 34, scope: !1031, inlinedAt: !1361)
!1363 = !DILocation(line: 94, column: 42, scope: !1031, inlinedAt: !1361)
!1364 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !1360)
!1365 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !1360)
!1366 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !1360)
!1367 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !1360)
!1368 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !1360)
!1370 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !1369)
!1371 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !1369)
!1372 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !1369)
!1373 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !1369)
!1374 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !1369)
!1375 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !1369)
!1376 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !1360)
!1377 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !1360)
!1378 = !DILocation(line: 96, column: 3, scope: !1031, inlinedAt: !1361)
!1379 = !DILocation(line: 97, column: 1, scope: !1031, inlinedAt: !1361)
!1380 = !DILocation(line: 1105, column: 14, scope: !1301, inlinedAt: !1312)
!1381 = !DILocation(line: 1094, column: 7, scope: !1301, inlinedAt: !1312)
!1382 = !DILocation(line: 1092, column: 11, scope: !1301, inlinedAt: !1312)
!1383 = !DILocalVariable(name: "ls", arg: 1, scope: !1384, file: !3, line: 596, type: !597)
!1384 = distinct !DISubprogram(name: "explist1", scope: !3, file: !3, line: 596, type: !1385, isLocal: true, isDefinition: true, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1387)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!203, !597, !975}
!1387 = !{!1383, !1388, !1389}
!1388 = !DILocalVariable(name: "v", arg: 2, scope: !1384, file: !3, line: 596, type: !975)
!1389 = !DILocalVariable(name: "n", scope: !1384, file: !3, line: 598, type: !203)
!1390 = !DILocation(line: 596, column: 32, scope: !1384, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 1106, column: 24, scope: !1301, inlinedAt: !1312)
!1392 = !DILocation(line: 596, column: 45, scope: !1384, inlinedAt: !1391)
!1393 = !DILocation(line: 598, column: 7, scope: !1384, inlinedAt: !1391)
!1394 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 599, column: 3, scope: !1384, inlinedAt: !1391)
!1396 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !1395)
!1397 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !1395)
!1398 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !1395)
!1399 = !DILocation(line: 80, column: 32, scope: !637, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 600, column: 10, scope: !1384, inlinedAt: !1391)
!1401 = !DILocation(line: 80, column: 40, scope: !637, inlinedAt: !1400)
!1402 = !DILocation(line: 81, column: 13, scope: !646, inlinedAt: !1400)
!1403 = !DILocation(line: 81, column: 19, scope: !646, inlinedAt: !1400)
!1404 = !DILocation(line: 81, column: 7, scope: !637, inlinedAt: !1400)
!1405 = !DILocation(line: 82, column: 5, scope: !650, inlinedAt: !1400)
!1406 = !DILocation(line: 86, column: 1, scope: !637, inlinedAt: !1400)
!1407 = !DILocation(line: 601, column: 26, scope: !1408, inlinedAt: !1391)
!1408 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 600, column: 29)
!1409 = !DILocation(line: 601, column: 5, scope: !1408, inlinedAt: !1391)
!1410 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !1411)
!1411 = distinct !DILocation(line: 602, column: 5, scope: !1408, inlinedAt: !1391)
!1412 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !1411)
!1413 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !1411)
!1414 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !1411)
!1415 = !DILocation(line: 603, column: 6, scope: !1408, inlinedAt: !1391)
!1416 = distinct !{!1416, !1417, !1418}
!1417 = !DILocation(line: 600, column: 3, scope: !1384)
!1418 = !DILocation(line: 604, column: 3, scope: !1384)
!1419 = !DILocation(line: 0, scope: !1408, inlinedAt: !1391)
!1420 = !DILocation(line: 605, column: 3, scope: !1384, inlinedAt: !1391)
!1421 = !DILocation(line: 1106, column: 3, scope: !1301, inlinedAt: !1312)
!1422 = !DILocation(line: 1107, column: 3, scope: !1301, inlinedAt: !1312)
!1423 = !DILocation(line: 1108, column: 3, scope: !1301, inlinedAt: !1312)
!1424 = !DILocation(line: 1109, column: 1, scope: !1301, inlinedAt: !1312)
!1425 = !DILocation(line: 1122, column: 49, scope: !1182, inlinedAt: !1114)
!1426 = !DILocation(line: 1123, column: 14, scope: !1182, inlinedAt: !1114)
!1427 = !DILocation(line: 1124, column: 3, scope: !1182, inlinedAt: !1114)
!1428 = !DILocation(line: 1125, column: 3, scope: !1107, inlinedAt: !1114)
!1429 = !DILocation(line: 296, column: 36, scope: !1060, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 1126, column: 3, scope: !1107, inlinedAt: !1114)
!1431 = !DILocation(line: 297, column: 22, scope: !1060, inlinedAt: !1430)
!1432 = !DILocation(line: 297, column: 13, scope: !1060, inlinedAt: !1430)
!1433 = !DILocation(line: 298, column: 16, scope: !1060, inlinedAt: !1430)
!1434 = !DILocation(line: 298, column: 10, scope: !1060, inlinedAt: !1430)
!1435 = !DILocation(line: 299, column: 18, scope: !1060, inlinedAt: !1430)
!1436 = !DILocation(line: 299, column: 26, scope: !1060, inlinedAt: !1430)
!1437 = !DILocation(line: 299, column: 22, scope: !1060, inlinedAt: !1430)
!1438 = !DILocation(line: 176, column: 35, scope: !788, inlinedAt: !1439)
!1439 = distinct !DILocation(line: 299, column: 3, scope: !1060, inlinedAt: !1430)
!1440 = !DILocation(line: 176, column: 43, scope: !788, inlinedAt: !1439)
!1441 = !DILocation(line: 177, column: 23, scope: !788, inlinedAt: !1439)
!1442 = !DILocation(line: 177, column: 14, scope: !788, inlinedAt: !1439)
!1443 = !DILocation(line: 178, column: 14, scope: !788, inlinedAt: !1439)
!1444 = !DILocation(line: 178, column: 22, scope: !788, inlinedAt: !1439)
!1445 = !DILocation(line: 178, column: 3, scope: !788, inlinedAt: !1439)
!1446 = !DILocation(line: 179, column: 5, scope: !788, inlinedAt: !1439)
!1447 = !DILocation(line: 179, column: 34, scope: !788, inlinedAt: !1439)
!1448 = !DILocation(line: 179, column: 40, scope: !788, inlinedAt: !1439)
!1449 = !DILocation(line: 180, column: 1, scope: !788, inlinedAt: !1439)
!1450 = !DILocation(line: 300, column: 11, scope: !1087, inlinedAt: !1430)
!1451 = !DILocation(line: 300, column: 7, scope: !1087, inlinedAt: !1430)
!1452 = !DILocation(line: 300, column: 7, scope: !1060, inlinedAt: !1430)
!1453 = !DILocation(line: 301, column: 5, scope: !1087, inlinedAt: !1430)
!1454 = !DILocation(line: 305, column: 21, scope: !1060, inlinedAt: !1430)
!1455 = !DILocation(line: 305, column: 17, scope: !1060, inlinedAt: !1430)
!1456 = !DILocation(line: 305, column: 7, scope: !1060, inlinedAt: !1430)
!1457 = !DILocation(line: 305, column: 15, scope: !1060, inlinedAt: !1430)
!1458 = !DILocation(line: 306, column: 28, scope: !1060, inlinedAt: !1430)
!1459 = !DILocation(line: 306, column: 3, scope: !1060, inlinedAt: !1430)
!1460 = !DILocation(line: 307, column: 1, scope: !1060, inlinedAt: !1430)
!1461 = !DILocation(line: 1127, column: 1, scope: !1107, inlinedAt: !1114)
!1462 = !DILocation(line: 1290, column: 7, scope: !1115)
!1463 = !DILocalVariable(name: "ls", arg: 1, scope: !1464, file: !3, line: 1010, type: !597)
!1464 = distinct !DISubprogram(name: "repeatstat", scope: !3, file: !3, line: 1010, type: !668, isLocal: true, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1465)
!1465 = !{!1463, !1466, !1467, !1468, !1469, !1470, !1471}
!1466 = !DILocalVariable(name: "line", arg: 2, scope: !1464, file: !3, line: 1010, type: !203)
!1467 = !DILocalVariable(name: "condexit", scope: !1464, file: !3, line: 1012, type: !203)
!1468 = !DILocalVariable(name: "fs", scope: !1464, file: !3, line: 1013, type: !700)
!1469 = !DILocalVariable(name: "repeat_init", scope: !1464, file: !3, line: 1014, type: !203)
!1470 = !DILocalVariable(name: "bl1", scope: !1464, file: !3, line: 1015, type: !936)
!1471 = !DILocalVariable(name: "bl2", scope: !1464, file: !3, line: 1015, type: !936)
!1472 = !DILocation(line: 1010, column: 35, scope: !1464, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 1293, column: 7, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !895, file: !3, line: 1292, column: 21)
!1475 = !DILocation(line: 1010, column: 43, scope: !1464, inlinedAt: !1473)
!1476 = !DILocation(line: 1013, column: 23, scope: !1464, inlinedAt: !1473)
!1477 = !DILocation(line: 1013, column: 14, scope: !1464, inlinedAt: !1473)
!1478 = !DILocation(line: 1014, column: 21, scope: !1464, inlinedAt: !1473)
!1479 = !DILocation(line: 1014, column: 7, scope: !1464, inlinedAt: !1473)
!1480 = !DILocation(line: 1015, column: 3, scope: !1464, inlinedAt: !1473)
!1481 = !DILocation(line: 1015, column: 12, scope: !1464, inlinedAt: !1473)
!1482 = !DILocation(line: 285, column: 36, scope: !1000, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 1016, column: 3, scope: !1464, inlinedAt: !1473)
!1484 = !DILocation(line: 285, column: 50, scope: !1000, inlinedAt: !1483)
!1485 = !DILocation(line: 285, column: 62, scope: !1000, inlinedAt: !1483)
!1486 = !DILocation(line: 286, column: 7, scope: !1000, inlinedAt: !1483)
!1487 = !DILocation(line: 286, column: 17, scope: !1000, inlinedAt: !1483)
!1488 = !DILocation(line: 287, column: 7, scope: !1000, inlinedAt: !1483)
!1489 = !DILocation(line: 287, column: 19, scope: !1000, inlinedAt: !1483)
!1490 = !DILocation(line: 288, column: 21, scope: !1000, inlinedAt: !1483)
!1491 = !DILocation(line: 288, column: 7, scope: !1000, inlinedAt: !1483)
!1492 = !DILocation(line: 288, column: 15, scope: !1000, inlinedAt: !1483)
!1493 = !DILocation(line: 289, column: 7, scope: !1000, inlinedAt: !1483)
!1494 = !DILocation(line: 289, column: 13, scope: !1000, inlinedAt: !1483)
!1495 = !DILocation(line: 290, column: 22, scope: !1000, inlinedAt: !1483)
!1496 = !DILocation(line: 290, column: 16, scope: !1000, inlinedAt: !1483)
!1497 = !DILocation(line: 293, column: 1, scope: !1000, inlinedAt: !1483)
!1498 = !DILocation(line: 1015, column: 17, scope: !1464, inlinedAt: !1473)
!1499 = !DILocation(line: 285, column: 36, scope: !1000, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 1017, column: 3, scope: !1464, inlinedAt: !1473)
!1501 = !DILocation(line: 285, column: 50, scope: !1000, inlinedAt: !1500)
!1502 = !DILocation(line: 285, column: 62, scope: !1000, inlinedAt: !1500)
!1503 = !DILocation(line: 286, column: 7, scope: !1000, inlinedAt: !1500)
!1504 = !DILocation(line: 286, column: 17, scope: !1000, inlinedAt: !1500)
!1505 = !DILocation(line: 287, column: 7, scope: !1000, inlinedAt: !1500)
!1506 = !DILocation(line: 287, column: 19, scope: !1000, inlinedAt: !1500)
!1507 = !DILocation(line: 288, column: 7, scope: !1000, inlinedAt: !1500)
!1508 = !DILocation(line: 288, column: 15, scope: !1000, inlinedAt: !1500)
!1509 = !DILocation(line: 289, column: 7, scope: !1000, inlinedAt: !1500)
!1510 = !DILocation(line: 289, column: 13, scope: !1000, inlinedAt: !1500)
!1511 = !DILocation(line: 290, column: 22, scope: !1000, inlinedAt: !1500)
!1512 = !DILocation(line: 290, column: 16, scope: !1000, inlinedAt: !1500)
!1513 = !DILocation(line: 291, column: 10, scope: !1000, inlinedAt: !1500)
!1514 = !DILocation(line: 293, column: 1, scope: !1000, inlinedAt: !1500)
!1515 = !DILocation(line: 1018, column: 3, scope: !1464, inlinedAt: !1473)
!1516 = !DILocation(line: 1325, column: 30, scope: !594, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 1019, column: 3, scope: !1464, inlinedAt: !1473)
!1518 = !DILocation(line: 1327, column: 7, scope: !594, inlinedAt: !1517)
!1519 = !DILocation(line: 276, column: 35, scope: !605, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 1328, column: 3, scope: !594, inlinedAt: !1517)
!1521 = !DILocation(line: 277, column: 13, scope: !610, inlinedAt: !1520)
!1522 = !DILocation(line: 277, column: 16, scope: !610, inlinedAt: !1520)
!1523 = !DILocation(line: 277, column: 7, scope: !610, inlinedAt: !1520)
!1524 = !DILocation(line: 277, column: 24, scope: !610, inlinedAt: !1520)
!1525 = !DILocation(line: 277, column: 7, scope: !605, inlinedAt: !1520)
!1526 = !DILocation(line: 278, column: 2, scope: !610, inlinedAt: !1520)
!1527 = !DILocation(line: 279, column: 1, scope: !605, inlinedAt: !1520)
!1528 = !DILocation(line: 1329, column: 18, scope: !594, inlinedAt: !1517)
!1529 = !DILocation(line: 1329, column: 41, scope: !594, inlinedAt: !1517)
!1530 = !DILocation(line: 871, column: 30, scope: !626, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 1329, column: 22, scope: !594, inlinedAt: !1517)
!1532 = !DILocation(line: 872, column: 3, scope: !626, inlinedAt: !1531)
!1533 = !DILocation(line: 878, column: 1, scope: !626, inlinedAt: !1531)
!1534 = !DILocation(line: 1330, column: 14, scope: !635, inlinedAt: !1517)
!1535 = !DILocation(line: 80, column: 32, scope: !637, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 1331, column: 5, scope: !635, inlinedAt: !1517)
!1537 = !DILocation(line: 80, column: 40, scope: !637, inlinedAt: !1536)
!1538 = !DILocation(line: 81, column: 13, scope: !646, inlinedAt: !1536)
!1539 = !DILocation(line: 81, column: 19, scope: !646, inlinedAt: !1536)
!1540 = !DILocation(line: 81, column: 7, scope: !637, inlinedAt: !1536)
!1541 = !DILocation(line: 82, column: 5, scope: !650, inlinedAt: !1536)
!1542 = !DILocation(line: 83, column: 5, scope: !650, inlinedAt: !1536)
!1543 = !DILocation(line: 86, column: 1, scope: !637, inlinedAt: !1536)
!1544 = !DILocation(line: 1334, column: 27, scope: !635, inlinedAt: !1517)
!1545 = !DILocation(line: 1334, column: 31, scope: !635, inlinedAt: !1517)
!1546 = !DILocation(line: 1334, column: 23, scope: !635, inlinedAt: !1517)
!1547 = !DILocation(line: 1334, column: 13, scope: !635, inlinedAt: !1517)
!1548 = !DILocation(line: 1334, column: 21, scope: !635, inlinedAt: !1517)
!1549 = !DILocation(line: 1329, column: 11, scope: !594, inlinedAt: !1517)
!1550 = !DILocation(line: 1336, column: 3, scope: !594, inlinedAt: !1517)
!1551 = !DILocation(line: 1337, column: 1, scope: !594, inlinedAt: !1517)
!1552 = !DILocation(line: 1020, column: 3, scope: !1464, inlinedAt: !1473)
!1553 = !DILocation(line: 965, column: 28, scope: !948, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 1021, column: 14, scope: !1464, inlinedAt: !1473)
!1555 = !DILocation(line: 967, column: 3, scope: !948, inlinedAt: !1554)
!1556 = !DILocation(line: 967, column: 11, scope: !948, inlinedAt: !1554)
!1557 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !1558)
!1558 = distinct !DILocation(line: 968, column: 3, scope: !948, inlinedAt: !1554)
!1559 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !1558)
!1560 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !1558)
!1561 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !1558)
!1562 = !DILocation(line: 969, column: 9, scope: !984, inlinedAt: !1554)
!1563 = !DILocation(line: 969, column: 11, scope: !984, inlinedAt: !1554)
!1564 = !DILocation(line: 969, column: 7, scope: !948, inlinedAt: !1554)
!1565 = !DILocation(line: 969, column: 24, scope: !984, inlinedAt: !1554)
!1566 = !DILocation(line: 969, column: 20, scope: !984, inlinedAt: !1554)
!1567 = !DILocation(line: 970, column: 21, scope: !948, inlinedAt: !1554)
!1568 = !DILocation(line: 970, column: 3, scope: !948, inlinedAt: !1554)
!1569 = !DILocation(line: 971, column: 12, scope: !948, inlinedAt: !1554)
!1570 = !DILocation(line: 972, column: 1, scope: !948, inlinedAt: !1554)
!1571 = !DILocation(line: 971, column: 3, scope: !948, inlinedAt: !1554)
!1572 = !DILocation(line: 1012, column: 7, scope: !1464, inlinedAt: !1473)
!1573 = !DILocation(line: 1022, column: 12, scope: !1574, inlinedAt: !1473)
!1574 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 1022, column: 7)
!1575 = !DILocation(line: 1022, column: 8, scope: !1574, inlinedAt: !1473)
!1576 = !DILocation(line: 1022, column: 7, scope: !1464, inlinedAt: !1473)
!1577 = !DILocation(line: 296, column: 36, scope: !1060, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 1023, column: 5, scope: !1579, inlinedAt: !1473)
!1579 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1022, column: 19)
!1580 = !DILocation(line: 297, column: 22, scope: !1060, inlinedAt: !1578)
!1581 = !DILocation(line: 297, column: 13, scope: !1060, inlinedAt: !1578)
!1582 = !DILocation(line: 298, column: 16, scope: !1060, inlinedAt: !1578)
!1583 = !DILocation(line: 298, column: 10, scope: !1060, inlinedAt: !1578)
!1584 = !DILocation(line: 299, column: 18, scope: !1060, inlinedAt: !1578)
!1585 = !DILocation(line: 299, column: 26, scope: !1060, inlinedAt: !1578)
!1586 = !DILocation(line: 299, column: 22, scope: !1060, inlinedAt: !1578)
!1587 = !DILocation(line: 176, column: 35, scope: !788, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 299, column: 3, scope: !1060, inlinedAt: !1578)
!1589 = !DILocation(line: 176, column: 43, scope: !788, inlinedAt: !1588)
!1590 = !DILocation(line: 177, column: 23, scope: !788, inlinedAt: !1588)
!1591 = !DILocation(line: 177, column: 14, scope: !788, inlinedAt: !1588)
!1592 = !DILocation(line: 178, column: 14, scope: !788, inlinedAt: !1588)
!1593 = !DILocation(line: 178, column: 22, scope: !788, inlinedAt: !1588)
!1594 = !DILocation(line: 178, column: 3, scope: !788, inlinedAt: !1588)
!1595 = !DILocation(line: 179, column: 5, scope: !788, inlinedAt: !1588)
!1596 = !DILocation(line: 179, column: 34, scope: !788, inlinedAt: !1588)
!1597 = !DILocation(line: 179, column: 40, scope: !788, inlinedAt: !1588)
!1598 = !DILocation(line: 180, column: 1, scope: !788, inlinedAt: !1588)
!1599 = !DILocation(line: 300, column: 11, scope: !1087, inlinedAt: !1578)
!1600 = !DILocation(line: 300, column: 7, scope: !1087, inlinedAt: !1578)
!1601 = !DILocation(line: 300, column: 7, scope: !1060, inlinedAt: !1578)
!1602 = !DILocation(line: 301, column: 5, scope: !1087, inlinedAt: !1578)
!1603 = !DILocation(line: 305, column: 21, scope: !1060, inlinedAt: !1578)
!1604 = !DILocation(line: 305, column: 17, scope: !1060, inlinedAt: !1578)
!1605 = !DILocation(line: 305, column: 7, scope: !1060, inlinedAt: !1578)
!1606 = !DILocation(line: 305, column: 15, scope: !1060, inlinedAt: !1578)
!1607 = !DILocation(line: 306, column: 28, scope: !1060, inlinedAt: !1578)
!1608 = !DILocation(line: 306, column: 3, scope: !1060, inlinedAt: !1578)
!1609 = !DILocation(line: 307, column: 1, scope: !1060, inlinedAt: !1578)
!1610 = !DILocation(line: 1024, column: 24, scope: !1579, inlinedAt: !1473)
!1611 = !DILocation(line: 1024, column: 5, scope: !1579, inlinedAt: !1473)
!1612 = !DILocation(line: 1025, column: 3, scope: !1579, inlinedAt: !1473)
!1613 = !DILocalVariable(name: "ls", arg: 1, scope: !1614, file: !3, line: 975, type: !597)
!1614 = distinct !DISubprogram(name: "breakstat", scope: !3, file: !3, line: 975, type: !595, isLocal: true, isDefinition: true, scopeLine: 975, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1615)
!1615 = !{!1613, !1616, !1617, !1618}
!1616 = !DILocalVariable(name: "fs", scope: !1614, file: !3, line: 976, type: !700)
!1617 = !DILocalVariable(name: "bl", scope: !1614, file: !3, line: 977, type: !1003)
!1618 = !DILocalVariable(name: "upval", scope: !1614, file: !3, line: 978, type: !203)
!1619 = !DILocation(line: 975, column: 34, scope: !1614, inlinedAt: !1620)
!1620 = distinct !DILocation(line: 1027, column: 5, scope: !1621, inlinedAt: !1473)
!1621 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1026, column: 8)
!1622 = !DILocation(line: 976, column: 23, scope: !1614, inlinedAt: !1620)
!1623 = !DILocation(line: 976, column: 14, scope: !1614, inlinedAt: !1620)
!1624 = !DILocation(line: 977, column: 22, scope: !1614, inlinedAt: !1620)
!1625 = !DILocation(line: 977, column: 13, scope: !1614, inlinedAt: !1620)
!1626 = !DILocation(line: 978, column: 7, scope: !1614, inlinedAt: !1620)
!1627 = !DILocation(line: 0, scope: !1628, inlinedAt: !1620)
!1628 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 979, column: 34)
!1629 = !{!578, !578, i64 0}
!1630 = !DILocation(line: 979, column: 10, scope: !1614, inlinedAt: !1620)
!1631 = !DILocation(line: 979, column: 13, scope: !1614, inlinedAt: !1620)
!1632 = !DILocation(line: 979, column: 21, scope: !1614, inlinedAt: !1620)
!1633 = !DILocation(line: 979, column: 16, scope: !1614, inlinedAt: !1620)
!1634 = !DILocation(line: 979, column: 3, scope: !1614, inlinedAt: !1620)
!1635 = !DILocation(line: 980, column: 18, scope: !1628, inlinedAt: !1620)
!1636 = !DILocation(line: 980, column: 14, scope: !1628, inlinedAt: !1620)
!1637 = !DILocation(line: 980, column: 11, scope: !1628, inlinedAt: !1620)
!1638 = !DILocation(line: 981, column: 14, scope: !1628, inlinedAt: !1620)
!1639 = distinct !{!1639, !1640, !1641}
!1640 = !DILocation(line: 979, column: 3, scope: !1614)
!1641 = !DILocation(line: 982, column: 3, scope: !1614)
!1642 = !DILocation(line: 984, column: 5, scope: !1643, inlinedAt: !1620)
!1643 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 983, column: 7)
!1644 = !DILocation(line: 985, column: 7, scope: !1645, inlinedAt: !1620)
!1645 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 985, column: 7)
!1646 = !DILocation(line: 985, column: 7, scope: !1614, inlinedAt: !1620)
!1647 = !DILocation(line: 986, column: 36, scope: !1645, inlinedAt: !1620)
!1648 = !DILocation(line: 986, column: 32, scope: !1645, inlinedAt: !1620)
!1649 = !DILocation(line: 986, column: 5, scope: !1645, inlinedAt: !1620)
!1650 = !DILocation(line: 987, column: 24, scope: !1614, inlinedAt: !1620)
!1651 = !DILocation(line: 987, column: 35, scope: !1614, inlinedAt: !1620)
!1652 = !DILocation(line: 987, column: 3, scope: !1614, inlinedAt: !1620)
!1653 = !DILocation(line: 988, column: 1, scope: !1614, inlinedAt: !1620)
!1654 = !DILocation(line: 1028, column: 26, scope: !1621, inlinedAt: !1473)
!1655 = !DILocation(line: 1028, column: 5, scope: !1621, inlinedAt: !1473)
!1656 = !DILocation(line: 296, column: 36, scope: !1060, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 1029, column: 5, scope: !1621, inlinedAt: !1473)
!1658 = !DILocation(line: 297, column: 22, scope: !1060, inlinedAt: !1657)
!1659 = !DILocation(line: 297, column: 13, scope: !1060, inlinedAt: !1657)
!1660 = !DILocation(line: 298, column: 16, scope: !1060, inlinedAt: !1657)
!1661 = !DILocation(line: 298, column: 10, scope: !1060, inlinedAt: !1657)
!1662 = !DILocation(line: 299, column: 18, scope: !1060, inlinedAt: !1657)
!1663 = !DILocation(line: 299, column: 26, scope: !1060, inlinedAt: !1657)
!1664 = !DILocation(line: 299, column: 22, scope: !1060, inlinedAt: !1657)
!1665 = !DILocation(line: 176, column: 35, scope: !788, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 299, column: 3, scope: !1060, inlinedAt: !1657)
!1667 = !DILocation(line: 176, column: 43, scope: !788, inlinedAt: !1666)
!1668 = !DILocation(line: 177, column: 23, scope: !788, inlinedAt: !1666)
!1669 = !DILocation(line: 177, column: 14, scope: !788, inlinedAt: !1666)
!1670 = !DILocation(line: 178, column: 14, scope: !788, inlinedAt: !1666)
!1671 = !DILocation(line: 178, column: 22, scope: !788, inlinedAt: !1666)
!1672 = !DILocation(line: 178, column: 3, scope: !788, inlinedAt: !1666)
!1673 = !DILocation(line: 179, column: 5, scope: !788, inlinedAt: !1666)
!1674 = !DILocation(line: 179, column: 34, scope: !788, inlinedAt: !1666)
!1675 = !DILocation(line: 179, column: 40, scope: !788, inlinedAt: !1666)
!1676 = !DILocation(line: 180, column: 1, scope: !788, inlinedAt: !1666)
!1677 = !DILocation(line: 300, column: 11, scope: !1087, inlinedAt: !1657)
!1678 = !DILocation(line: 300, column: 7, scope: !1087, inlinedAt: !1657)
!1679 = !DILocation(line: 300, column: 7, scope: !1060, inlinedAt: !1657)
!1680 = !DILocation(line: 301, column: 5, scope: !1087, inlinedAt: !1657)
!1681 = !DILocation(line: 305, column: 21, scope: !1060, inlinedAt: !1657)
!1682 = !DILocation(line: 305, column: 17, scope: !1060, inlinedAt: !1657)
!1683 = !DILocation(line: 305, column: 7, scope: !1060, inlinedAt: !1657)
!1684 = !DILocation(line: 305, column: 15, scope: !1060, inlinedAt: !1657)
!1685 = !DILocation(line: 306, column: 28, scope: !1060, inlinedAt: !1657)
!1686 = !DILocation(line: 306, column: 3, scope: !1060, inlinedAt: !1657)
!1687 = !DILocation(line: 307, column: 1, scope: !1060, inlinedAt: !1657)
!1688 = !DILocation(line: 1030, column: 24, scope: !1621, inlinedAt: !1473)
!1689 = !DILocation(line: 1030, column: 28, scope: !1621, inlinedAt: !1473)
!1690 = !DILocation(line: 1030, column: 5, scope: !1621, inlinedAt: !1473)
!1691 = !DILocation(line: 299, column: 18, scope: !1060, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 1032, column: 3, scope: !1464, inlinedAt: !1473)
!1693 = !DILocation(line: 296, column: 36, scope: !1060, inlinedAt: !1692)
!1694 = !DILocation(line: 297, column: 22, scope: !1060, inlinedAt: !1692)
!1695 = !DILocation(line: 297, column: 13, scope: !1060, inlinedAt: !1692)
!1696 = !DILocation(line: 298, column: 16, scope: !1060, inlinedAt: !1692)
!1697 = !DILocation(line: 298, column: 10, scope: !1060, inlinedAt: !1692)
!1698 = !DILocation(line: 299, column: 26, scope: !1060, inlinedAt: !1692)
!1699 = !DILocation(line: 299, column: 22, scope: !1060, inlinedAt: !1692)
!1700 = !DILocation(line: 176, column: 35, scope: !788, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 299, column: 3, scope: !1060, inlinedAt: !1692)
!1702 = !DILocation(line: 176, column: 43, scope: !788, inlinedAt: !1701)
!1703 = !DILocation(line: 177, column: 23, scope: !788, inlinedAt: !1701)
!1704 = !DILocation(line: 177, column: 14, scope: !788, inlinedAt: !1701)
!1705 = !DILocation(line: 178, column: 14, scope: !788, inlinedAt: !1701)
!1706 = !DILocation(line: 178, column: 22, scope: !788, inlinedAt: !1701)
!1707 = !DILocation(line: 178, column: 3, scope: !788, inlinedAt: !1701)
!1708 = !DILocation(line: 179, column: 5, scope: !788, inlinedAt: !1701)
!1709 = !DILocation(line: 179, column: 34, scope: !788, inlinedAt: !1701)
!1710 = !DILocation(line: 179, column: 40, scope: !788, inlinedAt: !1701)
!1711 = !DILocation(line: 180, column: 1, scope: !788, inlinedAt: !1701)
!1712 = !DILocation(line: 300, column: 11, scope: !1087, inlinedAt: !1692)
!1713 = !DILocation(line: 300, column: 7, scope: !1087, inlinedAt: !1692)
!1714 = !DILocation(line: 300, column: 7, scope: !1060, inlinedAt: !1692)
!1715 = !DILocation(line: 301, column: 5, scope: !1087, inlinedAt: !1692)
!1716 = !DILocation(line: 305, column: 21, scope: !1060, inlinedAt: !1692)
!1717 = !DILocation(line: 305, column: 17, scope: !1060, inlinedAt: !1692)
!1718 = !DILocation(line: 305, column: 7, scope: !1060, inlinedAt: !1692)
!1719 = !DILocation(line: 305, column: 15, scope: !1060, inlinedAt: !1692)
!1720 = !DILocation(line: 306, column: 28, scope: !1060, inlinedAt: !1692)
!1721 = !DILocation(line: 306, column: 3, scope: !1060, inlinedAt: !1692)
!1722 = !DILocation(line: 307, column: 1, scope: !1060, inlinedAt: !1692)
!1723 = !DILocation(line: 1033, column: 1, scope: !1464, inlinedAt: !1473)
!1724 = !DILocation(line: 1294, column: 7, scope: !1474)
!1725 = !DILocalVariable(name: "ls", arg: 1, scope: !1726, file: !3, line: 1212, type: !597)
!1726 = distinct !DISubprogram(name: "funcstat", scope: !3, file: !3, line: 1212, type: !668, isLocal: true, isDefinition: true, scopeLine: 1212, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1727)
!1727 = !{!1725, !1728, !1729, !1730, !1731}
!1728 = !DILocalVariable(name: "line", arg: 2, scope: !1726, file: !3, line: 1212, type: !203)
!1729 = !DILocalVariable(name: "needself", scope: !1726, file: !3, line: 1214, type: !203)
!1730 = !DILocalVariable(name: "v", scope: !1726, file: !3, line: 1215, type: !951)
!1731 = !DILocalVariable(name: "b", scope: !1726, file: !3, line: 1215, type: !951)
!1732 = !DILocation(line: 1212, column: 33, scope: !1726, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 1297, column: 7, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !895, file: !3, line: 1296, column: 23)
!1735 = !DILocation(line: 1212, column: 41, scope: !1726, inlinedAt: !1733)
!1736 = !DILocation(line: 1215, column: 3, scope: !1726, inlinedAt: !1733)
!1737 = !DILocation(line: 1216, column: 3, scope: !1726, inlinedAt: !1733)
!1738 = !DILocation(line: 1215, column: 11, scope: !1726, inlinedAt: !1733)
!1739 = !DILocalVariable(name: "ls", arg: 1, scope: !1740, file: !3, line: 1198, type: !597)
!1740 = distinct !DISubprogram(name: "funcname", scope: !3, file: !3, line: 1198, type: !1385, isLocal: true, isDefinition: true, scopeLine: 1198, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1741)
!1741 = !{!1739, !1742, !1743}
!1742 = !DILocalVariable(name: "v", arg: 2, scope: !1740, file: !3, line: 1198, type: !975)
!1743 = !DILocalVariable(name: "needself", scope: !1740, file: !3, line: 1200, type: !203)
!1744 = !DILocation(line: 1198, column: 32, scope: !1740, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 1217, column: 14, scope: !1726, inlinedAt: !1733)
!1746 = !DILocation(line: 1198, column: 45, scope: !1740, inlinedAt: !1745)
!1747 = !DILocation(line: 1200, column: 7, scope: !1740, inlinedAt: !1745)
!1748 = !DILocalVariable(name: "ls", arg: 1, scope: !1749, file: !3, line: 248, type: !597)
!1749 = distinct !DISubprogram(name: "singlevar", scope: !3, file: !3, line: 248, type: !973, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1750)
!1750 = !{!1748, !1751, !1752, !1753}
!1751 = !DILocalVariable(name: "var", arg: 2, scope: !1749, file: !3, line: 248, type: !975)
!1752 = !DILocalVariable(name: "varname", scope: !1749, file: !3, line: 249, type: !332)
!1753 = !DILocalVariable(name: "fs", scope: !1749, file: !3, line: 250, type: !700)
!1754 = !DILocation(line: 248, column: 34, scope: !1749, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 1201, column: 3, scope: !1740, inlinedAt: !1745)
!1756 = !DILocation(line: 248, column: 47, scope: !1749, inlinedAt: !1755)
!1757 = !DILocation(line: 117, column: 42, scope: !1140, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 249, column: 22, scope: !1749, inlinedAt: !1755)
!1759 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 119, column: 3, scope: !1140, inlinedAt: !1758)
!1761 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !1760)
!1762 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !1760)
!1763 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !1760)
!1764 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !1760)
!1765 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !1760)
!1767 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !1766)
!1768 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !1766)
!1769 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !1766)
!1770 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !1766)
!1771 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !1766)
!1772 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !1766)
!1773 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !1760)
!1774 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !1760)
!1775 = !DILocation(line: 120, column: 14, scope: !1140, inlinedAt: !1758)
!1776 = !DILocation(line: 120, column: 22, scope: !1140, inlinedAt: !1758)
!1777 = !DILocation(line: 118, column: 12, scope: !1140, inlinedAt: !1758)
!1778 = !DILocation(line: 121, column: 3, scope: !1140, inlinedAt: !1758)
!1779 = !DILocation(line: 122, column: 3, scope: !1140, inlinedAt: !1758)
!1780 = !DILocation(line: 249, column: 12, scope: !1749, inlinedAt: !1755)
!1781 = !DILocation(line: 250, column: 23, scope: !1749, inlinedAt: !1755)
!1782 = !DILocation(line: 250, column: 14, scope: !1749, inlinedAt: !1755)
!1783 = !DILocation(line: 251, column: 7, scope: !1784, inlinedAt: !1755)
!1784 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 251, column: 7)
!1785 = !DILocation(line: 251, column: 41, scope: !1784, inlinedAt: !1755)
!1786 = !DILocation(line: 251, column: 7, scope: !1749, inlinedAt: !1755)
!1787 = !DILocation(line: 252, column: 21, scope: !1784, inlinedAt: !1755)
!1788 = !DILocation(line: 252, column: 10, scope: !1784, inlinedAt: !1755)
!1789 = !DILocation(line: 252, column: 14, scope: !1784, inlinedAt: !1755)
!1790 = !DILocation(line: 252, column: 19, scope: !1784, inlinedAt: !1755)
!1791 = !DILocation(line: 252, column: 5, scope: !1784, inlinedAt: !1755)
!1792 = !DILocation(line: 253, column: 1, scope: !1749, inlinedAt: !1755)
!1793 = !DILocation(line: 1202, column: 3, scope: !1740, inlinedAt: !1745)
!1794 = !DILocation(line: 1202, column: 16, scope: !1740, inlinedAt: !1745)
!1795 = !DILocalVariable(name: "ls", arg: 1, scope: !1796, file: !3, line: 407, type: !597)
!1796 = distinct !DISubprogram(name: "field", scope: !3, file: !3, line: 407, type: !973, isLocal: true, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1797)
!1797 = !{!1795, !1798, !1799, !1800}
!1798 = !DILocalVariable(name: "v", arg: 2, scope: !1796, file: !3, line: 407, type: !975)
!1799 = !DILocalVariable(name: "fs", scope: !1796, file: !3, line: 409, type: !700)
!1800 = !DILocalVariable(name: "key", scope: !1796, file: !3, line: 410, type: !951)
!1801 = !DILocation(line: 407, column: 30, scope: !1796, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 1203, column: 5, scope: !1740, inlinedAt: !1745)
!1803 = !DILocation(line: 407, column: 43, scope: !1796, inlinedAt: !1802)
!1804 = !DILocation(line: 409, column: 23, scope: !1796, inlinedAt: !1802)
!1805 = !DILocation(line: 409, column: 14, scope: !1796, inlinedAt: !1802)
!1806 = !DILocation(line: 410, column: 3, scope: !1796, inlinedAt: !1802)
!1807 = !DILocation(line: 411, column: 3, scope: !1796, inlinedAt: !1802)
!1808 = !DILocation(line: 412, column: 3, scope: !1796, inlinedAt: !1802)
!1809 = !DILocation(line: 410, column: 11, scope: !1796, inlinedAt: !1802)
!1810 = !DILocalVariable(name: "ls", arg: 1, scope: !1811, file: !3, line: 138, type: !597)
!1811 = distinct !DISubprogram(name: "checkname", scope: !3, file: !3, line: 138, type: !973, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1812)
!1812 = !{!1810, !1813}
!1813 = !DILocalVariable(name: "e", arg: 2, scope: !1811, file: !3, line: 138, type: !975)
!1814 = !DILocation(line: 138, column: 33, scope: !1811, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 413, column: 3, scope: !1796, inlinedAt: !1802)
!1816 = !DILocation(line: 138, column: 46, scope: !1811, inlinedAt: !1815)
!1817 = !DILocation(line: 117, column: 42, scope: !1140, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 139, column: 21, scope: !1811, inlinedAt: !1815)
!1819 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 119, column: 3, scope: !1140, inlinedAt: !1818)
!1821 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !1820)
!1822 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !1820)
!1823 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !1820)
!1824 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !1820)
!1825 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !1820)
!1827 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !1826)
!1828 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !1826)
!1829 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !1826)
!1830 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !1826)
!1831 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !1826)
!1832 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !1826)
!1833 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !1820)
!1834 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !1820)
!1835 = !DILocation(line: 120, column: 22, scope: !1140, inlinedAt: !1818)
!1836 = !DILocation(line: 118, column: 12, scope: !1140, inlinedAt: !1818)
!1837 = !DILocation(line: 121, column: 3, scope: !1140, inlinedAt: !1818)
!1838 = !DILocation(line: 122, column: 3, scope: !1140, inlinedAt: !1818)
!1839 = !DILocalVariable(name: "ls", arg: 1, scope: !1840, file: !3, line: 133, type: !597)
!1840 = distinct !DISubprogram(name: "codestring", scope: !3, file: !3, line: 133, type: !1841, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1843)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{null, !597, !975, !332}
!1843 = !{!1839, !1844, !1845}
!1844 = !DILocalVariable(name: "e", arg: 2, scope: !1840, file: !3, line: 133, type: !975)
!1845 = !DILocalVariable(name: "s", arg: 3, scope: !1840, file: !3, line: 133, type: !332)
!1846 = !DILocation(line: 133, column: 35, scope: !1840, inlinedAt: !1847)
!1847 = distinct !DILocation(line: 139, column: 3, scope: !1811, inlinedAt: !1815)
!1848 = !DILocation(line: 133, column: 48, scope: !1840, inlinedAt: !1847)
!1849 = !DILocation(line: 133, column: 60, scope: !1840, inlinedAt: !1847)
!1850 = !DILocation(line: 134, column: 36, scope: !1840, inlinedAt: !1847)
!1851 = !DILocation(line: 134, column: 19, scope: !1840, inlinedAt: !1847)
!1852 = !DILocalVariable(name: "e", arg: 1, scope: !1853, file: !3, line: 126, type: !975)
!1853 = distinct !DISubprogram(name: "init_exp", scope: !3, file: !3, line: 126, type: !1854, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1856)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{null, !975, !955, !203}
!1856 = !{!1852, !1857, !1858}
!1857 = !DILocalVariable(name: "k", arg: 2, scope: !1853, file: !3, line: 126, type: !955)
!1858 = !DILocalVariable(name: "i", arg: 3, scope: !1853, file: !3, line: 126, type: !203)
!1859 = !DILocation(line: 126, column: 32, scope: !1853, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 134, column: 3, scope: !1840, inlinedAt: !1847)
!1861 = !DILocation(line: 126, column: 43, scope: !1853, inlinedAt: !1860)
!1862 = !DILocation(line: 126, column: 50, scope: !1853, inlinedAt: !1860)
!1863 = !DILocation(line: 127, column: 15, scope: !1853, inlinedAt: !1860)
!1864 = !{!986, !574, i64 16}
!1865 = !DILocation(line: 127, column: 8, scope: !1853, inlinedAt: !1860)
!1866 = !DILocation(line: 128, column: 8, scope: !1853, inlinedAt: !1860)
!1867 = !DILocation(line: 129, column: 15, scope: !1853, inlinedAt: !1860)
!1868 = !DILocation(line: 130, column: 1, scope: !1853, inlinedAt: !1860)
!1869 = !DILocation(line: 135, column: 1, scope: !1840, inlinedAt: !1847)
!1870 = !DILocation(line: 140, column: 1, scope: !1811, inlinedAt: !1815)
!1871 = !DILocation(line: 414, column: 3, scope: !1796, inlinedAt: !1802)
!1872 = !DILocation(line: 415, column: 1, scope: !1796, inlinedAt: !1802)
!1873 = distinct !{!1873, !1874, !1875}
!1874 = !DILocation(line: 1202, column: 3, scope: !1740)
!1875 = !DILocation(line: 1203, column: 16, scope: !1740)
!1876 = !DILocation(line: 407, column: 30, scope: !1796, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 1206, column: 5, scope: !1878, inlinedAt: !1745)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 1204, column: 27)
!1879 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 1204, column: 7)
!1880 = !DILocation(line: 407, column: 43, scope: !1796, inlinedAt: !1877)
!1881 = !DILocation(line: 409, column: 23, scope: !1796, inlinedAt: !1877)
!1882 = !DILocation(line: 409, column: 14, scope: !1796, inlinedAt: !1877)
!1883 = !DILocation(line: 410, column: 3, scope: !1796, inlinedAt: !1877)
!1884 = !DILocation(line: 411, column: 3, scope: !1796, inlinedAt: !1877)
!1885 = !DILocation(line: 412, column: 3, scope: !1796, inlinedAt: !1877)
!1886 = !DILocation(line: 410, column: 11, scope: !1796, inlinedAt: !1877)
!1887 = !DILocation(line: 138, column: 33, scope: !1811, inlinedAt: !1888)
!1888 = distinct !DILocation(line: 413, column: 3, scope: !1796, inlinedAt: !1877)
!1889 = !DILocation(line: 138, column: 46, scope: !1811, inlinedAt: !1888)
!1890 = !DILocation(line: 117, column: 42, scope: !1140, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 139, column: 21, scope: !1811, inlinedAt: !1888)
!1892 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 119, column: 3, scope: !1140, inlinedAt: !1891)
!1894 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !1893)
!1895 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !1893)
!1896 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !1893)
!1897 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !1893)
!1898 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !1893)
!1900 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !1899)
!1901 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !1899)
!1902 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !1899)
!1903 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !1899)
!1904 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !1899)
!1905 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !1899)
!1906 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !1893)
!1907 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !1893)
!1908 = !DILocation(line: 120, column: 22, scope: !1140, inlinedAt: !1891)
!1909 = !DILocation(line: 118, column: 12, scope: !1140, inlinedAt: !1891)
!1910 = !DILocation(line: 121, column: 3, scope: !1140, inlinedAt: !1891)
!1911 = !DILocation(line: 122, column: 3, scope: !1140, inlinedAt: !1891)
!1912 = !DILocation(line: 133, column: 35, scope: !1840, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 139, column: 3, scope: !1811, inlinedAt: !1888)
!1914 = !DILocation(line: 133, column: 48, scope: !1840, inlinedAt: !1913)
!1915 = !DILocation(line: 133, column: 60, scope: !1840, inlinedAt: !1913)
!1916 = !DILocation(line: 134, column: 36, scope: !1840, inlinedAt: !1913)
!1917 = !DILocation(line: 134, column: 19, scope: !1840, inlinedAt: !1913)
!1918 = !DILocation(line: 126, column: 32, scope: !1853, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 134, column: 3, scope: !1840, inlinedAt: !1913)
!1920 = !DILocation(line: 126, column: 43, scope: !1853, inlinedAt: !1919)
!1921 = !DILocation(line: 126, column: 50, scope: !1853, inlinedAt: !1919)
!1922 = !DILocation(line: 127, column: 13, scope: !1853, inlinedAt: !1919)
!1923 = !DILocation(line: 127, column: 15, scope: !1853, inlinedAt: !1919)
!1924 = !DILocation(line: 127, column: 6, scope: !1853, inlinedAt: !1919)
!1925 = !DILocation(line: 127, column: 8, scope: !1853, inlinedAt: !1919)
!1926 = !DILocation(line: 128, column: 6, scope: !1853, inlinedAt: !1919)
!1927 = !DILocation(line: 128, column: 8, scope: !1853, inlinedAt: !1919)
!1928 = !DILocation(line: 129, column: 6, scope: !1853, inlinedAt: !1919)
!1929 = !DILocation(line: 129, column: 10, scope: !1853, inlinedAt: !1919)
!1930 = !DILocation(line: 129, column: 15, scope: !1853, inlinedAt: !1919)
!1931 = !DILocation(line: 130, column: 1, scope: !1853, inlinedAt: !1919)
!1932 = !DILocation(line: 135, column: 1, scope: !1840, inlinedAt: !1913)
!1933 = !DILocation(line: 140, column: 1, scope: !1811, inlinedAt: !1888)
!1934 = !DILocation(line: 414, column: 3, scope: !1796, inlinedAt: !1877)
!1935 = !DILocation(line: 415, column: 1, scope: !1796, inlinedAt: !1877)
!1936 = !DILocation(line: 1207, column: 3, scope: !1878, inlinedAt: !1745)
!1937 = !DILocation(line: 0, scope: !1740, inlinedAt: !1745)
!1938 = !DILocation(line: 1208, column: 3, scope: !1740, inlinedAt: !1745)
!1939 = !DILocation(line: 1214, column: 7, scope: !1726, inlinedAt: !1733)
!1940 = !DILocation(line: 1215, column: 14, scope: !1726, inlinedAt: !1733)
!1941 = !DILocation(line: 1218, column: 3, scope: !1726, inlinedAt: !1733)
!1942 = !DILocation(line: 1219, column: 21, scope: !1726, inlinedAt: !1733)
!1943 = !DILocation(line: 1219, column: 3, scope: !1726, inlinedAt: !1733)
!1944 = !DILocation(line: 1220, column: 20, scope: !1726, inlinedAt: !1733)
!1945 = !DILocation(line: 1220, column: 3, scope: !1726, inlinedAt: !1733)
!1946 = !DILocation(line: 1221, column: 1, scope: !1726, inlinedAt: !1733)
!1947 = !DILocation(line: 1298, column: 7, scope: !1734)
!1948 = !DILocation(line: 1301, column: 7, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !895, file: !3, line: 1300, column: 20)
!1950 = !DILocation(line: 80, column: 32, scope: !637, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 1302, column: 11, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 1302, column: 11)
!1953 = !DILocation(line: 80, column: 40, scope: !637, inlinedAt: !1951)
!1954 = !DILocation(line: 81, column: 13, scope: !646, inlinedAt: !1951)
!1955 = !DILocation(line: 81, column: 19, scope: !646, inlinedAt: !1951)
!1956 = !DILocation(line: 81, column: 7, scope: !637, inlinedAt: !1951)
!1957 = !DILocation(line: 82, column: 5, scope: !650, inlinedAt: !1951)
!1958 = !DILocation(line: 86, column: 1, scope: !637, inlinedAt: !1951)
!1959 = !DILocalVariable(name: "ls", arg: 1, scope: !1960, file: !3, line: 1165, type: !597)
!1960 = distinct !DISubprogram(name: "localfunc", scope: !3, file: !3, line: 1165, type: !595, isLocal: true, isDefinition: true, scopeLine: 1165, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1961)
!1961 = !{!1959, !1962, !1963, !1964}
!1962 = !DILocalVariable(name: "v", scope: !1960, file: !3, line: 1166, type: !951)
!1963 = !DILocalVariable(name: "b", scope: !1960, file: !3, line: 1166, type: !951)
!1964 = !DILocalVariable(name: "fs", scope: !1960, file: !3, line: 1167, type: !700)
!1965 = !DILocation(line: 1165, column: 34, scope: !1960, inlinedAt: !1966)
!1966 = distinct !DILocation(line: 1303, column: 9, scope: !1952)
!1967 = !DILocation(line: 1166, column: 3, scope: !1960, inlinedAt: !1966)
!1968 = !DILocation(line: 1167, column: 23, scope: !1960, inlinedAt: !1966)
!1969 = !DILocation(line: 1167, column: 14, scope: !1960, inlinedAt: !1966)
!1970 = !DILocation(line: 117, column: 42, scope: !1140, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 1168, column: 20, scope: !1960, inlinedAt: !1966)
!1972 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 119, column: 3, scope: !1140, inlinedAt: !1971)
!1974 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !1973)
!1975 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !1973)
!1976 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !1973)
!1977 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !1973)
!1978 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !1973)
!1980 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !1979)
!1981 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !1979)
!1982 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !1979)
!1983 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !1979)
!1984 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !1979)
!1985 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !1979)
!1986 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !1973)
!1987 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !1973)
!1988 = !DILocation(line: 120, column: 14, scope: !1140, inlinedAt: !1971)
!1989 = !DILocation(line: 120, column: 22, scope: !1140, inlinedAt: !1971)
!1990 = !DILocation(line: 118, column: 12, scope: !1140, inlinedAt: !1971)
!1991 = !DILocation(line: 121, column: 3, scope: !1140, inlinedAt: !1971)
!1992 = !DILocation(line: 122, column: 3, scope: !1140, inlinedAt: !1971)
!1993 = !DILocation(line: 1168, column: 3, scope: !1960, inlinedAt: !1966)
!1994 = !DILocation(line: 1169, column: 28, scope: !1960, inlinedAt: !1966)
!1995 = !DILocation(line: 1166, column: 11, scope: !1960, inlinedAt: !1966)
!1996 = !DILocation(line: 126, column: 32, scope: !1853, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 1169, column: 3, scope: !1960, inlinedAt: !1966)
!1998 = !DILocation(line: 126, column: 43, scope: !1853, inlinedAt: !1997)
!1999 = !DILocation(line: 126, column: 50, scope: !1853, inlinedAt: !1997)
!2000 = !DILocation(line: 127, column: 13, scope: !1853, inlinedAt: !1997)
!2001 = !DILocation(line: 127, column: 15, scope: !1853, inlinedAt: !1997)
!2002 = !DILocation(line: 127, column: 6, scope: !1853, inlinedAt: !1997)
!2003 = !DILocation(line: 127, column: 8, scope: !1853, inlinedAt: !1997)
!2004 = !DILocation(line: 128, column: 6, scope: !1853, inlinedAt: !1997)
!2005 = !DILocation(line: 128, column: 8, scope: !1853, inlinedAt: !1997)
!2006 = !DILocation(line: 129, column: 6, scope: !1853, inlinedAt: !1997)
!2007 = !DILocation(line: 129, column: 10, scope: !1853, inlinedAt: !1997)
!2008 = !DILocation(line: 129, column: 15, scope: !1853, inlinedAt: !1997)
!2009 = !DILocation(line: 130, column: 1, scope: !1853, inlinedAt: !1997)
!2010 = !DILocation(line: 1170, column: 3, scope: !1960, inlinedAt: !1966)
!2011 = !DILocalVariable(name: "ls", arg: 1, scope: !2012, file: !3, line: 167, type: !597)
!2012 = distinct !DISubprogram(name: "adjustlocalvars", scope: !3, file: !3, line: 167, type: !668, isLocal: true, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2013)
!2013 = !{!2011, !2014, !2015}
!2014 = !DILocalVariable(name: "nvars", arg: 2, scope: !2012, file: !3, line: 167, type: !203)
!2015 = !DILocalVariable(name: "fs", scope: !2012, file: !3, line: 168, type: !700)
!2016 = !DILocation(line: 167, column: 40, scope: !2012, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 1171, column: 3, scope: !1960, inlinedAt: !1966)
!2018 = !DILocation(line: 167, column: 48, scope: !2012, inlinedAt: !2017)
!2019 = !DILocation(line: 168, column: 23, scope: !2012, inlinedAt: !2017)
!2020 = !DILocation(line: 168, column: 14, scope: !2012, inlinedAt: !2017)
!2021 = !DILocation(line: 169, column: 17, scope: !2012, inlinedAt: !2017)
!2022 = !DILocation(line: 169, column: 15, scope: !2012, inlinedAt: !2017)
!2023 = !DILocation(line: 170, column: 3, scope: !2024, inlinedAt: !2017)
!2024 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 170, column: 3)
!2025 = !DILocation(line: 171, column: 5, scope: !2026, inlinedAt: !2017)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 170, column: 26)
!2027 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 170, column: 3)
!2028 = !DILocation(line: 171, column: 40, scope: !2026, inlinedAt: !2017)
!2029 = !DILocation(line: 171, column: 48, scope: !2026, inlinedAt: !2017)
!2030 = !{!806, !574, i64 8}
!2031 = !DILocation(line: 173, column: 1, scope: !2012, inlinedAt: !2017)
!2032 = !DILocation(line: 1172, column: 23, scope: !1960, inlinedAt: !1966)
!2033 = !DILocation(line: 1166, column: 14, scope: !1960, inlinedAt: !1966)
!2034 = !DILocation(line: 1172, column: 3, scope: !1960, inlinedAt: !1966)
!2035 = !DILocation(line: 1173, column: 3, scope: !1960, inlinedAt: !1966)
!2036 = !DILocation(line: 1175, column: 48, scope: !1960, inlinedAt: !1966)
!2037 = !DILocation(line: 1175, column: 3, scope: !1960, inlinedAt: !1966)
!2038 = !DILocation(line: 1175, column: 34, scope: !1960, inlinedAt: !1966)
!2039 = !DILocation(line: 1175, column: 42, scope: !1960, inlinedAt: !1966)
!2040 = !DILocation(line: 1176, column: 1, scope: !1960, inlinedAt: !1966)
!2041 = !DILocation(line: 1303, column: 9, scope: !1952)
!2042 = !DILocalVariable(name: "ls", arg: 1, scope: !2043, file: !3, line: 1179, type: !597)
!2043 = distinct !DISubprogram(name: "localstat", scope: !3, file: !3, line: 1179, type: !595, isLocal: true, isDefinition: true, scopeLine: 1179, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2044)
!2044 = !{!2042, !2045, !2046, !2047}
!2045 = !DILocalVariable(name: "nvars", scope: !2043, file: !3, line: 1181, type: !203)
!2046 = !DILocalVariable(name: "nexps", scope: !2043, file: !3, line: 1182, type: !203)
!2047 = !DILocalVariable(name: "e", scope: !2043, file: !3, line: 1183, type: !951)
!2048 = !DILocation(line: 1179, column: 34, scope: !2043, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 1305, column: 9, scope: !1952)
!2050 = !DILocation(line: 1181, column: 7, scope: !2043, inlinedAt: !2049)
!2051 = !DILocation(line: 1183, column: 3, scope: !2043, inlinedAt: !2049)
!2052 = !DILocation(line: 1184, column: 3, scope: !2043, inlinedAt: !2049)
!2053 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 119, column: 3, scope: !1140, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 1185, column: 22, scope: !2056, inlinedAt: !2049)
!2056 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 1184, column: 6)
!2057 = !DILocation(line: 0, scope: !2056, inlinedAt: !2049)
!2058 = !DILocation(line: 117, column: 42, scope: !1140, inlinedAt: !2055)
!2059 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !2054)
!2060 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !2054)
!2061 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !2054)
!2062 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !2054)
!2063 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !2054)
!2065 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !2064)
!2066 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !2064)
!2067 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !2064)
!2068 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !2064)
!2069 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !2064)
!2070 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !2064)
!2071 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !2054)
!2072 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !2054)
!2073 = !DILocation(line: 120, column: 22, scope: !1140, inlinedAt: !2055)
!2074 = !DILocation(line: 118, column: 12, scope: !1140, inlinedAt: !2055)
!2075 = !DILocation(line: 121, column: 3, scope: !1140, inlinedAt: !2055)
!2076 = !DILocation(line: 122, column: 3, scope: !1140, inlinedAt: !2055)
!2077 = !DILocation(line: 1185, column: 46, scope: !2056, inlinedAt: !2049)
!2078 = !DILocation(line: 1185, column: 5, scope: !2056, inlinedAt: !2049)
!2079 = !DILocation(line: 80, column: 32, scope: !637, inlinedAt: !2080)
!2080 = distinct !DILocation(line: 1186, column: 12, scope: !2043, inlinedAt: !2049)
!2081 = !DILocation(line: 80, column: 40, scope: !637, inlinedAt: !2080)
!2082 = !DILocation(line: 81, column: 13, scope: !646, inlinedAt: !2080)
!2083 = !DILocation(line: 81, column: 19, scope: !646, inlinedAt: !2080)
!2084 = !DILocation(line: 81, column: 7, scope: !637, inlinedAt: !2080)
!2085 = !DILocation(line: 82, column: 5, scope: !650, inlinedAt: !2080)
!2086 = !DILocation(line: 86, column: 1, scope: !637, inlinedAt: !2080)
!2087 = !DILocation(line: 1186, column: 3, scope: !2056, inlinedAt: !2049)
!2088 = !DILocation(line: 80, column: 32, scope: !637, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 1187, column: 7, scope: !2090, inlinedAt: !2049)
!2090 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 1187, column: 7)
!2091 = !DILocation(line: 80, column: 40, scope: !637, inlinedAt: !2089)
!2092 = !DILocation(line: 81, column: 19, scope: !646, inlinedAt: !2089)
!2093 = !DILocation(line: 81, column: 7, scope: !637, inlinedAt: !2089)
!2094 = !DILocation(line: 82, column: 5, scope: !650, inlinedAt: !2089)
!2095 = !DILocation(line: 86, column: 1, scope: !637, inlinedAt: !2089)
!2096 = !DILocation(line: 1183, column: 11, scope: !2043, inlinedAt: !2049)
!2097 = !DILocation(line: 596, column: 32, scope: !1384, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 1188, column: 13, scope: !2090, inlinedAt: !2049)
!2099 = !DILocation(line: 596, column: 45, scope: !1384, inlinedAt: !2098)
!2100 = !DILocation(line: 598, column: 7, scope: !1384, inlinedAt: !2098)
!2101 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 599, column: 3, scope: !1384, inlinedAt: !2098)
!2103 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !2102)
!2104 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !2102)
!2105 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !2102)
!2106 = !DILocation(line: 80, column: 32, scope: !637, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 600, column: 10, scope: !1384, inlinedAt: !2098)
!2108 = !DILocation(line: 80, column: 40, scope: !637, inlinedAt: !2107)
!2109 = !DILocation(line: 81, column: 13, scope: !646, inlinedAt: !2107)
!2110 = !DILocation(line: 81, column: 19, scope: !646, inlinedAt: !2107)
!2111 = !DILocation(line: 81, column: 7, scope: !637, inlinedAt: !2107)
!2112 = !DILocation(line: 82, column: 5, scope: !650, inlinedAt: !2107)
!2113 = !DILocation(line: 86, column: 1, scope: !637, inlinedAt: !2107)
!2114 = !DILocation(line: 601, column: 26, scope: !1408, inlinedAt: !2098)
!2115 = !DILocation(line: 601, column: 5, scope: !1408, inlinedAt: !2098)
!2116 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 602, column: 5, scope: !1408, inlinedAt: !2098)
!2118 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !2117)
!2119 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !2117)
!2120 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !2117)
!2121 = !DILocation(line: 603, column: 6, scope: !1408, inlinedAt: !2098)
!2122 = !DILocation(line: 0, scope: !1408, inlinedAt: !2098)
!2123 = !DILocation(line: 605, column: 3, scope: !1384, inlinedAt: !2098)
!2124 = !DILocation(line: 1182, column: 7, scope: !2043, inlinedAt: !2049)
!2125 = !DILocation(line: 1188, column: 5, scope: !2090, inlinedAt: !2049)
!2126 = !DILocation(line: 1190, column: 7, scope: !2127, inlinedAt: !2049)
!2127 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 1189, column: 8)
!2128 = !DILocation(line: 1190, column: 9, scope: !2127, inlinedAt: !2049)
!2129 = !DILocation(line: 0, scope: !2127, inlinedAt: !2049)
!2130 = !DILocation(line: 1193, column: 3, scope: !2043, inlinedAt: !2049)
!2131 = !DILocation(line: 167, column: 40, scope: !2012, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 1194, column: 3, scope: !2043, inlinedAt: !2049)
!2133 = !DILocation(line: 167, column: 48, scope: !2012, inlinedAt: !2132)
!2134 = !DILocation(line: 168, column: 23, scope: !2012, inlinedAt: !2132)
!2135 = !DILocation(line: 168, column: 14, scope: !2012, inlinedAt: !2132)
!2136 = !DILocation(line: 169, column: 17, scope: !2012, inlinedAt: !2132)
!2137 = !DILocation(line: 169, column: 15, scope: !2012, inlinedAt: !2132)
!2138 = !DILocation(line: 170, column: 3, scope: !2024, inlinedAt: !2132)
!2139 = !DILocation(line: 171, column: 5, scope: !2026, inlinedAt: !2132)
!2140 = !DILocation(line: 171, column: 40, scope: !2026, inlinedAt: !2132)
!2141 = !DILocation(line: 171, column: 48, scope: !2026, inlinedAt: !2132)
!2142 = !DILocation(line: 170, column: 22, scope: !2027, inlinedAt: !2132)
!2143 = distinct !{!2143, !2144}
!2144 = !{!"llvm.loop.unroll.disable"}
!2145 = distinct !{!2145, !2146, !2147}
!2146 = !DILocation(line: 170, column: 3, scope: !2024)
!2147 = !DILocation(line: 172, column: 3, scope: !2024)
!2148 = !DILocation(line: 173, column: 1, scope: !2012, inlinedAt: !2132)
!2149 = !DILocation(line: 1195, column: 1, scope: !2043, inlinedAt: !2049)
!2150 = !DILocalVariable(name: "ls", arg: 1, scope: !2151, file: !3, line: 1238, type: !597)
!2151 = distinct !DISubprogram(name: "retstat", scope: !3, file: !3, line: 1238, type: !595, isLocal: true, isDefinition: true, scopeLine: 1238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2152)
!2152 = !{!2150, !2153, !2154, !2155, !2156}
!2153 = !DILocalVariable(name: "fs", scope: !2151, file: !3, line: 1240, type: !700)
!2154 = !DILocalVariable(name: "e", scope: !2151, file: !3, line: 1241, type: !951)
!2155 = !DILocalVariable(name: "first", scope: !2151, file: !3, line: 1242, type: !203)
!2156 = !DILocalVariable(name: "nret", scope: !2151, file: !3, line: 1242, type: !203)
!2157 = !DILocation(line: 1238, column: 32, scope: !2151, inlinedAt: !2158)
!2158 = distinct !DILocation(line: 1309, column: 7, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !895, file: !3, line: 1308, column: 21)
!2160 = !DILocation(line: 1240, column: 23, scope: !2151, inlinedAt: !2158)
!2161 = !DILocation(line: 1240, column: 14, scope: !2151, inlinedAt: !2158)
!2162 = !DILocation(line: 1241, column: 3, scope: !2151, inlinedAt: !2158)
!2163 = !DILocation(line: 1243, column: 3, scope: !2151, inlinedAt: !2158)
!2164 = !DILocation(line: 1244, column: 26, scope: !2165, inlinedAt: !2158)
!2165 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 1244, column: 7)
!2166 = !DILocation(line: 871, column: 30, scope: !626, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 1244, column: 7, scope: !2165, inlinedAt: !2158)
!2168 = !DILocation(line: 872, column: 3, scope: !626, inlinedAt: !2167)
!2169 = !DILocation(line: 878, column: 1, scope: !626, inlinedAt: !2167)
!2170 = !DILocation(line: 1244, column: 48, scope: !2165, inlinedAt: !2158)
!2171 = !DILocation(line: 1244, column: 7, scope: !2151, inlinedAt: !2158)
!2172 = !DILocation(line: 1241, column: 11, scope: !2151, inlinedAt: !2158)
!2173 = !DILocation(line: 596, column: 32, scope: !1384, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 1247, column: 12, scope: !2175, inlinedAt: !2158)
!2175 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 1246, column: 8)
!2176 = !DILocation(line: 596, column: 45, scope: !1384, inlinedAt: !2174)
!2177 = !DILocation(line: 598, column: 7, scope: !1384, inlinedAt: !2174)
!2178 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 599, column: 3, scope: !1384, inlinedAt: !2174)
!2180 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !2179)
!2181 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !2179)
!2182 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !2179)
!2183 = !DILocation(line: 80, column: 32, scope: !637, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 600, column: 10, scope: !1384, inlinedAt: !2174)
!2185 = !DILocation(line: 80, column: 40, scope: !637, inlinedAt: !2184)
!2186 = !DILocation(line: 81, column: 13, scope: !646, inlinedAt: !2184)
!2187 = !DILocation(line: 81, column: 19, scope: !646, inlinedAt: !2184)
!2188 = !DILocation(line: 81, column: 7, scope: !637, inlinedAt: !2184)
!2189 = !DILocation(line: 82, column: 5, scope: !650, inlinedAt: !2184)
!2190 = !DILocation(line: 86, column: 1, scope: !637, inlinedAt: !2184)
!2191 = !DILocation(line: 601, column: 26, scope: !1408, inlinedAt: !2174)
!2192 = !DILocation(line: 601, column: 5, scope: !1408, inlinedAt: !2174)
!2193 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 602, column: 5, scope: !1408, inlinedAt: !2174)
!2195 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !2194)
!2196 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !2194)
!2197 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !2194)
!2198 = !DILocation(line: 603, column: 6, scope: !1408, inlinedAt: !2174)
!2199 = !DILocation(line: 0, scope: !1408, inlinedAt: !2174)
!2200 = !DILocation(line: 605, column: 3, scope: !1384, inlinedAt: !2174)
!2201 = !DILocation(line: 1242, column: 14, scope: !2151, inlinedAt: !2158)
!2202 = !DILocation(line: 1248, column: 9, scope: !2203, inlinedAt: !2158)
!2203 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 1248, column: 9)
!2204 = !DILocation(line: 1249, column: 7, scope: !2205, inlinedAt: !2158)
!2205 = distinct !DILexicalBlock(scope: !2203, file: !3, line: 1248, column: 26)
!2206 = !DILocation(line: 1250, column: 13, scope: !2207, inlinedAt: !2158)
!2207 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 1250, column: 11)
!2208 = !DILocation(line: 1250, column: 15, scope: !2207, inlinedAt: !2158)
!2209 = !DILocation(line: 1250, column: 32, scope: !2207, inlinedAt: !2158)
!2210 = !DILocation(line: 1250, column: 24, scope: !2207, inlinedAt: !2158)
!2211 = !DILocation(line: 1251, column: 9, scope: !2212, inlinedAt: !2158)
!2212 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 1250, column: 38)
!2213 = !DILocation(line: 1253, column: 7, scope: !2212, inlinedAt: !2158)
!2214 = !DILocation(line: 1254, column: 19, scope: !2205, inlinedAt: !2158)
!2215 = !DILocation(line: 1254, column: 15, scope: !2205, inlinedAt: !2158)
!2216 = !DILocation(line: 1242, column: 7, scope: !2151, inlinedAt: !2158)
!2217 = !DILocation(line: 1256, column: 5, scope: !2205, inlinedAt: !2158)
!2218 = !DILocation(line: 1258, column: 16, scope: !2219, inlinedAt: !2158)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 1258, column: 11)
!2220 = distinct !DILexicalBlock(scope: !2203, file: !3, line: 1257, column: 10)
!2221 = !DILocation(line: 1258, column: 11, scope: !2220, inlinedAt: !2158)
!2222 = !DILocation(line: 1259, column: 17, scope: !2219, inlinedAt: !2158)
!2223 = !DILocation(line: 1259, column: 9, scope: !2219, inlinedAt: !2158)
!2224 = !DILocation(line: 1261, column: 9, scope: !2225, inlinedAt: !2158)
!2225 = distinct !DILexicalBlock(scope: !2219, file: !3, line: 1260, column: 12)
!2226 = !DILocation(line: 1262, column: 21, scope: !2225, inlinedAt: !2158)
!2227 = !DILocation(line: 1262, column: 17, scope: !2225, inlinedAt: !2158)
!2228 = !DILocation(line: 0, scope: !2225, inlinedAt: !2158)
!2229 = !DILocation(line: 0, scope: !2175, inlinedAt: !2158)
!2230 = !DILocation(line: 1267, column: 3, scope: !2151, inlinedAt: !2158)
!2231 = !DILocation(line: 1268, column: 1, scope: !2151, inlinedAt: !2158)
!2232 = !DILocation(line: 1310, column: 7, scope: !2159)
!2233 = !DILocation(line: 1313, column: 7, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !895, file: !3, line: 1312, column: 20)
!2235 = !DILocation(line: 975, column: 34, scope: !1614, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 1314, column: 7, scope: !2234)
!2237 = !DILocation(line: 976, column: 23, scope: !1614, inlinedAt: !2236)
!2238 = !DILocation(line: 976, column: 14, scope: !1614, inlinedAt: !2236)
!2239 = !DILocation(line: 977, column: 22, scope: !1614, inlinedAt: !2236)
!2240 = !DILocation(line: 977, column: 13, scope: !1614, inlinedAt: !2236)
!2241 = !DILocation(line: 978, column: 7, scope: !1614, inlinedAt: !2236)
!2242 = !DILocation(line: 0, scope: !1628, inlinedAt: !2236)
!2243 = !DILocation(line: 979, column: 10, scope: !1614, inlinedAt: !2236)
!2244 = !DILocation(line: 979, column: 13, scope: !1614, inlinedAt: !2236)
!2245 = !DILocation(line: 979, column: 21, scope: !1614, inlinedAt: !2236)
!2246 = !DILocation(line: 979, column: 16, scope: !1614, inlinedAt: !2236)
!2247 = !DILocation(line: 979, column: 3, scope: !1614, inlinedAt: !2236)
!2248 = !DILocation(line: 980, column: 18, scope: !1628, inlinedAt: !2236)
!2249 = !DILocation(line: 980, column: 14, scope: !1628, inlinedAt: !2236)
!2250 = !DILocation(line: 980, column: 11, scope: !1628, inlinedAt: !2236)
!2251 = !DILocation(line: 981, column: 14, scope: !1628, inlinedAt: !2236)
!2252 = !DILocation(line: 984, column: 5, scope: !1643, inlinedAt: !2236)
!2253 = !DILocation(line: 985, column: 7, scope: !1645, inlinedAt: !2236)
!2254 = !DILocation(line: 985, column: 7, scope: !1614, inlinedAt: !2236)
!2255 = !DILocation(line: 986, column: 36, scope: !1645, inlinedAt: !2236)
!2256 = !DILocation(line: 986, column: 32, scope: !1645, inlinedAt: !2236)
!2257 = !DILocation(line: 986, column: 5, scope: !1645, inlinedAt: !2236)
!2258 = !DILocation(line: 987, column: 24, scope: !1614, inlinedAt: !2236)
!2259 = !DILocation(line: 987, column: 35, scope: !1614, inlinedAt: !2236)
!2260 = !DILocation(line: 987, column: 3, scope: !1614, inlinedAt: !2236)
!2261 = !DILocation(line: 988, column: 1, scope: !1614, inlinedAt: !2236)
!2262 = !DILocation(line: 1315, column: 7, scope: !2234)
!2263 = !DILocalVariable(name: "ls", arg: 1, scope: !2264, file: !3, line: 1224, type: !597)
!2264 = distinct !DISubprogram(name: "exprstat", scope: !3, file: !3, line: 1224, type: !595, isLocal: true, isDefinition: true, scopeLine: 1224, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2265)
!2265 = !{!2263, !2266, !2267}
!2266 = !DILocalVariable(name: "fs", scope: !2264, file: !3, line: 1226, type: !700)
!2267 = !DILocalVariable(name: "v", scope: !2264, file: !3, line: 1227, type: !2268)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LHS_assign", file: !3, line: 896, size: 256, elements: !2269)
!2269 = !{!2270, !2272}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2268, file: !3, line: 897, baseType: !2271, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !2268, file: !3, line: 898, baseType: !951, size: 192, offset: 64)
!2273 = !DILocation(line: 1224, column: 33, scope: !2264, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 1318, column: 7, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !895, file: !3, line: 1317, column: 14)
!2276 = !DILocation(line: 1226, column: 23, scope: !2264, inlinedAt: !2274)
!2277 = !DILocation(line: 1226, column: 14, scope: !2264, inlinedAt: !2274)
!2278 = !DILocation(line: 1227, column: 3, scope: !2264, inlinedAt: !2274)
!2279 = !DILocation(line: 1228, column: 21, scope: !2264, inlinedAt: !2274)
!2280 = !DILocation(line: 1228, column: 3, scope: !2264, inlinedAt: !2274)
!2281 = !DILocation(line: 1229, column: 11, scope: !2282, inlinedAt: !2274)
!2282 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 1229, column: 7)
!2283 = !{!2284, !575, i64 8}
!2284 = !{!"LHS_assign", !578, i64 0, !986, i64 8}
!2285 = !DILocation(line: 1229, column: 13, scope: !2282, inlinedAt: !2274)
!2286 = !DILocation(line: 1229, column: 7, scope: !2264, inlinedAt: !2274)
!2287 = !DILocation(line: 1230, column: 5, scope: !2282, inlinedAt: !2274)
!2288 = !DILocation(line: 1232, column: 7, scope: !2289, inlinedAt: !2274)
!2289 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 1231, column: 8)
!2290 = !DILocation(line: 1232, column: 12, scope: !2289, inlinedAt: !2274)
!2291 = !{!2284, !578, i64 0}
!2292 = !DILocation(line: 1227, column: 21, scope: !2264, inlinedAt: !2274)
!2293 = !DILocation(line: 1233, column: 5, scope: !2289, inlinedAt: !2274)
!2294 = !DILocation(line: 1235, column: 1, scope: !2264, inlinedAt: !2274)
!2295 = !DILocation(line: 1319, column: 7, scope: !2275)
!2296 = !DILocation(line: 0, scope: !894)
!2297 = !DILocation(line: 1322, column: 1, scope: !873)
!2298 = distinct !DISubprogram(name: "block", scope: !3, file: !3, line: 881, type: !595, isLocal: true, isDefinition: true, scopeLine: 881, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2299)
!2299 = !{!2300, !2301, !2302}
!2300 = !DILocalVariable(name: "ls", arg: 1, scope: !2298, file: !3, line: 881, type: !597)
!2301 = !DILocalVariable(name: "fs", scope: !2298, file: !3, line: 883, type: !700)
!2302 = !DILocalVariable(name: "bl", scope: !2298, file: !3, line: 884, type: !936)
!2303 = !DILocation(line: 881, column: 30, scope: !2298)
!2304 = !DILocation(line: 883, column: 23, scope: !2298)
!2305 = !DILocation(line: 883, column: 14, scope: !2298)
!2306 = !DILocation(line: 884, column: 3, scope: !2298)
!2307 = !DILocation(line: 884, column: 12, scope: !2298)
!2308 = !DILocation(line: 285, column: 36, scope: !1000, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 885, column: 3, scope: !2298)
!2310 = !DILocation(line: 285, column: 50, scope: !1000, inlinedAt: !2309)
!2311 = !DILocation(line: 285, column: 62, scope: !1000, inlinedAt: !2309)
!2312 = !DILocation(line: 286, column: 7, scope: !1000, inlinedAt: !2309)
!2313 = !DILocation(line: 286, column: 17, scope: !1000, inlinedAt: !2309)
!2314 = !DILocation(line: 287, column: 7, scope: !1000, inlinedAt: !2309)
!2315 = !DILocation(line: 287, column: 19, scope: !1000, inlinedAt: !2309)
!2316 = !DILocation(line: 288, column: 21, scope: !1000, inlinedAt: !2309)
!2317 = !DILocation(line: 288, column: 7, scope: !1000, inlinedAt: !2309)
!2318 = !DILocation(line: 288, column: 15, scope: !1000, inlinedAt: !2309)
!2319 = !DILocation(line: 289, column: 7, scope: !1000, inlinedAt: !2309)
!2320 = !DILocation(line: 289, column: 13, scope: !1000, inlinedAt: !2309)
!2321 = !DILocation(line: 290, column: 22, scope: !1000, inlinedAt: !2309)
!2322 = !DILocation(line: 290, column: 16, scope: !1000, inlinedAt: !2309)
!2323 = !DILocation(line: 291, column: 10, scope: !1000, inlinedAt: !2309)
!2324 = !DILocation(line: 293, column: 1, scope: !1000, inlinedAt: !2309)
!2325 = !DILocation(line: 1325, column: 30, scope: !594, inlinedAt: !2326)
!2326 = distinct !DILocation(line: 886, column: 3, scope: !2298)
!2327 = !DILocation(line: 1327, column: 7, scope: !594, inlinedAt: !2326)
!2328 = !DILocation(line: 276, column: 35, scope: !605, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 1328, column: 3, scope: !594, inlinedAt: !2326)
!2330 = !DILocation(line: 277, column: 13, scope: !610, inlinedAt: !2329)
!2331 = !DILocation(line: 277, column: 16, scope: !610, inlinedAt: !2329)
!2332 = !DILocation(line: 277, column: 7, scope: !610, inlinedAt: !2329)
!2333 = !DILocation(line: 277, column: 24, scope: !610, inlinedAt: !2329)
!2334 = !DILocation(line: 277, column: 7, scope: !605, inlinedAt: !2329)
!2335 = !DILocation(line: 278, column: 2, scope: !610, inlinedAt: !2329)
!2336 = !DILocation(line: 279, column: 1, scope: !605, inlinedAt: !2329)
!2337 = !DILocation(line: 1329, column: 18, scope: !594, inlinedAt: !2326)
!2338 = !DILocation(line: 1329, column: 41, scope: !594, inlinedAt: !2326)
!2339 = !DILocation(line: 871, column: 30, scope: !626, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 1329, column: 22, scope: !594, inlinedAt: !2326)
!2341 = !DILocation(line: 872, column: 3, scope: !626, inlinedAt: !2340)
!2342 = !DILocation(line: 878, column: 1, scope: !626, inlinedAt: !2340)
!2343 = !DILocation(line: 1330, column: 14, scope: !635, inlinedAt: !2326)
!2344 = !DILocation(line: 80, column: 32, scope: !637, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 1331, column: 5, scope: !635, inlinedAt: !2326)
!2346 = !DILocation(line: 80, column: 40, scope: !637, inlinedAt: !2345)
!2347 = !DILocation(line: 81, column: 13, scope: !646, inlinedAt: !2345)
!2348 = !DILocation(line: 81, column: 19, scope: !646, inlinedAt: !2345)
!2349 = !DILocation(line: 81, column: 7, scope: !637, inlinedAt: !2345)
!2350 = !DILocation(line: 82, column: 5, scope: !650, inlinedAt: !2345)
!2351 = !DILocation(line: 83, column: 5, scope: !650, inlinedAt: !2345)
!2352 = !DILocation(line: 86, column: 1, scope: !637, inlinedAt: !2345)
!2353 = !DILocation(line: 1334, column: 27, scope: !635, inlinedAt: !2326)
!2354 = !DILocation(line: 1334, column: 31, scope: !635, inlinedAt: !2326)
!2355 = !DILocation(line: 1334, column: 23, scope: !635, inlinedAt: !2326)
!2356 = !DILocation(line: 1334, column: 13, scope: !635, inlinedAt: !2326)
!2357 = !DILocation(line: 1334, column: 21, scope: !635, inlinedAt: !2326)
!2358 = !DILocation(line: 1329, column: 11, scope: !594, inlinedAt: !2326)
!2359 = !DILocation(line: 1336, column: 3, scope: !594, inlinedAt: !2326)
!2360 = !DILocation(line: 1337, column: 1, scope: !594, inlinedAt: !2326)
!2361 = !DILocation(line: 296, column: 36, scope: !1060, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 888, column: 3, scope: !2298)
!2363 = !DILocation(line: 297, column: 22, scope: !1060, inlinedAt: !2362)
!2364 = !DILocation(line: 297, column: 13, scope: !1060, inlinedAt: !2362)
!2365 = !DILocation(line: 298, column: 16, scope: !1060, inlinedAt: !2362)
!2366 = !DILocation(line: 298, column: 10, scope: !1060, inlinedAt: !2362)
!2367 = !DILocation(line: 299, column: 18, scope: !1060, inlinedAt: !2362)
!2368 = !DILocation(line: 299, column: 26, scope: !1060, inlinedAt: !2362)
!2369 = !DILocation(line: 299, column: 22, scope: !1060, inlinedAt: !2362)
!2370 = !DILocation(line: 176, column: 35, scope: !788, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 299, column: 3, scope: !1060, inlinedAt: !2362)
!2372 = !DILocation(line: 176, column: 43, scope: !788, inlinedAt: !2371)
!2373 = !DILocation(line: 177, column: 23, scope: !788, inlinedAt: !2371)
!2374 = !DILocation(line: 177, column: 14, scope: !788, inlinedAt: !2371)
!2375 = !DILocation(line: 178, column: 14, scope: !788, inlinedAt: !2371)
!2376 = !DILocation(line: 178, column: 22, scope: !788, inlinedAt: !2371)
!2377 = !DILocation(line: 178, column: 3, scope: !788, inlinedAt: !2371)
!2378 = !DILocation(line: 179, column: 5, scope: !788, inlinedAt: !2371)
!2379 = !DILocation(line: 179, column: 34, scope: !788, inlinedAt: !2371)
!2380 = !DILocation(line: 179, column: 40, scope: !788, inlinedAt: !2371)
!2381 = !DILocation(line: 180, column: 1, scope: !788, inlinedAt: !2371)
!2382 = !DILocation(line: 300, column: 11, scope: !1087, inlinedAt: !2362)
!2383 = !DILocation(line: 300, column: 7, scope: !1087, inlinedAt: !2362)
!2384 = !DILocation(line: 300, column: 7, scope: !1060, inlinedAt: !2362)
!2385 = !DILocation(line: 301, column: 5, scope: !1087, inlinedAt: !2362)
!2386 = !DILocation(line: 305, column: 21, scope: !1060, inlinedAt: !2362)
!2387 = !DILocation(line: 305, column: 17, scope: !1060, inlinedAt: !2362)
!2388 = !DILocation(line: 305, column: 7, scope: !1060, inlinedAt: !2362)
!2389 = !DILocation(line: 305, column: 15, scope: !1060, inlinedAt: !2362)
!2390 = !DILocation(line: 306, column: 28, scope: !1060, inlinedAt: !2362)
!2391 = !DILocation(line: 306, column: 3, scope: !1060, inlinedAt: !2362)
!2392 = !DILocation(line: 307, column: 1, scope: !1060, inlinedAt: !2362)
!2393 = !DILocation(line: 889, column: 1, scope: !2298)
!2394 = distinct !DISubprogram(name: "check_match", scope: !3, file: !3, line: 104, type: !2395, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2397)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{null, !597, !203, !203, !203}
!2397 = !{!2398, !2399, !2400, !2401}
!2398 = !DILocalVariable(name: "ls", arg: 1, scope: !2394, file: !3, line: 104, type: !597)
!2399 = !DILocalVariable(name: "what", arg: 2, scope: !2394, file: !3, line: 104, type: !203)
!2400 = !DILocalVariable(name: "who", arg: 3, scope: !2394, file: !3, line: 104, type: !203)
!2401 = !DILocalVariable(name: "where", arg: 4, scope: !2394, file: !3, line: 104, type: !203)
!2402 = !DILocation(line: 104, column: 36, scope: !2394)
!2403 = !DILocation(line: 104, column: 44, scope: !2394)
!2404 = !DILocation(line: 104, column: 54, scope: !2394)
!2405 = !DILocation(line: 104, column: 63, scope: !2394)
!2406 = !DILocation(line: 80, column: 32, scope: !637, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 105, column: 8, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 105, column: 7)
!2409 = !DILocation(line: 80, column: 40, scope: !637, inlinedAt: !2407)
!2410 = !DILocation(line: 81, column: 13, scope: !646, inlinedAt: !2407)
!2411 = !DILocation(line: 81, column: 19, scope: !646, inlinedAt: !2407)
!2412 = !DILocation(line: 81, column: 7, scope: !637, inlinedAt: !2407)
!2413 = !DILocation(line: 82, column: 5, scope: !650, inlinedAt: !2407)
!2414 = !DILocation(line: 86, column: 1, scope: !637, inlinedAt: !2407)
!2415 = !DILocation(line: 105, column: 7, scope: !2394)
!2416 = !DILocation(line: 106, column: 22, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 106, column: 9)
!2418 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 105, column: 28)
!2419 = !DILocation(line: 106, column: 15, scope: !2417)
!2420 = !DILocation(line: 0, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 108, column: 10)
!2422 = !DILocation(line: 106, column: 9, scope: !2418)
!2423 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 107, column: 7, scope: !2417)
!2425 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !2424)
!2426 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !2424)
!2427 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !2424)
!2428 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !2424)
!2429 = !DILocation(line: 107, column: 7, scope: !2417)
!2430 = !DILocation(line: 111, column: 41, scope: !2421)
!2431 = !DILocation(line: 109, column: 28, scope: !2421)
!2432 = !DILocation(line: 109, column: 7, scope: !2421)
!2433 = !DILocation(line: 114, column: 1, scope: !2394)
!2434 = distinct !DISubprogram(name: "test_then_block", scope: !3, file: !3, line: 1130, type: !874, isLocal: true, isDefinition: true, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2435)
!2435 = !{!2436, !2437}
!2436 = !DILocalVariable(name: "ls", arg: 1, scope: !2434, file: !3, line: 1130, type: !597)
!2437 = !DILocalVariable(name: "condexit", scope: !2434, file: !3, line: 1132, type: !203)
!2438 = !DILocation(line: 1130, column: 39, scope: !2434)
!2439 = !DILocation(line: 1133, column: 3, scope: !2434)
!2440 = !DILocation(line: 965, column: 28, scope: !948, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 1134, column: 14, scope: !2434)
!2442 = !DILocation(line: 967, column: 3, scope: !948, inlinedAt: !2441)
!2443 = !DILocation(line: 967, column: 11, scope: !948, inlinedAt: !2441)
!2444 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 968, column: 3, scope: !948, inlinedAt: !2441)
!2446 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !2445)
!2447 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !2445)
!2448 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !2445)
!2449 = !DILocation(line: 969, column: 9, scope: !984, inlinedAt: !2441)
!2450 = !DILocation(line: 969, column: 11, scope: !984, inlinedAt: !2441)
!2451 = !DILocation(line: 969, column: 7, scope: !948, inlinedAt: !2441)
!2452 = !DILocation(line: 969, column: 24, scope: !984, inlinedAt: !2441)
!2453 = !DILocation(line: 969, column: 20, scope: !984, inlinedAt: !2441)
!2454 = !DILocation(line: 970, column: 21, scope: !948, inlinedAt: !2441)
!2455 = !DILocation(line: 970, column: 3, scope: !948, inlinedAt: !2441)
!2456 = !DILocation(line: 971, column: 12, scope: !948, inlinedAt: !2441)
!2457 = !DILocation(line: 972, column: 1, scope: !948, inlinedAt: !2441)
!2458 = !DILocation(line: 971, column: 3, scope: !948, inlinedAt: !2441)
!2459 = !DILocation(line: 1132, column: 7, scope: !2434)
!2460 = !DILocation(line: 94, column: 34, scope: !1031, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 1135, column: 3, scope: !2434)
!2462 = !DILocation(line: 94, column: 42, scope: !1031, inlinedAt: !2461)
!2463 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 95, column: 3, scope: !1031, inlinedAt: !2461)
!2465 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !2464)
!2466 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !2464)
!2467 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !2464)
!2468 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !2464)
!2469 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !2464)
!2471 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !2470)
!2472 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !2470)
!2473 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !2470)
!2474 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !2470)
!2475 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !2470)
!2476 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !2470)
!2477 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !2464)
!2478 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !2464)
!2479 = !DILocation(line: 96, column: 3, scope: !1031, inlinedAt: !2461)
!2480 = !DILocation(line: 97, column: 1, scope: !1031, inlinedAt: !2461)
!2481 = !DILocation(line: 1136, column: 3, scope: !2434)
!2482 = !DILocation(line: 1137, column: 3, scope: !2434)
!2483 = distinct !DISubprogram(name: "subexpr", scope: !3, file: !3, line: 828, type: !2484, isLocal: true, isDefinition: true, scopeLine: 828, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2487)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!2486, !597, !975, !7}
!2486 = !DIDerivedType(tag: DW_TAG_typedef, name: "BinOpr", file: !59, line: 33, baseType: !58)
!2487 = !{!2488, !2489, !2490, !2491, !2492, !2494, !2496}
!2488 = !DILocalVariable(name: "ls", arg: 1, scope: !2483, file: !3, line: 828, type: !597)
!2489 = !DILocalVariable(name: "v", arg: 2, scope: !2483, file: !3, line: 828, type: !975)
!2490 = !DILocalVariable(name: "limit", arg: 3, scope: !2483, file: !3, line: 828, type: !7)
!2491 = !DILocalVariable(name: "op", scope: !2483, file: !3, line: 829, type: !2486)
!2492 = !DILocalVariable(name: "uop", scope: !2483, file: !3, line: 830, type: !2493)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "UnOpr", file: !59, line: 36, baseType: !77)
!2494 = !DILocalVariable(name: "v2", scope: !2495, file: !3, line: 842, type: !951)
!2495 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 841, column: 59)
!2496 = !DILocalVariable(name: "nextop", scope: !2495, file: !3, line: 843, type: !2486)
!2497 = !DILocation(line: 828, column: 34, scope: !2483)
!2498 = !DILocation(line: 828, column: 47, scope: !2483)
!2499 = !DILocation(line: 828, column: 63, scope: !2483)
!2500 = !DILocation(line: 276, column: 35, scope: !605, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 831, column: 3, scope: !2483)
!2502 = !DILocation(line: 277, column: 13, scope: !610, inlinedAt: !2501)
!2503 = !DILocation(line: 277, column: 16, scope: !610, inlinedAt: !2501)
!2504 = !DILocation(line: 277, column: 7, scope: !610, inlinedAt: !2501)
!2505 = !DILocation(line: 277, column: 24, scope: !610, inlinedAt: !2501)
!2506 = !DILocation(line: 277, column: 7, scope: !605, inlinedAt: !2501)
!2507 = !DILocation(line: 278, column: 2, scope: !610, inlinedAt: !2501)
!2508 = !DILocation(line: 279, column: 1, scope: !605, inlinedAt: !2501)
!2509 = !DILocation(line: 832, column: 24, scope: !2483)
!2510 = !DILocalVariable(name: "op", arg: 1, scope: !2511, file: !3, line: 778, type: !203)
!2511 = distinct !DISubprogram(name: "getunopr", scope: !3, file: !3, line: 778, type: !2512, isLocal: true, isDefinition: true, scopeLine: 778, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2514)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!2493, !203}
!2514 = !{!2510}
!2515 = !DILocation(line: 778, column: 28, scope: !2511, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 832, column: 9, scope: !2483)
!2517 = !DILocation(line: 779, column: 3, scope: !2511, inlinedAt: !2516)
!2518 = !DILocation(line: 781, column: 15, scope: !2519, inlinedAt: !2516)
!2519 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 779, column: 15)
!2520 = !DILocation(line: 782, column: 15, scope: !2519, inlinedAt: !2516)
!2521 = !DILocation(line: 785, column: 1, scope: !2511, inlinedAt: !2516)
!2522 = !DILocation(line: 830, column: 9, scope: !2483)
!2523 = !DILocation(line: 834, column: 5, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 833, column: 27)
!2525 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 833, column: 7)
!2526 = !DILocation(line: 835, column: 5, scope: !2524)
!2527 = !DILocation(line: 836, column: 21, scope: !2524)
!2528 = !DILocation(line: 836, column: 5, scope: !2524)
!2529 = !DILocation(line: 837, column: 3, scope: !2524)
!2530 = !DILocalVariable(name: "ls", arg: 1, scope: !2531, file: !3, line: 727, type: !597)
!2531 = distinct !DISubprogram(name: "simpleexp", scope: !3, file: !3, line: 727, type: !973, isLocal: true, isDefinition: true, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2532)
!2532 = !{!2530, !2533, !2534}
!2533 = !DILocalVariable(name: "v", arg: 2, scope: !2531, file: !3, line: 727, type: !975)
!2534 = !DILocalVariable(name: "fs", scope: !2535, file: !3, line: 753, type: !700)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 752, column: 19)
!2536 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 730, column: 24)
!2537 = !DILocation(line: 727, column: 34, scope: !2531, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 838, column: 8, scope: !2525)
!2539 = !DILocation(line: 727, column: 47, scope: !2531, inlinedAt: !2538)
!2540 = !DILocation(line: 730, column: 3, scope: !2531, inlinedAt: !2538)
!2541 = !DILocation(line: 126, column: 32, scope: !1853, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 732, column: 7, scope: !2543, inlinedAt: !2538)
!2543 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 731, column: 21)
!2544 = !DILocation(line: 126, column: 43, scope: !1853, inlinedAt: !2542)
!2545 = !DILocation(line: 126, column: 50, scope: !1853, inlinedAt: !2542)
!2546 = !DILocation(line: 127, column: 13, scope: !1853, inlinedAt: !2542)
!2547 = !DILocation(line: 127, column: 15, scope: !1853, inlinedAt: !2542)
!2548 = !DILocation(line: 127, column: 6, scope: !1853, inlinedAt: !2542)
!2549 = !DILocation(line: 127, column: 8, scope: !1853, inlinedAt: !2542)
!2550 = !DILocation(line: 128, column: 6, scope: !1853, inlinedAt: !2542)
!2551 = !DILocation(line: 128, column: 8, scope: !1853, inlinedAt: !2542)
!2552 = !DILocation(line: 129, column: 6, scope: !1853, inlinedAt: !2542)
!2553 = !DILocation(line: 129, column: 10, scope: !1853, inlinedAt: !2542)
!2554 = !DILocation(line: 129, column: 15, scope: !1853, inlinedAt: !2542)
!2555 = !DILocation(line: 130, column: 1, scope: !1853, inlinedAt: !2542)
!2556 = !DILocation(line: 733, column: 33, scope: !2543, inlinedAt: !2538)
!2557 = !DILocation(line: 733, column: 17, scope: !2543, inlinedAt: !2538)
!2558 = !DILocation(line: 734, column: 7, scope: !2543, inlinedAt: !2538)
!2559 = !DILocation(line: 737, column: 31, scope: !2560, inlinedAt: !2538)
!2560 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 736, column: 21)
!2561 = !DILocation(line: 737, column: 39, scope: !2560, inlinedAt: !2538)
!2562 = !DILocation(line: 133, column: 35, scope: !1840, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 737, column: 7, scope: !2560, inlinedAt: !2538)
!2564 = !DILocation(line: 133, column: 48, scope: !1840, inlinedAt: !2563)
!2565 = !DILocation(line: 133, column: 60, scope: !1840, inlinedAt: !2563)
!2566 = !DILocation(line: 134, column: 36, scope: !1840, inlinedAt: !2563)
!2567 = !DILocation(line: 134, column: 19, scope: !1840, inlinedAt: !2563)
!2568 = !DILocation(line: 126, column: 32, scope: !1853, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 134, column: 3, scope: !1840, inlinedAt: !2563)
!2570 = !DILocation(line: 126, column: 43, scope: !1853, inlinedAt: !2569)
!2571 = !DILocation(line: 126, column: 50, scope: !1853, inlinedAt: !2569)
!2572 = !DILocation(line: 127, column: 13, scope: !1853, inlinedAt: !2569)
!2573 = !DILocation(line: 127, column: 15, scope: !1853, inlinedAt: !2569)
!2574 = !DILocation(line: 127, column: 6, scope: !1853, inlinedAt: !2569)
!2575 = !DILocation(line: 127, column: 8, scope: !1853, inlinedAt: !2569)
!2576 = !DILocation(line: 128, column: 6, scope: !1853, inlinedAt: !2569)
!2577 = !DILocation(line: 128, column: 8, scope: !1853, inlinedAt: !2569)
!2578 = !DILocation(line: 129, column: 6, scope: !1853, inlinedAt: !2569)
!2579 = !DILocation(line: 129, column: 10, scope: !1853, inlinedAt: !2569)
!2580 = !DILocation(line: 129, column: 15, scope: !1853, inlinedAt: !2569)
!2581 = !DILocation(line: 130, column: 1, scope: !1853, inlinedAt: !2569)
!2582 = !DILocation(line: 135, column: 1, scope: !1840, inlinedAt: !2563)
!2583 = !DILocation(line: 738, column: 7, scope: !2560, inlinedAt: !2538)
!2584 = !DILocation(line: 126, column: 32, scope: !1853, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 741, column: 7, scope: !2586, inlinedAt: !2538)
!2586 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 740, column: 18)
!2587 = !DILocation(line: 126, column: 43, scope: !1853, inlinedAt: !2585)
!2588 = !DILocation(line: 126, column: 50, scope: !1853, inlinedAt: !2585)
!2589 = !DILocation(line: 127, column: 13, scope: !1853, inlinedAt: !2585)
!2590 = !DILocation(line: 127, column: 15, scope: !1853, inlinedAt: !2585)
!2591 = !DILocation(line: 127, column: 6, scope: !1853, inlinedAt: !2585)
!2592 = !DILocation(line: 127, column: 8, scope: !1853, inlinedAt: !2585)
!2593 = !DILocation(line: 128, column: 6, scope: !1853, inlinedAt: !2585)
!2594 = !DILocation(line: 128, column: 8, scope: !1853, inlinedAt: !2585)
!2595 = !DILocation(line: 129, column: 6, scope: !1853, inlinedAt: !2585)
!2596 = !DILocation(line: 129, column: 10, scope: !1853, inlinedAt: !2585)
!2597 = !DILocation(line: 129, column: 15, scope: !1853, inlinedAt: !2585)
!2598 = !DILocation(line: 130, column: 1, scope: !1853, inlinedAt: !2585)
!2599 = !DILocation(line: 742, column: 7, scope: !2586, inlinedAt: !2538)
!2600 = !DILocation(line: 126, column: 32, scope: !1853, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 745, column: 7, scope: !2602, inlinedAt: !2538)
!2602 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 744, column: 19)
!2603 = !DILocation(line: 126, column: 43, scope: !1853, inlinedAt: !2601)
!2604 = !DILocation(line: 126, column: 50, scope: !1853, inlinedAt: !2601)
!2605 = !DILocation(line: 127, column: 13, scope: !1853, inlinedAt: !2601)
!2606 = !DILocation(line: 127, column: 15, scope: !1853, inlinedAt: !2601)
!2607 = !DILocation(line: 127, column: 6, scope: !1853, inlinedAt: !2601)
!2608 = !DILocation(line: 127, column: 8, scope: !1853, inlinedAt: !2601)
!2609 = !DILocation(line: 128, column: 6, scope: !1853, inlinedAt: !2601)
!2610 = !DILocation(line: 128, column: 8, scope: !1853, inlinedAt: !2601)
!2611 = !DILocation(line: 129, column: 6, scope: !1853, inlinedAt: !2601)
!2612 = !DILocation(line: 129, column: 10, scope: !1853, inlinedAt: !2601)
!2613 = !DILocation(line: 129, column: 15, scope: !1853, inlinedAt: !2601)
!2614 = !DILocation(line: 130, column: 1, scope: !1853, inlinedAt: !2601)
!2615 = !DILocation(line: 746, column: 7, scope: !2602, inlinedAt: !2538)
!2616 = !DILocation(line: 126, column: 32, scope: !1853, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 749, column: 7, scope: !2618, inlinedAt: !2538)
!2618 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 748, column: 20)
!2619 = !DILocation(line: 126, column: 43, scope: !1853, inlinedAt: !2617)
!2620 = !DILocation(line: 126, column: 50, scope: !1853, inlinedAt: !2617)
!2621 = !DILocation(line: 127, column: 13, scope: !1853, inlinedAt: !2617)
!2622 = !DILocation(line: 127, column: 15, scope: !1853, inlinedAt: !2617)
!2623 = !DILocation(line: 127, column: 6, scope: !1853, inlinedAt: !2617)
!2624 = !DILocation(line: 127, column: 8, scope: !1853, inlinedAt: !2617)
!2625 = !DILocation(line: 128, column: 6, scope: !1853, inlinedAt: !2617)
!2626 = !DILocation(line: 128, column: 8, scope: !1853, inlinedAt: !2617)
!2627 = !DILocation(line: 129, column: 6, scope: !1853, inlinedAt: !2617)
!2628 = !DILocation(line: 129, column: 10, scope: !1853, inlinedAt: !2617)
!2629 = !DILocation(line: 129, column: 15, scope: !1853, inlinedAt: !2617)
!2630 = !DILocation(line: 130, column: 1, scope: !1853, inlinedAt: !2617)
!2631 = !DILocation(line: 750, column: 7, scope: !2618, inlinedAt: !2538)
!2632 = !DILocation(line: 753, column: 27, scope: !2535, inlinedAt: !2538)
!2633 = !DILocation(line: 753, column: 18, scope: !2535, inlinedAt: !2538)
!2634 = !DILocation(line: 754, column: 7, scope: !2635, inlinedAt: !2538)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 754, column: 7)
!2636 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 754, column: 7)
!2637 = !DILocation(line: 754, column: 7, scope: !2636, inlinedAt: !2538)
!2638 = !DILocation(line: 756, column: 11, scope: !2535, inlinedAt: !2538)
!2639 = !DILocation(line: 756, column: 24, scope: !2535, inlinedAt: !2538)
!2640 = !DILocation(line: 756, column: 14, scope: !2535, inlinedAt: !2538)
!2641 = !DILocation(line: 757, column: 28, scope: !2535, inlinedAt: !2538)
!2642 = !DILocation(line: 126, column: 32, scope: !1853, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 757, column: 7, scope: !2535, inlinedAt: !2538)
!2644 = !DILocation(line: 126, column: 43, scope: !1853, inlinedAt: !2643)
!2645 = !DILocation(line: 126, column: 50, scope: !1853, inlinedAt: !2643)
!2646 = !DILocation(line: 127, column: 13, scope: !1853, inlinedAt: !2643)
!2647 = !DILocation(line: 127, column: 15, scope: !1853, inlinedAt: !2643)
!2648 = !DILocation(line: 127, column: 6, scope: !1853, inlinedAt: !2643)
!2649 = !DILocation(line: 127, column: 8, scope: !1853, inlinedAt: !2643)
!2650 = !DILocation(line: 128, column: 6, scope: !1853, inlinedAt: !2643)
!2651 = !DILocation(line: 128, column: 8, scope: !1853, inlinedAt: !2643)
!2652 = !DILocation(line: 129, column: 6, scope: !1853, inlinedAt: !2643)
!2653 = !DILocation(line: 129, column: 10, scope: !1853, inlinedAt: !2643)
!2654 = !DILocation(line: 129, column: 15, scope: !1853, inlinedAt: !2643)
!2655 = !DILocation(line: 130, column: 1, scope: !1853, inlinedAt: !2643)
!2656 = !DILocation(line: 761, column: 7, scope: !2657, inlinedAt: !2538)
!2657 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 760, column: 15)
!2658 = !DILocation(line: 762, column: 7, scope: !2657, inlinedAt: !2538)
!2659 = !DILocation(line: 765, column: 7, scope: !2660, inlinedAt: !2538)
!2660 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 764, column: 23)
!2661 = !DILocation(line: 766, column: 26, scope: !2660, inlinedAt: !2538)
!2662 = !DILocation(line: 766, column: 7, scope: !2660, inlinedAt: !2538)
!2663 = !DILocation(line: 767, column: 7, scope: !2660, inlinedAt: !2538)
!2664 = !DILocation(line: 770, column: 7, scope: !2665, inlinedAt: !2538)
!2665 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 769, column: 14)
!2666 = !DILocation(line: 771, column: 7, scope: !2665, inlinedAt: !2538)
!2667 = !DILocation(line: 774, column: 3, scope: !2531, inlinedAt: !2538)
!2668 = !DILocation(line: 775, column: 1, scope: !2531, inlinedAt: !2538)
!2669 = !DILocation(line: 840, column: 24, scope: !2483)
!2670 = !DILocalVariable(name: "op", arg: 1, scope: !2671, file: !3, line: 788, type: !203)
!2671 = distinct !DISubprogram(name: "getbinopr", scope: !3, file: !3, line: 788, type: !2672, isLocal: true, isDefinition: true, scopeLine: 788, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2674)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!2486, !203}
!2674 = !{!2670}
!2675 = !DILocation(line: 788, column: 30, scope: !2671, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 840, column: 8, scope: !2483)
!2677 = !DILocation(line: 789, column: 3, scope: !2671, inlinedAt: !2676)
!2678 = !DILocation(line: 791, column: 15, scope: !2679, inlinedAt: !2676)
!2679 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 789, column: 15)
!2680 = !DILocation(line: 792, column: 15, scope: !2679, inlinedAt: !2676)
!2681 = !DILocation(line: 793, column: 15, scope: !2679, inlinedAt: !2676)
!2682 = !DILocation(line: 794, column: 15, scope: !2679, inlinedAt: !2676)
!2683 = !DILocation(line: 795, column: 15, scope: !2679, inlinedAt: !2676)
!2684 = !DILocation(line: 796, column: 21, scope: !2679, inlinedAt: !2676)
!2685 = !DILocation(line: 797, column: 17, scope: !2679, inlinedAt: !2676)
!2686 = !DILocation(line: 798, column: 17, scope: !2679, inlinedAt: !2676)
!2687 = !DILocation(line: 799, column: 15, scope: !2679, inlinedAt: !2676)
!2688 = !DILocation(line: 800, column: 17, scope: !2679, inlinedAt: !2676)
!2689 = !DILocation(line: 801, column: 15, scope: !2679, inlinedAt: !2676)
!2690 = !DILocation(line: 802, column: 17, scope: !2679, inlinedAt: !2676)
!2691 = !DILocation(line: 803, column: 18, scope: !2679, inlinedAt: !2676)
!2692 = !DILocation(line: 804, column: 17, scope: !2679, inlinedAt: !2676)
!2693 = !DILocation(line: 807, column: 1, scope: !2671, inlinedAt: !2676)
!2694 = !DILocation(line: 829, column: 10, scope: !2483)
!2695 = !DILocation(line: 841, column: 29, scope: !2483)
!2696 = !DILocation(line: 841, column: 32, scope: !2483)
!2697 = !DILocation(line: 841, column: 45, scope: !2483)
!2698 = !{!2699, !575, i64 0}
!2699 = !{!"", !575, i64 0, !575, i64 1}
!2700 = !DILocation(line: 841, column: 50, scope: !2483)
!2701 = !DILocation(line: 841, column: 3, scope: !2483)
!2702 = !DILocation(line: 842, column: 5, scope: !2495)
!2703 = !DILocation(line: 844, column: 5, scope: !2495)
!2704 = !DILocation(line: 845, column: 20, scope: !2495)
!2705 = !DILocation(line: 845, column: 5, scope: !2495)
!2706 = !DILocation(line: 847, column: 44, scope: !2495)
!2707 = !{!2699, !575, i64 1}
!2708 = !DILocation(line: 847, column: 31, scope: !2495)
!2709 = !DILocation(line: 842, column: 13, scope: !2495)
!2710 = !DILocation(line: 847, column: 14, scope: !2495)
!2711 = !DILocation(line: 843, column: 12, scope: !2495)
!2712 = !DILocation(line: 848, column: 21, scope: !2495)
!2713 = !DILocation(line: 848, column: 5, scope: !2495)
!2714 = !DILocation(line: 850, column: 3, scope: !2483)
!2715 = !DILocation(line: 841, column: 13, scope: !2483)
!2716 = distinct !{!2716, !2701, !2714}
!2717 = !DILocation(line: 0, scope: !2495)
!2718 = !DILocation(line: 851, column: 3, scope: !2483)
!2719 = !DILocation(line: 852, column: 3, scope: !2483)
!2720 = distinct !DISubprogram(name: "constructor", scope: !3, file: !3, line: 498, type: !973, isLocal: true, isDefinition: true, scopeLine: 498, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2721)
!2721 = !{!2722, !2723, !2724, !2725, !2726, !2727}
!2722 = !DILocalVariable(name: "ls", arg: 1, scope: !2720, file: !3, line: 498, type: !597)
!2723 = !DILocalVariable(name: "t", arg: 2, scope: !2720, file: !3, line: 498, type: !975)
!2724 = !DILocalVariable(name: "fs", scope: !2720, file: !3, line: 500, type: !700)
!2725 = !DILocalVariable(name: "line", scope: !2720, file: !3, line: 501, type: !203)
!2726 = !DILocalVariable(name: "pc", scope: !2720, file: !3, line: 502, type: !203)
!2727 = !DILocalVariable(name: "cc", scope: !2720, file: !3, line: 503, type: !2728)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConsControl", file: !3, line: 434, size: 384, elements: !2729)
!2729 = !{!2730, !2731, !2732, !2733, !2734}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !2728, file: !3, line: 435, baseType: !951, size: 192)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !2728, file: !3, line: 436, baseType: !975, size: 64, offset: 192)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "nh", scope: !2728, file: !3, line: 437, baseType: !203, size: 32, offset: 256)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "na", scope: !2728, file: !3, line: 438, baseType: !203, size: 32, offset: 288)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "tostore", scope: !2728, file: !3, line: 439, baseType: !203, size: 32, offset: 320)
!2735 = !DILocation(line: 498, column: 36, scope: !2720)
!2736 = !DILocation(line: 498, column: 49, scope: !2720)
!2737 = !DILocation(line: 500, column: 23, scope: !2720)
!2738 = !DILocation(line: 500, column: 14, scope: !2720)
!2739 = !DILocation(line: 501, column: 18, scope: !2720)
!2740 = !DILocation(line: 501, column: 7, scope: !2720)
!2741 = !DILocation(line: 502, column: 12, scope: !2720)
!2742 = !DILocation(line: 502, column: 7, scope: !2720)
!2743 = !DILocation(line: 503, column: 3, scope: !2720)
!2744 = !DILocation(line: 504, column: 22, scope: !2720)
!2745 = !DILocation(line: 504, column: 30, scope: !2720)
!2746 = !{!2747, !574, i64 40}
!2747 = !{!"ConsControl", !986, i64 0, !578, i64 24, !574, i64 32, !574, i64 36, !574, i64 40}
!2748 = !DILocation(line: 504, column: 14, scope: !2720)
!2749 = !DILocation(line: 504, column: 17, scope: !2720)
!2750 = !{!2747, !574, i64 32}
!2751 = !DILocation(line: 504, column: 6, scope: !2720)
!2752 = !DILocation(line: 504, column: 9, scope: !2720)
!2753 = !{!2747, !574, i64 36}
!2754 = !DILocation(line: 505, column: 6, scope: !2720)
!2755 = !DILocation(line: 505, column: 8, scope: !2720)
!2756 = !{!2747, !578, i64 24}
!2757 = !DILocation(line: 126, column: 32, scope: !1853, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 506, column: 3, scope: !2720)
!2759 = !DILocation(line: 126, column: 43, scope: !1853, inlinedAt: !2758)
!2760 = !DILocation(line: 126, column: 50, scope: !1853, inlinedAt: !2758)
!2761 = !DILocation(line: 127, column: 13, scope: !1853, inlinedAt: !2758)
!2762 = !DILocation(line: 127, column: 15, scope: !1853, inlinedAt: !2758)
!2763 = !DILocation(line: 127, column: 6, scope: !1853, inlinedAt: !2758)
!2764 = !DILocation(line: 127, column: 8, scope: !1853, inlinedAt: !2758)
!2765 = !DILocation(line: 128, column: 6, scope: !1853, inlinedAt: !2758)
!2766 = !DILocation(line: 128, column: 8, scope: !1853, inlinedAt: !2758)
!2767 = !DILocation(line: 129, column: 6, scope: !1853, inlinedAt: !2758)
!2768 = !DILocation(line: 129, column: 10, scope: !1853, inlinedAt: !2758)
!2769 = !DILocation(line: 129, column: 15, scope: !1853, inlinedAt: !2758)
!2770 = !DILocation(line: 130, column: 1, scope: !1853, inlinedAt: !2758)
!2771 = !DILocation(line: 507, column: 16, scope: !2720)
!2772 = !DILocation(line: 126, column: 32, scope: !1853, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 507, column: 3, scope: !2720)
!2774 = !DILocation(line: 126, column: 43, scope: !1853, inlinedAt: !2773)
!2775 = !DILocation(line: 126, column: 50, scope: !1853, inlinedAt: !2773)
!2776 = !DILocation(line: 127, column: 13, scope: !1853, inlinedAt: !2773)
!2777 = !DILocation(line: 127, column: 15, scope: !1853, inlinedAt: !2773)
!2778 = !DILocation(line: 127, column: 6, scope: !1853, inlinedAt: !2773)
!2779 = !DILocation(line: 127, column: 8, scope: !1853, inlinedAt: !2773)
!2780 = !DILocation(line: 128, column: 6, scope: !1853, inlinedAt: !2773)
!2781 = !DILocation(line: 128, column: 8, scope: !1853, inlinedAt: !2773)
!2782 = !DILocation(line: 129, column: 6, scope: !1853, inlinedAt: !2773)
!2783 = !DILocation(line: 129, column: 10, scope: !1853, inlinedAt: !2773)
!2784 = !DILocation(line: 129, column: 15, scope: !1853, inlinedAt: !2773)
!2785 = !DILocation(line: 130, column: 1, scope: !1853, inlinedAt: !2773)
!2786 = !DILocation(line: 508, column: 24, scope: !2720)
!2787 = !DILocation(line: 508, column: 3, scope: !2720)
!2788 = !DILocation(line: 94, column: 34, scope: !1031, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 509, column: 3, scope: !2720)
!2790 = !DILocation(line: 94, column: 42, scope: !1031, inlinedAt: !2789)
!2791 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 95, column: 3, scope: !1031, inlinedAt: !2789)
!2793 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !2792)
!2794 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !2792)
!2795 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !2792)
!2796 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !2792)
!2797 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !2792)
!2799 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !2798)
!2800 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !2798)
!2801 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !2798)
!2802 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !2798)
!2803 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !2798)
!2804 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !2798)
!2805 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !2792)
!2806 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !2792)
!2807 = !DILocation(line: 96, column: 3, scope: !1031, inlinedAt: !2789)
!2808 = !DILocation(line: 97, column: 1, scope: !1031, inlinedAt: !2789)
!2809 = !DILocation(line: 512, column: 15, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 512, column: 9)
!2811 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 510, column: 6)
!2812 = !DILocation(line: 512, column: 21, scope: !2810)
!2813 = !DILocation(line: 512, column: 9, scope: !2811)
!2814 = !DILocation(line: 465, column: 13, scope: !2815, inlinedAt: !2823)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 465, column: 7)
!2816 = distinct !DISubprogram(name: "closelistfield", scope: !3, file: !3, line: 464, type: !2817, isLocal: true, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2820)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{null, !700, !2819}
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2820 = !{!2821, !2822}
!2821 = !DILocalVariable(name: "fs", arg: 1, scope: !2816, file: !3, line: 464, type: !700)
!2822 = !DILocalVariable(name: "cc", arg: 2, scope: !2816, file: !3, line: 464, type: !2819)
!2823 = distinct !DILocation(line: 513, column: 5, scope: !2811)
!2824 = !DILocation(line: 503, column: 22, scope: !2720)
!2825 = !DILocation(line: 464, column: 40, scope: !2816, inlinedAt: !2823)
!2826 = !DILocation(line: 464, column: 64, scope: !2816, inlinedAt: !2823)
!2827 = !DILocation(line: 465, column: 15, scope: !2815, inlinedAt: !2823)
!2828 = !DILocation(line: 465, column: 7, scope: !2816, inlinedAt: !2823)
!2829 = !DILocation(line: 466, column: 3, scope: !2816, inlinedAt: !2823)
!2830 = !DILocation(line: 467, column: 11, scope: !2816, inlinedAt: !2823)
!2831 = !{!2747, !575, i64 0}
!2832 = !DILocation(line: 468, column: 11, scope: !2833, inlinedAt: !2823)
!2833 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 468, column: 7)
!2834 = !DILocation(line: 468, column: 19, scope: !2833, inlinedAt: !2823)
!2835 = !DILocation(line: 468, column: 7, scope: !2816, inlinedAt: !2823)
!2836 = !DILocation(line: 469, column: 26, scope: !2837, inlinedAt: !2823)
!2837 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 468, column: 41)
!2838 = !DILocation(line: 469, column: 29, scope: !2837, inlinedAt: !2823)
!2839 = !DILocation(line: 469, column: 33, scope: !2837, inlinedAt: !2823)
!2840 = !DILocation(line: 469, column: 43, scope: !2837, inlinedAt: !2823)
!2841 = !DILocation(line: 469, column: 5, scope: !2837, inlinedAt: !2823)
!2842 = !DILocation(line: 470, column: 17, scope: !2837, inlinedAt: !2823)
!2843 = !DILocation(line: 471, column: 3, scope: !2837, inlinedAt: !2823)
!2844 = !DILocation(line: 472, column: 1, scope: !2816, inlinedAt: !2823)
!2845 = !DILocation(line: 514, column: 18, scope: !2811)
!2846 = !DILocation(line: 514, column: 5, scope: !2811)
!2847 = !DILocation(line: 516, column: 9, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 515, column: 21)
!2849 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 514, column: 25)
!2850 = !DILocation(line: 517, column: 27, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 517, column: 13)
!2852 = !{!573, !574, i64 32}
!2853 = !DILocation(line: 517, column: 33, scope: !2851)
!2854 = !DILocation(line: 517, column: 13, scope: !2848)
!2855 = !DILocalVariable(name: "ls", arg: 1, scope: !2856, file: !3, line: 490, type: !597)
!2856 = distinct !DISubprogram(name: "listfield", scope: !3, file: !3, line: 490, type: !2857, isLocal: true, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{null, !597, !2819}
!2859 = !{!2855, !2860}
!2860 = !DILocalVariable(name: "cc", arg: 2, scope: !2856, file: !3, line: 490, type: !2819)
!2861 = !DILocation(line: 490, column: 34, scope: !2856, inlinedAt: !2862)
!2862 = distinct !DILocation(line: 518, column: 11, scope: !2851)
!2863 = !DILocation(line: 490, column: 58, scope: !2856, inlinedAt: !2862)
!2864 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 491, column: 3, scope: !2856, inlinedAt: !2862)
!2866 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !2865)
!2867 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !2865)
!2868 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !2865)
!2869 = !DILocation(line: 492, column: 3, scope: !2870, inlinedAt: !2862)
!2870 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 492, column: 3)
!2871 = !DILocation(line: 492, column: 3, scope: !2856, inlinedAt: !2862)
!2872 = !DILocalVariable(name: "fs", arg: 1, scope: !2873, file: !3, line: 71, type: !700)
!2873 = distinct !DISubprogram(name: "errorlimit", scope: !3, file: !3, line: 71, type: !2874, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2876)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{null, !700, !203, !375}
!2876 = !{!2872, !2877, !2878, !2879}
!2877 = !DILocalVariable(name: "limit", arg: 2, scope: !2873, file: !3, line: 71, type: !203)
!2878 = !DILocalVariable(name: "what", arg: 3, scope: !2873, file: !3, line: 71, type: !375)
!2879 = !DILocalVariable(name: "msg", scope: !2873, file: !3, line: 72, type: !375)
!2880 = !DILocation(line: 71, column: 36, scope: !2873, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 492, column: 3, scope: !2870, inlinedAt: !2862)
!2882 = !DILocation(line: 71, column: 44, scope: !2873, inlinedAt: !2881)
!2883 = !DILocation(line: 71, column: 63, scope: !2873, inlinedAt: !2881)
!2884 = !DILocation(line: 72, column: 26, scope: !2873, inlinedAt: !2881)
!2885 = !DILocation(line: 72, column: 29, scope: !2873, inlinedAt: !2881)
!2886 = !{!591, !574, i64 96}
!2887 = !DILocation(line: 72, column: 41, scope: !2873, inlinedAt: !2881)
!2888 = !DILocation(line: 0, scope: !2873, inlinedAt: !2881)
!2889 = !DILocation(line: 72, column: 21, scope: !2873, inlinedAt: !2881)
!2890 = !DILocation(line: 73, column: 5, scope: !2873, inlinedAt: !2881)
!2891 = !DILocation(line: 74, column: 5, scope: !2873, inlinedAt: !2881)
!2892 = !DILocation(line: 72, column: 15, scope: !2873, inlinedAt: !2881)
!2893 = !DILocation(line: 76, column: 21, scope: !2873, inlinedAt: !2881)
!2894 = !DILocation(line: 76, column: 3, scope: !2873, inlinedAt: !2881)
!2895 = !DILocation(line: 77, column: 1, scope: !2873, inlinedAt: !2881)
!2896 = !DILocation(line: 493, column: 9, scope: !2856, inlinedAt: !2862)
!2897 = !DILocation(line: 494, column: 14, scope: !2856, inlinedAt: !2862)
!2898 = !DILocation(line: 495, column: 1, scope: !2856, inlinedAt: !2862)
!2899 = !DILocation(line: 518, column: 11, scope: !2851)
!2900 = !DILocation(line: 520, column: 11, scope: !2851)
!2901 = !DILocation(line: 524, column: 9, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 523, column: 17)
!2903 = !DILocation(line: 525, column: 9, scope: !2902)
!2904 = !DILocation(line: 490, column: 34, scope: !2856, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 528, column: 9, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 527, column: 16)
!2907 = !DILocation(line: 490, column: 58, scope: !2856, inlinedAt: !2905)
!2908 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 491, column: 3, scope: !2856, inlinedAt: !2905)
!2910 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !2909)
!2911 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !2909)
!2912 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !2909)
!2913 = !DILocation(line: 492, column: 3, scope: !2870, inlinedAt: !2905)
!2914 = !DILocation(line: 492, column: 3, scope: !2856, inlinedAt: !2905)
!2915 = !DILocation(line: 71, column: 36, scope: !2873, inlinedAt: !2916)
!2916 = distinct !DILocation(line: 492, column: 3, scope: !2870, inlinedAt: !2905)
!2917 = !DILocation(line: 71, column: 44, scope: !2873, inlinedAt: !2916)
!2918 = !DILocation(line: 71, column: 63, scope: !2873, inlinedAt: !2916)
!2919 = !DILocation(line: 72, column: 26, scope: !2873, inlinedAt: !2916)
!2920 = !DILocation(line: 72, column: 29, scope: !2873, inlinedAt: !2916)
!2921 = !DILocation(line: 72, column: 41, scope: !2873, inlinedAt: !2916)
!2922 = !DILocation(line: 0, scope: !2873, inlinedAt: !2916)
!2923 = !DILocation(line: 72, column: 21, scope: !2873, inlinedAt: !2916)
!2924 = !DILocation(line: 73, column: 5, scope: !2873, inlinedAt: !2916)
!2925 = !DILocation(line: 74, column: 5, scope: !2873, inlinedAt: !2916)
!2926 = !DILocation(line: 72, column: 15, scope: !2873, inlinedAt: !2916)
!2927 = !DILocation(line: 76, column: 21, scope: !2873, inlinedAt: !2916)
!2928 = !DILocation(line: 76, column: 3, scope: !2873, inlinedAt: !2916)
!2929 = !DILocation(line: 77, column: 1, scope: !2873, inlinedAt: !2916)
!2930 = !DILocation(line: 493, column: 9, scope: !2856, inlinedAt: !2905)
!2931 = !DILocation(line: 494, column: 14, scope: !2856, inlinedAt: !2905)
!2932 = !DILocation(line: 495, column: 1, scope: !2856, inlinedAt: !2905)
!2933 = !DILocation(line: 529, column: 9, scope: !2906)
!2934 = !DILocation(line: 80, column: 32, scope: !637, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 532, column: 12, scope: !2720)
!2936 = !DILocation(line: 80, column: 40, scope: !637, inlinedAt: !2935)
!2937 = !DILocation(line: 81, column: 13, scope: !646, inlinedAt: !2935)
!2938 = !DILocation(line: 81, column: 19, scope: !646, inlinedAt: !2935)
!2939 = !DILocation(line: 81, column: 7, scope: !637, inlinedAt: !2935)
!2940 = !DILocation(line: 82, column: 5, scope: !650, inlinedAt: !2935)
!2941 = !DILocation(line: 532, column: 30, scope: !2720)
!2942 = !DILocation(line: 86, column: 1, scope: !637, inlinedAt: !2935)
!2943 = !DILocation(line: 80, column: 32, scope: !637, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 532, column: 33, scope: !2720)
!2945 = !DILocation(line: 80, column: 40, scope: !637, inlinedAt: !2944)
!2946 = !DILocation(line: 81, column: 19, scope: !646, inlinedAt: !2944)
!2947 = !DILocation(line: 81, column: 7, scope: !637, inlinedAt: !2944)
!2948 = !DILocation(line: 86, column: 1, scope: !637, inlinedAt: !2944)
!2949 = !DILocation(line: 532, column: 3, scope: !2811)
!2950 = !DILocation(line: 82, column: 5, scope: !650, inlinedAt: !2944)
!2951 = !DILocation(line: 533, column: 3, scope: !2720)
!2952 = !DILocalVariable(name: "fs", arg: 1, scope: !2953, file: !3, line: 475, type: !700)
!2953 = distinct !DISubprogram(name: "lastlistfield", scope: !3, file: !3, line: 475, type: !2817, isLocal: true, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2954)
!2954 = !{!2952, !2955}
!2955 = !DILocalVariable(name: "cc", arg: 2, scope: !2953, file: !3, line: 475, type: !2819)
!2956 = !DILocation(line: 475, column: 39, scope: !2953, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 534, column: 3, scope: !2720)
!2958 = !DILocation(line: 475, column: 63, scope: !2953, inlinedAt: !2957)
!2959 = !DILocation(line: 476, column: 11, scope: !2960, inlinedAt: !2957)
!2960 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 476, column: 7)
!2961 = !DILocation(line: 476, column: 19, scope: !2960, inlinedAt: !2957)
!2962 = !DILocation(line: 476, column: 7, scope: !2953, inlinedAt: !2957)
!2963 = !DILocation(line: 477, column: 7, scope: !2964, inlinedAt: !2957)
!2964 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 477, column: 7)
!2965 = !DILocation(line: 478, column: 5, scope: !2966, inlinedAt: !2957)
!2966 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 477, column: 28)
!2967 = !DILocation(line: 479, column: 26, scope: !2966, inlinedAt: !2957)
!2968 = !DILocation(line: 479, column: 29, scope: !2966, inlinedAt: !2957)
!2969 = !DILocation(line: 479, column: 33, scope: !2966, inlinedAt: !2957)
!2970 = !DILocation(line: 479, column: 43, scope: !2966, inlinedAt: !2957)
!2971 = !DILocation(line: 479, column: 5, scope: !2966, inlinedAt: !2957)
!2972 = !DILocation(line: 480, column: 11, scope: !2966, inlinedAt: !2957)
!2973 = !DILocation(line: 481, column: 3, scope: !2966, inlinedAt: !2957)
!2974 = !DILocation(line: 484, column: 7, scope: !2975, inlinedAt: !2957)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 483, column: 9)
!2976 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 482, column: 8)
!2977 = !DILocation(line: 485, column: 51, scope: !2976, inlinedAt: !2957)
!2978 = !DILocation(line: 485, column: 26, scope: !2976, inlinedAt: !2957)
!2979 = !DILocation(line: 485, column: 29, scope: !2976, inlinedAt: !2957)
!2980 = !DILocation(line: 485, column: 33, scope: !2976, inlinedAt: !2957)
!2981 = !DILocation(line: 485, column: 43, scope: !2976, inlinedAt: !2957)
!2982 = !DILocation(line: 485, column: 5, scope: !2976, inlinedAt: !2957)
!2983 = !DILocation(line: 487, column: 1, scope: !2953, inlinedAt: !2957)
!2984 = !DILocation(line: 535, column: 3, scope: !2720)
!2985 = !DILocation(line: 536, column: 3, scope: !2720)
!2986 = !DILocation(line: 537, column: 1, scope: !2720)
!2987 = distinct !DISubprogram(name: "body", scope: !3, file: !3, line: 576, type: !2988, isLocal: true, isDefinition: true, scopeLine: 576, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2990)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{null, !597, !975, !203, !203}
!2990 = !{!2991, !2992, !2993, !2994, !2995}
!2991 = !DILocalVariable(name: "ls", arg: 1, scope: !2987, file: !3, line: 576, type: !597)
!2992 = !DILocalVariable(name: "e", arg: 2, scope: !2987, file: !3, line: 576, type: !975)
!2993 = !DILocalVariable(name: "needself", arg: 3, scope: !2987, file: !3, line: 576, type: !203)
!2994 = !DILocalVariable(name: "line", arg: 4, scope: !2987, file: !3, line: 576, type: !203)
!2995 = !DILocalVariable(name: "new_fs", scope: !2987, file: !3, line: 578, type: !701)
!2996 = !DILocation(line: 576, column: 29, scope: !2987)
!2997 = !DILocation(line: 576, column: 42, scope: !2987)
!2998 = !DILocation(line: 576, column: 49, scope: !2987)
!2999 = !DILocation(line: 576, column: 63, scope: !2987)
!3000 = !DILocation(line: 578, column: 3, scope: !2987)
!3001 = !DILocation(line: 578, column: 13, scope: !2987)
!3002 = !DILocation(line: 579, column: 3, scope: !2987)
!3003 = !DILocation(line: 580, column: 10, scope: !2987)
!3004 = !DILocation(line: 580, column: 13, scope: !2987)
!3005 = !DILocation(line: 580, column: 25, scope: !2987)
!3006 = !DILocation(line: 94, column: 34, scope: !1031, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 581, column: 3, scope: !2987)
!3008 = !DILocation(line: 94, column: 42, scope: !1031, inlinedAt: !3007)
!3009 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 95, column: 3, scope: !1031, inlinedAt: !3007)
!3011 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !3010)
!3012 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !3010)
!3013 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !3010)
!3014 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !3010)
!3015 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !3010)
!3017 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !3016)
!3018 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !3016)
!3019 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !3016)
!3020 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !3016)
!3021 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !3016)
!3022 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !3016)
!3023 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !3010)
!3024 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !3010)
!3025 = !DILocation(line: 96, column: 3, scope: !1031, inlinedAt: !3007)
!3026 = !DILocation(line: 97, column: 1, scope: !1031, inlinedAt: !3007)
!3027 = !DILocation(line: 582, column: 7, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 582, column: 7)
!3029 = !DILocation(line: 582, column: 7, scope: !2987)
!3030 = !DILocation(line: 545, column: 23, scope: !3031, inlinedAt: !3037)
!3031 = distinct !DISubprogram(name: "parlist", scope: !3, file: !3, line: 543, type: !595, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3032)
!3032 = !{!3033, !3034, !3035, !3036}
!3033 = !DILocalVariable(name: "ls", arg: 1, scope: !3031, file: !3, line: 543, type: !597)
!3034 = !DILocalVariable(name: "fs", scope: !3031, file: !3, line: 545, type: !700)
!3035 = !DILocalVariable(name: "f", scope: !3031, file: !3, line: 546, type: !459)
!3036 = !DILocalVariable(name: "nparams", scope: !3031, file: !3, line: 547, type: !203)
!3037 = distinct !DILocation(line: 586, column: 3, scope: !2987)
!3038 = !DILocation(line: 546, column: 18, scope: !3031, inlinedAt: !3037)
!3039 = !DILocation(line: 583, column: 5, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3028, file: !3, line: 582, column: 17)
!3041 = !DILocation(line: 167, column: 40, scope: !2012, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 584, column: 5, scope: !3040)
!3043 = !DILocation(line: 167, column: 48, scope: !2012, inlinedAt: !3042)
!3044 = !DILocation(line: 168, column: 23, scope: !2012, inlinedAt: !3042)
!3045 = !DILocation(line: 168, column: 14, scope: !2012, inlinedAt: !3042)
!3046 = !DILocation(line: 169, column: 17, scope: !2012, inlinedAt: !3042)
!3047 = !DILocation(line: 169, column: 15, scope: !2012, inlinedAt: !3042)
!3048 = !DILocation(line: 170, column: 3, scope: !2024, inlinedAt: !3042)
!3049 = !DILocation(line: 171, column: 5, scope: !2026, inlinedAt: !3042)
!3050 = !DILocation(line: 171, column: 40, scope: !2026, inlinedAt: !3042)
!3051 = !DILocation(line: 171, column: 48, scope: !2026, inlinedAt: !3042)
!3052 = !DILocation(line: 173, column: 1, scope: !2012, inlinedAt: !3042)
!3053 = !DILocation(line: 585, column: 3, scope: !3040)
!3054 = !DILocation(line: 543, column: 32, scope: !3031, inlinedAt: !3037)
!3055 = !DILocation(line: 545, column: 14, scope: !3031, inlinedAt: !3037)
!3056 = !DILocation(line: 546, column: 10, scope: !3031, inlinedAt: !3037)
!3057 = !DILocation(line: 547, column: 7, scope: !3031, inlinedAt: !3037)
!3058 = !DILocation(line: 548, column: 6, scope: !3031, inlinedAt: !3037)
!3059 = !DILocation(line: 548, column: 16, scope: !3031, inlinedAt: !3037)
!3060 = !DILocation(line: 549, column: 13, scope: !3061, inlinedAt: !3037)
!3061 = distinct !DILexicalBlock(scope: !3031, file: !3, line: 549, column: 7)
!3062 = !DILocation(line: 549, column: 19, scope: !3061, inlinedAt: !3037)
!3063 = !DILocation(line: 549, column: 7, scope: !3031, inlinedAt: !3037)
!3064 = !DILocation(line: 551, column: 7, scope: !3065, inlinedAt: !3037)
!3065 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 550, column: 8)
!3066 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 549, column: 27)
!3067 = !DILocation(line: 82, column: 5, scope: !650, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 568, column: 31, scope: !3066, inlinedAt: !3037)
!3069 = !DILocation(line: 86, column: 1, scope: !637, inlinedAt: !3068)
!3070 = !DILocation(line: 551, column: 21, scope: !3065, inlinedAt: !3037)
!3071 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 119, column: 3, scope: !1140, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 553, column: 28, scope: !3074, inlinedAt: !3037)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 552, column: 23)
!3075 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 551, column: 28)
!3076 = !DILocation(line: 120, column: 22, scope: !1140, inlinedAt: !3073)
!3077 = !DILocation(line: 118, column: 12, scope: !1140, inlinedAt: !3073)
!3078 = !DILocation(line: 121, column: 3, scope: !1140, inlinedAt: !3073)
!3079 = !DILocation(line: 122, column: 3, scope: !1140, inlinedAt: !3073)
!3080 = !DILocation(line: 553, column: 54, scope: !3074, inlinedAt: !3037)
!3081 = !DILocation(line: 553, column: 11, scope: !3074, inlinedAt: !3037)
!3082 = !DILocation(line: 554, column: 11, scope: !3074, inlinedAt: !3037)
!3083 = !DILocation(line: 557, column: 11, scope: !3084, inlinedAt: !3037)
!3084 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 556, column: 23)
!3085 = !DILocation(line: 560, column: 11, scope: !3084, inlinedAt: !3037)
!3086 = !DILocation(line: 563, column: 24, scope: !3084, inlinedAt: !3037)
!3087 = !DILocation(line: 568, column: 28, scope: !3066, inlinedAt: !3037)
!3088 = !DILocation(line: 566, column: 18, scope: !3075, inlinedAt: !3037)
!3089 = !DILocation(line: 567, column: 7, scope: !3075, inlinedAt: !3037)
!3090 = !DILocation(line: 568, column: 18, scope: !3066, inlinedAt: !3037)
!3091 = !DILocation(line: 568, column: 15, scope: !3066, inlinedAt: !3037)
!3092 = !DILocation(line: 80, column: 32, scope: !637, inlinedAt: !3068)
!3093 = !DILocation(line: 80, column: 40, scope: !637, inlinedAt: !3068)
!3094 = !DILocation(line: 81, column: 13, scope: !646, inlinedAt: !3068)
!3095 = !DILocation(line: 81, column: 19, scope: !646, inlinedAt: !3068)
!3096 = !DILocation(line: 81, column: 7, scope: !637, inlinedAt: !3068)
!3097 = !DILocation(line: 568, column: 5, scope: !3065, inlinedAt: !3037)
!3098 = !DILocation(line: 168, column: 23, scope: !2012, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 570, column: 3, scope: !3031, inlinedAt: !3037)
!3100 = !DILocation(line: 167, column: 40, scope: !2012, inlinedAt: !3099)
!3101 = !DILocation(line: 167, column: 48, scope: !2012, inlinedAt: !3099)
!3102 = !DILocation(line: 168, column: 14, scope: !2012, inlinedAt: !3099)
!3103 = !DILocation(line: 169, column: 17, scope: !2012, inlinedAt: !3099)
!3104 = !DILocation(line: 169, column: 15, scope: !2012, inlinedAt: !3099)
!3105 = !DILocation(line: 170, column: 3, scope: !2024, inlinedAt: !3099)
!3106 = !DILocation(line: 171, column: 5, scope: !2026, inlinedAt: !3099)
!3107 = !DILocation(line: 171, column: 40, scope: !2026, inlinedAt: !3099)
!3108 = !DILocation(line: 171, column: 48, scope: !2026, inlinedAt: !3099)
!3109 = !DILocation(line: 170, column: 22, scope: !2027, inlinedAt: !3099)
!3110 = distinct !{!3110, !2144}
!3111 = !DILocation(line: 173, column: 1, scope: !2012, inlinedAt: !3099)
!3112 = !DILocation(line: 571, column: 18, scope: !3031, inlinedAt: !3037)
!3113 = !DILocation(line: 571, column: 6, scope: !3031, inlinedAt: !3037)
!3114 = !DILocation(line: 571, column: 16, scope: !3031, inlinedAt: !3037)
!3115 = !{!591, !575, i64 113}
!3116 = !DILocation(line: 572, column: 24, scope: !3031, inlinedAt: !3037)
!3117 = !DILocation(line: 572, column: 3, scope: !3031, inlinedAt: !3037)
!3118 = !DILocation(line: 573, column: 1, scope: !3031, inlinedAt: !3037)
!3119 = !DILocation(line: 94, column: 34, scope: !1031, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 587, column: 3, scope: !2987)
!3121 = !DILocation(line: 94, column: 42, scope: !1031, inlinedAt: !3120)
!3122 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 95, column: 3, scope: !1031, inlinedAt: !3120)
!3124 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !3123)
!3125 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !3123)
!3126 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !3123)
!3127 = !DILocation(line: 0, scope: !2987)
!3128 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !3123)
!3129 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !3123)
!3131 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !3130)
!3132 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !3130)
!3133 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !3130)
!3134 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !3130)
!3135 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !3130)
!3136 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !3130)
!3137 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !3123)
!3138 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !3123)
!3139 = !DILocation(line: 96, column: 3, scope: !1031, inlinedAt: !3120)
!3140 = !DILocation(line: 97, column: 1, scope: !1031, inlinedAt: !3120)
!3141 = !DILocation(line: 1325, column: 30, scope: !594, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 588, column: 3, scope: !2987)
!3143 = !DILocation(line: 1327, column: 7, scope: !594, inlinedAt: !3142)
!3144 = !DILocation(line: 276, column: 35, scope: !605, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 1328, column: 3, scope: !594, inlinedAt: !3142)
!3146 = !DILocation(line: 277, column: 13, scope: !610, inlinedAt: !3145)
!3147 = !DILocation(line: 277, column: 16, scope: !610, inlinedAt: !3145)
!3148 = !DILocation(line: 277, column: 7, scope: !610, inlinedAt: !3145)
!3149 = !DILocation(line: 277, column: 24, scope: !610, inlinedAt: !3145)
!3150 = !DILocation(line: 277, column: 7, scope: !605, inlinedAt: !3145)
!3151 = !DILocation(line: 278, column: 2, scope: !610, inlinedAt: !3145)
!3152 = !DILocation(line: 279, column: 1, scope: !605, inlinedAt: !3145)
!3153 = !DILocation(line: 1329, column: 18, scope: !594, inlinedAt: !3142)
!3154 = !DILocation(line: 1329, column: 41, scope: !594, inlinedAt: !3142)
!3155 = !DILocation(line: 871, column: 30, scope: !626, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 1329, column: 22, scope: !594, inlinedAt: !3142)
!3157 = !DILocation(line: 872, column: 3, scope: !626, inlinedAt: !3156)
!3158 = !DILocation(line: 878, column: 1, scope: !626, inlinedAt: !3156)
!3159 = !DILocation(line: 1330, column: 14, scope: !635, inlinedAt: !3142)
!3160 = !DILocation(line: 80, column: 32, scope: !637, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 1331, column: 5, scope: !635, inlinedAt: !3142)
!3162 = !DILocation(line: 80, column: 40, scope: !637, inlinedAt: !3161)
!3163 = !DILocation(line: 81, column: 13, scope: !646, inlinedAt: !3161)
!3164 = !DILocation(line: 81, column: 19, scope: !646, inlinedAt: !3161)
!3165 = !DILocation(line: 81, column: 7, scope: !637, inlinedAt: !3161)
!3166 = !DILocation(line: 82, column: 5, scope: !650, inlinedAt: !3161)
!3167 = !DILocation(line: 83, column: 5, scope: !650, inlinedAt: !3161)
!3168 = !DILocation(line: 86, column: 1, scope: !637, inlinedAt: !3161)
!3169 = !DILocation(line: 1334, column: 27, scope: !635, inlinedAt: !3142)
!3170 = !DILocation(line: 1334, column: 31, scope: !635, inlinedAt: !3142)
!3171 = !DILocation(line: 1334, column: 23, scope: !635, inlinedAt: !3142)
!3172 = !DILocation(line: 1334, column: 13, scope: !635, inlinedAt: !3142)
!3173 = !DILocation(line: 1334, column: 21, scope: !635, inlinedAt: !3142)
!3174 = !DILocation(line: 1329, column: 11, scope: !594, inlinedAt: !3142)
!3175 = !DILocation(line: 1336, column: 3, scope: !594, inlinedAt: !3142)
!3176 = !DILocation(line: 1337, column: 1, scope: !594, inlinedAt: !3142)
!3177 = !DILocation(line: 589, column: 35, scope: !2987)
!3178 = !DILocation(line: 589, column: 10, scope: !2987)
!3179 = !DILocation(line: 589, column: 13, scope: !2987)
!3180 = !DILocation(line: 589, column: 29, scope: !2987)
!3181 = !{!591, !574, i64 100}
!3182 = !DILocation(line: 590, column: 3, scope: !2987)
!3183 = !DILocation(line: 591, column: 3, scope: !2987)
!3184 = !DILocalVariable(name: "ls", arg: 1, scope: !3185, file: !3, line: 310, type: !597)
!3185 = distinct !DISubprogram(name: "pushclosure", scope: !3, file: !3, line: 310, type: !3186, isLocal: true, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3188)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{null, !597, !700, !975}
!3188 = !{!3184, !3189, !3190, !3191, !3192, !3193, !3194, !3195}
!3189 = !DILocalVariable(name: "func", arg: 2, scope: !3185, file: !3, line: 310, type: !700)
!3190 = !DILocalVariable(name: "v", arg: 3, scope: !3185, file: !3, line: 310, type: !975)
!3191 = !DILocalVariable(name: "fs", scope: !3185, file: !3, line: 311, type: !700)
!3192 = !DILocalVariable(name: "f", scope: !3185, file: !3, line: 312, type: !459)
!3193 = !DILocalVariable(name: "oldsize", scope: !3185, file: !3, line: 313, type: !203)
!3194 = !DILocalVariable(name: "i", scope: !3185, file: !3, line: 314, type: !203)
!3195 = !DILocalVariable(name: "o", scope: !3196, file: !3, line: 322, type: !3199)
!3196 = distinct !DILexicalBlock(scope: !3197, file: !3, line: 321, column: 35)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 321, column: 3)
!3198 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 321, column: 3)
!3199 = !DIDerivedType(tag: DW_TAG_typedef, name: "OpCode", file: !84, line: 208, baseType: !83)
!3200 = !DILocation(line: 310, column: 36, scope: !3185, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 592, column: 3, scope: !2987)
!3202 = !DILocation(line: 310, column: 51, scope: !3185, inlinedAt: !3201)
!3203 = !DILocation(line: 310, column: 66, scope: !3185, inlinedAt: !3201)
!3204 = !DILocation(line: 311, column: 23, scope: !3185, inlinedAt: !3201)
!3205 = !DILocation(line: 311, column: 14, scope: !3185, inlinedAt: !3201)
!3206 = !DILocation(line: 312, column: 18, scope: !3185, inlinedAt: !3201)
!3207 = !DILocation(line: 312, column: 10, scope: !3185, inlinedAt: !3201)
!3208 = !DILocation(line: 313, column: 20, scope: !3185, inlinedAt: !3201)
!3209 = !DILocation(line: 313, column: 7, scope: !3185, inlinedAt: !3201)
!3210 = !DILocation(line: 315, column: 3, scope: !3211, inlinedAt: !3201)
!3211 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 315, column: 3)
!3212 = !DILocation(line: 315, column: 3, scope: !3185, inlinedAt: !3201)
!3213 = !DILocation(line: 318, column: 6, scope: !3185, inlinedAt: !3201)
!3214 = !DILocation(line: 317, column: 23, scope: !3185, inlinedAt: !3201)
!3215 = !DILocation(line: 317, column: 18, scope: !3185, inlinedAt: !3201)
!3216 = !DILocation(line: 317, column: 3, scope: !3185, inlinedAt: !3201)
!3217 = !DILocation(line: 317, column: 42, scope: !3185, inlinedAt: !3201)
!3218 = !DILocation(line: 317, column: 30, scope: !3185, inlinedAt: !3201)
!3219 = !DILocation(line: 317, column: 46, scope: !3185, inlinedAt: !3201)
!3220 = distinct !{!3220, !3221, !3222}
!3221 = !DILocation(line: 317, column: 3, scope: !3185)
!3222 = !DILocation(line: 317, column: 48, scope: !3185)
!3223 = !DILocation(line: 317, column: 33, scope: !3185, inlinedAt: !3201)
!3224 = distinct !{!3224, !2144}
!3225 = !DILocation(line: 318, column: 26, scope: !3185, inlinedAt: !3201)
!3226 = !DILocation(line: 318, column: 14, scope: !3185, inlinedAt: !3201)
!3227 = !DILocation(line: 318, column: 3, scope: !3185, inlinedAt: !3201)
!3228 = !DILocation(line: 318, column: 18, scope: !3185, inlinedAt: !3201)
!3229 = !DILocation(line: 319, column: 3, scope: !3230, inlinedAt: !3201)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 319, column: 3)
!3231 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 319, column: 3)
!3232 = !DILocation(line: 319, column: 3, scope: !3231, inlinedAt: !3201)
!3233 = !DILocation(line: 320, column: 63, scope: !3185, inlinedAt: !3201)
!3234 = !DILocation(line: 320, column: 65, scope: !3185, inlinedAt: !3201)
!3235 = !DILocation(line: 320, column: 27, scope: !3185, inlinedAt: !3201)
!3236 = !DILocation(line: 126, column: 32, scope: !1853, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 320, column: 3, scope: !3185, inlinedAt: !3201)
!3238 = !DILocation(line: 126, column: 43, scope: !1853, inlinedAt: !3237)
!3239 = !DILocation(line: 126, column: 50, scope: !1853, inlinedAt: !3237)
!3240 = !DILocation(line: 127, column: 13, scope: !1853, inlinedAt: !3237)
!3241 = !DILocation(line: 127, column: 15, scope: !1853, inlinedAt: !3237)
!3242 = !DILocation(line: 127, column: 6, scope: !1853, inlinedAt: !3237)
!3243 = !DILocation(line: 127, column: 8, scope: !1853, inlinedAt: !3237)
!3244 = !DILocation(line: 128, column: 6, scope: !1853, inlinedAt: !3237)
!3245 = !DILocation(line: 128, column: 8, scope: !1853, inlinedAt: !3237)
!3246 = !DILocation(line: 129, column: 6, scope: !1853, inlinedAt: !3237)
!3247 = !DILocation(line: 129, column: 10, scope: !1853, inlinedAt: !3237)
!3248 = !DILocation(line: 129, column: 15, scope: !1853, inlinedAt: !3237)
!3249 = !DILocation(line: 130, column: 1, scope: !1853, inlinedAt: !3237)
!3250 = !DILocation(line: 314, column: 7, scope: !3185, inlinedAt: !3201)
!3251 = !DILocation(line: 321, column: 21, scope: !3197, inlinedAt: !3201)
!3252 = !DILocation(line: 321, column: 24, scope: !3197, inlinedAt: !3201)
!3253 = !DILocation(line: 321, column: 14, scope: !3197, inlinedAt: !3201)
!3254 = !DILocation(line: 321, column: 3, scope: !3198, inlinedAt: !3201)
!3255 = !DILocation(line: 322, column: 35, scope: !3196, inlinedAt: !3201)
!3256 = !{!3257, !575, i64 0}
!3257 = !{!"upvaldesc", !575, i64 0, !575, i64 1}
!3258 = !DILocation(line: 322, column: 37, scope: !3196, inlinedAt: !3201)
!3259 = !DILocation(line: 322, column: 16, scope: !3196, inlinedAt: !3201)
!3260 = !DILocation(line: 322, column: 12, scope: !3196, inlinedAt: !3201)
!3261 = !DILocation(line: 323, column: 46, scope: !3196, inlinedAt: !3201)
!3262 = !{!3257, !575, i64 1}
!3263 = !DILocation(line: 323, column: 28, scope: !3196, inlinedAt: !3201)
!3264 = !DILocation(line: 323, column: 5, scope: !3196, inlinedAt: !3201)
!3265 = !DILocation(line: 321, column: 31, scope: !3197, inlinedAt: !3201)
!3266 = distinct !{!3266, !3267, !3268}
!3267 = !DILocation(line: 321, column: 3, scope: !3198)
!3268 = !DILocation(line: 324, column: 3, scope: !3198)
!3269 = !DILocation(line: 325, column: 1, scope: !3185, inlinedAt: !3201)
!3270 = !DILocation(line: 593, column: 1, scope: !2987)
!3271 = distinct !DISubprogram(name: "primaryexp", scope: !3, file: !3, line: 690, type: !973, isLocal: true, isDefinition: true, scopeLine: 690, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3272)
!3272 = !{!3273, !3274, !3275, !3276, !3282}
!3273 = !DILocalVariable(name: "ls", arg: 1, scope: !3271, file: !3, line: 690, type: !597)
!3274 = !DILocalVariable(name: "v", arg: 2, scope: !3271, file: !3, line: 690, type: !975)
!3275 = !DILocalVariable(name: "fs", scope: !3271, file: !3, line: 693, type: !700)
!3276 = !DILocalVariable(name: "key", scope: !3277, file: !3, line: 702, type: !951)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 701, column: 17)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 696, column: 26)
!3279 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 695, column: 12)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 695, column: 3)
!3281 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 695, column: 3)
!3282 = !DILocalVariable(name: "key", scope: !3283, file: !3, line: 709, type: !951)
!3283 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 708, column: 17)
!3284 = !DILocation(line: 690, column: 35, scope: !3271)
!3285 = !DILocation(line: 690, column: 48, scope: !3271)
!3286 = !DILocation(line: 693, column: 23, scope: !3271)
!3287 = !DILocation(line: 693, column: 14, scope: !3271)
!3288 = !DILocalVariable(name: "ls", arg: 1, scope: !3289, file: !3, line: 667, type: !597)
!3289 = distinct !DISubprogram(name: "prefixexp", scope: !3, file: !3, line: 667, type: !973, isLocal: true, isDefinition: true, scopeLine: 667, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3290)
!3290 = !{!3288, !3291, !3292}
!3291 = !DILocalVariable(name: "v", arg: 2, scope: !3289, file: !3, line: 667, type: !975)
!3292 = !DILocalVariable(name: "line", scope: !3293, file: !3, line: 671, type: !203)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 670, column: 15)
!3294 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 669, column: 24)
!3295 = !DILocation(line: 667, column: 34, scope: !3289, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 694, column: 3, scope: !3271)
!3297 = !DILocation(line: 667, column: 47, scope: !3289, inlinedAt: !3296)
!3298 = !DILocation(line: 669, column: 17, scope: !3289, inlinedAt: !3296)
!3299 = !DILocation(line: 669, column: 3, scope: !3289, inlinedAt: !3296)
!3300 = !DILocation(line: 671, column: 22, scope: !3293, inlinedAt: !3296)
!3301 = !DILocation(line: 671, column: 11, scope: !3293, inlinedAt: !3296)
!3302 = !DILocation(line: 672, column: 7, scope: !3293, inlinedAt: !3296)
!3303 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 673, column: 7, scope: !3293, inlinedAt: !3296)
!3305 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !3304)
!3306 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !3304)
!3307 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !3304)
!3308 = !DILocation(line: 674, column: 7, scope: !3293, inlinedAt: !3296)
!3309 = !DILocation(line: 675, column: 30, scope: !3293, inlinedAt: !3296)
!3310 = !DILocation(line: 675, column: 7, scope: !3293, inlinedAt: !3296)
!3311 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 119, column: 3, scope: !1140, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 249, column: 22, scope: !1749, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 679, column: 7, scope: !3315, inlinedAt: !3296)
!3315 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 678, column: 19)
!3316 = !DILocation(line: 120, column: 14, scope: !1140, inlinedAt: !3313)
!3317 = !DILocation(line: 120, column: 22, scope: !1140, inlinedAt: !3313)
!3318 = !DILocation(line: 118, column: 12, scope: !1140, inlinedAt: !3313)
!3319 = !DILocation(line: 121, column: 3, scope: !1140, inlinedAt: !3313)
!3320 = !DILocation(line: 122, column: 3, scope: !1140, inlinedAt: !3313)
!3321 = !DILocation(line: 249, column: 12, scope: !1749, inlinedAt: !3314)
!3322 = !DILocation(line: 250, column: 23, scope: !1749, inlinedAt: !3314)
!3323 = !DILocation(line: 250, column: 14, scope: !1749, inlinedAt: !3314)
!3324 = !DILocation(line: 251, column: 7, scope: !1784, inlinedAt: !3314)
!3325 = !DILocation(line: 251, column: 41, scope: !1784, inlinedAt: !3314)
!3326 = !DILocation(line: 251, column: 7, scope: !1749, inlinedAt: !3314)
!3327 = !DILocation(line: 252, column: 21, scope: !1784, inlinedAt: !3314)
!3328 = !DILocation(line: 252, column: 10, scope: !1784, inlinedAt: !3314)
!3329 = !DILocation(line: 252, column: 14, scope: !1784, inlinedAt: !3314)
!3330 = !DILocation(line: 252, column: 19, scope: !1784, inlinedAt: !3314)
!3331 = !DILocation(line: 252, column: 5, scope: !1784, inlinedAt: !3314)
!3332 = !DILocation(line: 253, column: 1, scope: !1749, inlinedAt: !3314)
!3333 = !DILocation(line: 680, column: 7, scope: !3315, inlinedAt: !3296)
!3334 = !DILocation(line: 683, column: 7, scope: !3335, inlinedAt: !3296)
!3335 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 682, column: 14)
!3336 = !DILocation(line: 684, column: 7, scope: !3335, inlinedAt: !3296)
!3337 = !DILocation(line: 687, column: 1, scope: !3289, inlinedAt: !3296)
!3338 = !DILocation(line: 695, column: 3, scope: !3271)
!3339 = !DILocation(line: 696, column: 19, scope: !3279)
!3340 = !DILocation(line: 696, column: 5, scope: !3279)
!3341 = !DILocation(line: 407, column: 30, scope: !1796, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 698, column: 9, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 697, column: 17)
!3344 = !DILocation(line: 407, column: 43, scope: !1796, inlinedAt: !3342)
!3345 = !DILocation(line: 409, column: 23, scope: !1796, inlinedAt: !3342)
!3346 = !DILocation(line: 409, column: 14, scope: !1796, inlinedAt: !3342)
!3347 = !DILocation(line: 410, column: 3, scope: !1796, inlinedAt: !3342)
!3348 = !DILocation(line: 411, column: 3, scope: !1796, inlinedAt: !3342)
!3349 = !DILocation(line: 412, column: 3, scope: !1796, inlinedAt: !3342)
!3350 = !DILocation(line: 410, column: 11, scope: !1796, inlinedAt: !3342)
!3351 = !DILocation(line: 138, column: 33, scope: !1811, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 413, column: 3, scope: !1796, inlinedAt: !3342)
!3353 = !DILocation(line: 138, column: 46, scope: !1811, inlinedAt: !3352)
!3354 = !DILocation(line: 117, column: 42, scope: !1140, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 139, column: 21, scope: !1811, inlinedAt: !3352)
!3356 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 119, column: 3, scope: !1140, inlinedAt: !3355)
!3358 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !3357)
!3359 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !3357)
!3360 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !3357)
!3361 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !3357)
!3362 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !3357)
!3364 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !3363)
!3365 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !3363)
!3366 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !3363)
!3367 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !3363)
!3368 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !3363)
!3369 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !3363)
!3370 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !3357)
!3371 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !3357)
!3372 = !DILocation(line: 120, column: 22, scope: !1140, inlinedAt: !3355)
!3373 = !DILocation(line: 118, column: 12, scope: !1140, inlinedAt: !3355)
!3374 = !DILocation(line: 121, column: 3, scope: !1140, inlinedAt: !3355)
!3375 = !DILocation(line: 122, column: 3, scope: !1140, inlinedAt: !3355)
!3376 = !DILocation(line: 133, column: 35, scope: !1840, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 139, column: 3, scope: !1811, inlinedAt: !3352)
!3378 = !DILocation(line: 133, column: 48, scope: !1840, inlinedAt: !3377)
!3379 = !DILocation(line: 133, column: 60, scope: !1840, inlinedAt: !3377)
!3380 = !DILocation(line: 134, column: 36, scope: !1840, inlinedAt: !3377)
!3381 = !DILocation(line: 134, column: 19, scope: !1840, inlinedAt: !3377)
!3382 = !DILocation(line: 126, column: 32, scope: !1853, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 134, column: 3, scope: !1840, inlinedAt: !3377)
!3384 = !DILocation(line: 126, column: 43, scope: !1853, inlinedAt: !3383)
!3385 = !DILocation(line: 126, column: 50, scope: !1853, inlinedAt: !3383)
!3386 = !DILocation(line: 127, column: 15, scope: !1853, inlinedAt: !3383)
!3387 = !DILocation(line: 127, column: 8, scope: !1853, inlinedAt: !3383)
!3388 = !DILocation(line: 128, column: 8, scope: !1853, inlinedAt: !3383)
!3389 = !DILocation(line: 129, column: 15, scope: !1853, inlinedAt: !3383)
!3390 = !DILocation(line: 130, column: 1, scope: !1853, inlinedAt: !3383)
!3391 = !DILocation(line: 135, column: 1, scope: !1840, inlinedAt: !3377)
!3392 = !DILocation(line: 140, column: 1, scope: !1811, inlinedAt: !3352)
!3393 = !DILocation(line: 414, column: 3, scope: !1796, inlinedAt: !3342)
!3394 = !DILocation(line: 415, column: 1, scope: !1796, inlinedAt: !3342)
!3395 = !DILocation(line: 699, column: 9, scope: !3343)
!3396 = !DILocation(line: 702, column: 9, scope: !3277)
!3397 = !DILocation(line: 703, column: 9, scope: !3277)
!3398 = !DILocation(line: 702, column: 17, scope: !3277)
!3399 = !DILocation(line: 704, column: 9, scope: !3277)
!3400 = !DILocation(line: 705, column: 9, scope: !3277)
!3401 = !DILocation(line: 707, column: 7, scope: !3278)
!3402 = !DILocation(line: 709, column: 9, scope: !3283)
!3403 = !DILocation(line: 710, column: 9, scope: !3283)
!3404 = !DILocation(line: 709, column: 17, scope: !3283)
!3405 = !DILocation(line: 138, column: 33, scope: !1811, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 711, column: 9, scope: !3283)
!3407 = !DILocation(line: 138, column: 46, scope: !1811, inlinedAt: !3406)
!3408 = !DILocation(line: 117, column: 42, scope: !1140, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 139, column: 21, scope: !1811, inlinedAt: !3406)
!3410 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 119, column: 3, scope: !1140, inlinedAt: !3409)
!3412 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !3411)
!3413 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !3411)
!3414 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !3411)
!3415 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !3411)
!3416 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !3411)
!3418 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !3417)
!3419 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !3417)
!3420 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !3417)
!3421 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !3417)
!3422 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !3417)
!3423 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !3417)
!3424 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !3411)
!3425 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !3411)
!3426 = !DILocation(line: 120, column: 22, scope: !1140, inlinedAt: !3409)
!3427 = !DILocation(line: 118, column: 12, scope: !1140, inlinedAt: !3409)
!3428 = !DILocation(line: 121, column: 3, scope: !1140, inlinedAt: !3409)
!3429 = !DILocation(line: 122, column: 3, scope: !1140, inlinedAt: !3409)
!3430 = !DILocation(line: 133, column: 35, scope: !1840, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 139, column: 3, scope: !1811, inlinedAt: !3406)
!3432 = !DILocation(line: 133, column: 48, scope: !1840, inlinedAt: !3431)
!3433 = !DILocation(line: 133, column: 60, scope: !1840, inlinedAt: !3431)
!3434 = !DILocation(line: 134, column: 36, scope: !1840, inlinedAt: !3431)
!3435 = !DILocation(line: 134, column: 19, scope: !1840, inlinedAt: !3431)
!3436 = !DILocation(line: 126, column: 32, scope: !1853, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 134, column: 3, scope: !1840, inlinedAt: !3431)
!3438 = !DILocation(line: 126, column: 43, scope: !1853, inlinedAt: !3437)
!3439 = !DILocation(line: 126, column: 50, scope: !1853, inlinedAt: !3437)
!3440 = !DILocation(line: 127, column: 15, scope: !1853, inlinedAt: !3437)
!3441 = !DILocation(line: 127, column: 8, scope: !1853, inlinedAt: !3437)
!3442 = !DILocation(line: 128, column: 8, scope: !1853, inlinedAt: !3437)
!3443 = !DILocation(line: 129, column: 15, scope: !1853, inlinedAt: !3437)
!3444 = !DILocation(line: 130, column: 1, scope: !1853, inlinedAt: !3437)
!3445 = !DILocation(line: 135, column: 1, scope: !1840, inlinedAt: !3431)
!3446 = !DILocation(line: 140, column: 1, scope: !1811, inlinedAt: !3406)
!3447 = !DILocation(line: 712, column: 9, scope: !3283)
!3448 = !DILocation(line: 713, column: 9, scope: !3283)
!3449 = !DILocation(line: 715, column: 7, scope: !3278)
!3450 = !DILocation(line: 717, column: 9, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 716, column: 43)
!3452 = !DILocation(line: 718, column: 9, scope: !3451)
!3453 = !DILocation(line: 719, column: 9, scope: !3451)
!3454 = distinct !{!3454, !3455, !3456}
!3455 = !DILocation(line: 695, column: 3, scope: !3281)
!3456 = !DILocation(line: 723, column: 3, scope: !3281)
!3457 = !DILocation(line: 724, column: 1, scope: !3271)
!3458 = distinct !DISubprogram(name: "recfield", scope: !3, file: !3, line: 443, type: !2857, isLocal: true, isDefinition: true, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3459)
!3459 = !{!3460, !3461, !3462, !3463, !3464, !3465, !3466}
!3460 = !DILocalVariable(name: "ls", arg: 1, scope: !3458, file: !3, line: 443, type: !597)
!3461 = !DILocalVariable(name: "cc", arg: 2, scope: !3458, file: !3, line: 443, type: !2819)
!3462 = !DILocalVariable(name: "fs", scope: !3458, file: !3, line: 445, type: !700)
!3463 = !DILocalVariable(name: "reg", scope: !3458, file: !3, line: 446, type: !203)
!3464 = !DILocalVariable(name: "key", scope: !3458, file: !3, line: 447, type: !951)
!3465 = !DILocalVariable(name: "val", scope: !3458, file: !3, line: 447, type: !951)
!3466 = !DILocalVariable(name: "rkkey", scope: !3458, file: !3, line: 448, type: !203)
!3467 = !DILocation(line: 443, column: 33, scope: !3458)
!3468 = !DILocation(line: 443, column: 57, scope: !3458)
!3469 = !DILocation(line: 445, column: 23, scope: !3458)
!3470 = !DILocation(line: 445, column: 14, scope: !3458)
!3471 = !DILocation(line: 446, column: 21, scope: !3458)
!3472 = !DILocation(line: 446, column: 7, scope: !3458)
!3473 = !DILocation(line: 447, column: 3, scope: !3458)
!3474 = !DILocation(line: 449, column: 13, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 449, column: 7)
!3476 = !DILocation(line: 449, column: 19, scope: !3475)
!3477 = !DILocation(line: 449, column: 7, scope: !3458)
!3478 = !DILocation(line: 450, column: 5, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !3, line: 450, column: 5)
!3480 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 449, column: 31)
!3481 = !DILocation(line: 450, column: 5, scope: !3480)
!3482 = !DILocation(line: 71, column: 36, scope: !2873, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 450, column: 5, scope: !3479)
!3484 = !DILocation(line: 71, column: 44, scope: !2873, inlinedAt: !3483)
!3485 = !DILocation(line: 71, column: 63, scope: !2873, inlinedAt: !3483)
!3486 = !DILocation(line: 72, column: 26, scope: !2873, inlinedAt: !3483)
!3487 = !DILocation(line: 72, column: 29, scope: !2873, inlinedAt: !3483)
!3488 = !DILocation(line: 72, column: 41, scope: !2873, inlinedAt: !3483)
!3489 = !DILocation(line: 0, scope: !2873, inlinedAt: !3483)
!3490 = !DILocation(line: 72, column: 21, scope: !2873, inlinedAt: !3483)
!3491 = !DILocation(line: 73, column: 5, scope: !2873, inlinedAt: !3483)
!3492 = !DILocation(line: 74, column: 5, scope: !2873, inlinedAt: !3483)
!3493 = !DILocation(line: 72, column: 15, scope: !2873, inlinedAt: !3483)
!3494 = !DILocation(line: 76, column: 21, scope: !2873, inlinedAt: !3483)
!3495 = !DILocation(line: 76, column: 3, scope: !2873, inlinedAt: !3483)
!3496 = !DILocation(line: 77, column: 1, scope: !2873, inlinedAt: !3483)
!3497 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 119, column: 3, scope: !1140, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 139, column: 21, scope: !1811, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 451, column: 5, scope: !3480)
!3501 = !DILocation(line: 447, column: 11, scope: !3458)
!3502 = !DILocation(line: 138, column: 33, scope: !1811, inlinedAt: !3500)
!3503 = !DILocation(line: 138, column: 46, scope: !1811, inlinedAt: !3500)
!3504 = !DILocation(line: 117, column: 42, scope: !1140, inlinedAt: !3499)
!3505 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !3498)
!3506 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !3498)
!3507 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !3498)
!3508 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !3498)
!3510 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !3509)
!3511 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !3509)
!3512 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !3509)
!3513 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !3509)
!3514 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !3509)
!3515 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !3509)
!3516 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !3498)
!3517 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !3498)
!3518 = !DILocation(line: 120, column: 14, scope: !1140, inlinedAt: !3499)
!3519 = !DILocation(line: 120, column: 22, scope: !1140, inlinedAt: !3499)
!3520 = !DILocation(line: 118, column: 12, scope: !1140, inlinedAt: !3499)
!3521 = !DILocation(line: 121, column: 3, scope: !1140, inlinedAt: !3499)
!3522 = !DILocation(line: 122, column: 3, scope: !1140, inlinedAt: !3499)
!3523 = !DILocation(line: 133, column: 35, scope: !1840, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 139, column: 3, scope: !1811, inlinedAt: !3500)
!3525 = !DILocation(line: 133, column: 48, scope: !1840, inlinedAt: !3524)
!3526 = !DILocation(line: 133, column: 60, scope: !1840, inlinedAt: !3524)
!3527 = !DILocation(line: 134, column: 36, scope: !1840, inlinedAt: !3524)
!3528 = !DILocation(line: 134, column: 19, scope: !1840, inlinedAt: !3524)
!3529 = !DILocation(line: 126, column: 32, scope: !1853, inlinedAt: !3530)
!3530 = distinct !DILocation(line: 134, column: 3, scope: !1840, inlinedAt: !3524)
!3531 = !DILocation(line: 126, column: 43, scope: !1853, inlinedAt: !3530)
!3532 = !DILocation(line: 126, column: 50, scope: !1853, inlinedAt: !3530)
!3533 = !DILocation(line: 127, column: 13, scope: !1853, inlinedAt: !3530)
!3534 = !DILocation(line: 127, column: 15, scope: !1853, inlinedAt: !3530)
!3535 = !DILocation(line: 127, column: 6, scope: !1853, inlinedAt: !3530)
!3536 = !DILocation(line: 127, column: 8, scope: !1853, inlinedAt: !3530)
!3537 = !DILocation(line: 128, column: 6, scope: !1853, inlinedAt: !3530)
!3538 = !DILocation(line: 128, column: 8, scope: !1853, inlinedAt: !3530)
!3539 = !DILocation(line: 129, column: 6, scope: !1853, inlinedAt: !3530)
!3540 = !DILocation(line: 129, column: 10, scope: !1853, inlinedAt: !3530)
!3541 = !DILocation(line: 129, column: 15, scope: !1853, inlinedAt: !3530)
!3542 = !DILocation(line: 130, column: 1, scope: !1853, inlinedAt: !3530)
!3543 = !DILocation(line: 135, column: 1, scope: !1840, inlinedAt: !3524)
!3544 = !DILocation(line: 140, column: 1, scope: !1811, inlinedAt: !3500)
!3545 = !DILocation(line: 452, column: 3, scope: !3480)
!3546 = !DILocation(line: 454, column: 5, scope: !3475)
!3547 = !DILocation(line: 455, column: 7, scope: !3458)
!3548 = !DILocation(line: 455, column: 9, scope: !3458)
!3549 = !DILocation(line: 94, column: 34, scope: !1031, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 456, column: 3, scope: !3458)
!3551 = !DILocation(line: 94, column: 42, scope: !1031, inlinedAt: !3550)
!3552 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !3553)
!3553 = distinct !DILocation(line: 95, column: 3, scope: !1031, inlinedAt: !3550)
!3554 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !3553)
!3555 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !3553)
!3556 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !3553)
!3557 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !3553)
!3558 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !3553)
!3560 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !3559)
!3561 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !3559)
!3562 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !3559)
!3563 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !3559)
!3564 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !3559)
!3565 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !3559)
!3566 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !3553)
!3567 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !3553)
!3568 = !DILocation(line: 96, column: 3, scope: !1031, inlinedAt: !3550)
!3569 = !DILocation(line: 97, column: 1, scope: !1031, inlinedAt: !3550)
!3570 = !DILocation(line: 457, column: 11, scope: !3458)
!3571 = !DILocation(line: 448, column: 7, scope: !3458)
!3572 = !DILocation(line: 447, column: 16, scope: !3458)
!3573 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 458, column: 3, scope: !3458)
!3575 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !3574)
!3576 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !3574)
!3577 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !3574)
!3578 = !DILocation(line: 459, column: 37, scope: !3458)
!3579 = !DILocation(line: 459, column: 40, scope: !3458)
!3580 = !DILocation(line: 459, column: 44, scope: !3458)
!3581 = !DILocation(line: 459, column: 57, scope: !3458)
!3582 = !DILocation(line: 459, column: 3, scope: !3458)
!3583 = !DILocation(line: 460, column: 15, scope: !3458)
!3584 = !DILocation(line: 461, column: 1, scope: !3458)
!3585 = distinct !DISubprogram(name: "yindex", scope: !3, file: !3, line: 418, type: !973, isLocal: true, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3586)
!3586 = !{!3587, !3588}
!3587 = !DILocalVariable(name: "ls", arg: 1, scope: !3585, file: !3, line: 418, type: !597)
!3588 = !DILocalVariable(name: "v", arg: 2, scope: !3585, file: !3, line: 418, type: !975)
!3589 = !DILocation(line: 418, column: 31, scope: !3585)
!3590 = !DILocation(line: 418, column: 44, scope: !3585)
!3591 = !DILocation(line: 420, column: 3, scope: !3585)
!3592 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 421, column: 3, scope: !3585)
!3594 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !3593)
!3595 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !3593)
!3596 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !3593)
!3597 = !DILocation(line: 422, column: 20, scope: !3585)
!3598 = !DILocation(line: 422, column: 3, scope: !3585)
!3599 = !DILocation(line: 94, column: 34, scope: !1031, inlinedAt: !3600)
!3600 = distinct !DILocation(line: 423, column: 3, scope: !3585)
!3601 = !DILocation(line: 94, column: 42, scope: !1031, inlinedAt: !3600)
!3602 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 95, column: 3, scope: !1031, inlinedAt: !3600)
!3604 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !3603)
!3605 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !3603)
!3606 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !3603)
!3607 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !3603)
!3608 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !3603)
!3610 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !3609)
!3611 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !3609)
!3612 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !3609)
!3613 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !3609)
!3614 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !3609)
!3615 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !3609)
!3616 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !3603)
!3617 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !3603)
!3618 = !DILocation(line: 96, column: 3, scope: !1031, inlinedAt: !3600)
!3619 = !DILocation(line: 97, column: 1, scope: !1031, inlinedAt: !3600)
!3620 = !DILocation(line: 424, column: 1, scope: !3585)
!3621 = distinct !DISubprogram(name: "new_localvar", scope: !3, file: !3, line: 160, type: !1173, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3622)
!3622 = !{!3623, !3624, !3625, !3626}
!3623 = !DILocalVariable(name: "ls", arg: 1, scope: !3621, file: !3, line: 160, type: !597)
!3624 = !DILocalVariable(name: "name", arg: 2, scope: !3621, file: !3, line: 160, type: !332)
!3625 = !DILocalVariable(name: "n", arg: 3, scope: !3621, file: !3, line: 160, type: !203)
!3626 = !DILocalVariable(name: "fs", scope: !3621, file: !3, line: 161, type: !700)
!3627 = !DILocation(line: 160, column: 37, scope: !3621)
!3628 = !DILocation(line: 160, column: 50, scope: !3621)
!3629 = !DILocation(line: 160, column: 60, scope: !3621)
!3630 = !DILocation(line: 161, column: 23, scope: !3621)
!3631 = !DILocation(line: 161, column: 14, scope: !3621)
!3632 = !DILocation(line: 162, column: 3, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 162, column: 3)
!3634 = !DILocation(line: 162, column: 3, scope: !3621)
!3635 = !DILocation(line: 71, column: 36, scope: !2873, inlinedAt: !3636)
!3636 = distinct !DILocation(line: 162, column: 3, scope: !3633)
!3637 = !DILocation(line: 71, column: 44, scope: !2873, inlinedAt: !3636)
!3638 = !DILocation(line: 71, column: 63, scope: !2873, inlinedAt: !3636)
!3639 = !DILocation(line: 72, column: 26, scope: !2873, inlinedAt: !3636)
!3640 = !DILocation(line: 72, column: 29, scope: !2873, inlinedAt: !3636)
!3641 = !DILocation(line: 72, column: 41, scope: !2873, inlinedAt: !3636)
!3642 = !DILocation(line: 0, scope: !2873, inlinedAt: !3636)
!3643 = !DILocation(line: 72, column: 21, scope: !2873, inlinedAt: !3636)
!3644 = !DILocation(line: 73, column: 5, scope: !2873, inlinedAt: !3636)
!3645 = !DILocation(line: 74, column: 5, scope: !2873, inlinedAt: !3636)
!3646 = !DILocation(line: 72, column: 15, scope: !2873, inlinedAt: !3636)
!3647 = !DILocation(line: 76, column: 21, scope: !2873, inlinedAt: !3636)
!3648 = !DILocation(line: 76, column: 3, scope: !2873, inlinedAt: !3636)
!3649 = !DILocation(line: 77, column: 1, scope: !2873, inlinedAt: !3636)
!3650 = !DILocation(line: 144, column: 23, scope: !3651, inlinedAt: !3660)
!3651 = distinct !DISubprogram(name: "registerlocalvar", scope: !3, file: !3, line: 143, type: !3652, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3654)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!203, !597, !332}
!3654 = !{!3655, !3656, !3657, !3658, !3659}
!3655 = !DILocalVariable(name: "ls", arg: 1, scope: !3651, file: !3, line: 143, type: !597)
!3656 = !DILocalVariable(name: "varname", arg: 2, scope: !3651, file: !3, line: 143, type: !332)
!3657 = !DILocalVariable(name: "fs", scope: !3651, file: !3, line: 144, type: !700)
!3658 = !DILocalVariable(name: "f", scope: !3651, file: !3, line: 145, type: !459)
!3659 = !DILocalVariable(name: "oldsize", scope: !3651, file: !3, line: 146, type: !203)
!3660 = distinct !DILocation(line: 163, column: 31, scope: !3621)
!3661 = !DILocation(line: 143, column: 40, scope: !3651, inlinedAt: !3660)
!3662 = !DILocation(line: 143, column: 53, scope: !3651, inlinedAt: !3660)
!3663 = !DILocation(line: 144, column: 14, scope: !3651, inlinedAt: !3660)
!3664 = !DILocation(line: 145, column: 18, scope: !3651, inlinedAt: !3660)
!3665 = !DILocation(line: 145, column: 10, scope: !3651, inlinedAt: !3660)
!3666 = !DILocation(line: 146, column: 20, scope: !3651, inlinedAt: !3660)
!3667 = !DILocation(line: 146, column: 7, scope: !3651, inlinedAt: !3660)
!3668 = !DILocation(line: 147, column: 3, scope: !3669, inlinedAt: !3660)
!3669 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 147, column: 3)
!3670 = !DILocation(line: 147, column: 3, scope: !3651, inlinedAt: !3660)
!3671 = !DILocation(line: 0, scope: !3651, inlinedAt: !3660)
!3672 = !DILocation(line: 149, column: 3, scope: !3651, inlinedAt: !3660)
!3673 = !DILocation(line: 149, column: 23, scope: !3651, inlinedAt: !3660)
!3674 = !DILocation(line: 149, column: 18, scope: !3651, inlinedAt: !3660)
!3675 = !DILocation(line: 149, column: 54, scope: !3651, inlinedAt: !3660)
!3676 = !DILocation(line: 149, column: 58, scope: !3651, inlinedAt: !3660)
!3677 = !DILocation(line: 149, column: 66, scope: !3651, inlinedAt: !3660)
!3678 = !{!806, !578, i64 0}
!3679 = distinct !{!3679, !2144}
!3680 = distinct !{!3680, !3681, !3682}
!3681 = !DILocation(line: 149, column: 3, scope: !3651)
!3682 = !DILocation(line: 149, column: 68, scope: !3651)
!3683 = !DILocation(line: 150, column: 18, scope: !3651, inlinedAt: !3660)
!3684 = !DILocation(line: 150, column: 3, scope: !3651, inlinedAt: !3660)
!3685 = !DILocation(line: 150, column: 28, scope: !3651, inlinedAt: !3660)
!3686 = !DILocation(line: 150, column: 36, scope: !3651, inlinedAt: !3660)
!3687 = !DILocation(line: 151, column: 3, scope: !3688, inlinedAt: !3660)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !3, line: 151, column: 3)
!3689 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 151, column: 3)
!3690 = !DILocation(line: 151, column: 3, scope: !3689, inlinedAt: !3660)
!3691 = !DILocation(line: 152, column: 22, scope: !3651, inlinedAt: !3660)
!3692 = !DILocation(line: 152, column: 3, scope: !3651, inlinedAt: !3660)
!3693 = !DILocation(line: 163, column: 18, scope: !3621)
!3694 = !DILocation(line: 163, column: 14, scope: !3621)
!3695 = !DILocation(line: 163, column: 25, scope: !3621)
!3696 = !DILocation(line: 163, column: 3, scope: !3621)
!3697 = !DILocation(line: 163, column: 29, scope: !3621)
!3698 = !DILocation(line: 164, column: 1, scope: !3621)
!3699 = distinct !DISubprogram(name: "funcargs", scope: !3, file: !3, line: 609, type: !973, isLocal: true, isDefinition: true, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3700)
!3700 = !{!3701, !3702, !3703, !3704, !3705, !3706, !3707}
!3701 = !DILocalVariable(name: "ls", arg: 1, scope: !3699, file: !3, line: 609, type: !597)
!3702 = !DILocalVariable(name: "f", arg: 2, scope: !3699, file: !3, line: 609, type: !975)
!3703 = !DILocalVariable(name: "fs", scope: !3699, file: !3, line: 610, type: !700)
!3704 = !DILocalVariable(name: "args", scope: !3699, file: !3, line: 611, type: !951)
!3705 = !DILocalVariable(name: "base", scope: !3699, file: !3, line: 612, type: !203)
!3706 = !DILocalVariable(name: "nparams", scope: !3699, file: !3, line: 612, type: !203)
!3707 = !DILocalVariable(name: "line", scope: !3699, file: !3, line: 613, type: !203)
!3708 = !DILocation(line: 609, column: 33, scope: !3699)
!3709 = !DILocation(line: 609, column: 46, scope: !3699)
!3710 = !DILocation(line: 610, column: 23, scope: !3699)
!3711 = !DILocation(line: 610, column: 14, scope: !3699)
!3712 = !DILocation(line: 611, column: 3, scope: !3699)
!3713 = !DILocation(line: 613, column: 18, scope: !3699)
!3714 = !DILocation(line: 613, column: 7, scope: !3699)
!3715 = !DILocation(line: 614, column: 17, scope: !3699)
!3716 = !DILocation(line: 614, column: 3, scope: !3699)
!3717 = !DILocation(line: 616, column: 23, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 616, column: 11)
!3719 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 615, column: 15)
!3720 = distinct !DILexicalBlock(scope: !3699, file: !3, line: 614, column: 24)
!3721 = !{!573, !574, i64 8}
!3722 = !DILocation(line: 616, column: 16, scope: !3718)
!3723 = !DILocation(line: 616, column: 11, scope: !3719)
!3724 = !DILocation(line: 617, column: 9, scope: !3718)
!3725 = !DILocation(line: 618, column: 7, scope: !3719)
!3726 = !DILocation(line: 619, column: 17, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 619, column: 11)
!3728 = !DILocation(line: 619, column: 23, scope: !3727)
!3729 = !DILocation(line: 619, column: 11, scope: !3719)
!3730 = !DILocation(line: 620, column: 14, scope: !3727)
!3731 = !DILocation(line: 620, column: 16, scope: !3727)
!3732 = !DILocation(line: 620, column: 9, scope: !3727)
!3733 = !DILocation(line: 611, column: 11, scope: !3699)
!3734 = !DILocation(line: 596, column: 32, scope: !1384, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 622, column: 9, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 621, column: 12)
!3737 = !DILocation(line: 596, column: 45, scope: !1384, inlinedAt: !3735)
!3738 = !DILocation(line: 598, column: 7, scope: !1384, inlinedAt: !3735)
!3739 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 599, column: 3, scope: !1384, inlinedAt: !3735)
!3741 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !3740)
!3742 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !3740)
!3743 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !3740)
!3744 = !DILocation(line: 80, column: 32, scope: !637, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 600, column: 10, scope: !1384, inlinedAt: !3735)
!3746 = !DILocation(line: 80, column: 40, scope: !637, inlinedAt: !3745)
!3747 = !DILocation(line: 81, column: 13, scope: !646, inlinedAt: !3745)
!3748 = !DILocation(line: 81, column: 19, scope: !646, inlinedAt: !3745)
!3749 = !DILocation(line: 81, column: 7, scope: !637, inlinedAt: !3745)
!3750 = !DILocation(line: 82, column: 5, scope: !650, inlinedAt: !3745)
!3751 = !DILocation(line: 86, column: 1, scope: !637, inlinedAt: !3745)
!3752 = !DILocation(line: 601, column: 26, scope: !1408, inlinedAt: !3735)
!3753 = !DILocation(line: 601, column: 5, scope: !1408, inlinedAt: !3735)
!3754 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 602, column: 5, scope: !1408, inlinedAt: !3735)
!3756 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !3755)
!3757 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !3755)
!3758 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !3755)
!3759 = !DILocation(line: 605, column: 3, scope: !1384, inlinedAt: !3735)
!3760 = !DILocation(line: 623, column: 9, scope: !3736)
!3761 = !DILocation(line: 625, column: 7, scope: !3719)
!3762 = !DILocation(line: 626, column: 7, scope: !3719)
!3763 = !DILocation(line: 629, column: 7, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 628, column: 15)
!3765 = !DILocation(line: 630, column: 7, scope: !3764)
!3766 = !DILocation(line: 633, column: 35, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 632, column: 21)
!3768 = !DILocation(line: 633, column: 43, scope: !3767)
!3769 = !DILocation(line: 133, column: 35, scope: !1840, inlinedAt: !3770)
!3770 = distinct !DILocation(line: 633, column: 7, scope: !3767)
!3771 = !DILocation(line: 133, column: 48, scope: !1840, inlinedAt: !3770)
!3772 = !DILocation(line: 133, column: 60, scope: !1840, inlinedAt: !3770)
!3773 = !DILocation(line: 134, column: 19, scope: !1840, inlinedAt: !3770)
!3774 = !DILocation(line: 126, column: 32, scope: !1853, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 134, column: 3, scope: !1840, inlinedAt: !3770)
!3776 = !DILocation(line: 126, column: 43, scope: !1853, inlinedAt: !3775)
!3777 = !DILocation(line: 126, column: 50, scope: !1853, inlinedAt: !3775)
!3778 = !DILocation(line: 127, column: 13, scope: !1853, inlinedAt: !3775)
!3779 = !DILocation(line: 127, column: 15, scope: !1853, inlinedAt: !3775)
!3780 = !DILocation(line: 127, column: 6, scope: !1853, inlinedAt: !3775)
!3781 = !DILocation(line: 127, column: 8, scope: !1853, inlinedAt: !3775)
!3782 = !DILocation(line: 128, column: 6, scope: !1853, inlinedAt: !3775)
!3783 = !DILocation(line: 128, column: 8, scope: !1853, inlinedAt: !3775)
!3784 = !DILocation(line: 129, column: 6, scope: !1853, inlinedAt: !3775)
!3785 = !DILocation(line: 129, column: 10, scope: !1853, inlinedAt: !3775)
!3786 = !DILocation(line: 129, column: 15, scope: !1853, inlinedAt: !3775)
!3787 = !DILocation(line: 130, column: 1, scope: !1853, inlinedAt: !3775)
!3788 = !DILocation(line: 135, column: 1, scope: !1840, inlinedAt: !3770)
!3789 = !DILocation(line: 634, column: 7, scope: !3767)
!3790 = !DILocation(line: 635, column: 7, scope: !3767)
!3791 = !DILocation(line: 638, column: 7, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 637, column: 14)
!3793 = !DILocation(line: 639, column: 7, scope: !3792)
!3794 = !DILocation(line: 643, column: 13, scope: !3699)
!3795 = !DILocation(line: 643, column: 17, scope: !3699)
!3796 = !DILocation(line: 612, column: 7, scope: !3699)
!3797 = !DILocation(line: 644, column: 7, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3699, file: !3, line: 644, column: 7)
!3799 = !DILocation(line: 648, column: 7, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3801, file: !3, line: 647, column: 9)
!3801 = distinct !DILexicalBlock(scope: !3798, file: !3, line: 646, column: 8)
!3802 = !DILocation(line: 649, column: 19, scope: !3801)
!3803 = !DILocation(line: 612, column: 13, scope: !3699)
!3804 = !DILocation(line: 651, column: 22, scope: !3699)
!3805 = !DILocation(line: 126, column: 32, scope: !1853, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 651, column: 3, scope: !3699)
!3807 = !DILocation(line: 126, column: 43, scope: !1853, inlinedAt: !3806)
!3808 = !DILocation(line: 126, column: 50, scope: !1853, inlinedAt: !3806)
!3809 = !DILocation(line: 127, column: 13, scope: !1853, inlinedAt: !3806)
!3810 = !DILocation(line: 127, column: 15, scope: !1853, inlinedAt: !3806)
!3811 = !DILocation(line: 127, column: 6, scope: !1853, inlinedAt: !3806)
!3812 = !DILocation(line: 127, column: 8, scope: !1853, inlinedAt: !3806)
!3813 = !DILocation(line: 128, column: 6, scope: !1853, inlinedAt: !3806)
!3814 = !DILocation(line: 128, column: 8, scope: !1853, inlinedAt: !3806)
!3815 = !DILocation(line: 129, column: 15, scope: !1853, inlinedAt: !3806)
!3816 = !DILocation(line: 130, column: 1, scope: !1853, inlinedAt: !3806)
!3817 = !DILocation(line: 652, column: 3, scope: !3699)
!3818 = !DILocation(line: 653, column: 21, scope: !3699)
!3819 = !DILocation(line: 653, column: 7, scope: !3699)
!3820 = !DILocation(line: 653, column: 15, scope: !3699)
!3821 = !DILocation(line: 655, column: 1, scope: !3699)
!3822 = distinct !DISubprogram(name: "singlevaraux", scope: !3, file: !3, line: 224, type: !3823, isLocal: true, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3825)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!203, !700, !332, !975, !203}
!3825 = !{!3826, !3827, !3828, !3829, !3830}
!3826 = !DILocalVariable(name: "fs", arg: 1, scope: !3822, file: !3, line: 224, type: !700)
!3827 = !DILocalVariable(name: "n", arg: 2, scope: !3822, file: !3, line: 224, type: !332)
!3828 = !DILocalVariable(name: "var", arg: 3, scope: !3822, file: !3, line: 224, type: !975)
!3829 = !DILocalVariable(name: "base", arg: 4, scope: !3822, file: !3, line: 224, type: !203)
!3830 = !DILocalVariable(name: "v", scope: !3831, file: !3, line: 230, type: !203)
!3831 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 229, column: 8)
!3832 = distinct !DILexicalBlock(scope: !3822, file: !3, line: 225, column: 7)
!3833 = !DILocation(line: 224, column: 37, scope: !3822)
!3834 = !DILocation(line: 224, column: 50, scope: !3822)
!3835 = !DILocation(line: 224, column: 62, scope: !3822)
!3836 = !DILocation(line: 224, column: 71, scope: !3822)
!3837 = !DILocation(line: 225, column: 10, scope: !3832)
!3838 = !DILocation(line: 225, column: 7, scope: !3822)
!3839 = !DILocation(line: 126, column: 32, scope: !1853, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 226, column: 5, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 225, column: 19)
!3842 = !DILocation(line: 126, column: 43, scope: !1853, inlinedAt: !3840)
!3843 = !DILocation(line: 126, column: 50, scope: !1853, inlinedAt: !3840)
!3844 = !DILocation(line: 127, column: 13, scope: !1853, inlinedAt: !3840)
!3845 = !DILocation(line: 127, column: 15, scope: !1853, inlinedAt: !3840)
!3846 = !DILocation(line: 127, column: 6, scope: !1853, inlinedAt: !3840)
!3847 = !DILocation(line: 127, column: 8, scope: !1853, inlinedAt: !3840)
!3848 = !DILocation(line: 128, column: 6, scope: !1853, inlinedAt: !3840)
!3849 = !DILocation(line: 128, column: 8, scope: !1853, inlinedAt: !3840)
!3850 = !DILocation(line: 129, column: 6, scope: !1853, inlinedAt: !3840)
!3851 = !DILocation(line: 129, column: 10, scope: !1853, inlinedAt: !3840)
!3852 = !DILocation(line: 129, column: 15, scope: !1853, inlinedAt: !3840)
!3853 = !DILocation(line: 130, column: 1, scope: !1853, inlinedAt: !3840)
!3854 = !DILocation(line: 227, column: 5, scope: !3841)
!3855 = !DILocalVariable(name: "fs", arg: 1, scope: !3856, file: !3, line: 207, type: !700)
!3856 = distinct !DISubprogram(name: "searchvar", scope: !3, file: !3, line: 207, type: !3857, isLocal: true, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3859)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!203, !700, !332}
!3859 = !{!3855, !3860, !3861}
!3860 = !DILocalVariable(name: "n", arg: 2, scope: !3856, file: !3, line: 207, type: !332)
!3861 = !DILocalVariable(name: "i", scope: !3856, file: !3, line: 208, type: !203)
!3862 = !DILocation(line: 207, column: 34, scope: !3856, inlinedAt: !3863)
!3863 = distinct !DILocation(line: 230, column: 13, scope: !3831)
!3864 = !DILocation(line: 207, column: 47, scope: !3856, inlinedAt: !3863)
!3865 = !DILocation(line: 209, column: 14, scope: !3866, inlinedAt: !3863)
!3866 = distinct !DILexicalBlock(scope: !3856, file: !3, line: 209, column: 3)
!3867 = !DILocation(line: 210, column: 14, scope: !3868, inlinedAt: !3863)
!3868 = distinct !DILexicalBlock(scope: !3869, file: !3, line: 210, column: 9)
!3869 = distinct !DILexicalBlock(scope: !3870, file: !3, line: 209, column: 38)
!3870 = distinct !DILexicalBlock(scope: !3866, file: !3, line: 209, column: 3)
!3871 = !DILocation(line: 209, column: 8, scope: !3866, inlinedAt: !3863)
!3872 = !DILocation(line: 0, scope: !3870, inlinedAt: !3863)
!3873 = !DILocation(line: 208, column: 7, scope: !3856, inlinedAt: !3863)
!3874 = !DILocation(line: 209, column: 27, scope: !3870, inlinedAt: !3863)
!3875 = !DILocation(line: 209, column: 3, scope: !3866, inlinedAt: !3863)
!3876 = !DILocation(line: 214, column: 1, scope: !3856, inlinedAt: !3863)
!3877 = !DILocation(line: 230, column: 9, scope: !3831)
!3878 = !DILocation(line: 231, column: 9, scope: !3831)
!3879 = !DILocation(line: 210, column: 31, scope: !3868, inlinedAt: !3863)
!3880 = !DILocation(line: 210, column: 11, scope: !3868, inlinedAt: !3863)
!3881 = !DILocation(line: 210, column: 9, scope: !3869, inlinedAt: !3863)
!3882 = distinct !{!3882, !3883, !3884}
!3883 = !DILocation(line: 209, column: 3, scope: !3866)
!3884 = !DILocation(line: 212, column: 3, scope: !3866)
!3885 = !DILocation(line: 231, column: 11, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3831, file: !3, line: 231, column: 9)
!3887 = !DILocation(line: 126, column: 32, scope: !1853, inlinedAt: !3888)
!3888 = distinct !DILocation(line: 232, column: 7, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3886, file: !3, line: 231, column: 17)
!3890 = !DILocation(line: 126, column: 43, scope: !1853, inlinedAt: !3888)
!3891 = !DILocation(line: 126, column: 50, scope: !1853, inlinedAt: !3888)
!3892 = !DILocation(line: 127, column: 13, scope: !1853, inlinedAt: !3888)
!3893 = !DILocation(line: 127, column: 15, scope: !1853, inlinedAt: !3888)
!3894 = !DILocation(line: 127, column: 6, scope: !1853, inlinedAt: !3888)
!3895 = !DILocation(line: 127, column: 8, scope: !1853, inlinedAt: !3888)
!3896 = !DILocation(line: 128, column: 6, scope: !1853, inlinedAt: !3888)
!3897 = !DILocation(line: 128, column: 8, scope: !1853, inlinedAt: !3888)
!3898 = !DILocation(line: 129, column: 6, scope: !1853, inlinedAt: !3888)
!3899 = !DILocation(line: 129, column: 10, scope: !1853, inlinedAt: !3888)
!3900 = !DILocation(line: 129, column: 15, scope: !1853, inlinedAt: !3888)
!3901 = !DILocation(line: 130, column: 1, scope: !1853, inlinedAt: !3888)
!3902 = !DILocation(line: 233, column: 12, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3889, file: !3, line: 233, column: 11)
!3904 = !DILocation(line: 233, column: 11, scope: !3889)
!3905 = !DILocalVariable(name: "fs", arg: 1, scope: !3906, file: !3, line: 217, type: !700)
!3906 = distinct !DISubprogram(name: "markupval", scope: !3, file: !3, line: 217, type: !3907, isLocal: true, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3909)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{null, !700, !203}
!3909 = !{!3905, !3910, !3911}
!3910 = !DILocalVariable(name: "level", arg: 2, scope: !3906, file: !3, line: 217, type: !203)
!3911 = !DILocalVariable(name: "bl", scope: !3906, file: !3, line: 218, type: !1003)
!3912 = !DILocation(line: 217, column: 35, scope: !3906, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 234, column: 9, scope: !3903)
!3914 = !DILocation(line: 217, column: 43, scope: !3906, inlinedAt: !3913)
!3915 = !DILocation(line: 218, column: 22, scope: !3906, inlinedAt: !3913)
!3916 = !DILocation(line: 218, column: 13, scope: !3906, inlinedAt: !3913)
!3917 = !DILocation(line: 0, scope: !3906, inlinedAt: !3913)
!3918 = !DILocation(line: 219, column: 10, scope: !3906, inlinedAt: !3913)
!3919 = !DILocation(line: 219, column: 13, scope: !3906, inlinedAt: !3913)
!3920 = !DILocation(line: 219, column: 20, scope: !3906, inlinedAt: !3913)
!3921 = !DILocation(line: 219, column: 16, scope: !3906, inlinedAt: !3913)
!3922 = !DILocation(line: 219, column: 28, scope: !3906, inlinedAt: !3913)
!3923 = !DILocation(line: 219, column: 3, scope: !3906, inlinedAt: !3913)
!3924 = !DILocation(line: 219, column: 46, scope: !3906, inlinedAt: !3913)
!3925 = distinct !{!3925, !3926, !3927}
!3926 = !DILocation(line: 219, column: 3, scope: !3906)
!3927 = !DILocation(line: 219, column: 46, scope: !3906)
!3928 = !DILocation(line: 220, column: 15, scope: !3929, inlinedAt: !3913)
!3929 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 220, column: 7)
!3930 = !DILocation(line: 220, column: 21, scope: !3929, inlinedAt: !3913)
!3931 = !DILocation(line: 220, column: 11, scope: !3929, inlinedAt: !3913)
!3932 = !DILocation(line: 221, column: 1, scope: !3906, inlinedAt: !3913)
!3933 = !DILocation(line: 234, column: 9, scope: !3903)
!3934 = !DILocation(line: 238, column: 28, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3936, file: !3, line: 238, column: 11)
!3936 = distinct !DILexicalBlock(scope: !3886, file: !3, line: 237, column: 10)
!3937 = !DILocation(line: 238, column: 11, scope: !3935)
!3938 = !DILocation(line: 238, column: 45, scope: !3935)
!3939 = !DILocation(line: 238, column: 11, scope: !3936)
!3940 = !DILocalVariable(name: "fs", arg: 1, scope: !3941, file: !3, line: 183, type: !700)
!3941 = distinct !DISubprogram(name: "indexupvalue", scope: !3, file: !3, line: 183, type: !3942, isLocal: true, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3944)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!203, !700, !332, !975}
!3944 = !{!3940, !3945, !3946, !3947, !3948, !3949}
!3945 = !DILocalVariable(name: "name", arg: 2, scope: !3941, file: !3, line: 183, type: !332)
!3946 = !DILocalVariable(name: "v", arg: 3, scope: !3941, file: !3, line: 183, type: !975)
!3947 = !DILocalVariable(name: "i", scope: !3941, file: !3, line: 184, type: !203)
!3948 = !DILocalVariable(name: "f", scope: !3941, file: !3, line: 185, type: !459)
!3949 = !DILocalVariable(name: "oldsize", scope: !3941, file: !3, line: 186, type: !203)
!3950 = !DILocation(line: 183, column: 37, scope: !3941, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 240, column: 23, scope: !3936)
!3952 = !DILocation(line: 183, column: 50, scope: !3941, inlinedAt: !3951)
!3953 = !DILocation(line: 183, column: 65, scope: !3941, inlinedAt: !3951)
!3954 = !DILocation(line: 185, column: 18, scope: !3941, inlinedAt: !3951)
!3955 = !DILocation(line: 185, column: 10, scope: !3941, inlinedAt: !3951)
!3956 = !DILocation(line: 186, column: 20, scope: !3941, inlinedAt: !3951)
!3957 = !DILocation(line: 186, column: 7, scope: !3941, inlinedAt: !3951)
!3958 = !DILocation(line: 184, column: 7, scope: !3941, inlinedAt: !3951)
!3959 = !DILocation(line: 187, column: 18, scope: !3960, inlinedAt: !3951)
!3960 = distinct !DILexicalBlock(scope: !3961, file: !3, line: 187, column: 3)
!3961 = distinct !DILexicalBlock(scope: !3941, file: !3, line: 187, column: 3)
!3962 = !DILocation(line: 187, column: 14, scope: !3960, inlinedAt: !3951)
!3963 = !DILocation(line: 187, column: 3, scope: !3961, inlinedAt: !3951)
!3964 = !DILocation(line: 188, column: 25, scope: !3965, inlinedAt: !3951)
!3965 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 188, column: 9)
!3966 = distinct !DILexicalBlock(scope: !3960, file: !3, line: 187, column: 29)
!3967 = !DILocation(line: 188, column: 9, scope: !3965, inlinedAt: !3951)
!3968 = !DILocation(line: 188, column: 27, scope: !3965, inlinedAt: !3951)
!3969 = !DILocation(line: 188, column: 35, scope: !3965, inlinedAt: !3951)
!3970 = !DILocation(line: 188, column: 54, scope: !3965, inlinedAt: !3951)
!3971 = !DILocation(line: 188, column: 38, scope: !3965, inlinedAt: !3951)
!3972 = !DILocation(line: 188, column: 69, scope: !3965, inlinedAt: !3951)
!3973 = !DILocation(line: 188, column: 59, scope: !3965, inlinedAt: !3951)
!3974 = !DILocation(line: 188, column: 9, scope: !3966, inlinedAt: !3951)
!3975 = !DILocation(line: 187, column: 25, scope: !3960, inlinedAt: !3951)
!3976 = distinct !{!3976, !3977, !3978}
!3977 = !DILocation(line: 187, column: 3, scope: !3961)
!3978 = !DILocation(line: 192, column: 3, scope: !3961)
!3979 = !DILocation(line: 194, column: 3, scope: !3980, inlinedAt: !3951)
!3980 = distinct !DILexicalBlock(scope: !3941, file: !3, line: 194, column: 3)
!3981 = !DILocation(line: 194, column: 3, scope: !3941, inlinedAt: !3951)
!3982 = !DILocation(line: 71, column: 36, scope: !2873, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 194, column: 3, scope: !3980, inlinedAt: !3951)
!3984 = !DILocation(line: 71, column: 44, scope: !2873, inlinedAt: !3983)
!3985 = !DILocation(line: 71, column: 63, scope: !2873, inlinedAt: !3983)
!3986 = !DILocation(line: 72, column: 29, scope: !2873, inlinedAt: !3983)
!3987 = !DILocation(line: 72, column: 41, scope: !2873, inlinedAt: !3983)
!3988 = !DILocation(line: 0, scope: !2873, inlinedAt: !3983)
!3989 = !DILocation(line: 72, column: 21, scope: !2873, inlinedAt: !3983)
!3990 = !DILocation(line: 73, column: 5, scope: !2873, inlinedAt: !3983)
!3991 = !DILocation(line: 74, column: 5, scope: !2873, inlinedAt: !3983)
!3992 = !DILocation(line: 72, column: 15, scope: !2873, inlinedAt: !3983)
!3993 = !DILocation(line: 76, column: 21, scope: !2873, inlinedAt: !3983)
!3994 = !DILocation(line: 76, column: 3, scope: !2873, inlinedAt: !3983)
!3995 = !DILocation(line: 77, column: 1, scope: !2873, inlinedAt: !3983)
!3996 = !DILocation(line: 195, column: 3, scope: !3997, inlinedAt: !3951)
!3997 = distinct !DILexicalBlock(scope: !3941, file: !3, line: 195, column: 3)
!3998 = !DILocation(line: 195, column: 3, scope: !3941, inlinedAt: !3951)
!3999 = !DILocation(line: 0, scope: !3941, inlinedAt: !3951)
!4000 = !DILocation(line: 197, column: 23, scope: !3941, inlinedAt: !3951)
!4001 = !DILocation(line: 197, column: 18, scope: !3941, inlinedAt: !3951)
!4002 = !DILocation(line: 197, column: 3, scope: !3941, inlinedAt: !3951)
!4003 = !DILocation(line: 197, column: 56, scope: !3941, inlinedAt: !3951)
!4004 = !DILocation(line: 197, column: 37, scope: !3941, inlinedAt: !3951)
!4005 = !DILocation(line: 197, column: 60, scope: !3941, inlinedAt: !3951)
!4006 = distinct !{!4006, !2144}
!4007 = distinct !{!4007, !4008, !4009}
!4008 = !DILocation(line: 197, column: 3, scope: !3941)
!4009 = !DILocation(line: 197, column: 62, scope: !3941)
!4010 = !DILocation(line: 198, column: 18, scope: !3941, inlinedAt: !3951)
!4011 = !DILocation(line: 198, column: 3, scope: !3941, inlinedAt: !3951)
!4012 = !DILocation(line: 198, column: 24, scope: !3941, inlinedAt: !3951)
!4013 = !DILocation(line: 199, column: 3, scope: !4014, inlinedAt: !3951)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 199, column: 3)
!4015 = distinct !DILexicalBlock(scope: !3941, file: !3, line: 199, column: 3)
!4016 = !DILocation(line: 199, column: 3, scope: !4015, inlinedAt: !3951)
!4017 = !DILocation(line: 201, column: 19, scope: !3941, inlinedAt: !3951)
!4018 = !DILocation(line: 201, column: 3, scope: !3941, inlinedAt: !3951)
!4019 = !DILocation(line: 201, column: 29, scope: !3941, inlinedAt: !3951)
!4020 = !DILocation(line: 201, column: 25, scope: !3941, inlinedAt: !3951)
!4021 = !DILocation(line: 201, column: 27, scope: !3941, inlinedAt: !3951)
!4022 = !DILocation(line: 202, column: 32, scope: !3941, inlinedAt: !3951)
!4023 = !DILocation(line: 202, column: 25, scope: !3941, inlinedAt: !3951)
!4024 = !DILocation(line: 202, column: 30, scope: !3941, inlinedAt: !3951)
!4025 = !DILocation(line: 203, column: 17, scope: !3941, inlinedAt: !3951)
!4026 = !DILocation(line: 203, column: 10, scope: !3941, inlinedAt: !3951)
!4027 = !DILocation(line: 203, column: 3, scope: !3941, inlinedAt: !3951)
!4028 = !DILocation(line: 204, column: 1, scope: !3941, inlinedAt: !3951)
!4029 = !DILocation(line: 241, column: 12, scope: !3936)
!4030 = !DILocation(line: 240, column: 16, scope: !3936)
!4031 = !DILocation(line: 240, column: 21, scope: !3936)
!4032 = !DILocation(line: 241, column: 14, scope: !3936)
!4033 = !DILocation(line: 242, column: 7, scope: !3936)
!4034 = !DILocation(line: 0, scope: !3889)
!4035 = !DILocation(line: 245, column: 1, scope: !3822)
!4036 = distinct !DISubprogram(name: "forbody", scope: !3, file: !3, line: 1046, type: !4037, isLocal: true, isDefinition: true, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4039)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{null, !597, !203, !203, !203, !203}
!4039 = !{!4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048}
!4040 = !DILocalVariable(name: "ls", arg: 1, scope: !4036, file: !3, line: 1046, type: !597)
!4041 = !DILocalVariable(name: "base", arg: 2, scope: !4036, file: !3, line: 1046, type: !203)
!4042 = !DILocalVariable(name: "line", arg: 3, scope: !4036, file: !3, line: 1046, type: !203)
!4043 = !DILocalVariable(name: "nvars", arg: 4, scope: !4036, file: !3, line: 1046, type: !203)
!4044 = !DILocalVariable(name: "isnum", arg: 5, scope: !4036, file: !3, line: 1046, type: !203)
!4045 = !DILocalVariable(name: "bl", scope: !4036, file: !3, line: 1048, type: !936)
!4046 = !DILocalVariable(name: "fs", scope: !4036, file: !3, line: 1049, type: !700)
!4047 = !DILocalVariable(name: "prep", scope: !4036, file: !3, line: 1050, type: !203)
!4048 = !DILocalVariable(name: "endfor", scope: !4036, file: !3, line: 1050, type: !203)
!4049 = !DILocation(line: 1046, column: 32, scope: !4036)
!4050 = !DILocation(line: 1046, column: 40, scope: !4036)
!4051 = !DILocation(line: 1046, column: 50, scope: !4036)
!4052 = !DILocation(line: 1046, column: 60, scope: !4036)
!4053 = !DILocation(line: 1046, column: 71, scope: !4036)
!4054 = !DILocation(line: 1048, column: 3, scope: !4036)
!4055 = !DILocation(line: 1049, column: 23, scope: !4036)
!4056 = !DILocation(line: 1049, column: 14, scope: !4036)
!4057 = !DILocation(line: 167, column: 40, scope: !2012, inlinedAt: !4058)
!4058 = distinct !DILocation(line: 1051, column: 3, scope: !4036)
!4059 = !DILocation(line: 167, column: 48, scope: !2012, inlinedAt: !4058)
!4060 = !DILocation(line: 168, column: 14, scope: !2012, inlinedAt: !4058)
!4061 = !DILocation(line: 169, column: 17, scope: !2012, inlinedAt: !4058)
!4062 = !DILocation(line: 169, column: 15, scope: !2012, inlinedAt: !4058)
!4063 = !DILocation(line: 170, column: 3, scope: !2024, inlinedAt: !4058)
!4064 = !DILocation(line: 171, column: 5, scope: !2026, inlinedAt: !4058)
!4065 = !DILocation(line: 171, column: 40, scope: !2026, inlinedAt: !4058)
!4066 = !DILocation(line: 171, column: 48, scope: !2026, inlinedAt: !4058)
!4067 = !DILocation(line: 173, column: 1, scope: !2012, inlinedAt: !4058)
!4068 = !DILocation(line: 94, column: 34, scope: !1031, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 1052, column: 3, scope: !4036)
!4070 = !DILocation(line: 94, column: 42, scope: !1031, inlinedAt: !4069)
!4071 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 95, column: 3, scope: !1031, inlinedAt: !4069)
!4073 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !4072)
!4074 = !DILocation(line: 90, column: 13, scope: !666, inlinedAt: !4072)
!4075 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !4072)
!4076 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !4072)
!4077 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !4072)
!4079 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !4078)
!4080 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !4078)
!4081 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !4078)
!4082 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !4078)
!4083 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !4078)
!4084 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !4078)
!4085 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !4072)
!4086 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !4072)
!4087 = !DILocation(line: 96, column: 3, scope: !1031, inlinedAt: !4069)
!4088 = !DILocation(line: 97, column: 1, scope: !1031, inlinedAt: !4069)
!4089 = !DILocation(line: 1053, column: 10, scope: !4036)
!4090 = !DILocation(line: 1053, column: 18, scope: !4036)
!4091 = !DILocation(line: 1053, column: 65, scope: !4036)
!4092 = !DILocation(line: 1050, column: 7, scope: !4036)
!4093 = !DILocation(line: 1048, column: 12, scope: !4036)
!4094 = !DILocation(line: 285, column: 36, scope: !1000, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 1054, column: 3, scope: !4036)
!4096 = !DILocation(line: 285, column: 50, scope: !1000, inlinedAt: !4095)
!4097 = !DILocation(line: 285, column: 62, scope: !1000, inlinedAt: !4095)
!4098 = !DILocation(line: 286, column: 7, scope: !1000, inlinedAt: !4095)
!4099 = !DILocation(line: 286, column: 17, scope: !1000, inlinedAt: !4095)
!4100 = !DILocation(line: 287, column: 7, scope: !1000, inlinedAt: !4095)
!4101 = !DILocation(line: 287, column: 19, scope: !1000, inlinedAt: !4095)
!4102 = !DILocation(line: 288, column: 21, scope: !1000, inlinedAt: !4095)
!4103 = !DILocation(line: 288, column: 7, scope: !1000, inlinedAt: !4095)
!4104 = !DILocation(line: 288, column: 15, scope: !1000, inlinedAt: !4095)
!4105 = !DILocation(line: 289, column: 7, scope: !1000, inlinedAt: !4095)
!4106 = !DILocation(line: 289, column: 13, scope: !1000, inlinedAt: !4095)
!4107 = !DILocation(line: 290, column: 22, scope: !1000, inlinedAt: !4095)
!4108 = !DILocation(line: 290, column: 16, scope: !1000, inlinedAt: !4095)
!4109 = !DILocation(line: 291, column: 10, scope: !1000, inlinedAt: !4095)
!4110 = !DILocation(line: 293, column: 1, scope: !1000, inlinedAt: !4095)
!4111 = !DILocation(line: 167, column: 40, scope: !2012, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 1055, column: 3, scope: !4036)
!4113 = !DILocation(line: 167, column: 48, scope: !2012, inlinedAt: !4112)
!4114 = !DILocation(line: 168, column: 23, scope: !2012, inlinedAt: !4112)
!4115 = !DILocation(line: 168, column: 14, scope: !2012, inlinedAt: !4112)
!4116 = !DILocation(line: 169, column: 17, scope: !2012, inlinedAt: !4112)
!4117 = !DILocation(line: 169, column: 15, scope: !2012, inlinedAt: !4112)
!4118 = !DILocation(line: 170, column: 3, scope: !2024, inlinedAt: !4112)
!4119 = !DILocation(line: 171, column: 5, scope: !2026, inlinedAt: !4112)
!4120 = !DILocation(line: 171, column: 40, scope: !2026, inlinedAt: !4112)
!4121 = !DILocation(line: 171, column: 48, scope: !2026, inlinedAt: !4112)
!4122 = !DILocation(line: 170, column: 22, scope: !2027, inlinedAt: !4112)
!4123 = distinct !{!4123, !2144}
!4124 = !DILocation(line: 173, column: 1, scope: !2012, inlinedAt: !4112)
!4125 = !DILocation(line: 1056, column: 3, scope: !4036)
!4126 = !DILocation(line: 1057, column: 3, scope: !4036)
!4127 = !DILocation(line: 296, column: 36, scope: !1060, inlinedAt: !4128)
!4128 = distinct !DILocation(line: 1058, column: 3, scope: !4036)
!4129 = !DILocation(line: 297, column: 22, scope: !1060, inlinedAt: !4128)
!4130 = !DILocation(line: 297, column: 13, scope: !1060, inlinedAt: !4128)
!4131 = !DILocation(line: 298, column: 16, scope: !1060, inlinedAt: !4128)
!4132 = !DILocation(line: 298, column: 10, scope: !1060, inlinedAt: !4128)
!4133 = !DILocation(line: 299, column: 18, scope: !1060, inlinedAt: !4128)
!4134 = !DILocation(line: 299, column: 26, scope: !1060, inlinedAt: !4128)
!4135 = !DILocation(line: 299, column: 22, scope: !1060, inlinedAt: !4128)
!4136 = !DILocation(line: 176, column: 35, scope: !788, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 299, column: 3, scope: !1060, inlinedAt: !4128)
!4138 = !DILocation(line: 176, column: 43, scope: !788, inlinedAt: !4137)
!4139 = !DILocation(line: 177, column: 23, scope: !788, inlinedAt: !4137)
!4140 = !DILocation(line: 177, column: 14, scope: !788, inlinedAt: !4137)
!4141 = !DILocation(line: 178, column: 14, scope: !788, inlinedAt: !4137)
!4142 = !DILocation(line: 178, column: 22, scope: !788, inlinedAt: !4137)
!4143 = !DILocation(line: 178, column: 3, scope: !788, inlinedAt: !4137)
!4144 = !DILocation(line: 179, column: 5, scope: !788, inlinedAt: !4137)
!4145 = !DILocation(line: 179, column: 34, scope: !788, inlinedAt: !4137)
!4146 = !DILocation(line: 179, column: 40, scope: !788, inlinedAt: !4137)
!4147 = !DILocation(line: 180, column: 1, scope: !788, inlinedAt: !4137)
!4148 = !DILocation(line: 300, column: 11, scope: !1087, inlinedAt: !4128)
!4149 = !DILocation(line: 300, column: 7, scope: !1087, inlinedAt: !4128)
!4150 = !DILocation(line: 300, column: 7, scope: !1060, inlinedAt: !4128)
!4151 = !DILocation(line: 301, column: 5, scope: !1087, inlinedAt: !4128)
!4152 = !DILocation(line: 305, column: 21, scope: !1060, inlinedAt: !4128)
!4153 = !DILocation(line: 305, column: 17, scope: !1060, inlinedAt: !4128)
!4154 = !DILocation(line: 305, column: 7, scope: !1060, inlinedAt: !4128)
!4155 = !DILocation(line: 305, column: 15, scope: !1060, inlinedAt: !4128)
!4156 = !DILocation(line: 306, column: 28, scope: !1060, inlinedAt: !4128)
!4157 = !DILocation(line: 306, column: 3, scope: !1060, inlinedAt: !4128)
!4158 = !DILocation(line: 307, column: 1, scope: !1060, inlinedAt: !4128)
!4159 = !DILocation(line: 1059, column: 3, scope: !4036)
!4160 = !DILocation(line: 1060, column: 12, scope: !4036)
!4161 = !DILocation(line: 1060, column: 22, scope: !4036)
!4162 = !DILocation(line: 1050, column: 13, scope: !4036)
!4163 = !DILocation(line: 1062, column: 3, scope: !4036)
!4164 = !DILocation(line: 1063, column: 23, scope: !4036)
!4165 = !DILocation(line: 1061, column: 22, scope: !4036)
!4166 = !DILocation(line: 1063, column: 40, scope: !4036)
!4167 = !DILocation(line: 1063, column: 61, scope: !4036)
!4168 = !DILocation(line: 1063, column: 3, scope: !4036)
!4169 = !DILocation(line: 1064, column: 1, scope: !4036)
!4170 = distinct !DISubprogram(name: "adjust_assign", scope: !3, file: !3, line: 256, type: !4171, isLocal: true, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4173)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !597, !203, !203, !975}
!4173 = !{!4174, !4175, !4176, !4177, !4178, !4179, !4180}
!4174 = !DILocalVariable(name: "ls", arg: 1, scope: !4170, file: !3, line: 256, type: !597)
!4175 = !DILocalVariable(name: "nvars", arg: 2, scope: !4170, file: !3, line: 256, type: !203)
!4176 = !DILocalVariable(name: "nexps", arg: 3, scope: !4170, file: !3, line: 256, type: !203)
!4177 = !DILocalVariable(name: "e", arg: 4, scope: !4170, file: !3, line: 256, type: !975)
!4178 = !DILocalVariable(name: "fs", scope: !4170, file: !3, line: 257, type: !700)
!4179 = !DILocalVariable(name: "extra", scope: !4170, file: !3, line: 258, type: !203)
!4180 = !DILocalVariable(name: "reg", scope: !4181, file: !3, line: 268, type: !203)
!4181 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 267, column: 20)
!4182 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 267, column: 9)
!4183 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 265, column: 8)
!4184 = distinct !DILexicalBlock(scope: !4170, file: !3, line: 259, column: 7)
!4185 = !DILocation(line: 256, column: 38, scope: !4170)
!4186 = !DILocation(line: 256, column: 46, scope: !4170)
!4187 = !DILocation(line: 256, column: 57, scope: !4170)
!4188 = !DILocation(line: 256, column: 73, scope: !4170)
!4189 = !DILocation(line: 257, column: 23, scope: !4170)
!4190 = !DILocation(line: 257, column: 14, scope: !4170)
!4191 = !DILocation(line: 258, column: 21, scope: !4170)
!4192 = !DILocation(line: 258, column: 7, scope: !4170)
!4193 = !DILocation(line: 259, column: 7, scope: !4184)
!4194 = !DILocation(line: 260, column: 10, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 259, column: 25)
!4196 = !DILocation(line: 261, column: 9, scope: !4195)
!4197 = !DILocation(line: 262, column: 5, scope: !4195)
!4198 = !DILocation(line: 263, column: 15, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4195, file: !3, line: 263, column: 9)
!4200 = !DILocation(line: 263, column: 9, scope: !4195)
!4201 = !DILocation(line: 263, column: 46, scope: !4199)
!4202 = !DILocation(line: 263, column: 20, scope: !4199)
!4203 = !DILocation(line: 266, column: 24, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 266, column: 9)
!4205 = !DILocation(line: 267, column: 15, scope: !4182)
!4206 = !DILocation(line: 267, column: 9, scope: !4183)
!4207 = !DILocation(line: 268, column: 21, scope: !4181)
!4208 = !DILocation(line: 268, column: 11, scope: !4181)
!4209 = !DILocation(line: 269, column: 7, scope: !4181)
!4210 = !DILocation(line: 270, column: 7, scope: !4181)
!4211 = !DILocation(line: 271, column: 5, scope: !4181)
!4212 = !DILocation(line: 273, column: 1, scope: !4170)
!4213 = distinct !DISubprogram(name: "assignment", scope: !3, file: !3, line: 931, type: !4214, isLocal: true, isDefinition: true, scopeLine: 931, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4216)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{null, !597, !2271, !203}
!4216 = !{!4217, !4218, !4219, !4220, !4221, !4224}
!4217 = !DILocalVariable(name: "ls", arg: 1, scope: !4213, file: !3, line: 931, type: !597)
!4218 = !DILocalVariable(name: "lh", arg: 2, scope: !4213, file: !3, line: 931, type: !2271)
!4219 = !DILocalVariable(name: "nvars", arg: 3, scope: !4213, file: !3, line: 931, type: !203)
!4220 = !DILocalVariable(name: "e", scope: !4213, file: !3, line: 932, type: !951)
!4221 = !DILocalVariable(name: "nv", scope: !4222, file: !3, line: 936, type: !2268)
!4222 = distinct !DILexicalBlock(scope: !4223, file: !3, line: 935, column: 26)
!4223 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 935, column: 7)
!4224 = !DILocalVariable(name: "nexps", scope: !4225, file: !3, line: 946, type: !203)
!4225 = distinct !DILexicalBlock(scope: !4223, file: !3, line: 945, column: 8)
!4226 = !DILocation(line: 931, column: 35, scope: !4213)
!4227 = !DILocation(line: 931, column: 58, scope: !4213)
!4228 = !DILocation(line: 931, column: 66, scope: !4213)
!4229 = !DILocation(line: 932, column: 3, scope: !4213)
!4230 = !DILocation(line: 933, column: 3, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4232, file: !3, line: 933, column: 3)
!4232 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 933, column: 3)
!4233 = !DILocation(line: 80, column: 32, scope: !637, inlinedAt: !4234)
!4234 = distinct !DILocation(line: 935, column: 7, scope: !4223)
!4235 = !DILocation(line: 80, column: 40, scope: !637, inlinedAt: !4234)
!4236 = !DILocation(line: 81, column: 13, scope: !646, inlinedAt: !4234)
!4237 = !DILocation(line: 81, column: 19, scope: !646, inlinedAt: !4234)
!4238 = !DILocation(line: 81, column: 7, scope: !637, inlinedAt: !4234)
!4239 = !DILocation(line: 82, column: 5, scope: !650, inlinedAt: !4234)
!4240 = !DILocation(line: 86, column: 1, scope: !637, inlinedAt: !4234)
!4241 = !DILocation(line: 936, column: 5, scope: !4222)
!4242 = !DILocation(line: 937, column: 8, scope: !4222)
!4243 = !DILocation(line: 937, column: 13, scope: !4222)
!4244 = !DILocation(line: 938, column: 24, scope: !4222)
!4245 = !DILocation(line: 938, column: 5, scope: !4222)
!4246 = !DILocation(line: 939, column: 14, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4222, file: !3, line: 939, column: 9)
!4248 = !DILocation(line: 939, column: 16, scope: !4247)
!4249 = !DILocation(line: 939, column: 9, scope: !4222)
!4250 = !DILocalVariable(name: "ls", arg: 1, scope: !4251, file: !3, line: 908, type: !597)
!4251 = distinct !DISubprogram(name: "check_conflict", scope: !3, file: !3, line: 908, type: !4252, isLocal: true, isDefinition: true, scopeLine: 908, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4254)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{null, !597, !2271, !975}
!4254 = !{!4250, !4255, !4256, !4257, !4258, !4259}
!4255 = !DILocalVariable(name: "lh", arg: 2, scope: !4251, file: !3, line: 908, type: !2271)
!4256 = !DILocalVariable(name: "v", arg: 3, scope: !4251, file: !3, line: 908, type: !975)
!4257 = !DILocalVariable(name: "fs", scope: !4251, file: !3, line: 909, type: !700)
!4258 = !DILocalVariable(name: "extra", scope: !4251, file: !3, line: 910, type: !203)
!4259 = !DILocalVariable(name: "conflict", scope: !4251, file: !3, line: 911, type: !203)
!4260 = !DILocation(line: 908, column: 39, scope: !4251, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 940, column: 7, scope: !4247)
!4262 = !DILocation(line: 908, column: 62, scope: !4251, inlinedAt: !4261)
!4263 = !DILocation(line: 908, column: 75, scope: !4251, inlinedAt: !4261)
!4264 = !DILocation(line: 909, column: 23, scope: !4251, inlinedAt: !4261)
!4265 = !DILocation(line: 909, column: 14, scope: !4251, inlinedAt: !4261)
!4266 = !DILocation(line: 910, column: 19, scope: !4251, inlinedAt: !4261)
!4267 = !DILocation(line: 910, column: 7, scope: !4251, inlinedAt: !4261)
!4268 = !DILocation(line: 911, column: 7, scope: !4251, inlinedAt: !4261)
!4269 = !DILocation(line: 912, column: 3, scope: !4270, inlinedAt: !4261)
!4270 = distinct !DILexicalBlock(scope: !4251, file: !3, line: 912, column: 3)
!4271 = !DILocation(line: 913, column: 15, scope: !4272, inlinedAt: !4261)
!4272 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 913, column: 9)
!4273 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 912, column: 29)
!4274 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 912, column: 3)
!4275 = !DILocation(line: 913, column: 17, scope: !4272, inlinedAt: !4261)
!4276 = !DILocation(line: 913, column: 9, scope: !4273, inlinedAt: !4261)
!4277 = !DILocation(line: 914, column: 17, scope: !4278, inlinedAt: !4261)
!4278 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 914, column: 11)
!4279 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 913, column: 30)
!4280 = !DILocation(line: 914, column: 19, scope: !4278, inlinedAt: !4261)
!4281 = !DILocation(line: 914, column: 21, scope: !4278, inlinedAt: !4261)
!4282 = !DILocation(line: 914, column: 36, scope: !4278, inlinedAt: !4261)
!4283 = !DILocation(line: 914, column: 26, scope: !4278, inlinedAt: !4261)
!4284 = !DILocation(line: 914, column: 11, scope: !4279, inlinedAt: !4261)
!4285 = !DILocation(line: 916, column: 24, scope: !4286, inlinedAt: !4261)
!4286 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 914, column: 42)
!4287 = !DILocation(line: 918, column: 35, scope: !4288, inlinedAt: !4261)
!4288 = distinct !DILexicalBlock(scope: !4279, file: !3, line: 918, column: 11)
!4289 = !DILocation(line: 917, column: 7, scope: !4286, inlinedAt: !4261)
!4290 = !DILocation(line: 0, scope: !4251, inlinedAt: !4261)
!4291 = !DILocation(line: 918, column: 21, scope: !4288, inlinedAt: !4261)
!4292 = !DILocation(line: 918, column: 25, scope: !4288, inlinedAt: !4261)
!4293 = !DILocation(line: 918, column: 11, scope: !4279, inlinedAt: !4261)
!4294 = !DILocation(line: 920, column: 23, scope: !4295, inlinedAt: !4261)
!4295 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 918, column: 41)
!4296 = !DILocation(line: 921, column: 7, scope: !4295, inlinedAt: !4261)
!4297 = !DILocation(line: 912, column: 23, scope: !4274, inlinedAt: !4261)
!4298 = distinct !{!4298, !4299, !4300}
!4299 = !DILocation(line: 912, column: 3, scope: !4270)
!4300 = !DILocation(line: 923, column: 3, scope: !4270)
!4301 = !DILocation(line: 924, column: 7, scope: !4302, inlinedAt: !4261)
!4302 = distinct !DILexicalBlock(scope: !4251, file: !3, line: 924, column: 7)
!4303 = !DILocation(line: 924, column: 7, scope: !4251, inlinedAt: !4261)
!4304 = !DILocation(line: 925, column: 35, scope: !4305, inlinedAt: !4261)
!4305 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 924, column: 17)
!4306 = !DILocation(line: 925, column: 51, scope: !4305, inlinedAt: !4261)
!4307 = !DILocation(line: 925, column: 5, scope: !4305, inlinedAt: !4261)
!4308 = !DILocation(line: 926, column: 5, scope: !4305, inlinedAt: !4261)
!4309 = !DILocation(line: 927, column: 3, scope: !4305, inlinedAt: !4261)
!4310 = !DILocation(line: 928, column: 1, scope: !4251, inlinedAt: !4261)
!4311 = !DILocation(line: 940, column: 7, scope: !4247)
!4312 = !DILocation(line: 941, column: 5, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4222, file: !3, line: 941, column: 5)
!4314 = !DILocation(line: 941, column: 5, scope: !4222)
!4315 = !DILocation(line: 71, column: 36, scope: !2873, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 941, column: 5, scope: !4313)
!4317 = !DILocation(line: 71, column: 44, scope: !2873, inlinedAt: !4316)
!4318 = !DILocation(line: 71, column: 63, scope: !2873, inlinedAt: !4316)
!4319 = !DILocation(line: 72, column: 26, scope: !2873, inlinedAt: !4316)
!4320 = !DILocation(line: 72, column: 29, scope: !2873, inlinedAt: !4316)
!4321 = !DILocation(line: 72, column: 41, scope: !2873, inlinedAt: !4316)
!4322 = !DILocation(line: 0, scope: !2873, inlinedAt: !4316)
!4323 = !DILocation(line: 72, column: 21, scope: !2873, inlinedAt: !4316)
!4324 = !DILocation(line: 73, column: 5, scope: !2873, inlinedAt: !4316)
!4325 = !DILocation(line: 74, column: 5, scope: !2873, inlinedAt: !4316)
!4326 = !DILocation(line: 72, column: 15, scope: !2873, inlinedAt: !4316)
!4327 = !DILocation(line: 76, column: 21, scope: !2873, inlinedAt: !4316)
!4328 = !DILocation(line: 76, column: 3, scope: !2873, inlinedAt: !4316)
!4329 = !DILocation(line: 77, column: 1, scope: !2873, inlinedAt: !4316)
!4330 = !DILocation(line: 943, column: 30, scope: !4222)
!4331 = !DILocation(line: 936, column: 23, scope: !4222)
!4332 = !DILocation(line: 943, column: 5, scope: !4222)
!4333 = !DILocation(line: 944, column: 3, scope: !4223)
!4334 = !DILocation(line: 944, column: 3, scope: !4222)
!4335 = !DILocation(line: 94, column: 34, scope: !1031, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 947, column: 5, scope: !4225)
!4337 = !DILocation(line: 94, column: 42, scope: !1031, inlinedAt: !4336)
!4338 = !DILocation(line: 89, column: 30, scope: !667, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 95, column: 3, scope: !1031, inlinedAt: !4336)
!4340 = !DILocation(line: 89, column: 38, scope: !667, inlinedAt: !4339)
!4341 = !DILocation(line: 90, column: 19, scope: !666, inlinedAt: !4339)
!4342 = !DILocation(line: 90, column: 7, scope: !667, inlinedAt: !4339)
!4343 = !DILocation(line: 65, column: 39, scope: !681, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !4339)
!4345 = !DILocation(line: 65, column: 47, scope: !681, inlinedAt: !4344)
!4346 = !DILocation(line: 67, column: 28, scope: !681, inlinedAt: !4344)
!4347 = !DILocation(line: 67, column: 51, scope: !681, inlinedAt: !4344)
!4348 = !DILocation(line: 67, column: 7, scope: !681, inlinedAt: !4344)
!4349 = !DILocation(line: 66, column: 3, scope: !681, inlinedAt: !4344)
!4350 = !DILocation(line: 68, column: 1, scope: !681, inlinedAt: !4344)
!4351 = !DILocation(line: 91, column: 5, scope: !666, inlinedAt: !4339)
!4352 = !DILocation(line: 92, column: 1, scope: !667, inlinedAt: !4339)
!4353 = !DILocation(line: 96, column: 3, scope: !1031, inlinedAt: !4336)
!4354 = !DILocation(line: 97, column: 1, scope: !1031, inlinedAt: !4336)
!4355 = !DILocation(line: 932, column: 11, scope: !4213)
!4356 = !DILocation(line: 596, column: 32, scope: !1384, inlinedAt: !4357)
!4357 = distinct !DILocation(line: 948, column: 13, scope: !4225)
!4358 = !DILocation(line: 596, column: 45, scope: !1384, inlinedAt: !4357)
!4359 = !DILocation(line: 598, column: 7, scope: !1384, inlinedAt: !4357)
!4360 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !4361)
!4361 = distinct !DILocation(line: 599, column: 3, scope: !1384, inlinedAt: !4357)
!4362 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !4361)
!4363 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !4361)
!4364 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !4361)
!4365 = !DILocation(line: 80, column: 32, scope: !637, inlinedAt: !4366)
!4366 = distinct !DILocation(line: 600, column: 10, scope: !1384, inlinedAt: !4357)
!4367 = !DILocation(line: 80, column: 40, scope: !637, inlinedAt: !4366)
!4368 = !DILocation(line: 81, column: 13, scope: !646, inlinedAt: !4366)
!4369 = !DILocation(line: 81, column: 19, scope: !646, inlinedAt: !4366)
!4370 = !DILocation(line: 81, column: 7, scope: !637, inlinedAt: !4366)
!4371 = !DILocation(line: 82, column: 5, scope: !650, inlinedAt: !4366)
!4372 = !DILocation(line: 86, column: 1, scope: !637, inlinedAt: !4366)
!4373 = !DILocation(line: 601, column: 26, scope: !1408, inlinedAt: !4357)
!4374 = !DILocation(line: 601, column: 5, scope: !1408, inlinedAt: !4357)
!4375 = !DILocation(line: 856, column: 29, scope: !972, inlinedAt: !4376)
!4376 = distinct !DILocation(line: 602, column: 5, scope: !1408, inlinedAt: !4357)
!4377 = !DILocation(line: 856, column: 42, scope: !972, inlinedAt: !4376)
!4378 = !DILocation(line: 857, column: 3, scope: !972, inlinedAt: !4376)
!4379 = !DILocation(line: 858, column: 1, scope: !972, inlinedAt: !4376)
!4380 = !DILocation(line: 603, column: 6, scope: !1408, inlinedAt: !4357)
!4381 = !DILocation(line: 0, scope: !1408, inlinedAt: !4357)
!4382 = !DILocation(line: 605, column: 3, scope: !1384, inlinedAt: !4357)
!4383 = !DILocation(line: 946, column: 9, scope: !4225)
!4384 = !DILocation(line: 949, column: 15, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 949, column: 9)
!4386 = !DILocation(line: 949, column: 9, scope: !4225)
!4387 = !DILocation(line: 950, column: 7, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4385, file: !3, line: 949, column: 25)
!4389 = !DILocation(line: 951, column: 17, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 951, column: 11)
!4391 = !DILocation(line: 951, column: 11, scope: !4388)
!4392 = !DILocation(line: 952, column: 13, scope: !4390)
!4393 = !DILocation(line: 952, column: 17, scope: !4390)
!4394 = !DILocation(line: 952, column: 25, scope: !4390)
!4395 = !DILocation(line: 952, column: 9, scope: !4390)
!4396 = !DILocation(line: 955, column: 26, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4385, file: !3, line: 954, column: 10)
!4398 = !DILocation(line: 955, column: 7, scope: !4397)
!4399 = !DILocation(line: 956, column: 25, scope: !4397)
!4400 = !DILocation(line: 956, column: 7, scope: !4397)
!4401 = !DILocation(line: 960, column: 31, scope: !4213)
!4402 = !DILocation(line: 960, column: 35, scope: !4213)
!4403 = !DILocation(line: 960, column: 42, scope: !4213)
!4404 = !DILocation(line: 126, column: 32, scope: !1853, inlinedAt: !4405)
!4405 = distinct !DILocation(line: 960, column: 3, scope: !4213)
!4406 = !DILocation(line: 126, column: 43, scope: !1853, inlinedAt: !4405)
!4407 = !DILocation(line: 126, column: 50, scope: !1853, inlinedAt: !4405)
!4408 = !DILocation(line: 127, column: 13, scope: !1853, inlinedAt: !4405)
!4409 = !DILocation(line: 127, column: 15, scope: !1853, inlinedAt: !4405)
!4410 = !DILocation(line: 127, column: 6, scope: !1853, inlinedAt: !4405)
!4411 = !DILocation(line: 127, column: 8, scope: !1853, inlinedAt: !4405)
!4412 = !DILocation(line: 128, column: 6, scope: !1853, inlinedAt: !4405)
!4413 = !DILocation(line: 128, column: 8, scope: !1853, inlinedAt: !4405)
!4414 = !DILocation(line: 129, column: 6, scope: !1853, inlinedAt: !4405)
!4415 = !DILocation(line: 129, column: 10, scope: !1853, inlinedAt: !4405)
!4416 = !DILocation(line: 129, column: 15, scope: !1853, inlinedAt: !4405)
!4417 = !DILocation(line: 130, column: 1, scope: !1853, inlinedAt: !4405)
!4418 = !DILocation(line: 961, column: 3, scope: !4213)
!4419 = !DILocation(line: 962, column: 1, scope: !4213)
