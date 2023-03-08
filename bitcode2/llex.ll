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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define hidden void @luaX_init(%struct.lua_State*) local_unnamed_addr #0 !dbg !63 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  br label %2, !dbg !396

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %11, %2 ]
  %4 = getelementptr inbounds [32 x i8*], [32 x i8*]* @luaX_tokens, i64 0, i64 %3, !dbg !397
  %5 = load i8*, i8** %4, align 8, !dbg !397, !tbaa !398
  %6 = tail call i64 @strlen(i8* %5) #4, !dbg !397
  %7 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %0, i8* %5, i64 %6) #4, !dbg !397
  %8 = getelementptr inbounds %union.TString, %union.TString* %7, i64 0, i32 0, i32 2, !dbg !403
  %9 = load i8, i8* %8, align 1, !dbg !403, !tbaa !404
  %10 = or i8 %9, 32, !dbg !403
  store i8 %10, i8* %8, align 1, !dbg !403, !tbaa !404
  %11 = add nuw nsw i64 %3, 1, !dbg !405
  %12 = getelementptr inbounds %union.TString, %union.TString* %7, i64 0, i32 0, i32 3, !dbg !406
  %13 = trunc i64 %11 to i8, !dbg !407
  store i8 %13, i8* %12, align 2, !dbg !407, !tbaa !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  %14 = icmp eq i64 %11, 21, !dbg !409
  br i1 %14, label %15, label %2, !dbg !396, !llvm.loop !410

; <label>:15:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  ret void, !dbg !412
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
define hidden i8* @luaX_token2str(%struct.LexState* nocapture readonly, i32) local_unnamed_addr #0 !dbg !413 {
  %3 = icmp slt i32 %1, 257, !dbg !498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  br i1 %3, label %4, label %16, !dbg !500

; <label>:4:                                      ; preds = %2
  %5 = tail call i8* @__locale_ctype_ptr() #4, !dbg !501
  %6 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !501
  %7 = sext i32 %1 to i64, !dbg !501
  %8 = getelementptr inbounds i8, i8* %6, i64 %7, !dbg !501
  %9 = load i8, i8* %8, align 1, !dbg !501, !tbaa !404
  %10 = and i8 %9, 32, !dbg !501
  %11 = icmp eq i8 %10, 0, !dbg !501
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !503
  %13 = load %struct.lua_State*, %struct.lua_State** %12, align 8, !dbg !503, !tbaa !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  %14 = select i1 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), !dbg !508
  %15 = tail call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %13, i8* %14, i32 %1) #4, !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  br label %21, !dbg !509

; <label>:16:                                     ; preds = %2
  %17 = add nsw i32 %1, -257, !dbg !510
  %18 = sext i32 %17 to i64, !dbg !511
  %19 = getelementptr inbounds [32 x i8*], [32 x i8*]* @luaX_tokens, i64 0, i64 %18, !dbg !511
  %20 = load i8*, i8** %19, align 8, !dbg !511, !tbaa !398
  br label %21, !dbg !512

; <label>:21:                                     ; preds = %16, %4
  %22 = phi i8* [ %15, %4 ], [ %20, %16 ], !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  ret i8* %22, !dbg !514
}

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden void @luaX_lexerror(%struct.LexState* nocapture readonly, i8*, i32) local_unnamed_addr #0 !dbg !515 {
  %4 = alloca [80 x i8], align 16
  %5 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0, !dbg !529
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %5) #5, !dbg !529
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9, !dbg !531
  %7 = load %union.TString*, %union.TString** %6, align 8, !dbg !531, !tbaa !532
  %8 = getelementptr inbounds %union.TString, %union.TString* %7, i64 1, !dbg !531
  %9 = bitcast %union.TString* %8 to i8*, !dbg !531
  call void @luaO_chunkid(i8* nonnull %5, i8* nonnull %9, i64 80) #4, !dbg !533
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !534
  %11 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !dbg !534, !tbaa !504
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !535
  %13 = load i32, i32* %12, align 4, !dbg !535, !tbaa !536
  %14 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %5, i32 %13, i8* %1) #4, !dbg !537
  %15 = icmp eq i32 %2, 0, !dbg !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  br i1 %15, label %48, label %16, !dbg !540

; <label>:16:                                     ; preds = %3
  %17 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !dbg !541, !tbaa !504
  %18 = add i32 %2, -284, !dbg !549
  %19 = icmp ult i32 %18, 3, !dbg !549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  br i1 %19, label %20, label %25, !dbg !549

; <label>:20:                                     ; preds = %16
  call fastcc void @save(%struct.LexState* nonnull %0, i32 0) #4, !dbg !550
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8, !dbg !552
  %22 = load %struct.Mbuffer*, %struct.Mbuffer** %21, align 8, !dbg !552, !tbaa !553
  %23 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %22, i64 0, i32 0, !dbg !552
  %24 = load i8*, i8** %23, align 8, !dbg !552, !tbaa !554
  br label %45, !dbg !557

; <label>:25:                                     ; preds = %16
  %26 = icmp slt i32 %2, 257, !dbg !561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  br i1 %26, label %27, label %38, !dbg !562

; <label>:27:                                     ; preds = %25
  %28 = call i8* @__locale_ctype_ptr() #4, !dbg !563
  %29 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !563
  %30 = sext i32 %2 to i64, !dbg !563
  %31 = getelementptr inbounds i8, i8* %29, i64 %30, !dbg !563
  %32 = load i8, i8* %31, align 1, !dbg !563, !tbaa !404
  %33 = and i8 %32, 32, !dbg !563
  %34 = icmp eq i8 %33, 0, !dbg !563
  %35 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !dbg !564, !tbaa !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  %36 = select i1 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), !dbg !565
  %37 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %35, i8* %36, i32 %2) #4, !dbg !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  br label %43, !dbg !567

; <label>:38:                                     ; preds = %25
  %39 = add nsw i32 %2, -257, !dbg !568
  %40 = sext i32 %39 to i64, !dbg !569
  %41 = getelementptr inbounds [32 x i8*], [32 x i8*]* @luaX_tokens, i64 0, i64 %40, !dbg !569
  %42 = load i8*, i8** %41, align 8, !dbg !569, !tbaa !398
  br label %43, !dbg !570

; <label>:43:                                     ; preds = %38, %27
  %44 = phi i8* [ %37, %27 ], [ %42, %38 ], !dbg !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  br label %45, !dbg !573

; <label>:45:                                     ; preds = %20, %43
  %46 = phi i8* [ %24, %20 ], [ %44, %43 ], !dbg !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  %47 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* %14, i8* %46) #4, !dbg !576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  br label %48, !dbg !576

; <label>:48:                                     ; preds = %3, %45
  %49 = load %struct.lua_State*, %struct.lua_State** %10, align 8, !dbg !577, !tbaa !504
  call void @luaD_throw(%struct.lua_State* %49, i32 3) #4, !dbg !578
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %5) #5, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  ret void, !dbg !579
}

; Function Attrs: noredzone
declare hidden void @luaO_chunkid(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaD_throw(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden void @luaX_syntaxerror(%struct.LexState* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !580 {
  %3 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !588
  %4 = load i32, i32* %3, align 8, !dbg !588, !tbaa !589
  tail call void @luaX_lexerror(%struct.LexState* %0, i8* %1, i32 %4) #6, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  ret void, !dbg !591
}

; Function Attrs: noredzone nounwind
define hidden %union.TString* @luaX_newstring(%struct.LexState* nocapture readonly, i8*, i64) local_unnamed_addr #0 !dbg !592 {
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !609
  %5 = load %struct.lua_State*, %struct.lua_State** %4, align 8, !dbg !609, !tbaa !504
  %6 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %5, i8* %1, i64 %2) #4, !dbg !611
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !613
  %8 = load %struct.FuncState*, %struct.FuncState** %7, align 8, !dbg !613, !tbaa !614
  %9 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %8, i64 0, i32 1, !dbg !615
  %10 = load %struct.Table*, %struct.Table** %9, align 8, !dbg !615, !tbaa !616
  %11 = tail call %struct.lua_TValue* @luaH_setstr(%struct.lua_State* %5, %struct.Table* %10, %union.TString* %6) #4, !dbg !619
  %12 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %11, i64 0, i32 1, !dbg !621
  %13 = load i32, i32* %12, align 8, !dbg !621, !tbaa !622
  %14 = icmp eq i32 %13, 0, !dbg !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  br i1 %14, label %15, label %25, !dbg !624

; <label>:15:                                     ; preds = %3
  %16 = bitcast %struct.lua_TValue* %11 to i32*, !dbg !625
  store i32 1, i32* %16, align 8, !dbg !625, !tbaa !404
  store i32 1, i32* %12, align 8, !dbg !625, !tbaa !622
  %17 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %5, i64 0, i32 6, !dbg !626
  %18 = load %struct.global_State*, %struct.global_State** %17, align 8, !dbg !626, !tbaa !629
  %19 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 14, !dbg !626
  %20 = load i64, i64* %19, align 8, !dbg !626, !tbaa !631
  %21 = getelementptr inbounds %struct.global_State, %struct.global_State* %18, i64 0, i32 13, !dbg !626
  %22 = load i64, i64* %21, align 8, !dbg !626, !tbaa !635
  %23 = icmp ult i64 %20, %22, !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br i1 %23, label %25, label %24, !dbg !636

; <label>:24:                                     ; preds = %15
  tail call void @luaC_step(%struct.lua_State* nonnull %5) #4, !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  br label %25, !dbg !626

; <label>:25:                                     ; preds = %15, %24, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  ret %union.TString* %6, !dbg !637
}

; Function Attrs: noredzone
declare hidden %struct.lua_TValue* @luaH_setstr(%struct.lua_State*, %struct.Table*, %union.TString*) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @luaC_step(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden void @luaX_setinput(%struct.lua_State*, %struct.LexState* nocapture, %struct.Zio*, %union.TString*) local_unnamed_addr #0 !dbg !638 {
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 10, !dbg !650
  store i8 46, i8* %5, align 8, !dbg !651, !tbaa !652
  %6 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 6, !dbg !653
  store %struct.lua_State* %0, %struct.lua_State** %6, align 8, !dbg !654, !tbaa !504
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 4, i32 0, !dbg !655
  store i32 287, i32* %7, align 8, !dbg !656, !tbaa !657
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 7, !dbg !658
  store %struct.Zio* %2, %struct.Zio** %8, align 8, !dbg !659, !tbaa !660
  %9 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 5, !dbg !661
  store %struct.FuncState* null, %struct.FuncState** %9, align 8, !dbg !662, !tbaa !614
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 1, !dbg !663
  store i32 1, i32* %10, align 4, !dbg !664, !tbaa !536
  %11 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 2, !dbg !665
  store i32 1, i32* %11, align 8, !dbg !666, !tbaa !667
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 9, !dbg !668
  store %union.TString* %3, %union.TString** %12, align 8, !dbg !669, !tbaa !532
  %13 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 8, !dbg !670
  %14 = load %struct.Mbuffer*, %struct.Mbuffer** %13, align 8, !dbg !670, !tbaa !553
  %15 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %14, i64 0, i32 0, !dbg !670
  %16 = load i8*, i8** %15, align 8, !dbg !670, !tbaa !554
  %17 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %14, i64 0, i32 2, !dbg !670
  %18 = load i64, i64* %17, align 8, !dbg !670, !tbaa !671
  %19 = tail call i8* @luaM_realloc_(%struct.lua_State* %0, i8* %16, i64 %18, i64 32) #4, !dbg !670
  %20 = load %struct.Mbuffer*, %struct.Mbuffer** %13, align 8, !dbg !670, !tbaa !553
  %21 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %20, i64 0, i32 0, !dbg !670
  store i8* %19, i8** %21, align 8, !dbg !670, !tbaa !554
  %22 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %20, i64 0, i32 2, !dbg !670
  store i64 32, i64* %22, align 8, !dbg !670, !tbaa !671
  %23 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !672, !tbaa !660
  %24 = getelementptr inbounds %struct.Zio, %struct.Zio* %23, i64 0, i32 0, !dbg !672
  %25 = load i64, i64* %24, align 8, !dbg !672, !tbaa !673
  %26 = add i64 %25, -1, !dbg !672
  store i64 %26, i64* %24, align 8, !dbg !672, !tbaa !673
  %27 = icmp eq i64 %25, 0, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  br i1 %27, label %34, label %28, !dbg !672

; <label>:28:                                     ; preds = %4
  %29 = getelementptr inbounds %struct.Zio, %struct.Zio* %23, i64 0, i32 1, !dbg !672
  %30 = load i8*, i8** %29, align 8, !dbg !672, !tbaa !675
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !672
  store i8* %31, i8** %29, align 8, !dbg !672, !tbaa !675
  %32 = load i8, i8* %30, align 1, !dbg !672, !tbaa !404
  %33 = zext i8 %32 to i32, !dbg !672
  br label %36, !dbg !672

; <label>:34:                                     ; preds = %4
  %35 = tail call i32 @luaZ_fill(%struct.Zio* %23) #4, !dbg !672
  br label %36, !dbg !672

; <label>:36:                                     ; preds = %34, %28
  %37 = phi i32 [ %33, %28 ], [ %35, %34 ], !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  %38 = getelementptr inbounds %struct.LexState, %struct.LexState* %1, i64 0, i32 0, !dbg !672
  store i32 %37, i32* %38, align 8, !dbg !672, !tbaa !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  ret void, !dbg !677
}

; Function Attrs: noredzone
declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i32 @luaZ_fill(%struct.Zio*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden void @luaX_next(%struct.LexState*) local_unnamed_addr #0 !dbg !678 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !684
  %3 = load i32, i32* %2, align 4, !dbg !684, !tbaa !536
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 2, !dbg !685
  store i32 %3, i32* %4, align 8, !dbg !686, !tbaa !667
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4, !dbg !687
  %6 = getelementptr inbounds %struct.Token, %struct.Token* %5, i64 0, i32 0, !dbg !689
  %7 = load i32, i32* %6, align 8, !dbg !689, !tbaa !657
  %8 = icmp eq i32 %7, 287, !dbg !690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  br i1 %8, label %13, label %9, !dbg !691

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, !dbg !692
  %11 = bitcast %struct.Token* %10 to i8*, !dbg !694
  %12 = bitcast %struct.Token* %5 to i8*, !dbg !694
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %11, i8* nonnull align 8 %12, i64 16, i1 false), !dbg !694, !tbaa.struct !695
  store i32 287, i32* %6, align 8, !dbg !699, !tbaa !657
  br label %17, !dbg !700

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 1, !dbg !701
  %15 = tail call fastcc i32 @llex(%struct.LexState* nonnull %0, %union.SemInfo* nonnull %14) #6, !dbg !702
  %16 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !703
  store i32 %15, i32* %16, align 8, !dbg !704, !tbaa !589
  br label %17

; <label>:17:                                     ; preds = %13, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !705
  ret void, !dbg !705
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone nounwind
define internal fastcc i32 @llex(%struct.LexState*, %union.SemInfo*) unnamed_addr #0 !dbg !706 {
  %3 = alloca [80 x i8], align 16
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8, !dbg !762
  %5 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !dbg !762, !tbaa !553
  %6 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %5, i64 0, i32 1, !dbg !762
  store i64 0, i64* %6, align 8, !dbg !762, !tbaa !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !764
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %8 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  br label %9, !dbg !764

; <label>:9:                                      ; preds = %12, %2
  %10 = load i32, i32* %7, align 8, !dbg !765, !tbaa !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  switch i32 %10, label %534 [
    i32 10, label %11
    i32 13, label %11
    i32 45, label %13
    i32 91, label %82
    i32 61, label %107
    i32 60, label %140
    i32 62, label %173
    i32 126, label %206
    i32 34, label %239
    i32 39, label %239
    i32 46, label %469
    i32 -1, label %663
  ], !dbg !766

; <label>:11:                                     ; preds = %9, %9
  tail call fastcc void @inclinenumber(%struct.LexState* nonnull %0) #6, !dbg !767
  br label %12, !dbg !769

; <label>:12:                                     ; preds = %63, %79, %60, %57, %11, %557, %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %9, !dbg !765, !llvm.loop !770

; <label>:13:                                     ; preds = %9
  %14 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !773, !tbaa !660
  %15 = getelementptr inbounds %struct.Zio, %struct.Zio* %14, i64 0, i32 0, !dbg !773
  %16 = load i64, i64* %15, align 8, !dbg !773, !tbaa !673
  %17 = add i64 %16, -1, !dbg !773
  store i64 %17, i64* %15, align 8, !dbg !773, !tbaa !673
  %18 = icmp eq i64 %16, 0, !dbg !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  br i1 %18, label %25, label %19, !dbg !773

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds %struct.Zio, %struct.Zio* %14, i64 0, i32 1, !dbg !773
  %21 = load i8*, i8** %20, align 8, !dbg !773, !tbaa !675
  %22 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !773
  store i8* %22, i8** %20, align 8, !dbg !773, !tbaa !675
  %23 = load i8, i8* %21, align 1, !dbg !773, !tbaa !404
  %24 = zext i8 %23 to i32, !dbg !773
  br label %27, !dbg !773

; <label>:25:                                     ; preds = %13
  %26 = tail call i32 @luaZ_fill(%struct.Zio* %14) #4, !dbg !773
  br label %27, !dbg !773

; <label>:27:                                     ; preds = %25, %19
  %28 = phi i32 [ %24, %19 ], [ %26, %25 ], !dbg !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !773
  store i32 %28, i32* %7, align 8, !dbg !773, !tbaa !676
  %29 = icmp eq i32 %28, 45, !dbg !774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  br i1 %29, label %30, label %663, !dbg !776

; <label>:30:                                     ; preds = %27
  %31 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !777, !tbaa !660
  %32 = getelementptr inbounds %struct.Zio, %struct.Zio* %31, i64 0, i32 0, !dbg !777
  %33 = load i64, i64* %32, align 8, !dbg !777, !tbaa !673
  %34 = add i64 %33, -1, !dbg !777
  store i64 %34, i64* %32, align 8, !dbg !777, !tbaa !673
  %35 = icmp eq i64 %33, 0, !dbg !777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !777
  br i1 %35, label %42, label %36, !dbg !777

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds %struct.Zio, %struct.Zio* %31, i64 0, i32 1, !dbg !777
  %38 = load i8*, i8** %37, align 8, !dbg !777, !tbaa !675
  %39 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !777
  store i8* %39, i8** %37, align 8, !dbg !777, !tbaa !675
  %40 = load i8, i8* %38, align 1, !dbg !777, !tbaa !404
  %41 = zext i8 %40 to i32, !dbg !777
  br label %44, !dbg !777

; <label>:42:                                     ; preds = %30
  %43 = tail call i32 @luaZ_fill(%struct.Zio* %31) #4, !dbg !777
  br label %44, !dbg !777

; <label>:44:                                     ; preds = %42, %36
  %45 = phi i32 [ %41, %36 ], [ %43, %42 ], !dbg !777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !777
  store i32 %45, i32* %7, align 8, !dbg !777, !tbaa !676
  %46 = icmp eq i32 %45, 91, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !779
  br i1 %46, label %47, label %57, !dbg !779

; <label>:47:                                     ; preds = %44
  %48 = tail call fastcc i32 @skip_sep(%struct.LexState* nonnull %0) #6, !dbg !780
  %49 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !dbg !782, !tbaa !553
  %50 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %49, i64 0, i32 1, !dbg !782
  store i64 0, i64* %50, align 8, !dbg !782, !tbaa !763
  %51 = icmp sgt i32 %48, -1, !dbg !783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  br i1 %51, label %52, label %55, !dbg !785

; <label>:52:                                     ; preds = %47
  tail call fastcc void @read_long_string(%struct.LexState* nonnull %0, %union.SemInfo* null, i32 %48) #6, !dbg !786
  %53 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !dbg !788, !tbaa !553
  %54 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %53, i64 0, i32 1, !dbg !788
  store i64 0, i64* %54, align 8, !dbg !788, !tbaa !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !789
  br label %12

; <label>:55:                                     ; preds = %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %56 = load i32, i32* %7, align 8, !dbg !791, !tbaa !676
  br label %57

; <label>:57:                                     ; preds = %55, %44
  %58 = phi i32 [ %56, %55 ], [ %45, %44 ], !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  %59 = icmp eq i32 %58, 10, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  br i1 %59, label %12, label %60, !dbg !791

; <label>:60:                                     ; preds = %57, %79
  %61 = phi i32 [ %80, %79 ], [ %58, %57 ]
  %62 = icmp eq i32 %61, 13, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br i1 %62, label %12, label %63, !dbg !793

; <label>:63:                                     ; preds = %60
  %64 = icmp eq i32 %61, -1, !dbg !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  br i1 %64, label %12, label %65, !dbg !792

; <label>:65:                                     ; preds = %63
  %66 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !795, !tbaa !660
  %67 = getelementptr inbounds %struct.Zio, %struct.Zio* %66, i64 0, i32 0, !dbg !795
  %68 = load i64, i64* %67, align 8, !dbg !795, !tbaa !673
  %69 = add i64 %68, -1, !dbg !795
  store i64 %69, i64* %67, align 8, !dbg !795, !tbaa !673
  %70 = icmp eq i64 %68, 0, !dbg !795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !795
  br i1 %70, label %77, label %71, !dbg !795

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds %struct.Zio, %struct.Zio* %66, i64 0, i32 1, !dbg !795
  %73 = load i8*, i8** %72, align 8, !dbg !795, !tbaa !675
  %74 = getelementptr inbounds i8, i8* %73, i64 1, !dbg !795
  store i8* %74, i8** %72, align 8, !dbg !795, !tbaa !675
  %75 = load i8, i8* %73, align 1, !dbg !795, !tbaa !404
  %76 = zext i8 %75 to i32, !dbg !795
  br label %79, !dbg !795

; <label>:77:                                     ; preds = %65
  %78 = tail call i32 @luaZ_fill(%struct.Zio* %66) #4, !dbg !795
  br label %79, !dbg !795

; <label>:79:                                     ; preds = %77, %71
  %80 = phi i32 [ %76, %71 ], [ %78, %77 ], !dbg !795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !795
  store i32 %80, i32* %7, align 8, !dbg !795, !tbaa !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  %81 = icmp eq i32 %80, 10, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  br i1 %81, label %12, label %60, !dbg !791, !llvm.loop !796

; <label>:82:                                     ; preds = %9
  %83 = tail call fastcc i32 @skip_sep(%struct.LexState* nonnull %0) #6, !dbg !797
  %84 = icmp sgt i32 %83, -1, !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  br i1 %84, label %85, label %86, !dbg !800

; <label>:85:                                     ; preds = %82
  tail call fastcc void @read_long_string(%struct.LexState* nonnull %0, %union.SemInfo* %1, i32 %83) #6, !dbg !801
  br label %88, !dbg !803

; <label>:86:                                     ; preds = %82
  %87 = icmp eq i32 %83, -1, !dbg !804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !805
  br i1 %87, label %88, label %90, !dbg !805

; <label>:88:                                     ; preds = %86, %85
  %89 = phi i32 [ 286, %85 ], [ 91, %86 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !806
  br label %663

; <label>:90:                                     ; preds = %86
  %91 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0, !dbg !810
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %91) #5, !dbg !810
  %92 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9, !dbg !811
  %93 = load %union.TString*, %union.TString** %92, align 8, !dbg !811, !tbaa !532
  %94 = getelementptr inbounds %union.TString, %union.TString* %93, i64 1, !dbg !811
  %95 = bitcast %union.TString* %94 to i8*, !dbg !811
  call void @luaO_chunkid(i8* nonnull %91, i8* nonnull %95, i64 80) #4, !dbg !812
  %96 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !813
  %97 = load %struct.lua_State*, %struct.lua_State** %96, align 8, !dbg !813, !tbaa !504
  %98 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !814
  %99 = load i32, i32* %98, align 4, !dbg !814, !tbaa !536
  %100 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %91, i32 %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0)) #4, !dbg !815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  %101 = load %struct.lua_State*, %struct.lua_State** %96, align 8, !dbg !817, !tbaa !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !821
  call fastcc void @save(%struct.LexState* nonnull %0, i32 0) #4, !dbg !822
  %102 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !dbg !823, !tbaa !553
  %103 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %102, i64 0, i32 0, !dbg !823
  %104 = load i8*, i8** %103, align 8, !dbg !823, !tbaa !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !825
  %105 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* %100, i8* %104) #4, !dbg !826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  %106 = load %struct.lua_State*, %struct.lua_State** %96, align 8, !dbg !827, !tbaa !504
  call void @luaD_throw(%struct.lua_State* %106, i32 3) #4, !dbg !828
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %91) #5, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %107

; <label>:107:                                    ; preds = %9, %90
  %108 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !831, !tbaa !660
  %109 = getelementptr inbounds %struct.Zio, %struct.Zio* %108, i64 0, i32 0, !dbg !831
  %110 = load i64, i64* %109, align 8, !dbg !831, !tbaa !673
  %111 = add i64 %110, -1, !dbg !831
  store i64 %111, i64* %109, align 8, !dbg !831, !tbaa !673
  %112 = icmp eq i64 %110, 0, !dbg !831
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  br i1 %112, label %119, label %113, !dbg !831

; <label>:113:                                    ; preds = %107
  %114 = getelementptr inbounds %struct.Zio, %struct.Zio* %108, i64 0, i32 1, !dbg !831
  %115 = load i8*, i8** %114, align 8, !dbg !831, !tbaa !675
  %116 = getelementptr inbounds i8, i8* %115, i64 1, !dbg !831
  store i8* %116, i8** %114, align 8, !dbg !831, !tbaa !675
  %117 = load i8, i8* %115, align 1, !dbg !831, !tbaa !404
  %118 = zext i8 %117 to i32, !dbg !831
  br label %121, !dbg !831

; <label>:119:                                    ; preds = %107
  %120 = call i32 @luaZ_fill(%struct.Zio* %108) #4, !dbg !831
  br label %121, !dbg !831

; <label>:121:                                    ; preds = %119, %113
  %122 = phi i32 [ %118, %113 ], [ %120, %119 ], !dbg !831
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  store i32 %122, i32* %7, align 8, !dbg !831, !tbaa !676
  %123 = icmp eq i32 %122, 61, !dbg !833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  br i1 %123, label %124, label %663, !dbg !835

; <label>:124:                                    ; preds = %121
  %125 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !836, !tbaa !660
  %126 = getelementptr inbounds %struct.Zio, %struct.Zio* %125, i64 0, i32 0, !dbg !836
  %127 = load i64, i64* %126, align 8, !dbg !836, !tbaa !673
  %128 = add i64 %127, -1, !dbg !836
  store i64 %128, i64* %126, align 8, !dbg !836, !tbaa !673
  %129 = icmp eq i64 %127, 0, !dbg !836
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !836
  br i1 %129, label %136, label %130, !dbg !836

; <label>:130:                                    ; preds = %124
  %131 = getelementptr inbounds %struct.Zio, %struct.Zio* %125, i64 0, i32 1, !dbg !836
  %132 = load i8*, i8** %131, align 8, !dbg !836, !tbaa !675
  %133 = getelementptr inbounds i8, i8* %132, i64 1, !dbg !836
  store i8* %133, i8** %131, align 8, !dbg !836, !tbaa !675
  %134 = load i8, i8* %132, align 1, !dbg !836, !tbaa !404
  %135 = zext i8 %134 to i32, !dbg !836
  br label %138, !dbg !836

; <label>:136:                                    ; preds = %124
  %137 = call i32 @luaZ_fill(%struct.Zio* %125) #4, !dbg !836
  br label %138, !dbg !836

; <label>:138:                                    ; preds = %136, %130
  %139 = phi i32 [ %135, %130 ], [ %137, %136 ], !dbg !836
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !836
  store i32 %139, i32* %7, align 8, !dbg !836, !tbaa !676
  br label %663, !dbg !838

