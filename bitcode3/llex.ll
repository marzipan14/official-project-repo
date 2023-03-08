; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llex.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llex.c"
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
%struct.LexState = type { i32, i32, i32, %struct.Token, %struct.Token, %struct.FuncState*, %struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %union.TString*, i8 }
%struct.Token = type { i32, %union.SemInfo }
%union.SemInfo = type { double }
%struct.FuncState = type { %struct.Proto*, %struct.Table*, %struct.FuncState*, %struct.LexState*, %struct.lua_State*, %struct.BlockCnt*, i32, i32, i32, i32, i32, i32, i16, i8, [60 x %struct.upvaldesc], [200 x i16] }
%struct.Proto = type { %union.GCObject*, i8, i8, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %union.TString**, %union.TString*, i32, i32, i32, i32, i32, i32, i32, i32, %union.GCObject*, i8, i8, i8, i8 }
%struct.LocVar = type { %union.TString*, i32, i32 }
%struct.BlockCnt = type opaque
%struct.upvaldesc = type { i8, i8 }
%struct.Zio = type { i64, i8*, i8* (%struct.lua_State*, i8*, i64*)*, i8*, %struct.lua_State* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"elseif\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"until\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"~=\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"<number>\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"<name>\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"<string>\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"<eof>\00", align 1
@luaX_tokens = hidden local_unnamed_addr constant [32 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* null], align 16, !dbg !0
@.str.31 = private unnamed_addr constant [9 x i8] c"char(%d)\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"%s:%d: %s\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"%s near '%s'\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"lexical element too long\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"invalid long string delimiter\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"chunk has too many lines\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"unfinished long string\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"unfinished long comment\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"nesting of [[...]] is deprecated\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"unfinished string\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"escape sequence too large\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"Ee\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"+-\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"malformed number\00", align 1

; Function Attrs: noredzone nounwind
define hidden void @luaX_init(%struct.lua_State*) local_unnamed_addr #0 !dbg !63 {
  br label %2, !dbg !395

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %11, %2 ]
  %4 = getelementptr inbounds [32 x i8*], [32 x i8*]* @luaX_tokens, i64 0, i64 %3, !dbg !396
  %5 = load i8*, i8** %4, align 8, !dbg !396, !tbaa !397
  %6 = tail call i64 @strlen(i8* %5) #4, !dbg !396
  %7 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* %5, i64 %6) #4, !dbg !396
  %8 = getelementptr inbounds %union.TString, %union.TString* %7, i64 0, i32 0, i32 2, !dbg !402
  %9 = load i8, i8* %8, align 1, !dbg !402, !tbaa !403
  %10 = or i8 %9, 32, !dbg !402
  store i8 %10, i8* %8, align 1, !dbg !402, !tbaa !403
  %11 = add nuw nsw i64 %3, 1, !dbg !404
  %12 = getelementptr inbounds %union.TString, %union.TString* %7, i64 0, i32 0, i32 3, !dbg !405
  %13 = trunc i64 %11 to i8, !dbg !406
  store i8 %13, i8* %12, align 2, !dbg !406, !tbaa !403
  %14 = icmp eq i64 %11, 21, !dbg !407
  br i1 %14, label %15, label %2, !dbg !395, !llvm.loop !408

; <label>:15:                                     ; preds = %2
  ret void, !dbg !410
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare hidden %union.TString* @luaS_newlstr(%struct.lua_State*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define hidden i8* @luaX_token2str(%struct.LexState* nocapture readonly, i32) local_unnamed_addr #0 !dbg !411 {
  %3 = icmp slt i32 %1, 257, !dbg !496
  br i1 %3, label %4, label %18, !dbg !498

; <label>:4:                                      ; preds = %2
  %5 = tail call i8* @__locale_ctype_ptr() #4, !dbg !499
  %6 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !499
  %7 = sext i32 %1 to i64, !dbg !499
  %8 = getelementptr inbounds i8, i8* %6, i64 %7, !dbg !499
  %9 = load i8, i8* %8, align 1, !dbg !499, !tbaa !403
  %10 = and i8 %9, 32, !dbg !499
  %11 = icmp eq i8 %10, 0, !dbg !499
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !501
  %13 = load %struct.lua_State*, %struct.lua_State** %12, align 8, !dbg !501, !tbaa !502
  br i1 %11, label %16, label %14, !dbg !506

; <label>:14:                                     ; preds = %4
  %15 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i32 %1) #4, !dbg !507
  br label %23, !dbg !506

; <label>:16:                                     ; preds = %4
  %17 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i32 %1) #4, !dbg !508
  br label %23, !dbg !506

; <label>:18:                                     ; preds = %2
  %19 = add nsw i32 %1, -257, !dbg !509
  %20 = sext i32 %19 to i64, !dbg !510
  %21 = getelementptr inbounds [32 x i8*], [32 x i8*]* @luaX_tokens, i64 0, i64 %20, !dbg !510
  %22 = load i8*, i8** %21, align 8, !dbg !510, !tbaa !397
  br label %23, !dbg !511

; <label>:23:                                     ; preds = %14, %16, %18
  %24 = phi i8* [ %22, %18 ], [ %15, %14 ], [ %17, %16 ], !dbg !512
  ret i8* %24, !dbg !513
}

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden void @luaX_lexerror(%struct.LexState* nocapture readonly, i8*, i32) local_unnamed_addr #0 !dbg !514 {
  %4 = alloca [80 x i8], align 16
  %5 = alloca [80 x i8], align 16
  %6 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0, !dbg !549
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %6) #5, !dbg !549
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9, !dbg !551
  %8 = load %union.TString*, %union.TString** %7, align 8, !dbg !551, !tbaa !552
  %9 = getelementptr inbounds %union.TString, %union.TString* %8, i64 1, !dbg !551
  %10 = bitcast %union.TString* %9 to i8*, !dbg !551
  call void @luaO_chunkid(i8* nonnull %6, i8* nonnull %10, i64 80) #4, !dbg !553
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !554
  %12 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !dbg !554, !tbaa !502
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !555
  %14 = load i32, i32* %13, align 4, !dbg !555, !tbaa !556
  %15 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %6, i32 %14, i8* %1) #4, !dbg !557
  %16 = icmp eq i32 %2, 0, !dbg !558
  br i1 %16, label %94, label %17, !dbg !559

; <label>:17:                                     ; preds = %3
  %18 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !dbg !560, !tbaa !502
  %19 = add i32 %2, -284, !dbg !563
  %20 = icmp ult i32 %19, 3, !dbg !563
  br i1 %20, label %21, label %71, !dbg !563

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8, !dbg !566
  %23 = load %struct.Mbuffer*, %struct.Mbuffer** %22, align 8, !dbg !566, !tbaa !567
  %24 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %23, i64 0, i32 1, !dbg !569
  %25 = load i64, i64* %24, align 8, !dbg !569, !tbaa !570
  %26 = add i64 %25, 1, !dbg !573
  %27 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %23, i64 0, i32 2, !dbg !574
  %28 = load i64, i64* %27, align 8, !dbg !574, !tbaa !575
  %29 = icmp ugt i64 %26, %28, !dbg !576
  br i1 %29, label %33, label %30, !dbg !577

; <label>:30:                                     ; preds = %21
  %31 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %23, i64 0, i32 0
  %32 = load i8*, i8** %31, align 8, !dbg !578, !tbaa !579
  br label %63, !dbg !577

; <label>:33:                                     ; preds = %21
  %34 = icmp ugt i64 %28, 9223372036854775805, !dbg !580
  br i1 %34, label %35, label %46, !dbg !581

; <label>:35:                                     ; preds = %33
  %36 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0, !dbg !585
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %36) #5, !dbg !585
  %37 = load %union.TString*, %union.TString** %7, align 8, !dbg !586, !tbaa !552
  %38 = getelementptr inbounds %union.TString, %union.TString* %37, i64 1, !dbg !586
  %39 = bitcast %union.TString* %38 to i8*, !dbg !586
  call void @luaO_chunkid(i8* nonnull %36, i8* nonnull %39, i64 80) #4, !dbg !587
  %40 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !dbg !588, !tbaa !502
  %41 = load i32, i32* %13, align 4, !dbg !589, !tbaa !556
  %42 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %36, i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !590
  %43 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !dbg !591, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %43, i32 3) #4, !dbg !592
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %36) #5, !dbg !593
  %44 = load i64, i64* %27, align 8, !dbg !594, !tbaa !575
  %45 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !dbg !595, !tbaa !502
  br label %46, !dbg !596

; <label>:46:                                     ; preds = %35, %33
  %47 = phi %struct.lua_State* [ %45, %35 ], [ %18, %33 ], !dbg !595
  %48 = phi i64 [ %44, %35 ], [ %28, %33 ], !dbg !594
  %49 = shl i64 %48, 1, !dbg !597
  %50 = icmp eq i64 %49, -2, !dbg !595
  br i1 %50, label %55, label %51, !dbg !595

; <label>:51:                                     ; preds = %46
  %52 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %23, i64 0, i32 0, !dbg !595
  %53 = load i8*, i8** %52, align 8, !dbg !595, !tbaa !579
  %54 = call i8* @luaM_realloc_(%struct.lua_State* %47, i8* %53, i64 %48, i64 %49) #4, !dbg !595
  br label %58, !dbg !595

; <label>:55:                                     ; preds = %46
  %56 = call i8* @luaM_toobig(%struct.lua_State* %47) #4, !dbg !595
  %57 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %23, i64 0, i32 0, !dbg !595
  br label %58, !dbg !595

; <label>:58:                                     ; preds = %55, %51
  %59 = phi i8** [ %57, %55 ], [ %52, %51 ], !dbg !595
  %60 = phi i8* [ %56, %55 ], [ %54, %51 ], !dbg !595
  store i8* %60, i8** %59, align 8, !dbg !595, !tbaa !579
  store i64 %49, i64* %27, align 8, !dbg !595, !tbaa !575
  %61 = load i64, i64* %24, align 8, !dbg !599, !tbaa !570
  %62 = add i64 %61, 1, !dbg !599
  br label %63, !dbg !600

; <label>:63:                                     ; preds = %30, %58
  %64 = phi i64 [ %26, %30 ], [ %62, %58 ], !dbg !599
  %65 = phi i64 [ %25, %30 ], [ %61, %58 ], !dbg !599
  %66 = phi i8* [ %32, %30 ], [ %60, %58 ], !dbg !578
  store i64 %64, i64* %24, align 8, !dbg !599, !tbaa !570
  %67 = getelementptr inbounds i8, i8* %66, i64 %65, !dbg !601
  store i8 0, i8* %67, align 1, !dbg !602, !tbaa !403
  %68 = load %struct.Mbuffer*, %struct.Mbuffer** %22, align 8, !dbg !603, !tbaa !567
  %69 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %68, i64 0, i32 0, !dbg !603
  %70 = load i8*, i8** %69, align 8, !dbg !603, !tbaa !579
  br label %91, !dbg !604

; <label>:71:                                     ; preds = %17
  %72 = icmp slt i32 %2, 257, !dbg !608
  br i1 %72, label %73, label %86, !dbg !609

; <label>:73:                                     ; preds = %71
  %74 = call i8* @__locale_ctype_ptr() #4, !dbg !610
  %75 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !610
  %76 = sext i32 %2 to i64, !dbg !610
  %77 = getelementptr inbounds i8, i8* %75, i64 %76, !dbg !610
  %78 = load i8, i8* %77, align 1, !dbg !610, !tbaa !403
  %79 = and i8 %78, 32, !dbg !610
  %80 = icmp eq i8 %79, 0, !dbg !610
  %81 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !dbg !611, !tbaa !502
  br i1 %80, label %84, label %82, !dbg !612

; <label>:82:                                     ; preds = %73
  %83 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i32 %2) #4, !dbg !613
  br label %91, !dbg !612

; <label>:84:                                     ; preds = %73
  %85 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i32 %2) #4, !dbg !614
  br label %91, !dbg !612

; <label>:86:                                     ; preds = %71
  %87 = add nsw i32 %2, -257, !dbg !615
  %88 = sext i32 %87 to i64, !dbg !616
  %89 = getelementptr inbounds [32 x i8*], [32 x i8*]* @luaX_tokens, i64 0, i64 %88, !dbg !616
  %90 = load i8*, i8** %89, align 8, !dbg !616, !tbaa !397
  br label %91, !dbg !617

; <label>:91:                                     ; preds = %82, %84, %86, %63
  %92 = phi i8* [ %70, %63 ], [ %90, %86 ], [ %83, %82 ], [ %85, %84 ], !dbg !618
  %93 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* %15, i8* %92) #4, !dbg !619
  br label %94, !dbg !619

; <label>:94:                                     ; preds = %3, %91
  %95 = load %struct.lua_State*, %struct.lua_State** %11, align 8, !dbg !620, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %95, i32 3) #4, !dbg !621
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %6) #5, !dbg !622
  ret void, !dbg !622
}

; Function Attrs: noredzone
declare hidden void @luaO_chunkid(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden void @luaX_syntaxerror(%struct.LexState* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !623 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !631
  %4 = load i32, i32* %3, align 8, !dbg !631, !tbaa !632
  tail call void @luaX_lexerror(%struct.LexState* %0, i8* %1, i32 %4) #6, !dbg !633
  ret void, !dbg !634
}

; Function Attrs: noredzone nounwind
define hidden %union.TString* @luaX_newstring(%struct.LexState* nocapture readonly, i8*, i64) local_unnamed_addr #0 !dbg !635 {
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !652
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !652, !tbaa !502
  %6 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %5, i8* %1, i64 %2) #4, !dbg !654
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !656
  %8 = load %struct.FuncState*, %struct.FuncState** %7, align 8, !dbg !656, !tbaa !657
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i64 0, i32 1, !dbg !658
  %10 = load %struct.Table*, %struct.Table** %9, align 8, !dbg !658, !tbaa !659
  %11 = tail call %struct.lua_TValue* @luaH_setstr(%struct.lua_State* %5, %struct.Table* %10, %union.TString* %6) #4, !dbg !662
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 0, i32 1, !dbg !664
  %13 = load i32, i32* %12, align 8, !dbg !664, !tbaa !665
  %14 = icmp eq i32 %13, 0, !dbg !664
  br i1 %14, label %15, label %25, !dbg !667

; <label>:15:                                     ; preds = %3
  %16 = bitcast %struct.lua_TValue* %11 to i32*, !dbg !668
  store i32 1, i32* %16, align 8, !dbg !668, !tbaa !403
  store i32 1, i32* %12, align 8, !dbg !668, !tbaa !665
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 6, !dbg !669
  %18 = load %struct.global_State*, %struct.global_State** %17, align 8, !dbg !669, !tbaa !672
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 14, !dbg !669
  %20 = load i64, i64* %19, align 8, !dbg !669, !tbaa !674
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 13, !dbg !669
  %22 = load i64, i64* %21, align 8, !dbg !669, !tbaa !678
  %23 = icmp ult i64 %20, %22, !dbg !669
  br i1 %23, label %25, label %24, !dbg !679

; <label>:24:                                     ; preds = %15
  tail call void @luaC_step(%struct.lua_State* nonnull %5) #4, !dbg !669
  br label %25, !dbg !669

; <label>:25:                                     ; preds = %15, %24, %3
  ret %union.TString* %6, !dbg !680
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_setstr(%struct.lua_State*, %struct.Table*, %union.TString*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden void @luaX_setinput(%struct.lua_State*, %struct.LexState* nocapture, %struct.Zio*, %union.TString*) local_unnamed_addr #0 !dbg !681 {
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 10, !dbg !693
  store i8 46, i8* %5, align 8, !dbg !694, !tbaa !695
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 6, !dbg !696
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8, !dbg !697, !tbaa !502
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 4, i32 0, !dbg !698
  store i32 287, i32* %7, align 8, !dbg !699, !tbaa !700
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 7, !dbg !701
  store %struct.Zio* %2, %struct.Zio** %8, align 8, !dbg !702, !tbaa !703
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 5, !dbg !704
  store %struct.FuncState* null, %struct.FuncState** %9, align 8, !dbg !705, !tbaa !657
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 1, !dbg !706
  store i32 1, i32* %10, align 4, !dbg !707, !tbaa !556
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 2, !dbg !708
  store i32 1, i32* %11, align 8, !dbg !709, !tbaa !710
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 9, !dbg !711
  store %union.TString* %3, %union.TString** %12, align 8, !dbg !712, !tbaa !552
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 8, !dbg !713
  %14 = load %struct.Mbuffer*, %struct.Mbuffer** %13, align 8, !dbg !713, !tbaa !567
  %15 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %14, i64 0, i32 0, !dbg !713
  %16 = load i8*, i8** %15, align 8, !dbg !713, !tbaa !579
  %17 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %14, i64 0, i32 2, !dbg !713
  %18 = load i64, i64* %17, align 8, !dbg !713, !tbaa !575
  %19 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %16, i64 %18, i64 32) #4, !dbg !713
  %20 = load %struct.Mbuffer*, %struct.Mbuffer** %13, align 8, !dbg !713, !tbaa !567
  %21 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %20, i64 0, i32 0, !dbg !713
  store i8* %19, i8** %21, align 8, !dbg !713, !tbaa !579
  %22 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %20, i64 0, i32 2, !dbg !713
  store i64 32, i64* %22, align 8, !dbg !713, !tbaa !575
  %23 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !714, !tbaa !703
  %24 = getelementptr inbounds %struct.Zio, %struct.Zio* %23, i64 0, i32 0, !dbg !714
  %25 = load i64, i64* %24, align 8, !dbg !714, !tbaa !715
  %26 = add i64 %25, -1, !dbg !714
  store i64 %26, i64* %24, align 8, !dbg !714, !tbaa !715
  %27 = icmp eq i64 %25, 0, !dbg !714
  br i1 %27, label %34, label %28, !dbg !714

; <label>:28:                                     ; preds = %4
  %29 = getelementptr inbounds %struct.Zio, %struct.Zio* %23, i64 0, i32 1, !dbg !714
  %30 = load i8*, i8** %29, align 8, !dbg !714, !tbaa !717
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !714
  store i8* %31, i8** %29, align 8, !dbg !714, !tbaa !717
  %32 = load i8, i8* %30, align 1, !dbg !714, !tbaa !403
  %33 = zext i8 %32 to i32, !dbg !714
  br label %36, !dbg !714

; <label>:34:                                     ; preds = %4
  %35 = tail call i32 @luaZ_fill(%struct.Zio* %23) #4, !dbg !714
  br label %36, !dbg !714

; <label>:36:                                     ; preds = %34, %28
  %37 = phi i32 [ %33, %28 ], [ %35, %34 ], !dbg !714
  %38 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 0, !dbg !714
  store i32 %37, i32* %38, align 8, !dbg !714, !tbaa !718
  ret void, !dbg !719
}

; Function Attrs: noredzone
declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i32 @luaZ_fill(%struct.Zio*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden void @luaX_next(%struct.LexState*) local_unnamed_addr #0 !dbg !720 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !726
  %3 = load i32, i32* %2, align 4, !dbg !726, !tbaa !556
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 2, !dbg !727
  store i32 %3, i32* %4, align 8, !dbg !728, !tbaa !710
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4, !dbg !729
  %6 = getelementptr inbounds %struct.Token, %struct.Token* %5, i64 0, i32 0, !dbg !731
  %7 = load i32, i32* %6, align 8, !dbg !731, !tbaa !700
  %8 = icmp eq i32 %7, 287, !dbg !732
  br i1 %8, label %13, label %9, !dbg !733

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, !dbg !734
  %11 = bitcast %struct.Token* %10 to i8*, !dbg !736
  %12 = bitcast %struct.Token* %5 to i8*, !dbg !736
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %11, i8* nonnull align 8 %12, i64 16, i1 false), !dbg !736, !tbaa.struct !737
  store i32 287, i32* %6, align 8, !dbg !741, !tbaa !700
  br label %17, !dbg !742

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !743
  %15 = tail call fastcc i32 @llex(%struct.LexState* nonnull %0, %union.SemInfo* nonnull %14) #6, !dbg !744
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !745
  store i32 %15, i32* %16, align 8, !dbg !746, !tbaa !632
  br label %17

; <label>:17:                                     ; preds = %13, %9
  ret void, !dbg !747
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @llex(%struct.LexState*, %union.SemInfo*) unnamed_addr #0 !dbg !748 {
  %3 = alloca [80 x i8], align 16
  %4 = alloca [80 x i8], align 16
  %5 = alloca [80 x i8], align 16
  %6 = alloca [80 x i8], align 16
  %7 = alloca [80 x i8], align 16
  %8 = alloca [80 x i8], align 16
  %9 = alloca [80 x i8], align 16
  %10 = alloca [80 x i8], align 16
  %11 = alloca [80 x i8], align 16
  %12 = alloca [80 x i8], align 16
  %13 = alloca [80 x i8], align 16
  %14 = alloca [80 x i8], align 16
  %15 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8, !dbg !841
  %16 = load %struct.Mbuffer*, %struct.Mbuffer** %15, align 8, !dbg !841, !tbaa !567
  %17 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %16, i64 0, i32 1, !dbg !841
  store i64 0, i64* %17, align 8, !dbg !841, !tbaa !570
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %19 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  br label %20, !dbg !842

; <label>:20:                                     ; preds = %23, %2
  %21 = load i32, i32* %18, align 8, !dbg !843, !tbaa !718
  switch i32 %21, label %971 [
    i32 10, label %22
    i32 13, label %22
    i32 45, label %24
    i32 91, label %88
    i32 61, label %95
    i32 60, label %128
    i32 62, label %161
    i32 126, label %194
    i32 34, label %227
    i32 39, label %227
    i32 46, label %755
    i32 -1, label %1144
  ], !dbg !844

; <label>:22:                                     ; preds = %20, %20
  tail call fastcc void @inclinenumber(%struct.LexState* nonnull %0) #6, !dbg !845
  br label %23, !dbg !847

; <label>:23:                                     ; preds = %70, %70, %70, %22, %994, %67
  br label %20, !dbg !843, !llvm.loop !848

; <label>:24:                                     ; preds = %20
  %25 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !851, !tbaa !703
  %26 = getelementptr inbounds %struct.Zio, %struct.Zio* %25, i64 0, i32 0, !dbg !851
  %27 = load i64, i64* %26, align 8, !dbg !851, !tbaa !715
  %28 = add i64 %27, -1, !dbg !851
  store i64 %28, i64* %26, align 8, !dbg !851, !tbaa !715
  %29 = icmp eq i64 %27, 0, !dbg !851
  br i1 %29, label %36, label %30, !dbg !851

; <label>:30:                                     ; preds = %24
  %31 = getelementptr inbounds %struct.Zio, %struct.Zio* %25, i64 0, i32 1, !dbg !851
  %32 = load i8*, i8** %31, align 8, !dbg !851, !tbaa !717
  %33 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !851
  store i8* %33, i8** %31, align 8, !dbg !851, !tbaa !717
  %34 = load i8, i8* %32, align 1, !dbg !851, !tbaa !403
  %35 = zext i8 %34 to i32, !dbg !851
  br label %38, !dbg !851

; <label>:36:                                     ; preds = %24
  %37 = tail call i32 @luaZ_fill(%struct.Zio* %25) #4, !dbg !851
  br label %38, !dbg !851

; <label>:38:                                     ; preds = %36, %30
  %39 = phi i32 [ %35, %30 ], [ %37, %36 ], !dbg !851
  store i32 %39, i32* %18, align 8, !dbg !851, !tbaa !718
  %40 = icmp eq i32 %39, 45, !dbg !852
  br i1 %40, label %41, label %1144, !dbg !854

; <label>:41:                                     ; preds = %38
  %42 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !855, !tbaa !703
  %43 = getelementptr inbounds %struct.Zio, %struct.Zio* %42, i64 0, i32 0, !dbg !855
  %44 = load i64, i64* %43, align 8, !dbg !855, !tbaa !715
  %45 = add i64 %44, -1, !dbg !855
  store i64 %45, i64* %43, align 8, !dbg !855, !tbaa !715
  %46 = icmp eq i64 %44, 0, !dbg !855
  br i1 %46, label %53, label %47, !dbg !855

; <label>:47:                                     ; preds = %41
  %48 = getelementptr inbounds %struct.Zio, %struct.Zio* %42, i64 0, i32 1, !dbg !855
  %49 = load i8*, i8** %48, align 8, !dbg !855, !tbaa !717
  %50 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !855
  store i8* %50, i8** %48, align 8, !dbg !855, !tbaa !717
  %51 = load i8, i8* %49, align 1, !dbg !855, !tbaa !403
  %52 = zext i8 %51 to i32, !dbg !855
  br label %55, !dbg !855

; <label>:53:                                     ; preds = %41
  %54 = tail call i32 @luaZ_fill(%struct.Zio* %42) #4, !dbg !855
  br label %55, !dbg !855

; <label>:55:                                     ; preds = %53, %47
  %56 = phi i32 [ %52, %47 ], [ %54, %53 ], !dbg !855
  store i32 %56, i32* %18, align 8, !dbg !855, !tbaa !718
  %57 = icmp eq i32 %56, 91, !dbg !856
  br i1 %57, label %60, label %58, !dbg !857

; <label>:58:                                     ; preds = %65, %55
  %59 = phi i32 [ %56, %55 ], [ %66, %65 ]
  br label %70, !dbg !858

; <label>:60:                                     ; preds = %55
  %61 = tail call fastcc i32 @skip_sep(%struct.LexState* nonnull %0) #6, !dbg !859
  %62 = load %struct.Mbuffer*, %struct.Mbuffer** %15, align 8, !dbg !861, !tbaa !567
  %63 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %62, i64 0, i32 1, !dbg !861
  store i64 0, i64* %63, align 8, !dbg !861, !tbaa !570
  %64 = icmp sgt i32 %61, -1, !dbg !862
  br i1 %64, label %67, label %65, !dbg !864

; <label>:65:                                     ; preds = %60
  %66 = load i32, i32* %18, align 8, !dbg !858, !tbaa !718
  br label %58, !dbg !864

; <label>:67:                                     ; preds = %60
  tail call fastcc void @read_long_string(%struct.LexState* nonnull %0, %union.SemInfo* null, i32 %61) #6, !dbg !865
  %68 = load %struct.Mbuffer*, %struct.Mbuffer** %15, align 8, !dbg !867, !tbaa !567
  %69 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %68, i64 0, i32 1, !dbg !867
  store i64 0, i64* %69, align 8, !dbg !867, !tbaa !570
  br label %23

; <label>:70:                                     ; preds = %58, %86
  %71 = phi i32 [ %87, %86 ], [ %59, %58 ], !dbg !858
  switch i32 %71, label %72 [
    i32 10, label %23
    i32 13, label %23
    i32 -1, label %23
  ], !dbg !858, !llvm.loop !848

; <label>:72:                                     ; preds = %70
  %73 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !868, !tbaa !703
  %74 = getelementptr inbounds %struct.Zio, %struct.Zio* %73, i64 0, i32 0, !dbg !868
  %75 = load i64, i64* %74, align 8, !dbg !868, !tbaa !715
  %76 = add i64 %75, -1, !dbg !868
  store i64 %76, i64* %74, align 8, !dbg !868, !tbaa !715
  %77 = icmp eq i64 %75, 0, !dbg !868
  br i1 %77, label %84, label %78, !dbg !868

; <label>:78:                                     ; preds = %72
  %79 = getelementptr inbounds %struct.Zio, %struct.Zio* %73, i64 0, i32 1, !dbg !868
  %80 = load i8*, i8** %79, align 8, !dbg !868, !tbaa !717
  %81 = getelementptr inbounds i8, i8* %80, i64 1, !dbg !868
  store i8* %81, i8** %79, align 8, !dbg !868, !tbaa !717
  %82 = load i8, i8* %80, align 1, !dbg !868, !tbaa !403
  %83 = zext i8 %82 to i32, !dbg !868
  br label %86, !dbg !868

; <label>:84:                                     ; preds = %72
  %85 = tail call i32 @luaZ_fill(%struct.Zio* %73) #4, !dbg !868
  br label %86, !dbg !868

; <label>:86:                                     ; preds = %84, %78
  %87 = phi i32 [ %83, %78 ], [ %85, %84 ], !dbg !868
  store i32 %87, i32* %18, align 8, !dbg !868, !tbaa !718
  br label %70, !dbg !869, !llvm.loop !870

; <label>:88:                                     ; preds = %20
  %89 = tail call fastcc i32 @skip_sep(%struct.LexState* nonnull %0) #6, !dbg !871
  %90 = icmp sgt i32 %89, -1, !dbg !873
  br i1 %90, label %91, label %92, !dbg !875

; <label>:91:                                     ; preds = %88
  tail call fastcc void @read_long_string(%struct.LexState* nonnull %0, %union.SemInfo* %1, i32 %89) #6, !dbg !876
  br label %1144, !dbg !878

; <label>:92:                                     ; preds = %88
  %93 = icmp eq i32 %89, -1, !dbg !879
  br i1 %93, label %1144, label %94, !dbg !881

; <label>:94:                                     ; preds = %92
  tail call void @luaX_lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0), i32 286) #6, !dbg !882
  br label %95

; <label>:95:                                     ; preds = %20, %94
  %96 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !883, !tbaa !703
  %97 = getelementptr inbounds %struct.Zio, %struct.Zio* %96, i64 0, i32 0, !dbg !883
  %98 = load i64, i64* %97, align 8, !dbg !883, !tbaa !715
  %99 = add i64 %98, -1, !dbg !883
  store i64 %99, i64* %97, align 8, !dbg !883, !tbaa !715
  %100 = icmp eq i64 %98, 0, !dbg !883
  br i1 %100, label %107, label %101, !dbg !883

; <label>:101:                                    ; preds = %95
  %102 = getelementptr inbounds %struct.Zio, %struct.Zio* %96, i64 0, i32 1, !dbg !883
  %103 = load i8*, i8** %102, align 8, !dbg !883, !tbaa !717
  %104 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !883
  store i8* %104, i8** %102, align 8, !dbg !883, !tbaa !717
  %105 = load i8, i8* %103, align 1, !dbg !883, !tbaa !403
  %106 = zext i8 %105 to i32, !dbg !883
  br label %109, !dbg !883

; <label>:107:                                    ; preds = %95
  %108 = tail call i32 @luaZ_fill(%struct.Zio* %96) #4, !dbg !883
  br label %109, !dbg !883

; <label>:109:                                    ; preds = %107, %101
  %110 = phi i32 [ %106, %101 ], [ %108, %107 ], !dbg !883
  store i32 %110, i32* %18, align 8, !dbg !883, !tbaa !718
  %111 = icmp eq i32 %110, 61, !dbg !885
  br i1 %111, label %112, label %1144, !dbg !887

; <label>:112:                                    ; preds = %109
  %113 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !888, !tbaa !703
  %114 = getelementptr inbounds %struct.Zio, %struct.Zio* %113, i64 0, i32 0, !dbg !888
  %115 = load i64, i64* %114, align 8, !dbg !888, !tbaa !715
  %116 = add i64 %115, -1, !dbg !888
  store i64 %116, i64* %114, align 8, !dbg !888, !tbaa !715
  %117 = icmp eq i64 %115, 0, !dbg !888
  br i1 %117, label %124, label %118, !dbg !888

; <label>:118:                                    ; preds = %112
  %119 = getelementptr inbounds %struct.Zio, %struct.Zio* %113, i64 0, i32 1, !dbg !888
  %120 = load i8*, i8** %119, align 8, !dbg !888, !tbaa !717
  %121 = getelementptr inbounds i8, i8* %120, i64 1, !dbg !888
  store i8* %121, i8** %119, align 8, !dbg !888, !tbaa !717
  %122 = load i8, i8* %120, align 1, !dbg !888, !tbaa !403
  %123 = zext i8 %122 to i32, !dbg !888
  br label %126, !dbg !888

; <label>:124:                                    ; preds = %112
  %125 = tail call i32 @luaZ_fill(%struct.Zio* %113) #4, !dbg !888
  br label %126, !dbg !888

; <label>:126:                                    ; preds = %124, %118
  %127 = phi i32 [ %123, %118 ], [ %125, %124 ], !dbg !888
  store i32 %127, i32* %18, align 8, !dbg !888, !tbaa !718
  br label %1144, !dbg !890

; <label>:128:                                    ; preds = %20
  %129 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !891, !tbaa !703
  %130 = getelementptr inbounds %struct.Zio, %struct.Zio* %129, i64 0, i32 0, !dbg !891
  %131 = load i64, i64* %130, align 8, !dbg !891, !tbaa !715
  %132 = add i64 %131, -1, !dbg !891
  store i64 %132, i64* %130, align 8, !dbg !891, !tbaa !715
  %133 = icmp eq i64 %131, 0, !dbg !891
  br i1 %133, label %140, label %134, !dbg !891

; <label>:134:                                    ; preds = %128
  %135 = getelementptr inbounds %struct.Zio, %struct.Zio* %129, i64 0, i32 1, !dbg !891
  %136 = load i8*, i8** %135, align 8, !dbg !891, !tbaa !717
  %137 = getelementptr inbounds i8, i8* %136, i64 1, !dbg !891
  store i8* %137, i8** %135, align 8, !dbg !891, !tbaa !717
  %138 = load i8, i8* %136, align 1, !dbg !891, !tbaa !403
  %139 = zext i8 %138 to i32, !dbg !891
  br label %142, !dbg !891

; <label>:140:                                    ; preds = %128
  %141 = tail call i32 @luaZ_fill(%struct.Zio* %129) #4, !dbg !891
  br label %142, !dbg !891

; <label>:142:                                    ; preds = %140, %134
  %143 = phi i32 [ %139, %134 ], [ %141, %140 ], !dbg !891
  store i32 %143, i32* %18, align 8, !dbg !891, !tbaa !718
  %144 = icmp eq i32 %143, 61, !dbg !893
  br i1 %144, label %145, label %1144, !dbg !895

; <label>:145:                                    ; preds = %142
  %146 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !896, !tbaa !703
  %147 = getelementptr inbounds %struct.Zio, %struct.Zio* %146, i64 0, i32 0, !dbg !896
  %148 = load i64, i64* %147, align 8, !dbg !896, !tbaa !715
  %149 = add i64 %148, -1, !dbg !896
  store i64 %149, i64* %147, align 8, !dbg !896, !tbaa !715
  %150 = icmp eq i64 %148, 0, !dbg !896
  br i1 %150, label %157, label %151, !dbg !896

; <label>:151:                                    ; preds = %145
  %152 = getelementptr inbounds %struct.Zio, %struct.Zio* %146, i64 0, i32 1, !dbg !896
  %153 = load i8*, i8** %152, align 8, !dbg !896, !tbaa !717
  %154 = getelementptr inbounds i8, i8* %153, i64 1, !dbg !896
  store i8* %154, i8** %152, align 8, !dbg !896, !tbaa !717
  %155 = load i8, i8* %153, align 1, !dbg !896, !tbaa !403
  %156 = zext i8 %155 to i32, !dbg !896
  br label %159, !dbg !896

; <label>:157:                                    ; preds = %145
  %158 = tail call i32 @luaZ_fill(%struct.Zio* %146) #4, !dbg !896
  br label %159, !dbg !896

; <label>:159:                                    ; preds = %157, %151
  %160 = phi i32 [ %156, %151 ], [ %158, %157 ], !dbg !896
  store i32 %160, i32* %18, align 8, !dbg !896, !tbaa !718
  br label %1144, !dbg !898

; <label>:161:                                    ; preds = %20
  %162 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !899, !tbaa !703
  %163 = getelementptr inbounds %struct.Zio, %struct.Zio* %162, i64 0, i32 0, !dbg !899
  %164 = load i64, i64* %163, align 8, !dbg !899, !tbaa !715
  %165 = add i64 %164, -1, !dbg !899
  store i64 %165, i64* %163, align 8, !dbg !899, !tbaa !715
  %166 = icmp eq i64 %164, 0, !dbg !899
  br i1 %166, label %173, label %167, !dbg !899

; <label>:167:                                    ; preds = %161
  %168 = getelementptr inbounds %struct.Zio, %struct.Zio* %162, i64 0, i32 1, !dbg !899
  %169 = load i8*, i8** %168, align 8, !dbg !899, !tbaa !717
  %170 = getelementptr inbounds i8, i8* %169, i64 1, !dbg !899
  store i8* %170, i8** %168, align 8, !dbg !899, !tbaa !717
  %171 = load i8, i8* %169, align 1, !dbg !899, !tbaa !403
  %172 = zext i8 %171 to i32, !dbg !899
  br label %175, !dbg !899

; <label>:173:                                    ; preds = %161
  %174 = tail call i32 @luaZ_fill(%struct.Zio* %162) #4, !dbg !899
  br label %175, !dbg !899

; <label>:175:                                    ; preds = %173, %167
  %176 = phi i32 [ %172, %167 ], [ %174, %173 ], !dbg !899
  store i32 %176, i32* %18, align 8, !dbg !899, !tbaa !718
  %177 = icmp eq i32 %176, 61, !dbg !901
  br i1 %177, label %178, label %1144, !dbg !903

; <label>:178:                                    ; preds = %175
  %179 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !904, !tbaa !703
  %180 = getelementptr inbounds %struct.Zio, %struct.Zio* %179, i64 0, i32 0, !dbg !904
  %181 = load i64, i64* %180, align 8, !dbg !904, !tbaa !715
  %182 = add i64 %181, -1, !dbg !904
  store i64 %182, i64* %180, align 8, !dbg !904, !tbaa !715
  %183 = icmp eq i64 %181, 0, !dbg !904
  br i1 %183, label %190, label %184, !dbg !904

; <label>:184:                                    ; preds = %178
  %185 = getelementptr inbounds %struct.Zio, %struct.Zio* %179, i64 0, i32 1, !dbg !904
  %186 = load i8*, i8** %185, align 8, !dbg !904, !tbaa !717
  %187 = getelementptr inbounds i8, i8* %186, i64 1, !dbg !904
  store i8* %187, i8** %185, align 8, !dbg !904, !tbaa !717
  %188 = load i8, i8* %186, align 1, !dbg !904, !tbaa !403
  %189 = zext i8 %188 to i32, !dbg !904
  br label %192, !dbg !904

; <label>:190:                                    ; preds = %178
  %191 = tail call i32 @luaZ_fill(%struct.Zio* %179) #4, !dbg !904
  br label %192, !dbg !904

; <label>:192:                                    ; preds = %190, %184
  %193 = phi i32 [ %189, %184 ], [ %191, %190 ], !dbg !904
  store i32 %193, i32* %18, align 8, !dbg !904, !tbaa !718
  br label %1144, !dbg !906

; <label>:194:                                    ; preds = %20
  %195 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !907, !tbaa !703
  %196 = getelementptr inbounds %struct.Zio, %struct.Zio* %195, i64 0, i32 0, !dbg !907
  %197 = load i64, i64* %196, align 8, !dbg !907, !tbaa !715
  %198 = add i64 %197, -1, !dbg !907
  store i64 %198, i64* %196, align 8, !dbg !907, !tbaa !715
  %199 = icmp eq i64 %197, 0, !dbg !907
  br i1 %199, label %206, label %200, !dbg !907

; <label>:200:                                    ; preds = %194
  %201 = getelementptr inbounds %struct.Zio, %struct.Zio* %195, i64 0, i32 1, !dbg !907
  %202 = load i8*, i8** %201, align 8, !dbg !907, !tbaa !717
  %203 = getelementptr inbounds i8, i8* %202, i64 1, !dbg !907
  store i8* %203, i8** %201, align 8, !dbg !907, !tbaa !717
  %204 = load i8, i8* %202, align 1, !dbg !907, !tbaa !403
  %205 = zext i8 %204 to i32, !dbg !907
  br label %208, !dbg !907

; <label>:206:                                    ; preds = %194
  %207 = tail call i32 @luaZ_fill(%struct.Zio* %195) #4, !dbg !907
  br label %208, !dbg !907

; <label>:208:                                    ; preds = %206, %200
  %209 = phi i32 [ %205, %200 ], [ %207, %206 ], !dbg !907
  store i32 %209, i32* %18, align 8, !dbg !907, !tbaa !718
  %210 = icmp eq i32 %209, 61, !dbg !909
  br i1 %210, label %211, label %1144, !dbg !911

; <label>:211:                                    ; preds = %208
  %212 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !912, !tbaa !703
  %213 = getelementptr inbounds %struct.Zio, %struct.Zio* %212, i64 0, i32 0, !dbg !912
  %214 = load i64, i64* %213, align 8, !dbg !912, !tbaa !715
  %215 = add i64 %214, -1, !dbg !912
  store i64 %215, i64* %213, align 8, !dbg !912, !tbaa !715
  %216 = icmp eq i64 %214, 0, !dbg !912
  br i1 %216, label %223, label %217, !dbg !912

; <label>:217:                                    ; preds = %211
  %218 = getelementptr inbounds %struct.Zio, %struct.Zio* %212, i64 0, i32 1, !dbg !912
  %219 = load i8*, i8** %218, align 8, !dbg !912, !tbaa !717
  %220 = getelementptr inbounds i8, i8* %219, i64 1, !dbg !912
  store i8* %220, i8** %218, align 8, !dbg !912, !tbaa !717
  %221 = load i8, i8* %219, align 1, !dbg !912, !tbaa !403
  %222 = zext i8 %221 to i32, !dbg !912
  br label %225, !dbg !912

; <label>:223:                                    ; preds = %211
  %224 = tail call i32 @luaZ_fill(%struct.Zio* %212) #4, !dbg !912
  br label %225, !dbg !912

; <label>:225:                                    ; preds = %223, %217
  %226 = phi i32 [ %222, %217 ], [ %224, %223 ], !dbg !912
  store i32 %226, i32* %18, align 8, !dbg !912, !tbaa !718
  br label %1144, !dbg !914

; <label>:227:                                    ; preds = %20, %20
  %228 = load %struct.Mbuffer*, %struct.Mbuffer** %15, align 8, !dbg !920, !tbaa !567
  %229 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %228, i64 0, i32 1, !dbg !922
  %230 = load i64, i64* %229, align 8, !dbg !922, !tbaa !570
  %231 = add i64 %230, 1, !dbg !923
  %232 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %228, i64 0, i32 2, !dbg !924
  %233 = load i64, i64* %232, align 8, !dbg !924, !tbaa !575
  %234 = icmp ugt i64 %231, %233, !dbg !925
  br i1 %234, label %238, label %235, !dbg !926

; <label>:235:                                    ; preds = %227
  %236 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %228, i64 0, i32 0
  %237 = load i8*, i8** %236, align 8, !dbg !927, !tbaa !579
  br label %273, !dbg !926

; <label>:238:                                    ; preds = %227
  %239 = icmp ugt i64 %233, 9223372036854775805, !dbg !928
  br i1 %239, label %242, label %240, !dbg !929

; <label>:240:                                    ; preds = %238
  %241 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !930
  br label %255, !dbg !929

; <label>:242:                                    ; preds = %238
  %243 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0, !dbg !934
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %243) #5, !dbg !934
  %244 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9, !dbg !935
  %245 = load %union.TString*, %union.TString** %244, align 8, !dbg !935, !tbaa !552
  %246 = getelementptr inbounds %union.TString, %union.TString* %245, i64 1, !dbg !935
  %247 = bitcast %union.TString* %246 to i8*, !dbg !935
  call void @luaO_chunkid(i8* nonnull %243, i8* nonnull %247, i64 80) #4, !dbg !936
  %248 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !937
  %249 = load %struct.lua_State*, %struct.lua_State** %248, align 8, !dbg !937, !tbaa !502
  %250 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !938
  %251 = load i32, i32* %250, align 4, !dbg !938, !tbaa !556
  %252 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %249, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %243, i32 %251, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !939
  %253 = load %struct.lua_State*, %struct.lua_State** %248, align 8, !dbg !940, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %253, i32 3) #4, !dbg !941
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %243) #5, !dbg !942
  %254 = load i64, i64* %232, align 8, !dbg !943, !tbaa !575
  br label %255, !dbg !944

; <label>:255:                                    ; preds = %242, %240
  %256 = phi %struct.lua_State** [ %241, %240 ], [ %248, %242 ], !dbg !930
  %257 = phi i64 [ %233, %240 ], [ %254, %242 ], !dbg !943
  %258 = shl i64 %257, 1, !dbg !945
  %259 = icmp eq i64 %258, -2, !dbg !930
  %260 = load %struct.lua_State*, %struct.lua_State** %256, align 8, !dbg !930, !tbaa !502
  br i1 %259, label %265, label %261, !dbg !930

; <label>:261:                                    ; preds = %255
  %262 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %228, i64 0, i32 0, !dbg !930
  %263 = load i8*, i8** %262, align 8, !dbg !930, !tbaa !579
  %264 = call i8* @luaM_realloc_(%struct.lua_State* %260, i8* %263, i64 %257, i64 %258) #4, !dbg !930
  br label %268, !dbg !930

; <label>:265:                                    ; preds = %255
  %266 = call i8* @luaM_toobig(%struct.lua_State* %260) #4, !dbg !930
  %267 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %228, i64 0, i32 0, !dbg !930
  br label %268, !dbg !930

; <label>:268:                                    ; preds = %265, %261
  %269 = phi i8** [ %267, %265 ], [ %262, %261 ], !dbg !930
  %270 = phi i8* [ %266, %265 ], [ %264, %261 ], !dbg !930
  store i8* %270, i8** %269, align 8, !dbg !930, !tbaa !579
  store i64 %258, i64* %232, align 8, !dbg !930, !tbaa !575
  %271 = load i64, i64* %229, align 8, !dbg !947, !tbaa !570
  %272 = add i64 %271, 1, !dbg !947
  br label %273, !dbg !948

; <label>:273:                                    ; preds = %268, %235
  %274 = phi i64 [ %231, %235 ], [ %272, %268 ], !dbg !947
  %275 = phi i64 [ %230, %235 ], [ %271, %268 ], !dbg !947
  %276 = phi i8* [ %237, %235 ], [ %270, %268 ], !dbg !927
  %277 = trunc i32 %21 to i8, !dbg !949
  store i64 %274, i64* %229, align 8, !dbg !947, !tbaa !570
  %278 = getelementptr inbounds i8, i8* %276, i64 %275, !dbg !950
  store i8 %277, i8* %278, align 1, !dbg !951, !tbaa !403
  %279 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !952, !tbaa !703
  %280 = getelementptr inbounds %struct.Zio, %struct.Zio* %279, i64 0, i32 0, !dbg !952
  %281 = load i64, i64* %280, align 8, !dbg !952, !tbaa !715
  %282 = add i64 %281, -1, !dbg !952
  store i64 %282, i64* %280, align 8, !dbg !952, !tbaa !715
  %283 = icmp eq i64 %281, 0, !dbg !952
  br i1 %283, label %290, label %284, !dbg !952

; <label>:284:                                    ; preds = %273
  %285 = getelementptr inbounds %struct.Zio, %struct.Zio* %279, i64 0, i32 1, !dbg !952
  %286 = load i8*, i8** %285, align 8, !dbg !952, !tbaa !717
  %287 = getelementptr inbounds i8, i8* %286, i64 1, !dbg !952
  store i8* %287, i8** %285, align 8, !dbg !952, !tbaa !717
  %288 = load i8, i8* %286, align 1, !dbg !952, !tbaa !403
  %289 = zext i8 %288 to i32, !dbg !952
  br label %292, !dbg !952

; <label>:290:                                    ; preds = %273
  %291 = call i32 @luaZ_fill(%struct.Zio* %279) #4, !dbg !952
  br label %292, !dbg !952

; <label>:292:                                    ; preds = %290, %284
  %293 = phi i32 [ %289, %284 ], [ %291, %290 ], !dbg !952
  store i32 %293, i32* %18, align 8, !dbg !952, !tbaa !718
  %294 = icmp eq i32 %293, %21, !dbg !953
  br i1 %294, label %659, label %295, !dbg !954

; <label>:295:                                    ; preds = %292
  %296 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %297 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9
  %298 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %299 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %300 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %301 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %302 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %303 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %304 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  br label %307, !dbg !954

; <label>:305:                                    ; preds = %594, %530, %453, %381, %334, %319, %309
  %306 = load i32, i32* %18, align 8, !dbg !955, !tbaa !718
  br label %656, !dbg !955

; <label>:307:                                    ; preds = %656, %295
  %308 = phi i32 [ %293, %295 ], [ %657, %656 ]
  switch i32 %308, label %596 [
    i32 -1, label %309
    i32 10, label %319
    i32 13, label %319
    i32 92, label %320
  ], !dbg !956

; <label>:309:                                    ; preds = %307
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %296) #5, !dbg !960
  %310 = load %union.TString*, %union.TString** %297, align 8, !dbg !961, !tbaa !552
  %311 = getelementptr inbounds %union.TString, %union.TString* %310, i64 1, !dbg !961
  %312 = bitcast %union.TString* %311 to i8*, !dbg !961
  call void @luaO_chunkid(i8* nonnull %296, i8* nonnull %312, i64 80) #4, !dbg !962
  %313 = load %struct.lua_State*, %struct.lua_State** %298, align 8, !dbg !963, !tbaa !502
  %314 = load i32, i32* %299, align 4, !dbg !964, !tbaa !556
  %315 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %313, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %296, i32 %314, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i64 0, i64 0)) #4, !dbg !965
  %316 = load %struct.lua_State*, %struct.lua_State** %298, align 8, !dbg !966, !tbaa !502
  %317 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %316, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* %315, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0)) #4, !dbg !967
  %318 = load %struct.lua_State*, %struct.lua_State** %298, align 8, !dbg !968, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %318, i32 3) #4, !dbg !969
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %296) #5, !dbg !970
  br label %305, !dbg !971, !llvm.loop !972

; <label>:319:                                    ; preds = %307, %307
  call void @luaX_lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i64 0, i64 0), i32 286) #4, !dbg !975
  br label %305, !dbg !976, !llvm.loop !972

; <label>:320:                                    ; preds = %307
  %321 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !977, !tbaa !703
  %322 = getelementptr inbounds %struct.Zio, %struct.Zio* %321, i64 0, i32 0, !dbg !977
  %323 = load i64, i64* %322, align 8, !dbg !977, !tbaa !715
  %324 = add i64 %323, -1, !dbg !977
  store i64 %324, i64* %322, align 8, !dbg !977, !tbaa !715
  %325 = icmp eq i64 %323, 0, !dbg !977
  br i1 %325, label %332, label %326, !dbg !977

; <label>:326:                                    ; preds = %320
  %327 = getelementptr inbounds %struct.Zio, %struct.Zio* %321, i64 0, i32 1, !dbg !977
  %328 = load i8*, i8** %327, align 8, !dbg !977, !tbaa !717
  %329 = getelementptr inbounds i8, i8* %328, i64 1, !dbg !977
  store i8* %329, i8** %327, align 8, !dbg !977, !tbaa !717
  %330 = load i8, i8* %328, align 1, !dbg !977, !tbaa !403
  %331 = zext i8 %330 to i32, !dbg !977
  br label %334, !dbg !977

; <label>:332:                                    ; preds = %320
  %333 = call i32 @luaZ_fill(%struct.Zio* %321) #4, !dbg !977
  br label %334, !dbg !977

; <label>:334:                                    ; preds = %332, %326
  %335 = phi i32 [ %331, %326 ], [ %333, %332 ], !dbg !977
  store i32 %335, i32* %18, align 8, !dbg !977, !tbaa !718
  switch i32 %335, label %386 [
    i32 97, label %536
    i32 98, label %336
    i32 102, label %337
    i32 110, label %338
    i32 114, label %339
    i32 116, label %340
    i32 118, label %341
    i32 10, label %342
    i32 13, label %342
    i32 -1, label %305
  ], !dbg !978, !llvm.loop !972

; <label>:336:                                    ; preds = %334
  br label %536, !dbg !980

; <label>:337:                                    ; preds = %334
  br label %536, !dbg !981

; <label>:338:                                    ; preds = %334
  br label %536, !dbg !982

; <label>:339:                                    ; preds = %334
  br label %536, !dbg !983

; <label>:340:                                    ; preds = %334
  br label %536, !dbg !984

; <label>:341:                                    ; preds = %334
  br label %536, !dbg !985

; <label>:342:                                    ; preds = %334, %334
  %343 = load %struct.Mbuffer*, %struct.Mbuffer** %15, align 8, !dbg !988, !tbaa !567
  %344 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %343, i64 0, i32 1, !dbg !990
  %345 = load i64, i64* %344, align 8, !dbg !990, !tbaa !570
  %346 = add i64 %345, 1, !dbg !991
  %347 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %343, i64 0, i32 2, !dbg !992
  %348 = load i64, i64* %347, align 8, !dbg !992, !tbaa !575
  %349 = icmp ugt i64 %346, %348, !dbg !993
  br i1 %349, label %353, label %350, !dbg !994

; <label>:350:                                    ; preds = %342
  %351 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %343, i64 0, i32 0
  %352 = load i8*, i8** %351, align 8, !dbg !995, !tbaa !579
  br label %381, !dbg !994

; <label>:353:                                    ; preds = %342
  %354 = icmp ugt i64 %348, 9223372036854775805, !dbg !996
  br i1 %354, label %355, label %364, !dbg !997

; <label>:355:                                    ; preds = %353
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %302) #5, !dbg !1001
  %356 = load %union.TString*, %union.TString** %297, align 8, !dbg !1002, !tbaa !552
  %357 = getelementptr inbounds %union.TString, %union.TString* %356, i64 1, !dbg !1002
  %358 = bitcast %union.TString* %357 to i8*, !dbg !1002
  call void @luaO_chunkid(i8* nonnull %302, i8* nonnull %358, i64 80) #4, !dbg !1003
  %359 = load %struct.lua_State*, %struct.lua_State** %298, align 8, !dbg !1004, !tbaa !502
  %360 = load i32, i32* %299, align 4, !dbg !1005, !tbaa !556
  %361 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %359, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %302, i32 %360, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1006
  %362 = load %struct.lua_State*, %struct.lua_State** %298, align 8, !dbg !1007, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %362, i32 3) #4, !dbg !1008
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %302) #5, !dbg !1009
  %363 = load i64, i64* %347, align 8, !dbg !1010, !tbaa !575
  br label %364, !dbg !1011

; <label>:364:                                    ; preds = %355, %353
  %365 = phi i64 [ %363, %355 ], [ %348, %353 ], !dbg !1010
  %366 = shl i64 %365, 1, !dbg !1012
  %367 = icmp eq i64 %366, -2, !dbg !1014
  %368 = load %struct.lua_State*, %struct.lua_State** %298, align 8, !dbg !1014, !tbaa !502
  br i1 %367, label %373, label %369, !dbg !1014

; <label>:369:                                    ; preds = %364
  %370 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %343, i64 0, i32 0, !dbg !1014
  %371 = load i8*, i8** %370, align 8, !dbg !1014, !tbaa !579
  %372 = call i8* @luaM_realloc_(%struct.lua_State* %368, i8* %371, i64 %365, i64 %366) #4, !dbg !1014
  br label %376, !dbg !1014

; <label>:373:                                    ; preds = %364
  %374 = call i8* @luaM_toobig(%struct.lua_State* %368) #4, !dbg !1014
  %375 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %343, i64 0, i32 0, !dbg !1014
  br label %376, !dbg !1014

; <label>:376:                                    ; preds = %373, %369
  %377 = phi i8** [ %375, %373 ], [ %370, %369 ], !dbg !1014
  %378 = phi i8* [ %374, %373 ], [ %372, %369 ], !dbg !1014
  store i8* %378, i8** %377, align 8, !dbg !1014, !tbaa !579
  store i64 %366, i64* %347, align 8, !dbg !1014, !tbaa !575
  %379 = load i64, i64* %344, align 8, !dbg !1015, !tbaa !570
  %380 = add i64 %379, 1, !dbg !1015
  br label %381, !dbg !1016

; <label>:381:                                    ; preds = %376, %350
  %382 = phi i64 [ %346, %350 ], [ %380, %376 ], !dbg !1015
  %383 = phi i64 [ %345, %350 ], [ %379, %376 ], !dbg !1015
  %384 = phi i8* [ %352, %350 ], [ %378, %376 ], !dbg !995
  store i64 %382, i64* %344, align 8, !dbg !1015, !tbaa !570
  %385 = getelementptr inbounds i8, i8* %384, i64 %383, !dbg !1017
  store i8 10, i8* %385, align 1, !dbg !1018, !tbaa !403
  call fastcc void @inclinenumber(%struct.LexState* nonnull %0) #4, !dbg !1019
  br label %305, !dbg !1020, !llvm.loop !972

; <label>:386:                                    ; preds = %334
  %387 = call i8* @__locale_ctype_ptr() #4, !dbg !1021
  %388 = getelementptr inbounds i8, i8* %387, i64 1, !dbg !1021
  %389 = load i32, i32* %18, align 8, !dbg !1021, !tbaa !718
  %390 = sext i32 %389 to i64, !dbg !1021
  %391 = getelementptr inbounds i8, i8* %388, i64 %390, !dbg !1021
  %392 = load i8, i8* %391, align 1, !dbg !1021, !tbaa !403
  %393 = and i8 %392, 4, !dbg !1021
  %394 = icmp eq i8 %393, 0, !dbg !1021
  br i1 %394, label %395, label %455, !dbg !1022

; <label>:395:                                    ; preds = %386
  %396 = load %struct.Mbuffer*, %struct.Mbuffer** %15, align 8, !dbg !1025, !tbaa !567
  %397 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %396, i64 0, i32 1, !dbg !1027
  %398 = load i64, i64* %397, align 8, !dbg !1027, !tbaa !570
  %399 = add i64 %398, 1, !dbg !1028
  %400 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %396, i64 0, i32 2, !dbg !1029
  %401 = load i64, i64* %400, align 8, !dbg !1029, !tbaa !575
  %402 = icmp ugt i64 %399, %401, !dbg !1030
  br i1 %402, label %406, label %403, !dbg !1031

; <label>:403:                                    ; preds = %395
  %404 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %396, i64 0, i32 0
  %405 = load i8*, i8** %404, align 8, !dbg !1032, !tbaa !579
  br label %434, !dbg !1031

; <label>:406:                                    ; preds = %395
  %407 = icmp ugt i64 %401, 9223372036854775805, !dbg !1033
  br i1 %407, label %408, label %417, !dbg !1034

; <label>:408:                                    ; preds = %406
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %303) #5, !dbg !1038
  %409 = load %union.TString*, %union.TString** %297, align 8, !dbg !1039, !tbaa !552
  %410 = getelementptr inbounds %union.TString, %union.TString* %409, i64 1, !dbg !1039
  %411 = bitcast %union.TString* %410 to i8*, !dbg !1039
  call void @luaO_chunkid(i8* nonnull %303, i8* nonnull %411, i64 80) #4, !dbg !1040
  %412 = load %struct.lua_State*, %struct.lua_State** %298, align 8, !dbg !1041, !tbaa !502
  %413 = load i32, i32* %299, align 4, !dbg !1042, !tbaa !556
  %414 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %412, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %303, i32 %413, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1043
  %415 = load %struct.lua_State*, %struct.lua_State** %298, align 8, !dbg !1044, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %415, i32 3) #4, !dbg !1045
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %303) #5, !dbg !1046
  %416 = load i64, i64* %400, align 8, !dbg !1047, !tbaa !575
  br label %417, !dbg !1048

; <label>:417:                                    ; preds = %408, %406
  %418 = phi i64 [ %416, %408 ], [ %401, %406 ], !dbg !1047
  %419 = shl i64 %418, 1, !dbg !1049
  %420 = icmp eq i64 %419, -2, !dbg !1051
  %421 = load %struct.lua_State*, %struct.lua_State** %298, align 8, !dbg !1051, !tbaa !502
  br i1 %420, label %426, label %422, !dbg !1051

; <label>:422:                                    ; preds = %417
  %423 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %396, i64 0, i32 0, !dbg !1051
  %424 = load i8*, i8** %423, align 8, !dbg !1051, !tbaa !579
  %425 = call i8* @luaM_realloc_(%struct.lua_State* %421, i8* %424, i64 %418, i64 %419) #4, !dbg !1051
  br label %429, !dbg !1051

; <label>:426:                                    ; preds = %417
  %427 = call i8* @luaM_toobig(%struct.lua_State* %421) #4, !dbg !1051
  %428 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %396, i64 0, i32 0, !dbg !1051
  br label %429, !dbg !1051

; <label>:429:                                    ; preds = %426, %422
  %430 = phi i8** [ %428, %426 ], [ %423, %422 ], !dbg !1051
  %431 = phi i8* [ %427, %426 ], [ %425, %422 ], !dbg !1051
  store i8* %431, i8** %430, align 8, !dbg !1051, !tbaa !579
  store i64 %419, i64* %400, align 8, !dbg !1051, !tbaa !575
  %432 = load i64, i64* %397, align 8, !dbg !1052, !tbaa !570
  %433 = add i64 %432, 1, !dbg !1052
  br label %434, !dbg !1053

; <label>:434:                                    ; preds = %429, %403
  %435 = phi i64 [ %399, %403 ], [ %433, %429 ], !dbg !1052
  %436 = phi i64 [ %398, %403 ], [ %432, %429 ], !dbg !1052
  %437 = phi i8* [ %405, %403 ], [ %431, %429 ], !dbg !1032
  %438 = trunc i32 %389 to i8, !dbg !1054
  store i64 %435, i64* %397, align 8, !dbg !1052, !tbaa !570
  %439 = getelementptr inbounds i8, i8* %437, i64 %436, !dbg !1055
  store i8 %438, i8* %439, align 1, !dbg !1056, !tbaa !403
  %440 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !1057, !tbaa !703
  %441 = getelementptr inbounds %struct.Zio, %struct.Zio* %440, i64 0, i32 0, !dbg !1057
  %442 = load i64, i64* %441, align 8, !dbg !1057, !tbaa !715
  %443 = add i64 %442, -1, !dbg !1057
  store i64 %443, i64* %441, align 8, !dbg !1057, !tbaa !715
  %444 = icmp eq i64 %442, 0, !dbg !1057
  br i1 %444, label %451, label %445, !dbg !1057

; <label>:445:                                    ; preds = %434
  %446 = getelementptr inbounds %struct.Zio, %struct.Zio* %440, i64 0, i32 1, !dbg !1057
  %447 = load i8*, i8** %446, align 8, !dbg !1057, !tbaa !717
  %448 = getelementptr inbounds i8, i8* %447, i64 1, !dbg !1057
  store i8* %448, i8** %446, align 8, !dbg !1057, !tbaa !717
  %449 = load i8, i8* %447, align 1, !dbg !1057, !tbaa !403
  %450 = zext i8 %449 to i32, !dbg !1057
  br label %453, !dbg !1057

; <label>:451:                                    ; preds = %434
  %452 = call i32 @luaZ_fill(%struct.Zio* %440) #4, !dbg !1057
  br label %453, !dbg !1057

; <label>:453:                                    ; preds = %451, %445
  %454 = phi i32 [ %450, %445 ], [ %452, %451 ], !dbg !1057
  store i32 %454, i32* %18, align 8, !dbg !1057, !tbaa !718
  br label %305, !dbg !1057, !llvm.loop !972

; <label>:455:                                    ; preds = %386, %479
  %456 = phi i32 [ %482, %479 ], [ %389, %386 ], !dbg !1058
  %457 = phi i32 [ %461, %479 ], [ 0, %386 ], !dbg !1060
  %458 = phi i32 [ %477, %479 ], [ 0, %386 ], !dbg !1061
  %459 = mul nsw i32 %457, 10, !dbg !1063
  %460 = add i32 %456, -48, !dbg !1064
  %461 = add i32 %460, %459, !dbg !1065
  %462 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !1066, !tbaa !703
  %463 = getelementptr inbounds %struct.Zio, %struct.Zio* %462, i64 0, i32 0, !dbg !1066
  %464 = load i64, i64* %463, align 8, !dbg !1066, !tbaa !715
  %465 = add i64 %464, -1, !dbg !1066
  store i64 %465, i64* %463, align 8, !dbg !1066, !tbaa !715
  %466 = icmp eq i64 %464, 0, !dbg !1066
  br i1 %466, label %473, label %467, !dbg !1066

; <label>:467:                                    ; preds = %455
  %468 = getelementptr inbounds %struct.Zio, %struct.Zio* %462, i64 0, i32 1, !dbg !1066
  %469 = load i8*, i8** %468, align 8, !dbg !1066, !tbaa !717
  %470 = getelementptr inbounds i8, i8* %469, i64 1, !dbg !1066
  store i8* %470, i8** %468, align 8, !dbg !1066, !tbaa !717
  %471 = load i8, i8* %469, align 1, !dbg !1066, !tbaa !403
  %472 = zext i8 %471 to i32, !dbg !1066
  br label %475, !dbg !1066

; <label>:473:                                    ; preds = %455
  %474 = call i32 @luaZ_fill(%struct.Zio* %462) #4, !dbg !1066
  br label %475, !dbg !1066

; <label>:475:                                    ; preds = %473, %467
  %476 = phi i32 [ %472, %467 ], [ %474, %473 ], !dbg !1066
  store i32 %476, i32* %18, align 8, !dbg !1066, !tbaa !718
  %477 = add nuw nsw i32 %458, 1, !dbg !1067
  %478 = icmp ult i32 %477, 3, !dbg !1068
  br i1 %478, label %479, label %488, !dbg !1069

; <label>:479:                                    ; preds = %475
  %480 = call i8* @__locale_ctype_ptr() #4, !dbg !1070
  %481 = getelementptr inbounds i8, i8* %480, i64 1, !dbg !1070
  %482 = load i32, i32* %18, align 8, !dbg !1070, !tbaa !718
  %483 = sext i32 %482 to i64, !dbg !1070
  %484 = getelementptr inbounds i8, i8* %481, i64 %483, !dbg !1070
  %485 = load i8, i8* %484, align 1, !dbg !1070, !tbaa !403
  %486 = and i8 %485, 4, !dbg !1070
  %487 = icmp eq i8 %486, 0, !dbg !1069
  br i1 %487, label %488, label %455, !dbg !1071, !llvm.loop !1072

; <label>:488:                                    ; preds = %479, %475
  %489 = icmp sgt i32 %461, 255, !dbg !1075
  br i1 %489, label %490, label %491, !dbg !1077

; <label>:490:                                    ; preds = %488
  call void @luaX_lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i64 0, i64 0), i32 286) #4, !dbg !1078
  br label %491, !dbg !1078

; <label>:491:                                    ; preds = %490, %488
  %492 = load %struct.Mbuffer*, %struct.Mbuffer** %15, align 8, !dbg !1081, !tbaa !567
  %493 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %492, i64 0, i32 1, !dbg !1083
  %494 = load i64, i64* %493, align 8, !dbg !1083, !tbaa !570
  %495 = add i64 %494, 1, !dbg !1084
  %496 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %492, i64 0, i32 2, !dbg !1085
  %497 = load i64, i64* %496, align 8, !dbg !1085, !tbaa !575
  %498 = icmp ugt i64 %495, %497, !dbg !1086
  br i1 %498, label %502, label %499, !dbg !1087

; <label>:499:                                    ; preds = %491
  %500 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %492, i64 0, i32 0
  %501 = load i8*, i8** %500, align 8, !dbg !1088, !tbaa !579
  br label %530, !dbg !1087

; <label>:502:                                    ; preds = %491
  %503 = icmp ugt i64 %497, 9223372036854775805, !dbg !1089
  br i1 %503, label %504, label %513, !dbg !1090

; <label>:504:                                    ; preds = %502
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %304) #5, !dbg !1094
  %505 = load %union.TString*, %union.TString** %297, align 8, !dbg !1095, !tbaa !552
  %506 = getelementptr inbounds %union.TString, %union.TString* %505, i64 1, !dbg !1095
  %507 = bitcast %union.TString* %506 to i8*, !dbg !1095
  call void @luaO_chunkid(i8* nonnull %304, i8* nonnull %507, i64 80) #4, !dbg !1096
  %508 = load %struct.lua_State*, %struct.lua_State** %298, align 8, !dbg !1097, !tbaa !502
  %509 = load i32, i32* %299, align 4, !dbg !1098, !tbaa !556
  %510 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %508, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %304, i32 %509, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1099
  %511 = load %struct.lua_State*, %struct.lua_State** %298, align 8, !dbg !1100, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %511, i32 3) #4, !dbg !1101
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %304) #5, !dbg !1102
  %512 = load i64, i64* %496, align 8, !dbg !1103, !tbaa !575
  br label %513, !dbg !1104

; <label>:513:                                    ; preds = %504, %502
  %514 = phi i64 [ %512, %504 ], [ %497, %502 ], !dbg !1103
  %515 = shl i64 %514, 1, !dbg !1105
  %516 = icmp eq i64 %515, -2, !dbg !1107
  %517 = load %struct.lua_State*, %struct.lua_State** %298, align 8, !dbg !1107, !tbaa !502
  br i1 %516, label %522, label %518, !dbg !1107

; <label>:518:                                    ; preds = %513
  %519 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %492, i64 0, i32 0, !dbg !1107
  %520 = load i8*, i8** %519, align 8, !dbg !1107, !tbaa !579
  %521 = call i8* @luaM_realloc_(%struct.lua_State* %517, i8* %520, i64 %514, i64 %515) #4, !dbg !1107
  br label %525, !dbg !1107

; <label>:522:                                    ; preds = %513
  %523 = call i8* @luaM_toobig(%struct.lua_State* %517) #4, !dbg !1107
  %524 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %492, i64 0, i32 0, !dbg !1107
  br label %525, !dbg !1107

; <label>:525:                                    ; preds = %522, %518
  %526 = phi i8** [ %524, %522 ], [ %519, %518 ], !dbg !1107
  %527 = phi i8* [ %523, %522 ], [ %521, %518 ], !dbg !1107
  store i8* %527, i8** %526, align 8, !dbg !1107, !tbaa !579
  store i64 %515, i64* %496, align 8, !dbg !1107, !tbaa !575
  %528 = load i64, i64* %493, align 8, !dbg !1108, !tbaa !570
  %529 = add i64 %528, 1, !dbg !1108
  br label %530, !dbg !1109

; <label>:530:                                    ; preds = %525, %499
  %531 = phi i64 [ %495, %499 ], [ %529, %525 ], !dbg !1108
  %532 = phi i64 [ %494, %499 ], [ %528, %525 ], !dbg !1108
  %533 = phi i8* [ %501, %499 ], [ %527, %525 ], !dbg !1088
  %534 = trunc i32 %461 to i8, !dbg !1110
  store i64 %531, i64* %493, align 8, !dbg !1108, !tbaa !570
  %535 = getelementptr inbounds i8, i8* %533, i64 %532, !dbg !1111
  store i8 %534, i8* %535, align 1, !dbg !1112, !tbaa !403
  br label %305, !llvm.loop !972

; <label>:536:                                    ; preds = %341, %340, %339, %338, %337, %336, %334
  %537 = phi i8 [ 11, %341 ], [ 9, %340 ], [ 13, %339 ], [ 10, %338 ], [ 12, %337 ], [ 8, %336 ], [ 7, %334 ]
  %538 = load %struct.Mbuffer*, %struct.Mbuffer** %15, align 8, !dbg !1114, !tbaa !567
  %539 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %538, i64 0, i32 1, !dbg !1116
  %540 = load i64, i64* %539, align 8, !dbg !1116, !tbaa !570
  %541 = add i64 %540, 1, !dbg !1117
  %542 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %538, i64 0, i32 2, !dbg !1118
  %543 = load i64, i64* %542, align 8, !dbg !1118, !tbaa !575
  %544 = icmp ugt i64 %541, %543, !dbg !1119
  br i1 %544, label %548, label %545, !dbg !1120

; <label>:545:                                    ; preds = %536
  %546 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %538, i64 0, i32 0
  %547 = load i8*, i8** %546, align 8, !dbg !1121, !tbaa !579
  br label %576, !dbg !1120

; <label>:548:                                    ; preds = %536
  %549 = icmp ugt i64 %543, 9223372036854775805, !dbg !1122
  br i1 %549, label %550, label %559, !dbg !1123

; <label>:550:                                    ; preds = %548
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %301) #5, !dbg !1127
  %551 = load %union.TString*, %union.TString** %297, align 8, !dbg !1128, !tbaa !552
  %552 = getelementptr inbounds %union.TString, %union.TString* %551, i64 1, !dbg !1128
  %553 = bitcast %union.TString* %552 to i8*, !dbg !1128
  call void @luaO_chunkid(i8* nonnull %301, i8* nonnull %553, i64 80) #4, !dbg !1129
  %554 = load %struct.lua_State*, %struct.lua_State** %298, align 8, !dbg !1130, !tbaa !502
  %555 = load i32, i32* %299, align 4, !dbg !1131, !tbaa !556
  %556 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %554, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %301, i32 %555, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1132
  %557 = load %struct.lua_State*, %struct.lua_State** %298, align 8, !dbg !1133, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %557, i32 3) #4, !dbg !1134
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %301) #5, !dbg !1135
  %558 = load i64, i64* %542, align 8, !dbg !1136, !tbaa !575
  br label %559, !dbg !1137

; <label>:559:                                    ; preds = %550, %548
  %560 = phi i64 [ %558, %550 ], [ %543, %548 ], !dbg !1136
  %561 = shl i64 %560, 1, !dbg !1138
  %562 = icmp eq i64 %561, -2, !dbg !1140
  %563 = load %struct.lua_State*, %struct.lua_State** %298, align 8, !dbg !1140, !tbaa !502
  br i1 %562, label %568, label %564, !dbg !1140

; <label>:564:                                    ; preds = %559
  %565 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %538, i64 0, i32 0, !dbg !1140
  %566 = load i8*, i8** %565, align 8, !dbg !1140, !tbaa !579
  %567 = call i8* @luaM_realloc_(%struct.lua_State* %563, i8* %566, i64 %560, i64 %561) #4, !dbg !1140
  br label %571, !dbg !1140

; <label>:568:                                    ; preds = %559
  %569 = call i8* @luaM_toobig(%struct.lua_State* %563) #4, !dbg !1140
  %570 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %538, i64 0, i32 0, !dbg !1140
  br label %571, !dbg !1140

; <label>:571:                                    ; preds = %568, %564
  %572 = phi i8** [ %570, %568 ], [ %565, %564 ], !dbg !1140
  %573 = phi i8* [ %569, %568 ], [ %567, %564 ], !dbg !1140
  store i8* %573, i8** %572, align 8, !dbg !1140, !tbaa !579
  store i64 %561, i64* %542, align 8, !dbg !1140, !tbaa !575
  %574 = load i64, i64* %539, align 8, !dbg !1141, !tbaa !570
  %575 = add i64 %574, 1, !dbg !1141
  br label %576, !dbg !1142

; <label>:576:                                    ; preds = %571, %545
  %577 = phi i64 [ %541, %545 ], [ %575, %571 ], !dbg !1141
  %578 = phi i64 [ %540, %545 ], [ %574, %571 ], !dbg !1141
  %579 = phi i8* [ %547, %545 ], [ %573, %571 ], !dbg !1121
  store i64 %577, i64* %539, align 8, !dbg !1141, !tbaa !570
  %580 = getelementptr inbounds i8, i8* %579, i64 %578, !dbg !1143
  store i8 %537, i8* %580, align 1, !dbg !1144, !tbaa !403
  %581 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !1145, !tbaa !703
  %582 = getelementptr inbounds %struct.Zio, %struct.Zio* %581, i64 0, i32 0, !dbg !1145
  %583 = load i64, i64* %582, align 8, !dbg !1145, !tbaa !715
  %584 = add i64 %583, -1, !dbg !1145
  store i64 %584, i64* %582, align 8, !dbg !1145, !tbaa !715
  %585 = icmp eq i64 %583, 0, !dbg !1145
  br i1 %585, label %592, label %586, !dbg !1145

; <label>:586:                                    ; preds = %576
  %587 = getelementptr inbounds %struct.Zio, %struct.Zio* %581, i64 0, i32 1, !dbg !1145
  %588 = load i8*, i8** %587, align 8, !dbg !1145, !tbaa !717
  %589 = getelementptr inbounds i8, i8* %588, i64 1, !dbg !1145
  store i8* %589, i8** %587, align 8, !dbg !1145, !tbaa !717
  %590 = load i8, i8* %588, align 1, !dbg !1145, !tbaa !403
  %591 = zext i8 %590 to i32, !dbg !1145
  br label %594, !dbg !1145

; <label>:592:                                    ; preds = %576
  %593 = call i32 @luaZ_fill(%struct.Zio* %581) #4, !dbg !1145
  br label %594, !dbg !1145

; <label>:594:                                    ; preds = %592, %586
  %595 = phi i32 [ %591, %586 ], [ %593, %592 ], !dbg !1145
  store i32 %595, i32* %18, align 8, !dbg !1145, !tbaa !718
  br label %305, !dbg !1146, !llvm.loop !972

; <label>:596:                                    ; preds = %307
  %597 = load %struct.Mbuffer*, %struct.Mbuffer** %15, align 8, !dbg !1149, !tbaa !567
  %598 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %597, i64 0, i32 1, !dbg !1151
  %599 = load i64, i64* %598, align 8, !dbg !1151, !tbaa !570
  %600 = add i64 %599, 1, !dbg !1152
  %601 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %597, i64 0, i32 2, !dbg !1153
  %602 = load i64, i64* %601, align 8, !dbg !1153, !tbaa !575
  %603 = icmp ugt i64 %600, %602, !dbg !1154
  br i1 %603, label %607, label %604, !dbg !1155

; <label>:604:                                    ; preds = %596
  %605 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %597, i64 0, i32 0
  %606 = load i8*, i8** %605, align 8, !dbg !1156, !tbaa !579
  br label %635, !dbg !1155

; <label>:607:                                    ; preds = %596
  %608 = icmp ugt i64 %602, 9223372036854775805, !dbg !1157
  br i1 %608, label %609, label %618, !dbg !1158

; <label>:609:                                    ; preds = %607
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %300) #5, !dbg !1162
  %610 = load %union.TString*, %union.TString** %297, align 8, !dbg !1163, !tbaa !552
  %611 = getelementptr inbounds %union.TString, %union.TString* %610, i64 1, !dbg !1163
  %612 = bitcast %union.TString* %611 to i8*, !dbg !1163
  call void @luaO_chunkid(i8* nonnull %300, i8* nonnull %612, i64 80) #4, !dbg !1164
  %613 = load %struct.lua_State*, %struct.lua_State** %298, align 8, !dbg !1165, !tbaa !502
  %614 = load i32, i32* %299, align 4, !dbg !1166, !tbaa !556
  %615 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %613, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %300, i32 %614, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1167
  %616 = load %struct.lua_State*, %struct.lua_State** %298, align 8, !dbg !1168, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %616, i32 3) #4, !dbg !1169
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %300) #5, !dbg !1170
  %617 = load i64, i64* %601, align 8, !dbg !1171, !tbaa !575
  br label %618, !dbg !1172

; <label>:618:                                    ; preds = %609, %607
  %619 = phi i64 [ %617, %609 ], [ %602, %607 ], !dbg !1171
  %620 = shl i64 %619, 1, !dbg !1173
  %621 = icmp eq i64 %620, -2, !dbg !1175
  %622 = load %struct.lua_State*, %struct.lua_State** %298, align 8, !dbg !1175, !tbaa !502
  br i1 %621, label %627, label %623, !dbg !1175

; <label>:623:                                    ; preds = %618
  %624 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %597, i64 0, i32 0, !dbg !1175
  %625 = load i8*, i8** %624, align 8, !dbg !1175, !tbaa !579
  %626 = call i8* @luaM_realloc_(%struct.lua_State* %622, i8* %625, i64 %619, i64 %620) #4, !dbg !1175
  br label %630, !dbg !1175

; <label>:627:                                    ; preds = %618
  %628 = call i8* @luaM_toobig(%struct.lua_State* %622) #4, !dbg !1175
  %629 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %597, i64 0, i32 0, !dbg !1175
  br label %630, !dbg !1175

; <label>:630:                                    ; preds = %627, %623
  %631 = phi i8** [ %629, %627 ], [ %624, %623 ], !dbg !1175
  %632 = phi i8* [ %628, %627 ], [ %626, %623 ], !dbg !1175
  store i8* %632, i8** %631, align 8, !dbg !1175, !tbaa !579
  store i64 %620, i64* %601, align 8, !dbg !1175, !tbaa !575
  %633 = load i64, i64* %598, align 8, !dbg !1176, !tbaa !570
  %634 = add i64 %633, 1, !dbg !1176
  br label %635, !dbg !1177

; <label>:635:                                    ; preds = %630, %604
  %636 = phi i64 [ %600, %604 ], [ %634, %630 ], !dbg !1176
  %637 = phi i64 [ %599, %604 ], [ %633, %630 ], !dbg !1176
  %638 = phi i8* [ %606, %604 ], [ %632, %630 ], !dbg !1156
  %639 = trunc i32 %308 to i8, !dbg !1178
  store i64 %636, i64* %598, align 8, !dbg !1176, !tbaa !570
  %640 = getelementptr inbounds i8, i8* %638, i64 %637, !dbg !1179
  store i8 %639, i8* %640, align 1, !dbg !1180, !tbaa !403
  %641 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !1181, !tbaa !703
  %642 = getelementptr inbounds %struct.Zio, %struct.Zio* %641, i64 0, i32 0, !dbg !1181
  %643 = load i64, i64* %642, align 8, !dbg !1181, !tbaa !715
  %644 = add i64 %643, -1, !dbg !1181
  store i64 %644, i64* %642, align 8, !dbg !1181, !tbaa !715
  %645 = icmp eq i64 %643, 0, !dbg !1181
  br i1 %645, label %652, label %646, !dbg !1181

; <label>:646:                                    ; preds = %635
  %647 = getelementptr inbounds %struct.Zio, %struct.Zio* %641, i64 0, i32 1, !dbg !1181
  %648 = load i8*, i8** %647, align 8, !dbg !1181, !tbaa !717
  %649 = getelementptr inbounds i8, i8* %648, i64 1, !dbg !1181
  store i8* %649, i8** %647, align 8, !dbg !1181, !tbaa !717
  %650 = load i8, i8* %648, align 1, !dbg !1181, !tbaa !403
  %651 = zext i8 %650 to i32, !dbg !1181
  br label %654, !dbg !1181

; <label>:652:                                    ; preds = %635
  %653 = call i32 @luaZ_fill(%struct.Zio* %641) #4, !dbg !1181
  br label %654, !dbg !1181

; <label>:654:                                    ; preds = %652, %646
  %655 = phi i32 [ %651, %646 ], [ %653, %652 ], !dbg !1181
  store i32 %655, i32* %18, align 8, !dbg !1181, !tbaa !718
  br label %656, !dbg !954

; <label>:656:                                    ; preds = %654, %305
  %657 = phi i32 [ %306, %305 ], [ %655, %654 ]
  %658 = icmp eq i32 %657, %21, !dbg !953
  br i1 %658, label %659, label %307, !dbg !954, !llvm.loop !972

; <label>:659:                                    ; preds = %656, %292
  %660 = load %struct.Mbuffer*, %struct.Mbuffer** %15, align 8, !dbg !1184, !tbaa !567
  %661 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %660, i64 0, i32 1, !dbg !1186
  %662 = load i64, i64* %661, align 8, !dbg !1186, !tbaa !570
  %663 = add i64 %662, 1, !dbg !1187
  %664 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %660, i64 0, i32 2, !dbg !1188
  %665 = load i64, i64* %664, align 8, !dbg !1188, !tbaa !575
  %666 = icmp ugt i64 %663, %665, !dbg !1189
  br i1 %666, label %670, label %667, !dbg !1190

; <label>:667:                                    ; preds = %659
  %668 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %660, i64 0, i32 0
  %669 = load i8*, i8** %668, align 8, !dbg !1191, !tbaa !579
  br label %705, !dbg !1190

; <label>:670:                                    ; preds = %659
  %671 = icmp ugt i64 %665, 9223372036854775805, !dbg !1192
  br i1 %671, label %674, label %672, !dbg !1193

; <label>:672:                                    ; preds = %670
  %673 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1194
  br label %687, !dbg !1193

; <label>:674:                                    ; preds = %670
  %675 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0, !dbg !1198
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %675) #5, !dbg !1198
  %676 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9, !dbg !1199
  %677 = load %union.TString*, %union.TString** %676, align 8, !dbg !1199, !tbaa !552
  %678 = getelementptr inbounds %union.TString, %union.TString* %677, i64 1, !dbg !1199
  %679 = bitcast %union.TString* %678 to i8*, !dbg !1199
  call void @luaO_chunkid(i8* nonnull %675, i8* nonnull %679, i64 80) #4, !dbg !1200
  %680 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1201
  %681 = load %struct.lua_State*, %struct.lua_State** %680, align 8, !dbg !1201, !tbaa !502
  %682 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !1202
  %683 = load i32, i32* %682, align 4, !dbg !1202, !tbaa !556
  %684 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %681, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %675, i32 %683, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1203
  %685 = load %struct.lua_State*, %struct.lua_State** %680, align 8, !dbg !1204, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %685, i32 3) #4, !dbg !1205
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %675) #5, !dbg !1206
  %686 = load i64, i64* %664, align 8, !dbg !1207, !tbaa !575
  br label %687, !dbg !1208

; <label>:687:                                    ; preds = %674, %672
  %688 = phi %struct.lua_State** [ %673, %672 ], [ %680, %674 ], !dbg !1194
  %689 = phi i64 [ %665, %672 ], [ %686, %674 ], !dbg !1207
  %690 = shl i64 %689, 1, !dbg !1209
  %691 = icmp eq i64 %690, -2, !dbg !1194
  %692 = load %struct.lua_State*, %struct.lua_State** %688, align 8, !dbg !1194, !tbaa !502
  br i1 %691, label %697, label %693, !dbg !1194

; <label>:693:                                    ; preds = %687
  %694 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %660, i64 0, i32 0, !dbg !1194
  %695 = load i8*, i8** %694, align 8, !dbg !1194, !tbaa !579
  %696 = call i8* @luaM_realloc_(%struct.lua_State* %692, i8* %695, i64 %689, i64 %690) #4, !dbg !1194
  br label %700, !dbg !1194

; <label>:697:                                    ; preds = %687
  %698 = call i8* @luaM_toobig(%struct.lua_State* %692) #4, !dbg !1194
  %699 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %660, i64 0, i32 0, !dbg !1194
  br label %700, !dbg !1194

; <label>:700:                                    ; preds = %697, %693
  %701 = phi i8** [ %699, %697 ], [ %694, %693 ], !dbg !1194
  %702 = phi i8* [ %698, %697 ], [ %696, %693 ], !dbg !1194
  store i8* %702, i8** %701, align 8, !dbg !1194, !tbaa !579
  store i64 %690, i64* %664, align 8, !dbg !1194, !tbaa !575
  %703 = load i64, i64* %661, align 8, !dbg !1211, !tbaa !570
  %704 = add i64 %703, 1, !dbg !1211
  br label %705, !dbg !1212

; <label>:705:                                    ; preds = %700, %667
  %706 = phi i64 [ %663, %667 ], [ %704, %700 ], !dbg !1211
  %707 = phi i64 [ %662, %667 ], [ %703, %700 ], !dbg !1211
  %708 = phi i8* [ %669, %667 ], [ %702, %700 ], !dbg !1191
  store i64 %706, i64* %661, align 8, !dbg !1211, !tbaa !570
  %709 = getelementptr inbounds i8, i8* %708, i64 %707, !dbg !1213
  store i8 %277, i8* %709, align 1, !dbg !1214, !tbaa !403
  %710 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !1215, !tbaa !703
  %711 = getelementptr inbounds %struct.Zio, %struct.Zio* %710, i64 0, i32 0, !dbg !1215
  %712 = load i64, i64* %711, align 8, !dbg !1215, !tbaa !715
  %713 = add i64 %712, -1, !dbg !1215
  store i64 %713, i64* %711, align 8, !dbg !1215, !tbaa !715
  %714 = icmp eq i64 %712, 0, !dbg !1215
  br i1 %714, label %721, label %715, !dbg !1215

; <label>:715:                                    ; preds = %705
  %716 = getelementptr inbounds %struct.Zio, %struct.Zio* %710, i64 0, i32 1, !dbg !1215
  %717 = load i8*, i8** %716, align 8, !dbg !1215, !tbaa !717
  %718 = getelementptr inbounds i8, i8* %717, i64 1, !dbg !1215
  store i8* %718, i8** %716, align 8, !dbg !1215, !tbaa !717
  %719 = load i8, i8* %717, align 1, !dbg !1215, !tbaa !403
  %720 = zext i8 %719 to i32, !dbg !1215
  br label %723, !dbg !1215

; <label>:721:                                    ; preds = %705
  %722 = call i32 @luaZ_fill(%struct.Zio* %710) #4, !dbg !1215
  br label %723, !dbg !1215

; <label>:723:                                    ; preds = %721, %715
  %724 = phi i32 [ %720, %715 ], [ %722, %721 ], !dbg !1215
  store i32 %724, i32* %18, align 8, !dbg !1215, !tbaa !718
  %725 = load %struct.Mbuffer*, %struct.Mbuffer** %15, align 8, !dbg !1216, !tbaa !567
  %726 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %725, i64 0, i32 0, !dbg !1216
  %727 = load i8*, i8** %726, align 8, !dbg !1216, !tbaa !579
  %728 = getelementptr inbounds i8, i8* %727, i64 1, !dbg !1217
  %729 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %725, i64 0, i32 1, !dbg !1218
  %730 = load i64, i64* %729, align 8, !dbg !1218, !tbaa !570
  %731 = add i64 %730, -2, !dbg !1219
  %732 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1224
  %733 = load %struct.lua_State*, %struct.lua_State** %732, align 8, !dbg !1224, !tbaa !502
  %734 = call %union.TString* @luaS_newlstr(%struct.lua_State* %733, i8* nonnull %728, i64 %731) #4, !dbg !1226
  %735 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1228
  %736 = load %struct.FuncState*, %struct.FuncState** %735, align 8, !dbg !1228, !tbaa !657
  %737 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %736, i64 0, i32 1, !dbg !1229
  %738 = load %struct.Table*, %struct.Table** %737, align 8, !dbg !1229, !tbaa !659
  %739 = call %struct.lua_TValue* @luaH_setstr(%struct.lua_State* %733, %struct.Table* %738, %union.TString* %734) #4, !dbg !1230
  %740 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %739, i64 0, i32 1, !dbg !1232
  %741 = load i32, i32* %740, align 8, !dbg !1232, !tbaa !665
  %742 = icmp eq i32 %741, 0, !dbg !1232
  br i1 %742, label %743, label %753, !dbg !1233

; <label>:743:                                    ; preds = %723
  %744 = bitcast %struct.lua_TValue* %739 to i32*, !dbg !1234
  store i32 1, i32* %744, align 8, !dbg !1234, !tbaa !403
  store i32 1, i32* %740, align 8, !dbg !1234, !tbaa !665
  %745 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %733, i64 0, i32 6, !dbg !1235
  %746 = load %struct.global_State*, %struct.global_State** %745, align 8, !dbg !1235, !tbaa !672
  %747 = getelementptr inbounds %struct.global_State, %struct.global_State* %746, i64 0, i32 14, !dbg !1235
  %748 = load i64, i64* %747, align 8, !dbg !1235, !tbaa !674
  %749 = getelementptr inbounds %struct.global_State, %struct.global_State* %746, i64 0, i32 13, !dbg !1235
  %750 = load i64, i64* %749, align 8, !dbg !1235, !tbaa !678
  %751 = icmp ult i64 %748, %750, !dbg !1235
  br i1 %751, label %753, label %752, !dbg !1236

; <label>:752:                                    ; preds = %743
  call void @luaC_step(%struct.lua_State* nonnull %733) #4, !dbg !1235
  br label %753, !dbg !1235

; <label>:753:                                    ; preds = %723, %743, %752
  %754 = bitcast %union.SemInfo* %1 to %union.TString**, !dbg !1237
  store %union.TString* %734, %union.TString** %754, align 8, !dbg !1238, !tbaa !403
  br label %1144, !dbg !1239

; <label>:755:                                    ; preds = %20
  %756 = load %struct.Mbuffer*, %struct.Mbuffer** %15, align 8, !dbg !1242, !tbaa !567
  %757 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %756, i64 0, i32 1, !dbg !1244
  %758 = load i64, i64* %757, align 8, !dbg !1244, !tbaa !570
  %759 = add i64 %758, 1, !dbg !1245
  %760 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %756, i64 0, i32 2, !dbg !1246
  %761 = load i64, i64* %760, align 8, !dbg !1246, !tbaa !575
  %762 = icmp ugt i64 %759, %761, !dbg !1247
  br i1 %762, label %766, label %763, !dbg !1248

; <label>:763:                                    ; preds = %755
  %764 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %756, i64 0, i32 0
  %765 = load i8*, i8** %764, align 8, !dbg !1249, !tbaa !579
  br label %801, !dbg !1248

; <label>:766:                                    ; preds = %755
  %767 = icmp ugt i64 %761, 9223372036854775805, !dbg !1250
  br i1 %767, label %770, label %768, !dbg !1251

; <label>:768:                                    ; preds = %766
  %769 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1252
  br label %783, !dbg !1251

; <label>:770:                                    ; preds = %766
  %771 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0, !dbg !1256
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %771) #5, !dbg !1256
  %772 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9, !dbg !1257
  %773 = load %union.TString*, %union.TString** %772, align 8, !dbg !1257, !tbaa !552
  %774 = getelementptr inbounds %union.TString, %union.TString* %773, i64 1, !dbg !1257
  %775 = bitcast %union.TString* %774 to i8*, !dbg !1257
  call void @luaO_chunkid(i8* nonnull %771, i8* nonnull %775, i64 80) #4, !dbg !1258
  %776 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1259
  %777 = load %struct.lua_State*, %struct.lua_State** %776, align 8, !dbg !1259, !tbaa !502
  %778 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !1260
  %779 = load i32, i32* %778, align 4, !dbg !1260, !tbaa !556
  %780 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %777, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %771, i32 %779, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1261
  %781 = load %struct.lua_State*, %struct.lua_State** %776, align 8, !dbg !1262, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %781, i32 3) #4, !dbg !1263
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %771) #5, !dbg !1264
  %782 = load i64, i64* %760, align 8, !dbg !1265, !tbaa !575
  br label %783, !dbg !1266

; <label>:783:                                    ; preds = %768, %770
  %784 = phi %struct.lua_State** [ %769, %768 ], [ %776, %770 ], !dbg !1252
  %785 = phi i64 [ %761, %768 ], [ %782, %770 ], !dbg !1265
  %786 = shl i64 %785, 1, !dbg !1267
  %787 = icmp eq i64 %786, -2, !dbg !1252
  %788 = load %struct.lua_State*, %struct.lua_State** %784, align 8, !dbg !1252, !tbaa !502
  br i1 %787, label %793, label %789, !dbg !1252

; <label>:789:                                    ; preds = %783
  %790 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %756, i64 0, i32 0, !dbg !1252
  %791 = load i8*, i8** %790, align 8, !dbg !1252, !tbaa !579
  %792 = call i8* @luaM_realloc_(%struct.lua_State* %788, i8* %791, i64 %785, i64 %786) #4, !dbg !1252
  br label %796, !dbg !1252

; <label>:793:                                    ; preds = %783
  %794 = call i8* @luaM_toobig(%struct.lua_State* %788) #4, !dbg !1252
  %795 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %756, i64 0, i32 0, !dbg !1252
  br label %796, !dbg !1252

; <label>:796:                                    ; preds = %793, %789
  %797 = phi i8** [ %795, %793 ], [ %790, %789 ], !dbg !1252
  %798 = phi i8* [ %794, %793 ], [ %792, %789 ], !dbg !1252
  store i8* %798, i8** %797, align 8, !dbg !1252, !tbaa !579
  store i64 %786, i64* %760, align 8, !dbg !1252, !tbaa !575
  %799 = load i64, i64* %757, align 8, !dbg !1269, !tbaa !570
  %800 = add i64 %799, 1, !dbg !1269
  br label %801, !dbg !1270

; <label>:801:                                    ; preds = %763, %796
  %802 = phi i64 [ %759, %763 ], [ %800, %796 ], !dbg !1269
  %803 = phi i64 [ %758, %763 ], [ %799, %796 ], !dbg !1269
  %804 = phi i8* [ %765, %763 ], [ %798, %796 ], !dbg !1249
  store i64 %802, i64* %757, align 8, !dbg !1269, !tbaa !570
  %805 = getelementptr inbounds i8, i8* %804, i64 %803, !dbg !1271
  store i8 46, i8* %805, align 1, !dbg !1272, !tbaa !403
  %806 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !1273, !tbaa !703
  %807 = getelementptr inbounds %struct.Zio, %struct.Zio* %806, i64 0, i32 0, !dbg !1273
  %808 = load i64, i64* %807, align 8, !dbg !1273, !tbaa !715
  %809 = add i64 %808, -1, !dbg !1273
  store i64 %809, i64* %807, align 8, !dbg !1273, !tbaa !715
  %810 = icmp eq i64 %808, 0, !dbg !1273
  br i1 %810, label %817, label %811, !dbg !1273

; <label>:811:                                    ; preds = %801
  %812 = getelementptr inbounds %struct.Zio, %struct.Zio* %806, i64 0, i32 1, !dbg !1273
  %813 = load i8*, i8** %812, align 8, !dbg !1273, !tbaa !717
  %814 = getelementptr inbounds i8, i8* %813, i64 1, !dbg !1273
  store i8* %814, i8** %812, align 8, !dbg !1273, !tbaa !717
  %815 = load i8, i8* %813, align 1, !dbg !1273, !tbaa !403
  %816 = zext i8 %815 to i32, !dbg !1273
  br label %819, !dbg !1273

; <label>:817:                                    ; preds = %801
  %818 = call i32 @luaZ_fill(%struct.Zio* %806) #4, !dbg !1273
  br label %819, !dbg !1273

; <label>:819:                                    ; preds = %817, %811
  %820 = phi i32 [ %816, %811 ], [ %818, %817 ], !dbg !1273
  store i32 %820, i32* %18, align 8, !dbg !1273, !tbaa !718
  %821 = call i8* @strchr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), i32 %820) #4, !dbg !1276
  %822 = icmp eq i8* %821, null, !dbg !1276
  br i1 %822, label %961, label %823, !dbg !1278

; <label>:823:                                    ; preds = %819
  %824 = load i32, i32* %18, align 8, !dbg !1279, !tbaa !718
  %825 = load %struct.Mbuffer*, %struct.Mbuffer** %15, align 8, !dbg !1282, !tbaa !567
  %826 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %825, i64 0, i32 1, !dbg !1284
  %827 = load i64, i64* %826, align 8, !dbg !1284, !tbaa !570
  %828 = add i64 %827, 1, !dbg !1285
  %829 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %825, i64 0, i32 2, !dbg !1286
  %830 = load i64, i64* %829, align 8, !dbg !1286, !tbaa !575
  %831 = icmp ugt i64 %828, %830, !dbg !1287
  br i1 %831, label %835, label %832, !dbg !1288

; <label>:832:                                    ; preds = %823
  %833 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %825, i64 0, i32 0
  %834 = load i8*, i8** %833, align 8, !dbg !1289, !tbaa !579
  br label %870, !dbg !1288

; <label>:835:                                    ; preds = %823
  %836 = icmp ugt i64 %830, 9223372036854775805, !dbg !1290
  br i1 %836, label %839, label %837, !dbg !1291

; <label>:837:                                    ; preds = %835
  %838 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1292
  br label %852, !dbg !1291

; <label>:839:                                    ; preds = %835
  %840 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0, !dbg !1296
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %840) #5, !dbg !1296
  %841 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9, !dbg !1297
  %842 = load %union.TString*, %union.TString** %841, align 8, !dbg !1297, !tbaa !552
  %843 = getelementptr inbounds %union.TString, %union.TString* %842, i64 1, !dbg !1297
  %844 = bitcast %union.TString* %843 to i8*, !dbg !1297
  call void @luaO_chunkid(i8* nonnull %840, i8* nonnull %844, i64 80) #4, !dbg !1298
  %845 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1299
  %846 = load %struct.lua_State*, %struct.lua_State** %845, align 8, !dbg !1299, !tbaa !502
  %847 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !1300
  %848 = load i32, i32* %847, align 4, !dbg !1300, !tbaa !556
  %849 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %846, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %840, i32 %848, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1301
  %850 = load %struct.lua_State*, %struct.lua_State** %845, align 8, !dbg !1302, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %850, i32 3) #4, !dbg !1303
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %840) #5, !dbg !1304
  %851 = load i64, i64* %829, align 8, !dbg !1305, !tbaa !575
  br label %852, !dbg !1306

; <label>:852:                                    ; preds = %837, %839
  %853 = phi %struct.lua_State** [ %838, %837 ], [ %845, %839 ], !dbg !1292
  %854 = phi i64 [ %830, %837 ], [ %851, %839 ], !dbg !1305
  %855 = shl i64 %854, 1, !dbg !1307
  %856 = icmp eq i64 %855, -2, !dbg !1292
  %857 = load %struct.lua_State*, %struct.lua_State** %853, align 8, !dbg !1292, !tbaa !502
  br i1 %856, label %862, label %858, !dbg !1292

; <label>:858:                                    ; preds = %852
  %859 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %825, i64 0, i32 0, !dbg !1292
  %860 = load i8*, i8** %859, align 8, !dbg !1292, !tbaa !579
  %861 = call i8* @luaM_realloc_(%struct.lua_State* %857, i8* %860, i64 %854, i64 %855) #4, !dbg !1292
  br label %865, !dbg !1292

; <label>:862:                                    ; preds = %852
  %863 = call i8* @luaM_toobig(%struct.lua_State* %857) #4, !dbg !1292
  %864 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %825, i64 0, i32 0, !dbg !1292
  br label %865, !dbg !1292

; <label>:865:                                    ; preds = %862, %858
  %866 = phi i8** [ %864, %862 ], [ %859, %858 ], !dbg !1292
  %867 = phi i8* [ %863, %862 ], [ %861, %858 ], !dbg !1292
  store i8* %867, i8** %866, align 8, !dbg !1292, !tbaa !579
  store i64 %855, i64* %829, align 8, !dbg !1292, !tbaa !575
  %868 = load i64, i64* %826, align 8, !dbg !1309, !tbaa !570
  %869 = add i64 %868, 1, !dbg !1309
  br label %870, !dbg !1310

; <label>:870:                                    ; preds = %832, %865
  %871 = phi i64 [ %828, %832 ], [ %869, %865 ], !dbg !1309
  %872 = phi i64 [ %827, %832 ], [ %868, %865 ], !dbg !1309
  %873 = phi i8* [ %834, %832 ], [ %867, %865 ], !dbg !1289
  %874 = trunc i32 %824 to i8, !dbg !1311
  store i64 %871, i64* %826, align 8, !dbg !1309, !tbaa !570
  %875 = getelementptr inbounds i8, i8* %873, i64 %872, !dbg !1312
  store i8 %874, i8* %875, align 1, !dbg !1313, !tbaa !403
  %876 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !1279, !tbaa !703
  %877 = getelementptr inbounds %struct.Zio, %struct.Zio* %876, i64 0, i32 0, !dbg !1279
  %878 = load i64, i64* %877, align 8, !dbg !1279, !tbaa !715
  %879 = add i64 %878, -1, !dbg !1279
  store i64 %879, i64* %877, align 8, !dbg !1279, !tbaa !715
  %880 = icmp eq i64 %878, 0, !dbg !1279
  br i1 %880, label %887, label %881, !dbg !1279

; <label>:881:                                    ; preds = %870
  %882 = getelementptr inbounds %struct.Zio, %struct.Zio* %876, i64 0, i32 1, !dbg !1279
  %883 = load i8*, i8** %882, align 8, !dbg !1279, !tbaa !717
  %884 = getelementptr inbounds i8, i8* %883, i64 1, !dbg !1279
  store i8* %884, i8** %882, align 8, !dbg !1279, !tbaa !717
  %885 = load i8, i8* %883, align 1, !dbg !1279, !tbaa !403
  %886 = zext i8 %885 to i32, !dbg !1279
  br label %889, !dbg !1279

; <label>:887:                                    ; preds = %870
  %888 = call i32 @luaZ_fill(%struct.Zio* %876) #4, !dbg !1279
  br label %889, !dbg !1279

; <label>:889:                                    ; preds = %887, %881
  %890 = phi i32 [ %886, %881 ], [ %888, %887 ], !dbg !1279
  store i32 %890, i32* %18, align 8, !dbg !1279, !tbaa !718
  %891 = call i8* @strchr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), i32 %890) #4, !dbg !1316
  %892 = icmp eq i8* %891, null, !dbg !1316
  br i1 %892, label %1144, label %893, !dbg !1317

; <label>:893:                                    ; preds = %889
  %894 = load i32, i32* %18, align 8, !dbg !1318, !tbaa !718
  %895 = load %struct.Mbuffer*, %struct.Mbuffer** %15, align 8, !dbg !1321, !tbaa !567
  %896 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %895, i64 0, i32 1, !dbg !1323
  %897 = load i64, i64* %896, align 8, !dbg !1323, !tbaa !570
  %898 = add i64 %897, 1, !dbg !1324
  %899 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %895, i64 0, i32 2, !dbg !1325
  %900 = load i64, i64* %899, align 8, !dbg !1325, !tbaa !575
  %901 = icmp ugt i64 %898, %900, !dbg !1326
  br i1 %901, label %905, label %902, !dbg !1327

; <label>:902:                                    ; preds = %893
  %903 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %895, i64 0, i32 0
  %904 = load i8*, i8** %903, align 8, !dbg !1328, !tbaa !579
  br label %940, !dbg !1327

; <label>:905:                                    ; preds = %893
  %906 = icmp ugt i64 %900, 9223372036854775805, !dbg !1329
  br i1 %906, label %909, label %907, !dbg !1330

; <label>:907:                                    ; preds = %905
  %908 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1331
  br label %922, !dbg !1330

; <label>:909:                                    ; preds = %905
  %910 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0, !dbg !1335
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %910) #5, !dbg !1335
  %911 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9, !dbg !1336
  %912 = load %union.TString*, %union.TString** %911, align 8, !dbg !1336, !tbaa !552
  %913 = getelementptr inbounds %union.TString, %union.TString* %912, i64 1, !dbg !1336
  %914 = bitcast %union.TString* %913 to i8*, !dbg !1336
  call void @luaO_chunkid(i8* nonnull %910, i8* nonnull %914, i64 80) #4, !dbg !1337
  %915 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1338
  %916 = load %struct.lua_State*, %struct.lua_State** %915, align 8, !dbg !1338, !tbaa !502
  %917 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !1339
  %918 = load i32, i32* %917, align 4, !dbg !1339, !tbaa !556
  %919 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %916, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %910, i32 %918, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1340
  %920 = load %struct.lua_State*, %struct.lua_State** %915, align 8, !dbg !1341, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %920, i32 3) #4, !dbg !1342
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %910) #5, !dbg !1343
  %921 = load i64, i64* %899, align 8, !dbg !1344, !tbaa !575
  br label %922, !dbg !1345

; <label>:922:                                    ; preds = %907, %909
  %923 = phi %struct.lua_State** [ %908, %907 ], [ %915, %909 ], !dbg !1331
  %924 = phi i64 [ %900, %907 ], [ %921, %909 ], !dbg !1344
  %925 = shl i64 %924, 1, !dbg !1346
  %926 = icmp eq i64 %925, -2, !dbg !1331
  %927 = load %struct.lua_State*, %struct.lua_State** %923, align 8, !dbg !1331, !tbaa !502
  br i1 %926, label %932, label %928, !dbg !1331

; <label>:928:                                    ; preds = %922
  %929 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %895, i64 0, i32 0, !dbg !1331
  %930 = load i8*, i8** %929, align 8, !dbg !1331, !tbaa !579
  %931 = call i8* @luaM_realloc_(%struct.lua_State* %927, i8* %930, i64 %924, i64 %925) #4, !dbg !1331
  br label %935, !dbg !1331

; <label>:932:                                    ; preds = %922
  %933 = call i8* @luaM_toobig(%struct.lua_State* %927) #4, !dbg !1331
  %934 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %895, i64 0, i32 0, !dbg !1331
  br label %935, !dbg !1331

; <label>:935:                                    ; preds = %932, %928
  %936 = phi i8** [ %934, %932 ], [ %929, %928 ], !dbg !1331
  %937 = phi i8* [ %933, %932 ], [ %931, %928 ], !dbg !1331
  store i8* %937, i8** %936, align 8, !dbg !1331, !tbaa !579
  store i64 %925, i64* %899, align 8, !dbg !1331, !tbaa !575
  %938 = load i64, i64* %896, align 8, !dbg !1348, !tbaa !570
  %939 = add i64 %938, 1, !dbg !1348
  br label %940, !dbg !1349

; <label>:940:                                    ; preds = %902, %935
  %941 = phi i64 [ %898, %902 ], [ %939, %935 ], !dbg !1348
  %942 = phi i64 [ %897, %902 ], [ %938, %935 ], !dbg !1348
  %943 = phi i8* [ %904, %902 ], [ %937, %935 ], !dbg !1328
  %944 = trunc i32 %894 to i8, !dbg !1350
  store i64 %941, i64* %896, align 8, !dbg !1348, !tbaa !570
  %945 = getelementptr inbounds i8, i8* %943, i64 %942, !dbg !1351
  store i8 %944, i8* %945, align 1, !dbg !1352, !tbaa !403
  %946 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !1318, !tbaa !703
  %947 = getelementptr inbounds %struct.Zio, %struct.Zio* %946, i64 0, i32 0, !dbg !1318
  %948 = load i64, i64* %947, align 8, !dbg !1318, !tbaa !715
  %949 = add i64 %948, -1, !dbg !1318
  store i64 %949, i64* %947, align 8, !dbg !1318, !tbaa !715
  %950 = icmp eq i64 %948, 0, !dbg !1318
  br i1 %950, label %957, label %951, !dbg !1318

; <label>:951:                                    ; preds = %940
  %952 = getelementptr inbounds %struct.Zio, %struct.Zio* %946, i64 0, i32 1, !dbg !1318
  %953 = load i8*, i8** %952, align 8, !dbg !1318, !tbaa !717
  %954 = getelementptr inbounds i8, i8* %953, i64 1, !dbg !1318
  store i8* %954, i8** %952, align 8, !dbg !1318, !tbaa !717
  %955 = load i8, i8* %953, align 1, !dbg !1318, !tbaa !403
  %956 = zext i8 %955 to i32, !dbg !1318
  br label %959, !dbg !1318

; <label>:957:                                    ; preds = %940
  %958 = call i32 @luaZ_fill(%struct.Zio* %946) #4, !dbg !1318
  br label %959, !dbg !1318

; <label>:959:                                    ; preds = %951, %957
  %960 = phi i32 [ %956, %951 ], [ %958, %957 ], !dbg !1318
  store i32 %960, i32* %18, align 8, !dbg !1318, !tbaa !718
  br label %1144, !dbg !1353

; <label>:961:                                    ; preds = %819
  %962 = call i8* @__locale_ctype_ptr() #4, !dbg !1354
  %963 = getelementptr inbounds i8, i8* %962, i64 1, !dbg !1354
  %964 = load i32, i32* %18, align 8, !dbg !1354, !tbaa !718
  %965 = sext i32 %964 to i64, !dbg !1354
  %966 = getelementptr inbounds i8, i8* %963, i64 %965, !dbg !1354
  %967 = load i8, i8* %966, align 1, !dbg !1354, !tbaa !403
  %968 = and i8 %967, 4, !dbg !1354
  %969 = icmp eq i8 %968, 0, !dbg !1354
  br i1 %969, label %1144, label %970, !dbg !1356

; <label>:970:                                    ; preds = %961
  call fastcc void @read_numeral(%struct.LexState* nonnull %0, %union.SemInfo* %1) #6, !dbg !1357
  br label %1144, !dbg !1359

; <label>:971:                                    ; preds = %20
  %972 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1360
  %973 = getelementptr inbounds i8, i8* %972, i64 1, !dbg !1360
  %974 = load i32, i32* %18, align 8, !dbg !1360, !tbaa !718
  %975 = sext i32 %974 to i64, !dbg !1360
  %976 = getelementptr inbounds i8, i8* %973, i64 %975, !dbg !1360
  %977 = load i8, i8* %976, align 1, !dbg !1360, !tbaa !403
  %978 = and i8 %977, 8, !dbg !1360
  %979 = icmp eq i8 %978, 0, !dbg !1360
  br i1 %979, label %996, label %980, !dbg !1361

; <label>:980:                                    ; preds = %971
  %981 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !1362, !tbaa !703
  %982 = getelementptr inbounds %struct.Zio, %struct.Zio* %981, i64 0, i32 0, !dbg !1362
  %983 = load i64, i64* %982, align 8, !dbg !1362, !tbaa !715
  %984 = add i64 %983, -1, !dbg !1362
  store i64 %984, i64* %982, align 8, !dbg !1362, !tbaa !715
  %985 = icmp eq i64 %983, 0, !dbg !1362
  br i1 %985, label %992, label %986, !dbg !1362

; <label>:986:                                    ; preds = %980
  %987 = getelementptr inbounds %struct.Zio, %struct.Zio* %981, i64 0, i32 1, !dbg !1362
  %988 = load i8*, i8** %987, align 8, !dbg !1362, !tbaa !717
  %989 = getelementptr inbounds i8, i8* %988, i64 1, !dbg !1362
  store i8* %989, i8** %987, align 8, !dbg !1362, !tbaa !717
  %990 = load i8, i8* %988, align 1, !dbg !1362, !tbaa !403
  %991 = zext i8 %990 to i32, !dbg !1362
  br label %994, !dbg !1362

; <label>:992:                                    ; preds = %980
  %993 = tail call i32 @luaZ_fill(%struct.Zio* %981) #4, !dbg !1362
  br label %994, !dbg !1362

; <label>:994:                                    ; preds = %992, %986
  %995 = phi i32 [ %991, %986 ], [ %993, %992 ], !dbg !1362
  store i32 %995, i32* %18, align 8, !dbg !1362, !tbaa !718
  br label %23, !dbg !1364

; <label>:996:                                    ; preds = %971
  %997 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1365
  %998 = getelementptr inbounds i8, i8* %997, i64 1, !dbg !1365
  %999 = load i32, i32* %18, align 8, !dbg !1365, !tbaa !718
  %1000 = sext i32 %999 to i64, !dbg !1365
  %1001 = getelementptr inbounds i8, i8* %998, i64 %1000, !dbg !1365
  %1002 = load i8, i8* %1001, align 1, !dbg !1365, !tbaa !403
  %1003 = and i8 %1002, 4, !dbg !1365
  %1004 = icmp eq i8 %1003, 0, !dbg !1365
  br i1 %1004, label %1006, label %1005, !dbg !1366

; <label>:1005:                                   ; preds = %996
  tail call fastcc void @read_numeral(%struct.LexState* nonnull %0, %union.SemInfo* %1) #6, !dbg !1367
  br label %1144, !dbg !1369

; <label>:1006:                                   ; preds = %996
  %1007 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1370
  %1008 = getelementptr inbounds i8, i8* %1007, i64 1, !dbg !1370
  %1009 = load i32, i32* %18, align 8, !dbg !1370, !tbaa !718
  %1010 = sext i32 %1009 to i64, !dbg !1370
  %1011 = getelementptr inbounds i8, i8* %1008, i64 %1010, !dbg !1370
  %1012 = load i8, i8* %1011, align 1, !dbg !1370, !tbaa !403
  %1013 = and i8 %1012, 3, !dbg !1370
  %1014 = icmp ne i8 %1013, 0, !dbg !1370
  %1015 = icmp eq i32 %1009, 95, !dbg !1371
  %1016 = or i1 %1015, %1014, !dbg !1372
  br i1 %1016, label %1017, label %1128, !dbg !1372

; <label>:1017:                                   ; preds = %1006
  %1018 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %1019 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9
  %1020 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %1021 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  br label %1022, !dbg !1373

; <label>:1022:                                   ; preds = %1017, %1081
  %1023 = phi i32 [ %1009, %1017 ], [ %1085, %1081 ], !dbg !1373
  %1024 = load %struct.Mbuffer*, %struct.Mbuffer** %15, align 8, !dbg !1376, !tbaa !567
  %1025 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1024, i64 0, i32 1, !dbg !1378
  %1026 = load i64, i64* %1025, align 8, !dbg !1378, !tbaa !570
  %1027 = add i64 %1026, 1, !dbg !1379
  %1028 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1024, i64 0, i32 2, !dbg !1380
  %1029 = load i64, i64* %1028, align 8, !dbg !1380, !tbaa !575
  %1030 = icmp ugt i64 %1027, %1029, !dbg !1381
  br i1 %1030, label %1034, label %1031, !dbg !1382

; <label>:1031:                                   ; preds = %1022
  %1032 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1024, i64 0, i32 0
  %1033 = load i8*, i8** %1032, align 8, !dbg !1383, !tbaa !579
  br label %1062, !dbg !1382

; <label>:1034:                                   ; preds = %1022
  %1035 = icmp ugt i64 %1029, 9223372036854775805, !dbg !1384
  br i1 %1035, label %1036, label %1045, !dbg !1385

; <label>:1036:                                   ; preds = %1034
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1018) #5, !dbg !1389
  %1037 = load %union.TString*, %union.TString** %1019, align 8, !dbg !1390, !tbaa !552
  %1038 = getelementptr inbounds %union.TString, %union.TString* %1037, i64 1, !dbg !1390
  %1039 = bitcast %union.TString* %1038 to i8*, !dbg !1390
  call void @luaO_chunkid(i8* nonnull %1018, i8* nonnull %1039, i64 80) #4, !dbg !1391
  %1040 = load %struct.lua_State*, %struct.lua_State** %1020, align 8, !dbg !1392, !tbaa !502
  %1041 = load i32, i32* %1021, align 4, !dbg !1393, !tbaa !556
  %1042 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %1040, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %1018, i32 %1041, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1394
  %1043 = load %struct.lua_State*, %struct.lua_State** %1020, align 8, !dbg !1395, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %1043, i32 3) #4, !dbg !1396
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1018) #5, !dbg !1397
  %1044 = load i64, i64* %1028, align 8, !dbg !1398, !tbaa !575
  br label %1045, !dbg !1399

; <label>:1045:                                   ; preds = %1036, %1034
  %1046 = phi i64 [ %1044, %1036 ], [ %1029, %1034 ], !dbg !1398
  %1047 = shl i64 %1046, 1, !dbg !1400
  %1048 = icmp eq i64 %1047, -2, !dbg !1402
  %1049 = load %struct.lua_State*, %struct.lua_State** %1020, align 8, !dbg !1402, !tbaa !502
  br i1 %1048, label %1054, label %1050, !dbg !1402

; <label>:1050:                                   ; preds = %1045
  %1051 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1024, i64 0, i32 0, !dbg !1402
  %1052 = load i8*, i8** %1051, align 8, !dbg !1402, !tbaa !579
  %1053 = call i8* @luaM_realloc_(%struct.lua_State* %1049, i8* %1052, i64 %1046, i64 %1047) #4, !dbg !1402
  br label %1057, !dbg !1402

; <label>:1054:                                   ; preds = %1045
  %1055 = call i8* @luaM_toobig(%struct.lua_State* %1049) #4, !dbg !1402
  %1056 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1024, i64 0, i32 0, !dbg !1402
  br label %1057, !dbg !1402

; <label>:1057:                                   ; preds = %1054, %1050
  %1058 = phi i8** [ %1056, %1054 ], [ %1051, %1050 ], !dbg !1402
  %1059 = phi i8* [ %1055, %1054 ], [ %1053, %1050 ], !dbg !1402
  store i8* %1059, i8** %1058, align 8, !dbg !1402, !tbaa !579
  store i64 %1047, i64* %1028, align 8, !dbg !1402, !tbaa !575
  %1060 = load i64, i64* %1025, align 8, !dbg !1403, !tbaa !570
  %1061 = add i64 %1060, 1, !dbg !1403
  br label %1062, !dbg !1404

; <label>:1062:                                   ; preds = %1031, %1057
  %1063 = phi i64 [ %1027, %1031 ], [ %1061, %1057 ], !dbg !1403
  %1064 = phi i64 [ %1026, %1031 ], [ %1060, %1057 ], !dbg !1403
  %1065 = phi i8* [ %1033, %1031 ], [ %1059, %1057 ], !dbg !1383
  %1066 = trunc i32 %1023 to i8, !dbg !1405
  store i64 %1063, i64* %1025, align 8, !dbg !1403, !tbaa !570
  %1067 = getelementptr inbounds i8, i8* %1065, i64 %1064, !dbg !1406
  store i8 %1066, i8* %1067, align 1, !dbg !1407, !tbaa !403
  %1068 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !1373, !tbaa !703
  %1069 = getelementptr inbounds %struct.Zio, %struct.Zio* %1068, i64 0, i32 0, !dbg !1373
  %1070 = load i64, i64* %1069, align 8, !dbg !1373, !tbaa !715
  %1071 = add i64 %1070, -1, !dbg !1373
  store i64 %1071, i64* %1069, align 8, !dbg !1373, !tbaa !715
  %1072 = icmp eq i64 %1070, 0, !dbg !1373
  br i1 %1072, label %1079, label %1073, !dbg !1373

; <label>:1073:                                   ; preds = %1062
  %1074 = getelementptr inbounds %struct.Zio, %struct.Zio* %1068, i64 0, i32 1, !dbg !1373
  %1075 = load i8*, i8** %1074, align 8, !dbg !1373, !tbaa !717
  %1076 = getelementptr inbounds i8, i8* %1075, i64 1, !dbg !1373
  store i8* %1076, i8** %1074, align 8, !dbg !1373, !tbaa !717
  %1077 = load i8, i8* %1075, align 1, !dbg !1373, !tbaa !403
  %1078 = zext i8 %1077 to i32, !dbg !1373
  br label %1081, !dbg !1373

; <label>:1079:                                   ; preds = %1062
  %1080 = call i32 @luaZ_fill(%struct.Zio* %1068) #4, !dbg !1373
  br label %1081, !dbg !1373

; <label>:1081:                                   ; preds = %1079, %1073
  %1082 = phi i32 [ %1078, %1073 ], [ %1080, %1079 ], !dbg !1373
  store i32 %1082, i32* %18, align 8, !dbg !1373, !tbaa !718
  %1083 = call i8* @__locale_ctype_ptr() #4, !dbg !1408
  %1084 = getelementptr inbounds i8, i8* %1083, i64 1, !dbg !1408
  %1085 = load i32, i32* %18, align 8, !dbg !1408, !tbaa !718
  %1086 = sext i32 %1085 to i64, !dbg !1408
  %1087 = getelementptr inbounds i8, i8* %1084, i64 %1086, !dbg !1408
  %1088 = load i8, i8* %1087, align 1, !dbg !1408, !tbaa !403
  %1089 = and i8 %1088, 7, !dbg !1408
  %1090 = icmp ne i8 %1089, 0, !dbg !1408
  %1091 = icmp eq i32 %1085, 95, !dbg !1409
  %1092 = or i1 %1091, %1090, !dbg !1410
  br i1 %1092, label %1022, label %1093, !dbg !1410, !llvm.loop !1411

; <label>:1093:                                   ; preds = %1081
  %1094 = load %struct.Mbuffer*, %struct.Mbuffer** %15, align 8, !dbg !1414, !tbaa !567
  %1095 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1094, i64 0, i32 0, !dbg !1414
  %1096 = load i8*, i8** %1095, align 8, !dbg !1414, !tbaa !579
  %1097 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %1094, i64 0, i32 1, !dbg !1415
  %1098 = load i64, i64* %1097, align 8, !dbg !1415, !tbaa !570
  %1099 = load %struct.lua_State*, %struct.lua_State** %1020, align 8, !dbg !1420, !tbaa !502
  %1100 = call %union.TString* @luaS_newlstr(%struct.lua_State* %1099, i8* %1096, i64 %1098) #4, !dbg !1422
  %1101 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1424
  %1102 = load %struct.FuncState*, %struct.FuncState** %1101, align 8, !dbg !1424, !tbaa !657
  %1103 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %1102, i64 0, i32 1, !dbg !1425
  %1104 = load %struct.Table*, %struct.Table** %1103, align 8, !dbg !1425, !tbaa !659
  %1105 = call %struct.lua_TValue* @luaH_setstr(%struct.lua_State* %1099, %struct.Table* %1104, %union.TString* %1100) #4, !dbg !1426
  %1106 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %1105, i64 0, i32 1, !dbg !1428
  %1107 = load i32, i32* %1106, align 8, !dbg !1428, !tbaa !665
  %1108 = icmp eq i32 %1107, 0, !dbg !1428
  br i1 %1108, label %1109, label %1119, !dbg !1429

; <label>:1109:                                   ; preds = %1093
  %1110 = bitcast %struct.lua_TValue* %1105 to i32*, !dbg !1430
  store i32 1, i32* %1110, align 8, !dbg !1430, !tbaa !403
  store i32 1, i32* %1106, align 8, !dbg !1430, !tbaa !665
  %1111 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %1099, i64 0, i32 6, !dbg !1431
  %1112 = load %struct.global_State*, %struct.global_State** %1111, align 8, !dbg !1431, !tbaa !672
  %1113 = getelementptr inbounds %struct.global_State, %struct.global_State* %1112, i64 0, i32 14, !dbg !1431
  %1114 = load i64, i64* %1113, align 8, !dbg !1431, !tbaa !674
  %1115 = getelementptr inbounds %struct.global_State, %struct.global_State* %1112, i64 0, i32 13, !dbg !1431
  %1116 = load i64, i64* %1115, align 8, !dbg !1431, !tbaa !678
  %1117 = icmp ult i64 %1114, %1116, !dbg !1431
  br i1 %1117, label %1119, label %1118, !dbg !1432

; <label>:1118:                                   ; preds = %1109
  call void @luaC_step(%struct.lua_State* nonnull %1099) #4, !dbg !1431
  br label %1119, !dbg !1431

; <label>:1119:                                   ; preds = %1093, %1109, %1118
  %1120 = getelementptr inbounds %union.TString, %union.TString* %1100, i64 0, i32 0, i32 3, !dbg !1434
  %1121 = load i8, i8* %1120, align 2, !dbg !1434, !tbaa !403
  %1122 = icmp eq i8 %1121, 0, !dbg !1436
  br i1 %1122, label %1126, label %1123, !dbg !1437

; <label>:1123:                                   ; preds = %1119
  %1124 = zext i8 %1121 to i32, !dbg !1438
  %1125 = or i32 %1124, 256, !dbg !1439
  br label %1144, !dbg !1440

; <label>:1126:                                   ; preds = %1119
  %1127 = bitcast %union.SemInfo* %1 to %union.TString**, !dbg !1441
  store %union.TString* %1100, %union.TString** %1127, align 8, !dbg !1443, !tbaa !403
  br label %1144, !dbg !1444

; <label>:1128:                                   ; preds = %1006
  %1129 = load %struct.Zio*, %struct.Zio** %19, align 8, !dbg !1446, !tbaa !703
  %1130 = getelementptr inbounds %struct.Zio, %struct.Zio* %1129, i64 0, i32 0, !dbg !1446
  %1131 = load i64, i64* %1130, align 8, !dbg !1446, !tbaa !715
  %1132 = add i64 %1131, -1, !dbg !1446
  store i64 %1132, i64* %1130, align 8, !dbg !1446, !tbaa !715
  %1133 = icmp eq i64 %1131, 0, !dbg !1446
  br i1 %1133, label %1140, label %1134, !dbg !1446

; <label>:1134:                                   ; preds = %1128
  %1135 = getelementptr inbounds %struct.Zio, %struct.Zio* %1129, i64 0, i32 1, !dbg !1446
  %1136 = load i8*, i8** %1135, align 8, !dbg !1446, !tbaa !717
  %1137 = getelementptr inbounds i8, i8* %1136, i64 1, !dbg !1446
  store i8* %1137, i8** %1135, align 8, !dbg !1446, !tbaa !717
  %1138 = load i8, i8* %1136, align 1, !dbg !1446, !tbaa !403
  %1139 = zext i8 %1138 to i32, !dbg !1446
  br label %1142, !dbg !1446

; <label>:1140:                                   ; preds = %1128
  %1141 = tail call i32 @luaZ_fill(%struct.Zio* %1129) #4, !dbg !1446
  br label %1142, !dbg !1446

; <label>:1142:                                   ; preds = %1140, %1134
  %1143 = phi i32 [ %1139, %1134 ], [ %1141, %1140 ], !dbg !1446
  store i32 %1143, i32* %18, align 8, !dbg !1446, !tbaa !718
  br label %1144

; <label>:1144:                                   ; preds = %20, %38, %92, %91, %959, %889, %1123, %1126, %961, %208, %175, %142, %109, %1142, %1005, %970, %753, %225, %192, %159, %126
  %1145 = phi i32 [ 284, %1005 ], [ %1009, %1142 ], [ 284, %970 ], [ 286, %753 ], [ 283, %225 ], [ 281, %192 ], [ 282, %159 ], [ 280, %126 ], [ 61, %109 ], [ 60, %142 ], [ 62, %175 ], [ 126, %208 ], [ 46, %961 ], [ %1125, %1123 ], [ 285, %1126 ], [ 279, %959 ], [ 278, %889 ], [ 91, %92 ], [ 286, %91 ], [ 287, %20 ], [ 45, %38 ], !dbg !1447
  ret i32 %1145, !dbg !1448
}

; Function Attrs: noredzone nounwind
define hidden void @luaX_lookahead(%struct.LexState*) local_unnamed_addr #0 !dbg !1449 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4, i32 1, !dbg !1453
  %3 = tail call fastcc i32 @llex(%struct.LexState* %0, %union.SemInfo* nonnull %2) #6, !dbg !1454
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4, i32 0, !dbg !1455
  store i32 %3, i32* %4, align 8, !dbg !1456, !tbaa !700
  ret void, !dbg !1457
}

; Function Attrs: noredzone
declare hidden i8* @luaM_toobig(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @inclinenumber(%struct.LexState* nocapture) unnamed_addr #0 !dbg !1458 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0, !dbg !1463
  %3 = load i32, i32* %2, align 8, !dbg !1463, !tbaa !718
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7, !dbg !1465
  %5 = load %struct.Zio*, %struct.Zio** %4, align 8, !dbg !1465, !tbaa !703
  %6 = getelementptr inbounds %struct.Zio, %struct.Zio* %5, i64 0, i32 0, !dbg !1465
  %7 = load i64, i64* %6, align 8, !dbg !1465, !tbaa !715
  %8 = add i64 %7, -1, !dbg !1465
  store i64 %8, i64* %6, align 8, !dbg !1465, !tbaa !715
  %9 = icmp eq i64 %7, 0, !dbg !1465
  br i1 %9, label %16, label %10, !dbg !1465

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.Zio, %struct.Zio* %5, i64 0, i32 1, !dbg !1465
  %12 = load i8*, i8** %11, align 8, !dbg !1465, !tbaa !717
  %13 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1465
  store i8* %13, i8** %11, align 8, !dbg !1465, !tbaa !717
  %14 = load i8, i8* %12, align 1, !dbg !1465, !tbaa !403
  %15 = zext i8 %14 to i32, !dbg !1465
  br label %18, !dbg !1465

; <label>:16:                                     ; preds = %1
  %17 = tail call i32 @luaZ_fill(%struct.Zio* %5) #4, !dbg !1465
  br label %18, !dbg !1465

; <label>:18:                                     ; preds = %16, %10
  %19 = phi i32 [ %15, %10 ], [ %17, %16 ], !dbg !1465
  store i32 %19, i32* %2, align 8, !dbg !1465, !tbaa !718
  switch i32 %19, label %38 [
    i32 10, label %20
    i32 13, label %20
  ], !dbg !1466

; <label>:20:                                     ; preds = %18, %18
  %21 = icmp eq i32 %19, %3, !dbg !1468
  br i1 %21, label %38, label %22, !dbg !1469

; <label>:22:                                     ; preds = %20
  %23 = load %struct.Zio*, %struct.Zio** %4, align 8, !dbg !1470, !tbaa !703
  %24 = getelementptr inbounds %struct.Zio, %struct.Zio* %23, i64 0, i32 0, !dbg !1470
  %25 = load i64, i64* %24, align 8, !dbg !1470, !tbaa !715
  %26 = add i64 %25, -1, !dbg !1470
  store i64 %26, i64* %24, align 8, !dbg !1470, !tbaa !715
  %27 = icmp eq i64 %25, 0, !dbg !1470
  br i1 %27, label %34, label %28, !dbg !1470

; <label>:28:                                     ; preds = %22
  %29 = getelementptr inbounds %struct.Zio, %struct.Zio* %23, i64 0, i32 1, !dbg !1470
  %30 = load i8*, i8** %29, align 8, !dbg !1470, !tbaa !717
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1470
  store i8* %31, i8** %29, align 8, !dbg !1470, !tbaa !717
  %32 = load i8, i8* %30, align 1, !dbg !1470, !tbaa !403
  %33 = zext i8 %32 to i32, !dbg !1470
  br label %36, !dbg !1470

; <label>:34:                                     ; preds = %22
  %35 = tail call i32 @luaZ_fill(%struct.Zio* %23) #4, !dbg !1470
  br label %36, !dbg !1470

; <label>:36:                                     ; preds = %34, %28
  %37 = phi i32 [ %33, %28 ], [ %35, %34 ], !dbg !1470
  store i32 %37, i32* %2, align 8, !dbg !1470, !tbaa !718
  br label %38, !dbg !1470

; <label>:38:                                     ; preds = %18, %20, %36
  %39 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !1471
  %40 = load i32, i32* %39, align 4, !dbg !1473, !tbaa !556
  %41 = add nsw i32 %40, 1, !dbg !1473
  store i32 %41, i32* %39, align 4, !dbg !1473, !tbaa !556
  %42 = icmp sgt i32 %40, 2147483643, !dbg !1474
  br i1 %42, label %43, label %46, !dbg !1475

; <label>:43:                                     ; preds = %38
  %44 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !1479
  %45 = load i32, i32* %44, align 8, !dbg !1479, !tbaa !632
  tail call void @luaX_lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i64 0, i64 0), i32 %45) #4, !dbg !1480
  br label %46, !dbg !1481

; <label>:46:                                     ; preds = %43, %38
  ret void, !dbg !1482
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @skip_sep(%struct.LexState* nocapture) unnamed_addr #0 !dbg !1483 {
  %2 = alloca [80 x i8], align 16
  %3 = alloca [80 x i8], align 16
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0, !dbg !1499
  %5 = load i32, i32* %4, align 8, !dbg !1499, !tbaa !718
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8, !dbg !1503
  %7 = load %struct.Mbuffer*, %struct.Mbuffer** %6, align 8, !dbg !1503, !tbaa !567
  %8 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %7, i64 0, i32 1, !dbg !1505
  %9 = load i64, i64* %8, align 8, !dbg !1505, !tbaa !570
  %10 = add i64 %9, 1, !dbg !1506
  %11 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %7, i64 0, i32 2, !dbg !1507
  %12 = load i64, i64* %11, align 8, !dbg !1507, !tbaa !575
  %13 = icmp ugt i64 %10, %12, !dbg !1508
  br i1 %13, label %17, label %14, !dbg !1509

; <label>:14:                                     ; preds = %1
  %15 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %7, i64 0, i32 0
  %16 = load i8*, i8** %15, align 8, !dbg !1510, !tbaa !579
  br label %52, !dbg !1509

; <label>:17:                                     ; preds = %1
  %18 = icmp ugt i64 %12, 9223372036854775805, !dbg !1511
  br i1 %18, label %21, label %19, !dbg !1512

; <label>:19:                                     ; preds = %17
  %20 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1513
  br label %34, !dbg !1512

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0, !dbg !1517
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %22) #5, !dbg !1517
  %23 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9, !dbg !1518
  %24 = load %union.TString*, %union.TString** %23, align 8, !dbg !1518, !tbaa !552
  %25 = getelementptr inbounds %union.TString, %union.TString* %24, i64 1, !dbg !1518
  %26 = bitcast %union.TString* %25 to i8*, !dbg !1518
  call void @luaO_chunkid(i8* nonnull %22, i8* nonnull %26, i64 80) #4, !dbg !1519
  %27 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1520
  %28 = load %struct.lua_State*, %struct.lua_State** %27, align 8, !dbg !1520, !tbaa !502
  %29 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !1521
  %30 = load i32, i32* %29, align 4, !dbg !1521, !tbaa !556
  %31 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %22, i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1522
  %32 = load %struct.lua_State*, %struct.lua_State** %27, align 8, !dbg !1523, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %32, i32 3) #4, !dbg !1524
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %22) #5, !dbg !1525
  %33 = load i64, i64* %11, align 8, !dbg !1526, !tbaa !575
  br label %34, !dbg !1527

; <label>:34:                                     ; preds = %19, %21
  %35 = phi %struct.lua_State** [ %20, %19 ], [ %27, %21 ], !dbg !1513
  %36 = phi i64 [ %12, %19 ], [ %33, %21 ], !dbg !1526
  %37 = shl i64 %36, 1, !dbg !1528
  %38 = icmp eq i64 %37, -2, !dbg !1513
  %39 = load %struct.lua_State*, %struct.lua_State** %35, align 8, !dbg !1513, !tbaa !502
  br i1 %38, label %44, label %40, !dbg !1513

; <label>:40:                                     ; preds = %34
  %41 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %7, i64 0, i32 0, !dbg !1513
  %42 = load i8*, i8** %41, align 8, !dbg !1513, !tbaa !579
  %43 = call i8* @luaM_realloc_(%struct.lua_State* %39, i8* %42, i64 %36, i64 %37) #4, !dbg !1513
  br label %47, !dbg !1513

; <label>:44:                                     ; preds = %34
  %45 = call i8* @luaM_toobig(%struct.lua_State* %39) #4, !dbg !1513
  %46 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %7, i64 0, i32 0, !dbg !1513
  br label %47, !dbg !1513

; <label>:47:                                     ; preds = %44, %40
  %48 = phi i8** [ %46, %44 ], [ %41, %40 ], !dbg !1513
  %49 = phi i8* [ %45, %44 ], [ %43, %40 ], !dbg !1513
  store i8* %49, i8** %48, align 8, !dbg !1513, !tbaa !579
  store i64 %37, i64* %11, align 8, !dbg !1513, !tbaa !575
  %50 = load i64, i64* %8, align 8, !dbg !1530, !tbaa !570
  %51 = add i64 %50, 1, !dbg !1530
  br label %52, !dbg !1531

; <label>:52:                                     ; preds = %14, %47
  %53 = phi i64 [ %10, %14 ], [ %51, %47 ], !dbg !1530
  %54 = phi i64 [ %9, %14 ], [ %50, %47 ], !dbg !1530
  %55 = phi i8* [ %16, %14 ], [ %49, %47 ], !dbg !1510
  %56 = trunc i32 %5 to i8, !dbg !1532
  store i64 %53, i64* %8, align 8, !dbg !1530, !tbaa !570
  %57 = getelementptr inbounds i8, i8* %55, i64 %54, !dbg !1533
  store i8 %56, i8* %57, align 1, !dbg !1534, !tbaa !403
  %58 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7, !dbg !1535
  %59 = load %struct.Zio*, %struct.Zio** %58, align 8, !dbg !1535, !tbaa !703
  %60 = getelementptr inbounds %struct.Zio, %struct.Zio* %59, i64 0, i32 0, !dbg !1535
  %61 = load i64, i64* %60, align 8, !dbg !1535, !tbaa !715
  %62 = add i64 %61, -1, !dbg !1535
  store i64 %62, i64* %60, align 8, !dbg !1535, !tbaa !715
  %63 = icmp eq i64 %61, 0, !dbg !1535
  br i1 %63, label %70, label %64, !dbg !1535

; <label>:64:                                     ; preds = %52
  %65 = getelementptr inbounds %struct.Zio, %struct.Zio* %59, i64 0, i32 1, !dbg !1535
  %66 = load i8*, i8** %65, align 8, !dbg !1535, !tbaa !717
  %67 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !1535
  store i8* %67, i8** %65, align 8, !dbg !1535, !tbaa !717
  %68 = load i8, i8* %66, align 1, !dbg !1535, !tbaa !403
  %69 = zext i8 %68 to i32, !dbg !1535
  br label %72, !dbg !1535

; <label>:70:                                     ; preds = %52
  %71 = call i32 @luaZ_fill(%struct.Zio* %59) #4, !dbg !1535
  br label %72, !dbg !1535

; <label>:72:                                     ; preds = %70, %64
  %73 = phi i32 [ %69, %64 ], [ %71, %70 ], !dbg !1535
  store i32 %73, i32* %4, align 8, !dbg !1535, !tbaa !718
  %74 = icmp eq i32 %73, 61, !dbg !1536
  br i1 %74, label %75, label %142, !dbg !1537

; <label>:75:                                     ; preds = %72
  %76 = getelementptr inbounds [80 x i8], [80 x i8]* %2, i64 0, i64 0
  %77 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9
  %78 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %79 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  br label %80, !dbg !1537

; <label>:80:                                     ; preds = %75, %138
  %81 = phi i32 [ 0, %75 ], [ %140, %138 ]
  %82 = load %struct.Mbuffer*, %struct.Mbuffer** %6, align 8, !dbg !1540, !tbaa !567
  %83 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %82, i64 0, i32 1, !dbg !1542
  %84 = load i64, i64* %83, align 8, !dbg !1542, !tbaa !570
  %85 = add i64 %84, 1, !dbg !1543
  %86 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %82, i64 0, i32 2, !dbg !1544
  %87 = load i64, i64* %86, align 8, !dbg !1544, !tbaa !575
  %88 = icmp ugt i64 %85, %87, !dbg !1545
  br i1 %88, label %92, label %89, !dbg !1546

; <label>:89:                                     ; preds = %80
  %90 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %82, i64 0, i32 0
  %91 = load i8*, i8** %90, align 8, !dbg !1547, !tbaa !579
  br label %120, !dbg !1546

; <label>:92:                                     ; preds = %80
  %93 = icmp ugt i64 %87, 9223372036854775805, !dbg !1548
  br i1 %93, label %94, label %103, !dbg !1549

; <label>:94:                                     ; preds = %92
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %76) #5, !dbg !1553
  %95 = load %union.TString*, %union.TString** %77, align 8, !dbg !1554, !tbaa !552
  %96 = getelementptr inbounds %union.TString, %union.TString* %95, i64 1, !dbg !1554
  %97 = bitcast %union.TString* %96 to i8*, !dbg !1554
  call void @luaO_chunkid(i8* nonnull %76, i8* nonnull %97, i64 80) #4, !dbg !1555
  %98 = load %struct.lua_State*, %struct.lua_State** %78, align 8, !dbg !1556, !tbaa !502
  %99 = load i32, i32* %79, align 4, !dbg !1557, !tbaa !556
  %100 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %76, i32 %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1558
  %101 = load %struct.lua_State*, %struct.lua_State** %78, align 8, !dbg !1559, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %101, i32 3) #4, !dbg !1560
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %76) #5, !dbg !1561
  %102 = load i64, i64* %86, align 8, !dbg !1562, !tbaa !575
  br label %103, !dbg !1563

; <label>:103:                                    ; preds = %94, %92
  %104 = phi i64 [ %102, %94 ], [ %87, %92 ], !dbg !1562
  %105 = shl i64 %104, 1, !dbg !1564
  %106 = icmp eq i64 %105, -2, !dbg !1566
  %107 = load %struct.lua_State*, %struct.lua_State** %78, align 8, !dbg !1566, !tbaa !502
  br i1 %106, label %112, label %108, !dbg !1566

; <label>:108:                                    ; preds = %103
  %109 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %82, i64 0, i32 0, !dbg !1566
  %110 = load i8*, i8** %109, align 8, !dbg !1566, !tbaa !579
  %111 = call i8* @luaM_realloc_(%struct.lua_State* %107, i8* %110, i64 %104, i64 %105) #4, !dbg !1566
  br label %115, !dbg !1566

; <label>:112:                                    ; preds = %103
  %113 = call i8* @luaM_toobig(%struct.lua_State* %107) #4, !dbg !1566
  %114 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %82, i64 0, i32 0, !dbg !1566
  br label %115, !dbg !1566

; <label>:115:                                    ; preds = %112, %108
  %116 = phi i8** [ %114, %112 ], [ %109, %108 ], !dbg !1566
  %117 = phi i8* [ %113, %112 ], [ %111, %108 ], !dbg !1566
  store i8* %117, i8** %116, align 8, !dbg !1566, !tbaa !579
  store i64 %105, i64* %86, align 8, !dbg !1566, !tbaa !575
  %118 = load i64, i64* %83, align 8, !dbg !1567, !tbaa !570
  %119 = add i64 %118, 1, !dbg !1567
  br label %120, !dbg !1568

; <label>:120:                                    ; preds = %89, %115
  %121 = phi i64 [ %85, %89 ], [ %119, %115 ], !dbg !1567
  %122 = phi i64 [ %84, %89 ], [ %118, %115 ], !dbg !1567
  %123 = phi i8* [ %91, %89 ], [ %117, %115 ], !dbg !1547
  store i64 %121, i64* %83, align 8, !dbg !1567, !tbaa !570
  %124 = getelementptr inbounds i8, i8* %123, i64 %122, !dbg !1569
  store i8 61, i8* %124, align 1, !dbg !1570, !tbaa !403
  %125 = load %struct.Zio*, %struct.Zio** %58, align 8, !dbg !1571, !tbaa !703
  %126 = getelementptr inbounds %struct.Zio, %struct.Zio* %125, i64 0, i32 0, !dbg !1571
  %127 = load i64, i64* %126, align 8, !dbg !1571, !tbaa !715
  %128 = add i64 %127, -1, !dbg !1571
  store i64 %128, i64* %126, align 8, !dbg !1571, !tbaa !715
  %129 = icmp eq i64 %127, 0, !dbg !1571
  br i1 %129, label %136, label %130, !dbg !1571

; <label>:130:                                    ; preds = %120
  %131 = getelementptr inbounds %struct.Zio, %struct.Zio* %125, i64 0, i32 1, !dbg !1571
  %132 = load i8*, i8** %131, align 8, !dbg !1571, !tbaa !717
  %133 = getelementptr inbounds i8, i8* %132, i64 1, !dbg !1571
  store i8* %133, i8** %131, align 8, !dbg !1571, !tbaa !717
  %134 = load i8, i8* %132, align 1, !dbg !1571, !tbaa !403
  %135 = zext i8 %134 to i32, !dbg !1571
  br label %138, !dbg !1571

; <label>:136:                                    ; preds = %120
  %137 = call i32 @luaZ_fill(%struct.Zio* %125) #4, !dbg !1571
  br label %138, !dbg !1571

; <label>:138:                                    ; preds = %136, %130
  %139 = phi i32 [ %135, %130 ], [ %137, %136 ], !dbg !1571
  store i32 %139, i32* %4, align 8, !dbg !1571, !tbaa !718
  %140 = add nuw nsw i32 %81, 1, !dbg !1572
  %141 = icmp eq i32 %139, 61, !dbg !1536
  br i1 %141, label %80, label %142, !dbg !1537, !llvm.loop !1573

; <label>:142:                                    ; preds = %138, %72
  %143 = phi i32 [ %73, %72 ], [ %139, %138 ], !dbg !1575
  %144 = phi i32 [ 0, %72 ], [ %140, %138 ], !dbg !1576
  %145 = icmp ne i32 %143, %5, !dbg !1577
  %146 = sext i1 %145 to i32, !dbg !1578
  %147 = xor i32 %144, %146, !dbg !1578
  ret i32 %147, !dbg !1579
}

; Function Attrs: noredzone nounwind
define internal fastcc void @read_long_string(%struct.LexState*, %union.SemInfo*, i32) unnamed_addr #0 !dbg !1580 {
  %4 = alloca [80 x i8], align 16
  %5 = alloca [80 x i8], align 16
  %6 = alloca [80 x i8], align 16
  %7 = alloca [80 x i8], align 16
  %8 = alloca [80 x i8], align 16
  %9 = alloca [80 x i8], align 16
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0, !dbg !1622
  %11 = load i32, i32* %10, align 8, !dbg !1622, !tbaa !718
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8, !dbg !1625
  %13 = load %struct.Mbuffer*, %struct.Mbuffer** %12, align 8, !dbg !1625, !tbaa !567
  %14 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %13, i64 0, i32 1, !dbg !1627
  %15 = load i64, i64* %14, align 8, !dbg !1627, !tbaa !570
  %16 = add i64 %15, 1, !dbg !1628
  %17 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %13, i64 0, i32 2, !dbg !1629
  %18 = load i64, i64* %17, align 8, !dbg !1629, !tbaa !575
  %19 = icmp ugt i64 %16, %18, !dbg !1630
  br i1 %19, label %23, label %20, !dbg !1631

; <label>:20:                                     ; preds = %3
  %21 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %13, i64 0, i32 0
  %22 = load i8*, i8** %21, align 8, !dbg !1632, !tbaa !579
  br label %58, !dbg !1631

; <label>:23:                                     ; preds = %3
  %24 = icmp ugt i64 %18, 9223372036854775805, !dbg !1633
  br i1 %24, label %27, label %25, !dbg !1634

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1635
  br label %40, !dbg !1634

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0, !dbg !1639
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %28) #5, !dbg !1639
  %29 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9, !dbg !1640
  %30 = load %union.TString*, %union.TString** %29, align 8, !dbg !1640, !tbaa !552
  %31 = getelementptr inbounds %union.TString, %union.TString* %30, i64 1, !dbg !1640
  %32 = bitcast %union.TString* %31 to i8*, !dbg !1640
  call void @luaO_chunkid(i8* nonnull %28, i8* nonnull %32, i64 80) #4, !dbg !1641
  %33 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1642
  %34 = load %struct.lua_State*, %struct.lua_State** %33, align 8, !dbg !1642, !tbaa !502
  %35 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !1643
  %36 = load i32, i32* %35, align 4, !dbg !1643, !tbaa !556
  %37 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %28, i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1644
  %38 = load %struct.lua_State*, %struct.lua_State** %33, align 8, !dbg !1645, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %38, i32 3) #4, !dbg !1646
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %28) #5, !dbg !1647
  %39 = load i64, i64* %17, align 8, !dbg !1648, !tbaa !575
  br label %40, !dbg !1649

; <label>:40:                                     ; preds = %25, %27
  %41 = phi %struct.lua_State** [ %26, %25 ], [ %33, %27 ], !dbg !1635
  %42 = phi i64 [ %18, %25 ], [ %39, %27 ], !dbg !1648
  %43 = shl i64 %42, 1, !dbg !1650
  %44 = icmp eq i64 %43, -2, !dbg !1635
  %45 = load %struct.lua_State*, %struct.lua_State** %41, align 8, !dbg !1635, !tbaa !502
  br i1 %44, label %50, label %46, !dbg !1635

; <label>:46:                                     ; preds = %40
  %47 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %13, i64 0, i32 0, !dbg !1635
  %48 = load i8*, i8** %47, align 8, !dbg !1635, !tbaa !579
  %49 = call i8* @luaM_realloc_(%struct.lua_State* %45, i8* %48, i64 %42, i64 %43) #4, !dbg !1635
  br label %53, !dbg !1635

; <label>:50:                                     ; preds = %40
  %51 = call i8* @luaM_toobig(%struct.lua_State* %45) #4, !dbg !1635
  %52 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %13, i64 0, i32 0, !dbg !1635
  br label %53, !dbg !1635

; <label>:53:                                     ; preds = %50, %46
  %54 = phi i8** [ %52, %50 ], [ %47, %46 ], !dbg !1635
  %55 = phi i8* [ %51, %50 ], [ %49, %46 ], !dbg !1635
  store i8* %55, i8** %54, align 8, !dbg !1635, !tbaa !579
  store i64 %43, i64* %17, align 8, !dbg !1635, !tbaa !575
  %56 = load i64, i64* %14, align 8, !dbg !1652, !tbaa !570
  %57 = add i64 %56, 1, !dbg !1652
  br label %58, !dbg !1653

; <label>:58:                                     ; preds = %20, %53
  %59 = phi i64 [ %16, %20 ], [ %57, %53 ], !dbg !1652
  %60 = phi i64 [ %15, %20 ], [ %56, %53 ], !dbg !1652
  %61 = phi i8* [ %22, %20 ], [ %55, %53 ], !dbg !1632
  %62 = trunc i32 %11 to i8, !dbg !1654
  store i64 %59, i64* %14, align 8, !dbg !1652, !tbaa !570
  %63 = getelementptr inbounds i8, i8* %61, i64 %60, !dbg !1655
  store i8 %62, i8* %63, align 1, !dbg !1656, !tbaa !403
  %64 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7, !dbg !1622
  %65 = load %struct.Zio*, %struct.Zio** %64, align 8, !dbg !1622, !tbaa !703
  %66 = getelementptr inbounds %struct.Zio, %struct.Zio* %65, i64 0, i32 0, !dbg !1622
  %67 = load i64, i64* %66, align 8, !dbg !1622, !tbaa !715
  %68 = add i64 %67, -1, !dbg !1622
  store i64 %68, i64* %66, align 8, !dbg !1622, !tbaa !715
  %69 = icmp eq i64 %67, 0, !dbg !1622
  br i1 %69, label %76, label %70, !dbg !1622

; <label>:70:                                     ; preds = %58
  %71 = getelementptr inbounds %struct.Zio, %struct.Zio* %65, i64 0, i32 1, !dbg !1622
  %72 = load i8*, i8** %71, align 8, !dbg !1622, !tbaa !717
  %73 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !1622
  store i8* %73, i8** %71, align 8, !dbg !1622, !tbaa !717
  %74 = load i8, i8* %72, align 1, !dbg !1622, !tbaa !403
  %75 = zext i8 %74 to i32, !dbg !1622
  br label %78, !dbg !1622

; <label>:76:                                     ; preds = %58
  %77 = call i32 @luaZ_fill(%struct.Zio* %65) #4, !dbg !1622
  br label %78, !dbg !1622

; <label>:78:                                     ; preds = %76, %70
  %79 = phi i32 [ %75, %70 ], [ %77, %76 ], !dbg !1622
  store i32 %79, i32* %10, align 8, !dbg !1622, !tbaa !718
  switch i32 %79, label %81 [
    i32 10, label %80
    i32 13, label %80
  ], !dbg !1657

; <label>:80:                                     ; preds = %78, %78
  call fastcc void @inclinenumber(%struct.LexState* nonnull %0) #6, !dbg !1659
  br label %81, !dbg !1659

; <label>:81:                                     ; preds = %78, %80
  %82 = icmp eq %union.SemInfo* %1, null
  %83 = select i1 %82, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0)
  %84 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %85 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9
  %86 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %87 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %88 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %89 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %90 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %91 = icmp eq i32 %2, 0
  br label %92, !dbg !1660

; <label>:92:                                     ; preds = %278, %81
  %93 = load i32, i32* %10, align 8, !dbg !1661, !tbaa !718
  switch i32 %93, label %282 [
    i32 -1, label %94
    i32 91, label %104
    i32 93, label %169
    i32 10, label %234
    i32 13, label %234
  ], !dbg !1662

; <label>:94:                                     ; preds = %92
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %84) #5, !dbg !1666
  %95 = load %union.TString*, %union.TString** %85, align 8, !dbg !1667, !tbaa !552
  %96 = getelementptr inbounds %union.TString, %union.TString* %95, i64 1, !dbg !1667
  %97 = bitcast %union.TString* %96 to i8*, !dbg !1667
  call void @luaO_chunkid(i8* nonnull %84, i8* nonnull %97, i64 80) #4, !dbg !1668
  %98 = load %struct.lua_State*, %struct.lua_State** %86, align 8, !dbg !1669, !tbaa !502
  %99 = load i32, i32* %87, align 4, !dbg !1670, !tbaa !556
  %100 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %84, i32 %99, i8* %83) #4, !dbg !1671
  %101 = load %struct.lua_State*, %struct.lua_State** %86, align 8, !dbg !1672, !tbaa !502
  %102 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0)) #4, !dbg !1673
  %103 = load %struct.lua_State*, %struct.lua_State** %86, align 8, !dbg !1674, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %103, i32 3) #4, !dbg !1675
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %84) #5, !dbg !1676
  br label %278, !dbg !1677

; <label>:104:                                    ; preds = %92
  %105 = call fastcc i32 @skip_sep(%struct.LexState* nonnull %0) #6, !dbg !1678
  %106 = icmp eq i32 %105, %2, !dbg !1679
  br i1 %106, label %107, label %278, !dbg !1680

; <label>:107:                                    ; preds = %104
  %108 = load i32, i32* %10, align 8, !dbg !1681, !tbaa !718
  %109 = load %struct.Mbuffer*, %struct.Mbuffer** %12, align 8, !dbg !1684, !tbaa !567
  %110 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %109, i64 0, i32 1, !dbg !1686
  %111 = load i64, i64* %110, align 8, !dbg !1686, !tbaa !570
  %112 = add i64 %111, 1, !dbg !1687
  %113 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %109, i64 0, i32 2, !dbg !1688
  %114 = load i64, i64* %113, align 8, !dbg !1688, !tbaa !575
  %115 = icmp ugt i64 %112, %114, !dbg !1689
  br i1 %115, label %119, label %116, !dbg !1690

; <label>:116:                                    ; preds = %107
  %117 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %109, i64 0, i32 0
  %118 = load i8*, i8** %117, align 8, !dbg !1691, !tbaa !579
  br label %147, !dbg !1690

; <label>:119:                                    ; preds = %107
  %120 = icmp ugt i64 %114, 9223372036854775805, !dbg !1692
  br i1 %120, label %121, label %130, !dbg !1693

; <label>:121:                                    ; preds = %119
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %90) #5, !dbg !1697
  %122 = load %union.TString*, %union.TString** %85, align 8, !dbg !1698, !tbaa !552
  %123 = getelementptr inbounds %union.TString, %union.TString* %122, i64 1, !dbg !1698
  %124 = bitcast %union.TString* %123 to i8*, !dbg !1698
  call void @luaO_chunkid(i8* nonnull %90, i8* nonnull %124, i64 80) #4, !dbg !1699
  %125 = load %struct.lua_State*, %struct.lua_State** %86, align 8, !dbg !1700, !tbaa !502
  %126 = load i32, i32* %87, align 4, !dbg !1701, !tbaa !556
  %127 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %90, i32 %126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1702
  %128 = load %struct.lua_State*, %struct.lua_State** %86, align 8, !dbg !1703, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %128, i32 3) #4, !dbg !1704
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %90) #5, !dbg !1705
  %129 = load i64, i64* %113, align 8, !dbg !1706, !tbaa !575
  br label %130, !dbg !1707

; <label>:130:                                    ; preds = %121, %119
  %131 = phi i64 [ %129, %121 ], [ %114, %119 ], !dbg !1706
  %132 = shl i64 %131, 1, !dbg !1708
  %133 = icmp eq i64 %132, -2, !dbg !1710
  %134 = load %struct.lua_State*, %struct.lua_State** %86, align 8, !dbg !1710, !tbaa !502
  br i1 %133, label %139, label %135, !dbg !1710

; <label>:135:                                    ; preds = %130
  %136 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %109, i64 0, i32 0, !dbg !1710
  %137 = load i8*, i8** %136, align 8, !dbg !1710, !tbaa !579
  %138 = call i8* @luaM_realloc_(%struct.lua_State* %134, i8* %137, i64 %131, i64 %132) #4, !dbg !1710
  br label %142, !dbg !1710

; <label>:139:                                    ; preds = %130
  %140 = call i8* @luaM_toobig(%struct.lua_State* %134) #4, !dbg !1710
  %141 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %109, i64 0, i32 0, !dbg !1710
  br label %142, !dbg !1710

; <label>:142:                                    ; preds = %139, %135
  %143 = phi i8** [ %141, %139 ], [ %136, %135 ], !dbg !1710
  %144 = phi i8* [ %140, %139 ], [ %138, %135 ], !dbg !1710
  store i8* %144, i8** %143, align 8, !dbg !1710, !tbaa !579
  store i64 %132, i64* %113, align 8, !dbg !1710, !tbaa !575
  %145 = load i64, i64* %110, align 8, !dbg !1711, !tbaa !570
  %146 = add i64 %145, 1, !dbg !1711
  br label %147, !dbg !1712

; <label>:147:                                    ; preds = %116, %142
  %148 = phi i64 [ %112, %116 ], [ %146, %142 ], !dbg !1711
  %149 = phi i64 [ %111, %116 ], [ %145, %142 ], !dbg !1711
  %150 = phi i8* [ %118, %116 ], [ %144, %142 ], !dbg !1691
  %151 = trunc i32 %108 to i8, !dbg !1713
  store i64 %148, i64* %110, align 8, !dbg !1711, !tbaa !570
  %152 = getelementptr inbounds i8, i8* %150, i64 %149, !dbg !1714
  store i8 %151, i8* %152, align 1, !dbg !1715, !tbaa !403
  %153 = load %struct.Zio*, %struct.Zio** %64, align 8, !dbg !1681, !tbaa !703
  %154 = getelementptr inbounds %struct.Zio, %struct.Zio* %153, i64 0, i32 0, !dbg !1681
  %155 = load i64, i64* %154, align 8, !dbg !1681, !tbaa !715
  %156 = add i64 %155, -1, !dbg !1681
  store i64 %156, i64* %154, align 8, !dbg !1681, !tbaa !715
  %157 = icmp eq i64 %155, 0, !dbg !1681
  br i1 %157, label %164, label %158, !dbg !1681

; <label>:158:                                    ; preds = %147
  %159 = getelementptr inbounds %struct.Zio, %struct.Zio* %153, i64 0, i32 1, !dbg !1681
  %160 = load i8*, i8** %159, align 8, !dbg !1681, !tbaa !717
  %161 = getelementptr inbounds i8, i8* %160, i64 1, !dbg !1681
  store i8* %161, i8** %159, align 8, !dbg !1681, !tbaa !717
  %162 = load i8, i8* %160, align 1, !dbg !1681, !tbaa !403
  %163 = zext i8 %162 to i32, !dbg !1681
  br label %166, !dbg !1681

; <label>:164:                                    ; preds = %147
  %165 = call i32 @luaZ_fill(%struct.Zio* %153) #4, !dbg !1681
  br label %166, !dbg !1681

; <label>:166:                                    ; preds = %164, %158
  %167 = phi i32 [ %163, %158 ], [ %165, %164 ], !dbg !1681
  store i32 %167, i32* %10, align 8, !dbg !1681, !tbaa !718
  br i1 %91, label %168, label %278, !dbg !1716

; <label>:168:                                    ; preds = %166
  call void @luaX_lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.41, i64 0, i64 0), i32 91) #6, !dbg !1717
  br label %278, !dbg !1717

; <label>:169:                                    ; preds = %92
  %170 = call fastcc i32 @skip_sep(%struct.LexState* nonnull %0) #6, !dbg !1719
  %171 = icmp eq i32 %170, %2, !dbg !1720
  br i1 %171, label %172, label %278, !dbg !1721

; <label>:172:                                    ; preds = %169
  %173 = load i32, i32* %10, align 8, !dbg !1722, !tbaa !718
  %174 = load %struct.Mbuffer*, %struct.Mbuffer** %12, align 8, !dbg !1725, !tbaa !567
  %175 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %174, i64 0, i32 1, !dbg !1727
  %176 = load i64, i64* %175, align 8, !dbg !1727, !tbaa !570
  %177 = add i64 %176, 1, !dbg !1728
  %178 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %174, i64 0, i32 2, !dbg !1729
  %179 = load i64, i64* %178, align 8, !dbg !1729, !tbaa !575
  %180 = icmp ugt i64 %177, %179, !dbg !1730
  br i1 %180, label %184, label %181, !dbg !1731

; <label>:181:                                    ; preds = %172
  %182 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %174, i64 0, i32 0
  %183 = load i8*, i8** %182, align 8, !dbg !1732, !tbaa !579
  br label %213, !dbg !1731

; <label>:184:                                    ; preds = %172
  %185 = icmp ugt i64 %179, 9223372036854775805, !dbg !1733
  br i1 %185, label %186, label %196, !dbg !1734

; <label>:186:                                    ; preds = %184
  %187 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0, !dbg !1738
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %187) #5, !dbg !1738
  %188 = load %union.TString*, %union.TString** %85, align 8, !dbg !1739, !tbaa !552
  %189 = getelementptr inbounds %union.TString, %union.TString* %188, i64 1, !dbg !1739
  %190 = bitcast %union.TString* %189 to i8*, !dbg !1739
  call void @luaO_chunkid(i8* nonnull %187, i8* nonnull %190, i64 80) #4, !dbg !1740
  %191 = load %struct.lua_State*, %struct.lua_State** %86, align 8, !dbg !1741, !tbaa !502
  %192 = load i32, i32* %87, align 4, !dbg !1742, !tbaa !556
  %193 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %191, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %187, i32 %192, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1743
  %194 = load %struct.lua_State*, %struct.lua_State** %86, align 8, !dbg !1744, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %194, i32 3) #4, !dbg !1745
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %187) #5, !dbg !1746
  %195 = load i64, i64* %178, align 8, !dbg !1747, !tbaa !575
  br label %196, !dbg !1748

; <label>:196:                                    ; preds = %186, %184
  %197 = phi i64 [ %195, %186 ], [ %179, %184 ], !dbg !1747
  %198 = shl i64 %197, 1, !dbg !1749
  %199 = icmp eq i64 %198, -2, !dbg !1751
  %200 = load %struct.lua_State*, %struct.lua_State** %86, align 8, !dbg !1751, !tbaa !502
  br i1 %199, label %205, label %201, !dbg !1751

; <label>:201:                                    ; preds = %196
  %202 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %174, i64 0, i32 0, !dbg !1751
  %203 = load i8*, i8** %202, align 8, !dbg !1751, !tbaa !579
  %204 = call i8* @luaM_realloc_(%struct.lua_State* %200, i8* %203, i64 %197, i64 %198) #4, !dbg !1751
  br label %208, !dbg !1751

; <label>:205:                                    ; preds = %196
  %206 = call i8* @luaM_toobig(%struct.lua_State* %200) #4, !dbg !1751
  %207 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %174, i64 0, i32 0, !dbg !1751
  br label %208, !dbg !1751

; <label>:208:                                    ; preds = %205, %201
  %209 = phi i8** [ %207, %205 ], [ %202, %201 ], !dbg !1751
  %210 = phi i8* [ %206, %205 ], [ %204, %201 ], !dbg !1751
  store i8* %210, i8** %209, align 8, !dbg !1751, !tbaa !579
  store i64 %198, i64* %178, align 8, !dbg !1751, !tbaa !575
  %211 = load i64, i64* %175, align 8, !dbg !1752, !tbaa !570
  %212 = add i64 %211, 1, !dbg !1752
  br label %213, !dbg !1753

; <label>:213:                                    ; preds = %181, %208
  %214 = phi i64 [ %177, %181 ], [ %212, %208 ], !dbg !1752
  %215 = phi i64 [ %176, %181 ], [ %211, %208 ], !dbg !1752
  %216 = phi i8* [ %183, %181 ], [ %210, %208 ], !dbg !1732
  %217 = trunc i32 %173 to i8, !dbg !1754
  store i64 %214, i64* %175, align 8, !dbg !1752, !tbaa !570
  %218 = getelementptr inbounds i8, i8* %216, i64 %215, !dbg !1755
  store i8 %217, i8* %218, align 1, !dbg !1756, !tbaa !403
  %219 = load %struct.Zio*, %struct.Zio** %64, align 8, !dbg !1722, !tbaa !703
  %220 = getelementptr inbounds %struct.Zio, %struct.Zio* %219, i64 0, i32 0, !dbg !1722
  %221 = load i64, i64* %220, align 8, !dbg !1722, !tbaa !715
  %222 = add i64 %221, -1, !dbg !1722
  store i64 %222, i64* %220, align 8, !dbg !1722, !tbaa !715
  %223 = icmp eq i64 %221, 0, !dbg !1722
  br i1 %223, label %230, label %224, !dbg !1722

; <label>:224:                                    ; preds = %213
  %225 = getelementptr inbounds %struct.Zio, %struct.Zio* %219, i64 0, i32 1, !dbg !1722
  %226 = load i8*, i8** %225, align 8, !dbg !1722, !tbaa !717
  %227 = getelementptr inbounds i8, i8* %226, i64 1, !dbg !1722
  store i8* %227, i8** %225, align 8, !dbg !1722, !tbaa !717
  %228 = load i8, i8* %226, align 1, !dbg !1722, !tbaa !403
  %229 = zext i8 %228 to i32, !dbg !1722
  br label %232, !dbg !1722

; <label>:230:                                    ; preds = %213
  %231 = call i32 @luaZ_fill(%struct.Zio* %219) #4, !dbg !1722
  br label %232, !dbg !1722

; <label>:232:                                    ; preds = %230, %224
  %233 = phi i32 [ %229, %224 ], [ %231, %230 ], !dbg !1722
  store i32 %233, i32* %10, align 8, !dbg !1722, !tbaa !718
  br i1 %82, label %393, label %359, !dbg !1757

; <label>:234:                                    ; preds = %92, %92
  %235 = load %struct.Mbuffer*, %struct.Mbuffer** %12, align 8, !dbg !1760, !tbaa !567
  %236 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %235, i64 0, i32 1, !dbg !1762
  %237 = load i64, i64* %236, align 8, !dbg !1762, !tbaa !570
  %238 = add i64 %237, 1, !dbg !1763
  %239 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %235, i64 0, i32 2, !dbg !1764
  %240 = load i64, i64* %239, align 8, !dbg !1764, !tbaa !575
  %241 = icmp ugt i64 %238, %240, !dbg !1765
  br i1 %241, label %245, label %242, !dbg !1766

; <label>:242:                                    ; preds = %234
  %243 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %235, i64 0, i32 0
  %244 = load i8*, i8** %243, align 8, !dbg !1767, !tbaa !579
  br label %273, !dbg !1766

; <label>:245:                                    ; preds = %234
  %246 = icmp ugt i64 %240, 9223372036854775805, !dbg !1768
  br i1 %246, label %247, label %256, !dbg !1769

; <label>:247:                                    ; preds = %245
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %88) #5, !dbg !1773
  %248 = load %union.TString*, %union.TString** %85, align 8, !dbg !1774, !tbaa !552
  %249 = getelementptr inbounds %union.TString, %union.TString* %248, i64 1, !dbg !1774
  %250 = bitcast %union.TString* %249 to i8*, !dbg !1774
  call void @luaO_chunkid(i8* nonnull %88, i8* nonnull %250, i64 80) #4, !dbg !1775
  %251 = load %struct.lua_State*, %struct.lua_State** %86, align 8, !dbg !1776, !tbaa !502
  %252 = load i32, i32* %87, align 4, !dbg !1777, !tbaa !556
  %253 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %251, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %88, i32 %252, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1778
  %254 = load %struct.lua_State*, %struct.lua_State** %86, align 8, !dbg !1779, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %254, i32 3) #4, !dbg !1780
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %88) #5, !dbg !1781
  %255 = load i64, i64* %239, align 8, !dbg !1782, !tbaa !575
  br label %256, !dbg !1783

; <label>:256:                                    ; preds = %247, %245
  %257 = phi i64 [ %255, %247 ], [ %240, %245 ], !dbg !1782
  %258 = shl i64 %257, 1, !dbg !1784
  %259 = icmp eq i64 %258, -2, !dbg !1786
  %260 = load %struct.lua_State*, %struct.lua_State** %86, align 8, !dbg !1786, !tbaa !502
  br i1 %259, label %265, label %261, !dbg !1786

; <label>:261:                                    ; preds = %256
  %262 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %235, i64 0, i32 0, !dbg !1786
  %263 = load i8*, i8** %262, align 8, !dbg !1786, !tbaa !579
  %264 = call i8* @luaM_realloc_(%struct.lua_State* %260, i8* %263, i64 %257, i64 %258) #4, !dbg !1786
  br label %268, !dbg !1786

; <label>:265:                                    ; preds = %256
  %266 = call i8* @luaM_toobig(%struct.lua_State* %260) #4, !dbg !1786
  %267 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %235, i64 0, i32 0, !dbg !1786
  br label %268, !dbg !1786

; <label>:268:                                    ; preds = %265, %261
  %269 = phi i8** [ %267, %265 ], [ %262, %261 ], !dbg !1786
  %270 = phi i8* [ %266, %265 ], [ %264, %261 ], !dbg !1786
  store i8* %270, i8** %269, align 8, !dbg !1786, !tbaa !579
  store i64 %258, i64* %239, align 8, !dbg !1786, !tbaa !575
  %271 = load i64, i64* %236, align 8, !dbg !1787, !tbaa !570
  %272 = add i64 %271, 1, !dbg !1787
  br label %273, !dbg !1788

; <label>:273:                                    ; preds = %242, %268
  %274 = phi i64 [ %238, %242 ], [ %272, %268 ], !dbg !1787
  %275 = phi i64 [ %237, %242 ], [ %271, %268 ], !dbg !1787
  %276 = phi i8* [ %244, %242 ], [ %270, %268 ], !dbg !1767
  store i64 %274, i64* %236, align 8, !dbg !1787, !tbaa !570
  %277 = getelementptr inbounds i8, i8* %276, i64 %275, !dbg !1789
  store i8 10, i8* %277, align 1, !dbg !1790, !tbaa !403
  call fastcc void @inclinenumber(%struct.LexState* nonnull %0) #6, !dbg !1791
  br i1 %82, label %279, label %278, !dbg !1792

; <label>:278:                                    ; preds = %273, %341, %357, %279, %169, %104, %168, %166, %94
  br label %92, !dbg !1661, !llvm.loop !1793

; <label>:279:                                    ; preds = %273
  %280 = load %struct.Mbuffer*, %struct.Mbuffer** %12, align 8, !dbg !1796, !tbaa !567
  %281 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %280, i64 0, i32 1, !dbg !1796
  store i64 0, i64* %281, align 8, !dbg !1796, !tbaa !570
  br label %278, !dbg !1796

; <label>:282:                                    ; preds = %92
  br i1 %82, label %343, label %283, !dbg !1798

; <label>:283:                                    ; preds = %282
  %284 = load %struct.Mbuffer*, %struct.Mbuffer** %12, align 8, !dbg !1801, !tbaa !567
  %285 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %284, i64 0, i32 1, !dbg !1803
  %286 = load i64, i64* %285, align 8, !dbg !1803, !tbaa !570
  %287 = add i64 %286, 1, !dbg !1804
  %288 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %284, i64 0, i32 2, !dbg !1805
  %289 = load i64, i64* %288, align 8, !dbg !1805, !tbaa !575
  %290 = icmp ugt i64 %287, %289, !dbg !1806
  br i1 %290, label %294, label %291, !dbg !1807

; <label>:291:                                    ; preds = %283
  %292 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %284, i64 0, i32 0
  %293 = load i8*, i8** %292, align 8, !dbg !1808, !tbaa !579
  br label %322, !dbg !1807

; <label>:294:                                    ; preds = %283
  %295 = icmp ugt i64 %289, 9223372036854775805, !dbg !1809
  br i1 %295, label %296, label %305, !dbg !1810

; <label>:296:                                    ; preds = %294
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %89) #5, !dbg !1814
  %297 = load %union.TString*, %union.TString** %85, align 8, !dbg !1815, !tbaa !552
  %298 = getelementptr inbounds %union.TString, %union.TString* %297, i64 1, !dbg !1815
  %299 = bitcast %union.TString* %298 to i8*, !dbg !1815
  call void @luaO_chunkid(i8* nonnull %89, i8* nonnull %299, i64 80) #4, !dbg !1816
  %300 = load %struct.lua_State*, %struct.lua_State** %86, align 8, !dbg !1817, !tbaa !502
  %301 = load i32, i32* %87, align 4, !dbg !1818, !tbaa !556
  %302 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %300, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %89, i32 %301, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1819
  %303 = load %struct.lua_State*, %struct.lua_State** %86, align 8, !dbg !1820, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %303, i32 3) #4, !dbg !1821
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %89) #5, !dbg !1822
  %304 = load i64, i64* %288, align 8, !dbg !1823, !tbaa !575
  br label %305, !dbg !1824

; <label>:305:                                    ; preds = %296, %294
  %306 = phi i64 [ %304, %296 ], [ %289, %294 ], !dbg !1823
  %307 = shl i64 %306, 1, !dbg !1825
  %308 = icmp eq i64 %307, -2, !dbg !1827
  %309 = load %struct.lua_State*, %struct.lua_State** %86, align 8, !dbg !1827, !tbaa !502
  br i1 %308, label %314, label %310, !dbg !1827

; <label>:310:                                    ; preds = %305
  %311 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %284, i64 0, i32 0, !dbg !1827
  %312 = load i8*, i8** %311, align 8, !dbg !1827, !tbaa !579
  %313 = call i8* @luaM_realloc_(%struct.lua_State* %309, i8* %312, i64 %306, i64 %307) #4, !dbg !1827
  br label %317, !dbg !1827

; <label>:314:                                    ; preds = %305
  %315 = call i8* @luaM_toobig(%struct.lua_State* %309) #4, !dbg !1827
  %316 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %284, i64 0, i32 0, !dbg !1827
  br label %317, !dbg !1827

; <label>:317:                                    ; preds = %314, %310
  %318 = phi i8** [ %316, %314 ], [ %311, %310 ], !dbg !1827
  %319 = phi i8* [ %315, %314 ], [ %313, %310 ], !dbg !1827
  store i8* %319, i8** %318, align 8, !dbg !1827, !tbaa !579
  store i64 %307, i64* %288, align 8, !dbg !1827, !tbaa !575
  %320 = load i64, i64* %285, align 8, !dbg !1828, !tbaa !570
  %321 = add i64 %320, 1, !dbg !1828
  br label %322, !dbg !1829

; <label>:322:                                    ; preds = %291, %317
  %323 = phi i64 [ %287, %291 ], [ %321, %317 ], !dbg !1828
  %324 = phi i64 [ %286, %291 ], [ %320, %317 ], !dbg !1828
  %325 = phi i8* [ %293, %291 ], [ %319, %317 ], !dbg !1808
  %326 = trunc i32 %93 to i8, !dbg !1830
  store i64 %323, i64* %285, align 8, !dbg !1828, !tbaa !570
  %327 = getelementptr inbounds i8, i8* %325, i64 %324, !dbg !1831
  store i8 %326, i8* %327, align 1, !dbg !1832, !tbaa !403
  %328 = load %struct.Zio*, %struct.Zio** %64, align 8, !dbg !1833, !tbaa !703
  %329 = getelementptr inbounds %struct.Zio, %struct.Zio* %328, i64 0, i32 0, !dbg !1833
  %330 = load i64, i64* %329, align 8, !dbg !1833, !tbaa !715
  %331 = add i64 %330, -1, !dbg !1833
  store i64 %331, i64* %329, align 8, !dbg !1833, !tbaa !715
  %332 = icmp eq i64 %330, 0, !dbg !1833
  br i1 %332, label %339, label %333, !dbg !1833

; <label>:333:                                    ; preds = %322
  %334 = getelementptr inbounds %struct.Zio, %struct.Zio* %328, i64 0, i32 1, !dbg !1833
  %335 = load i8*, i8** %334, align 8, !dbg !1833, !tbaa !717
  %336 = getelementptr inbounds i8, i8* %335, i64 1, !dbg !1833
  store i8* %336, i8** %334, align 8, !dbg !1833, !tbaa !717
  %337 = load i8, i8* %335, align 1, !dbg !1833, !tbaa !403
  %338 = zext i8 %337 to i32, !dbg !1833
  br label %341, !dbg !1833

; <label>:339:                                    ; preds = %322
  %340 = call i32 @luaZ_fill(%struct.Zio* %328) #4, !dbg !1833
  br label %341, !dbg !1833

; <label>:341:                                    ; preds = %339, %333
  %342 = phi i32 [ %338, %333 ], [ %340, %339 ], !dbg !1833
  store i32 %342, i32* %10, align 8, !dbg !1833, !tbaa !718
  br label %278, !dbg !1833

; <label>:343:                                    ; preds = %282
  %344 = load %struct.Zio*, %struct.Zio** %64, align 8, !dbg !1834, !tbaa !703
  %345 = getelementptr inbounds %struct.Zio, %struct.Zio* %344, i64 0, i32 0, !dbg !1834
  %346 = load i64, i64* %345, align 8, !dbg !1834, !tbaa !715
  %347 = add i64 %346, -1, !dbg !1834
  store i64 %347, i64* %345, align 8, !dbg !1834, !tbaa !715
  %348 = icmp eq i64 %346, 0, !dbg !1834
  br i1 %348, label %355, label %349, !dbg !1834

; <label>:349:                                    ; preds = %343
  %350 = getelementptr inbounds %struct.Zio, %struct.Zio* %344, i64 0, i32 1, !dbg !1834
  %351 = load i8*, i8** %350, align 8, !dbg !1834, !tbaa !717
  %352 = getelementptr inbounds i8, i8* %351, i64 1, !dbg !1834
  store i8* %352, i8** %350, align 8, !dbg !1834, !tbaa !717
  %353 = load i8, i8* %351, align 1, !dbg !1834, !tbaa !403
  %354 = zext i8 %353 to i32, !dbg !1834
  br label %357, !dbg !1834

; <label>:355:                                    ; preds = %343
  %356 = call i32 @luaZ_fill(%struct.Zio* %344) #4, !dbg !1834
  br label %357, !dbg !1834

; <label>:357:                                    ; preds = %355, %349
  %358 = phi i32 [ %354, %349 ], [ %356, %355 ], !dbg !1834
  store i32 %358, i32* %10, align 8, !dbg !1834, !tbaa !718
  br label %278

; <label>:359:                                    ; preds = %232
  %360 = load %struct.Mbuffer*, %struct.Mbuffer** %12, align 8, !dbg !1835, !tbaa !567
  %361 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %360, i64 0, i32 0, !dbg !1835
  %362 = load i8*, i8** %361, align 8, !dbg !1835, !tbaa !579
  %363 = add nsw i32 %2, 2, !dbg !1837
  %364 = sext i32 %363 to i64, !dbg !1838
  %365 = getelementptr inbounds i8, i8* %362, i64 %364, !dbg !1838
  %366 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %360, i64 0, i32 1, !dbg !1839
  %367 = load i64, i64* %366, align 8, !dbg !1839, !tbaa !570
  %368 = shl nsw i32 %363, 1, !dbg !1840
  %369 = sext i32 %368 to i64, !dbg !1841
  %370 = sub i64 %367, %369, !dbg !1842
  %371 = load %struct.lua_State*, %struct.lua_State** %86, align 8, !dbg !1847, !tbaa !502
  %372 = call %union.TString* @luaS_newlstr(%struct.lua_State* %371, i8* %365, i64 %370) #4, !dbg !1849
  %373 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1851
  %374 = load %struct.FuncState*, %struct.FuncState** %373, align 8, !dbg !1851, !tbaa !657
  %375 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %374, i64 0, i32 1, !dbg !1852
  %376 = load %struct.Table*, %struct.Table** %375, align 8, !dbg !1852, !tbaa !659
  %377 = call %struct.lua_TValue* @luaH_setstr(%struct.lua_State* %371, %struct.Table* %376, %union.TString* %372) #4, !dbg !1853
  %378 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %377, i64 0, i32 1, !dbg !1855
  %379 = load i32, i32* %378, align 8, !dbg !1855, !tbaa !665
  %380 = icmp eq i32 %379, 0, !dbg !1855
  br i1 %380, label %381, label %391, !dbg !1856

; <label>:381:                                    ; preds = %359
  %382 = bitcast %struct.lua_TValue* %377 to i32*, !dbg !1857
  store i32 1, i32* %382, align 8, !dbg !1857, !tbaa !403
  store i32 1, i32* %378, align 8, !dbg !1857, !tbaa !665
  %383 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %371, i64 0, i32 6, !dbg !1858
  %384 = load %struct.global_State*, %struct.global_State** %383, align 8, !dbg !1858, !tbaa !672
  %385 = getelementptr inbounds %struct.global_State, %struct.global_State* %384, i64 0, i32 14, !dbg !1858
  %386 = load i64, i64* %385, align 8, !dbg !1858, !tbaa !674
  %387 = getelementptr inbounds %struct.global_State, %struct.global_State* %384, i64 0, i32 13, !dbg !1858
  %388 = load i64, i64* %387, align 8, !dbg !1858, !tbaa !678
  %389 = icmp ult i64 %386, %388, !dbg !1858
  br i1 %389, label %391, label %390, !dbg !1859

; <label>:390:                                    ; preds = %381
  call void @luaC_step(%struct.lua_State* nonnull %371) #4, !dbg !1858
  br label %391, !dbg !1858

; <label>:391:                                    ; preds = %359, %381, %390
  %392 = bitcast %union.SemInfo* %1 to %union.TString**, !dbg !1860
  store %union.TString* %372, %union.TString** %392, align 8, !dbg !1861, !tbaa !403
  br label %393, !dbg !1862

; <label>:393:                                    ; preds = %232, %391
  ret void, !dbg !1863
}

; Function Attrs: noredzone nounwind
define internal fastcc void @read_numeral(%struct.LexState*, %union.SemInfo*) unnamed_addr #0 !dbg !1864 {
  %3 = alloca [80 x i8], align 16
  %4 = alloca [80 x i8], align 16
  %5 = alloca [80 x i8], align 16
  %6 = alloca [80 x i8], align 16
  %7 = alloca [80 x i8], align 16
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %15 = load i32, i32* %8, align 8, !dbg !1891, !tbaa !718
  br label %16, !dbg !1892

; <label>:16:                                     ; preds = %75, %2
  %17 = phi i32 [ %79, %75 ], [ %15, %2 ], !dbg !1891
  %18 = load %struct.Mbuffer*, %struct.Mbuffer** %9, align 8, !dbg !1895, !tbaa !567
  %19 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %18, i64 0, i32 1, !dbg !1897
  %20 = load i64, i64* %19, align 8, !dbg !1897, !tbaa !570
  %21 = add i64 %20, 1, !dbg !1898
  %22 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %18, i64 0, i32 2, !dbg !1899
  %23 = load i64, i64* %22, align 8, !dbg !1899, !tbaa !575
  %24 = icmp ugt i64 %21, %23, !dbg !1900
  br i1 %24, label %28, label %25, !dbg !1901

; <label>:25:                                     ; preds = %16
  %26 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %18, i64 0, i32 0
  %27 = load i8*, i8** %26, align 8, !dbg !1902, !tbaa !579
  br label %56, !dbg !1901

; <label>:28:                                     ; preds = %16
  %29 = icmp ugt i64 %23, 9223372036854775805, !dbg !1903
  br i1 %29, label %30, label %39, !dbg !1904

; <label>:30:                                     ; preds = %28
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %11) #5, !dbg !1908
  %31 = load %union.TString*, %union.TString** %12, align 8, !dbg !1909, !tbaa !552
  %32 = getelementptr inbounds %union.TString, %union.TString* %31, i64 1, !dbg !1909
  %33 = bitcast %union.TString* %32 to i8*, !dbg !1909
  call void @luaO_chunkid(i8* nonnull %11, i8* nonnull %33, i64 80) #4, !dbg !1910
  %34 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !dbg !1911, !tbaa !502
  %35 = load i32, i32* %14, align 4, !dbg !1912, !tbaa !556
  %36 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %11, i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1913
  %37 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !dbg !1914, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %37, i32 3) #4, !dbg !1915
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %11) #5, !dbg !1916
  %38 = load i64, i64* %22, align 8, !dbg !1917, !tbaa !575
  br label %39, !dbg !1918

; <label>:39:                                     ; preds = %30, %28
  %40 = phi i64 [ %38, %30 ], [ %23, %28 ], !dbg !1917
  %41 = shl i64 %40, 1, !dbg !1919
  %42 = icmp eq i64 %41, -2, !dbg !1921
  %43 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !dbg !1921, !tbaa !502
  br i1 %42, label %48, label %44, !dbg !1921

; <label>:44:                                     ; preds = %39
  %45 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %18, i64 0, i32 0, !dbg !1921
  %46 = load i8*, i8** %45, align 8, !dbg !1921, !tbaa !579
  %47 = call i8* @luaM_realloc_(%struct.lua_State* %43, i8* %46, i64 %40, i64 %41) #4, !dbg !1921
  br label %51, !dbg !1921

; <label>:48:                                     ; preds = %39
  %49 = call i8* @luaM_toobig(%struct.lua_State* %43) #4, !dbg !1921
  %50 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %18, i64 0, i32 0, !dbg !1921
  br label %51, !dbg !1921

; <label>:51:                                     ; preds = %48, %44
  %52 = phi i8** [ %50, %48 ], [ %45, %44 ], !dbg !1921
  %53 = phi i8* [ %49, %48 ], [ %47, %44 ], !dbg !1921
  store i8* %53, i8** %52, align 8, !dbg !1921, !tbaa !579
  store i64 %41, i64* %22, align 8, !dbg !1921, !tbaa !575
  %54 = load i64, i64* %19, align 8, !dbg !1922, !tbaa !570
  %55 = add i64 %54, 1, !dbg !1922
  br label %56, !dbg !1923

; <label>:56:                                     ; preds = %25, %51
  %57 = phi i64 [ %21, %25 ], [ %55, %51 ], !dbg !1922
  %58 = phi i64 [ %20, %25 ], [ %54, %51 ], !dbg !1922
  %59 = phi i8* [ %27, %25 ], [ %53, %51 ], !dbg !1902
  %60 = trunc i32 %17 to i8, !dbg !1924
  store i64 %57, i64* %19, align 8, !dbg !1922, !tbaa !570
  %61 = getelementptr inbounds i8, i8* %59, i64 %58, !dbg !1925
  store i8 %60, i8* %61, align 1, !dbg !1926, !tbaa !403
  %62 = load %struct.Zio*, %struct.Zio** %10, align 8, !dbg !1891, !tbaa !703
  %63 = getelementptr inbounds %struct.Zio, %struct.Zio* %62, i64 0, i32 0, !dbg !1891
  %64 = load i64, i64* %63, align 8, !dbg !1891, !tbaa !715
  %65 = add i64 %64, -1, !dbg !1891
  store i64 %65, i64* %63, align 8, !dbg !1891, !tbaa !715
  %66 = icmp eq i64 %64, 0, !dbg !1891
  br i1 %66, label %73, label %67, !dbg !1891

; <label>:67:                                     ; preds = %56
  %68 = getelementptr inbounds %struct.Zio, %struct.Zio* %62, i64 0, i32 1, !dbg !1891
  %69 = load i8*, i8** %68, align 8, !dbg !1891, !tbaa !717
  %70 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !1891
  store i8* %70, i8** %68, align 8, !dbg !1891, !tbaa !717
  %71 = load i8, i8* %69, align 1, !dbg !1891, !tbaa !403
  %72 = zext i8 %71 to i32, !dbg !1891
  br label %75, !dbg !1891

; <label>:73:                                     ; preds = %56
  %74 = call i32 @luaZ_fill(%struct.Zio* %62) #4, !dbg !1891
  br label %75, !dbg !1891

; <label>:75:                                     ; preds = %73, %67
  %76 = phi i32 [ %72, %67 ], [ %74, %73 ], !dbg !1891
  store i32 %76, i32* %8, align 8, !dbg !1891, !tbaa !718
  %77 = call i8* @__locale_ctype_ptr() #4, !dbg !1927
  %78 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !1927
  %79 = load i32, i32* %8, align 8, !dbg !1927, !tbaa !718
  %80 = sext i32 %79 to i64, !dbg !1927
  %81 = getelementptr inbounds i8, i8* %78, i64 %80, !dbg !1927
  %82 = load i8, i8* %81, align 1, !dbg !1927, !tbaa !403
  %83 = and i8 %82, 4, !dbg !1927
  %84 = icmp ne i8 %83, 0, !dbg !1927
  %85 = icmp eq i32 %79, 46, !dbg !1928
  %86 = or i1 %85, %84, !dbg !1929
  br i1 %86, label %16, label %87, !dbg !1929, !llvm.loop !1930

; <label>:87:                                     ; preds = %75
  %88 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i32 %79) #4, !dbg !1934
  %89 = icmp eq i8* %88, null, !dbg !1934
  br i1 %89, label %216, label %90, !dbg !1935

; <label>:90:                                     ; preds = %87
  %91 = load i32, i32* %8, align 8, !dbg !1936, !tbaa !718
  %92 = load %struct.Mbuffer*, %struct.Mbuffer** %9, align 8, !dbg !1939, !tbaa !567
  %93 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %92, i64 0, i32 1, !dbg !1941
  %94 = load i64, i64* %93, align 8, !dbg !1941, !tbaa !570
  %95 = add i64 %94, 1, !dbg !1942
  %96 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %92, i64 0, i32 2, !dbg !1943
  %97 = load i64, i64* %96, align 8, !dbg !1943, !tbaa !575
  %98 = icmp ugt i64 %95, %97, !dbg !1944
  br i1 %98, label %102, label %99, !dbg !1945

; <label>:99:                                     ; preds = %90
  %100 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %92, i64 0, i32 0
  %101 = load i8*, i8** %100, align 8, !dbg !1946, !tbaa !579
  br label %131, !dbg !1945

; <label>:102:                                    ; preds = %90
  %103 = icmp ugt i64 %97, 9223372036854775805, !dbg !1947
  br i1 %103, label %104, label %114, !dbg !1948

; <label>:104:                                    ; preds = %102
  %105 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0, !dbg !1952
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %105) #5, !dbg !1952
  %106 = load %union.TString*, %union.TString** %12, align 8, !dbg !1953, !tbaa !552
  %107 = getelementptr inbounds %union.TString, %union.TString* %106, i64 1, !dbg !1953
  %108 = bitcast %union.TString* %107 to i8*, !dbg !1953
  call void @luaO_chunkid(i8* nonnull %105, i8* nonnull %108, i64 80) #4, !dbg !1954
  %109 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !dbg !1955, !tbaa !502
  %110 = load i32, i32* %14, align 4, !dbg !1956, !tbaa !556
  %111 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %105, i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1957
  %112 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !dbg !1958, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %112, i32 3) #4, !dbg !1959
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %105) #5, !dbg !1960
  %113 = load i64, i64* %96, align 8, !dbg !1961, !tbaa !575
  br label %114, !dbg !1962

; <label>:114:                                    ; preds = %104, %102
  %115 = phi i64 [ %113, %104 ], [ %97, %102 ], !dbg !1961
  %116 = shl i64 %115, 1, !dbg !1963
  %117 = icmp eq i64 %116, -2, !dbg !1965
  %118 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !dbg !1965, !tbaa !502
  br i1 %117, label %123, label %119, !dbg !1965

; <label>:119:                                    ; preds = %114
  %120 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %92, i64 0, i32 0, !dbg !1965
  %121 = load i8*, i8** %120, align 8, !dbg !1965, !tbaa !579
  %122 = call i8* @luaM_realloc_(%struct.lua_State* %118, i8* %121, i64 %115, i64 %116) #4, !dbg !1965
  br label %126, !dbg !1965

; <label>:123:                                    ; preds = %114
  %124 = call i8* @luaM_toobig(%struct.lua_State* %118) #4, !dbg !1965
  %125 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %92, i64 0, i32 0, !dbg !1965
  br label %126, !dbg !1965

; <label>:126:                                    ; preds = %123, %119
  %127 = phi i8** [ %125, %123 ], [ %120, %119 ], !dbg !1965
  %128 = phi i8* [ %124, %123 ], [ %122, %119 ], !dbg !1965
  store i8* %128, i8** %127, align 8, !dbg !1965, !tbaa !579
  store i64 %116, i64* %96, align 8, !dbg !1965, !tbaa !575
  %129 = load i64, i64* %93, align 8, !dbg !1966, !tbaa !570
  %130 = add i64 %129, 1, !dbg !1966
  br label %131, !dbg !1967

; <label>:131:                                    ; preds = %99, %126
  %132 = phi i64 [ %95, %99 ], [ %130, %126 ], !dbg !1966
  %133 = phi i64 [ %94, %99 ], [ %129, %126 ], !dbg !1966
  %134 = phi i8* [ %101, %99 ], [ %128, %126 ], !dbg !1946
  %135 = trunc i32 %91 to i8, !dbg !1968
  store i64 %132, i64* %93, align 8, !dbg !1966, !tbaa !570
  %136 = getelementptr inbounds i8, i8* %134, i64 %133, !dbg !1969
  store i8 %135, i8* %136, align 1, !dbg !1970, !tbaa !403
  %137 = load %struct.Zio*, %struct.Zio** %10, align 8, !dbg !1936, !tbaa !703
  %138 = getelementptr inbounds %struct.Zio, %struct.Zio* %137, i64 0, i32 0, !dbg !1936
  %139 = load i64, i64* %138, align 8, !dbg !1936, !tbaa !715
  %140 = add i64 %139, -1, !dbg !1936
  store i64 %140, i64* %138, align 8, !dbg !1936, !tbaa !715
  %141 = icmp eq i64 %139, 0, !dbg !1936
  br i1 %141, label %148, label %142, !dbg !1936

; <label>:142:                                    ; preds = %131
  %143 = getelementptr inbounds %struct.Zio, %struct.Zio* %137, i64 0, i32 1, !dbg !1936
  %144 = load i8*, i8** %143, align 8, !dbg !1936, !tbaa !717
  %145 = getelementptr inbounds i8, i8* %144, i64 1, !dbg !1936
  store i8* %145, i8** %143, align 8, !dbg !1936, !tbaa !717
  %146 = load i8, i8* %144, align 1, !dbg !1936, !tbaa !403
  %147 = zext i8 %146 to i32, !dbg !1936
  br label %150, !dbg !1936

; <label>:148:                                    ; preds = %131
  %149 = call i32 @luaZ_fill(%struct.Zio* %137) #4, !dbg !1936
  br label %150, !dbg !1936

; <label>:150:                                    ; preds = %148, %142
  %151 = phi i32 [ %147, %142 ], [ %149, %148 ], !dbg !1936
  store i32 %151, i32* %8, align 8, !dbg !1936, !tbaa !718
  %152 = call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i32 %151) #4, !dbg !1973
  %153 = icmp eq i8* %152, null, !dbg !1973
  br i1 %153, label %216, label %154, !dbg !1974

; <label>:154:                                    ; preds = %150
  %155 = load i32, i32* %8, align 8, !dbg !1975, !tbaa !718
  %156 = load %struct.Mbuffer*, %struct.Mbuffer** %9, align 8, !dbg !1978, !tbaa !567
  %157 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %156, i64 0, i32 1, !dbg !1980
  %158 = load i64, i64* %157, align 8, !dbg !1980, !tbaa !570
  %159 = add i64 %158, 1, !dbg !1981
  %160 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %156, i64 0, i32 2, !dbg !1982
  %161 = load i64, i64* %160, align 8, !dbg !1982, !tbaa !575
  %162 = icmp ugt i64 %159, %161, !dbg !1983
  br i1 %162, label %166, label %163, !dbg !1984

; <label>:163:                                    ; preds = %154
  %164 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %156, i64 0, i32 0
  %165 = load i8*, i8** %164, align 8, !dbg !1985, !tbaa !579
  br label %195, !dbg !1984

; <label>:166:                                    ; preds = %154
  %167 = icmp ugt i64 %161, 9223372036854775805, !dbg !1986
  br i1 %167, label %168, label %178, !dbg !1987

; <label>:168:                                    ; preds = %166
  %169 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0, !dbg !1991
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %169) #5, !dbg !1991
  %170 = load %union.TString*, %union.TString** %12, align 8, !dbg !1992, !tbaa !552
  %171 = getelementptr inbounds %union.TString, %union.TString* %170, i64 1, !dbg !1992
  %172 = bitcast %union.TString* %171 to i8*, !dbg !1992
  call void @luaO_chunkid(i8* nonnull %169, i8* nonnull %172, i64 80) #4, !dbg !1993
  %173 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !dbg !1994, !tbaa !502
  %174 = load i32, i32* %14, align 4, !dbg !1995, !tbaa !556
  %175 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %169, i32 %174, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1996
  %176 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !dbg !1997, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %176, i32 3) #4, !dbg !1998
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %169) #5, !dbg !1999
  %177 = load i64, i64* %160, align 8, !dbg !2000, !tbaa !575
  br label %178, !dbg !2001

; <label>:178:                                    ; preds = %168, %166
  %179 = phi i64 [ %177, %168 ], [ %161, %166 ], !dbg !2000
  %180 = shl i64 %179, 1, !dbg !2002
  %181 = icmp eq i64 %180, -2, !dbg !2004
  %182 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !dbg !2004, !tbaa !502
  br i1 %181, label %187, label %183, !dbg !2004

; <label>:183:                                    ; preds = %178
  %184 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %156, i64 0, i32 0, !dbg !2004
  %185 = load i8*, i8** %184, align 8, !dbg !2004, !tbaa !579
  %186 = call i8* @luaM_realloc_(%struct.lua_State* %182, i8* %185, i64 %179, i64 %180) #4, !dbg !2004
  br label %190, !dbg !2004

; <label>:187:                                    ; preds = %178
  %188 = call i8* @luaM_toobig(%struct.lua_State* %182) #4, !dbg !2004
  %189 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %156, i64 0, i32 0, !dbg !2004
  br label %190, !dbg !2004

; <label>:190:                                    ; preds = %187, %183
  %191 = phi i8** [ %189, %187 ], [ %184, %183 ], !dbg !2004
  %192 = phi i8* [ %188, %187 ], [ %186, %183 ], !dbg !2004
  store i8* %192, i8** %191, align 8, !dbg !2004, !tbaa !579
  store i64 %180, i64* %160, align 8, !dbg !2004, !tbaa !575
  %193 = load i64, i64* %157, align 8, !dbg !2005, !tbaa !570
  %194 = add i64 %193, 1, !dbg !2005
  br label %195, !dbg !2006

; <label>:195:                                    ; preds = %163, %190
  %196 = phi i64 [ %159, %163 ], [ %194, %190 ], !dbg !2005
  %197 = phi i64 [ %158, %163 ], [ %193, %190 ], !dbg !2005
  %198 = phi i8* [ %165, %163 ], [ %192, %190 ], !dbg !1985
  %199 = trunc i32 %155 to i8, !dbg !2007
  store i64 %196, i64* %157, align 8, !dbg !2005, !tbaa !570
  %200 = getelementptr inbounds i8, i8* %198, i64 %197, !dbg !2008
  store i8 %199, i8* %200, align 1, !dbg !2009, !tbaa !403
  %201 = load %struct.Zio*, %struct.Zio** %10, align 8, !dbg !1975, !tbaa !703
  %202 = getelementptr inbounds %struct.Zio, %struct.Zio* %201, i64 0, i32 0, !dbg !1975
  %203 = load i64, i64* %202, align 8, !dbg !1975, !tbaa !715
  %204 = add i64 %203, -1, !dbg !1975
  store i64 %204, i64* %202, align 8, !dbg !1975, !tbaa !715
  %205 = icmp eq i64 %203, 0, !dbg !1975
  br i1 %205, label %212, label %206, !dbg !1975

; <label>:206:                                    ; preds = %195
  %207 = getelementptr inbounds %struct.Zio, %struct.Zio* %201, i64 0, i32 1, !dbg !1975
  %208 = load i8*, i8** %207, align 8, !dbg !1975, !tbaa !717
  %209 = getelementptr inbounds i8, i8* %208, i64 1, !dbg !1975
  store i8* %209, i8** %207, align 8, !dbg !1975, !tbaa !717
  %210 = load i8, i8* %208, align 1, !dbg !1975, !tbaa !403
  %211 = zext i8 %210 to i32, !dbg !1975
  br label %214, !dbg !1975

; <label>:212:                                    ; preds = %195
  %213 = call i32 @luaZ_fill(%struct.Zio* %201) #4, !dbg !1975
  br label %214, !dbg !1975

; <label>:214:                                    ; preds = %212, %206
  %215 = phi i32 [ %211, %206 ], [ %213, %212 ], !dbg !1975
  store i32 %215, i32* %8, align 8, !dbg !1975, !tbaa !718
  br label %216, !dbg !2010

; <label>:216:                                    ; preds = %87, %214, %150
  %217 = call i8* @__locale_ctype_ptr() #4, !dbg !2011
  %218 = getelementptr inbounds i8, i8* %217, i64 1, !dbg !2011
  %219 = load i32, i32* %8, align 8, !dbg !2011, !tbaa !718
  %220 = sext i32 %219 to i64, !dbg !2011
  %221 = getelementptr inbounds i8, i8* %218, i64 %220, !dbg !2011
  %222 = load i8, i8* %221, align 1, !dbg !2011, !tbaa !403
  %223 = and i8 %222, 7, !dbg !2011
  %224 = icmp ne i8 %223, 0, !dbg !2011
  %225 = icmp eq i32 %219, 95, !dbg !2012
  %226 = or i1 %225, %224, !dbg !2013
  %227 = load %struct.Mbuffer*, %struct.Mbuffer** %9, align 8, !dbg !2016, !tbaa !567
  %228 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %227, i64 0, i32 1, !dbg !2019
  %229 = load i64, i64* %228, align 8, !dbg !2019, !tbaa !570
  %230 = add i64 %229, 1, !dbg !2020
  %231 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %227, i64 0, i32 2, !dbg !2021
  %232 = load i64, i64* %231, align 8, !dbg !2021, !tbaa !575
  %233 = icmp ugt i64 %230, %232, !dbg !2022
  br i1 %226, label %234, label %314, !dbg !2023

; <label>:234:                                    ; preds = %216
  %235 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  br label %236, !dbg !2023

; <label>:236:                                    ; preds = %234, %295
  %237 = phi i1 [ %233, %234 ], [ %313, %295 ]
  %238 = phi i64 [ %232, %234 ], [ %312, %295 ]
  %239 = phi i64* [ %231, %234 ], [ %311, %295 ]
  %240 = phi i64 [ %230, %234 ], [ %310, %295 ]
  %241 = phi i64 [ %229, %234 ], [ %309, %295 ]
  %242 = phi i64* [ %228, %234 ], [ %308, %295 ]
  %243 = phi %struct.Mbuffer* [ %227, %234 ], [ %307, %295 ]
  %244 = phi i32 [ %219, %234 ], [ %299, %295 ]
  br i1 %237, label %248, label %245, !dbg !2025

; <label>:245:                                    ; preds = %236
  %246 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %243, i64 0, i32 0
  %247 = load i8*, i8** %246, align 8, !dbg !2026, !tbaa !579
  br label %276, !dbg !2025

; <label>:248:                                    ; preds = %236
  %249 = icmp ugt i64 %238, 9223372036854775805, !dbg !2027
  br i1 %249, label %250, label %259, !dbg !2028

; <label>:250:                                    ; preds = %248
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %235) #5, !dbg !2032
  %251 = load %union.TString*, %union.TString** %12, align 8, !dbg !2033, !tbaa !552
  %252 = getelementptr inbounds %union.TString, %union.TString* %251, i64 1, !dbg !2033
  %253 = bitcast %union.TString* %252 to i8*, !dbg !2033
  call void @luaO_chunkid(i8* nonnull %235, i8* nonnull %253, i64 80) #4, !dbg !2034
  %254 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !dbg !2035, !tbaa !502
  %255 = load i32, i32* %14, align 4, !dbg !2036, !tbaa !556
  %256 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %254, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %235, i32 %255, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !2037
  %257 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !dbg !2038, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %257, i32 3) #4, !dbg !2039
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %235) #5, !dbg !2040
  %258 = load i64, i64* %239, align 8, !dbg !2041, !tbaa !575
  br label %259, !dbg !2042

; <label>:259:                                    ; preds = %250, %248
  %260 = phi i64 [ %258, %250 ], [ %238, %248 ], !dbg !2041
  %261 = shl i64 %260, 1, !dbg !2043
  %262 = icmp eq i64 %261, -2, !dbg !2045
  %263 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !dbg !2045, !tbaa !502
  br i1 %262, label %268, label %264, !dbg !2045

; <label>:264:                                    ; preds = %259
  %265 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %243, i64 0, i32 0, !dbg !2045
  %266 = load i8*, i8** %265, align 8, !dbg !2045, !tbaa !579
  %267 = call i8* @luaM_realloc_(%struct.lua_State* %263, i8* %266, i64 %260, i64 %261) #4, !dbg !2045
  br label %271, !dbg !2045

; <label>:268:                                    ; preds = %259
  %269 = call i8* @luaM_toobig(%struct.lua_State* %263) #4, !dbg !2045
  %270 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %243, i64 0, i32 0, !dbg !2045
  br label %271, !dbg !2045

; <label>:271:                                    ; preds = %268, %264
  %272 = phi i8** [ %270, %268 ], [ %265, %264 ], !dbg !2045
  %273 = phi i8* [ %269, %268 ], [ %267, %264 ], !dbg !2045
  store i8* %273, i8** %272, align 8, !dbg !2045, !tbaa !579
  store i64 %261, i64* %239, align 8, !dbg !2045, !tbaa !575
  %274 = load i64, i64* %242, align 8, !dbg !2046, !tbaa !570
  %275 = add i64 %274, 1, !dbg !2046
  br label %276, !dbg !2047

; <label>:276:                                    ; preds = %245, %271
  %277 = phi i64 [ %240, %245 ], [ %275, %271 ], !dbg !2046
  %278 = phi i64 [ %241, %245 ], [ %274, %271 ], !dbg !2046
  %279 = phi i8* [ %247, %245 ], [ %273, %271 ], !dbg !2026
  %280 = trunc i32 %244 to i8, !dbg !2048
  store i64 %277, i64* %242, align 8, !dbg !2046, !tbaa !570
  %281 = getelementptr inbounds i8, i8* %279, i64 %278, !dbg !2049
  store i8 %280, i8* %281, align 1, !dbg !2050, !tbaa !403
  %282 = load %struct.Zio*, %struct.Zio** %10, align 8, !dbg !2051, !tbaa !703
  %283 = getelementptr inbounds %struct.Zio, %struct.Zio* %282, i64 0, i32 0, !dbg !2051
  %284 = load i64, i64* %283, align 8, !dbg !2051, !tbaa !715
  %285 = add i64 %284, -1, !dbg !2051
  store i64 %285, i64* %283, align 8, !dbg !2051, !tbaa !715
  %286 = icmp eq i64 %284, 0, !dbg !2051
  br i1 %286, label %293, label %287, !dbg !2051

; <label>:287:                                    ; preds = %276
  %288 = getelementptr inbounds %struct.Zio, %struct.Zio* %282, i64 0, i32 1, !dbg !2051
  %289 = load i8*, i8** %288, align 8, !dbg !2051, !tbaa !717
  %290 = getelementptr inbounds i8, i8* %289, i64 1, !dbg !2051
  store i8* %290, i8** %288, align 8, !dbg !2051, !tbaa !717
  %291 = load i8, i8* %289, align 1, !dbg !2051, !tbaa !403
  %292 = zext i8 %291 to i32, !dbg !2051
  br label %295, !dbg !2051

; <label>:293:                                    ; preds = %276
  %294 = call i32 @luaZ_fill(%struct.Zio* %282) #4, !dbg !2051
  br label %295, !dbg !2051

; <label>:295:                                    ; preds = %293, %287
  %296 = phi i32 [ %292, %287 ], [ %294, %293 ], !dbg !2051
  store i32 %296, i32* %8, align 8, !dbg !2051, !tbaa !718
  %297 = call i8* @__locale_ctype_ptr() #4, !dbg !2011
  %298 = getelementptr inbounds i8, i8* %297, i64 1, !dbg !2011
  %299 = load i32, i32* %8, align 8, !dbg !2011, !tbaa !718
  %300 = sext i32 %299 to i64, !dbg !2011
  %301 = getelementptr inbounds i8, i8* %298, i64 %300, !dbg !2011
  %302 = load i8, i8* %301, align 1, !dbg !2011, !tbaa !403
  %303 = and i8 %302, 7, !dbg !2011
  %304 = icmp ne i8 %303, 0, !dbg !2011
  %305 = icmp eq i32 %299, 95, !dbg !2012
  %306 = or i1 %305, %304, !dbg !2013
  %307 = load %struct.Mbuffer*, %struct.Mbuffer** %9, align 8, !dbg !2016, !tbaa !567
  %308 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %307, i64 0, i32 1, !dbg !2019
  %309 = load i64, i64* %308, align 8, !dbg !2019, !tbaa !570
  %310 = add i64 %309, 1, !dbg !2020
  %311 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %307, i64 0, i32 2, !dbg !2021
  %312 = load i64, i64* %311, align 8, !dbg !2021, !tbaa !575
  %313 = icmp ugt i64 %310, %312, !dbg !2022
  br i1 %306, label %236, label %314, !dbg !2023, !llvm.loop !2052

; <label>:314:                                    ; preds = %295, %216
  %315 = phi %struct.Mbuffer* [ %227, %216 ], [ %307, %295 ], !dbg !2016
  %316 = phi i64* [ %228, %216 ], [ %308, %295 ], !dbg !2019
  %317 = phi i64 [ %229, %216 ], [ %309, %295 ], !dbg !2019
  %318 = phi i64 [ %230, %216 ], [ %310, %295 ], !dbg !2020
  %319 = phi i64* [ %231, %216 ], [ %311, %295 ], !dbg !2021
  %320 = phi i64 [ %232, %216 ], [ %312, %295 ], !dbg !2021
  %321 = phi i1 [ %233, %216 ], [ %313, %295 ], !dbg !2022
  br i1 %321, label %325, label %322, !dbg !2054

; <label>:322:                                    ; preds = %314
  %323 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %315, i64 0, i32 0
  %324 = load i8*, i8** %323, align 8, !dbg !2055, !tbaa !579
  br label %354, !dbg !2054

; <label>:325:                                    ; preds = %314
  %326 = icmp ugt i64 %320, 9223372036854775805, !dbg !2056
  br i1 %326, label %327, label %337, !dbg !2057

; <label>:327:                                    ; preds = %325
  %328 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0, !dbg !2061
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %328) #5, !dbg !2061
  %329 = load %union.TString*, %union.TString** %12, align 8, !dbg !2062, !tbaa !552
  %330 = getelementptr inbounds %union.TString, %union.TString* %329, i64 1, !dbg !2062
  %331 = bitcast %union.TString* %330 to i8*, !dbg !2062
  call void @luaO_chunkid(i8* nonnull %328, i8* nonnull %331, i64 80) #4, !dbg !2063
  %332 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !dbg !2064, !tbaa !502
  %333 = load i32, i32* %14, align 4, !dbg !2065, !tbaa !556
  %334 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %332, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %328, i32 %333, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !2066
  %335 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !dbg !2067, !tbaa !502
  call void @luaD_throw(%struct.lua_State* %335, i32 3) #4, !dbg !2068
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %328) #5, !dbg !2069
  %336 = load i64, i64* %319, align 8, !dbg !2070, !tbaa !575
  br label %337, !dbg !2071

; <label>:337:                                    ; preds = %327, %325
  %338 = phi i64 [ %336, %327 ], [ %320, %325 ], !dbg !2070
  %339 = shl i64 %338, 1, !dbg !2072
  %340 = icmp eq i64 %339, -2, !dbg !2074
  %341 = load %struct.lua_State*, %struct.lua_State** %13, align 8, !dbg !2074, !tbaa !502
  br i1 %340, label %346, label %342, !dbg !2074

; <label>:342:                                    ; preds = %337
  %343 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %315, i64 0, i32 0, !dbg !2074
  %344 = load i8*, i8** %343, align 8, !dbg !2074, !tbaa !579
  %345 = call i8* @luaM_realloc_(%struct.lua_State* %341, i8* %344, i64 %338, i64 %339) #4, !dbg !2074
  br label %349, !dbg !2074

; <label>:346:                                    ; preds = %337
  %347 = call i8* @luaM_toobig(%struct.lua_State* %341) #4, !dbg !2074
  %348 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %315, i64 0, i32 0, !dbg !2074
  br label %349, !dbg !2074

; <label>:349:                                    ; preds = %346, %342
  %350 = phi i8** [ %348, %346 ], [ %343, %342 ], !dbg !2074
  %351 = phi i8* [ %347, %346 ], [ %345, %342 ], !dbg !2074
  store i8* %351, i8** %350, align 8, !dbg !2074, !tbaa !579
  store i64 %339, i64* %319, align 8, !dbg !2074, !tbaa !575
  %352 = load i64, i64* %316, align 8, !dbg !2075, !tbaa !570
  %353 = add i64 %352, 1, !dbg !2075
  br label %354, !dbg !2076

; <label>:354:                                    ; preds = %322, %349
  %355 = phi i64 [ %318, %322 ], [ %353, %349 ], !dbg !2075
  %356 = phi i64 [ %317, %322 ], [ %352, %349 ], !dbg !2075
  %357 = phi i8* [ %324, %322 ], [ %351, %349 ], !dbg !2055
  store i64 %355, i64* %316, align 8, !dbg !2075, !tbaa !570
  %358 = getelementptr inbounds i8, i8* %357, i64 %356, !dbg !2077
  store i8 0, i8* %358, align 1, !dbg !2078, !tbaa !403
  %359 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10, !dbg !2079
  %360 = load i8, i8* %359, align 8, !dbg !2079, !tbaa !695
  %361 = load %struct.Mbuffer*, %struct.Mbuffer** %9, align 8, !dbg !2093, !tbaa !567
  %362 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %361, i64 0, i32 1, !dbg !2093
  %363 = load i64, i64* %362, align 8, !dbg !2093, !tbaa !570
  %364 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %361, i64 0, i32 0, !dbg !2095
  %365 = load i8*, i8** %364, align 8, !dbg !2095, !tbaa !579
  %366 = icmp eq i64 %363, 0, !dbg !2097
  br i1 %366, label %439, label %367, !dbg !2097

; <label>:367:                                    ; preds = %354
  %368 = icmp ult i64 %363, 8, !dbg !2098
  br i1 %368, label %424, label %369, !dbg !2098

; <label>:369:                                    ; preds = %367
  %370 = and i64 %363, -8, !dbg !2098
  %371 = sub i64 %363, %370, !dbg !2098
  br label %372, !dbg !2098

; <label>:372:                                    ; preds = %419, %369
  %373 = phi i64 [ 0, %369 ], [ %420, %419 ]
  %374 = sub i64 %363, %373
  %375 = add i64 %374, -1, !dbg !2098
  %376 = getelementptr inbounds i8, i8* %365, i64 %375, !dbg !2099
  %377 = getelementptr inbounds i8, i8* %376, i64 -7, !dbg !2099
  %378 = bitcast i8* %377 to <8 x i8>*, !dbg !2099
  %379 = load <8 x i8>, <8 x i8>* %378, align 1, !dbg !2099, !tbaa !403
  %380 = shufflevector <8 x i8> %379, <8 x i8> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !2099
  %381 = icmp eq <8 x i8> %380, <i8 46, i8 46, i8 46, i8 46, i8 46, i8 46, i8 46, i8 46>, !dbg !2101
  %382 = extractelement <8 x i1> %381, i32 0, !dbg !2101
  br i1 %382, label %383, label %384

; <label>:383:                                    ; preds = %372
  store i8 %360, i8* %376, align 1, !dbg !2102, !tbaa !403
  br label %384

; <label>:384:                                    ; preds = %383, %372
  %385 = extractelement <8 x i1> %381, i32 1, !dbg !2102
  br i1 %385, label %386, label %389, !dbg !2102

; <label>:386:                                    ; preds = %384
  %387 = add i64 %374, -2, !dbg !2098
  %388 = getelementptr inbounds i8, i8* %365, i64 %387, !dbg !2099
  store i8 %360, i8* %388, align 1, !dbg !2102, !tbaa !403
  br label %389

; <label>:389:                                    ; preds = %386, %384
  %390 = extractelement <8 x i1> %381, i32 2, !dbg !2102
  br i1 %390, label %391, label %394, !dbg !2102

; <label>:391:                                    ; preds = %389
  %392 = add i64 %374, -3, !dbg !2098
  %393 = getelementptr inbounds i8, i8* %365, i64 %392, !dbg !2099
  store i8 %360, i8* %393, align 1, !dbg !2102, !tbaa !403
  br label %394

; <label>:394:                                    ; preds = %391, %389
  %395 = extractelement <8 x i1> %381, i32 3, !dbg !2102
  br i1 %395, label %396, label %399, !dbg !2102

; <label>:396:                                    ; preds = %394
  %397 = add i64 %374, -4, !dbg !2098
  %398 = getelementptr inbounds i8, i8* %365, i64 %397, !dbg !2099
  store i8 %360, i8* %398, align 1, !dbg !2102, !tbaa !403
  br label %399

; <label>:399:                                    ; preds = %396, %394
  %400 = extractelement <8 x i1> %381, i32 4, !dbg !2102
  br i1 %400, label %401, label %404, !dbg !2102

; <label>:401:                                    ; preds = %399
  %402 = add i64 %374, -5, !dbg !2098
  %403 = getelementptr inbounds i8, i8* %365, i64 %402, !dbg !2099
  store i8 %360, i8* %403, align 1, !dbg !2102, !tbaa !403
  br label %404

; <label>:404:                                    ; preds = %401, %399
  %405 = extractelement <8 x i1> %381, i32 5, !dbg !2102
  br i1 %405, label %406, label %409, !dbg !2102

; <label>:406:                                    ; preds = %404
  %407 = add i64 %374, -6, !dbg !2098
  %408 = getelementptr inbounds i8, i8* %365, i64 %407, !dbg !2099
  store i8 %360, i8* %408, align 1, !dbg !2102, !tbaa !403
  br label %409

; <label>:409:                                    ; preds = %406, %404
  %410 = extractelement <8 x i1> %381, i32 6, !dbg !2102
  br i1 %410, label %411, label %414, !dbg !2102

; <label>:411:                                    ; preds = %409
  %412 = add i64 %374, -7, !dbg !2098
  %413 = getelementptr inbounds i8, i8* %365, i64 %412, !dbg !2099
  store i8 %360, i8* %413, align 1, !dbg !2102, !tbaa !403
  br label %414

; <label>:414:                                    ; preds = %411, %409
  %415 = extractelement <8 x i1> %381, i32 7, !dbg !2102
  br i1 %415, label %416, label %419, !dbg !2102

; <label>:416:                                    ; preds = %414
  %417 = add i64 %374, -8, !dbg !2098
  %418 = getelementptr inbounds i8, i8* %365, i64 %417, !dbg !2099
  store i8 %360, i8* %418, align 1, !dbg !2102, !tbaa !403
  br label %419

; <label>:419:                                    ; preds = %416, %414
  %420 = add i64 %373, 8
  %421 = icmp eq i64 %420, %370
  br i1 %421, label %422, label %372, !llvm.loop !2103

; <label>:422:                                    ; preds = %419
  %423 = icmp eq i64 %363, %370
  br i1 %423, label %435, label %424, !dbg !2098

; <label>:424:                                    ; preds = %422, %367
  %425 = phi i64 [ %363, %367 ], [ %371, %422 ]
  br label %426, !dbg !2098

; <label>:426:                                    ; preds = %424, %433
  %427 = phi i64 [ %428, %433 ], [ %425, %424 ]
  %428 = add i64 %427, -1, !dbg !2098
  %429 = getelementptr inbounds i8, i8* %365, i64 %428, !dbg !2099
  %430 = load i8, i8* %429, align 1, !dbg !2099, !tbaa !403
  %431 = icmp eq i8 %430, 46, !dbg !2101
  br i1 %431, label %432, label %433, !dbg !2107

; <label>:432:                                    ; preds = %426
  store i8 %360, i8* %429, align 1, !dbg !2102, !tbaa !403
  br label %433, !dbg !2108

; <label>:433:                                    ; preds = %432, %426
  %434 = icmp eq i64 %428, 0, !dbg !2097
  br i1 %434, label %435, label %426, !dbg !2097, !llvm.loop !2109

; <label>:435:                                    ; preds = %433, %422
  %436 = load %struct.Mbuffer*, %struct.Mbuffer** %9, align 8, !dbg !2111, !tbaa !567
  %437 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %436, i64 0, i32 0
  %438 = load i8*, i8** %437, align 8, !dbg !2111, !tbaa !579
  br label %439, !dbg !2111

; <label>:439:                                    ; preds = %435, %354
  %440 = phi i8* [ %438, %435 ], [ %365, %354 ], !dbg !2111
  %441 = getelementptr inbounds %union.SemInfo, %union.SemInfo* %1, i64 0, i32 0, !dbg !2113
  %442 = call i32 @luaO_str2d(i8* %440, double* %441) #4, !dbg !2114
  %443 = icmp eq i32 %442, 0, !dbg !2114
  br i1 %443, label %444, label %617, !dbg !2115

; <label>:444:                                    ; preds = %439
  %445 = call %struct.lconv* @localeconv() #4, !dbg !2153
  %446 = load i8, i8* %359, align 8, !dbg !2155, !tbaa !695
  %447 = icmp eq %struct.lconv* %445, null, !dbg !2157
  br i1 %447, label %452, label %448, !dbg !2157

; <label>:448:                                    ; preds = %444
  %449 = getelementptr inbounds %struct.lconv, %struct.lconv* %445, i64 0, i32 0, !dbg !2158
  %450 = load i8*, i8** %449, align 8, !dbg !2158, !tbaa !2159
  %451 = load i8, i8* %450, align 1, !dbg !2161, !tbaa !403
  br label %452, !dbg !2157

; <label>:452:                                    ; preds = %448, %444
  %453 = phi i8 [ %451, %448 ], [ 46, %444 ]
  store i8 %453, i8* %359, align 8, !dbg !2162, !tbaa !695
  %454 = load %struct.Mbuffer*, %struct.Mbuffer** %9, align 8, !dbg !2167, !tbaa !567
  %455 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %454, i64 0, i32 1, !dbg !2167
  %456 = load i64, i64* %455, align 8, !dbg !2167, !tbaa !570
  %457 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %454, i64 0, i32 0, !dbg !2169
  %458 = load i8*, i8** %457, align 8, !dbg !2169, !tbaa !579
  %459 = icmp eq i64 %456, 0, !dbg !2171
  br i1 %459, label %534, label %460, !dbg !2171

; <label>:460:                                    ; preds = %452
  %461 = icmp ult i64 %456, 8, !dbg !2172
  br i1 %461, label %519, label %462, !dbg !2172

; <label>:462:                                    ; preds = %460
  %463 = and i64 %456, -8, !dbg !2172
  %464 = sub i64 %456, %463, !dbg !2172
  %465 = insertelement <8 x i8> undef, i8 %446, i32 0, !dbg !2172
  %466 = shufflevector <8 x i8> %465, <8 x i8> undef, <8 x i32> zeroinitializer, !dbg !2172
  br label %467, !dbg !2172

; <label>:467:                                    ; preds = %514, %462
  %468 = phi i64 [ 0, %462 ], [ %515, %514 ]
  %469 = sub i64 %456, %468
  %470 = add i64 %469, -1, !dbg !2172
  %471 = getelementptr inbounds i8, i8* %458, i64 %470, !dbg !2173
  %472 = getelementptr inbounds i8, i8* %471, i64 -7, !dbg !2173
  %473 = bitcast i8* %472 to <8 x i8>*, !dbg !2173
  %474 = load <8 x i8>, <8 x i8>* %473, align 1, !dbg !2173, !tbaa !403
  %475 = shufflevector <8 x i8> %474, <8 x i8> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !2173
  %476 = icmp eq <8 x i8> %475, %466, !dbg !2174
  %477 = extractelement <8 x i1> %476, i32 0, !dbg !2174
  br i1 %477, label %478, label %479

; <label>:478:                                    ; preds = %467
  store i8 %453, i8* %471, align 1, !dbg !2175, !tbaa !403
  br label %479

; <label>:479:                                    ; preds = %478, %467
  %480 = extractelement <8 x i1> %476, i32 1, !dbg !2175
  br i1 %480, label %481, label %484, !dbg !2175

; <label>:481:                                    ; preds = %479
  %482 = add i64 %469, -2, !dbg !2172
  %483 = getelementptr inbounds i8, i8* %458, i64 %482, !dbg !2173
  store i8 %453, i8* %483, align 1, !dbg !2175, !tbaa !403
  br label %484

; <label>:484:                                    ; preds = %481, %479
  %485 = extractelement <8 x i1> %476, i32 2, !dbg !2175
  br i1 %485, label %486, label %489, !dbg !2175

; <label>:486:                                    ; preds = %484
  %487 = add i64 %469, -3, !dbg !2172
  %488 = getelementptr inbounds i8, i8* %458, i64 %487, !dbg !2173
  store i8 %453, i8* %488, align 1, !dbg !2175, !tbaa !403
  br label %489

; <label>:489:                                    ; preds = %486, %484
  %490 = extractelement <8 x i1> %476, i32 3, !dbg !2175
  br i1 %490, label %491, label %494, !dbg !2175

; <label>:491:                                    ; preds = %489
  %492 = add i64 %469, -4, !dbg !2172
  %493 = getelementptr inbounds i8, i8* %458, i64 %492, !dbg !2173
  store i8 %453, i8* %493, align 1, !dbg !2175, !tbaa !403
  br label %494

; <label>:494:                                    ; preds = %491, %489
  %495 = extractelement <8 x i1> %476, i32 4, !dbg !2175
  br i1 %495, label %496, label %499, !dbg !2175

; <label>:496:                                    ; preds = %494
  %497 = add i64 %469, -5, !dbg !2172
  %498 = getelementptr inbounds i8, i8* %458, i64 %497, !dbg !2173
  store i8 %453, i8* %498, align 1, !dbg !2175, !tbaa !403
  br label %499

; <label>:499:                                    ; preds = %496, %494
  %500 = extractelement <8 x i1> %476, i32 5, !dbg !2175
  br i1 %500, label %501, label %504, !dbg !2175

; <label>:501:                                    ; preds = %499
  %502 = add i64 %469, -6, !dbg !2172
  %503 = getelementptr inbounds i8, i8* %458, i64 %502, !dbg !2173
  store i8 %453, i8* %503, align 1, !dbg !2175, !tbaa !403
  br label %504

; <label>:504:                                    ; preds = %501, %499
  %505 = extractelement <8 x i1> %476, i32 6, !dbg !2175
  br i1 %505, label %506, label %509, !dbg !2175

; <label>:506:                                    ; preds = %504
  %507 = add i64 %469, -7, !dbg !2172
  %508 = getelementptr inbounds i8, i8* %458, i64 %507, !dbg !2173
  store i8 %453, i8* %508, align 1, !dbg !2175, !tbaa !403
  br label %509

; <label>:509:                                    ; preds = %506, %504
  %510 = extractelement <8 x i1> %476, i32 7, !dbg !2175
  br i1 %510, label %511, label %514, !dbg !2175

; <label>:511:                                    ; preds = %509
  %512 = add i64 %469, -8, !dbg !2172
  %513 = getelementptr inbounds i8, i8* %458, i64 %512, !dbg !2173
  store i8 %453, i8* %513, align 1, !dbg !2175, !tbaa !403
  br label %514

; <label>:514:                                    ; preds = %511, %509
  %515 = add i64 %468, 8
  %516 = icmp eq i64 %515, %463
  br i1 %516, label %517, label %467, !llvm.loop !2176

; <label>:517:                                    ; preds = %514
  %518 = icmp eq i64 %456, %463
  br i1 %518, label %530, label %519, !dbg !2172

; <label>:519:                                    ; preds = %517, %460
  %520 = phi i64 [ %456, %460 ], [ %464, %517 ]
  br label %521, !dbg !2172

; <label>:521:                                    ; preds = %519, %528
  %522 = phi i64 [ %523, %528 ], [ %520, %519 ]
  %523 = add i64 %522, -1, !dbg !2172
  %524 = getelementptr inbounds i8, i8* %458, i64 %523, !dbg !2173
  %525 = load i8, i8* %524, align 1, !dbg !2173, !tbaa !403
  %526 = icmp eq i8 %525, %446, !dbg !2174
  br i1 %526, label %527, label %528, !dbg !2177

; <label>:527:                                    ; preds = %521
  store i8 %453, i8* %524, align 1, !dbg !2175, !tbaa !403
  br label %528, !dbg !2178

; <label>:528:                                    ; preds = %527, %521
  %529 = icmp eq i64 %523, 0, !dbg !2171
  br i1 %529, label %530, label %521, !dbg !2171, !llvm.loop !2179

; <label>:530:                                    ; preds = %528, %517
  %531 = load %struct.Mbuffer*, %struct.Mbuffer** %9, align 8, !dbg !2180, !tbaa !567
  %532 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %531, i64 0, i32 0
  %533 = load i8*, i8** %532, align 8, !dbg !2180, !tbaa !579
  br label %534, !dbg !2180

; <label>:534:                                    ; preds = %530, %452
  %535 = phi i8* [ %533, %530 ], [ %458, %452 ], !dbg !2180
  %536 = call i32 @luaO_str2d(i8* %535, double* %441) #4, !dbg !2182
  %537 = icmp eq i32 %536, 0, !dbg !2182
  br i1 %537, label %538, label %617, !dbg !2183

; <label>:538:                                    ; preds = %534
  %539 = load i8, i8* %359, align 8, !dbg !2184, !tbaa !695
  %540 = load %struct.Mbuffer*, %struct.Mbuffer** %9, align 8, !dbg !2190, !tbaa !567
  %541 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %540, i64 0, i32 1, !dbg !2190
  %542 = load i64, i64* %541, align 8, !dbg !2190, !tbaa !570
  %543 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %540, i64 0, i32 0, !dbg !2192
  %544 = load i8*, i8** %543, align 8, !dbg !2192, !tbaa !579
  %545 = icmp eq i64 %542, 0, !dbg !2194
  br i1 %545, label %616, label %546, !dbg !2194

; <label>:546:                                    ; preds = %538
  %547 = icmp ult i64 %542, 8, !dbg !2195
  br i1 %547, label %605, label %548, !dbg !2195

; <label>:548:                                    ; preds = %546
  %549 = and i64 %542, -8, !dbg !2195
  %550 = sub i64 %542, %549, !dbg !2195
  %551 = insertelement <8 x i8> undef, i8 %539, i32 0, !dbg !2195
  %552 = shufflevector <8 x i8> %551, <8 x i8> undef, <8 x i32> zeroinitializer, !dbg !2195
  br label %553, !dbg !2195

; <label>:553:                                    ; preds = %600, %548
  %554 = phi i64 [ 0, %548 ], [ %601, %600 ]
  %555 = sub i64 %542, %554
  %556 = add i64 %555, -1, !dbg !2195
  %557 = getelementptr inbounds i8, i8* %544, i64 %556, !dbg !2196
  %558 = getelementptr inbounds i8, i8* %557, i64 -7, !dbg !2196
  %559 = bitcast i8* %558 to <8 x i8>*, !dbg !2196
  %560 = load <8 x i8>, <8 x i8>* %559, align 1, !dbg !2196, !tbaa !403
  %561 = shufflevector <8 x i8> %560, <8 x i8> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !2196
  %562 = icmp eq <8 x i8> %561, %552, !dbg !2197
  %563 = extractelement <8 x i1> %562, i32 0, !dbg !2197
  br i1 %563, label %564, label %565

; <label>:564:                                    ; preds = %553
  store i8 46, i8* %557, align 1, !dbg !2198, !tbaa !403
  br label %565

; <label>:565:                                    ; preds = %564, %553
  %566 = extractelement <8 x i1> %562, i32 1, !dbg !2198
  br i1 %566, label %567, label %570, !dbg !2198

; <label>:567:                                    ; preds = %565
  %568 = add i64 %555, -2, !dbg !2195
  %569 = getelementptr inbounds i8, i8* %544, i64 %568, !dbg !2196
  store i8 46, i8* %569, align 1, !dbg !2198, !tbaa !403
  br label %570

; <label>:570:                                    ; preds = %567, %565
  %571 = extractelement <8 x i1> %562, i32 2, !dbg !2198
  br i1 %571, label %572, label %575, !dbg !2198

; <label>:572:                                    ; preds = %570
  %573 = add i64 %555, -3, !dbg !2195
  %574 = getelementptr inbounds i8, i8* %544, i64 %573, !dbg !2196
  store i8 46, i8* %574, align 1, !dbg !2198, !tbaa !403
  br label %575

; <label>:575:                                    ; preds = %572, %570
  %576 = extractelement <8 x i1> %562, i32 3, !dbg !2198
  br i1 %576, label %577, label %580, !dbg !2198

; <label>:577:                                    ; preds = %575
  %578 = add i64 %555, -4, !dbg !2195
  %579 = getelementptr inbounds i8, i8* %544, i64 %578, !dbg !2196
  store i8 46, i8* %579, align 1, !dbg !2198, !tbaa !403
  br label %580

; <label>:580:                                    ; preds = %577, %575
  %581 = extractelement <8 x i1> %562, i32 4, !dbg !2198
  br i1 %581, label %582, label %585, !dbg !2198

; <label>:582:                                    ; preds = %580
  %583 = add i64 %555, -5, !dbg !2195
  %584 = getelementptr inbounds i8, i8* %544, i64 %583, !dbg !2196
  store i8 46, i8* %584, align 1, !dbg !2198, !tbaa !403
  br label %585

; <label>:585:                                    ; preds = %582, %580
  %586 = extractelement <8 x i1> %562, i32 5, !dbg !2198
  br i1 %586, label %587, label %590, !dbg !2198

; <label>:587:                                    ; preds = %585
  %588 = add i64 %555, -6, !dbg !2195
  %589 = getelementptr inbounds i8, i8* %544, i64 %588, !dbg !2196
  store i8 46, i8* %589, align 1, !dbg !2198, !tbaa !403
  br label %590

; <label>:590:                                    ; preds = %587, %585
  %591 = extractelement <8 x i1> %562, i32 6, !dbg !2198
  br i1 %591, label %592, label %595, !dbg !2198

; <label>:592:                                    ; preds = %590
  %593 = add i64 %555, -7, !dbg !2195
  %594 = getelementptr inbounds i8, i8* %544, i64 %593, !dbg !2196
  store i8 46, i8* %594, align 1, !dbg !2198, !tbaa !403
  br label %595

; <label>:595:                                    ; preds = %592, %590
  %596 = extractelement <8 x i1> %562, i32 7, !dbg !2198
  br i1 %596, label %597, label %600, !dbg !2198

; <label>:597:                                    ; preds = %595
  %598 = add i64 %555, -8, !dbg !2195
  %599 = getelementptr inbounds i8, i8* %544, i64 %598, !dbg !2196
  store i8 46, i8* %599, align 1, !dbg !2198, !tbaa !403
  br label %600

; <label>:600:                                    ; preds = %597, %595
  %601 = add i64 %554, 8
  %602 = icmp eq i64 %601, %549
  br i1 %602, label %603, label %553, !llvm.loop !2199

; <label>:603:                                    ; preds = %600
  %604 = icmp eq i64 %542, %549
  br i1 %604, label %616, label %605, !dbg !2195

; <label>:605:                                    ; preds = %603, %546
  %606 = phi i64 [ %542, %546 ], [ %550, %603 ]
  br label %607, !dbg !2195

; <label>:607:                                    ; preds = %605, %614
  %608 = phi i64 [ %609, %614 ], [ %606, %605 ]
  %609 = add i64 %608, -1, !dbg !2195
  %610 = getelementptr inbounds i8, i8* %544, i64 %609, !dbg !2196
  %611 = load i8, i8* %610, align 1, !dbg !2196, !tbaa !403
  %612 = icmp eq i8 %611, %539, !dbg !2197
  br i1 %612, label %613, label %614, !dbg !2200

; <label>:613:                                    ; preds = %607
  store i8 46, i8* %610, align 1, !dbg !2198, !tbaa !403
  br label %614, !dbg !2201

; <label>:614:                                    ; preds = %613, %607
  %615 = icmp eq i64 %609, 0, !dbg !2194
  br i1 %615, label %616, label %607, !dbg !2194, !llvm.loop !2202

; <label>:616:                                    ; preds = %614, %603, %538
  call void @luaX_lexerror(%struct.LexState* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i32 284) #4, !dbg !2203
  br label %617, !dbg !2204

; <label>:617:                                    ; preds = %616, %534, %439
  ret void, !dbg !2205
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i32 @luaO_str2d(i8*, double*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.lconv* @localeconv() local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!59, !60, !61}
!llvm.ident = !{!62}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "luaX_tokens", scope: !2, file: !3, line: 37, type: !55, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !40, globals: !54)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llex.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5}
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
!40 = !{!41, !42, !45, !48, !44, !49, !47}
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_byte", file: !43, line: 27, baseType: !44)
!43 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/llimits.h", directory: "/root/.unikraft/apps/redis/build")
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 40, baseType: !51)
!50 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !52, line: 129, baseType: !53)
!52 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!53 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!54 = !{!0}
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 2048, elements: !57)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!57 = !{!58}
!58 = !DISubrange(count: 32)
!59 = !{i32 2, !"Dwarf Version", i32 4}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"wchar_size", i32 4}
!62 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!63 = distinct !DISubprogram(name: "luaX_init", scope: !3, file: !3, line: 64, type: !64, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !386)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !68, line: 50, baseType: !69)
!68 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !70, line: 100, size: 1472, elements: !71)
!70 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lstate.h", directory: "/root/.unikraft/apps/redis/build")
!71 = !{!72, !264, !265, !266, !267, !269, !270, !326, !339, !340, !341, !342, !343, !344, !345, !346, !348, !349, !350, !351, !352, !353, !376, !377, !378, !379, !380, !383}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !69, file: !70, line: 101, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCObject", file: !75, line: 36, baseType: !76)
!75 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lobject.h", directory: "/root/.unikraft/apps/redis/build")
!76 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "GCObject", file: !70, line: 136, size: 1472, elements: !77)
!77 = !{!78, !85, !107, !165, !260, !261, !262, !263}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "gch", scope: !76, file: !70, line: 137, baseType: !79, size: 128)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCheader", file: !75, line: 51, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GCheader", file: !75, line: 49, size: 128, elements: !81)
!81 = !{!82, !83, !84}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !80, file: !75, line: 50, baseType: !73, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !80, file: !75, line: 50, baseType: !42, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !80, file: !75, line: 50, baseType: !42, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !76, file: !70, line: 138, baseType: !86, size: 192)
!86 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TString", file: !75, line: 199, size: 192, elements: !87)
!87 = !{!88, !98}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !86, file: !75, line: 200, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "L_Umaxalign", file: !43, line: 47, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !43, line: 47, size: 64, elements: !91)
!91 = !{!92, !94, !96}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !90, file: !43, line: 47, baseType: !93, size: 64)
!93 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !90, file: !43, line: 47, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !90, file: !43, line: 47, baseType: !97, size: 64)
!97 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "tsv", scope: !86, file: !75, line: 206, baseType: !99, size: 192)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !86, file: !75, line: 201, size: 192, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !106}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !99, file: !75, line: 202, baseType: !73, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !99, file: !75, line: 202, baseType: !42, size: 8, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !99, file: !75, line: 202, baseType: !42, size: 8, offset: 72)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !99, file: !75, line: 203, baseType: !42, size: 8, offset: 80)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !99, file: !75, line: 204, baseType: !7, size: 32, offset: 96)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !99, file: !75, line: 205, baseType: !49, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !76, file: !70, line: 139, baseType: !108, size: 320)
!108 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Udata", file: !75, line: 215, size: 320, elements: !109)
!109 = !{!110, !111}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !108, file: !75, line: 216, baseType: !89, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !108, file: !75, line: 222, baseType: !112, size: 320)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !108, file: !75, line: 217, size: 320, elements: !113)
!113 = !{!114, !115, !116, !117, !163, !164}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !75, line: 218, baseType: !73, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !112, file: !75, line: 218, baseType: !42, size: 8, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !112, file: !75, line: 218, baseType: !42, size: 8, offset: 72)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !112, file: !75, line: 219, baseType: !118, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Table", file: !75, line: 338, size: 512, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !142, !160, !161, !162}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !75, line: 339, baseType: !73, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !119, file: !75, line: 339, baseType: !42, size: 8, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !119, file: !75, line: 339, baseType: !42, size: 8, offset: 72)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !75, line: 340, baseType: !42, size: 8, offset: 80)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "lsizenode", scope: !119, file: !75, line: 341, baseType: !42, size: 8, offset: 88)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "metatable", scope: !119, file: !75, line: 342, baseType: !118, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !119, file: !75, line: 343, baseType: !128, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "TValue", file: !75, line: 75, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_TValue", file: !75, line: 73, size: 128, elements: !131)
!131 = !{!132, !141}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !130, file: !75, line: 74, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "Value", file: !75, line: 64, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !75, line: 59, size: 64, elements: !135)
!135 = !{!136, !137, !138, !140}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !134, file: !75, line: 60, baseType: !73, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !134, file: !75, line: 61, baseType: !95, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !134, file: !75, line: 62, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !68, line: 99, baseType: !93)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !134, file: !75, line: 63, baseType: !41, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !130, file: !75, line: 74, baseType: !41, size: 32, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !119, file: !75, line: 344, baseType: !143, size: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "Node", file: !75, line: 335, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Node", file: !75, line: 332, size: 320, elements: !146)
!146 = !{!147, !148}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "i_val", scope: !145, file: !75, line: 333, baseType: !129, size: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "i_key", scope: !145, file: !75, line: 334, baseType: !149, size: 192, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "TKey", file: !75, line: 329, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "TKey", file: !75, line: 323, size: 192, elements: !151)
!151 = !{!152, !159}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !150, file: !75, line: 327, baseType: !153, size: 192)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !150, file: !75, line: 324, size: 192, elements: !154)
!154 = !{!155, !156, !157}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !153, file: !75, line: 325, baseType: !133, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !153, file: !75, line: 325, baseType: !41, size: 32, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !153, file: !75, line: 326, baseType: !158, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "tvk", scope: !150, file: !75, line: 328, baseType: !129, size: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "lastfree", scope: !119, file: !75, line: 345, baseType: !143, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !119, file: !75, line: 346, baseType: !73, size: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sizearray", scope: !119, file: !75, line: 347, baseType: !41, size: 32, offset: 448)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !112, file: !75, line: 220, baseType: !118, size: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !112, file: !75, line: 221, baseType: !49, size: 64, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !76, file: !70, line: 140, baseType: !166, size: 448)
!166 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Closure", file: !75, line: 309, size: 448, elements: !167)
!167 = !{!168, !188}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !166, file: !75, line: 310, baseType: !169, size: 448)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "CClosure", file: !75, line: 299, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CClosure", file: !75, line: 295, size: 448, elements: !171)
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !184}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !170, file: !75, line: 296, baseType: !73, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !170, file: !75, line: 296, baseType: !42, size: 8, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !170, file: !75, line: 296, baseType: !42, size: 8, offset: 72)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !170, file: !75, line: 296, baseType: !42, size: 8, offset: 80)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !170, file: !75, line: 296, baseType: !42, size: 8, offset: 88)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !170, file: !75, line: 296, baseType: !73, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !170, file: !75, line: 296, baseType: !118, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !170, file: !75, line: 297, baseType: !180, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !68, line: 52, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!41, !66}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "upvalue", scope: !170, file: !75, line: 298, baseType: !185, size: 128, offset: 320)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 128, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 1)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !166, file: !75, line: 311, baseType: !189, size: 384)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "LClosure", file: !75, line: 306, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LClosure", file: !75, line: 302, size: 384, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !240}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !190, file: !75, line: 303, baseType: !73, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !190, file: !75, line: 303, baseType: !42, size: 8, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !190, file: !75, line: 303, baseType: !42, size: 8, offset: 72)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "isC", scope: !190, file: !75, line: 303, baseType: !42, size: 8, offset: 80)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "nupvalues", scope: !190, file: !75, line: 303, baseType: !42, size: 8, offset: 88)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !190, file: !75, line: 303, baseType: !73, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !190, file: !75, line: 303, baseType: !118, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !190, file: !75, line: 304, baseType: !200, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Proto", file: !75, line: 231, size: 960, elements: !202)
!202 = !{!203, !204, !205, !206, !207, !211, !213, !215, !224, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !75, line: 232, baseType: !73, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !201, file: !75, line: 232, baseType: !42, size: 8, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !201, file: !75, line: 232, baseType: !42, size: 8, offset: 72)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !201, file: !75, line: 233, baseType: !128, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !201, file: !75, line: 234, baseType: !208, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "Instruction", file: !43, line: 88, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_int32", file: !43, line: 18, baseType: !7)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !201, file: !75, line: 235, baseType: !212, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "lineinfo", scope: !201, file: !75, line: 236, baseType: !214, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "locvars", scope: !201, file: !75, line: 237, baseType: !216, size: 64, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LocVar", file: !75, line: 262, size: 128, elements: !218)
!218 = !{!219, !222, !223}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "varname", scope: !217, file: !75, line: 263, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "TString", file: !75, line: 207, baseType: !86)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "startpc", scope: !217, file: !75, line: 264, baseType: !41, size: 32, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "endpc", scope: !217, file: !75, line: 265, baseType: !41, size: 32, offset: 96)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !201, file: !75, line: 238, baseType: !225, size: 64, offset: 448)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !201, file: !75, line: 239, baseType: !220, size: 64, offset: 512)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "sizeupvalues", scope: !201, file: !75, line: 240, baseType: !41, size: 32, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "sizek", scope: !201, file: !75, line: 241, baseType: !41, size: 32, offset: 608)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "sizecode", scope: !201, file: !75, line: 242, baseType: !41, size: 32, offset: 640)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "sizelineinfo", scope: !201, file: !75, line: 243, baseType: !41, size: 32, offset: 672)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "sizep", scope: !201, file: !75, line: 244, baseType: !41, size: 32, offset: 704)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "sizelocvars", scope: !201, file: !75, line: 245, baseType: !41, size: 32, offset: 736)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !201, file: !75, line: 246, baseType: !41, size: 32, offset: 768)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !201, file: !75, line: 247, baseType: !41, size: 32, offset: 800)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !201, file: !75, line: 248, baseType: !73, size: 64, offset: 832)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !201, file: !75, line: 249, baseType: !42, size: 8, offset: 896)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "numparams", scope: !201, file: !75, line: 250, baseType: !42, size: 8, offset: 904)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "is_vararg", scope: !201, file: !75, line: 251, baseType: !42, size: 8, offset: 912)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "maxstacksize", scope: !201, file: !75, line: 252, baseType: !42, size: 8, offset: 920)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "upvals", scope: !190, file: !75, line: 305, baseType: !241, size: 64, offset: 320)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 64, elements: !186)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "UpVal", file: !75, line: 284, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UpVal", file: !75, line: 274, size: 320, elements: !245)
!245 = !{!246, !247, !248, !249, !250}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !244, file: !75, line: 275, baseType: !73, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !244, file: !75, line: 275, baseType: !42, size: 8, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !244, file: !75, line: 275, baseType: !42, size: 8, offset: 72)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !244, file: !75, line: 276, baseType: !128, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !244, file: !75, line: 283, baseType: !251, size: 128, offset: 192)
!251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !244, file: !75, line: 277, size: 128, elements: !252)
!252 = !{!253, !254}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !251, file: !75, line: 278, baseType: !129, size: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !251, file: !75, line: 282, baseType: !255, size: 128)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !251, file: !75, line: 279, size: 128, elements: !256)
!256 = !{!257, !259}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !255, file: !75, line: 280, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !255, file: !75, line: 281, baseType: !258, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !76, file: !70, line: 141, baseType: !119, size: 512)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !76, file: !70, line: 142, baseType: !201, size: 960)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !76, file: !70, line: 143, baseType: !244, size: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "th", scope: !76, file: !70, line: 144, baseType: !69, size: 1472)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !69, file: !70, line: 101, baseType: !42, size: 8, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "marked", scope: !69, file: !70, line: 101, baseType: !42, size: 8, offset: 72)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !69, file: !70, line: 102, baseType: !42, size: 8, offset: 80)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !69, file: !70, line: 103, baseType: !268, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "StkId", file: !75, line: 193, baseType: !128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !69, file: !70, line: 104, baseType: !268, size: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "l_G", scope: !69, file: !70, line: 105, baseType: !271, size: 64, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "global_State", file: !70, line: 94, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "global_State", file: !70, line: 68, size: 3456, elements: !274)
!274 = !{!275, !283, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !306, !308, !309, !310, !311, !312, !313, !314, !315, !317, !318, !322}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "strt", scope: !273, file: !70, line: 69, baseType: !276, size: 128)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "stringtable", file: !70, line: 42, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stringtable", file: !70, line: 38, size: 128, elements: !278)
!278 = !{!279, !281, !282}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !277, file: !70, line: 39, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "nuse", scope: !277, file: !70, line: 40, baseType: !210, size: 32, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !277, file: !70, line: 41, baseType: !41, size: 32, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "frealloc", scope: !273, file: !70, line: 70, baseType: !284, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Alloc", file: !68, line: 66, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!95, !95, !95, !49, !49}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ud", scope: !273, file: !70, line: 71, baseType: !95, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "currentwhite", scope: !273, file: !70, line: 72, baseType: !42, size: 8, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "gcstate", scope: !273, file: !70, line: 73, baseType: !42, size: 8, offset: 264)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "sweepstrgc", scope: !273, file: !70, line: 74, baseType: !41, size: 32, offset: 288)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "rootgc", scope: !273, file: !70, line: 75, baseType: !73, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "sweepgc", scope: !273, file: !70, line: 76, baseType: !280, size: 64, offset: 384)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "gray", scope: !273, file: !70, line: 77, baseType: !73, size: 64, offset: 448)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "grayagain", scope: !273, file: !70, line: 78, baseType: !73, size: 64, offset: 512)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "weak", scope: !273, file: !70, line: 79, baseType: !73, size: 64, offset: 576)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tmudata", scope: !273, file: !70, line: 80, baseType: !73, size: 64, offset: 640)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !273, file: !70, line: 81, baseType: !299, size: 192, offset: 704)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "Mbuffer", file: !300, line: 28, baseType: !301)
!300 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lzio.h", directory: "/root/.unikraft/apps/redis/build")
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Mbuffer", file: !300, line: 24, size: 192, elements: !302)
!302 = !{!303, !304, !305}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !301, file: !300, line: 25, baseType: !48, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !301, file: !300, line: 26, baseType: !49, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "buffsize", scope: !301, file: !300, line: 27, baseType: !49, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "GCthreshold", scope: !273, file: !70, line: 82, baseType: !307, size: 64, offset: 896)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "lu_mem", file: !43, line: 20, baseType: !49)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "totalbytes", scope: !273, file: !70, line: 83, baseType: !307, size: 64, offset: 960)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "estimate", scope: !273, file: !70, line: 84, baseType: !307, size: 64, offset: 1024)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "gcdept", scope: !273, file: !70, line: 85, baseType: !307, size: 64, offset: 1088)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "gcpause", scope: !273, file: !70, line: 86, baseType: !41, size: 32, offset: 1152)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "gcstepmul", scope: !273, file: !70, line: 87, baseType: !41, size: 32, offset: 1184)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "panic", scope: !273, file: !70, line: 88, baseType: !180, size: 64, offset: 1216)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "l_registry", scope: !273, file: !70, line: 89, baseType: !129, size: 128, offset: 1280)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "mainthread", scope: !273, file: !70, line: 90, baseType: !316, size: 64, offset: 1408)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "uvhead", scope: !273, file: !70, line: 91, baseType: !243, size: 320, offset: 1472)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !273, file: !70, line: 92, baseType: !319, size: 576, offset: 1792)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 576, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 9)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tmname", scope: !273, file: !70, line: 93, baseType: !323, size: 1088, offset: 2368)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 1088, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 17)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ci", scope: !69, file: !70, line: 106, baseType: !327, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "CallInfo", file: !70, line: 55, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CallInfo", file: !70, line: 48, size: 320, elements: !330)
!330 = !{!331, !332, !333, !334, !337, !338}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !329, file: !70, line: 49, baseType: !268, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !329, file: !70, line: 50, baseType: !268, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !329, file: !70, line: 51, baseType: !268, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !329, file: !70, line: 52, baseType: !335, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "nresults", scope: !329, file: !70, line: 53, baseType: !41, size: 32, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tailcalls", scope: !329, file: !70, line: 54, baseType: !41, size: 32, offset: 288)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "savedpc", scope: !69, file: !70, line: 107, baseType: !335, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "stack_last", scope: !69, file: !70, line: 108, baseType: !268, size: 64, offset: 448)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !69, file: !70, line: 109, baseType: !268, size: 64, offset: 512)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "end_ci", scope: !69, file: !70, line: 110, baseType: !327, size: 64, offset: 576)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "base_ci", scope: !69, file: !70, line: 111, baseType: !327, size: 64, offset: 640)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !69, file: !70, line: 112, baseType: !41, size: 32, offset: 704)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "size_ci", scope: !69, file: !70, line: 113, baseType: !41, size: 32, offset: 736)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "nCcalls", scope: !69, file: !70, line: 114, baseType: !347, size: 16, offset: 768)
!347 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "baseCcalls", scope: !69, file: !70, line: 115, baseType: !347, size: 16, offset: 784)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "hookmask", scope: !69, file: !70, line: 116, baseType: !42, size: 8, offset: 800)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "allowhook", scope: !69, file: !70, line: 117, baseType: !42, size: 8, offset: 808)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "basehookcount", scope: !69, file: !70, line: 118, baseType: !41, size: 32, offset: 832)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "hookcount", scope: !69, file: !70, line: 119, baseType: !41, size: 32, offset: 864)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "hook", scope: !69, file: !70, line: 120, baseType: !354, size: 64, offset: 896)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Hook", file: !68, line: 330, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !66, !358}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !68, line: 326, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !68, line: 346, size: 960, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !375}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !360, file: !68, line: 347, baseType: !41, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !360, file: !68, line: 348, baseType: !45, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !360, file: !68, line: 349, baseType: !45, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !360, file: !68, line: 350, baseType: !45, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !360, file: !68, line: 351, baseType: !45, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !360, file: !68, line: 352, baseType: !41, size: 32, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !360, file: !68, line: 353, baseType: !41, size: 32, offset: 352)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !360, file: !68, line: 354, baseType: !41, size: 32, offset: 384)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !360, file: !68, line: 355, baseType: !41, size: 32, offset: 416)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !360, file: !68, line: 356, baseType: !372, size: 480, offset: 448)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 480, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 60)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !360, file: !68, line: 358, baseType: !41, size: 32, offset: 928)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "l_gt", scope: !69, file: !70, line: 121, baseType: !129, size: 128, offset: 960)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !69, file: !70, line: 122, baseType: !129, size: 128, offset: 1088)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "openupval", scope: !69, file: !70, line: 123, baseType: !73, size: 64, offset: 1216)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "gclist", scope: !69, file: !70, line: 124, baseType: !73, size: 64, offset: 1280)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "errorJmp", scope: !69, file: !70, line: 125, baseType: !381, size: 64, offset: 1344)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_longjmp", file: !70, line: 18, flags: DIFlagFwdDecl)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "errfunc", scope: !69, file: !70, line: 126, baseType: !384, size: 64, offset: 1408)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !385, line: 49, baseType: !97)
!385 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!386 = !{!387, !388, !389}
!387 = !DILocalVariable(name: "L", arg: 1, scope: !63, file: !3, line: 64, type: !66)
!388 = !DILocalVariable(name: "i", scope: !63, file: !3, line: 65, type: !41)
!389 = !DILocalVariable(name: "ts", scope: !390, file: !3, line: 67, type: !220)
!390 = distinct !DILexicalBlock(scope: !391, file: !3, line: 66, column: 34)
!391 = distinct !DILexicalBlock(scope: !392, file: !3, line: 66, column: 3)
!392 = distinct !DILexicalBlock(scope: !63, file: !3, line: 66, column: 3)
!393 = !DILocation(line: 64, column: 28, scope: !63)
!394 = !DILocation(line: 65, column: 7, scope: !63)
!395 = !DILocation(line: 66, column: 3, scope: !392)
!396 = !DILocation(line: 67, column: 19, scope: !390)
!397 = !{!398, !398, i64 0}
!398 = !{!"any pointer", !399, i64 0}
!399 = !{!"omnipotent char", !400, i64 0}
!400 = !{!"Simple C/C++ TBAA"}
!401 = !DILocation(line: 67, column: 14, scope: !390)
!402 = !DILocation(line: 68, column: 5, scope: !390)
!403 = !{!399, !399, i64 0}
!404 = !DILocation(line: 70, column: 24, scope: !390)
!405 = !DILocation(line: 70, column: 13, scope: !390)
!406 = !DILocation(line: 70, column: 22, scope: !390)
!407 = !DILocation(line: 66, column: 14, scope: !391)
!408 = distinct !{!408, !395, !409}
!409 = !DILocation(line: 71, column: 3, scope: !392)
!410 = !DILocation(line: 72, column: 1, scope: !63)
!411 = distinct !DISubprogram(name: "luaX_token2str", scope: !3, file: !3, line: 78, type: !412, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !491)
!412 = !DISubroutineType(types: !413)
!413 = !{!45, !414, !41}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "LexState", file: !6, line: 67, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LexState", file: !6, line: 55, size: 768, elements: !417)
!417 = !{!418, !419, !420, !421, !432, !433, !471, !472, !487, !489, !490}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !416, file: !6, line: 56, baseType: !41, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "linenumber", scope: !416, file: !6, line: 57, baseType: !41, size: 32, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "lastline", scope: !416, file: !6, line: 58, baseType: !41, size: 32, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !416, file: !6, line: 59, baseType: !422, size: 128, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "Token", file: !6, line: 52, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Token", file: !6, line: 49, size: 128, elements: !424)
!424 = !{!425, !426}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !423, file: !6, line: 50, baseType: !41, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "seminfo", scope: !423, file: !6, line: 51, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemInfo", file: !6, line: 46, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6, line: 43, size: 64, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !428, file: !6, line: 44, baseType: !139, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !428, file: !6, line: 45, baseType: !220, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !416, file: !6, line: 60, baseType: !422, size: 128, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !416, file: !6, line: 61, baseType: !434, size: 64, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FuncState", file: !436, line: 58, size: 4800, elements: !437)
!436 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lparser.h", directory: "/root/.unikraft/apps/redis/build")
!437 = !{!438, !441, !444, !445, !447, !448, !451, !452, !453, !454, !455, !456, !457, !459, !460, !467}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !435, file: !436, line: 59, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !75, line: 253, baseType: !201)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !435, file: !436, line: 60, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !75, line: 348, baseType: !119)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !435, file: !436, line: 61, baseType: !434, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ls", scope: !435, file: !436, line: 62, baseType: !446, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !435, file: !436, line: 63, baseType: !316, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "bl", scope: !435, file: !436, line: 64, baseType: !449, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DICompositeType(tag: DW_TAG_structure_type, name: "BlockCnt", file: !436, line: 54, flags: DIFlagFwdDecl)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !435, file: !436, line: 65, baseType: !41, size: 32, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "lasttarget", scope: !435, file: !436, line: 66, baseType: !41, size: 32, offset: 416)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "jpc", scope: !435, file: !436, line: 67, baseType: !41, size: 32, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "freereg", scope: !435, file: !436, line: 68, baseType: !41, size: 32, offset: 480)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !435, file: !436, line: 69, baseType: !41, size: 32, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !435, file: !436, line: 70, baseType: !41, size: 32, offset: 544)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "nlocvars", scope: !435, file: !436, line: 71, baseType: !458, size: 16, offset: 576)
!458 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "nactvar", scope: !435, file: !436, line: 72, baseType: !42, size: 8, offset: 592)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !435, file: !436, line: 73, baseType: !461, size: 960, offset: 600)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 960, elements: !373)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "upvaldesc", file: !436, line: 51, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upvaldesc", file: !436, line: 48, size: 16, elements: !464)
!464 = !{!465, !466}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !463, file: !436, line: 49, baseType: !42, size: 8)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !463, file: !436, line: 50, baseType: !42, size: 8, offset: 8)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "actvar", scope: !435, file: !436, line: 74, baseType: !468, size: 3200, offset: 1568)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 3200, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 200)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !416, file: !6, line: 62, baseType: !316, size: 64, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !416, file: !6, line: 63, baseType: !473, size: 64, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZIO", file: !300, line: 18, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Zio", file: !300, line: 56, size: 320, elements: !476)
!476 = !{!477, !478, !479, !485, !486}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !475, file: !300, line: 57, baseType: !49, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !475, file: !300, line: 58, baseType: !45, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !475, file: !300, line: 59, baseType: !480, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Reader", file: !68, line: 58, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!45, !66, !95, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !475, file: !300, line: 60, baseType: !95, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !475, file: !300, line: 61, baseType: !66, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !416, file: !6, line: 64, baseType: !488, size: 64, offset: 576)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !416, file: !6, line: 65, baseType: !220, size: 64, offset: 640)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "decpoint", scope: !416, file: !6, line: 66, baseType: !47, size: 8, offset: 704)
!491 = !{!492, !493}
!492 = !DILocalVariable(name: "ls", arg: 1, scope: !411, file: !3, line: 78, type: !414)
!493 = !DILocalVariable(name: "token", arg: 2, scope: !411, file: !3, line: 78, type: !41)
!494 = !DILocation(line: 78, column: 39, scope: !411)
!495 = !DILocation(line: 78, column: 47, scope: !411)
!496 = !DILocation(line: 79, column: 13, scope: !497)
!497 = distinct !DILexicalBlock(scope: !411, file: !3, line: 79, column: 7)
!498 = !DILocation(line: 79, column: 7, scope: !411)
!499 = !DILocation(line: 81, column: 13, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !3, line: 79, column: 31)
!501 = !DILocation(line: 0, scope: !500)
!502 = !{!503, !398, i64 56}
!503 = !{!"LexState", !504, i64 0, !504, i64 4, !504, i64 8, !505, i64 16, !505, i64 32, !398, i64 48, !398, i64 56, !398, i64 64, !398, i64 72, !398, i64 80, !399, i64 88}
!504 = !{!"int", !399, i64 0}
!505 = !{!"Token", !504, i64 0, !399, i64 8}
!506 = !DILocation(line: 81, column: 12, scope: !500)
!507 = !DILocation(line: 81, column: 31, scope: !500)
!508 = !DILocation(line: 82, column: 31, scope: !500)
!509 = !DILocation(line: 85, column: 29, scope: !497)
!510 = !DILocation(line: 85, column: 12, scope: !497)
!511 = !DILocation(line: 85, column: 5, scope: !497)
!512 = !DILocation(line: 0, scope: !497)
!513 = !DILocation(line: 86, column: 1, scope: !411)
!514 = distinct !DISubprogram(name: "luaX_lexerror", scope: !3, file: !3, line: 102, type: !515, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !517)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !414, !45, !41}
!517 = !{!518, !519, !520, !521}
!518 = !DILocalVariable(name: "ls", arg: 1, scope: !514, file: !3, line: 102, type: !414)
!519 = !DILocalVariable(name: "msg", arg: 2, scope: !514, file: !3, line: 102, type: !45)
!520 = !DILocalVariable(name: "token", arg: 3, scope: !514, file: !3, line: 102, type: !41)
!521 = !DILocalVariable(name: "buff", scope: !514, file: !3, line: 103, type: !522)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 640, elements: !523)
!523 = !{!524}
!524 = !DISubrange(count: 80)
!525 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !526)
!526 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !538)
!527 = distinct !DILexicalBlock(scope: !528, file: !3, line: 55, column: 9)
!528 = distinct !DILexicalBlock(scope: !529, file: !3, line: 53, column: 31)
!529 = distinct !DILexicalBlock(scope: !530, file: !3, line: 53, column: 7)
!530 = distinct !DISubprogram(name: "save", scope: !3, file: !3, line: 51, type: !531, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !533)
!531 = !DISubroutineType(types: !532)
!532 = !{null, !414, !41}
!533 = !{!534, !535, !536, !537}
!534 = !DILocalVariable(name: "ls", arg: 1, scope: !530, file: !3, line: 51, type: !414)
!535 = !DILocalVariable(name: "c", arg: 2, scope: !530, file: !3, line: 51, type: !41)
!536 = !DILocalVariable(name: "b", scope: !530, file: !3, line: 52, type: !488)
!537 = !DILocalVariable(name: "newsize", scope: !528, file: !3, line: 54, type: !49)
!538 = distinct !DILocation(line: 94, column: 7, scope: !539, inlinedAt: !544)
!539 = distinct !DILexicalBlock(scope: !540, file: !3, line: 90, column: 18)
!540 = distinct !DISubprogram(name: "txtToken", scope: !3, file: !3, line: 89, type: !412, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !541)
!541 = !{!542, !543}
!542 = !DILocalVariable(name: "ls", arg: 1, scope: !540, file: !3, line: 89, type: !414)
!543 = !DILocalVariable(name: "token", arg: 2, scope: !540, file: !3, line: 89, type: !41)
!544 = distinct !DILocation(line: 107, column: 53, scope: !545)
!545 = distinct !DILexicalBlock(scope: !514, file: !3, line: 106, column: 7)
!546 = !DILocation(line: 102, column: 31, scope: !514)
!547 = !DILocation(line: 102, column: 47, scope: !514)
!548 = !DILocation(line: 102, column: 56, scope: !514)
!549 = !DILocation(line: 103, column: 3, scope: !514)
!550 = !DILocation(line: 103, column: 8, scope: !514)
!551 = !DILocation(line: 104, column: 22, scope: !514)
!552 = !{!503, !398, i64 80}
!553 = !DILocation(line: 104, column: 3, scope: !514)
!554 = !DILocation(line: 105, column: 30, scope: !514)
!555 = !DILocation(line: 105, column: 56, scope: !514)
!556 = !{!503, !504, i64 4}
!557 = !DILocation(line: 105, column: 9, scope: !514)
!558 = !DILocation(line: 106, column: 7, scope: !545)
!559 = !DILocation(line: 106, column: 7, scope: !514)
!560 = !DILocation(line: 107, column: 26, scope: !545)
!561 = !DILocation(line: 89, column: 40, scope: !540, inlinedAt: !544)
!562 = !DILocation(line: 89, column: 48, scope: !540, inlinedAt: !544)
!563 = !DILocation(line: 90, column: 3, scope: !540, inlinedAt: !544)
!564 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !538)
!565 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !538)
!566 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !538)
!567 = !{!503, !398, i64 72}
!568 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !538)
!569 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !538)
!570 = !{!571, !572, i64 8}
!571 = !{!"Mbuffer", !398, i64 0, !572, i64 8, !572, i64 16}
!572 = !{!"long", !399, i64 0}
!573 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !538)
!574 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !538)
!575 = !{!571, !572, i64 16}
!576 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !538)
!577 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !538)
!578 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !538)
!579 = !{!571, !398, i64 0}
!580 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !538)
!581 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !538)
!582 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !526)
!583 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !526)
!584 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !526)
!585 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !526)
!586 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !526)
!587 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !526)
!588 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !526)
!589 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !526)
!590 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !526)
!591 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !526)
!592 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !526)
!593 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !526)
!594 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !538)
!595 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !538)
!596 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !538)
!597 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !538)
!598 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !538)
!599 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !538)
!600 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !538)
!601 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !538)
!602 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !538)
!603 = !DILocation(line: 95, column: 14, scope: !539, inlinedAt: !544)
!604 = !DILocation(line: 95, column: 7, scope: !539, inlinedAt: !544)
!605 = !DILocation(line: 78, column: 39, scope: !411, inlinedAt: !606)
!606 = distinct !DILocation(line: 97, column: 14, scope: !539, inlinedAt: !544)
!607 = !DILocation(line: 78, column: 47, scope: !411, inlinedAt: !606)
!608 = !DILocation(line: 79, column: 13, scope: !497, inlinedAt: !606)
!609 = !DILocation(line: 79, column: 7, scope: !411, inlinedAt: !606)
!610 = !DILocation(line: 81, column: 13, scope: !500, inlinedAt: !606)
!611 = !DILocation(line: 0, scope: !500, inlinedAt: !606)
!612 = !DILocation(line: 81, column: 12, scope: !500, inlinedAt: !606)
!613 = !DILocation(line: 81, column: 31, scope: !500, inlinedAt: !606)
!614 = !DILocation(line: 82, column: 31, scope: !500, inlinedAt: !606)
!615 = !DILocation(line: 85, column: 29, scope: !497, inlinedAt: !606)
!616 = !DILocation(line: 85, column: 12, scope: !497, inlinedAt: !606)
!617 = !DILocation(line: 85, column: 5, scope: !497, inlinedAt: !606)
!618 = !DILocation(line: 0, scope: !539, inlinedAt: !544)
!619 = !DILocation(line: 107, column: 5, scope: !545)
!620 = !DILocation(line: 108, column: 18, scope: !514)
!621 = !DILocation(line: 108, column: 3, scope: !514)
!622 = !DILocation(line: 109, column: 1, scope: !514)
!623 = distinct !DISubprogram(name: "luaX_syntaxerror", scope: !3, file: !3, line: 112, type: !624, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !626)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !414, !45}
!626 = !{!627, !628}
!627 = !DILocalVariable(name: "ls", arg: 1, scope: !623, file: !3, line: 112, type: !414)
!628 = !DILocalVariable(name: "msg", arg: 2, scope: !623, file: !3, line: 112, type: !45)
!629 = !DILocation(line: 112, column: 34, scope: !623)
!630 = !DILocation(line: 112, column: 50, scope: !623)
!631 = !DILocation(line: 113, column: 32, scope: !623)
!632 = !{!503, !504, i64 16}
!633 = !DILocation(line: 113, column: 3, scope: !623)
!634 = !DILocation(line: 114, column: 1, scope: !623)
!635 = distinct !DISubprogram(name: "luaX_newstring", scope: !3, file: !3, line: 117, type: !636, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !638)
!636 = !DISubroutineType(types: !637)
!637 = !{!220, !414, !45, !49}
!638 = !{!639, !640, !641, !642, !643, !644, !645}
!639 = !DILocalVariable(name: "ls", arg: 1, scope: !635, file: !3, line: 117, type: !414)
!640 = !DILocalVariable(name: "str", arg: 2, scope: !635, file: !3, line: 117, type: !45)
!641 = !DILocalVariable(name: "l", arg: 3, scope: !635, file: !3, line: 117, type: !49)
!642 = !DILocalVariable(name: "L", scope: !635, file: !3, line: 118, type: !66)
!643 = !DILocalVariable(name: "ts", scope: !635, file: !3, line: 119, type: !220)
!644 = !DILocalVariable(name: "o", scope: !635, file: !3, line: 120, type: !128)
!645 = !DILocalVariable(name: "i_o", scope: !646, file: !3, line: 122, type: !128)
!646 = distinct !DILexicalBlock(scope: !647, file: !3, line: 122, column: 5)
!647 = distinct !DILexicalBlock(scope: !648, file: !3, line: 121, column: 19)
!648 = distinct !DILexicalBlock(scope: !635, file: !3, line: 121, column: 7)
!649 = !DILocation(line: 117, column: 36, scope: !635)
!650 = !DILocation(line: 117, column: 52, scope: !635)
!651 = !DILocation(line: 117, column: 64, scope: !635)
!652 = !DILocation(line: 118, column: 22, scope: !635)
!653 = !DILocation(line: 118, column: 14, scope: !635)
!654 = !DILocation(line: 119, column: 17, scope: !635)
!655 = !DILocation(line: 119, column: 12, scope: !635)
!656 = !DILocation(line: 120, column: 34, scope: !635)
!657 = !{!503, !398, i64 48}
!658 = !DILocation(line: 120, column: 38, scope: !635)
!659 = !{!660, !398, i64 8}
!660 = !{!"FuncState", !398, i64 0, !398, i64 8, !398, i64 16, !398, i64 24, !398, i64 32, !398, i64 40, !504, i64 48, !504, i64 52, !504, i64 56, !504, i64 60, !504, i64 64, !504, i64 68, !661, i64 72, !399, i64 74, !399, i64 75, !399, i64 196}
!661 = !{!"short", !399, i64 0}
!662 = !DILocation(line: 120, column: 15, scope: !635)
!663 = !DILocation(line: 120, column: 11, scope: !635)
!664 = !DILocation(line: 121, column: 7, scope: !648)
!665 = !{!666, !504, i64 8}
!666 = !{!"lua_TValue", !399, i64 0, !504, i64 8}
!667 = !DILocation(line: 121, column: 7, scope: !635)
!668 = !DILocation(line: 122, column: 5, scope: !646)
!669 = !DILocation(line: 123, column: 5, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !3, line: 123, column: 5)
!671 = distinct !DILexicalBlock(scope: !647, file: !3, line: 123, column: 5)
!672 = !{!673, !398, i64 32}
!673 = !{!"lua_State", !398, i64 0, !399, i64 8, !399, i64 9, !399, i64 10, !398, i64 16, !398, i64 24, !398, i64 32, !398, i64 40, !398, i64 48, !398, i64 56, !398, i64 64, !398, i64 72, !398, i64 80, !504, i64 88, !504, i64 92, !661, i64 96, !661, i64 98, !399, i64 100, !399, i64 101, !504, i64 104, !504, i64 108, !398, i64 112, !666, i64 120, !666, i64 136, !398, i64 152, !398, i64 160, !398, i64 168, !572, i64 176}
!674 = !{!675, !572, i64 120}
!675 = !{!"global_State", !676, i64 0, !398, i64 16, !398, i64 24, !399, i64 32, !399, i64 33, !504, i64 36, !398, i64 40, !398, i64 48, !398, i64 56, !398, i64 64, !398, i64 72, !398, i64 80, !571, i64 88, !572, i64 112, !572, i64 120, !572, i64 128, !572, i64 136, !504, i64 144, !504, i64 148, !398, i64 152, !666, i64 160, !398, i64 176, !677, i64 184, !399, i64 224, !399, i64 296}
!676 = !{!"stringtable", !398, i64 0, !504, i64 8, !504, i64 12}
!677 = !{!"UpVal", !398, i64 0, !399, i64 8, !399, i64 9, !398, i64 16, !399, i64 24}
!678 = !{!675, !572, i64 112}
!679 = !DILocation(line: 123, column: 5, scope: !671)
!680 = !DILocation(line: 125, column: 3, scope: !635)
!681 = distinct !DISubprogram(name: "luaX_setinput", scope: !3, file: !3, line: 140, type: !682, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !684)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !66, !414, !473, !220}
!684 = !{!685, !686, !687, !688}
!685 = !DILocalVariable(name: "L", arg: 1, scope: !681, file: !3, line: 140, type: !66)
!686 = !DILocalVariable(name: "ls", arg: 2, scope: !681, file: !3, line: 140, type: !414)
!687 = !DILocalVariable(name: "z", arg: 3, scope: !681, file: !3, line: 140, type: !473)
!688 = !DILocalVariable(name: "source", arg: 4, scope: !681, file: !3, line: 140, type: !220)
!689 = !DILocation(line: 140, column: 32, scope: !681)
!690 = !DILocation(line: 140, column: 45, scope: !681)
!691 = !DILocation(line: 140, column: 54, scope: !681)
!692 = !DILocation(line: 140, column: 66, scope: !681)
!693 = !DILocation(line: 141, column: 7, scope: !681)
!694 = !DILocation(line: 141, column: 16, scope: !681)
!695 = !{!503, !399, i64 88}
!696 = !DILocation(line: 142, column: 7, scope: !681)
!697 = !DILocation(line: 142, column: 9, scope: !681)
!698 = !DILocation(line: 143, column: 17, scope: !681)
!699 = !DILocation(line: 143, column: 23, scope: !681)
!700 = !{!503, !504, i64 32}
!701 = !DILocation(line: 144, column: 7, scope: !681)
!702 = !DILocation(line: 144, column: 9, scope: !681)
!703 = !{!503, !398, i64 64}
!704 = !DILocation(line: 145, column: 7, scope: !681)
!705 = !DILocation(line: 145, column: 10, scope: !681)
!706 = !DILocation(line: 146, column: 7, scope: !681)
!707 = !DILocation(line: 146, column: 18, scope: !681)
!708 = !DILocation(line: 147, column: 7, scope: !681)
!709 = !DILocation(line: 147, column: 16, scope: !681)
!710 = !{!503, !504, i64 8}
!711 = !DILocation(line: 148, column: 7, scope: !681)
!712 = !DILocation(line: 148, column: 14, scope: !681)
!713 = !DILocation(line: 149, column: 3, scope: !681)
!714 = !DILocation(line: 150, column: 3, scope: !681)
!715 = !{!716, !572, i64 0}
!716 = !{!"Zio", !572, i64 0, !398, i64 8, !398, i64 16, !398, i64 24, !398, i64 32}
!717 = !{!716, !398, i64 8}
!718 = !{!503, !504, i64 0}
!719 = !DILocation(line: 151, column: 1, scope: !681)
!720 = distinct !DISubprogram(name: "luaX_next", scope: !3, file: !3, line: 448, type: !721, isLocal: false, isDefinition: true, scopeLine: 448, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !723)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !414}
!723 = !{!724}
!724 = !DILocalVariable(name: "ls", arg: 1, scope: !720, file: !3, line: 448, type: !414)
!725 = !DILocation(line: 448, column: 27, scope: !720)
!726 = !DILocation(line: 449, column: 22, scope: !720)
!727 = !DILocation(line: 449, column: 7, scope: !720)
!728 = !DILocation(line: 449, column: 16, scope: !720)
!729 = !DILocation(line: 450, column: 11, scope: !730)
!730 = distinct !DILexicalBlock(scope: !720, file: !3, line: 450, column: 7)
!731 = !DILocation(line: 450, column: 21, scope: !730)
!732 = !DILocation(line: 450, column: 27, scope: !730)
!733 = !DILocation(line: 450, column: 7, scope: !720)
!734 = !DILocation(line: 451, column: 9, scope: !735)
!735 = distinct !DILexicalBlock(scope: !730, file: !3, line: 450, column: 38)
!736 = !DILocation(line: 451, column: 17, scope: !735)
!737 = !{i64 0, i64 4, !738, i64 8, i64 8, !739, i64 8, i64 8, !397}
!738 = !{!504, !504, i64 0}
!739 = !{!740, !740, i64 0}
!740 = !{!"double", !399, i64 0}
!741 = !DILocation(line: 452, column: 25, scope: !735)
!742 = !DILocation(line: 453, column: 3, scope: !735)
!743 = !DILocation(line: 455, column: 35, scope: !730)
!744 = !DILocation(line: 455, column: 19, scope: !730)
!745 = !DILocation(line: 455, column: 11, scope: !730)
!746 = !DILocation(line: 455, column: 17, scope: !730)
!747 = !DILocation(line: 456, column: 1, scope: !720)
!748 = distinct !DISubprogram(name: "llex", scope: !3, file: !3, line: 334, type: !749, isLocal: true, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !752)
!749 = !DISubroutineType(types: !750)
!750 = !{!41, !414, !751}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!752 = !{!753, !754, !755, !763, !765, !771}
!753 = !DILocalVariable(name: "ls", arg: 1, scope: !748, file: !3, line: 334, type: !414)
!754 = !DILocalVariable(name: "seminfo", arg: 2, scope: !748, file: !3, line: 334, type: !751)
!755 = !DILocalVariable(name: "sep", scope: !756, file: !3, line: 349, type: !41)
!756 = distinct !DILexicalBlock(scope: !757, file: !3, line: 348, column: 33)
!757 = distinct !DILexicalBlock(scope: !758, file: !3, line: 348, column: 13)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 343, column: 17)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 337, column: 26)
!760 = distinct !DILexicalBlock(scope: !761, file: !3, line: 336, column: 12)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 336, column: 3)
!762 = distinct !DILexicalBlock(scope: !748, file: !3, line: 336, column: 3)
!763 = !DILocalVariable(name: "sep", scope: !764, file: !3, line: 363, type: !41)
!764 = distinct !DILexicalBlock(scope: !759, file: !3, line: 362, column: 17)
!765 = !DILocalVariable(name: "ts", scope: !766, file: !3, line: 424, type: !220)
!766 = distinct !DILexicalBlock(scope: !767, file: !3, line: 422, column: 62)
!767 = distinct !DILexicalBlock(scope: !768, file: !3, line: 422, column: 18)
!768 = distinct !DILexicalBlock(scope: !769, file: !3, line: 418, column: 18)
!769 = distinct !DILexicalBlock(scope: !770, file: !3, line: 413, column: 13)
!770 = distinct !DILexicalBlock(scope: !759, file: !3, line: 412, column: 16)
!771 = !DILocalVariable(name: "c", scope: !772, file: !3, line: 438, type: !41)
!772 = distinct !DILexicalBlock(scope: !767, file: !3, line: 437, column: 14)
!773 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !774)
!774 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !775)
!775 = distinct !DILocation(line: 166, column: 3, scope: !776, inlinedAt: !782)
!776 = distinct !DISubprogram(name: "check_next", scope: !3, file: !3, line: 163, type: !777, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !779)
!777 = !DISubroutineType(types: !778)
!778 = !{!41, !414, !45}
!779 = !{!780, !781}
!780 = !DILocalVariable(name: "ls", arg: 1, scope: !776, file: !3, line: 163, type: !414)
!781 = !DILocalVariable(name: "set", arg: 2, scope: !776, file: !3, line: 163, type: !45)
!782 = distinct !DILocation(line: 399, column: 15, scope: !783)
!783 = distinct !DILexicalBlock(scope: !784, file: !3, line: 399, column: 15)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 398, column: 34)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 398, column: 13)
!786 = distinct !DILexicalBlock(scope: !759, file: !3, line: 396, column: 17)
!787 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !788)
!788 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !789)
!789 = distinct !DILocation(line: 166, column: 3, scope: !776, inlinedAt: !790)
!790 = distinct !DILocation(line: 398, column: 13, scope: !785)
!791 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !792)
!792 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !793)
!793 = distinct !DILocation(line: 426, column: 13, scope: !794)
!794 = distinct !DILexicalBlock(scope: !766, file: !3, line: 425, column: 14)
!795 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !796)
!796 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !797)
!797 = distinct !DILocation(line: 397, column: 9, scope: !786)
!798 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !799)
!799 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !800)
!800 = distinct !DILocation(line: 328, column: 3, scope: !801, inlinedAt: !817)
!801 = distinct !DISubprogram(name: "read_string", scope: !3, file: !3, line: 278, type: !802, isLocal: true, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !804)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !414, !41, !751}
!804 = !{!805, !806, !807, !808, !812}
!805 = !DILocalVariable(name: "ls", arg: 1, scope: !801, file: !3, line: 278, type: !414)
!806 = !DILocalVariable(name: "del", arg: 2, scope: !801, file: !3, line: 278, type: !41)
!807 = !DILocalVariable(name: "seminfo", arg: 3, scope: !801, file: !3, line: 278, type: !751)
!808 = !DILocalVariable(name: "c", scope: !809, file: !3, line: 290, type: !41)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 289, column: 18)
!810 = distinct !DILexicalBlock(scope: !811, file: !3, line: 281, column: 26)
!811 = distinct !DILexicalBlock(scope: !801, file: !3, line: 280, column: 30)
!812 = !DILocalVariable(name: "i", scope: !813, file: !3, line: 307, type: !41)
!813 = distinct !DILexicalBlock(scope: !814, file: !3, line: 306, column: 18)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 304, column: 17)
!815 = distinct !DILexicalBlock(scope: !816, file: !3, line: 303, column: 20)
!816 = distinct !DILexicalBlock(scope: !809, file: !3, line: 292, column: 30)
!817 = distinct !DILocation(line: 393, column: 9, scope: !818)
!818 = distinct !DILexicalBlock(scope: !759, file: !3, line: 392, column: 18)
!819 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !820)
!820 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !821)
!821 = distinct !DILocation(line: 325, column: 9, scope: !810, inlinedAt: !817)
!822 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !823)
!823 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !824)
!824 = distinct !DILocation(line: 320, column: 9, scope: !809, inlinedAt: !817)
!825 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !826)
!826 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !827)
!827 = distinct !DILocation(line: 315, column: 15, scope: !813, inlinedAt: !817)
!828 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !829)
!829 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !830)
!830 = distinct !DILocation(line: 305, column: 15, scope: !814, inlinedAt: !817)
!831 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !832)
!832 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !833)
!833 = distinct !DILocation(line: 301, column: 22, scope: !816, inlinedAt: !817)
!834 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !835)
!835 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !836)
!836 = distinct !DILocation(line: 279, column: 3, scope: !801, inlinedAt: !817)
!837 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !838)
!838 = distinct !DILocation(line: 283, column: 9, scope: !810, inlinedAt: !817)
!839 = !DILocation(line: 334, column: 28, scope: !748)
!840 = !DILocation(line: 334, column: 41, scope: !748)
!841 = !DILocation(line: 335, column: 3, scope: !748)
!842 = !DILocation(line: 336, column: 3, scope: !748)
!843 = !DILocation(line: 337, column: 17, scope: !760)
!844 = !DILocation(line: 337, column: 5, scope: !760)
!845 = !DILocation(line: 340, column: 9, scope: !846)
!846 = distinct !DILexicalBlock(scope: !759, file: !3, line: 339, column: 18)
!847 = !DILocation(line: 341, column: 9, scope: !846)
!848 = distinct !{!848, !849, !850}
!849 = !DILocation(line: 336, column: 3, scope: !762)
!850 = !DILocation(line: 444, column: 3, scope: !762)
!851 = !DILocation(line: 344, column: 9, scope: !758)
!852 = !DILocation(line: 345, column: 25, scope: !853)
!853 = distinct !DILexicalBlock(scope: !758, file: !3, line: 345, column: 13)
!854 = !DILocation(line: 345, column: 13, scope: !758)
!855 = !DILocation(line: 347, column: 9, scope: !758)
!856 = !DILocation(line: 348, column: 25, scope: !757)
!857 = !DILocation(line: 348, column: 13, scope: !758)
!858 = !DILocation(line: 358, column: 17, scope: !758)
!859 = !DILocation(line: 349, column: 21, scope: !756)
!860 = !DILocation(line: 349, column: 15, scope: !756)
!861 = !DILocation(line: 350, column: 11, scope: !756)
!862 = !DILocation(line: 351, column: 19, scope: !863)
!863 = distinct !DILexicalBlock(scope: !756, file: !3, line: 351, column: 15)
!864 = !DILocation(line: 351, column: 15, scope: !756)
!865 = !DILocation(line: 352, column: 13, scope: !866)
!866 = distinct !DILexicalBlock(scope: !863, file: !3, line: 351, column: 25)
!867 = !DILocation(line: 353, column: 13, scope: !866)
!868 = !DILocation(line: 359, column: 11, scope: !758)
!869 = !DILocation(line: 358, column: 9, scope: !758)
!870 = distinct !{!870, !869, !868}
!871 = !DILocation(line: 363, column: 19, scope: !764)
!872 = !DILocation(line: 363, column: 13, scope: !764)
!873 = !DILocation(line: 364, column: 17, scope: !874)
!874 = distinct !DILexicalBlock(scope: !764, file: !3, line: 364, column: 13)
!875 = !DILocation(line: 364, column: 13, scope: !764)
!876 = !DILocation(line: 365, column: 11, scope: !877)
!877 = distinct !DILexicalBlock(scope: !874, file: !3, line: 364, column: 23)
!878 = !DILocation(line: 366, column: 11, scope: !877)
!879 = !DILocation(line: 368, column: 22, scope: !880)
!880 = distinct !DILexicalBlock(scope: !874, file: !3, line: 368, column: 18)
!881 = !DILocation(line: 368, column: 18, scope: !874)
!882 = !DILocation(line: 369, column: 14, scope: !880)
!883 = !DILocation(line: 372, column: 9, scope: !884)
!884 = distinct !DILexicalBlock(scope: !759, file: !3, line: 371, column: 17)
!885 = !DILocation(line: 373, column: 25, scope: !886)
!886 = distinct !DILexicalBlock(scope: !884, file: !3, line: 373, column: 13)
!887 = !DILocation(line: 373, column: 13, scope: !884)
!888 = !DILocation(line: 374, column: 16, scope: !889)
!889 = distinct !DILexicalBlock(scope: !886, file: !3, line: 374, column: 14)
!890 = !DILocation(line: 374, column: 26, scope: !889)
!891 = !DILocation(line: 377, column: 9, scope: !892)
!892 = distinct !DILexicalBlock(scope: !759, file: !3, line: 376, column: 17)
!893 = !DILocation(line: 378, column: 25, scope: !894)
!894 = distinct !DILexicalBlock(scope: !892, file: !3, line: 378, column: 13)
!895 = !DILocation(line: 378, column: 13, scope: !892)
!896 = !DILocation(line: 379, column: 16, scope: !897)
!897 = distinct !DILexicalBlock(scope: !894, file: !3, line: 379, column: 14)
!898 = !DILocation(line: 379, column: 26, scope: !897)
!899 = !DILocation(line: 382, column: 9, scope: !900)
!900 = distinct !DILexicalBlock(scope: !759, file: !3, line: 381, column: 17)
!901 = !DILocation(line: 383, column: 25, scope: !902)
!902 = distinct !DILexicalBlock(scope: !900, file: !3, line: 383, column: 13)
!903 = !DILocation(line: 383, column: 13, scope: !900)
!904 = !DILocation(line: 384, column: 16, scope: !905)
!905 = distinct !DILexicalBlock(scope: !902, file: !3, line: 384, column: 14)
!906 = !DILocation(line: 384, column: 26, scope: !905)
!907 = !DILocation(line: 387, column: 9, scope: !908)
!908 = distinct !DILexicalBlock(scope: !759, file: !3, line: 386, column: 17)
!909 = !DILocation(line: 388, column: 25, scope: !910)
!910 = distinct !DILexicalBlock(scope: !908, file: !3, line: 388, column: 13)
!911 = !DILocation(line: 388, column: 13, scope: !908)
!912 = !DILocation(line: 389, column: 16, scope: !913)
!913 = distinct !DILexicalBlock(scope: !910, file: !3, line: 389, column: 14)
!914 = !DILocation(line: 389, column: 26, scope: !913)
!915 = !DILocation(line: 278, column: 36, scope: !801, inlinedAt: !817)
!916 = !DILocation(line: 278, column: 44, scope: !801, inlinedAt: !817)
!917 = !DILocation(line: 278, column: 58, scope: !801, inlinedAt: !817)
!918 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !836)
!919 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !836)
!920 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !836)
!921 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !836)
!922 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !836)
!923 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !836)
!924 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !836)
!925 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !836)
!926 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !836)
!927 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !836)
!928 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !836)
!929 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !836)
!930 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !836)
!931 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !835)
!932 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !835)
!933 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !835)
!934 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !835)
!935 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !835)
!936 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !835)
!937 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !835)
!938 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !835)
!939 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !835)
!940 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !835)
!941 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !835)
!942 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !835)
!943 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !836)
!944 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !836)
!945 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !836)
!946 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !836)
!947 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !836)
!948 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !836)
!949 = !DILocation(line: 60, column: 23, scope: !530, inlinedAt: !836)
!950 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !836)
!951 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !836)
!952 = !DILocation(line: 279, column: 3, scope: !801, inlinedAt: !817)
!953 = !DILocation(line: 280, column: 22, scope: !801, inlinedAt: !817)
!954 = !DILocation(line: 280, column: 3, scope: !801, inlinedAt: !817)
!955 = !DILocation(line: 280, column: 14, scope: !801, inlinedAt: !817)
!956 = !DILocation(line: 281, column: 5, scope: !811, inlinedAt: !817)
!957 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !838)
!958 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !838)
!959 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !838)
!960 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !838)
!961 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !838)
!962 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !838)
!963 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !838)
!964 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !838)
!965 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !838)
!966 = !DILocation(line: 107, column: 26, scope: !545, inlinedAt: !838)
!967 = !DILocation(line: 107, column: 5, scope: !545, inlinedAt: !838)
!968 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !838)
!969 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !838)
!970 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !838)
!971 = !DILocation(line: 284, column: 9, scope: !810, inlinedAt: !817)
!972 = distinct !{!972, !973, !974}
!973 = !DILocation(line: 280, column: 3, scope: !801)
!974 = !DILocation(line: 327, column: 3, scope: !801)
!975 = !DILocation(line: 287, column: 9, scope: !810, inlinedAt: !817)
!976 = !DILocation(line: 288, column: 9, scope: !810, inlinedAt: !817)
!977 = !DILocation(line: 291, column: 9, scope: !809, inlinedAt: !817)
!978 = !DILocation(line: 292, column: 9, scope: !809, inlinedAt: !817)
!979 = !DILocation(line: 290, column: 13, scope: !809, inlinedAt: !817)
!980 = !DILocation(line: 294, column: 31, scope: !816, inlinedAt: !817)
!981 = !DILocation(line: 295, column: 31, scope: !816, inlinedAt: !817)
!982 = !DILocation(line: 296, column: 31, scope: !816, inlinedAt: !817)
!983 = !DILocation(line: 297, column: 31, scope: !816, inlinedAt: !817)
!984 = !DILocation(line: 298, column: 31, scope: !816, inlinedAt: !817)
!985 = !DILocation(line: 299, column: 31, scope: !816, inlinedAt: !817)
!986 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !833)
!987 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !833)
!988 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !833)
!989 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !833)
!990 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !833)
!991 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !833)
!992 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !833)
!993 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !833)
!994 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !833)
!995 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !833)
!996 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !833)
!997 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !833)
!998 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !832)
!999 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !832)
!1000 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !832)
!1001 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !832)
!1002 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !832)
!1003 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !832)
!1004 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !832)
!1005 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !832)
!1006 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !832)
!1007 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !832)
!1008 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !832)
!1009 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !832)
!1010 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !833)
!1011 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !833)
!1012 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !833)
!1013 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !833)
!1014 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !833)
!1015 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !833)
!1016 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !833)
!1017 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !833)
!1018 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !833)
!1019 = !DILocation(line: 301, column: 38, scope: !816, inlinedAt: !817)
!1020 = !DILocation(line: 301, column: 57, scope: !816, inlinedAt: !817)
!1021 = !DILocation(line: 304, column: 18, scope: !814, inlinedAt: !817)
!1022 = !DILocation(line: 304, column: 17, scope: !815, inlinedAt: !817)
!1023 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !830)
!1024 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !830)
!1025 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !830)
!1026 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !830)
!1027 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !830)
!1028 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !830)
!1029 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !830)
!1030 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !830)
!1031 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !830)
!1032 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !830)
!1033 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !830)
!1034 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !830)
!1035 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !829)
!1036 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !829)
!1037 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !829)
!1038 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !829)
!1039 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !829)
!1040 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !829)
!1041 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !829)
!1042 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !829)
!1043 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !829)
!1044 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !829)
!1045 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !829)
!1046 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !829)
!1047 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !830)
!1048 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !830)
!1049 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !830)
!1050 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !830)
!1051 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !830)
!1052 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !830)
!1053 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !830)
!1054 = !DILocation(line: 60, column: 23, scope: !530, inlinedAt: !830)
!1055 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !830)
!1056 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !830)
!1057 = !DILocation(line: 305, column: 15, scope: !814, inlinedAt: !817)
!1058 = !DILocation(line: 310, column: 33, scope: !1059, inlinedAt: !817)
!1059 = distinct !DILexicalBlock(scope: !813, file: !3, line: 309, column: 18)
!1060 = !DILocation(line: 0, scope: !1059, inlinedAt: !817)
!1061 = !DILocation(line: 0, scope: !813, inlinedAt: !817)
!1062 = !DILocation(line: 307, column: 19, scope: !813, inlinedAt: !817)
!1063 = !DILocation(line: 310, column: 23, scope: !1059, inlinedAt: !817)
!1064 = !DILocation(line: 310, column: 40, scope: !1059, inlinedAt: !817)
!1065 = !DILocation(line: 310, column: 26, scope: !1059, inlinedAt: !817)
!1066 = !DILocation(line: 311, column: 17, scope: !1059, inlinedAt: !817)
!1067 = !DILocation(line: 312, column: 24, scope: !813, inlinedAt: !817)
!1068 = !DILocation(line: 312, column: 27, scope: !813, inlinedAt: !817)
!1069 = !DILocation(line: 312, column: 30, scope: !813, inlinedAt: !817)
!1070 = !DILocation(line: 312, column: 33, scope: !813, inlinedAt: !817)
!1071 = !DILocation(line: 312, column: 15, scope: !1059, inlinedAt: !817)
!1072 = distinct !{!1072, !1073, !1074}
!1073 = !DILocation(line: 309, column: 15, scope: !813)
!1074 = !DILocation(line: 312, column: 53, scope: !813)
!1075 = !DILocation(line: 313, column: 21, scope: !1076, inlinedAt: !817)
!1076 = distinct !DILexicalBlock(scope: !813, file: !3, line: 313, column: 19)
!1077 = !DILocation(line: 313, column: 19, scope: !813, inlinedAt: !817)
!1078 = !DILocation(line: 314, column: 17, scope: !1076, inlinedAt: !817)
!1079 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !827)
!1080 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !827)
!1081 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !827)
!1082 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !827)
!1083 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !827)
!1084 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !827)
!1085 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !827)
!1086 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !827)
!1087 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !827)
!1088 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !827)
!1089 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !827)
!1090 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !827)
!1091 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !826)
!1092 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !826)
!1093 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !826)
!1094 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !826)
!1095 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !826)
!1096 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !826)
!1097 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !826)
!1098 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !826)
!1099 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !826)
!1100 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !826)
!1101 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !826)
!1102 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !826)
!1103 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !827)
!1104 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !827)
!1105 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !827)
!1106 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !827)
!1107 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !827)
!1108 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !827)
!1109 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !827)
!1110 = !DILocation(line: 60, column: 23, scope: !530, inlinedAt: !827)
!1111 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !827)
!1112 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !827)
!1113 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !824)
!1114 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !824)
!1115 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !824)
!1116 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !824)
!1117 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !824)
!1118 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !824)
!1119 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !824)
!1120 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !824)
!1121 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !824)
!1122 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !824)
!1123 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !824)
!1124 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !823)
!1125 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !823)
!1126 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !823)
!1127 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !823)
!1128 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !823)
!1129 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !823)
!1130 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !823)
!1131 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !823)
!1132 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !823)
!1133 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !823)
!1134 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !823)
!1135 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !823)
!1136 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !824)
!1137 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !824)
!1138 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !824)
!1139 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !824)
!1140 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !824)
!1141 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !824)
!1142 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !824)
!1143 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !824)
!1144 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !824)
!1145 = !DILocation(line: 321, column: 9, scope: !809, inlinedAt: !817)
!1146 = !DILocation(line: 322, column: 9, scope: !809, inlinedAt: !817)
!1147 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !821)
!1148 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !821)
!1149 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !821)
!1150 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !821)
!1151 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !821)
!1152 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !821)
!1153 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !821)
!1154 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !821)
!1155 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !821)
!1156 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !821)
!1157 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !821)
!1158 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !821)
!1159 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !820)
!1160 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !820)
!1161 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !820)
!1162 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !820)
!1163 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !820)
!1164 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !820)
!1165 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !820)
!1166 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !820)
!1167 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !820)
!1168 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !820)
!1169 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !820)
!1170 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !820)
!1171 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !821)
!1172 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !821)
!1173 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !821)
!1174 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !821)
!1175 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !821)
!1176 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !821)
!1177 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !821)
!1178 = !DILocation(line: 60, column: 23, scope: !530, inlinedAt: !821)
!1179 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !821)
!1180 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !821)
!1181 = !DILocation(line: 325, column: 9, scope: !810, inlinedAt: !817)
!1182 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !800)
!1183 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !800)
!1184 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !800)
!1185 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !800)
!1186 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !800)
!1187 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !800)
!1188 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !800)
!1189 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !800)
!1190 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !800)
!1191 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !800)
!1192 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !800)
!1193 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !800)
!1194 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !800)
!1195 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !799)
!1196 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !799)
!1197 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !799)
!1198 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !799)
!1199 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !799)
!1200 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !799)
!1201 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !799)
!1202 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !799)
!1203 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !799)
!1204 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !799)
!1205 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !799)
!1206 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !799)
!1207 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !800)
!1208 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !800)
!1209 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !800)
!1210 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !800)
!1211 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !800)
!1212 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !800)
!1213 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !800)
!1214 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !800)
!1215 = !DILocation(line: 328, column: 3, scope: !801, inlinedAt: !817)
!1216 = !DILocation(line: 329, column: 36, scope: !801, inlinedAt: !817)
!1217 = !DILocation(line: 329, column: 58, scope: !801, inlinedAt: !817)
!1218 = !DILocation(line: 330, column: 36, scope: !801, inlinedAt: !817)
!1219 = !DILocation(line: 330, column: 59, scope: !801, inlinedAt: !817)
!1220 = !DILocation(line: 117, column: 36, scope: !635, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 329, column: 17, scope: !801, inlinedAt: !817)
!1222 = !DILocation(line: 117, column: 52, scope: !635, inlinedAt: !1221)
!1223 = !DILocation(line: 117, column: 64, scope: !635, inlinedAt: !1221)
!1224 = !DILocation(line: 118, column: 22, scope: !635, inlinedAt: !1221)
!1225 = !DILocation(line: 118, column: 14, scope: !635, inlinedAt: !1221)
!1226 = !DILocation(line: 119, column: 17, scope: !635, inlinedAt: !1221)
!1227 = !DILocation(line: 119, column: 12, scope: !635, inlinedAt: !1221)
!1228 = !DILocation(line: 120, column: 34, scope: !635, inlinedAt: !1221)
!1229 = !DILocation(line: 120, column: 38, scope: !635, inlinedAt: !1221)
!1230 = !DILocation(line: 120, column: 15, scope: !635, inlinedAt: !1221)
!1231 = !DILocation(line: 120, column: 11, scope: !635, inlinedAt: !1221)
!1232 = !DILocation(line: 121, column: 7, scope: !648, inlinedAt: !1221)
!1233 = !DILocation(line: 121, column: 7, scope: !635, inlinedAt: !1221)
!1234 = !DILocation(line: 122, column: 5, scope: !646, inlinedAt: !1221)
!1235 = !DILocation(line: 123, column: 5, scope: !670, inlinedAt: !1221)
!1236 = !DILocation(line: 123, column: 5, scope: !671, inlinedAt: !1221)
!1237 = !DILocation(line: 329, column: 12, scope: !801, inlinedAt: !817)
!1238 = !DILocation(line: 329, column: 15, scope: !801, inlinedAt: !817)
!1239 = !DILocation(line: 394, column: 9, scope: !818)
!1240 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !797)
!1241 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !797)
!1242 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !797)
!1243 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !797)
!1244 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !797)
!1245 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !797)
!1246 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !797)
!1247 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !797)
!1248 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !797)
!1249 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !797)
!1250 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !797)
!1251 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !797)
!1252 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !797)
!1253 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !796)
!1254 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !796)
!1255 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !796)
!1256 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !796)
!1257 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !796)
!1258 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !796)
!1259 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !796)
!1260 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !796)
!1261 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !796)
!1262 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !796)
!1263 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !796)
!1264 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !796)
!1265 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !797)
!1266 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !797)
!1267 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !797)
!1268 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !797)
!1269 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !797)
!1270 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !797)
!1271 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !797)
!1272 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !797)
!1273 = !DILocation(line: 397, column: 9, scope: !786)
!1274 = !DILocation(line: 163, column: 34, scope: !776, inlinedAt: !790)
!1275 = !DILocation(line: 163, column: 50, scope: !776, inlinedAt: !790)
!1276 = !DILocation(line: 164, column: 8, scope: !1277, inlinedAt: !790)
!1277 = distinct !DILexicalBlock(scope: !776, file: !3, line: 164, column: 7)
!1278 = !DILocation(line: 164, column: 7, scope: !776, inlinedAt: !790)
!1279 = !DILocation(line: 166, column: 3, scope: !776, inlinedAt: !790)
!1280 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !789)
!1281 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !789)
!1282 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !789)
!1283 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !789)
!1284 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !789)
!1285 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !789)
!1286 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !789)
!1287 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !789)
!1288 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !789)
!1289 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !789)
!1290 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !789)
!1291 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !789)
!1292 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !789)
!1293 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !788)
!1294 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !788)
!1295 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !788)
!1296 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !788)
!1297 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !788)
!1298 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !788)
!1299 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !788)
!1300 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !788)
!1301 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !788)
!1302 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !788)
!1303 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !788)
!1304 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !788)
!1305 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !789)
!1306 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !789)
!1307 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !789)
!1308 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !789)
!1309 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !789)
!1310 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !789)
!1311 = !DILocation(line: 60, column: 23, scope: !530, inlinedAt: !789)
!1312 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !789)
!1313 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !789)
!1314 = !DILocation(line: 163, column: 34, scope: !776, inlinedAt: !782)
!1315 = !DILocation(line: 163, column: 50, scope: !776, inlinedAt: !782)
!1316 = !DILocation(line: 164, column: 8, scope: !1277, inlinedAt: !782)
!1317 = !DILocation(line: 164, column: 7, scope: !776, inlinedAt: !782)
!1318 = !DILocation(line: 166, column: 3, scope: !776, inlinedAt: !782)
!1319 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !775)
!1320 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !775)
!1321 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !775)
!1322 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !775)
!1323 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !775)
!1324 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !775)
!1325 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !775)
!1326 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !775)
!1327 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !775)
!1328 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !775)
!1329 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !775)
!1330 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !775)
!1331 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !775)
!1332 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !774)
!1333 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !774)
!1334 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !774)
!1335 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !774)
!1336 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !774)
!1337 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !774)
!1338 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !774)
!1339 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !774)
!1340 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !774)
!1341 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !774)
!1342 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !774)
!1343 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !774)
!1344 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !775)
!1345 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !775)
!1346 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !775)
!1347 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !775)
!1348 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !775)
!1349 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !775)
!1350 = !DILocation(line: 60, column: 23, scope: !530, inlinedAt: !775)
!1351 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !775)
!1352 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !775)
!1353 = !DILocation(line: 401, column: 16, scope: !783)
!1354 = !DILocation(line: 403, column: 19, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !785, file: !3, line: 403, column: 18)
!1356 = !DILocation(line: 403, column: 18, scope: !785)
!1357 = !DILocation(line: 405, column: 11, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 404, column: 14)
!1359 = !DILocation(line: 406, column: 11, scope: !1358)
!1360 = !DILocation(line: 413, column: 13, scope: !769)
!1361 = !DILocation(line: 413, column: 13, scope: !770)
!1362 = !DILocation(line: 415, column: 11, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !769, file: !3, line: 413, column: 35)
!1364 = !DILocation(line: 416, column: 11, scope: !1363)
!1365 = !DILocation(line: 418, column: 18, scope: !768)
!1366 = !DILocation(line: 418, column: 18, scope: !769)
!1367 = !DILocation(line: 419, column: 11, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !768, file: !3, line: 418, column: 40)
!1369 = !DILocation(line: 420, column: 11, scope: !1368)
!1370 = !DILocation(line: 422, column: 18, scope: !767)
!1371 = !DILocation(line: 422, column: 54, scope: !767)
!1372 = !DILocation(line: 422, column: 39, scope: !767)
!1373 = !DILocation(line: 426, column: 13, scope: !794)
!1374 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !793)
!1375 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !793)
!1376 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !793)
!1377 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !793)
!1378 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !793)
!1379 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !793)
!1380 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !793)
!1381 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !793)
!1382 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !793)
!1383 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !793)
!1384 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !793)
!1385 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !793)
!1386 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !792)
!1387 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !792)
!1388 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !792)
!1389 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !792)
!1390 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !792)
!1391 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !792)
!1392 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !792)
!1393 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !792)
!1394 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !792)
!1395 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !792)
!1396 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !792)
!1397 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !792)
!1398 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !793)
!1399 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !793)
!1400 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !793)
!1401 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !793)
!1402 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !793)
!1403 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !793)
!1404 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !793)
!1405 = !DILocation(line: 60, column: 23, scope: !530, inlinedAt: !793)
!1406 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !793)
!1407 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !793)
!1408 = !DILocation(line: 427, column: 20, scope: !766)
!1409 = !DILocation(line: 427, column: 56, scope: !766)
!1410 = !DILocation(line: 427, column: 41, scope: !766)
!1411 = distinct !{!1411, !1412, !1413}
!1412 = !DILocation(line: 425, column: 11, scope: !766)
!1413 = !DILocation(line: 427, column: 62, scope: !766)
!1414 = !DILocation(line: 428, column: 35, scope: !766)
!1415 = !DILocation(line: 429, column: 35, scope: !766)
!1416 = !DILocation(line: 117, column: 36, scope: !635, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 428, column: 16, scope: !766)
!1418 = !DILocation(line: 117, column: 52, scope: !635, inlinedAt: !1417)
!1419 = !DILocation(line: 117, column: 64, scope: !635, inlinedAt: !1417)
!1420 = !DILocation(line: 118, column: 22, scope: !635, inlinedAt: !1417)
!1421 = !DILocation(line: 118, column: 14, scope: !635, inlinedAt: !1417)
!1422 = !DILocation(line: 119, column: 17, scope: !635, inlinedAt: !1417)
!1423 = !DILocation(line: 119, column: 12, scope: !635, inlinedAt: !1417)
!1424 = !DILocation(line: 120, column: 34, scope: !635, inlinedAt: !1417)
!1425 = !DILocation(line: 120, column: 38, scope: !635, inlinedAt: !1417)
!1426 = !DILocation(line: 120, column: 15, scope: !635, inlinedAt: !1417)
!1427 = !DILocation(line: 120, column: 11, scope: !635, inlinedAt: !1417)
!1428 = !DILocation(line: 121, column: 7, scope: !648, inlinedAt: !1417)
!1429 = !DILocation(line: 121, column: 7, scope: !635, inlinedAt: !1417)
!1430 = !DILocation(line: 122, column: 5, scope: !646, inlinedAt: !1417)
!1431 = !DILocation(line: 123, column: 5, scope: !670, inlinedAt: !1417)
!1432 = !DILocation(line: 123, column: 5, scope: !671, inlinedAt: !1417)
!1433 = !DILocation(line: 424, column: 20, scope: !766)
!1434 = !DILocation(line: 430, column: 23, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !766, file: !3, line: 430, column: 15)
!1436 = !DILocation(line: 430, column: 32, scope: !1435)
!1437 = !DILocation(line: 430, column: 15, scope: !766)
!1438 = !DILocation(line: 430, column: 15, scope: !1435)
!1439 = !DILocation(line: 431, column: 41, scope: !1435)
!1440 = !DILocation(line: 431, column: 13, scope: !1435)
!1441 = !DILocation(line: 433, column: 22, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 432, column: 16)
!1443 = !DILocation(line: 433, column: 25, scope: !1442)
!1444 = !DILocation(line: 434, column: 13, scope: !1442)
!1445 = !DILocation(line: 438, column: 15, scope: !772)
!1446 = !DILocation(line: 439, column: 11, scope: !772)
!1447 = !DILocation(line: 0, scope: !853)
!1448 = !DILocation(line: 445, column: 1, scope: !748)
!1449 = distinct !DISubprogram(name: "luaX_lookahead", scope: !3, file: !3, line: 459, type: !721, isLocal: false, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1450)
!1450 = !{!1451}
!1451 = !DILocalVariable(name: "ls", arg: 1, scope: !1449, file: !3, line: 459, type: !414)
!1452 = !DILocation(line: 459, column: 32, scope: !1449)
!1453 = !DILocation(line: 461, column: 49, scope: !1449)
!1454 = !DILocation(line: 461, column: 25, scope: !1449)
!1455 = !DILocation(line: 461, column: 17, scope: !1449)
!1456 = !DILocation(line: 461, column: 23, scope: !1449)
!1457 = !DILocation(line: 462, column: 1, scope: !1449)
!1458 = distinct !DISubprogram(name: "inclinenumber", scope: !3, file: !3, line: 129, type: !721, isLocal: true, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1459)
!1459 = !{!1460, !1461}
!1460 = !DILocalVariable(name: "ls", arg: 1, scope: !1458, file: !3, line: 129, type: !414)
!1461 = !DILocalVariable(name: "old", scope: !1458, file: !3, line: 130, type: !41)
!1462 = !DILocation(line: 129, column: 38, scope: !1458)
!1463 = !DILocation(line: 130, column: 17, scope: !1458)
!1464 = !DILocation(line: 130, column: 7, scope: !1458)
!1465 = !DILocation(line: 132, column: 3, scope: !1458)
!1466 = !DILocation(line: 133, column: 7, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 133, column: 7)
!1468 = !DILocation(line: 133, column: 40, scope: !1467)
!1469 = !DILocation(line: 133, column: 7, scope: !1458)
!1470 = !DILocation(line: 134, column: 5, scope: !1467)
!1471 = !DILocation(line: 135, column: 13, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 135, column: 7)
!1473 = !DILocation(line: 135, column: 7, scope: !1472)
!1474 = !DILocation(line: 135, column: 24, scope: !1472)
!1475 = !DILocation(line: 135, column: 7, scope: !1458)
!1476 = !DILocation(line: 112, column: 34, scope: !623, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 136, column: 5, scope: !1472)
!1478 = !DILocation(line: 112, column: 50, scope: !623, inlinedAt: !1477)
!1479 = !DILocation(line: 113, column: 32, scope: !623, inlinedAt: !1477)
!1480 = !DILocation(line: 113, column: 3, scope: !623, inlinedAt: !1477)
!1481 = !DILocation(line: 136, column: 5, scope: !1472)
!1482 = !DILocation(line: 137, column: 1, scope: !1458)
!1483 = distinct !DISubprogram(name: "skip_sep", scope: !3, file: !3, line: 210, type: !1484, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1486)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!41, !414}
!1486 = !{!1487, !1488, !1489}
!1487 = !DILocalVariable(name: "ls", arg: 1, scope: !1483, file: !3, line: 210, type: !414)
!1488 = !DILocalVariable(name: "count", scope: !1483, file: !3, line: 211, type: !41)
!1489 = !DILocalVariable(name: "s", scope: !1483, file: !3, line: 212, type: !41)
!1490 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 216, column: 5, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 215, column: 30)
!1494 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 214, column: 3, scope: !1483)
!1497 = !DILocation(line: 210, column: 32, scope: !1483)
!1498 = !DILocation(line: 211, column: 7, scope: !1483)
!1499 = !DILocation(line: 212, column: 15, scope: !1483)
!1500 = !DILocation(line: 212, column: 7, scope: !1483)
!1501 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !1496)
!1502 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !1496)
!1503 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !1496)
!1504 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !1496)
!1505 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !1496)
!1506 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !1496)
!1507 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !1496)
!1508 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !1496)
!1509 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !1496)
!1510 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !1496)
!1511 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !1496)
!1512 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !1496)
!1513 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !1496)
!1514 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !1495)
!1515 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !1495)
!1516 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !1495)
!1517 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !1495)
!1518 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !1495)
!1519 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !1495)
!1520 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !1495)
!1521 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !1495)
!1522 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !1495)
!1523 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !1495)
!1524 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !1495)
!1525 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !1495)
!1526 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !1496)
!1527 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1496)
!1528 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !1496)
!1529 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !1496)
!1530 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !1496)
!1531 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !1496)
!1532 = !DILocation(line: 60, column: 23, scope: !530, inlinedAt: !1496)
!1533 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !1496)
!1534 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !1496)
!1535 = !DILocation(line: 214, column: 3, scope: !1483)
!1536 = !DILocation(line: 215, column: 22, scope: !1483)
!1537 = !DILocation(line: 215, column: 3, scope: !1483)
!1538 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !1492)
!1539 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !1492)
!1540 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !1492)
!1541 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !1492)
!1542 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !1492)
!1543 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !1492)
!1544 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !1492)
!1545 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !1492)
!1546 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !1492)
!1547 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !1492)
!1548 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !1492)
!1549 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !1492)
!1550 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !1491)
!1551 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !1491)
!1552 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !1491)
!1553 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !1491)
!1554 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !1491)
!1555 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !1491)
!1556 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !1491)
!1557 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !1491)
!1558 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !1491)
!1559 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !1491)
!1560 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !1491)
!1561 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !1491)
!1562 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !1492)
!1563 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1492)
!1564 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !1492)
!1565 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !1492)
!1566 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !1492)
!1567 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !1492)
!1568 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !1492)
!1569 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !1492)
!1570 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !1492)
!1571 = !DILocation(line: 216, column: 5, scope: !1493)
!1572 = !DILocation(line: 217, column: 10, scope: !1493)
!1573 = distinct !{!1573, !1537, !1574}
!1574 = !DILocation(line: 218, column: 3, scope: !1483)
!1575 = !DILocation(line: 215, column: 14, scope: !1483)
!1576 = !DILocation(line: 0, scope: !1493)
!1577 = !DILocation(line: 219, column: 23, scope: !1483)
!1578 = !DILocation(line: 219, column: 10, scope: !1483)
!1579 = !DILocation(line: 219, column: 3, scope: !1483)
!1580 = distinct !DISubprogram(name: "read_long_string", scope: !3, file: !3, line: 223, type: !1581, isLocal: true, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1583)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{null, !414, !751, !41}
!1583 = !{!1584, !1585, !1586, !1587}
!1584 = !DILocalVariable(name: "ls", arg: 1, scope: !1580, file: !3, line: 223, type: !414)
!1585 = !DILocalVariable(name: "seminfo", arg: 2, scope: !1580, file: !3, line: 223, type: !751)
!1586 = !DILocalVariable(name: "sep", arg: 3, scope: !1580, file: !3, line: 223, type: !41)
!1587 = !DILocalVariable(name: "cont", scope: !1580, file: !3, line: 224, type: !41)
!1588 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 267, column: 22, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 267, column: 13)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 266, column: 16)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 230, column: 26)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 229, column: 12)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 229, column: 3)
!1596 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 229, column: 3)
!1597 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 261, column: 9, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 260, column: 18)
!1601 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1603)
!1603 = distinct !DILocation(line: 250, column: 11, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 249, column: 34)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 249, column: 13)
!1606 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 248, column: 17)
!1607 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !1608)
!1608 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 238, column: 11, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 237, column: 34)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 237, column: 13)
!1612 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 236, column: 17)
!1613 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1615)
!1615 = distinct !DILocation(line: 226, column: 3, scope: !1580)
!1616 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 232, column: 9, scope: !1593)
!1618 = !DILocation(line: 223, column: 41, scope: !1580)
!1619 = !DILocation(line: 223, column: 54, scope: !1580)
!1620 = !DILocation(line: 223, column: 67, scope: !1580)
!1621 = !DILocation(line: 224, column: 7, scope: !1580)
!1622 = !DILocation(line: 226, column: 3, scope: !1580)
!1623 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !1615)
!1624 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !1615)
!1625 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !1615)
!1626 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !1615)
!1627 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !1615)
!1628 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !1615)
!1629 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !1615)
!1630 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !1615)
!1631 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !1615)
!1632 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !1615)
!1633 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !1615)
!1634 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !1615)
!1635 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !1615)
!1636 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !1614)
!1637 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !1614)
!1638 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !1614)
!1639 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !1614)
!1640 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !1614)
!1641 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !1614)
!1642 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !1614)
!1643 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !1614)
!1644 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !1614)
!1645 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !1614)
!1646 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !1614)
!1647 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !1614)
!1648 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !1615)
!1649 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1615)
!1650 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !1615)
!1651 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !1615)
!1652 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !1615)
!1653 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !1615)
!1654 = !DILocation(line: 60, column: 23, scope: !530, inlinedAt: !1615)
!1655 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !1615)
!1656 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !1615)
!1657 = !DILocation(line: 227, column: 7, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 227, column: 7)
!1659 = !DILocation(line: 228, column: 5, scope: !1658)
!1660 = !DILocation(line: 229, column: 3, scope: !1580)
!1661 = !DILocation(line: 230, column: 17, scope: !1594)
!1662 = !DILocation(line: 230, column: 5, scope: !1594)
!1663 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !1617)
!1664 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !1617)
!1665 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !1617)
!1666 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !1617)
!1667 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !1617)
!1668 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !1617)
!1669 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !1617)
!1670 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !1617)
!1671 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !1617)
!1672 = !DILocation(line: 107, column: 26, scope: !545, inlinedAt: !1617)
!1673 = !DILocation(line: 107, column: 5, scope: !545, inlinedAt: !1617)
!1674 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !1617)
!1675 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !1617)
!1676 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !1617)
!1677 = !DILocation(line: 234, column: 9, scope: !1593)
!1678 = !DILocation(line: 237, column: 13, scope: !1611)
!1679 = !DILocation(line: 237, column: 26, scope: !1611)
!1680 = !DILocation(line: 237, column: 13, scope: !1612)
!1681 = !DILocation(line: 238, column: 11, scope: !1610)
!1682 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !1609)
!1683 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !1609)
!1684 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !1609)
!1685 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !1609)
!1686 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !1609)
!1687 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !1609)
!1688 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !1609)
!1689 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !1609)
!1690 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !1609)
!1691 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !1609)
!1692 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !1609)
!1693 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !1609)
!1694 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !1608)
!1695 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !1608)
!1696 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !1608)
!1697 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !1608)
!1698 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !1608)
!1699 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !1608)
!1700 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !1608)
!1701 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !1608)
!1702 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !1608)
!1703 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !1608)
!1704 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !1608)
!1705 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !1608)
!1706 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !1609)
!1707 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1609)
!1708 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !1609)
!1709 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !1609)
!1710 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !1609)
!1711 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !1609)
!1712 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !1609)
!1713 = !DILocation(line: 60, column: 23, scope: !530, inlinedAt: !1609)
!1714 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !1609)
!1715 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !1609)
!1716 = !DILocation(line: 241, column: 15, scope: !1610)
!1717 = !DILocation(line: 242, column: 13, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 241, column: 15)
!1719 = !DILocation(line: 249, column: 13, scope: !1605)
!1720 = !DILocation(line: 249, column: 26, scope: !1605)
!1721 = !DILocation(line: 249, column: 13, scope: !1606)
!1722 = !DILocation(line: 250, column: 11, scope: !1604)
!1723 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !1603)
!1724 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !1603)
!1725 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !1603)
!1726 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !1603)
!1727 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !1603)
!1728 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !1603)
!1729 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !1603)
!1730 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !1603)
!1731 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !1603)
!1732 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !1603)
!1733 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !1603)
!1734 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !1603)
!1735 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !1602)
!1736 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !1602)
!1737 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !1602)
!1738 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !1602)
!1739 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !1602)
!1740 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !1602)
!1741 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !1602)
!1742 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !1602)
!1743 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !1602)
!1744 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !1602)
!1745 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !1602)
!1746 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !1602)
!1747 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !1603)
!1748 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1603)
!1749 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !1603)
!1750 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !1603)
!1751 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !1603)
!1752 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !1603)
!1753 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !1603)
!1754 = !DILocation(line: 60, column: 23, scope: !530, inlinedAt: !1603)
!1755 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !1603)
!1756 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !1603)
!1757 = !DILocation(line: 272, column: 7, scope: !1580)
!1758 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !1599)
!1759 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !1599)
!1760 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !1599)
!1761 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !1599)
!1762 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !1599)
!1763 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !1599)
!1764 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !1599)
!1765 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !1599)
!1766 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !1599)
!1767 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !1599)
!1768 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !1599)
!1769 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !1599)
!1770 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !1598)
!1771 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !1598)
!1772 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !1598)
!1773 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !1598)
!1774 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !1598)
!1775 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !1598)
!1776 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !1598)
!1777 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !1598)
!1778 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !1598)
!1779 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !1598)
!1780 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !1598)
!1781 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !1598)
!1782 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !1599)
!1783 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1599)
!1784 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !1599)
!1785 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !1599)
!1786 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !1599)
!1787 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !1599)
!1788 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !1599)
!1789 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !1599)
!1790 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !1599)
!1791 = !DILocation(line: 262, column: 9, scope: !1600)
!1792 = !DILocation(line: 263, column: 13, scope: !1600)
!1793 = distinct !{!1793, !1794, !1795}
!1794 = !DILocation(line: 229, column: 3, scope: !1596)
!1795 = !DILocation(line: 271, column: 3, scope: !1596)
!1796 = !DILocation(line: 263, column: 23, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 263, column: 13)
!1798 = !DILocation(line: 267, column: 13, scope: !1592)
!1799 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !1590)
!1800 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !1590)
!1801 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !1590)
!1802 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !1590)
!1803 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !1590)
!1804 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !1590)
!1805 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !1590)
!1806 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !1590)
!1807 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !1590)
!1808 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !1590)
!1809 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !1590)
!1810 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !1590)
!1811 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !1589)
!1812 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !1589)
!1813 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !1589)
!1814 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !1589)
!1815 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !1589)
!1816 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !1589)
!1817 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !1589)
!1818 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !1589)
!1819 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !1589)
!1820 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !1589)
!1821 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !1589)
!1822 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !1589)
!1823 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !1590)
!1824 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1590)
!1825 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !1590)
!1826 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !1590)
!1827 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !1590)
!1828 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !1590)
!1829 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !1590)
!1830 = !DILocation(line: 60, column: 23, scope: !530, inlinedAt: !1590)
!1831 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !1590)
!1832 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !1590)
!1833 = !DILocation(line: 267, column: 22, scope: !1591)
!1834 = !DILocation(line: 268, column: 14, scope: !1591)
!1835 = !DILocation(line: 273, column: 38, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 272, column: 7)
!1837 = !DILocation(line: 273, column: 65, scope: !1836)
!1838 = !DILocation(line: 273, column: 60, scope: !1836)
!1839 = !DILocation(line: 274, column: 38, scope: !1836)
!1840 = !DILocation(line: 274, column: 64, scope: !1836)
!1841 = !DILocation(line: 274, column: 63, scope: !1836)
!1842 = !DILocation(line: 274, column: 61, scope: !1836)
!1843 = !DILocation(line: 117, column: 36, scope: !635, inlinedAt: !1844)
!1844 = distinct !DILocation(line: 273, column: 19, scope: !1836)
!1845 = !DILocation(line: 117, column: 52, scope: !635, inlinedAt: !1844)
!1846 = !DILocation(line: 117, column: 64, scope: !635, inlinedAt: !1844)
!1847 = !DILocation(line: 118, column: 22, scope: !635, inlinedAt: !1844)
!1848 = !DILocation(line: 118, column: 14, scope: !635, inlinedAt: !1844)
!1849 = !DILocation(line: 119, column: 17, scope: !635, inlinedAt: !1844)
!1850 = !DILocation(line: 119, column: 12, scope: !635, inlinedAt: !1844)
!1851 = !DILocation(line: 120, column: 34, scope: !635, inlinedAt: !1844)
!1852 = !DILocation(line: 120, column: 38, scope: !635, inlinedAt: !1844)
!1853 = !DILocation(line: 120, column: 15, scope: !635, inlinedAt: !1844)
!1854 = !DILocation(line: 120, column: 11, scope: !635, inlinedAt: !1844)
!1855 = !DILocation(line: 121, column: 7, scope: !648, inlinedAt: !1844)
!1856 = !DILocation(line: 121, column: 7, scope: !635, inlinedAt: !1844)
!1857 = !DILocation(line: 122, column: 5, scope: !646, inlinedAt: !1844)
!1858 = !DILocation(line: 123, column: 5, scope: !670, inlinedAt: !1844)
!1859 = !DILocation(line: 123, column: 5, scope: !671, inlinedAt: !1844)
!1860 = !DILocation(line: 273, column: 14, scope: !1836)
!1861 = !DILocation(line: 273, column: 17, scope: !1836)
!1862 = !DILocation(line: 273, column: 5, scope: !1836)
!1863 = !DILocation(line: 275, column: 1, scope: !1580)
!1864 = distinct !DISubprogram(name: "read_numeral", scope: !3, file: !3, line: 194, type: !1865, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1867)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{null, !414, !751}
!1867 = !{!1868, !1869}
!1868 = !DILocalVariable(name: "ls", arg: 1, scope: !1864, file: !3, line: 194, type: !414)
!1869 = !DILocalVariable(name: "seminfo", arg: 2, scope: !1864, file: !3, line: 194, type: !751)
!1870 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 166, column: 3, scope: !776, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 200, column: 5, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 199, column: 7)
!1875 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 166, column: 3, scope: !776, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 199, column: 7, scope: !1874)
!1879 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 203, column: 3, scope: !1864)
!1882 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 202, column: 5, scope: !1864)
!1885 = !DILocation(line: 103, column: 8, scope: !514, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 197, column: 5, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 196, column: 6)
!1889 = !DILocation(line: 194, column: 37, scope: !1864)
!1890 = !DILocation(line: 194, column: 50, scope: !1864)
!1891 = !DILocation(line: 197, column: 5, scope: !1888)
!1892 = !DILocation(line: 196, column: 3, scope: !1864)
!1893 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !1887)
!1894 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !1887)
!1895 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !1887)
!1896 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !1887)
!1897 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !1887)
!1898 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !1887)
!1899 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !1887)
!1900 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !1887)
!1901 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !1887)
!1902 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !1887)
!1903 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !1887)
!1904 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !1887)
!1905 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !1886)
!1906 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !1886)
!1907 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !1886)
!1908 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !1886)
!1909 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !1886)
!1910 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !1886)
!1911 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !1886)
!1912 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !1886)
!1913 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !1886)
!1914 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !1886)
!1915 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !1886)
!1916 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !1886)
!1917 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !1887)
!1918 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1887)
!1919 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !1887)
!1920 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !1887)
!1921 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !1887)
!1922 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !1887)
!1923 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !1887)
!1924 = !DILocation(line: 60, column: 23, scope: !530, inlinedAt: !1887)
!1925 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !1887)
!1926 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !1887)
!1927 = !DILocation(line: 198, column: 12, scope: !1864)
!1928 = !DILocation(line: 198, column: 48, scope: !1864)
!1929 = !DILocation(line: 198, column: 33, scope: !1864)
!1930 = distinct !{!1930, !1892, !1931}
!1931 = !DILocation(line: 198, column: 54, scope: !1864)
!1932 = !DILocation(line: 163, column: 34, scope: !776, inlinedAt: !1878)
!1933 = !DILocation(line: 163, column: 50, scope: !776, inlinedAt: !1878)
!1934 = !DILocation(line: 164, column: 8, scope: !1277, inlinedAt: !1878)
!1935 = !DILocation(line: 164, column: 7, scope: !776, inlinedAt: !1878)
!1936 = !DILocation(line: 166, column: 3, scope: !776, inlinedAt: !1878)
!1937 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !1877)
!1938 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !1877)
!1939 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !1877)
!1940 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !1877)
!1941 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !1877)
!1942 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !1877)
!1943 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !1877)
!1944 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !1877)
!1945 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !1877)
!1946 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !1877)
!1947 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !1877)
!1948 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !1877)
!1949 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !1876)
!1950 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !1876)
!1951 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !1876)
!1952 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !1876)
!1953 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !1876)
!1954 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !1876)
!1955 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !1876)
!1956 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !1876)
!1957 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !1876)
!1958 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !1876)
!1959 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !1876)
!1960 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !1876)
!1961 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !1877)
!1962 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1877)
!1963 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !1877)
!1964 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !1877)
!1965 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !1877)
!1966 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !1877)
!1967 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !1877)
!1968 = !DILocation(line: 60, column: 23, scope: !530, inlinedAt: !1877)
!1969 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !1877)
!1970 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !1877)
!1971 = !DILocation(line: 163, column: 34, scope: !776, inlinedAt: !1873)
!1972 = !DILocation(line: 163, column: 50, scope: !776, inlinedAt: !1873)
!1973 = !DILocation(line: 164, column: 8, scope: !1277, inlinedAt: !1873)
!1974 = !DILocation(line: 164, column: 7, scope: !776, inlinedAt: !1873)
!1975 = !DILocation(line: 166, column: 3, scope: !776, inlinedAt: !1873)
!1976 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !1872)
!1977 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !1872)
!1978 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !1872)
!1979 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !1872)
!1980 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !1872)
!1981 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !1872)
!1982 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !1872)
!1983 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !1872)
!1984 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !1872)
!1985 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !1872)
!1986 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !1872)
!1987 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !1872)
!1988 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !1871)
!1989 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !1871)
!1990 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !1871)
!1991 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !1871)
!1992 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !1871)
!1993 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !1871)
!1994 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !1871)
!1995 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !1871)
!1996 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !1871)
!1997 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !1871)
!1998 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !1871)
!1999 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !1871)
!2000 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !1872)
!2001 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1872)
!2002 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !1872)
!2003 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !1872)
!2004 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !1872)
!2005 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !1872)
!2006 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !1872)
!2007 = !DILocation(line: 60, column: 23, scope: !530, inlinedAt: !1872)
!2008 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !1872)
!2009 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !1872)
!2010 = !DILocation(line: 167, column: 3, scope: !776, inlinedAt: !1873)
!2011 = !DILocation(line: 201, column: 10, scope: !1864)
!2012 = !DILocation(line: 201, column: 46, scope: !1864)
!2013 = !DILocation(line: 201, column: 31, scope: !1864)
!2014 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !1884)
!2015 = !DILocation(line: 51, column: 29, scope: !530, inlinedAt: !1881)
!2016 = !DILocation(line: 52, column: 20, scope: !530, inlinedAt: !1884)
!2017 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !1884)
!2018 = !DILocation(line: 52, column: 12, scope: !530, inlinedAt: !1881)
!2019 = !DILocation(line: 53, column: 10, scope: !529, inlinedAt: !1884)
!2020 = !DILocation(line: 53, column: 12, scope: !529, inlinedAt: !1884)
!2021 = !DILocation(line: 53, column: 21, scope: !529, inlinedAt: !1884)
!2022 = !DILocation(line: 53, column: 16, scope: !529, inlinedAt: !1884)
!2023 = !DILocation(line: 201, column: 3, scope: !1864)
!2024 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !1884)
!2025 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !1884)
!2026 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !1884)
!2027 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !1884)
!2028 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !1884)
!2029 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !1883)
!2030 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !1883)
!2031 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !1883)
!2032 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !1883)
!2033 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !1883)
!2034 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !1883)
!2035 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !1883)
!2036 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !1883)
!2037 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !1883)
!2038 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !1883)
!2039 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !1883)
!2040 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !1883)
!2041 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !1884)
!2042 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1884)
!2043 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !1884)
!2044 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !1884)
!2045 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !1884)
!2046 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !1884)
!2047 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !1884)
!2048 = !DILocation(line: 60, column: 23, scope: !530, inlinedAt: !1884)
!2049 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !1884)
!2050 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !1884)
!2051 = !DILocation(line: 202, column: 5, scope: !1864)
!2052 = distinct !{!2052, !2023, !2051}
!2053 = !DILocation(line: 51, column: 37, scope: !530, inlinedAt: !1881)
!2054 = !DILocation(line: 53, column: 7, scope: !530, inlinedAt: !1881)
!2055 = !DILocation(line: 60, column: 6, scope: !530, inlinedAt: !1881)
!2056 = !DILocation(line: 55, column: 21, scope: !527, inlinedAt: !1881)
!2057 = !DILocation(line: 55, column: 9, scope: !528, inlinedAt: !1881)
!2058 = !DILocation(line: 102, column: 31, scope: !514, inlinedAt: !1880)
!2059 = !DILocation(line: 102, column: 47, scope: !514, inlinedAt: !1880)
!2060 = !DILocation(line: 102, column: 56, scope: !514, inlinedAt: !1880)
!2061 = !DILocation(line: 103, column: 3, scope: !514, inlinedAt: !1880)
!2062 = !DILocation(line: 104, column: 22, scope: !514, inlinedAt: !1880)
!2063 = !DILocation(line: 104, column: 3, scope: !514, inlinedAt: !1880)
!2064 = !DILocation(line: 105, column: 30, scope: !514, inlinedAt: !1880)
!2065 = !DILocation(line: 105, column: 56, scope: !514, inlinedAt: !1880)
!2066 = !DILocation(line: 105, column: 9, scope: !514, inlinedAt: !1880)
!2067 = !DILocation(line: 108, column: 18, scope: !514, inlinedAt: !1880)
!2068 = !DILocation(line: 108, column: 3, scope: !514, inlinedAt: !1880)
!2069 = !DILocation(line: 109, column: 1, scope: !514, inlinedAt: !1880)
!2070 = !DILocation(line: 57, column: 18, scope: !528, inlinedAt: !1881)
!2071 = !DILocation(line: 56, column: 7, scope: !527, inlinedAt: !1881)
!2072 = !DILocation(line: 57, column: 27, scope: !528, inlinedAt: !1881)
!2073 = !DILocation(line: 54, column: 12, scope: !528, inlinedAt: !1881)
!2074 = !DILocation(line: 58, column: 5, scope: !528, inlinedAt: !1881)
!2075 = !DILocation(line: 60, column: 17, scope: !530, inlinedAt: !1881)
!2076 = !DILocation(line: 59, column: 3, scope: !528, inlinedAt: !1881)
!2077 = !DILocation(line: 60, column: 3, scope: !530, inlinedAt: !1881)
!2078 = !DILocation(line: 60, column: 21, scope: !530, inlinedAt: !1881)
!2079 = !DILocation(line: 204, column: 28, scope: !1864)
!2080 = !DILocalVariable(name: "ls", arg: 1, scope: !2081, file: !3, line: 171, type: !414)
!2081 = distinct !DISubprogram(name: "buffreplace", scope: !3, file: !3, line: 171, type: !2082, isLocal: true, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2084)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{null, !414, !47, !47}
!2084 = !{!2080, !2085, !2086, !2087, !2088}
!2085 = !DILocalVariable(name: "from", arg: 2, scope: !2081, file: !3, line: 171, type: !47)
!2086 = !DILocalVariable(name: "to", arg: 3, scope: !2081, file: !3, line: 171, type: !47)
!2087 = !DILocalVariable(name: "n", scope: !2081, file: !3, line: 172, type: !49)
!2088 = !DILocalVariable(name: "p", scope: !2081, file: !3, line: 173, type: !48)
!2089 = !DILocation(line: 171, column: 36, scope: !2081, inlinedAt: !2090)
!2090 = distinct !DILocation(line: 204, column: 3, scope: !1864)
!2091 = !DILocation(line: 171, column: 45, scope: !2081, inlinedAt: !2090)
!2092 = !DILocation(line: 171, column: 56, scope: !2081, inlinedAt: !2090)
!2093 = !DILocation(line: 172, column: 14, scope: !2081, inlinedAt: !2090)
!2094 = !DILocation(line: 172, column: 10, scope: !2081, inlinedAt: !2090)
!2095 = !DILocation(line: 173, column: 13, scope: !2081, inlinedAt: !2090)
!2096 = !DILocation(line: 173, column: 9, scope: !2081, inlinedAt: !2090)
!2097 = !DILocation(line: 174, column: 3, scope: !2081, inlinedAt: !2090)
!2098 = !DILocation(line: 174, column: 11, scope: !2081, inlinedAt: !2090)
!2099 = !DILocation(line: 175, column: 9, scope: !2100, inlinedAt: !2090)
!2100 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 175, column: 9)
!2101 = !DILocation(line: 175, column: 14, scope: !2100, inlinedAt: !2090)
!2102 = !DILocation(line: 175, column: 28, scope: !2100, inlinedAt: !2090)
!2103 = distinct !{!2103, !2104, !2105, !2106}
!2104 = !DILocation(line: 174, column: 3, scope: !2081)
!2105 = !DILocation(line: 175, column: 30, scope: !2081)
!2106 = !{!"llvm.loop.isvectorized", i32 1}
!2107 = !DILocation(line: 175, column: 9, scope: !2081, inlinedAt: !2090)
!2108 = !DILocation(line: 175, column: 23, scope: !2100, inlinedAt: !2090)
!2109 = distinct !{!2109, !2104, !2105, !2110, !2106}
!2110 = !{!"llvm.loop.unroll.runtime.disable"}
!2111 = !DILocation(line: 205, column: 19, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 205, column: 7)
!2113 = !DILocation(line: 205, column: 52, scope: !2112)
!2114 = !DILocation(line: 205, column: 8, scope: !2112)
!2115 = !DILocation(line: 205, column: 7, scope: !1864)
!2116 = !DILocalVariable(name: "ls", arg: 1, scope: !2117, file: !3, line: 179, type: !414)
!2117 = distinct !DISubprogram(name: "trydecpoint", scope: !3, file: !3, line: 179, type: !1865, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2118)
!2118 = !{!2116, !2119, !2120, !2149}
!2119 = !DILocalVariable(name: "seminfo", arg: 2, scope: !2117, file: !3, line: 179, type: !751)
!2120 = !DILocalVariable(name: "cv", scope: !2117, file: !3, line: 181, type: !2121)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !2123, line: 42, size: 768, elements: !2124)
!2123 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!2124 = !{!2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !2122, file: !2123, line: 44, baseType: !48, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !2122, file: !2123, line: 45, baseType: !48, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !2122, file: !2123, line: 46, baseType: !48, size: 64, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !2122, file: !2123, line: 47, baseType: !48, size: 64, offset: 192)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !2122, file: !2123, line: 48, baseType: !48, size: 64, offset: 256)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !2122, file: !2123, line: 49, baseType: !48, size: 64, offset: 320)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !2122, file: !2123, line: 50, baseType: !48, size: 64, offset: 384)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !2122, file: !2123, line: 51, baseType: !48, size: 64, offset: 448)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !2122, file: !2123, line: 52, baseType: !48, size: 64, offset: 512)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !2122, file: !2123, line: 53, baseType: !48, size: 64, offset: 576)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !2122, file: !2123, line: 54, baseType: !47, size: 8, offset: 640)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !2122, file: !2123, line: 55, baseType: !47, size: 8, offset: 648)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !2122, file: !2123, line: 56, baseType: !47, size: 8, offset: 656)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !2122, file: !2123, line: 57, baseType: !47, size: 8, offset: 664)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !2122, file: !2123, line: 58, baseType: !47, size: 8, offset: 672)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !2122, file: !2123, line: 59, baseType: !47, size: 8, offset: 680)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !2122, file: !2123, line: 60, baseType: !47, size: 8, offset: 688)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !2122, file: !2123, line: 61, baseType: !47, size: 8, offset: 696)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !2122, file: !2123, line: 62, baseType: !47, size: 8, offset: 704)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !2122, file: !2123, line: 63, baseType: !47, size: 8, offset: 712)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !2122, file: !2123, line: 64, baseType: !47, size: 8, offset: 720)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !2122, file: !2123, line: 65, baseType: !47, size: 8, offset: 728)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !2122, file: !2123, line: 66, baseType: !47, size: 8, offset: 736)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !2122, file: !2123, line: 67, baseType: !47, size: 8, offset: 744)
!2149 = !DILocalVariable(name: "old", scope: !2117, file: !3, line: 182, type: !47)
!2150 = !DILocation(line: 179, column: 36, scope: !2117, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 206, column: 5, scope: !2112)
!2152 = !DILocation(line: 179, column: 49, scope: !2117, inlinedAt: !2151)
!2153 = !DILocation(line: 181, column: 22, scope: !2117, inlinedAt: !2151)
!2154 = !DILocation(line: 181, column: 17, scope: !2117, inlinedAt: !2151)
!2155 = !DILocation(line: 182, column: 18, scope: !2117, inlinedAt: !2151)
!2156 = !DILocation(line: 182, column: 8, scope: !2117, inlinedAt: !2151)
!2157 = !DILocation(line: 183, column: 19, scope: !2117, inlinedAt: !2151)
!2158 = !DILocation(line: 183, column: 28, scope: !2117, inlinedAt: !2151)
!2159 = !{!2160, !398, i64 0}
!2160 = !{!"lconv", !398, i64 0, !398, i64 8, !398, i64 16, !398, i64 24, !398, i64 32, !398, i64 40, !398, i64 48, !398, i64 56, !398, i64 64, !398, i64 72, !399, i64 80, !399, i64 81, !399, i64 82, !399, i64 83, !399, i64 84, !399, i64 85, !399, i64 86, !399, i64 87, !399, i64 88, !399, i64 89, !399, i64 90, !399, i64 91, !399, i64 92, !399, i64 93}
!2161 = !DILocation(line: 183, column: 24, scope: !2117, inlinedAt: !2151)
!2162 = !DILocation(line: 183, column: 16, scope: !2117, inlinedAt: !2151)
!2163 = !DILocation(line: 171, column: 36, scope: !2081, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 184, column: 3, scope: !2117, inlinedAt: !2151)
!2165 = !DILocation(line: 171, column: 45, scope: !2081, inlinedAt: !2164)
!2166 = !DILocation(line: 171, column: 56, scope: !2081, inlinedAt: !2164)
!2167 = !DILocation(line: 172, column: 14, scope: !2081, inlinedAt: !2164)
!2168 = !DILocation(line: 172, column: 10, scope: !2081, inlinedAt: !2164)
!2169 = !DILocation(line: 173, column: 13, scope: !2081, inlinedAt: !2164)
!2170 = !DILocation(line: 173, column: 9, scope: !2081, inlinedAt: !2164)
!2171 = !DILocation(line: 174, column: 3, scope: !2081, inlinedAt: !2164)
!2172 = !DILocation(line: 174, column: 11, scope: !2081, inlinedAt: !2164)
!2173 = !DILocation(line: 175, column: 9, scope: !2100, inlinedAt: !2164)
!2174 = !DILocation(line: 175, column: 14, scope: !2100, inlinedAt: !2164)
!2175 = !DILocation(line: 175, column: 28, scope: !2100, inlinedAt: !2164)
!2176 = distinct !{!2176, !2104, !2105, !2106}
!2177 = !DILocation(line: 175, column: 9, scope: !2081, inlinedAt: !2164)
!2178 = !DILocation(line: 175, column: 23, scope: !2100, inlinedAt: !2164)
!2179 = distinct !{!2179, !2104, !2105, !2110, !2106}
!2180 = !DILocation(line: 185, column: 19, scope: !2181, inlinedAt: !2151)
!2181 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 185, column: 7)
!2182 = !DILocation(line: 185, column: 8, scope: !2181, inlinedAt: !2151)
!2183 = !DILocation(line: 185, column: 7, scope: !2117, inlinedAt: !2151)
!2184 = !DILocation(line: 187, column: 25, scope: !2185, inlinedAt: !2151)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 185, column: 56)
!2186 = !DILocation(line: 171, column: 36, scope: !2081, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 187, column: 5, scope: !2185, inlinedAt: !2151)
!2188 = !DILocation(line: 171, column: 45, scope: !2081, inlinedAt: !2187)
!2189 = !DILocation(line: 171, column: 56, scope: !2081, inlinedAt: !2187)
!2190 = !DILocation(line: 172, column: 14, scope: !2081, inlinedAt: !2187)
!2191 = !DILocation(line: 172, column: 10, scope: !2081, inlinedAt: !2187)
!2192 = !DILocation(line: 173, column: 13, scope: !2081, inlinedAt: !2187)
!2193 = !DILocation(line: 173, column: 9, scope: !2081, inlinedAt: !2187)
!2194 = !DILocation(line: 174, column: 3, scope: !2081, inlinedAt: !2187)
!2195 = !DILocation(line: 174, column: 11, scope: !2081, inlinedAt: !2187)
!2196 = !DILocation(line: 175, column: 9, scope: !2100, inlinedAt: !2187)
!2197 = !DILocation(line: 175, column: 14, scope: !2100, inlinedAt: !2187)
!2198 = !DILocation(line: 175, column: 28, scope: !2100, inlinedAt: !2187)
!2199 = distinct !{!2199, !2104, !2105, !2106}
!2200 = !DILocation(line: 175, column: 9, scope: !2081, inlinedAt: !2187)
!2201 = !DILocation(line: 175, column: 23, scope: !2100, inlinedAt: !2187)
!2202 = distinct !{!2202, !2104, !2105, !2110, !2106}
!2203 = !DILocation(line: 188, column: 5, scope: !2185, inlinedAt: !2151)
!2204 = !DILocation(line: 189, column: 3, scope: !2185, inlinedAt: !2151)
!2205 = !DILocation(line: 207, column: 1, scope: !1864)
