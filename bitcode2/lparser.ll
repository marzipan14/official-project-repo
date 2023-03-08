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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  br i1 %20, label %21, label %22, !dbg !619

; <label>:21:                                     ; preds = %4
  call void @luaX_lexerror(%struct.LexState* nonnull %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 0) #5, !dbg !620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  br label %22, !dbg !620

; <label>:22:                                     ; preds = %21, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  %23 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 3, i32 0
  %24 = getelementptr inbounds %struct.LexState, %struct.LexState* %5, i64 0, i32 5
  br label %25, !dbg !623

; <label>:25:                                     ; preds = %33, %22
  %26 = load i32, i32* %23, align 8, !dbg !624, !tbaa !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  switch i32 %26, label %28 [
    i32 260, label %27
    i32 261, label %27
    i32 262, label %27
    i32 276, label %27
    i32 287, label %27
  ], !dbg !633

; <label>:27:                                     ; preds = %25, %25, %25, %25, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !622
  br label %42, !dbg !622

; <label>:28:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !622
  %29 = call fastcc i32 @statement(%struct.LexState* nonnull %5) #5, !dbg !638
  %30 = load i32, i32* %23, align 8, !dbg !649, !tbaa !625
  %31 = icmp eq i32 %30, 59, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  br i1 %31, label %32, label %33, !dbg !652

; <label>:32:                                     ; preds = %28
  call void @luaX_next(%struct.LexState* nonnull %5) #5, !dbg !653
  br label %33, !dbg !655

; <label>:33:                                     ; preds = %28, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  %34 = load %struct.FuncState*, %struct.FuncState** %24, align 8, !dbg !658, !tbaa !659
  %35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %34, i64 0, i32 13, !dbg !660
  %36 = load i8, i8* %35, align 2, !dbg !660, !tbaa !661
  %37 = zext i8 %36 to i32, !dbg !662
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %34, i64 0, i32 9, !dbg !663
  store i32 %37, i32* %38, align 4, !dbg !664, !tbaa !665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !622
  %39 = icmp eq i32 %29, 0, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  br i1 %39, label %25, label %40, !dbg !623, !llvm.loop !667

; <label>:40:                                     ; preds = %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !622
  %41 = load i32, i32* %23, align 8, !dbg !670, !tbaa !625
  br label %42

; <label>:42:                                     ; preds = %27, %40
  %43 = phi i32 [ %26, %27 ], [ %41, %40 ], !dbg !670
  %44 = load %struct.lua_State*, %struct.lua_State** %15, align 8, !dbg !679, !tbaa !611
  %45 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %44, i64 0, i32 15, !dbg !679
  %46 = load i16, i16* %45, align 8, !dbg !679, !tbaa !614
  %47 = add i16 %46, -1, !dbg !679
  store i16 %47, i16* %45, align 8, !dbg !679, !tbaa !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !680
  %48 = icmp eq i32 %43, 287, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  br i1 %48, label %52, label %49, !dbg !684

; <label>:49:                                     ; preds = %42
  %50 = call i8* @luaX_token2str(%struct.LexState* nonnull %5, i32 287) #5, !dbg !692
  %51 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %50) #5, !dbg !693
  call void @luaX_syntaxerror(%struct.LexState* nonnull %5, i8* %51) #5, !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  br label %52, !dbg !696

; <label>:52:                                     ; preds = %42, %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  call fastcc void @close_func(%struct.LexState* nonnull %5) #6, !dbg !698
  %53 = load %struct.Proto*, %struct.Proto** %12, align 8, !dbg !699, !tbaa !585
  call void @llvm.lifetime.end.p0i8(i64 600, i8* nonnull %8) #4, !dbg !700
  call void @llvm.lifetime.end.p0i8(i64 96, i8* nonnull %7) #4, !dbg !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  ret %struct.Proto* %53, !dbg !701
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
define internal fastcc void @open_func(%struct.LexState*, %struct.FuncState*) unnamed_addr #0 !dbg !702 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !718
  %4 = load %struct.lua_State*, %struct.lua_State** %3, align 8, !dbg !718, !tbaa !611
  %5 = tail call %struct.Proto* @luaF_newproto(%struct.lua_State* %4) #5, !dbg !720
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 0, !dbg !722
  store %struct.Proto* %5, %struct.Proto** %6, align 8, !dbg !723, !tbaa !585
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !724
  %8 = bitcast %struct.FuncState** %7 to i64*, !dbg !724
  %9 = load i64, i64* %8, align 8, !dbg !724, !tbaa !659
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 2, !dbg !725
  %11 = bitcast %struct.FuncState** %10 to i64*, !dbg !726
  store i64 %9, i64* %11, align 8, !dbg !726, !tbaa !727
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 3, !dbg !728
  store %struct.LexState* %0, %struct.LexState** %12, align 8, !dbg !729, !tbaa !730
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 4, !dbg !731
  store %struct.lua_State* %4, %struct.lua_State** %13, align 8, !dbg !732, !tbaa !733
  store %struct.FuncState* %1, %struct.FuncState** %7, align 8, !dbg !734, !tbaa !659
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 6, !dbg !735
  %15 = bitcast i32* %14 to <4 x i32>*, !dbg !736
  store <4 x i32> <i32 0, i32 -1, i32 -1, i32 0>, <4 x i32>* %15, align 8, !dbg !736, !tbaa !737
  %16 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 10, !dbg !738
  store i32 0, i32* %16, align 8, !dbg !739, !tbaa !740
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 11, !dbg !741
  store i32 0, i32* %17, align 4, !dbg !742, !tbaa !743
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 12, !dbg !744
  store i16 0, i16* %18, align 8, !dbg !745, !tbaa !746
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 13, !dbg !747
  store i8 0, i8* %19, align 2, !dbg !748, !tbaa !661
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 5, !dbg !749
  store %struct.BlockCnt* null, %struct.BlockCnt** %20, align 8, !dbg !750, !tbaa !751
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9, !dbg !752
  %22 = bitcast %union.TString** %21 to i64*, !dbg !752
  %23 = load i64, i64* %22, align 8, !dbg !752, !tbaa !753
  %24 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 9, !dbg !754
  %25 = bitcast %union.TString** %24 to i64*, !dbg !755
  store i64 %23, i64* %25, align 8, !dbg !755, !tbaa !756
  %26 = getelementptr inbounds %struct.Proto, %struct.Proto* %5, i64 0, i32 22, !dbg !757
  store i8 2, i8* %26, align 1, !dbg !758, !tbaa !759
  %27 = tail call %struct.Table* @luaH_new(%struct.lua_State* %4, i32 0, i32 0) #5, !dbg !760
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1, i64 0, i32 1, !dbg !761
  store %struct.Table* %27, %struct.Table** %28, align 8, !dbg !762, !tbaa !763
  %29 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i64 0, i32 4, !dbg !764
  %30 = load %struct.lua_TValue*, %struct.lua_TValue** %29, align 8, !dbg !764, !tbaa !765
  %31 = bitcast %struct.lua_TValue* %30 to %struct.Table**, !dbg !764
  store %struct.Table* %27, %struct.Table** %31, align 8, !dbg !764, !tbaa !766
  %32 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %30, i64 0, i32 1, !dbg !764
  store i32 5, i32* %32, align 8, !dbg !764, !tbaa !767
  %33 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %4, i64 0, i32 9, !dbg !768
  %34 = bitcast %struct.lua_TValue** %33 to i64*, !dbg !768
  %35 = load i64, i64* %34, align 8, !dbg !768, !tbaa !771
  %36 = bitcast %struct.lua_TValue** %29 to i64*, !dbg !768
  %37 = load i64, i64* %36, align 8, !dbg !768, !tbaa !765
  %38 = sub i64 %35, %37, !dbg !768
  %39 = icmp slt i64 %38, 17, !dbg !768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  %40 = inttoptr i64 %37 to %struct.lua_TValue*, !dbg !772
  br i1 %39, label %41, label %43, !dbg !772

; <label>:41:                                     ; preds = %2
  tail call void @luaD_growstack(%struct.lua_State* %4, i32 1) #5, !dbg !768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  %42 = load %struct.lua_TValue*, %struct.lua_TValue** %29, align 8, !dbg !772, !tbaa !765
  br label %43, !dbg !768

; <label>:43:                                     ; preds = %2, %41
  %44 = phi %struct.lua_TValue* [ %40, %2 ], [ %42, %41 ], !dbg !772
  %45 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i64 1, !dbg !772
  store %struct.lua_TValue* %45, %struct.lua_TValue** %29, align 8, !dbg !772, !tbaa !765
  %46 = bitcast %struct.lua_TValue* %45 to %struct.Proto**, !dbg !773
  store %struct.Proto* %5, %struct.Proto** %46, align 8, !dbg !773, !tbaa !766
  %47 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %44, i64 1, i32 1, !dbg !773
  store i32 9, i32* %47, align 8, !dbg !773, !tbaa !767
  %48 = load i64, i64* %34, align 8, !dbg !774, !tbaa !771
  %49 = load i64, i64* %36, align 8, !dbg !774, !tbaa !765
  %50 = sub i64 %48, %49, !dbg !774
  %51 = icmp slt i64 %50, 17, !dbg !774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !777
  %52 = inttoptr i64 %49 to %struct.lua_TValue*, !dbg !777
  br i1 %51, label %53, label %55, !dbg !777

; <label>:53:                                     ; preds = %43
  tail call void @luaD_growstack(%struct.lua_State* nonnull %4, i32 1) #5, !dbg !774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !774
  %54 = load %struct.lua_TValue*, %struct.lua_TValue** %29, align 8, !dbg !777, !tbaa !765
  br label %55, !dbg !774

; <label>:55:                                     ; preds = %43, %53
  %56 = phi %struct.lua_TValue* [ %52, %43 ], [ %54, %53 ], !dbg !777
  %57 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %56, i64 1, !dbg !777
  store %struct.lua_TValue* %57, %struct.lua_TValue** %29, align 8, !dbg !777, !tbaa !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  ret void, !dbg !778
}

; Function Attrs: noredzone
declare hidden void @luaX_next(%struct.LexState*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @close_func(%struct.LexState*) unnamed_addr #0 !dbg !779 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !786
  %3 = load %struct.lua_State*, %struct.lua_State** %2, align 8, !dbg !786, !tbaa !611
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !788
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !788, !tbaa !659
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0, !dbg !790
  %7 = load %struct.Proto*, %struct.Proto** %6, align 8, !dbg !790, !tbaa !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 13, !dbg !802
  %9 = load i8, i8* %8, align 2, !dbg !802, !tbaa !661
  %10 = icmp eq i8 %9, 0, !dbg !803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  %11 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 6
  br i1 %10, label %48, label %12, !dbg !801

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %11, align 8, !tbaa !804
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 7
  %15 = load %struct.LocVar*, %struct.LocVar** %14, align 8, !tbaa !805
  %16 = zext i8 %9 to i64, !dbg !801
  %17 = and i8 %9, 1, !dbg !801
  %18 = icmp eq i8 %17, 0, !dbg !801
  br i1 %18, label %27, label %19, !dbg !801

; <label>:19:                                     ; preds = %12
  %20 = add i8 %9, -1, !dbg !806
  store i8 %20, i8* %8, align 2, !dbg !806, !tbaa !661
  %21 = zext i8 %20 to i64, !dbg !806
  %22 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 15, i64 %21, !dbg !806
  %23 = load i16, i16* %22, align 2, !dbg !806, !tbaa !807
  %24 = zext i16 %23 to i64, !dbg !806
  %25 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %15, i64 %24, i32 2, !dbg !808
  store i32 %13, i32* %25, align 4, !dbg !809, !tbaa !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  %26 = add nsw i64 %16, -1, !dbg !806
  br label %27, !dbg !801

; <label>:27:                                     ; preds = %12, %19
  %28 = phi i64 [ %16, %12 ], [ %26, %19 ]
  %29 = icmp eq i8 %9, 1, !dbg !801
  br i1 %29, label %48, label %30, !dbg !801

; <label>:30:                                     ; preds = %27, %30
  %31 = phi i64 [ %47, %30 ], [ %28, %27 ]
  %32 = trunc i64 %31 to i8, !dbg !806
  %33 = add i8 %32, -1, !dbg !806
  store i8 %33, i8* %8, align 2, !dbg !806, !tbaa !661
  %34 = zext i8 %33 to i64, !dbg !806
  %35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 15, i64 %34, !dbg !806
  %36 = load i16, i16* %35, align 2, !dbg !806, !tbaa !807
  %37 = zext i16 %36 to i64, !dbg !806
  %38 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %15, i64 %37, i32 2, !dbg !808
  store i32 %13, i32* %38, align 4, !dbg !809, !tbaa !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  %39 = trunc i64 %31 to i8, !dbg !806
  %40 = add i8 %39, -2, !dbg !806
  store i8 %40, i8* %8, align 2, !dbg !806, !tbaa !661
  %41 = zext i8 %40 to i64, !dbg !806
  %42 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 15, i64 %41, !dbg !806
  %43 = load i16, i16* %42, align 2, !dbg !806, !tbaa !807
  %44 = zext i16 %43 to i64, !dbg !806
  %45 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %15, i64 %44, i32 2, !dbg !808
  store i32 %13, i32* %45, align 4, !dbg !809, !tbaa !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  %46 = icmp eq i8 %40, 0, !dbg !803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  %47 = add nsw i64 %31, -2, !dbg !806
  br i1 %46, label %48, label %30, !dbg !801, !llvm.loop !812

; <label>:48:                                     ; preds = %27, %30, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !815
  tail call void @luaK_ret(%struct.FuncState* %5, i32 0, i32 0) #5, !dbg !816
  %49 = load i32, i32* %11, align 8, !dbg !817, !tbaa !804
  %50 = icmp sgt i32 %49, -2, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  br i1 %50, label %51, label %62, !dbg !817

; <label>:51:                                     ; preds = %48
  %52 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 4, !dbg !817
  %53 = bitcast i32** %52 to i8**, !dbg !817
  %54 = load i8*, i8** %53, align 8, !dbg !817, !tbaa !818
  %55 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 12, !dbg !817
  %56 = load i32, i32* %55, align 8, !dbg !817, !tbaa !819
  %57 = sext i32 %56 to i64, !dbg !817
  %58 = shl nsw i64 %57, 2, !dbg !817
  %59 = sext i32 %49 to i64, !dbg !817
  %60 = shl nsw i64 %59, 2, !dbg !817
  %61 = tail call i8* @luaM_realloc_(%struct.lua_State* %3, i8* %54, i64 %58, i64 %60) #5, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  br label %67, !dbg !817

; <label>:62:                                     ; preds = %48
  %63 = tail call i8* @luaM_toobig(%struct.lua_State* %3) #5, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  %64 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 4, !dbg !817
  %65 = bitcast i32** %64 to i8**, !dbg !817
  %66 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 12, !dbg !820
  br label %67, !dbg !817

; <label>:67:                                     ; preds = %62, %51
  %68 = phi i32* [ %66, %62 ], [ %55, %51 ], !dbg !820
  %69 = phi i8** [ %65, %62 ], [ %53, %51 ], !dbg !817
  %70 = phi i8* [ %63, %62 ], [ %61, %51 ], !dbg !817
  store i8* %70, i8** %69, align 8, !dbg !817, !tbaa !818
  %71 = load i32, i32* %11, align 8, !dbg !821, !tbaa !804
  store i32 %71, i32* %68, align 8, !dbg !822, !tbaa !819
  %72 = icmp sgt i32 %71, -2, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  br i1 %72, label %73, label %84, !dbg !823

; <label>:73:                                     ; preds = %67
  %74 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 6, !dbg !823
  %75 = bitcast i32** %74 to i8**, !dbg !823
  %76 = load i8*, i8** %75, align 8, !dbg !823, !tbaa !824
  %77 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 13, !dbg !823
  %78 = load i32, i32* %77, align 4, !dbg !823, !tbaa !825
  %79 = sext i32 %78 to i64, !dbg !823
  %80 = shl nsw i64 %79, 2, !dbg !823
  %81 = sext i32 %71 to i64, !dbg !823
  %82 = shl nsw i64 %81, 2, !dbg !823
  %83 = tail call i8* @luaM_realloc_(%struct.lua_State* %3, i8* %76, i64 %80, i64 %82) #5, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  br label %89, !dbg !823

; <label>:84:                                     ; preds = %67
  %85 = tail call i8* @luaM_toobig(%struct.lua_State* %3) #5, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  %86 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 6, !dbg !823
  %87 = bitcast i32** %86 to i8**, !dbg !823
  %88 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 13, !dbg !826
  br label %89, !dbg !823

; <label>:89:                                     ; preds = %84, %73
  %90 = phi i32* [ %88, %84 ], [ %77, %73 ], !dbg !826
  %91 = phi i8** [ %87, %84 ], [ %75, %73 ], !dbg !823
  %92 = phi i8* [ %85, %84 ], [ %83, %73 ], !dbg !823
  store i8* %92, i8** %91, align 8, !dbg !823, !tbaa !824
  %93 = load i32, i32* %11, align 8, !dbg !827, !tbaa !804
  store i32 %93, i32* %90, align 4, !dbg !828, !tbaa !825
  %94 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 10, !dbg !829
  %95 = load i32, i32* %94, align 8, !dbg !829, !tbaa !740
  %96 = icmp sgt i32 %95, -2, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  br i1 %96, label %97, label %108, !dbg !829

; <label>:97:                                     ; preds = %89
  %98 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 3, !dbg !829
  %99 = bitcast %struct.lua_TValue** %98 to i8**, !dbg !829
  %100 = load i8*, i8** %99, align 8, !dbg !829, !tbaa !830
  %101 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 11, !dbg !829
  %102 = load i32, i32* %101, align 4, !dbg !829, !tbaa !831
  %103 = sext i32 %102 to i64, !dbg !829
  %104 = shl nsw i64 %103, 4, !dbg !829
  %105 = sext i32 %95 to i64, !dbg !829
  %106 = shl nsw i64 %105, 4, !dbg !829
  %107 = tail call i8* @luaM_realloc_(%struct.lua_State* %3, i8* %100, i64 %104, i64 %106) #5, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  br label %113, !dbg !829

; <label>:108:                                    ; preds = %89
  %109 = tail call i8* @luaM_toobig(%struct.lua_State* %3) #5, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  %110 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 3, !dbg !829
  %111 = bitcast %struct.lua_TValue** %110 to i8**, !dbg !829
  %112 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 11, !dbg !832
  br label %113, !dbg !829

; <label>:113:                                    ; preds = %108, %97
  %114 = phi i32* [ %112, %108 ], [ %101, %97 ], !dbg !832
  %115 = phi i8** [ %111, %108 ], [ %99, %97 ], !dbg !829
  %116 = phi i8* [ %109, %108 ], [ %107, %97 ], !dbg !829
  store i8* %116, i8** %115, align 8, !dbg !829, !tbaa !830
  %117 = load i32, i32* %94, align 8, !dbg !833, !tbaa !740
  store i32 %117, i32* %114, align 4, !dbg !834, !tbaa !831
  %118 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 11, !dbg !835
  %119 = load i32, i32* %118, align 4, !dbg !835, !tbaa !743
  %120 = icmp sgt i32 %119, -2, !dbg !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  br i1 %120, label %121, label %132, !dbg !835

; <label>:121:                                    ; preds = %113
  %122 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 5, !dbg !835
  %123 = bitcast %struct.Proto*** %122 to i8**, !dbg !835
  %124 = load i8*, i8** %123, align 8, !dbg !835, !tbaa !836
  %125 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 14, !dbg !835
  %126 = load i32, i32* %125, align 8, !dbg !835, !tbaa !837
  %127 = sext i32 %126 to i64, !dbg !835
  %128 = shl nsw i64 %127, 3, !dbg !835
  %129 = sext i32 %119 to i64, !dbg !835
  %130 = shl nsw i64 %129, 3, !dbg !835
  %131 = tail call i8* @luaM_realloc_(%struct.lua_State* %3, i8* %124, i64 %128, i64 %130) #5, !dbg !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  br label %137, !dbg !835

; <label>:132:                                    ; preds = %113
  %133 = tail call i8* @luaM_toobig(%struct.lua_State* %3) #5, !dbg !835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  %134 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 5, !dbg !835
  %135 = bitcast %struct.Proto*** %134 to i8**, !dbg !835
  %136 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 14, !dbg !838
  br label %137, !dbg !835

; <label>:137:                                    ; preds = %132, %121
  %138 = phi i32* [ %136, %132 ], [ %125, %121 ], !dbg !838
  %139 = phi i8** [ %135, %132 ], [ %123, %121 ], !dbg !835
  %140 = phi i8* [ %133, %132 ], [ %131, %121 ], !dbg !835
  store i8* %140, i8** %139, align 8, !dbg !835, !tbaa !836
  %141 = load i32, i32* %118, align 4, !dbg !839, !tbaa !743
  store i32 %141, i32* %138, align 8, !dbg !840, !tbaa !837
  %142 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 12, !dbg !841
  %143 = load i16, i16* %142, align 8, !dbg !841, !tbaa !746
  %144 = sext i16 %143 to i64, !dbg !841
  %145 = add nsw i64 %144, 1, !dbg !841
  %146 = icmp ult i64 %145, 1152921504606846976, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  br i1 %146, label %147, label %157, !dbg !841

; <label>:147:                                    ; preds = %137
  %148 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 7, !dbg !841
  %149 = bitcast %struct.LocVar** %148 to i8**, !dbg !841
  %150 = load i8*, i8** %149, align 8, !dbg !841, !tbaa !805
  %151 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 15, !dbg !841
  %152 = load i32, i32* %151, align 4, !dbg !841, !tbaa !842
  %153 = sext i32 %152 to i64, !dbg !841
  %154 = shl nsw i64 %153, 4, !dbg !841
  %155 = shl nsw i64 %144, 4, !dbg !841
  %156 = tail call i8* @luaM_realloc_(%struct.lua_State* %3, i8* %150, i64 %154, i64 %155) #5, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  br label %162, !dbg !841

; <label>:157:                                    ; preds = %137
  %158 = tail call i8* @luaM_toobig(%struct.lua_State* %3) #5, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  %159 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 7, !dbg !841
  %160 = bitcast %struct.LocVar** %159 to i8**, !dbg !841
  %161 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 15, !dbg !843
  br label %162, !dbg !841

; <label>:162:                                    ; preds = %147, %157
  %163 = phi i32* [ %151, %147 ], [ %161, %157 ], !dbg !843
  %164 = phi i8** [ %149, %147 ], [ %160, %157 ], !dbg !841
  %165 = phi i8* [ %156, %147 ], [ %158, %157 ], !dbg !841
  store i8* %165, i8** %164, align 8, !dbg !841, !tbaa !805
  %166 = load i16, i16* %142, align 8, !dbg !844, !tbaa !746
  %167 = sext i16 %166 to i32, !dbg !845
  store i32 %167, i32* %163, align 4, !dbg !846, !tbaa !842
  %168 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 19, !dbg !847
  %169 = load i8, i8* %168, align 8, !dbg !847, !tbaa !848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !847
  %170 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 8, !dbg !847
  %171 = bitcast %union.TString*** %170 to i8**, !dbg !847
  %172 = load i8*, i8** %171, align 8, !dbg !847, !tbaa !849
  %173 = getelementptr inbounds %struct.Proto, %struct.Proto* %7, i64 0, i32 10, !dbg !847
  %174 = load i32, i32* %173, align 8, !dbg !847, !tbaa !850
  %175 = sext i32 %174 to i64, !dbg !847
  %176 = shl nsw i64 %175, 3, !dbg !847
  %177 = zext i8 %169 to i64, !dbg !847
  %178 = shl nuw nsw i64 %177, 3, !dbg !847
  %179 = tail call i8* @luaM_realloc_(%struct.lua_State* %3, i8* %172, i64 %176, i64 %178) #5, !dbg !847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !847
  store i8* %179, i8** %171, align 8, !dbg !847, !tbaa !849
  %180 = load i8, i8* %168, align 8, !dbg !851, !tbaa !848
  %181 = zext i8 %180 to i32, !dbg !852
  store i32 %181, i32* %173, align 8, !dbg !853, !tbaa !850
  %182 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 2, !dbg !854
  %183 = bitcast %struct.FuncState** %182 to i64*, !dbg !854
  %184 = load i64, i64* %183, align 8, !dbg !854, !tbaa !727
  %185 = bitcast %struct.FuncState** %4 to i64*, !dbg !855
  store i64 %184, i64* %185, align 8, !dbg !855, !tbaa !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !856
  %186 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !866
  %187 = load i32, i32* %186, align 8, !dbg !866, !tbaa !625
  %188 = icmp eq i32 %187, 285, !dbg !867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  br i1 %188, label %191, label %189, !dbg !868

; <label>:189:                                    ; preds = %162
  %190 = icmp eq i32 %187, 286, !dbg !869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  br i1 %190, label %191, label %200, !dbg !870

; <label>:191:                                    ; preds = %189, %162
  %192 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !871
  %193 = bitcast %union.SemInfo* %192 to %union.TString**, !dbg !872
  %194 = load %union.TString*, %union.TString** %193, align 8, !dbg !872, !tbaa !766
  %195 = getelementptr inbounds %union.TString, %union.TString* %194, i64 1, !dbg !874
  %196 = bitcast %union.TString* %195 to i8*, !dbg !874
  %197 = getelementptr inbounds %union.TString, %union.TString* %194, i64 0, i32 0, i32 5, !dbg !875
  %198 = load i64, i64* %197, align 8, !dbg !875, !tbaa !766
  %199 = tail call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* nonnull %196, i64 %198) #5, !dbg !876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  br label %200, !dbg !877

; <label>:200:                                    ; preds = %191, %189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  %201 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %3, i64 0, i32 4, !dbg !880
  %202 = load %struct.lua_TValue*, %struct.lua_TValue** %201, align 8, !dbg !881, !tbaa !765
  %203 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %202, i64 -2, !dbg !881
  store %struct.lua_TValue* %203, %struct.lua_TValue** %201, align 8, !dbg !881, !tbaa !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  ret void, !dbg !882
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
define internal fastcc i32 @statement(%struct.LexState*) unnamed_addr #0 !dbg !883 {
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
  %22 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !890
  %23 = load i32, i32* %22, align 4, !dbg !890, !tbaa !891
  %24 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !893
  %25 = load i32, i32* %24, align 8, !dbg !893, !tbaa !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  switch i32 %25, label %547 [
    i32 266, label %26
    i32 277, label %48
    i32 259, label %82
    i32 264, label %83
    i32 272, label %201
    i32 265, label %270
    i32 268, label %345
    i32 273, label %487
    i32 258, label %546
  ], !dbg !894

; <label>:26:                                     ; preds = %1
  %27 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !907
  %28 = load %struct.FuncState*, %struct.FuncState** %27, align 8, !dbg !907, !tbaa !659
  %29 = bitcast i32* %21 to i8*, !dbg !909
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #4, !dbg !909
  store i32 -1, i32* %21, align 4, !dbg !910, !tbaa !737
  %30 = tail call fastcc i32 @test_then_block(%struct.LexState* nonnull %0) #5, !dbg !911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !913
  %31 = load i32, i32* %24, align 8, !dbg !914, !tbaa !625
  %32 = icmp eq i32 %31, 261, !dbg !915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !913
  br i1 %32, label %33, label %39, !dbg !913

; <label>:33:                                     ; preds = %26, %33
  %34 = phi i32 [ %36, %33 ], [ %30, %26 ]
  %35 = call i32 @luaK_jump(%struct.FuncState* %28) #5, !dbg !916
  call void @luaK_concat(%struct.FuncState* %28, i32* nonnull %21, i32 %35) #5, !dbg !918
  call void @luaK_patchtohere(%struct.FuncState* %28, i32 %34) #5, !dbg !919
  %36 = call fastcc i32 @test_then_block(%struct.LexState* nonnull %0) #5, !dbg !920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !913
  %37 = load i32, i32* %24, align 8, !dbg !914, !tbaa !625
  %38 = icmp eq i32 %37, 261, !dbg !915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !913
  br i1 %38, label %33, label %39, !dbg !913, !llvm.loop !921

; <label>:39:                                     ; preds = %33, %26
  %40 = phi i32 [ %30, %26 ], [ %36, %33 ], !dbg !924
  %41 = phi i32 [ %31, %26 ], [ %37, %33 ], !dbg !914
  %42 = icmp eq i32 %41, 260, !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !927
  br i1 %42, label %43, label %45, !dbg !927

; <label>:43:                                     ; preds = %39
  %44 = call i32 @luaK_jump(%struct.FuncState* %28) #5, !dbg !928
  call void @luaK_concat(%struct.FuncState* %28, i32* nonnull %21, i32 %44) #5, !dbg !930
  call void @luaK_patchtohere(%struct.FuncState* %28, i32 %40) #5, !dbg !931
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !932
  call fastcc void @block(%struct.LexState* nonnull %0) #5, !dbg !933
  br label %46, !dbg !934

; <label>:45:                                     ; preds = %39
  call void @luaK_concat(%struct.FuncState* %28, i32* nonnull %21, i32 %40) #5, !dbg !935
  br label %46

; <label>:46:                                     ; preds = %43, %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %47 = load i32, i32* %21, align 4, !dbg !936, !tbaa !737
  call void @luaK_patchtohere(%struct.FuncState* %28, i32 %47) #5, !dbg !937
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 266, i32 %23) #5, !dbg !938
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #4, !dbg !939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  br label %571, !dbg !940

; <label>:48:                                     ; preds = %1
  %49 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !954
  %50 = load %struct.FuncState*, %struct.FuncState** %49, align 8, !dbg !954, !tbaa !659
  %51 = bitcast %struct.BlockCnt* %20 to i8*, !dbg !956
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %51) #4, !dbg !956
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !957
  %52 = tail call i32 @luaK_getlabel(%struct.FuncState* %50) #5, !dbg !958
  %53 = bitcast %struct.expdesc* %19 to i8*, !dbg !982
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %53) #4, !dbg !982
  %54 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %19, i32 0) #5, !dbg !994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !995
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i64 0, i32 0, !dbg !996
  %56 = load i32, i32* %55, align 8, !dbg !996, !tbaa !998
  %57 = icmp eq i32 %56, 1, !dbg !1000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1001
  br i1 %57, label %58, label %59, !dbg !1001

; <label>:58:                                     ; preds = %48
  store i32 3, i32* %55, align 8, !dbg !1002, !tbaa !998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1003
  br label %59, !dbg !1003

; <label>:59:                                     ; preds = %58, %48
  %60 = load %struct.FuncState*, %struct.FuncState** %49, align 8, !dbg !1004, !tbaa !659
  call void @luaK_goiftrue(%struct.FuncState* %60, %struct.expdesc* nonnull %19) #5, !dbg !1005
  %61 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %19, i64 0, i32 3, !dbg !1006
  %62 = load i32, i32* %61, align 4, !dbg !1006, !tbaa !1007
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %53) #4, !dbg !1008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  %63 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 1, !dbg !1024
  store i32 -1, i32* %63, align 8, !dbg !1025, !tbaa !1026
  %64 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 4, !dbg !1028
  store i8 1, i8* %64, align 2, !dbg !1029, !tbaa !1030
  %65 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %50, i64 0, i32 13, !dbg !1031
  %66 = load i8, i8* %65, align 2, !dbg !1031, !tbaa !661
  %67 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 2, !dbg !1032
  store i8 %66, i8* %67, align 4, !dbg !1033, !tbaa !1034
  %68 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %20, i64 0, i32 3, !dbg !1035
  store i8 0, i8* %68, align 1, !dbg !1036, !tbaa !1037
  %69 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %50, i64 0, i32 5, !dbg !1038
  %70 = bitcast %struct.BlockCnt** %69 to i64*, !dbg !1038
  %71 = load i64, i64* %70, align 8, !dbg !1038, !tbaa !751
  %72 = bitcast %struct.BlockCnt* %20 to i64*, !dbg !1039
  store i64 %71, i64* %72, align 8, !dbg !1039, !tbaa !1040
  store %struct.BlockCnt* %20, %struct.BlockCnt** %69, align 8, !dbg !1041, !tbaa !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1042
  %73 = load i32, i32* %24, align 8, !dbg !1053, !tbaa !625
  %74 = icmp eq i32 %73, 259, !dbg !1054
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1055
  br i1 %74, label %80, label %75, !dbg !1055

; <label>:75:                                     ; preds = %59
  %76 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1059
  %77 = load %struct.lua_State*, %struct.lua_State** %76, align 8, !dbg !1059, !tbaa !611
  %78 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 259) #5, !dbg !1060
  %79 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %78) #5, !dbg !1061
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %79) #5, !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1063
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1064
  br label %80, !dbg !1064

; <label>:80:                                     ; preds = %59, %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1067
  call fastcc void @block(%struct.LexState* nonnull %0) #5, !dbg !1068
  %81 = call i32 @luaK_jump(%struct.FuncState* nonnull %50) #5, !dbg !1069
  call void @luaK_patchlist(%struct.FuncState* nonnull %50, i32 %81, i32 %52) #5, !dbg !1070
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 277, i32 %23) #5, !dbg !1071
  call fastcc void @leaveblock(%struct.FuncState* nonnull %50) #5, !dbg !1072
  call void @luaK_patchtohere(%struct.FuncState* nonnull %50, i32 %62) #5, !dbg !1073
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %51) #4, !dbg !1074
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1074
  br label %571, !dbg !1075

; <label>:82:                                     ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1076
  tail call fastcc void @block(%struct.LexState* nonnull %0) #6, !dbg !1078
  tail call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 259, i32 %23) #6, !dbg !1079
  br label %571, !dbg !1080

; <label>:83:                                     ; preds = %1
  %84 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1092
  %85 = load %struct.FuncState*, %struct.FuncState** %84, align 8, !dbg !1092, !tbaa !659
  %86 = bitcast %struct.BlockCnt* %18 to i8*, !dbg !1094
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %86) #4, !dbg !1094
  %87 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %18, i64 0, i32 1, !dbg !1100
  store i32 -1, i32* %87, align 8, !dbg !1101, !tbaa !1026
  %88 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %18, i64 0, i32 4, !dbg !1102
  store i8 1, i8* %88, align 2, !dbg !1103, !tbaa !1030
  %89 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %85, i64 0, i32 13, !dbg !1104
  %90 = load i8, i8* %89, align 2, !dbg !1104, !tbaa !661
  %91 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %18, i64 0, i32 2, !dbg !1105
  store i8 %90, i8* %91, align 4, !dbg !1106, !tbaa !1034
  %92 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %18, i64 0, i32 3, !dbg !1107
  store i8 0, i8* %92, align 1, !dbg !1108, !tbaa !1037
  %93 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %85, i64 0, i32 5, !dbg !1109
  %94 = bitcast %struct.BlockCnt** %93 to i64*, !dbg !1109
  %95 = load i64, i64* %94, align 8, !dbg !1109, !tbaa !751
  %96 = bitcast %struct.BlockCnt* %18 to i64*, !dbg !1110
  store i64 %95, i64* %96, align 8, !dbg !1110, !tbaa !1040
  store %struct.BlockCnt* %18, %struct.BlockCnt** %93, align 8, !dbg !1111, !tbaa !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1112
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1113
  %97 = load i32, i32* %24, align 8, !dbg !1125, !tbaa !625
  %98 = icmp eq i32 %97, 285, !dbg !1126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1127
  br i1 %98, label %104, label %99, !dbg !1127

; <label>:99:                                     ; preds = %83
  %100 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1131
  %101 = load %struct.lua_State*, %struct.lua_State** %100, align 8, !dbg !1131, !tbaa !611
  %102 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !1132
  %103 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %101, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %102) #5, !dbg !1133
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %103) #5, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1136
  br label %104, !dbg !1136

; <label>:104:                                    ; preds = %99, %83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1137
  %105 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !1138
  %106 = bitcast %union.SemInfo* %105 to %union.TString**, !dbg !1139
  %107 = load %union.TString*, %union.TString** %106, align 8, !dbg !1139, !tbaa !766
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1142
  %108 = load i32, i32* %24, align 8, !dbg !1144, !tbaa !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1145
  switch i32 %108, label %199 [
    i32 61, label %109
    i32 44, label %149
    i32 267, label %149
  ], !dbg !1145

; <label>:109:                                    ; preds = %104
  %110 = load %struct.FuncState*, %struct.FuncState** %84, align 8, !dbg !1160, !tbaa !659
  %111 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %110, i64 0, i32 9, !dbg !1162
  %112 = load i32, i32* %111, align 4, !dbg !1162, !tbaa !665
  %113 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i64 11) #5, !dbg !1164
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %113, i32 0) #5, !dbg !1164
  %114 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i64 11) #5, !dbg !1165
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %114, i32 1) #5, !dbg !1165
  %115 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i64 10) #5, !dbg !1166
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %115, i32 2) #5, !dbg !1166
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %107, i32 3) #5, !dbg !1167
  %116 = load i32, i32* %24, align 8, !dbg !1174, !tbaa !625
  %117 = icmp eq i32 %116, 61, !dbg !1175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  br i1 %117, label %123, label %118, !dbg !1176

; <label>:118:                                    ; preds = %109
  %119 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1180
  %120 = load %struct.lua_State*, %struct.lua_State** %119, align 8, !dbg !1180, !tbaa !611
  %121 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 61) #5, !dbg !1181
  %122 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %121) #5, !dbg !1182
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %122) #5, !dbg !1183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1185
  br label %123, !dbg !1185

; <label>:123:                                    ; preds = %118, %109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1188
  %124 = bitcast %struct.expdesc* %4 to i8*, !dbg !1196
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %124) #4, !dbg !1196
  %125 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #5, !dbg !1201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1202
  %126 = load %struct.FuncState*, %struct.FuncState** %84, align 8, !dbg !1204, !tbaa !659
  call void @luaK_exp2nextreg(%struct.FuncState* %126, %struct.expdesc* nonnull %4) #5, !dbg !1205
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %124) #4, !dbg !1206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  %127 = load i32, i32* %24, align 8, !dbg !1214, !tbaa !625
  %128 = icmp eq i32 %127, 44, !dbg !1215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  br i1 %128, label %134, label %129, !dbg !1216

; <label>:129:                                    ; preds = %123
  %130 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1220
  %131 = load %struct.lua_State*, %struct.lua_State** %130, align 8, !dbg !1220, !tbaa !611
  %132 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 44) #5, !dbg !1221
  %133 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %132) #5, !dbg !1222
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %133) #5, !dbg !1223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1225
  br label %134, !dbg !1225

; <label>:134:                                    ; preds = %129, %123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1226
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  %135 = bitcast %struct.expdesc* %3 to i8*, !dbg !1231
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %135) #4, !dbg !1231
  %136 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3, i32 0) #5, !dbg !1236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1237
  %137 = load %struct.FuncState*, %struct.FuncState** %84, align 8, !dbg !1239, !tbaa !659
  call void @luaK_exp2nextreg(%struct.FuncState* %137, %struct.expdesc* nonnull %3) #5, !dbg !1240
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %135) #4, !dbg !1241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  %138 = load i32, i32* %24, align 8, !dbg !1247, !tbaa !625
  %139 = icmp eq i32 %138, 44, !dbg !1248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1249
  br i1 %139, label %140, label %144, !dbg !1249

; <label>:140:                                    ; preds = %134
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1253
  %141 = bitcast %struct.expdesc* %2 to i8*, !dbg !1256
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %141) #4, !dbg !1256
  %142 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %2, i32 0) #5, !dbg !1261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  %143 = load %struct.FuncState*, %struct.FuncState** %84, align 8, !dbg !1264, !tbaa !659
  call void @luaK_exp2nextreg(%struct.FuncState* %143, %struct.expdesc* nonnull %2) #5, !dbg !1265
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %141) #4, !dbg !1266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1267
  br label %148, !dbg !1268

; <label>:144:                                    ; preds = %134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1253
  %145 = load i32, i32* %111, align 4, !dbg !1270, !tbaa !665
  %146 = call i32 @luaK_numberK(%struct.FuncState* %110, double 1.000000e+00) #5, !dbg !1272
  %147 = call i32 @luaK_codeABx(%struct.FuncState* %110, i32 1, i32 %145, i32 %146) #5, !dbg !1273
  call void @luaK_reserveregs(%struct.FuncState* %110, i32 1) #5, !dbg !1274
  br label %148

; <label>:148:                                    ; preds = %144, %140
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call fastcc void @forbody(%struct.LexState* nonnull %0, i32 %112, i32 %23, i32 1, i32 1) #5, !dbg !1275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  br label %200, !dbg !1277

; <label>:149:                                    ; preds = %104, %104
  %150 = load %struct.FuncState*, %struct.FuncState** %84, align 8, !dbg !1292, !tbaa !659
  %151 = bitcast %struct.expdesc* %17 to i8*, !dbg !1294
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %151) #4, !dbg !1294
  %152 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %150, i64 0, i32 9, !dbg !1296
  %153 = load i32, i32* %152, align 4, !dbg !1296, !tbaa !665
  %154 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i64 15) #5, !dbg !1298
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %154, i32 0) #5, !dbg !1298
  %155 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i64 11) #5, !dbg !1299
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %155, i32 1) #5, !dbg !1299
  %156 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i64 13) #5, !dbg !1300
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %156, i32 2) #5, !dbg !1300
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %107, i32 3) #5, !dbg !1301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1302
  %157 = load i32, i32* %24, align 8, !dbg !1306, !tbaa !625
  %158 = icmp eq i32 %157, 44, !dbg !1307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1308
  br i1 %158, label %159, label %176, !dbg !1308

; <label>:159:                                    ; preds = %149
  %160 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  br label %161, !dbg !1308

; <label>:161:                                    ; preds = %159, %169
  %162 = phi i32 [ 4, %159 ], [ %171, %169 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1302
  %163 = load i32, i32* %24, align 8, !dbg !1317, !tbaa !625
  %164 = icmp eq i32 %163, 285, !dbg !1318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1319
  br i1 %164, label %169, label %165, !dbg !1319

; <label>:165:                                    ; preds = %161
  %166 = load %struct.lua_State*, %struct.lua_State** %160, align 8, !dbg !1323, !tbaa !611
  %167 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !1324
  %168 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %166, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %167) #5, !dbg !1325
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %168) #5, !dbg !1326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  br label %169, !dbg !1328

; <label>:169:                                    ; preds = %165, %161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  %170 = load %union.TString*, %union.TString** %106, align 8, !dbg !1330, !tbaa !766
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1333
  %171 = add nuw nsw i32 %162, 1, !dbg !1334
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %170, i32 %162) #5, !dbg !1335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1302
  %172 = load i32, i32* %24, align 8, !dbg !1306, !tbaa !625
  %173 = icmp eq i32 %172, 44, !dbg !1307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1308
  br i1 %173, label %161, label %174, !dbg !1308, !llvm.loop !1336

; <label>:174:                                    ; preds = %169
  %175 = add nsw i32 %162, -2, !dbg !1339
  br label %176, !dbg !1339

; <label>:176:                                    ; preds = %174, %149
  %177 = phi i32 [ %157, %149 ], [ %172, %174 ], !dbg !1340
  %178 = phi i32 [ 1, %149 ], [ %175, %174 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1302
  %179 = icmp eq i32 %177, 267, !dbg !1347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  br i1 %179, label %185, label %180, !dbg !1348

; <label>:180:                                    ; preds = %176
  %181 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1352
  %182 = load %struct.lua_State*, %struct.lua_State** %181, align 8, !dbg !1352, !tbaa !611
  %183 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 267) #5, !dbg !1353
  %184 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %182, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %183) #5, !dbg !1354
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %184) #5, !dbg !1355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1357
  br label %185, !dbg !1357

; <label>:185:                                    ; preds = %180, %176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1358
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1360
  %186 = load i32, i32* %22, align 4, !dbg !1361, !tbaa !891
  %187 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %17, i32 0) #5, !dbg !1378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1380
  %188 = load i32, i32* %24, align 8, !dbg !1384, !tbaa !625
  %189 = icmp eq i32 %188, 44, !dbg !1385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1386
  br i1 %189, label %190, label %197, !dbg !1386

; <label>:190:                                    ; preds = %185, %190
  %191 = phi i32 [ %194, %190 ], [ 1, %185 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1380
  %192 = load %struct.FuncState*, %struct.FuncState** %84, align 8, !dbg !1390, !tbaa !659
  call void @luaK_exp2nextreg(%struct.FuncState* %192, %struct.expdesc* nonnull %17) #5, !dbg !1392
  %193 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %17, i32 0) #5, !dbg !1396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1397
  %194 = add nuw nsw i32 %191, 1, !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1380
  %195 = load i32, i32* %24, align 8, !dbg !1384, !tbaa !625
  %196 = icmp eq i32 %195, 44, !dbg !1385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1386
  br i1 %196, label %190, label %197, !dbg !1386, !llvm.loop !1399

; <label>:197:                                    ; preds = %190, %185
  %198 = phi i32 [ 1, %185 ], [ %194, %190 ], !dbg !1402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1404
  call fastcc void @adjust_assign(%struct.LexState* nonnull %0, i32 3, i32 %198, %struct.expdesc* nonnull %17) #5, !dbg !1405
  call void @luaK_checkstack(%struct.FuncState* %150, i32 3) #5, !dbg !1406
  call fastcc void @forbody(%struct.LexState* nonnull %0, i32 %153, i32 %186, i32 %178, i32 0) #5, !dbg !1407
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %151) #4, !dbg !1408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1408
  br label %200, !dbg !1409

; <label>:199:                                    ; preds = %104
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0)) #5, !dbg !1410
  br label %200, !dbg !1411

; <label>:200:                                    ; preds = %148, %197, %199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1412
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 264, i32 %23) #5, !dbg !1413
  call fastcc void @leaveblock(%struct.FuncState* %85) #5, !dbg !1414
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %86) #4, !dbg !1415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1415
  br label %571, !dbg !1416

; <label>:201:                                    ; preds = %1
  %202 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1430
  %203 = load %struct.FuncState*, %struct.FuncState** %202, align 8, !dbg !1430, !tbaa !659
  %204 = tail call i32 @luaK_getlabel(%struct.FuncState* %203) #5, !dbg !1432
  %205 = bitcast %struct.BlockCnt* %15 to i8*, !dbg !1434
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %205) #4, !dbg !1434
  %206 = bitcast %struct.BlockCnt* %16 to i8*, !dbg !1434
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %206) #4, !dbg !1434
  %207 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 1, !dbg !1440
  store i32 -1, i32* %207, align 8, !dbg !1441, !tbaa !1026
  %208 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 4, !dbg !1442
  store i8 1, i8* %208, align 2, !dbg !1443, !tbaa !1030
  %209 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %203, i64 0, i32 13, !dbg !1444
  %210 = load i8, i8* %209, align 2, !dbg !1444, !tbaa !661
  %211 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 2, !dbg !1445
  store i8 %210, i8* %211, align 4, !dbg !1446, !tbaa !1034
  %212 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %15, i64 0, i32 3, !dbg !1447
  store i8 0, i8* %212, align 1, !dbg !1448, !tbaa !1037
  %213 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %203, i64 0, i32 5, !dbg !1449
  %214 = bitcast %struct.BlockCnt** %213 to i64*, !dbg !1449
  %215 = load i64, i64* %214, align 8, !dbg !1449, !tbaa !751
  %216 = bitcast %struct.BlockCnt* %15 to i64*, !dbg !1450
  store i64 %215, i64* %216, align 8, !dbg !1450, !tbaa !1040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1451
  %217 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 1, !dbg !1457
  store i32 -1, i32* %217, align 8, !dbg !1458, !tbaa !1026
  %218 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 4, !dbg !1459
  store i8 0, i8* %218, align 2, !dbg !1460, !tbaa !1030
  %219 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 2, !dbg !1461
  store i8 %210, i8* %219, align 4, !dbg !1462, !tbaa !1034
  %220 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %16, i64 0, i32 3, !dbg !1463
  store i8 0, i8* %220, align 1, !dbg !1464, !tbaa !1037
  %221 = ptrtoint %struct.BlockCnt* %15 to i64, !dbg !1465
  %222 = bitcast %struct.BlockCnt* %16 to i64*, !dbg !1466
  store i64 %221, i64* %222, align 8, !dbg !1466, !tbaa !1040
  store %struct.BlockCnt* %16, %struct.BlockCnt** %213, align 8, !dbg !1467, !tbaa !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1468
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1469
  %223 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1475
  %224 = load %struct.lua_State*, %struct.lua_State** %223, align 8, !dbg !1475, !tbaa !611
  %225 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %224, i64 0, i32 15, !dbg !1476
  %226 = load i16, i16* %225, align 8, !dbg !1477, !tbaa !614
  %227 = add i16 %226, 1, !dbg !1477
  store i16 %227, i16* %225, align 8, !dbg !1477, !tbaa !614
  %228 = icmp ugt i16 %227, 200, !dbg !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1479
  br i1 %228, label %229, label %230, !dbg !1479

; <label>:229:                                    ; preds = %201
  call void @luaX_lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 0) #5, !dbg !1480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  br label %230, !dbg !1480

; <label>:230:                                    ; preds = %201, %229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1483
  br label %231, !dbg !1483

; <label>:231:                                    ; preds = %230, %239
  %232 = load i32, i32* %24, align 8, !dbg !1484, !tbaa !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1487
  switch i32 %232, label %234 [
    i32 260, label %233
    i32 261, label %233
    i32 262, label %233
    i32 276, label %233
    i32 287, label %233
  ], !dbg !1487

; <label>:233:                                    ; preds = %231, %231, %231, %231, %231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1489
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %246, !dbg !1482

; <label>:234:                                    ; preds = %231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1489
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1482
  %235 = call fastcc i32 @statement(%struct.LexState* nonnull %0) #5, !dbg !1491
  %236 = load i32, i32* %24, align 8, !dbg !1495, !tbaa !625
  %237 = icmp eq i32 %236, 59, !dbg !1496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1497
  br i1 %237, label %238, label %239, !dbg !1497

; <label>:238:                                    ; preds = %234
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1498
  br label %239, !dbg !1499

; <label>:239:                                    ; preds = %234, %238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1501
  %240 = load %struct.FuncState*, %struct.FuncState** %202, align 8, !dbg !1502, !tbaa !659
  %241 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %240, i64 0, i32 13, !dbg !1503
  %242 = load i8, i8* %241, align 2, !dbg !1503, !tbaa !661
  %243 = zext i8 %242 to i32, !dbg !1504
  %244 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %240, i64 0, i32 9, !dbg !1505
  store i32 %243, i32* %244, align 4, !dbg !1506, !tbaa !665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1482
  %245 = icmp eq i32 %235, 0, !dbg !1507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1483
  br i1 %245, label %231, label %246, !dbg !1483, !llvm.loop !667

; <label>:246:                                    ; preds = %239, %233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1482
  %247 = load %struct.lua_State*, %struct.lua_State** %223, align 8, !dbg !1508, !tbaa !611
  %248 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %247, i64 0, i32 15, !dbg !1508
  %249 = load i16, i16* %248, align 8, !dbg !1508, !tbaa !614
  %250 = add i16 %249, -1, !dbg !1508
  store i16 %250, i16* %248, align 8, !dbg !1508, !tbaa !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1509
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 276, i32 272, i32 %23) #5, !dbg !1510
  %251 = bitcast %struct.expdesc* %14 to i8*, !dbg !1513
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %251) #4, !dbg !1513
  %252 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %14, i32 0) #5, !dbg !1518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1519
  %253 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %14, i64 0, i32 0, !dbg !1520
  %254 = load i32, i32* %253, align 8, !dbg !1520, !tbaa !998
  %255 = icmp eq i32 %254, 1, !dbg !1521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1522
  br i1 %255, label %256, label %257, !dbg !1522

; <label>:256:                                    ; preds = %246
  store i32 3, i32* %253, align 8, !dbg !1523, !tbaa !998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1524
  br label %257, !dbg !1524

; <label>:257:                                    ; preds = %256, %246
  %258 = load %struct.FuncState*, %struct.FuncState** %202, align 8, !dbg !1525, !tbaa !659
  call void @luaK_goiftrue(%struct.FuncState* %258, %struct.expdesc* nonnull %14) #5, !dbg !1526
  %259 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %14, i64 0, i32 3, !dbg !1527
  %260 = load i32, i32* %259, align 4, !dbg !1527, !tbaa !1007
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %251) #4, !dbg !1528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1529
  %261 = load i8, i8* %220, align 1, !dbg !1531, !tbaa !1037
  %262 = icmp eq i8 %261, 0, !dbg !1533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1534
  br i1 %262, label %263, label %265, !dbg !1534

; <label>:263:                                    ; preds = %257
  call fastcc void @leaveblock(%struct.FuncState* %203) #5, !dbg !1535
  %264 = load %struct.FuncState*, %struct.FuncState** %202, align 8, !dbg !1537, !tbaa !659
  call void @luaK_patchlist(%struct.FuncState* %264, i32 %260, i32 %204) #5, !dbg !1538
  br label %269, !dbg !1539

; <label>:265:                                    ; preds = %257
  call fastcc void @breakstat(%struct.LexState* nonnull %0) #5, !dbg !1540
  %266 = load %struct.FuncState*, %struct.FuncState** %202, align 8, !dbg !1542, !tbaa !659
  call void @luaK_patchtohere(%struct.FuncState* %266, i32 %260) #5, !dbg !1543
  call fastcc void @leaveblock(%struct.FuncState* %203) #5, !dbg !1544
  %267 = load %struct.FuncState*, %struct.FuncState** %202, align 8, !dbg !1545, !tbaa !659
  %268 = call i32 @luaK_jump(%struct.FuncState* %203) #5, !dbg !1546
  call void @luaK_patchlist(%struct.FuncState* %267, i32 %268, i32 %204) #5, !dbg !1547
  br label %269

; <label>:269:                                    ; preds = %263, %265
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call fastcc void @leaveblock(%struct.FuncState* %203) #5, !dbg !1548
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %206) #4, !dbg !1549
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %205) #4, !dbg !1549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1549
  br label %571, !dbg !1550

; <label>:270:                                    ; preds = %1
  %271 = bitcast %struct.expdesc* %12 to i8*, !dbg !1562
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %271) #4, !dbg !1562
  %272 = bitcast %struct.expdesc* %13 to i8*, !dbg !1562
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %272) #4, !dbg !1562
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1563
  %273 = load i32, i32* %24, align 8, !dbg !1588, !tbaa !625
  %274 = icmp eq i32 %273, 285, !dbg !1589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1590
  br i1 %274, label %280, label %275, !dbg !1590

; <label>:275:                                    ; preds = %270
  %276 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1594
  %277 = load %struct.lua_State*, %struct.lua_State** %276, align 8, !dbg !1594, !tbaa !611
  %278 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !1595
  %279 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %277, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %278) #5, !dbg !1596
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %279) #5, !dbg !1597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1599
  br label %280, !dbg !1599

; <label>:280:                                    ; preds = %275, %270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1600
  %281 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !1601
  %282 = bitcast %union.SemInfo* %281 to %union.TString**, !dbg !1602
  %283 = load %union.TString*, %union.TString** %282, align 8, !dbg !1602, !tbaa !766
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1605
  %284 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1607
  %285 = load %struct.FuncState*, %struct.FuncState** %284, align 8, !dbg !1607, !tbaa !659
  %286 = call fastcc i32 @singlevaraux(%struct.FuncState* %285, %union.TString* %283, %struct.expdesc* nonnull %12, i32 1) #5, !dbg !1609
  %287 = icmp eq i32 %286, 8, !dbg !1611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1612
  br i1 %287, label %288, label %292, !dbg !1612

; <label>:288:                                    ; preds = %280
  %289 = tail call i32 @luaK_stringK(%struct.FuncState* %285, %union.TString* %283) #5, !dbg !1613
  %290 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %12, i64 0, i32 1, !dbg !1614
  %291 = bitcast %union.anon.3* %290 to i32*, !dbg !1615
  store i32 %289, i32* %291, align 8, !dbg !1616, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1617
  br label %292, !dbg !1617

; <label>:292:                                    ; preds = %288, %280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1619
  %293 = load i32, i32* %24, align 8, !dbg !1620, !tbaa !625
  %294 = icmp eq i32 %293, 46, !dbg !1621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1619
  br i1 %294, label %295, label %318, !dbg !1619

; <label>:295:                                    ; preds = %292
  %296 = bitcast %struct.expdesc* %11 to i8*
  %297 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %11, i64 0, i32 2
  %298 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %11, i64 0, i32 3
  %299 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %11, i64 0, i32 0
  %300 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %11, i64 0, i32 1
  %301 = bitcast %union.anon.3* %300 to i32*
  %302 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  br label %303, !dbg !1619

; <label>:303:                                    ; preds = %312, %295
  %304 = load %struct.FuncState*, %struct.FuncState** %284, align 8, !dbg !1631, !tbaa !659
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %296) #4, !dbg !1633
  %305 = call i32 @luaK_exp2anyreg(%struct.FuncState* %304, %struct.expdesc* nonnull %12) #5, !dbg !1634
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1635
  %306 = load i32, i32* %24, align 8, !dbg !1649, !tbaa !625
  %307 = icmp eq i32 %306, 285, !dbg !1650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1651
  br i1 %307, label %312, label %308, !dbg !1651

; <label>:308:                                    ; preds = %303
  %309 = load %struct.lua_State*, %struct.lua_State** %302, align 8, !dbg !1655, !tbaa !611
  %310 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !1656
  %311 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %309, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %310) #5, !dbg !1657
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %311) #5, !dbg !1658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1660
  br label %312, !dbg !1660

; <label>:312:                                    ; preds = %308, %303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1661
  %313 = load %union.TString*, %union.TString** %282, align 8, !dbg !1662, !tbaa !766
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1665
  %314 = load %struct.FuncState*, %struct.FuncState** %284, align 8, !dbg !1677, !tbaa !659
  %315 = call i32 @luaK_stringK(%struct.FuncState* %314, %union.TString* %313) #5, !dbg !1678
  store i32 -1, i32* %297, align 8, !dbg !1690, !tbaa !1691
  store i32 -1, i32* %298, align 4, !dbg !1692, !tbaa !1007
  store i32 4, i32* %299, align 8, !dbg !1693, !tbaa !998
  store i32 %315, i32* %301, align 8, !dbg !1694, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1697
  call void @luaK_indexed(%struct.FuncState* %304, %struct.expdesc* nonnull %12, %struct.expdesc* nonnull %11) #5, !dbg !1698
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %296) #4, !dbg !1699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1619
  %316 = load i32, i32* %24, align 8, !dbg !1620, !tbaa !625
  %317 = icmp eq i32 %316, 46, !dbg !1621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1619
  br i1 %317, label %303, label %318, !dbg !1619, !llvm.loop !1700

; <label>:318:                                    ; preds = %312, %292
  %319 = phi i32 [ %293, %292 ], [ %316, %312 ], !dbg !1620
  %320 = icmp eq i32 %319, 58, !dbg !1703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1705
  br i1 %320, label %321, label %341, !dbg !1705

; <label>:321:                                    ; preds = %318
  %322 = load %struct.FuncState*, %struct.FuncState** %284, align 8, !dbg !1710, !tbaa !659
  %323 = bitcast %struct.expdesc* %10 to i8*, !dbg !1712
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %323) #4, !dbg !1712
  %324 = call i32 @luaK_exp2anyreg(%struct.FuncState* %322, %struct.expdesc* nonnull %12) #5, !dbg !1713
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1714
  %325 = load i32, i32* %24, align 8, !dbg !1724, !tbaa !625
  %326 = icmp eq i32 %325, 285, !dbg !1725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1726
  br i1 %326, label %332, label %327, !dbg !1726

; <label>:327:                                    ; preds = %321
  %328 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1730
  %329 = load %struct.lua_State*, %struct.lua_State** %328, align 8, !dbg !1730, !tbaa !611
  %330 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !1731
  %331 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %329, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %330) #5, !dbg !1732
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %331) #5, !dbg !1733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1735
  br label %332, !dbg !1735

; <label>:332:                                    ; preds = %327, %321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1736
  %333 = load %union.TString*, %union.TString** %282, align 8, !dbg !1737, !tbaa !766
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1740
  %334 = load %struct.FuncState*, %struct.FuncState** %284, align 8, !dbg !1745, !tbaa !659
  %335 = call i32 @luaK_stringK(%struct.FuncState* %334, %union.TString* %333) #5, !dbg !1746
  %336 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i64 0, i32 2, !dbg !1751
  store i32 -1, i32* %336, align 8, !dbg !1752, !tbaa !1691
  %337 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i64 0, i32 3, !dbg !1753
  store i32 -1, i32* %337, align 4, !dbg !1754, !tbaa !1007
  %338 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i64 0, i32 0, !dbg !1755
  store i32 4, i32* %338, align 8, !dbg !1756, !tbaa !998
  %339 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %10, i64 0, i32 1, !dbg !1757
  %340 = bitcast %union.anon.3* %339 to i32*, !dbg !1758
  store i32 %335, i32* %340, align 8, !dbg !1759, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1762
  call void @luaK_indexed(%struct.FuncState* %322, %struct.expdesc* nonnull %12, %struct.expdesc* nonnull %10) #5, !dbg !1763
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %323) #4, !dbg !1764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1765
  br label %341, !dbg !1765

; <label>:341:                                    ; preds = %318, %332
  %342 = phi i32 [ 1, %332 ], [ 0, %318 ], !dbg !1766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1767
  call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %13, i32 %342, i32 %23) #5, !dbg !1770
  %343 = load %struct.FuncState*, %struct.FuncState** %284, align 8, !dbg !1771, !tbaa !659
  call void @luaK_storevar(%struct.FuncState* %343, %struct.expdesc* nonnull %12, %struct.expdesc* nonnull %13) #5, !dbg !1772
  %344 = load %struct.FuncState*, %struct.FuncState** %284, align 8, !dbg !1773, !tbaa !659
  call void @luaK_fixline(%struct.FuncState* %344, i32 %23) #5, !dbg !1774
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %272) #4, !dbg !1775
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %271) #4, !dbg !1775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1775
  br label %571, !dbg !1776

; <label>:345:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1777
  %346 = load i32, i32* %24, align 8, !dbg !1783, !tbaa !625
  %347 = icmp eq i32 %346, 265, !dbg !1784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1785
  br i1 %347, label %348, label %402, !dbg !1785

; <label>:348:                                    ; preds = %345
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1789
  %349 = bitcast %struct.expdesc* %8 to i8*, !dbg !1798
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %349) #4, !dbg !1798
  %350 = bitcast %struct.expdesc* %9 to i8*, !dbg !1798
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %350) #4, !dbg !1798
  %351 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1799
  %352 = load %struct.FuncState*, %struct.FuncState** %351, align 8, !dbg !1799, !tbaa !659
  %353 = load i32, i32* %24, align 8, !dbg !1806, !tbaa !625
  %354 = icmp eq i32 %353, 285, !dbg !1807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1808
  br i1 %354, label %360, label %355, !dbg !1808

; <label>:355:                                    ; preds = %348
  %356 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1812
  %357 = load %struct.lua_State*, %struct.lua_State** %356, align 8, !dbg !1812, !tbaa !611
  %358 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !1813
  %359 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %357, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %358) #5, !dbg !1814
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %359) #5, !dbg !1815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1817
  br label %360, !dbg !1817

; <label>:360:                                    ; preds = %355, %348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1818
  %361 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !1819
  %362 = bitcast %union.SemInfo* %361 to %union.TString**, !dbg !1820
  %363 = load %union.TString*, %union.TString** %362, align 8, !dbg !1820, !tbaa !766
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1823
  tail call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %363, i32 0) #5, !dbg !1824
  %364 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %352, i64 0, i32 9, !dbg !1825
  %365 = load i32, i32* %364, align 4, !dbg !1825, !tbaa !665
  %366 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 2, !dbg !1831
  store i32 -1, i32* %366, align 8, !dbg !1832, !tbaa !1691
  %367 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 3, !dbg !1833
  store i32 -1, i32* %367, align 4, !dbg !1834, !tbaa !1007
  %368 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 0, !dbg !1835
  store i32 6, i32* %368, align 8, !dbg !1836, !tbaa !998
  %369 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %8, i64 0, i32 1, !dbg !1837
  %370 = bitcast %union.anon.3* %369 to i32*, !dbg !1838
  store i32 %365, i32* %370, align 8, !dbg !1839, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1840
  tail call void @luaK_reserveregs(%struct.FuncState* %352, i32 1) #5, !dbg !1841
  %371 = load %struct.FuncState*, %struct.FuncState** %351, align 8, !dbg !1850, !tbaa !659
  %372 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %371, i64 0, i32 13, !dbg !1852
  %373 = load i8, i8* %372, align 2, !dbg !1852, !tbaa !661
  %374 = add i8 %373, 1, !dbg !1852
  store i8 %374, i8* %372, align 2, !dbg !1853, !tbaa !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1855
  %375 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %371, i64 0, i32 6
  %376 = load i32, i32* %375, align 8, !tbaa !804
  %377 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %371, i64 0, i32 0
  %378 = load %struct.Proto*, %struct.Proto** %377, align 8, !tbaa !585
  %379 = getelementptr inbounds %struct.Proto, %struct.Proto* %378, i64 0, i32 7
  %380 = load %struct.LocVar*, %struct.LocVar** %379, align 8, !tbaa !805
  %381 = zext i8 %374 to i64, !dbg !1855
  %382 = add nsw i64 %381, -1, !dbg !1857
  %383 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %371, i64 0, i32 15, i64 %382, !dbg !1857
  %384 = load i16, i16* %383, align 2, !dbg !1857, !tbaa !807
  %385 = zext i16 %384 to i64, !dbg !1857
  %386 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %380, i64 %385, i32 1, !dbg !1860
  store i32 %376, i32* %386, align 8, !dbg !1861, !tbaa !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1864
  %387 = load i32, i32* %22, align 4, !dbg !1865, !tbaa !891
  call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %9, i32 0, i32 %387) #5, !dbg !1867
  call void @luaK_storevar(%struct.FuncState* %352, %struct.expdesc* nonnull %8, %struct.expdesc* nonnull %9) #5, !dbg !1868
  %388 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %352, i64 0, i32 6, !dbg !1869
  %389 = load i32, i32* %388, align 8, !dbg !1869, !tbaa !804
  %390 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %352, i64 0, i32 0, !dbg !1870
  %391 = load %struct.Proto*, %struct.Proto** %390, align 8, !dbg !1870, !tbaa !585
  %392 = getelementptr inbounds %struct.Proto, %struct.Proto* %391, i64 0, i32 7, !dbg !1870
  %393 = load %struct.LocVar*, %struct.LocVar** %392, align 8, !dbg !1870, !tbaa !805
  %394 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %352, i64 0, i32 13, !dbg !1870
  %395 = load i8, i8* %394, align 2, !dbg !1870, !tbaa !661
  %396 = zext i8 %395 to i64, !dbg !1870
  %397 = add nsw i64 %396, -1, !dbg !1870
  %398 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %352, i64 0, i32 15, i64 %397, !dbg !1870
  %399 = load i16, i16* %398, align 2, !dbg !1870, !tbaa !807
  %400 = zext i16 %399 to i64, !dbg !1870
  %401 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %393, i64 %400, i32 1, !dbg !1871
  store i32 %389, i32* %401, align 8, !dbg !1872, !tbaa !1862
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %350) #4, !dbg !1873
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %349) #4, !dbg !1873
  br label %486, !dbg !1874

; <label>:402:                                    ; preds = %345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1789
  %403 = bitcast %struct.expdesc* %7 to i8*, !dbg !1885
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %403) #4, !dbg !1885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1886
  %404 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %405 = bitcast %union.SemInfo* %404 to %union.TString**
  %406 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  br label %407, !dbg !1886

; <label>:407:                                    ; preds = %420, %402
  %408 = phi i32 [ %346, %402 ], [ %421, %420 ], !dbg !1887
  %409 = phi i32 [ 0, %402 ], [ %417, %420 ], !dbg !1891
  %410 = icmp eq i32 %408, 285, !dbg !1895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1896
  br i1 %410, label %415, label %411, !dbg !1896

; <label>:411:                                    ; preds = %407
  %412 = load %struct.lua_State*, %struct.lua_State** %406, align 8, !dbg !1900, !tbaa !611
  %413 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !1901
  %414 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %412, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %413) #5, !dbg !1902
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %414) #5, !dbg !1903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1905
  br label %415, !dbg !1905

; <label>:415:                                    ; preds = %411, %407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1906
  %416 = load %union.TString*, %union.TString** %405, align 8, !dbg !1907, !tbaa !766
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1910
  %417 = add nuw nsw i32 %409, 1, !dbg !1911
  tail call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %416, i32 %409) #5, !dbg !1912
  %418 = load i32, i32* %24, align 8, !dbg !1916, !tbaa !625
  %419 = icmp eq i32 %418, 44, !dbg !1917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1918
  br i1 %419, label %420, label %422, !dbg !1918

; <label>:420:                                    ; preds = %415
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1921
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1922
  %421 = load i32, i32* %24, align 8, !dbg !1887, !tbaa !625
  br label %407, !dbg !1922

; <label>:422:                                    ; preds = %415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1921
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1922
  %423 = icmp eq i32 %418, 61, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  br i1 %423, label %424, label %439, !dbg !1929

; <label>:424:                                    ; preds = %422
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1932
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1933
  %425 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %7, i32 0) #5, !dbg !1942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  %426 = load i32, i32* %24, align 8, !dbg !1948, !tbaa !625
  %427 = icmp eq i32 %426, 44, !dbg !1949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1950
  br i1 %427, label %428, label %437, !dbg !1950

; <label>:428:                                    ; preds = %424
  %429 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br label %430, !dbg !1950

; <label>:430:                                    ; preds = %428, %430
  %431 = phi i32 [ 1, %428 ], [ %434, %430 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !1951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  %432 = load %struct.FuncState*, %struct.FuncState** %429, align 8, !dbg !1954, !tbaa !659
  call void @luaK_exp2nextreg(%struct.FuncState* %432, %struct.expdesc* nonnull %7) #5, !dbg !1955
  %433 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %7, i32 0) #5, !dbg !1959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1960
  %434 = add nuw nsw i32 %431, 1, !dbg !1961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  %435 = load i32, i32* %24, align 8, !dbg !1948, !tbaa !625
  %436 = icmp eq i32 %435, 44, !dbg !1949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1950
  br i1 %436, label %430, label %437, !dbg !1950, !llvm.loop !1399

; <label>:437:                                    ; preds = %430, %424
  %438 = phi i32 [ 1, %424 ], [ %434, %430 ], !dbg !1962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1964
  br label %441, !dbg !1966

; <label>:439:                                    ; preds = %422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1932
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1933
  %440 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i64 0, i32 0, !dbg !1968
  store i32 0, i32* %440, align 8, !dbg !1970, !tbaa !998
  br label %441

; <label>:441:                                    ; preds = %439, %437
  %442 = phi i32 [ %438, %437 ], [ 0, %439 ], !dbg !1971
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call fastcc void @adjust_assign(%struct.LexState* nonnull %0, i32 %417, i32 %442, %struct.expdesc* nonnull %7) #5, !dbg !1972
  %443 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1976
  %444 = load %struct.FuncState*, %struct.FuncState** %443, align 8, !dbg !1976, !tbaa !659
  %445 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %444, i64 0, i32 13, !dbg !1978
  %446 = load i8, i8* %445, align 2, !dbg !1978, !tbaa !661
  %447 = trunc i32 %417 to i8, !dbg !1978
  %448 = add i8 %446, %447, !dbg !1978
  store i8 %448, i8* %445, align 2, !dbg !1979, !tbaa !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1981
  %449 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %444, i64 0, i32 6
  %450 = load i32, i32* %449, align 8, !tbaa !804
  %451 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %444, i64 0, i32 0
  %452 = load %struct.Proto*, %struct.Proto** %451, align 8, !tbaa !585
  %453 = getelementptr inbounds %struct.Proto, %struct.Proto* %452, i64 0, i32 7
  %454 = load %struct.LocVar*, %struct.LocVar** %453, align 8, !tbaa !805
  %455 = zext i32 %417 to i64, !dbg !1981
  %456 = zext i8 %448 to i64, !dbg !1981
  %457 = and i32 %417, 1, !dbg !1981
  %458 = icmp eq i32 %457, 0, !dbg !1981
  br i1 %458, label %466, label %459, !dbg !1981

; <label>:459:                                    ; preds = %441
  %460 = sub nsw i64 %456, %455, !dbg !1982
  %461 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %444, i64 0, i32 15, i64 %460, !dbg !1982
  %462 = load i16, i16* %461, align 2, !dbg !1982, !tbaa !807
  %463 = zext i16 %462 to i64, !dbg !1982
  %464 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %454, i64 %463, i32 1, !dbg !1983
  store i32 %450, i32* %464, align 8, !dbg !1984, !tbaa !1862
  %465 = add nsw i64 %455, -1, !dbg !1985
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1981
  br label %466, !dbg !1981

; <label>:466:                                    ; preds = %441, %459
  %467 = phi i64 [ %455, %441 ], [ %465, %459 ]
  %468 = icmp eq i32 %409, 0, !dbg !1981
  br i1 %468, label %485, label %469, !dbg !1981

; <label>:469:                                    ; preds = %466, %469
  %470 = phi i64 [ %482, %469 ], [ %467, %466 ]
  %471 = sub nsw i64 %456, %470, !dbg !1982
  %472 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %444, i64 0, i32 15, i64 %471, !dbg !1982
  %473 = load i16, i16* %472, align 2, !dbg !1982, !tbaa !807
  %474 = zext i16 %473 to i64, !dbg !1982
  %475 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %454, i64 %474, i32 1, !dbg !1983
  store i32 %450, i32* %475, align 8, !dbg !1984, !tbaa !1862
  %476 = add nsw i64 %470, -1, !dbg !1985
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1981
  %477 = sub nsw i64 %456, %476, !dbg !1982
  %478 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %444, i64 0, i32 15, i64 %477, !dbg !1982
  %479 = load i16, i16* %478, align 2, !dbg !1982, !tbaa !807
  %480 = zext i16 %479 to i64, !dbg !1982
  %481 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %454, i64 %480, i32 1, !dbg !1983
  store i32 %450, i32* %481, align 8, !dbg !1984, !tbaa !1862
  %482 = add nsw i64 %470, -2, !dbg !1985
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1986
  %483 = trunc i64 %482 to i32, !dbg !1981
  %484 = icmp eq i32 %483, 0, !dbg !1981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1981
  br i1 %484, label %485, label %469, !dbg !1981, !llvm.loop !1987

; <label>:485:                                    ; preds = %469, %466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1990
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %403) #4, !dbg !1991
  br label %486

; <label>:486:                                    ; preds = %485, %360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1992
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %571, !dbg !1993

; <label>:487:                                    ; preds = %1
  %488 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2004
  %489 = load %struct.FuncState*, %struct.FuncState** %488, align 8, !dbg !2004, !tbaa !659
  %490 = bitcast %struct.expdesc* %6 to i8*, !dbg !2006
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %490) #4, !dbg !2006
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2007
  %491 = load i32, i32* %24, align 8, !dbg !2008, !tbaa !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2012
  switch i32 %491, label %493 [
    i32 260, label %492
    i32 261, label %492
    i32 262, label %492
    i32 276, label %492
    i32 287, label %492
  ], !dbg !2012

; <label>:492:                                    ; preds = %487, %487, %487, %487, %487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2015
  br label %543, !dbg !2015

; <label>:493:                                    ; preds = %487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2015
  %494 = icmp eq i32 %491, 59, !dbg !2017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2018
  br i1 %494, label %543, label %495, !dbg !2018

; <label>:495:                                    ; preds = %493
  %496 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %6, i32 0) #5, !dbg !2028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2030
  %497 = load i32, i32* %24, align 8, !dbg !2034, !tbaa !625
  %498 = icmp eq i32 %497, 44, !dbg !2035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2036
  br i1 %498, label %499, label %506, !dbg !2036

; <label>:499:                                    ; preds = %495, %499
  %500 = phi i32 [ %503, %499 ], [ 1, %495 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2030
  %501 = load %struct.FuncState*, %struct.FuncState** %488, align 8, !dbg !2040, !tbaa !659
  call void @luaK_exp2nextreg(%struct.FuncState* %501, %struct.expdesc* nonnull %6) #5, !dbg !2041
  %502 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %6, i32 0) #5, !dbg !2045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2046
  %503 = add nuw nsw i32 %500, 1, !dbg !2047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2030
  %504 = load i32, i32* %24, align 8, !dbg !2034, !tbaa !625
  %505 = icmp eq i32 %504, 44, !dbg !2035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2036
  br i1 %505, label %499, label %506, !dbg !2036, !llvm.loop !1399

; <label>:506:                                    ; preds = %499, %495
  %507 = phi i32 [ 1, %495 ], [ %503, %499 ], !dbg !2048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2050
  %508 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %6, i64 0, i32 0, !dbg !2052
  %509 = load i32, i32* %508, align 8, !dbg !2052, !tbaa !998
  %510 = icmp eq i32 %509, 13, !dbg !2052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2052
  br i1 %510, label %513, label %511, !dbg !2052

; <label>:511:                                    ; preds = %506
  %512 = icmp eq i32 %509, 14, !dbg !2052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2054
  br i1 %512, label %513, label %535, !dbg !2054

; <label>:513:                                    ; preds = %511, %506
  call void @luaK_setreturns(%struct.FuncState* %489, %struct.expdesc* nonnull %6, i32 -1) #5, !dbg !2055
  %514 = load i32, i32* %508, align 8, !dbg !2057, !tbaa !998
  %515 = icmp eq i32 %514, 13, !dbg !2059
  %516 = icmp eq i32 %507, 1, !dbg !2060
  %517 = and i1 %516, %515, !dbg !2061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  br i1 %517, label %518, label %531, !dbg !2061

; <label>:518:                                    ; preds = %513
  %519 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %489, i64 0, i32 0, !dbg !2062
  %520 = load %struct.Proto*, %struct.Proto** %519, align 8, !dbg !2062, !tbaa !585
  %521 = getelementptr inbounds %struct.Proto, %struct.Proto* %520, i64 0, i32 4, !dbg !2062
  %522 = load i32*, i32** %521, align 8, !dbg !2062, !tbaa !818
  %523 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %6, i64 0, i32 1, !dbg !2062
  %524 = bitcast %union.anon.3* %523 to i32*, !dbg !2062
  %525 = load i32, i32* %524, align 8, !dbg !2062, !tbaa !766
  %526 = sext i32 %525 to i64, !dbg !2062
  %527 = getelementptr inbounds i32, i32* %522, i64 %526, !dbg !2062
  %528 = load i32, i32* %527, align 4, !dbg !2062, !tbaa !737
  %529 = and i32 %528, -64, !dbg !2062
  %530 = or i32 %529, 29, !dbg !2062
  store i32 %530, i32* %527, align 4, !dbg !2062, !tbaa !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2064
  br label %531, !dbg !2064

; <label>:531:                                    ; preds = %518, %513
  %532 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %489, i64 0, i32 13, !dbg !2065
  %533 = load i8, i8* %532, align 2, !dbg !2065, !tbaa !661
  %534 = zext i8 %533 to i32, !dbg !2066
  br label %543, !dbg !2068

; <label>:535:                                    ; preds = %511
  %536 = icmp eq i32 %507, 1, !dbg !2069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2072
  br i1 %536, label %537, label %539, !dbg !2072

; <label>:537:                                    ; preds = %535
  %538 = call i32 @luaK_exp2anyreg(%struct.FuncState* %489, %struct.expdesc* nonnull %6) #5, !dbg !2073
  br label %543, !dbg !2074

; <label>:539:                                    ; preds = %535
  call void @luaK_exp2nextreg(%struct.FuncState* %489, %struct.expdesc* nonnull %6) #5, !dbg !2075
  %540 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %489, i64 0, i32 13, !dbg !2077
  %541 = load i8, i8* %540, align 2, !dbg !2077, !tbaa !661
  %542 = zext i8 %541 to i32, !dbg !2078
  br label %543

; <label>:543:                                    ; preds = %493, %492, %531, %537, %539
  %544 = phi i32 [ %534, %531 ], [ %538, %537 ], [ %542, %539 ], [ 0, %492 ], [ 0, %493 ], !dbg !2079
  %545 = phi i32 [ -1, %531 ], [ 1, %537 ], [ %507, %539 ], [ 0, %492 ], [ 0, %493 ], !dbg !2080
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @luaK_ret(%struct.FuncState* %489, i32 %544, i32 %545) #5, !dbg !2081
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %490) #4, !dbg !2082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2082
  br label %571, !dbg !2083

; <label>:546:                                    ; preds = %1
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2084
  tail call fastcc void @breakstat(%struct.LexState* nonnull %0) #6, !dbg !2086
  br label %571, !dbg !2087

; <label>:547:                                    ; preds = %1
  %548 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2101
  %549 = load %struct.FuncState*, %struct.FuncState** %548, align 8, !dbg !2101, !tbaa !659
  %550 = bitcast %struct.LHS_assign* %5 to i8*, !dbg !2103
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %550) #4, !dbg !2103
  %551 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1, !dbg !2104
  call fastcc void @primaryexp(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %551) #5, !dbg !2105
  %552 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %551, i64 0, i32 0, !dbg !2106
  %553 = load i32, i32* %552, align 8, !dbg !2106, !tbaa !2108
  %554 = icmp eq i32 %553, 13, !dbg !2110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2111
  br i1 %554, label %555, label %568, !dbg !2111

; <label>:555:                                    ; preds = %547
  %556 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %549, i64 0, i32 0, !dbg !2112
  %557 = load %struct.Proto*, %struct.Proto** %556, align 8, !dbg !2112, !tbaa !585
  %558 = getelementptr inbounds %struct.Proto, %struct.Proto* %557, i64 0, i32 4, !dbg !2112
  %559 = load i32*, i32** %558, align 8, !dbg !2112, !tbaa !818
  %560 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1, i32 1, !dbg !2112
  %561 = bitcast %union.anon.3* %560 to i32*, !dbg !2112
  %562 = load i32, i32* %561, align 8, !dbg !2112, !tbaa !766
  %563 = sext i32 %562 to i64, !dbg !2112
  %564 = getelementptr inbounds i32, i32* %559, i64 %563, !dbg !2112
  %565 = load i32, i32* %564, align 4, !dbg !2112, !tbaa !737
  %566 = and i32 %565, -8372225, !dbg !2112
  %567 = or i32 %566, 16384, !dbg !2112
  store i32 %567, i32* %564, align 4, !dbg !2112, !tbaa !737
  br label %570, !dbg !2112

; <label>:568:                                    ; preds = %547
  %569 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 0, !dbg !2113
  store %struct.LHS_assign* null, %struct.LHS_assign** %569, align 8, !dbg !2115, !tbaa !2116
  call fastcc void @assignment(%struct.LexState* nonnull %0, %struct.LHS_assign* nonnull %5, i32 1) #5, !dbg !2118
  br label %570

; <label>:570:                                    ; preds = %555, %568
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %550) #4, !dbg !2119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  br label %571, !dbg !2120

; <label>:571:                                    ; preds = %570, %546, %543, %486, %341, %269, %200, %82, %80, %46
  %572 = phi i32 [ 0, %570 ], [ 1, %546 ], [ 1, %543 ], [ 0, %486 ], [ 0, %341 ], [ 0, %269 ], [ 0, %200 ], [ 0, %82 ], [ 0, %80 ], [ 0, %46 ], !dbg !2121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2122
  ret i32 %572, !dbg !2122
}

; Function Attrs: noredzone
declare hidden void @luaX_lexerror(%struct.LexState*, i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @block(%struct.LexState*) unnamed_addr #0 !dbg !2123 {
  %2 = alloca %struct.BlockCnt, align 8
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2129
  %4 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !dbg !2129, !tbaa !659
  %5 = bitcast %struct.BlockCnt* %2 to i8*, !dbg !2131
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #4, !dbg !2131
  %6 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %2, i64 0, i32 1, !dbg !2137
  store i32 -1, i32* %6, align 8, !dbg !2138, !tbaa !1026
  %7 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %2, i64 0, i32 4, !dbg !2139
  store i8 0, i8* %7, align 2, !dbg !2140, !tbaa !1030
  %8 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 13, !dbg !2141
  %9 = load i8, i8* %8, align 2, !dbg !2141, !tbaa !661
  %10 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %2, i64 0, i32 2, !dbg !2142
  store i8 %9, i8* %10, align 4, !dbg !2143, !tbaa !1034
  %11 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %2, i64 0, i32 3, !dbg !2144
  store i8 0, i8* %11, align 1, !dbg !2145, !tbaa !1037
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %4, i64 0, i32 5, !dbg !2146
  %13 = bitcast %struct.BlockCnt** %12 to i64*, !dbg !2146
  %14 = load i64, i64* %13, align 8, !dbg !2146, !tbaa !751
  %15 = bitcast %struct.BlockCnt* %2 to i64*, !dbg !2147
  store i64 %14, i64* %15, align 8, !dbg !2147, !tbaa !1040
  store %struct.BlockCnt* %2, %struct.BlockCnt** %12, align 8, !dbg !2148, !tbaa !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2149
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !2155
  %17 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !dbg !2155, !tbaa !611
  %18 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %17, i64 0, i32 15, !dbg !2156
  %19 = load i16, i16* %18, align 8, !dbg !2157, !tbaa !614
  %20 = add i16 %19, 1, !dbg !2157
  store i16 %20, i16* %18, align 8, !dbg !2157, !tbaa !614
  %21 = icmp ugt i16 %20, 200, !dbg !2158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2159
  br i1 %21, label %22, label %23, !dbg !2159

; <label>:22:                                     ; preds = %1
  call void @luaX_lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 0) #5, !dbg !2160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2160
  br label %23, !dbg !2160

; <label>:23:                                     ; preds = %1, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2163
  %24 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0
  br label %25, !dbg !2163

; <label>:25:                                     ; preds = %23, %33
  %26 = load i32, i32* %24, align 8, !dbg !2164, !tbaa !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2167
  switch i32 %26, label %28 [
    i32 260, label %27
    i32 261, label %27
    i32 262, label %27
    i32 276, label %27
    i32 287, label %27
  ], !dbg !2167

; <label>:27:                                     ; preds = %25, %25, %25, %25, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2169
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %40, !dbg !2162

; <label>:28:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2169
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2162
  %29 = call fastcc i32 @statement(%struct.LexState* nonnull %0) #5, !dbg !2171
  %30 = load i32, i32* %24, align 8, !dbg !2175, !tbaa !625
  %31 = icmp eq i32 %30, 59, !dbg !2176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2177
  br i1 %31, label %32, label %33, !dbg !2177

; <label>:32:                                     ; preds = %28
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2178
  br label %33, !dbg !2179

; <label>:33:                                     ; preds = %28, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2181
  %34 = load %struct.FuncState*, %struct.FuncState** %3, align 8, !dbg !2182, !tbaa !659
  %35 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %34, i64 0, i32 13, !dbg !2183
  %36 = load i8, i8* %35, align 2, !dbg !2183, !tbaa !661
  %37 = zext i8 %36 to i32, !dbg !2184
  %38 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %34, i64 0, i32 9, !dbg !2185
  store i32 %37, i32* %38, align 4, !dbg !2186, !tbaa !665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2162
  %39 = icmp eq i32 %29, 0, !dbg !2187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2163
  br i1 %39, label %25, label %40, !dbg !2163, !llvm.loop !667

; <label>:40:                                     ; preds = %33, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2162
  %41 = load %struct.lua_State*, %struct.lua_State** %16, align 8, !dbg !2188, !tbaa !611
  %42 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %41, i64 0, i32 15, !dbg !2188
  %43 = load i16, i16* %42, align 8, !dbg !2188, !tbaa !614
  %44 = add i16 %43, -1, !dbg !2188
  store i16 %44, i16* %42, align 8, !dbg !2188, !tbaa !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2189
  call fastcc void @leaveblock(%struct.FuncState* %4) #6, !dbg !2190
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #4, !dbg !2191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2191
  ret void, !dbg !2191
}

; Function Attrs: noredzone nounwind
define internal fastcc void @check_match(%struct.LexState*, i32, i32, i32) unnamed_addr #0 !dbg !2192 {
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !2208
  %6 = load i32, i32* %5, align 8, !dbg !2208, !tbaa !625
  %7 = icmp eq i32 %6, %1, !dbg !2209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2210
  br i1 %7, label %8, label %9, !dbg !2210

; <label>:8:                                      ; preds = %4
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2213
  br label %21, !dbg !2214

; <label>:9:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2214
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !2216
  %11 = load i32, i32* %10, align 4, !dbg !2216, !tbaa !891
  %12 = icmp eq i32 %11, %3, !dbg !2219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2220
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !2221
  %14 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !dbg !2221, !tbaa !611
  %15 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 %1) #5, !dbg !2221
  br i1 %12, label %16, label %18, !dbg !2220

; <label>:16:                                     ; preds = %9
  %17 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %15) #5, !dbg !2226
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %17) #5, !dbg !2227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2228
  br label %21, !dbg !2229

; <label>:18:                                     ; preds = %9
  %19 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 %2) #5, !dbg !2230
  %20 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i8* %15, i8* %19, i32 %3) #5, !dbg !2231
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %20) #5, !dbg !2232
  br label %21

; <label>:21:                                     ; preds = %8, %16, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2233
  ret void, !dbg !2233
}

; Function Attrs: noredzone nounwind
define internal fastcc void @breakstat(%struct.LexState*) unnamed_addr #0 !dbg !2234 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2241
  %3 = load %struct.FuncState*, %struct.FuncState** %2, align 8, !dbg !2241, !tbaa !659
  %4 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %3, i64 0, i32 5, !dbg !2243
  %5 = load %struct.BlockCnt*, %struct.BlockCnt** %4, align 8, !dbg !2243, !tbaa !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2246
  %6 = icmp eq %struct.BlockCnt* %5, null, !dbg !2247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2248
  br i1 %6, label %21, label %7, !dbg !2248

; <label>:7:                                      ; preds = %1, %13
  %8 = phi i32 [ %17, %13 ], [ 0, %1 ]
  %9 = phi %struct.BlockCnt* [ %19, %13 ], [ %5, %1 ]
  %10 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %9, i64 0, i32 4, !dbg !2249
  %11 = load i8, i8* %10, align 2, !dbg !2249, !tbaa !1030
  %12 = icmp eq i8 %11, 0, !dbg !2250
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2246
  br i1 %12, label %13, label %23, !dbg !2246

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %9, i64 0, i32 3, !dbg !2251
  %15 = load i8, i8* %14, align 1, !dbg !2251, !tbaa !1037
  %16 = zext i8 %15 to i32, !dbg !2253
  %17 = or i32 %8, %16, !dbg !2254
  %18 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %9, i64 0, i32 0, !dbg !2255
  %19 = load %struct.BlockCnt*, %struct.BlockCnt** %18, align 8, !dbg !2255, !tbaa !1040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2246
  %20 = icmp eq %struct.BlockCnt* %19, null, !dbg !2247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2248
  br i1 %20, label %21, label %7, !dbg !2248, !llvm.loop !2256

; <label>:21:                                     ; preds = %13, %1
  %22 = phi i32 [ 0, %1 ], [ %17, %13 ], !dbg !2258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2259
  tail call void @luaX_syntaxerror(%struct.LexState* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0)) #5, !dbg !2260
  br label %23, !dbg !2260

; <label>:23:                                     ; preds = %7, %21
  %24 = phi %struct.BlockCnt* [ null, %21 ], [ %9, %7 ]
  %25 = phi i32 [ %22, %21 ], [ %8, %7 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2262
  %26 = icmp eq i32 %25, 0, !dbg !2263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2265
  br i1 %26, label %32, label %27, !dbg !2265

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %24, i64 0, i32 2, !dbg !2266
  %29 = load i8, i8* %28, align 4, !dbg !2266, !tbaa !1034
  %30 = zext i8 %29 to i32, !dbg !2267
  %31 = tail call i32 @luaK_codeABC(%struct.FuncState* %3, i32 35, i32 %30, i32 0, i32 0) #5, !dbg !2268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2268
  br label %32, !dbg !2268

; <label>:32:                                     ; preds = %23, %27
  %33 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %24, i64 0, i32 1, !dbg !2269
  %34 = tail call i32 @luaK_jump(%struct.FuncState* %3) #5, !dbg !2270
  tail call void @luaK_concat(%struct.FuncState* %3, i32* nonnull %33, i32 %34) #5, !dbg !2271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2272
  ret void, !dbg !2272
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @test_then_block(%struct.LexState*) unnamed_addr #0 !dbg !2273 {
  %2 = alloca %struct.expdesc, align 8
  tail call void @luaX_next(%struct.LexState* %0) #5, !dbg !2278
  %3 = bitcast %struct.expdesc* %2 to i8*, !dbg !2281
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #4, !dbg !2281
  %4 = call fastcc i32 @subexpr(%struct.LexState* %0, %struct.expdesc* nonnull %2, i32 0) #5, !dbg !2286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2287
  %5 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !2288
  %6 = load i32, i32* %5, align 8, !dbg !2288, !tbaa !998
  %7 = icmp eq i32 %6, 1, !dbg !2289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2290
  br i1 %7, label %8, label %9, !dbg !2290

; <label>:8:                                      ; preds = %1
  store i32 3, i32* %5, align 8, !dbg !2291, !tbaa !998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2292
  br label %9, !dbg !2292

; <label>:9:                                      ; preds = %1, %8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2293
  %11 = load %struct.FuncState*, %struct.FuncState** %10, align 8, !dbg !2293, !tbaa !659
  call void @luaK_goiftrue(%struct.FuncState* %11, %struct.expdesc* nonnull %2) #5, !dbg !2294
  %12 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !2295
  %13 = load i32, i32* %12, align 4, !dbg !2295, !tbaa !1007
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #4, !dbg !2296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2297
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !2305
  %15 = load i32, i32* %14, align 8, !dbg !2305, !tbaa !625
  %16 = icmp eq i32 %15, 274, !dbg !2306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2307
  br i1 %16, label %22, label %17, !dbg !2307

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !2311
  %19 = load %struct.lua_State*, %struct.lua_State** %18, align 8, !dbg !2311, !tbaa !611
  %20 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 274) #5, !dbg !2312
  %21 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %20) #5, !dbg !2313
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %21) #5, !dbg !2314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2316
  br label %22, !dbg !2316

; <label>:22:                                     ; preds = %9, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2317
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2319
  call fastcc void @block(%struct.LexState* nonnull %0) #6, !dbg !2320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2321
  ret i32 %13, !dbg !2321
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
define internal fastcc i32 @subexpr(%struct.LexState*, %struct.expdesc*, i32) unnamed_addr #0 !dbg !2322 {
  %4 = alloca %struct.expdesc, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !2341
  %6 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !dbg !2341, !tbaa !611
  %7 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %6, i64 0, i32 15, !dbg !2342
  %8 = load i16, i16* %7, align 8, !dbg !2343, !tbaa !614
  %9 = add i16 %8, 1, !dbg !2343
  store i16 %9, i16* %7, align 8, !dbg !2343, !tbaa !614
  %10 = icmp ugt i16 %9, 200, !dbg !2344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2345
  br i1 %10, label %11, label %12, !dbg !2345

; <label>:11:                                     ; preds = %3
  tail call void @luaX_lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 0) #5, !dbg !2346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2346
  br label %12, !dbg !2346

; <label>:12:                                     ; preds = %3, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2347
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !2348
  %14 = load i32, i32* %13, align 8, !dbg !2348, !tbaa !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2356
  switch i32 %14, label %22 [
    i32 270, label %17
    i32 45, label %15
    i32 35, label %16
  ], !dbg !2356

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !2357

; <label>:16:                                     ; preds = %12
  br label %17, !dbg !2359

; <label>:17:                                     ; preds = %12, %16, %15
  %18 = phi i32 [ 0, %15 ], [ 2, %16 ], [ 1, %12 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2363
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2364
  %19 = tail call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 8) #6, !dbg !2367
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2368
  %21 = load %struct.FuncState*, %struct.FuncState** %20, align 8, !dbg !2368, !tbaa !659
  tail call void @luaK_prefix(%struct.FuncState* %21, i32 %18, %struct.expdesc* %1) #5, !dbg !2369
  br label %92, !dbg !2370

; <label>:22:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2382
  switch i32 %14, label %89 [
    i32 284, label %23
    i32 286, label %33
    i32 269, label %45
    i32 275, label %51
    i32 263, label %57
    i32 279, label %63
    i32 123, label %85
    i32 265, label %86
  ], !dbg !2382

; <label>:23:                                     ; preds = %22
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2388
  store i32 -1, i32* %24, align 8, !dbg !2389, !tbaa !1691
  %25 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2390
  store i32 -1, i32* %25, align 4, !dbg !2391, !tbaa !1007
  %26 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2392
  store i32 5, i32* %26, align 8, !dbg !2393, !tbaa !998
  %27 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2394
  %28 = bitcast %union.anon.3* %27 to i32*, !dbg !2395
  store i32 0, i32* %28, align 8, !dbg !2396, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2397
  %29 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, i32 0, !dbg !2398
  %30 = bitcast double* %29 to i64*, !dbg !2398
  %31 = load i64, i64* %30, align 8, !dbg !2398, !tbaa !766
  %32 = bitcast %union.anon.3* %27 to i64*, !dbg !2399
  store i64 %31, i64* %32, align 8, !dbg !2399, !tbaa !766
  br label %90, !dbg !2400

; <label>:33:                                     ; preds = %22
  %34 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !2401
  %35 = bitcast %union.SemInfo* %34 to %union.TString**, !dbg !2403
  %36 = load %union.TString*, %union.TString** %35, align 8, !dbg !2403, !tbaa !766
  %37 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2408
  %38 = load %struct.FuncState*, %struct.FuncState** %37, align 8, !dbg !2408, !tbaa !659
  %39 = tail call i32 @luaK_stringK(%struct.FuncState* %38, %union.TString* %36) #5, !dbg !2409
  %40 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2414
  store i32 -1, i32* %40, align 8, !dbg !2415, !tbaa !1691
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2416
  store i32 -1, i32* %41, align 4, !dbg !2417, !tbaa !1007
  %42 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2418
  store i32 4, i32* %42, align 8, !dbg !2419, !tbaa !998
  %43 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2420
  %44 = bitcast %union.anon.3* %43 to i32*, !dbg !2421
  store i32 %39, i32* %44, align 8, !dbg !2422, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2424
  br label %90, !dbg !2425

; <label>:45:                                     ; preds = %22
  %46 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2431
  store i32 -1, i32* %46, align 8, !dbg !2432, !tbaa !1691
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2433
  store i32 -1, i32* %47, align 4, !dbg !2434, !tbaa !1007
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2435
  store i32 1, i32* %48, align 8, !dbg !2436, !tbaa !998
  %49 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2437
  %50 = bitcast %union.anon.3* %49 to i32*, !dbg !2438
  store i32 0, i32* %50, align 8, !dbg !2439, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2440
  br label %90, !dbg !2441

; <label>:51:                                     ; preds = %22
  %52 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2447
  store i32 -1, i32* %52, align 8, !dbg !2448, !tbaa !1691
  %53 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2449
  store i32 -1, i32* %53, align 4, !dbg !2450, !tbaa !1007
  %54 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2451
  store i32 2, i32* %54, align 8, !dbg !2452, !tbaa !998
  %55 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2453
  %56 = bitcast %union.anon.3* %55 to i32*, !dbg !2454
  store i32 0, i32* %56, align 8, !dbg !2455, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2456
  br label %90, !dbg !2457

; <label>:57:                                     ; preds = %22
  %58 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2463
  store i32 -1, i32* %58, align 8, !dbg !2464, !tbaa !1691
  %59 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2465
  store i32 -1, i32* %59, align 4, !dbg !2466, !tbaa !1007
  %60 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2467
  store i32 3, i32* %60, align 8, !dbg !2468, !tbaa !998
  %61 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2469
  %62 = bitcast %union.anon.3* %61 to i32*, !dbg !2470
  store i32 0, i32* %62, align 8, !dbg !2471, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2472
  br label %90, !dbg !2473

; <label>:63:                                     ; preds = %22
  %64 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2474
  %65 = load %struct.FuncState*, %struct.FuncState** %64, align 8, !dbg !2474, !tbaa !659
  %66 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %65, i64 0, i32 0, !dbg !2476
  %67 = load %struct.Proto*, %struct.Proto** %66, align 8, !dbg !2476, !tbaa !585
  %68 = getelementptr inbounds %struct.Proto, %struct.Proto* %67, i64 0, i32 21, !dbg !2476
  %69 = load i8, i8* %68, align 2, !dbg !2476, !tbaa !590
  %70 = icmp eq i8 %69, 0, !dbg !2476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2479
  br i1 %70, label %71, label %75, !dbg !2479

; <label>:71:                                     ; preds = %63
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !2476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2476
  %72 = load %struct.Proto*, %struct.Proto** %66, align 8, !dbg !2480, !tbaa !585
  %73 = getelementptr inbounds %struct.Proto, %struct.Proto* %72, i64 0, i32 21
  %74 = load i8, i8* %73, align 2, !dbg !2481, !tbaa !590
  br label %75, !dbg !2476

; <label>:75:                                     ; preds = %71, %63
  %76 = phi i8* [ %73, %71 ], [ %68, %63 ], !dbg !2482
  %77 = phi i8 [ %74, %71 ], [ %69, %63 ], !dbg !2481
  %78 = and i8 %77, -5, !dbg !2481
  store i8 %78, i8* %76, align 2, !dbg !2481, !tbaa !590
  %79 = tail call i32 @luaK_codeABC(%struct.FuncState* %65, i32 37, i32 0, i32 1, i32 0) #5, !dbg !2483
  %80 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2488
  store i32 -1, i32* %80, align 8, !dbg !2489, !tbaa !1691
  %81 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2490
  store i32 -1, i32* %81, align 4, !dbg !2491, !tbaa !1007
  %82 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2492
  store i32 14, i32* %82, align 8, !dbg !2493, !tbaa !998
  %83 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2494
  %84 = bitcast %union.anon.3* %83 to i32*, !dbg !2495
  store i32 %79, i32* %84, align 8, !dbg !2496, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2497
  br label %90

; <label>:85:                                     ; preds = %22
  tail call fastcc void @constructor(%struct.LexState* nonnull %0, %struct.expdesc* %1) #5, !dbg !2498
  br label %91, !dbg !2500

; <label>:86:                                     ; preds = %22
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2501
  %87 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !2503
  %88 = load i32, i32* %87, align 4, !dbg !2503, !tbaa !891
  tail call fastcc void @body(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 0, i32 %88) #5, !dbg !2504
  br label %91, !dbg !2505

; <label>:89:                                     ; preds = %22
  tail call fastcc void @primaryexp(%struct.LexState* nonnull %0, %struct.expdesc* %1) #5, !dbg !2506
  br label %91, !dbg !2508

; <label>:90:                                     ; preds = %75, %57, %51, %45, %33, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2509
  br label %91, !dbg !2510

; <label>:91:                                     ; preds = %85, %86, %89, %90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2510
  br label %92

; <label>:92:                                     ; preds = %91, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %93 = load i32, i32* %13, align 8, !dbg !2512, !tbaa !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2520
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
  ], !dbg !2520

; <label>:94:                                     ; preds = %92
  br label %109, !dbg !2521

; <label>:95:                                     ; preds = %92
  br label %109, !dbg !2523

; <label>:96:                                     ; preds = %92
  br label %109, !dbg !2524

; <label>:97:                                     ; preds = %92
  br label %109, !dbg !2525

; <label>:98:                                     ; preds = %92
  br label %109, !dbg !2526

; <label>:99:                                     ; preds = %92
  br label %109, !dbg !2527

; <label>:100:                                    ; preds = %92
  br label %109, !dbg !2528

; <label>:101:                                    ; preds = %92
  br label %109, !dbg !2529

; <label>:102:                                    ; preds = %92
  br label %109, !dbg !2530

; <label>:103:                                    ; preds = %92
  br label %109, !dbg !2531

; <label>:104:                                    ; preds = %92
  br label %109, !dbg !2532

; <label>:105:                                    ; preds = %92
  br label %109, !dbg !2533

; <label>:106:                                    ; preds = %92
  br label %109, !dbg !2534

; <label>:107:                                    ; preds = %92
  br label %109, !dbg !2535

; <label>:108:                                    ; preds = %92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2540
  br label %128, !dbg !2540

; <label>:109:                                    ; preds = %92, %107, %106, %105, %104, %103, %102, %101, %100, %99, %98, %97, %96, %95, %94
  %110 = phi i32 [ 1, %94 ], [ 2, %95 ], [ 3, %96 ], [ 4, %97 ], [ 5, %98 ], [ 6, %99 ], [ 7, %100 ], [ 8, %101 ], [ 9, %102 ], [ 10, %103 ], [ 11, %104 ], [ 12, %105 ], [ 13, %106 ], [ 14, %107 ], [ 0, %92 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2540
  %111 = bitcast %struct.expdesc* %4 to i8*
  %112 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br label %113, !dbg !2540

; <label>:113:                                    ; preds = %109, %120
  %114 = phi i32 [ %110, %109 ], [ %125, %120 ]
  %115 = zext i32 %114 to i64, !dbg !2541
  %116 = getelementptr inbounds [15 x %struct.anon.5], [15 x %struct.anon.5]* @priority, i64 0, i64 %115, i32 0, !dbg !2542
  %117 = load i8, i8* %116, align 2, !dbg !2542, !tbaa !2543
  %118 = zext i8 %117 to i32, !dbg !2541
  %119 = icmp ugt i32 %118, %2, !dbg !2545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2539
  br i1 %119, label %120, label %128, !dbg !2539

; <label>:120:                                    ; preds = %113
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %111) #4, !dbg !2546
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2547
  %121 = load %struct.FuncState*, %struct.FuncState** %112, align 8, !dbg !2548, !tbaa !659
  call void @luaK_infix(%struct.FuncState* %121, i32 %114, %struct.expdesc* %1) #5, !dbg !2549
  %122 = getelementptr inbounds [15 x %struct.anon.5], [15 x %struct.anon.5]* @priority, i64 0, i64 %115, i32 1, !dbg !2550
  %123 = load i8, i8* %122, align 1, !dbg !2550, !tbaa !2551
  %124 = zext i8 %123 to i32, !dbg !2552
  %125 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 %124) #6, !dbg !2554
  %126 = load %struct.FuncState*, %struct.FuncState** %112, align 8, !dbg !2556, !tbaa !659
  call void @luaK_posfix(%struct.FuncState* %126, i32 %114, %struct.expdesc* %1, %struct.expdesc* nonnull %4) #5, !dbg !2557
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %111) #4, !dbg !2558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2539
  %127 = icmp eq i32 %125, 15, !dbg !2559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2540
  br i1 %127, label %128, label %113, !dbg !2540, !llvm.loop !2560

; <label>:128:                                    ; preds = %113, %120, %108
  %129 = phi i32 [ 15, %108 ], [ 15, %120 ], [ %114, %113 ], !dbg !2561
  %130 = load %struct.lua_State*, %struct.lua_State** %5, align 8, !dbg !2562, !tbaa !611
  %131 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %130, i64 0, i32 15, !dbg !2562
  %132 = load i16, i16* %131, align 8, !dbg !2562, !tbaa !614
  %133 = add i16 %132, -1, !dbg !2562
  store i16 %133, i16* %131, align 8, !dbg !2562, !tbaa !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2563
  ret i32 %129, !dbg !2563
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
define internal fastcc void @constructor(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 !dbg !2564 {
  %3 = alloca %struct.ConsControl, align 8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2581
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !2581, !tbaa !659
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !2583
  %7 = load i32, i32* %6, align 4, !dbg !2583, !tbaa !891
  %8 = tail call i32 @luaK_codeABC(%struct.FuncState* %5, i32 10, i32 0, i32 0, i32 0) #5, !dbg !2585
  %9 = bitcast %struct.ConsControl* %3 to i8*, !dbg !2587
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %9) #4, !dbg !2587
  %10 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 4, !dbg !2588
  store i32 0, i32* %10, align 8, !dbg !2589, !tbaa !2590
  %11 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 2, !dbg !2592
  store i32 0, i32* %11, align 8, !dbg !2593, !tbaa !2594
  %12 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 3, !dbg !2595
  store i32 0, i32* %12, align 4, !dbg !2596, !tbaa !2597
  %13 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 1, !dbg !2598
  store %struct.expdesc* %1, %struct.expdesc** %13, align 8, !dbg !2599, !tbaa !2600
  %14 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !2605
  store i32 -1, i32* %14, align 8, !dbg !2606, !tbaa !1691
  %15 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !2607
  store i32 -1, i32* %15, align 4, !dbg !2608, !tbaa !1007
  %16 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !2609
  store i32 11, i32* %16, align 8, !dbg !2610, !tbaa !998
  %17 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !2611
  %18 = bitcast %union.anon.3* %17 to i32*, !dbg !2612
  store i32 %8, i32* %18, align 8, !dbg !2613, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2614
  %19 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, !dbg !2615
  %20 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, i32 2, !dbg !2620
  store i32 -1, i32* %20, align 8, !dbg !2621, !tbaa !1691
  %21 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, i32 3, !dbg !2622
  store i32 -1, i32* %21, align 4, !dbg !2623, !tbaa !1007
  %22 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, i32 0, !dbg !2624
  store i32 0, i32* %22, align 8, !dbg !2625, !tbaa !998
  %23 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %3, i64 0, i32 0, i32 1, !dbg !2626
  %24 = bitcast %union.anon.3* %23 to i32*, !dbg !2627
  store i32 0, i32* %24, align 8, !dbg !2628, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2629
  %25 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !2630, !tbaa !659
  tail call void @luaK_exp2nextreg(%struct.FuncState* %25, %struct.expdesc* %1) #5, !dbg !2631
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !2638
  %27 = load i32, i32* %26, align 8, !dbg !2638, !tbaa !625
  %28 = icmp eq i32 %27, 123, !dbg !2639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2640
  br i1 %28, label %34, label %29, !dbg !2640

; <label>:29:                                     ; preds = %2
  %30 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !2644
  %31 = load %struct.lua_State*, %struct.lua_State** %30, align 8, !dbg !2644, !tbaa !611
  %32 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 123) #5, !dbg !2645
  %33 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %32) #5, !dbg !2646
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %33) #5, !dbg !2647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2649
  br label %34, !dbg !2649

; <label>:34:                                     ; preds = %2, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2650
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2653
  %35 = load i32, i32* %26, align 8, !dbg !2654, !tbaa !625
  %36 = icmp eq i32 %35, 125, !dbg !2657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2658
  br i1 %36, label %125, label %37, !dbg !2658

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4, i32 0
  br label %39, !dbg !2658

; <label>:39:                                     ; preds = %119, %37
  %40 = phi i32 [ %120, %119 ], [ 0, %37 ], !dbg !2659
  %41 = icmp eq i32 %40, 0, !dbg !2672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2673
  br i1 %41, label %51, label %42, !dbg !2673

; <label>:42:                                     ; preds = %39
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* nonnull %19) #5, !dbg !2674
  store i32 0, i32* %22, align 8, !dbg !2675, !tbaa !2676
  %43 = load i32, i32* %10, align 8, !dbg !2677, !tbaa !2590
  %44 = icmp eq i32 %43, 50, !dbg !2679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2680
  br i1 %44, label %45, label %51, !dbg !2680

; <label>:45:                                     ; preds = %42
  %46 = load %struct.expdesc*, %struct.expdesc** %13, align 8, !dbg !2681, !tbaa !2600
  %47 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %46, i64 0, i32 1, !dbg !2683
  %48 = bitcast %union.anon.3* %47 to i32*, !dbg !2684
  %49 = load i32, i32* %48, align 8, !dbg !2684, !tbaa !766
  %50 = load i32, i32* %12, align 4, !dbg !2685, !tbaa !2597
  call void @luaK_setlist(%struct.FuncState* %5, i32 %49, i32 %50, i32 50) #5, !dbg !2686
  store i32 0, i32* %10, align 8, !dbg !2687, !tbaa !2590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2688
  br label %51, !dbg !2688

; <label>:51:                                     ; preds = %39, %42, %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2689
  %52 = load i32, i32* %26, align 8, !dbg !2690, !tbaa !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2691
  switch i32 %52, label %85 [
    i32 285, label %53
    i32 91, label %84
  ], !dbg !2691

; <label>:53:                                     ; preds = %51
  call void @luaX_lookahead(%struct.LexState* nonnull %0) #5, !dbg !2692
  %54 = load i32, i32* %38, align 8, !dbg !2695, !tbaa !2697
  %55 = icmp eq i32 %54, 61, !dbg !2698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2699
  br i1 %55, label %83, label %56, !dbg !2699

; <label>:56:                                     ; preds = %53
  %57 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %19, i32 0) #5, !dbg !2712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2713
  %58 = load i32, i32* %12, align 4, !dbg !2714, !tbaa !2597
  %59 = icmp sgt i32 %58, 2147483645, !dbg !2714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2716
  br i1 %59, label %60, label %78, !dbg !2716

; <label>:60:                                     ; preds = %56
  %61 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !2714, !tbaa !659
  %62 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %61, i64 0, i32 0, !dbg !2729
  %63 = load %struct.Proto*, %struct.Proto** %62, align 8, !dbg !2729, !tbaa !585
  %64 = getelementptr inbounds %struct.Proto, %struct.Proto* %63, i64 0, i32 16, !dbg !2730
  %65 = load i32, i32* %64, align 8, !dbg !2730, !tbaa !2731
  %66 = icmp eq i32 %65, 0, !dbg !2732
  %67 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %61, i64 0, i32 4, !dbg !2733
  %68 = load %struct.lua_State*, %struct.lua_State** %67, align 8, !dbg !2733, !tbaa !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2734
  br i1 %66, label %69, label %71, !dbg !2734

; <label>:69:                                     ; preds = %60
  %70 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 2147483645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !2735
  br label %73, !dbg !2734

; <label>:71:                                     ; preds = %60
  %72 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %65, i32 2147483645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !2736
  br label %73, !dbg !2734

; <label>:73:                                     ; preds = %69, %71
  %74 = phi i8* [ %70, %69 ], [ %72, %71 ], !dbg !2734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2734
  %75 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %61, i64 0, i32 3, !dbg !2738
  %76 = load %struct.LexState*, %struct.LexState** %75, align 8, !dbg !2738, !tbaa !730
  call void @luaX_lexerror(%struct.LexState* %76, i8* %74, i32 0) #5, !dbg !2739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2714
  %77 = load i32, i32* %12, align 4, !dbg !2741, !tbaa !2597
  br label %78, !dbg !2714

; <label>:78:                                     ; preds = %56, %73
  %79 = phi i32 [ %58, %56 ], [ %77, %73 ], !dbg !2741
  %80 = add nsw i32 %79, 1, !dbg !2741
  store i32 %80, i32* %12, align 4, !dbg !2741, !tbaa !2597
  %81 = load i32, i32* %10, align 8, !dbg !2742, !tbaa !2590
  %82 = add nsw i32 %81, 1, !dbg !2742
  store i32 %82, i32* %10, align 8, !dbg !2742, !tbaa !2590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2743
  br label %112, !dbg !2744

; <label>:83:                                     ; preds = %53
  call fastcc void @recfield(%struct.LexState* nonnull %0, %struct.ConsControl* nonnull %3) #6, !dbg !2745
  br label %112

; <label>:84:                                     ; preds = %51
  call fastcc void @recfield(%struct.LexState* nonnull %0, %struct.ConsControl* nonnull %3) #6, !dbg !2746
  br label %112, !dbg !2748

; <label>:85:                                     ; preds = %51
  %86 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %19, i32 0) #5, !dbg !2756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2757
  %87 = load i32, i32* %12, align 4, !dbg !2758, !tbaa !2597
  %88 = icmp sgt i32 %87, 2147483645, !dbg !2758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2759
  br i1 %88, label %89, label %107, !dbg !2759

; <label>:89:                                     ; preds = %85
  %90 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !2758, !tbaa !659
  %91 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %90, i64 0, i32 0, !dbg !2764
  %92 = load %struct.Proto*, %struct.Proto** %91, align 8, !dbg !2764, !tbaa !585
  %93 = getelementptr inbounds %struct.Proto, %struct.Proto* %92, i64 0, i32 16, !dbg !2765
  %94 = load i32, i32* %93, align 8, !dbg !2765, !tbaa !2731
  %95 = icmp eq i32 %94, 0, !dbg !2766
  %96 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %90, i64 0, i32 4, !dbg !2767
  %97 = load %struct.lua_State*, %struct.lua_State** %96, align 8, !dbg !2767, !tbaa !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2768
  br i1 %95, label %98, label %100, !dbg !2768

; <label>:98:                                     ; preds = %89
  %99 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 2147483645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !2769
  br label %102, !dbg !2768

; <label>:100:                                    ; preds = %89
  %101 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %94, i32 2147483645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !2770
  br label %102, !dbg !2768

; <label>:102:                                    ; preds = %98, %100
  %103 = phi i8* [ %99, %98 ], [ %101, %100 ], !dbg !2768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2768
  %104 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %90, i64 0, i32 3, !dbg !2772
  %105 = load %struct.LexState*, %struct.LexState** %104, align 8, !dbg !2772, !tbaa !730
  call void @luaX_lexerror(%struct.LexState* %105, i8* %103, i32 0) #5, !dbg !2773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2758
  %106 = load i32, i32* %12, align 4, !dbg !2775, !tbaa !2597
  br label %107, !dbg !2758

; <label>:107:                                    ; preds = %85, %102
  %108 = phi i32 [ %87, %85 ], [ %106, %102 ], !dbg !2775
  %109 = add nsw i32 %108, 1, !dbg !2775
  store i32 %109, i32* %12, align 4, !dbg !2775, !tbaa !2597
  %110 = load i32, i32* %10, align 8, !dbg !2776, !tbaa !2590
  %111 = add nsw i32 %110, 1, !dbg !2776
  store i32 %111, i32* %10, align 8, !dbg !2776, !tbaa !2590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2777
  br label %112, !dbg !2778

; <label>:112:                                    ; preds = %84, %107, %83, %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %113 = load i32, i32* %26, align 8, !dbg !2782, !tbaa !625
  %114 = icmp eq i32 %113, 44, !dbg !2783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2784
  br i1 %114, label %115, label %121, !dbg !2784

; <label>:115:                                    ; preds = %112
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2785
  br label %116, !dbg !2786

; <label>:116:                                    ; preds = %115, %124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2789
  %117 = load i32, i32* %26, align 8, !dbg !2654, !tbaa !625
  %118 = icmp eq i32 %117, 125, !dbg !2657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2658
  br i1 %118, label %125, label %119, !dbg !2658

; <label>:119:                                    ; preds = %116
  %120 = load i32, i32* %22, align 8, !dbg !2659, !tbaa !2676
  br label %39, !dbg !2658

; <label>:121:                                    ; preds = %112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2786
  %122 = icmp eq i32 %113, 59, !dbg !2794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2795
  br i1 %122, label %124, label %123, !dbg !2795

; <label>:123:                                    ; preds = %121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2798
  br label %125, !dbg !2798

; <label>:124:                                    ; preds = %121
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2799
  br label %116, !dbg !2798

; <label>:125:                                    ; preds = %116, %34, %123
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 125, i32 123, i32 %7) #6, !dbg !2800
  %126 = load i32, i32* %10, align 8, !dbg !2808, !tbaa !2590
  %127 = icmp eq i32 %126, 0, !dbg !2810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2811
  br i1 %127, label %153, label %128, !dbg !2811

; <label>:128:                                    ; preds = %125
  %129 = load i32, i32* %22, align 8, !dbg !2812, !tbaa !2676
  %130 = icmp eq i32 %129, 13, !dbg !2812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2812
  br i1 %130, label %133, label %131, !dbg !2812

; <label>:131:                                    ; preds = %128
  %132 = icmp eq i32 %129, 14, !dbg !2812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2814
  br i1 %132, label %133, label %141, !dbg !2814

; <label>:133:                                    ; preds = %131, %128
  call void @luaK_setreturns(%struct.FuncState* %5, %struct.expdesc* nonnull %19, i32 -1) #5, !dbg !2815
  %134 = load %struct.expdesc*, %struct.expdesc** %13, align 8, !dbg !2817, !tbaa !2600
  %135 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %134, i64 0, i32 1, !dbg !2818
  %136 = bitcast %union.anon.3* %135 to i32*, !dbg !2819
  %137 = load i32, i32* %136, align 8, !dbg !2819, !tbaa !766
  %138 = load i32, i32* %12, align 4, !dbg !2820, !tbaa !2597
  call void @luaK_setlist(%struct.FuncState* %5, i32 %137, i32 %138, i32 -1) #5, !dbg !2821
  %139 = load i32, i32* %12, align 4, !dbg !2822, !tbaa !2597
  %140 = add nsw i32 %139, -1, !dbg !2822
  store i32 %140, i32* %12, align 4, !dbg !2822, !tbaa !2597
  br label %152, !dbg !2823

; <label>:141:                                    ; preds = %131
  %142 = icmp eq i32 %129, 0, !dbg !2824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2827
  br i1 %142, label %145, label %143, !dbg !2827

; <label>:143:                                    ; preds = %141
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* nonnull %19) #5, !dbg !2828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2828
  %144 = load i32, i32* %10, align 8, !dbg !2829, !tbaa !2590
  br label %145, !dbg !2828

; <label>:145:                                    ; preds = %143, %141
  %146 = phi i32 [ %126, %141 ], [ %144, %143 ], !dbg !2829
  %147 = load %struct.expdesc*, %struct.expdesc** %13, align 8, !dbg !2830, !tbaa !2600
  %148 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %147, i64 0, i32 1, !dbg !2831
  %149 = bitcast %union.anon.3* %148 to i32*, !dbg !2832
  %150 = load i32, i32* %149, align 8, !dbg !2832, !tbaa !766
  %151 = load i32, i32* %12, align 4, !dbg !2833, !tbaa !2597
  call void @luaK_setlist(%struct.FuncState* %5, i32 %150, i32 %151, i32 %146) #5, !dbg !2834
  br label %152

; <label>:152:                                    ; preds = %145, %133
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %153, !dbg !2835

; <label>:153:                                    ; preds = %152, %125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2835
  %154 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0, !dbg !2836
  %155 = load %struct.Proto*, %struct.Proto** %154, align 8, !dbg !2836, !tbaa !585
  %156 = getelementptr inbounds %struct.Proto, %struct.Proto* %155, i64 0, i32 4, !dbg !2836
  %157 = load i32*, i32** %156, align 8, !dbg !2836, !tbaa !818
  %158 = sext i32 %8 to i64, !dbg !2836
  %159 = getelementptr inbounds i32, i32* %157, i64 %158, !dbg !2836
  %160 = load i32, i32* %159, align 4, !dbg !2836, !tbaa !737
  %161 = and i32 %160, 8388607, !dbg !2836
  %162 = load i32, i32* %12, align 4, !dbg !2836, !tbaa !2597
  %163 = call i32 @luaO_int2fb(i32 %162) #5, !dbg !2836
  %164 = shl i32 %163, 23, !dbg !2836
  %165 = or i32 %164, %161, !dbg !2836
  %166 = load %struct.Proto*, %struct.Proto** %154, align 8, !dbg !2836, !tbaa !585
  %167 = getelementptr inbounds %struct.Proto, %struct.Proto* %166, i64 0, i32 4, !dbg !2836
  %168 = load i32*, i32** %167, align 8, !dbg !2836, !tbaa !818
  %169 = getelementptr inbounds i32, i32* %168, i64 %158, !dbg !2836
  store i32 %165, i32* %169, align 4, !dbg !2836, !tbaa !737
  %170 = and i32 %165, -8372225, !dbg !2837
  %171 = load i32, i32* %11, align 8, !dbg !2837, !tbaa !2594
  %172 = call i32 @luaO_int2fb(i32 %171) #5, !dbg !2837
  %173 = shl i32 %172, 14, !dbg !2837
  %174 = and i32 %173, 8372224, !dbg !2837
  %175 = or i32 %174, %170, !dbg !2837
  %176 = load %struct.Proto*, %struct.Proto** %154, align 8, !dbg !2837, !tbaa !585
  %177 = getelementptr inbounds %struct.Proto, %struct.Proto* %176, i64 0, i32 4, !dbg !2837
  %178 = load i32*, i32** %177, align 8, !dbg !2837, !tbaa !818
  %179 = getelementptr inbounds i32, i32* %178, i64 %158, !dbg !2837
  store i32 %175, i32* %179, align 4, !dbg !2837, !tbaa !737
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %9) #4, !dbg !2838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2838
  ret void, !dbg !2838
}

; Function Attrs: noredzone nounwind
define internal fastcc void @body(%struct.LexState*, %struct.expdesc* nocapture, i32, i32) unnamed_addr #0 !dbg !2839 {
  %5 = alloca %struct.FuncState, align 8
  %6 = bitcast %struct.FuncState* %5 to i8*, !dbg !2852
  call void @llvm.lifetime.start.p0i8(i64 600, i8* nonnull %6) #4, !dbg !2852
  call fastcc void @open_func(%struct.LexState* %0, %struct.FuncState* nonnull %5) #6, !dbg !2854
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0, !dbg !2855
  %8 = load %struct.Proto*, %struct.Proto** %7, align 8, !dbg !2855, !tbaa !585
  %9 = getelementptr inbounds %struct.Proto, %struct.Proto* %8, i64 0, i32 16, !dbg !2856
  store i32 %3, i32* %9, align 8, !dbg !2857, !tbaa !2731
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !2864
  %11 = load i32, i32* %10, align 8, !dbg !2864, !tbaa !625
  %12 = icmp eq i32 %11, 40, !dbg !2865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2866
  br i1 %12, label %18, label %13, !dbg !2866

; <label>:13:                                     ; preds = %4
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !2870
  %15 = load %struct.lua_State*, %struct.lua_State** %14, align 8, !dbg !2870, !tbaa !611
  %16 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 40) #5, !dbg !2871
  %17 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %16) #5, !dbg !2872
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %17) #5, !dbg !2873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2875
  br label %18, !dbg !2875

; <label>:18:                                     ; preds = %4, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2876
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2878
  %19 = icmp eq i32 %2, 0, !dbg !2879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2881
  br i1 %19, label %20, label %25, !dbg !2881

; <label>:20:                                     ; preds = %18
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  %22 = load %struct.FuncState*, %struct.FuncState** %21, align 8, !dbg !2882, !tbaa !659
  %23 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %22, i64 0, i32 0
  %24 = load %struct.Proto*, %struct.Proto** %23, align 8, !dbg !2890, !tbaa !585
  br label %44, !dbg !2881

; <label>:25:                                     ; preds = %18
  %26 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 4) #5, !dbg !2891
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %26, i32 0) #6, !dbg !2891
  %27 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !2896
  %28 = load %struct.FuncState*, %struct.FuncState** %27, align 8, !dbg !2896, !tbaa !659
  %29 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %28, i64 0, i32 13, !dbg !2898
  %30 = load i8, i8* %29, align 2, !dbg !2898, !tbaa !661
  %31 = add i8 %30, 1, !dbg !2898
  store i8 %31, i8* %29, align 2, !dbg !2899, !tbaa !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2901
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %28, i64 0, i32 6
  %33 = load i32, i32* %32, align 8, !tbaa !804
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %28, i64 0, i32 0
  %35 = load %struct.Proto*, %struct.Proto** %34, align 8, !tbaa !585
  %36 = getelementptr inbounds %struct.Proto, %struct.Proto* %35, i64 0, i32 7
  %37 = load %struct.LocVar*, %struct.LocVar** %36, align 8, !tbaa !805
  %38 = zext i8 %31 to i64, !dbg !2901
  %39 = add nsw i64 %38, -1, !dbg !2902
  %40 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %28, i64 0, i32 15, i64 %39, !dbg !2902
  %41 = load i16, i16* %40, align 2, !dbg !2902, !tbaa !807
  %42 = zext i16 %41 to i64, !dbg !2902
  %43 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %37, i64 %42, i32 1, !dbg !2903
  store i32 %33, i32* %43, align 8, !dbg !2904, !tbaa !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2907
  br label %44, !dbg !2907

; <label>:44:                                     ; preds = %20, %25
  %45 = phi %struct.FuncState** [ %21, %20 ], [ %27, %25 ], !dbg !2882
  %46 = phi %struct.Proto* [ %24, %20 ], [ %35, %25 ], !dbg !2890
  %47 = phi %struct.FuncState* [ %22, %20 ], [ %28, %25 ], !dbg !2882
  %48 = getelementptr inbounds %struct.Proto, %struct.Proto* %46, i64 0, i32 21, !dbg !2912
  store i8 0, i8* %48, align 2, !dbg !2913, !tbaa !590
  %49 = load i32, i32* %10, align 8, !dbg !2914, !tbaa !625
  %50 = icmp eq i32 %49, 41, !dbg !2916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2917
  br i1 %50, label %76, label %51, !dbg !2917

; <label>:51:                                     ; preds = %44
  %52 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1
  %53 = bitcast %union.SemInfo* %52 to %union.TString**
  br label %56, !dbg !2918

; <label>:54:                                     ; preds = %70
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2921
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2925
  %55 = load i32, i32* %10, align 8, !dbg !2926, !tbaa !625
  br label %56, !dbg !2926

; <label>:56:                                     ; preds = %54, %51
  %57 = phi i32 [ %55, %54 ], [ %49, %51 ], !dbg !2926
  %58 = phi i32 [ %67, %54 ], [ 0, %51 ], !dbg !2911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2918
  switch i32 %57, label %65 [
    i32 285, label %59
    i32 279, label %62
  ], !dbg !2918

; <label>:59:                                     ; preds = %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2935
  %60 = load %union.TString*, %union.TString** %53, align 8, !dbg !2936, !tbaa !766
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2939
  %61 = add nsw i32 %58, 1, !dbg !2940
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %60, i32 %58) #5, !dbg !2941
  br label %66, !dbg !2942

; <label>:62:                                     ; preds = %56
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !2943
  %63 = call %union.TString* @luaX_newstring(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i64 3) #5, !dbg !2945
  %64 = add nsw i32 %58, 1, !dbg !2945
  call fastcc void @new_localvar(%struct.LexState* nonnull %0, %union.TString* %63, i32 %58) #5, !dbg !2945
  store i8 7, i8* %48, align 2, !dbg !2946, !tbaa !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2948
  br label %76, !dbg !2948

; <label>:65:                                     ; preds = %56
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0)) #5, !dbg !2949
  br label %66, !dbg !2950

; <label>:66:                                     ; preds = %65, %59
  %67 = phi i32 [ %61, %59 ], [ %58, %65 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2951
  %68 = load i8, i8* %48, align 2, !dbg !2952, !tbaa !590
  %69 = icmp eq i8 %68, 0, !dbg !2953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2948
  br i1 %69, label %70, label %74, !dbg !2948

; <label>:70:                                     ; preds = %66
  %71 = load i32, i32* %10, align 8, !dbg !2956, !tbaa !625
  %72 = icmp eq i32 %71, 44, !dbg !2957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2958
  br i1 %72, label %54, label %73, !dbg !2958

; <label>:73:                                     ; preds = %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2925
  br label %76, !dbg !2925

; <label>:74:                                     ; preds = %66
  %75 = and i8 %68, 1, !dbg !2960
  br label %76, !dbg !2960

; <label>:76:                                     ; preds = %74, %73, %62, %44
  %77 = phi i8 [ 0, %44 ], [ 1, %62 ], [ 0, %73 ], [ %75, %74 ]
  %78 = phi i32 [ 0, %44 ], [ %64, %62 ], [ %67, %73 ], [ %67, %74 ], !dbg !2911
  %79 = load %struct.FuncState*, %struct.FuncState** %45, align 8, !dbg !2960, !tbaa !659
  %80 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %79, i64 0, i32 13, !dbg !2965
  %81 = load i8, i8* %80, align 2, !dbg !2965, !tbaa !661
  %82 = trunc i32 %78 to i8, !dbg !2965
  %83 = add i8 %81, %82, !dbg !2965
  store i8 %83, i8* %80, align 2, !dbg !2966, !tbaa !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2967
  %84 = icmp eq i32 %78, 0, !dbg !2968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2968
  br i1 %84, label %122, label %85, !dbg !2968

; <label>:85:                                     ; preds = %76
  %86 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %79, i64 0, i32 6
  %87 = load i32, i32* %86, align 8, !tbaa !804
  %88 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %79, i64 0, i32 0
  %89 = load %struct.Proto*, %struct.Proto** %88, align 8, !tbaa !585
  %90 = getelementptr inbounds %struct.Proto, %struct.Proto* %89, i64 0, i32 7
  %91 = load %struct.LocVar*, %struct.LocVar** %90, align 8, !tbaa !805
  %92 = sext i32 %78 to i64, !dbg !2968
  %93 = zext i8 %83 to i64, !dbg !2968
  %94 = and i32 %78, 1, !dbg !2968
  %95 = icmp eq i32 %94, 0, !dbg !2968
  br i1 %95, label %103, label %96, !dbg !2968

; <label>:96:                                     ; preds = %85
  %97 = sub nsw i64 %93, %92, !dbg !2969
  %98 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %79, i64 0, i32 15, i64 %97, !dbg !2969
  %99 = load i16, i16* %98, align 2, !dbg !2969, !tbaa !807
  %100 = zext i16 %99 to i64, !dbg !2969
  %101 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %91, i64 %100, i32 1, !dbg !2970
  store i32 %87, i32* %101, align 8, !dbg !2971, !tbaa !1862
  %102 = add nsw i64 %92, -1, !dbg !2972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2968
  br label %103, !dbg !2968

; <label>:103:                                    ; preds = %85, %96
  %104 = phi i64 [ %92, %85 ], [ %102, %96 ]
  %105 = icmp eq i32 %78, 1, !dbg !2968
  br i1 %105, label %122, label %106, !dbg !2968

; <label>:106:                                    ; preds = %103, %106
  %107 = phi i64 [ %119, %106 ], [ %104, %103 ]
  %108 = sub nsw i64 %93, %107, !dbg !2969
  %109 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %79, i64 0, i32 15, i64 %108, !dbg !2969
  %110 = load i16, i16* %109, align 2, !dbg !2969, !tbaa !807
  %111 = zext i16 %110 to i64, !dbg !2969
  %112 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %91, i64 %111, i32 1, !dbg !2970
  store i32 %87, i32* %112, align 8, !dbg !2971, !tbaa !1862
  %113 = add nsw i64 %107, -1, !dbg !2972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2968
  %114 = sub nsw i64 %93, %113, !dbg !2969
  %115 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %79, i64 0, i32 15, i64 %114, !dbg !2969
  %116 = load i16, i16* %115, align 2, !dbg !2969, !tbaa !807
  %117 = zext i16 %116 to i64, !dbg !2969
  %118 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %91, i64 %117, i32 1, !dbg !2970
  store i32 %87, i32* %118, align 8, !dbg !2971, !tbaa !1862
  %119 = add nsw i64 %107, -2, !dbg !2972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2973
  %120 = trunc i64 %119 to i32, !dbg !2968
  %121 = icmp eq i32 %120, 0, !dbg !2968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2968
  br i1 %121, label %122, label %106, !dbg !2968, !llvm.loop !1987

; <label>:122:                                    ; preds = %103, %106, %76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2974
  %123 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %47, i64 0, i32 13, !dbg !2975
  %124 = load i8, i8* %123, align 2, !dbg !2975, !tbaa !661
  %125 = sub i8 %124, %77, !dbg !2975
  %126 = getelementptr inbounds %struct.Proto, %struct.Proto* %46, i64 0, i32 20, !dbg !2976
  store i8 %125, i8* %126, align 1, !dbg !2977, !tbaa !2978
  %127 = zext i8 %124 to i32, !dbg !2979
  call void @luaK_reserveregs(%struct.FuncState* %47, i32 %127) #5, !dbg !2980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2981
  %128 = load i32, i32* %10, align 8, !dbg !2988, !tbaa !625
  %129 = icmp eq i32 %128, 41, !dbg !2989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2990
  %130 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !2951
  br i1 %129, label %135, label %131, !dbg !2990

; <label>:131:                                    ; preds = %122
  %132 = load %struct.lua_State*, %struct.lua_State** %130, align 8, !dbg !2994, !tbaa !611
  %133 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 41) #5, !dbg !2995
  %134 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %133) #5, !dbg !2996
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %134) #5, !dbg !2997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2999
  br label %135, !dbg !2999

; <label>:135:                                    ; preds = %122, %131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3000
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3002
  %136 = load %struct.lua_State*, %struct.lua_State** %130, align 8, !dbg !3008, !tbaa !611
  %137 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %136, i64 0, i32 15, !dbg !3009
  %138 = load i16, i16* %137, align 8, !dbg !3010, !tbaa !614
  %139 = add i16 %138, 1, !dbg !3010
  store i16 %139, i16* %137, align 8, !dbg !3010, !tbaa !614
  %140 = icmp ugt i16 %139, 200, !dbg !3011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3012
  br i1 %140, label %141, label %142, !dbg !3012

; <label>:141:                                    ; preds = %135
  call void @luaX_lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 0) #5, !dbg !3013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3013
  br label %142, !dbg !3013

; <label>:142:                                    ; preds = %135, %141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3014
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3016
  br label %143, !dbg !3016

; <label>:143:                                    ; preds = %142, %151
  %144 = load i32, i32* %10, align 8, !dbg !3017, !tbaa !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3020
  switch i32 %144, label %146 [
    i32 260, label %145
    i32 261, label %145
    i32 262, label %145
    i32 276, label %145
    i32 287, label %145
  ], !dbg !3020

; <label>:145:                                    ; preds = %143, %143, %143, %143, %143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3022
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %158, !dbg !3015

; <label>:146:                                    ; preds = %143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3023
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3022
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3015
  %147 = call fastcc i32 @statement(%struct.LexState* nonnull %0) #5, !dbg !3024
  %148 = load i32, i32* %10, align 8, !dbg !3028, !tbaa !625
  %149 = icmp eq i32 %148, 59, !dbg !3029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3030
  br i1 %149, label %150, label %151, !dbg !3030

; <label>:150:                                    ; preds = %146
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3031
  br label %151, !dbg !3032

; <label>:151:                                    ; preds = %146, %150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3034
  %152 = load %struct.FuncState*, %struct.FuncState** %45, align 8, !dbg !3035, !tbaa !659
  %153 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %152, i64 0, i32 13, !dbg !3036
  %154 = load i8, i8* %153, align 2, !dbg !3036, !tbaa !661
  %155 = zext i8 %154 to i32, !dbg !3037
  %156 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %152, i64 0, i32 9, !dbg !3038
  store i32 %155, i32* %156, align 4, !dbg !3039, !tbaa !665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3015
  %157 = icmp eq i32 %147, 0, !dbg !3040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3016
  br i1 %157, label %143, label %158, !dbg !3016, !llvm.loop !667

; <label>:158:                                    ; preds = %151, %145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3015
  %159 = load %struct.lua_State*, %struct.lua_State** %130, align 8, !dbg !3041, !tbaa !611
  %160 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %159, i64 0, i32 15, !dbg !3041
  %161 = load i16, i16* %160, align 8, !dbg !3041, !tbaa !614
  %162 = add i16 %161, -1, !dbg !3041
  store i16 %162, i16* %160, align 8, !dbg !3041, !tbaa !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3042
  %163 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !3043
  %164 = load i32, i32* %163, align 4, !dbg !3043, !tbaa !891
  %165 = load %struct.Proto*, %struct.Proto** %7, align 8, !dbg !3044, !tbaa !585
  %166 = getelementptr inbounds %struct.Proto, %struct.Proto* %165, i64 0, i32 17, !dbg !3045
  store i32 %164, i32* %166, align 4, !dbg !3046, !tbaa !3047
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 262, i32 265, i32 %3) #6, !dbg !3048
  call fastcc void @close_func(%struct.LexState* nonnull %0) #6, !dbg !3049
  %167 = load %struct.FuncState*, %struct.FuncState** %45, align 8, !dbg !3070, !tbaa !659
  %168 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %167, i64 0, i32 0, !dbg !3072
  %169 = load %struct.Proto*, %struct.Proto** %168, align 8, !dbg !3072, !tbaa !585
  %170 = getelementptr inbounds %struct.Proto, %struct.Proto* %169, i64 0, i32 14, !dbg !3074
  %171 = load i32, i32* %170, align 8, !dbg !3074, !tbaa !837
  %172 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %167, i64 0, i32 11, !dbg !3076
  %173 = load i32, i32* %172, align 4, !dbg !3076, !tbaa !743
  %174 = icmp slt i32 %173, %171, !dbg !3076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3078
  br i1 %174, label %175, label %177, !dbg !3078

; <label>:175:                                    ; preds = %158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  %176 = getelementptr inbounds %struct.Proto, %struct.Proto* %169, i64 0, i32 5, !dbg !3080
  br label %225, !dbg !3079

; <label>:177:                                    ; preds = %158
  %178 = load %struct.lua_State*, %struct.lua_State** %130, align 8, !dbg !3076, !tbaa !611
  %179 = getelementptr inbounds %struct.Proto, %struct.Proto* %169, i64 0, i32 5, !dbg !3076
  %180 = bitcast %struct.Proto*** %179 to i8**, !dbg !3076
  %181 = load i8*, i8** %180, align 8, !dbg !3076, !tbaa !836
  %182 = call i8* @luaM_growaux_(%struct.lua_State* %178, i8* %181, i32* nonnull %170, i64 8, i32 262143, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #5, !dbg !3076
  store i8* %182, i8** %180, align 8, !dbg !3076, !tbaa !836
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3076
  %183 = load i32, i32* %170, align 8, !dbg !3081, !tbaa !837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  %184 = icmp slt i32 %171, %183, !dbg !3082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  br i1 %184, label %185, label %225, !dbg !3079

; <label>:185:                                    ; preds = %177
  %186 = bitcast i8* %182 to %struct.Proto**, !dbg !3079
  %187 = sext i32 %171 to i64, !dbg !3079
  %188 = sext i32 %183 to i64
  %189 = add nsw i64 %187, 1, !dbg !3083
  %190 = getelementptr inbounds %struct.Proto*, %struct.Proto** %186, i64 %187, !dbg !3084
  store %struct.Proto* null, %struct.Proto** %190, align 8, !dbg !3085, !tbaa !3086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  %191 = icmp eq i64 %189, %188, !dbg !3082
  br i1 %191, label %225, label %192, !dbg !3079, !llvm.loop !3087

; <label>:192:                                    ; preds = %185
  %193 = xor i64 %187, 3, !dbg !3090
  %194 = add nsw i64 %193, %188, !dbg !3090
  %195 = add nsw i64 %188, -2, !dbg !3090
  %196 = sub nsw i64 %195, %187, !dbg !3090
  %197 = and i64 %194, 3, !dbg !3090
  %198 = icmp eq i64 %197, 0, !dbg !3090
  br i1 %198, label %207, label %199, !dbg !3090

; <label>:199:                                    ; preds = %192, %199
  %200 = phi i64 [ %203, %199 ], [ %189, %192 ]
  %201 = phi i64 [ %205, %199 ], [ %197, %192 ]
  %202 = load %struct.Proto**, %struct.Proto*** %179, align 8, !dbg !3090, !tbaa !836
  %203 = add nsw i64 %200, 1, !dbg !3083
  %204 = getelementptr inbounds %struct.Proto*, %struct.Proto** %202, i64 %200, !dbg !3084
  store %struct.Proto* null, %struct.Proto** %204, align 8, !dbg !3085, !tbaa !3086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  %205 = add i64 %201, -1, !dbg !3079
  %206 = icmp eq i64 %205, 0, !dbg !3079
  br i1 %206, label %207, label %199, !dbg !3079, !llvm.loop !3091

; <label>:207:                                    ; preds = %199, %192
  %208 = phi i64 [ %189, %192 ], [ %203, %199 ]
  %209 = icmp ult i64 %196, 3, !dbg !3090
  br i1 %209, label %225, label %210, !dbg !3090

; <label>:210:                                    ; preds = %207, %210
  %211 = phi i64 [ %222, %210 ], [ %208, %207 ]
  %212 = load %struct.Proto**, %struct.Proto*** %179, align 8, !dbg !3090, !tbaa !836
  %213 = add nsw i64 %211, 1, !dbg !3083
  %214 = getelementptr inbounds %struct.Proto*, %struct.Proto** %212, i64 %211, !dbg !3084
  store %struct.Proto* null, %struct.Proto** %214, align 8, !dbg !3085, !tbaa !3086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  %215 = load %struct.Proto**, %struct.Proto*** %179, align 8, !dbg !3090, !tbaa !836
  %216 = add nsw i64 %211, 2, !dbg !3083
  %217 = getelementptr inbounds %struct.Proto*, %struct.Proto** %215, i64 %213, !dbg !3084
  store %struct.Proto* null, %struct.Proto** %217, align 8, !dbg !3085, !tbaa !3086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  %218 = load %struct.Proto**, %struct.Proto*** %179, align 8, !dbg !3090, !tbaa !836
  %219 = add nsw i64 %211, 3, !dbg !3083
  %220 = getelementptr inbounds %struct.Proto*, %struct.Proto** %218, i64 %216, !dbg !3084
  store %struct.Proto* null, %struct.Proto** %220, align 8, !dbg !3085, !tbaa !3086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  %221 = load %struct.Proto**, %struct.Proto*** %179, align 8, !dbg !3090, !tbaa !836
  %222 = add nsw i64 %211, 4, !dbg !3083
  %223 = getelementptr inbounds %struct.Proto*, %struct.Proto** %221, i64 %219, !dbg !3084
  store %struct.Proto* null, %struct.Proto** %223, align 8, !dbg !3085, !tbaa !3086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  %224 = icmp eq i64 %222, %188, !dbg !3082
  br i1 %224, label %225, label %210, !dbg !3079, !llvm.loop !3087

; <label>:225:                                    ; preds = %207, %210, %185, %175, %177
  %226 = phi %struct.Proto*** [ %179, %177 ], [ %176, %175 ], [ %179, %185 ], [ %179, %210 ], [ %179, %207 ], !dbg !3080
  %227 = bitcast %struct.FuncState* %5 to i64*, !dbg !3093
  %228 = load i64, i64* %227, align 8, !dbg !3093, !tbaa !585
  %229 = load %struct.Proto**, %struct.Proto*** %226, align 8, !dbg !3080, !tbaa !836
  %230 = load i32, i32* %172, align 4, !dbg !3094, !tbaa !743
  %231 = add nsw i32 %230, 1, !dbg !3094
  store i32 %231, i32* %172, align 4, !dbg !3094, !tbaa !743
  %232 = sext i32 %230 to i64, !dbg !3095
  %233 = getelementptr inbounds %struct.Proto*, %struct.Proto** %229, i64 %232, !dbg !3095
  %234 = bitcast %struct.Proto** %233 to i64*, !dbg !3096
  store i64 %228, i64* %234, align 8, !dbg !3096, !tbaa !3086
  %235 = bitcast %struct.FuncState* %5 to %union.GCObject**, !dbg !3097
  %236 = load %union.GCObject*, %union.GCObject** %235, align 8, !dbg !3097, !tbaa !585
  %237 = getelementptr inbounds %union.GCObject, %union.GCObject* %236, i64 0, i32 0, i32 2, !dbg !3097
  %238 = load i8, i8* %237, align 1, !dbg !3097, !tbaa !766
  %239 = and i8 %238, 3, !dbg !3097
  %240 = icmp eq i8 %239, 0, !dbg !3097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3097
  br i1 %240, label %250, label %241, !dbg !3097

; <label>:241:                                    ; preds = %225
  %242 = getelementptr inbounds %struct.Proto, %struct.Proto* %169, i64 0, i32 2, !dbg !3097
  %243 = load i8, i8* %242, align 1, !dbg !3097, !tbaa !766
  %244 = and i8 %243, 4, !dbg !3097
  %245 = icmp eq i8 %244, 0, !dbg !3097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3100
  br i1 %245, label %250, label %246, !dbg !3100

; <label>:246:                                    ; preds = %241
  %247 = bitcast %struct.Proto* %169 to %union.GCObject*, !dbg !3097
  %248 = load %struct.lua_State*, %struct.lua_State** %130, align 8, !dbg !3097, !tbaa !611
  call void @luaC_barrierf(%struct.lua_State* %248, %union.GCObject* %247, %union.GCObject* %236) #5, !dbg !3097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3097
  %249 = load i32, i32* %172, align 4, !dbg !3101, !tbaa !743
  br label %250, !dbg !3097

; <label>:250:                                    ; preds = %246, %241, %225
  %251 = phi i32 [ %231, %241 ], [ %231, %225 ], [ %249, %246 ], !dbg !3101
  %252 = add nsw i32 %251, -1, !dbg !3102
  %253 = call i32 @luaK_codeABx(%struct.FuncState* nonnull %167, i32 36, i32 0, i32 %252) #5, !dbg !3103
  %254 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !3108
  store i32 -1, i32* %254, align 8, !dbg !3109, !tbaa !1691
  %255 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !3110
  store i32 -1, i32* %255, align 4, !dbg !3111, !tbaa !1007
  %256 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !3112
  store i32 11, i32* %256, align 8, !dbg !3113, !tbaa !998
  %257 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !3114
  %258 = bitcast %union.anon.3* %257 to i32*, !dbg !3115
  store i32 %253, i32* %258, align 8, !dbg !3116, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3119
  %259 = load %struct.Proto*, %struct.Proto** %7, align 8, !dbg !3120, !tbaa !585
  %260 = getelementptr inbounds %struct.Proto, %struct.Proto* %259, i64 0, i32 19, !dbg !3121
  %261 = load i8, i8* %260, align 8, !dbg !3121, !tbaa !848
  %262 = icmp eq i8 %261, 0, !dbg !3122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3123
  br i1 %262, label %279, label %263, !dbg !3123

; <label>:263:                                    ; preds = %250, %263
  %264 = phi i64 [ %273, %263 ], [ 0, %250 ]
  %265 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 14, i64 %264, i32 0, !dbg !3124
  %266 = load i8, i8* %265, align 1, !dbg !3124, !tbaa !3125
  %267 = icmp eq i8 %266, 6, !dbg !3127
  %268 = select i1 %267, i32 0, i32 4, !dbg !3128
  %269 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 14, i64 %264, i32 1, !dbg !3130
  %270 = load i8, i8* %269, align 1, !dbg !3130, !tbaa !3131
  %271 = zext i8 %270 to i32, !dbg !3132
  %272 = call i32 @luaK_codeABC(%struct.FuncState* %167, i32 %268, i32 0, i32 %271, i32 0) #5, !dbg !3133
  %273 = add nuw nsw i64 %264, 1, !dbg !3134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3135
  %274 = load %struct.Proto*, %struct.Proto** %7, align 8, !dbg !3120, !tbaa !585
  %275 = getelementptr inbounds %struct.Proto, %struct.Proto* %274, i64 0, i32 19, !dbg !3121
  %276 = load i8, i8* %275, align 8, !dbg !3121, !tbaa !848
  %277 = zext i8 %276 to i64, !dbg !3122
  %278 = icmp ult i64 %273, %277, !dbg !3122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3123
  br i1 %278, label %263, label %279, !dbg !3123, !llvm.loop !3136

; <label>:279:                                    ; preds = %263, %250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3139
  call void @llvm.lifetime.end.p0i8(i64 600, i8* nonnull %6) #4, !dbg !3140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3140
  ret void, !dbg !3140
}

; Function Attrs: noredzone nounwind
define internal fastcc void @primaryexp(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 !dbg !3141 {
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = alloca %struct.expdesc, align 8
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3156
  %7 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !dbg !3156, !tbaa !659
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !3168
  %9 = load i32, i32* %8, align 8, !dbg !3168, !tbaa !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3169
  switch i32 %9, label %27 [
    i32 40, label %10
    i32 285, label %15
  ], !dbg !3169

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !3170
  %12 = load i32, i32* %11, align 4, !dbg !3170, !tbaa !891
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3172
  %13 = tail call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* %1, i32 0) #5, !dbg !3176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3177
  tail call fastcc void @check_match(%struct.LexState* nonnull %0, i32 41, i32 40, i32 %12) #5, !dbg !3178
  %14 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !dbg !3179, !tbaa !659
  tail call void @luaK_dischargevars(%struct.FuncState* %14, %struct.expdesc* %1) #5, !dbg !3180
  br label %28

; <label>:15:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3191
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !3192
  %17 = bitcast %union.SemInfo* %16 to %union.TString**, !dbg !3193
  %18 = load %union.TString*, %union.TString** %17, align 8, !dbg !3193, !tbaa !766
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3196
  %19 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !dbg !3198, !tbaa !659
  %20 = tail call fastcc i32 @singlevaraux(%struct.FuncState* %19, %union.TString* %18, %struct.expdesc* %1, i32 1) #5, !dbg !3200
  %21 = icmp eq i32 %20, 8, !dbg !3201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3202
  br i1 %21, label %22, label %26, !dbg !3202

; <label>:22:                                     ; preds = %15
  %23 = tail call i32 @luaK_stringK(%struct.FuncState* %19, %union.TString* %18) #5, !dbg !3203
  %24 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !3204
  %25 = bitcast %union.anon.3* %24 to i32*, !dbg !3205
  store i32 %23, i32* %25, align 8, !dbg !3206, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3207
  br label %26, !dbg !3207

; <label>:26:                                     ; preds = %22, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3208
  br label %28, !dbg !3209

; <label>:27:                                     ; preds = %2
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0)) #5, !dbg !3210
  br label %28, !dbg !3212

; <label>:28:                                     ; preds = %10, %26, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3214
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
  br label %45, !dbg !3214

; <label>:45:                                     ; preds = %75, %28
  %46 = load i32, i32* %8, align 8, !dbg !3215, !tbaa !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3216
  switch i32 %46, label %74 [
    i32 46, label %47
    i32 91, label %60
    i32 58, label %62
    i32 40, label %73
    i32 286, label %73
    i32 123, label %73
  ], !dbg !3216

; <label>:47:                                     ; preds = %45
  %48 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !dbg !3221, !tbaa !659
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %29) #4, !dbg !3223
  %49 = call i32 @luaK_exp2anyreg(%struct.FuncState* %48, %struct.expdesc* %1) #5, !dbg !3224
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3225
  %50 = load i32, i32* %8, align 8, !dbg !3235, !tbaa !625
  %51 = icmp eq i32 %50, 285, !dbg !3236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3237
  br i1 %51, label %56, label %52, !dbg !3237

; <label>:52:                                     ; preds = %47
  %53 = load %struct.lua_State*, %struct.lua_State** %39, align 8, !dbg !3241, !tbaa !611
  %54 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !3242
  %55 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %54) #5, !dbg !3243
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %55) #5, !dbg !3244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3246
  br label %56, !dbg !3246

; <label>:56:                                     ; preds = %47, %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3247
  %57 = load %union.TString*, %union.TString** %33, align 8, !dbg !3248, !tbaa !766
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3251
  %58 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !dbg !3256, !tbaa !659
  %59 = call i32 @luaK_stringK(%struct.FuncState* %58, %union.TString* %57) #5, !dbg !3257
  store i32 -1, i32* %34, align 8, !dbg !3262, !tbaa !1691
  store i32 -1, i32* %35, align 4, !dbg !3263, !tbaa !1007
  store i32 4, i32* %36, align 8, !dbg !3264, !tbaa !998
  store i32 %59, i32* %38, align 8, !dbg !3265, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3268
  call void @luaK_indexed(%struct.FuncState* %48, %struct.expdesc* %1, %struct.expdesc* nonnull %3) #5, !dbg !3269
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %29) #4, !dbg !3270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3270
  br label %75, !dbg !3271

; <label>:60:                                     ; preds = %45
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %30) #4, !dbg !3272
  %61 = call i32 @luaK_exp2anyreg(%struct.FuncState* %7, %struct.expdesc* %1) #5, !dbg !3273
  call fastcc void @yindex(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4) #6, !dbg !3275
  call void @luaK_indexed(%struct.FuncState* %7, %struct.expdesc* %1, %struct.expdesc* nonnull %4) #5, !dbg !3276
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %30) #4, !dbg !3277
  br label %75

; <label>:62:                                     ; preds = %45
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %31) #4, !dbg !3278
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3279
  %63 = load i32, i32* %8, align 8, !dbg !3289, !tbaa !625
  %64 = icmp eq i32 %63, 285, !dbg !3290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3291
  br i1 %64, label %69, label %65, !dbg !3291

; <label>:65:                                     ; preds = %62
  %66 = load %struct.lua_State*, %struct.lua_State** %39, align 8, !dbg !3295, !tbaa !611
  %67 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !3296
  %68 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %67) #5, !dbg !3297
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %68) #5, !dbg !3298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3300
  br label %69, !dbg !3300

; <label>:69:                                     ; preds = %62, %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3301
  %70 = load %union.TString*, %union.TString** %33, align 8, !dbg !3302, !tbaa !766
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3305
  %71 = load %struct.FuncState*, %struct.FuncState** %6, align 8, !dbg !3310, !tbaa !659
  %72 = call i32 @luaK_stringK(%struct.FuncState* %71, %union.TString* %70) #5, !dbg !3311
  store i32 -1, i32* %40, align 8, !dbg !3316, !tbaa !1691
  store i32 -1, i32* %41, align 4, !dbg !3317, !tbaa !1007
  store i32 4, i32* %42, align 8, !dbg !3318, !tbaa !998
  store i32 %72, i32* %44, align 8, !dbg !3319, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3322
  call void @luaK_self(%struct.FuncState* %7, %struct.expdesc* %1, %struct.expdesc* nonnull %5) #5, !dbg !3323
  call fastcc void @funcargs(%struct.LexState* nonnull %0, %struct.expdesc* %1) #6, !dbg !3324
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %31) #4, !dbg !3325
  br label %75

; <label>:73:                                     ; preds = %45, %45, %45
  call void @luaK_exp2nextreg(%struct.FuncState* %7, %struct.expdesc* %1) #5, !dbg !3326
  call fastcc void @funcargs(%struct.LexState* nonnull %0, %struct.expdesc* %1) #6, !dbg !3328
  br label %75, !dbg !3329

; <label>:74:                                     ; preds = %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3330
  ret void, !dbg !3330

; <label>:75:                                     ; preds = %73, %69, %60, %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3331
  br label %45, !dbg !3331, !llvm.loop !3332
}

; Function Attrs: noredzone
declare hidden i32 @luaK_stringK(%struct.FuncState*, %union.TString*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_exp2nextreg(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaX_lookahead(%struct.LexState*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @recfield(%struct.LexState*, %struct.ConsControl* nocapture) unnamed_addr #0 !dbg !3335 {
  %3 = alloca %struct.expdesc, align 8
  %4 = alloca %struct.expdesc, align 8
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3346
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !dbg !3346, !tbaa !659
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 9, !dbg !3348
  %8 = load i32, i32* %7, align 4, !dbg !3348, !tbaa !665
  %9 = bitcast %struct.expdesc* %3 to i8*, !dbg !3350
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #4, !dbg !3350
  %10 = bitcast %struct.expdesc* %4 to i8*, !dbg !3350
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #4, !dbg !3350
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !3351
  %12 = load i32, i32* %11, align 8, !dbg !3351, !tbaa !625
  %13 = icmp eq i32 %12, 285, !dbg !3353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3354
  br i1 %13, label %14, label %53, !dbg !3354

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 2, !dbg !3355
  %16 = load i32, i32* %15, align 8, !dbg !3355, !tbaa !2594
  %17 = icmp sgt i32 %16, 2147483645, !dbg !3355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3358
  br i1 %17, label %18, label %41, !dbg !3358

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 0, !dbg !3363
  %20 = load %struct.Proto*, %struct.Proto** %19, align 8, !dbg !3363, !tbaa !585
  %21 = getelementptr inbounds %struct.Proto, %struct.Proto* %20, i64 0, i32 16, !dbg !3364
  %22 = load i32, i32* %21, align 8, !dbg !3364, !tbaa !2731
  %23 = icmp eq i32 %22, 0, !dbg !3365
  %24 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 4, !dbg !3366
  %25 = load %struct.lua_State*, %struct.lua_State** %24, align 8, !dbg !3366, !tbaa !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3367
  br i1 %23, label %26, label %28, !dbg !3367

; <label>:26:                                     ; preds = %18
  %27 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 2147483645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !3368
  br label %30, !dbg !3367

; <label>:28:                                     ; preds = %18
  %29 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %22, i32 2147483645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !3369
  br label %30, !dbg !3367

; <label>:30:                                     ; preds = %28, %26
  %31 = phi i8* [ %27, %26 ], [ %29, %28 ], !dbg !3367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3367
  %32 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 3, !dbg !3371
  %33 = load %struct.LexState*, %struct.LexState** %32, align 8, !dbg !3371, !tbaa !730
  tail call void @luaX_lexerror(%struct.LexState* %33, i8* %31, i32 0) #5, !dbg !3372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3355
  %34 = load i32, i32* %11, align 8, !dbg !3374, !tbaa !625
  %35 = icmp eq i32 %34, 285, !dbg !3355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3384
  br i1 %35, label %42, label %36, !dbg !3384

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !3388
  %38 = load %struct.lua_State*, %struct.lua_State** %37, align 8, !dbg !3388, !tbaa !611
  %39 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 285) #5, !dbg !3389
  %40 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %39) #5, !dbg !3390
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %40) #5, !dbg !3391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3392
  br label %41, !dbg !3393

; <label>:41:                                     ; preds = %14, %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3394
  br label %42, !dbg !3395

; <label>:42:                                     ; preds = %41, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3395
  %43 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !3396
  %44 = bitcast %union.SemInfo* %43 to %union.TString**, !dbg !3397
  %45 = load %union.TString*, %union.TString** %44, align 8, !dbg !3397, !tbaa !766
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3400
  %46 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !dbg !3405, !tbaa !659
  %47 = tail call i32 @luaK_stringK(%struct.FuncState* %46, %union.TString* %45) #5, !dbg !3406
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2, !dbg !3411
  store i32 -1, i32* %48, align 8, !dbg !3412, !tbaa !1691
  %49 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3, !dbg !3413
  store i32 -1, i32* %49, align 4, !dbg !3414, !tbaa !1007
  %50 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3415
  store i32 4, i32* %50, align 8, !dbg !3416, !tbaa !998
  %51 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3417
  %52 = bitcast %union.anon.3* %51 to i32*, !dbg !3418
  store i32 %47, i32* %52, align 8, !dbg !3419, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3423
  br label %55, !dbg !3423

; <label>:53:                                     ; preds = %2
  call fastcc void @yindex(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3) #6, !dbg !3424
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %54 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 2, !dbg !3425
  br label %55

; <label>:55:                                     ; preds = %53, %42
  %56 = phi i32* [ %54, %53 ], [ %15, %42 ], !dbg !3425
  %57 = load i32, i32* %56, align 8, !dbg !3426, !tbaa !2594
  %58 = add nsw i32 %57, 1, !dbg !3426
  store i32 %58, i32* %56, align 8, !dbg !3426, !tbaa !2594
  %59 = load i32, i32* %11, align 8, !dbg !3433, !tbaa !625
  %60 = icmp eq i32 %59, 61, !dbg !3434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3435
  br i1 %60, label %66, label %61, !dbg !3435

; <label>:61:                                     ; preds = %55
  %62 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !3439
  %63 = load %struct.lua_State*, %struct.lua_State** %62, align 8, !dbg !3439, !tbaa !611
  %64 = call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 61) #5, !dbg !3440
  %65 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %64) #5, !dbg !3441
  call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %65) #5, !dbg !3442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3444
  br label %66, !dbg !3444

; <label>:66:                                     ; preds = %55, %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3445
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3447
  %67 = call i32 @luaK_exp2RK(%struct.FuncState* %6, %struct.expdesc* nonnull %3) #5, !dbg !3448
  %68 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #5, !dbg !3454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3455
  %69 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %1, i64 0, i32 1, !dbg !3456
  %70 = load %struct.expdesc*, %struct.expdesc** %69, align 8, !dbg !3456, !tbaa !2600
  %71 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %70, i64 0, i32 1, !dbg !3457
  %72 = bitcast %union.anon.3* %71 to i32*, !dbg !3458
  %73 = load i32, i32* %72, align 8, !dbg !3458, !tbaa !766
  %74 = call i32 @luaK_exp2RK(%struct.FuncState* %6, %struct.expdesc* nonnull %4) #5, !dbg !3459
  %75 = call i32 @luaK_codeABC(%struct.FuncState* %6, i32 9, i32 %73, i32 %67, i32 %74) #5, !dbg !3460
  store i32 %8, i32* %7, align 4, !dbg !3461, !tbaa !665
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #4, !dbg !3462
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #4, !dbg !3462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3462
  ret void, !dbg !3462
}

; Function Attrs: noredzone
declare hidden i32 @luaO_int2fb(i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_setlist(%struct.FuncState*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @yindex(%struct.LexState*, %struct.expdesc*) unnamed_addr #0 !dbg !3463 {
  tail call void @luaX_next(%struct.LexState* %0) #5, !dbg !3469
  %3 = tail call fastcc i32 @subexpr(%struct.LexState* %0, %struct.expdesc* %1, i32 0) #5, !dbg !3473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3474
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3475
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !3475, !tbaa !659
  tail call void @luaK_exp2val(%struct.FuncState* %5, %struct.expdesc* %1) #5, !dbg !3476
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !3483
  %7 = load i32, i32* %6, align 8, !dbg !3483, !tbaa !625
  %8 = icmp eq i32 %7, 93, !dbg !3484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3485
  br i1 %8, label %14, label %9, !dbg !3485

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !3489
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !dbg !3489, !tbaa !611
  %12 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 93) #5, !dbg !3490
  %13 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %12) #5, !dbg !3491
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %13) #5, !dbg !3492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3494
  br label %14, !dbg !3494

; <label>:14:                                     ; preds = %2, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3495
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3498
  ret void, !dbg !3498
}

; Function Attrs: noredzone
declare hidden i32 @luaK_exp2RK(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_exp2val(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_setreturns(%struct.FuncState*, %struct.expdesc*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @new_localvar(%struct.LexState* nocapture readonly, %union.TString*, i32) unnamed_addr #0 !dbg !3499 {
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3508
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !3508, !tbaa !659
  %6 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 13, !dbg !3510
  %7 = load i8, i8* %6, align 2, !dbg !3510, !tbaa !661
  %8 = zext i8 %7 to i32, !dbg !3510
  %9 = add nsw i32 %8, %2, !dbg !3510
  %10 = icmp sgt i32 %9, 199, !dbg !3510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3512
  br i1 %10, label %11, label %28, !dbg !3512

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 0, !dbg !3517
  %13 = load %struct.Proto*, %struct.Proto** %12, align 8, !dbg !3517, !tbaa !585
  %14 = getelementptr inbounds %struct.Proto, %struct.Proto* %13, i64 0, i32 16, !dbg !3518
  %15 = load i32, i32* %14, align 8, !dbg !3518, !tbaa !2731
  %16 = icmp eq i32 %15, 0, !dbg !3519
  %17 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 4, !dbg !3520
  %18 = load %struct.lua_State*, %struct.lua_State** %17, align 8, !dbg !3520, !tbaa !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3521
  br i1 %16, label %19, label %21, !dbg !3521

; <label>:19:                                     ; preds = %11
  %20 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !3522
  br label %23, !dbg !3521

; <label>:21:                                     ; preds = %11
  %22 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %15, i32 200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0)) #5, !dbg !3523
  br label %23, !dbg !3521

; <label>:23:                                     ; preds = %19, %21
  %24 = phi i8* [ %20, %19 ], [ %22, %21 ], !dbg !3521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3521
  %25 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 3, !dbg !3525
  %26 = load %struct.LexState*, %struct.LexState** %25, align 8, !dbg !3525, !tbaa !730
  tail call void @luaX_lexerror(%struct.LexState* %26, i8* %24, i32 0) #5, !dbg !3526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3510
  %27 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !3528, !tbaa !659
  br label %28, !dbg !3510

; <label>:28:                                     ; preds = %23, %3
  %29 = phi %struct.FuncState* [ %27, %23 ], [ %5, %3 ], !dbg !3528
  %30 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %29, i64 0, i32 0, !dbg !3542
  %31 = load %struct.Proto*, %struct.Proto** %30, align 8, !dbg !3542, !tbaa !585
  %32 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 15, !dbg !3544
  %33 = load i32, i32* %32, align 4, !dbg !3544, !tbaa !842
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %29, i64 0, i32 12, !dbg !3546
  %35 = load i16, i16* %34, align 8, !dbg !3546, !tbaa !746
  %36 = sext i16 %35 to i32, !dbg !3546
  %37 = icmp sgt i32 %33, %36, !dbg !3546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3548
  br i1 %37, label %38, label %41, !dbg !3548

; <label>:38:                                     ; preds = %28
  %39 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 7
  %40 = load %struct.LocVar*, %struct.LocVar** %39, align 8, !dbg !3549, !tbaa !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3550
  br label %80, !dbg !3550

; <label>:41:                                     ; preds = %28
  %42 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !3546
  %43 = load %struct.lua_State*, %struct.lua_State** %42, align 8, !dbg !3546, !tbaa !611
  %44 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 7, !dbg !3546
  %45 = bitcast %struct.LocVar** %44 to i8**, !dbg !3546
  %46 = load i8*, i8** %45, align 8, !dbg !3546, !tbaa !805
  %47 = tail call i8* @luaM_growaux_(%struct.lua_State* %43, i8* %46, i32* nonnull %32, i64 16, i32 32767, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0)) #5, !dbg !3546
  store i8* %47, i8** %45, align 8, !dbg !3546, !tbaa !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3546
  %48 = load i32, i32* %32, align 4, !dbg !3551, !tbaa !842
  %49 = bitcast i8* %47 to %struct.LocVar*, !dbg !3546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3550
  %50 = icmp slt i32 %33, %48, !dbg !3552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3550
  br i1 %50, label %51, label %80, !dbg !3550

; <label>:51:                                     ; preds = %41
  %52 = sext i32 %33 to i64, !dbg !3553
  %53 = sext i32 %48 to i64
  %54 = sub nsw i64 %53, %52, !dbg !3553
  %55 = xor i64 %52, -1, !dbg !3553
  %56 = add nsw i64 %55, %53, !dbg !3553
  %57 = and i64 %54, 3, !dbg !3553
  %58 = icmp eq i64 %57, 0, !dbg !3553
  br i1 %58, label %66, label %59, !dbg !3553

; <label>:59:                                     ; preds = %51, %59
  %60 = phi i64 [ %62, %59 ], [ %52, %51 ]
  %61 = phi i64 [ %64, %59 ], [ %57, %51 ]
  %62 = add nsw i64 %60, 1, !dbg !3553
  %63 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %49, i64 %60, i32 0, !dbg !3554
  store %union.TString* null, %union.TString** %63, align 8, !dbg !3555, !tbaa !3556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3550
  %64 = add i64 %61, -1, !dbg !3550
  %65 = icmp eq i64 %64, 0, !dbg !3550
  br i1 %65, label %66, label %59, !dbg !3550, !llvm.loop !3557

; <label>:66:                                     ; preds = %59, %51
  %67 = phi i64 [ %52, %51 ], [ %62, %59 ]
  %68 = icmp ult i64 %56, 3, !dbg !3553
  br i1 %68, label %80, label %69, !dbg !3553

; <label>:69:                                     ; preds = %66, %69
  %70 = phi i64 [ %77, %69 ], [ %67, %66 ]
  %71 = add nsw i64 %70, 1, !dbg !3553
  %72 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %49, i64 %70, i32 0, !dbg !3554
  store %union.TString* null, %union.TString** %72, align 8, !dbg !3555, !tbaa !3556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3550
  %73 = add nsw i64 %70, 2, !dbg !3553
  %74 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %49, i64 %71, i32 0, !dbg !3554
  store %union.TString* null, %union.TString** %74, align 8, !dbg !3555, !tbaa !3556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3550
  %75 = add nsw i64 %70, 3, !dbg !3553
  %76 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %49, i64 %73, i32 0, !dbg !3554
  store %union.TString* null, %union.TString** %76, align 8, !dbg !3555, !tbaa !3556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3550
  %77 = add nsw i64 %70, 4, !dbg !3553
  %78 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %49, i64 %75, i32 0, !dbg !3554
  store %union.TString* null, %union.TString** %78, align 8, !dbg !3555, !tbaa !3556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3550
  %79 = icmp eq i64 %77, %53, !dbg !3552
  br i1 %79, label %80, label %69, !dbg !3550, !llvm.loop !3558

; <label>:80:                                     ; preds = %66, %69, %41, %38
  %81 = phi %struct.LocVar* [ %49, %41 ], [ %40, %38 ], [ %49, %69 ], [ %49, %66 ], !dbg !3549
  %82 = load i16, i16* %34, align 8, !dbg !3561, !tbaa !746
  %83 = sext i16 %82 to i64, !dbg !3562
  %84 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %81, i64 %83, i32 0, !dbg !3563
  store %union.TString* %1, %union.TString** %84, align 8, !dbg !3564, !tbaa !3556
  %85 = bitcast %union.TString* %1 to %union.GCObject*, !dbg !3565
  %86 = getelementptr inbounds %union.TString, %union.TString* %1, i64 0, i32 0, i32 2, !dbg !3565
  %87 = load i8, i8* %86, align 1, !dbg !3565, !tbaa !766
  %88 = and i8 %87, 3, !dbg !3565
  %89 = icmp eq i8 %88, 0, !dbg !3565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3565
  br i1 %89, label %100, label %90, !dbg !3565

; <label>:90:                                     ; preds = %80
  %91 = getelementptr inbounds %struct.Proto, %struct.Proto* %31, i64 0, i32 2, !dbg !3565
  %92 = load i8, i8* %91, align 1, !dbg !3565, !tbaa !766
  %93 = and i8 %92, 4, !dbg !3565
  %94 = icmp eq i8 %93, 0, !dbg !3565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3568
  br i1 %94, label %100, label %95, !dbg !3568

; <label>:95:                                     ; preds = %90
  %96 = bitcast %struct.Proto* %31 to %union.GCObject*, !dbg !3565
  %97 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !3565
  %98 = load %struct.lua_State*, %struct.lua_State** %97, align 8, !dbg !3565, !tbaa !611
  tail call void @luaC_barrierf(%struct.lua_State* %98, %union.GCObject* %96, %union.GCObject* %85) #5, !dbg !3565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3565
  %99 = load i16, i16* %34, align 8, !dbg !3569, !tbaa !746
  br label %100, !dbg !3565

; <label>:100:                                    ; preds = %80, %90, %95
  %101 = phi i16 [ %82, %90 ], [ %82, %80 ], [ %99, %95 ], !dbg !3569
  %102 = add i16 %101, 1, !dbg !3569
  store i16 %102, i16* %34, align 8, !dbg !3569, !tbaa !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3570
  %103 = load i8, i8* %6, align 2, !dbg !3571, !tbaa !661
  %104 = zext i8 %103 to i32, !dbg !3572
  %105 = add nsw i32 %104, %2, !dbg !3573
  %106 = sext i32 %105 to i64, !dbg !3574
  %107 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 15, i64 %106, !dbg !3574
  store i16 %101, i16* %107, align 2, !dbg !3575, !tbaa !807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3576
  ret void, !dbg !3576
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
define internal fastcc void @funcargs(%struct.LexState*, %struct.expdesc* nocapture) unnamed_addr #0 !dbg !3577 {
  %3 = alloca %struct.expdesc, align 8
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3588
  %5 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !3588, !tbaa !659
  %6 = bitcast %struct.expdesc* %3 to i8*, !dbg !3590
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #4, !dbg !3590
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !3591
  %8 = load i32, i32* %7, align 4, !dbg !3591, !tbaa !891
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !3593
  %10 = load i32, i32* %9, align 8, !dbg !3593, !tbaa !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3594
  switch i32 %10, label %43 [
    i32 40, label %11
    i32 123, label %32
    i32 286, label %33
  ], !dbg !3594

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 2, !dbg !3595
  %13 = load i32, i32* %12, align 8, !dbg !3595, !tbaa !3599
  %14 = icmp eq i32 %8, %13, !dbg !3600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3601
  br i1 %14, label %16, label %15, !dbg !3601

; <label>:15:                                     ; preds = %11
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0)) #5, !dbg !3602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3602
  br label %16, !dbg !3602

; <label>:16:                                     ; preds = %11, %15
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3603
  %17 = load i32, i32* %9, align 8, !dbg !3604, !tbaa !625
  %18 = icmp eq i32 %17, 41, !dbg !3606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3607
  br i1 %18, label %19, label %21, !dbg !3607

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3608
  store i32 0, i32* %20, align 8, !dbg !3609, !tbaa !998
  br label %31, !dbg !3610

; <label>:21:                                     ; preds = %16
  %22 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3, i32 0) #5, !dbg !3620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3622
  %23 = load i32, i32* %9, align 8, !dbg !3626, !tbaa !625
  %24 = icmp eq i32 %23, 44, !dbg !3627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3628
  br i1 %24, label %25, label %30, !dbg !3628

; <label>:25:                                     ; preds = %21, %25
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3622
  %26 = load %struct.FuncState*, %struct.FuncState** %4, align 8, !dbg !3632, !tbaa !659
  call void @luaK_exp2nextreg(%struct.FuncState* %26, %struct.expdesc* nonnull %3) #5, !dbg !3633
  %27 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3, i32 0) #5, !dbg !3637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3622
  %28 = load i32, i32* %9, align 8, !dbg !3626, !tbaa !625
  %29 = icmp eq i32 %28, 44, !dbg !3627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3628
  br i1 %29, label %25, label %30, !dbg !3628, !llvm.loop !1399

; <label>:30:                                     ; preds = %25, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3640
  call void @luaK_setreturns(%struct.FuncState* %5, %struct.expdesc* nonnull %3, i32 -1) #5, !dbg !3641
  br label %31

; <label>:31:                                     ; preds = %30, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call fastcc void @check_match(%struct.LexState* nonnull %0, i32 41, i32 40, i32 %8) #6, !dbg !3642
  br label %44, !dbg !3643

; <label>:32:                                     ; preds = %2
  call fastcc void @constructor(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %3) #6, !dbg !3644
  br label %44, !dbg !3646

; <label>:33:                                     ; preds = %2
  %34 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !3647
  %35 = bitcast %union.SemInfo* %34 to %union.TString**, !dbg !3649
  %36 = load %union.TString*, %union.TString** %35, align 8, !dbg !3649, !tbaa !766
  %37 = tail call i32 @luaK_stringK(%struct.FuncState* %5, %union.TString* %36) #5, !dbg !3654
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 2, !dbg !3659
  store i32 -1, i32* %38, align 8, !dbg !3660, !tbaa !1691
  %39 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 3, !dbg !3661
  store i32 -1, i32* %39, align 4, !dbg !3662, !tbaa !1007
  %40 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3663
  store i32 4, i32* %40, align 8, !dbg !3664, !tbaa !998
  %41 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 1, !dbg !3665
  %42 = bitcast %union.anon.3* %41 to i32*, !dbg !3666
  store i32 %37, i32* %42, align 8, !dbg !3667, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3669
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !3670
  br label %44, !dbg !3671

; <label>:43:                                     ; preds = %2
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0)) #5, !dbg !3672
  br label %70, !dbg !3674

; <label>:44:                                     ; preds = %33, %32, %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3675
  %45 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 1, !dbg !3676
  %46 = bitcast %union.anon.3* %45 to i32*, !dbg !3677
  %47 = load i32, i32* %46, align 8, !dbg !3677, !tbaa !766
  %48 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !3679
  %49 = load i32, i32* %48, align 8, !dbg !3679, !tbaa !998
  %50 = icmp eq i32 %49, 13, !dbg !3679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3679
  br i1 %50, label %53, label %51, !dbg !3679

; <label>:51:                                     ; preds = %44
  %52 = icmp eq i32 %49, 14, !dbg !3679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3681
  br i1 %52, label %53, label %55, !dbg !3681

; <label>:53:                                     ; preds = %51, %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3683
  %54 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 9, !dbg !3684
  br label %62, !dbg !3683

; <label>:55:                                     ; preds = %51
  %56 = icmp eq i32 %49, 0, !dbg !3685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3688
  br i1 %56, label %58, label %57, !dbg !3688

; <label>:57:                                     ; preds = %55
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* nonnull %3) #5, !dbg !3689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3689
  br label %58, !dbg !3689

; <label>:58:                                     ; preds = %55, %57
  %59 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %5, i64 0, i32 9, !dbg !3690
  %60 = load i32, i32* %59, align 4, !dbg !3690, !tbaa !665
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %61 = sub i32 %60, %47
  br label %62

; <label>:62:                                     ; preds = %58, %53
  %63 = phi i32* [ %59, %58 ], [ %54, %53 ], !dbg !3684
  %64 = phi i32 [ %61, %58 ], [ 0, %53 ]
  %65 = call i32 @luaK_codeABC(%struct.FuncState* %5, i32 28, i32 %47, i32 %64, i32 2) #5, !dbg !3691
  %66 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 2, !dbg !3696
  store i32 -1, i32* %66, align 8, !dbg !3697, !tbaa !1691
  %67 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 3, !dbg !3698
  store i32 -1, i32* %67, align 4, !dbg !3699, !tbaa !1007
  %68 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %1, i64 0, i32 0, !dbg !3700
  store i32 13, i32* %68, align 8, !dbg !3701, !tbaa !998
  store i32 %65, i32* %46, align 8, !dbg !3702, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3703
  call void @luaK_fixline(%struct.FuncState* %5, i32 %8) #5, !dbg !3704
  %69 = add nsw i32 %47, 1, !dbg !3705
  store i32 %69, i32* %63, align 4, !dbg !3706, !tbaa !665
  br label %70, !dbg !3707

; <label>:70:                                     ; preds = %62, %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3708
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #4, !dbg !3707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3707
  ret void, !dbg !3707
}

; Function Attrs: noredzone
declare hidden void @luaK_dischargevars(%struct.FuncState*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @singlevaraux(%struct.FuncState*, %union.TString*, %struct.expdesc* nocapture, i32) unnamed_addr #0 !dbg !3709 {
  %5 = icmp eq %struct.FuncState* %0, null, !dbg !3724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3725
  br i1 %5, label %6, label %12, !dbg !3725

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !3731
  store i32 -1, i32* %7, align 8, !dbg !3732, !tbaa !1691
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !3733
  store i32 -1, i32* %8, align 4, !dbg !3734, !tbaa !1007
  %9 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !3735
  store i32 8, i32* %9, align 8, !dbg !3736, !tbaa !998
  %10 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !3737
  %11 = bitcast %union.anon.3* %10 to i32*, !dbg !3738
  store i32 255, i32* %11, align 8, !dbg !3739, !tbaa !766
  br label %213, !dbg !3740

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3751
  %14 = load i8, i8* %13, align 2, !dbg !3751, !tbaa !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3753
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 0
  %16 = zext i8 %14 to i64, !dbg !3753
  br label %17, !dbg !3753

; <label>:17:                                     ; preds = %21, %12
  %18 = phi i64 [ %19, %21 ], [ %16, %12 ]
  %19 = add nsw i64 %18, -1, !dbg !3754
  %20 = icmp sgt i64 %18, 0, !dbg !3757
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3758
  br i1 %20, label %21, label %31, !dbg !3758

; <label>:21:                                     ; preds = %17
  %22 = load %struct.Proto*, %struct.Proto** %15, align 8, !dbg !3759, !tbaa !585
  %23 = getelementptr inbounds %struct.Proto, %struct.Proto* %22, i64 0, i32 7, !dbg !3759
  %24 = load %struct.LocVar*, %struct.LocVar** %23, align 8, !dbg !3759, !tbaa !805
  %25 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 15, i64 %19, !dbg !3759
  %26 = load i16, i16* %25, align 2, !dbg !3759, !tbaa !807
  %27 = zext i16 %26 to i64, !dbg !3759
  %28 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %24, i64 %27, i32 0, !dbg !3762
  %29 = load %union.TString*, %union.TString** %28, align 8, !dbg !3762, !tbaa !3556
  %30 = icmp eq %union.TString* %29, %1, !dbg !3763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3754
  br i1 %30, label %32, label %17, !dbg !3764, !llvm.loop !3765

; <label>:31:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3771
  br label %60, !dbg !3771

; <label>:32:                                     ; preds = %21
  %33 = trunc i64 %19 to i32, !dbg !3769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3769
  %34 = icmp sgt i32 %33, -1, !dbg !3772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3771
  br i1 %34, label %35, label %60, !dbg !3771

; <label>:35:                                     ; preds = %32
  %36 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 2, !dbg !3779
  store i32 -1, i32* %36, align 8, !dbg !3780, !tbaa !1691
  %37 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 3, !dbg !3781
  store i32 -1, i32* %37, align 4, !dbg !3782, !tbaa !1007
  %38 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !3783
  store i32 6, i32* %38, align 8, !dbg !3784, !tbaa !998
  %39 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !3785
  %40 = bitcast %union.anon.3* %39 to i32*, !dbg !3786
  store i32 %33, i32* %40, align 8, !dbg !3787, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3788
  %41 = icmp eq i32 %3, 0, !dbg !3789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3791
  br i1 %41, label %42, label %213, !dbg !3791

; <label>:42:                                     ; preds = %35
  %43 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5, !dbg !3802
  %44 = load %struct.BlockCnt*, %struct.BlockCnt** %43, align 8, !dbg !3802, !tbaa !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3804
  %45 = icmp eq %struct.BlockCnt* %44, null, !dbg !3805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3806
  br i1 %45, label %56, label %46, !dbg !3806

; <label>:46:                                     ; preds = %42, %52
  %47 = phi %struct.BlockCnt* [ %54, %52 ], [ %44, %42 ]
  %48 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %47, i64 0, i32 2, !dbg !3807
  %49 = load i8, i8* %48, align 4, !dbg !3807, !tbaa !1034
  %50 = zext i8 %49 to i32, !dbg !3808
  %51 = icmp sgt i32 %50, %33, !dbg !3809
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3804
  br i1 %51, label %52, label %57, !dbg !3804

; <label>:52:                                     ; preds = %46
  %53 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %47, i64 0, i32 0, !dbg !3810
  %54 = load %struct.BlockCnt*, %struct.BlockCnt** %53, align 8, !dbg !3810, !tbaa !1040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3804
  %55 = icmp eq %struct.BlockCnt* %54, null, !dbg !3805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3806
  br i1 %55, label %56, label %46, !dbg !3806, !llvm.loop !3811

; <label>:56:                                     ; preds = %52, %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3804
  br label %59

; <label>:57:                                     ; preds = %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3814
  %58 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %47, i64 0, i32 3, !dbg !3815
  store i8 1, i8* %58, align 1, !dbg !3817, !tbaa !1037
  br label %59, !dbg !3818

; <label>:59:                                     ; preds = %56, %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3821
  br label %213, !dbg !3821

; <label>:60:                                     ; preds = %31, %32
  %61 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 2, !dbg !3822
  %62 = load %struct.FuncState*, %struct.FuncState** %61, align 8, !dbg !3822, !tbaa !727
  %63 = tail call fastcc i32 @singlevaraux(%struct.FuncState* %62, %union.TString* %1, %struct.expdesc* %2, i32 0) #6, !dbg !3825
  %64 = icmp eq i32 %63, 8, !dbg !3826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3827
  br i1 %64, label %213, label %65, !dbg !3827

; <label>:65:                                     ; preds = %60
  %66 = load %struct.Proto*, %struct.Proto** %15, align 8, !dbg !3842, !tbaa !585
  %67 = getelementptr inbounds %struct.Proto, %struct.Proto* %66, i64 0, i32 10, !dbg !3844
  %68 = load i32, i32* %67, align 8, !dbg !3844, !tbaa !850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3847
  %69 = getelementptr inbounds %struct.Proto, %struct.Proto* %66, i64 0, i32 19, !dbg !3849
  %70 = load i8, i8* %69, align 8, !dbg !3849, !tbaa !848
  %71 = icmp eq i8 %70, 0, !dbg !3851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3852
  br i1 %71, label %72, label %73, !dbg !3852

; <label>:72:                                     ; preds = %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3853
  br label %114, !dbg !3853

; <label>:73:                                     ; preds = %65
  %74 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1
  %77 = bitcast %union.anon.3* %76 to i32*
  %78 = zext i8 %70 to i64
  br label %79, !dbg !3852

; <label>:79:                                     ; preds = %93, %73
  %80 = phi i64 [ 0, %73 ], [ %94, %93 ]
  %81 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 14, i64 %80, i32 0, !dbg !3854
  %82 = load i8, i8* %81, align 1, !dbg !3854, !tbaa !3125
  %83 = zext i8 %82 to i32, !dbg !3857
  %84 = icmp eq i32 %75, %83, !dbg !3858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3859
  br i1 %84, label %85, label %93, !dbg !3859

; <label>:85:                                     ; preds = %79
  %86 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 14, i64 %80, i32 1, !dbg !3860
  %87 = load i8, i8* %86, align 1, !dbg !3860, !tbaa !3131
  %88 = zext i8 %87 to i32, !dbg !3861
  %89 = load i32, i32* %77, align 8, !dbg !3862, !tbaa !766
  %90 = icmp eq i32 %89, %88, !dbg !3863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3864
  br i1 %90, label %91, label %93, !dbg !3864

; <label>:91:                                     ; preds = %85
  %92 = trunc i64 %80 to i32, !dbg !3846
  br label %209, !dbg !3865

; <label>:93:                                     ; preds = %85, %79
  %94 = add nuw nsw i64 %80, 1, !dbg !3867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3868
  %95 = icmp ult i64 %94, %78, !dbg !3851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3852
  br i1 %95, label %79, label %96, !dbg !3852, !llvm.loop !3869

; <label>:96:                                     ; preds = %93
  %97 = icmp ugt i8 %70, 59, !dbg !3872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3853
  br i1 %97, label %98, label %114, !dbg !3853

; <label>:98:                                     ; preds = %96
  %99 = getelementptr inbounds %struct.Proto, %struct.Proto* %66, i64 0, i32 16, !dbg !3878
  %100 = load i32, i32* %99, align 8, !dbg !3878, !tbaa !2731
  %101 = icmp eq i32 %100, 0, !dbg !3879
  %102 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4, !dbg !3880
  %103 = load %struct.lua_State*, %struct.lua_State** %102, align 8, !dbg !3880, !tbaa !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3881
  br i1 %101, label %104, label %106, !dbg !3881

; <label>:104:                                    ; preds = %98
  %105 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %103, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)) #5, !dbg !3882
  br label %108, !dbg !3881

; <label>:106:                                    ; preds = %98
  %107 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %100, i32 60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)) #5, !dbg !3883
  br label %108, !dbg !3881

; <label>:108:                                    ; preds = %106, %104
  %109 = phi i8* [ %105, %104 ], [ %107, %106 ], !dbg !3881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3881
  %110 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3885
  %111 = load %struct.LexState*, %struct.LexState** %110, align 8, !dbg !3885, !tbaa !730
  tail call void @luaX_lexerror(%struct.LexState* %111, i8* %109, i32 0) #5, !dbg !3886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3872
  %112 = load i8, i8* %69, align 8, !dbg !3888, !tbaa !848
  %113 = load i32, i32* %67, align 8, !dbg !3888, !tbaa !850
  br label %114, !dbg !3872

; <label>:114:                                    ; preds = %108, %96, %72
  %115 = phi i32 [ %113, %108 ], [ %68, %96 ], [ %68, %72 ], !dbg !3888
  %116 = phi i8 [ %112, %108 ], [ %70, %96 ], [ 0, %72 ], !dbg !3888
  %117 = zext i8 %116 to i32, !dbg !3888
  %118 = icmp sgt i32 %115, %117, !dbg !3888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3890
  br i1 %118, label %119, label %122, !dbg !3890

; <label>:119:                                    ; preds = %114
  %120 = getelementptr inbounds %struct.Proto, %struct.Proto* %66, i64 0, i32 8
  %121 = load %union.TString**, %union.TString*** %120, align 8, !dbg !3891, !tbaa !849
  br label %131, !dbg !3890

; <label>:122:                                    ; preds = %114
  %123 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4, !dbg !3888
  %124 = load %struct.lua_State*, %struct.lua_State** %123, align 8, !dbg !3888, !tbaa !733
  %125 = getelementptr inbounds %struct.Proto, %struct.Proto* %66, i64 0, i32 8, !dbg !3888
  %126 = bitcast %union.TString*** %125 to i8**, !dbg !3888
  %127 = load i8*, i8** %126, align 8, !dbg !3888, !tbaa !849
  %128 = tail call i8* @luaM_growaux_(%struct.lua_State* %124, i8* %127, i32* nonnull %67, i64 8, i32 2147483645, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)) #5, !dbg !3888
  store i8* %128, i8** %126, align 8, !dbg !3888, !tbaa !849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3888
  %129 = load i32, i32* %67, align 8, !dbg !3892, !tbaa !850
  %130 = bitcast i8* %128 to %union.TString**, !dbg !3888
  br label %131, !dbg !3888

; <label>:131:                                    ; preds = %122, %119
  %132 = phi %union.TString*** [ %120, %119 ], [ %125, %122 ], !dbg !3891
  %133 = phi %union.TString** [ %121, %119 ], [ %130, %122 ], !dbg !3891
  %134 = phi i32 [ %115, %119 ], [ %129, %122 ], !dbg !3892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3893
  %135 = icmp slt i32 %68, %134, !dbg !3894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3893
  br i1 %135, label %136, label %174, !dbg !3893

; <label>:136:                                    ; preds = %131
  %137 = sext i32 %68 to i64, !dbg !3895
  %138 = sext i32 %134 to i64
  %139 = sub nsw i64 %138, %137, !dbg !3895
  %140 = xor i64 %137, -1, !dbg !3895
  %141 = add nsw i64 %140, %138, !dbg !3895
  %142 = and i64 %139, 3, !dbg !3895
  %143 = icmp eq i64 %142, 0, !dbg !3895
  br i1 %143, label %153, label %144, !dbg !3895

; <label>:144:                                    ; preds = %136, %144
  %145 = phi i64 [ %148, %144 ], [ %137, %136 ]
  %146 = phi %union.TString** [ %150, %144 ], [ %133, %136 ]
  %147 = phi i64 [ %151, %144 ], [ %142, %136 ]
  %148 = add nsw i64 %145, 1, !dbg !3895
  %149 = getelementptr inbounds %union.TString*, %union.TString** %146, i64 %145, !dbg !3896
  store %union.TString* null, %union.TString** %149, align 8, !dbg !3897, !tbaa !3086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3893
  %150 = load %union.TString**, %union.TString*** %132, align 8, !dbg !3891, !tbaa !849
  %151 = add i64 %147, -1, !dbg !3893
  %152 = icmp eq i64 %151, 0, !dbg !3893
  br i1 %152, label %153, label %144, !dbg !3893, !llvm.loop !3898

; <label>:153:                                    ; preds = %144, %136
  %154 = phi %union.TString** [ undef, %136 ], [ %150, %144 ]
  %155 = phi i64 [ %137, %136 ], [ %148, %144 ]
  %156 = phi %union.TString** [ %133, %136 ], [ %150, %144 ]
  %157 = icmp ult i64 %141, 3, !dbg !3895
  br i1 %157, label %174, label %158, !dbg !3895

; <label>:158:                                    ; preds = %153, %158
  %159 = phi i64 [ %170, %158 ], [ %155, %153 ]
  %160 = phi %union.TString** [ %172, %158 ], [ %156, %153 ]
  %161 = add nsw i64 %159, 1, !dbg !3895
  %162 = getelementptr inbounds %union.TString*, %union.TString** %160, i64 %159, !dbg !3896
  store %union.TString* null, %union.TString** %162, align 8, !dbg !3897, !tbaa !3086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3893
  %163 = load %union.TString**, %union.TString*** %132, align 8, !dbg !3891, !tbaa !849
  %164 = add nsw i64 %159, 2, !dbg !3895
  %165 = getelementptr inbounds %union.TString*, %union.TString** %163, i64 %161, !dbg !3896
  store %union.TString* null, %union.TString** %165, align 8, !dbg !3897, !tbaa !3086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3893
  %166 = load %union.TString**, %union.TString*** %132, align 8, !dbg !3891, !tbaa !849
  %167 = add nsw i64 %159, 3, !dbg !3895
  %168 = getelementptr inbounds %union.TString*, %union.TString** %166, i64 %164, !dbg !3896
  store %union.TString* null, %union.TString** %168, align 8, !dbg !3897, !tbaa !3086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3893
  %169 = load %union.TString**, %union.TString*** %132, align 8, !dbg !3891, !tbaa !849
  %170 = add nsw i64 %159, 4, !dbg !3895
  %171 = getelementptr inbounds %union.TString*, %union.TString** %169, i64 %167, !dbg !3896
  store %union.TString* null, %union.TString** %171, align 8, !dbg !3897, !tbaa !3086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3893
  %172 = load %union.TString**, %union.TString*** %132, align 8, !dbg !3891, !tbaa !849
  %173 = icmp eq i64 %170, %138, !dbg !3894
  br i1 %173, label %174, label %158, !dbg !3893, !llvm.loop !3899

; <label>:174:                                    ; preds = %153, %158, %131
  %175 = phi %union.TString** [ %133, %131 ], [ %154, %153 ], [ %172, %158 ], !dbg !3891
  %176 = load i8, i8* %69, align 8, !dbg !3902, !tbaa !848
  %177 = zext i8 %176 to i64, !dbg !3903
  %178 = getelementptr inbounds %union.TString*, %union.TString** %175, i64 %177, !dbg !3903
  store %union.TString* %1, %union.TString** %178, align 8, !dbg !3904, !tbaa !3086
  %179 = bitcast %union.TString* %1 to %union.GCObject*, !dbg !3905
  %180 = getelementptr inbounds %union.TString, %union.TString* %1, i64 0, i32 0, i32 2, !dbg !3905
  %181 = load i8, i8* %180, align 1, !dbg !3905, !tbaa !766
  %182 = and i8 %181, 3, !dbg !3905
  %183 = icmp eq i8 %182, 0, !dbg !3905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3905
  br i1 %183, label %195, label %184, !dbg !3905

; <label>:184:                                    ; preds = %174
  %185 = getelementptr inbounds %struct.Proto, %struct.Proto* %66, i64 0, i32 2, !dbg !3905
  %186 = load i8, i8* %185, align 1, !dbg !3905, !tbaa !766
  %187 = and i8 %186, 4, !dbg !3905
  %188 = icmp eq i8 %187, 0, !dbg !3905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3908
  br i1 %188, label %195, label %189, !dbg !3908

; <label>:189:                                    ; preds = %184
  %190 = bitcast %struct.Proto* %66 to %union.GCObject*, !dbg !3905
  %191 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 4, !dbg !3905
  %192 = load %struct.lua_State*, %struct.lua_State** %191, align 8, !dbg !3905, !tbaa !733
  tail call void @luaC_barrierf(%struct.lua_State* %192, %union.GCObject* %190, %union.GCObject* %179) #5, !dbg !3905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3905
  %193 = load i8, i8* %69, align 8, !dbg !3909, !tbaa !848
  %194 = zext i8 %193 to i64, !dbg !3910
  br label %195, !dbg !3905

; <label>:195:                                    ; preds = %189, %184, %174
  %196 = phi i64 [ %177, %184 ], [ %177, %174 ], [ %194, %189 ], !dbg !3910
  %197 = phi i8 [ %176, %184 ], [ %176, %174 ], [ %193, %189 ], !dbg !3909
  %198 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 0, !dbg !3911
  %199 = load i32, i32* %198, align 8, !dbg !3911, !tbaa !998
  %200 = trunc i32 %199 to i8, !dbg !3911
  %201 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 14, i64 %196, i32 0, !dbg !3912
  store i8 %200, i8* %201, align 1, !dbg !3913, !tbaa !3125
  %202 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %2, i64 0, i32 1, !dbg !3914
  %203 = bitcast %union.anon.3* %202 to i32*, !dbg !3914
  %204 = load i32, i32* %203, align 8, !dbg !3914, !tbaa !766
  %205 = trunc i32 %204 to i8, !dbg !3914
  %206 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 14, i64 %196, i32 1, !dbg !3915
  store i8 %205, i8* %206, align 1, !dbg !3916, !tbaa !3131
  %207 = add i8 %197, 1, !dbg !3917
  store i8 %207, i8* %69, align 8, !dbg !3917, !tbaa !848
  %208 = zext i8 %197 to i32, !dbg !3918
  br label %209, !dbg !3919

; <label>:209:                                    ; preds = %91, %195
  %210 = phi i32* [ %74, %91 ], [ %198, %195 ], !dbg !3920
  %211 = phi i32* [ %77, %91 ], [ %203, %195 ], !dbg !3921
  %212 = phi i32 [ %92, %91 ], [ %208, %195 ], !dbg !3891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3923
  store i32 %212, i32* %211, align 8, !dbg !3924, !tbaa !766
  store i32 7, i32* %210, align 8, !dbg !3925, !tbaa !998
  br label %213, !dbg !3926

; <label>:213:                                    ; preds = %209, %35, %59, %60, %6
  %214 = phi i32 [ 8, %6 ], [ 7, %209 ], [ 6, %35 ], [ 6, %59 ], [ 8, %60 ], !dbg !3927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3928
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3929
  ret i32 %214, !dbg !3929
}

; Function Attrs: noredzone
declare hidden void @luaK_fixline(%struct.FuncState*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden i32 @luaK_getlabel(%struct.FuncState*) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_patchlist(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @leaveblock(%struct.FuncState*) unnamed_addr #0 !dbg !3930 {
  %2 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 5, !dbg !3937
  %3 = load %struct.BlockCnt*, %struct.BlockCnt** %2, align 8, !dbg !3937, !tbaa !751
  %4 = bitcast %struct.BlockCnt* %3 to i64*, !dbg !3939
  %5 = load i64, i64* %4, align 8, !dbg !3939, !tbaa !1040
  %6 = bitcast %struct.BlockCnt** %2 to i64*, !dbg !3940
  store i64 %5, i64* %6, align 8, !dbg !3940, !tbaa !751
  %7 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 3, !dbg !3941
  %8 = load %struct.LexState*, %struct.LexState** %7, align 8, !dbg !3941, !tbaa !730
  %9 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 2, !dbg !3942
  %10 = load i8, i8* %9, align 4, !dbg !3942, !tbaa !1034
  %11 = zext i8 %10 to i32, !dbg !3943
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %8, i64 0, i32 5, !dbg !3947
  %13 = load %struct.FuncState*, %struct.FuncState** %12, align 8, !dbg !3947, !tbaa !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3949
  %14 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %13, i64 0, i32 13, !dbg !3950
  %15 = load i8, i8* %14, align 2, !dbg !3950, !tbaa !661
  %16 = icmp ugt i8 %15, %10, !dbg !3951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3949
  br i1 %16, label %17, label %58, !dbg !3949

; <label>:17:                                     ; preds = %1
  %18 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %13, i64 0, i32 6
  %19 = load i32, i32* %18, align 8, !tbaa !804
  %20 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %13, i64 0, i32 0
  %21 = load %struct.Proto*, %struct.Proto** %20, align 8, !tbaa !585
  %22 = getelementptr inbounds %struct.Proto, %struct.Proto* %21, i64 0, i32 7
  %23 = load %struct.LocVar*, %struct.LocVar** %22, align 8, !tbaa !805
  %24 = zext i8 %15 to i64, !dbg !3949
  %25 = sub i8 %15, %10, !dbg !3949
  %26 = and i8 %25, 1, !dbg !3949
  %27 = icmp eq i8 %26, 0, !dbg !3949
  br i1 %27, label %36, label %28, !dbg !3949

; <label>:28:                                     ; preds = %17
  %29 = add i8 %15, -1, !dbg !3952
  store i8 %29, i8* %14, align 2, !dbg !3952, !tbaa !661
  %30 = zext i8 %29 to i64, !dbg !3952
  %31 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %13, i64 0, i32 15, i64 %30, !dbg !3952
  %32 = load i16, i16* %31, align 2, !dbg !3952, !tbaa !807
  %33 = zext i16 %32 to i64, !dbg !3952
  %34 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %23, i64 %33, i32 2, !dbg !3953
  store i32 %19, i32* %34, align 4, !dbg !3954, !tbaa !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3949
  %35 = add nsw i64 %24, -1, !dbg !3952
  br label %36, !dbg !3949

; <label>:36:                                     ; preds = %17, %28
  %37 = phi i64 [ %24, %17 ], [ %35, %28 ]
  %38 = add i8 %10, 1, !dbg !3949
  %39 = icmp eq i8 %15, %38, !dbg !3949
  br i1 %39, label %58, label %40, !dbg !3949

; <label>:40:                                     ; preds = %36, %40
  %41 = phi i64 [ %57, %40 ], [ %37, %36 ]
  %42 = trunc i64 %41 to i8, !dbg !3952
  %43 = add i8 %42, -1, !dbg !3952
  store i8 %43, i8* %14, align 2, !dbg !3952, !tbaa !661
  %44 = zext i8 %43 to i64, !dbg !3952
  %45 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %13, i64 0, i32 15, i64 %44, !dbg !3952
  %46 = load i16, i16* %45, align 2, !dbg !3952, !tbaa !807
  %47 = zext i16 %46 to i64, !dbg !3952
  %48 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %23, i64 %47, i32 2, !dbg !3953
  store i32 %19, i32* %48, align 4, !dbg !3954, !tbaa !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3949
  %49 = trunc i64 %41 to i8, !dbg !3952
  %50 = add i8 %49, -2, !dbg !3952
  store i8 %50, i8* %14, align 2, !dbg !3952, !tbaa !661
  %51 = zext i8 %50 to i64, !dbg !3952
  %52 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %13, i64 0, i32 15, i64 %51, !dbg !3952
  %53 = load i16, i16* %52, align 2, !dbg !3952, !tbaa !807
  %54 = zext i16 %53 to i64, !dbg !3952
  %55 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %23, i64 %54, i32 2, !dbg !3953
  store i32 %19, i32* %55, align 4, !dbg !3954, !tbaa !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3949
  %56 = icmp ugt i8 %50, %10, !dbg !3951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3949
  %57 = add nsw i64 %41, -2, !dbg !3952
  br i1 %56, label %40, label %58, !dbg !3949, !llvm.loop !812

; <label>:58:                                     ; preds = %36, %40, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3955
  %59 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 3, !dbg !3956
  %60 = load i8, i8* %59, align 1, !dbg !3956, !tbaa !1037
  %61 = icmp eq i8 %60, 0, !dbg !3958
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3959
  br i1 %61, label %64, label %62, !dbg !3959

; <label>:62:                                     ; preds = %58
  %63 = tail call i32 @luaK_codeABC(%struct.FuncState* %0, i32 35, i32 %11, i32 0, i32 0) #5, !dbg !3960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3960
  br label %64, !dbg !3960

; <label>:64:                                     ; preds = %58, %62
  %65 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 13, !dbg !3961
  %66 = load i8, i8* %65, align 2, !dbg !3961, !tbaa !661
  %67 = zext i8 %66 to i32, !dbg !3962
  %68 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %0, i64 0, i32 9, !dbg !3963
  store i32 %67, i32* %68, align 4, !dbg !3964, !tbaa !665
  %69 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %3, i64 0, i32 1, !dbg !3965
  %70 = load i32, i32* %69, align 8, !dbg !3965, !tbaa !1026
  tail call void @luaK_patchtohere(%struct.FuncState* %0, i32 %70) #5, !dbg !3966
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3967
  ret void, !dbg !3967
}

; Function Attrs: noredzone
declare hidden i32 @luaK_numberK(%struct.FuncState*, double) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @forbody(%struct.LexState*, i32, i32, i32, i32) unnamed_addr #0 !dbg !3968 {
  %6 = alloca %struct.BlockCnt, align 8
  %7 = bitcast %struct.BlockCnt* %6 to i8*, !dbg !3986
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #4, !dbg !3986
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !3987
  %9 = load %struct.FuncState*, %struct.FuncState** %8, align 8, !dbg !3987, !tbaa !659
  %10 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 13, !dbg !3993
  %11 = load i8, i8* %10, align 2, !dbg !3993, !tbaa !661
  %12 = add i8 %11, 3, !dbg !3993
  store i8 %12, i8* %10, align 2, !dbg !3994, !tbaa !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3996
  %13 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 6
  %14 = load i32, i32* %13, align 8, !tbaa !804
  %15 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 0
  %16 = load %struct.Proto*, %struct.Proto** %15, align 8, !tbaa !585
  %17 = getelementptr inbounds %struct.Proto, %struct.Proto* %16, i64 0, i32 7
  %18 = load %struct.LocVar*, %struct.LocVar** %17, align 8, !tbaa !805
  %19 = zext i8 %12 to i64, !dbg !3996
  %20 = add nsw i64 %19, -3, !dbg !3997
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 15, i64 %20, !dbg !3997
  %22 = load i16, i16* %21, align 2, !dbg !3997, !tbaa !807
  %23 = zext i16 %22 to i64, !dbg !3997
  %24 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %18, i64 %23, i32 1, !dbg !3998
  store i32 %14, i32* %24, align 8, !dbg !3999, !tbaa !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3996
  %25 = add nsw i64 %19, -2, !dbg !3997
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 15, i64 %25, !dbg !3997
  %27 = load i16, i16* %26, align 2, !dbg !3997, !tbaa !807
  %28 = zext i16 %27 to i64, !dbg !3997
  %29 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %18, i64 %28, i32 1, !dbg !3998
  store i32 %14, i32* %29, align 8, !dbg !3999, !tbaa !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3996
  %30 = add nsw i64 %19, -1, !dbg !3997
  %31 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 15, i64 %30, !dbg !3997
  %32 = load i16, i16* %31, align 2, !dbg !3997, !tbaa !807
  %33 = zext i16 %32 to i64, !dbg !3997
  %34 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %18, i64 %33, i32 1, !dbg !3998
  store i32 %14, i32* %34, align 8, !dbg !3999, !tbaa !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3996
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4001
  %35 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !4008
  %36 = load i32, i32* %35, align 8, !dbg !4008, !tbaa !625
  %37 = icmp eq i32 %36, 259, !dbg !4009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4010
  br i1 %37, label %43, label %38, !dbg !4010

; <label>:38:                                     ; preds = %5
  %39 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !4014
  %40 = load %struct.lua_State*, %struct.lua_State** %39, align 8, !dbg !4014, !tbaa !611
  %41 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 259) #5, !dbg !4015
  %42 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %41) #5, !dbg !4016
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %42) #5, !dbg !4017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4019
  br label %43, !dbg !4019

; <label>:43:                                     ; preds = %5, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4020
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !4021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4022
  %44 = icmp ne i32 %4, 0, !dbg !4023
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4023
  br i1 %44, label %45, label %47, !dbg !4023

; <label>:45:                                     ; preds = %43
  %46 = tail call i32 @luaK_codeABx(%struct.FuncState* nonnull %9, i32 32, i32 %1, i32 131070) #5, !dbg !4024
  br label %49, !dbg !4023

; <label>:47:                                     ; preds = %43
  %48 = tail call i32 @luaK_jump(%struct.FuncState* nonnull %9) #5, !dbg !4025
  br label %49, !dbg !4023

; <label>:49:                                     ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ], !dbg !4023
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4023
  %51 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 1, !dbg !4032
  store i32 -1, i32* %51, align 8, !dbg !4033, !tbaa !1026
  %52 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 4, !dbg !4034
  store i8 0, i8* %52, align 2, !dbg !4035, !tbaa !1030
  %53 = load i8, i8* %10, align 2, !dbg !4036, !tbaa !661
  %54 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 2, !dbg !4037
  store i8 %53, i8* %54, align 4, !dbg !4038, !tbaa !1034
  %55 = getelementptr inbounds %struct.BlockCnt, %struct.BlockCnt* %6, i64 0, i32 3, !dbg !4039
  store i8 0, i8* %55, align 1, !dbg !4040, !tbaa !1037
  %56 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %9, i64 0, i32 5, !dbg !4041
  %57 = bitcast %struct.BlockCnt** %56 to i64*, !dbg !4041
  %58 = load i64, i64* %57, align 8, !dbg !4041, !tbaa !751
  %59 = bitcast %struct.BlockCnt* %6 to i64*, !dbg !4042
  store i64 %58, i64* %59, align 8, !dbg !4042, !tbaa !1040
  store %struct.BlockCnt* %6, %struct.BlockCnt** %56, align 8, !dbg !4043, !tbaa !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4044
  %60 = load %struct.FuncState*, %struct.FuncState** %8, align 8, !dbg !4048, !tbaa !659
  %61 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 13, !dbg !4050
  %62 = load i8, i8* %61, align 2, !dbg !4050, !tbaa !661
  %63 = trunc i32 %3 to i8, !dbg !4050
  %64 = add i8 %62, %63, !dbg !4050
  store i8 %64, i8* %61, align 2, !dbg !4051, !tbaa !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4052
  %65 = icmp eq i32 %3, 0, !dbg !4053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4053
  br i1 %65, label %103, label %66, !dbg !4053

; <label>:66:                                     ; preds = %49
  %67 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 6
  %68 = load i32, i32* %67, align 8, !tbaa !804
  %69 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 0
  %70 = load %struct.Proto*, %struct.Proto** %69, align 8, !tbaa !585
  %71 = getelementptr inbounds %struct.Proto, %struct.Proto* %70, i64 0, i32 7
  %72 = load %struct.LocVar*, %struct.LocVar** %71, align 8, !tbaa !805
  %73 = sext i32 %3 to i64, !dbg !4053
  %74 = zext i8 %64 to i64, !dbg !4053
  %75 = and i32 %3, 1, !dbg !4053
  %76 = icmp eq i32 %75, 0, !dbg !4053
  br i1 %76, label %84, label %77, !dbg !4053

; <label>:77:                                     ; preds = %66
  %78 = sub nsw i64 %74, %73, !dbg !4054
  %79 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 15, i64 %78, !dbg !4054
  %80 = load i16, i16* %79, align 2, !dbg !4054, !tbaa !807
  %81 = zext i16 %80 to i64, !dbg !4054
  %82 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %72, i64 %81, i32 1, !dbg !4055
  store i32 %68, i32* %82, align 8, !dbg !4056, !tbaa !1862
  %83 = add nsw i64 %73, -1, !dbg !4057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4053
  br label %84, !dbg !4053

; <label>:84:                                     ; preds = %66, %77
  %85 = phi i64 [ %73, %66 ], [ %83, %77 ]
  %86 = icmp eq i32 %3, 1, !dbg !4053
  br i1 %86, label %103, label %87, !dbg !4053

; <label>:87:                                     ; preds = %84, %87
  %88 = phi i64 [ %100, %87 ], [ %85, %84 ]
  %89 = sub nsw i64 %74, %88, !dbg !4054
  %90 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 15, i64 %89, !dbg !4054
  %91 = load i16, i16* %90, align 2, !dbg !4054, !tbaa !807
  %92 = zext i16 %91 to i64, !dbg !4054
  %93 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %72, i64 %92, i32 1, !dbg !4055
  store i32 %68, i32* %93, align 8, !dbg !4056, !tbaa !1862
  %94 = add nsw i64 %88, -1, !dbg !4057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4053
  %95 = sub nsw i64 %74, %94, !dbg !4054
  %96 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %60, i64 0, i32 15, i64 %95, !dbg !4054
  %97 = load i16, i16* %96, align 2, !dbg !4054, !tbaa !807
  %98 = zext i16 %97 to i64, !dbg !4054
  %99 = getelementptr inbounds %struct.LocVar, %struct.LocVar* %72, i64 %98, i32 1, !dbg !4055
  store i32 %68, i32* %99, align 8, !dbg !4056, !tbaa !1862
  %100 = add nsw i64 %88, -2, !dbg !4057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4058
  %101 = trunc i64 %100 to i32, !dbg !4053
  %102 = icmp eq i32 %101, 0, !dbg !4053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4053
  br i1 %102, label %103, label %87, !dbg !4053, !llvm.loop !1987

; <label>:103:                                    ; preds = %84, %87, %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4059
  call void @luaK_reserveregs(%struct.FuncState* %9, i32 %3) #5, !dbg !4060
  call fastcc void @block(%struct.LexState* %0) #6, !dbg !4061
  call fastcc void @leaveblock(%struct.FuncState* %9) #6, !dbg !4062
  call void @luaK_patchtohere(%struct.FuncState* %9, i32 %50) #5, !dbg !4063
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4064
  br i1 %44, label %104, label %106, !dbg !4064

; <label>:104:                                    ; preds = %103
  %105 = call i32 @luaK_codeABx(%struct.FuncState* %9, i32 31, i32 %1, i32 131070) #5, !dbg !4065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4064
  call void @luaK_fixline(%struct.FuncState* %9, i32 %2) #5, !dbg !4067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4068
  br label %109, !dbg !4068

; <label>:106:                                    ; preds = %103
  %107 = call i32 @luaK_codeABC(%struct.FuncState* %9, i32 33, i32 %1, i32 0, i32 %3) #5, !dbg !4069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4064
  call void @luaK_fixline(%struct.FuncState* %9, i32 %2) #5, !dbg !4067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4068
  %108 = call i32 @luaK_jump(%struct.FuncState* %9) #5, !dbg !4070
  br label %109, !dbg !4068

; <label>:109:                                    ; preds = %106, %104
  %110 = phi i32 [ %105, %104 ], [ %108, %106 ], !dbg !4068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4068
  %111 = add nsw i32 %50, 1, !dbg !4071
  call void @luaK_patchlist(%struct.FuncState* %9, i32 %110, i32 %111) #5, !dbg !4072
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #4, !dbg !4073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4073
  ret void, !dbg !4073
}

; Function Attrs: noredzone nounwind
define internal fastcc void @adjust_assign(%struct.LexState* nocapture readonly, i32, i32, %struct.expdesc*) unnamed_addr #0 !dbg !4074 {
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !4093
  %6 = load %struct.FuncState*, %struct.FuncState** %5, align 8, !dbg !4093, !tbaa !659
  %7 = sub nsw i32 %1, %2, !dbg !4095
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %3, i64 0, i32 0, !dbg !4097
  %9 = load i32, i32* %8, align 8, !dbg !4097, !tbaa !998
  %10 = icmp eq i32 %9, 13, !dbg !4097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4097
  br i1 %10, label %13, label %11, !dbg !4097

; <label>:11:                                     ; preds = %4
  %12 = icmp eq i32 %9, 14, !dbg !4097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4098
  br i1 %12, label %13, label %20, !dbg !4098

; <label>:13:                                     ; preds = %11, %4
  %14 = add nsw i32 %7, 1, !dbg !4099
  %15 = icmp sgt i32 %14, 0, !dbg !4101
  %16 = select i1 %15, i32 %14, i32 0, !dbg !4101
  tail call void @luaK_setreturns(%struct.FuncState* %6, %struct.expdesc* nonnull %3, i32 %16) #5, !dbg !4102
  %17 = icmp sgt i32 %16, 1, !dbg !4103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4105
  br i1 %17, label %18, label %28, !dbg !4105

; <label>:18:                                     ; preds = %13
  %19 = add nsw i32 %16, -1, !dbg !4106
  tail call void @luaK_reserveregs(%struct.FuncState* %6, i32 %19) #5, !dbg !4107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4107
  br label %28, !dbg !4107

; <label>:20:                                     ; preds = %11
  %21 = icmp eq i32 %9, 0, !dbg !4108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4110
  br i1 %21, label %23, label %22, !dbg !4110

; <label>:22:                                     ; preds = %20
  tail call void @luaK_exp2nextreg(%struct.FuncState* %6, %struct.expdesc* nonnull %3) #5, !dbg !4111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4111
  br label %23, !dbg !4111

; <label>:23:                                     ; preds = %20, %22
  %24 = icmp sgt i32 %7, 0, !dbg !4112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4113
  br i1 %24, label %25, label %28, !dbg !4113

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %6, i64 0, i32 9, !dbg !4114
  %27 = load i32, i32* %26, align 4, !dbg !4114, !tbaa !665
  tail call void @luaK_reserveregs(%struct.FuncState* %6, i32 %7) #5, !dbg !4116
  tail call void @luaK_nil(%struct.FuncState* %6, i32 %27, i32 %7) #5, !dbg !4117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4118
  br label %28, !dbg !4118

; <label>:28:                                     ; preds = %23, %25, %13, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4119
  ret void, !dbg !4119
}

; Function Attrs: noredzone
declare hidden void @luaK_checkstack(%struct.FuncState*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_nil(%struct.FuncState*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare hidden void @luaK_storevar(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @assignment(%struct.LexState*, %struct.LHS_assign*, i32) unnamed_addr #0 !dbg !4120 {
  %4 = alloca %struct.expdesc, align 8
  %5 = alloca %struct.LHS_assign, align 8
  %6 = bitcast %struct.expdesc* %4 to i8*, !dbg !4136
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #4, !dbg !4136
  %7 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %1, i64 0, i32 1, !dbg !4137
  %8 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %7, i64 0, i32 0, !dbg !4137
  %9 = load i32, i32* %8, align 8, !dbg !4137, !tbaa !2108
  %10 = icmp ugt i32 %9, 5, !dbg !4137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4137
  br i1 %10, label %11, label %13, !dbg !4137

; <label>:11:                                     ; preds = %3
  %12 = icmp ult i32 %9, 10, !dbg !4137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4140
  br i1 %12, label %14, label %13, !dbg !4140

; <label>:13:                                     ; preds = %11, %3
  tail call void @luaX_syntaxerror(%struct.LexState* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0)) #5, !dbg !4137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4137
  br label %14, !dbg !4137

; <label>:14:                                     ; preds = %13, %11
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !4144
  %16 = load i32, i32* %15, align 8, !dbg !4144, !tbaa !625
  %17 = icmp eq i32 %16, 44, !dbg !4145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4146
  br i1 %17, label %18, label %94, !dbg !4146

; <label>:18:                                     ; preds = %14
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !4147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4150
  %19 = bitcast %struct.LHS_assign* %5 to i8*, !dbg !4151
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %19) #4, !dbg !4151
  %20 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 0, !dbg !4152
  store %struct.LHS_assign* %1, %struct.LHS_assign** %20, align 8, !dbg !4153, !tbaa !2116
  %21 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1, !dbg !4154
  call fastcc void @primaryexp(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %21) #6, !dbg !4155
  %22 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %21, i64 0, i32 0, !dbg !4156
  %23 = load i32, i32* %22, align 8, !dbg !4156, !tbaa !2108
  %24 = icmp eq i32 %23, 6, !dbg !4158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4159
  br i1 %24, label %25, label %66, !dbg !4159

; <label>:25:                                     ; preds = %18
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !4174
  %27 = load %struct.FuncState*, %struct.FuncState** %26, align 8, !dbg !4174, !tbaa !659
  %28 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %27, i64 0, i32 9, !dbg !4176
  %29 = load i32, i32* %28, align 4, !dbg !4176, !tbaa !665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4180
  %30 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %5, i64 0, i32 1, i32 1
  %31 = bitcast %union.anon.3* %30 to i32*
  br label %32, !dbg !4180

; <label>:32:                                     ; preds = %54, %25
  %33 = phi i32 [ 0, %25 ], [ %55, %54 ]
  %34 = phi %struct.LHS_assign* [ %1, %25 ], [ %57, %54 ]
  %35 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %34, i64 0, i32 1, i32 0, !dbg !4182
  %36 = load i32, i32* %35, align 8, !dbg !4182, !tbaa !2108
  %37 = icmp eq i32 %36, 9, !dbg !4186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4187
  br i1 %37, label %38, label %54, !dbg !4187

; <label>:38:                                     ; preds = %32
  %39 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %34, i64 0, i32 1, i32 1, !dbg !4188
  %40 = bitcast %union.anon.3* %39 to %struct.anon.4*, !dbg !4191
  %41 = bitcast %union.anon.3* %39 to i32*, !dbg !4192
  %42 = load i32, i32* %41, align 8, !dbg !4192, !tbaa !766
  %43 = load i32, i32* %31, align 8, !dbg !4193, !tbaa !766
  %44 = icmp eq i32 %42, %43, !dbg !4194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4195
  br i1 %44, label %45, label %47, !dbg !4195

; <label>:45:                                     ; preds = %38
  store i32 %29, i32* %41, align 8, !dbg !4196, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4198
  %46 = load i32, i32* %31, align 8, !dbg !4199, !tbaa !766
  br label %47, !dbg !4198

; <label>:47:                                     ; preds = %45, %38
  %48 = phi i32 [ %46, %45 ], [ %43, %38 ], !dbg !4199
  %49 = phi i32 [ 1, %45 ], [ %33, %38 ], !dbg !4201
  %50 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %40, i64 0, i32 1, !dbg !4202
  %51 = load i32, i32* %50, align 4, !dbg !4202, !tbaa !766
  %52 = icmp eq i32 %51, %48, !dbg !4203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4204
  br i1 %52, label %53, label %54, !dbg !4204

; <label>:53:                                     ; preds = %47
  store i32 %29, i32* %50, align 4, !dbg !4205, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4207
  br label %54, !dbg !4207

; <label>:54:                                     ; preds = %53, %47, %32
  %55 = phi i32 [ 1, %53 ], [ %49, %47 ], [ %33, %32 ], !dbg !4201
  %56 = getelementptr inbounds %struct.LHS_assign, %struct.LHS_assign* %34, i64 0, i32 0, !dbg !4208
  %57 = load %struct.LHS_assign*, %struct.LHS_assign** %56, align 8, !dbg !4208, !tbaa !2116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4209
  %58 = icmp eq %struct.LHS_assign* %57, null, !dbg !4180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4180
  br i1 %58, label %59, label %32, !dbg !4180, !llvm.loop !4210

; <label>:59:                                     ; preds = %54
  %60 = icmp eq i32 %55, 0, !dbg !4213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4215
  br i1 %60, label %65, label %61, !dbg !4215

; <label>:61:                                     ; preds = %59
  %62 = load i32, i32* %28, align 4, !dbg !4216, !tbaa !665
  %63 = load i32, i32* %31, align 8, !dbg !4218, !tbaa !766
  %64 = call i32 @luaK_codeABC(%struct.FuncState* %27, i32 0, i32 %62, i32 %63, i32 0) #5, !dbg !4219
  call void @luaK_reserveregs(%struct.FuncState* %27, i32 1) #5, !dbg !4220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4221
  br label %65, !dbg !4221

; <label>:65:                                     ; preds = %59, %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4223
  br label %66, !dbg !4223

; <label>:66:                                     ; preds = %65, %18
  %67 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !4224
  %68 = load %struct.lua_State*, %struct.lua_State** %67, align 8, !dbg !4224, !tbaa !611
  %69 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %68, i64 0, i32 15, !dbg !4224
  %70 = load i16, i16* %69, align 8, !dbg !4224, !tbaa !614
  %71 = zext i16 %70 to i32, !dbg !4224
  %72 = sub nsw i32 200, %71, !dbg !4224
  %73 = icmp slt i32 %72, %2, !dbg !4224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4226
  br i1 %73, label %74, label %92, !dbg !4226

; <label>:74:                                     ; preds = %66
  %75 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !4224
  %76 = load %struct.FuncState*, %struct.FuncState** %75, align 8, !dbg !4224, !tbaa !659
  %77 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %76, i64 0, i32 0, !dbg !4231
  %78 = load %struct.Proto*, %struct.Proto** %77, align 8, !dbg !4231, !tbaa !585
  %79 = getelementptr inbounds %struct.Proto, %struct.Proto* %78, i64 0, i32 16, !dbg !4232
  %80 = load i32, i32* %79, align 8, !dbg !4232, !tbaa !2731
  %81 = icmp eq i32 %80, 0, !dbg !4233
  %82 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %76, i64 0, i32 4, !dbg !4234
  %83 = load %struct.lua_State*, %struct.lua_State** %82, align 8, !dbg !4234, !tbaa !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4235
  br i1 %81, label %84, label %86, !dbg !4235

; <label>:84:                                     ; preds = %74
  %85 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0)) #5, !dbg !4236
  br label %88, !dbg !4235

; <label>:86:                                     ; preds = %74
  %87 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %83, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %80, i32 %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0)) #5, !dbg !4237
  br label %88, !dbg !4235

; <label>:88:                                     ; preds = %84, %86
  %89 = phi i8* [ %85, %84 ], [ %87, %86 ], !dbg !4235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4235
  %90 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %76, i64 0, i32 3, !dbg !4239
  %91 = load %struct.LexState*, %struct.LexState** %90, align 8, !dbg !4239, !tbaa !730
  call void @luaX_lexerror(%struct.LexState* %91, i8* %89, i32 0) #5, !dbg !4240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4224
  br label %92, !dbg !4224

; <label>:92:                                     ; preds = %88, %66
  %93 = add nsw i32 %2, 1, !dbg !4242
  call fastcc void @assignment(%struct.LexState* nonnull %0, %struct.LHS_assign* nonnull %5, i32 %93) #6, !dbg !4244
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #4, !dbg !4245
  br label %131, !dbg !4246

; <label>:94:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4150
  %95 = icmp eq i32 %16, 61, !dbg !4254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4255
  br i1 %95, label %101, label %96, !dbg !4255

; <label>:96:                                     ; preds = %94
  %97 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !4259
  %98 = load %struct.lua_State*, %struct.lua_State** %97, align 8, !dbg !4259, !tbaa !611
  %99 = tail call i8* @luaX_token2str(%struct.LexState* nonnull %0, i32 61) #5, !dbg !4260
  %100 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %99) #5, !dbg !4261
  tail call void @luaX_syntaxerror(%struct.LexState* nonnull %0, i8* %100) #5, !dbg !4262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4264
  br label %101, !dbg !4264

; <label>:101:                                    ; preds = %94, %96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4265
  tail call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !4266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4267
  %102 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #5, !dbg !4276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4278
  %103 = load i32, i32* %15, align 8, !dbg !4282, !tbaa !625
  %104 = icmp eq i32 %103, 44, !dbg !4283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4284
  br i1 %104, label %105, label %114, !dbg !4284

; <label>:105:                                    ; preds = %101
  %106 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5
  br label %107, !dbg !4284

; <label>:107:                                    ; preds = %105, %107
  %108 = phi i32 [ 1, %105 ], [ %111, %107 ]
  call void @luaX_next(%struct.LexState* nonnull %0) #5, !dbg !4285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4278
  %109 = load %struct.FuncState*, %struct.FuncState** %106, align 8, !dbg !4288, !tbaa !659
  call void @luaK_exp2nextreg(%struct.FuncState* %109, %struct.expdesc* nonnull %4) #5, !dbg !4289
  %110 = call fastcc i32 @subexpr(%struct.LexState* nonnull %0, %struct.expdesc* nonnull %4, i32 0) #5, !dbg !4293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4294
  %111 = add nuw nsw i32 %108, 1, !dbg !4295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4278
  %112 = load i32, i32* %15, align 8, !dbg !4282, !tbaa !625
  %113 = icmp eq i32 %112, 44, !dbg !4283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4284
  br i1 %113, label %107, label %114, !dbg !4284, !llvm.loop !1399

; <label>:114:                                    ; preds = %107, %101
  %115 = phi i32 [ 1, %101 ], [ %111, %107 ], !dbg !4296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4298
  %116 = icmp eq i32 %115, %2, !dbg !4300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4302
  br i1 %116, label %126, label %117, !dbg !4302

; <label>:117:                                    ; preds = %114
  call fastcc void @adjust_assign(%struct.LexState* nonnull %0, i32 %2, i32 %115, %struct.expdesc* nonnull %4) #6, !dbg !4303
  %118 = icmp sgt i32 %115, %2, !dbg !4305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4307
  br i1 %118, label %119, label %130, !dbg !4307

; <label>:119:                                    ; preds = %117
  %120 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !4308
  %121 = load %struct.FuncState*, %struct.FuncState** %120, align 8, !dbg !4308, !tbaa !659
  %122 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %121, i64 0, i32 9, !dbg !4309
  %123 = load i32, i32* %122, align 4, !dbg !4310, !tbaa !665
  %124 = sub i32 %2, %115, !dbg !4310
  %125 = add i32 %124, %123, !dbg !4310
  store i32 %125, i32* %122, align 4, !dbg !4310, !tbaa !665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4311
  br label %130, !dbg !4311

; <label>:126:                                    ; preds = %114
  %127 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !4312
  %128 = load %struct.FuncState*, %struct.FuncState** %127, align 8, !dbg !4312, !tbaa !659
  call void @luaK_setoneret(%struct.FuncState* %128, %struct.expdesc* nonnull %4) #5, !dbg !4314
  %129 = load %struct.FuncState*, %struct.FuncState** %127, align 8, !dbg !4315, !tbaa !659
  call void @luaK_storevar(%struct.FuncState* %129, %struct.expdesc* nonnull %7, %struct.expdesc* nonnull %4) #5, !dbg !4316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4317
  br label %142

; <label>:130:                                    ; preds = %117, %119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4318
  br label %131

; <label>:131:                                    ; preds = %130, %92
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %132 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !4319
  %133 = load %struct.FuncState*, %struct.FuncState** %132, align 8, !dbg !4319, !tbaa !659
  %134 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %133, i64 0, i32 9, !dbg !4320
  %135 = load i32, i32* %134, align 4, !dbg !4320, !tbaa !665
  %136 = add nsw i32 %135, -1, !dbg !4321
  %137 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 2, !dbg !4326
  store i32 -1, i32* %137, align 8, !dbg !4327, !tbaa !1691
  %138 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 3, !dbg !4328
  store i32 -1, i32* %138, align 4, !dbg !4329, !tbaa !1007
  %139 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 0, !dbg !4330
  store i32 12, i32* %139, align 8, !dbg !4331, !tbaa !998
  %140 = getelementptr inbounds %struct.expdesc, %struct.expdesc* %4, i64 0, i32 1, !dbg !4332
  %141 = bitcast %union.anon.3* %140 to i32*, !dbg !4333
  store i32 %136, i32* %141, align 8, !dbg !4334, !tbaa !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4335
  call void @luaK_storevar(%struct.FuncState* %133, %struct.expdesc* nonnull %7, %struct.expdesc* nonnull %4) #5, !dbg !4336
  br label %142, !dbg !4337

; <label>:142:                                    ; preds = %126, %131
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #4, !dbg !4337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4337
  ret void, !dbg !4337
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
!622 = !DILocation(line: 1329, column: 3, scope: !594, inlinedAt: !602)
!623 = !DILocation(line: 1329, column: 18, scope: !594, inlinedAt: !602)
!624 = !DILocation(line: 1329, column: 41, scope: !594, inlinedAt: !602)
!625 = !{!573, !574, i64 16}
!626 = !DILocalVariable(name: "token", arg: 1, scope: !627, file: !3, line: 871, type: !203)
!627 = distinct !DISubprogram(name: "block_follow", scope: !3, file: !3, line: 871, type: !628, isLocal: true, isDefinition: true, scopeLine: 871, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !630)
!628 = !DISubroutineType(types: !629)
!629 = !{!203, !203}
!630 = !{!626}
!631 = !DILocation(line: 871, column: 30, scope: !627, inlinedAt: !632)
!632 = distinct !DILocation(line: 1329, column: 22, scope: !594, inlinedAt: !602)
!633 = !DILocation(line: 872, column: 3, scope: !627, inlinedAt: !632)
!634 = !DILocation(line: 875, column: 7, scope: !635, inlinedAt: !632)
!635 = distinct !DILexicalBlock(scope: !627, file: !3, line: 872, column: 18)
!636 = !DILocation(line: 878, column: 1, scope: !627, inlinedAt: !632)
!637 = !DILocation(line: 876, column: 14, scope: !635, inlinedAt: !632)
!638 = !DILocation(line: 1330, column: 14, scope: !639, inlinedAt: !602)
!639 = distinct !DILexicalBlock(scope: !594, file: !3, line: 1329, column: 49)
!640 = !DILocalVariable(name: "ls", arg: 1, scope: !641, file: !3, line: 80, type: !597)
!641 = distinct !DISubprogram(name: "testnext", scope: !3, file: !3, line: 80, type: !642, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !644)
!642 = !DISubroutineType(types: !643)
!643 = !{!203, !597, !203}
!644 = !{!640, !645}
!645 = !DILocalVariable(name: "c", arg: 2, scope: !641, file: !3, line: 80, type: !203)
!646 = !DILocation(line: 80, column: 32, scope: !641, inlinedAt: !647)
!647 = distinct !DILocation(line: 1331, column: 5, scope: !639, inlinedAt: !602)
!648 = !DILocation(line: 80, column: 40, scope: !641, inlinedAt: !647)
!649 = !DILocation(line: 81, column: 13, scope: !650, inlinedAt: !647)
!650 = distinct !DILexicalBlock(scope: !641, file: !3, line: 81, column: 7)
!651 = !DILocation(line: 81, column: 19, scope: !650, inlinedAt: !647)
!652 = !DILocation(line: 81, column: 7, scope: !641, inlinedAt: !647)
!653 = !DILocation(line: 82, column: 5, scope: !654, inlinedAt: !647)
!654 = distinct !DILexicalBlock(scope: !650, file: !3, line: 81, column: 25)
!655 = !DILocation(line: 83, column: 5, scope: !654, inlinedAt: !647)
!656 = !DILocation(line: 0, scope: !639, inlinedAt: !602)
!657 = !DILocation(line: 86, column: 1, scope: !641, inlinedAt: !647)
!658 = !DILocation(line: 1334, column: 27, scope: !639, inlinedAt: !602)
!659 = !{!573, !578, i64 48}
!660 = !DILocation(line: 1334, column: 31, scope: !639, inlinedAt: !602)
!661 = !{!586, !575, i64 74}
!662 = !DILocation(line: 1334, column: 23, scope: !639, inlinedAt: !602)
!663 = !DILocation(line: 1334, column: 13, scope: !639, inlinedAt: !602)
!664 = !DILocation(line: 1334, column: 21, scope: !639, inlinedAt: !602)
!665 = !{!586, !574, i64 60}
!666 = !DILocation(line: 1329, column: 11, scope: !594, inlinedAt: !602)
!667 = distinct !{!667, !668, !669}
!668 = !DILocation(line: 1329, column: 3, scope: !594)
!669 = !DILocation(line: 1335, column: 3, scope: !594)
!670 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !678)
!671 = distinct !DILexicalBlock(scope: !672, file: !3, line: 90, column: 7)
!672 = distinct !DISubprogram(name: "check", scope: !3, file: !3, line: 89, type: !673, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !675)
!673 = !DISubroutineType(types: !674)
!674 = !{null, !597, !203}
!675 = !{!676, !677}
!676 = !DILocalVariable(name: "ls", arg: 1, scope: !672, file: !3, line: 89, type: !597)
!677 = !DILocalVariable(name: "c", arg: 2, scope: !672, file: !3, line: 89, type: !203)
!678 = distinct !DILocation(line: 392, column: 3, scope: !476)
!679 = !DILocation(line: 1336, column: 3, scope: !594, inlinedAt: !602)
!680 = !DILocation(line: 1337, column: 1, scope: !594, inlinedAt: !602)
!681 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !678)
!682 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !678)
!683 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !678)
!684 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !678)
!685 = !DILocalVariable(name: "ls", arg: 1, scope: !686, file: !3, line: 65, type: !597)
!686 = distinct !DISubprogram(name: "error_expected", scope: !3, file: !3, line: 65, type: !673, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !687)
!687 = !{!685, !688}
!688 = !DILocalVariable(name: "token", arg: 2, scope: !686, file: !3, line: 65, type: !203)
!689 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !690)
!690 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !678)
!691 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !690)
!692 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !690)
!693 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !690)
!694 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !690)
!695 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !690)
!696 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !678)
!697 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !678)
!698 = !DILocation(line: 393, column: 3, scope: !476)
!699 = !DILocation(line: 397, column: 20, scope: !476)
!700 = !DILocation(line: 398, column: 1, scope: !476)
!701 = !DILocation(line: 397, column: 3, scope: !476)
!702 = distinct !DISubprogram(name: "open_func", scope: !3, file: !3, line: 328, type: !703, isLocal: true, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !707)
!703 = !DISubroutineType(types: !704)
!704 = !{null, !597, !705}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "FuncState", file: !41, line: 75, baseType: !519)
!707 = !{!708, !709, !710, !711, !712, !714}
!708 = !DILocalVariable(name: "ls", arg: 1, scope: !702, file: !3, line: 328, type: !597)
!709 = !DILocalVariable(name: "fs", arg: 2, scope: !702, file: !3, line: 328, type: !705)
!710 = !DILocalVariable(name: "L", scope: !702, file: !3, line: 329, type: !247)
!711 = !DILocalVariable(name: "f", scope: !702, file: !3, line: 330, type: !459)
!712 = !DILocalVariable(name: "i_o", scope: !713, file: !3, line: 349, type: !189)
!713 = distinct !DILexicalBlock(scope: !702, file: !3, line: 349, column: 3)
!714 = !DILocalVariable(name: "i_o", scope: !715, file: !3, line: 351, type: !189)
!715 = distinct !DILexicalBlock(scope: !702, file: !3, line: 351, column: 3)
!716 = !DILocation(line: 328, column: 34, scope: !702)
!717 = !DILocation(line: 328, column: 49, scope: !702)
!718 = !DILocation(line: 329, column: 22, scope: !702)
!719 = !DILocation(line: 329, column: 14, scope: !702)
!720 = !DILocation(line: 330, column: 14, scope: !702)
!721 = !DILocation(line: 330, column: 10, scope: !702)
!722 = !DILocation(line: 331, column: 7, scope: !702)
!723 = !DILocation(line: 331, column: 9, scope: !702)
!724 = !DILocation(line: 332, column: 18, scope: !702)
!725 = !DILocation(line: 332, column: 7, scope: !702)
!726 = !DILocation(line: 332, column: 12, scope: !702)
!727 = !{!586, !578, i64 16}
!728 = !DILocation(line: 333, column: 7, scope: !702)
!729 = !DILocation(line: 333, column: 10, scope: !702)
!730 = !{!586, !578, i64 24}
!731 = !DILocation(line: 334, column: 7, scope: !702)
!732 = !DILocation(line: 334, column: 9, scope: !702)
!733 = !{!586, !578, i64 32}
!734 = !DILocation(line: 335, column: 10, scope: !702)
!735 = !DILocation(line: 336, column: 7, scope: !702)
!736 = !DILocation(line: 336, column: 10, scope: !702)
!737 = !{!574, !574, i64 0}
!738 = !DILocation(line: 340, column: 7, scope: !702)
!739 = !DILocation(line: 340, column: 10, scope: !702)
!740 = !{!586, !574, i64 64}
!741 = !DILocation(line: 341, column: 7, scope: !702)
!742 = !DILocation(line: 341, column: 10, scope: !702)
!743 = !{!586, !574, i64 68}
!744 = !DILocation(line: 342, column: 7, scope: !702)
!745 = !DILocation(line: 342, column: 16, scope: !702)
!746 = !{!586, !587, i64 72}
!747 = !DILocation(line: 343, column: 7, scope: !702)
!748 = !DILocation(line: 343, column: 15, scope: !702)
!749 = !DILocation(line: 344, column: 7, scope: !702)
!750 = !DILocation(line: 344, column: 10, scope: !702)
!751 = !{!586, !578, i64 40}
!752 = !DILocation(line: 345, column: 19, scope: !702)
!753 = !{!573, !578, i64 80}
!754 = !DILocation(line: 345, column: 6, scope: !702)
!755 = !DILocation(line: 345, column: 13, scope: !702)
!756 = !{!591, !578, i64 64}
!757 = !DILocation(line: 346, column: 6, scope: !702)
!758 = !DILocation(line: 346, column: 19, scope: !702)
!759 = !{!591, !575, i64 115}
!760 = !DILocation(line: 347, column: 11, scope: !702)
!761 = !DILocation(line: 347, column: 7, scope: !702)
!762 = !DILocation(line: 347, column: 9, scope: !702)
!763 = !{!586, !578, i64 8}
!764 = !DILocation(line: 349, column: 3, scope: !713)
!765 = !{!615, !578, i64 16}
!766 = !{!575, !575, i64 0}
!767 = !{!616, !574, i64 8}
!768 = !DILocation(line: 350, column: 3, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !3, line: 350, column: 3)
!770 = distinct !DILexicalBlock(scope: !702, file: !3, line: 350, column: 3)
!771 = !{!615, !578, i64 56}
!772 = !DILocation(line: 350, column: 3, scope: !770)
!773 = !DILocation(line: 351, column: 3, scope: !715)
!774 = !DILocation(line: 352, column: 3, scope: !775)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 352, column: 3)
!776 = distinct !DILexicalBlock(scope: !702, file: !3, line: 352, column: 3)
!777 = !DILocation(line: 352, column: 3, scope: !776)
!778 = !DILocation(line: 353, column: 1, scope: !702)
!779 = distinct !DISubprogram(name: "close_func", scope: !3, file: !3, line: 356, type: !595, isLocal: true, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !780)
!780 = !{!781, !782, !783, !784}
!781 = !DILocalVariable(name: "ls", arg: 1, scope: !779, file: !3, line: 356, type: !597)
!782 = !DILocalVariable(name: "L", scope: !779, file: !3, line: 357, type: !247)
!783 = !DILocalVariable(name: "fs", scope: !779, file: !3, line: 358, type: !705)
!784 = !DILocalVariable(name: "f", scope: !779, file: !3, line: 359, type: !459)
!785 = !DILocation(line: 356, column: 35, scope: !779)
!786 = !DILocation(line: 357, column: 22, scope: !779)
!787 = !DILocation(line: 357, column: 14, scope: !779)
!788 = !DILocation(line: 358, column: 23, scope: !779)
!789 = !DILocation(line: 358, column: 14, scope: !779)
!790 = !DILocation(line: 359, column: 18, scope: !779)
!791 = !DILocation(line: 359, column: 10, scope: !779)
!792 = !DILocalVariable(name: "ls", arg: 1, scope: !793, file: !3, line: 176, type: !597)
!793 = distinct !DISubprogram(name: "removevars", scope: !3, file: !3, line: 176, type: !673, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !794)
!794 = !{!792, !795, !796}
!795 = !DILocalVariable(name: "tolevel", arg: 2, scope: !793, file: !3, line: 176, type: !203)
!796 = !DILocalVariable(name: "fs", scope: !793, file: !3, line: 177, type: !705)
!797 = !DILocation(line: 176, column: 35, scope: !793, inlinedAt: !798)
!798 = distinct !DILocation(line: 360, column: 3, scope: !779)
!799 = !DILocation(line: 176, column: 43, scope: !793, inlinedAt: !798)
!800 = !DILocation(line: 177, column: 14, scope: !793, inlinedAt: !798)
!801 = !DILocation(line: 178, column: 3, scope: !793, inlinedAt: !798)
!802 = !DILocation(line: 178, column: 14, scope: !793, inlinedAt: !798)
!803 = !DILocation(line: 178, column: 22, scope: !793, inlinedAt: !798)
!804 = !{!586, !574, i64 48}
!805 = !{!591, !578, i64 48}
!806 = !DILocation(line: 179, column: 5, scope: !793, inlinedAt: !798)
!807 = !{!587, !587, i64 0}
!808 = !DILocation(line: 179, column: 34, scope: !793, inlinedAt: !798)
!809 = !DILocation(line: 179, column: 40, scope: !793, inlinedAt: !798)
!810 = !{!811, !574, i64 12}
!811 = !{!"LocVar", !578, i64 0, !574, i64 8, !574, i64 12}
!812 = distinct !{!812, !813, !814}
!813 = !DILocation(line: 178, column: 3, scope: !793)
!814 = !DILocation(line: 179, column: 46, scope: !793)
!815 = !DILocation(line: 180, column: 1, scope: !793, inlinedAt: !798)
!816 = !DILocation(line: 361, column: 3, scope: !779)
!817 = !DILocation(line: 362, column: 3, scope: !779)
!818 = !{!591, !578, i64 24}
!819 = !{!591, !574, i64 80}
!820 = !DILocation(line: 363, column: 6, scope: !779)
!821 = !DILocation(line: 363, column: 21, scope: !779)
!822 = !DILocation(line: 363, column: 15, scope: !779)
!823 = !DILocation(line: 364, column: 3, scope: !779)
!824 = !{!591, !578, i64 40}
!825 = !{!591, !574, i64 84}
!826 = !DILocation(line: 365, column: 6, scope: !779)
!827 = !DILocation(line: 365, column: 25, scope: !779)
!828 = !DILocation(line: 365, column: 19, scope: !779)
!829 = !DILocation(line: 366, column: 3, scope: !779)
!830 = !{!591, !578, i64 16}
!831 = !{!591, !574, i64 76}
!832 = !DILocation(line: 367, column: 6, scope: !779)
!833 = !DILocation(line: 367, column: 18, scope: !779)
!834 = !DILocation(line: 367, column: 12, scope: !779)
!835 = !DILocation(line: 368, column: 3, scope: !779)
!836 = !{!591, !578, i64 32}
!837 = !{!591, !574, i64 88}
!838 = !DILocation(line: 369, column: 6, scope: !779)
!839 = !DILocation(line: 369, column: 18, scope: !779)
!840 = !DILocation(line: 369, column: 12, scope: !779)
!841 = !DILocation(line: 370, column: 3, scope: !779)
!842 = !{!591, !574, i64 92}
!843 = !DILocation(line: 371, column: 6, scope: !779)
!844 = !DILocation(line: 371, column: 24, scope: !779)
!845 = !DILocation(line: 371, column: 20, scope: !779)
!846 = !DILocation(line: 371, column: 18, scope: !779)
!847 = !DILocation(line: 372, column: 3, scope: !779)
!848 = !{!591, !575, i64 112}
!849 = !{!591, !578, i64 56}
!850 = !{!591, !574, i64 72}
!851 = !DILocation(line: 373, column: 24, scope: !779)
!852 = !DILocation(line: 373, column: 21, scope: !779)
!853 = !DILocation(line: 373, column: 19, scope: !779)
!854 = !DILocation(line: 376, column: 16, scope: !779)
!855 = !DILocation(line: 376, column: 10, scope: !779)
!856 = !DILocation(line: 378, column: 7, scope: !779)
!857 = !DILocalVariable(name: "ls", arg: 1, scope: !858, file: !3, line: 57, type: !597)
!858 = distinct !DISubprogram(name: "anchor_token", scope: !3, file: !3, line: 57, type: !595, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !859)
!859 = !{!857, !860}
!860 = !DILocalVariable(name: "ts", scope: !861, file: !3, line: 59, type: !332)
!861 = distinct !DILexicalBlock(scope: !862, file: !3, line: 58, column: 59)
!862 = distinct !DILexicalBlock(scope: !858, file: !3, line: 58, column: 7)
!863 = !DILocation(line: 57, column: 37, scope: !858, inlinedAt: !864)
!864 = distinct !DILocation(line: 378, column: 11, scope: !865)
!865 = distinct !DILexicalBlock(scope: !779, file: !3, line: 378, column: 7)
!866 = !DILocation(line: 58, column: 13, scope: !862, inlinedAt: !864)
!867 = !DILocation(line: 58, column: 19, scope: !862, inlinedAt: !864)
!868 = !DILocation(line: 58, column: 30, scope: !862, inlinedAt: !864)
!869 = !DILocation(line: 58, column: 45, scope: !862, inlinedAt: !864)
!870 = !DILocation(line: 58, column: 7, scope: !858, inlinedAt: !864)
!871 = !DILocation(line: 59, column: 25, scope: !861, inlinedAt: !864)
!872 = !DILocation(line: 59, column: 33, scope: !861, inlinedAt: !864)
!873 = !DILocation(line: 59, column: 14, scope: !861, inlinedAt: !864)
!874 = !DILocation(line: 60, column: 24, scope: !861, inlinedAt: !864)
!875 = !DILocation(line: 60, column: 44, scope: !861, inlinedAt: !864)
!876 = !DILocation(line: 60, column: 5, scope: !861, inlinedAt: !864)
!877 = !DILocation(line: 61, column: 3, scope: !861, inlinedAt: !864)
!878 = !DILocation(line: 62, column: 1, scope: !858, inlinedAt: !864)
!879 = !DILocation(line: 378, column: 11, scope: !865)
!880 = !DILocation(line: 379, column: 6, scope: !779)
!881 = !DILocation(line: 379, column: 10, scope: !779)
!882 = !DILocation(line: 380, column: 1, scope: !779)
!883 = distinct !DISubprogram(name: "statement", scope: !3, file: !3, line: 1271, type: !884, isLocal: true, isDefinition: true, scopeLine: 1271, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !886)
!884 = !DISubroutineType(types: !885)
!885 = !{!203, !597}
!886 = !{!887, !888}
!887 = !DILocalVariable(name: "ls", arg: 1, scope: !883, file: !3, line: 1271, type: !597)
!888 = !DILocalVariable(name: "line", scope: !883, file: !3, line: 1272, type: !203)
!889 = !DILocation(line: 1271, column: 33, scope: !883)
!890 = !DILocation(line: 1272, column: 18, scope: !883)
!891 = !{!573, !574, i64 4}
!892 = !DILocation(line: 1272, column: 7, scope: !883)
!893 = !DILocation(line: 1273, column: 17, scope: !883)
!894 = !DILocation(line: 1273, column: 3, scope: !883)
!895 = !DILocalVariable(name: "ls", arg: 1, scope: !896, file: !3, line: 1141, type: !597)
!896 = distinct !DISubprogram(name: "ifstat", scope: !3, file: !3, line: 1141, type: !673, isLocal: true, isDefinition: true, scopeLine: 1141, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !897)
!897 = !{!895, !898, !899, !900, !901}
!898 = !DILocalVariable(name: "line", arg: 2, scope: !896, file: !3, line: 1141, type: !203)
!899 = !DILocalVariable(name: "fs", scope: !896, file: !3, line: 1143, type: !705)
!900 = !DILocalVariable(name: "flist", scope: !896, file: !3, line: 1144, type: !203)
!901 = !DILocalVariable(name: "escapelist", scope: !896, file: !3, line: 1145, type: !203)
!902 = !DILocation(line: 1141, column: 31, scope: !896, inlinedAt: !903)
!903 = distinct !DILocation(line: 1275, column: 7, scope: !904)
!904 = distinct !DILexicalBlock(scope: !905, file: !3, line: 1274, column: 17)
!905 = distinct !DILexicalBlock(scope: !883, file: !3, line: 1273, column: 24)
!906 = !DILocation(line: 1141, column: 39, scope: !896, inlinedAt: !903)
!907 = !DILocation(line: 1143, column: 23, scope: !896, inlinedAt: !903)
!908 = !DILocation(line: 1143, column: 14, scope: !896, inlinedAt: !903)
!909 = !DILocation(line: 1145, column: 3, scope: !896, inlinedAt: !903)
!910 = !DILocation(line: 1145, column: 7, scope: !896, inlinedAt: !903)
!911 = !DILocation(line: 1146, column: 11, scope: !896, inlinedAt: !903)
!912 = !DILocation(line: 1144, column: 7, scope: !896, inlinedAt: !903)
!913 = !DILocation(line: 1147, column: 3, scope: !896, inlinedAt: !903)
!914 = !DILocation(line: 1147, column: 16, scope: !896, inlinedAt: !903)
!915 = !DILocation(line: 1147, column: 22, scope: !896, inlinedAt: !903)
!916 = !DILocation(line: 1148, column: 34, scope: !917, inlinedAt: !903)
!917 = distinct !DILexicalBlock(scope: !896, file: !3, line: 1147, column: 36)
!918 = !DILocation(line: 1148, column: 5, scope: !917, inlinedAt: !903)
!919 = !DILocation(line: 1149, column: 5, scope: !917, inlinedAt: !903)
!920 = !DILocation(line: 1150, column: 13, scope: !917, inlinedAt: !903)
!921 = distinct !{!921, !922, !923}
!922 = !DILocation(line: 1147, column: 3, scope: !896)
!923 = !DILocation(line: 1151, column: 3, scope: !896)
!924 = !DILocation(line: 0, scope: !917, inlinedAt: !903)
!925 = !DILocation(line: 1152, column: 19, scope: !926, inlinedAt: !903)
!926 = distinct !DILexicalBlock(scope: !896, file: !3, line: 1152, column: 7)
!927 = !DILocation(line: 1152, column: 7, scope: !896, inlinedAt: !903)
!928 = !DILocation(line: 1153, column: 34, scope: !929, inlinedAt: !903)
!929 = distinct !DILexicalBlock(scope: !926, file: !3, line: 1152, column: 31)
!930 = !DILocation(line: 1153, column: 5, scope: !929, inlinedAt: !903)
!931 = !DILocation(line: 1154, column: 5, scope: !929, inlinedAt: !903)
!932 = !DILocation(line: 1155, column: 5, scope: !929, inlinedAt: !903)
!933 = !DILocation(line: 1156, column: 5, scope: !929, inlinedAt: !903)
!934 = !DILocation(line: 1157, column: 3, scope: !929, inlinedAt: !903)
!935 = !DILocation(line: 1159, column: 5, scope: !926, inlinedAt: !903)
!936 = !DILocation(line: 1160, column: 24, scope: !896, inlinedAt: !903)
!937 = !DILocation(line: 1160, column: 3, scope: !896, inlinedAt: !903)
!938 = !DILocation(line: 1161, column: 3, scope: !896, inlinedAt: !903)
!939 = !DILocation(line: 1162, column: 1, scope: !896, inlinedAt: !903)
!940 = !DILocation(line: 1276, column: 7, scope: !904)
!941 = !DILocalVariable(name: "ls", arg: 1, scope: !942, file: !3, line: 991, type: !597)
!942 = distinct !DISubprogram(name: "whilestat", scope: !3, file: !3, line: 991, type: !673, isLocal: true, isDefinition: true, scopeLine: 991, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !943)
!943 = !{!941, !944, !945, !946, !947, !948}
!944 = !DILocalVariable(name: "line", arg: 2, scope: !942, file: !3, line: 991, type: !203)
!945 = !DILocalVariable(name: "fs", scope: !942, file: !3, line: 993, type: !705)
!946 = !DILocalVariable(name: "whileinit", scope: !942, file: !3, line: 994, type: !203)
!947 = !DILocalVariable(name: "condexit", scope: !942, file: !3, line: 995, type: !203)
!948 = !DILocalVariable(name: "bl", scope: !942, file: !3, line: 996, type: !949)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlockCnt", file: !3, line: 46, baseType: !531)
!950 = !DILocation(line: 991, column: 34, scope: !942, inlinedAt: !951)
!951 = distinct !DILocation(line: 1279, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !905, file: !3, line: 1278, column: 20)
!953 = !DILocation(line: 991, column: 42, scope: !942, inlinedAt: !951)
!954 = !DILocation(line: 993, column: 23, scope: !942, inlinedAt: !951)
!955 = !DILocation(line: 993, column: 14, scope: !942, inlinedAt: !951)
!956 = !DILocation(line: 996, column: 3, scope: !942, inlinedAt: !951)
!957 = !DILocation(line: 997, column: 3, scope: !942, inlinedAt: !951)
!958 = !DILocation(line: 998, column: 15, scope: !942, inlinedAt: !951)
!959 = !DILocation(line: 994, column: 7, scope: !942, inlinedAt: !951)
!960 = !DILocalVariable(name: "ls", arg: 1, scope: !961, file: !3, line: 965, type: !597)
!961 = distinct !DISubprogram(name: "cond", scope: !3, file: !3, line: 965, type: !884, isLocal: true, isDefinition: true, scopeLine: 965, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !962)
!962 = !{!960, !963}
!963 = !DILocalVariable(name: "v", scope: !961, file: !3, line: 967, type: !964)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "expdesc", file: !41, line: 45, baseType: !965)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "expdesc", file: !41, line: 37, size: 192, elements: !966)
!966 = !{!967, !969, !978, !979}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !965, file: !41, line: 38, baseType: !968, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "expkind", file: !41, line: 35, baseType: !40)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !965, file: !41, line: 42, baseType: !970, size: 64, offset: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !965, file: !41, line: 39, size: 64, elements: !971)
!971 = !{!972, !977}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !970, file: !41, line: 40, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !970, file: !41, line: 40, size: 64, elements: !974)
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !973, file: !41, line: 40, baseType: !203, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !973, file: !41, line: 40, baseType: !203, size: 32, offset: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "nval", scope: !970, file: !41, line: 41, baseType: !200, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !965, file: !41, line: 43, baseType: !203, size: 32, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !965, file: !41, line: 44, baseType: !203, size: 32, offset: 160)
!980 = !DILocation(line: 965, column: 28, scope: !961, inlinedAt: !981)
!981 = distinct !DILocation(line: 999, column: 14, scope: !942, inlinedAt: !951)
!982 = !DILocation(line: 967, column: 3, scope: !961, inlinedAt: !981)
!983 = !DILocation(line: 967, column: 11, scope: !961, inlinedAt: !981)
!984 = !DILocalVariable(name: "ls", arg: 1, scope: !985, file: !3, line: 856, type: !597)
!985 = distinct !DISubprogram(name: "expr", scope: !3, file: !3, line: 856, type: !986, isLocal: true, isDefinition: true, scopeLine: 856, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !989)
!986 = !DISubroutineType(types: !987)
!987 = !{null, !597, !988}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!989 = !{!984, !990}
!990 = !DILocalVariable(name: "v", arg: 2, scope: !985, file: !3, line: 856, type: !988)
!991 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !992)
!992 = distinct !DILocation(line: 968, column: 3, scope: !961, inlinedAt: !981)
!993 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !992)
!994 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !992)
!995 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !992)
!996 = !DILocation(line: 969, column: 9, scope: !997, inlinedAt: !981)
!997 = distinct !DILexicalBlock(scope: !961, file: !3, line: 969, column: 7)
!998 = !{!999, !575, i64 0}
!999 = !{!"expdesc", !575, i64 0, !575, i64 8, !574, i64 16, !574, i64 20}
!1000 = !DILocation(line: 969, column: 11, scope: !997, inlinedAt: !981)
!1001 = !DILocation(line: 969, column: 7, scope: !961, inlinedAt: !981)
!1002 = !DILocation(line: 969, column: 24, scope: !997, inlinedAt: !981)
!1003 = !DILocation(line: 969, column: 20, scope: !997, inlinedAt: !981)
!1004 = !DILocation(line: 970, column: 21, scope: !961, inlinedAt: !981)
!1005 = !DILocation(line: 970, column: 3, scope: !961, inlinedAt: !981)
!1006 = !DILocation(line: 971, column: 12, scope: !961, inlinedAt: !981)
!1007 = !{!999, !574, i64 20}
!1008 = !DILocation(line: 972, column: 1, scope: !961, inlinedAt: !981)
!1009 = !DILocation(line: 971, column: 3, scope: !961, inlinedAt: !981)
!1010 = !DILocation(line: 995, column: 7, scope: !942, inlinedAt: !951)
!1011 = !DILocation(line: 996, column: 12, scope: !942, inlinedAt: !951)
!1012 = !DILocalVariable(name: "fs", arg: 1, scope: !1013, file: !3, line: 285, type: !705)
!1013 = distinct !DISubprogram(name: "enterblock", scope: !3, file: !3, line: 285, type: !1014, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1017)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null, !705, !1016, !137}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!1017 = !{!1012, !1018, !1019}
!1018 = !DILocalVariable(name: "bl", arg: 2, scope: !1013, file: !3, line: 285, type: !1016)
!1019 = !DILocalVariable(name: "isbreakable", arg: 3, scope: !1013, file: !3, line: 285, type: !137)
!1020 = !DILocation(line: 285, column: 36, scope: !1013, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 1000, column: 3, scope: !942, inlinedAt: !951)
!1022 = !DILocation(line: 285, column: 50, scope: !1013, inlinedAt: !1021)
!1023 = !DILocation(line: 285, column: 62, scope: !1013, inlinedAt: !1021)
!1024 = !DILocation(line: 286, column: 7, scope: !1013, inlinedAt: !1021)
!1025 = !DILocation(line: 286, column: 17, scope: !1013, inlinedAt: !1021)
!1026 = !{!1027, !574, i64 8}
!1027 = !{!"BlockCnt", !578, i64 0, !574, i64 8, !575, i64 12, !575, i64 13, !575, i64 14}
!1028 = !DILocation(line: 287, column: 7, scope: !1013, inlinedAt: !1021)
!1029 = !DILocation(line: 287, column: 19, scope: !1013, inlinedAt: !1021)
!1030 = !{!1027, !575, i64 14}
!1031 = !DILocation(line: 288, column: 21, scope: !1013, inlinedAt: !1021)
!1032 = !DILocation(line: 288, column: 7, scope: !1013, inlinedAt: !1021)
!1033 = !DILocation(line: 288, column: 15, scope: !1013, inlinedAt: !1021)
!1034 = !{!1027, !575, i64 12}
!1035 = !DILocation(line: 289, column: 7, scope: !1013, inlinedAt: !1021)
!1036 = !DILocation(line: 289, column: 13, scope: !1013, inlinedAt: !1021)
!1037 = !{!1027, !575, i64 13}
!1038 = !DILocation(line: 290, column: 22, scope: !1013, inlinedAt: !1021)
!1039 = !DILocation(line: 290, column: 16, scope: !1013, inlinedAt: !1021)
!1040 = !{!1027, !578, i64 0}
!1041 = !DILocation(line: 291, column: 10, scope: !1013, inlinedAt: !1021)
!1042 = !DILocation(line: 293, column: 1, scope: !1013, inlinedAt: !1021)
!1043 = !DILocalVariable(name: "ls", arg: 1, scope: !1044, file: !3, line: 94, type: !597)
!1044 = distinct !DISubprogram(name: "checknext", scope: !3, file: !3, line: 94, type: !673, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1045)
!1045 = !{!1043, !1046}
!1046 = !DILocalVariable(name: "c", arg: 2, scope: !1044, file: !3, line: 94, type: !203)
!1047 = !DILocation(line: 94, column: 34, scope: !1044, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 1001, column: 3, scope: !942, inlinedAt: !951)
!1049 = !DILocation(line: 94, column: 42, scope: !1044, inlinedAt: !1048)
!1050 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !1051)
!1051 = distinct !DILocation(line: 95, column: 3, scope: !1044, inlinedAt: !1048)
!1052 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !1051)
!1053 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !1051)
!1054 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !1051)
!1055 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !1051)
!1056 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1051)
!1058 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !1057)
!1059 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !1057)
!1060 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !1057)
!1061 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !1057)
!1062 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !1057)
!1063 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !1057)
!1064 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1051)
!1065 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !1051)
!1066 = !DILocation(line: 96, column: 3, scope: !1044, inlinedAt: !1048)
!1067 = !DILocation(line: 97, column: 1, scope: !1044, inlinedAt: !1048)
!1068 = !DILocation(line: 1002, column: 3, scope: !942, inlinedAt: !951)
!1069 = !DILocation(line: 1003, column: 22, scope: !942, inlinedAt: !951)
!1070 = !DILocation(line: 1003, column: 3, scope: !942, inlinedAt: !951)
!1071 = !DILocation(line: 1004, column: 3, scope: !942, inlinedAt: !951)
!1072 = !DILocation(line: 1005, column: 3, scope: !942, inlinedAt: !951)
!1073 = !DILocation(line: 1006, column: 3, scope: !942, inlinedAt: !951)
!1074 = !DILocation(line: 1007, column: 1, scope: !942, inlinedAt: !951)
!1075 = !DILocation(line: 1280, column: 7, scope: !952)
!1076 = !DILocation(line: 1283, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !905, file: !3, line: 1282, column: 17)
!1078 = !DILocation(line: 1284, column: 7, scope: !1077)
!1079 = !DILocation(line: 1285, column: 7, scope: !1077)
!1080 = !DILocation(line: 1286, column: 7, scope: !1077)
!1081 = !DILocalVariable(name: "ls", arg: 1, scope: !1082, file: !3, line: 1112, type: !597)
!1082 = distinct !DISubprogram(name: "forstat", scope: !3, file: !3, line: 1112, type: !673, isLocal: true, isDefinition: true, scopeLine: 1112, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1083)
!1083 = !{!1081, !1084, !1085, !1086, !1087}
!1084 = !DILocalVariable(name: "line", arg: 2, scope: !1082, file: !3, line: 1112, type: !203)
!1085 = !DILocalVariable(name: "fs", scope: !1082, file: !3, line: 1114, type: !705)
!1086 = !DILocalVariable(name: "varname", scope: !1082, file: !3, line: 1115, type: !332)
!1087 = !DILocalVariable(name: "bl", scope: !1082, file: !3, line: 1116, type: !949)
!1088 = !DILocation(line: 1112, column: 32, scope: !1082, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 1289, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !905, file: !3, line: 1288, column: 18)
!1091 = !DILocation(line: 1112, column: 40, scope: !1082, inlinedAt: !1089)
!1092 = !DILocation(line: 1114, column: 23, scope: !1082, inlinedAt: !1089)
!1093 = !DILocation(line: 1114, column: 14, scope: !1082, inlinedAt: !1089)
!1094 = !DILocation(line: 1116, column: 3, scope: !1082, inlinedAt: !1089)
!1095 = !DILocation(line: 1116, column: 12, scope: !1082, inlinedAt: !1089)
!1096 = !DILocation(line: 285, column: 36, scope: !1013, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 1117, column: 3, scope: !1082, inlinedAt: !1089)
!1098 = !DILocation(line: 285, column: 50, scope: !1013, inlinedAt: !1097)
!1099 = !DILocation(line: 285, column: 62, scope: !1013, inlinedAt: !1097)
!1100 = !DILocation(line: 286, column: 7, scope: !1013, inlinedAt: !1097)
!1101 = !DILocation(line: 286, column: 17, scope: !1013, inlinedAt: !1097)
!1102 = !DILocation(line: 287, column: 7, scope: !1013, inlinedAt: !1097)
!1103 = !DILocation(line: 287, column: 19, scope: !1013, inlinedAt: !1097)
!1104 = !DILocation(line: 288, column: 21, scope: !1013, inlinedAt: !1097)
!1105 = !DILocation(line: 288, column: 7, scope: !1013, inlinedAt: !1097)
!1106 = !DILocation(line: 288, column: 15, scope: !1013, inlinedAt: !1097)
!1107 = !DILocation(line: 289, column: 7, scope: !1013, inlinedAt: !1097)
!1108 = !DILocation(line: 289, column: 13, scope: !1013, inlinedAt: !1097)
!1109 = !DILocation(line: 290, column: 22, scope: !1013, inlinedAt: !1097)
!1110 = !DILocation(line: 290, column: 16, scope: !1013, inlinedAt: !1097)
!1111 = !DILocation(line: 291, column: 10, scope: !1013, inlinedAt: !1097)
!1112 = !DILocation(line: 293, column: 1, scope: !1013, inlinedAt: !1097)
!1113 = !DILocation(line: 1118, column: 3, scope: !1082, inlinedAt: !1089)
!1114 = !DILocalVariable(name: "ls", arg: 1, scope: !1115, file: !3, line: 117, type: !597)
!1115 = distinct !DISubprogram(name: "str_checkname", scope: !3, file: !3, line: 117, type: !1116, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1118)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!332, !597}
!1118 = !{!1114, !1119}
!1119 = !DILocalVariable(name: "ts", scope: !1115, file: !3, line: 118, type: !332)
!1120 = !DILocation(line: 117, column: 42, scope: !1115, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 1119, column: 13, scope: !1082, inlinedAt: !1089)
!1122 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 119, column: 3, scope: !1115, inlinedAt: !1121)
!1124 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !1123)
!1125 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !1123)
!1126 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !1123)
!1127 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !1123)
!1128 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1123)
!1130 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !1129)
!1131 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !1129)
!1132 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !1129)
!1133 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !1129)
!1134 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !1129)
!1135 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !1129)
!1136 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1123)
!1137 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !1123)
!1138 = !DILocation(line: 120, column: 14, scope: !1115, inlinedAt: !1121)
!1139 = !DILocation(line: 120, column: 22, scope: !1115, inlinedAt: !1121)
!1140 = !DILocation(line: 118, column: 12, scope: !1115, inlinedAt: !1121)
!1141 = !DILocation(line: 121, column: 3, scope: !1115, inlinedAt: !1121)
!1142 = !DILocation(line: 122, column: 3, scope: !1115, inlinedAt: !1121)
!1143 = !DILocation(line: 1115, column: 12, scope: !1082, inlinedAt: !1089)
!1144 = !DILocation(line: 1120, column: 17, scope: !1082, inlinedAt: !1089)
!1145 = !DILocation(line: 1120, column: 3, scope: !1082, inlinedAt: !1089)
!1146 = !DILocalVariable(name: "ls", arg: 1, scope: !1147, file: !3, line: 1067, type: !597)
!1147 = distinct !DISubprogram(name: "fornum", scope: !3, file: !3, line: 1067, type: !1148, isLocal: true, isDefinition: true, scopeLine: 1067, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1150)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !597, !332, !203}
!1150 = !{!1146, !1151, !1152, !1153, !1154}
!1151 = !DILocalVariable(name: "varname", arg: 2, scope: !1147, file: !3, line: 1067, type: !332)
!1152 = !DILocalVariable(name: "line", arg: 3, scope: !1147, file: !3, line: 1067, type: !203)
!1153 = !DILocalVariable(name: "fs", scope: !1147, file: !3, line: 1069, type: !705)
!1154 = !DILocalVariable(name: "base", scope: !1147, file: !3, line: 1070, type: !203)
!1155 = !DILocation(line: 1067, column: 31, scope: !1147, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 1121, column: 15, scope: !1157, inlinedAt: !1089)
!1157 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 1120, column: 24)
!1158 = !DILocation(line: 1067, column: 44, scope: !1147, inlinedAt: !1156)
!1159 = !DILocation(line: 1067, column: 57, scope: !1147, inlinedAt: !1156)
!1160 = !DILocation(line: 1069, column: 23, scope: !1147, inlinedAt: !1156)
!1161 = !DILocation(line: 1069, column: 14, scope: !1147, inlinedAt: !1156)
!1162 = !DILocation(line: 1070, column: 18, scope: !1147, inlinedAt: !1156)
!1163 = !DILocation(line: 1070, column: 7, scope: !1147, inlinedAt: !1156)
!1164 = !DILocation(line: 1071, column: 3, scope: !1147, inlinedAt: !1156)
!1165 = !DILocation(line: 1072, column: 3, scope: !1147, inlinedAt: !1156)
!1166 = !DILocation(line: 1073, column: 3, scope: !1147, inlinedAt: !1156)
!1167 = !DILocation(line: 1074, column: 3, scope: !1147, inlinedAt: !1156)
!1168 = !DILocation(line: 94, column: 34, scope: !1044, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 1075, column: 3, scope: !1147, inlinedAt: !1156)
!1170 = !DILocation(line: 94, column: 42, scope: !1044, inlinedAt: !1169)
!1171 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 95, column: 3, scope: !1044, inlinedAt: !1169)
!1173 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !1172)
!1174 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !1172)
!1175 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !1172)
!1176 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !1172)
!1177 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1172)
!1179 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !1178)
!1180 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !1178)
!1181 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !1178)
!1182 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !1178)
!1183 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !1178)
!1184 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !1178)
!1185 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1172)
!1186 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !1172)
!1187 = !DILocation(line: 96, column: 3, scope: !1044, inlinedAt: !1169)
!1188 = !DILocation(line: 97, column: 1, scope: !1044, inlinedAt: !1169)
!1189 = !DILocalVariable(name: "ls", arg: 1, scope: !1190, file: !3, line: 1036, type: !597)
!1190 = distinct !DISubprogram(name: "exp1", scope: !3, file: !3, line: 1036, type: !884, isLocal: true, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1191)
!1191 = !{!1189, !1192, !1193}
!1192 = !DILocalVariable(name: "e", scope: !1190, file: !3, line: 1037, type: !964)
!1193 = !DILocalVariable(name: "k", scope: !1190, file: !3, line: 1038, type: !203)
!1194 = !DILocation(line: 1036, column: 28, scope: !1190, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 1076, column: 3, scope: !1147, inlinedAt: !1156)
!1196 = !DILocation(line: 1037, column: 3, scope: !1190, inlinedAt: !1195)
!1197 = !DILocation(line: 1037, column: 11, scope: !1190, inlinedAt: !1195)
!1198 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 1039, column: 3, scope: !1190, inlinedAt: !1195)
!1200 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !1199)
!1201 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !1199)
!1202 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !1199)
!1203 = !DILocation(line: 1038, column: 7, scope: !1190, inlinedAt: !1195)
!1204 = !DILocation(line: 1041, column: 24, scope: !1190, inlinedAt: !1195)
!1205 = !DILocation(line: 1041, column: 3, scope: !1190, inlinedAt: !1195)
!1206 = !DILocation(line: 1043, column: 1, scope: !1190, inlinedAt: !1195)
!1207 = !DILocation(line: 1042, column: 3, scope: !1190, inlinedAt: !1195)
!1208 = !DILocation(line: 94, column: 34, scope: !1044, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 1077, column: 3, scope: !1147, inlinedAt: !1156)
!1210 = !DILocation(line: 94, column: 42, scope: !1044, inlinedAt: !1209)
!1211 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 95, column: 3, scope: !1044, inlinedAt: !1209)
!1213 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !1212)
!1214 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !1212)
!1215 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !1212)
!1216 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !1212)
!1217 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1212)
!1219 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !1218)
!1220 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !1218)
!1221 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !1218)
!1222 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !1218)
!1223 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !1218)
!1224 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !1218)
!1225 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1212)
!1226 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !1212)
!1227 = !DILocation(line: 96, column: 3, scope: !1044, inlinedAt: !1209)
!1228 = !DILocation(line: 97, column: 1, scope: !1044, inlinedAt: !1209)
!1229 = !DILocation(line: 1036, column: 28, scope: !1190, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 1078, column: 3, scope: !1147, inlinedAt: !1156)
!1231 = !DILocation(line: 1037, column: 3, scope: !1190, inlinedAt: !1230)
!1232 = !DILocation(line: 1037, column: 11, scope: !1190, inlinedAt: !1230)
!1233 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 1039, column: 3, scope: !1190, inlinedAt: !1230)
!1235 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !1234)
!1236 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !1234)
!1237 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !1234)
!1238 = !DILocation(line: 1038, column: 7, scope: !1190, inlinedAt: !1230)
!1239 = !DILocation(line: 1041, column: 24, scope: !1190, inlinedAt: !1230)
!1240 = !DILocation(line: 1041, column: 3, scope: !1190, inlinedAt: !1230)
!1241 = !DILocation(line: 1043, column: 1, scope: !1190, inlinedAt: !1230)
!1242 = !DILocation(line: 1042, column: 3, scope: !1190, inlinedAt: !1230)
!1243 = !DILocation(line: 80, column: 32, scope: !641, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 1079, column: 7, scope: !1245, inlinedAt: !1156)
!1245 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 1079, column: 7)
!1246 = !DILocation(line: 80, column: 40, scope: !641, inlinedAt: !1244)
!1247 = !DILocation(line: 81, column: 13, scope: !650, inlinedAt: !1244)
!1248 = !DILocation(line: 81, column: 19, scope: !650, inlinedAt: !1244)
!1249 = !DILocation(line: 81, column: 7, scope: !641, inlinedAt: !1244)
!1250 = !DILocation(line: 82, column: 5, scope: !654, inlinedAt: !1244)
!1251 = !DILocation(line: 83, column: 5, scope: !654, inlinedAt: !1244)
!1252 = !DILocation(line: 86, column: 1, scope: !641, inlinedAt: !1244)
!1253 = !DILocation(line: 1079, column: 7, scope: !1147, inlinedAt: !1156)
!1254 = !DILocation(line: 1036, column: 28, scope: !1190, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 1080, column: 5, scope: !1245, inlinedAt: !1156)
!1256 = !DILocation(line: 1037, column: 3, scope: !1190, inlinedAt: !1255)
!1257 = !DILocation(line: 1037, column: 11, scope: !1190, inlinedAt: !1255)
!1258 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 1039, column: 3, scope: !1190, inlinedAt: !1255)
!1260 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !1259)
!1261 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !1259)
!1262 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !1259)
!1263 = !DILocation(line: 1038, column: 7, scope: !1190, inlinedAt: !1255)
!1264 = !DILocation(line: 1041, column: 24, scope: !1190, inlinedAt: !1255)
!1265 = !DILocation(line: 1041, column: 3, scope: !1190, inlinedAt: !1255)
!1266 = !DILocation(line: 1043, column: 1, scope: !1190, inlinedAt: !1255)
!1267 = !DILocation(line: 1042, column: 3, scope: !1190, inlinedAt: !1255)
!1268 = !DILocation(line: 1080, column: 5, scope: !1245, inlinedAt: !1156)
!1269 = !DILocation(line: 85, column: 8, scope: !650, inlinedAt: !1244)
!1270 = !DILocation(line: 1082, column: 36, scope: !1271, inlinedAt: !1156)
!1271 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 1081, column: 8)
!1272 = !DILocation(line: 1082, column: 45, scope: !1271, inlinedAt: !1156)
!1273 = !DILocation(line: 1082, column: 5, scope: !1271, inlinedAt: !1156)
!1274 = !DILocation(line: 1083, column: 5, scope: !1271, inlinedAt: !1156)
!1275 = !DILocation(line: 1085, column: 3, scope: !1147, inlinedAt: !1156)
!1276 = !DILocation(line: 1086, column: 1, scope: !1147, inlinedAt: !1156)
!1277 = !DILocation(line: 1121, column: 42, scope: !1157, inlinedAt: !1089)
!1278 = !DILocalVariable(name: "ls", arg: 1, scope: !1279, file: !3, line: 1089, type: !597)
!1279 = distinct !DISubprogram(name: "forlist", scope: !3, file: !3, line: 1089, type: !1280, isLocal: true, isDefinition: true, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1282)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{null, !597, !332}
!1282 = !{!1278, !1283, !1284, !1285, !1286, !1287, !1288}
!1283 = !DILocalVariable(name: "indexname", arg: 2, scope: !1279, file: !3, line: 1089, type: !332)
!1284 = !DILocalVariable(name: "fs", scope: !1279, file: !3, line: 1091, type: !705)
!1285 = !DILocalVariable(name: "e", scope: !1279, file: !3, line: 1092, type: !964)
!1286 = !DILocalVariable(name: "nvars", scope: !1279, file: !3, line: 1093, type: !203)
!1287 = !DILocalVariable(name: "line", scope: !1279, file: !3, line: 1094, type: !203)
!1288 = !DILocalVariable(name: "base", scope: !1279, file: !3, line: 1095, type: !203)
!1289 = !DILocation(line: 1089, column: 32, scope: !1279, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 1122, column: 27, scope: !1157, inlinedAt: !1089)
!1291 = !DILocation(line: 1089, column: 45, scope: !1279, inlinedAt: !1290)
!1292 = !DILocation(line: 1091, column: 23, scope: !1279, inlinedAt: !1290)
!1293 = !DILocation(line: 1091, column: 14, scope: !1279, inlinedAt: !1290)
!1294 = !DILocation(line: 1092, column: 3, scope: !1279, inlinedAt: !1290)
!1295 = !DILocation(line: 1093, column: 7, scope: !1279, inlinedAt: !1290)
!1296 = !DILocation(line: 1095, column: 18, scope: !1279, inlinedAt: !1290)
!1297 = !DILocation(line: 1095, column: 7, scope: !1279, inlinedAt: !1290)
!1298 = !DILocation(line: 1097, column: 3, scope: !1279, inlinedAt: !1290)
!1299 = !DILocation(line: 1098, column: 3, scope: !1279, inlinedAt: !1290)
!1300 = !DILocation(line: 1099, column: 3, scope: !1279, inlinedAt: !1290)
!1301 = !DILocation(line: 1101, column: 3, scope: !1279, inlinedAt: !1290)
!1302 = !DILocation(line: 1102, column: 3, scope: !1279, inlinedAt: !1290)
!1303 = !DILocation(line: 80, column: 32, scope: !641, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 1102, column: 10, scope: !1279, inlinedAt: !1290)
!1305 = !DILocation(line: 80, column: 40, scope: !641, inlinedAt: !1304)
!1306 = !DILocation(line: 81, column: 13, scope: !650, inlinedAt: !1304)
!1307 = !DILocation(line: 81, column: 19, scope: !650, inlinedAt: !1304)
!1308 = !DILocation(line: 81, column: 7, scope: !641, inlinedAt: !1304)
!1309 = !DILocation(line: 82, column: 5, scope: !654, inlinedAt: !1304)
!1310 = !DILocation(line: 83, column: 5, scope: !654, inlinedAt: !1304)
!1311 = !DILocation(line: 86, column: 1, scope: !641, inlinedAt: !1304)
!1312 = !DILocation(line: 117, column: 42, scope: !1115, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 1103, column: 22, scope: !1279, inlinedAt: !1290)
!1314 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !1315)
!1315 = distinct !DILocation(line: 119, column: 3, scope: !1115, inlinedAt: !1313)
!1316 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !1315)
!1317 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !1315)
!1318 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !1315)
!1319 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !1315)
!1320 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !1321)
!1321 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1315)
!1322 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !1321)
!1323 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !1321)
!1324 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !1321)
!1325 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !1321)
!1326 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !1321)
!1327 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !1321)
!1328 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1315)
!1329 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !1315)
!1330 = !DILocation(line: 120, column: 22, scope: !1115, inlinedAt: !1313)
!1331 = !DILocation(line: 118, column: 12, scope: !1115, inlinedAt: !1313)
!1332 = !DILocation(line: 121, column: 3, scope: !1115, inlinedAt: !1313)
!1333 = !DILocation(line: 122, column: 3, scope: !1115, inlinedAt: !1313)
!1334 = !DILocation(line: 1103, column: 46, scope: !1279, inlinedAt: !1290)
!1335 = !DILocation(line: 1103, column: 5, scope: !1279, inlinedAt: !1290)
!1336 = distinct !{!1336, !1337, !1338}
!1337 = !DILocation(line: 1102, column: 3, scope: !1279)
!1338 = !DILocation(line: 1103, column: 48, scope: !1279)
!1339 = !DILocation(line: 85, column: 8, scope: !650, inlinedAt: !1304)
!1340 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 95, column: 3, scope: !1044, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 1104, column: 3, scope: !1279, inlinedAt: !1290)
!1343 = !DILocation(line: 94, column: 34, scope: !1044, inlinedAt: !1342)
!1344 = !DILocation(line: 94, column: 42, scope: !1044, inlinedAt: !1342)
!1345 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !1341)
!1346 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !1341)
!1347 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !1341)
!1348 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !1341)
!1349 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1341)
!1351 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !1350)
!1352 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !1350)
!1353 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !1350)
!1354 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !1350)
!1355 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !1350)
!1356 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !1350)
!1357 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1341)
!1358 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !1341)
!1359 = !DILocation(line: 96, column: 3, scope: !1044, inlinedAt: !1342)
!1360 = !DILocation(line: 97, column: 1, scope: !1044, inlinedAt: !1342)
!1361 = !DILocation(line: 1105, column: 14, scope: !1279, inlinedAt: !1290)
!1362 = !DILocation(line: 1094, column: 7, scope: !1279, inlinedAt: !1290)
!1363 = !DILocation(line: 1092, column: 11, scope: !1279, inlinedAt: !1290)
!1364 = !DILocalVariable(name: "ls", arg: 1, scope: !1365, file: !3, line: 596, type: !597)
!1365 = distinct !DISubprogram(name: "explist1", scope: !3, file: !3, line: 596, type: !1366, isLocal: true, isDefinition: true, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1368)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!203, !597, !988}
!1368 = !{!1364, !1369, !1370}
!1369 = !DILocalVariable(name: "v", arg: 2, scope: !1365, file: !3, line: 596, type: !988)
!1370 = !DILocalVariable(name: "n", scope: !1365, file: !3, line: 598, type: !203)
!1371 = !DILocation(line: 596, column: 32, scope: !1365, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 1106, column: 24, scope: !1279, inlinedAt: !1290)
!1373 = !DILocation(line: 596, column: 45, scope: !1365, inlinedAt: !1372)
!1374 = !DILocation(line: 598, column: 7, scope: !1365, inlinedAt: !1372)
!1375 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 599, column: 3, scope: !1365, inlinedAt: !1372)
!1377 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !1376)
!1378 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !1376)
!1379 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !1376)
!1380 = !DILocation(line: 600, column: 3, scope: !1365, inlinedAt: !1372)
!1381 = !DILocation(line: 80, column: 32, scope: !641, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 600, column: 10, scope: !1365, inlinedAt: !1372)
!1383 = !DILocation(line: 80, column: 40, scope: !641, inlinedAt: !1382)
!1384 = !DILocation(line: 81, column: 13, scope: !650, inlinedAt: !1382)
!1385 = !DILocation(line: 81, column: 19, scope: !650, inlinedAt: !1382)
!1386 = !DILocation(line: 81, column: 7, scope: !641, inlinedAt: !1382)
!1387 = !DILocation(line: 82, column: 5, scope: !654, inlinedAt: !1382)
!1388 = !DILocation(line: 83, column: 5, scope: !654, inlinedAt: !1382)
!1389 = !DILocation(line: 86, column: 1, scope: !641, inlinedAt: !1382)
!1390 = !DILocation(line: 601, column: 26, scope: !1391, inlinedAt: !1372)
!1391 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 600, column: 29)
!1392 = !DILocation(line: 601, column: 5, scope: !1391, inlinedAt: !1372)
!1393 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 602, column: 5, scope: !1391, inlinedAt: !1372)
!1395 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !1394)
!1396 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !1394)
!1397 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !1394)
!1398 = !DILocation(line: 603, column: 6, scope: !1391, inlinedAt: !1372)
!1399 = distinct !{!1399, !1400, !1401}
!1400 = !DILocation(line: 600, column: 3, scope: !1365)
!1401 = !DILocation(line: 604, column: 3, scope: !1365)
!1402 = !DILocation(line: 0, scope: !1391, inlinedAt: !1372)
!1403 = !DILocation(line: 85, column: 8, scope: !650, inlinedAt: !1382)
!1404 = !DILocation(line: 605, column: 3, scope: !1365, inlinedAt: !1372)
!1405 = !DILocation(line: 1106, column: 3, scope: !1279, inlinedAt: !1290)
!1406 = !DILocation(line: 1107, column: 3, scope: !1279, inlinedAt: !1290)
!1407 = !DILocation(line: 1108, column: 3, scope: !1279, inlinedAt: !1290)
!1408 = !DILocation(line: 1109, column: 1, scope: !1279, inlinedAt: !1290)
!1409 = !DILocation(line: 1122, column: 49, scope: !1157, inlinedAt: !1089)
!1410 = !DILocation(line: 1123, column: 14, scope: !1157, inlinedAt: !1089)
!1411 = !DILocation(line: 1124, column: 3, scope: !1157, inlinedAt: !1089)
!1412 = !DILocation(line: 0, scope: !1090)
!1413 = !DILocation(line: 1125, column: 3, scope: !1082, inlinedAt: !1089)
!1414 = !DILocation(line: 1126, column: 3, scope: !1082, inlinedAt: !1089)
!1415 = !DILocation(line: 1127, column: 1, scope: !1082, inlinedAt: !1089)
!1416 = !DILocation(line: 1290, column: 7, scope: !1090)
!1417 = !DILocalVariable(name: "ls", arg: 1, scope: !1418, file: !3, line: 1010, type: !597)
!1418 = distinct !DISubprogram(name: "repeatstat", scope: !3, file: !3, line: 1010, type: !673, isLocal: true, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1419)
!1419 = !{!1417, !1420, !1421, !1422, !1423, !1424, !1425}
!1420 = !DILocalVariable(name: "line", arg: 2, scope: !1418, file: !3, line: 1010, type: !203)
!1421 = !DILocalVariable(name: "condexit", scope: !1418, file: !3, line: 1012, type: !203)
!1422 = !DILocalVariable(name: "fs", scope: !1418, file: !3, line: 1013, type: !705)
!1423 = !DILocalVariable(name: "repeat_init", scope: !1418, file: !3, line: 1014, type: !203)
!1424 = !DILocalVariable(name: "bl1", scope: !1418, file: !3, line: 1015, type: !949)
!1425 = !DILocalVariable(name: "bl2", scope: !1418, file: !3, line: 1015, type: !949)
!1426 = !DILocation(line: 1010, column: 35, scope: !1418, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 1293, column: 7, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !905, file: !3, line: 1292, column: 21)
!1429 = !DILocation(line: 1010, column: 43, scope: !1418, inlinedAt: !1427)
!1430 = !DILocation(line: 1013, column: 23, scope: !1418, inlinedAt: !1427)
!1431 = !DILocation(line: 1013, column: 14, scope: !1418, inlinedAt: !1427)
!1432 = !DILocation(line: 1014, column: 21, scope: !1418, inlinedAt: !1427)
!1433 = !DILocation(line: 1014, column: 7, scope: !1418, inlinedAt: !1427)
!1434 = !DILocation(line: 1015, column: 3, scope: !1418, inlinedAt: !1427)
!1435 = !DILocation(line: 1015, column: 12, scope: !1418, inlinedAt: !1427)
!1436 = !DILocation(line: 285, column: 36, scope: !1013, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 1016, column: 3, scope: !1418, inlinedAt: !1427)
!1438 = !DILocation(line: 285, column: 50, scope: !1013, inlinedAt: !1437)
!1439 = !DILocation(line: 285, column: 62, scope: !1013, inlinedAt: !1437)
!1440 = !DILocation(line: 286, column: 7, scope: !1013, inlinedAt: !1437)
!1441 = !DILocation(line: 286, column: 17, scope: !1013, inlinedAt: !1437)
!1442 = !DILocation(line: 287, column: 7, scope: !1013, inlinedAt: !1437)
!1443 = !DILocation(line: 287, column: 19, scope: !1013, inlinedAt: !1437)
!1444 = !DILocation(line: 288, column: 21, scope: !1013, inlinedAt: !1437)
!1445 = !DILocation(line: 288, column: 7, scope: !1013, inlinedAt: !1437)
!1446 = !DILocation(line: 288, column: 15, scope: !1013, inlinedAt: !1437)
!1447 = !DILocation(line: 289, column: 7, scope: !1013, inlinedAt: !1437)
!1448 = !DILocation(line: 289, column: 13, scope: !1013, inlinedAt: !1437)
!1449 = !DILocation(line: 290, column: 22, scope: !1013, inlinedAt: !1437)
!1450 = !DILocation(line: 290, column: 16, scope: !1013, inlinedAt: !1437)
!1451 = !DILocation(line: 293, column: 1, scope: !1013, inlinedAt: !1437)
!1452 = !DILocation(line: 1015, column: 17, scope: !1418, inlinedAt: !1427)
!1453 = !DILocation(line: 285, column: 36, scope: !1013, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 1017, column: 3, scope: !1418, inlinedAt: !1427)
!1455 = !DILocation(line: 285, column: 50, scope: !1013, inlinedAt: !1454)
!1456 = !DILocation(line: 285, column: 62, scope: !1013, inlinedAt: !1454)
!1457 = !DILocation(line: 286, column: 7, scope: !1013, inlinedAt: !1454)
!1458 = !DILocation(line: 286, column: 17, scope: !1013, inlinedAt: !1454)
!1459 = !DILocation(line: 287, column: 7, scope: !1013, inlinedAt: !1454)
!1460 = !DILocation(line: 287, column: 19, scope: !1013, inlinedAt: !1454)
!1461 = !DILocation(line: 288, column: 7, scope: !1013, inlinedAt: !1454)
!1462 = !DILocation(line: 288, column: 15, scope: !1013, inlinedAt: !1454)
!1463 = !DILocation(line: 289, column: 7, scope: !1013, inlinedAt: !1454)
!1464 = !DILocation(line: 289, column: 13, scope: !1013, inlinedAt: !1454)
!1465 = !DILocation(line: 290, column: 22, scope: !1013, inlinedAt: !1454)
!1466 = !DILocation(line: 290, column: 16, scope: !1013, inlinedAt: !1454)
!1467 = !DILocation(line: 291, column: 10, scope: !1013, inlinedAt: !1454)
!1468 = !DILocation(line: 293, column: 1, scope: !1013, inlinedAt: !1454)
!1469 = !DILocation(line: 1018, column: 3, scope: !1418, inlinedAt: !1427)
!1470 = !DILocation(line: 1325, column: 30, scope: !594, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 1019, column: 3, scope: !1418, inlinedAt: !1427)
!1472 = !DILocation(line: 1327, column: 7, scope: !594, inlinedAt: !1471)
!1473 = !DILocation(line: 276, column: 35, scope: !605, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 1328, column: 3, scope: !594, inlinedAt: !1471)
!1475 = !DILocation(line: 277, column: 13, scope: !610, inlinedAt: !1474)
!1476 = !DILocation(line: 277, column: 16, scope: !610, inlinedAt: !1474)
!1477 = !DILocation(line: 277, column: 7, scope: !610, inlinedAt: !1474)
!1478 = !DILocation(line: 277, column: 24, scope: !610, inlinedAt: !1474)
!1479 = !DILocation(line: 277, column: 7, scope: !605, inlinedAt: !1474)
!1480 = !DILocation(line: 278, column: 2, scope: !610, inlinedAt: !1474)
!1481 = !DILocation(line: 279, column: 1, scope: !605, inlinedAt: !1474)
!1482 = !DILocation(line: 1329, column: 3, scope: !594, inlinedAt: !1471)
!1483 = !DILocation(line: 1329, column: 18, scope: !594, inlinedAt: !1471)
!1484 = !DILocation(line: 1329, column: 41, scope: !594, inlinedAt: !1471)
!1485 = !DILocation(line: 871, column: 30, scope: !627, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 1329, column: 22, scope: !594, inlinedAt: !1471)
!1487 = !DILocation(line: 872, column: 3, scope: !627, inlinedAt: !1486)
!1488 = !DILocation(line: 875, column: 7, scope: !635, inlinedAt: !1486)
!1489 = !DILocation(line: 878, column: 1, scope: !627, inlinedAt: !1486)
!1490 = !DILocation(line: 876, column: 14, scope: !635, inlinedAt: !1486)
!1491 = !DILocation(line: 1330, column: 14, scope: !639, inlinedAt: !1471)
!1492 = !DILocation(line: 80, column: 32, scope: !641, inlinedAt: !1493)
!1493 = distinct !DILocation(line: 1331, column: 5, scope: !639, inlinedAt: !1471)
!1494 = !DILocation(line: 80, column: 40, scope: !641, inlinedAt: !1493)
!1495 = !DILocation(line: 81, column: 13, scope: !650, inlinedAt: !1493)
!1496 = !DILocation(line: 81, column: 19, scope: !650, inlinedAt: !1493)
!1497 = !DILocation(line: 81, column: 7, scope: !641, inlinedAt: !1493)
!1498 = !DILocation(line: 82, column: 5, scope: !654, inlinedAt: !1493)
!1499 = !DILocation(line: 83, column: 5, scope: !654, inlinedAt: !1493)
!1500 = !DILocation(line: 0, scope: !639, inlinedAt: !1471)
!1501 = !DILocation(line: 86, column: 1, scope: !641, inlinedAt: !1493)
!1502 = !DILocation(line: 1334, column: 27, scope: !639, inlinedAt: !1471)
!1503 = !DILocation(line: 1334, column: 31, scope: !639, inlinedAt: !1471)
!1504 = !DILocation(line: 1334, column: 23, scope: !639, inlinedAt: !1471)
!1505 = !DILocation(line: 1334, column: 13, scope: !639, inlinedAt: !1471)
!1506 = !DILocation(line: 1334, column: 21, scope: !639, inlinedAt: !1471)
!1507 = !DILocation(line: 1329, column: 11, scope: !594, inlinedAt: !1471)
!1508 = !DILocation(line: 1336, column: 3, scope: !594, inlinedAt: !1471)
!1509 = !DILocation(line: 1337, column: 1, scope: !594, inlinedAt: !1471)
!1510 = !DILocation(line: 1020, column: 3, scope: !1418, inlinedAt: !1427)
!1511 = !DILocation(line: 965, column: 28, scope: !961, inlinedAt: !1512)
!1512 = distinct !DILocation(line: 1021, column: 14, scope: !1418, inlinedAt: !1427)
!1513 = !DILocation(line: 967, column: 3, scope: !961, inlinedAt: !1512)
!1514 = !DILocation(line: 967, column: 11, scope: !961, inlinedAt: !1512)
!1515 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !1516)
!1516 = distinct !DILocation(line: 968, column: 3, scope: !961, inlinedAt: !1512)
!1517 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !1516)
!1518 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !1516)
!1519 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !1516)
!1520 = !DILocation(line: 969, column: 9, scope: !997, inlinedAt: !1512)
!1521 = !DILocation(line: 969, column: 11, scope: !997, inlinedAt: !1512)
!1522 = !DILocation(line: 969, column: 7, scope: !961, inlinedAt: !1512)
!1523 = !DILocation(line: 969, column: 24, scope: !997, inlinedAt: !1512)
!1524 = !DILocation(line: 969, column: 20, scope: !997, inlinedAt: !1512)
!1525 = !DILocation(line: 970, column: 21, scope: !961, inlinedAt: !1512)
!1526 = !DILocation(line: 970, column: 3, scope: !961, inlinedAt: !1512)
!1527 = !DILocation(line: 971, column: 12, scope: !961, inlinedAt: !1512)
!1528 = !DILocation(line: 972, column: 1, scope: !961, inlinedAt: !1512)
!1529 = !DILocation(line: 971, column: 3, scope: !961, inlinedAt: !1512)
!1530 = !DILocation(line: 1012, column: 7, scope: !1418, inlinedAt: !1427)
!1531 = !DILocation(line: 1022, column: 12, scope: !1532, inlinedAt: !1427)
!1532 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 1022, column: 7)
!1533 = !DILocation(line: 1022, column: 8, scope: !1532, inlinedAt: !1427)
!1534 = !DILocation(line: 1022, column: 7, scope: !1418, inlinedAt: !1427)
!1535 = !DILocation(line: 1023, column: 5, scope: !1536, inlinedAt: !1427)
!1536 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 1022, column: 19)
!1537 = !DILocation(line: 1024, column: 24, scope: !1536, inlinedAt: !1427)
!1538 = !DILocation(line: 1024, column: 5, scope: !1536, inlinedAt: !1427)
!1539 = !DILocation(line: 1025, column: 3, scope: !1536, inlinedAt: !1427)
!1540 = !DILocation(line: 1027, column: 5, scope: !1541, inlinedAt: !1427)
!1541 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 1026, column: 8)
!1542 = !DILocation(line: 1028, column: 26, scope: !1541, inlinedAt: !1427)
!1543 = !DILocation(line: 1028, column: 5, scope: !1541, inlinedAt: !1427)
!1544 = !DILocation(line: 1029, column: 5, scope: !1541, inlinedAt: !1427)
!1545 = !DILocation(line: 1030, column: 24, scope: !1541, inlinedAt: !1427)
!1546 = !DILocation(line: 1030, column: 28, scope: !1541, inlinedAt: !1427)
!1547 = !DILocation(line: 1030, column: 5, scope: !1541, inlinedAt: !1427)
!1548 = !DILocation(line: 1032, column: 3, scope: !1418, inlinedAt: !1427)
!1549 = !DILocation(line: 1033, column: 1, scope: !1418, inlinedAt: !1427)
!1550 = !DILocation(line: 1294, column: 7, scope: !1428)
!1551 = !DILocalVariable(name: "ls", arg: 1, scope: !1552, file: !3, line: 1212, type: !597)
!1552 = distinct !DISubprogram(name: "funcstat", scope: !3, file: !3, line: 1212, type: !673, isLocal: true, isDefinition: true, scopeLine: 1212, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1553)
!1553 = !{!1551, !1554, !1555, !1556, !1557}
!1554 = !DILocalVariable(name: "line", arg: 2, scope: !1552, file: !3, line: 1212, type: !203)
!1555 = !DILocalVariable(name: "needself", scope: !1552, file: !3, line: 1214, type: !203)
!1556 = !DILocalVariable(name: "v", scope: !1552, file: !3, line: 1215, type: !964)
!1557 = !DILocalVariable(name: "b", scope: !1552, file: !3, line: 1215, type: !964)
!1558 = !DILocation(line: 1212, column: 33, scope: !1552, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 1297, column: 7, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !905, file: !3, line: 1296, column: 23)
!1561 = !DILocation(line: 1212, column: 41, scope: !1552, inlinedAt: !1559)
!1562 = !DILocation(line: 1215, column: 3, scope: !1552, inlinedAt: !1559)
!1563 = !DILocation(line: 1216, column: 3, scope: !1552, inlinedAt: !1559)
!1564 = !DILocation(line: 1215, column: 11, scope: !1552, inlinedAt: !1559)
!1565 = !DILocalVariable(name: "ls", arg: 1, scope: !1566, file: !3, line: 1198, type: !597)
!1566 = distinct !DISubprogram(name: "funcname", scope: !3, file: !3, line: 1198, type: !1366, isLocal: true, isDefinition: true, scopeLine: 1198, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1567)
!1567 = !{!1565, !1568, !1569}
!1568 = !DILocalVariable(name: "v", arg: 2, scope: !1566, file: !3, line: 1198, type: !988)
!1569 = !DILocalVariable(name: "needself", scope: !1566, file: !3, line: 1200, type: !203)
!1570 = !DILocation(line: 1198, column: 32, scope: !1566, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 1217, column: 14, scope: !1552, inlinedAt: !1559)
!1572 = !DILocation(line: 1198, column: 45, scope: !1566, inlinedAt: !1571)
!1573 = !DILocation(line: 1200, column: 7, scope: !1566, inlinedAt: !1571)
!1574 = !DILocalVariable(name: "ls", arg: 1, scope: !1575, file: !3, line: 248, type: !597)
!1575 = distinct !DISubprogram(name: "singlevar", scope: !3, file: !3, line: 248, type: !986, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1576)
!1576 = !{!1574, !1577, !1578, !1579}
!1577 = !DILocalVariable(name: "var", arg: 2, scope: !1575, file: !3, line: 248, type: !988)
!1578 = !DILocalVariable(name: "varname", scope: !1575, file: !3, line: 249, type: !332)
!1579 = !DILocalVariable(name: "fs", scope: !1575, file: !3, line: 250, type: !705)
!1580 = !DILocation(line: 248, column: 34, scope: !1575, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 1201, column: 3, scope: !1566, inlinedAt: !1571)
!1582 = !DILocation(line: 248, column: 47, scope: !1575, inlinedAt: !1581)
!1583 = !DILocation(line: 117, column: 42, scope: !1115, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 249, column: 22, scope: !1575, inlinedAt: !1581)
!1585 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 119, column: 3, scope: !1115, inlinedAt: !1584)
!1587 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !1586)
!1588 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !1586)
!1589 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !1586)
!1590 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !1586)
!1591 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1586)
!1593 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !1592)
!1594 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !1592)
!1595 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !1592)
!1596 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !1592)
!1597 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !1592)
!1598 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !1592)
!1599 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1586)
!1600 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !1586)
!1601 = !DILocation(line: 120, column: 14, scope: !1115, inlinedAt: !1584)
!1602 = !DILocation(line: 120, column: 22, scope: !1115, inlinedAt: !1584)
!1603 = !DILocation(line: 118, column: 12, scope: !1115, inlinedAt: !1584)
!1604 = !DILocation(line: 121, column: 3, scope: !1115, inlinedAt: !1584)
!1605 = !DILocation(line: 122, column: 3, scope: !1115, inlinedAt: !1584)
!1606 = !DILocation(line: 249, column: 12, scope: !1575, inlinedAt: !1581)
!1607 = !DILocation(line: 250, column: 23, scope: !1575, inlinedAt: !1581)
!1608 = !DILocation(line: 250, column: 14, scope: !1575, inlinedAt: !1581)
!1609 = !DILocation(line: 251, column: 7, scope: !1610, inlinedAt: !1581)
!1610 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 251, column: 7)
!1611 = !DILocation(line: 251, column: 41, scope: !1610, inlinedAt: !1581)
!1612 = !DILocation(line: 251, column: 7, scope: !1575, inlinedAt: !1581)
!1613 = !DILocation(line: 252, column: 21, scope: !1610, inlinedAt: !1581)
!1614 = !DILocation(line: 252, column: 10, scope: !1610, inlinedAt: !1581)
!1615 = !DILocation(line: 252, column: 14, scope: !1610, inlinedAt: !1581)
!1616 = !DILocation(line: 252, column: 19, scope: !1610, inlinedAt: !1581)
!1617 = !DILocation(line: 252, column: 5, scope: !1610, inlinedAt: !1581)
!1618 = !DILocation(line: 253, column: 1, scope: !1575, inlinedAt: !1581)
!1619 = !DILocation(line: 1202, column: 3, scope: !1566, inlinedAt: !1571)
!1620 = !DILocation(line: 1202, column: 16, scope: !1566, inlinedAt: !1571)
!1621 = !DILocation(line: 1202, column: 22, scope: !1566, inlinedAt: !1571)
!1622 = !DILocalVariable(name: "ls", arg: 1, scope: !1623, file: !3, line: 407, type: !597)
!1623 = distinct !DISubprogram(name: "field", scope: !3, file: !3, line: 407, type: !986, isLocal: true, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1624)
!1624 = !{!1622, !1625, !1626, !1627}
!1625 = !DILocalVariable(name: "v", arg: 2, scope: !1623, file: !3, line: 407, type: !988)
!1626 = !DILocalVariable(name: "fs", scope: !1623, file: !3, line: 409, type: !705)
!1627 = !DILocalVariable(name: "key", scope: !1623, file: !3, line: 410, type: !964)
!1628 = !DILocation(line: 407, column: 30, scope: !1623, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 1203, column: 5, scope: !1566, inlinedAt: !1571)
!1630 = !DILocation(line: 407, column: 43, scope: !1623, inlinedAt: !1629)
!1631 = !DILocation(line: 409, column: 23, scope: !1623, inlinedAt: !1629)
!1632 = !DILocation(line: 409, column: 14, scope: !1623, inlinedAt: !1629)
!1633 = !DILocation(line: 410, column: 3, scope: !1623, inlinedAt: !1629)
!1634 = !DILocation(line: 411, column: 3, scope: !1623, inlinedAt: !1629)
!1635 = !DILocation(line: 412, column: 3, scope: !1623, inlinedAt: !1629)
!1636 = !DILocation(line: 410, column: 11, scope: !1623, inlinedAt: !1629)
!1637 = !DILocalVariable(name: "ls", arg: 1, scope: !1638, file: !3, line: 138, type: !597)
!1638 = distinct !DISubprogram(name: "checkname", scope: !3, file: !3, line: 138, type: !986, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1639)
!1639 = !{!1637, !1640}
!1640 = !DILocalVariable(name: "e", arg: 2, scope: !1638, file: !3, line: 138, type: !988)
!1641 = !DILocation(line: 138, column: 33, scope: !1638, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 413, column: 3, scope: !1623, inlinedAt: !1629)
!1643 = !DILocation(line: 138, column: 46, scope: !1638, inlinedAt: !1642)
!1644 = !DILocation(line: 117, column: 42, scope: !1115, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 139, column: 21, scope: !1638, inlinedAt: !1642)
!1646 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 119, column: 3, scope: !1115, inlinedAt: !1645)
!1648 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !1647)
!1649 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !1647)
!1650 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !1647)
!1651 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !1647)
!1652 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1647)
!1654 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !1653)
!1655 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !1653)
!1656 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !1653)
!1657 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !1653)
!1658 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !1653)
!1659 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !1653)
!1660 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1647)
!1661 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !1647)
!1662 = !DILocation(line: 120, column: 22, scope: !1115, inlinedAt: !1645)
!1663 = !DILocation(line: 118, column: 12, scope: !1115, inlinedAt: !1645)
!1664 = !DILocation(line: 121, column: 3, scope: !1115, inlinedAt: !1645)
!1665 = !DILocation(line: 122, column: 3, scope: !1115, inlinedAt: !1645)
!1666 = !DILocalVariable(name: "ls", arg: 1, scope: !1667, file: !3, line: 133, type: !597)
!1667 = distinct !DISubprogram(name: "codestring", scope: !3, file: !3, line: 133, type: !1668, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1670)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{null, !597, !988, !332}
!1670 = !{!1666, !1671, !1672}
!1671 = !DILocalVariable(name: "e", arg: 2, scope: !1667, file: !3, line: 133, type: !988)
!1672 = !DILocalVariable(name: "s", arg: 3, scope: !1667, file: !3, line: 133, type: !332)
!1673 = !DILocation(line: 133, column: 35, scope: !1667, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 139, column: 3, scope: !1638, inlinedAt: !1642)
!1675 = !DILocation(line: 133, column: 48, scope: !1667, inlinedAt: !1674)
!1676 = !DILocation(line: 133, column: 60, scope: !1667, inlinedAt: !1674)
!1677 = !DILocation(line: 134, column: 36, scope: !1667, inlinedAt: !1674)
!1678 = !DILocation(line: 134, column: 19, scope: !1667, inlinedAt: !1674)
!1679 = !DILocalVariable(name: "e", arg: 1, scope: !1680, file: !3, line: 126, type: !988)
!1680 = distinct !DISubprogram(name: "init_exp", scope: !3, file: !3, line: 126, type: !1681, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1683)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{null, !988, !968, !203}
!1683 = !{!1679, !1684, !1685}
!1684 = !DILocalVariable(name: "k", arg: 2, scope: !1680, file: !3, line: 126, type: !968)
!1685 = !DILocalVariable(name: "i", arg: 3, scope: !1680, file: !3, line: 126, type: !203)
!1686 = !DILocation(line: 126, column: 32, scope: !1680, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 134, column: 3, scope: !1667, inlinedAt: !1674)
!1688 = !DILocation(line: 126, column: 43, scope: !1680, inlinedAt: !1687)
!1689 = !DILocation(line: 126, column: 50, scope: !1680, inlinedAt: !1687)
!1690 = !DILocation(line: 127, column: 15, scope: !1680, inlinedAt: !1687)
!1691 = !{!999, !574, i64 16}
!1692 = !DILocation(line: 127, column: 8, scope: !1680, inlinedAt: !1687)
!1693 = !DILocation(line: 128, column: 8, scope: !1680, inlinedAt: !1687)
!1694 = !DILocation(line: 129, column: 15, scope: !1680, inlinedAt: !1687)
!1695 = !DILocation(line: 130, column: 1, scope: !1680, inlinedAt: !1687)
!1696 = !DILocation(line: 135, column: 1, scope: !1667, inlinedAt: !1674)
!1697 = !DILocation(line: 140, column: 1, scope: !1638, inlinedAt: !1642)
!1698 = !DILocation(line: 414, column: 3, scope: !1623, inlinedAt: !1629)
!1699 = !DILocation(line: 415, column: 1, scope: !1623, inlinedAt: !1629)
!1700 = distinct !{!1700, !1701, !1702}
!1701 = !DILocation(line: 1202, column: 3, scope: !1566)
!1702 = !DILocation(line: 1203, column: 16, scope: !1566)
!1703 = !DILocation(line: 1204, column: 19, scope: !1704, inlinedAt: !1571)
!1704 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 1204, column: 7)
!1705 = !DILocation(line: 1204, column: 7, scope: !1566, inlinedAt: !1571)
!1706 = !DILocation(line: 407, column: 30, scope: !1623, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 1206, column: 5, scope: !1708, inlinedAt: !1571)
!1708 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 1204, column: 27)
!1709 = !DILocation(line: 407, column: 43, scope: !1623, inlinedAt: !1707)
!1710 = !DILocation(line: 409, column: 23, scope: !1623, inlinedAt: !1707)
!1711 = !DILocation(line: 409, column: 14, scope: !1623, inlinedAt: !1707)
!1712 = !DILocation(line: 410, column: 3, scope: !1623, inlinedAt: !1707)
!1713 = !DILocation(line: 411, column: 3, scope: !1623, inlinedAt: !1707)
!1714 = !DILocation(line: 412, column: 3, scope: !1623, inlinedAt: !1707)
!1715 = !DILocation(line: 410, column: 11, scope: !1623, inlinedAt: !1707)
!1716 = !DILocation(line: 138, column: 33, scope: !1638, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 413, column: 3, scope: !1623, inlinedAt: !1707)
!1718 = !DILocation(line: 138, column: 46, scope: !1638, inlinedAt: !1717)
!1719 = !DILocation(line: 117, column: 42, scope: !1115, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 139, column: 21, scope: !1638, inlinedAt: !1717)
!1721 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 119, column: 3, scope: !1115, inlinedAt: !1720)
!1723 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !1722)
!1724 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !1722)
!1725 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !1722)
!1726 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !1722)
!1727 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1722)
!1729 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !1728)
!1730 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !1728)
!1731 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !1728)
!1732 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !1728)
!1733 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !1728)
!1734 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !1728)
!1735 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1722)
!1736 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !1722)
!1737 = !DILocation(line: 120, column: 22, scope: !1115, inlinedAt: !1720)
!1738 = !DILocation(line: 118, column: 12, scope: !1115, inlinedAt: !1720)
!1739 = !DILocation(line: 121, column: 3, scope: !1115, inlinedAt: !1720)
!1740 = !DILocation(line: 122, column: 3, scope: !1115, inlinedAt: !1720)
!1741 = !DILocation(line: 133, column: 35, scope: !1667, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 139, column: 3, scope: !1638, inlinedAt: !1717)
!1743 = !DILocation(line: 133, column: 48, scope: !1667, inlinedAt: !1742)
!1744 = !DILocation(line: 133, column: 60, scope: !1667, inlinedAt: !1742)
!1745 = !DILocation(line: 134, column: 36, scope: !1667, inlinedAt: !1742)
!1746 = !DILocation(line: 134, column: 19, scope: !1667, inlinedAt: !1742)
!1747 = !DILocation(line: 126, column: 32, scope: !1680, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 134, column: 3, scope: !1667, inlinedAt: !1742)
!1749 = !DILocation(line: 126, column: 43, scope: !1680, inlinedAt: !1748)
!1750 = !DILocation(line: 126, column: 50, scope: !1680, inlinedAt: !1748)
!1751 = !DILocation(line: 127, column: 13, scope: !1680, inlinedAt: !1748)
!1752 = !DILocation(line: 127, column: 15, scope: !1680, inlinedAt: !1748)
!1753 = !DILocation(line: 127, column: 6, scope: !1680, inlinedAt: !1748)
!1754 = !DILocation(line: 127, column: 8, scope: !1680, inlinedAt: !1748)
!1755 = !DILocation(line: 128, column: 6, scope: !1680, inlinedAt: !1748)
!1756 = !DILocation(line: 128, column: 8, scope: !1680, inlinedAt: !1748)
!1757 = !DILocation(line: 129, column: 6, scope: !1680, inlinedAt: !1748)
!1758 = !DILocation(line: 129, column: 10, scope: !1680, inlinedAt: !1748)
!1759 = !DILocation(line: 129, column: 15, scope: !1680, inlinedAt: !1748)
!1760 = !DILocation(line: 130, column: 1, scope: !1680, inlinedAt: !1748)
!1761 = !DILocation(line: 135, column: 1, scope: !1667, inlinedAt: !1742)
!1762 = !DILocation(line: 140, column: 1, scope: !1638, inlinedAt: !1717)
!1763 = !DILocation(line: 414, column: 3, scope: !1623, inlinedAt: !1707)
!1764 = !DILocation(line: 415, column: 1, scope: !1623, inlinedAt: !1707)
!1765 = !DILocation(line: 1207, column: 3, scope: !1708, inlinedAt: !1571)
!1766 = !DILocation(line: 0, scope: !1566, inlinedAt: !1571)
!1767 = !DILocation(line: 1208, column: 3, scope: !1566, inlinedAt: !1571)
!1768 = !DILocation(line: 1214, column: 7, scope: !1552, inlinedAt: !1559)
!1769 = !DILocation(line: 1215, column: 14, scope: !1552, inlinedAt: !1559)
!1770 = !DILocation(line: 1218, column: 3, scope: !1552, inlinedAt: !1559)
!1771 = !DILocation(line: 1219, column: 21, scope: !1552, inlinedAt: !1559)
!1772 = !DILocation(line: 1219, column: 3, scope: !1552, inlinedAt: !1559)
!1773 = !DILocation(line: 1220, column: 20, scope: !1552, inlinedAt: !1559)
!1774 = !DILocation(line: 1220, column: 3, scope: !1552, inlinedAt: !1559)
!1775 = !DILocation(line: 1221, column: 1, scope: !1552, inlinedAt: !1559)
!1776 = !DILocation(line: 1298, column: 7, scope: !1560)
!1777 = !DILocation(line: 1301, column: 7, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !905, file: !3, line: 1300, column: 20)
!1779 = !DILocation(line: 80, column: 32, scope: !641, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 1302, column: 11, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 1302, column: 11)
!1782 = !DILocation(line: 80, column: 40, scope: !641, inlinedAt: !1780)
!1783 = !DILocation(line: 81, column: 13, scope: !650, inlinedAt: !1780)
!1784 = !DILocation(line: 81, column: 19, scope: !650, inlinedAt: !1780)
!1785 = !DILocation(line: 81, column: 7, scope: !641, inlinedAt: !1780)
!1786 = !DILocation(line: 82, column: 5, scope: !654, inlinedAt: !1780)
!1787 = !DILocation(line: 83, column: 5, scope: !654, inlinedAt: !1780)
!1788 = !DILocation(line: 86, column: 1, scope: !641, inlinedAt: !1780)
!1789 = !DILocation(line: 1302, column: 11, scope: !1778)
!1790 = !DILocalVariable(name: "ls", arg: 1, scope: !1791, file: !3, line: 1165, type: !597)
!1791 = distinct !DISubprogram(name: "localfunc", scope: !3, file: !3, line: 1165, type: !595, isLocal: true, isDefinition: true, scopeLine: 1165, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1792)
!1792 = !{!1790, !1793, !1794, !1795}
!1793 = !DILocalVariable(name: "v", scope: !1791, file: !3, line: 1166, type: !964)
!1794 = !DILocalVariable(name: "b", scope: !1791, file: !3, line: 1166, type: !964)
!1795 = !DILocalVariable(name: "fs", scope: !1791, file: !3, line: 1167, type: !705)
!1796 = !DILocation(line: 1165, column: 34, scope: !1791, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 1303, column: 9, scope: !1781)
!1798 = !DILocation(line: 1166, column: 3, scope: !1791, inlinedAt: !1797)
!1799 = !DILocation(line: 1167, column: 23, scope: !1791, inlinedAt: !1797)
!1800 = !DILocation(line: 1167, column: 14, scope: !1791, inlinedAt: !1797)
!1801 = !DILocation(line: 117, column: 42, scope: !1115, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 1168, column: 20, scope: !1791, inlinedAt: !1797)
!1803 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !1804)
!1804 = distinct !DILocation(line: 119, column: 3, scope: !1115, inlinedAt: !1802)
!1805 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !1804)
!1806 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !1804)
!1807 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !1804)
!1808 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !1804)
!1809 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1804)
!1811 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !1810)
!1812 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !1810)
!1813 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !1810)
!1814 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !1810)
!1815 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !1810)
!1816 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !1810)
!1817 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1804)
!1818 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !1804)
!1819 = !DILocation(line: 120, column: 14, scope: !1115, inlinedAt: !1802)
!1820 = !DILocation(line: 120, column: 22, scope: !1115, inlinedAt: !1802)
!1821 = !DILocation(line: 118, column: 12, scope: !1115, inlinedAt: !1802)
!1822 = !DILocation(line: 121, column: 3, scope: !1115, inlinedAt: !1802)
!1823 = !DILocation(line: 122, column: 3, scope: !1115, inlinedAt: !1802)
!1824 = !DILocation(line: 1168, column: 3, scope: !1791, inlinedAt: !1797)
!1825 = !DILocation(line: 1169, column: 28, scope: !1791, inlinedAt: !1797)
!1826 = !DILocation(line: 1166, column: 11, scope: !1791, inlinedAt: !1797)
!1827 = !DILocation(line: 126, column: 32, scope: !1680, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 1169, column: 3, scope: !1791, inlinedAt: !1797)
!1829 = !DILocation(line: 126, column: 43, scope: !1680, inlinedAt: !1828)
!1830 = !DILocation(line: 126, column: 50, scope: !1680, inlinedAt: !1828)
!1831 = !DILocation(line: 127, column: 13, scope: !1680, inlinedAt: !1828)
!1832 = !DILocation(line: 127, column: 15, scope: !1680, inlinedAt: !1828)
!1833 = !DILocation(line: 127, column: 6, scope: !1680, inlinedAt: !1828)
!1834 = !DILocation(line: 127, column: 8, scope: !1680, inlinedAt: !1828)
!1835 = !DILocation(line: 128, column: 6, scope: !1680, inlinedAt: !1828)
!1836 = !DILocation(line: 128, column: 8, scope: !1680, inlinedAt: !1828)
!1837 = !DILocation(line: 129, column: 6, scope: !1680, inlinedAt: !1828)
!1838 = !DILocation(line: 129, column: 10, scope: !1680, inlinedAt: !1828)
!1839 = !DILocation(line: 129, column: 15, scope: !1680, inlinedAt: !1828)
!1840 = !DILocation(line: 130, column: 1, scope: !1680, inlinedAt: !1828)
!1841 = !DILocation(line: 1170, column: 3, scope: !1791, inlinedAt: !1797)
!1842 = !DILocalVariable(name: "ls", arg: 1, scope: !1843, file: !3, line: 167, type: !597)
!1843 = distinct !DISubprogram(name: "adjustlocalvars", scope: !3, file: !3, line: 167, type: !673, isLocal: true, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1844)
!1844 = !{!1842, !1845, !1846}
!1845 = !DILocalVariable(name: "nvars", arg: 2, scope: !1843, file: !3, line: 167, type: !203)
!1846 = !DILocalVariable(name: "fs", scope: !1843, file: !3, line: 168, type: !705)
!1847 = !DILocation(line: 167, column: 40, scope: !1843, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 1171, column: 3, scope: !1791, inlinedAt: !1797)
!1849 = !DILocation(line: 167, column: 48, scope: !1843, inlinedAt: !1848)
!1850 = !DILocation(line: 168, column: 23, scope: !1843, inlinedAt: !1848)
!1851 = !DILocation(line: 168, column: 14, scope: !1843, inlinedAt: !1848)
!1852 = !DILocation(line: 169, column: 17, scope: !1843, inlinedAt: !1848)
!1853 = !DILocation(line: 169, column: 15, scope: !1843, inlinedAt: !1848)
!1854 = !DILocation(line: 170, column: 3, scope: !1843, inlinedAt: !1848)
!1855 = !DILocation(line: 170, column: 3, scope: !1856, inlinedAt: !1848)
!1856 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 170, column: 3)
!1857 = !DILocation(line: 171, column: 5, scope: !1858, inlinedAt: !1848)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 170, column: 26)
!1859 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 170, column: 3)
!1860 = !DILocation(line: 171, column: 40, scope: !1858, inlinedAt: !1848)
!1861 = !DILocation(line: 171, column: 48, scope: !1858, inlinedAt: !1848)
!1862 = !{!811, !574, i64 8}
!1863 = !DILocation(line: 170, column: 3, scope: !1859, inlinedAt: !1848)
!1864 = !DILocation(line: 173, column: 1, scope: !1843, inlinedAt: !1848)
!1865 = !DILocation(line: 1172, column: 23, scope: !1791, inlinedAt: !1797)
!1866 = !DILocation(line: 1166, column: 14, scope: !1791, inlinedAt: !1797)
!1867 = !DILocation(line: 1172, column: 3, scope: !1791, inlinedAt: !1797)
!1868 = !DILocation(line: 1173, column: 3, scope: !1791, inlinedAt: !1797)
!1869 = !DILocation(line: 1175, column: 48, scope: !1791, inlinedAt: !1797)
!1870 = !DILocation(line: 1175, column: 3, scope: !1791, inlinedAt: !1797)
!1871 = !DILocation(line: 1175, column: 34, scope: !1791, inlinedAt: !1797)
!1872 = !DILocation(line: 1175, column: 42, scope: !1791, inlinedAt: !1797)
!1873 = !DILocation(line: 1176, column: 1, scope: !1791, inlinedAt: !1797)
!1874 = !DILocation(line: 1303, column: 9, scope: !1781)
!1875 = !DILocation(line: 85, column: 8, scope: !650, inlinedAt: !1780)
!1876 = !DILocalVariable(name: "ls", arg: 1, scope: !1877, file: !3, line: 1179, type: !597)
!1877 = distinct !DISubprogram(name: "localstat", scope: !3, file: !3, line: 1179, type: !595, isLocal: true, isDefinition: true, scopeLine: 1179, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1878)
!1878 = !{!1876, !1879, !1880, !1881}
!1879 = !DILocalVariable(name: "nvars", scope: !1877, file: !3, line: 1181, type: !203)
!1880 = !DILocalVariable(name: "nexps", scope: !1877, file: !3, line: 1182, type: !203)
!1881 = !DILocalVariable(name: "e", scope: !1877, file: !3, line: 1183, type: !964)
!1882 = !DILocation(line: 1179, column: 34, scope: !1877, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 1305, column: 9, scope: !1781)
!1884 = !DILocation(line: 1181, column: 7, scope: !1877, inlinedAt: !1883)
!1885 = !DILocation(line: 1183, column: 3, scope: !1877, inlinedAt: !1883)
!1886 = !DILocation(line: 1184, column: 3, scope: !1877, inlinedAt: !1883)
!1887 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !1888)
!1888 = distinct !DILocation(line: 119, column: 3, scope: !1115, inlinedAt: !1889)
!1889 = distinct !DILocation(line: 1185, column: 22, scope: !1890, inlinedAt: !1883)
!1890 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 1184, column: 6)
!1891 = !DILocation(line: 0, scope: !1890, inlinedAt: !1883)
!1892 = !DILocation(line: 117, column: 42, scope: !1115, inlinedAt: !1889)
!1893 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !1888)
!1894 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !1888)
!1895 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !1888)
!1896 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !1888)
!1897 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !1898)
!1898 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1888)
!1899 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !1898)
!1900 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !1898)
!1901 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !1898)
!1902 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !1898)
!1903 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !1898)
!1904 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !1898)
!1905 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !1888)
!1906 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !1888)
!1907 = !DILocation(line: 120, column: 22, scope: !1115, inlinedAt: !1889)
!1908 = !DILocation(line: 118, column: 12, scope: !1115, inlinedAt: !1889)
!1909 = !DILocation(line: 121, column: 3, scope: !1115, inlinedAt: !1889)
!1910 = !DILocation(line: 122, column: 3, scope: !1115, inlinedAt: !1889)
!1911 = !DILocation(line: 1185, column: 46, scope: !1890, inlinedAt: !1883)
!1912 = !DILocation(line: 1185, column: 5, scope: !1890, inlinedAt: !1883)
!1913 = !DILocation(line: 80, column: 32, scope: !641, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 1186, column: 12, scope: !1877, inlinedAt: !1883)
!1915 = !DILocation(line: 80, column: 40, scope: !641, inlinedAt: !1914)
!1916 = !DILocation(line: 81, column: 13, scope: !650, inlinedAt: !1914)
!1917 = !DILocation(line: 81, column: 19, scope: !650, inlinedAt: !1914)
!1918 = !DILocation(line: 81, column: 7, scope: !641, inlinedAt: !1914)
!1919 = !DILocation(line: 82, column: 5, scope: !654, inlinedAt: !1914)
!1920 = !DILocation(line: 83, column: 5, scope: !654, inlinedAt: !1914)
!1921 = !DILocation(line: 86, column: 1, scope: !641, inlinedAt: !1914)
!1922 = !DILocation(line: 1186, column: 3, scope: !1890, inlinedAt: !1883)
!1923 = !DILocation(line: 85, column: 8, scope: !650, inlinedAt: !1914)
!1924 = !DILocation(line: 80, column: 32, scope: !641, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 1187, column: 7, scope: !1926, inlinedAt: !1883)
!1926 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 1187, column: 7)
!1927 = !DILocation(line: 80, column: 40, scope: !641, inlinedAt: !1925)
!1928 = !DILocation(line: 81, column: 19, scope: !650, inlinedAt: !1925)
!1929 = !DILocation(line: 81, column: 7, scope: !641, inlinedAt: !1925)
!1930 = !DILocation(line: 82, column: 5, scope: !654, inlinedAt: !1925)
!1931 = !DILocation(line: 83, column: 5, scope: !654, inlinedAt: !1925)
!1932 = !DILocation(line: 86, column: 1, scope: !641, inlinedAt: !1925)
!1933 = !DILocation(line: 1187, column: 7, scope: !1877, inlinedAt: !1883)
!1934 = !DILocation(line: 1183, column: 11, scope: !1877, inlinedAt: !1883)
!1935 = !DILocation(line: 596, column: 32, scope: !1365, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 1188, column: 13, scope: !1926, inlinedAt: !1883)
!1937 = !DILocation(line: 596, column: 45, scope: !1365, inlinedAt: !1936)
!1938 = !DILocation(line: 598, column: 7, scope: !1365, inlinedAt: !1936)
!1939 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 599, column: 3, scope: !1365, inlinedAt: !1936)
!1941 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !1940)
!1942 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !1940)
!1943 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !1940)
!1944 = !DILocation(line: 600, column: 3, scope: !1365, inlinedAt: !1936)
!1945 = !DILocation(line: 80, column: 32, scope: !641, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 600, column: 10, scope: !1365, inlinedAt: !1936)
!1947 = !DILocation(line: 80, column: 40, scope: !641, inlinedAt: !1946)
!1948 = !DILocation(line: 81, column: 13, scope: !650, inlinedAt: !1946)
!1949 = !DILocation(line: 81, column: 19, scope: !650, inlinedAt: !1946)
!1950 = !DILocation(line: 81, column: 7, scope: !641, inlinedAt: !1946)
!1951 = !DILocation(line: 82, column: 5, scope: !654, inlinedAt: !1946)
!1952 = !DILocation(line: 83, column: 5, scope: !654, inlinedAt: !1946)
!1953 = !DILocation(line: 86, column: 1, scope: !641, inlinedAt: !1946)
!1954 = !DILocation(line: 601, column: 26, scope: !1391, inlinedAt: !1936)
!1955 = !DILocation(line: 601, column: 5, scope: !1391, inlinedAt: !1936)
!1956 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 602, column: 5, scope: !1391, inlinedAt: !1936)
!1958 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !1957)
!1959 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !1957)
!1960 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !1957)
!1961 = !DILocation(line: 603, column: 6, scope: !1391, inlinedAt: !1936)
!1962 = !DILocation(line: 0, scope: !1391, inlinedAt: !1936)
!1963 = !DILocation(line: 85, column: 8, scope: !650, inlinedAt: !1946)
!1964 = !DILocation(line: 605, column: 3, scope: !1365, inlinedAt: !1936)
!1965 = !DILocation(line: 1182, column: 7, scope: !1877, inlinedAt: !1883)
!1966 = !DILocation(line: 1188, column: 5, scope: !1926, inlinedAt: !1883)
!1967 = !DILocation(line: 85, column: 8, scope: !650, inlinedAt: !1925)
!1968 = !DILocation(line: 1190, column: 7, scope: !1969, inlinedAt: !1883)
!1969 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 1189, column: 8)
!1970 = !DILocation(line: 1190, column: 9, scope: !1969, inlinedAt: !1883)
!1971 = !DILocation(line: 0, scope: !1969, inlinedAt: !1883)
!1972 = !DILocation(line: 1193, column: 3, scope: !1877, inlinedAt: !1883)
!1973 = !DILocation(line: 167, column: 40, scope: !1843, inlinedAt: !1974)
!1974 = distinct !DILocation(line: 1194, column: 3, scope: !1877, inlinedAt: !1883)
!1975 = !DILocation(line: 167, column: 48, scope: !1843, inlinedAt: !1974)
!1976 = !DILocation(line: 168, column: 23, scope: !1843, inlinedAt: !1974)
!1977 = !DILocation(line: 168, column: 14, scope: !1843, inlinedAt: !1974)
!1978 = !DILocation(line: 169, column: 17, scope: !1843, inlinedAt: !1974)
!1979 = !DILocation(line: 169, column: 15, scope: !1843, inlinedAt: !1974)
!1980 = !DILocation(line: 170, column: 3, scope: !1843, inlinedAt: !1974)
!1981 = !DILocation(line: 170, column: 3, scope: !1856, inlinedAt: !1974)
!1982 = !DILocation(line: 171, column: 5, scope: !1858, inlinedAt: !1974)
!1983 = !DILocation(line: 171, column: 40, scope: !1858, inlinedAt: !1974)
!1984 = !DILocation(line: 171, column: 48, scope: !1858, inlinedAt: !1974)
!1985 = !DILocation(line: 170, column: 22, scope: !1859, inlinedAt: !1974)
!1986 = !DILocation(line: 170, column: 3, scope: !1859, inlinedAt: !1974)
!1987 = distinct !{!1987, !1988, !1989}
!1988 = !DILocation(line: 170, column: 3, scope: !1856)
!1989 = !DILocation(line: 172, column: 3, scope: !1856)
!1990 = !DILocation(line: 173, column: 1, scope: !1843, inlinedAt: !1974)
!1991 = !DILocation(line: 1195, column: 1, scope: !1877, inlinedAt: !1883)
!1992 = !DILocation(line: 0, scope: !1781)
!1993 = !DILocation(line: 1306, column: 7, scope: !1778)
!1994 = !DILocalVariable(name: "ls", arg: 1, scope: !1995, file: !3, line: 1238, type: !597)
!1995 = distinct !DISubprogram(name: "retstat", scope: !3, file: !3, line: 1238, type: !595, isLocal: true, isDefinition: true, scopeLine: 1238, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1996)
!1996 = !{!1994, !1997, !1998, !1999, !2000}
!1997 = !DILocalVariable(name: "fs", scope: !1995, file: !3, line: 1240, type: !705)
!1998 = !DILocalVariable(name: "e", scope: !1995, file: !3, line: 1241, type: !964)
!1999 = !DILocalVariable(name: "first", scope: !1995, file: !3, line: 1242, type: !203)
!2000 = !DILocalVariable(name: "nret", scope: !1995, file: !3, line: 1242, type: !203)
!2001 = !DILocation(line: 1238, column: 32, scope: !1995, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 1309, column: 7, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !905, file: !3, line: 1308, column: 21)
!2004 = !DILocation(line: 1240, column: 23, scope: !1995, inlinedAt: !2002)
!2005 = !DILocation(line: 1240, column: 14, scope: !1995, inlinedAt: !2002)
!2006 = !DILocation(line: 1241, column: 3, scope: !1995, inlinedAt: !2002)
!2007 = !DILocation(line: 1243, column: 3, scope: !1995, inlinedAt: !2002)
!2008 = !DILocation(line: 1244, column: 26, scope: !2009, inlinedAt: !2002)
!2009 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 1244, column: 7)
!2010 = !DILocation(line: 871, column: 30, scope: !627, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 1244, column: 7, scope: !2009, inlinedAt: !2002)
!2012 = !DILocation(line: 872, column: 3, scope: !627, inlinedAt: !2011)
!2013 = !DILocation(line: 875, column: 7, scope: !635, inlinedAt: !2011)
!2014 = !DILocation(line: 878, column: 1, scope: !627, inlinedAt: !2011)
!2015 = !DILocation(line: 1244, column: 33, scope: !2009, inlinedAt: !2002)
!2016 = !DILocation(line: 876, column: 14, scope: !635, inlinedAt: !2011)
!2017 = !DILocation(line: 1244, column: 48, scope: !2009, inlinedAt: !2002)
!2018 = !DILocation(line: 1244, column: 7, scope: !1995, inlinedAt: !2002)
!2019 = !DILocation(line: 1241, column: 11, scope: !1995, inlinedAt: !2002)
!2020 = !DILocation(line: 596, column: 32, scope: !1365, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 1247, column: 12, scope: !2022, inlinedAt: !2002)
!2022 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 1246, column: 8)
!2023 = !DILocation(line: 596, column: 45, scope: !1365, inlinedAt: !2021)
!2024 = !DILocation(line: 598, column: 7, scope: !1365, inlinedAt: !2021)
!2025 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 599, column: 3, scope: !1365, inlinedAt: !2021)
!2027 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !2026)
!2028 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !2026)
!2029 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !2026)
!2030 = !DILocation(line: 600, column: 3, scope: !1365, inlinedAt: !2021)
!2031 = !DILocation(line: 80, column: 32, scope: !641, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 600, column: 10, scope: !1365, inlinedAt: !2021)
!2033 = !DILocation(line: 80, column: 40, scope: !641, inlinedAt: !2032)
!2034 = !DILocation(line: 81, column: 13, scope: !650, inlinedAt: !2032)
!2035 = !DILocation(line: 81, column: 19, scope: !650, inlinedAt: !2032)
!2036 = !DILocation(line: 81, column: 7, scope: !641, inlinedAt: !2032)
!2037 = !DILocation(line: 82, column: 5, scope: !654, inlinedAt: !2032)
!2038 = !DILocation(line: 83, column: 5, scope: !654, inlinedAt: !2032)
!2039 = !DILocation(line: 86, column: 1, scope: !641, inlinedAt: !2032)
!2040 = !DILocation(line: 601, column: 26, scope: !1391, inlinedAt: !2021)
!2041 = !DILocation(line: 601, column: 5, scope: !1391, inlinedAt: !2021)
!2042 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 602, column: 5, scope: !1391, inlinedAt: !2021)
!2044 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !2043)
!2045 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !2043)
!2046 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !2043)
!2047 = !DILocation(line: 603, column: 6, scope: !1391, inlinedAt: !2021)
!2048 = !DILocation(line: 0, scope: !1391, inlinedAt: !2021)
!2049 = !DILocation(line: 85, column: 8, scope: !650, inlinedAt: !2032)
!2050 = !DILocation(line: 605, column: 3, scope: !1365, inlinedAt: !2021)
!2051 = !DILocation(line: 1242, column: 14, scope: !1995, inlinedAt: !2002)
!2052 = !DILocation(line: 1248, column: 9, scope: !2053, inlinedAt: !2002)
!2053 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 1248, column: 9)
!2054 = !DILocation(line: 1248, column: 9, scope: !2022, inlinedAt: !2002)
!2055 = !DILocation(line: 1249, column: 7, scope: !2056, inlinedAt: !2002)
!2056 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 1248, column: 26)
!2057 = !DILocation(line: 1250, column: 13, scope: !2058, inlinedAt: !2002)
!2058 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 1250, column: 11)
!2059 = !DILocation(line: 1250, column: 15, scope: !2058, inlinedAt: !2002)
!2060 = !DILocation(line: 1250, column: 32, scope: !2058, inlinedAt: !2002)
!2061 = !DILocation(line: 1250, column: 24, scope: !2058, inlinedAt: !2002)
!2062 = !DILocation(line: 1251, column: 9, scope: !2063, inlinedAt: !2002)
!2063 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 1250, column: 38)
!2064 = !DILocation(line: 1253, column: 7, scope: !2063, inlinedAt: !2002)
!2065 = !DILocation(line: 1254, column: 19, scope: !2056, inlinedAt: !2002)
!2066 = !DILocation(line: 1254, column: 15, scope: !2056, inlinedAt: !2002)
!2067 = !DILocation(line: 1242, column: 7, scope: !1995, inlinedAt: !2002)
!2068 = !DILocation(line: 1256, column: 5, scope: !2056, inlinedAt: !2002)
!2069 = !DILocation(line: 1258, column: 16, scope: !2070, inlinedAt: !2002)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 1258, column: 11)
!2071 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 1257, column: 10)
!2072 = !DILocation(line: 1258, column: 11, scope: !2071, inlinedAt: !2002)
!2073 = !DILocation(line: 1259, column: 17, scope: !2070, inlinedAt: !2002)
!2074 = !DILocation(line: 1259, column: 9, scope: !2070, inlinedAt: !2002)
!2075 = !DILocation(line: 1261, column: 9, scope: !2076, inlinedAt: !2002)
!2076 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 1260, column: 12)
!2077 = !DILocation(line: 1262, column: 21, scope: !2076, inlinedAt: !2002)
!2078 = !DILocation(line: 1262, column: 17, scope: !2076, inlinedAt: !2002)
!2079 = !DILocation(line: 0, scope: !2076, inlinedAt: !2002)
!2080 = !DILocation(line: 0, scope: !2022, inlinedAt: !2002)
!2081 = !DILocation(line: 1267, column: 3, scope: !1995, inlinedAt: !2002)
!2082 = !DILocation(line: 1268, column: 1, scope: !1995, inlinedAt: !2002)
!2083 = !DILocation(line: 1310, column: 7, scope: !2003)
!2084 = !DILocation(line: 1313, column: 7, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !905, file: !3, line: 1312, column: 20)
!2086 = !DILocation(line: 1314, column: 7, scope: !2085)
!2087 = !DILocation(line: 1315, column: 7, scope: !2085)
!2088 = !DILocalVariable(name: "ls", arg: 1, scope: !2089, file: !3, line: 1224, type: !597)
!2089 = distinct !DISubprogram(name: "exprstat", scope: !3, file: !3, line: 1224, type: !595, isLocal: true, isDefinition: true, scopeLine: 1224, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2090)
!2090 = !{!2088, !2091, !2092}
!2091 = !DILocalVariable(name: "fs", scope: !2089, file: !3, line: 1226, type: !705)
!2092 = !DILocalVariable(name: "v", scope: !2089, file: !3, line: 1227, type: !2093)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LHS_assign", file: !3, line: 896, size: 256, elements: !2094)
!2094 = !{!2095, !2097}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2093, file: !3, line: 897, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !2093, file: !3, line: 898, baseType: !964, size: 192, offset: 64)
!2098 = !DILocation(line: 1224, column: 33, scope: !2089, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 1318, column: 7, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !905, file: !3, line: 1317, column: 14)
!2101 = !DILocation(line: 1226, column: 23, scope: !2089, inlinedAt: !2099)
!2102 = !DILocation(line: 1226, column: 14, scope: !2089, inlinedAt: !2099)
!2103 = !DILocation(line: 1227, column: 3, scope: !2089, inlinedAt: !2099)
!2104 = !DILocation(line: 1228, column: 21, scope: !2089, inlinedAt: !2099)
!2105 = !DILocation(line: 1228, column: 3, scope: !2089, inlinedAt: !2099)
!2106 = !DILocation(line: 1229, column: 11, scope: !2107, inlinedAt: !2099)
!2107 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 1229, column: 7)
!2108 = !{!2109, !575, i64 8}
!2109 = !{!"LHS_assign", !578, i64 0, !999, i64 8}
!2110 = !DILocation(line: 1229, column: 13, scope: !2107, inlinedAt: !2099)
!2111 = !DILocation(line: 1229, column: 7, scope: !2089, inlinedAt: !2099)
!2112 = !DILocation(line: 1230, column: 5, scope: !2107, inlinedAt: !2099)
!2113 = !DILocation(line: 1232, column: 7, scope: !2114, inlinedAt: !2099)
!2114 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 1231, column: 8)
!2115 = !DILocation(line: 1232, column: 12, scope: !2114, inlinedAt: !2099)
!2116 = !{!2109, !578, i64 0}
!2117 = !DILocation(line: 1227, column: 21, scope: !2089, inlinedAt: !2099)
!2118 = !DILocation(line: 1233, column: 5, scope: !2114, inlinedAt: !2099)
!2119 = !DILocation(line: 1235, column: 1, scope: !2089, inlinedAt: !2099)
!2120 = !DILocation(line: 1319, column: 7, scope: !2100)
!2121 = !DILocation(line: 0, scope: !904)
!2122 = !DILocation(line: 1322, column: 1, scope: !883)
!2123 = distinct !DISubprogram(name: "block", scope: !3, file: !3, line: 881, type: !595, isLocal: true, isDefinition: true, scopeLine: 881, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2124)
!2124 = !{!2125, !2126, !2127}
!2125 = !DILocalVariable(name: "ls", arg: 1, scope: !2123, file: !3, line: 881, type: !597)
!2126 = !DILocalVariable(name: "fs", scope: !2123, file: !3, line: 883, type: !705)
!2127 = !DILocalVariable(name: "bl", scope: !2123, file: !3, line: 884, type: !949)
!2128 = !DILocation(line: 881, column: 30, scope: !2123)
!2129 = !DILocation(line: 883, column: 23, scope: !2123)
!2130 = !DILocation(line: 883, column: 14, scope: !2123)
!2131 = !DILocation(line: 884, column: 3, scope: !2123)
!2132 = !DILocation(line: 884, column: 12, scope: !2123)
!2133 = !DILocation(line: 285, column: 36, scope: !1013, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 885, column: 3, scope: !2123)
!2135 = !DILocation(line: 285, column: 50, scope: !1013, inlinedAt: !2134)
!2136 = !DILocation(line: 285, column: 62, scope: !1013, inlinedAt: !2134)
!2137 = !DILocation(line: 286, column: 7, scope: !1013, inlinedAt: !2134)
!2138 = !DILocation(line: 286, column: 17, scope: !1013, inlinedAt: !2134)
!2139 = !DILocation(line: 287, column: 7, scope: !1013, inlinedAt: !2134)
!2140 = !DILocation(line: 287, column: 19, scope: !1013, inlinedAt: !2134)
!2141 = !DILocation(line: 288, column: 21, scope: !1013, inlinedAt: !2134)
!2142 = !DILocation(line: 288, column: 7, scope: !1013, inlinedAt: !2134)
!2143 = !DILocation(line: 288, column: 15, scope: !1013, inlinedAt: !2134)
!2144 = !DILocation(line: 289, column: 7, scope: !1013, inlinedAt: !2134)
!2145 = !DILocation(line: 289, column: 13, scope: !1013, inlinedAt: !2134)
!2146 = !DILocation(line: 290, column: 22, scope: !1013, inlinedAt: !2134)
!2147 = !DILocation(line: 290, column: 16, scope: !1013, inlinedAt: !2134)
!2148 = !DILocation(line: 291, column: 10, scope: !1013, inlinedAt: !2134)
!2149 = !DILocation(line: 293, column: 1, scope: !1013, inlinedAt: !2134)
!2150 = !DILocation(line: 1325, column: 30, scope: !594, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 886, column: 3, scope: !2123)
!2152 = !DILocation(line: 1327, column: 7, scope: !594, inlinedAt: !2151)
!2153 = !DILocation(line: 276, column: 35, scope: !605, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 1328, column: 3, scope: !594, inlinedAt: !2151)
!2155 = !DILocation(line: 277, column: 13, scope: !610, inlinedAt: !2154)
!2156 = !DILocation(line: 277, column: 16, scope: !610, inlinedAt: !2154)
!2157 = !DILocation(line: 277, column: 7, scope: !610, inlinedAt: !2154)
!2158 = !DILocation(line: 277, column: 24, scope: !610, inlinedAt: !2154)
!2159 = !DILocation(line: 277, column: 7, scope: !605, inlinedAt: !2154)
!2160 = !DILocation(line: 278, column: 2, scope: !610, inlinedAt: !2154)
!2161 = !DILocation(line: 279, column: 1, scope: !605, inlinedAt: !2154)
!2162 = !DILocation(line: 1329, column: 3, scope: !594, inlinedAt: !2151)
!2163 = !DILocation(line: 1329, column: 18, scope: !594, inlinedAt: !2151)
!2164 = !DILocation(line: 1329, column: 41, scope: !594, inlinedAt: !2151)
!2165 = !DILocation(line: 871, column: 30, scope: !627, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 1329, column: 22, scope: !594, inlinedAt: !2151)
!2167 = !DILocation(line: 872, column: 3, scope: !627, inlinedAt: !2166)
!2168 = !DILocation(line: 875, column: 7, scope: !635, inlinedAt: !2166)
!2169 = !DILocation(line: 878, column: 1, scope: !627, inlinedAt: !2166)
!2170 = !DILocation(line: 876, column: 14, scope: !635, inlinedAt: !2166)
!2171 = !DILocation(line: 1330, column: 14, scope: !639, inlinedAt: !2151)
!2172 = !DILocation(line: 80, column: 32, scope: !641, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 1331, column: 5, scope: !639, inlinedAt: !2151)
!2174 = !DILocation(line: 80, column: 40, scope: !641, inlinedAt: !2173)
!2175 = !DILocation(line: 81, column: 13, scope: !650, inlinedAt: !2173)
!2176 = !DILocation(line: 81, column: 19, scope: !650, inlinedAt: !2173)
!2177 = !DILocation(line: 81, column: 7, scope: !641, inlinedAt: !2173)
!2178 = !DILocation(line: 82, column: 5, scope: !654, inlinedAt: !2173)
!2179 = !DILocation(line: 83, column: 5, scope: !654, inlinedAt: !2173)
!2180 = !DILocation(line: 0, scope: !639, inlinedAt: !2151)
!2181 = !DILocation(line: 86, column: 1, scope: !641, inlinedAt: !2173)
!2182 = !DILocation(line: 1334, column: 27, scope: !639, inlinedAt: !2151)
!2183 = !DILocation(line: 1334, column: 31, scope: !639, inlinedAt: !2151)
!2184 = !DILocation(line: 1334, column: 23, scope: !639, inlinedAt: !2151)
!2185 = !DILocation(line: 1334, column: 13, scope: !639, inlinedAt: !2151)
!2186 = !DILocation(line: 1334, column: 21, scope: !639, inlinedAt: !2151)
!2187 = !DILocation(line: 1329, column: 11, scope: !594, inlinedAt: !2151)
!2188 = !DILocation(line: 1336, column: 3, scope: !594, inlinedAt: !2151)
!2189 = !DILocation(line: 1337, column: 1, scope: !594, inlinedAt: !2151)
!2190 = !DILocation(line: 888, column: 3, scope: !2123)
!2191 = !DILocation(line: 889, column: 1, scope: !2123)
!2192 = distinct !DISubprogram(name: "check_match", scope: !3, file: !3, line: 104, type: !2193, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2195)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{null, !597, !203, !203, !203}
!2195 = !{!2196, !2197, !2198, !2199}
!2196 = !DILocalVariable(name: "ls", arg: 1, scope: !2192, file: !3, line: 104, type: !597)
!2197 = !DILocalVariable(name: "what", arg: 2, scope: !2192, file: !3, line: 104, type: !203)
!2198 = !DILocalVariable(name: "who", arg: 3, scope: !2192, file: !3, line: 104, type: !203)
!2199 = !DILocalVariable(name: "where", arg: 4, scope: !2192, file: !3, line: 104, type: !203)
!2200 = !DILocation(line: 104, column: 36, scope: !2192)
!2201 = !DILocation(line: 104, column: 44, scope: !2192)
!2202 = !DILocation(line: 104, column: 54, scope: !2192)
!2203 = !DILocation(line: 104, column: 63, scope: !2192)
!2204 = !DILocation(line: 80, column: 32, scope: !641, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 105, column: 8, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 105, column: 7)
!2207 = !DILocation(line: 80, column: 40, scope: !641, inlinedAt: !2205)
!2208 = !DILocation(line: 81, column: 13, scope: !650, inlinedAt: !2205)
!2209 = !DILocation(line: 81, column: 19, scope: !650, inlinedAt: !2205)
!2210 = !DILocation(line: 81, column: 7, scope: !641, inlinedAt: !2205)
!2211 = !DILocation(line: 82, column: 5, scope: !654, inlinedAt: !2205)
!2212 = !DILocation(line: 83, column: 5, scope: !654, inlinedAt: !2205)
!2213 = !DILocation(line: 86, column: 1, scope: !641, inlinedAt: !2205)
!2214 = !DILocation(line: 105, column: 7, scope: !2192)
!2215 = !DILocation(line: 85, column: 8, scope: !650, inlinedAt: !2205)
!2216 = !DILocation(line: 106, column: 22, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 106, column: 9)
!2218 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 105, column: 28)
!2219 = !DILocation(line: 106, column: 15, scope: !2217)
!2220 = !DILocation(line: 106, column: 9, scope: !2218)
!2221 = !DILocation(line: 0, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2217, file: !3, line: 108, column: 10)
!2223 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 107, column: 7, scope: !2217)
!2225 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !2224)
!2226 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !2224)
!2227 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !2224)
!2228 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !2224)
!2229 = !DILocation(line: 107, column: 7, scope: !2217)
!2230 = !DILocation(line: 111, column: 41, scope: !2222)
!2231 = !DILocation(line: 109, column: 28, scope: !2222)
!2232 = !DILocation(line: 109, column: 7, scope: !2222)
!2233 = !DILocation(line: 114, column: 1, scope: !2192)
!2234 = distinct !DISubprogram(name: "breakstat", scope: !3, file: !3, line: 975, type: !595, isLocal: true, isDefinition: true, scopeLine: 975, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2235)
!2235 = !{!2236, !2237, !2238, !2239}
!2236 = !DILocalVariable(name: "ls", arg: 1, scope: !2234, file: !3, line: 975, type: !597)
!2237 = !DILocalVariable(name: "fs", scope: !2234, file: !3, line: 976, type: !705)
!2238 = !DILocalVariable(name: "bl", scope: !2234, file: !3, line: 977, type: !1016)
!2239 = !DILocalVariable(name: "upval", scope: !2234, file: !3, line: 978, type: !203)
!2240 = !DILocation(line: 975, column: 34, scope: !2234)
!2241 = !DILocation(line: 976, column: 23, scope: !2234)
!2242 = !DILocation(line: 976, column: 14, scope: !2234)
!2243 = !DILocation(line: 977, column: 22, scope: !2234)
!2244 = !DILocation(line: 977, column: 13, scope: !2234)
!2245 = !DILocation(line: 978, column: 7, scope: !2234)
!2246 = !DILocation(line: 979, column: 3, scope: !2234)
!2247 = !DILocation(line: 979, column: 10, scope: !2234)
!2248 = !DILocation(line: 979, column: 13, scope: !2234)
!2249 = !DILocation(line: 979, column: 21, scope: !2234)
!2250 = !DILocation(line: 979, column: 16, scope: !2234)
!2251 = !DILocation(line: 980, column: 18, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 979, column: 34)
!2253 = !DILocation(line: 980, column: 14, scope: !2252)
!2254 = !DILocation(line: 980, column: 11, scope: !2252)
!2255 = !DILocation(line: 981, column: 14, scope: !2252)
!2256 = distinct !{!2256, !2246, !2257}
!2257 = !DILocation(line: 982, column: 3, scope: !2234)
!2258 = !DILocation(line: 0, scope: !2252)
!2259 = !DILocation(line: 983, column: 7, scope: !2234)
!2260 = !DILocation(line: 984, column: 5, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 983, column: 7)
!2262 = !DILocation(line: 0, scope: !2261)
!2263 = !DILocation(line: 985, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2234, file: !3, line: 985, column: 7)
!2265 = !DILocation(line: 985, column: 7, scope: !2234)
!2266 = !DILocation(line: 986, column: 36, scope: !2264)
!2267 = !DILocation(line: 986, column: 32, scope: !2264)
!2268 = !DILocation(line: 986, column: 5, scope: !2264)
!2269 = !DILocation(line: 987, column: 24, scope: !2234)
!2270 = !DILocation(line: 987, column: 35, scope: !2234)
!2271 = !DILocation(line: 987, column: 3, scope: !2234)
!2272 = !DILocation(line: 988, column: 1, scope: !2234)
!2273 = distinct !DISubprogram(name: "test_then_block", scope: !3, file: !3, line: 1130, type: !884, isLocal: true, isDefinition: true, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2274)
!2274 = !{!2275, !2276}
!2275 = !DILocalVariable(name: "ls", arg: 1, scope: !2273, file: !3, line: 1130, type: !597)
!2276 = !DILocalVariable(name: "condexit", scope: !2273, file: !3, line: 1132, type: !203)
!2277 = !DILocation(line: 1130, column: 39, scope: !2273)
!2278 = !DILocation(line: 1133, column: 3, scope: !2273)
!2279 = !DILocation(line: 965, column: 28, scope: !961, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 1134, column: 14, scope: !2273)
!2281 = !DILocation(line: 967, column: 3, scope: !961, inlinedAt: !2280)
!2282 = !DILocation(line: 967, column: 11, scope: !961, inlinedAt: !2280)
!2283 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 968, column: 3, scope: !961, inlinedAt: !2280)
!2285 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !2284)
!2286 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !2284)
!2287 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !2284)
!2288 = !DILocation(line: 969, column: 9, scope: !997, inlinedAt: !2280)
!2289 = !DILocation(line: 969, column: 11, scope: !997, inlinedAt: !2280)
!2290 = !DILocation(line: 969, column: 7, scope: !961, inlinedAt: !2280)
!2291 = !DILocation(line: 969, column: 24, scope: !997, inlinedAt: !2280)
!2292 = !DILocation(line: 969, column: 20, scope: !997, inlinedAt: !2280)
!2293 = !DILocation(line: 970, column: 21, scope: !961, inlinedAt: !2280)
!2294 = !DILocation(line: 970, column: 3, scope: !961, inlinedAt: !2280)
!2295 = !DILocation(line: 971, column: 12, scope: !961, inlinedAt: !2280)
!2296 = !DILocation(line: 972, column: 1, scope: !961, inlinedAt: !2280)
!2297 = !DILocation(line: 971, column: 3, scope: !961, inlinedAt: !2280)
!2298 = !DILocation(line: 1132, column: 7, scope: !2273)
!2299 = !DILocation(line: 94, column: 34, scope: !1044, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 1135, column: 3, scope: !2273)
!2301 = !DILocation(line: 94, column: 42, scope: !1044, inlinedAt: !2300)
!2302 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 95, column: 3, scope: !1044, inlinedAt: !2300)
!2304 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !2303)
!2305 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !2303)
!2306 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !2303)
!2307 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !2303)
!2308 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !2303)
!2310 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !2309)
!2311 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !2309)
!2312 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !2309)
!2313 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !2309)
!2314 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !2309)
!2315 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !2309)
!2316 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !2303)
!2317 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !2303)
!2318 = !DILocation(line: 96, column: 3, scope: !1044, inlinedAt: !2300)
!2319 = !DILocation(line: 97, column: 1, scope: !1044, inlinedAt: !2300)
!2320 = !DILocation(line: 1136, column: 3, scope: !2273)
!2321 = !DILocation(line: 1137, column: 3, scope: !2273)
!2322 = distinct !DISubprogram(name: "subexpr", scope: !3, file: !3, line: 828, type: !2323, isLocal: true, isDefinition: true, scopeLine: 828, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2326)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!2325, !597, !988, !7}
!2325 = !DIDerivedType(tag: DW_TAG_typedef, name: "BinOpr", file: !59, line: 33, baseType: !58)
!2326 = !{!2327, !2328, !2329, !2330, !2331, !2333, !2335}
!2327 = !DILocalVariable(name: "ls", arg: 1, scope: !2322, file: !3, line: 828, type: !597)
!2328 = !DILocalVariable(name: "v", arg: 2, scope: !2322, file: !3, line: 828, type: !988)
!2329 = !DILocalVariable(name: "limit", arg: 3, scope: !2322, file: !3, line: 828, type: !7)
!2330 = !DILocalVariable(name: "op", scope: !2322, file: !3, line: 829, type: !2325)
!2331 = !DILocalVariable(name: "uop", scope: !2322, file: !3, line: 830, type: !2332)
!2332 = !DIDerivedType(tag: DW_TAG_typedef, name: "UnOpr", file: !59, line: 36, baseType: !77)
!2333 = !DILocalVariable(name: "v2", scope: !2334, file: !3, line: 842, type: !964)
!2334 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 841, column: 59)
!2335 = !DILocalVariable(name: "nextop", scope: !2334, file: !3, line: 843, type: !2325)
!2336 = !DILocation(line: 828, column: 34, scope: !2322)
!2337 = !DILocation(line: 828, column: 47, scope: !2322)
!2338 = !DILocation(line: 828, column: 63, scope: !2322)
!2339 = !DILocation(line: 276, column: 35, scope: !605, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 831, column: 3, scope: !2322)
!2341 = !DILocation(line: 277, column: 13, scope: !610, inlinedAt: !2340)
!2342 = !DILocation(line: 277, column: 16, scope: !610, inlinedAt: !2340)
!2343 = !DILocation(line: 277, column: 7, scope: !610, inlinedAt: !2340)
!2344 = !DILocation(line: 277, column: 24, scope: !610, inlinedAt: !2340)
!2345 = !DILocation(line: 277, column: 7, scope: !605, inlinedAt: !2340)
!2346 = !DILocation(line: 278, column: 2, scope: !610, inlinedAt: !2340)
!2347 = !DILocation(line: 279, column: 1, scope: !605, inlinedAt: !2340)
!2348 = !DILocation(line: 832, column: 24, scope: !2322)
!2349 = !DILocalVariable(name: "op", arg: 1, scope: !2350, file: !3, line: 778, type: !203)
!2350 = distinct !DISubprogram(name: "getunopr", scope: !3, file: !3, line: 778, type: !2351, isLocal: true, isDefinition: true, scopeLine: 778, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!2332, !203}
!2353 = !{!2349}
!2354 = !DILocation(line: 778, column: 28, scope: !2350, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 832, column: 9, scope: !2322)
!2356 = !DILocation(line: 779, column: 3, scope: !2350, inlinedAt: !2355)
!2357 = !DILocation(line: 781, column: 15, scope: !2358, inlinedAt: !2355)
!2358 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 779, column: 15)
!2359 = !DILocation(line: 782, column: 15, scope: !2358, inlinedAt: !2355)
!2360 = !DILocation(line: 0, scope: !2322)
!2361 = !DILocation(line: 785, column: 1, scope: !2350, inlinedAt: !2355)
!2362 = !DILocation(line: 830, column: 9, scope: !2322)
!2363 = !DILocation(line: 833, column: 7, scope: !2322)
!2364 = !DILocation(line: 834, column: 5, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 833, column: 27)
!2366 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 833, column: 7)
!2367 = !DILocation(line: 835, column: 5, scope: !2365)
!2368 = !DILocation(line: 836, column: 21, scope: !2365)
!2369 = !DILocation(line: 836, column: 5, scope: !2365)
!2370 = !DILocation(line: 837, column: 3, scope: !2365)
!2371 = !DILocation(line: 783, column: 14, scope: !2358, inlinedAt: !2355)
!2372 = !DILocalVariable(name: "ls", arg: 1, scope: !2373, file: !3, line: 727, type: !597)
!2373 = distinct !DISubprogram(name: "simpleexp", scope: !3, file: !3, line: 727, type: !986, isLocal: true, isDefinition: true, scopeLine: 727, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2374)
!2374 = !{!2372, !2375, !2376}
!2375 = !DILocalVariable(name: "v", arg: 2, scope: !2373, file: !3, line: 727, type: !988)
!2376 = !DILocalVariable(name: "fs", scope: !2377, file: !3, line: 753, type: !705)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 752, column: 19)
!2378 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 730, column: 24)
!2379 = !DILocation(line: 727, column: 34, scope: !2373, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 838, column: 8, scope: !2366)
!2381 = !DILocation(line: 727, column: 47, scope: !2373, inlinedAt: !2380)
!2382 = !DILocation(line: 730, column: 3, scope: !2373, inlinedAt: !2380)
!2383 = !DILocation(line: 126, column: 32, scope: !1680, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 732, column: 7, scope: !2385, inlinedAt: !2380)
!2385 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 731, column: 21)
!2386 = !DILocation(line: 126, column: 43, scope: !1680, inlinedAt: !2384)
!2387 = !DILocation(line: 126, column: 50, scope: !1680, inlinedAt: !2384)
!2388 = !DILocation(line: 127, column: 13, scope: !1680, inlinedAt: !2384)
!2389 = !DILocation(line: 127, column: 15, scope: !1680, inlinedAt: !2384)
!2390 = !DILocation(line: 127, column: 6, scope: !1680, inlinedAt: !2384)
!2391 = !DILocation(line: 127, column: 8, scope: !1680, inlinedAt: !2384)
!2392 = !DILocation(line: 128, column: 6, scope: !1680, inlinedAt: !2384)
!2393 = !DILocation(line: 128, column: 8, scope: !1680, inlinedAt: !2384)
!2394 = !DILocation(line: 129, column: 6, scope: !1680, inlinedAt: !2384)
!2395 = !DILocation(line: 129, column: 10, scope: !1680, inlinedAt: !2384)
!2396 = !DILocation(line: 129, column: 15, scope: !1680, inlinedAt: !2384)
!2397 = !DILocation(line: 130, column: 1, scope: !1680, inlinedAt: !2384)
!2398 = !DILocation(line: 733, column: 33, scope: !2385, inlinedAt: !2380)
!2399 = !DILocation(line: 733, column: 17, scope: !2385, inlinedAt: !2380)
!2400 = !DILocation(line: 734, column: 7, scope: !2385, inlinedAt: !2380)
!2401 = !DILocation(line: 737, column: 31, scope: !2402, inlinedAt: !2380)
!2402 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 736, column: 21)
!2403 = !DILocation(line: 737, column: 39, scope: !2402, inlinedAt: !2380)
!2404 = !DILocation(line: 133, column: 35, scope: !1667, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 737, column: 7, scope: !2402, inlinedAt: !2380)
!2406 = !DILocation(line: 133, column: 48, scope: !1667, inlinedAt: !2405)
!2407 = !DILocation(line: 133, column: 60, scope: !1667, inlinedAt: !2405)
!2408 = !DILocation(line: 134, column: 36, scope: !1667, inlinedAt: !2405)
!2409 = !DILocation(line: 134, column: 19, scope: !1667, inlinedAt: !2405)
!2410 = !DILocation(line: 126, column: 32, scope: !1680, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 134, column: 3, scope: !1667, inlinedAt: !2405)
!2412 = !DILocation(line: 126, column: 43, scope: !1680, inlinedAt: !2411)
!2413 = !DILocation(line: 126, column: 50, scope: !1680, inlinedAt: !2411)
!2414 = !DILocation(line: 127, column: 13, scope: !1680, inlinedAt: !2411)
!2415 = !DILocation(line: 127, column: 15, scope: !1680, inlinedAt: !2411)
!2416 = !DILocation(line: 127, column: 6, scope: !1680, inlinedAt: !2411)
!2417 = !DILocation(line: 127, column: 8, scope: !1680, inlinedAt: !2411)
!2418 = !DILocation(line: 128, column: 6, scope: !1680, inlinedAt: !2411)
!2419 = !DILocation(line: 128, column: 8, scope: !1680, inlinedAt: !2411)
!2420 = !DILocation(line: 129, column: 6, scope: !1680, inlinedAt: !2411)
!2421 = !DILocation(line: 129, column: 10, scope: !1680, inlinedAt: !2411)
!2422 = !DILocation(line: 129, column: 15, scope: !1680, inlinedAt: !2411)
!2423 = !DILocation(line: 130, column: 1, scope: !1680, inlinedAt: !2411)
!2424 = !DILocation(line: 135, column: 1, scope: !1667, inlinedAt: !2405)
!2425 = !DILocation(line: 738, column: 7, scope: !2402, inlinedAt: !2380)
!2426 = !DILocation(line: 126, column: 32, scope: !1680, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 741, column: 7, scope: !2428, inlinedAt: !2380)
!2428 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 740, column: 18)
!2429 = !DILocation(line: 126, column: 43, scope: !1680, inlinedAt: !2427)
!2430 = !DILocation(line: 126, column: 50, scope: !1680, inlinedAt: !2427)
!2431 = !DILocation(line: 127, column: 13, scope: !1680, inlinedAt: !2427)
!2432 = !DILocation(line: 127, column: 15, scope: !1680, inlinedAt: !2427)
!2433 = !DILocation(line: 127, column: 6, scope: !1680, inlinedAt: !2427)
!2434 = !DILocation(line: 127, column: 8, scope: !1680, inlinedAt: !2427)
!2435 = !DILocation(line: 128, column: 6, scope: !1680, inlinedAt: !2427)
!2436 = !DILocation(line: 128, column: 8, scope: !1680, inlinedAt: !2427)
!2437 = !DILocation(line: 129, column: 6, scope: !1680, inlinedAt: !2427)
!2438 = !DILocation(line: 129, column: 10, scope: !1680, inlinedAt: !2427)
!2439 = !DILocation(line: 129, column: 15, scope: !1680, inlinedAt: !2427)
!2440 = !DILocation(line: 130, column: 1, scope: !1680, inlinedAt: !2427)
!2441 = !DILocation(line: 742, column: 7, scope: !2428, inlinedAt: !2380)
!2442 = !DILocation(line: 126, column: 32, scope: !1680, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 745, column: 7, scope: !2444, inlinedAt: !2380)
!2444 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 744, column: 19)
!2445 = !DILocation(line: 126, column: 43, scope: !1680, inlinedAt: !2443)
!2446 = !DILocation(line: 126, column: 50, scope: !1680, inlinedAt: !2443)
!2447 = !DILocation(line: 127, column: 13, scope: !1680, inlinedAt: !2443)
!2448 = !DILocation(line: 127, column: 15, scope: !1680, inlinedAt: !2443)
!2449 = !DILocation(line: 127, column: 6, scope: !1680, inlinedAt: !2443)
!2450 = !DILocation(line: 127, column: 8, scope: !1680, inlinedAt: !2443)
!2451 = !DILocation(line: 128, column: 6, scope: !1680, inlinedAt: !2443)
!2452 = !DILocation(line: 128, column: 8, scope: !1680, inlinedAt: !2443)
!2453 = !DILocation(line: 129, column: 6, scope: !1680, inlinedAt: !2443)
!2454 = !DILocation(line: 129, column: 10, scope: !1680, inlinedAt: !2443)
!2455 = !DILocation(line: 129, column: 15, scope: !1680, inlinedAt: !2443)
!2456 = !DILocation(line: 130, column: 1, scope: !1680, inlinedAt: !2443)
!2457 = !DILocation(line: 746, column: 7, scope: !2444, inlinedAt: !2380)
!2458 = !DILocation(line: 126, column: 32, scope: !1680, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 749, column: 7, scope: !2460, inlinedAt: !2380)
!2460 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 748, column: 20)
!2461 = !DILocation(line: 126, column: 43, scope: !1680, inlinedAt: !2459)
!2462 = !DILocation(line: 126, column: 50, scope: !1680, inlinedAt: !2459)
!2463 = !DILocation(line: 127, column: 13, scope: !1680, inlinedAt: !2459)
!2464 = !DILocation(line: 127, column: 15, scope: !1680, inlinedAt: !2459)
!2465 = !DILocation(line: 127, column: 6, scope: !1680, inlinedAt: !2459)
!2466 = !DILocation(line: 127, column: 8, scope: !1680, inlinedAt: !2459)
!2467 = !DILocation(line: 128, column: 6, scope: !1680, inlinedAt: !2459)
!2468 = !DILocation(line: 128, column: 8, scope: !1680, inlinedAt: !2459)
!2469 = !DILocation(line: 129, column: 6, scope: !1680, inlinedAt: !2459)
!2470 = !DILocation(line: 129, column: 10, scope: !1680, inlinedAt: !2459)
!2471 = !DILocation(line: 129, column: 15, scope: !1680, inlinedAt: !2459)
!2472 = !DILocation(line: 130, column: 1, scope: !1680, inlinedAt: !2459)
!2473 = !DILocation(line: 750, column: 7, scope: !2460, inlinedAt: !2380)
!2474 = !DILocation(line: 753, column: 27, scope: !2377, inlinedAt: !2380)
!2475 = !DILocation(line: 753, column: 18, scope: !2377, inlinedAt: !2380)
!2476 = !DILocation(line: 754, column: 7, scope: !2477, inlinedAt: !2380)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 754, column: 7)
!2478 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 754, column: 7)
!2479 = !DILocation(line: 754, column: 7, scope: !2478, inlinedAt: !2380)
!2480 = !DILocation(line: 756, column: 11, scope: !2377, inlinedAt: !2380)
!2481 = !DILocation(line: 756, column: 24, scope: !2377, inlinedAt: !2380)
!2482 = !DILocation(line: 756, column: 14, scope: !2377, inlinedAt: !2380)
!2483 = !DILocation(line: 757, column: 28, scope: !2377, inlinedAt: !2380)
!2484 = !DILocation(line: 126, column: 32, scope: !1680, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 757, column: 7, scope: !2377, inlinedAt: !2380)
!2486 = !DILocation(line: 126, column: 43, scope: !1680, inlinedAt: !2485)
!2487 = !DILocation(line: 126, column: 50, scope: !1680, inlinedAt: !2485)
!2488 = !DILocation(line: 127, column: 13, scope: !1680, inlinedAt: !2485)
!2489 = !DILocation(line: 127, column: 15, scope: !1680, inlinedAt: !2485)
!2490 = !DILocation(line: 127, column: 6, scope: !1680, inlinedAt: !2485)
!2491 = !DILocation(line: 127, column: 8, scope: !1680, inlinedAt: !2485)
!2492 = !DILocation(line: 128, column: 6, scope: !1680, inlinedAt: !2485)
!2493 = !DILocation(line: 128, column: 8, scope: !1680, inlinedAt: !2485)
!2494 = !DILocation(line: 129, column: 6, scope: !1680, inlinedAt: !2485)
!2495 = !DILocation(line: 129, column: 10, scope: !1680, inlinedAt: !2485)
!2496 = !DILocation(line: 129, column: 15, scope: !1680, inlinedAt: !2485)
!2497 = !DILocation(line: 130, column: 1, scope: !1680, inlinedAt: !2485)
!2498 = !DILocation(line: 761, column: 7, scope: !2499, inlinedAt: !2380)
!2499 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 760, column: 15)
!2500 = !DILocation(line: 762, column: 7, scope: !2499, inlinedAt: !2380)
!2501 = !DILocation(line: 765, column: 7, scope: !2502, inlinedAt: !2380)
!2502 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 764, column: 23)
!2503 = !DILocation(line: 766, column: 26, scope: !2502, inlinedAt: !2380)
!2504 = !DILocation(line: 766, column: 7, scope: !2502, inlinedAt: !2380)
!2505 = !DILocation(line: 767, column: 7, scope: !2502, inlinedAt: !2380)
!2506 = !DILocation(line: 770, column: 7, scope: !2507, inlinedAt: !2380)
!2507 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 769, column: 14)
!2508 = !DILocation(line: 771, column: 7, scope: !2507, inlinedAt: !2380)
!2509 = !DILocation(line: 774, column: 3, scope: !2373, inlinedAt: !2380)
!2510 = !DILocation(line: 775, column: 1, scope: !2373, inlinedAt: !2380)
!2511 = !DILocation(line: 0, scope: !2366)
!2512 = !DILocation(line: 840, column: 24, scope: !2322)
!2513 = !DILocalVariable(name: "op", arg: 1, scope: !2514, file: !3, line: 788, type: !203)
!2514 = distinct !DISubprogram(name: "getbinopr", scope: !3, file: !3, line: 788, type: !2515, isLocal: true, isDefinition: true, scopeLine: 788, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2517)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!2325, !203}
!2517 = !{!2513}
!2518 = !DILocation(line: 788, column: 30, scope: !2514, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 840, column: 8, scope: !2322)
!2520 = !DILocation(line: 789, column: 3, scope: !2514, inlinedAt: !2519)
!2521 = !DILocation(line: 791, column: 15, scope: !2522, inlinedAt: !2519)
!2522 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 789, column: 15)
!2523 = !DILocation(line: 792, column: 15, scope: !2522, inlinedAt: !2519)
!2524 = !DILocation(line: 793, column: 15, scope: !2522, inlinedAt: !2519)
!2525 = !DILocation(line: 794, column: 15, scope: !2522, inlinedAt: !2519)
!2526 = !DILocation(line: 795, column: 15, scope: !2522, inlinedAt: !2519)
!2527 = !DILocation(line: 796, column: 21, scope: !2522, inlinedAt: !2519)
!2528 = !DILocation(line: 797, column: 17, scope: !2522, inlinedAt: !2519)
!2529 = !DILocation(line: 798, column: 17, scope: !2522, inlinedAt: !2519)
!2530 = !DILocation(line: 799, column: 15, scope: !2522, inlinedAt: !2519)
!2531 = !DILocation(line: 800, column: 17, scope: !2522, inlinedAt: !2519)
!2532 = !DILocation(line: 801, column: 15, scope: !2522, inlinedAt: !2519)
!2533 = !DILocation(line: 802, column: 17, scope: !2522, inlinedAt: !2519)
!2534 = !DILocation(line: 803, column: 18, scope: !2522, inlinedAt: !2519)
!2535 = !DILocation(line: 804, column: 17, scope: !2522, inlinedAt: !2519)
!2536 = !DILocation(line: 805, column: 14, scope: !2522, inlinedAt: !2519)
!2537 = !DILocation(line: 807, column: 1, scope: !2514, inlinedAt: !2519)
!2538 = !DILocation(line: 829, column: 10, scope: !2322)
!2539 = !DILocation(line: 841, column: 3, scope: !2322)
!2540 = !DILocation(line: 841, column: 29, scope: !2322)
!2541 = !DILocation(line: 841, column: 32, scope: !2322)
!2542 = !DILocation(line: 841, column: 45, scope: !2322)
!2543 = !{!2544, !575, i64 0}
!2544 = !{!"", !575, i64 0, !575, i64 1}
!2545 = !DILocation(line: 841, column: 50, scope: !2322)
!2546 = !DILocation(line: 842, column: 5, scope: !2334)
!2547 = !DILocation(line: 844, column: 5, scope: !2334)
!2548 = !DILocation(line: 845, column: 20, scope: !2334)
!2549 = !DILocation(line: 845, column: 5, scope: !2334)
!2550 = !DILocation(line: 847, column: 44, scope: !2334)
!2551 = !{!2544, !575, i64 1}
!2552 = !DILocation(line: 847, column: 31, scope: !2334)
!2553 = !DILocation(line: 842, column: 13, scope: !2334)
!2554 = !DILocation(line: 847, column: 14, scope: !2334)
!2555 = !DILocation(line: 843, column: 12, scope: !2334)
!2556 = !DILocation(line: 848, column: 21, scope: !2334)
!2557 = !DILocation(line: 848, column: 5, scope: !2334)
!2558 = !DILocation(line: 850, column: 3, scope: !2322)
!2559 = !DILocation(line: 841, column: 13, scope: !2322)
!2560 = distinct !{!2560, !2539, !2558}
!2561 = !DILocation(line: 0, scope: !2334)
!2562 = !DILocation(line: 851, column: 3, scope: !2322)
!2563 = !DILocation(line: 852, column: 3, scope: !2322)
!2564 = distinct !DISubprogram(name: "constructor", scope: !3, file: !3, line: 498, type: !986, isLocal: true, isDefinition: true, scopeLine: 498, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2565)
!2565 = !{!2566, !2567, !2568, !2569, !2570, !2571}
!2566 = !DILocalVariable(name: "ls", arg: 1, scope: !2564, file: !3, line: 498, type: !597)
!2567 = !DILocalVariable(name: "t", arg: 2, scope: !2564, file: !3, line: 498, type: !988)
!2568 = !DILocalVariable(name: "fs", scope: !2564, file: !3, line: 500, type: !705)
!2569 = !DILocalVariable(name: "line", scope: !2564, file: !3, line: 501, type: !203)
!2570 = !DILocalVariable(name: "pc", scope: !2564, file: !3, line: 502, type: !203)
!2571 = !DILocalVariable(name: "cc", scope: !2564, file: !3, line: 503, type: !2572)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ConsControl", file: !3, line: 434, size: 384, elements: !2573)
!2573 = !{!2574, !2575, !2576, !2577, !2578}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !2572, file: !3, line: 435, baseType: !964, size: 192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !2572, file: !3, line: 436, baseType: !988, size: 64, offset: 192)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "nh", scope: !2572, file: !3, line: 437, baseType: !203, size: 32, offset: 256)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "na", scope: !2572, file: !3, line: 438, baseType: !203, size: 32, offset: 288)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "tostore", scope: !2572, file: !3, line: 439, baseType: !203, size: 32, offset: 320)
!2579 = !DILocation(line: 498, column: 36, scope: !2564)
!2580 = !DILocation(line: 498, column: 49, scope: !2564)
!2581 = !DILocation(line: 500, column: 23, scope: !2564)
!2582 = !DILocation(line: 500, column: 14, scope: !2564)
!2583 = !DILocation(line: 501, column: 18, scope: !2564)
!2584 = !DILocation(line: 501, column: 7, scope: !2564)
!2585 = !DILocation(line: 502, column: 12, scope: !2564)
!2586 = !DILocation(line: 502, column: 7, scope: !2564)
!2587 = !DILocation(line: 503, column: 3, scope: !2564)
!2588 = !DILocation(line: 504, column: 22, scope: !2564)
!2589 = !DILocation(line: 504, column: 30, scope: !2564)
!2590 = !{!2591, !574, i64 40}
!2591 = !{!"ConsControl", !999, i64 0, !578, i64 24, !574, i64 32, !574, i64 36, !574, i64 40}
!2592 = !DILocation(line: 504, column: 14, scope: !2564)
!2593 = !DILocation(line: 504, column: 17, scope: !2564)
!2594 = !{!2591, !574, i64 32}
!2595 = !DILocation(line: 504, column: 6, scope: !2564)
!2596 = !DILocation(line: 504, column: 9, scope: !2564)
!2597 = !{!2591, !574, i64 36}
!2598 = !DILocation(line: 505, column: 6, scope: !2564)
!2599 = !DILocation(line: 505, column: 8, scope: !2564)
!2600 = !{!2591, !578, i64 24}
!2601 = !DILocation(line: 126, column: 32, scope: !1680, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 506, column: 3, scope: !2564)
!2603 = !DILocation(line: 126, column: 43, scope: !1680, inlinedAt: !2602)
!2604 = !DILocation(line: 126, column: 50, scope: !1680, inlinedAt: !2602)
!2605 = !DILocation(line: 127, column: 13, scope: !1680, inlinedAt: !2602)
!2606 = !DILocation(line: 127, column: 15, scope: !1680, inlinedAt: !2602)
!2607 = !DILocation(line: 127, column: 6, scope: !1680, inlinedAt: !2602)
!2608 = !DILocation(line: 127, column: 8, scope: !1680, inlinedAt: !2602)
!2609 = !DILocation(line: 128, column: 6, scope: !1680, inlinedAt: !2602)
!2610 = !DILocation(line: 128, column: 8, scope: !1680, inlinedAt: !2602)
!2611 = !DILocation(line: 129, column: 6, scope: !1680, inlinedAt: !2602)
!2612 = !DILocation(line: 129, column: 10, scope: !1680, inlinedAt: !2602)
!2613 = !DILocation(line: 129, column: 15, scope: !1680, inlinedAt: !2602)
!2614 = !DILocation(line: 130, column: 1, scope: !1680, inlinedAt: !2602)
!2615 = !DILocation(line: 507, column: 16, scope: !2564)
!2616 = !DILocation(line: 126, column: 32, scope: !1680, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 507, column: 3, scope: !2564)
!2618 = !DILocation(line: 126, column: 43, scope: !1680, inlinedAt: !2617)
!2619 = !DILocation(line: 126, column: 50, scope: !1680, inlinedAt: !2617)
!2620 = !DILocation(line: 127, column: 13, scope: !1680, inlinedAt: !2617)
!2621 = !DILocation(line: 127, column: 15, scope: !1680, inlinedAt: !2617)
!2622 = !DILocation(line: 127, column: 6, scope: !1680, inlinedAt: !2617)
!2623 = !DILocation(line: 127, column: 8, scope: !1680, inlinedAt: !2617)
!2624 = !DILocation(line: 128, column: 6, scope: !1680, inlinedAt: !2617)
!2625 = !DILocation(line: 128, column: 8, scope: !1680, inlinedAt: !2617)
!2626 = !DILocation(line: 129, column: 6, scope: !1680, inlinedAt: !2617)
!2627 = !DILocation(line: 129, column: 10, scope: !1680, inlinedAt: !2617)
!2628 = !DILocation(line: 129, column: 15, scope: !1680, inlinedAt: !2617)
!2629 = !DILocation(line: 130, column: 1, scope: !1680, inlinedAt: !2617)
!2630 = !DILocation(line: 508, column: 24, scope: !2564)
!2631 = !DILocation(line: 508, column: 3, scope: !2564)
!2632 = !DILocation(line: 94, column: 34, scope: !1044, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 509, column: 3, scope: !2564)
!2634 = !DILocation(line: 94, column: 42, scope: !1044, inlinedAt: !2633)
!2635 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 95, column: 3, scope: !1044, inlinedAt: !2633)
!2637 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !2636)
!2638 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !2636)
!2639 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !2636)
!2640 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !2636)
!2641 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !2642)
!2642 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !2636)
!2643 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !2642)
!2644 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !2642)
!2645 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !2642)
!2646 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !2642)
!2647 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !2642)
!2648 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !2642)
!2649 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !2636)
!2650 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !2636)
!2651 = !DILocation(line: 96, column: 3, scope: !1044, inlinedAt: !2633)
!2652 = !DILocation(line: 97, column: 1, scope: !1044, inlinedAt: !2633)
!2653 = !DILocation(line: 510, column: 3, scope: !2564)
!2654 = !DILocation(line: 512, column: 15, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 512, column: 9)
!2656 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 510, column: 6)
!2657 = !DILocation(line: 512, column: 21, scope: !2655)
!2658 = !DILocation(line: 512, column: 9, scope: !2656)
!2659 = !DILocation(line: 465, column: 13, scope: !2660, inlinedAt: !2668)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 465, column: 7)
!2661 = distinct !DISubprogram(name: "closelistfield", scope: !3, file: !3, line: 464, type: !2662, isLocal: true, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2665)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{null, !705, !2664}
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2665 = !{!2666, !2667}
!2666 = !DILocalVariable(name: "fs", arg: 1, scope: !2661, file: !3, line: 464, type: !705)
!2667 = !DILocalVariable(name: "cc", arg: 2, scope: !2661, file: !3, line: 464, type: !2664)
!2668 = distinct !DILocation(line: 513, column: 5, scope: !2656)
!2669 = !DILocation(line: 503, column: 22, scope: !2564)
!2670 = !DILocation(line: 464, column: 40, scope: !2661, inlinedAt: !2668)
!2671 = !DILocation(line: 464, column: 64, scope: !2661, inlinedAt: !2668)
!2672 = !DILocation(line: 465, column: 15, scope: !2660, inlinedAt: !2668)
!2673 = !DILocation(line: 465, column: 7, scope: !2661, inlinedAt: !2668)
!2674 = !DILocation(line: 466, column: 3, scope: !2661, inlinedAt: !2668)
!2675 = !DILocation(line: 467, column: 11, scope: !2661, inlinedAt: !2668)
!2676 = !{!2591, !575, i64 0}
!2677 = !DILocation(line: 468, column: 11, scope: !2678, inlinedAt: !2668)
!2678 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 468, column: 7)
!2679 = !DILocation(line: 468, column: 19, scope: !2678, inlinedAt: !2668)
!2680 = !DILocation(line: 468, column: 7, scope: !2661, inlinedAt: !2668)
!2681 = !DILocation(line: 469, column: 26, scope: !2682, inlinedAt: !2668)
!2682 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 468, column: 41)
!2683 = !DILocation(line: 469, column: 29, scope: !2682, inlinedAt: !2668)
!2684 = !DILocation(line: 469, column: 33, scope: !2682, inlinedAt: !2668)
!2685 = !DILocation(line: 469, column: 43, scope: !2682, inlinedAt: !2668)
!2686 = !DILocation(line: 469, column: 5, scope: !2682, inlinedAt: !2668)
!2687 = !DILocation(line: 470, column: 17, scope: !2682, inlinedAt: !2668)
!2688 = !DILocation(line: 471, column: 3, scope: !2682, inlinedAt: !2668)
!2689 = !DILocation(line: 472, column: 1, scope: !2661, inlinedAt: !2668)
!2690 = !DILocation(line: 514, column: 18, scope: !2656)
!2691 = !DILocation(line: 514, column: 5, scope: !2656)
!2692 = !DILocation(line: 516, column: 9, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 515, column: 21)
!2694 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 514, column: 25)
!2695 = !DILocation(line: 517, column: 27, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 517, column: 13)
!2697 = !{!573, !574, i64 32}
!2698 = !DILocation(line: 517, column: 33, scope: !2696)
!2699 = !DILocation(line: 517, column: 13, scope: !2693)
!2700 = !DILocalVariable(name: "ls", arg: 1, scope: !2701, file: !3, line: 490, type: !597)
!2701 = distinct !DISubprogram(name: "listfield", scope: !3, file: !3, line: 490, type: !2702, isLocal: true, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2704)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{null, !597, !2664}
!2704 = !{!2700, !2705}
!2705 = !DILocalVariable(name: "cc", arg: 2, scope: !2701, file: !3, line: 490, type: !2664)
!2706 = !DILocation(line: 490, column: 34, scope: !2701, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 518, column: 11, scope: !2696)
!2708 = !DILocation(line: 490, column: 58, scope: !2701, inlinedAt: !2707)
!2709 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 491, column: 3, scope: !2701, inlinedAt: !2707)
!2711 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !2710)
!2712 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !2710)
!2713 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !2710)
!2714 = !DILocation(line: 492, column: 3, scope: !2715, inlinedAt: !2707)
!2715 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 492, column: 3)
!2716 = !DILocation(line: 492, column: 3, scope: !2701, inlinedAt: !2707)
!2717 = !DILocalVariable(name: "fs", arg: 1, scope: !2718, file: !3, line: 71, type: !705)
!2718 = distinct !DISubprogram(name: "errorlimit", scope: !3, file: !3, line: 71, type: !2719, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2721)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{null, !705, !203, !375}
!2721 = !{!2717, !2722, !2723, !2724}
!2722 = !DILocalVariable(name: "limit", arg: 2, scope: !2718, file: !3, line: 71, type: !203)
!2723 = !DILocalVariable(name: "what", arg: 3, scope: !2718, file: !3, line: 71, type: !375)
!2724 = !DILocalVariable(name: "msg", scope: !2718, file: !3, line: 72, type: !375)
!2725 = !DILocation(line: 71, column: 36, scope: !2718, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 492, column: 3, scope: !2715, inlinedAt: !2707)
!2727 = !DILocation(line: 71, column: 44, scope: !2718, inlinedAt: !2726)
!2728 = !DILocation(line: 71, column: 63, scope: !2718, inlinedAt: !2726)
!2729 = !DILocation(line: 72, column: 26, scope: !2718, inlinedAt: !2726)
!2730 = !DILocation(line: 72, column: 29, scope: !2718, inlinedAt: !2726)
!2731 = !{!591, !574, i64 96}
!2732 = !DILocation(line: 72, column: 41, scope: !2718, inlinedAt: !2726)
!2733 = !DILocation(line: 0, scope: !2718, inlinedAt: !2726)
!2734 = !DILocation(line: 72, column: 21, scope: !2718, inlinedAt: !2726)
!2735 = !DILocation(line: 73, column: 5, scope: !2718, inlinedAt: !2726)
!2736 = !DILocation(line: 74, column: 5, scope: !2718, inlinedAt: !2726)
!2737 = !DILocation(line: 72, column: 15, scope: !2718, inlinedAt: !2726)
!2738 = !DILocation(line: 76, column: 21, scope: !2718, inlinedAt: !2726)
!2739 = !DILocation(line: 76, column: 3, scope: !2718, inlinedAt: !2726)
!2740 = !DILocation(line: 77, column: 1, scope: !2718, inlinedAt: !2726)
!2741 = !DILocation(line: 493, column: 9, scope: !2701, inlinedAt: !2707)
!2742 = !DILocation(line: 494, column: 14, scope: !2701, inlinedAt: !2707)
!2743 = !DILocation(line: 495, column: 1, scope: !2701, inlinedAt: !2707)
!2744 = !DILocation(line: 518, column: 11, scope: !2696)
!2745 = !DILocation(line: 520, column: 11, scope: !2696)
!2746 = !DILocation(line: 524, column: 9, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 523, column: 17)
!2748 = !DILocation(line: 525, column: 9, scope: !2747)
!2749 = !DILocation(line: 490, column: 34, scope: !2701, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 528, column: 9, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 527, column: 16)
!2752 = !DILocation(line: 490, column: 58, scope: !2701, inlinedAt: !2750)
!2753 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 491, column: 3, scope: !2701, inlinedAt: !2750)
!2755 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !2754)
!2756 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !2754)
!2757 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !2754)
!2758 = !DILocation(line: 492, column: 3, scope: !2715, inlinedAt: !2750)
!2759 = !DILocation(line: 492, column: 3, scope: !2701, inlinedAt: !2750)
!2760 = !DILocation(line: 71, column: 36, scope: !2718, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 492, column: 3, scope: !2715, inlinedAt: !2750)
!2762 = !DILocation(line: 71, column: 44, scope: !2718, inlinedAt: !2761)
!2763 = !DILocation(line: 71, column: 63, scope: !2718, inlinedAt: !2761)
!2764 = !DILocation(line: 72, column: 26, scope: !2718, inlinedAt: !2761)
!2765 = !DILocation(line: 72, column: 29, scope: !2718, inlinedAt: !2761)
!2766 = !DILocation(line: 72, column: 41, scope: !2718, inlinedAt: !2761)
!2767 = !DILocation(line: 0, scope: !2718, inlinedAt: !2761)
!2768 = !DILocation(line: 72, column: 21, scope: !2718, inlinedAt: !2761)
!2769 = !DILocation(line: 73, column: 5, scope: !2718, inlinedAt: !2761)
!2770 = !DILocation(line: 74, column: 5, scope: !2718, inlinedAt: !2761)
!2771 = !DILocation(line: 72, column: 15, scope: !2718, inlinedAt: !2761)
!2772 = !DILocation(line: 76, column: 21, scope: !2718, inlinedAt: !2761)
!2773 = !DILocation(line: 76, column: 3, scope: !2718, inlinedAt: !2761)
!2774 = !DILocation(line: 77, column: 1, scope: !2718, inlinedAt: !2761)
!2775 = !DILocation(line: 493, column: 9, scope: !2701, inlinedAt: !2750)
!2776 = !DILocation(line: 494, column: 14, scope: !2701, inlinedAt: !2750)
!2777 = !DILocation(line: 495, column: 1, scope: !2701, inlinedAt: !2750)
!2778 = !DILocation(line: 529, column: 9, scope: !2751)
!2779 = !DILocation(line: 80, column: 32, scope: !641, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 532, column: 12, scope: !2564)
!2781 = !DILocation(line: 80, column: 40, scope: !641, inlinedAt: !2780)
!2782 = !DILocation(line: 81, column: 13, scope: !650, inlinedAt: !2780)
!2783 = !DILocation(line: 81, column: 19, scope: !650, inlinedAt: !2780)
!2784 = !DILocation(line: 81, column: 7, scope: !641, inlinedAt: !2780)
!2785 = !DILocation(line: 82, column: 5, scope: !654, inlinedAt: !2780)
!2786 = !DILocation(line: 532, column: 30, scope: !2564)
!2787 = !DILocation(line: 83, column: 5, scope: !654, inlinedAt: !2780)
!2788 = !DILocation(line: 86, column: 1, scope: !641, inlinedAt: !2780)
!2789 = !DILocation(line: 0, scope: !2656)
!2790 = !DILocation(line: 85, column: 8, scope: !650, inlinedAt: !2780)
!2791 = !DILocation(line: 80, column: 32, scope: !641, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 532, column: 33, scope: !2564)
!2793 = !DILocation(line: 80, column: 40, scope: !641, inlinedAt: !2792)
!2794 = !DILocation(line: 81, column: 19, scope: !650, inlinedAt: !2792)
!2795 = !DILocation(line: 81, column: 7, scope: !641, inlinedAt: !2792)
!2796 = !DILocation(line: 85, column: 8, scope: !650, inlinedAt: !2792)
!2797 = !DILocation(line: 86, column: 1, scope: !641, inlinedAt: !2792)
!2798 = !DILocation(line: 532, column: 3, scope: !2656)
!2799 = !DILocation(line: 82, column: 5, scope: !654, inlinedAt: !2792)
!2800 = !DILocation(line: 533, column: 3, scope: !2564)
!2801 = !DILocalVariable(name: "fs", arg: 1, scope: !2802, file: !3, line: 475, type: !705)
!2802 = distinct !DISubprogram(name: "lastlistfield", scope: !3, file: !3, line: 475, type: !2662, isLocal: true, isDefinition: true, scopeLine: 475, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2803)
!2803 = !{!2801, !2804}
!2804 = !DILocalVariable(name: "cc", arg: 2, scope: !2802, file: !3, line: 475, type: !2664)
!2805 = !DILocation(line: 475, column: 39, scope: !2802, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 534, column: 3, scope: !2564)
!2807 = !DILocation(line: 475, column: 63, scope: !2802, inlinedAt: !2806)
!2808 = !DILocation(line: 476, column: 11, scope: !2809, inlinedAt: !2806)
!2809 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 476, column: 7)
!2810 = !DILocation(line: 476, column: 19, scope: !2809, inlinedAt: !2806)
!2811 = !DILocation(line: 476, column: 7, scope: !2802, inlinedAt: !2806)
!2812 = !DILocation(line: 477, column: 7, scope: !2813, inlinedAt: !2806)
!2813 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 477, column: 7)
!2814 = !DILocation(line: 477, column: 7, scope: !2802, inlinedAt: !2806)
!2815 = !DILocation(line: 478, column: 5, scope: !2816, inlinedAt: !2806)
!2816 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 477, column: 28)
!2817 = !DILocation(line: 479, column: 26, scope: !2816, inlinedAt: !2806)
!2818 = !DILocation(line: 479, column: 29, scope: !2816, inlinedAt: !2806)
!2819 = !DILocation(line: 479, column: 33, scope: !2816, inlinedAt: !2806)
!2820 = !DILocation(line: 479, column: 43, scope: !2816, inlinedAt: !2806)
!2821 = !DILocation(line: 479, column: 5, scope: !2816, inlinedAt: !2806)
!2822 = !DILocation(line: 480, column: 11, scope: !2816, inlinedAt: !2806)
!2823 = !DILocation(line: 481, column: 3, scope: !2816, inlinedAt: !2806)
!2824 = !DILocation(line: 483, column: 17, scope: !2825, inlinedAt: !2806)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 483, column: 9)
!2826 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 482, column: 8)
!2827 = !DILocation(line: 483, column: 9, scope: !2826, inlinedAt: !2806)
!2828 = !DILocation(line: 484, column: 7, scope: !2825, inlinedAt: !2806)
!2829 = !DILocation(line: 485, column: 51, scope: !2826, inlinedAt: !2806)
!2830 = !DILocation(line: 485, column: 26, scope: !2826, inlinedAt: !2806)
!2831 = !DILocation(line: 485, column: 29, scope: !2826, inlinedAt: !2806)
!2832 = !DILocation(line: 485, column: 33, scope: !2826, inlinedAt: !2806)
!2833 = !DILocation(line: 485, column: 43, scope: !2826, inlinedAt: !2806)
!2834 = !DILocation(line: 485, column: 5, scope: !2826, inlinedAt: !2806)
!2835 = !DILocation(line: 487, column: 1, scope: !2802, inlinedAt: !2806)
!2836 = !DILocation(line: 535, column: 3, scope: !2564)
!2837 = !DILocation(line: 536, column: 3, scope: !2564)
!2838 = !DILocation(line: 537, column: 1, scope: !2564)
!2839 = distinct !DISubprogram(name: "body", scope: !3, file: !3, line: 576, type: !2840, isLocal: true, isDefinition: true, scopeLine: 576, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{null, !597, !988, !203, !203}
!2842 = !{!2843, !2844, !2845, !2846, !2847}
!2843 = !DILocalVariable(name: "ls", arg: 1, scope: !2839, file: !3, line: 576, type: !597)
!2844 = !DILocalVariable(name: "e", arg: 2, scope: !2839, file: !3, line: 576, type: !988)
!2845 = !DILocalVariable(name: "needself", arg: 3, scope: !2839, file: !3, line: 576, type: !203)
!2846 = !DILocalVariable(name: "line", arg: 4, scope: !2839, file: !3, line: 576, type: !203)
!2847 = !DILocalVariable(name: "new_fs", scope: !2839, file: !3, line: 578, type: !706)
!2848 = !DILocation(line: 576, column: 29, scope: !2839)
!2849 = !DILocation(line: 576, column: 42, scope: !2839)
!2850 = !DILocation(line: 576, column: 49, scope: !2839)
!2851 = !DILocation(line: 576, column: 63, scope: !2839)
!2852 = !DILocation(line: 578, column: 3, scope: !2839)
!2853 = !DILocation(line: 578, column: 13, scope: !2839)
!2854 = !DILocation(line: 579, column: 3, scope: !2839)
!2855 = !DILocation(line: 580, column: 10, scope: !2839)
!2856 = !DILocation(line: 580, column: 13, scope: !2839)
!2857 = !DILocation(line: 580, column: 25, scope: !2839)
!2858 = !DILocation(line: 94, column: 34, scope: !1044, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 581, column: 3, scope: !2839)
!2860 = !DILocation(line: 94, column: 42, scope: !1044, inlinedAt: !2859)
!2861 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !2862)
!2862 = distinct !DILocation(line: 95, column: 3, scope: !1044, inlinedAt: !2859)
!2863 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !2862)
!2864 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !2862)
!2865 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !2862)
!2866 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !2862)
!2867 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !2868)
!2868 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !2862)
!2869 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !2868)
!2870 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !2868)
!2871 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !2868)
!2872 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !2868)
!2873 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !2868)
!2874 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !2868)
!2875 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !2862)
!2876 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !2862)
!2877 = !DILocation(line: 96, column: 3, scope: !1044, inlinedAt: !2859)
!2878 = !DILocation(line: 97, column: 1, scope: !1044, inlinedAt: !2859)
!2879 = !DILocation(line: 582, column: 7, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 582, column: 7)
!2881 = !DILocation(line: 582, column: 7, scope: !2839)
!2882 = !DILocation(line: 545, column: 23, scope: !2883, inlinedAt: !2889)
!2883 = distinct !DISubprogram(name: "parlist", scope: !3, file: !3, line: 543, type: !595, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2884)
!2884 = !{!2885, !2886, !2887, !2888}
!2885 = !DILocalVariable(name: "ls", arg: 1, scope: !2883, file: !3, line: 543, type: !597)
!2886 = !DILocalVariable(name: "fs", scope: !2883, file: !3, line: 545, type: !705)
!2887 = !DILocalVariable(name: "f", scope: !2883, file: !3, line: 546, type: !459)
!2888 = !DILocalVariable(name: "nparams", scope: !2883, file: !3, line: 547, type: !203)
!2889 = distinct !DILocation(line: 586, column: 3, scope: !2839)
!2890 = !DILocation(line: 546, column: 18, scope: !2883, inlinedAt: !2889)
!2891 = !DILocation(line: 583, column: 5, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 582, column: 17)
!2893 = !DILocation(line: 167, column: 40, scope: !1843, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 584, column: 5, scope: !2892)
!2895 = !DILocation(line: 167, column: 48, scope: !1843, inlinedAt: !2894)
!2896 = !DILocation(line: 168, column: 23, scope: !1843, inlinedAt: !2894)
!2897 = !DILocation(line: 168, column: 14, scope: !1843, inlinedAt: !2894)
!2898 = !DILocation(line: 169, column: 17, scope: !1843, inlinedAt: !2894)
!2899 = !DILocation(line: 169, column: 15, scope: !1843, inlinedAt: !2894)
!2900 = !DILocation(line: 170, column: 3, scope: !1843, inlinedAt: !2894)
!2901 = !DILocation(line: 170, column: 3, scope: !1856, inlinedAt: !2894)
!2902 = !DILocation(line: 171, column: 5, scope: !1858, inlinedAt: !2894)
!2903 = !DILocation(line: 171, column: 40, scope: !1858, inlinedAt: !2894)
!2904 = !DILocation(line: 171, column: 48, scope: !1858, inlinedAt: !2894)
!2905 = !DILocation(line: 170, column: 3, scope: !1859, inlinedAt: !2894)
!2906 = !DILocation(line: 173, column: 1, scope: !1843, inlinedAt: !2894)
!2907 = !DILocation(line: 585, column: 3, scope: !2892)
!2908 = !DILocation(line: 543, column: 32, scope: !2883, inlinedAt: !2889)
!2909 = !DILocation(line: 545, column: 14, scope: !2883, inlinedAt: !2889)
!2910 = !DILocation(line: 546, column: 10, scope: !2883, inlinedAt: !2889)
!2911 = !DILocation(line: 547, column: 7, scope: !2883, inlinedAt: !2889)
!2912 = !DILocation(line: 548, column: 6, scope: !2883, inlinedAt: !2889)
!2913 = !DILocation(line: 548, column: 16, scope: !2883, inlinedAt: !2889)
!2914 = !DILocation(line: 549, column: 13, scope: !2915, inlinedAt: !2889)
!2915 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 549, column: 7)
!2916 = !DILocation(line: 549, column: 19, scope: !2915, inlinedAt: !2889)
!2917 = !DILocation(line: 549, column: 7, scope: !2883, inlinedAt: !2889)
!2918 = !DILocation(line: 551, column: 7, scope: !2919, inlinedAt: !2889)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 550, column: 8)
!2920 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 549, column: 27)
!2921 = !DILocation(line: 82, column: 5, scope: !654, inlinedAt: !2922)
!2922 = distinct !DILocation(line: 568, column: 31, scope: !2920, inlinedAt: !2889)
!2923 = !DILocation(line: 83, column: 5, scope: !654, inlinedAt: !2922)
!2924 = !DILocation(line: 86, column: 1, scope: !641, inlinedAt: !2922)
!2925 = !DILocation(line: 568, column: 5, scope: !2919, inlinedAt: !2889)
!2926 = !DILocation(line: 551, column: 21, scope: !2919, inlinedAt: !2889)
!2927 = !DILocation(line: 117, column: 42, scope: !1115, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 553, column: 28, scope: !2929, inlinedAt: !2889)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 552, column: 23)
!2930 = distinct !DILexicalBlock(scope: !2919, file: !3, line: 551, column: 28)
!2931 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 119, column: 3, scope: !1115, inlinedAt: !2928)
!2933 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !2932)
!2934 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !2932)
!2935 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !2932)
!2936 = !DILocation(line: 120, column: 22, scope: !1115, inlinedAt: !2928)
!2937 = !DILocation(line: 118, column: 12, scope: !1115, inlinedAt: !2928)
!2938 = !DILocation(line: 121, column: 3, scope: !1115, inlinedAt: !2928)
!2939 = !DILocation(line: 122, column: 3, scope: !1115, inlinedAt: !2928)
!2940 = !DILocation(line: 553, column: 54, scope: !2929, inlinedAt: !2889)
!2941 = !DILocation(line: 553, column: 11, scope: !2929, inlinedAt: !2889)
!2942 = !DILocation(line: 554, column: 11, scope: !2929, inlinedAt: !2889)
!2943 = !DILocation(line: 557, column: 11, scope: !2944, inlinedAt: !2889)
!2944 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 556, column: 23)
!2945 = !DILocation(line: 560, column: 11, scope: !2944, inlinedAt: !2889)
!2946 = !DILocation(line: 563, column: 24, scope: !2944, inlinedAt: !2889)
!2947 = !DILocation(line: 564, column: 11, scope: !2944, inlinedAt: !2889)
!2948 = !DILocation(line: 568, column: 28, scope: !2920, inlinedAt: !2889)
!2949 = !DILocation(line: 566, column: 18, scope: !2930, inlinedAt: !2889)
!2950 = !DILocation(line: 567, column: 7, scope: !2930, inlinedAt: !2889)
!2951 = !DILocation(line: 0, scope: !2839)
!2952 = !DILocation(line: 568, column: 18, scope: !2920, inlinedAt: !2889)
!2953 = !DILocation(line: 568, column: 15, scope: !2920, inlinedAt: !2889)
!2954 = !DILocation(line: 80, column: 32, scope: !641, inlinedAt: !2922)
!2955 = !DILocation(line: 80, column: 40, scope: !641, inlinedAt: !2922)
!2956 = !DILocation(line: 81, column: 13, scope: !650, inlinedAt: !2922)
!2957 = !DILocation(line: 81, column: 19, scope: !650, inlinedAt: !2922)
!2958 = !DILocation(line: 81, column: 7, scope: !641, inlinedAt: !2922)
!2959 = !DILocation(line: 85, column: 8, scope: !650, inlinedAt: !2922)
!2960 = !DILocation(line: 168, column: 23, scope: !1843, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 570, column: 3, scope: !2883, inlinedAt: !2889)
!2962 = !DILocation(line: 167, column: 40, scope: !1843, inlinedAt: !2961)
!2963 = !DILocation(line: 167, column: 48, scope: !1843, inlinedAt: !2961)
!2964 = !DILocation(line: 168, column: 14, scope: !1843, inlinedAt: !2961)
!2965 = !DILocation(line: 169, column: 17, scope: !1843, inlinedAt: !2961)
!2966 = !DILocation(line: 169, column: 15, scope: !1843, inlinedAt: !2961)
!2967 = !DILocation(line: 170, column: 3, scope: !1843, inlinedAt: !2961)
!2968 = !DILocation(line: 170, column: 3, scope: !1856, inlinedAt: !2961)
!2969 = !DILocation(line: 171, column: 5, scope: !1858, inlinedAt: !2961)
!2970 = !DILocation(line: 171, column: 40, scope: !1858, inlinedAt: !2961)
!2971 = !DILocation(line: 171, column: 48, scope: !1858, inlinedAt: !2961)
!2972 = !DILocation(line: 170, column: 22, scope: !1859, inlinedAt: !2961)
!2973 = !DILocation(line: 170, column: 3, scope: !1859, inlinedAt: !2961)
!2974 = !DILocation(line: 173, column: 1, scope: !1843, inlinedAt: !2961)
!2975 = !DILocation(line: 571, column: 18, scope: !2883, inlinedAt: !2889)
!2976 = !DILocation(line: 571, column: 6, scope: !2883, inlinedAt: !2889)
!2977 = !DILocation(line: 571, column: 16, scope: !2883, inlinedAt: !2889)
!2978 = !{!591, !575, i64 113}
!2979 = !DILocation(line: 572, column: 24, scope: !2883, inlinedAt: !2889)
!2980 = !DILocation(line: 572, column: 3, scope: !2883, inlinedAt: !2889)
!2981 = !DILocation(line: 573, column: 1, scope: !2883, inlinedAt: !2889)
!2982 = !DILocation(line: 94, column: 34, scope: !1044, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 587, column: 3, scope: !2839)
!2984 = !DILocation(line: 94, column: 42, scope: !1044, inlinedAt: !2983)
!2985 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 95, column: 3, scope: !1044, inlinedAt: !2983)
!2987 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !2986)
!2988 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !2986)
!2989 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !2986)
!2990 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !2986)
!2991 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !2986)
!2993 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !2992)
!2994 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !2992)
!2995 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !2992)
!2996 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !2992)
!2997 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !2992)
!2998 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !2992)
!2999 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !2986)
!3000 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !2986)
!3001 = !DILocation(line: 96, column: 3, scope: !1044, inlinedAt: !2983)
!3002 = !DILocation(line: 97, column: 1, scope: !1044, inlinedAt: !2983)
!3003 = !DILocation(line: 1325, column: 30, scope: !594, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 588, column: 3, scope: !2839)
!3005 = !DILocation(line: 1327, column: 7, scope: !594, inlinedAt: !3004)
!3006 = !DILocation(line: 276, column: 35, scope: !605, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 1328, column: 3, scope: !594, inlinedAt: !3004)
!3008 = !DILocation(line: 277, column: 13, scope: !610, inlinedAt: !3007)
!3009 = !DILocation(line: 277, column: 16, scope: !610, inlinedAt: !3007)
!3010 = !DILocation(line: 277, column: 7, scope: !610, inlinedAt: !3007)
!3011 = !DILocation(line: 277, column: 24, scope: !610, inlinedAt: !3007)
!3012 = !DILocation(line: 277, column: 7, scope: !605, inlinedAt: !3007)
!3013 = !DILocation(line: 278, column: 2, scope: !610, inlinedAt: !3007)
!3014 = !DILocation(line: 279, column: 1, scope: !605, inlinedAt: !3007)
!3015 = !DILocation(line: 1329, column: 3, scope: !594, inlinedAt: !3004)
!3016 = !DILocation(line: 1329, column: 18, scope: !594, inlinedAt: !3004)
!3017 = !DILocation(line: 1329, column: 41, scope: !594, inlinedAt: !3004)
!3018 = !DILocation(line: 871, column: 30, scope: !627, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 1329, column: 22, scope: !594, inlinedAt: !3004)
!3020 = !DILocation(line: 872, column: 3, scope: !627, inlinedAt: !3019)
!3021 = !DILocation(line: 875, column: 7, scope: !635, inlinedAt: !3019)
!3022 = !DILocation(line: 878, column: 1, scope: !627, inlinedAt: !3019)
!3023 = !DILocation(line: 876, column: 14, scope: !635, inlinedAt: !3019)
!3024 = !DILocation(line: 1330, column: 14, scope: !639, inlinedAt: !3004)
!3025 = !DILocation(line: 80, column: 32, scope: !641, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 1331, column: 5, scope: !639, inlinedAt: !3004)
!3027 = !DILocation(line: 80, column: 40, scope: !641, inlinedAt: !3026)
!3028 = !DILocation(line: 81, column: 13, scope: !650, inlinedAt: !3026)
!3029 = !DILocation(line: 81, column: 19, scope: !650, inlinedAt: !3026)
!3030 = !DILocation(line: 81, column: 7, scope: !641, inlinedAt: !3026)
!3031 = !DILocation(line: 82, column: 5, scope: !654, inlinedAt: !3026)
!3032 = !DILocation(line: 83, column: 5, scope: !654, inlinedAt: !3026)
!3033 = !DILocation(line: 0, scope: !639, inlinedAt: !3004)
!3034 = !DILocation(line: 86, column: 1, scope: !641, inlinedAt: !3026)
!3035 = !DILocation(line: 1334, column: 27, scope: !639, inlinedAt: !3004)
!3036 = !DILocation(line: 1334, column: 31, scope: !639, inlinedAt: !3004)
!3037 = !DILocation(line: 1334, column: 23, scope: !639, inlinedAt: !3004)
!3038 = !DILocation(line: 1334, column: 13, scope: !639, inlinedAt: !3004)
!3039 = !DILocation(line: 1334, column: 21, scope: !639, inlinedAt: !3004)
!3040 = !DILocation(line: 1329, column: 11, scope: !594, inlinedAt: !3004)
!3041 = !DILocation(line: 1336, column: 3, scope: !594, inlinedAt: !3004)
!3042 = !DILocation(line: 1337, column: 1, scope: !594, inlinedAt: !3004)
!3043 = !DILocation(line: 589, column: 35, scope: !2839)
!3044 = !DILocation(line: 589, column: 10, scope: !2839)
!3045 = !DILocation(line: 589, column: 13, scope: !2839)
!3046 = !DILocation(line: 589, column: 29, scope: !2839)
!3047 = !{!591, !574, i64 100}
!3048 = !DILocation(line: 590, column: 3, scope: !2839)
!3049 = !DILocation(line: 591, column: 3, scope: !2839)
!3050 = !DILocalVariable(name: "ls", arg: 1, scope: !3051, file: !3, line: 310, type: !597)
!3051 = distinct !DISubprogram(name: "pushclosure", scope: !3, file: !3, line: 310, type: !3052, isLocal: true, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3054)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{null, !597, !705, !988}
!3054 = !{!3050, !3055, !3056, !3057, !3058, !3059, !3060, !3061}
!3055 = !DILocalVariable(name: "func", arg: 2, scope: !3051, file: !3, line: 310, type: !705)
!3056 = !DILocalVariable(name: "v", arg: 3, scope: !3051, file: !3, line: 310, type: !988)
!3057 = !DILocalVariable(name: "fs", scope: !3051, file: !3, line: 311, type: !705)
!3058 = !DILocalVariable(name: "f", scope: !3051, file: !3, line: 312, type: !459)
!3059 = !DILocalVariable(name: "oldsize", scope: !3051, file: !3, line: 313, type: !203)
!3060 = !DILocalVariable(name: "i", scope: !3051, file: !3, line: 314, type: !203)
!3061 = !DILocalVariable(name: "o", scope: !3062, file: !3, line: 322, type: !3065)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 321, column: 35)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 321, column: 3)
!3064 = distinct !DILexicalBlock(scope: !3051, file: !3, line: 321, column: 3)
!3065 = !DIDerivedType(tag: DW_TAG_typedef, name: "OpCode", file: !84, line: 208, baseType: !83)
!3066 = !DILocation(line: 310, column: 36, scope: !3051, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 592, column: 3, scope: !2839)
!3068 = !DILocation(line: 310, column: 51, scope: !3051, inlinedAt: !3067)
!3069 = !DILocation(line: 310, column: 66, scope: !3051, inlinedAt: !3067)
!3070 = !DILocation(line: 311, column: 23, scope: !3051, inlinedAt: !3067)
!3071 = !DILocation(line: 311, column: 14, scope: !3051, inlinedAt: !3067)
!3072 = !DILocation(line: 312, column: 18, scope: !3051, inlinedAt: !3067)
!3073 = !DILocation(line: 312, column: 10, scope: !3051, inlinedAt: !3067)
!3074 = !DILocation(line: 313, column: 20, scope: !3051, inlinedAt: !3067)
!3075 = !DILocation(line: 313, column: 7, scope: !3051, inlinedAt: !3067)
!3076 = !DILocation(line: 315, column: 3, scope: !3077, inlinedAt: !3067)
!3077 = distinct !DILexicalBlock(scope: !3051, file: !3, line: 315, column: 3)
!3078 = !DILocation(line: 315, column: 3, scope: !3051, inlinedAt: !3067)
!3079 = !DILocation(line: 317, column: 3, scope: !3051, inlinedAt: !3067)
!3080 = !DILocation(line: 318, column: 6, scope: !3051, inlinedAt: !3067)
!3081 = !DILocation(line: 317, column: 23, scope: !3051, inlinedAt: !3067)
!3082 = !DILocation(line: 317, column: 18, scope: !3051, inlinedAt: !3067)
!3083 = !DILocation(line: 317, column: 42, scope: !3051, inlinedAt: !3067)
!3084 = !DILocation(line: 317, column: 30, scope: !3051, inlinedAt: !3067)
!3085 = !DILocation(line: 317, column: 46, scope: !3051, inlinedAt: !3067)
!3086 = !{!578, !578, i64 0}
!3087 = distinct !{!3087, !3088, !3089}
!3088 = !DILocation(line: 317, column: 3, scope: !3051)
!3089 = !DILocation(line: 317, column: 48, scope: !3051)
!3090 = !DILocation(line: 317, column: 33, scope: !3051, inlinedAt: !3067)
!3091 = distinct !{!3091, !3092}
!3092 = !{!"llvm.loop.unroll.disable"}
!3093 = !DILocation(line: 318, column: 26, scope: !3051, inlinedAt: !3067)
!3094 = !DILocation(line: 318, column: 14, scope: !3051, inlinedAt: !3067)
!3095 = !DILocation(line: 318, column: 3, scope: !3051, inlinedAt: !3067)
!3096 = !DILocation(line: 318, column: 18, scope: !3051, inlinedAt: !3067)
!3097 = !DILocation(line: 319, column: 3, scope: !3098, inlinedAt: !3067)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 319, column: 3)
!3099 = distinct !DILexicalBlock(scope: !3051, file: !3, line: 319, column: 3)
!3100 = !DILocation(line: 319, column: 3, scope: !3099, inlinedAt: !3067)
!3101 = !DILocation(line: 320, column: 63, scope: !3051, inlinedAt: !3067)
!3102 = !DILocation(line: 320, column: 65, scope: !3051, inlinedAt: !3067)
!3103 = !DILocation(line: 320, column: 27, scope: !3051, inlinedAt: !3067)
!3104 = !DILocation(line: 126, column: 32, scope: !1680, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 320, column: 3, scope: !3051, inlinedAt: !3067)
!3106 = !DILocation(line: 126, column: 43, scope: !1680, inlinedAt: !3105)
!3107 = !DILocation(line: 126, column: 50, scope: !1680, inlinedAt: !3105)
!3108 = !DILocation(line: 127, column: 13, scope: !1680, inlinedAt: !3105)
!3109 = !DILocation(line: 127, column: 15, scope: !1680, inlinedAt: !3105)
!3110 = !DILocation(line: 127, column: 6, scope: !1680, inlinedAt: !3105)
!3111 = !DILocation(line: 127, column: 8, scope: !1680, inlinedAt: !3105)
!3112 = !DILocation(line: 128, column: 6, scope: !1680, inlinedAt: !3105)
!3113 = !DILocation(line: 128, column: 8, scope: !1680, inlinedAt: !3105)
!3114 = !DILocation(line: 129, column: 6, scope: !1680, inlinedAt: !3105)
!3115 = !DILocation(line: 129, column: 10, scope: !1680, inlinedAt: !3105)
!3116 = !DILocation(line: 129, column: 15, scope: !1680, inlinedAt: !3105)
!3117 = !DILocation(line: 130, column: 1, scope: !1680, inlinedAt: !3105)
!3118 = !DILocation(line: 314, column: 7, scope: !3051, inlinedAt: !3067)
!3119 = !DILocation(line: 321, column: 8, scope: !3064, inlinedAt: !3067)
!3120 = !DILocation(line: 321, column: 21, scope: !3063, inlinedAt: !3067)
!3121 = !DILocation(line: 321, column: 24, scope: !3063, inlinedAt: !3067)
!3122 = !DILocation(line: 321, column: 14, scope: !3063, inlinedAt: !3067)
!3123 = !DILocation(line: 321, column: 3, scope: !3064, inlinedAt: !3067)
!3124 = !DILocation(line: 322, column: 35, scope: !3062, inlinedAt: !3067)
!3125 = !{!3126, !575, i64 0}
!3126 = !{!"upvaldesc", !575, i64 0, !575, i64 1}
!3127 = !DILocation(line: 322, column: 37, scope: !3062, inlinedAt: !3067)
!3128 = !DILocation(line: 322, column: 16, scope: !3062, inlinedAt: !3067)
!3129 = !DILocation(line: 322, column: 12, scope: !3062, inlinedAt: !3067)
!3130 = !DILocation(line: 323, column: 46, scope: !3062, inlinedAt: !3067)
!3131 = !{!3126, !575, i64 1}
!3132 = !DILocation(line: 323, column: 28, scope: !3062, inlinedAt: !3067)
!3133 = !DILocation(line: 323, column: 5, scope: !3062, inlinedAt: !3067)
!3134 = !DILocation(line: 321, column: 31, scope: !3063, inlinedAt: !3067)
!3135 = !DILocation(line: 321, column: 3, scope: !3063, inlinedAt: !3067)
!3136 = distinct !{!3136, !3137, !3138}
!3137 = !DILocation(line: 321, column: 3, scope: !3064)
!3138 = !DILocation(line: 324, column: 3, scope: !3064)
!3139 = !DILocation(line: 325, column: 1, scope: !3051, inlinedAt: !3067)
!3140 = !DILocation(line: 593, column: 1, scope: !2839)
!3141 = distinct !DISubprogram(name: "primaryexp", scope: !3, file: !3, line: 690, type: !986, isLocal: true, isDefinition: true, scopeLine: 690, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3142)
!3142 = !{!3143, !3144, !3145, !3146, !3152}
!3143 = !DILocalVariable(name: "ls", arg: 1, scope: !3141, file: !3, line: 690, type: !597)
!3144 = !DILocalVariable(name: "v", arg: 2, scope: !3141, file: !3, line: 690, type: !988)
!3145 = !DILocalVariable(name: "fs", scope: !3141, file: !3, line: 693, type: !705)
!3146 = !DILocalVariable(name: "key", scope: !3147, file: !3, line: 702, type: !964)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 701, column: 17)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 696, column: 26)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 695, column: 12)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 695, column: 3)
!3151 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 695, column: 3)
!3152 = !DILocalVariable(name: "key", scope: !3153, file: !3, line: 709, type: !964)
!3153 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 708, column: 17)
!3154 = !DILocation(line: 690, column: 35, scope: !3141)
!3155 = !DILocation(line: 690, column: 48, scope: !3141)
!3156 = !DILocation(line: 693, column: 23, scope: !3141)
!3157 = !DILocation(line: 693, column: 14, scope: !3141)
!3158 = !DILocalVariable(name: "ls", arg: 1, scope: !3159, file: !3, line: 667, type: !597)
!3159 = distinct !DISubprogram(name: "prefixexp", scope: !3, file: !3, line: 667, type: !986, isLocal: true, isDefinition: true, scopeLine: 667, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3160)
!3160 = !{!3158, !3161, !3162}
!3161 = !DILocalVariable(name: "v", arg: 2, scope: !3159, file: !3, line: 667, type: !988)
!3162 = !DILocalVariable(name: "line", scope: !3163, file: !3, line: 671, type: !203)
!3163 = distinct !DILexicalBlock(scope: !3164, file: !3, line: 670, column: 15)
!3164 = distinct !DILexicalBlock(scope: !3159, file: !3, line: 669, column: 24)
!3165 = !DILocation(line: 667, column: 34, scope: !3159, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 694, column: 3, scope: !3141)
!3167 = !DILocation(line: 667, column: 47, scope: !3159, inlinedAt: !3166)
!3168 = !DILocation(line: 669, column: 17, scope: !3159, inlinedAt: !3166)
!3169 = !DILocation(line: 669, column: 3, scope: !3159, inlinedAt: !3166)
!3170 = !DILocation(line: 671, column: 22, scope: !3163, inlinedAt: !3166)
!3171 = !DILocation(line: 671, column: 11, scope: !3163, inlinedAt: !3166)
!3172 = !DILocation(line: 672, column: 7, scope: !3163, inlinedAt: !3166)
!3173 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 673, column: 7, scope: !3163, inlinedAt: !3166)
!3175 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !3174)
!3176 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !3174)
!3177 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !3174)
!3178 = !DILocation(line: 674, column: 7, scope: !3163, inlinedAt: !3166)
!3179 = !DILocation(line: 675, column: 30, scope: !3163, inlinedAt: !3166)
!3180 = !DILocation(line: 675, column: 7, scope: !3163, inlinedAt: !3166)
!3181 = !DILocation(line: 248, column: 34, scope: !1575, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 679, column: 7, scope: !3183, inlinedAt: !3166)
!3183 = distinct !DILexicalBlock(scope: !3164, file: !3, line: 678, column: 19)
!3184 = !DILocation(line: 248, column: 47, scope: !1575, inlinedAt: !3182)
!3185 = !DILocation(line: 117, column: 42, scope: !1115, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 249, column: 22, scope: !1575, inlinedAt: !3182)
!3187 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 119, column: 3, scope: !1115, inlinedAt: !3186)
!3189 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !3188)
!3190 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !3188)
!3191 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !3188)
!3192 = !DILocation(line: 120, column: 14, scope: !1115, inlinedAt: !3186)
!3193 = !DILocation(line: 120, column: 22, scope: !1115, inlinedAt: !3186)
!3194 = !DILocation(line: 118, column: 12, scope: !1115, inlinedAt: !3186)
!3195 = !DILocation(line: 121, column: 3, scope: !1115, inlinedAt: !3186)
!3196 = !DILocation(line: 122, column: 3, scope: !1115, inlinedAt: !3186)
!3197 = !DILocation(line: 249, column: 12, scope: !1575, inlinedAt: !3182)
!3198 = !DILocation(line: 250, column: 23, scope: !1575, inlinedAt: !3182)
!3199 = !DILocation(line: 250, column: 14, scope: !1575, inlinedAt: !3182)
!3200 = !DILocation(line: 251, column: 7, scope: !1610, inlinedAt: !3182)
!3201 = !DILocation(line: 251, column: 41, scope: !1610, inlinedAt: !3182)
!3202 = !DILocation(line: 251, column: 7, scope: !1575, inlinedAt: !3182)
!3203 = !DILocation(line: 252, column: 21, scope: !1610, inlinedAt: !3182)
!3204 = !DILocation(line: 252, column: 10, scope: !1610, inlinedAt: !3182)
!3205 = !DILocation(line: 252, column: 14, scope: !1610, inlinedAt: !3182)
!3206 = !DILocation(line: 252, column: 19, scope: !1610, inlinedAt: !3182)
!3207 = !DILocation(line: 252, column: 5, scope: !1610, inlinedAt: !3182)
!3208 = !DILocation(line: 253, column: 1, scope: !1575, inlinedAt: !3182)
!3209 = !DILocation(line: 680, column: 7, scope: !3183, inlinedAt: !3166)
!3210 = !DILocation(line: 683, column: 7, scope: !3211, inlinedAt: !3166)
!3211 = distinct !DILexicalBlock(scope: !3164, file: !3, line: 682, column: 14)
!3212 = !DILocation(line: 684, column: 7, scope: !3211, inlinedAt: !3166)
!3213 = !DILocation(line: 687, column: 1, scope: !3159, inlinedAt: !3166)
!3214 = !DILocation(line: 695, column: 3, scope: !3141)
!3215 = !DILocation(line: 696, column: 19, scope: !3149)
!3216 = !DILocation(line: 696, column: 5, scope: !3149)
!3217 = !DILocation(line: 407, column: 30, scope: !1623, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 698, column: 9, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 697, column: 17)
!3220 = !DILocation(line: 407, column: 43, scope: !1623, inlinedAt: !3218)
!3221 = !DILocation(line: 409, column: 23, scope: !1623, inlinedAt: !3218)
!3222 = !DILocation(line: 409, column: 14, scope: !1623, inlinedAt: !3218)
!3223 = !DILocation(line: 410, column: 3, scope: !1623, inlinedAt: !3218)
!3224 = !DILocation(line: 411, column: 3, scope: !1623, inlinedAt: !3218)
!3225 = !DILocation(line: 412, column: 3, scope: !1623, inlinedAt: !3218)
!3226 = !DILocation(line: 410, column: 11, scope: !1623, inlinedAt: !3218)
!3227 = !DILocation(line: 138, column: 33, scope: !1638, inlinedAt: !3228)
!3228 = distinct !DILocation(line: 413, column: 3, scope: !1623, inlinedAt: !3218)
!3229 = !DILocation(line: 138, column: 46, scope: !1638, inlinedAt: !3228)
!3230 = !DILocation(line: 117, column: 42, scope: !1115, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 139, column: 21, scope: !1638, inlinedAt: !3228)
!3232 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 119, column: 3, scope: !1115, inlinedAt: !3231)
!3234 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !3233)
!3235 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !3233)
!3236 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !3233)
!3237 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !3233)
!3238 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !3233)
!3240 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !3239)
!3241 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !3239)
!3242 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !3239)
!3243 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !3239)
!3244 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !3239)
!3245 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !3239)
!3246 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !3233)
!3247 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !3233)
!3248 = !DILocation(line: 120, column: 22, scope: !1115, inlinedAt: !3231)
!3249 = !DILocation(line: 118, column: 12, scope: !1115, inlinedAt: !3231)
!3250 = !DILocation(line: 121, column: 3, scope: !1115, inlinedAt: !3231)
!3251 = !DILocation(line: 122, column: 3, scope: !1115, inlinedAt: !3231)
!3252 = !DILocation(line: 133, column: 35, scope: !1667, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 139, column: 3, scope: !1638, inlinedAt: !3228)
!3254 = !DILocation(line: 133, column: 48, scope: !1667, inlinedAt: !3253)
!3255 = !DILocation(line: 133, column: 60, scope: !1667, inlinedAt: !3253)
!3256 = !DILocation(line: 134, column: 36, scope: !1667, inlinedAt: !3253)
!3257 = !DILocation(line: 134, column: 19, scope: !1667, inlinedAt: !3253)
!3258 = !DILocation(line: 126, column: 32, scope: !1680, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 134, column: 3, scope: !1667, inlinedAt: !3253)
!3260 = !DILocation(line: 126, column: 43, scope: !1680, inlinedAt: !3259)
!3261 = !DILocation(line: 126, column: 50, scope: !1680, inlinedAt: !3259)
!3262 = !DILocation(line: 127, column: 15, scope: !1680, inlinedAt: !3259)
!3263 = !DILocation(line: 127, column: 8, scope: !1680, inlinedAt: !3259)
!3264 = !DILocation(line: 128, column: 8, scope: !1680, inlinedAt: !3259)
!3265 = !DILocation(line: 129, column: 15, scope: !1680, inlinedAt: !3259)
!3266 = !DILocation(line: 130, column: 1, scope: !1680, inlinedAt: !3259)
!3267 = !DILocation(line: 135, column: 1, scope: !1667, inlinedAt: !3253)
!3268 = !DILocation(line: 140, column: 1, scope: !1638, inlinedAt: !3228)
!3269 = !DILocation(line: 414, column: 3, scope: !1623, inlinedAt: !3218)
!3270 = !DILocation(line: 415, column: 1, scope: !1623, inlinedAt: !3218)
!3271 = !DILocation(line: 699, column: 9, scope: !3219)
!3272 = !DILocation(line: 702, column: 9, scope: !3147)
!3273 = !DILocation(line: 703, column: 9, scope: !3147)
!3274 = !DILocation(line: 702, column: 17, scope: !3147)
!3275 = !DILocation(line: 704, column: 9, scope: !3147)
!3276 = !DILocation(line: 705, column: 9, scope: !3147)
!3277 = !DILocation(line: 707, column: 7, scope: !3148)
!3278 = !DILocation(line: 709, column: 9, scope: !3153)
!3279 = !DILocation(line: 710, column: 9, scope: !3153)
!3280 = !DILocation(line: 709, column: 17, scope: !3153)
!3281 = !DILocation(line: 138, column: 33, scope: !1638, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 711, column: 9, scope: !3153)
!3283 = !DILocation(line: 138, column: 46, scope: !1638, inlinedAt: !3282)
!3284 = !DILocation(line: 117, column: 42, scope: !1115, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 139, column: 21, scope: !1638, inlinedAt: !3282)
!3286 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 119, column: 3, scope: !1115, inlinedAt: !3285)
!3288 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !3287)
!3289 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !3287)
!3290 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !3287)
!3291 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !3287)
!3292 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !3287)
!3294 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !3293)
!3295 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !3293)
!3296 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !3293)
!3297 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !3293)
!3298 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !3293)
!3299 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !3293)
!3300 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !3287)
!3301 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !3287)
!3302 = !DILocation(line: 120, column: 22, scope: !1115, inlinedAt: !3285)
!3303 = !DILocation(line: 118, column: 12, scope: !1115, inlinedAt: !3285)
!3304 = !DILocation(line: 121, column: 3, scope: !1115, inlinedAt: !3285)
!3305 = !DILocation(line: 122, column: 3, scope: !1115, inlinedAt: !3285)
!3306 = !DILocation(line: 133, column: 35, scope: !1667, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 139, column: 3, scope: !1638, inlinedAt: !3282)
!3308 = !DILocation(line: 133, column: 48, scope: !1667, inlinedAt: !3307)
!3309 = !DILocation(line: 133, column: 60, scope: !1667, inlinedAt: !3307)
!3310 = !DILocation(line: 134, column: 36, scope: !1667, inlinedAt: !3307)
!3311 = !DILocation(line: 134, column: 19, scope: !1667, inlinedAt: !3307)
!3312 = !DILocation(line: 126, column: 32, scope: !1680, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 134, column: 3, scope: !1667, inlinedAt: !3307)
!3314 = !DILocation(line: 126, column: 43, scope: !1680, inlinedAt: !3313)
!3315 = !DILocation(line: 126, column: 50, scope: !1680, inlinedAt: !3313)
!3316 = !DILocation(line: 127, column: 15, scope: !1680, inlinedAt: !3313)
!3317 = !DILocation(line: 127, column: 8, scope: !1680, inlinedAt: !3313)
!3318 = !DILocation(line: 128, column: 8, scope: !1680, inlinedAt: !3313)
!3319 = !DILocation(line: 129, column: 15, scope: !1680, inlinedAt: !3313)
!3320 = !DILocation(line: 130, column: 1, scope: !1680, inlinedAt: !3313)
!3321 = !DILocation(line: 135, column: 1, scope: !1667, inlinedAt: !3307)
!3322 = !DILocation(line: 140, column: 1, scope: !1638, inlinedAt: !3282)
!3323 = !DILocation(line: 712, column: 9, scope: !3153)
!3324 = !DILocation(line: 713, column: 9, scope: !3153)
!3325 = !DILocation(line: 715, column: 7, scope: !3148)
!3326 = !DILocation(line: 717, column: 9, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 716, column: 43)
!3328 = !DILocation(line: 718, column: 9, scope: !3327)
!3329 = !DILocation(line: 719, column: 9, scope: !3327)
!3330 = !DILocation(line: 724, column: 1, scope: !3141)
!3331 = !DILocation(line: 695, column: 3, scope: !3150)
!3332 = distinct !{!3332, !3333, !3334}
!3333 = !DILocation(line: 695, column: 3, scope: !3151)
!3334 = !DILocation(line: 723, column: 3, scope: !3151)
!3335 = distinct !DISubprogram(name: "recfield", scope: !3, file: !3, line: 443, type: !2702, isLocal: true, isDefinition: true, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3336)
!3336 = !{!3337, !3338, !3339, !3340, !3341, !3342, !3343}
!3337 = !DILocalVariable(name: "ls", arg: 1, scope: !3335, file: !3, line: 443, type: !597)
!3338 = !DILocalVariable(name: "cc", arg: 2, scope: !3335, file: !3, line: 443, type: !2664)
!3339 = !DILocalVariable(name: "fs", scope: !3335, file: !3, line: 445, type: !705)
!3340 = !DILocalVariable(name: "reg", scope: !3335, file: !3, line: 446, type: !203)
!3341 = !DILocalVariable(name: "key", scope: !3335, file: !3, line: 447, type: !964)
!3342 = !DILocalVariable(name: "val", scope: !3335, file: !3, line: 447, type: !964)
!3343 = !DILocalVariable(name: "rkkey", scope: !3335, file: !3, line: 448, type: !203)
!3344 = !DILocation(line: 443, column: 33, scope: !3335)
!3345 = !DILocation(line: 443, column: 57, scope: !3335)
!3346 = !DILocation(line: 445, column: 23, scope: !3335)
!3347 = !DILocation(line: 445, column: 14, scope: !3335)
!3348 = !DILocation(line: 446, column: 21, scope: !3335)
!3349 = !DILocation(line: 446, column: 7, scope: !3335)
!3350 = !DILocation(line: 447, column: 3, scope: !3335)
!3351 = !DILocation(line: 449, column: 13, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3335, file: !3, line: 449, column: 7)
!3353 = !DILocation(line: 449, column: 19, scope: !3352)
!3354 = !DILocation(line: 449, column: 7, scope: !3335)
!3355 = !DILocation(line: 450, column: 5, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 450, column: 5)
!3357 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 449, column: 31)
!3358 = !DILocation(line: 450, column: 5, scope: !3357)
!3359 = !DILocation(line: 71, column: 36, scope: !2718, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 450, column: 5, scope: !3356)
!3361 = !DILocation(line: 71, column: 44, scope: !2718, inlinedAt: !3360)
!3362 = !DILocation(line: 71, column: 63, scope: !2718, inlinedAt: !3360)
!3363 = !DILocation(line: 72, column: 26, scope: !2718, inlinedAt: !3360)
!3364 = !DILocation(line: 72, column: 29, scope: !2718, inlinedAt: !3360)
!3365 = !DILocation(line: 72, column: 41, scope: !2718, inlinedAt: !3360)
!3366 = !DILocation(line: 0, scope: !2718, inlinedAt: !3360)
!3367 = !DILocation(line: 72, column: 21, scope: !2718, inlinedAt: !3360)
!3368 = !DILocation(line: 73, column: 5, scope: !2718, inlinedAt: !3360)
!3369 = !DILocation(line: 74, column: 5, scope: !2718, inlinedAt: !3360)
!3370 = !DILocation(line: 72, column: 15, scope: !2718, inlinedAt: !3360)
!3371 = !DILocation(line: 76, column: 21, scope: !2718, inlinedAt: !3360)
!3372 = !DILocation(line: 76, column: 3, scope: !2718, inlinedAt: !3360)
!3373 = !DILocation(line: 77, column: 1, scope: !2718, inlinedAt: !3360)
!3374 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 119, column: 3, scope: !1115, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 139, column: 21, scope: !1638, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 451, column: 5, scope: !3357)
!3378 = !DILocation(line: 447, column: 11, scope: !3335)
!3379 = !DILocation(line: 138, column: 33, scope: !1638, inlinedAt: !3377)
!3380 = !DILocation(line: 138, column: 46, scope: !1638, inlinedAt: !3377)
!3381 = !DILocation(line: 117, column: 42, scope: !1115, inlinedAt: !3376)
!3382 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !3375)
!3383 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !3375)
!3384 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !3375)
!3385 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !3375)
!3387 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !3386)
!3388 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !3386)
!3389 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !3386)
!3390 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !3386)
!3391 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !3386)
!3392 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !3386)
!3393 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !3375)
!3394 = !DILocation(line: 0, scope: !1115, inlinedAt: !3376)
!3395 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !3375)
!3396 = !DILocation(line: 120, column: 14, scope: !1115, inlinedAt: !3376)
!3397 = !DILocation(line: 120, column: 22, scope: !1115, inlinedAt: !3376)
!3398 = !DILocation(line: 118, column: 12, scope: !1115, inlinedAt: !3376)
!3399 = !DILocation(line: 121, column: 3, scope: !1115, inlinedAt: !3376)
!3400 = !DILocation(line: 122, column: 3, scope: !1115, inlinedAt: !3376)
!3401 = !DILocation(line: 133, column: 35, scope: !1667, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 139, column: 3, scope: !1638, inlinedAt: !3377)
!3403 = !DILocation(line: 133, column: 48, scope: !1667, inlinedAt: !3402)
!3404 = !DILocation(line: 133, column: 60, scope: !1667, inlinedAt: !3402)
!3405 = !DILocation(line: 134, column: 36, scope: !1667, inlinedAt: !3402)
!3406 = !DILocation(line: 134, column: 19, scope: !1667, inlinedAt: !3402)
!3407 = !DILocation(line: 126, column: 32, scope: !1680, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 134, column: 3, scope: !1667, inlinedAt: !3402)
!3409 = !DILocation(line: 126, column: 43, scope: !1680, inlinedAt: !3408)
!3410 = !DILocation(line: 126, column: 50, scope: !1680, inlinedAt: !3408)
!3411 = !DILocation(line: 127, column: 13, scope: !1680, inlinedAt: !3408)
!3412 = !DILocation(line: 127, column: 15, scope: !1680, inlinedAt: !3408)
!3413 = !DILocation(line: 127, column: 6, scope: !1680, inlinedAt: !3408)
!3414 = !DILocation(line: 127, column: 8, scope: !1680, inlinedAt: !3408)
!3415 = !DILocation(line: 128, column: 6, scope: !1680, inlinedAt: !3408)
!3416 = !DILocation(line: 128, column: 8, scope: !1680, inlinedAt: !3408)
!3417 = !DILocation(line: 129, column: 6, scope: !1680, inlinedAt: !3408)
!3418 = !DILocation(line: 129, column: 10, scope: !1680, inlinedAt: !3408)
!3419 = !DILocation(line: 129, column: 15, scope: !1680, inlinedAt: !3408)
!3420 = !DILocation(line: 130, column: 1, scope: !1680, inlinedAt: !3408)
!3421 = !DILocation(line: 135, column: 1, scope: !1667, inlinedAt: !3402)
!3422 = !DILocation(line: 140, column: 1, scope: !1638, inlinedAt: !3377)
!3423 = !DILocation(line: 452, column: 3, scope: !3357)
!3424 = !DILocation(line: 454, column: 5, scope: !3352)
!3425 = !DILocation(line: 455, column: 7, scope: !3335)
!3426 = !DILocation(line: 455, column: 9, scope: !3335)
!3427 = !DILocation(line: 94, column: 34, scope: !1044, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 456, column: 3, scope: !3335)
!3429 = !DILocation(line: 94, column: 42, scope: !1044, inlinedAt: !3428)
!3430 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !3431)
!3431 = distinct !DILocation(line: 95, column: 3, scope: !1044, inlinedAt: !3428)
!3432 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !3431)
!3433 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !3431)
!3434 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !3431)
!3435 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !3431)
!3436 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !3431)
!3438 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !3437)
!3439 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !3437)
!3440 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !3437)
!3441 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !3437)
!3442 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !3437)
!3443 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !3437)
!3444 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !3431)
!3445 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !3431)
!3446 = !DILocation(line: 96, column: 3, scope: !1044, inlinedAt: !3428)
!3447 = !DILocation(line: 97, column: 1, scope: !1044, inlinedAt: !3428)
!3448 = !DILocation(line: 457, column: 11, scope: !3335)
!3449 = !DILocation(line: 448, column: 7, scope: !3335)
!3450 = !DILocation(line: 447, column: 16, scope: !3335)
!3451 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 458, column: 3, scope: !3335)
!3453 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !3452)
!3454 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !3452)
!3455 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !3452)
!3456 = !DILocation(line: 459, column: 37, scope: !3335)
!3457 = !DILocation(line: 459, column: 40, scope: !3335)
!3458 = !DILocation(line: 459, column: 44, scope: !3335)
!3459 = !DILocation(line: 459, column: 57, scope: !3335)
!3460 = !DILocation(line: 459, column: 3, scope: !3335)
!3461 = !DILocation(line: 460, column: 15, scope: !3335)
!3462 = !DILocation(line: 461, column: 1, scope: !3335)
!3463 = distinct !DISubprogram(name: "yindex", scope: !3, file: !3, line: 418, type: !986, isLocal: true, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3464)
!3464 = !{!3465, !3466}
!3465 = !DILocalVariable(name: "ls", arg: 1, scope: !3463, file: !3, line: 418, type: !597)
!3466 = !DILocalVariable(name: "v", arg: 2, scope: !3463, file: !3, line: 418, type: !988)
!3467 = !DILocation(line: 418, column: 31, scope: !3463)
!3468 = !DILocation(line: 418, column: 44, scope: !3463)
!3469 = !DILocation(line: 420, column: 3, scope: !3463)
!3470 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 421, column: 3, scope: !3463)
!3472 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !3471)
!3473 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !3471)
!3474 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !3471)
!3475 = !DILocation(line: 422, column: 20, scope: !3463)
!3476 = !DILocation(line: 422, column: 3, scope: !3463)
!3477 = !DILocation(line: 94, column: 34, scope: !1044, inlinedAt: !3478)
!3478 = distinct !DILocation(line: 423, column: 3, scope: !3463)
!3479 = !DILocation(line: 94, column: 42, scope: !1044, inlinedAt: !3478)
!3480 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !3481)
!3481 = distinct !DILocation(line: 95, column: 3, scope: !1044, inlinedAt: !3478)
!3482 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !3481)
!3483 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !3481)
!3484 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !3481)
!3485 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !3481)
!3486 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !3481)
!3488 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !3487)
!3489 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !3487)
!3490 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !3487)
!3491 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !3487)
!3492 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !3487)
!3493 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !3487)
!3494 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !3481)
!3495 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !3481)
!3496 = !DILocation(line: 96, column: 3, scope: !1044, inlinedAt: !3478)
!3497 = !DILocation(line: 97, column: 1, scope: !1044, inlinedAt: !3478)
!3498 = !DILocation(line: 424, column: 1, scope: !3463)
!3499 = distinct !DISubprogram(name: "new_localvar", scope: !3, file: !3, line: 160, type: !1148, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3500)
!3500 = !{!3501, !3502, !3503, !3504}
!3501 = !DILocalVariable(name: "ls", arg: 1, scope: !3499, file: !3, line: 160, type: !597)
!3502 = !DILocalVariable(name: "name", arg: 2, scope: !3499, file: !3, line: 160, type: !332)
!3503 = !DILocalVariable(name: "n", arg: 3, scope: !3499, file: !3, line: 160, type: !203)
!3504 = !DILocalVariable(name: "fs", scope: !3499, file: !3, line: 161, type: !705)
!3505 = !DILocation(line: 160, column: 37, scope: !3499)
!3506 = !DILocation(line: 160, column: 50, scope: !3499)
!3507 = !DILocation(line: 160, column: 60, scope: !3499)
!3508 = !DILocation(line: 161, column: 23, scope: !3499)
!3509 = !DILocation(line: 161, column: 14, scope: !3499)
!3510 = !DILocation(line: 162, column: 3, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3499, file: !3, line: 162, column: 3)
!3512 = !DILocation(line: 162, column: 3, scope: !3499)
!3513 = !DILocation(line: 71, column: 36, scope: !2718, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 162, column: 3, scope: !3511)
!3515 = !DILocation(line: 71, column: 44, scope: !2718, inlinedAt: !3514)
!3516 = !DILocation(line: 71, column: 63, scope: !2718, inlinedAt: !3514)
!3517 = !DILocation(line: 72, column: 26, scope: !2718, inlinedAt: !3514)
!3518 = !DILocation(line: 72, column: 29, scope: !2718, inlinedAt: !3514)
!3519 = !DILocation(line: 72, column: 41, scope: !2718, inlinedAt: !3514)
!3520 = !DILocation(line: 0, scope: !2718, inlinedAt: !3514)
!3521 = !DILocation(line: 72, column: 21, scope: !2718, inlinedAt: !3514)
!3522 = !DILocation(line: 73, column: 5, scope: !2718, inlinedAt: !3514)
!3523 = !DILocation(line: 74, column: 5, scope: !2718, inlinedAt: !3514)
!3524 = !DILocation(line: 72, column: 15, scope: !2718, inlinedAt: !3514)
!3525 = !DILocation(line: 76, column: 21, scope: !2718, inlinedAt: !3514)
!3526 = !DILocation(line: 76, column: 3, scope: !2718, inlinedAt: !3514)
!3527 = !DILocation(line: 77, column: 1, scope: !2718, inlinedAt: !3514)
!3528 = !DILocation(line: 144, column: 23, scope: !3529, inlinedAt: !3538)
!3529 = distinct !DISubprogram(name: "registerlocalvar", scope: !3, file: !3, line: 143, type: !3530, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3532)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!203, !597, !332}
!3532 = !{!3533, !3534, !3535, !3536, !3537}
!3533 = !DILocalVariable(name: "ls", arg: 1, scope: !3529, file: !3, line: 143, type: !597)
!3534 = !DILocalVariable(name: "varname", arg: 2, scope: !3529, file: !3, line: 143, type: !332)
!3535 = !DILocalVariable(name: "fs", scope: !3529, file: !3, line: 144, type: !705)
!3536 = !DILocalVariable(name: "f", scope: !3529, file: !3, line: 145, type: !459)
!3537 = !DILocalVariable(name: "oldsize", scope: !3529, file: !3, line: 146, type: !203)
!3538 = distinct !DILocation(line: 163, column: 31, scope: !3499)
!3539 = !DILocation(line: 143, column: 40, scope: !3529, inlinedAt: !3538)
!3540 = !DILocation(line: 143, column: 53, scope: !3529, inlinedAt: !3538)
!3541 = !DILocation(line: 144, column: 14, scope: !3529, inlinedAt: !3538)
!3542 = !DILocation(line: 145, column: 18, scope: !3529, inlinedAt: !3538)
!3543 = !DILocation(line: 145, column: 10, scope: !3529, inlinedAt: !3538)
!3544 = !DILocation(line: 146, column: 20, scope: !3529, inlinedAt: !3538)
!3545 = !DILocation(line: 146, column: 7, scope: !3529, inlinedAt: !3538)
!3546 = !DILocation(line: 147, column: 3, scope: !3547, inlinedAt: !3538)
!3547 = distinct !DILexicalBlock(scope: !3529, file: !3, line: 147, column: 3)
!3548 = !DILocation(line: 147, column: 3, scope: !3529, inlinedAt: !3538)
!3549 = !DILocation(line: 0, scope: !3529, inlinedAt: !3538)
!3550 = !DILocation(line: 149, column: 3, scope: !3529, inlinedAt: !3538)
!3551 = !DILocation(line: 149, column: 23, scope: !3529, inlinedAt: !3538)
!3552 = !DILocation(line: 149, column: 18, scope: !3529, inlinedAt: !3538)
!3553 = !DILocation(line: 149, column: 54, scope: !3529, inlinedAt: !3538)
!3554 = !DILocation(line: 149, column: 58, scope: !3529, inlinedAt: !3538)
!3555 = !DILocation(line: 149, column: 66, scope: !3529, inlinedAt: !3538)
!3556 = !{!811, !578, i64 0}
!3557 = distinct !{!3557, !3092}
!3558 = distinct !{!3558, !3559, !3560}
!3559 = !DILocation(line: 149, column: 3, scope: !3529)
!3560 = !DILocation(line: 149, column: 68, scope: !3529)
!3561 = !DILocation(line: 150, column: 18, scope: !3529, inlinedAt: !3538)
!3562 = !DILocation(line: 150, column: 3, scope: !3529, inlinedAt: !3538)
!3563 = !DILocation(line: 150, column: 28, scope: !3529, inlinedAt: !3538)
!3564 = !DILocation(line: 150, column: 36, scope: !3529, inlinedAt: !3538)
!3565 = !DILocation(line: 151, column: 3, scope: !3566, inlinedAt: !3538)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 151, column: 3)
!3567 = distinct !DILexicalBlock(scope: !3529, file: !3, line: 151, column: 3)
!3568 = !DILocation(line: 151, column: 3, scope: !3567, inlinedAt: !3538)
!3569 = !DILocation(line: 152, column: 22, scope: !3529, inlinedAt: !3538)
!3570 = !DILocation(line: 152, column: 3, scope: !3529, inlinedAt: !3538)
!3571 = !DILocation(line: 163, column: 18, scope: !3499)
!3572 = !DILocation(line: 163, column: 14, scope: !3499)
!3573 = !DILocation(line: 163, column: 25, scope: !3499)
!3574 = !DILocation(line: 163, column: 3, scope: !3499)
!3575 = !DILocation(line: 163, column: 29, scope: !3499)
!3576 = !DILocation(line: 164, column: 1, scope: !3499)
!3577 = distinct !DISubprogram(name: "funcargs", scope: !3, file: !3, line: 609, type: !986, isLocal: true, isDefinition: true, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3578)
!3578 = !{!3579, !3580, !3581, !3582, !3583, !3584, !3585}
!3579 = !DILocalVariable(name: "ls", arg: 1, scope: !3577, file: !3, line: 609, type: !597)
!3580 = !DILocalVariable(name: "f", arg: 2, scope: !3577, file: !3, line: 609, type: !988)
!3581 = !DILocalVariable(name: "fs", scope: !3577, file: !3, line: 610, type: !705)
!3582 = !DILocalVariable(name: "args", scope: !3577, file: !3, line: 611, type: !964)
!3583 = !DILocalVariable(name: "base", scope: !3577, file: !3, line: 612, type: !203)
!3584 = !DILocalVariable(name: "nparams", scope: !3577, file: !3, line: 612, type: !203)
!3585 = !DILocalVariable(name: "line", scope: !3577, file: !3, line: 613, type: !203)
!3586 = !DILocation(line: 609, column: 33, scope: !3577)
!3587 = !DILocation(line: 609, column: 46, scope: !3577)
!3588 = !DILocation(line: 610, column: 23, scope: !3577)
!3589 = !DILocation(line: 610, column: 14, scope: !3577)
!3590 = !DILocation(line: 611, column: 3, scope: !3577)
!3591 = !DILocation(line: 613, column: 18, scope: !3577)
!3592 = !DILocation(line: 613, column: 7, scope: !3577)
!3593 = !DILocation(line: 614, column: 17, scope: !3577)
!3594 = !DILocation(line: 614, column: 3, scope: !3577)
!3595 = !DILocation(line: 616, column: 23, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !3, line: 616, column: 11)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 615, column: 15)
!3598 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 614, column: 24)
!3599 = !{!573, !574, i64 8}
!3600 = !DILocation(line: 616, column: 16, scope: !3596)
!3601 = !DILocation(line: 616, column: 11, scope: !3597)
!3602 = !DILocation(line: 617, column: 9, scope: !3596)
!3603 = !DILocation(line: 618, column: 7, scope: !3597)
!3604 = !DILocation(line: 619, column: 17, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3597, file: !3, line: 619, column: 11)
!3606 = !DILocation(line: 619, column: 23, scope: !3605)
!3607 = !DILocation(line: 619, column: 11, scope: !3597)
!3608 = !DILocation(line: 620, column: 14, scope: !3605)
!3609 = !DILocation(line: 620, column: 16, scope: !3605)
!3610 = !DILocation(line: 620, column: 9, scope: !3605)
!3611 = !DILocation(line: 611, column: 11, scope: !3577)
!3612 = !DILocation(line: 596, column: 32, scope: !1365, inlinedAt: !3613)
!3613 = distinct !DILocation(line: 622, column: 9, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 621, column: 12)
!3615 = !DILocation(line: 596, column: 45, scope: !1365, inlinedAt: !3613)
!3616 = !DILocation(line: 598, column: 7, scope: !1365, inlinedAt: !3613)
!3617 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 599, column: 3, scope: !1365, inlinedAt: !3613)
!3619 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !3618)
!3620 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !3618)
!3621 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !3618)
!3622 = !DILocation(line: 600, column: 3, scope: !1365, inlinedAt: !3613)
!3623 = !DILocation(line: 80, column: 32, scope: !641, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 600, column: 10, scope: !1365, inlinedAt: !3613)
!3625 = !DILocation(line: 80, column: 40, scope: !641, inlinedAt: !3624)
!3626 = !DILocation(line: 81, column: 13, scope: !650, inlinedAt: !3624)
!3627 = !DILocation(line: 81, column: 19, scope: !650, inlinedAt: !3624)
!3628 = !DILocation(line: 81, column: 7, scope: !641, inlinedAt: !3624)
!3629 = !DILocation(line: 82, column: 5, scope: !654, inlinedAt: !3624)
!3630 = !DILocation(line: 83, column: 5, scope: !654, inlinedAt: !3624)
!3631 = !DILocation(line: 86, column: 1, scope: !641, inlinedAt: !3624)
!3632 = !DILocation(line: 601, column: 26, scope: !1391, inlinedAt: !3613)
!3633 = !DILocation(line: 601, column: 5, scope: !1391, inlinedAt: !3613)
!3634 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 602, column: 5, scope: !1391, inlinedAt: !3613)
!3636 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !3635)
!3637 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !3635)
!3638 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !3635)
!3639 = !DILocation(line: 85, column: 8, scope: !650, inlinedAt: !3624)
!3640 = !DILocation(line: 605, column: 3, scope: !1365, inlinedAt: !3613)
!3641 = !DILocation(line: 623, column: 9, scope: !3614)
!3642 = !DILocation(line: 625, column: 7, scope: !3597)
!3643 = !DILocation(line: 626, column: 7, scope: !3597)
!3644 = !DILocation(line: 629, column: 7, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 628, column: 15)
!3646 = !DILocation(line: 630, column: 7, scope: !3645)
!3647 = !DILocation(line: 633, column: 35, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 632, column: 21)
!3649 = !DILocation(line: 633, column: 43, scope: !3648)
!3650 = !DILocation(line: 133, column: 35, scope: !1667, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 633, column: 7, scope: !3648)
!3652 = !DILocation(line: 133, column: 48, scope: !1667, inlinedAt: !3651)
!3653 = !DILocation(line: 133, column: 60, scope: !1667, inlinedAt: !3651)
!3654 = !DILocation(line: 134, column: 19, scope: !1667, inlinedAt: !3651)
!3655 = !DILocation(line: 126, column: 32, scope: !1680, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 134, column: 3, scope: !1667, inlinedAt: !3651)
!3657 = !DILocation(line: 126, column: 43, scope: !1680, inlinedAt: !3656)
!3658 = !DILocation(line: 126, column: 50, scope: !1680, inlinedAt: !3656)
!3659 = !DILocation(line: 127, column: 13, scope: !1680, inlinedAt: !3656)
!3660 = !DILocation(line: 127, column: 15, scope: !1680, inlinedAt: !3656)
!3661 = !DILocation(line: 127, column: 6, scope: !1680, inlinedAt: !3656)
!3662 = !DILocation(line: 127, column: 8, scope: !1680, inlinedAt: !3656)
!3663 = !DILocation(line: 128, column: 6, scope: !1680, inlinedAt: !3656)
!3664 = !DILocation(line: 128, column: 8, scope: !1680, inlinedAt: !3656)
!3665 = !DILocation(line: 129, column: 6, scope: !1680, inlinedAt: !3656)
!3666 = !DILocation(line: 129, column: 10, scope: !1680, inlinedAt: !3656)
!3667 = !DILocation(line: 129, column: 15, scope: !1680, inlinedAt: !3656)
!3668 = !DILocation(line: 130, column: 1, scope: !1680, inlinedAt: !3656)
!3669 = !DILocation(line: 135, column: 1, scope: !1667, inlinedAt: !3651)
!3670 = !DILocation(line: 634, column: 7, scope: !3648)
!3671 = !DILocation(line: 635, column: 7, scope: !3648)
!3672 = !DILocation(line: 638, column: 7, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 637, column: 14)
!3674 = !DILocation(line: 639, column: 7, scope: !3673)
!3675 = !DILocation(line: 0, scope: !3597)
!3676 = !DILocation(line: 643, column: 13, scope: !3577)
!3677 = !DILocation(line: 643, column: 17, scope: !3577)
!3678 = !DILocation(line: 612, column: 7, scope: !3577)
!3679 = !DILocation(line: 644, column: 7, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 644, column: 7)
!3681 = !DILocation(line: 644, column: 7, scope: !3577)
!3682 = !DILocation(line: 612, column: 13, scope: !3577)
!3683 = !DILocation(line: 645, column: 5, scope: !3680)
!3684 = !DILocation(line: 653, column: 7, scope: !3577)
!3685 = !DILocation(line: 647, column: 16, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3687, file: !3, line: 647, column: 9)
!3687 = distinct !DILexicalBlock(scope: !3680, file: !3, line: 646, column: 8)
!3688 = !DILocation(line: 647, column: 9, scope: !3687)
!3689 = !DILocation(line: 648, column: 7, scope: !3686)
!3690 = !DILocation(line: 649, column: 19, scope: !3687)
!3691 = !DILocation(line: 651, column: 22, scope: !3577)
!3692 = !DILocation(line: 126, column: 32, scope: !1680, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 651, column: 3, scope: !3577)
!3694 = !DILocation(line: 126, column: 43, scope: !1680, inlinedAt: !3693)
!3695 = !DILocation(line: 126, column: 50, scope: !1680, inlinedAt: !3693)
!3696 = !DILocation(line: 127, column: 13, scope: !1680, inlinedAt: !3693)
!3697 = !DILocation(line: 127, column: 15, scope: !1680, inlinedAt: !3693)
!3698 = !DILocation(line: 127, column: 6, scope: !1680, inlinedAt: !3693)
!3699 = !DILocation(line: 127, column: 8, scope: !1680, inlinedAt: !3693)
!3700 = !DILocation(line: 128, column: 6, scope: !1680, inlinedAt: !3693)
!3701 = !DILocation(line: 128, column: 8, scope: !1680, inlinedAt: !3693)
!3702 = !DILocation(line: 129, column: 15, scope: !1680, inlinedAt: !3693)
!3703 = !DILocation(line: 130, column: 1, scope: !1680, inlinedAt: !3693)
!3704 = !DILocation(line: 652, column: 3, scope: !3577)
!3705 = !DILocation(line: 653, column: 21, scope: !3577)
!3706 = !DILocation(line: 653, column: 15, scope: !3577)
!3707 = !DILocation(line: 655, column: 1, scope: !3577)
!3708 = !DILocation(line: 0, scope: !3673)
!3709 = distinct !DISubprogram(name: "singlevaraux", scope: !3, file: !3, line: 224, type: !3710, isLocal: true, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3712)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!203, !705, !332, !988, !203}
!3712 = !{!3713, !3714, !3715, !3716, !3717}
!3713 = !DILocalVariable(name: "fs", arg: 1, scope: !3709, file: !3, line: 224, type: !705)
!3714 = !DILocalVariable(name: "n", arg: 2, scope: !3709, file: !3, line: 224, type: !332)
!3715 = !DILocalVariable(name: "var", arg: 3, scope: !3709, file: !3, line: 224, type: !988)
!3716 = !DILocalVariable(name: "base", arg: 4, scope: !3709, file: !3, line: 224, type: !203)
!3717 = !DILocalVariable(name: "v", scope: !3718, file: !3, line: 230, type: !203)
!3718 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 229, column: 8)
!3719 = distinct !DILexicalBlock(scope: !3709, file: !3, line: 225, column: 7)
!3720 = !DILocation(line: 224, column: 37, scope: !3709)
!3721 = !DILocation(line: 224, column: 50, scope: !3709)
!3722 = !DILocation(line: 224, column: 62, scope: !3709)
!3723 = !DILocation(line: 224, column: 71, scope: !3709)
!3724 = !DILocation(line: 225, column: 10, scope: !3719)
!3725 = !DILocation(line: 225, column: 7, scope: !3709)
!3726 = !DILocation(line: 126, column: 32, scope: !1680, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 226, column: 5, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 225, column: 19)
!3729 = !DILocation(line: 126, column: 43, scope: !1680, inlinedAt: !3727)
!3730 = !DILocation(line: 126, column: 50, scope: !1680, inlinedAt: !3727)
!3731 = !DILocation(line: 127, column: 13, scope: !1680, inlinedAt: !3727)
!3732 = !DILocation(line: 127, column: 15, scope: !1680, inlinedAt: !3727)
!3733 = !DILocation(line: 127, column: 6, scope: !1680, inlinedAt: !3727)
!3734 = !DILocation(line: 127, column: 8, scope: !1680, inlinedAt: !3727)
!3735 = !DILocation(line: 128, column: 6, scope: !1680, inlinedAt: !3727)
!3736 = !DILocation(line: 128, column: 8, scope: !1680, inlinedAt: !3727)
!3737 = !DILocation(line: 129, column: 6, scope: !1680, inlinedAt: !3727)
!3738 = !DILocation(line: 129, column: 10, scope: !1680, inlinedAt: !3727)
!3739 = !DILocation(line: 129, column: 15, scope: !1680, inlinedAt: !3727)
!3740 = !DILocation(line: 227, column: 5, scope: !3728)
!3741 = !DILocalVariable(name: "fs", arg: 1, scope: !3742, file: !3, line: 207, type: !705)
!3742 = distinct !DISubprogram(name: "searchvar", scope: !3, file: !3, line: 207, type: !3743, isLocal: true, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3745)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!203, !705, !332}
!3745 = !{!3741, !3746, !3747}
!3746 = !DILocalVariable(name: "n", arg: 2, scope: !3742, file: !3, line: 207, type: !332)
!3747 = !DILocalVariable(name: "i", scope: !3742, file: !3, line: 208, type: !203)
!3748 = !DILocation(line: 207, column: 34, scope: !3742, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 230, column: 13, scope: !3718)
!3750 = !DILocation(line: 207, column: 47, scope: !3742, inlinedAt: !3749)
!3751 = !DILocation(line: 209, column: 14, scope: !3752, inlinedAt: !3749)
!3752 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 209, column: 3)
!3753 = !DILocation(line: 209, column: 8, scope: !3752, inlinedAt: !3749)
!3754 = !DILocation(line: 0, scope: !3755, inlinedAt: !3749)
!3755 = distinct !DILexicalBlock(scope: !3752, file: !3, line: 209, column: 3)
!3756 = !DILocation(line: 208, column: 7, scope: !3742, inlinedAt: !3749)
!3757 = !DILocation(line: 209, column: 27, scope: !3755, inlinedAt: !3749)
!3758 = !DILocation(line: 209, column: 3, scope: !3752, inlinedAt: !3749)
!3759 = !DILocation(line: 210, column: 14, scope: !3760, inlinedAt: !3749)
!3760 = distinct !DILexicalBlock(scope: !3761, file: !3, line: 210, column: 9)
!3761 = distinct !DILexicalBlock(scope: !3755, file: !3, line: 209, column: 38)
!3762 = !DILocation(line: 210, column: 31, scope: !3760, inlinedAt: !3749)
!3763 = !DILocation(line: 210, column: 11, scope: !3760, inlinedAt: !3749)
!3764 = !DILocation(line: 210, column: 9, scope: !3761, inlinedAt: !3749)
!3765 = distinct !{!3765, !3766, !3767}
!3766 = !DILocation(line: 209, column: 3, scope: !3752)
!3767 = !DILocation(line: 212, column: 3, scope: !3752)
!3768 = !DILocation(line: 213, column: 3, scope: !3742, inlinedAt: !3749)
!3769 = !DILocation(line: 214, column: 1, scope: !3742, inlinedAt: !3749)
!3770 = !DILocation(line: 230, column: 9, scope: !3718)
!3771 = !DILocation(line: 231, column: 9, scope: !3718)
!3772 = !DILocation(line: 231, column: 11, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 231, column: 9)
!3774 = !DILocation(line: 126, column: 32, scope: !1680, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 232, column: 7, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 231, column: 17)
!3777 = !DILocation(line: 126, column: 43, scope: !1680, inlinedAt: !3775)
!3778 = !DILocation(line: 126, column: 50, scope: !1680, inlinedAt: !3775)
!3779 = !DILocation(line: 127, column: 13, scope: !1680, inlinedAt: !3775)
!3780 = !DILocation(line: 127, column: 15, scope: !1680, inlinedAt: !3775)
!3781 = !DILocation(line: 127, column: 6, scope: !1680, inlinedAt: !3775)
!3782 = !DILocation(line: 127, column: 8, scope: !1680, inlinedAt: !3775)
!3783 = !DILocation(line: 128, column: 6, scope: !1680, inlinedAt: !3775)
!3784 = !DILocation(line: 128, column: 8, scope: !1680, inlinedAt: !3775)
!3785 = !DILocation(line: 129, column: 6, scope: !1680, inlinedAt: !3775)
!3786 = !DILocation(line: 129, column: 10, scope: !1680, inlinedAt: !3775)
!3787 = !DILocation(line: 129, column: 15, scope: !1680, inlinedAt: !3775)
!3788 = !DILocation(line: 130, column: 1, scope: !1680, inlinedAt: !3775)
!3789 = !DILocation(line: 233, column: 12, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3776, file: !3, line: 233, column: 11)
!3791 = !DILocation(line: 233, column: 11, scope: !3776)
!3792 = !DILocalVariable(name: "fs", arg: 1, scope: !3793, file: !3, line: 217, type: !705)
!3793 = distinct !DISubprogram(name: "markupval", scope: !3, file: !3, line: 217, type: !3794, isLocal: true, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3796)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{null, !705, !203}
!3796 = !{!3792, !3797, !3798}
!3797 = !DILocalVariable(name: "level", arg: 2, scope: !3793, file: !3, line: 217, type: !203)
!3798 = !DILocalVariable(name: "bl", scope: !3793, file: !3, line: 218, type: !1016)
!3799 = !DILocation(line: 217, column: 35, scope: !3793, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 234, column: 9, scope: !3790)
!3801 = !DILocation(line: 217, column: 43, scope: !3793, inlinedAt: !3800)
!3802 = !DILocation(line: 218, column: 22, scope: !3793, inlinedAt: !3800)
!3803 = !DILocation(line: 218, column: 13, scope: !3793, inlinedAt: !3800)
!3804 = !DILocation(line: 219, column: 3, scope: !3793, inlinedAt: !3800)
!3805 = !DILocation(line: 219, column: 10, scope: !3793, inlinedAt: !3800)
!3806 = !DILocation(line: 219, column: 13, scope: !3793, inlinedAt: !3800)
!3807 = !DILocation(line: 219, column: 20, scope: !3793, inlinedAt: !3800)
!3808 = !DILocation(line: 219, column: 16, scope: !3793, inlinedAt: !3800)
!3809 = !DILocation(line: 219, column: 28, scope: !3793, inlinedAt: !3800)
!3810 = !DILocation(line: 219, column: 46, scope: !3793, inlinedAt: !3800)
!3811 = distinct !{!3811, !3812, !3813}
!3812 = !DILocation(line: 219, column: 3, scope: !3793)
!3813 = !DILocation(line: 219, column: 46, scope: !3793)
!3814 = !DILocation(line: 220, column: 7, scope: !3793, inlinedAt: !3800)
!3815 = !DILocation(line: 220, column: 15, scope: !3816, inlinedAt: !3800)
!3816 = distinct !DILexicalBlock(scope: !3793, file: !3, line: 220, column: 7)
!3817 = !DILocation(line: 220, column: 21, scope: !3816, inlinedAt: !3800)
!3818 = !DILocation(line: 220, column: 11, scope: !3816, inlinedAt: !3800)
!3819 = !DILocation(line: 0, scope: !3790)
!3820 = !DILocation(line: 221, column: 1, scope: !3793, inlinedAt: !3800)
!3821 = !DILocation(line: 234, column: 9, scope: !3790)
!3822 = !DILocation(line: 238, column: 28, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3824, file: !3, line: 238, column: 11)
!3824 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 237, column: 10)
!3825 = !DILocation(line: 238, column: 11, scope: !3823)
!3826 = !DILocation(line: 238, column: 45, scope: !3823)
!3827 = !DILocation(line: 238, column: 11, scope: !3824)
!3828 = !DILocalVariable(name: "fs", arg: 1, scope: !3829, file: !3, line: 183, type: !705)
!3829 = distinct !DISubprogram(name: "indexupvalue", scope: !3, file: !3, line: 183, type: !3830, isLocal: true, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3832)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!203, !705, !332, !988}
!3832 = !{!3828, !3833, !3834, !3835, !3836, !3837}
!3833 = !DILocalVariable(name: "name", arg: 2, scope: !3829, file: !3, line: 183, type: !332)
!3834 = !DILocalVariable(name: "v", arg: 3, scope: !3829, file: !3, line: 183, type: !988)
!3835 = !DILocalVariable(name: "i", scope: !3829, file: !3, line: 184, type: !203)
!3836 = !DILocalVariable(name: "f", scope: !3829, file: !3, line: 185, type: !459)
!3837 = !DILocalVariable(name: "oldsize", scope: !3829, file: !3, line: 186, type: !203)
!3838 = !DILocation(line: 183, column: 37, scope: !3829, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 240, column: 23, scope: !3824)
!3840 = !DILocation(line: 183, column: 50, scope: !3829, inlinedAt: !3839)
!3841 = !DILocation(line: 183, column: 65, scope: !3829, inlinedAt: !3839)
!3842 = !DILocation(line: 185, column: 18, scope: !3829, inlinedAt: !3839)
!3843 = !DILocation(line: 185, column: 10, scope: !3829, inlinedAt: !3839)
!3844 = !DILocation(line: 186, column: 20, scope: !3829, inlinedAt: !3839)
!3845 = !DILocation(line: 186, column: 7, scope: !3829, inlinedAt: !3839)
!3846 = !DILocation(line: 184, column: 7, scope: !3829, inlinedAt: !3839)
!3847 = !DILocation(line: 187, column: 8, scope: !3848, inlinedAt: !3839)
!3848 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 187, column: 3)
!3849 = !DILocation(line: 187, column: 18, scope: !3850, inlinedAt: !3839)
!3850 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 187, column: 3)
!3851 = !DILocation(line: 187, column: 14, scope: !3850, inlinedAt: !3839)
!3852 = !DILocation(line: 187, column: 3, scope: !3848, inlinedAt: !3839)
!3853 = !DILocation(line: 194, column: 3, scope: !3829, inlinedAt: !3839)
!3854 = !DILocation(line: 188, column: 25, scope: !3855, inlinedAt: !3839)
!3855 = distinct !DILexicalBlock(scope: !3856, file: !3, line: 188, column: 9)
!3856 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 187, column: 29)
!3857 = !DILocation(line: 188, column: 9, scope: !3855, inlinedAt: !3839)
!3858 = !DILocation(line: 188, column: 27, scope: !3855, inlinedAt: !3839)
!3859 = !DILocation(line: 188, column: 35, scope: !3855, inlinedAt: !3839)
!3860 = !DILocation(line: 188, column: 54, scope: !3855, inlinedAt: !3839)
!3861 = !DILocation(line: 188, column: 38, scope: !3855, inlinedAt: !3839)
!3862 = !DILocation(line: 188, column: 69, scope: !3855, inlinedAt: !3839)
!3863 = !DILocation(line: 188, column: 59, scope: !3855, inlinedAt: !3839)
!3864 = !DILocation(line: 188, column: 9, scope: !3856, inlinedAt: !3839)
!3865 = !DILocation(line: 190, column: 7, scope: !3866, inlinedAt: !3839)
!3866 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 188, column: 75)
!3867 = !DILocation(line: 187, column: 25, scope: !3850, inlinedAt: !3839)
!3868 = !DILocation(line: 187, column: 3, scope: !3850, inlinedAt: !3839)
!3869 = distinct !{!3869, !3870, !3871}
!3870 = !DILocation(line: 187, column: 3, scope: !3848)
!3871 = !DILocation(line: 192, column: 3, scope: !3848)
!3872 = !DILocation(line: 194, column: 3, scope: !3873, inlinedAt: !3839)
!3873 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 194, column: 3)
!3874 = !DILocation(line: 71, column: 36, scope: !2718, inlinedAt: !3875)
!3875 = distinct !DILocation(line: 194, column: 3, scope: !3873, inlinedAt: !3839)
!3876 = !DILocation(line: 71, column: 44, scope: !2718, inlinedAt: !3875)
!3877 = !DILocation(line: 71, column: 63, scope: !2718, inlinedAt: !3875)
!3878 = !DILocation(line: 72, column: 29, scope: !2718, inlinedAt: !3875)
!3879 = !DILocation(line: 72, column: 41, scope: !2718, inlinedAt: !3875)
!3880 = !DILocation(line: 0, scope: !2718, inlinedAt: !3875)
!3881 = !DILocation(line: 72, column: 21, scope: !2718, inlinedAt: !3875)
!3882 = !DILocation(line: 73, column: 5, scope: !2718, inlinedAt: !3875)
!3883 = !DILocation(line: 74, column: 5, scope: !2718, inlinedAt: !3875)
!3884 = !DILocation(line: 72, column: 15, scope: !2718, inlinedAt: !3875)
!3885 = !DILocation(line: 76, column: 21, scope: !2718, inlinedAt: !3875)
!3886 = !DILocation(line: 76, column: 3, scope: !2718, inlinedAt: !3875)
!3887 = !DILocation(line: 77, column: 1, scope: !2718, inlinedAt: !3875)
!3888 = !DILocation(line: 195, column: 3, scope: !3889, inlinedAt: !3839)
!3889 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 195, column: 3)
!3890 = !DILocation(line: 195, column: 3, scope: !3829, inlinedAt: !3839)
!3891 = !DILocation(line: 0, scope: !3829, inlinedAt: !3839)
!3892 = !DILocation(line: 197, column: 23, scope: !3829, inlinedAt: !3839)
!3893 = !DILocation(line: 197, column: 3, scope: !3829, inlinedAt: !3839)
!3894 = !DILocation(line: 197, column: 18, scope: !3829, inlinedAt: !3839)
!3895 = !DILocation(line: 197, column: 56, scope: !3829, inlinedAt: !3839)
!3896 = !DILocation(line: 197, column: 37, scope: !3829, inlinedAt: !3839)
!3897 = !DILocation(line: 197, column: 60, scope: !3829, inlinedAt: !3839)
!3898 = distinct !{!3898, !3092}
!3899 = distinct !{!3899, !3900, !3901}
!3900 = !DILocation(line: 197, column: 3, scope: !3829)
!3901 = !DILocation(line: 197, column: 62, scope: !3829)
!3902 = !DILocation(line: 198, column: 18, scope: !3829, inlinedAt: !3839)
!3903 = !DILocation(line: 198, column: 3, scope: !3829, inlinedAt: !3839)
!3904 = !DILocation(line: 198, column: 24, scope: !3829, inlinedAt: !3839)
!3905 = !DILocation(line: 199, column: 3, scope: !3906, inlinedAt: !3839)
!3906 = distinct !DILexicalBlock(scope: !3907, file: !3, line: 199, column: 3)
!3907 = distinct !DILexicalBlock(scope: !3829, file: !3, line: 199, column: 3)
!3908 = !DILocation(line: 199, column: 3, scope: !3907, inlinedAt: !3839)
!3909 = !DILocation(line: 201, column: 19, scope: !3829, inlinedAt: !3839)
!3910 = !DILocation(line: 201, column: 3, scope: !3829, inlinedAt: !3839)
!3911 = !DILocation(line: 201, column: 29, scope: !3829, inlinedAt: !3839)
!3912 = !DILocation(line: 201, column: 25, scope: !3829, inlinedAt: !3839)
!3913 = !DILocation(line: 201, column: 27, scope: !3829, inlinedAt: !3839)
!3914 = !DILocation(line: 202, column: 32, scope: !3829, inlinedAt: !3839)
!3915 = !DILocation(line: 202, column: 25, scope: !3829, inlinedAt: !3839)
!3916 = !DILocation(line: 202, column: 30, scope: !3829, inlinedAt: !3839)
!3917 = !DILocation(line: 203, column: 17, scope: !3829, inlinedAt: !3839)
!3918 = !DILocation(line: 203, column: 10, scope: !3829, inlinedAt: !3839)
!3919 = !DILocation(line: 203, column: 3, scope: !3829, inlinedAt: !3839)
!3920 = !DILocation(line: 241, column: 12, scope: !3824)
!3921 = !DILocation(line: 240, column: 16, scope: !3824)
!3922 = !DILocation(line: 0, scope: !3824)
!3923 = !DILocation(line: 204, column: 1, scope: !3829, inlinedAt: !3839)
!3924 = !DILocation(line: 240, column: 21, scope: !3824)
!3925 = !DILocation(line: 241, column: 14, scope: !3824)
!3926 = !DILocation(line: 242, column: 7, scope: !3824)
!3927 = !DILocation(line: 0, scope: !3776)
!3928 = !DILocation(line: 0, scope: !3728)
!3929 = !DILocation(line: 245, column: 1, scope: !3709)
!3930 = distinct !DISubprogram(name: "leaveblock", scope: !3, file: !3, line: 296, type: !3931, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3933)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{null, !705}
!3933 = !{!3934, !3935}
!3934 = !DILocalVariable(name: "fs", arg: 1, scope: !3930, file: !3, line: 296, type: !705)
!3935 = !DILocalVariable(name: "bl", scope: !3930, file: !3, line: 297, type: !1016)
!3936 = !DILocation(line: 296, column: 36, scope: !3930)
!3937 = !DILocation(line: 297, column: 22, scope: !3930)
!3938 = !DILocation(line: 297, column: 13, scope: !3930)
!3939 = !DILocation(line: 298, column: 16, scope: !3930)
!3940 = !DILocation(line: 298, column: 10, scope: !3930)
!3941 = !DILocation(line: 299, column: 18, scope: !3930)
!3942 = !DILocation(line: 299, column: 26, scope: !3930)
!3943 = !DILocation(line: 299, column: 22, scope: !3930)
!3944 = !DILocation(line: 176, column: 35, scope: !793, inlinedAt: !3945)
!3945 = distinct !DILocation(line: 299, column: 3, scope: !3930)
!3946 = !DILocation(line: 176, column: 43, scope: !793, inlinedAt: !3945)
!3947 = !DILocation(line: 177, column: 23, scope: !793, inlinedAt: !3945)
!3948 = !DILocation(line: 177, column: 14, scope: !793, inlinedAt: !3945)
!3949 = !DILocation(line: 178, column: 3, scope: !793, inlinedAt: !3945)
!3950 = !DILocation(line: 178, column: 14, scope: !793, inlinedAt: !3945)
!3951 = !DILocation(line: 178, column: 22, scope: !793, inlinedAt: !3945)
!3952 = !DILocation(line: 179, column: 5, scope: !793, inlinedAt: !3945)
!3953 = !DILocation(line: 179, column: 34, scope: !793, inlinedAt: !3945)
!3954 = !DILocation(line: 179, column: 40, scope: !793, inlinedAt: !3945)
!3955 = !DILocation(line: 180, column: 1, scope: !793, inlinedAt: !3945)
!3956 = !DILocation(line: 300, column: 11, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3930, file: !3, line: 300, column: 7)
!3958 = !DILocation(line: 300, column: 7, scope: !3957)
!3959 = !DILocation(line: 300, column: 7, scope: !3930)
!3960 = !DILocation(line: 301, column: 5, scope: !3957)
!3961 = !DILocation(line: 305, column: 21, scope: !3930)
!3962 = !DILocation(line: 305, column: 17, scope: !3930)
!3963 = !DILocation(line: 305, column: 7, scope: !3930)
!3964 = !DILocation(line: 305, column: 15, scope: !3930)
!3965 = !DILocation(line: 306, column: 28, scope: !3930)
!3966 = !DILocation(line: 306, column: 3, scope: !3930)
!3967 = !DILocation(line: 307, column: 1, scope: !3930)
!3968 = distinct !DISubprogram(name: "forbody", scope: !3, file: !3, line: 1046, type: !3969, isLocal: true, isDefinition: true, scopeLine: 1046, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3971)
!3969 = !DISubroutineType(types: !3970)
!3970 = !{null, !597, !203, !203, !203, !203}
!3971 = !{!3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980}
!3972 = !DILocalVariable(name: "ls", arg: 1, scope: !3968, file: !3, line: 1046, type: !597)
!3973 = !DILocalVariable(name: "base", arg: 2, scope: !3968, file: !3, line: 1046, type: !203)
!3974 = !DILocalVariable(name: "line", arg: 3, scope: !3968, file: !3, line: 1046, type: !203)
!3975 = !DILocalVariable(name: "nvars", arg: 4, scope: !3968, file: !3, line: 1046, type: !203)
!3976 = !DILocalVariable(name: "isnum", arg: 5, scope: !3968, file: !3, line: 1046, type: !203)
!3977 = !DILocalVariable(name: "bl", scope: !3968, file: !3, line: 1048, type: !949)
!3978 = !DILocalVariable(name: "fs", scope: !3968, file: !3, line: 1049, type: !705)
!3979 = !DILocalVariable(name: "prep", scope: !3968, file: !3, line: 1050, type: !203)
!3980 = !DILocalVariable(name: "endfor", scope: !3968, file: !3, line: 1050, type: !203)
!3981 = !DILocation(line: 1046, column: 32, scope: !3968)
!3982 = !DILocation(line: 1046, column: 40, scope: !3968)
!3983 = !DILocation(line: 1046, column: 50, scope: !3968)
!3984 = !DILocation(line: 1046, column: 60, scope: !3968)
!3985 = !DILocation(line: 1046, column: 71, scope: !3968)
!3986 = !DILocation(line: 1048, column: 3, scope: !3968)
!3987 = !DILocation(line: 1049, column: 23, scope: !3968)
!3988 = !DILocation(line: 1049, column: 14, scope: !3968)
!3989 = !DILocation(line: 167, column: 40, scope: !1843, inlinedAt: !3990)
!3990 = distinct !DILocation(line: 1051, column: 3, scope: !3968)
!3991 = !DILocation(line: 167, column: 48, scope: !1843, inlinedAt: !3990)
!3992 = !DILocation(line: 168, column: 14, scope: !1843, inlinedAt: !3990)
!3993 = !DILocation(line: 169, column: 17, scope: !1843, inlinedAt: !3990)
!3994 = !DILocation(line: 169, column: 15, scope: !1843, inlinedAt: !3990)
!3995 = !DILocation(line: 170, column: 3, scope: !1843, inlinedAt: !3990)
!3996 = !DILocation(line: 170, column: 3, scope: !1856, inlinedAt: !3990)
!3997 = !DILocation(line: 171, column: 5, scope: !1858, inlinedAt: !3990)
!3998 = !DILocation(line: 171, column: 40, scope: !1858, inlinedAt: !3990)
!3999 = !DILocation(line: 171, column: 48, scope: !1858, inlinedAt: !3990)
!4000 = !DILocation(line: 170, column: 3, scope: !1859, inlinedAt: !3990)
!4001 = !DILocation(line: 173, column: 1, scope: !1843, inlinedAt: !3990)
!4002 = !DILocation(line: 94, column: 34, scope: !1044, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 1052, column: 3, scope: !3968)
!4004 = !DILocation(line: 94, column: 42, scope: !1044, inlinedAt: !4003)
!4005 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !4006)
!4006 = distinct !DILocation(line: 95, column: 3, scope: !1044, inlinedAt: !4003)
!4007 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !4006)
!4008 = !DILocation(line: 90, column: 13, scope: !671, inlinedAt: !4006)
!4009 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !4006)
!4010 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !4006)
!4011 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !4006)
!4013 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !4012)
!4014 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !4012)
!4015 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !4012)
!4016 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !4012)
!4017 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !4012)
!4018 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !4012)
!4019 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !4006)
!4020 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !4006)
!4021 = !DILocation(line: 96, column: 3, scope: !1044, inlinedAt: !4003)
!4022 = !DILocation(line: 97, column: 1, scope: !1044, inlinedAt: !4003)
!4023 = !DILocation(line: 1053, column: 10, scope: !3968)
!4024 = !DILocation(line: 1053, column: 18, scope: !3968)
!4025 = !DILocation(line: 1053, column: 65, scope: !3968)
!4026 = !DILocation(line: 1050, column: 7, scope: !3968)
!4027 = !DILocation(line: 1048, column: 12, scope: !3968)
!4028 = !DILocation(line: 285, column: 36, scope: !1013, inlinedAt: !4029)
!4029 = distinct !DILocation(line: 1054, column: 3, scope: !3968)
!4030 = !DILocation(line: 285, column: 50, scope: !1013, inlinedAt: !4029)
!4031 = !DILocation(line: 285, column: 62, scope: !1013, inlinedAt: !4029)
!4032 = !DILocation(line: 286, column: 7, scope: !1013, inlinedAt: !4029)
!4033 = !DILocation(line: 286, column: 17, scope: !1013, inlinedAt: !4029)
!4034 = !DILocation(line: 287, column: 7, scope: !1013, inlinedAt: !4029)
!4035 = !DILocation(line: 287, column: 19, scope: !1013, inlinedAt: !4029)
!4036 = !DILocation(line: 288, column: 21, scope: !1013, inlinedAt: !4029)
!4037 = !DILocation(line: 288, column: 7, scope: !1013, inlinedAt: !4029)
!4038 = !DILocation(line: 288, column: 15, scope: !1013, inlinedAt: !4029)
!4039 = !DILocation(line: 289, column: 7, scope: !1013, inlinedAt: !4029)
!4040 = !DILocation(line: 289, column: 13, scope: !1013, inlinedAt: !4029)
!4041 = !DILocation(line: 290, column: 22, scope: !1013, inlinedAt: !4029)
!4042 = !DILocation(line: 290, column: 16, scope: !1013, inlinedAt: !4029)
!4043 = !DILocation(line: 291, column: 10, scope: !1013, inlinedAt: !4029)
!4044 = !DILocation(line: 293, column: 1, scope: !1013, inlinedAt: !4029)
!4045 = !DILocation(line: 167, column: 40, scope: !1843, inlinedAt: !4046)
!4046 = distinct !DILocation(line: 1055, column: 3, scope: !3968)
!4047 = !DILocation(line: 167, column: 48, scope: !1843, inlinedAt: !4046)
!4048 = !DILocation(line: 168, column: 23, scope: !1843, inlinedAt: !4046)
!4049 = !DILocation(line: 168, column: 14, scope: !1843, inlinedAt: !4046)
!4050 = !DILocation(line: 169, column: 17, scope: !1843, inlinedAt: !4046)
!4051 = !DILocation(line: 169, column: 15, scope: !1843, inlinedAt: !4046)
!4052 = !DILocation(line: 170, column: 3, scope: !1843, inlinedAt: !4046)
!4053 = !DILocation(line: 170, column: 3, scope: !1856, inlinedAt: !4046)
!4054 = !DILocation(line: 171, column: 5, scope: !1858, inlinedAt: !4046)
!4055 = !DILocation(line: 171, column: 40, scope: !1858, inlinedAt: !4046)
!4056 = !DILocation(line: 171, column: 48, scope: !1858, inlinedAt: !4046)
!4057 = !DILocation(line: 170, column: 22, scope: !1859, inlinedAt: !4046)
!4058 = !DILocation(line: 170, column: 3, scope: !1859, inlinedAt: !4046)
!4059 = !DILocation(line: 173, column: 1, scope: !1843, inlinedAt: !4046)
!4060 = !DILocation(line: 1056, column: 3, scope: !3968)
!4061 = !DILocation(line: 1057, column: 3, scope: !3968)
!4062 = !DILocation(line: 1058, column: 3, scope: !3968)
!4063 = !DILocation(line: 1059, column: 3, scope: !3968)
!4064 = !DILocation(line: 1060, column: 12, scope: !3968)
!4065 = !DILocation(line: 1060, column: 22, scope: !3968)
!4066 = !DILocation(line: 1050, column: 13, scope: !3968)
!4067 = !DILocation(line: 1062, column: 3, scope: !3968)
!4068 = !DILocation(line: 1063, column: 23, scope: !3968)
!4069 = !DILocation(line: 1061, column: 22, scope: !3968)
!4070 = !DILocation(line: 1063, column: 40, scope: !3968)
!4071 = !DILocation(line: 1063, column: 61, scope: !3968)
!4072 = !DILocation(line: 1063, column: 3, scope: !3968)
!4073 = !DILocation(line: 1064, column: 1, scope: !3968)
!4074 = distinct !DISubprogram(name: "adjust_assign", scope: !3, file: !3, line: 256, type: !4075, isLocal: true, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4077)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{null, !597, !203, !203, !988}
!4077 = !{!4078, !4079, !4080, !4081, !4082, !4083, !4084}
!4078 = !DILocalVariable(name: "ls", arg: 1, scope: !4074, file: !3, line: 256, type: !597)
!4079 = !DILocalVariable(name: "nvars", arg: 2, scope: !4074, file: !3, line: 256, type: !203)
!4080 = !DILocalVariable(name: "nexps", arg: 3, scope: !4074, file: !3, line: 256, type: !203)
!4081 = !DILocalVariable(name: "e", arg: 4, scope: !4074, file: !3, line: 256, type: !988)
!4082 = !DILocalVariable(name: "fs", scope: !4074, file: !3, line: 257, type: !705)
!4083 = !DILocalVariable(name: "extra", scope: !4074, file: !3, line: 258, type: !203)
!4084 = !DILocalVariable(name: "reg", scope: !4085, file: !3, line: 268, type: !203)
!4085 = distinct !DILexicalBlock(scope: !4086, file: !3, line: 267, column: 20)
!4086 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 267, column: 9)
!4087 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 265, column: 8)
!4088 = distinct !DILexicalBlock(scope: !4074, file: !3, line: 259, column: 7)
!4089 = !DILocation(line: 256, column: 38, scope: !4074)
!4090 = !DILocation(line: 256, column: 46, scope: !4074)
!4091 = !DILocation(line: 256, column: 57, scope: !4074)
!4092 = !DILocation(line: 256, column: 73, scope: !4074)
!4093 = !DILocation(line: 257, column: 23, scope: !4074)
!4094 = !DILocation(line: 257, column: 14, scope: !4074)
!4095 = !DILocation(line: 258, column: 21, scope: !4074)
!4096 = !DILocation(line: 258, column: 7, scope: !4074)
!4097 = !DILocation(line: 259, column: 7, scope: !4088)
!4098 = !DILocation(line: 259, column: 7, scope: !4074)
!4099 = !DILocation(line: 260, column: 10, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 259, column: 25)
!4101 = !DILocation(line: 261, column: 9, scope: !4100)
!4102 = !DILocation(line: 262, column: 5, scope: !4100)
!4103 = !DILocation(line: 263, column: 15, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 263, column: 9)
!4105 = !DILocation(line: 263, column: 9, scope: !4100)
!4106 = !DILocation(line: 263, column: 46, scope: !4104)
!4107 = !DILocation(line: 263, column: 20, scope: !4104)
!4108 = !DILocation(line: 266, column: 14, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4087, file: !3, line: 266, column: 9)
!4110 = !DILocation(line: 266, column: 9, scope: !4087)
!4111 = !DILocation(line: 266, column: 24, scope: !4109)
!4112 = !DILocation(line: 267, column: 15, scope: !4086)
!4113 = !DILocation(line: 267, column: 9, scope: !4087)
!4114 = !DILocation(line: 268, column: 21, scope: !4085)
!4115 = !DILocation(line: 268, column: 11, scope: !4085)
!4116 = !DILocation(line: 269, column: 7, scope: !4085)
!4117 = !DILocation(line: 270, column: 7, scope: !4085)
!4118 = !DILocation(line: 271, column: 5, scope: !4085)
!4119 = !DILocation(line: 273, column: 1, scope: !4074)
!4120 = distinct !DISubprogram(name: "assignment", scope: !3, file: !3, line: 931, type: !4121, isLocal: true, isDefinition: true, scopeLine: 931, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4123)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{null, !597, !2096, !203}
!4123 = !{!4124, !4125, !4126, !4127, !4128, !4131}
!4124 = !DILocalVariable(name: "ls", arg: 1, scope: !4120, file: !3, line: 931, type: !597)
!4125 = !DILocalVariable(name: "lh", arg: 2, scope: !4120, file: !3, line: 931, type: !2096)
!4126 = !DILocalVariable(name: "nvars", arg: 3, scope: !4120, file: !3, line: 931, type: !203)
!4127 = !DILocalVariable(name: "e", scope: !4120, file: !3, line: 932, type: !964)
!4128 = !DILocalVariable(name: "nv", scope: !4129, file: !3, line: 936, type: !2093)
!4129 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 935, column: 26)
!4130 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 935, column: 7)
!4131 = !DILocalVariable(name: "nexps", scope: !4132, file: !3, line: 946, type: !203)
!4132 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 945, column: 8)
!4133 = !DILocation(line: 931, column: 35, scope: !4120)
!4134 = !DILocation(line: 931, column: 58, scope: !4120)
!4135 = !DILocation(line: 931, column: 66, scope: !4120)
!4136 = !DILocation(line: 932, column: 3, scope: !4120)
!4137 = !DILocation(line: 933, column: 3, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 933, column: 3)
!4139 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 933, column: 3)
!4140 = !DILocation(line: 933, column: 3, scope: !4139)
!4141 = !DILocation(line: 80, column: 32, scope: !641, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 935, column: 7, scope: !4130)
!4143 = !DILocation(line: 80, column: 40, scope: !641, inlinedAt: !4142)
!4144 = !DILocation(line: 81, column: 13, scope: !650, inlinedAt: !4142)
!4145 = !DILocation(line: 81, column: 19, scope: !650, inlinedAt: !4142)
!4146 = !DILocation(line: 81, column: 7, scope: !641, inlinedAt: !4142)
!4147 = !DILocation(line: 82, column: 5, scope: !654, inlinedAt: !4142)
!4148 = !DILocation(line: 83, column: 5, scope: !654, inlinedAt: !4142)
!4149 = !DILocation(line: 86, column: 1, scope: !641, inlinedAt: !4142)
!4150 = !DILocation(line: 935, column: 7, scope: !4120)
!4151 = !DILocation(line: 936, column: 5, scope: !4129)
!4152 = !DILocation(line: 937, column: 8, scope: !4129)
!4153 = !DILocation(line: 937, column: 13, scope: !4129)
!4154 = !DILocation(line: 938, column: 24, scope: !4129)
!4155 = !DILocation(line: 938, column: 5, scope: !4129)
!4156 = !DILocation(line: 939, column: 14, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 939, column: 9)
!4158 = !DILocation(line: 939, column: 16, scope: !4157)
!4159 = !DILocation(line: 939, column: 9, scope: !4129)
!4160 = !DILocalVariable(name: "ls", arg: 1, scope: !4161, file: !3, line: 908, type: !597)
!4161 = distinct !DISubprogram(name: "check_conflict", scope: !3, file: !3, line: 908, type: !4162, isLocal: true, isDefinition: true, scopeLine: 908, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4164)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{null, !597, !2096, !988}
!4164 = !{!4160, !4165, !4166, !4167, !4168, !4169}
!4165 = !DILocalVariable(name: "lh", arg: 2, scope: !4161, file: !3, line: 908, type: !2096)
!4166 = !DILocalVariable(name: "v", arg: 3, scope: !4161, file: !3, line: 908, type: !988)
!4167 = !DILocalVariable(name: "fs", scope: !4161, file: !3, line: 909, type: !705)
!4168 = !DILocalVariable(name: "extra", scope: !4161, file: !3, line: 910, type: !203)
!4169 = !DILocalVariable(name: "conflict", scope: !4161, file: !3, line: 911, type: !203)
!4170 = !DILocation(line: 908, column: 39, scope: !4161, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 940, column: 7, scope: !4157)
!4172 = !DILocation(line: 908, column: 62, scope: !4161, inlinedAt: !4171)
!4173 = !DILocation(line: 908, column: 75, scope: !4161, inlinedAt: !4171)
!4174 = !DILocation(line: 909, column: 23, scope: !4161, inlinedAt: !4171)
!4175 = !DILocation(line: 909, column: 14, scope: !4161, inlinedAt: !4171)
!4176 = !DILocation(line: 910, column: 19, scope: !4161, inlinedAt: !4171)
!4177 = !DILocation(line: 910, column: 7, scope: !4161, inlinedAt: !4171)
!4178 = !DILocation(line: 911, column: 7, scope: !4161, inlinedAt: !4171)
!4179 = !DILocation(line: 912, column: 3, scope: !4161, inlinedAt: !4171)
!4180 = !DILocation(line: 912, column: 3, scope: !4181, inlinedAt: !4171)
!4181 = distinct !DILexicalBlock(scope: !4161, file: !3, line: 912, column: 3)
!4182 = !DILocation(line: 913, column: 15, scope: !4183, inlinedAt: !4171)
!4183 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 913, column: 9)
!4184 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 912, column: 29)
!4185 = distinct !DILexicalBlock(scope: !4181, file: !3, line: 912, column: 3)
!4186 = !DILocation(line: 913, column: 17, scope: !4183, inlinedAt: !4171)
!4187 = !DILocation(line: 913, column: 9, scope: !4184, inlinedAt: !4171)
!4188 = !DILocation(line: 914, column: 17, scope: !4189, inlinedAt: !4171)
!4189 = distinct !DILexicalBlock(scope: !4190, file: !3, line: 914, column: 11)
!4190 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 913, column: 30)
!4191 = !DILocation(line: 914, column: 19, scope: !4189, inlinedAt: !4171)
!4192 = !DILocation(line: 914, column: 21, scope: !4189, inlinedAt: !4171)
!4193 = !DILocation(line: 914, column: 36, scope: !4189, inlinedAt: !4171)
!4194 = !DILocation(line: 914, column: 26, scope: !4189, inlinedAt: !4171)
!4195 = !DILocation(line: 914, column: 11, scope: !4190, inlinedAt: !4171)
!4196 = !DILocation(line: 916, column: 24, scope: !4197, inlinedAt: !4171)
!4197 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 914, column: 42)
!4198 = !DILocation(line: 917, column: 7, scope: !4197, inlinedAt: !4171)
!4199 = !DILocation(line: 918, column: 35, scope: !4200, inlinedAt: !4171)
!4200 = distinct !DILexicalBlock(scope: !4190, file: !3, line: 918, column: 11)
!4201 = !DILocation(line: 0, scope: !4161, inlinedAt: !4171)
!4202 = !DILocation(line: 918, column: 21, scope: !4200, inlinedAt: !4171)
!4203 = !DILocation(line: 918, column: 25, scope: !4200, inlinedAt: !4171)
!4204 = !DILocation(line: 918, column: 11, scope: !4190, inlinedAt: !4171)
!4205 = !DILocation(line: 920, column: 23, scope: !4206, inlinedAt: !4171)
!4206 = distinct !DILexicalBlock(scope: !4200, file: !3, line: 918, column: 41)
!4207 = !DILocation(line: 921, column: 7, scope: !4206, inlinedAt: !4171)
!4208 = !DILocation(line: 912, column: 23, scope: !4185, inlinedAt: !4171)
!4209 = !DILocation(line: 912, column: 3, scope: !4185, inlinedAt: !4171)
!4210 = distinct !{!4210, !4211, !4212}
!4211 = !DILocation(line: 912, column: 3, scope: !4181)
!4212 = !DILocation(line: 923, column: 3, scope: !4181)
!4213 = !DILocation(line: 924, column: 7, scope: !4214, inlinedAt: !4171)
!4214 = distinct !DILexicalBlock(scope: !4161, file: !3, line: 924, column: 7)
!4215 = !DILocation(line: 924, column: 7, scope: !4161, inlinedAt: !4171)
!4216 = !DILocation(line: 925, column: 35, scope: !4217, inlinedAt: !4171)
!4217 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 924, column: 17)
!4218 = !DILocation(line: 925, column: 51, scope: !4217, inlinedAt: !4171)
!4219 = !DILocation(line: 925, column: 5, scope: !4217, inlinedAt: !4171)
!4220 = !DILocation(line: 926, column: 5, scope: !4217, inlinedAt: !4171)
!4221 = !DILocation(line: 927, column: 3, scope: !4217, inlinedAt: !4171)
!4222 = !DILocation(line: 928, column: 1, scope: !4161, inlinedAt: !4171)
!4223 = !DILocation(line: 940, column: 7, scope: !4157)
!4224 = !DILocation(line: 941, column: 5, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4129, file: !3, line: 941, column: 5)
!4226 = !DILocation(line: 941, column: 5, scope: !4129)
!4227 = !DILocation(line: 71, column: 36, scope: !2718, inlinedAt: !4228)
!4228 = distinct !DILocation(line: 941, column: 5, scope: !4225)
!4229 = !DILocation(line: 71, column: 44, scope: !2718, inlinedAt: !4228)
!4230 = !DILocation(line: 71, column: 63, scope: !2718, inlinedAt: !4228)
!4231 = !DILocation(line: 72, column: 26, scope: !2718, inlinedAt: !4228)
!4232 = !DILocation(line: 72, column: 29, scope: !2718, inlinedAt: !4228)
!4233 = !DILocation(line: 72, column: 41, scope: !2718, inlinedAt: !4228)
!4234 = !DILocation(line: 0, scope: !2718, inlinedAt: !4228)
!4235 = !DILocation(line: 72, column: 21, scope: !2718, inlinedAt: !4228)
!4236 = !DILocation(line: 73, column: 5, scope: !2718, inlinedAt: !4228)
!4237 = !DILocation(line: 74, column: 5, scope: !2718, inlinedAt: !4228)
!4238 = !DILocation(line: 72, column: 15, scope: !2718, inlinedAt: !4228)
!4239 = !DILocation(line: 76, column: 21, scope: !2718, inlinedAt: !4228)
!4240 = !DILocation(line: 76, column: 3, scope: !2718, inlinedAt: !4228)
!4241 = !DILocation(line: 77, column: 1, scope: !2718, inlinedAt: !4228)
!4242 = !DILocation(line: 943, column: 30, scope: !4129)
!4243 = !DILocation(line: 936, column: 23, scope: !4129)
!4244 = !DILocation(line: 943, column: 5, scope: !4129)
!4245 = !DILocation(line: 944, column: 3, scope: !4130)
!4246 = !DILocation(line: 944, column: 3, scope: !4129)
!4247 = !DILocation(line: 85, column: 8, scope: !650, inlinedAt: !4142)
!4248 = !DILocation(line: 94, column: 34, scope: !1044, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 947, column: 5, scope: !4132)
!4250 = !DILocation(line: 94, column: 42, scope: !1044, inlinedAt: !4249)
!4251 = !DILocation(line: 89, column: 30, scope: !672, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 95, column: 3, scope: !1044, inlinedAt: !4249)
!4253 = !DILocation(line: 89, column: 38, scope: !672, inlinedAt: !4252)
!4254 = !DILocation(line: 90, column: 19, scope: !671, inlinedAt: !4252)
!4255 = !DILocation(line: 90, column: 7, scope: !672, inlinedAt: !4252)
!4256 = !DILocation(line: 65, column: 39, scope: !686, inlinedAt: !4257)
!4257 = distinct !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !4252)
!4258 = !DILocation(line: 65, column: 47, scope: !686, inlinedAt: !4257)
!4259 = !DILocation(line: 67, column: 28, scope: !686, inlinedAt: !4257)
!4260 = !DILocation(line: 67, column: 51, scope: !686, inlinedAt: !4257)
!4261 = !DILocation(line: 67, column: 7, scope: !686, inlinedAt: !4257)
!4262 = !DILocation(line: 66, column: 3, scope: !686, inlinedAt: !4257)
!4263 = !DILocation(line: 68, column: 1, scope: !686, inlinedAt: !4257)
!4264 = !DILocation(line: 91, column: 5, scope: !671, inlinedAt: !4252)
!4265 = !DILocation(line: 92, column: 1, scope: !672, inlinedAt: !4252)
!4266 = !DILocation(line: 96, column: 3, scope: !1044, inlinedAt: !4249)
!4267 = !DILocation(line: 97, column: 1, scope: !1044, inlinedAt: !4249)
!4268 = !DILocation(line: 932, column: 11, scope: !4120)
!4269 = !DILocation(line: 596, column: 32, scope: !1365, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 948, column: 13, scope: !4132)
!4271 = !DILocation(line: 596, column: 45, scope: !1365, inlinedAt: !4270)
!4272 = !DILocation(line: 598, column: 7, scope: !1365, inlinedAt: !4270)
!4273 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 599, column: 3, scope: !1365, inlinedAt: !4270)
!4275 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !4274)
!4276 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !4274)
!4277 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !4274)
!4278 = !DILocation(line: 600, column: 3, scope: !1365, inlinedAt: !4270)
!4279 = !DILocation(line: 80, column: 32, scope: !641, inlinedAt: !4280)
!4280 = distinct !DILocation(line: 600, column: 10, scope: !1365, inlinedAt: !4270)
!4281 = !DILocation(line: 80, column: 40, scope: !641, inlinedAt: !4280)
!4282 = !DILocation(line: 81, column: 13, scope: !650, inlinedAt: !4280)
!4283 = !DILocation(line: 81, column: 19, scope: !650, inlinedAt: !4280)
!4284 = !DILocation(line: 81, column: 7, scope: !641, inlinedAt: !4280)
!4285 = !DILocation(line: 82, column: 5, scope: !654, inlinedAt: !4280)
!4286 = !DILocation(line: 83, column: 5, scope: !654, inlinedAt: !4280)
!4287 = !DILocation(line: 86, column: 1, scope: !641, inlinedAt: !4280)
!4288 = !DILocation(line: 601, column: 26, scope: !1391, inlinedAt: !4270)
!4289 = !DILocation(line: 601, column: 5, scope: !1391, inlinedAt: !4270)
!4290 = !DILocation(line: 856, column: 29, scope: !985, inlinedAt: !4291)
!4291 = distinct !DILocation(line: 602, column: 5, scope: !1391, inlinedAt: !4270)
!4292 = !DILocation(line: 856, column: 42, scope: !985, inlinedAt: !4291)
!4293 = !DILocation(line: 857, column: 3, scope: !985, inlinedAt: !4291)
!4294 = !DILocation(line: 858, column: 1, scope: !985, inlinedAt: !4291)
!4295 = !DILocation(line: 603, column: 6, scope: !1391, inlinedAt: !4270)
!4296 = !DILocation(line: 0, scope: !1391, inlinedAt: !4270)
!4297 = !DILocation(line: 85, column: 8, scope: !650, inlinedAt: !4280)
!4298 = !DILocation(line: 605, column: 3, scope: !1365, inlinedAt: !4270)
!4299 = !DILocation(line: 946, column: 9, scope: !4132)
!4300 = !DILocation(line: 949, column: 15, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 949, column: 9)
!4302 = !DILocation(line: 949, column: 9, scope: !4132)
!4303 = !DILocation(line: 950, column: 7, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 949, column: 25)
!4305 = !DILocation(line: 951, column: 17, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4304, file: !3, line: 951, column: 11)
!4307 = !DILocation(line: 951, column: 11, scope: !4304)
!4308 = !DILocation(line: 952, column: 13, scope: !4306)
!4309 = !DILocation(line: 952, column: 17, scope: !4306)
!4310 = !DILocation(line: 952, column: 25, scope: !4306)
!4311 = !DILocation(line: 952, column: 9, scope: !4306)
!4312 = !DILocation(line: 955, column: 26, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4301, file: !3, line: 954, column: 10)
!4314 = !DILocation(line: 955, column: 7, scope: !4313)
!4315 = !DILocation(line: 956, column: 25, scope: !4313)
!4316 = !DILocation(line: 956, column: 7, scope: !4313)
!4317 = !DILocation(line: 957, column: 7, scope: !4313)
!4318 = !DILocation(line: 959, column: 3, scope: !4130)
!4319 = !DILocation(line: 960, column: 31, scope: !4120)
!4320 = !DILocation(line: 960, column: 35, scope: !4120)
!4321 = !DILocation(line: 960, column: 42, scope: !4120)
!4322 = !DILocation(line: 126, column: 32, scope: !1680, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 960, column: 3, scope: !4120)
!4324 = !DILocation(line: 126, column: 43, scope: !1680, inlinedAt: !4323)
!4325 = !DILocation(line: 126, column: 50, scope: !1680, inlinedAt: !4323)
!4326 = !DILocation(line: 127, column: 13, scope: !1680, inlinedAt: !4323)
!4327 = !DILocation(line: 127, column: 15, scope: !1680, inlinedAt: !4323)
!4328 = !DILocation(line: 127, column: 6, scope: !1680, inlinedAt: !4323)
!4329 = !DILocation(line: 127, column: 8, scope: !1680, inlinedAt: !4323)
!4330 = !DILocation(line: 128, column: 6, scope: !1680, inlinedAt: !4323)
!4331 = !DILocation(line: 128, column: 8, scope: !1680, inlinedAt: !4323)
!4332 = !DILocation(line: 129, column: 6, scope: !1680, inlinedAt: !4323)
!4333 = !DILocation(line: 129, column: 10, scope: !1680, inlinedAt: !4323)
!4334 = !DILocation(line: 129, column: 15, scope: !1680, inlinedAt: !4323)
!4335 = !DILocation(line: 130, column: 1, scope: !1680, inlinedAt: !4323)
!4336 = !DILocation(line: 961, column: 3, scope: !4120)
!4337 = !DILocation(line: 962, column: 1, scope: !4120)