; <label>:140:                                    ; preds = %9
  %141 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !839, !tbaa !660
  %142 = getelementptr inbounds %struct.Zio, %struct.Zio* %141, i64 0, i32 0, !dbg !839
  %143 = load i64, i64* %142, align 8, !dbg !839, !tbaa !673
  %144 = add i64 %143, -1, !dbg !839
  store i64 %144, i64* %142, align 8, !dbg !839, !tbaa !673
  %145 = icmp eq i64 %143, 0, !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  br i1 %145, label %152, label %146, !dbg !839

; <label>:146:                                    ; preds = %140
  %147 = getelementptr inbounds %struct.Zio, %struct.Zio* %141, i64 0, i32 1, !dbg !839
  %148 = load i8*, i8** %147, align 8, !dbg !839, !tbaa !675
  %149 = getelementptr inbounds i8, i8* %148, i64 1, !dbg !839
  store i8* %149, i8** %147, align 8, !dbg !839, !tbaa !675
  %150 = load i8, i8* %148, align 1, !dbg !839, !tbaa !404
  %151 = zext i8 %150 to i32, !dbg !839
  br label %154, !dbg !839

; <label>:152:                                    ; preds = %140
  %153 = tail call i32 @luaZ_fill(%struct.Zio* %141) #4, !dbg !839
  br label %154, !dbg !839

; <label>:154:                                    ; preds = %152, %146
  %155 = phi i32 [ %151, %146 ], [ %153, %152 ], !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  store i32 %155, i32* %7, align 8, !dbg !839, !tbaa !676
  %156 = icmp eq i32 %155, 61, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  br i1 %156, label %157, label %663, !dbg !843

; <label>:157:                                    ; preds = %154
  %158 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !844, !tbaa !660
  %159 = getelementptr inbounds %struct.Zio, %struct.Zio* %158, i64 0, i32 0, !dbg !844
  %160 = load i64, i64* %159, align 8, !dbg !844, !tbaa !673
  %161 = add i64 %160, -1, !dbg !844
  store i64 %161, i64* %159, align 8, !dbg !844, !tbaa !673
  %162 = icmp eq i64 %160, 0, !dbg !844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !844
  br i1 %162, label %169, label %163, !dbg !844

; <label>:163:                                    ; preds = %157
  %164 = getelementptr inbounds %struct.Zio, %struct.Zio* %158, i64 0, i32 1, !dbg !844
  %165 = load i8*, i8** %164, align 8, !dbg !844, !tbaa !675
  %166 = getelementptr inbounds i8, i8* %165, i64 1, !dbg !844
  store i8* %166, i8** %164, align 8, !dbg !844, !tbaa !675
  %167 = load i8, i8* %165, align 1, !dbg !844, !tbaa !404
  %168 = zext i8 %167 to i32, !dbg !844
  br label %171, !dbg !844

; <label>:169:                                    ; preds = %157
  %170 = tail call i32 @luaZ_fill(%struct.Zio* %158) #4, !dbg !844
  br label %171, !dbg !844

; <label>:171:                                    ; preds = %169, %163
  %172 = phi i32 [ %168, %163 ], [ %170, %169 ], !dbg !844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !844
  store i32 %172, i32* %7, align 8, !dbg !844, !tbaa !676
  br label %663, !dbg !846

; <label>:173:                                    ; preds = %9
  %174 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !847, !tbaa !660
  %175 = getelementptr inbounds %struct.Zio, %struct.Zio* %174, i64 0, i32 0, !dbg !847
  %176 = load i64, i64* %175, align 8, !dbg !847, !tbaa !673
  %177 = add i64 %176, -1, !dbg !847
  store i64 %177, i64* %175, align 8, !dbg !847, !tbaa !673
  %178 = icmp eq i64 %176, 0, !dbg !847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !847
  br i1 %178, label %185, label %179, !dbg !847

; <label>:179:                                    ; preds = %173
  %180 = getelementptr inbounds %struct.Zio, %struct.Zio* %174, i64 0, i32 1, !dbg !847
  %181 = load i8*, i8** %180, align 8, !dbg !847, !tbaa !675
  %182 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !847
  store i8* %182, i8** %180, align 8, !dbg !847, !tbaa !675
  %183 = load i8, i8* %181, align 1, !dbg !847, !tbaa !404
  %184 = zext i8 %183 to i32, !dbg !847
  br label %187, !dbg !847

; <label>:185:                                    ; preds = %173
  %186 = tail call i32 @luaZ_fill(%struct.Zio* %174) #4, !dbg !847
  br label %187, !dbg !847

; <label>:187:                                    ; preds = %185, %179
  %188 = phi i32 [ %184, %179 ], [ %186, %185 ], !dbg !847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !847
  store i32 %188, i32* %7, align 8, !dbg !847, !tbaa !676
  %189 = icmp eq i32 %188, 61, !dbg !849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !851
  br i1 %189, label %190, label %663, !dbg !851

; <label>:190:                                    ; preds = %187
  %191 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !852, !tbaa !660
  %192 = getelementptr inbounds %struct.Zio, %struct.Zio* %191, i64 0, i32 0, !dbg !852
  %193 = load i64, i64* %192, align 8, !dbg !852, !tbaa !673
  %194 = add i64 %193, -1, !dbg !852
  store i64 %194, i64* %192, align 8, !dbg !852, !tbaa !673
  %195 = icmp eq i64 %193, 0, !dbg !852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  br i1 %195, label %202, label %196, !dbg !852

; <label>:196:                                    ; preds = %190
  %197 = getelementptr inbounds %struct.Zio, %struct.Zio* %191, i64 0, i32 1, !dbg !852
  %198 = load i8*, i8** %197, align 8, !dbg !852, !tbaa !675
  %199 = getelementptr inbounds i8, i8* %198, i64 1, !dbg !852
  store i8* %199, i8** %197, align 8, !dbg !852, !tbaa !675
  %200 = load i8, i8* %198, align 1, !dbg !852, !tbaa !404
  %201 = zext i8 %200 to i32, !dbg !852
  br label %204, !dbg !852

; <label>:202:                                    ; preds = %190
  %203 = tail call i32 @luaZ_fill(%struct.Zio* %191) #4, !dbg !852
  br label %204, !dbg !852

; <label>:204:                                    ; preds = %202, %196
  %205 = phi i32 [ %201, %196 ], [ %203, %202 ], !dbg !852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  store i32 %205, i32* %7, align 8, !dbg !852, !tbaa !676
  br label %663, !dbg !854

; <label>:206:                                    ; preds = %9
  %207 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !855, !tbaa !660
  %208 = getelementptr inbounds %struct.Zio, %struct.Zio* %207, i64 0, i32 0, !dbg !855
  %209 = load i64, i64* %208, align 8, !dbg !855, !tbaa !673
  %210 = add i64 %209, -1, !dbg !855
  store i64 %210, i64* %208, align 8, !dbg !855, !tbaa !673
  %211 = icmp eq i64 %209, 0, !dbg !855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !855
  br i1 %211, label %218, label %212, !dbg !855

; <label>:212:                                    ; preds = %206
  %213 = getelementptr inbounds %struct.Zio, %struct.Zio* %207, i64 0, i32 1, !dbg !855
  %214 = load i8*, i8** %213, align 8, !dbg !855, !tbaa !675
  %215 = getelementptr inbounds i8, i8* %214, i64 1, !dbg !855
  store i8* %215, i8** %213, align 8, !dbg !855, !tbaa !675
  %216 = load i8, i8* %214, align 1, !dbg !855, !tbaa !404
  %217 = zext i8 %216 to i32, !dbg !855
  br label %220, !dbg !855

; <label>:218:                                    ; preds = %206
  %219 = tail call i32 @luaZ_fill(%struct.Zio* %207) #4, !dbg !855
  br label %220, !dbg !855

; <label>:220:                                    ; preds = %218, %212
  %221 = phi i32 [ %217, %212 ], [ %219, %218 ], !dbg !855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !855
  store i32 %221, i32* %7, align 8, !dbg !855, !tbaa !676
  %222 = icmp eq i32 %221, 61, !dbg !857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !859
  br i1 %222, label %223, label %663, !dbg !859

; <label>:223:                                    ; preds = %220
  %224 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !860, !tbaa !660
  %225 = getelementptr inbounds %struct.Zio, %struct.Zio* %224, i64 0, i32 0, !dbg !860
  %226 = load i64, i64* %225, align 8, !dbg !860, !tbaa !673
  %227 = add i64 %226, -1, !dbg !860
  store i64 %227, i64* %225, align 8, !dbg !860, !tbaa !673
  %228 = icmp eq i64 %226, 0, !dbg !860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !860
  br i1 %228, label %235, label %229, !dbg !860

; <label>:229:                                    ; preds = %223
  %230 = getelementptr inbounds %struct.Zio, %struct.Zio* %224, i64 0, i32 1, !dbg !860
  %231 = load i8*, i8** %230, align 8, !dbg !860, !tbaa !675
  %232 = getelementptr inbounds i8, i8* %231, i64 1, !dbg !860
  store i8* %232, i8** %230, align 8, !dbg !860, !tbaa !675
  %233 = load i8, i8* %231, align 1, !dbg !860, !tbaa !404
  %234 = zext i8 %233 to i32, !dbg !860
  br label %237, !dbg !860

; <label>:235:                                    ; preds = %223
  %236 = tail call i32 @luaZ_fill(%struct.Zio* %224) #4, !dbg !860
  br label %237, !dbg !860

; <label>:237:                                    ; preds = %235, %229
  %238 = phi i32 [ %234, %229 ], [ %236, %235 ], !dbg !860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !860
  store i32 %238, i32* %7, align 8, !dbg !860, !tbaa !676
  br label %663, !dbg !862

; <label>:239:                                    ; preds = %9, %9
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %10) #4, !dbg !866
  %240 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !866, !tbaa !660
  %241 = getelementptr inbounds %struct.Zio, %struct.Zio* %240, i64 0, i32 0, !dbg !866
  %242 = load i64, i64* %241, align 8, !dbg !866, !tbaa !673
  %243 = add i64 %242, -1, !dbg !866
  store i64 %243, i64* %241, align 8, !dbg !866, !tbaa !673
  %244 = icmp eq i64 %242, 0, !dbg !866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !866
  br i1 %244, label %251, label %245, !dbg !866

; <label>:245:                                    ; preds = %239
  %246 = getelementptr inbounds %struct.Zio, %struct.Zio* %240, i64 0, i32 1, !dbg !866
  %247 = load i8*, i8** %246, align 8, !dbg !866, !tbaa !675
  %248 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !866
  store i8* %248, i8** %246, align 8, !dbg !866, !tbaa !675
  %249 = load i8, i8* %247, align 1, !dbg !866, !tbaa !404
  %250 = zext i8 %249 to i32, !dbg !866
  br label %253, !dbg !866

; <label>:251:                                    ; preds = %239
  %252 = tail call i32 @luaZ_fill(%struct.Zio* %240) #4, !dbg !866
  br label %253, !dbg !866

; <label>:253:                                    ; preds = %251, %245
  %254 = phi i32 [ %250, %245 ], [ %252, %251 ], !dbg !866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !866
  store i32 %254, i32* %7, align 8, !dbg !866, !tbaa !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !867
  %255 = icmp eq i32 %254, %10, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !867
  br i1 %255, label %423, label %256, !dbg !867

; <label>:256:                                    ; preds = %253
  %257 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %258 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9
  %259 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %260 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  br label %263, !dbg !867

; <label>:261:                                    ; preds = %310, %386, %402, %302, %275, %265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %262 = load i32, i32* %7, align 8, !dbg !870, !tbaa !676
  br label %420, !dbg !870

; <label>:263:                                    ; preds = %420, %256
  %264 = phi i32 [ %254, %256 ], [ %421, %420 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !871
  switch i32 %264, label %404 [
    i32 -1, label %265
    i32 10, label %275
    i32 13, label %275
    i32 92, label %288
  ], !dbg !871

; <label>:265:                                    ; preds = %263
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %257) #5, !dbg !875
  %266 = load %union.TString*, %union.TString** %258, align 8, !dbg !876, !tbaa !532
  %267 = getelementptr inbounds %union.TString, %union.TString* %266, i64 1, !dbg !876
  %268 = bitcast %union.TString* %267 to i8*, !dbg !876
  call void @luaO_chunkid(i8* nonnull %257, i8* nonnull %268, i64 80) #4, !dbg !877
  %269 = load %struct.lua_State*, %struct.lua_State** %259, align 8, !dbg !878, !tbaa !504
  %270 = load i32, i32* %260, align 4, !dbg !879, !tbaa !536
  %271 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %269, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %257, i32 %270, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i64 0, i64 0)) #4, !dbg !880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  %272 = load %struct.lua_State*, %struct.lua_State** %259, align 8, !dbg !882, !tbaa !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  %273 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %272, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* %271, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0)) #4, !dbg !895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !895
  %274 = load %struct.lua_State*, %struct.lua_State** %259, align 8, !dbg !896, !tbaa !504
  call void @luaD_throw(%struct.lua_State* %274, i32 3) #4, !dbg !897
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %257) #5, !dbg !898
  br label %261, !dbg !899, !llvm.loop !900

; <label>:275:                                    ; preds = %263, %263
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %257) #5, !dbg !906
  %276 = load %union.TString*, %union.TString** %258, align 8, !dbg !907, !tbaa !532
  %277 = getelementptr inbounds %union.TString, %union.TString* %276, i64 1, !dbg !907
  %278 = bitcast %union.TString* %277 to i8*, !dbg !907
  call void @luaO_chunkid(i8* nonnull %257, i8* nonnull %278, i64 80) #4, !dbg !908
  %279 = load %struct.lua_State*, %struct.lua_State** %259, align 8, !dbg !909, !tbaa !504
  %280 = load i32, i32* %260, align 4, !dbg !910, !tbaa !536
  %281 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %279, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %257, i32 %280, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i64 0, i64 0)) #4, !dbg !911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !912
  %282 = load %struct.lua_State*, %struct.lua_State** %259, align 8, !dbg !913, !tbaa !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !917
  call fastcc void @save(%struct.LexState* nonnull %0, i32 0) #4, !dbg !918
  %283 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !dbg !919, !tbaa !553
  %284 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %283, i64 0, i32 0, !dbg !919
  %285 = load i8*, i8** %284, align 8, !dbg !919, !tbaa !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  %286 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %282, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* %281, i8* %285) #4, !dbg !922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !922
  %287 = load %struct.lua_State*, %struct.lua_State** %259, align 8, !dbg !923, !tbaa !504
  call void @luaD_throw(%struct.lua_State* %287, i32 3) #4, !dbg !924
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %257) #5, !dbg !925
  br label %261, !dbg !926, !llvm.loop !900

; <label>:288:                                    ; preds = %263
  %289 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !927, !tbaa !660
  %290 = getelementptr inbounds %struct.Zio, %struct.Zio* %289, i64 0, i32 0, !dbg !927
  %291 = load i64, i64* %290, align 8, !dbg !927, !tbaa !673
  %292 = add i64 %291, -1, !dbg !927
  store i64 %292, i64* %290, align 8, !dbg !927, !tbaa !673
  %293 = icmp eq i64 %291, 0, !dbg !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !927
  br i1 %293, label %300, label %294, !dbg !927

; <label>:294:                                    ; preds = %288
  %295 = getelementptr inbounds %struct.Zio, %struct.Zio* %289, i64 0, i32 1, !dbg !927
  %296 = load i8*, i8** %295, align 8, !dbg !927, !tbaa !675
  %297 = getelementptr inbounds i8, i8* %296, i64 1, !dbg !927
  store i8* %297, i8** %295, align 8, !dbg !927, !tbaa !675
  %298 = load i8, i8* %296, align 1, !dbg !927, !tbaa !404
  %299 = zext i8 %298 to i32, !dbg !927
  br label %302, !dbg !927

; <label>:300:                                    ; preds = %288
  %301 = call i32 @luaZ_fill(%struct.Zio* %289) #4, !dbg !927
  br label %302, !dbg !927

; <label>:302:                                    ; preds = %300, %294
  %303 = phi i32 [ %299, %294 ], [ %301, %300 ], !dbg !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !927
  store i32 %303, i32* %7, align 8, !dbg !927, !tbaa !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  switch i32 %303, label %311 [
    i32 97, label %387
    i32 98, label %304
    i32 102, label %305
    i32 110, label %306
    i32 114, label %307
    i32 116, label %308
    i32 118, label %309
    i32 10, label %310
    i32 13, label %310
    i32 -1, label %261
  ], !dbg !928, !llvm.loop !900

; <label>:304:                                    ; preds = %302
  br label %387, !dbg !930

; <label>:305:                                    ; preds = %302
  br label %387, !dbg !931

; <label>:306:                                    ; preds = %302
  br label %387, !dbg !932

; <label>:307:                                    ; preds = %302
  br label %387, !dbg !933

; <label>:308:                                    ; preds = %302
  br label %387, !dbg !934

; <label>:309:                                    ; preds = %302
  br label %387, !dbg !935

; <label>:310:                                    ; preds = %302, %302
  call fastcc void @save(%struct.LexState* nonnull %0, i32 10) #4, !dbg !936
  call fastcc void @inclinenumber(%struct.LexState* nonnull %0) #4, !dbg !937
  br label %261, !dbg !938, !llvm.loop !900

; <label>:311:                                    ; preds = %302
  %312 = call i8* @__locale_ctype_ptr() #4, !dbg !939
  %313 = getelementptr inbounds i8, i8* %312, i64 1, !dbg !939
  %314 = load i32, i32* %7, align 8, !dbg !939, !tbaa !676
  %315 = sext i32 %314 to i64, !dbg !939
  %316 = getelementptr inbounds i8, i8* %313, i64 %315, !dbg !939
  %317 = load i8, i8* %316, align 1, !dbg !939, !tbaa !404
  %318 = and i8 %317, 4, !dbg !939
  %319 = icmp eq i8 %318, 0, !dbg !939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !940
  br i1 %319, label %320, label %336, !dbg !940

; <label>:320:                                    ; preds = %311
  call fastcc void @save(%struct.LexState* nonnull %0, i32 %314) #4, !dbg !941
  %321 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !941, !tbaa !660
  %322 = getelementptr inbounds %struct.Zio, %struct.Zio* %321, i64 0, i32 0, !dbg !941
  %323 = load i64, i64* %322, align 8, !dbg !941, !tbaa !673
  %324 = add i64 %323, -1, !dbg !941
  store i64 %324, i64* %322, align 8, !dbg !941, !tbaa !673
  %325 = icmp eq i64 %323, 0, !dbg !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  br i1 %325, label %332, label %326, !dbg !941

; <label>:326:                                    ; preds = %320
  %327 = getelementptr inbounds %struct.Zio, %struct.Zio* %321, i64 0, i32 1, !dbg !941
  %328 = load i8*, i8** %327, align 8, !dbg !941, !tbaa !675
  %329 = getelementptr inbounds i8, i8* %328, i64 1, !dbg !941
  store i8* %329, i8** %327, align 8, !dbg !941, !tbaa !675
  %330 = load i8, i8* %328, align 1, !dbg !941, !tbaa !404
  %331 = zext i8 %330 to i32, !dbg !941
  br label %334, !dbg !941

; <label>:332:                                    ; preds = %320
  %333 = call i32 @luaZ_fill(%struct.Zio* %321) #4, !dbg !941
  br label %334, !dbg !941

; <label>:334:                                    ; preds = %332, %326
  %335 = phi i32 [ %331, %326 ], [ %333, %332 ], !dbg !941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  store i32 %335, i32* %7, align 8, !dbg !941, !tbaa !676
  br label %386, !dbg !941

; <label>:336:                                    ; preds = %311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !943
  br label %337, !dbg !943

; <label>:337:                                    ; preds = %361, %336
  %338 = phi i32 [ %314, %336 ], [ %364, %361 ], !dbg !944
  %339 = phi i32 [ 0, %336 ], [ %343, %361 ], !dbg !946
  %340 = phi i32 [ 0, %336 ], [ %359, %361 ], !dbg !947
  %341 = mul nsw i32 %339, 10, !dbg !948
  %342 = add i32 %338, -48, !dbg !949
  %343 = add i32 %342, %341, !dbg !950
  %344 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !951, !tbaa !660
  %345 = getelementptr inbounds %struct.Zio, %struct.Zio* %344, i64 0, i32 0, !dbg !951
  %346 = load i64, i64* %345, align 8, !dbg !951, !tbaa !673
  %347 = add i64 %346, -1, !dbg !951
  store i64 %347, i64* %345, align 8, !dbg !951, !tbaa !673
  %348 = icmp eq i64 %346, 0, !dbg !951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !951
  br i1 %348, label %355, label %349, !dbg !951

; <label>:349:                                    ; preds = %337
  %350 = getelementptr inbounds %struct.Zio, %struct.Zio* %344, i64 0, i32 1, !dbg !951
  %351 = load i8*, i8** %350, align 8, !dbg !951, !tbaa !675
  %352 = getelementptr inbounds i8, i8* %351, i64 1, !dbg !951
  store i8* %352, i8** %350, align 8, !dbg !951, !tbaa !675
  %353 = load i8, i8* %351, align 1, !dbg !951, !tbaa !404
  %354 = zext i8 %353 to i32, !dbg !951
  br label %357, !dbg !951

; <label>:355:                                    ; preds = %337
  %356 = call i32 @luaZ_fill(%struct.Zio* %344) #4, !dbg !951
  br label %357, !dbg !951

; <label>:357:                                    ; preds = %355, %349
  %358 = phi i32 [ %354, %349 ], [ %356, %355 ], !dbg !951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !951
  store i32 %358, i32* %7, align 8, !dbg !951, !tbaa !676
  %359 = add nuw nsw i32 %340, 1, !dbg !952
  %360 = icmp ult i32 %359, 3, !dbg !953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !954
  br i1 %360, label %361, label %370, !dbg !954

; <label>:361:                                    ; preds = %357
  %362 = call i8* @__locale_ctype_ptr() #4, !dbg !955
  %363 = getelementptr inbounds i8, i8* %362, i64 1, !dbg !955
  %364 = load i32, i32* %7, align 8, !dbg !955, !tbaa !676
  %365 = sext i32 %364 to i64, !dbg !955
  %366 = getelementptr inbounds i8, i8* %363, i64 %365, !dbg !955
  %367 = load i8, i8* %366, align 1, !dbg !955, !tbaa !404
  %368 = and i8 %367, 4, !dbg !955
  %369 = icmp eq i8 %368, 0, !dbg !954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !956
  br i1 %369, label %370, label %337, !dbg !956, !llvm.loop !957

; <label>:370:                                    ; preds = %361, %357
  %371 = icmp sgt i32 %343, 255, !dbg !960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !961
  br i1 %371, label %372, label %385, !dbg !961

; <label>:372:                                    ; preds = %370
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %257) #5, !dbg !965
  %373 = load %union.TString*, %union.TString** %258, align 8, !dbg !966, !tbaa !532
  %374 = getelementptr inbounds %union.TString, %union.TString* %373, i64 1, !dbg !966
  %375 = bitcast %union.TString* %374 to i8*, !dbg !966
  call void @luaO_chunkid(i8* nonnull %257, i8* nonnull %375, i64 80) #4, !dbg !967
  %376 = load %struct.lua_State*, %struct.lua_State** %259, align 8, !dbg !968, !tbaa !504
  %377 = load i32, i32* %260, align 4, !dbg !969, !tbaa !536
  %378 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %376, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %257, i32 %377, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i64 0, i64 0)) #4, !dbg !970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  %379 = load %struct.lua_State*, %struct.lua_State** %259, align 8, !dbg !972, !tbaa !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !976
  call fastcc void @save(%struct.LexState* nonnull %0, i32 0) #4, !dbg !977
  %380 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !dbg !978, !tbaa !553
  %381 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %380, i64 0, i32 0, !dbg !978
  %382 = load i8*, i8** %381, align 8, !dbg !978, !tbaa !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !980
  %383 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %379, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* %378, i8* %382) #4, !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  %384 = load %struct.lua_State*, %struct.lua_State** %259, align 8, !dbg !982, !tbaa !504
  call void @luaD_throw(%struct.lua_State* %384, i32 3) #4, !dbg !983
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %257) #5, !dbg !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !985
  br label %385, !dbg !985

; <label>:385:                                    ; preds = %372, %370
  call fastcc void @save(%struct.LexState* nonnull %0, i32 %343) #4, !dbg !986
  br label %386

; <label>:386:                                    ; preds = %385, %334
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %261, !dbg !987, !llvm.loop !900

; <label>:387:                                    ; preds = %302, %309, %308, %307, %306, %305, %304
  %388 = phi i32 [ 11, %309 ], [ 9, %308 ], [ 13, %307 ], [ 10, %306 ], [ 12, %305 ], [ 8, %304 ], [ 7, %302 ], !dbg !988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  call fastcc void @save(%struct.LexState* nonnull %0, i32 %388) #4, !dbg !989
  %389 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !990, !tbaa !660
  %390 = getelementptr inbounds %struct.Zio, %struct.Zio* %389, i64 0, i32 0, !dbg !990
  %391 = load i64, i64* %390, align 8, !dbg !990, !tbaa !673
  %392 = add i64 %391, -1, !dbg !990
  store i64 %392, i64* %390, align 8, !dbg !990, !tbaa !673
  %393 = icmp eq i64 %391, 0, !dbg !990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  br i1 %393, label %400, label %394, !dbg !990

; <label>:394:                                    ; preds = %387
  %395 = getelementptr inbounds %struct.Zio, %struct.Zio* %389, i64 0, i32 1, !dbg !990
  %396 = load i8*, i8** %395, align 8, !dbg !990, !tbaa !675
  %397 = getelementptr inbounds i8, i8* %396, i64 1, !dbg !990
  store i8* %397, i8** %395, align 8, !dbg !990, !tbaa !675
  %398 = load i8, i8* %396, align 1, !dbg !990, !tbaa !404
  %399 = zext i8 %398 to i32, !dbg !990
  br label %402, !dbg !990

; <label>:400:                                    ; preds = %387
  %401 = call i32 @luaZ_fill(%struct.Zio* %389) #4, !dbg !990
  br label %402, !dbg !990

; <label>:402:                                    ; preds = %400, %394
  %403 = phi i32 [ %399, %394 ], [ %401, %400 ], !dbg !990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  store i32 %403, i32* %7, align 8, !dbg !990, !tbaa !676
  br label %261, !dbg !991, !llvm.loop !900

; <label>:404:                                    ; preds = %263
  call fastcc void @save(%struct.LexState* nonnull %0, i32 %264) #4, !dbg !992
  %405 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !992, !tbaa !660
  %406 = getelementptr inbounds %struct.Zio, %struct.Zio* %405, i64 0, i32 0, !dbg !992
  %407 = load i64, i64* %406, align 8, !dbg !992, !tbaa !673
  %408 = add i64 %407, -1, !dbg !992
  store i64 %408, i64* %406, align 8, !dbg !992, !tbaa !673
  %409 = icmp eq i64 %407, 0, !dbg !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !992
  br i1 %409, label %416, label %410, !dbg !992

; <label>:410:                                    ; preds = %404
  %411 = getelementptr inbounds %struct.Zio, %struct.Zio* %405, i64 0, i32 1, !dbg !992
  %412 = load i8*, i8** %411, align 8, !dbg !992, !tbaa !675
  %413 = getelementptr inbounds i8, i8* %412, i64 1, !dbg !992
  store i8* %413, i8** %411, align 8, !dbg !992, !tbaa !675
  %414 = load i8, i8* %412, align 1, !dbg !992, !tbaa !404
  %415 = zext i8 %414 to i32, !dbg !992
  br label %418, !dbg !992

; <label>:416:                                    ; preds = %404
  %417 = call i32 @luaZ_fill(%struct.Zio* %405) #4, !dbg !992
  br label %418, !dbg !992

; <label>:418:                                    ; preds = %416, %410
  %419 = phi i32 [ %415, %410 ], [ %417, %416 ], !dbg !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !992
  store i32 %419, i32* %7, align 8, !dbg !992, !tbaa !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !867
  br label %420, !dbg !867

; <label>:420:                                    ; preds = %418, %261
  %421 = phi i32 [ %262, %261 ], [ %419, %418 ]
  %422 = icmp eq i32 %421, %10, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !867
  br i1 %422, label %423, label %263, !dbg !867, !llvm.loop !900

; <label>:423:                                    ; preds = %420, %253
  call fastcc void @save(%struct.LexState* nonnull %0, i32 %10) #4, !dbg !993
  %424 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !993, !tbaa !660
  %425 = getelementptr inbounds %struct.Zio, %struct.Zio* %424, i64 0, i32 0, !dbg !993
  %426 = load i64, i64* %425, align 8, !dbg !993, !tbaa !673
  %427 = add i64 %426, -1, !dbg !993
  store i64 %427, i64* %425, align 8, !dbg !993, !tbaa !673
  %428 = icmp eq i64 %426, 0, !dbg !993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !993
  br i1 %428, label %435, label %429, !dbg !993

; <label>:429:                                    ; preds = %423
  %430 = getelementptr inbounds %struct.Zio, %struct.Zio* %424, i64 0, i32 1, !dbg !993
  %431 = load i8*, i8** %430, align 8, !dbg !993, !tbaa !675
  %432 = getelementptr inbounds i8, i8* %431, i64 1, !dbg !993
  store i8* %432, i8** %430, align 8, !dbg !993, !tbaa !675
  %433 = load i8, i8* %431, align 1, !dbg !993, !tbaa !404
  %434 = zext i8 %433 to i32, !dbg !993
  br label %437, !dbg !993

; <label>:435:                                    ; preds = %423
  %436 = call i32 @luaZ_fill(%struct.Zio* %424) #4, !dbg !993
  br label %437, !dbg !993

; <label>:437:                                    ; preds = %435, %429
  %438 = phi i32 [ %434, %429 ], [ %436, %435 ], !dbg !993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !993
  store i32 %438, i32* %7, align 8, !dbg !993, !tbaa !676
  %439 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !dbg !994, !tbaa !553
  %440 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %439, i64 0, i32 0, !dbg !994
  %441 = load i8*, i8** %440, align 8, !dbg !994, !tbaa !554
  %442 = getelementptr inbounds i8, i8* %441, i64 1, !dbg !995
  %443 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %439, i64 0, i32 1, !dbg !996
  %444 = load i64, i64* %443, align 8, !dbg !996, !tbaa !763
  %445 = add i64 %444, -2, !dbg !997
  %446 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1002
  %447 = load %struct.lua_State*, %struct.lua_State** %446, align 8, !dbg !1002, !tbaa !504
  %448 = call %union.TString* @luaS_newlstr(%struct.lua_State* %447, i8* nonnull %442, i64 %445) #4, !dbg !1004
  %449 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1006
  %450 = load %struct.FuncState*, %struct.FuncState** %449, align 8, !dbg !1006, !tbaa !614
  %451 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %450, i64 0, i32 1, !dbg !1007
  %452 = load %struct.Table*, %struct.Table** %451, align 8, !dbg !1007, !tbaa !616
  %453 = call %struct.lua_TValue* @luaH_setstr(%struct.lua_State* %447, %struct.Table* %452, %union.TString* %448) #4, !dbg !1008
  %454 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %453, i64 0, i32 1, !dbg !1010
  %455 = load i32, i32* %454, align 8, !dbg !1010, !tbaa !622
  %456 = icmp eq i32 %455, 0, !dbg !1010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1011
  br i1 %456, label %457, label %467, !dbg !1011

; <label>:457:                                    ; preds = %437
  %458 = bitcast %struct.lua_TValue* %453 to i32*, !dbg !1012
  store i32 1, i32* %458, align 8, !dbg !1012, !tbaa !404
  store i32 1, i32* %454, align 8, !dbg !1012, !tbaa !622
  %459 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %447, i64 0, i32 6, !dbg !1013
  %460 = load %struct.global_State*, %struct.global_State** %459, align 8, !dbg !1013, !tbaa !629
  %461 = getelementptr inbounds %struct.global_State, %struct.global_State* %460, i64 0, i32 14, !dbg !1013
  %462 = load i64, i64* %461, align 8, !dbg !1013, !tbaa !631
  %463 = getelementptr inbounds %struct.global_State, %struct.global_State* %460, i64 0, i32 13, !dbg !1013
  %464 = load i64, i64* %463, align 8, !dbg !1013, !tbaa !635
  %465 = icmp ult i64 %462, %464, !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1014
  br i1 %465, label %467, label %466, !dbg !1014

; <label>:466:                                    ; preds = %457
  call void @luaC_step(%struct.lua_State* nonnull %447) #4, !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1013
  br label %467, !dbg !1013

; <label>:467:                                    ; preds = %437, %457, %466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  %468 = bitcast %union.SemInfo* %1 to %union.TString**, !dbg !1016
  store %union.TString* %448, %union.TString** %468, align 8, !dbg !1017, !tbaa !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1018
  br label %663, !dbg !1019

; <label>:469:                                    ; preds = %9
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 46) #6, !dbg !1020
  %470 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !1020, !tbaa !660
  %471 = getelementptr inbounds %struct.Zio, %struct.Zio* %470, i64 0, i32 0, !dbg !1020
  %472 = load i64, i64* %471, align 8, !dbg !1020, !tbaa !673
  %473 = add i64 %472, -1, !dbg !1020
  store i64 %473, i64* %471, align 8, !dbg !1020, !tbaa !673
  %474 = icmp eq i64 %472, 0, !dbg !1020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1020
  br i1 %474, label %481, label %475, !dbg !1020

; <label>:475:                                    ; preds = %469
  %476 = getelementptr inbounds %struct.Zio, %struct.Zio* %470, i64 0, i32 1, !dbg !1020
  %477 = load i8*, i8** %476, align 8, !dbg !1020, !tbaa !675
  %478 = getelementptr inbounds i8, i8* %477, i64 1, !dbg !1020
  store i8* %478, i8** %476, align 8, !dbg !1020, !tbaa !675
  %479 = load i8, i8* %477, align 1, !dbg !1020, !tbaa !404
  %480 = zext i8 %479 to i32, !dbg !1020
  br label %483, !dbg !1020

; <label>:481:                                    ; preds = %469
  %482 = tail call i32 @luaZ_fill(%struct.Zio* %470) #4, !dbg !1020
  br label %483, !dbg !1020

; <label>:483:                                    ; preds = %481, %475
  %484 = phi i32 [ %480, %475 ], [ %482, %481 ], !dbg !1020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1020
  store i32 %484, i32* %7, align 8, !dbg !1020, !tbaa !676
  %485 = tail call i8* @strchr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), i32 %484) #4, !dbg !1032
  %486 = icmp eq i8* %485, null, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1034
  br i1 %486, label %524, label %487, !dbg !1034

; <label>:487:                                    ; preds = %483
  %488 = load i32, i32* %7, align 8, !dbg !1035, !tbaa !676
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %488) #4, !dbg !1035
  %489 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !1035, !tbaa !660
  %490 = getelementptr inbounds %struct.Zio, %struct.Zio* %489, i64 0, i32 0, !dbg !1035
  %491 = load i64, i64* %490, align 8, !dbg !1035, !tbaa !673
  %492 = add i64 %491, -1, !dbg !1035
  store i64 %492, i64* %490, align 8, !dbg !1035, !tbaa !673
  %493 = icmp eq i64 %491, 0, !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  br i1 %493, label %500, label %494, !dbg !1035

; <label>:494:                                    ; preds = %487
  %495 = getelementptr inbounds %struct.Zio, %struct.Zio* %489, i64 0, i32 1, !dbg !1035
  %496 = load i8*, i8** %495, align 8, !dbg !1035, !tbaa !675
  %497 = getelementptr inbounds i8, i8* %496, i64 1, !dbg !1035
  store i8* %497, i8** %495, align 8, !dbg !1035, !tbaa !675
  %498 = load i8, i8* %496, align 1, !dbg !1035, !tbaa !404
  %499 = zext i8 %498 to i32, !dbg !1035
  br label %502, !dbg !1035

; <label>:500:                                    ; preds = %487
  %501 = tail call i32 @luaZ_fill(%struct.Zio* %489) #4, !dbg !1035
  br label %502, !dbg !1035

; <label>:502:                                    ; preds = %500, %494
  %503 = phi i32 [ %499, %494 ], [ %501, %500 ], !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  store i32 %503, i32* %7, align 8, !dbg !1035, !tbaa !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  %504 = tail call i8* @strchr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), i32 %503) #4, !dbg !1044
  %505 = icmp eq i8* %504, null, !dbg !1044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1045
  br i1 %505, label %523, label %506, !dbg !1045

; <label>:506:                                    ; preds = %502
  %507 = load i32, i32* %7, align 8, !dbg !1046, !tbaa !676
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %507) #4, !dbg !1046
  %508 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !1046, !tbaa !660
  %509 = getelementptr inbounds %struct.Zio, %struct.Zio* %508, i64 0, i32 0, !dbg !1046
  %510 = load i64, i64* %509, align 8, !dbg !1046, !tbaa !673
  %511 = add i64 %510, -1, !dbg !1046
  store i64 %511, i64* %509, align 8, !dbg !1046, !tbaa !673
  %512 = icmp eq i64 %510, 0, !dbg !1046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1046
  br i1 %512, label %519, label %513, !dbg !1046

; <label>:513:                                    ; preds = %506
  %514 = getelementptr inbounds %struct.Zio, %struct.Zio* %508, i64 0, i32 1, !dbg !1046
  %515 = load i8*, i8** %514, align 8, !dbg !1046, !tbaa !675
  %516 = getelementptr inbounds i8, i8* %515, i64 1, !dbg !1046
  store i8* %516, i8** %514, align 8, !dbg !1046, !tbaa !675
  %517 = load i8, i8* %515, align 1, !dbg !1046, !tbaa !404
  %518 = zext i8 %517 to i32, !dbg !1046
  br label %521, !dbg !1046

; <label>:519:                                    ; preds = %506
  %520 = tail call i32 @luaZ_fill(%struct.Zio* %508) #4, !dbg !1046
  br label %521, !dbg !1046

; <label>:521:                                    ; preds = %513, %519
  %522 = phi i32 [ %518, %513 ], [ %520, %519 ], !dbg !1046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1046
  store i32 %522, i32* %7, align 8, !dbg !1046, !tbaa !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  br label %663, !dbg !1050

; <label>:523:                                    ; preds = %502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  br label %663, !dbg !1050

; <label>:524:                                    ; preds = %483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  %525 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1053
  %526 = getelementptr inbounds i8, i8* %525, i64 1, !dbg !1053
  %527 = load i32, i32* %7, align 8, !dbg !1053, !tbaa !676
  %528 = sext i32 %527 to i64, !dbg !1053
  %529 = getelementptr inbounds i8, i8* %526, i64 %528, !dbg !1053
  %530 = load i8, i8* %529, align 1, !dbg !1053, !tbaa !404
  %531 = and i8 %530, 4, !dbg !1053
  %532 = icmp eq i8 %531, 0, !dbg !1053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1055
  br i1 %532, label %663, label %533, !dbg !1055

; <label>:533:                                    ; preds = %524
  tail call fastcc void @read_numeral(%struct.LexState* nonnull %0, %union.SemInfo* %1) #6, !dbg !1056
  br label %663, !dbg !1058

; <label>:534:                                    ; preds = %9
  %535 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1059
  %536 = getelementptr inbounds i8, i8* %535, i64 1, !dbg !1059
  %537 = load i32, i32* %7, align 8, !dbg !1059, !tbaa !676
  %538 = sext i32 %537 to i64, !dbg !1059
  %539 = getelementptr inbounds i8, i8* %536, i64 %538, !dbg !1059
  %540 = load i8, i8* %539, align 1, !dbg !1059, !tbaa !404
  %541 = and i8 %540, 8, !dbg !1059
  %542 = icmp eq i8 %541, 0, !dbg !1059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1060
  br i1 %542, label %559, label %543, !dbg !1060

; <label>:543:                                    ; preds = %534
  %544 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !1061, !tbaa !660
  %545 = getelementptr inbounds %struct.Zio, %struct.Zio* %544, i64 0, i32 0, !dbg !1061
  %546 = load i64, i64* %545, align 8, !dbg !1061, !tbaa !673
  %547 = add i64 %546, -1, !dbg !1061
  store i64 %547, i64* %545, align 8, !dbg !1061, !tbaa !673
  %548 = icmp eq i64 %546, 0, !dbg !1061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1061
  br i1 %548, label %555, label %549, !dbg !1061

; <label>:549:                                    ; preds = %543
  %550 = getelementptr inbounds %struct.Zio, %struct.Zio* %544, i64 0, i32 1, !dbg !1061
  %551 = load i8*, i8** %550, align 8, !dbg !1061, !tbaa !675
  %552 = getelementptr inbounds i8, i8* %551, i64 1, !dbg !1061
  store i8* %552, i8** %550, align 8, !dbg !1061, !tbaa !675
  %553 = load i8, i8* %551, align 1, !dbg !1061, !tbaa !404
  %554 = zext i8 %553 to i32, !dbg !1061
  br label %557, !dbg !1061

; <label>:555:                                    ; preds = %543
  %556 = tail call i32 @luaZ_fill(%struct.Zio* %544) #4, !dbg !1061
  br label %557, !dbg !1061

; <label>:557:                                    ; preds = %555, %549
  %558 = phi i32 [ %554, %549 ], [ %556, %555 ], !dbg !1061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1061
  store i32 %558, i32* %7, align 8, !dbg !1061, !tbaa !676
  br label %12, !dbg !1063

; <label>:559:                                    ; preds = %534
  %560 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1064
  %561 = getelementptr inbounds i8, i8* %560, i64 1, !dbg !1064
  %562 = load i32, i32* %7, align 8, !dbg !1064, !tbaa !676
  %563 = sext i32 %562 to i64, !dbg !1064
  %564 = getelementptr inbounds i8, i8* %561, i64 %563, !dbg !1064
  %565 = load i8, i8* %564, align 1, !dbg !1064, !tbaa !404
  %566 = and i8 %565, 4, !dbg !1064
  %567 = icmp eq i8 %566, 0, !dbg !1064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  br i1 %567, label %569, label %568, !dbg !1065

; <label>:568:                                    ; preds = %559
  tail call fastcc void @read_numeral(%struct.LexState* nonnull %0, %union.SemInfo* %1) #6, !dbg !1066
  br label %663, !dbg !1068

; <label>:569:                                    ; preds = %559
  %570 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1069
  %571 = getelementptr inbounds i8, i8* %570, i64 1, !dbg !1069
  %572 = load i32, i32* %7, align 8, !dbg !1069, !tbaa !676
  %573 = sext i32 %572 to i64, !dbg !1069
  %574 = getelementptr inbounds i8, i8* %571, i64 %573, !dbg !1069
  %575 = load i8, i8* %574, align 1, !dbg !1069, !tbaa !404
  %576 = and i8 %575, 3, !dbg !1069
  %577 = icmp eq i8 %576, 0, !dbg !1069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1070
  br i1 %577, label %578, label %580, !dbg !1070

; <label>:578:                                    ; preds = %569
  %579 = icmp eq i32 %572, 95, !dbg !1071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  br i1 %579, label %580, label %647, !dbg !1072

; <label>:580:                                    ; preds = %569, %578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1073
  br label %581, !dbg !1073

; <label>:581:                                    ; preds = %608, %580
  %582 = phi i32 [ %572, %580 ], [ %600, %608 ], !dbg !1074
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %582) #6, !dbg !1074
  %583 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !1074, !tbaa !660
  %584 = getelementptr inbounds %struct.Zio, %struct.Zio* %583, i64 0, i32 0, !dbg !1074
  %585 = load i64, i64* %584, align 8, !dbg !1074, !tbaa !673
  %586 = add i64 %585, -1, !dbg !1074
  store i64 %586, i64* %584, align 8, !dbg !1074, !tbaa !673
  %587 = icmp eq i64 %585, 0, !dbg !1074
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1074
  br i1 %587, label %594, label %588, !dbg !1074

; <label>:588:                                    ; preds = %581
  %589 = getelementptr inbounds %struct.Zio, %struct.Zio* %583, i64 0, i32 1, !dbg !1074
  %590 = load i8*, i8** %589, align 8, !dbg !1074, !tbaa !675
  %591 = getelementptr inbounds i8, i8* %590, i64 1, !dbg !1074
  store i8* %591, i8** %589, align 8, !dbg !1074, !tbaa !675
  %592 = load i8, i8* %590, align 1, !dbg !1074, !tbaa !404
  %593 = zext i8 %592 to i32, !dbg !1074
  br label %596, !dbg !1074

; <label>:594:                                    ; preds = %581
  %595 = tail call i32 @luaZ_fill(%struct.Zio* %583) #4, !dbg !1074
  br label %596, !dbg !1074

; <label>:596:                                    ; preds = %594, %588
  %597 = phi i32 [ %593, %588 ], [ %595, %594 ], !dbg !1074
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1074
  store i32 %597, i32* %7, align 8, !dbg !1074, !tbaa !676
  %598 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1076
  %599 = getelementptr inbounds i8, i8* %598, i64 1, !dbg !1076
  %600 = load i32, i32* %7, align 8, !dbg !1076, !tbaa !676
  %601 = sext i32 %600 to i64, !dbg !1076
  %602 = getelementptr inbounds i8, i8* %599, i64 %601, !dbg !1076
  %603 = load i8, i8* %602, align 1, !dbg !1076, !tbaa !404
  %604 = and i8 %603, 7, !dbg !1076
  %605 = icmp eq i8 %604, 0, !dbg !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1077
  br i1 %605, label %606, label %608, !dbg !1077

; <label>:606:                                    ; preds = %596
  %607 = icmp eq i32 %600, 95, !dbg !1078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1079
  br i1 %607, label %608, label %609, !dbg !1079

; <label>:608:                                    ; preds = %606, %596
  br label %581, !dbg !1074, !llvm.loop !1080

; <label>:609:                                    ; preds = %606
  %610 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !dbg !1082, !tbaa !553
  %611 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %610, i64 0, i32 0, !dbg !1082
  %612 = load i8*, i8** %611, align 8, !dbg !1082, !tbaa !554
  %613 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %610, i64 0, i32 1, !dbg !1083
  %614 = load i64, i64* %613, align 8, !dbg !1083, !tbaa !763
  %615 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1088
  %616 = load %struct.lua_State*, %struct.lua_State** %615, align 8, !dbg !1088, !tbaa !504
  %617 = tail call %union.TString* @luaS_newlstr(%struct.lua_State* %616, i8* %612, i64 %614) #4, !dbg !1090
  %618 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1092
  %619 = load %struct.FuncState*, %struct.FuncState** %618, align 8, !dbg !1092, !tbaa !614
  %620 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %619, i64 0, i32 1, !dbg !1093
  %621 = load %struct.Table*, %struct.Table** %620, align 8, !dbg !1093, !tbaa !616
  %622 = tail call %struct.lua_TValue* @luaH_setstr(%struct.lua_State* %616, %struct.Table* %621, %union.TString* %617) #4, !dbg !1094
  %623 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %622, i64 0, i32 1, !dbg !1096
  %624 = load i32, i32* %623, align 8, !dbg !1096, !tbaa !622
  %625 = icmp eq i32 %624, 0, !dbg !1096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1097
  br i1 %625, label %626, label %636, !dbg !1097

; <label>:626:                                    ; preds = %609
  %627 = bitcast %struct.lua_TValue* %622 to i32*, !dbg !1098
  store i32 1, i32* %627, align 8, !dbg !1098, !tbaa !404
  store i32 1, i32* %623, align 8, !dbg !1098, !tbaa !622
  %628 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %616, i64 0, i32 6, !dbg !1099
  %629 = load %struct.global_State*, %struct.global_State** %628, align 8, !dbg !1099, !tbaa !629
  %630 = getelementptr inbounds %struct.global_State, %struct.global_State* %629, i64 0, i32 14, !dbg !1099
  %631 = load i64, i64* %630, align 8, !dbg !1099, !tbaa !631
  %632 = getelementptr inbounds %struct.global_State, %struct.global_State* %629, i64 0, i32 13, !dbg !1099
  %633 = load i64, i64* %632, align 8, !dbg !1099, !tbaa !635
  %634 = icmp ult i64 %631, %633, !dbg !1099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1100
  br i1 %634, label %636, label %635, !dbg !1100

; <label>:635:                                    ; preds = %626
  tail call void @luaC_step(%struct.lua_State* nonnull %616) #4, !dbg !1099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1099
  br label %636, !dbg !1099

; <label>:636:                                    ; preds = %609, %626, %635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1101
  %637 = getelementptr inbounds %union.TString, %union.TString* %617, i64 0, i32 0, i32 3, !dbg !1103
  %638 = load i8, i8* %637, align 2, !dbg !1103, !tbaa !404
  %639 = icmp eq i8 %638, 0, !dbg !1105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  br i1 %639, label %643, label %640, !dbg !1106

; <label>:640:                                    ; preds = %636
  %641 = zext i8 %638 to i32, !dbg !1107
  %642 = or i32 %641, 256, !dbg !1108
  br label %645, !dbg !1109

; <label>:643:                                    ; preds = %636
  %644 = bitcast %union.SemInfo* %1 to %union.TString**, !dbg !1110
  store %union.TString* %617, %union.TString** %644, align 8, !dbg !1112, !tbaa !404
  br label %645, !dbg !1113

; <label>:645:                                    ; preds = %643, %640
  %646 = phi i32 [ %642, %640 ], [ 285, %643 ], !dbg !1114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1115
  br label %663

; <label>:647:                                    ; preds = %578
  %648 = load %struct.Zio*, %struct.Zio** %8, align 8, !dbg !1117, !tbaa !660
  %649 = getelementptr inbounds %struct.Zio, %struct.Zio* %648, i64 0, i32 0, !dbg !1117
  %650 = load i64, i64* %649, align 8, !dbg !1117, !tbaa !673
  %651 = add i64 %650, -1, !dbg !1117
  store i64 %651, i64* %649, align 8, !dbg !1117, !tbaa !673
  %652 = icmp eq i64 %650, 0, !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1117
  br i1 %652, label %659, label %653, !dbg !1117

; <label>:653:                                    ; preds = %647
  %654 = getelementptr inbounds %struct.Zio, %struct.Zio* %648, i64 0, i32 1, !dbg !1117
  %655 = load i8*, i8** %654, align 8, !dbg !1117, !tbaa !675
  %656 = getelementptr inbounds i8, i8* %655, i64 1, !dbg !1117
  store i8* %656, i8** %654, align 8, !dbg !1117, !tbaa !675
  %657 = load i8, i8* %655, align 1, !dbg !1117, !tbaa !404
  %658 = zext i8 %657 to i32, !dbg !1117
  br label %661, !dbg !1117

; <label>:659:                                    ; preds = %647
  %660 = tail call i32 @luaZ_fill(%struct.Zio* %648) #4, !dbg !1117
  br label %661, !dbg !1117

; <label>:661:                                    ; preds = %659, %653
  %662 = phi i32 [ %658, %653 ], [ %660, %659 ], !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1117
  store i32 %662, i32* %7, align 8, !dbg !1117, !tbaa !676
  br label %663

; <label>:663:                                    ; preds = %9, %27, %524, %220, %187, %154, %121, %523, %521, %88, %661, %645, %568, %533, %467, %237, %204, %171, %138
  %664 = phi i32 [ 284, %568 ], [ %646, %645 ], [ %572, %661 ], [ 284, %533 ], [ 286, %467 ], [ 283, %237 ], [ 281, %204 ], [ 282, %171 ], [ 280, %138 ], [ %89, %88 ], [ 278, %523 ], [ 279, %521 ], [ 61, %121 ], [ 60, %154 ], [ 62, %187 ], [ 126, %220 ], [ 46, %524 ], [ 287, %9 ], [ 45, %27 ], !dbg !1118
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1119
  ret i32 %664, !dbg !1119
}

; Function Attrs: noredzone nounwind
define hidden void @luaX_lookahead(%struct.LexState*) local_unnamed_addr #0 !dbg !1120 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4, i32 1, !dbg !1124
  %3 = tail call fastcc i32 @llex(%struct.LexState* %0, %union.SemInfo* nonnull %2) #6, !dbg !1125
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 4, i32 0, !dbg !1126
  store i32 %3, i32* %4, align 8, !dbg !1127, !tbaa !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1128
  ret void, !dbg !1128
}

; Function Attrs: noredzone nounwind
define internal fastcc void @save(%struct.LexState* nocapture readonly, i32) unnamed_addr #0 !dbg !1129 {
  %3 = alloca [80 x i8], align 16
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8, !dbg !1144
  %5 = load %struct.Mbuffer*, %struct.Mbuffer** %4, align 8, !dbg !1144, !tbaa !553
  %6 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %5, i64 0, i32 1, !dbg !1146
  %7 = load i64, i64* %6, align 8, !dbg !1146, !tbaa !763
  %8 = add i64 %7, 1, !dbg !1147
  %9 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %5, i64 0, i32 2, !dbg !1148
  %10 = load i64, i64* %9, align 8, !dbg !1148, !tbaa !671
  %11 = icmp ugt i64 %8, %10, !dbg !1149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  br i1 %11, label %15, label %12, !dbg !1150

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %5, i64 0, i32 0
  %14 = load i8*, i8** %13, align 8, !dbg !1151, !tbaa !554
  br label %50, !dbg !1150

; <label>:15:                                     ; preds = %2
  %16 = icmp ugt i64 %10, 9223372036854775805, !dbg !1152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1153
  br i1 %16, label %19, label %17, !dbg !1153

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1154
  br label %32, !dbg !1153

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0, !dbg !1158
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %20) #5, !dbg !1158
  %21 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9, !dbg !1159
  %22 = load %union.TString*, %union.TString** %21, align 8, !dbg !1159, !tbaa !532
  %23 = getelementptr inbounds %union.TString, %union.TString* %22, i64 1, !dbg !1159
  %24 = bitcast %union.TString* %23 to i8*, !dbg !1159
  call void @luaO_chunkid(i8* nonnull %20, i8* nonnull %24, i64 80) #4, !dbg !1160
  %25 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1161
  %26 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !dbg !1161, !tbaa !504
  %27 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !1162
  %28 = load i32, i32* %27, align 4, !dbg !1162, !tbaa !536
  %29 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %20, i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0)) #4, !dbg !1163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  %30 = load %struct.lua_State*, %struct.lua_State** %25, align 8, !dbg !1165, !tbaa !504
  call void @luaD_throw(%struct.lua_State* %30, i32 3) #4, !dbg !1166
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %20) #5, !dbg !1167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1168
  %31 = load i64, i64* %9, align 8, !dbg !1169, !tbaa !671
  br label %32, !dbg !1168

; <label>:32:                                     ; preds = %17, %19
  %33 = phi %struct.lua_State** [ %18, %17 ], [ %25, %19 ], !dbg !1154
  %34 = phi i64 [ %10, %17 ], [ %31, %19 ], !dbg !1169
  %35 = shl i64 %34, 1, !dbg !1170
  %36 = icmp eq i64 %35, -2, !dbg !1154
  %37 = load %struct.lua_State*, %struct.lua_State** %33, align 8, !dbg !1154, !tbaa !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1154
  br i1 %36, label %42, label %38, !dbg !1154

; <label>:38:                                     ; preds = %32
  %39 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %5, i64 0, i32 0, !dbg !1154
  %40 = load i8*, i8** %39, align 8, !dbg !1154, !tbaa !554
  %41 = call i8* @luaM_realloc_(%struct.lua_State* %37, i8* %40, i64 %34, i64 %35) #4, !dbg !1154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1154
  br label %45, !dbg !1154

; <label>:42:                                     ; preds = %32
  %43 = call i8* @luaM_toobig(%struct.lua_State* %37) #4, !dbg !1154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1154
  %44 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %5, i64 0, i32 0, !dbg !1154
  br label %45, !dbg !1154

; <label>:45:                                     ; preds = %42, %38
  %46 = phi i8** [ %44, %42 ], [ %39, %38 ], !dbg !1154
  %47 = phi i8* [ %43, %42 ], [ %41, %38 ], !dbg !1154
  store i8* %47, i8** %46, align 8, !dbg !1154, !tbaa !554
  store i64 %35, i64* %9, align 8, !dbg !1154, !tbaa !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  %48 = load i64, i64* %6, align 8, !dbg !1173, !tbaa !763
  %49 = add i64 %48, 1, !dbg !1173
  br label %50, !dbg !1172

; <label>:50:                                     ; preds = %12, %45
  %51 = phi i64 [ %8, %12 ], [ %49, %45 ], !dbg !1173
  %52 = phi i64 [ %7, %12 ], [ %48, %45 ], !dbg !1173
  %53 = phi i8* [ %14, %12 ], [ %47, %45 ], !dbg !1151
  %54 = trunc i32 %1 to i8, !dbg !1174
  store i64 %51, i64* %6, align 8, !dbg !1173, !tbaa !763
  %55 = getelementptr inbounds i8, i8* %53, i64 %52, !dbg !1175
  store i8 %54, i8* %55, align 1, !dbg !1176, !tbaa !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1177
  ret void, !dbg !1177
}

; Function Attrs: noredzone
declare hidden i8* @luaM_toobig(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @inclinenumber(%struct.LexState* nocapture) unnamed_addr #0 !dbg !1178 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0, !dbg !1183
  %3 = load i32, i32* %2, align 8, !dbg !1183, !tbaa !676
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7, !dbg !1185
  %5 = load %struct.Zio*, %struct.Zio** %4, align 8, !dbg !1185, !tbaa !660
  %6 = getelementptr inbounds %struct.Zio, %struct.Zio* %5, i64 0, i32 0, !dbg !1185
  %7 = load i64, i64* %6, align 8, !dbg !1185, !tbaa !673
  %8 = add i64 %7, -1, !dbg !1185
  store i64 %8, i64* %6, align 8, !dbg !1185, !tbaa !673
  %9 = icmp eq i64 %7, 0, !dbg !1185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1185
  br i1 %9, label %16, label %10, !dbg !1185

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.Zio, %struct.Zio* %5, i64 0, i32 1, !dbg !1185
  %12 = load i8*, i8** %11, align 8, !dbg !1185, !tbaa !675
  %13 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1185
  store i8* %13, i8** %11, align 8, !dbg !1185, !tbaa !675
  %14 = load i8, i8* %12, align 1, !dbg !1185, !tbaa !404
  %15 = zext i8 %14 to i32, !dbg !1185
  br label %18, !dbg !1185

; <label>:16:                                     ; preds = %1
  %17 = tail call i32 @luaZ_fill(%struct.Zio* %5) #4, !dbg !1185
  br label %18, !dbg !1185

; <label>:18:                                     ; preds = %16, %10
  %19 = phi i32 [ %15, %10 ], [ %17, %16 ], !dbg !1185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1185
  store i32 %19, i32* %2, align 8, !dbg !1185, !tbaa !676
  %20 = icmp eq i32 %19, 10, !dbg !1186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  br i1 %20, label %23, label %21, !dbg !1186

; <label>:21:                                     ; preds = %18
  %22 = icmp eq i32 %19, 13, !dbg !1186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1188
  br i1 %22, label %23, label %41, !dbg !1188

; <label>:23:                                     ; preds = %21, %18
  %24 = icmp eq i32 %19, %3, !dbg !1189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1190
  br i1 %24, label %41, label %25, !dbg !1190

; <label>:25:                                     ; preds = %23
  %26 = load %struct.Zio*, %struct.Zio** %4, align 8, !dbg !1191, !tbaa !660
  %27 = getelementptr inbounds %struct.Zio, %struct.Zio* %26, i64 0, i32 0, !dbg !1191
  %28 = load i64, i64* %27, align 8, !dbg !1191, !tbaa !673
  %29 = add i64 %28, -1, !dbg !1191
  store i64 %29, i64* %27, align 8, !dbg !1191, !tbaa !673
  %30 = icmp eq i64 %28, 0, !dbg !1191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1191
  br i1 %30, label %37, label %31, !dbg !1191

; <label>:31:                                     ; preds = %25
  %32 = getelementptr inbounds %struct.Zio, %struct.Zio* %26, i64 0, i32 1, !dbg !1191
  %33 = load i8*, i8** %32, align 8, !dbg !1191, !tbaa !675
  %34 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !1191
  store i8* %34, i8** %32, align 8, !dbg !1191, !tbaa !675
  %35 = load i8, i8* %33, align 1, !dbg !1191, !tbaa !404
  %36 = zext i8 %35 to i32, !dbg !1191
  br label %39, !dbg !1191

; <label>:37:                                     ; preds = %25
  %38 = tail call i32 @luaZ_fill(%struct.Zio* %26) #4, !dbg !1191
  br label %39, !dbg !1191

; <label>:39:                                     ; preds = %37, %31
  %40 = phi i32 [ %36, %31 ], [ %38, %37 ], !dbg !1191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1191
  store i32 %40, i32* %2, align 8, !dbg !1191, !tbaa !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1191
  br label %41, !dbg !1191

; <label>:41:                                     ; preds = %23, %39, %21
  %42 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !1192
  %43 = load i32, i32* %42, align 4, !dbg !1194, !tbaa !536
  %44 = add nsw i32 %43, 1, !dbg !1194
  store i32 %44, i32* %42, align 4, !dbg !1194, !tbaa !536
  %45 = icmp sgt i32 %43, 2147483643, !dbg !1195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  br i1 %45, label %46, label %49, !dbg !1196

; <label>:46:                                     ; preds = %41
  %47 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 3, i32 0, !dbg !1200
  %48 = load i32, i32* %47, align 8, !dbg !1200, !tbaa !589
  tail call void @luaX_lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.38, i64 0, i64 0), i32 %48) #4, !dbg !1201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1203
  br label %49, !dbg !1203

; <label>:49:                                     ; preds = %46, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1204
  ret void, !dbg !1204
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @skip_sep(%struct.LexState* nocapture) unnamed_addr #0 !dbg !1205 {
  %2 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0, !dbg !1214
  %3 = load i32, i32* %2, align 8, !dbg !1214, !tbaa !676
  tail call fastcc void @save(%struct.LexState* %0, i32 %3) #6, !dbg !1216
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7, !dbg !1216
  %5 = load %struct.Zio*, %struct.Zio** %4, align 8, !dbg !1216, !tbaa !660
  %6 = getelementptr inbounds %struct.Zio, %struct.Zio* %5, i64 0, i32 0, !dbg !1216
  %7 = load i64, i64* %6, align 8, !dbg !1216, !tbaa !673
  %8 = add i64 %7, -1, !dbg !1216
  store i64 %8, i64* %6, align 8, !dbg !1216, !tbaa !673
  %9 = icmp eq i64 %7, 0, !dbg !1216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  br i1 %9, label %16, label %10, !dbg !1216

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds %struct.Zio, %struct.Zio* %5, i64 0, i32 1, !dbg !1216
  %12 = load i8*, i8** %11, align 8, !dbg !1216, !tbaa !675
  %13 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1216
  store i8* %13, i8** %11, align 8, !dbg !1216, !tbaa !675
  %14 = load i8, i8* %12, align 1, !dbg !1216, !tbaa !404
  %15 = zext i8 %14 to i32, !dbg !1216
  br label %18, !dbg !1216

; <label>:16:                                     ; preds = %1
  %17 = tail call i32 @luaZ_fill(%struct.Zio* %5) #4, !dbg !1216
  br label %18, !dbg !1216

; <label>:18:                                     ; preds = %16, %10
  %19 = phi i32 [ %15, %10 ], [ %17, %16 ], !dbg !1216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  store i32 %19, i32* %2, align 8, !dbg !1216, !tbaa !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1217
  %20 = icmp eq i32 %19, 61, !dbg !1218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1217
  br i1 %20, label %21, label %40, !dbg !1217

; <label>:21:                                     ; preds = %18, %36
  %22 = phi i32 [ %38, %36 ], [ 0, %18 ]
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 61) #6, !dbg !1219
  %23 = load %struct.Zio*, %struct.Zio** %4, align 8, !dbg !1219, !tbaa !660
  %24 = getelementptr inbounds %struct.Zio, %struct.Zio* %23, i64 0, i32 0, !dbg !1219
  %25 = load i64, i64* %24, align 8, !dbg !1219, !tbaa !673
  %26 = add i64 %25, -1, !dbg !1219
  store i64 %26, i64* %24, align 8, !dbg !1219, !tbaa !673
  %27 = icmp eq i64 %25, 0, !dbg !1219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1219
  br i1 %27, label %34, label %28, !dbg !1219

; <label>:28:                                     ; preds = %21
  %29 = getelementptr inbounds %struct.Zio, %struct.Zio* %23, i64 0, i32 1, !dbg !1219
  %30 = load i8*, i8** %29, align 8, !dbg !1219, !tbaa !675
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1219
  store i8* %31, i8** %29, align 8, !dbg !1219, !tbaa !675
  %32 = load i8, i8* %30, align 1, !dbg !1219, !tbaa !404
  %33 = zext i8 %32 to i32, !dbg !1219
  br label %36, !dbg !1219

; <label>:34:                                     ; preds = %21
  %35 = tail call i32 @luaZ_fill(%struct.Zio* %23) #4, !dbg !1219
  br label %36, !dbg !1219

; <label>:36:                                     ; preds = %34, %28
  %37 = phi i32 [ %33, %28 ], [ %35, %34 ], !dbg !1219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1219
  store i32 %37, i32* %2, align 8, !dbg !1219, !tbaa !676
  %38 = add nuw nsw i32 %22, 1, !dbg !1221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1217
  %39 = icmp eq i32 %37, 61, !dbg !1218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1217
  br i1 %39, label %21, label %40, !dbg !1217, !llvm.loop !1222

; <label>:40:                                     ; preds = %36, %18
  %41 = phi i32 [ %19, %18 ], [ %37, %36 ], !dbg !1224
  %42 = phi i32 [ 0, %18 ], [ %38, %36 ], !dbg !1225
  %43 = icmp ne i32 %41, %3, !dbg !1226
  %44 = sext i1 %43 to i32, !dbg !1227
  %45 = xor i32 %42, %44, !dbg !1227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  ret i32 %45, !dbg !1228
}

; Function Attrs: noredzone nounwind
define internal fastcc void @read_long_string(%struct.LexState* nocapture, %union.SemInfo*, i32) unnamed_addr #0 !dbg !1229 {
  %4 = alloca [80 x i8], align 16
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0, !dbg !1247
  %6 = load i32, i32* %5, align 8, !dbg !1247, !tbaa !676
  tail call fastcc void @save(%struct.LexState* %0, i32 %6) #6, !dbg !1247
  %7 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7, !dbg !1247
  %8 = load %struct.Zio*, %struct.Zio** %7, align 8, !dbg !1247, !tbaa !660
  %9 = getelementptr inbounds %struct.Zio, %struct.Zio* %8, i64 0, i32 0, !dbg !1247
  %10 = load i64, i64* %9, align 8, !dbg !1247, !tbaa !673
  %11 = add i64 %10, -1, !dbg !1247
  store i64 %11, i64* %9, align 8, !dbg !1247, !tbaa !673
  %12 = icmp eq i64 %10, 0, !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  br i1 %12, label %19, label %13, !dbg !1247

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.Zio, %struct.Zio* %8, i64 0, i32 1, !dbg !1247
  %15 = load i8*, i8** %14, align 8, !dbg !1247, !tbaa !675
  %16 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !1247
  store i8* %16, i8** %14, align 8, !dbg !1247, !tbaa !675
  %17 = load i8, i8* %15, align 1, !dbg !1247, !tbaa !404
  %18 = zext i8 %17 to i32, !dbg !1247
  br label %21, !dbg !1247

; <label>:19:                                     ; preds = %3
  %20 = tail call i32 @luaZ_fill(%struct.Zio* %8) #4, !dbg !1247
  br label %21, !dbg !1247

; <label>:21:                                     ; preds = %19, %13
  %22 = phi i32 [ %18, %13 ], [ %20, %19 ], !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  store i32 %22, i32* %5, align 8, !dbg !1247, !tbaa !676
  %23 = icmp eq i32 %22, 10, !dbg !1248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  br i1 %23, label %26, label %24, !dbg !1248

; <label>:24:                                     ; preds = %21
  %25 = icmp eq i32 %22, 13, !dbg !1248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1250
  br i1 %25, label %26, label %27, !dbg !1250

; <label>:26:                                     ; preds = %24, %21
  tail call fastcc void @inclinenumber(%struct.LexState* nonnull %0) #6, !dbg !1251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1251
  br label %27, !dbg !1251

; <label>:27:                                     ; preds = %26, %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1252
  %28 = icmp eq %union.SemInfo* %1, null
  %29 = select i1 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0)
  %30 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %31 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9
  %32 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6
  %33 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1
  %34 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8
  %35 = icmp eq i32 %2, 0
  br label %36, !dbg !1252

; <label>:36:                                     ; preds = %126, %27
  %37 = load i32, i32* %5, align 8, !dbg !1253, !tbaa !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1254
  switch i32 %37, label %93 [
    i32 -1, label %38
    i32 91, label %48
    i32 93, label %69
    i32 10, label %89
    i32 13, label %89
  ], !dbg !1254

; <label>:38:                                     ; preds = %36
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %30) #5, !dbg !1258
  %39 = load %union.TString*, %union.TString** %31, align 8, !dbg !1259, !tbaa !532
  %40 = getelementptr inbounds %union.TString, %union.TString* %39, i64 1, !dbg !1259
  %41 = bitcast %union.TString* %40 to i8*, !dbg !1259
  call void @luaO_chunkid(i8* nonnull %30, i8* nonnull %41, i64 80) #4, !dbg !1260
  %42 = load %struct.lua_State*, %struct.lua_State** %32, align 8, !dbg !1261, !tbaa !504
  %43 = load i32, i32* %33, align 4, !dbg !1262, !tbaa !536
  %44 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %30, i32 %43, i8* %29) #4, !dbg !1263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1264
  %45 = load %struct.lua_State*, %struct.lua_State** %32, align 8, !dbg !1265, !tbaa !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1277
  %46 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0)) #4, !dbg !1278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1278
  %47 = load %struct.lua_State*, %struct.lua_State** %32, align 8, !dbg !1279, !tbaa !504
  call void @luaD_throw(%struct.lua_State* %47, i32 3) #4, !dbg !1280
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %30) #5, !dbg !1281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1282
  br label %126, !dbg !1282

; <label>:48:                                     ; preds = %36
  %49 = call fastcc i32 @skip_sep(%struct.LexState* nonnull %0) #6, !dbg !1283
  %50 = icmp eq i32 %49, %2, !dbg !1286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  br i1 %50, label %51, label %126, !dbg !1287

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* %5, align 8, !dbg !1288, !tbaa !676
  call fastcc void @save(%struct.LexState* nonnull %0, i32 %52) #6, !dbg !1288
  %53 = load %struct.Zio*, %struct.Zio** %7, align 8, !dbg !1288, !tbaa !660
  %54 = getelementptr inbounds %struct.Zio, %struct.Zio* %53, i64 0, i32 0, !dbg !1288
  %55 = load i64, i64* %54, align 8, !dbg !1288, !tbaa !673
  %56 = add i64 %55, -1, !dbg !1288
  store i64 %56, i64* %54, align 8, !dbg !1288, !tbaa !673
  %57 = icmp eq i64 %55, 0, !dbg !1288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1288
  br i1 %57, label %64, label %58, !dbg !1288

; <label>:58:                                     ; preds = %51
  %59 = getelementptr inbounds %struct.Zio, %struct.Zio* %53, i64 0, i32 1, !dbg !1288
  %60 = load i8*, i8** %59, align 8, !dbg !1288, !tbaa !675
  %61 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1288
  store i8* %61, i8** %59, align 8, !dbg !1288, !tbaa !675
  %62 = load i8, i8* %60, align 1, !dbg !1288, !tbaa !404
  %63 = zext i8 %62 to i32, !dbg !1288
  br label %66, !dbg !1288

; <label>:64:                                     ; preds = %51
  %65 = call i32 @luaZ_fill(%struct.Zio* %53) #4, !dbg !1288
  br label %66, !dbg !1288

; <label>:66:                                     ; preds = %64, %58
  %67 = phi i32 [ %63, %58 ], [ %65, %64 ], !dbg !1288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1288
  store i32 %67, i32* %5, align 8, !dbg !1288, !tbaa !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1290
  br i1 %35, label %68, label %126, !dbg !1290

; <label>:68:                                     ; preds = %66
  call void @luaX_lexerror(%struct.LexState* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.41, i64 0, i64 0), i32 91) #6, !dbg !1291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1291
  br label %126, !dbg !1291

; <label>:69:                                     ; preds = %36
  %70 = call fastcc i32 @skip_sep(%struct.LexState* nonnull %0) #6, !dbg !1293
  %71 = icmp eq i32 %70, %2, !dbg !1296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1297
  br i1 %71, label %72, label %126, !dbg !1297

; <label>:72:                                     ; preds = %69
  %73 = load i32, i32* %5, align 8, !dbg !1298, !tbaa !676
  call fastcc void @save(%struct.LexState* nonnull %0, i32 %73) #6, !dbg !1298
  %74 = load %struct.Zio*, %struct.Zio** %7, align 8, !dbg !1298, !tbaa !660
  %75 = getelementptr inbounds %struct.Zio, %struct.Zio* %74, i64 0, i32 0, !dbg !1298
  %76 = load i64, i64* %75, align 8, !dbg !1298, !tbaa !673
  %77 = add i64 %76, -1, !dbg !1298
  store i64 %77, i64* %75, align 8, !dbg !1298, !tbaa !673
  %78 = icmp eq i64 %76, 0, !dbg !1298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1298
  br i1 %78, label %85, label %79, !dbg !1298

; <label>:79:                                     ; preds = %72
  %80 = getelementptr inbounds %struct.Zio, %struct.Zio* %74, i64 0, i32 1, !dbg !1298
  %81 = load i8*, i8** %80, align 8, !dbg !1298, !tbaa !675
  %82 = getelementptr inbounds i8, i8* %81, i64 1, !dbg !1298
  store i8* %82, i8** %80, align 8, !dbg !1298, !tbaa !675
  %83 = load i8, i8* %81, align 1, !dbg !1298, !tbaa !404
  %84 = zext i8 %83 to i32, !dbg !1298
  br label %87, !dbg !1298

; <label>:85:                                     ; preds = %72
  %86 = call i32 @luaZ_fill(%struct.Zio* %74) #4, !dbg !1298
  br label %87, !dbg !1298

; <label>:87:                                     ; preds = %85, %79
  %88 = phi i32 [ %84, %79 ], [ %86, %85 ], !dbg !1298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1298
  store i32 %88, i32* %5, align 8, !dbg !1298, !tbaa !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1300
  br i1 %28, label %161, label %127, !dbg !1300

; <label>:89:                                     ; preds = %36, %36
  call fastcc void @save(%struct.LexState* nonnull %0, i32 10) #6, !dbg !1301
  call fastcc void @inclinenumber(%struct.LexState* nonnull %0) #6, !dbg !1303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1304
  br i1 %28, label %90, label %126, !dbg !1304

; <label>:90:                                     ; preds = %89
  %91 = load %struct.Mbuffer*, %struct.Mbuffer** %34, align 8, !dbg !1305, !tbaa !553
  %92 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %91, i64 0, i32 1, !dbg !1305
  store i64 0, i64* %92, align 8, !dbg !1305, !tbaa !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  br label %126, !dbg !1305

; <label>:93:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1307
  br i1 %28, label %110, label %94, !dbg !1307

; <label>:94:                                     ; preds = %93
  call fastcc void @save(%struct.LexState* nonnull %0, i32 %37) #6, !dbg !1309
  %95 = load %struct.Zio*, %struct.Zio** %7, align 8, !dbg !1309, !tbaa !660
  %96 = getelementptr inbounds %struct.Zio, %struct.Zio* %95, i64 0, i32 0, !dbg !1309
  %97 = load i64, i64* %96, align 8, !dbg !1309, !tbaa !673
  %98 = add i64 %97, -1, !dbg !1309
  store i64 %98, i64* %96, align 8, !dbg !1309, !tbaa !673
  %99 = icmp eq i64 %97, 0, !dbg !1309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  br i1 %99, label %106, label %100, !dbg !1309

; <label>:100:                                    ; preds = %94
  %101 = getelementptr inbounds %struct.Zio, %struct.Zio* %95, i64 0, i32 1, !dbg !1309
  %102 = load i8*, i8** %101, align 8, !dbg !1309, !tbaa !675
  %103 = getelementptr inbounds i8, i8* %102, i64 1, !dbg !1309
  store i8* %103, i8** %101, align 8, !dbg !1309, !tbaa !675
  %104 = load i8, i8* %102, align 1, !dbg !1309, !tbaa !404
  %105 = zext i8 %104 to i32, !dbg !1309
  br label %108, !dbg !1309

; <label>:106:                                    ; preds = %94
  %107 = call i32 @luaZ_fill(%struct.Zio* %95) #4, !dbg !1309
  br label %108, !dbg !1309

; <label>:108:                                    ; preds = %106, %100
  %109 = phi i32 [ %105, %100 ], [ %107, %106 ], !dbg !1309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  store i32 %109, i32* %5, align 8, !dbg !1309, !tbaa !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  br label %126, !dbg !1309

; <label>:110:                                    ; preds = %93
  %111 = load %struct.Zio*, %struct.Zio** %7, align 8, !dbg !1311, !tbaa !660
  %112 = getelementptr inbounds %struct.Zio, %struct.Zio* %111, i64 0, i32 0, !dbg !1311
  %113 = load i64, i64* %112, align 8, !dbg !1311, !tbaa !673
  %114 = add i64 %113, -1, !dbg !1311
  store i64 %114, i64* %112, align 8, !dbg !1311, !tbaa !673
  %115 = icmp eq i64 %113, 0, !dbg !1311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1311
  br i1 %115, label %122, label %116, !dbg !1311

; <label>:116:                                    ; preds = %110
  %117 = getelementptr inbounds %struct.Zio, %struct.Zio* %111, i64 0, i32 1, !dbg !1311
  %118 = load i8*, i8** %117, align 8, !dbg !1311, !tbaa !675
  %119 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !1311
  store i8* %119, i8** %117, align 8, !dbg !1311, !tbaa !675
  %120 = load i8, i8* %118, align 1, !dbg !1311, !tbaa !404
  %121 = zext i8 %120 to i32, !dbg !1311
  br label %124, !dbg !1311

; <label>:122:                                    ; preds = %110
  %123 = call i32 @luaZ_fill(%struct.Zio* %111) #4, !dbg !1311
  br label %124, !dbg !1311

; <label>:124:                                    ; preds = %122, %116
  %125 = phi i32 [ %121, %116 ], [ %123, %122 ], !dbg !1311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1311
  store i32 %125, i32* %5, align 8, !dbg !1311, !tbaa !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %126

; <label>:126:                                    ; preds = %89, %108, %124, %90, %69, %48, %68, %66, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1312
  br label %36, !dbg !1312, !llvm.loop !1313

; <label>:127:                                    ; preds = %87
  %128 = load %struct.Mbuffer*, %struct.Mbuffer** %34, align 8, !dbg !1316, !tbaa !553
  %129 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %128, i64 0, i32 0, !dbg !1316
  %130 = load i8*, i8** %129, align 8, !dbg !1316, !tbaa !554
  %131 = add nsw i32 %2, 2, !dbg !1318
  %132 = sext i32 %131 to i64, !dbg !1319
  %133 = getelementptr inbounds i8, i8* %130, i64 %132, !dbg !1319
  %134 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %128, i64 0, i32 1, !dbg !1320
  %135 = load i64, i64* %134, align 8, !dbg !1320, !tbaa !763
  %136 = shl nsw i32 %131, 1, !dbg !1321
  %137 = sext i32 %136 to i64, !dbg !1322
  %138 = sub i64 %135, %137, !dbg !1323
  %139 = load %struct.lua_State*, %struct.lua_State** %32, align 8, !dbg !1328, !tbaa !504
  %140 = call %union.TString* @luaS_newlstr(%struct.lua_State* %139, i8* %133, i64 %138) #4, !dbg !1330
  %141 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 5, !dbg !1332
  %142 = load %struct.FuncState*, %struct.FuncState** %141, align 8, !dbg !1332, !tbaa !614
  %143 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %142, i64 0, i32 1, !dbg !1333
  %144 = load %struct.Table*, %struct.Table** %143, align 8, !dbg !1333, !tbaa !616
  %145 = call %struct.lua_TValue* @luaH_setstr(%struct.lua_State* %139, %struct.Table* %144, %union.TString* %140) #4, !dbg !1334
  %146 = getelementptr inbounds %struct.lua_TValue, %struct.lua_TValue* %145, i64 0, i32 1, !dbg !1336
  %147 = load i32, i32* %146, align 8, !dbg !1336, !tbaa !622
  %148 = icmp eq i32 %147, 0, !dbg !1336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  br i1 %148, label %149, label %159, !dbg !1337

; <label>:149:                                    ; preds = %127
  %150 = bitcast %struct.lua_TValue* %145 to i32*, !dbg !1338
  store i32 1, i32* %150, align 8, !dbg !1338, !tbaa !404
  store i32 1, i32* %146, align 8, !dbg !1338, !tbaa !622
  %151 = getelementptr inbounds %struct.lua_State, %struct.lua_State* %139, i64 0, i32 6, !dbg !1339
  %152 = load %struct.global_State*, %struct.global_State** %151, align 8, !dbg !1339, !tbaa !629
  %153 = getelementptr inbounds %struct.global_State, %struct.global_State* %152, i64 0, i32 14, !dbg !1339
  %154 = load i64, i64* %153, align 8, !dbg !1339, !tbaa !631
  %155 = getelementptr inbounds %struct.global_State, %struct.global_State* %152, i64 0, i32 13, !dbg !1339
  %156 = load i64, i64* %155, align 8, !dbg !1339, !tbaa !635
  %157 = icmp ult i64 %154, %156, !dbg !1339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  br i1 %157, label %159, label %158, !dbg !1340

; <label>:158:                                    ; preds = %149
  call void @luaC_step(%struct.lua_State* nonnull %139) #4, !dbg !1339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1339
  br label %159, !dbg !1339

; <label>:159:                                    ; preds = %127, %149, %158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1341
  %160 = bitcast %union.SemInfo* %1 to %union.TString**, !dbg !1342
  store %union.TString* %140, %union.TString** %160, align 8, !dbg !1343, !tbaa !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1344
  br label %161, !dbg !1344

; <label>:161:                                    ; preds = %87, %159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  ret void, !dbg !1345
}

; Function Attrs: noredzone nounwind
define internal fastcc void @read_numeral(%struct.LexState* nocapture, %union.SemInfo*) unnamed_addr #0 !dbg !1346 {
  %3 = alloca [80 x i8], align 16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1394
  %4 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 0
  %5 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 7
  %6 = load i32, i32* %4, align 8, !dbg !1395, !tbaa !676
  br label %7, !dbg !1394

; <label>:7:                                      ; preds = %34, %2
  %8 = phi i32 [ %6, %2 ], [ %26, %34 ], !dbg !1395
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %8) #6, !dbg !1395
  %9 = load %struct.Zio*, %struct.Zio** %5, align 8, !dbg !1395, !tbaa !660
  %10 = getelementptr inbounds %struct.Zio, %struct.Zio* %9, i64 0, i32 0, !dbg !1395
  %11 = load i64, i64* %10, align 8, !dbg !1395, !tbaa !673
  %12 = add i64 %11, -1, !dbg !1395
  store i64 %12, i64* %10, align 8, !dbg !1395, !tbaa !673
  %13 = icmp eq i64 %11, 0, !dbg !1395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1395
  br i1 %13, label %20, label %14, !dbg !1395

; <label>:14:                                     ; preds = %7
  %15 = getelementptr inbounds %struct.Zio, %struct.Zio* %9, i64 0, i32 1, !dbg !1395
  %16 = load i8*, i8** %15, align 8, !dbg !1395, !tbaa !675
  %17 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !1395
  store i8* %17, i8** %15, align 8, !dbg !1395, !tbaa !675
  %18 = load i8, i8* %16, align 1, !dbg !1395, !tbaa !404
  %19 = zext i8 %18 to i32, !dbg !1395
  br label %22, !dbg !1395

; <label>:20:                                     ; preds = %7
  %21 = tail call i32 @luaZ_fill(%struct.Zio* %9) #4, !dbg !1395
  br label %22, !dbg !1395

; <label>:22:                                     ; preds = %20, %14
  %23 = phi i32 [ %19, %14 ], [ %21, %20 ], !dbg !1395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1395
  store i32 %23, i32* %4, align 8, !dbg !1395, !tbaa !676
  %24 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1397
  %25 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !1397
  %26 = load i32, i32* %4, align 8, !dbg !1397, !tbaa !676
  %27 = sext i32 %26 to i64, !dbg !1397
  %28 = getelementptr inbounds i8, i8* %25, i64 %27, !dbg !1397
  %29 = load i8, i8* %28, align 1, !dbg !1397, !tbaa !404
  %30 = and i8 %29, 4, !dbg !1397
  %31 = icmp eq i8 %30, 0, !dbg !1397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1398
  br i1 %31, label %32, label %34, !dbg !1398

; <label>:32:                                     ; preds = %22
  %33 = icmp eq i32 %26, 46, !dbg !1399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  br i1 %33, label %34, label %35, !dbg !1400

; <label>:34:                                     ; preds = %32, %22
  br label %7, !dbg !1395, !llvm.loop !1401

; <label>:35:                                     ; preds = %32
  %36 = tail call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i32 %26) #4, !dbg !1407
  %37 = icmp eq i8* %36, null, !dbg !1407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1408
  br i1 %37, label %74, label %38, !dbg !1408

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %4, align 8, !dbg !1409, !tbaa !676
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %39) #4, !dbg !1409
  %40 = load %struct.Zio*, %struct.Zio** %5, align 8, !dbg !1409, !tbaa !660
  %41 = getelementptr inbounds %struct.Zio, %struct.Zio* %40, i64 0, i32 0, !dbg !1409
  %42 = load i64, i64* %41, align 8, !dbg !1409, !tbaa !673
  %43 = add i64 %42, -1, !dbg !1409
  store i64 %43, i64* %41, align 8, !dbg !1409, !tbaa !673
  %44 = icmp eq i64 %42, 0, !dbg !1409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1409
  br i1 %44, label %51, label %45, !dbg !1409

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds %struct.Zio, %struct.Zio* %40, i64 0, i32 1, !dbg !1409
  %47 = load i8*, i8** %46, align 8, !dbg !1409, !tbaa !675
  %48 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1409
  store i8* %48, i8** %46, align 8, !dbg !1409, !tbaa !675
  %49 = load i8, i8* %47, align 1, !dbg !1409, !tbaa !404
  %50 = zext i8 %49 to i32, !dbg !1409
  br label %53, !dbg !1409

; <label>:51:                                     ; preds = %38
  %52 = tail call i32 @luaZ_fill(%struct.Zio* %40) #4, !dbg !1409
  br label %53, !dbg !1409

; <label>:53:                                     ; preds = %51, %45
  %54 = phi i32 [ %50, %45 ], [ %52, %51 ], !dbg !1409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1409
  store i32 %54, i32* %4, align 8, !dbg !1409, !tbaa !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1412
  %55 = tail call i8* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i32 %54) #4, !dbg !1416
  %56 = icmp eq i8* %55, null, !dbg !1416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1417
  br i1 %56, label %74, label %57, !dbg !1417

; <label>:57:                                     ; preds = %53
  %58 = load i32, i32* %4, align 8, !dbg !1418, !tbaa !676
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %58) #4, !dbg !1418
  %59 = load %struct.Zio*, %struct.Zio** %5, align 8, !dbg !1418, !tbaa !660
  %60 = getelementptr inbounds %struct.Zio, %struct.Zio* %59, i64 0, i32 0, !dbg !1418
  %61 = load i64, i64* %60, align 8, !dbg !1418, !tbaa !673
  %62 = add i64 %61, -1, !dbg !1418
  store i64 %62, i64* %60, align 8, !dbg !1418, !tbaa !673
  %63 = icmp eq i64 %61, 0, !dbg !1418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1418
  br i1 %63, label %70, label %64, !dbg !1418

; <label>:64:                                     ; preds = %57
  %65 = getelementptr inbounds %struct.Zio, %struct.Zio* %59, i64 0, i32 1, !dbg !1418
  %66 = load i8*, i8** %65, align 8, !dbg !1418, !tbaa !675
  %67 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !1418
  store i8* %67, i8** %65, align 8, !dbg !1418, !tbaa !675
  %68 = load i8, i8* %66, align 1, !dbg !1418, !tbaa !404
  %69 = zext i8 %68 to i32, !dbg !1418
  br label %72, !dbg !1418

; <label>:70:                                     ; preds = %57
  %71 = tail call i32 @luaZ_fill(%struct.Zio* %59) #4, !dbg !1418
  br label %72, !dbg !1418

; <label>:72:                                     ; preds = %70, %64
  %73 = phi i32 [ %69, %64 ], [ %71, %70 ], !dbg !1418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1418
  store i32 %73, i32* %4, align 8, !dbg !1418, !tbaa !676
  br label %74, !dbg !1419

; <label>:74:                                     ; preds = %72, %53, %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1420
  br label %75, !dbg !1421

; <label>:75:                                     ; preds = %101, %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1421
  %76 = tail call i8* @__locale_ctype_ptr() #4, !dbg !1422
  %77 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !1422
  %78 = load i32, i32* %4, align 8, !dbg !1422, !tbaa !676
  %79 = sext i32 %78 to i64, !dbg !1422
  %80 = getelementptr inbounds i8, i8* %77, i64 %79, !dbg !1422
  %81 = load i8, i8* %80, align 1, !dbg !1422, !tbaa !404
  %82 = and i8 %81, 7, !dbg !1422
  %83 = icmp eq i8 %82, 0, !dbg !1422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1423
  br i1 %83, label %84, label %86, !dbg !1423

; <label>:84:                                     ; preds = %75
  %85 = icmp eq i32 %78, 95, !dbg !1424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1421
  br i1 %85, label %87, label %103, !dbg !1421

; <label>:86:                                     ; preds = %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1421
  br label %87

; <label>:87:                                     ; preds = %86, %84
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 %78) #6, !dbg !1425
  %88 = load %struct.Zio*, %struct.Zio** %5, align 8, !dbg !1425, !tbaa !660
  %89 = getelementptr inbounds %struct.Zio, %struct.Zio* %88, i64 0, i32 0, !dbg !1425
  %90 = load i64, i64* %89, align 8, !dbg !1425, !tbaa !673
  %91 = add i64 %90, -1, !dbg !1425
  store i64 %91, i64* %89, align 8, !dbg !1425, !tbaa !673
  %92 = icmp eq i64 %90, 0, !dbg !1425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  br i1 %92, label %99, label %93, !dbg !1425

; <label>:93:                                     ; preds = %87
  %94 = getelementptr inbounds %struct.Zio, %struct.Zio* %88, i64 0, i32 1, !dbg !1425
  %95 = load i8*, i8** %94, align 8, !dbg !1425, !tbaa !675
  %96 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !1425
  store i8* %96, i8** %94, align 8, !dbg !1425, !tbaa !675
  %97 = load i8, i8* %95, align 1, !dbg !1425, !tbaa !404
  %98 = zext i8 %97 to i32, !dbg !1425
  br label %101, !dbg !1425

; <label>:99:                                     ; preds = %87
  %100 = tail call i32 @luaZ_fill(%struct.Zio* %88) #4, !dbg !1425
  br label %101, !dbg !1425

; <label>:101:                                    ; preds = %99, %93
  %102 = phi i32 [ %98, %93 ], [ %100, %99 ], !dbg !1425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  store i32 %102, i32* %4, align 8, !dbg !1425, !tbaa !676
  br label %75, !dbg !1421, !llvm.loop !1426

; <label>:103:                                    ; preds = %84
  tail call fastcc void @save(%struct.LexState* nonnull %0, i32 0) #6, !dbg !1427
  %104 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 10, !dbg !1428
  %105 = load i8, i8* %104, align 8, !dbg !1428, !tbaa !652
  %106 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 8, !dbg !1442
  %107 = load %struct.Mbuffer*, %struct.Mbuffer** %106, align 8, !dbg !1442, !tbaa !553
  %108 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %107, i64 0, i32 1, !dbg !1442
  %109 = load i64, i64* %108, align 8, !dbg !1442, !tbaa !763
  %110 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %107, i64 0, i32 0, !dbg !1444
  %111 = load i8*, i8** %110, align 8, !dbg !1444, !tbaa !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1446
  %112 = icmp eq i64 %109, 0, !dbg !1446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1446
  br i1 %112, label %142, label %113, !dbg !1446

; <label>:113:                                    ; preds = %103
  %114 = and i64 %109, 1, !dbg !1447
  %115 = icmp eq i64 %114, 0, !dbg !1447
  br i1 %115, label %123, label %116, !dbg !1447

; <label>:116:                                    ; preds = %113
  %117 = add i64 %109, -1, !dbg !1447
  %118 = getelementptr inbounds i8, i8* %111, i64 %117, !dbg !1448
  %119 = load i8, i8* %118, align 1, !dbg !1448, !tbaa !404
  %120 = icmp eq i8 %119, 46, !dbg !1450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1451
  br i1 %120, label %121, label %122, !dbg !1451

; <label>:121:                                    ; preds = %116
  store i8 %105, i8* %118, align 1, !dbg !1452, !tbaa !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1453
  br label %122, !dbg !1453

; <label>:122:                                    ; preds = %121, %116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1446
  br label %123, !dbg !1446

; <label>:123:                                    ; preds = %113, %122
  %124 = phi i64 [ %109, %113 ], [ %117, %122 ]
  %125 = icmp eq i64 %109, 1, !dbg !1447
  br i1 %125, label %138, label %126, !dbg !1447

; <label>:126:                                    ; preds = %123, %255
  %127 = phi i64 [ %134, %255 ], [ %124, %123 ]
  %128 = add i64 %127, -1, !dbg !1447
  %129 = getelementptr inbounds i8, i8* %111, i64 %128, !dbg !1448
  %130 = load i8, i8* %129, align 1, !dbg !1448, !tbaa !404
  %131 = icmp eq i8 %130, 46, !dbg !1450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1451
  br i1 %131, label %132, label %133, !dbg !1451

; <label>:132:                                    ; preds = %126
  store i8 %105, i8* %129, align 1, !dbg !1452, !tbaa !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1453
  br label %133, !dbg !1453

; <label>:133:                                    ; preds = %132, %126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1446
  %134 = add i64 %127, -2, !dbg !1447
  %135 = getelementptr inbounds i8, i8* %111, i64 %134, !dbg !1448
  %136 = load i8, i8* %135, align 1, !dbg !1448, !tbaa !404
  %137 = icmp eq i8 %136, 46, !dbg !1450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1451
  br i1 %137, label %254, label %255, !dbg !1451

; <label>:138:                                    ; preds = %255, %123
  %139 = load %struct.Mbuffer*, %struct.Mbuffer** %106, align 8, !dbg !1454, !tbaa !553
  %140 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %139, i64 0, i32 0
  %141 = load i8*, i8** %140, align 8, !dbg !1454, !tbaa !554
  br label %142, !dbg !1455

; <label>:142:                                    ; preds = %138, %103
  %143 = phi i8* [ %141, %138 ], [ %111, %103 ], !dbg !1454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  %144 = getelementptr inbounds %union.SemInfo, %union.SemInfo* %1, i64 0, i32 0, !dbg !1456
  %145 = tail call i32 @luaO_str2d(i8* %143, double* %144) #4, !dbg !1457
  %146 = icmp eq i32 %145, 0, !dbg !1457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  br i1 %146, label %147, label %247, !dbg !1458

; <label>:147:                                    ; preds = %142
  %148 = tail call %struct.lconv* @localeconv() #4, !dbg !1461
  %149 = load i8, i8* %104, align 8, !dbg !1463, !tbaa !652
  %150 = icmp eq %struct.lconv* %148, null, !dbg !1465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  br i1 %150, label %155, label %151, !dbg !1465

; <label>:151:                                    ; preds = %147
  %152 = getelementptr inbounds %struct.lconv, %struct.lconv* %148, i64 0, i32 0, !dbg !1466
  %153 = load i8*, i8** %152, align 8, !dbg !1466, !tbaa !1467
  %154 = load i8, i8* %153, align 1, !dbg !1469, !tbaa !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  br label %155, !dbg !1465

; <label>:155:                                    ; preds = %151, %147
  %156 = phi i8 [ %154, %151 ], [ 46, %147 ]
  store i8 %156, i8* %104, align 8, !dbg !1470, !tbaa !652
  %157 = load %struct.Mbuffer*, %struct.Mbuffer** %106, align 8, !dbg !1475, !tbaa !553
  %158 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %157, i64 0, i32 1, !dbg !1475
  %159 = load i64, i64* %158, align 8, !dbg !1475, !tbaa !763
  %160 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %157, i64 0, i32 0, !dbg !1477
  %161 = load i8*, i8** %160, align 8, !dbg !1477, !tbaa !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1479
  %162 = icmp eq i64 %159, 0, !dbg !1479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1479
  br i1 %162, label %192, label %163, !dbg !1479

; <label>:163:                                    ; preds = %155
  %164 = and i64 %159, 1, !dbg !1480
  %165 = icmp eq i64 %164, 0, !dbg !1480
  br i1 %165, label %173, label %166, !dbg !1480

; <label>:166:                                    ; preds = %163
  %167 = add i64 %159, -1, !dbg !1480
  %168 = getelementptr inbounds i8, i8* %161, i64 %167, !dbg !1481
  %169 = load i8, i8* %168, align 1, !dbg !1481, !tbaa !404
  %170 = icmp eq i8 %169, %149, !dbg !1482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1483
  br i1 %170, label %171, label %172, !dbg !1483

; <label>:171:                                    ; preds = %166
  store i8 %156, i8* %168, align 1, !dbg !1484, !tbaa !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1485
  br label %172, !dbg !1485

; <label>:172:                                    ; preds = %171, %166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1479
  br label %173, !dbg !1479

; <label>:173:                                    ; preds = %163, %172
  %174 = phi i64 [ %159, %163 ], [ %167, %172 ]
  %175 = icmp eq i64 %159, 1, !dbg !1480
  br i1 %175, label %188, label %176, !dbg !1480

; <label>:176:                                    ; preds = %173, %252
  %177 = phi i64 [ %184, %252 ], [ %174, %173 ]
  %178 = add i64 %177, -1, !dbg !1480
  %179 = getelementptr inbounds i8, i8* %161, i64 %178, !dbg !1481
  %180 = load i8, i8* %179, align 1, !dbg !1481, !tbaa !404
  %181 = icmp eq i8 %180, %149, !dbg !1482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1483
  br i1 %181, label %182, label %183, !dbg !1483

; <label>:182:                                    ; preds = %176
  store i8 %156, i8* %179, align 1, !dbg !1484, !tbaa !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1485
  br label %183, !dbg !1485

; <label>:183:                                    ; preds = %182, %176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1479
  %184 = add i64 %177, -2, !dbg !1480
  %185 = getelementptr inbounds i8, i8* %161, i64 %184, !dbg !1481
  %186 = load i8, i8* %185, align 1, !dbg !1481, !tbaa !404
  %187 = icmp eq i8 %186, %149, !dbg !1482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1483
  br i1 %187, label %251, label %252, !dbg !1483

; <label>:188:                                    ; preds = %252, %173
  %189 = load %struct.Mbuffer*, %struct.Mbuffer** %106, align 8, !dbg !1486, !tbaa !553
  %190 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %189, i64 0, i32 0
  %191 = load i8*, i8** %190, align 8, !dbg !1486, !tbaa !554
  br label %192, !dbg !1487

; <label>:192:                                    ; preds = %188, %155
  %193 = phi i8* [ %191, %188 ], [ %161, %155 ], !dbg !1486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1487
  %194 = tail call i32 @luaO_str2d(i8* %193, double* %144) #4, !dbg !1488
  %195 = icmp eq i32 %194, 0, !dbg !1488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1489
  br i1 %195, label %196, label %246, !dbg !1489

; <label>:196:                                    ; preds = %192
  %197 = load i8, i8* %104, align 8, !dbg !1490, !tbaa !652
  %198 = load %struct.Mbuffer*, %struct.Mbuffer** %106, align 8, !dbg !1495, !tbaa !553
  %199 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %198, i64 0, i32 1, !dbg !1495
  %200 = load i64, i64* %199, align 8, !dbg !1495, !tbaa !763
  %201 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %198, i64 0, i32 0, !dbg !1497
  %202 = load i8*, i8** %201, align 8, !dbg !1497, !tbaa !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  %203 = icmp eq i64 %200, 0, !dbg !1499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  br i1 %203, label %229, label %204, !dbg !1499

; <label>:204:                                    ; preds = %196
  %205 = and i64 %200, 1, !dbg !1500
  %206 = icmp eq i64 %205, 0, !dbg !1500
  br i1 %206, label %214, label %207, !dbg !1500

; <label>:207:                                    ; preds = %204
  %208 = add i64 %200, -1, !dbg !1500
  %209 = getelementptr inbounds i8, i8* %202, i64 %208, !dbg !1501
  %210 = load i8, i8* %209, align 1, !dbg !1501, !tbaa !404
  %211 = icmp eq i8 %210, %197, !dbg !1502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1503
  br i1 %211, label %212, label %213, !dbg !1503

; <label>:212:                                    ; preds = %207
  store i8 46, i8* %209, align 1, !dbg !1504, !tbaa !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1505
  br label %213, !dbg !1505

; <label>:213:                                    ; preds = %212, %207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  br label %214, !dbg !1499

; <label>:214:                                    ; preds = %204, %213
  %215 = phi i64 [ %200, %204 ], [ %208, %213 ]
  %216 = icmp eq i64 %200, 1, !dbg !1500
  br i1 %216, label %229, label %217, !dbg !1500

; <label>:217:                                    ; preds = %214, %249
  %218 = phi i64 [ %225, %249 ], [ %215, %214 ]
  %219 = add i64 %218, -1, !dbg !1500
  %220 = getelementptr inbounds i8, i8* %202, i64 %219, !dbg !1501
  %221 = load i8, i8* %220, align 1, !dbg !1501, !tbaa !404
  %222 = icmp eq i8 %221, %197, !dbg !1502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1503
  br i1 %222, label %223, label %224, !dbg !1503

; <label>:223:                                    ; preds = %217
  store i8 46, i8* %220, align 1, !dbg !1504, !tbaa !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1505
  br label %224, !dbg !1505

; <label>:224:                                    ; preds = %223, %217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  %225 = add i64 %218, -2, !dbg !1500
  %226 = getelementptr inbounds i8, i8* %202, i64 %225, !dbg !1501
  %227 = load i8, i8* %226, align 1, !dbg !1501, !tbaa !404
  %228 = icmp eq i8 %227, %197, !dbg !1502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1503
  br i1 %228, label %248, label %249, !dbg !1503

; <label>:229:                                    ; preds = %214, %249, %196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1506
  %230 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0, !dbg !1510
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %230) #5, !dbg !1510
  %231 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 9, !dbg !1511
  %232 = load %union.TString*, %union.TString** %231, align 8, !dbg !1511, !tbaa !532
  %233 = getelementptr inbounds %union.TString, %union.TString* %232, i64 1, !dbg !1511
  %234 = bitcast %union.TString* %233 to i8*, !dbg !1511
  call void @luaO_chunkid(i8* nonnull %230, i8* nonnull %234, i64 80) #4, !dbg !1512
  %235 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 6, !dbg !1513
  %236 = load %struct.lua_State*, %struct.lua_State** %235, align 8, !dbg !1513, !tbaa !504
  %237 = getelementptr inbounds %struct.LexState, %struct.LexState* %0, i64 0, i32 1, !dbg !1514
  %238 = load i32, i32* %237, align 4, !dbg !1514, !tbaa !536
  %239 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %236, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* nonnull %230, i32 %238, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0)) #4, !dbg !1515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1516
  %240 = load %struct.lua_State*, %struct.lua_State** %235, align 8, !dbg !1517, !tbaa !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1521
  call fastcc void @save(%struct.LexState* nonnull %0, i32 0) #4, !dbg !1522
  %241 = load %struct.Mbuffer*, %struct.Mbuffer** %106, align 8, !dbg !1523, !tbaa !553
  %242 = getelementptr inbounds %struct.Mbuffer, %struct.Mbuffer* %241, i64 0, i32 0, !dbg !1523
  %243 = load i8*, i8** %242, align 8, !dbg !1523, !tbaa !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1525
  %244 = call i8* (%struct.lua_State*, i8*, ...) @luaO_pushfstring(%struct.lua_State* %240, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8* %239, i8* %243) #4, !dbg !1526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1526
  %245 = load %struct.lua_State*, %struct.lua_State** %235, align 8, !dbg !1527, !tbaa !504
  call void @luaD_throw(%struct.lua_State* %245, i32 3) #4, !dbg !1528
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %230) #5, !dbg !1529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1530
  br label %246, !dbg !1530

; <label>:246:                                    ; preds = %192, %229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1532
  br label %247, !dbg !1532

; <label>:247:                                    ; preds = %142, %246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1533
  ret void, !dbg !1533

; <label>:248:                                    ; preds = %224
  store i8 46, i8* %226, align 1, !dbg !1504, !tbaa !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1505
  br label %249, !dbg !1505

; <label>:249:                                    ; preds = %248, %224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  %250 = icmp eq i64 %225, 0, !dbg !1499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  br i1 %250, label %229, label %217, !dbg !1499, !llvm.loop !1534

; <label>:251:                                    ; preds = %183
  store i8 %156, i8* %185, align 1, !dbg !1484, !tbaa !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1485
  br label %252, !dbg !1485

; <label>:252:                                    ; preds = %251, %183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1479
  %253 = icmp eq i64 %184, 0, !dbg !1479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1479
  br i1 %253, label %188, label %176, !dbg !1479, !llvm.loop !1534

; <label>:254:                                    ; preds = %133
  store i8 %105, i8* %135, align 1, !dbg !1452, !tbaa !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1453
  br label %255, !dbg !1453

; <label>:255:                                    ; preds = %254, %133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1446
  %256 = icmp eq i64 %134, 0, !dbg !1446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1446
  br i1 %256, label %138, label %126, !dbg !1446, !llvm.loop !1534
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
!395 = !DILocation(line: 66, column: 8, scope: !392)
!396 = !DILocation(line: 66, column: 3, scope: !392)
!397 = !DILocation(line: 67, column: 19, scope: !390)
!398 = !{!399, !399, i64 0}
!399 = !{!"any pointer", !400, i64 0}
!400 = !{!"omnipotent char", !401, i64 0}
!401 = !{!"Simple C/C++ TBAA"}
!402 = !DILocation(line: 67, column: 14, scope: !390)
!403 = !DILocation(line: 68, column: 5, scope: !390)
!404 = !{!400, !400, i64 0}
!405 = !DILocation(line: 70, column: 24, scope: !390)
!406 = !DILocation(line: 70, column: 13, scope: !390)
!407 = !DILocation(line: 70, column: 22, scope: !390)
!408 = !DILocation(line: 66, column: 3, scope: !391)
!409 = !DILocation(line: 66, column: 14, scope: !391)
!410 = distinct !{!410, !396, !411}
!411 = !DILocation(line: 71, column: 3, scope: !392)
!412 = !DILocation(line: 72, column: 1, scope: !63)
!413 = distinct !DISubprogram(name: "luaX_token2str", scope: !3, file: !3, line: 78, type: !414, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !493)
!414 = !DISubroutineType(types: !415)
!415 = !{!45, !416, !41}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "LexState", file: !6, line: 67, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LexState", file: !6, line: 55, size: 768, elements: !419)
!419 = !{!420, !421, !422, !423, !434, !435, !473, !474, !489, !491, !492}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !418, file: !6, line: 56, baseType: !41, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "linenumber", scope: !418, file: !6, line: 57, baseType: !41, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "lastline", scope: !418, file: !6, line: 58, baseType: !41, size: 32, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !418, file: !6, line: 59, baseType: !424, size: 128, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "Token", file: !6, line: 52, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Token", file: !6, line: 49, size: 128, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !425, file: !6, line: 50, baseType: !41, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "seminfo", scope: !425, file: !6, line: 51, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemInfo", file: !6, line: 46, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6, line: 43, size: 64, elements: !431)
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !430, file: !6, line: 44, baseType: !139, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !430, file: !6, line: 45, baseType: !220, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !418, file: !6, line: 60, baseType: !424, size: 128, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !418, file: !6, line: 61, baseType: !436, size: 64, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FuncState", file: !438, line: 58, size: 4800, elements: !439)
!438 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lparser.h", directory: "/root/.unikraft/apps/redis/build")
!439 = !{!440, !443, !446, !447, !449, !450, !453, !454, !455, !456, !457, !458, !459, !461, !462, !469}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !437, file: !438, line: 59, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "Proto", file: !75, line: 253, baseType: !201)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !437, file: !438, line: 60, baseType: !444, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "Table", file: !75, line: 348, baseType: !119)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !437, file: !438, line: 61, baseType: !436, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ls", scope: !437, file: !438, line: 62, baseType: !448, size: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !437, file: !438, line: 63, baseType: !316, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "bl", scope: !437, file: !438, line: 64, baseType: !451, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DICompositeType(tag: DW_TAG_structure_type, name: "BlockCnt", file: !438, line: 54, flags: DIFlagFwdDecl)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !437, file: !438, line: 65, baseType: !41, size: 32, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "lasttarget", scope: !437, file: !438, line: 66, baseType: !41, size: 32, offset: 416)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "jpc", scope: !437, file: !438, line: 67, baseType: !41, size: 32, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "freereg", scope: !437, file: !438, line: 68, baseType: !41, size: 32, offset: 480)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "nk", scope: !437, file: !438, line: 69, baseType: !41, size: 32, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !437, file: !438, line: 70, baseType: !41, size: 32, offset: 544)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "nlocvars", scope: !437, file: !438, line: 71, baseType: !460, size: 16, offset: 576)
!460 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "nactvar", scope: !437, file: !438, line: 72, baseType: !42, size: 8, offset: 592)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "upvalues", scope: !437, file: !438, line: 73, baseType: !463, size: 960, offset: 600)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 960, elements: !373)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "upvaldesc", file: !438, line: 51, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upvaldesc", file: !438, line: 48, size: 16, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !465, file: !438, line: 49, baseType: !42, size: 8)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !465, file: !438, line: 50, baseType: !42, size: 8, offset: 8)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "actvar", scope: !437, file: !438, line: 74, baseType: !470, size: 3200, offset: 1568)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 3200, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 200)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !418, file: !6, line: 62, baseType: !316, size: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !418, file: !6, line: 63, baseType: !475, size: 64, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZIO", file: !300, line: 18, baseType: !477)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Zio", file: !300, line: 56, size: 320, elements: !478)
!478 = !{!479, !480, !481, !487, !488}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !477, file: !300, line: 57, baseType: !49, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !477, file: !300, line: 58, baseType: !45, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "reader", scope: !477, file: !300, line: 59, baseType: !482, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Reader", file: !68, line: 58, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!45, !66, !95, !486}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !477, file: !300, line: 60, baseType: !95, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "L", scope: !477, file: !300, line: 61, baseType: !66, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !418, file: !6, line: 64, baseType: !490, size: 64, offset: 576)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !418, file: !6, line: 65, baseType: !220, size: 64, offset: 640)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "decpoint", scope: !418, file: !6, line: 66, baseType: !47, size: 8, offset: 704)
!493 = !{!494, !495}
!494 = !DILocalVariable(name: "ls", arg: 1, scope: !413, file: !3, line: 78, type: !416)
!495 = !DILocalVariable(name: "token", arg: 2, scope: !413, file: !3, line: 78, type: !41)
!496 = !DILocation(line: 78, column: 39, scope: !413)
!497 = !DILocation(line: 78, column: 47, scope: !413)
!498 = !DILocation(line: 79, column: 13, scope: !499)
!499 = distinct !DILexicalBlock(scope: !413, file: !3, line: 79, column: 7)
!500 = !DILocation(line: 79, column: 7, scope: !413)
!501 = !DILocation(line: 81, column: 13, scope: !502)
!502 = distinct !DILexicalBlock(scope: !499, file: !3, line: 79, column: 31)
!503 = !DILocation(line: 0, scope: !502)
!504 = !{!505, !399, i64 56}
!505 = !{!"LexState", !506, i64 0, !506, i64 4, !506, i64 8, !507, i64 16, !507, i64 32, !399, i64 48, !399, i64 56, !399, i64 64, !399, i64 72, !399, i64 80, !400, i64 88}
!506 = !{!"int", !400, i64 0}
!507 = !{!"Token", !506, i64 0, !400, i64 8}
!508 = !DILocation(line: 81, column: 12, scope: !502)
!509 = !DILocation(line: 81, column: 5, scope: !502)
!510 = !DILocation(line: 85, column: 29, scope: !499)
!511 = !DILocation(line: 85, column: 12, scope: !499)
!512 = !DILocation(line: 85, column: 5, scope: !499)
!513 = !DILocation(line: 0, scope: !499)
!514 = !DILocation(line: 86, column: 1, scope: !413)
!515 = distinct !DISubprogram(name: "luaX_lexerror", scope: !3, file: !3, line: 102, type: !516, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !518)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !416, !45, !41}
!518 = !{!519, !520, !521, !522}
!519 = !DILocalVariable(name: "ls", arg: 1, scope: !515, file: !3, line: 102, type: !416)
!520 = !DILocalVariable(name: "msg", arg: 2, scope: !515, file: !3, line: 102, type: !45)
!521 = !DILocalVariable(name: "token", arg: 3, scope: !515, file: !3, line: 102, type: !41)
!522 = !DILocalVariable(name: "buff", scope: !515, file: !3, line: 103, type: !523)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 640, elements: !524)
!524 = !{!525}
!525 = !DISubrange(count: 80)
!526 = !DILocation(line: 102, column: 31, scope: !515)
!527 = !DILocation(line: 102, column: 47, scope: !515)
!528 = !DILocation(line: 102, column: 56, scope: !515)
!529 = !DILocation(line: 103, column: 3, scope: !515)
!530 = !DILocation(line: 103, column: 8, scope: !515)
!531 = !DILocation(line: 104, column: 22, scope: !515)
!532 = !{!505, !399, i64 80}
!533 = !DILocation(line: 104, column: 3, scope: !515)
!534 = !DILocation(line: 105, column: 30, scope: !515)
!535 = !DILocation(line: 105, column: 56, scope: !515)
!536 = !{!505, !506, i64 4}
!537 = !DILocation(line: 105, column: 9, scope: !515)
!538 = !DILocation(line: 106, column: 7, scope: !539)
!539 = distinct !DILexicalBlock(scope: !515, file: !3, line: 106, column: 7)
!540 = !DILocation(line: 106, column: 7, scope: !515)
!541 = !DILocation(line: 107, column: 26, scope: !539)
!542 = !DILocalVariable(name: "ls", arg: 1, scope: !543, file: !3, line: 89, type: !416)
!543 = distinct !DISubprogram(name: "txtToken", scope: !3, file: !3, line: 89, type: !414, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !544)
!544 = !{!542, !545}
!545 = !DILocalVariable(name: "token", arg: 2, scope: !543, file: !3, line: 89, type: !41)
!546 = !DILocation(line: 89, column: 40, scope: !543, inlinedAt: !547)
!547 = distinct !DILocation(line: 107, column: 53, scope: !539)
!548 = !DILocation(line: 89, column: 48, scope: !543, inlinedAt: !547)
!549 = !DILocation(line: 90, column: 3, scope: !543, inlinedAt: !547)
!550 = !DILocation(line: 94, column: 7, scope: !551, inlinedAt: !547)
!551 = distinct !DILexicalBlock(scope: !543, file: !3, line: 90, column: 18)
!552 = !DILocation(line: 95, column: 14, scope: !551, inlinedAt: !547)
!553 = !{!505, !399, i64 72}
!554 = !{!555, !399, i64 0}
!555 = !{!"Mbuffer", !399, i64 0, !556, i64 8, !556, i64 16}
!556 = !{!"long", !400, i64 0}
!557 = !DILocation(line: 95, column: 7, scope: !551, inlinedAt: !547)
!558 = !DILocation(line: 78, column: 39, scope: !413, inlinedAt: !559)
!559 = distinct !DILocation(line: 97, column: 14, scope: !551, inlinedAt: !547)
!560 = !DILocation(line: 78, column: 47, scope: !413, inlinedAt: !559)
!561 = !DILocation(line: 79, column: 13, scope: !499, inlinedAt: !559)
!562 = !DILocation(line: 79, column: 7, scope: !413, inlinedAt: !559)
!563 = !DILocation(line: 81, column: 13, scope: !502, inlinedAt: !559)
!564 = !DILocation(line: 0, scope: !502, inlinedAt: !559)
!565 = !DILocation(line: 81, column: 12, scope: !502, inlinedAt: !559)
!566 = !DILocation(line: 0, scope: !551, inlinedAt: !547)
!567 = !DILocation(line: 81, column: 5, scope: !502, inlinedAt: !559)
!568 = !DILocation(line: 85, column: 29, scope: !499, inlinedAt: !559)
!569 = !DILocation(line: 85, column: 12, scope: !499, inlinedAt: !559)
!570 = !DILocation(line: 85, column: 5, scope: !499, inlinedAt: !559)
!571 = !DILocation(line: 0, scope: !499, inlinedAt: !559)
!572 = !DILocation(line: 86, column: 1, scope: !413, inlinedAt: !559)
!573 = !DILocation(line: 97, column: 7, scope: !551, inlinedAt: !547)
!574 = !DILocation(line: 0, scope: !539)
!575 = !DILocation(line: 99, column: 1, scope: !543, inlinedAt: !547)
!576 = !DILocation(line: 107, column: 5, scope: !539)
!577 = !DILocation(line: 108, column: 18, scope: !515)
!578 = !DILocation(line: 108, column: 3, scope: !515)
!579 = !DILocation(line: 109, column: 1, scope: !515)
!580 = distinct !DISubprogram(name: "luaX_syntaxerror", scope: !3, file: !3, line: 112, type: !581, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !583)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !416, !45}
!583 = !{!584, !585}
!584 = !DILocalVariable(name: "ls", arg: 1, scope: !580, file: !3, line: 112, type: !416)
!585 = !DILocalVariable(name: "msg", arg: 2, scope: !580, file: !3, line: 112, type: !45)
!586 = !DILocation(line: 112, column: 34, scope: !580)
!587 = !DILocation(line: 112, column: 50, scope: !580)
!588 = !DILocation(line: 113, column: 32, scope: !580)
!589 = !{!505, !506, i64 16}
!590 = !DILocation(line: 113, column: 3, scope: !580)
!591 = !DILocation(line: 114, column: 1, scope: !580)
!592 = distinct !DISubprogram(name: "luaX_newstring", scope: !3, file: !3, line: 117, type: !593, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !595)
!593 = !DISubroutineType(types: !594)
!594 = !{!220, !416, !45, !49}
!595 = !{!596, !597, !598, !599, !600, !601, !602}
!596 = !DILocalVariable(name: "ls", arg: 1, scope: !592, file: !3, line: 117, type: !416)
!597 = !DILocalVariable(name: "str", arg: 2, scope: !592, file: !3, line: 117, type: !45)
!598 = !DILocalVariable(name: "l", arg: 3, scope: !592, file: !3, line: 117, type: !49)
!599 = !DILocalVariable(name: "L", scope: !592, file: !3, line: 118, type: !66)
!600 = !DILocalVariable(name: "ts", scope: !592, file: !3, line: 119, type: !220)
!601 = !DILocalVariable(name: "o", scope: !592, file: !3, line: 120, type: !128)
!602 = !DILocalVariable(name: "i_o", scope: !603, file: !3, line: 122, type: !128)
!603 = distinct !DILexicalBlock(scope: !604, file: !3, line: 122, column: 5)
!604 = distinct !DILexicalBlock(scope: !605, file: !3, line: 121, column: 19)
!605 = distinct !DILexicalBlock(scope: !592, file: !3, line: 121, column: 7)
!606 = !DILocation(line: 117, column: 36, scope: !592)
!607 = !DILocation(line: 117, column: 52, scope: !592)
!608 = !DILocation(line: 117, column: 64, scope: !592)
!609 = !DILocation(line: 118, column: 22, scope: !592)
!610 = !DILocation(line: 118, column: 14, scope: !592)
!611 = !DILocation(line: 119, column: 17, scope: !592)
!612 = !DILocation(line: 119, column: 12, scope: !592)
!613 = !DILocation(line: 120, column: 34, scope: !592)
!614 = !{!505, !399, i64 48}
!615 = !DILocation(line: 120, column: 38, scope: !592)
!616 = !{!617, !399, i64 8}
!617 = !{!"FuncState", !399, i64 0, !399, i64 8, !399, i64 16, !399, i64 24, !399, i64 32, !399, i64 40, !506, i64 48, !506, i64 52, !506, i64 56, !506, i64 60, !506, i64 64, !506, i64 68, !618, i64 72, !400, i64 74, !400, i64 75, !400, i64 196}
!618 = !{!"short", !400, i64 0}
!619 = !DILocation(line: 120, column: 15, scope: !592)
!620 = !DILocation(line: 120, column: 11, scope: !592)
!621 = !DILocation(line: 121, column: 7, scope: !605)
!622 = !{!623, !506, i64 8}
!623 = !{!"lua_TValue", !400, i64 0, !506, i64 8}
!624 = !DILocation(line: 121, column: 7, scope: !592)
!625 = !DILocation(line: 122, column: 5, scope: !603)
!626 = !DILocation(line: 123, column: 5, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !3, line: 123, column: 5)
!628 = distinct !DILexicalBlock(scope: !604, file: !3, line: 123, column: 5)
!629 = !{!630, !399, i64 32}
!630 = !{!"lua_State", !399, i64 0, !400, i64 8, !400, i64 9, !400, i64 10, !399, i64 16, !399, i64 24, !399, i64 32, !399, i64 40, !399, i64 48, !399, i64 56, !399, i64 64, !399, i64 72, !399, i64 80, !506, i64 88, !506, i64 92, !618, i64 96, !618, i64 98, !400, i64 100, !400, i64 101, !506, i64 104, !506, i64 108, !399, i64 112, !623, i64 120, !623, i64 136, !399, i64 152, !399, i64 160, !399, i64 168, !556, i64 176}
!631 = !{!632, !556, i64 120}
!632 = !{!"global_State", !633, i64 0, !399, i64 16, !399, i64 24, !400, i64 32, !400, i64 33, !506, i64 36, !399, i64 40, !399, i64 48, !399, i64 56, !399, i64 64, !399, i64 72, !399, i64 80, !555, i64 88, !556, i64 112, !556, i64 120, !556, i64 128, !556, i64 136, !506, i64 144, !506, i64 148, !399, i64 152, !623, i64 160, !399, i64 176, !634, i64 184, !400, i64 224, !400, i64 296}
!633 = !{!"stringtable", !399, i64 0, !506, i64 8, !506, i64 12}
!634 = !{!"UpVal", !399, i64 0, !400, i64 8, !400, i64 9, !399, i64 16, !400, i64 24}
!635 = !{!632, !556, i64 112}
!636 = !DILocation(line: 123, column: 5, scope: !628)
!637 = !DILocation(line: 125, column: 3, scope: !592)
!638 = distinct !DISubprogram(name: "luaX_setinput", scope: !3, file: !3, line: 140, type: !639, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !641)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !66, !416, !475, !220}
!641 = !{!642, !643, !644, !645}
!642 = !DILocalVariable(name: "L", arg: 1, scope: !638, file: !3, line: 140, type: !66)
!643 = !DILocalVariable(name: "ls", arg: 2, scope: !638, file: !3, line: 140, type: !416)
!644 = !DILocalVariable(name: "z", arg: 3, scope: !638, file: !3, line: 140, type: !475)
!645 = !DILocalVariable(name: "source", arg: 4, scope: !638, file: !3, line: 140, type: !220)
!646 = !DILocation(line: 140, column: 32, scope: !638)
!647 = !DILocation(line: 140, column: 45, scope: !638)
!648 = !DILocation(line: 140, column: 54, scope: !638)
!649 = !DILocation(line: 140, column: 66, scope: !638)
!650 = !DILocation(line: 141, column: 7, scope: !638)
!651 = !DILocation(line: 141, column: 16, scope: !638)
!652 = !{!505, !400, i64 88}
!653 = !DILocation(line: 142, column: 7, scope: !638)
!654 = !DILocation(line: 142, column: 9, scope: !638)
!655 = !DILocation(line: 143, column: 17, scope: !638)
!656 = !DILocation(line: 143, column: 23, scope: !638)
!657 = !{!505, !506, i64 32}
!658 = !DILocation(line: 144, column: 7, scope: !638)
!659 = !DILocation(line: 144, column: 9, scope: !638)
!660 = !{!505, !399, i64 64}
!661 = !DILocation(line: 145, column: 7, scope: !638)
!662 = !DILocation(line: 145, column: 10, scope: !638)
!663 = !DILocation(line: 146, column: 7, scope: !638)
!664 = !DILocation(line: 146, column: 18, scope: !638)
!665 = !DILocation(line: 147, column: 7, scope: !638)
!666 = !DILocation(line: 147, column: 16, scope: !638)
!667 = !{!505, !506, i64 8}
!668 = !DILocation(line: 148, column: 7, scope: !638)
!669 = !DILocation(line: 148, column: 14, scope: !638)
!670 = !DILocation(line: 149, column: 3, scope: !638)
!671 = !{!555, !556, i64 16}
!672 = !DILocation(line: 150, column: 3, scope: !638)
!673 = !{!674, !556, i64 0}
!674 = !{!"Zio", !556, i64 0, !399, i64 8, !399, i64 16, !399, i64 24, !399, i64 32}
!675 = !{!674, !399, i64 8}
!676 = !{!505, !506, i64 0}
!677 = !DILocation(line: 151, column: 1, scope: !638)
!678 = distinct !DISubprogram(name: "luaX_next", scope: !3, file: !3, line: 448, type: !679, isLocal: false, isDefinition: true, scopeLine: 448, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !681)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !416}
!681 = !{!682}
!682 = !DILocalVariable(name: "ls", arg: 1, scope: !678, file: !3, line: 448, type: !416)
!683 = !DILocation(line: 448, column: 27, scope: !678)
!684 = !DILocation(line: 449, column: 22, scope: !678)
!685 = !DILocation(line: 449, column: 7, scope: !678)
!686 = !DILocation(line: 449, column: 16, scope: !678)
!687 = !DILocation(line: 450, column: 11, scope: !688)
!688 = distinct !DILexicalBlock(scope: !678, file: !3, line: 450, column: 7)
!689 = !DILocation(line: 450, column: 21, scope: !688)
!690 = !DILocation(line: 450, column: 27, scope: !688)
!691 = !DILocation(line: 450, column: 7, scope: !678)
!692 = !DILocation(line: 451, column: 9, scope: !693)
!693 = distinct !DILexicalBlock(scope: !688, file: !3, line: 450, column: 38)
!694 = !DILocation(line: 451, column: 17, scope: !693)
!695 = !{i64 0, i64 4, !696, i64 8, i64 8, !697, i64 8, i64 8, !398}
!696 = !{!506, !506, i64 0}
!697 = !{!698, !698, i64 0}
!698 = !{!"double", !400, i64 0}
!699 = !DILocation(line: 452, column: 25, scope: !693)
!700 = !DILocation(line: 453, column: 3, scope: !693)
!701 = !DILocation(line: 455, column: 35, scope: !688)
!702 = !DILocation(line: 455, column: 19, scope: !688)
!703 = !DILocation(line: 455, column: 11, scope: !688)
!704 = !DILocation(line: 455, column: 17, scope: !688)
!705 = !DILocation(line: 456, column: 1, scope: !678)
!706 = distinct !DISubprogram(name: "llex", scope: !3, file: !3, line: 334, type: !707, isLocal: true, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !710)
!707 = !DISubroutineType(types: !708)
!708 = !{!41, !416, !709}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!710 = !{!711, !712, !713, !721, !723, !729}
!711 = !DILocalVariable(name: "ls", arg: 1, scope: !706, file: !3, line: 334, type: !416)
!712 = !DILocalVariable(name: "seminfo", arg: 2, scope: !706, file: !3, line: 334, type: !709)
!713 = !DILocalVariable(name: "sep", scope: !714, file: !3, line: 349, type: !41)
!714 = distinct !DILexicalBlock(scope: !715, file: !3, line: 348, column: 33)
!715 = distinct !DILexicalBlock(scope: !716, file: !3, line: 348, column: 13)
!716 = distinct !DILexicalBlock(scope: !717, file: !3, line: 343, column: 17)
!717 = distinct !DILexicalBlock(scope: !718, file: !3, line: 337, column: 26)
!718 = distinct !DILexicalBlock(scope: !719, file: !3, line: 336, column: 12)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 336, column: 3)
!720 = distinct !DILexicalBlock(scope: !706, file: !3, line: 336, column: 3)
!721 = !DILocalVariable(name: "sep", scope: !722, file: !3, line: 363, type: !41)
!722 = distinct !DILexicalBlock(scope: !717, file: !3, line: 362, column: 17)
!723 = !DILocalVariable(name: "ts", scope: !724, file: !3, line: 424, type: !220)
!724 = distinct !DILexicalBlock(scope: !725, file: !3, line: 422, column: 62)
!725 = distinct !DILexicalBlock(scope: !726, file: !3, line: 422, column: 18)
!726 = distinct !DILexicalBlock(scope: !727, file: !3, line: 418, column: 18)
!727 = distinct !DILexicalBlock(scope: !728, file: !3, line: 413, column: 13)
!728 = distinct !DILexicalBlock(scope: !717, file: !3, line: 412, column: 16)
!729 = !DILocalVariable(name: "c", scope: !730, file: !3, line: 438, type: !41)
!730 = distinct !DILexicalBlock(scope: !725, file: !3, line: 437, column: 14)
!731 = !DILocation(line: 103, column: 8, scope: !515, inlinedAt: !732)
!732 = distinct !DILocation(line: 283, column: 9, scope: !733, inlinedAt: !749)
!733 = distinct !DILexicalBlock(scope: !734, file: !3, line: 281, column: 26)
!734 = distinct !DILexicalBlock(scope: !735, file: !3, line: 280, column: 30)
!735 = distinct !DISubprogram(name: "read_string", scope: !3, file: !3, line: 278, type: !736, isLocal: true, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !738)
!736 = !DISubroutineType(types: !737)
!737 = !{null, !416, !41, !709}
!738 = !{!739, !740, !741, !742, !744}
!739 = !DILocalVariable(name: "ls", arg: 1, scope: !735, file: !3, line: 278, type: !416)
!740 = !DILocalVariable(name: "del", arg: 2, scope: !735, file: !3, line: 278, type: !41)
!741 = !DILocalVariable(name: "seminfo", arg: 3, scope: !735, file: !3, line: 278, type: !709)
!742 = !DILocalVariable(name: "c", scope: !743, file: !3, line: 290, type: !41)
!743 = distinct !DILexicalBlock(scope: !733, file: !3, line: 289, column: 18)
!744 = !DILocalVariable(name: "i", scope: !745, file: !3, line: 307, type: !41)
!745 = distinct !DILexicalBlock(scope: !746, file: !3, line: 306, column: 18)
!746 = distinct !DILexicalBlock(scope: !747, file: !3, line: 304, column: 17)
!747 = distinct !DILexicalBlock(scope: !748, file: !3, line: 303, column: 20)
!748 = distinct !DILexicalBlock(scope: !743, file: !3, line: 292, column: 30)
!749 = distinct !DILocation(line: 393, column: 9, scope: !750)
!750 = distinct !DILexicalBlock(scope: !717, file: !3, line: 392, column: 18)
!751 = !DILocation(line: 103, column: 8, scope: !515, inlinedAt: !752)
!752 = distinct !DILocation(line: 287, column: 9, scope: !733, inlinedAt: !749)
!753 = !DILocation(line: 103, column: 8, scope: !515, inlinedAt: !754)
!754 = distinct !DILocation(line: 314, column: 17, scope: !755, inlinedAt: !749)
!755 = distinct !DILexicalBlock(scope: !745, file: !3, line: 313, column: 19)
!756 = !DILocation(line: 103, column: 8, scope: !515, inlinedAt: !757)
!757 = distinct !DILocation(line: 369, column: 14, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 368, column: 18)
!759 = distinct !DILexicalBlock(scope: !722, file: !3, line: 364, column: 13)
!760 = !DILocation(line: 334, column: 28, scope: !706)
!761 = !DILocation(line: 334, column: 41, scope: !706)
!762 = !DILocation(line: 335, column: 3, scope: !706)
!763 = !{!555, !556, i64 8}
!764 = !DILocation(line: 336, column: 3, scope: !706)
!765 = !DILocation(line: 337, column: 17, scope: !718)
!766 = !DILocation(line: 337, column: 5, scope: !718)
!767 = !DILocation(line: 340, column: 9, scope: !768)
!768 = distinct !DILexicalBlock(scope: !717, file: !3, line: 339, column: 18)
!769 = !DILocation(line: 341, column: 9, scope: !768)
!770 = distinct !{!770, !771, !772}
!771 = !DILocation(line: 336, column: 3, scope: !720)
!772 = !DILocation(line: 444, column: 3, scope: !720)
!773 = !DILocation(line: 344, column: 9, scope: !716)
!774 = !DILocation(line: 345, column: 25, scope: !775)
!775 = distinct !DILexicalBlock(scope: !716, file: !3, line: 345, column: 13)
!776 = !DILocation(line: 345, column: 13, scope: !716)
!777 = !DILocation(line: 347, column: 9, scope: !716)
!778 = !DILocation(line: 348, column: 25, scope: !715)
!779 = !DILocation(line: 348, column: 13, scope: !716)
!780 = !DILocation(line: 349, column: 21, scope: !714)
!781 = !DILocation(line: 349, column: 15, scope: !714)
!782 = !DILocation(line: 350, column: 11, scope: !714)
!783 = !DILocation(line: 351, column: 19, scope: !784)
!784 = distinct !DILexicalBlock(scope: !714, file: !3, line: 351, column: 15)
!785 = !DILocation(line: 351, column: 15, scope: !714)
!786 = !DILocation(line: 352, column: 13, scope: !787)
!787 = distinct !DILexicalBlock(scope: !784, file: !3, line: 351, column: 25)
!788 = !DILocation(line: 353, column: 13, scope: !787)
!789 = !DILocation(line: 354, column: 13, scope: !787)
!790 = !DILocation(line: 356, column: 9, scope: !715)
!791 = !DILocation(line: 358, column: 17, scope: !716)
!792 = !DILocation(line: 358, column: 9, scope: !716)
!793 = !DILocation(line: 358, column: 35, scope: !716)
!794 = !DILocation(line: 358, column: 50, scope: !716)
!795 = !DILocation(line: 359, column: 11, scope: !716)
!796 = distinct !{!796, !792, !795}
!797 = !DILocation(line: 363, column: 19, scope: !722)
!798 = !DILocation(line: 363, column: 13, scope: !722)
!799 = !DILocation(line: 364, column: 17, scope: !759)
!800 = !DILocation(line: 364, column: 13, scope: !722)
!801 = !DILocation(line: 365, column: 11, scope: !802)
!802 = distinct !DILexicalBlock(scope: !759, file: !3, line: 364, column: 23)
!803 = !DILocation(line: 366, column: 11, scope: !802)
!804 = !DILocation(line: 368, column: 22, scope: !758)
!805 = !DILocation(line: 368, column: 18, scope: !759)
!806 = !DILocation(line: 0, scope: !758)
!807 = !DILocation(line: 102, column: 31, scope: !515, inlinedAt: !757)
!808 = !DILocation(line: 102, column: 47, scope: !515, inlinedAt: !757)
!809 = !DILocation(line: 102, column: 56, scope: !515, inlinedAt: !757)
!810 = !DILocation(line: 103, column: 3, scope: !515, inlinedAt: !757)
!811 = !DILocation(line: 104, column: 22, scope: !515, inlinedAt: !757)
!812 = !DILocation(line: 104, column: 3, scope: !515, inlinedAt: !757)
!813 = !DILocation(line: 105, column: 30, scope: !515, inlinedAt: !757)
!814 = !DILocation(line: 105, column: 56, scope: !515, inlinedAt: !757)
!815 = !DILocation(line: 105, column: 9, scope: !515, inlinedAt: !757)
!816 = !DILocation(line: 106, column: 7, scope: !515, inlinedAt: !757)
!817 = !DILocation(line: 107, column: 26, scope: !539, inlinedAt: !757)
!818 = !DILocation(line: 89, column: 40, scope: !543, inlinedAt: !819)
!819 = distinct !DILocation(line: 107, column: 53, scope: !539, inlinedAt: !757)
!820 = !DILocation(line: 89, column: 48, scope: !543, inlinedAt: !819)
!821 = !DILocation(line: 90, column: 3, scope: !543, inlinedAt: !819)
!822 = !DILocation(line: 94, column: 7, scope: !551, inlinedAt: !819)
!823 = !DILocation(line: 95, column: 14, scope: !551, inlinedAt: !819)
!824 = !DILocation(line: 95, column: 7, scope: !551, inlinedAt: !819)
!825 = !DILocation(line: 99, column: 1, scope: !543, inlinedAt: !819)
!826 = !DILocation(line: 107, column: 5, scope: !539, inlinedAt: !757)
!827 = !DILocation(line: 108, column: 18, scope: !515, inlinedAt: !757)
!828 = !DILocation(line: 108, column: 3, scope: !515, inlinedAt: !757)
!829 = !DILocation(line: 109, column: 1, scope: !515, inlinedAt: !757)
!830 = !DILocation(line: 370, column: 7, scope: !717)
!831 = !DILocation(line: 372, column: 9, scope: !832)
!832 = distinct !DILexicalBlock(scope: !717, file: !3, line: 371, column: 17)
!833 = !DILocation(line: 373, column: 25, scope: !834)
!834 = distinct !DILexicalBlock(scope: !832, file: !3, line: 373, column: 13)
!835 = !DILocation(line: 373, column: 13, scope: !832)
!836 = !DILocation(line: 374, column: 16, scope: !837)
!837 = distinct !DILexicalBlock(scope: !834, file: !3, line: 374, column: 14)
!838 = !DILocation(line: 374, column: 26, scope: !837)
!839 = !DILocation(line: 377, column: 9, scope: !840)
!840 = distinct !DILexicalBlock(scope: !717, file: !3, line: 376, column: 17)
!841 = !DILocation(line: 378, column: 25, scope: !842)
!842 = distinct !DILexicalBlock(scope: !840, file: !3, line: 378, column: 13)
!843 = !DILocation(line: 378, column: 13, scope: !840)
!844 = !DILocation(line: 379, column: 16, scope: !845)
!845 = distinct !DILexicalBlock(scope: !842, file: !3, line: 379, column: 14)
!846 = !DILocation(line: 379, column: 26, scope: !845)
!847 = !DILocation(line: 382, column: 9, scope: !848)
!848 = distinct !DILexicalBlock(scope: !717, file: !3, line: 381, column: 17)
!849 = !DILocation(line: 383, column: 25, scope: !850)
!850 = distinct !DILexicalBlock(scope: !848, file: !3, line: 383, column: 13)
!851 = !DILocation(line: 383, column: 13, scope: !848)
!852 = !DILocation(line: 384, column: 16, scope: !853)
!853 = distinct !DILexicalBlock(scope: !850, file: !3, line: 384, column: 14)
!854 = !DILocation(line: 384, column: 26, scope: !853)
!855 = !DILocation(line: 387, column: 9, scope: !856)
!856 = distinct !DILexicalBlock(scope: !717, file: !3, line: 386, column: 17)
!857 = !DILocation(line: 388, column: 25, scope: !858)
!858 = distinct !DILexicalBlock(scope: !856, file: !3, line: 388, column: 13)
!859 = !DILocation(line: 388, column: 13, scope: !856)
!860 = !DILocation(line: 389, column: 16, scope: !861)
!861 = distinct !DILexicalBlock(scope: !858, file: !3, line: 389, column: 14)
!862 = !DILocation(line: 389, column: 26, scope: !861)
!863 = !DILocation(line: 278, column: 36, scope: !735, inlinedAt: !749)
!864 = !DILocation(line: 278, column: 44, scope: !735, inlinedAt: !749)
!865 = !DILocation(line: 278, column: 58, scope: !735, inlinedAt: !749)
!866 = !DILocation(line: 279, column: 3, scope: !735, inlinedAt: !749)
!867 = !DILocation(line: 280, column: 3, scope: !735, inlinedAt: !749)
!868 = !DILocation(line: 280, column: 22, scope: !735, inlinedAt: !749)
!869 = !DILocation(line: 0, scope: !750)
!870 = !DILocation(line: 280, column: 14, scope: !735, inlinedAt: !749)
!871 = !DILocation(line: 281, column: 5, scope: !734, inlinedAt: !749)
!872 = !DILocation(line: 102, column: 31, scope: !515, inlinedAt: !732)
!873 = !DILocation(line: 102, column: 47, scope: !515, inlinedAt: !732)
!874 = !DILocation(line: 102, column: 56, scope: !515, inlinedAt: !732)
!875 = !DILocation(line: 103, column: 3, scope: !515, inlinedAt: !732)
!876 = !DILocation(line: 104, column: 22, scope: !515, inlinedAt: !732)
!877 = !DILocation(line: 104, column: 3, scope: !515, inlinedAt: !732)
!878 = !DILocation(line: 105, column: 30, scope: !515, inlinedAt: !732)
!879 = !DILocation(line: 105, column: 56, scope: !515, inlinedAt: !732)
!880 = !DILocation(line: 105, column: 9, scope: !515, inlinedAt: !732)
!881 = !DILocation(line: 106, column: 7, scope: !515, inlinedAt: !732)
!882 = !DILocation(line: 107, column: 26, scope: !539, inlinedAt: !732)
!883 = !DILocation(line: 89, column: 40, scope: !543, inlinedAt: !884)
!884 = distinct !DILocation(line: 107, column: 53, scope: !539, inlinedAt: !732)
!885 = !DILocation(line: 89, column: 48, scope: !543, inlinedAt: !884)
!886 = !DILocation(line: 90, column: 3, scope: !543, inlinedAt: !884)
!887 = !DILocation(line: 78, column: 39, scope: !413, inlinedAt: !888)
!888 = distinct !DILocation(line: 97, column: 14, scope: !551, inlinedAt: !884)
!889 = !DILocation(line: 78, column: 47, scope: !413, inlinedAt: !888)
!890 = !DILocation(line: 79, column: 7, scope: !413, inlinedAt: !888)
!891 = !DILocation(line: 85, column: 5, scope: !499, inlinedAt: !888)
!892 = !DILocation(line: 86, column: 1, scope: !413, inlinedAt: !888)
!893 = !DILocation(line: 97, column: 7, scope: !551, inlinedAt: !884)
!894 = !DILocation(line: 99, column: 1, scope: !543, inlinedAt: !884)
!895 = !DILocation(line: 107, column: 5, scope: !539, inlinedAt: !732)
!896 = !DILocation(line: 108, column: 18, scope: !515, inlinedAt: !732)
!897 = !DILocation(line: 108, column: 3, scope: !515, inlinedAt: !732)
!898 = !DILocation(line: 109, column: 1, scope: !515, inlinedAt: !732)
!899 = !DILocation(line: 284, column: 9, scope: !733, inlinedAt: !749)
!900 = distinct !{!900, !901, !902}
!901 = !DILocation(line: 280, column: 3, scope: !735)
!902 = !DILocation(line: 327, column: 3, scope: !735)
!903 = !DILocation(line: 102, column: 31, scope: !515, inlinedAt: !752)
!904 = !DILocation(line: 102, column: 47, scope: !515, inlinedAt: !752)
!905 = !DILocation(line: 102, column: 56, scope: !515, inlinedAt: !752)
!906 = !DILocation(line: 103, column: 3, scope: !515, inlinedAt: !752)
!907 = !DILocation(line: 104, column: 22, scope: !515, inlinedAt: !752)
!908 = !DILocation(line: 104, column: 3, scope: !515, inlinedAt: !752)
!909 = !DILocation(line: 105, column: 30, scope: !515, inlinedAt: !752)
!910 = !DILocation(line: 105, column: 56, scope: !515, inlinedAt: !752)
!911 = !DILocation(line: 105, column: 9, scope: !515, inlinedAt: !752)
!912 = !DILocation(line: 106, column: 7, scope: !515, inlinedAt: !752)
!913 = !DILocation(line: 107, column: 26, scope: !539, inlinedAt: !752)
!914 = !DILocation(line: 89, column: 40, scope: !543, inlinedAt: !915)
!915 = distinct !DILocation(line: 107, column: 53, scope: !539, inlinedAt: !752)
!916 = !DILocation(line: 89, column: 48, scope: !543, inlinedAt: !915)
!917 = !DILocation(line: 90, column: 3, scope: !543, inlinedAt: !915)
!918 = !DILocation(line: 94, column: 7, scope: !551, inlinedAt: !915)
!919 = !DILocation(line: 95, column: 14, scope: !551, inlinedAt: !915)
!920 = !DILocation(line: 95, column: 7, scope: !551, inlinedAt: !915)
!921 = !DILocation(line: 99, column: 1, scope: !543, inlinedAt: !915)
!922 = !DILocation(line: 107, column: 5, scope: !539, inlinedAt: !752)
!923 = !DILocation(line: 108, column: 18, scope: !515, inlinedAt: !752)
!924 = !DILocation(line: 108, column: 3, scope: !515, inlinedAt: !752)
!925 = !DILocation(line: 109, column: 1, scope: !515, inlinedAt: !752)
!926 = !DILocation(line: 288, column: 9, scope: !733, inlinedAt: !749)
!927 = !DILocation(line: 291, column: 9, scope: !743, inlinedAt: !749)
!928 = !DILocation(line: 292, column: 9, scope: !743, inlinedAt: !749)
!929 = !DILocation(line: 290, column: 13, scope: !743, inlinedAt: !749)
!930 = !DILocation(line: 294, column: 31, scope: !748, inlinedAt: !749)
!931 = !DILocation(line: 295, column: 31, scope: !748, inlinedAt: !749)
!932 = !DILocation(line: 296, column: 31, scope: !748, inlinedAt: !749)
!933 = !DILocation(line: 297, column: 31, scope: !748, inlinedAt: !749)
!934 = !DILocation(line: 298, column: 31, scope: !748, inlinedAt: !749)
!935 = !DILocation(line: 299, column: 31, scope: !748, inlinedAt: !749)
!936 = !DILocation(line: 301, column: 22, scope: !748, inlinedAt: !749)
!937 = !DILocation(line: 301, column: 38, scope: !748, inlinedAt: !749)
!938 = !DILocation(line: 301, column: 57, scope: !748, inlinedAt: !749)
!939 = !DILocation(line: 304, column: 18, scope: !746, inlinedAt: !749)
!940 = !DILocation(line: 304, column: 17, scope: !747, inlinedAt: !749)
!941 = !DILocation(line: 305, column: 15, scope: !746, inlinedAt: !749)
!942 = !DILocation(line: 307, column: 19, scope: !745, inlinedAt: !749)
!943 = !DILocation(line: 309, column: 15, scope: !745, inlinedAt: !749)
!944 = !DILocation(line: 310, column: 33, scope: !945, inlinedAt: !749)
!945 = distinct !DILexicalBlock(scope: !745, file: !3, line: 309, column: 18)
!946 = !DILocation(line: 0, scope: !945, inlinedAt: !749)
!947 = !DILocation(line: 0, scope: !745, inlinedAt: !749)
!948 = !DILocation(line: 310, column: 23, scope: !945, inlinedAt: !749)
!949 = !DILocation(line: 310, column: 40, scope: !945, inlinedAt: !749)
!950 = !DILocation(line: 310, column: 26, scope: !945, inlinedAt: !749)
!951 = !DILocation(line: 311, column: 17, scope: !945, inlinedAt: !749)
!952 = !DILocation(line: 312, column: 24, scope: !745, inlinedAt: !749)
!953 = !DILocation(line: 312, column: 27, scope: !745, inlinedAt: !749)
!954 = !DILocation(line: 312, column: 30, scope: !745, inlinedAt: !749)
!955 = !DILocation(line: 312, column: 33, scope: !745, inlinedAt: !749)
!956 = !DILocation(line: 312, column: 15, scope: !945, inlinedAt: !749)
!957 = distinct !{!957, !958, !959}
!958 = !DILocation(line: 309, column: 15, scope: !745)
!959 = !DILocation(line: 312, column: 53, scope: !745)
!960 = !DILocation(line: 313, column: 21, scope: !755, inlinedAt: !749)
!961 = !DILocation(line: 313, column: 19, scope: !745, inlinedAt: !749)
!962 = !DILocation(line: 102, column: 31, scope: !515, inlinedAt: !754)
!963 = !DILocation(line: 102, column: 47, scope: !515, inlinedAt: !754)
!964 = !DILocation(line: 102, column: 56, scope: !515, inlinedAt: !754)
!965 = !DILocation(line: 103, column: 3, scope: !515, inlinedAt: !754)
!966 = !DILocation(line: 104, column: 22, scope: !515, inlinedAt: !754)
!967 = !DILocation(line: 104, column: 3, scope: !515, inlinedAt: !754)
!968 = !DILocation(line: 105, column: 30, scope: !515, inlinedAt: !754)
!969 = !DILocation(line: 105, column: 56, scope: !515, inlinedAt: !754)
!970 = !DILocation(line: 105, column: 9, scope: !515, inlinedAt: !754)
!971 = !DILocation(line: 106, column: 7, scope: !515, inlinedAt: !754)
!972 = !DILocation(line: 107, column: 26, scope: !539, inlinedAt: !754)
!973 = !DILocation(line: 89, column: 40, scope: !543, inlinedAt: !974)
!974 = distinct !DILocation(line: 107, column: 53, scope: !539, inlinedAt: !754)
!975 = !DILocation(line: 89, column: 48, scope: !543, inlinedAt: !974)
!976 = !DILocation(line: 90, column: 3, scope: !543, inlinedAt: !974)
!977 = !DILocation(line: 94, column: 7, scope: !551, inlinedAt: !974)
!978 = !DILocation(line: 95, column: 14, scope: !551, inlinedAt: !974)
!979 = !DILocation(line: 95, column: 7, scope: !551, inlinedAt: !974)
!980 = !DILocation(line: 99, column: 1, scope: !543, inlinedAt: !974)
!981 = !DILocation(line: 107, column: 5, scope: !539, inlinedAt: !754)
!982 = !DILocation(line: 108, column: 18, scope: !515, inlinedAt: !754)
!983 = !DILocation(line: 108, column: 3, scope: !515, inlinedAt: !754)
!984 = !DILocation(line: 109, column: 1, scope: !515, inlinedAt: !754)
!985 = !DILocation(line: 314, column: 17, scope: !755, inlinedAt: !749)
!986 = !DILocation(line: 315, column: 15, scope: !745, inlinedAt: !749)
!987 = !DILocation(line: 317, column: 13, scope: !747, inlinedAt: !749)
!988 = !DILocation(line: 0, scope: !748, inlinedAt: !749)
!989 = !DILocation(line: 320, column: 9, scope: !743, inlinedAt: !749)
!990 = !DILocation(line: 321, column: 9, scope: !743, inlinedAt: !749)
!991 = !DILocation(line: 322, column: 9, scope: !743, inlinedAt: !749)
!992 = !DILocation(line: 325, column: 9, scope: !733, inlinedAt: !749)
!993 = !DILocation(line: 328, column: 3, scope: !735, inlinedAt: !749)
!994 = !DILocation(line: 329, column: 36, scope: !735, inlinedAt: !749)
!995 = !DILocation(line: 329, column: 58, scope: !735, inlinedAt: !749)
!996 = !DILocation(line: 330, column: 36, scope: !735, inlinedAt: !749)
!997 = !DILocation(line: 330, column: 59, scope: !735, inlinedAt: !749)
!998 = !DILocation(line: 117, column: 36, scope: !592, inlinedAt: !999)
!999 = distinct !DILocation(line: 329, column: 17, scope: !735, inlinedAt: !749)
!1000 = !DILocation(line: 117, column: 52, scope: !592, inlinedAt: !999)
!1001 = !DILocation(line: 117, column: 64, scope: !592, inlinedAt: !999)
!1002 = !DILocation(line: 118, column: 22, scope: !592, inlinedAt: !999)
!1003 = !DILocation(line: 118, column: 14, scope: !592, inlinedAt: !999)
!1004 = !DILocation(line: 119, column: 17, scope: !592, inlinedAt: !999)
!1005 = !DILocation(line: 119, column: 12, scope: !592, inlinedAt: !999)
!1006 = !DILocation(line: 120, column: 34, scope: !592, inlinedAt: !999)
!1007 = !DILocation(line: 120, column: 38, scope: !592, inlinedAt: !999)
!1008 = !DILocation(line: 120, column: 15, scope: !592, inlinedAt: !999)
!1009 = !DILocation(line: 120, column: 11, scope: !592, inlinedAt: !999)
!1010 = !DILocation(line: 121, column: 7, scope: !605, inlinedAt: !999)
!1011 = !DILocation(line: 121, column: 7, scope: !592, inlinedAt: !999)
!1012 = !DILocation(line: 122, column: 5, scope: !603, inlinedAt: !999)
!1013 = !DILocation(line: 123, column: 5, scope: !627, inlinedAt: !999)
!1014 = !DILocation(line: 123, column: 5, scope: !628, inlinedAt: !999)
!1015 = !DILocation(line: 125, column: 3, scope: !592, inlinedAt: !999)
!1016 = !DILocation(line: 329, column: 12, scope: !735, inlinedAt: !749)
!1017 = !DILocation(line: 329, column: 15, scope: !735, inlinedAt: !749)
!1018 = !DILocation(line: 331, column: 1, scope: !735, inlinedAt: !749)
!1019 = !DILocation(line: 394, column: 9, scope: !750)
!1020 = !DILocation(line: 397, column: 9, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !717, file: !3, line: 396, column: 17)
!1022 = !DILocalVariable(name: "ls", arg: 1, scope: !1023, file: !3, line: 163, type: !416)
!1023 = distinct !DISubprogram(name: "check_next", scope: !3, file: !3, line: 163, type: !1024, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1026)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!41, !416, !45}
!1026 = !{!1022, !1027}
!1027 = !DILocalVariable(name: "set", arg: 2, scope: !1023, file: !3, line: 163, type: !45)
!1028 = !DILocation(line: 163, column: 34, scope: !1023, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 398, column: 13, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 398, column: 13)
!1031 = !DILocation(line: 163, column: 50, scope: !1023, inlinedAt: !1029)
!1032 = !DILocation(line: 164, column: 8, scope: !1033, inlinedAt: !1029)
!1033 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 164, column: 7)
!1034 = !DILocation(line: 164, column: 7, scope: !1023, inlinedAt: !1029)
!1035 = !DILocation(line: 166, column: 3, scope: !1023, inlinedAt: !1029)
!1036 = !DILocation(line: 167, column: 3, scope: !1023, inlinedAt: !1029)
!1037 = !DILocation(line: 168, column: 1, scope: !1023, inlinedAt: !1029)
!1038 = !DILocation(line: 398, column: 13, scope: !1021)
!1039 = !DILocation(line: 163, column: 34, scope: !1023, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 399, column: 15, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 399, column: 15)
!1042 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 398, column: 34)
!1043 = !DILocation(line: 163, column: 50, scope: !1023, inlinedAt: !1040)
!1044 = !DILocation(line: 164, column: 8, scope: !1033, inlinedAt: !1040)
!1045 = !DILocation(line: 164, column: 7, scope: !1023, inlinedAt: !1040)
!1046 = !DILocation(line: 166, column: 3, scope: !1023, inlinedAt: !1040)
!1047 = !DILocation(line: 167, column: 3, scope: !1023, inlinedAt: !1040)
!1048 = !DILocation(line: 168, column: 1, scope: !1023, inlinedAt: !1040)
!1049 = !DILocation(line: 399, column: 15, scope: !1042)
!1050 = !DILocation(line: 401, column: 16, scope: !1041)
!1051 = !DILocation(line: 165, column: 5, scope: !1033, inlinedAt: !1040)
!1052 = !DILocation(line: 165, column: 5, scope: !1033, inlinedAt: !1029)
!1053 = !DILocation(line: 403, column: 19, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 403, column: 18)
!1055 = !DILocation(line: 403, column: 18, scope: !1030)
!1056 = !DILocation(line: 405, column: 11, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 404, column: 14)
!1058 = !DILocation(line: 406, column: 11, scope: !1057)
!1059 = !DILocation(line: 413, column: 13, scope: !727)
!1060 = !DILocation(line: 413, column: 13, scope: !728)
!1061 = !DILocation(line: 415, column: 11, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !727, file: !3, line: 413, column: 35)
!1063 = !DILocation(line: 416, column: 11, scope: !1062)
!1064 = !DILocation(line: 418, column: 18, scope: !726)
!1065 = !DILocation(line: 418, column: 18, scope: !727)
!1066 = !DILocation(line: 419, column: 11, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !726, file: !3, line: 418, column: 40)
!1068 = !DILocation(line: 420, column: 11, scope: !1067)
!1069 = !DILocation(line: 422, column: 18, scope: !725)
!1070 = !DILocation(line: 422, column: 39, scope: !725)
!1071 = !DILocation(line: 422, column: 54, scope: !725)
!1072 = !DILocation(line: 422, column: 18, scope: !726)
!1073 = !DILocation(line: 425, column: 11, scope: !724)
!1074 = !DILocation(line: 426, column: 13, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !724, file: !3, line: 425, column: 14)
!1076 = !DILocation(line: 427, column: 20, scope: !724)
!1077 = !DILocation(line: 427, column: 41, scope: !724)
!1078 = !DILocation(line: 427, column: 56, scope: !724)
!1079 = !DILocation(line: 427, column: 11, scope: !1075)
!1080 = distinct !{!1080, !1073, !1081}
!1081 = !DILocation(line: 427, column: 62, scope: !724)
!1082 = !DILocation(line: 428, column: 35, scope: !724)
!1083 = !DILocation(line: 429, column: 35, scope: !724)
!1084 = !DILocation(line: 117, column: 36, scope: !592, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 428, column: 16, scope: !724)
!1086 = !DILocation(line: 117, column: 52, scope: !592, inlinedAt: !1085)
!1087 = !DILocation(line: 117, column: 64, scope: !592, inlinedAt: !1085)
!1088 = !DILocation(line: 118, column: 22, scope: !592, inlinedAt: !1085)
!1089 = !DILocation(line: 118, column: 14, scope: !592, inlinedAt: !1085)
!1090 = !DILocation(line: 119, column: 17, scope: !592, inlinedAt: !1085)
!1091 = !DILocation(line: 119, column: 12, scope: !592, inlinedAt: !1085)
!1092 = !DILocation(line: 120, column: 34, scope: !592, inlinedAt: !1085)
!1093 = !DILocation(line: 120, column: 38, scope: !592, inlinedAt: !1085)
!1094 = !DILocation(line: 120, column: 15, scope: !592, inlinedAt: !1085)
!1095 = !DILocation(line: 120, column: 11, scope: !592, inlinedAt: !1085)
!1096 = !DILocation(line: 121, column: 7, scope: !605, inlinedAt: !1085)
!1097 = !DILocation(line: 121, column: 7, scope: !592, inlinedAt: !1085)
!1098 = !DILocation(line: 122, column: 5, scope: !603, inlinedAt: !1085)
!1099 = !DILocation(line: 123, column: 5, scope: !627, inlinedAt: !1085)
!1100 = !DILocation(line: 123, column: 5, scope: !628, inlinedAt: !1085)
!1101 = !DILocation(line: 125, column: 3, scope: !592, inlinedAt: !1085)
!1102 = !DILocation(line: 424, column: 20, scope: !724)
!1103 = !DILocation(line: 430, column: 23, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !724, file: !3, line: 430, column: 15)
!1105 = !DILocation(line: 430, column: 32, scope: !1104)
!1106 = !DILocation(line: 430, column: 15, scope: !724)
!1107 = !DILocation(line: 430, column: 15, scope: !1104)
!1108 = !DILocation(line: 431, column: 41, scope: !1104)
!1109 = !DILocation(line: 431, column: 13, scope: !1104)
!1110 = !DILocation(line: 433, column: 22, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 432, column: 16)
!1112 = !DILocation(line: 433, column: 25, scope: !1111)
!1113 = !DILocation(line: 434, column: 13, scope: !1111)
!1114 = !DILocation(line: 0, scope: !1111)
!1115 = !DILocation(line: 0, scope: !1104)
!1116 = !DILocation(line: 438, column: 15, scope: !730)
!1117 = !DILocation(line: 439, column: 11, scope: !730)
!1118 = !DILocation(line: 0, scope: !775)
!1119 = !DILocation(line: 445, column: 1, scope: !706)
!1120 = distinct !DISubprogram(name: "luaX_lookahead", scope: !3, file: !3, line: 459, type: !679, isLocal: false, isDefinition: true, scopeLine: 459, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1121)
!1121 = !{!1122}
!1122 = !DILocalVariable(name: "ls", arg: 1, scope: !1120, file: !3, line: 459, type: !416)
!1123 = !DILocation(line: 459, column: 32, scope: !1120)
!1124 = !DILocation(line: 461, column: 49, scope: !1120)
!1125 = !DILocation(line: 461, column: 25, scope: !1120)
!1126 = !DILocation(line: 461, column: 17, scope: !1120)
!1127 = !DILocation(line: 461, column: 23, scope: !1120)
!1128 = !DILocation(line: 462, column: 1, scope: !1120)
!1129 = distinct !DISubprogram(name: "save", scope: !3, file: !3, line: 51, type: !1130, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1132)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{null, !416, !41}
!1132 = !{!1133, !1134, !1135, !1136}
!1133 = !DILocalVariable(name: "ls", arg: 1, scope: !1129, file: !3, line: 51, type: !416)
!1134 = !DILocalVariable(name: "c", arg: 2, scope: !1129, file: !3, line: 51, type: !41)
!1135 = !DILocalVariable(name: "b", scope: !1129, file: !3, line: 52, type: !490)
!1136 = !DILocalVariable(name: "newsize", scope: !1137, file: !3, line: 54, type: !49)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 53, column: 31)
!1138 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 53, column: 7)
!1139 = !DILocation(line: 103, column: 8, scope: !515, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 56, column: 7, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 55, column: 9)
!1142 = !DILocation(line: 51, column: 29, scope: !1129)
!1143 = !DILocation(line: 51, column: 37, scope: !1129)
!1144 = !DILocation(line: 52, column: 20, scope: !1129)
!1145 = !DILocation(line: 52, column: 12, scope: !1129)
!1146 = !DILocation(line: 53, column: 10, scope: !1138)
!1147 = !DILocation(line: 53, column: 12, scope: !1138)
!1148 = !DILocation(line: 53, column: 21, scope: !1138)
!1149 = !DILocation(line: 53, column: 16, scope: !1138)
!1150 = !DILocation(line: 53, column: 7, scope: !1129)
!1151 = !DILocation(line: 60, column: 6, scope: !1129)
!1152 = !DILocation(line: 55, column: 21, scope: !1141)
!1153 = !DILocation(line: 55, column: 9, scope: !1137)
!1154 = !DILocation(line: 58, column: 5, scope: !1137)
!1155 = !DILocation(line: 102, column: 31, scope: !515, inlinedAt: !1140)
!1156 = !DILocation(line: 102, column: 47, scope: !515, inlinedAt: !1140)
!1157 = !DILocation(line: 102, column: 56, scope: !515, inlinedAt: !1140)
!1158 = !DILocation(line: 103, column: 3, scope: !515, inlinedAt: !1140)
!1159 = !DILocation(line: 104, column: 22, scope: !515, inlinedAt: !1140)
!1160 = !DILocation(line: 104, column: 3, scope: !515, inlinedAt: !1140)
!1161 = !DILocation(line: 105, column: 30, scope: !515, inlinedAt: !1140)
!1162 = !DILocation(line: 105, column: 56, scope: !515, inlinedAt: !1140)
!1163 = !DILocation(line: 105, column: 9, scope: !515, inlinedAt: !1140)
!1164 = !DILocation(line: 106, column: 7, scope: !515, inlinedAt: !1140)
!1165 = !DILocation(line: 108, column: 18, scope: !515, inlinedAt: !1140)
!1166 = !DILocation(line: 108, column: 3, scope: !515, inlinedAt: !1140)
!1167 = !DILocation(line: 109, column: 1, scope: !515, inlinedAt: !1140)
!1168 = !DILocation(line: 56, column: 7, scope: !1141)
!1169 = !DILocation(line: 57, column: 18, scope: !1137)
!1170 = !DILocation(line: 57, column: 27, scope: !1137)
!1171 = !DILocation(line: 54, column: 12, scope: !1137)
!1172 = !DILocation(line: 59, column: 3, scope: !1137)
!1173 = !DILocation(line: 60, column: 17, scope: !1129)
!1174 = !DILocation(line: 60, column: 23, scope: !1129)
!1175 = !DILocation(line: 60, column: 3, scope: !1129)
!1176 = !DILocation(line: 60, column: 21, scope: !1129)
!1177 = !DILocation(line: 61, column: 1, scope: !1129)
!1178 = distinct !DISubprogram(name: "inclinenumber", scope: !3, file: !3, line: 129, type: !679, isLocal: true, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1179)
!1179 = !{!1180, !1181}
!1180 = !DILocalVariable(name: "ls", arg: 1, scope: !1178, file: !3, line: 129, type: !416)
!1181 = !DILocalVariable(name: "old", scope: !1178, file: !3, line: 130, type: !41)
!1182 = !DILocation(line: 129, column: 38, scope: !1178)
!1183 = !DILocation(line: 130, column: 17, scope: !1178)
!1184 = !DILocation(line: 130, column: 7, scope: !1178)
!1185 = !DILocation(line: 132, column: 3, scope: !1178)
!1186 = !DILocation(line: 133, column: 7, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 133, column: 7)
!1188 = !DILocation(line: 133, column: 25, scope: !1187)
!1189 = !DILocation(line: 133, column: 40, scope: !1187)
!1190 = !DILocation(line: 133, column: 7, scope: !1178)
!1191 = !DILocation(line: 134, column: 5, scope: !1187)
!1192 = !DILocation(line: 135, column: 13, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 135, column: 7)
!1194 = !DILocation(line: 135, column: 7, scope: !1193)
!1195 = !DILocation(line: 135, column: 24, scope: !1193)
!1196 = !DILocation(line: 135, column: 7, scope: !1178)
!1197 = !DILocation(line: 112, column: 34, scope: !580, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 136, column: 5, scope: !1193)
!1199 = !DILocation(line: 112, column: 50, scope: !580, inlinedAt: !1198)
!1200 = !DILocation(line: 113, column: 32, scope: !580, inlinedAt: !1198)
!1201 = !DILocation(line: 113, column: 3, scope: !580, inlinedAt: !1198)
!1202 = !DILocation(line: 114, column: 1, scope: !580, inlinedAt: !1198)
!1203 = !DILocation(line: 136, column: 5, scope: !1193)
!1204 = !DILocation(line: 137, column: 1, scope: !1178)
!1205 = distinct !DISubprogram(name: "skip_sep", scope: !3, file: !3, line: 210, type: !1206, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1208)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!41, !416}
!1208 = !{!1209, !1210, !1211}
!1209 = !DILocalVariable(name: "ls", arg: 1, scope: !1205, file: !3, line: 210, type: !416)
!1210 = !DILocalVariable(name: "count", scope: !1205, file: !3, line: 211, type: !41)
!1211 = !DILocalVariable(name: "s", scope: !1205, file: !3, line: 212, type: !41)
!1212 = !DILocation(line: 210, column: 32, scope: !1205)
!1213 = !DILocation(line: 211, column: 7, scope: !1205)
!1214 = !DILocation(line: 212, column: 15, scope: !1205)
!1215 = !DILocation(line: 212, column: 7, scope: !1205)
!1216 = !DILocation(line: 214, column: 3, scope: !1205)
!1217 = !DILocation(line: 215, column: 3, scope: !1205)
!1218 = !DILocation(line: 215, column: 22, scope: !1205)
!1219 = !DILocation(line: 216, column: 5, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 215, column: 30)
!1221 = !DILocation(line: 217, column: 10, scope: !1220)
!1222 = distinct !{!1222, !1217, !1223}
!1223 = !DILocation(line: 218, column: 3, scope: !1205)
!1224 = !DILocation(line: 215, column: 14, scope: !1205)
!1225 = !DILocation(line: 0, scope: !1220)
!1226 = !DILocation(line: 219, column: 23, scope: !1205)
!1227 = !DILocation(line: 219, column: 10, scope: !1205)
!1228 = !DILocation(line: 219, column: 3, scope: !1205)
!1229 = distinct !DISubprogram(name: "read_long_string", scope: !3, file: !3, line: 223, type: !1230, isLocal: true, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1232)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{null, !416, !709, !41}
!1232 = !{!1233, !1234, !1235, !1236}
!1233 = !DILocalVariable(name: "ls", arg: 1, scope: !1229, file: !3, line: 223, type: !416)
!1234 = !DILocalVariable(name: "seminfo", arg: 2, scope: !1229, file: !3, line: 223, type: !709)
!1235 = !DILocalVariable(name: "sep", arg: 3, scope: !1229, file: !3, line: 223, type: !41)
!1236 = !DILocalVariable(name: "cont", scope: !1229, file: !3, line: 224, type: !41)
!1237 = !DILocation(line: 103, column: 8, scope: !515, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 232, column: 9, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 230, column: 26)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 229, column: 12)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 229, column: 3)
!1242 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 229, column: 3)
!1243 = !DILocation(line: 223, column: 41, scope: !1229)
!1244 = !DILocation(line: 223, column: 54, scope: !1229)
!1245 = !DILocation(line: 223, column: 67, scope: !1229)
!1246 = !DILocation(line: 224, column: 7, scope: !1229)
!1247 = !DILocation(line: 226, column: 3, scope: !1229)
!1248 = !DILocation(line: 227, column: 7, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 227, column: 7)
!1250 = !DILocation(line: 227, column: 7, scope: !1229)
!1251 = !DILocation(line: 228, column: 5, scope: !1249)
!1252 = !DILocation(line: 229, column: 3, scope: !1229)
!1253 = !DILocation(line: 230, column: 17, scope: !1240)
!1254 = !DILocation(line: 230, column: 5, scope: !1240)
!1255 = !DILocation(line: 102, column: 31, scope: !515, inlinedAt: !1238)
!1256 = !DILocation(line: 102, column: 47, scope: !515, inlinedAt: !1238)
!1257 = !DILocation(line: 102, column: 56, scope: !515, inlinedAt: !1238)
!1258 = !DILocation(line: 103, column: 3, scope: !515, inlinedAt: !1238)
!1259 = !DILocation(line: 104, column: 22, scope: !515, inlinedAt: !1238)
!1260 = !DILocation(line: 104, column: 3, scope: !515, inlinedAt: !1238)
!1261 = !DILocation(line: 105, column: 30, scope: !515, inlinedAt: !1238)
!1262 = !DILocation(line: 105, column: 56, scope: !515, inlinedAt: !1238)
!1263 = !DILocation(line: 105, column: 9, scope: !515, inlinedAt: !1238)
!1264 = !DILocation(line: 106, column: 7, scope: !515, inlinedAt: !1238)
!1265 = !DILocation(line: 107, column: 26, scope: !539, inlinedAt: !1238)
!1266 = !DILocation(line: 89, column: 40, scope: !543, inlinedAt: !1267)
!1267 = distinct !DILocation(line: 107, column: 53, scope: !539, inlinedAt: !1238)
!1268 = !DILocation(line: 89, column: 48, scope: !543, inlinedAt: !1267)
!1269 = !DILocation(line: 90, column: 3, scope: !543, inlinedAt: !1267)
!1270 = !DILocation(line: 78, column: 39, scope: !413, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 97, column: 14, scope: !551, inlinedAt: !1267)
!1272 = !DILocation(line: 78, column: 47, scope: !413, inlinedAt: !1271)
!1273 = !DILocation(line: 79, column: 7, scope: !413, inlinedAt: !1271)
!1274 = !DILocation(line: 85, column: 5, scope: !499, inlinedAt: !1271)
!1275 = !DILocation(line: 86, column: 1, scope: !413, inlinedAt: !1271)
!1276 = !DILocation(line: 97, column: 7, scope: !551, inlinedAt: !1267)
!1277 = !DILocation(line: 99, column: 1, scope: !543, inlinedAt: !1267)
!1278 = !DILocation(line: 107, column: 5, scope: !539, inlinedAt: !1238)
!1279 = !DILocation(line: 108, column: 18, scope: !515, inlinedAt: !1238)
!1280 = !DILocation(line: 108, column: 3, scope: !515, inlinedAt: !1238)
!1281 = !DILocation(line: 109, column: 1, scope: !515, inlinedAt: !1238)
!1282 = !DILocation(line: 234, column: 9, scope: !1239)
!1283 = !DILocation(line: 237, column: 13, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 237, column: 13)
!1285 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 236, column: 17)
!1286 = !DILocation(line: 237, column: 26, scope: !1284)
!1287 = !DILocation(line: 237, column: 13, scope: !1285)
!1288 = !DILocation(line: 238, column: 11, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 237, column: 34)
!1290 = !DILocation(line: 241, column: 15, scope: !1289)
!1291 = !DILocation(line: 242, column: 13, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 241, column: 15)
!1293 = !DILocation(line: 249, column: 13, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 249, column: 13)
!1295 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 248, column: 17)
!1296 = !DILocation(line: 249, column: 26, scope: !1294)
!1297 = !DILocation(line: 249, column: 13, scope: !1295)
!1298 = !DILocation(line: 250, column: 11, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 249, column: 34)
!1300 = !DILocation(line: 272, column: 7, scope: !1229)
!1301 = !DILocation(line: 261, column: 9, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 260, column: 18)
!1303 = !DILocation(line: 262, column: 9, scope: !1302)
!1304 = !DILocation(line: 263, column: 13, scope: !1302)
!1305 = !DILocation(line: 263, column: 23, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 263, column: 13)
!1307 = !DILocation(line: 267, column: 13, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 266, column: 16)
!1309 = !DILocation(line: 267, column: 22, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 267, column: 13)
!1311 = !DILocation(line: 268, column: 14, scope: !1310)
!1312 = !DILocation(line: 229, column: 3, scope: !1241)
!1313 = distinct !{!1313, !1314, !1315}
!1314 = !DILocation(line: 229, column: 3, scope: !1242)
!1315 = !DILocation(line: 271, column: 3, scope: !1242)
!1316 = !DILocation(line: 273, column: 38, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 272, column: 7)
!1318 = !DILocation(line: 273, column: 65, scope: !1317)
!1319 = !DILocation(line: 273, column: 60, scope: !1317)
!1320 = !DILocation(line: 274, column: 38, scope: !1317)
!1321 = !DILocation(line: 274, column: 64, scope: !1317)
!1322 = !DILocation(line: 274, column: 63, scope: !1317)
!1323 = !DILocation(line: 274, column: 61, scope: !1317)
!1324 = !DILocation(line: 117, column: 36, scope: !592, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 273, column: 19, scope: !1317)
!1326 = !DILocation(line: 117, column: 52, scope: !592, inlinedAt: !1325)
!1327 = !DILocation(line: 117, column: 64, scope: !592, inlinedAt: !1325)
!1328 = !DILocation(line: 118, column: 22, scope: !592, inlinedAt: !1325)
!1329 = !DILocation(line: 118, column: 14, scope: !592, inlinedAt: !1325)
!1330 = !DILocation(line: 119, column: 17, scope: !592, inlinedAt: !1325)
!1331 = !DILocation(line: 119, column: 12, scope: !592, inlinedAt: !1325)
!1332 = !DILocation(line: 120, column: 34, scope: !592, inlinedAt: !1325)
!1333 = !DILocation(line: 120, column: 38, scope: !592, inlinedAt: !1325)
!1334 = !DILocation(line: 120, column: 15, scope: !592, inlinedAt: !1325)
!1335 = !DILocation(line: 120, column: 11, scope: !592, inlinedAt: !1325)
!1336 = !DILocation(line: 121, column: 7, scope: !605, inlinedAt: !1325)
!1337 = !DILocation(line: 121, column: 7, scope: !592, inlinedAt: !1325)
!1338 = !DILocation(line: 122, column: 5, scope: !603, inlinedAt: !1325)
!1339 = !DILocation(line: 123, column: 5, scope: !627, inlinedAt: !1325)
!1340 = !DILocation(line: 123, column: 5, scope: !628, inlinedAt: !1325)
!1341 = !DILocation(line: 125, column: 3, scope: !592, inlinedAt: !1325)
!1342 = !DILocation(line: 273, column: 14, scope: !1317)
!1343 = !DILocation(line: 273, column: 17, scope: !1317)
!1344 = !DILocation(line: 273, column: 5, scope: !1317)
!1345 = !DILocation(line: 275, column: 1, scope: !1229)
!1346 = distinct !DISubprogram(name: "read_numeral", scope: !3, file: !3, line: 194, type: !1347, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1349)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{null, !416, !709}
!1349 = !{!1350, !1351}
!1350 = !DILocalVariable(name: "ls", arg: 1, scope: !1346, file: !3, line: 194, type: !416)
!1351 = !DILocalVariable(name: "seminfo", arg: 2, scope: !1346, file: !3, line: 194, type: !709)
!1352 = !DILocation(line: 103, column: 8, scope: !515, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 188, column: 5, scope: !1354, inlinedAt: !1390)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 185, column: 56)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 185, column: 7)
!1356 = distinct !DISubprogram(name: "trydecpoint", scope: !3, file: !3, line: 179, type: !1347, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1357)
!1357 = !{!1358, !1359, !1360, !1389}
!1358 = !DILocalVariable(name: "ls", arg: 1, scope: !1356, file: !3, line: 179, type: !416)
!1359 = !DILocalVariable(name: "seminfo", arg: 2, scope: !1356, file: !3, line: 179, type: !709)
!1360 = !DILocalVariable(name: "cv", scope: !1356, file: !3, line: 181, type: !1361)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !1363, line: 42, size: 768, elements: !1364)
!1363 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!1364 = !{!1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !1362, file: !1363, line: 44, baseType: !48, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !1362, file: !1363, line: 45, baseType: !48, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !1362, file: !1363, line: 46, baseType: !48, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !1362, file: !1363, line: 47, baseType: !48, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !1362, file: !1363, line: 48, baseType: !48, size: 64, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !1362, file: !1363, line: 49, baseType: !48, size: 64, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !1362, file: !1363, line: 50, baseType: !48, size: 64, offset: 384)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !1362, file: !1363, line: 51, baseType: !48, size: 64, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !1362, file: !1363, line: 52, baseType: !48, size: 64, offset: 512)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !1362, file: !1363, line: 53, baseType: !48, size: 64, offset: 576)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !1362, file: !1363, line: 54, baseType: !47, size: 8, offset: 640)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !1362, file: !1363, line: 55, baseType: !47, size: 8, offset: 648)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !1362, file: !1363, line: 56, baseType: !47, size: 8, offset: 656)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !1362, file: !1363, line: 57, baseType: !47, size: 8, offset: 664)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !1362, file: !1363, line: 58, baseType: !47, size: 8, offset: 672)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !1362, file: !1363, line: 59, baseType: !47, size: 8, offset: 680)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !1362, file: !1363, line: 60, baseType: !47, size: 8, offset: 688)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !1362, file: !1363, line: 61, baseType: !47, size: 8, offset: 696)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !1362, file: !1363, line: 62, baseType: !47, size: 8, offset: 704)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !1362, file: !1363, line: 63, baseType: !47, size: 8, offset: 712)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !1362, file: !1363, line: 64, baseType: !47, size: 8, offset: 720)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !1362, file: !1363, line: 65, baseType: !47, size: 8, offset: 728)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !1362, file: !1363, line: 66, baseType: !47, size: 8, offset: 736)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !1362, file: !1363, line: 67, baseType: !47, size: 8, offset: 744)
!1389 = !DILocalVariable(name: "old", scope: !1356, file: !3, line: 182, type: !47)
!1390 = distinct !DILocation(line: 206, column: 5, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 205, column: 7)
!1392 = !DILocation(line: 194, column: 37, scope: !1346)
!1393 = !DILocation(line: 194, column: 50, scope: !1346)
!1394 = !DILocation(line: 196, column: 3, scope: !1346)
!1395 = !DILocation(line: 197, column: 5, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 196, column: 6)
!1397 = !DILocation(line: 198, column: 12, scope: !1346)
!1398 = !DILocation(line: 198, column: 33, scope: !1346)
!1399 = !DILocation(line: 198, column: 48, scope: !1346)
!1400 = !DILocation(line: 198, column: 3, scope: !1396)
!1401 = distinct !{!1401, !1394, !1402}
!1402 = !DILocation(line: 198, column: 54, scope: !1346)
!1403 = !DILocation(line: 163, column: 34, scope: !1023, inlinedAt: !1404)
!1404 = distinct !DILocation(line: 199, column: 7, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 199, column: 7)
!1406 = !DILocation(line: 163, column: 50, scope: !1023, inlinedAt: !1404)
!1407 = !DILocation(line: 164, column: 8, scope: !1033, inlinedAt: !1404)
!1408 = !DILocation(line: 164, column: 7, scope: !1023, inlinedAt: !1404)
!1409 = !DILocation(line: 166, column: 3, scope: !1023, inlinedAt: !1404)
!1410 = !DILocation(line: 167, column: 3, scope: !1023, inlinedAt: !1404)
!1411 = !DILocation(line: 168, column: 1, scope: !1023, inlinedAt: !1404)
!1412 = !DILocation(line: 199, column: 7, scope: !1346)
!1413 = !DILocation(line: 163, column: 34, scope: !1023, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 200, column: 5, scope: !1405)
!1415 = !DILocation(line: 163, column: 50, scope: !1023, inlinedAt: !1414)
!1416 = !DILocation(line: 164, column: 8, scope: !1033, inlinedAt: !1414)
!1417 = !DILocation(line: 164, column: 7, scope: !1023, inlinedAt: !1414)
!1418 = !DILocation(line: 166, column: 3, scope: !1023, inlinedAt: !1414)
!1419 = !DILocation(line: 167, column: 3, scope: !1023, inlinedAt: !1414)
!1420 = !DILocation(line: 0, scope: !1405)
!1421 = !DILocation(line: 201, column: 3, scope: !1346)
!1422 = !DILocation(line: 201, column: 10, scope: !1346)
!1423 = !DILocation(line: 201, column: 31, scope: !1346)
!1424 = !DILocation(line: 201, column: 46, scope: !1346)
!1425 = !DILocation(line: 202, column: 5, scope: !1346)
!1426 = distinct !{!1426, !1421, !1425}
!1427 = !DILocation(line: 203, column: 3, scope: !1346)
!1428 = !DILocation(line: 204, column: 28, scope: !1346)
!1429 = !DILocalVariable(name: "ls", arg: 1, scope: !1430, file: !3, line: 171, type: !416)
!1430 = distinct !DISubprogram(name: "buffreplace", scope: !3, file: !3, line: 171, type: !1431, isLocal: true, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1433)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{null, !416, !47, !47}
!1433 = !{!1429, !1434, !1435, !1436, !1437}
!1434 = !DILocalVariable(name: "from", arg: 2, scope: !1430, file: !3, line: 171, type: !47)
!1435 = !DILocalVariable(name: "to", arg: 3, scope: !1430, file: !3, line: 171, type: !47)
!1436 = !DILocalVariable(name: "n", scope: !1430, file: !3, line: 172, type: !49)
!1437 = !DILocalVariable(name: "p", scope: !1430, file: !3, line: 173, type: !48)
!1438 = !DILocation(line: 171, column: 36, scope: !1430, inlinedAt: !1439)
!1439 = distinct !DILocation(line: 204, column: 3, scope: !1346)
!1440 = !DILocation(line: 171, column: 45, scope: !1430, inlinedAt: !1439)
!1441 = !DILocation(line: 171, column: 56, scope: !1430, inlinedAt: !1439)
!1442 = !DILocation(line: 172, column: 14, scope: !1430, inlinedAt: !1439)
!1443 = !DILocation(line: 172, column: 10, scope: !1430, inlinedAt: !1439)
!1444 = !DILocation(line: 173, column: 13, scope: !1430, inlinedAt: !1439)
!1445 = !DILocation(line: 173, column: 9, scope: !1430, inlinedAt: !1439)
!1446 = !DILocation(line: 174, column: 3, scope: !1430, inlinedAt: !1439)
!1447 = !DILocation(line: 174, column: 11, scope: !1430, inlinedAt: !1439)
!1448 = !DILocation(line: 175, column: 9, scope: !1449, inlinedAt: !1439)
!1449 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 175, column: 9)
!1450 = !DILocation(line: 175, column: 14, scope: !1449, inlinedAt: !1439)
!1451 = !DILocation(line: 175, column: 9, scope: !1430, inlinedAt: !1439)
!1452 = !DILocation(line: 175, column: 28, scope: !1449, inlinedAt: !1439)
!1453 = !DILocation(line: 175, column: 23, scope: !1449, inlinedAt: !1439)
!1454 = !DILocation(line: 205, column: 19, scope: !1391)
!1455 = !DILocation(line: 176, column: 1, scope: !1430, inlinedAt: !1439)
!1456 = !DILocation(line: 205, column: 52, scope: !1391)
!1457 = !DILocation(line: 205, column: 8, scope: !1391)
!1458 = !DILocation(line: 205, column: 7, scope: !1346)
!1459 = !DILocation(line: 179, column: 36, scope: !1356, inlinedAt: !1390)
!1460 = !DILocation(line: 179, column: 49, scope: !1356, inlinedAt: !1390)
!1461 = !DILocation(line: 181, column: 22, scope: !1356, inlinedAt: !1390)
!1462 = !DILocation(line: 181, column: 17, scope: !1356, inlinedAt: !1390)
!1463 = !DILocation(line: 182, column: 18, scope: !1356, inlinedAt: !1390)
!1464 = !DILocation(line: 182, column: 8, scope: !1356, inlinedAt: !1390)
!1465 = !DILocation(line: 183, column: 19, scope: !1356, inlinedAt: !1390)
!1466 = !DILocation(line: 183, column: 28, scope: !1356, inlinedAt: !1390)
!1467 = !{!1468, !399, i64 0}
!1468 = !{!"lconv", !399, i64 0, !399, i64 8, !399, i64 16, !399, i64 24, !399, i64 32, !399, i64 40, !399, i64 48, !399, i64 56, !399, i64 64, !399, i64 72, !400, i64 80, !400, i64 81, !400, i64 82, !400, i64 83, !400, i64 84, !400, i64 85, !400, i64 86, !400, i64 87, !400, i64 88, !400, i64 89, !400, i64 90, !400, i64 91, !400, i64 92, !400, i64 93}
!1469 = !DILocation(line: 183, column: 24, scope: !1356, inlinedAt: !1390)
!1470 = !DILocation(line: 183, column: 16, scope: !1356, inlinedAt: !1390)
!1471 = !DILocation(line: 171, column: 36, scope: !1430, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 184, column: 3, scope: !1356, inlinedAt: !1390)
!1473 = !DILocation(line: 171, column: 45, scope: !1430, inlinedAt: !1472)
!1474 = !DILocation(line: 171, column: 56, scope: !1430, inlinedAt: !1472)
!1475 = !DILocation(line: 172, column: 14, scope: !1430, inlinedAt: !1472)
!1476 = !DILocation(line: 172, column: 10, scope: !1430, inlinedAt: !1472)
!1477 = !DILocation(line: 173, column: 13, scope: !1430, inlinedAt: !1472)
!1478 = !DILocation(line: 173, column: 9, scope: !1430, inlinedAt: !1472)
!1479 = !DILocation(line: 174, column: 3, scope: !1430, inlinedAt: !1472)
!1480 = !DILocation(line: 174, column: 11, scope: !1430, inlinedAt: !1472)
!1481 = !DILocation(line: 175, column: 9, scope: !1449, inlinedAt: !1472)
!1482 = !DILocation(line: 175, column: 14, scope: !1449, inlinedAt: !1472)
!1483 = !DILocation(line: 175, column: 9, scope: !1430, inlinedAt: !1472)
!1484 = !DILocation(line: 175, column: 28, scope: !1449, inlinedAt: !1472)
!1485 = !DILocation(line: 175, column: 23, scope: !1449, inlinedAt: !1472)
!1486 = !DILocation(line: 185, column: 19, scope: !1355, inlinedAt: !1390)
!1487 = !DILocation(line: 176, column: 1, scope: !1430, inlinedAt: !1472)
!1488 = !DILocation(line: 185, column: 8, scope: !1355, inlinedAt: !1390)
!1489 = !DILocation(line: 185, column: 7, scope: !1356, inlinedAt: !1390)
!1490 = !DILocation(line: 187, column: 25, scope: !1354, inlinedAt: !1390)
!1491 = !DILocation(line: 171, column: 36, scope: !1430, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 187, column: 5, scope: !1354, inlinedAt: !1390)
!1493 = !DILocation(line: 171, column: 45, scope: !1430, inlinedAt: !1492)
!1494 = !DILocation(line: 171, column: 56, scope: !1430, inlinedAt: !1492)
!1495 = !DILocation(line: 172, column: 14, scope: !1430, inlinedAt: !1492)
!1496 = !DILocation(line: 172, column: 10, scope: !1430, inlinedAt: !1492)
!1497 = !DILocation(line: 173, column: 13, scope: !1430, inlinedAt: !1492)
!1498 = !DILocation(line: 173, column: 9, scope: !1430, inlinedAt: !1492)
!1499 = !DILocation(line: 174, column: 3, scope: !1430, inlinedAt: !1492)
!1500 = !DILocation(line: 174, column: 11, scope: !1430, inlinedAt: !1492)
!1501 = !DILocation(line: 175, column: 9, scope: !1449, inlinedAt: !1492)
!1502 = !DILocation(line: 175, column: 14, scope: !1449, inlinedAt: !1492)
!1503 = !DILocation(line: 175, column: 9, scope: !1430, inlinedAt: !1492)
!1504 = !DILocation(line: 175, column: 28, scope: !1449, inlinedAt: !1492)
!1505 = !DILocation(line: 175, column: 23, scope: !1449, inlinedAt: !1492)
!1506 = !DILocation(line: 176, column: 1, scope: !1430, inlinedAt: !1492)
!1507 = !DILocation(line: 102, column: 31, scope: !515, inlinedAt: !1353)
!1508 = !DILocation(line: 102, column: 47, scope: !515, inlinedAt: !1353)
!1509 = !DILocation(line: 102, column: 56, scope: !515, inlinedAt: !1353)
!1510 = !DILocation(line: 103, column: 3, scope: !515, inlinedAt: !1353)
!1511 = !DILocation(line: 104, column: 22, scope: !515, inlinedAt: !1353)
!1512 = !DILocation(line: 104, column: 3, scope: !515, inlinedAt: !1353)
!1513 = !DILocation(line: 105, column: 30, scope: !515, inlinedAt: !1353)
!1514 = !DILocation(line: 105, column: 56, scope: !515, inlinedAt: !1353)
!1515 = !DILocation(line: 105, column: 9, scope: !515, inlinedAt: !1353)
!1516 = !DILocation(line: 106, column: 7, scope: !515, inlinedAt: !1353)
!1517 = !DILocation(line: 107, column: 26, scope: !539, inlinedAt: !1353)
!1518 = !DILocation(line: 89, column: 40, scope: !543, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 107, column: 53, scope: !539, inlinedAt: !1353)
!1520 = !DILocation(line: 89, column: 48, scope: !543, inlinedAt: !1519)
!1521 = !DILocation(line: 90, column: 3, scope: !543, inlinedAt: !1519)
!1522 = !DILocation(line: 94, column: 7, scope: !551, inlinedAt: !1519)
!1523 = !DILocation(line: 95, column: 14, scope: !551, inlinedAt: !1519)
!1524 = !DILocation(line: 95, column: 7, scope: !551, inlinedAt: !1519)
!1525 = !DILocation(line: 99, column: 1, scope: !543, inlinedAt: !1519)
!1526 = !DILocation(line: 107, column: 5, scope: !539, inlinedAt: !1353)
!1527 = !DILocation(line: 108, column: 18, scope: !515, inlinedAt: !1353)
!1528 = !DILocation(line: 108, column: 3, scope: !515, inlinedAt: !1353)
!1529 = !DILocation(line: 109, column: 1, scope: !515, inlinedAt: !1353)
!1530 = !DILocation(line: 189, column: 3, scope: !1354, inlinedAt: !1390)
!1531 = !DILocation(line: 190, column: 1, scope: !1356, inlinedAt: !1390)
!1532 = !DILocation(line: 206, column: 5, scope: !1391)
!1533 = !DILocation(line: 207, column: 1, scope: !1346)
!1534 = distinct !{!1534, !1535, !1536}
!1535 = !DILocation(line: 174, column: 3, scope: !1430)
!1536 = !DILocation(line: 175, column: 30, scope: !1430)
