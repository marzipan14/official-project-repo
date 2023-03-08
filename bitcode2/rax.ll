; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.raxNode = type { i32, [0 x i8] }
%struct.rax = type { %struct.raxNode*, i64, i64 }
%struct.raxStack = type { i8**, i64, i64, [32 x i8*], i32 }
%struct.raxIterator = type { i32, %struct.rax*, i8*, i8*, i64, i64, [128 x i8], %struct.raxNode*, %struct.raxStack, i32 (%struct.raxNode**)* }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }

@.str = private unnamed_addr constant [22 x i8] c"rax-not-found-pointer\00", align 1
@raxNotFound = dso_local local_unnamed_addr global i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), align 8, !dbg !0
@raxDebugMsg = internal unnamed_addr global i32 1, align 4, !dbg !35
@.str.1 = private unnamed_addr constant [71 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.c\00", align 1
@__func__.raxAddChild = private unnamed_addr constant [12 x i8] c"raxAddChild\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"n->iscompr == 0\00", align 1
@__func__.raxCompressNode = private unnamed_addr constant [16 x i8] c"raxCompressNode\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"n->size == 0 && n->iscompr == 0\00", align 1
@__func__.raxGenericInsert = private unnamed_addr constant [17 x i8] c"raxGenericInsert\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"raxRemove(rax,s,i,NULL) != 0\00", align 1
@__func__.raxFreeWithCallback = private unnamed_addr constant [20 x i8] c"raxFreeWithCallback\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"rax->numnodes == 0\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@__func__.raxSeek = private unnamed_addr constant [8 x i8] c"raxSeek\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"it->node->iskey\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%c%.*s%c\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"=%p\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" `-(%c) \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"%s: %p [%.*s] key:%d size:%d children:\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%p \00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @raxSetDebugMsg(i32) local_unnamed_addr #0 !dbg !41 {
  store i32 %0, i32* @raxDebugMsg, align 4, !dbg !47, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  ret void, !dbg !52
}

; Function Attrs: noredzone nounwind
define dso_local %struct.raxNode* @raxNewNode(i64, i32) local_unnamed_addr #0 !dbg !53 {
  %3 = add i64 %0, 4, !dbg !67
  %4 = sub i64 4, %0, !dbg !68
  %5 = and i64 %4, 7, !dbg !68
  %6 = shl i64 %0, 3, !dbg !69
  %7 = add i64 %3, %6, !dbg !70
  %8 = add i64 %7, %5, !dbg !71
  %9 = icmp eq i32 %1, 0, !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  br i1 %9, label %12, label %10, !dbg !75

; <label>:10:                                     ; preds = %2
  %11 = add i64 %8, 8, !dbg !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br label %12, !dbg !77

; <label>:12:                                     ; preds = %2, %10
  %13 = phi i64 [ %11, %10 ], [ %8, %2 ], !dbg !78
  %14 = tail call i8* @zmalloc(i64 %13) #6, !dbg !79
  %15 = icmp eq i8* %14, null, !dbg !80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  br i1 %15, label %21, label %16, !dbg !82

; <label>:16:                                     ; preds = %12
  %17 = bitcast i8* %14 to %struct.raxNode*, !dbg !79
  %18 = bitcast i8* %14 to i32*, !dbg !84
  %19 = trunc i64 %0 to i32, !dbg !85
  %20 = shl i32 %19, 3, !dbg !86
  store i32 %20, i32* %18, align 4, !dbg !86
  br label %21, !dbg !87

; <label>:21:                                     ; preds = %12, %16
  %22 = phi %struct.raxNode* [ %17, %16 ], [ null, %12 ], !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  ret %struct.raxNode* %22, !dbg !89
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local %struct.rax* @raxNew() local_unnamed_addr #0 !dbg !90 {
  %1 = tail call i8* @zmalloc(i64 24) #6, !dbg !104
  %2 = bitcast i8* %1 to %struct.rax*, !dbg !104
  %3 = icmp eq i8* %1, null, !dbg !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  br i1 %3, label %14, label %4, !dbg !108

; <label>:4:                                      ; preds = %0
  %5 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !109
  %6 = bitcast i8* %5 to <2 x i64>*, !dbg !110
  store <2 x i64> <i64 0, i64 1>, <2 x i64>* %6, align 8, !dbg !110, !tbaa !111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  %7 = tail call i8* @zmalloc(i64 8) #6, !dbg !118
  %8 = icmp eq i8* %7, null, !dbg !119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  br i1 %8, label %9, label %11, !dbg !120

; <label>:9:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  %10 = bitcast i8* %1 to %struct.raxNode**, !dbg !123
  store %struct.raxNode* null, %struct.raxNode** %10, align 8, !dbg !124, !tbaa !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  tail call void @zfree(i8* nonnull %1) #6, !dbg !129
  br label %14, !dbg !132

; <label>:11:                                     ; preds = %4
  %12 = bitcast i8* %7 to i32*, !dbg !134
  store i32 0, i32* %12, align 4, !dbg !135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  %13 = bitcast i8* %1 to i8**, !dbg !124
  store i8* %7, i8** %13, align 8, !dbg !124, !tbaa !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  br label %14, !dbg !137

; <label>:14:                                     ; preds = %0, %11, %9
  %15 = phi %struct.rax* [ null, %9 ], [ %2, %11 ], [ null, %0 ], !dbg !139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !141
  ret %struct.rax* %15, !dbg !141
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local %struct.raxNode* @raxReallocForData(%struct.raxNode*, i8* readnone) local_unnamed_addr #0 !dbg !142 {
  %3 = icmp eq i8* %1, null, !dbg !151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  br i1 %3, label %35, label %4, !dbg !153

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 0, !dbg !154
  %6 = load i32, i32* %5, align 4, !dbg !154
  %7 = lshr i32 %6, 3, !dbg !154
  %8 = add nuw nsw i32 %7, 4, !dbg !154
  %9 = sub nsw i32 4, %7, !dbg !154
  %10 = and i32 %9, 7, !dbg !154
  %11 = add nuw nsw i32 %8, %10, !dbg !154
  %12 = and i32 %6, 4, !dbg !154
  %13 = icmp eq i32 %12, 0, !dbg !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  br i1 %13, label %14, label %17, !dbg !154

; <label>:14:                                     ; preds = %4
  %15 = and i32 %6, -8, !dbg !154
  %16 = zext i32 %15 to i64, !dbg !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  br label %17, !dbg !154

; <label>:17:                                     ; preds = %4, %14
  %18 = phi i64 [ %16, %14 ], [ 8, %4 ], !dbg !154
  %19 = and i32 %6, 1, !dbg !154
  %20 = icmp eq i32 %19, 0, !dbg !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  br i1 %20, label %26, label %21, !dbg !154

; <label>:21:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %22 = shl i32 %6, 2
  %23 = and i32 %22, 8
  %24 = xor i32 %23, 8
  %25 = zext i32 %24 to i64
  br label %26

; <label>:26:                                     ; preds = %17, %21
  %27 = phi i64 [ 0, %17 ], [ %25, %21 ]
  %28 = bitcast %struct.raxNode* %0 to i8*, !dbg !156
  %29 = add nuw i32 %11, 8, !dbg !154
  %30 = zext i32 %29 to i64, !dbg !154
  %31 = add nuw nsw i64 %18, %30, !dbg !154
  %32 = add nuw nsw i64 %31, %27, !dbg !157
  %33 = tail call i8* @zrealloc(i8* %28, i64 %32) #6, !dbg !158
  %34 = bitcast i8* %33 to %struct.raxNode*, !dbg !158
  br label %35

; <label>:35:                                     ; preds = %2, %26
  %36 = phi %struct.raxNode* [ %34, %26 ], [ %0, %2 ], !dbg !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !160
  ret %struct.raxNode* %36, !dbg !160
}

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @raxSetData(%struct.raxNode*, i8*) local_unnamed_addr #0 !dbg !161 {
  %3 = alloca i8*, align 8
  store i8* %1, i8** %3, align 8, !tbaa !172
  %4 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 0, !dbg !173
  %5 = load i32, i32* %4, align 4, !dbg !174
  %6 = or i32 %5, 1, !dbg !174
  store i32 %6, i32* %4, align 4, !dbg !174
  %7 = icmp eq i8* %1, null, !dbg !175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !176
  br i1 %7, label %28, label %8, !dbg !176

; <label>:8:                                      ; preds = %2
  %9 = and i32 %6, -3, !dbg !177
  store i32 %9, i32* %4, align 4, !dbg !179
  %10 = bitcast %struct.raxNode* %0 to i8*, !dbg !180
  %11 = lshr i32 %5, 3, !dbg !181
  %12 = add nuw nsw i32 %11, 4, !dbg !181
  %13 = sub nsw i32 4, %11, !dbg !181
  %14 = and i32 %13, 7, !dbg !181
  %15 = add nuw nsw i32 %12, %14, !dbg !181
  %16 = zext i32 %15 to i64, !dbg !181
  %17 = and i32 %5, 4, !dbg !181
  %18 = icmp eq i32 %17, 0, !dbg !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  br i1 %18, label %19, label %22, !dbg !181

; <label>:19:                                     ; preds = %8
  %20 = and i32 %5, -8, !dbg !181
  %21 = zext i32 %20 to i64, !dbg !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  br label %22, !dbg !181

; <label>:22:                                     ; preds = %8, %19
  %23 = phi i64 [ %21, %19 ], [ 8, %8 ], !dbg !181
  %24 = add nuw nsw i64 %23, %16, !dbg !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %25 = getelementptr inbounds i8, i8* %10, i64 %24, !dbg !182
  %26 = bitcast i8** %3 to i8*, !dbg !184
  %27 = call i8* @memcpy(i8* nonnull %25, i8* nonnull %26, i64 8) #6, !dbg !185
  br label %30, !dbg !186

; <label>:28:                                     ; preds = %2
  %29 = or i32 %5, 3, !dbg !187
  store i32 %29, i32* %4, align 4, !dbg !187
  br label %30

; <label>:30:                                     ; preds = %28, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !188
  ret void, !dbg !188
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @raxGetData(%struct.raxNode*) local_unnamed_addr #0 !dbg !189 {
  %2 = alloca i8*, align 8
  %3 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 0, !dbg !197
  %4 = load i32, i32* %3, align 4, !dbg !197
  %5 = and i32 %4, 2, !dbg !197
  %6 = icmp eq i32 %5, 0, !dbg !199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  br i1 %6, label %7, label %38, !dbg !200

; <label>:7:                                      ; preds = %1
  %8 = bitcast %struct.raxNode* %0 to i8*, !dbg !201
  %9 = lshr i32 %4, 3, !dbg !202
  %10 = add nuw nsw i32 %9, 4, !dbg !202
  %11 = sub nsw i32 4, %9, !dbg !202
  %12 = and i32 %11, 7, !dbg !202
  %13 = add nuw nsw i32 %10, %12, !dbg !202
  %14 = zext i32 %13 to i64, !dbg !202
  %15 = and i32 %4, 4, !dbg !202
  %16 = icmp eq i32 %15, 0, !dbg !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  br i1 %16, label %17, label %20, !dbg !202

; <label>:17:                                     ; preds = %7
  %18 = and i32 %4, -8, !dbg !202
  %19 = zext i32 %18 to i64, !dbg !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  br label %20, !dbg !202

; <label>:20:                                     ; preds = %7, %17
  %21 = phi i64 [ %19, %17 ], [ 8, %7 ], !dbg !202
  %22 = add nuw nsw i64 %21, %14, !dbg !202
  %23 = and i32 %4, 1, !dbg !202
  %24 = icmp eq i32 %23, 0, !dbg !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  br i1 %24, label %30, label %25, !dbg !202

; <label>:25:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %26 = shl i32 %4, 2
  %27 = and i32 %26, 8
  %28 = xor i32 %27, 8
  %29 = zext i32 %28 to i64
  br label %30

; <label>:30:                                     ; preds = %20, %25
  %31 = phi i64 [ 0, %20 ], [ %29, %25 ]
  %32 = add nuw nsw i64 %22, %31, !dbg !202
  %33 = getelementptr inbounds i8, i8* %8, i64 %32, !dbg !203
  %34 = getelementptr inbounds i8, i8* %33, i64 -8, !dbg !204
  %35 = bitcast i8** %2 to i8*, !dbg !206
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %35) #7, !dbg !206
  %36 = call i8* @memcpy(i8* nonnull %35, i8* nonnull %34, i64 8) #6, !dbg !207
  %37 = load i8*, i8** %2, align 8, !dbg !208, !tbaa !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35) #7, !dbg !210
  br label %38

; <label>:38:                                     ; preds = %1, %30
  %39 = phi i8* [ %37, %30 ], [ null, %1 ], !dbg !211
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !210
  ret i8* %39, !dbg !210
}

; Function Attrs: noredzone nounwind
define dso_local %struct.raxNode* @raxAddChild(%struct.raxNode*, i8 zeroext, %struct.raxNode** nocapture, %struct.raxNode*** nocapture) local_unnamed_addr #0 !dbg !212 {
  %5 = alloca %struct.raxNode*, align 8
  %6 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 0, !dbg !234
  %7 = load i32, i32* %6, align 4, !dbg !234
  %8 = and i32 %7, 4, !dbg !234
  %9 = icmp eq i32 %8, 0, !dbg !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  br i1 %9, label %11, label %10, !dbg !234

; <label>:10:                                     ; preds = %4
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 255, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.raxAddChild, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !234
  unreachable

; <label>:11:                                     ; preds = %4
  %12 = lshr i32 %7, 3, !dbg !235
  %13 = add nuw nsw i32 %12, 4, !dbg !235
  %14 = sub nsw i32 4, %12, !dbg !235
  %15 = and i32 %14, 7, !dbg !235
  %16 = add nuw nsw i32 %13, %15, !dbg !235
  %17 = zext i32 %16 to i64, !dbg !235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !235
  %18 = and i32 %7, -8, !dbg !235
  %19 = zext i32 %18 to i64, !dbg !235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !235
  %20 = add nuw nsw i64 %17, %19, !dbg !235
  %21 = and i32 %7, 1, !dbg !235
  %22 = icmp eq i32 %21, 0, !dbg !235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !235
  br i1 %22, label %28, label %23, !dbg !235

; <label>:23:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %24 = shl i32 %7, 2
  %25 = and i32 %24, 8
  %26 = xor i32 %25, 8
  %27 = zext i32 %26 to i64
  br label %28

; <label>:28:                                     ; preds = %11, %23
  %29 = phi i64 [ 0, %11 ], [ %27, %23 ]
  %30 = add nuw nsw i64 %20, %29, !dbg !235
  %31 = add nuw nsw i32 %12, 1, !dbg !237
  %32 = shl i32 %31, 3, !dbg !237
  %33 = and i32 %7, 7, !dbg !237
  %34 = or i32 %32, %33, !dbg !237
  store i32 %34, i32* %6, align 4, !dbg !237
  %35 = and i32 %31, 536870911, !dbg !238
  %36 = add nuw nsw i32 %35, 4, !dbg !238
  %37 = sub nsw i32 3, %12, !dbg !238
  %38 = and i32 %37, 7, !dbg !238
  %39 = add nuw nsw i32 %36, %38, !dbg !238
  %40 = zext i32 %39 to i64, !dbg !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !238
  %41 = zext i32 %32 to i64, !dbg !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !238
  %42 = add nuw nsw i64 %40, %41, !dbg !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !238
  br i1 %22, label %48, label %43, !dbg !238

; <label>:43:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %44 = shl i32 %7, 2
  %45 = and i32 %44, 8
  %46 = xor i32 %45, 8
  %47 = zext i32 %46 to i64
  br label %48

; <label>:48:                                     ; preds = %28, %43
  %49 = phi i64 [ 0, %28 ], [ %47, %43 ]
  %50 = add nuw nsw i64 %42, %49, !dbg !238
  %51 = add i32 %34, -8, !dbg !240
  store i32 %51, i32* %6, align 4, !dbg !240
  %52 = bitcast %struct.raxNode** %5 to i8*, !dbg !241
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %52) #7, !dbg !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !246
  %53 = tail call i8* @zmalloc(i64 8) #6, !dbg !247
  %54 = icmp eq i8* %53, null, !dbg !248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  br i1 %54, label %55, label %56, !dbg !249

; <label>:55:                                     ; preds = %48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !251
  store %struct.raxNode* null, %struct.raxNode** %5, align 8, !dbg !252, !tbaa !172
  br label %157, !dbg !253

; <label>:56:                                     ; preds = %48
  %57 = bitcast i8* %53 to i32*, !dbg !256
  store i32 0, i32* %57, align 4, !dbg !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !251
  %58 = bitcast %struct.raxNode** %5 to i8**, !dbg !252
  store i8* %53, i8** %58, align 8, !dbg !252, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  %59 = bitcast %struct.raxNode* %0 to i8*, !dbg !260
  %60 = tail call i8* @zrealloc(i8* %59, i64 %50) #6, !dbg !261
  %61 = bitcast i8* %60 to %struct.raxNode*, !dbg !261
  %62 = icmp eq i8* %60, null, !dbg !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  br i1 %62, label %63, label %64, !dbg !265

; <label>:63:                                     ; preds = %56
  tail call void @zfree(i8* nonnull %53) #6, !dbg !266
  br label %157, !dbg !268

; <label>:64:                                     ; preds = %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  %65 = getelementptr inbounds i8, i8* %60, i64 4, !dbg !272
  %66 = bitcast i8* %60 to i32*, !dbg !276
  %67 = load i32, i32* %66, align 4, !dbg !276
  %68 = icmp ugt i32 %67, 7, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  br i1 %68, label %69, label %84, !dbg !278

; <label>:69:                                     ; preds = %64
  %70 = lshr i32 %67, 3
  %71 = zext i32 %70 to i64
  br label %72, !dbg !279

; <label>:72:                                     ; preds = %69, %78
  %73 = phi i64 [ 0, %69 ], [ %79, %78 ]
  %74 = phi i32 [ 0, %69 ], [ %80, %78 ]
  %75 = getelementptr inbounds i8, i8* %65, i64 %73, !dbg !279
  %76 = load i8, i8* %75, align 1, !dbg !279, !tbaa !280
  %77 = icmp ugt i8 %76, %1, !dbg !281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  br i1 %77, label %82, label %78, !dbg !282

; <label>:78:                                     ; preds = %72
  %79 = add nuw nsw i64 %73, 1, !dbg !283
  %80 = add nuw nsw i32 %74, 1, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  %81 = icmp ult i64 %79, %71, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  br i1 %81, label %72, label %84, !dbg !278, !llvm.loop !285

; <label>:82:                                     ; preds = %72
  %83 = trunc i64 %73 to i32, !dbg !282
  br label %84, !dbg !287

; <label>:84:                                     ; preds = %78, %82, %64
  %85 = phi i32 [ 0, %64 ], [ %83, %82 ], [ %80, %78 ], !dbg !289
  %86 = and i32 %67, 1, !dbg !287
  %87 = icmp eq i32 %86, 0, !dbg !290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  br i1 %87, label %98, label %88, !dbg !291

; <label>:88:                                     ; preds = %84
  %89 = and i32 %67, 2, !dbg !292
  %90 = icmp eq i32 %89, 0, !dbg !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !294
  br i1 %90, label %91, label %98, !dbg !294

; <label>:91:                                     ; preds = %88
  %92 = getelementptr inbounds i8, i8* %60, i64 %30, !dbg !295
  %93 = getelementptr inbounds i8, i8* %92, i64 -8, !dbg !297
  %94 = getelementptr inbounds i8, i8* %60, i64 %50, !dbg !299
  %95 = getelementptr inbounds i8, i8* %94, i64 -8, !dbg !300
  %96 = tail call i8* @memmove(i8* nonnull %95, i8* nonnull %93, i64 8) #6, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  %97 = load i32, i32* %66, align 4, !dbg !304
  br label %98, !dbg !303

; <label>:98:                                     ; preds = %88, %84, %91
  %99 = phi i32 [ %67, %88 ], [ %67, %84 ], [ %97, %91 ], !dbg !304
  %100 = sub nsw i64 %50, %30, !dbg !305
  %101 = add nsw i64 %100, -8, !dbg !306
  %102 = lshr i32 %99, 3, !dbg !304
  %103 = zext i32 %102 to i64, !dbg !308
  %104 = getelementptr inbounds i8, i8* %65, i64 %103, !dbg !308
  %105 = sub nsw i32 4, %102, !dbg !309
  %106 = and i32 %105, 7, !dbg !309
  %107 = zext i32 %106 to i64, !dbg !309
  %108 = getelementptr inbounds i8, i8* %104, i64 %107, !dbg !310
  %109 = zext i32 %85 to i64, !dbg !311
  %110 = shl nuw nsw i64 %109, 3, !dbg !312
  %111 = getelementptr inbounds i8, i8* %108, i64 %110, !dbg !313
  %112 = getelementptr inbounds i8, i8* %111, i64 %101, !dbg !314
  %113 = getelementptr inbounds i8, i8* %112, i64 8, !dbg !315
  %114 = sub nsw i32 %102, %85, !dbg !316
  %115 = sext i32 %114 to i64, !dbg !317
  %116 = shl nsw i64 %115, 3, !dbg !318
  %117 = tail call i8* @memmove(i8* nonnull %113, i8* nonnull %111, i64 %116) #6, !dbg !319
  %118 = icmp eq i64 %101, 0, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  br i1 %118, label %130, label %119, !dbg !322

; <label>:119:                                    ; preds = %98
  %120 = load i32, i32* %66, align 4, !dbg !323
  %121 = lshr i32 %120, 3, !dbg !323
  %122 = zext i32 %121 to i64, !dbg !323
  %123 = getelementptr inbounds i8, i8* %65, i64 %122, !dbg !323
  %124 = sub nsw i32 4, %121, !dbg !323
  %125 = and i32 %124, 7, !dbg !323
  %126 = zext i32 %125 to i64, !dbg !323
  %127 = getelementptr inbounds i8, i8* %123, i64 %126, !dbg !323
  %128 = getelementptr inbounds i8, i8* %127, i64 %101, !dbg !325
  %129 = tail call i8* @memmove(i8* nonnull %128, i8* nonnull %127, i64 %110) #6, !dbg !326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  br label %130, !dbg !327

; <label>:130:                                    ; preds = %98, %119
  %131 = getelementptr inbounds i8, i8* %65, i64 %109, !dbg !328
  %132 = getelementptr inbounds i8, i8* %131, i64 1, !dbg !329
  %133 = load i32, i32* %66, align 4, !dbg !330
  %134 = lshr i32 %133, 3, !dbg !330
  %135 = sub nsw i32 %134, %85, !dbg !331
  %136 = sext i32 %135 to i64, !dbg !332
  %137 = tail call i8* @memmove(i8* nonnull %132, i8* nonnull %131, i64 %136) #6, !dbg !333
  store i8 %1, i8* %131, align 1, !dbg !334, !tbaa !280
  %138 = load i32, i32* %66, align 4, !dbg !335
  %139 = lshr i32 %138, 3, !dbg !335
  %140 = add nuw nsw i32 %139, 1, !dbg !335
  %141 = shl i32 %140, 3, !dbg !335
  %142 = and i32 %138, 7, !dbg !335
  %143 = or i32 %141, %142, !dbg !335
  store i32 %143, i32* %66, align 4, !dbg !335
  %144 = and i32 %140, 536870911, !dbg !336
  %145 = zext i32 %144 to i64, !dbg !336
  %146 = getelementptr inbounds i8, i8* %65, i64 %145, !dbg !336
  %147 = sub nsw i32 3, %139, !dbg !336
  %148 = and i32 %147, 7, !dbg !336
  %149 = zext i32 %148 to i64, !dbg !336
  %150 = getelementptr inbounds i8, i8* %146, i64 %149, !dbg !336
  %151 = getelementptr inbounds i8, i8* %150, i64 %110, !dbg !337
  %152 = call i8* @memcpy(i8* nonnull %151, i8* nonnull %52, i64 8) #6, !dbg !339
  %153 = bitcast %struct.raxNode** %5 to i64*, !dbg !340
  %154 = load i64, i64* %153, align 8, !dbg !340, !tbaa !172
  %155 = bitcast %struct.raxNode** %2 to i64*, !dbg !341
  store i64 %154, i64* %155, align 8, !dbg !341, !tbaa !172
  %156 = bitcast %struct.raxNode*** %3 to i8**, !dbg !342
  store i8* %151, i8** %156, align 8, !dbg !342, !tbaa !172
  br label %157

; <label>:157:                                    ; preds = %63, %130, %55
  %158 = phi %struct.raxNode* [ null, %55 ], [ null, %63 ], [ %61, %130 ], !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52) #7, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  ret %struct.raxNode* %158, !dbg !344
}

; Function Attrs: noredzone noreturn
declare dso_local void @__assert_func(i8*, i32, i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local %struct.raxNode* @raxCompressNode(%struct.raxNode*, i8*, i64, %struct.raxNode**) local_unnamed_addr #0 !dbg !345 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 0, !dbg !361
  %8 = load i32, i32* %7, align 4, !dbg !361
  %9 = icmp ult i32 %8, 8, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  br i1 %9, label %10, label %13, !dbg !361

; <label>:10:                                     ; preds = %4
  %11 = and i32 %8, 4, !dbg !361
  %12 = icmp eq i32 %11, 0, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  br i1 %12, label %14, label %13, !dbg !361

; <label>:13:                                     ; preds = %10, %4
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 396, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.raxCompressNode, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !361
  unreachable

; <label>:14:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  %15 = tail call i8* @zmalloc(i64 8) #6, !dbg !368
  %16 = icmp eq i8* %15, null, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br i1 %16, label %17, label %18, !dbg !370

; <label>:17:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  store %struct.raxNode* null, %struct.raxNode** %3, align 8, !dbg !373, !tbaa !172
  br label %148, !dbg !374

; <label>:18:                                     ; preds = %14
  %19 = bitcast i8* %15 to i32*, !dbg !377
  store i32 0, i32* %19, align 4, !dbg !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  %20 = bitcast %struct.raxNode** %3 to i8**, !dbg !373
  store i8* %15, i8** %20, align 8, !dbg !373, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !380
  %21 = add i64 %2, 4, !dbg !381
  %22 = sub i64 4, %2, !dbg !382
  %23 = and i64 %22, 7, !dbg !382
  %24 = add i64 %21, %23, !dbg !383
  %25 = add i64 %24, 8, !dbg !384
  %26 = load i32, i32* %7, align 4, !dbg !386
  %27 = and i32 %26, 1, !dbg !386
  %28 = icmp eq i32 %27, 0, !dbg !388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  br i1 %28, label %66, label %29, !dbg !389

; <label>:29:                                     ; preds = %18
  %30 = and i32 %26, 2, !dbg !393
  %31 = icmp eq i32 %30, 0, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  br i1 %31, label %33, label %32, !dbg !395

; <label>:32:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  br label %59, !dbg !396

; <label>:33:                                     ; preds = %29
  %34 = bitcast %struct.raxNode* %0 to i8*, !dbg !397
  %35 = lshr i32 %26, 3, !dbg !398
  %36 = add nuw nsw i32 %35, 4, !dbg !398
  %37 = sub nsw i32 4, %35, !dbg !398
  %38 = and i32 %37, 7, !dbg !398
  %39 = add nuw nsw i32 %36, %38, !dbg !398
  %40 = and i32 %26, 4, !dbg !398
  %41 = icmp eq i32 %40, 0, !dbg !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  br i1 %41, label %42, label %45, !dbg !398

; <label>:42:                                     ; preds = %33
  %43 = and i32 %26, -8, !dbg !398
  %44 = zext i32 %43 to i64, !dbg !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  br label %45, !dbg !398

; <label>:45:                                     ; preds = %42, %33
  %46 = phi i64 [ %44, %42 ], [ 8, %33 ], !dbg !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %47 = shl i32 %26, 2
  %48 = and i32 %47, 8
  %49 = xor i32 %48, 8
  %50 = add nuw i32 %39, %49, !dbg !398
  %51 = zext i32 %50 to i64, !dbg !398
  %52 = add nuw nsw i64 %46, %51, !dbg !398
  %53 = getelementptr inbounds i8, i8* %34, i64 %52, !dbg !399
  %54 = getelementptr inbounds i8, i8* %53, i64 -8, !dbg !400
  %55 = bitcast i8** %6 to i8*, !dbg !402
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %55) #7, !dbg !402
  %56 = call i8* @memcpy(i8* nonnull %55, i8* nonnull %54, i64 8) #6, !dbg !403
  %57 = load i8*, i8** %6, align 8, !dbg !404, !tbaa !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %55) #7, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %58 = load i32, i32* %7, align 4, !dbg !407
  br label %59

; <label>:59:                                     ; preds = %32, %45
  %60 = phi i32 [ %26, %32 ], [ %58, %45 ], !dbg !407
  %61 = phi i8* [ null, %32 ], [ %57, %45 ], !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  %62 = and i32 %60, 2, !dbg !407
  %63 = icmp eq i32 %62, 0, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  br i1 %63, label %64, label %66, !dbg !411

; <label>:64:                                     ; preds = %59
  %65 = add i64 %24, 16, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  br label %66, !dbg !413

; <label>:66:                                     ; preds = %59, %18, %64
  %67 = phi i8* [ %61, %59 ], [ %61, %64 ], [ null, %18 ], !dbg !414
  %68 = phi i64 [ %25, %59 ], [ %65, %64 ], [ %25, %18 ], !dbg !414
  %69 = bitcast %struct.raxNode* %0 to i8*, !dbg !415
  %70 = call i8* @zrealloc(i8* %69, i64 %68) #6, !dbg !416
  %71 = bitcast i8* %70 to %struct.raxNode*, !dbg !416
  %72 = icmp eq i8* %70, null, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  br i1 %72, label %73, label %75, !dbg !420

; <label>:73:                                     ; preds = %66
  %74 = load i8*, i8** %20, align 8, !dbg !421, !tbaa !172
  call void @zfree(i8* %74) #6, !dbg !423
  br label %148, !dbg !424

; <label>:75:                                     ; preds = %66
  %76 = bitcast i8* %70 to i32*, !dbg !425
  %77 = load i32, i32* %76, align 4, !dbg !426
  %78 = trunc i64 %2 to i32, !dbg !427
  %79 = shl i32 %78, 3, !dbg !428
  %80 = and i32 %77, 3, !dbg !428
  %81 = or i32 %79, %80, !dbg !428
  %82 = or i32 %81, 4, !dbg !428
  store i32 %82, i32* %76, align 4, !dbg !428
  %83 = getelementptr inbounds i8, i8* %70, i64 4, !dbg !429
  %84 = call i8* @memcpy(i8* nonnull %83, i8* %1, i64 %2) #6, !dbg !430
  %85 = load i32, i32* %76, align 4, !dbg !431
  %86 = and i32 %85, 1, !dbg !431
  %87 = icmp eq i32 %86, 0, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !434
  br i1 %87, label %115, label %88, !dbg !434

; <label>:88:                                     ; preds = %75
  %89 = bitcast i8** %5 to i8*, !dbg !435
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %89), !dbg !435
  store i8* %67, i8** %5, align 8, !tbaa !172
  %90 = load i32, i32* %76, align 4, !dbg !438
  %91 = or i32 %90, 1, !dbg !438
  store i32 %91, i32* %76, align 4, !dbg !438
  %92 = icmp eq i8* %67, null, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  br i1 %92, label %111, label %93, !dbg !440

; <label>:93:                                     ; preds = %88
  %94 = and i32 %91, -3, !dbg !441
  store i32 %94, i32* %76, align 4, !dbg !442
  %95 = lshr i32 %90, 3, !dbg !443
  %96 = add nuw nsw i32 %95, 4, !dbg !443
  %97 = sub nsw i32 4, %95, !dbg !443
  %98 = and i32 %97, 7, !dbg !443
  %99 = add nuw nsw i32 %96, %98, !dbg !443
  %100 = zext i32 %99 to i64, !dbg !443
  %101 = and i32 %90, 4, !dbg !443
  %102 = icmp eq i32 %101, 0, !dbg !443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  br i1 %102, label %103, label %106, !dbg !443

; <label>:103:                                    ; preds = %93
  %104 = and i32 %90, -8, !dbg !443
  %105 = zext i32 %104 to i64, !dbg !443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  br label %106, !dbg !443

; <label>:106:                                    ; preds = %103, %93
  %107 = phi i64 [ %105, %103 ], [ 8, %93 ], !dbg !443
  %108 = add nuw nsw i64 %107, %100, !dbg !443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %109 = getelementptr inbounds i8, i8* %70, i64 %108, !dbg !444
  %110 = call i8* @memcpy(i8* nonnull %109, i8* nonnull %89, i64 8) #6, !dbg !446
  br label %113, !dbg !447

; <label>:111:                                    ; preds = %88
  %112 = or i32 %90, 3, !dbg !448
  store i32 %112, i32* %76, align 4, !dbg !448
  br label %113

; <label>:113:                                    ; preds = %106, %111
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %89), !dbg !449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  %114 = load i32, i32* %76, align 4, !dbg !451
  br label %115, !dbg !450

; <label>:115:                                    ; preds = %75, %113
  %116 = phi i32 [ %85, %75 ], [ %114, %113 ], !dbg !451
  %117 = lshr i32 %116, 3, !dbg !451
  %118 = add nuw nsw i32 %117, 4, !dbg !451
  %119 = sub nsw i32 4, %117, !dbg !451
  %120 = and i32 %119, 7, !dbg !451
  %121 = add nuw nsw i32 %118, %120, !dbg !451
  %122 = zext i32 %121 to i64, !dbg !451
  %123 = and i32 %116, 4, !dbg !451
  %124 = icmp eq i32 %123, 0, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  br i1 %124, label %125, label %128, !dbg !451

; <label>:125:                                    ; preds = %115
  %126 = and i32 %116, -8, !dbg !451
  %127 = zext i32 %126 to i64, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  br label %128, !dbg !451

; <label>:128:                                    ; preds = %115, %125
  %129 = phi i64 [ %127, %125 ], [ 8, %115 ], !dbg !451
  %130 = add nuw nsw i64 %129, %122, !dbg !451
  %131 = and i32 %116, 1, !dbg !451
  %132 = icmp eq i32 %131, 0, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %132, label %140, label %133, !dbg !451

; <label>:133:                                    ; preds = %128
  %134 = shl i32 %116, 2
  %135 = and i32 %134, 8
  %136 = xor i32 %135, 8
  %137 = zext i32 %136 to i64
  %138 = add nuw nsw i64 %130, %137, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %139 = sub nsw i64 0, %137
  br label %140

; <label>:140:                                    ; preds = %128, %133
  %141 = phi i64 [ %138, %133 ], [ %130, %128 ]
  %142 = phi i64 [ %139, %133 ], [ 0, %128 ]
  %143 = getelementptr inbounds i8, i8* %70, i64 %141, !dbg !451
  %144 = getelementptr inbounds i8, i8* %143, i64 -8, !dbg !451
  %145 = getelementptr inbounds i8, i8* %144, i64 %142, !dbg !451
  %146 = bitcast %struct.raxNode** %3 to i8*, !dbg !453
  %147 = call i8* @memcpy(i8* nonnull %145, i8* %146, i64 8) #6, !dbg !454
  br label %148

; <label>:148:                                    ; preds = %73, %140, %17
  %149 = phi %struct.raxNode* [ null, %17 ], [ null, %73 ], [ %71, %140 ], !dbg !455
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !456
  ret %struct.raxNode* %149, !dbg !456
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxGenericInsert(%struct.rax*, i8*, i64, i8*, i8**, i32) local_unnamed_addr #0 !dbg !457 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.raxNode*, align 8
  %20 = alloca %struct.raxNode**, align 8
  %21 = alloca %struct.raxNode*, align 8
  %22 = alloca %struct.raxNode*, align 8
  %23 = alloca %struct.raxNode*, align 8
  %24 = alloca %struct.raxNode*, align 8
  %25 = alloca %struct.raxNode*, align 8
  %26 = alloca %struct.raxNode*, align 8
  %27 = alloca %struct.raxNode*, align 8
  %28 = alloca %struct.raxNode*, align 8
  %29 = alloca %struct.raxNode**, align 8
  %30 = bitcast i32* %18 to i8*, !dbg !524
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30) #7, !dbg !524
  store i32 0, i32* %18, align 4, !dbg !525, !tbaa !48
  %31 = bitcast %struct.raxNode** %19 to i8*, !dbg !526
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #7, !dbg !526
  %32 = bitcast %struct.raxNode*** %20 to i8*, !dbg !526
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #7, !dbg !526
  %33 = call fastcc i64 @raxLowWalk(%struct.rax* %0, i8* %1, i64 %2, %struct.raxNode** nonnull %19, %struct.raxNode*** nonnull %20, i32* nonnull %18, %struct.raxStack* null) #9, !dbg !529
  %34 = icmp eq i64 %33, %2, !dbg !531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  br i1 %34, label %38, label %35, !dbg !533

; <label>:35:                                     ; preds = %6
  %36 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !534, !tbaa !172
  %37 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %36, i64 0, i32 0, !dbg !533
  br label %208, !dbg !533

; <label>:38:                                     ; preds = %6
  %39 = bitcast %struct.raxNode** %19 to i32**, !dbg !535
  %40 = load i32*, i32** %39, align 8, !dbg !535, !tbaa !172
  %41 = load i32, i32* %40, align 4, !dbg !536
  %42 = and i32 %41, 4, !dbg !536
  %43 = icmp eq i32 %42, 0, !dbg !535
  %44 = load i32, i32* %18, align 4, !dbg !537
  %45 = icmp eq i32 %44, 0, !dbg !538
  %46 = or i1 %43, %45, !dbg !539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  %47 = bitcast i32* %40 to %struct.raxNode*, !dbg !539
  br i1 %46, label %48, label %208, !dbg !539

; <label>:48:                                     ; preds = %38
  %49 = and i32 %41, 1, !dbg !540
  %50 = icmp eq i32 %49, 0, !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  br i1 %50, label %56, label %51, !dbg !544

; <label>:51:                                     ; preds = %48
  %52 = and i32 %41, 2, !dbg !545
  %53 = icmp ne i32 %52, 0, !dbg !546
  %54 = icmp ne i32 %5, 0, !dbg !547
  %55 = and i1 %54, %53, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  br i1 %55, label %56, label %96, !dbg !548

; <label>:56:                                     ; preds = %48, %51
  %57 = icmp eq i8* %3, null, !dbg !553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  br i1 %57, label %87, label %58, !dbg !554

; <label>:58:                                     ; preds = %56
  %59 = load i32, i32* %40, align 4, !dbg !555
  %60 = lshr i32 %59, 3, !dbg !555
  %61 = sub nsw i32 4, %60, !dbg !555
  %62 = and i32 %61, 7, !dbg !555
  %63 = and i32 %59, 4, !dbg !555
  %64 = icmp eq i32 %63, 0, !dbg !555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  br i1 %64, label %65, label %68, !dbg !555

; <label>:65:                                     ; preds = %58
  %66 = and i32 %59, -8, !dbg !555
  %67 = zext i32 %66 to i64, !dbg !555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  br label %68, !dbg !555

; <label>:68:                                     ; preds = %65, %58
  %69 = phi i64 [ %67, %65 ], [ 8, %58 ], !dbg !555
  %70 = and i32 %59, 1, !dbg !555
  %71 = icmp eq i32 %70, 0, !dbg !555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  br i1 %71, label %77, label %72, !dbg !555

; <label>:72:                                     ; preds = %68
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %73 = shl i32 %59, 2
  %74 = and i32 %73, 8
  %75 = xor i32 %74, 8
  %76 = zext i32 %75 to i64
  br label %77

; <label>:77:                                     ; preds = %72, %68
  %78 = phi i64 [ 0, %68 ], [ %76, %72 ]
  %79 = bitcast i32* %40 to i8*, !dbg !557
  %80 = add nuw nsw i32 %60, 12, !dbg !555
  %81 = add nuw nsw i32 %80, %62, !dbg !555
  %82 = zext i32 %81 to i64, !dbg !555
  %83 = add nuw nsw i64 %69, %82, !dbg !555
  %84 = add nuw nsw i64 %83, %78, !dbg !558
  %85 = call i8* @zrealloc(i8* %79, i64 %84) #6, !dbg !559
  %86 = bitcast i8* %85 to %struct.raxNode*, !dbg !559
  br label %87

; <label>:87:                                     ; preds = %56, %77
  %88 = phi %struct.raxNode* [ %86, %77 ], [ %47, %56 ], !dbg !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  store %struct.raxNode* %88, %struct.raxNode** %19, align 8, !dbg !562, !tbaa !172
  %89 = icmp eq %struct.raxNode* %88, null, !dbg !563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  br i1 %89, label %90, label %91, !dbg !565

; <label>:90:                                     ; preds = %87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  br label %99, !dbg !566

; <label>:91:                                     ; preds = %87
  %92 = bitcast %struct.raxNode*** %20 to i8**, !dbg !567
  %93 = load i8*, i8** %92, align 8, !dbg !567, !tbaa !172
  %94 = call i8* @memcpy(i8* %93, i8* nonnull %31, i64 8) #6, !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !568
  %95 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !569, !tbaa !172
  br label %96, !dbg !568

; <label>:96:                                     ; preds = %91, %51
  %97 = phi %struct.raxNode* [ %95, %91 ], [ %47, %51 ], !dbg !569
  %98 = icmp eq %struct.raxNode* %97, null, !dbg !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  br i1 %98, label %99, label %101, !dbg !566

; <label>:99:                                     ; preds = %90, %96
  %100 = call i32* @__errno() #6, !dbg !572
  store i32 12, i32* %100, align 4, !dbg !574, !tbaa !48
  br label %1247, !dbg !575

; <label>:101:                                    ; preds = %96
  %102 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %97, i64 0, i32 0, !dbg !576
  %103 = load i32, i32* %102, align 4, !dbg !576
  %104 = and i32 %103, 1, !dbg !576
  %105 = icmp eq i32 %104, 0, !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  br i1 %105, label %178, label %106, !dbg !579

; <label>:106:                                    ; preds = %101
  %107 = icmp eq i8** %4, null, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  br i1 %107, label %145, label %108, !dbg !583

; <label>:108:                                    ; preds = %106
  %109 = load i32, i32* %102, align 4, !dbg !586
  %110 = and i32 %109, 2, !dbg !586
  %111 = icmp eq i32 %110, 0, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  br i1 %111, label %112, label %143, !dbg !588

; <label>:112:                                    ; preds = %108
  %113 = bitcast %struct.raxNode* %97 to i8*, !dbg !589
  %114 = lshr i32 %109, 3, !dbg !590
  %115 = add nuw nsw i32 %114, 4, !dbg !590
  %116 = sub nsw i32 4, %114, !dbg !590
  %117 = and i32 %116, 7, !dbg !590
  %118 = add nuw nsw i32 %115, %117, !dbg !590
  %119 = zext i32 %118 to i64, !dbg !590
  %120 = and i32 %109, 4, !dbg !590
  %121 = icmp eq i32 %120, 0, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  br i1 %121, label %122, label %125, !dbg !590

; <label>:122:                                    ; preds = %112
  %123 = and i32 %109, -8, !dbg !590
  %124 = zext i32 %123 to i64, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  br label %125, !dbg !590

; <label>:125:                                    ; preds = %122, %112
  %126 = phi i64 [ %124, %122 ], [ 8, %112 ], !dbg !590
  %127 = add nuw nsw i64 %126, %119, !dbg !590
  %128 = and i32 %109, 1, !dbg !590
  %129 = icmp eq i32 %128, 0, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  br i1 %129, label %135, label %130, !dbg !590

; <label>:130:                                    ; preds = %125
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %131 = shl i32 %109, 2
  %132 = and i32 %131, 8
  %133 = xor i32 %132, 8
  %134 = zext i32 %133 to i64
  br label %135

; <label>:135:                                    ; preds = %130, %125
  %136 = phi i64 [ 0, %125 ], [ %134, %130 ]
  %137 = add nuw nsw i64 %127, %136, !dbg !590
  %138 = getelementptr inbounds i8, i8* %113, i64 %137, !dbg !591
  %139 = getelementptr inbounds i8, i8* %138, i64 -8, !dbg !592
  %140 = bitcast i8** %17 to i8*, !dbg !594
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %140) #7, !dbg !594
  %141 = call i8* @memcpy(i8* nonnull %140, i8* nonnull %139, i64 8) #6, !dbg !595
  %142 = load i8*, i8** %17, align 8, !dbg !596, !tbaa !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %140) #7, !dbg !598
  br label %143

; <label>:143:                                    ; preds = %108, %135
  %144 = phi i8* [ %142, %135 ], [ null, %108 ], !dbg !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  store i8* %144, i8** %4, align 8, !dbg !600, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !601
  br label %145, !dbg !601

; <label>:145:                                    ; preds = %106, %143
  %146 = icmp eq i32 %5, 0, !dbg !602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !604
  br i1 %146, label %176, label %147, !dbg !604

; <label>:147:                                    ; preds = %145
  %148 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !605, !tbaa !172
  %149 = bitcast i8** %16 to i8*, !dbg !606
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %149), !dbg !606
  store i8* %3, i8** %16, align 8, !tbaa !172
  %150 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %148, i64 0, i32 0, !dbg !609
  %151 = load i32, i32* %150, align 4, !dbg !610
  %152 = or i32 %151, 1, !dbg !610
  store i32 %152, i32* %150, align 4, !dbg !610
  %153 = icmp eq i8* %3, null, !dbg !611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  br i1 %153, label %173, label %154, !dbg !612

; <label>:154:                                    ; preds = %147
  %155 = and i32 %152, -3, !dbg !613
  store i32 %155, i32* %150, align 4, !dbg !614
  %156 = bitcast %struct.raxNode* %148 to i8*, !dbg !615
  %157 = lshr i32 %151, 3, !dbg !616
  %158 = add nuw nsw i32 %157, 4, !dbg !616
  %159 = sub nsw i32 4, %157, !dbg !616
  %160 = and i32 %159, 7, !dbg !616
  %161 = add nuw nsw i32 %158, %160, !dbg !616
  %162 = zext i32 %161 to i64, !dbg !616
  %163 = and i32 %151, 4, !dbg !616
  %164 = icmp eq i32 %163, 0, !dbg !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  br i1 %164, label %165, label %168, !dbg !616

; <label>:165:                                    ; preds = %154
  %166 = and i32 %151, -8, !dbg !616
  %167 = zext i32 %166 to i64, !dbg !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  br label %168, !dbg !616

; <label>:168:                                    ; preds = %165, %154
  %169 = phi i64 [ %167, %165 ], [ 8, %154 ], !dbg !616
  %170 = add nuw nsw i64 %169, %162, !dbg !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %171 = getelementptr inbounds i8, i8* %156, i64 %170, !dbg !617
  %172 = call i8* @memcpy(i8* nonnull %171, i8* nonnull %149, i64 8) #6, !dbg !619
  br label %175, !dbg !620

; <label>:173:                                    ; preds = %147
  %174 = or i32 %151, 3, !dbg !621
  store i32 %174, i32* %150, align 4, !dbg !621
  br label %175

; <label>:175:                                    ; preds = %168, %173
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !622
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %149), !dbg !622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  br label %176, !dbg !623

; <label>:176:                                    ; preds = %145, %175
  %177 = call i32* @__errno() #6, !dbg !624
  store i32 0, i32* %177, align 4, !dbg !625, !tbaa !48
  br label %1247, !dbg !626

; <label>:178:                                    ; preds = %101
  %179 = bitcast i8** %15 to i8*, !dbg !627
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %179), !dbg !627
  store i8* %3, i8** %15, align 8, !tbaa !172
  %180 = load i32, i32* %102, align 4, !dbg !630
  %181 = or i32 %180, 1, !dbg !630
  store i32 %181, i32* %102, align 4, !dbg !630
  %182 = icmp eq i8* %3, null, !dbg !631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  br i1 %182, label %202, label %183, !dbg !632

; <label>:183:                                    ; preds = %178
  %184 = and i32 %181, -3, !dbg !633
  store i32 %184, i32* %102, align 4, !dbg !634
  %185 = bitcast %struct.raxNode* %97 to i8*, !dbg !635
  %186 = lshr i32 %180, 3, !dbg !636
  %187 = add nuw nsw i32 %186, 4, !dbg !636
  %188 = sub nsw i32 4, %186, !dbg !636
  %189 = and i32 %188, 7, !dbg !636
  %190 = add nuw nsw i32 %187, %189, !dbg !636
  %191 = zext i32 %190 to i64, !dbg !636
  %192 = and i32 %180, 4, !dbg !636
  %193 = icmp eq i32 %192, 0, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br i1 %193, label %194, label %197, !dbg !636

; <label>:194:                                    ; preds = %183
  %195 = and i32 %180, -8, !dbg !636
  %196 = zext i32 %195 to i64, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br label %197, !dbg !636

; <label>:197:                                    ; preds = %194, %183
  %198 = phi i64 [ %196, %194 ], [ 8, %183 ], !dbg !636
  %199 = add nuw nsw i64 %198, %191, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %200 = getelementptr inbounds i8, i8* %185, i64 %199, !dbg !637
  %201 = call i8* @memcpy(i8* nonnull %200, i8* nonnull %179, i64 8) #6, !dbg !639
  br label %204, !dbg !640

; <label>:202:                                    ; preds = %178
  %203 = or i32 %180, 3, !dbg !641
  store i32 %203, i32* %102, align 4, !dbg !641
  br label %204

; <label>:204:                                    ; preds = %197, %202
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %179), !dbg !642
  %205 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 1, !dbg !643
  %206 = load i64, i64* %205, align 8, !dbg !644, !tbaa !645
  %207 = add i64 %206, 1, !dbg !644
  store i64 %207, i64* %205, align 8, !dbg !644, !tbaa !645
  br label %1247, !dbg !646

; <label>:208:                                    ; preds = %35, %38
  %209 = phi %struct.raxNode* [ %36, %35 ], [ %47, %38 ]
  %210 = phi i32* [ %37, %35 ], [ %40, %38 ]
  %211 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %209, i64 0, i32 0, !dbg !647
  %212 = load i32, i32* %211, align 4, !dbg !647
  %213 = and i32 %212, 4, !dbg !647
  %214 = icmp eq i32 %213, 0, !dbg !534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  br i1 %214, label %706, label %215, !dbg !648

; <label>:215:                                    ; preds = %208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  br i1 %34, label %706, label %216, !dbg !649

; <label>:216:                                    ; preds = %215
  %217 = bitcast %struct.raxNode* %209 to i8*, !dbg !650
  %218 = lshr i32 %212, 3, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  %219 = sub nsw i32 4, %218, !dbg !650
  %220 = and i32 %219, 7, !dbg !650
  %221 = add nuw nsw i32 %218, 12, !dbg !650
  %222 = add nuw nsw i32 %221, %220, !dbg !650
  %223 = zext i32 %222 to i64, !dbg !650
  %224 = bitcast %struct.raxNode** %19 to i32**, !dbg !650
  %225 = load i32, i32* %210, align 4, !dbg !650
  %226 = and i32 %225, 1, !dbg !650
  %227 = icmp eq i32 %226, 0, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  br i1 %227, label %231, label %228, !dbg !650

; <label>:228:                                    ; preds = %216
  %229 = and i32 %225, 2, !dbg !650
  %230 = icmp eq i32 %229, 0, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %231

; <label>:231:                                    ; preds = %216, %228
  %232 = phi i1 [ false, %216 ], [ %230, %228 ], !dbg !651
  %233 = zext i1 %232 to i64, !dbg !650
  %234 = shl nuw nsw i64 %233, 3, !dbg !650
  %235 = add nuw nsw i64 %234, %223, !dbg !650
  %236 = getelementptr inbounds i8, i8* %217, i64 %235, !dbg !650
  %237 = getelementptr inbounds i8, i8* %236, i64 -8, !dbg !650
  %238 = load i32, i32* %210, align 4, !dbg !650
  %239 = and i32 %238, 1, !dbg !650
  %240 = icmp eq i32 %239, 0, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  br i1 %240, label %245, label %241, !dbg !650

; <label>:241:                                    ; preds = %231
  %242 = and i32 %238, 2, !dbg !650
  %243 = icmp eq i32 %242, 0, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %244 = select i1 %243, i64 -8, i64 0, !dbg !650
  br label %245, !dbg !650

; <label>:245:                                    ; preds = %241, %231
  %246 = phi i64 [ 0, %231 ], [ %244, %241 ]
  %247 = getelementptr inbounds i8, i8* %237, i64 %246, !dbg !650
  %248 = bitcast %struct.raxNode** %21 to i8*, !dbg !653
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %248) #7, !dbg !653
  %249 = call i8* @memcpy(i8* nonnull %248, i8* nonnull %247, i64 8) #6, !dbg !654
  %250 = load i32*, i32** %224, align 8, !dbg !655, !tbaa !172
  %251 = load i32, i32* %250, align 4, !dbg !657
  %252 = load i32, i32* %18, align 4, !dbg !658, !tbaa !48
  %253 = sext i32 %252 to i64, !dbg !658
  %254 = lshr i32 %251, 3, !dbg !660
  %255 = xor i32 %252, -1, !dbg !661
  %256 = add i32 %254, %255, !dbg !661
  %257 = sext i32 %256 to i64, !dbg !662
  %258 = icmp ne i32 %252, 0, !dbg !664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !665
  br i1 %258, label %262, label %259, !dbg !665

; <label>:259:                                    ; preds = %245
  %260 = and i32 %251, 1, !dbg !657
  %261 = icmp eq i32 %260, 0, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  br i1 %261, label %262, label %264, !dbg !667

; <label>:262:                                    ; preds = %259, %245
  %263 = bitcast %struct.raxNode** %22 to i8*, !dbg !669
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %263) #7, !dbg !669
  br label %268, !dbg !674

; <label>:264:                                    ; preds = %259
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %265 = and i32 %251, 2, !dbg !667
  %266 = bitcast %struct.raxNode** %22 to i8*, !dbg !669
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %266) #7, !dbg !669
  %267 = icmp eq i32 %265, 0, !dbg !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  br i1 %267, label %268, label %271, !dbg !674

; <label>:268:                                    ; preds = %264, %262
  %269 = phi i8* [ %263, %262 ], [ %266, %264 ]
  %270 = phi i64 [ 16, %262 ], [ 24, %264 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  br label %271, !dbg !676

; <label>:271:                                    ; preds = %268, %264
  %272 = phi i8* [ %266, %264 ], [ %269, %268 ]
  %273 = phi i64 [ 16, %264 ], [ %270, %268 ], !dbg !677
  %274 = call i8* @zmalloc(i64 %273) #6, !dbg !676
  %275 = icmp eq i8* %274, null, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  br i1 %275, label %279, label %276, !dbg !679

; <label>:276:                                    ; preds = %271
  %277 = bitcast i8* %274 to %struct.raxNode*, !dbg !676
  %278 = bitcast i8* %274 to i32*, !dbg !681
  store i32 8, i32* %278, align 4, !dbg !682
  br label %279, !dbg !683

; <label>:279:                                    ; preds = %271, %276
  %280 = phi %struct.raxNode* [ %277, %276 ], [ null, %271 ], !dbg !677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  store %struct.raxNode* %280, %struct.raxNode** %22, align 8, !dbg !685, !tbaa !172
  %281 = bitcast %struct.raxNode** %23 to i8*, !dbg !686
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %281) #7, !dbg !686
  store %struct.raxNode* null, %struct.raxNode** %23, align 8, !dbg !687, !tbaa !172
  %282 = bitcast %struct.raxNode** %24 to i8*, !dbg !688
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %282) #7, !dbg !688
  store %struct.raxNode* null, %struct.raxNode** %24, align 8, !dbg !689, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  br i1 %258, label %283, label %302, !dbg !690

; <label>:283:                                    ; preds = %279
  %284 = add nsw i64 %253, 4, !dbg !691
  %285 = sub nsw i64 4, %253, !dbg !694
  %286 = and i64 %285, 7, !dbg !694
  %287 = add nsw i64 %284, %286, !dbg !695
  %288 = add nsw i64 %287, 8, !dbg !696
  %289 = load i32*, i32** %224, align 8, !dbg !698, !tbaa !172
  %290 = load i32, i32* %289, align 4, !dbg !700
  %291 = and i32 %290, 1, !dbg !700
  %292 = icmp eq i32 %291, 0, !dbg !698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  br i1 %292, label %298, label %293, !dbg !701

; <label>:293:                                    ; preds = %283
  %294 = and i32 %290, 2, !dbg !702
  %295 = icmp eq i32 %294, 0, !dbg !703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  br i1 %295, label %296, label %298, !dbg !704

; <label>:296:                                    ; preds = %293
  %297 = add nsw i64 %287, 16, !dbg !705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  br label %298, !dbg !706

; <label>:298:                                    ; preds = %293, %283, %296
  %299 = phi i64 [ %288, %293 ], [ %297, %296 ], [ %288, %283 ], !dbg !707
  %300 = call i8* @zmalloc(i64 %299) #6, !dbg !708
  %301 = bitcast %struct.raxNode** %23 to i8**, !dbg !709
  store i8* %300, i8** %301, align 8, !dbg !709, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  br label %302, !dbg !710

; <label>:302:                                    ; preds = %298, %279
  %303 = icmp ne i32 %256, 0, !dbg !711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  br i1 %303, label %304, label %311, !dbg !713

; <label>:304:                                    ; preds = %302
  %305 = sub nsw i64 4, %257, !dbg !714
  %306 = and i64 %305, 7, !dbg !714
  %307 = add nsw i64 %257, 12, !dbg !716
  %308 = add nsw i64 %307, %306, !dbg !717
  %309 = call i8* @zmalloc(i64 %308) #6, !dbg !718
  %310 = bitcast %struct.raxNode** %24 to i8**, !dbg !719
  store i8* %309, i8** %310, align 8, !dbg !719, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  br label %311, !dbg !720

; <label>:311:                                    ; preds = %304, %302
  %312 = load %struct.raxNode*, %struct.raxNode** %22, align 8, !dbg !721, !tbaa !172
  %313 = icmp eq %struct.raxNode* %312, null, !dbg !723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !724
  %314 = bitcast %struct.raxNode* %312 to i8*, !dbg !724
  br i1 %313, label %323, label %315, !dbg !724

; <label>:315:                                    ; preds = %311
  %316 = load %struct.raxNode*, %struct.raxNode** %23, align 8, !dbg !725
  %317 = icmp eq %struct.raxNode* %316, null, !dbg !726
  %318 = and i1 %258, %317, !dbg !727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !727
  br i1 %318, label %323, label %319, !dbg !727

; <label>:319:                                    ; preds = %315
  %320 = load %struct.raxNode*, %struct.raxNode** %24, align 8, !dbg !728
  %321 = icmp eq %struct.raxNode* %320, null, !dbg !729
  %322 = and i1 %303, %321, !dbg !730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !730
  br i1 %322, label %323, label %329, !dbg !730

; <label>:323:                                    ; preds = %319, %315, %311
  call void @zfree(i8* %314) #6, !dbg !731
  %324 = bitcast %struct.raxNode** %23 to i8**, !dbg !733
  %325 = load i8*, i8** %324, align 8, !dbg !733, !tbaa !172
  call void @zfree(i8* %325) #6, !dbg !734
  %326 = bitcast %struct.raxNode** %24 to i8**, !dbg !735
  %327 = load i8*, i8** %326, align 8, !dbg !735, !tbaa !172
  call void @zfree(i8* %327) #6, !dbg !736
  %328 = call i32* @__errno() #6, !dbg !737
  store i32 12, i32* %328, align 4, !dbg !738, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %282) #7, !dbg !740
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %281) #7, !dbg !740
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %272) #7, !dbg !740
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %248) #7, !dbg !740
  br label %1247

; <label>:329:                                    ; preds = %319
  %330 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !741, !tbaa !172
  %331 = load i32, i32* %18, align 4, !dbg !742, !tbaa !48
  %332 = sext i32 %331 to i64, !dbg !741
  %333 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %330, i64 0, i32 1, i64 %332, !dbg !741
  %334 = load i8, i8* %333, align 1, !dbg !741, !tbaa !280
  %335 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %312, i64 0, i32 1, i64 0, !dbg !743
  store i8 %334, i8* %335, align 4, !dbg !744, !tbaa !280
  %336 = icmp eq i32 %331, 0, !dbg !745
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !746
  br i1 %336, label %337, label %412, !dbg !746

; <label>:337:                                    ; preds = %329
  %338 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !747, !tbaa !172
  %339 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %338, i64 0, i32 0, !dbg !748
  %340 = load i32, i32* %339, align 4, !dbg !748
  %341 = and i32 %340, 1, !dbg !748
  %342 = icmp eq i32 %341, 0, !dbg !747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !749
  br i1 %342, label %408, label %343, !dbg !749

; <label>:343:                                    ; preds = %337
  %344 = load i32, i32* %339, align 4, !dbg !752
  %345 = and i32 %344, 2, !dbg !752
  %346 = icmp eq i32 %345, 0, !dbg !753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !754
  br i1 %346, label %347, label %378, !dbg !754

; <label>:347:                                    ; preds = %343
  %348 = bitcast %struct.raxNode* %338 to i8*, !dbg !755
  %349 = lshr i32 %344, 3, !dbg !756
  %350 = add nuw nsw i32 %349, 4, !dbg !756
  %351 = sub nsw i32 4, %349, !dbg !756
  %352 = and i32 %351, 7, !dbg !756
  %353 = add nuw nsw i32 %350, %352, !dbg !756
  %354 = zext i32 %353 to i64, !dbg !756
  %355 = and i32 %344, 4, !dbg !756
  %356 = icmp eq i32 %355, 0, !dbg !756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br i1 %356, label %357, label %360, !dbg !756

; <label>:357:                                    ; preds = %347
  %358 = and i32 %344, -8, !dbg !756
  %359 = zext i32 %358 to i64, !dbg !756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br label %360, !dbg !756

; <label>:360:                                    ; preds = %357, %347
  %361 = phi i64 [ %359, %357 ], [ 8, %347 ], !dbg !756
  %362 = add nuw nsw i64 %361, %354, !dbg !756
  %363 = and i32 %344, 1, !dbg !756
  %364 = icmp eq i32 %363, 0, !dbg !756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br i1 %364, label %370, label %365, !dbg !756

; <label>:365:                                    ; preds = %360
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %366 = shl i32 %344, 2
  %367 = and i32 %366, 8
  %368 = xor i32 %367, 8
  %369 = zext i32 %368 to i64
  br label %370

; <label>:370:                                    ; preds = %365, %360
  %371 = phi i64 [ 0, %360 ], [ %369, %365 ]
  %372 = add nuw nsw i64 %362, %371, !dbg !756
  %373 = getelementptr inbounds i8, i8* %348, i64 %372, !dbg !757
  %374 = getelementptr inbounds i8, i8* %373, i64 -8, !dbg !758
  %375 = bitcast i8** %14 to i8*, !dbg !760
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %375) #7, !dbg !760
  %376 = call i8* @memcpy(i8* nonnull %375, i8* nonnull %374, i64 8) #6, !dbg !761
  %377 = load i8*, i8** %14, align 8, !dbg !762, !tbaa !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %375) #7, !dbg !764
  br label %378

; <label>:378:                                    ; preds = %343, %370
  %379 = phi i8* [ %377, %370 ], [ null, %343 ], !dbg !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !764
  %380 = load %struct.raxNode*, %struct.raxNode** %22, align 8, !dbg !767, !tbaa !172
  %381 = bitcast i8** %13 to i8*, !dbg !768
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %381), !dbg !768
  store i8* %379, i8** %13, align 8, !tbaa !172
  %382 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %380, i64 0, i32 0, !dbg !771
  %383 = load i32, i32* %382, align 4, !dbg !772
  %384 = or i32 %383, 1, !dbg !772
  store i32 %384, i32* %382, align 4, !dbg !772
  %385 = icmp eq i8* %379, null, !dbg !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !774
  br i1 %385, label %405, label %386, !dbg !774

; <label>:386:                                    ; preds = %378
  %387 = and i32 %384, -3, !dbg !775
  store i32 %387, i32* %382, align 4, !dbg !776
  %388 = bitcast %struct.raxNode* %380 to i8*, !dbg !777
  %389 = lshr i32 %383, 3, !dbg !778
  %390 = add nuw nsw i32 %389, 4, !dbg !778
  %391 = sub nsw i32 4, %389, !dbg !778
  %392 = and i32 %391, 7, !dbg !778
  %393 = add nuw nsw i32 %390, %392, !dbg !778
  %394 = zext i32 %393 to i64, !dbg !778
  %395 = and i32 %383, 4, !dbg !778
  %396 = icmp eq i32 %395, 0, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  br i1 %396, label %397, label %400, !dbg !778

; <label>:397:                                    ; preds = %386
  %398 = and i32 %383, -8, !dbg !778
  %399 = zext i32 %398 to i64, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  br label %400, !dbg !778

; <label>:400:                                    ; preds = %397, %386
  %401 = phi i64 [ %399, %397 ], [ 8, %386 ], !dbg !778
  %402 = add nuw nsw i64 %401, %394, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %403 = getelementptr inbounds i8, i8* %388, i64 %402, !dbg !779
  %404 = call i8* @memcpy(i8* nonnull %403, i8* nonnull %381, i64 8) #6, !dbg !781
  br label %407, !dbg !782

; <label>:405:                                    ; preds = %378
  %406 = or i32 %383, 3, !dbg !783
  store i32 %406, i32* %382, align 4, !dbg !783
  br label %407

; <label>:407:                                    ; preds = %400, %405
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !784
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %381), !dbg !784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  br label %408, !dbg !785

; <label>:408:                                    ; preds = %337, %407
  %409 = bitcast %struct.raxNode*** %20 to i8**, !dbg !786
  %410 = load i8*, i8** %409, align 8, !dbg !786, !tbaa !172
  %411 = call i8* @memcpy(i8* %410, i8* %272, i64 8) #6, !dbg !787
  br label %573, !dbg !788

; <label>:412:                                    ; preds = %329
  %413 = bitcast %struct.raxNode** %23 to i32**, !dbg !789
  %414 = load i32*, i32** %413, align 8, !dbg !789, !tbaa !172
  %415 = load i32, i32* %414, align 4, !dbg !790
  %416 = shl i32 %331, 3, !dbg !790
  %417 = and i32 %415, 7, !dbg !790
  %418 = or i32 %417, %416, !dbg !790
  store i32 %418, i32* %414, align 4, !dbg !790
  %419 = load %struct.raxNode*, %struct.raxNode** %23, align 8, !dbg !791, !tbaa !172
  %420 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %419, i64 0, i32 1, i64 0, !dbg !791
  %421 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !792, !tbaa !172
  %422 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %421, i64 0, i32 1, i64 0, !dbg !792
  %423 = load i32, i32* %18, align 4, !dbg !793, !tbaa !48
  %424 = sext i32 %423 to i64, !dbg !793
  %425 = call i8* @memcpy(i8* nonnull %420, i8* nonnull %422, i64 %424) #6, !dbg !794
  %426 = load i32, i32* %18, align 4, !dbg !795, !tbaa !48
  %427 = icmp sgt i32 %426, 1, !dbg !796
  %428 = zext i1 %427 to i32, !dbg !795
  %429 = load i32*, i32** %413, align 8, !dbg !797, !tbaa !172
  %430 = load i32, i32* %429, align 4, !dbg !798
  %431 = shl nuw nsw i32 %428, 2, !dbg !798
  %432 = and i32 %430, -5, !dbg !798
  %433 = or i32 %432, %431, !dbg !798
  store i32 %433, i32* %429, align 4, !dbg !798
  %434 = load i32*, i32** %224, align 8, !dbg !799, !tbaa !172
  %435 = load i32, i32* %434, align 4, !dbg !800
  %436 = and i32 %435, 1, !dbg !800
  %437 = load i32*, i32** %413, align 8, !dbg !801, !tbaa !172
  %438 = load i32, i32* %437, align 4, !dbg !802
  %439 = and i32 %438, -2, !dbg !802
  %440 = or i32 %439, %436, !dbg !802
  store i32 %440, i32* %437, align 4, !dbg !802
  %441 = load i32*, i32** %224, align 8, !dbg !803, !tbaa !172
  %442 = load i32, i32* %441, align 4, !dbg !804
  %443 = and i32 %442, 2, !dbg !804
  %444 = load i32*, i32** %413, align 8, !dbg !805, !tbaa !172
  %445 = load i32, i32* %444, align 4, !dbg !806
  %446 = and i32 %445, -3, !dbg !806
  %447 = or i32 %446, %443, !dbg !806
  store i32 %447, i32* %444, align 4, !dbg !806
  %448 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !807, !tbaa !172
  %449 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %448, i64 0, i32 0, !dbg !808
  %450 = load i32, i32* %449, align 4, !dbg !808
  %451 = and i32 %450, 1, !dbg !808
  %452 = icmp eq i32 %451, 0, !dbg !807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !809
  br i1 %452, label %521, label %453, !dbg !809

; <label>:453:                                    ; preds = %412
  %454 = and i32 %450, 2, !dbg !810
  %455 = icmp eq i32 %454, 0, !dbg !811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  br i1 %455, label %456, label %521, !dbg !812

; <label>:456:                                    ; preds = %453
  %457 = load i32, i32* %449, align 4, !dbg !815
  %458 = and i32 %457, 2, !dbg !815
  %459 = icmp eq i32 %458, 0, !dbg !816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  br i1 %459, label %460, label %491, !dbg !817

; <label>:460:                                    ; preds = %456
  %461 = bitcast %struct.raxNode* %448 to i8*, !dbg !818
  %462 = lshr i32 %457, 3, !dbg !819
  %463 = add nuw nsw i32 %462, 4, !dbg !819
  %464 = sub nsw i32 4, %462, !dbg !819
  %465 = and i32 %464, 7, !dbg !819
  %466 = add nuw nsw i32 %463, %465, !dbg !819
  %467 = zext i32 %466 to i64, !dbg !819
  %468 = and i32 %457, 4, !dbg !819
  %469 = icmp eq i32 %468, 0, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  br i1 %469, label %470, label %473, !dbg !819

; <label>:470:                                    ; preds = %460
  %471 = and i32 %457, -8, !dbg !819
  %472 = zext i32 %471 to i64, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  br label %473, !dbg !819

; <label>:473:                                    ; preds = %470, %460
  %474 = phi i64 [ %472, %470 ], [ 8, %460 ], !dbg !819
  %475 = add nuw nsw i64 %474, %467, !dbg !819
  %476 = and i32 %457, 1, !dbg !819
  %477 = icmp eq i32 %476, 0, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  br i1 %477, label %483, label %478, !dbg !819

; <label>:478:                                    ; preds = %473
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %479 = shl i32 %457, 2
  %480 = and i32 %479, 8
  %481 = xor i32 %480, 8
  %482 = zext i32 %481 to i64
  br label %483

; <label>:483:                                    ; preds = %478, %473
  %484 = phi i64 [ 0, %473 ], [ %482, %478 ]
  %485 = add nuw nsw i64 %475, %484, !dbg !819
  %486 = getelementptr inbounds i8, i8* %461, i64 %485, !dbg !820
  %487 = getelementptr inbounds i8, i8* %486, i64 -8, !dbg !821
  %488 = bitcast i8** %12 to i8*, !dbg !823
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %488) #7, !dbg !823
  %489 = call i8* @memcpy(i8* nonnull %488, i8* nonnull %487, i64 8) #6, !dbg !824
  %490 = load i8*, i8** %12, align 8, !dbg !825, !tbaa !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %488) #7, !dbg !827
  br label %491

; <label>:491:                                    ; preds = %456, %483
  %492 = phi i8* [ %490, %483 ], [ null, %456 ], !dbg !828
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !827
  %493 = load %struct.raxNode*, %struct.raxNode** %23, align 8, !dbg !830, !tbaa !172
  %494 = bitcast i8** %11 to i8*, !dbg !831
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %494), !dbg !831
  store i8* %492, i8** %11, align 8, !tbaa !172
  %495 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %493, i64 0, i32 0, !dbg !834
  %496 = load i32, i32* %495, align 4, !dbg !835
  %497 = or i32 %496, 1, !dbg !835
  store i32 %497, i32* %495, align 4, !dbg !835
  %498 = icmp eq i8* %492, null, !dbg !836
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !837
  br i1 %498, label %518, label %499, !dbg !837

; <label>:499:                                    ; preds = %491
  %500 = and i32 %497, -3, !dbg !838
  store i32 %500, i32* %495, align 4, !dbg !839
  %501 = bitcast %struct.raxNode* %493 to i8*, !dbg !840
  %502 = lshr i32 %496, 3, !dbg !841
  %503 = add nuw nsw i32 %502, 4, !dbg !841
  %504 = sub nsw i32 4, %502, !dbg !841
  %505 = and i32 %504, 7, !dbg !841
  %506 = add nuw nsw i32 %503, %505, !dbg !841
  %507 = zext i32 %506 to i64, !dbg !841
  %508 = and i32 %496, 4, !dbg !841
  %509 = icmp eq i32 %508, 0, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  br i1 %509, label %510, label %513, !dbg !841

; <label>:510:                                    ; preds = %499
  %511 = and i32 %496, -8, !dbg !841
  %512 = zext i32 %511 to i64, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  br label %513, !dbg !841

; <label>:513:                                    ; preds = %510, %499
  %514 = phi i64 [ %512, %510 ], [ 8, %499 ], !dbg !841
  %515 = add nuw nsw i64 %514, %507, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %516 = getelementptr inbounds i8, i8* %501, i64 %515, !dbg !842
  %517 = call i8* @memcpy(i8* nonnull %516, i8* nonnull %494, i64 8) #6, !dbg !844
  br label %520, !dbg !845

; <label>:518:                                    ; preds = %491
  %519 = or i32 %496, 3, !dbg !846
  store i32 %519, i32* %495, align 4, !dbg !846
  br label %520

; <label>:520:                                    ; preds = %513, %518
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !847
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %494), !dbg !847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  br label %521, !dbg !848

; <label>:521:                                    ; preds = %453, %412, %520
  %522 = load %struct.raxNode*, %struct.raxNode** %23, align 8, !dbg !849, !tbaa !172
  %523 = bitcast %struct.raxNode* %522 to i8*, !dbg !849
  %524 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %522, i64 0, i32 0, !dbg !849
  %525 = load i32, i32* %524, align 4, !dbg !849
  %526 = lshr i32 %525, 3, !dbg !849
  %527 = add nuw nsw i32 %526, 4, !dbg !849
  %528 = sub nsw i32 4, %526, !dbg !849
  %529 = and i32 %528, 7, !dbg !849
  %530 = add nuw nsw i32 %527, %529, !dbg !849
  %531 = zext i32 %530 to i64, !dbg !849
  %532 = and i32 %525, 4, !dbg !849
  %533 = icmp eq i32 %532, 0, !dbg !849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !849
  %534 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %522, i64 0, i32 0, !dbg !849
  br i1 %533, label %535, label %538, !dbg !849

; <label>:535:                                    ; preds = %521
  %536 = and i32 %525, -8, !dbg !849
  %537 = zext i32 %536 to i64, !dbg !849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !849
  br label %538, !dbg !849

; <label>:538:                                    ; preds = %521, %535
  %539 = phi i64 [ %537, %535 ], [ 8, %521 ], !dbg !849
  %540 = add nuw nsw i64 %539, %531, !dbg !849
  %541 = load i32, i32* %534, align 4, !dbg !849
  %542 = and i32 %541, 1, !dbg !849
  %543 = icmp eq i32 %542, 0, !dbg !849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !849
  br i1 %543, label %549, label %544, !dbg !849

; <label>:544:                                    ; preds = %538
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %545 = shl i32 %541, 2
  %546 = and i32 %545, 8
  %547 = xor i32 %546, 8
  %548 = zext i32 %547 to i64
  br label %549

; <label>:549:                                    ; preds = %538, %544
  %550 = phi i64 [ 0, %538 ], [ %548, %544 ]
  %551 = add nuw nsw i64 %540, %550, !dbg !849
  %552 = getelementptr inbounds i8, i8* %523, i64 %551, !dbg !849
  %553 = getelementptr inbounds i8, i8* %552, i64 -8, !dbg !849
  %554 = load i32, i32* %534, align 4, !dbg !849
  %555 = and i32 %554, 1, !dbg !849
  %556 = icmp eq i32 %555, 0, !dbg !849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !849
  br i1 %556, label %563, label %557, !dbg !849

; <label>:557:                                    ; preds = %549
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %558 = shl i32 %554, 2
  %559 = and i32 %558, 8
  %560 = xor i32 %559, 8
  %561 = zext i32 %560 to i64
  %562 = sub nsw i64 0, %561
  br label %563

; <label>:563:                                    ; preds = %549, %557
  %564 = phi i64 [ 0, %549 ], [ %562, %557 ]
  %565 = getelementptr inbounds i8, i8* %553, i64 %564, !dbg !849
  %566 = call i8* @memcpy(i8* nonnull %565, i8* %272, i64 8) #6, !dbg !851
  %567 = bitcast %struct.raxNode*** %20 to i8**, !dbg !852
  %568 = load i8*, i8** %567, align 8, !dbg !852, !tbaa !172
  %569 = call i8* @memcpy(i8* %568, i8* nonnull %281, i64 8) #6, !dbg !853
  store i8* %565, i8** %567, align 8, !dbg !854, !tbaa !172
  %570 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 2, !dbg !855
  %571 = load i64, i64* %570, align 8, !dbg !856, !tbaa !857
  %572 = add i64 %571, 1, !dbg !856
  store i64 %572, i64* %570, align 8, !dbg !856, !tbaa !857
  br label %573

; <label>:573:                                    ; preds = %563, %408
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !858
  br i1 %303, label %574, label %650, !dbg !858

; <label>:574:                                    ; preds = %573
  %575 = bitcast %struct.raxNode** %24 to i32**, !dbg !859
  %576 = load i32*, i32** %575, align 8, !dbg !859, !tbaa !172
  %577 = load i32, i32* %576, align 4, !dbg !860
  %578 = and i32 %577, -2, !dbg !860
  store i32 %578, i32* %576, align 4, !dbg !860
  %579 = load i32*, i32** %575, align 8, !dbg !861, !tbaa !172
  %580 = load i32, i32* %579, align 4, !dbg !862
  %581 = and i32 %580, -3, !dbg !862
  store i32 %581, i32* %579, align 4, !dbg !862
  %582 = load i32*, i32** %575, align 8, !dbg !863, !tbaa !172
  %583 = load i32, i32* %582, align 4, !dbg !864
  %584 = shl i32 %256, 3, !dbg !864
  %585 = and i32 %583, 7, !dbg !864
  %586 = or i32 %585, %584, !dbg !864
  store i32 %586, i32* %582, align 4, !dbg !864
  %587 = icmp ne i32 %256, 1, !dbg !865
  %588 = zext i1 %587 to i32, !dbg !865
  %589 = load i32*, i32** %575, align 8, !dbg !866, !tbaa !172
  %590 = load i32, i32* %589, align 4, !dbg !867
  %591 = shl nuw nsw i32 %588, 2, !dbg !867
  %592 = and i32 %590, -5, !dbg !867
  %593 = or i32 %592, %591, !dbg !867
  store i32 %593, i32* %589, align 4, !dbg !867
  %594 = load %struct.raxNode*, %struct.raxNode** %24, align 8, !dbg !868, !tbaa !172
  %595 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %594, i64 0, i32 1, i64 0, !dbg !868
  %596 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !869, !tbaa !172
  %597 = load i32, i32* %18, align 4, !dbg !870, !tbaa !48
  %598 = sext i32 %597 to i64, !dbg !871
  %599 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %596, i64 0, i32 1, i64 %598, !dbg !871
  %600 = getelementptr inbounds i8, i8* %599, i64 1, !dbg !872
  %601 = call i8* @memcpy(i8* nonnull %595, i8* nonnull %600, i64 %257) #6, !dbg !873
  %602 = load %struct.raxNode*, %struct.raxNode** %24, align 8, !dbg !874, !tbaa !172
  %603 = bitcast %struct.raxNode* %602 to i8*, !dbg !874
  %604 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %602, i64 0, i32 0, !dbg !874
  %605 = load i32, i32* %604, align 4, !dbg !874
  %606 = lshr i32 %605, 3, !dbg !874
  %607 = add nuw nsw i32 %606, 4, !dbg !874
  %608 = sub nsw i32 4, %606, !dbg !874
  %609 = and i32 %608, 7, !dbg !874
  %610 = add nuw nsw i32 %607, %609, !dbg !874
  %611 = zext i32 %610 to i64, !dbg !874
  %612 = and i32 %605, 4, !dbg !874
  %613 = icmp eq i32 %612, 0, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  %614 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %602, i64 0, i32 0, !dbg !874
  br i1 %613, label %615, label %618, !dbg !874

; <label>:615:                                    ; preds = %574
  %616 = and i32 %605, -8, !dbg !874
  %617 = zext i32 %616 to i64, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  br label %618, !dbg !874

; <label>:618:                                    ; preds = %574, %615
  %619 = phi i64 [ %617, %615 ], [ 8, %574 ], !dbg !874
  %620 = add nuw nsw i64 %619, %611, !dbg !874
  %621 = load i32, i32* %614, align 4, !dbg !874
  %622 = and i32 %621, 1, !dbg !874
  %623 = icmp eq i32 %622, 0, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  br i1 %623, label %629, label %624, !dbg !874

; <label>:624:                                    ; preds = %618
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %625 = shl i32 %621, 2
  %626 = and i32 %625, 8
  %627 = xor i32 %626, 8
  %628 = zext i32 %627 to i64
  br label %629

; <label>:629:                                    ; preds = %618, %624
  %630 = phi i64 [ 0, %618 ], [ %628, %624 ]
  %631 = add nuw nsw i64 %620, %630, !dbg !874
  %632 = getelementptr inbounds i8, i8* %603, i64 %631, !dbg !874
  %633 = getelementptr inbounds i8, i8* %632, i64 -8, !dbg !874
  %634 = load i32, i32* %614, align 4, !dbg !874
  %635 = and i32 %634, 1, !dbg !874
  %636 = icmp eq i32 %635, 0, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  br i1 %636, label %643, label %637, !dbg !874

; <label>:637:                                    ; preds = %629
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %638 = shl i32 %634, 2
  %639 = and i32 %638, 8
  %640 = xor i32 %639, 8
  %641 = zext i32 %640 to i64
  %642 = sub nsw i64 0, %641
  br label %643

; <label>:643:                                    ; preds = %629, %637
  %644 = phi i64 [ 0, %629 ], [ %642, %637 ]
  %645 = getelementptr inbounds i8, i8* %633, i64 %644, !dbg !874
  %646 = call i8* @memcpy(i8* nonnull %645, i8* nonnull %248, i64 8) #6, !dbg !876
  %647 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 2, !dbg !877
  %648 = load i64, i64* %647, align 8, !dbg !878, !tbaa !857
  %649 = add i64 %648, 1, !dbg !878
  store i64 %649, i64* %647, align 8, !dbg !878, !tbaa !857
  br label %654, !dbg !879

; <label>:650:                                    ; preds = %573
  %651 = bitcast %struct.raxNode** %21 to i64*, !dbg !880
  %652 = load i64, i64* %651, align 8, !dbg !880, !tbaa !172
  %653 = bitcast %struct.raxNode** %24 to i64*, !dbg !883
  store i64 %652, i64* %653, align 8, !dbg !883, !tbaa !172
  br label %654

; <label>:654:                                    ; preds = %650, %643
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %655 = load %struct.raxNode*, %struct.raxNode** %22, align 8, !dbg !884, !tbaa !172
  %656 = bitcast %struct.raxNode* %655 to i8*, !dbg !884
  %657 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %655, i64 0, i32 0, !dbg !884
  %658 = load i32, i32* %657, align 4, !dbg !884
  %659 = lshr i32 %658, 3, !dbg !884
  %660 = add nuw nsw i32 %659, 4, !dbg !884
  %661 = sub nsw i32 4, %659, !dbg !884
  %662 = and i32 %661, 7, !dbg !884
  %663 = add nuw nsw i32 %660, %662, !dbg !884
  %664 = zext i32 %663 to i64, !dbg !884
  %665 = and i32 %658, 4, !dbg !884
  %666 = icmp eq i32 %665, 0, !dbg !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  %667 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %655, i64 0, i32 0, !dbg !884
  br i1 %666, label %668, label %671, !dbg !884

; <label>:668:                                    ; preds = %654
  %669 = and i32 %658, -8, !dbg !884
  %670 = zext i32 %669 to i64, !dbg !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  br label %671, !dbg !884

; <label>:671:                                    ; preds = %654, %668
  %672 = phi i64 [ %670, %668 ], [ 8, %654 ], !dbg !884
  %673 = add nuw nsw i64 %672, %664, !dbg !884
  %674 = load i32, i32* %667, align 4, !dbg !884
  %675 = and i32 %674, 1, !dbg !884
  %676 = icmp eq i32 %675, 0, !dbg !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  br i1 %676, label %682, label %677, !dbg !884

; <label>:677:                                    ; preds = %671
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %678 = shl i32 %674, 2
  %679 = and i32 %678, 8
  %680 = xor i32 %679, 8
  %681 = zext i32 %680 to i64
  br label %682

; <label>:682:                                    ; preds = %671, %677
  %683 = phi i64 [ 0, %671 ], [ %681, %677 ]
  %684 = add nuw nsw i64 %673, %683, !dbg !884
  %685 = getelementptr inbounds i8, i8* %656, i64 %684, !dbg !884
  %686 = getelementptr inbounds i8, i8* %685, i64 -8, !dbg !884
  %687 = load i32, i32* %667, align 4, !dbg !884
  %688 = and i32 %687, 1, !dbg !884
  %689 = icmp eq i32 %688, 0, !dbg !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  br i1 %689, label %696, label %690, !dbg !884

; <label>:690:                                    ; preds = %682
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %691 = shl i32 %687, 2
  %692 = and i32 %691, 8
  %693 = xor i32 %692, 8
  %694 = zext i32 %693 to i64
  %695 = sub nsw i64 0, %694
  br label %696

; <label>:696:                                    ; preds = %682, %690
  %697 = phi i64 [ 0, %682 ], [ %695, %690 ]
  %698 = getelementptr inbounds i8, i8* %686, i64 %697, !dbg !884
  %699 = call i8* @memcpy(i8* nonnull %698, i8* nonnull %282, i64 8) #6, !dbg !886
  %700 = bitcast %struct.raxNode** %19 to i8**, !dbg !887
  %701 = load i8*, i8** %700, align 8, !dbg !887, !tbaa !172
  call void @zfree(i8* %701) #6, !dbg !888
  %702 = bitcast %struct.raxNode** %22 to i64*, !dbg !889
  %703 = load i64, i64* %702, align 8, !dbg !889, !tbaa !172
  %704 = bitcast %struct.raxNode** %19 to i64*, !dbg !890
  store i64 %703, i64* %704, align 8, !dbg !890, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !740
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %282) #7, !dbg !740
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %281) #7, !dbg !740
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %272) #7, !dbg !740
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %248) #7, !dbg !740
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %705 = inttoptr i64 %703 to %struct.raxNode*
  br label %1059

; <label>:706:                                    ; preds = %215, %208
  %707 = bitcast %struct.raxNode** %19 to i32**, !dbg !891
  %708 = load i32, i32* %210, align 4, !dbg !892
  %709 = and i32 %708, 4, !dbg !892
  %710 = icmp eq i32 %709, 0, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !893
  br i1 %710, label %1059, label %711, !dbg !893

; <label>:711:                                    ; preds = %706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  br i1 %34, label %712, label %1059, !dbg !894

; <label>:712:                                    ; preds = %711
  %713 = lshr i32 %708, 3, !dbg !895
  %714 = load i32, i32* %18, align 4, !dbg !896, !tbaa !48
  %715 = sub nsw i32 %713, %714, !dbg !897
  %716 = sext i32 %715 to i64, !dbg !898
  %717 = add nsw i64 %716, 4, !dbg !900
  %718 = sub nsw i64 4, %716, !dbg !901
  %719 = and i64 %718, 7, !dbg !901
  %720 = add nsw i64 %717, %719, !dbg !902
  %721 = add nsw i64 %720, 8, !dbg !903
  %722 = icmp eq i8* %3, null, !dbg !905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !907
  br i1 %722, label %725, label %723, !dbg !907

; <label>:723:                                    ; preds = %712
  %724 = add nsw i64 %720, 16, !dbg !908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !909
  br label %725, !dbg !909

; <label>:725:                                    ; preds = %712, %723
  %726 = phi i64 [ %724, %723 ], [ %721, %712 ], !dbg !910
  %727 = bitcast %struct.raxNode** %25 to i8*, !dbg !911
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %727) #7, !dbg !911
  %728 = call i8* @zmalloc(i64 %726) #6, !dbg !912
  %729 = bitcast %struct.raxNode** %25 to i8**, !dbg !913
  store i8* %728, i8** %729, align 8, !dbg !913, !tbaa !172
  %730 = load i32, i32* %18, align 4, !dbg !914, !tbaa !48
  %731 = sext i32 %730 to i64, !dbg !914
  %732 = add nsw i64 %731, 4, !dbg !915
  %733 = sub i32 4, %730, !dbg !916
  %734 = and i32 %733, 7, !dbg !916
  %735 = zext i32 %734 to i64, !dbg !916
  %736 = add nsw i64 %732, %735, !dbg !917
  %737 = add nsw i64 %736, 8, !dbg !918
  %738 = load i32*, i32** %707, align 8, !dbg !919, !tbaa !172
  %739 = load i32, i32* %738, align 4, !dbg !921
  %740 = and i32 %739, 1, !dbg !921
  %741 = icmp eq i32 %740, 0, !dbg !919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !922
  %742 = bitcast i8* %728 to i32*, !dbg !922
  br i1 %741, label %748, label %743, !dbg !922

; <label>:743:                                    ; preds = %725
  %744 = and i32 %739, 2, !dbg !923
  %745 = icmp eq i32 %744, 0, !dbg !924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  br i1 %745, label %746, label %748, !dbg !925

; <label>:746:                                    ; preds = %743
  %747 = add nsw i64 %736, 16, !dbg !926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !927
  br label %748, !dbg !927

; <label>:748:                                    ; preds = %743, %725, %746
  %749 = phi i64 [ %737, %743 ], [ %747, %746 ], [ %737, %725 ], !dbg !910
  %750 = bitcast %struct.raxNode** %26 to i8*, !dbg !928
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %750) #7, !dbg !928
  %751 = call i8* @zmalloc(i64 %749) #6, !dbg !929
  %752 = bitcast %struct.raxNode** %26 to i8**, !dbg !930
  store i8* %751, i8** %752, align 8, !dbg !930, !tbaa !172
  %753 = icmp eq i8* %728, null, !dbg !931
  %754 = icmp eq i8* %751, null, !dbg !933
  %755 = or i1 %754, %753, !dbg !934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !934
  br i1 %755, label %756, label %759, !dbg !934

; <label>:756:                                    ; preds = %748
  call void @zfree(i8* %728) #6, !dbg !935
  %757 = load i8*, i8** %752, align 8, !dbg !937, !tbaa !172
  call void @zfree(i8* %757) #6, !dbg !938
  %758 = call i32* @__errno() #6, !dbg !939
  store i32 12, i32* %758, align 4, !dbg !940, !tbaa !48
  br label %1057, !dbg !941

; <label>:759:                                    ; preds = %748
  %760 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !942, !tbaa !172
  %761 = bitcast %struct.raxNode* %760 to i8*, !dbg !942
  %762 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %760, i64 0, i32 0, !dbg !942
  %763 = load i32, i32* %762, align 4, !dbg !942
  %764 = lshr i32 %763, 3, !dbg !942
  %765 = add nuw nsw i32 %764, 4, !dbg !942
  %766 = sub nsw i32 4, %764, !dbg !942
  %767 = and i32 %766, 7, !dbg !942
  %768 = add nuw nsw i32 %765, %767, !dbg !942
  %769 = zext i32 %768 to i64, !dbg !942
  %770 = and i32 %763, 4, !dbg !942
  %771 = icmp eq i32 %770, 0, !dbg !942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  %772 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %760, i64 0, i32 0, !dbg !942
  br i1 %771, label %773, label %776, !dbg !942

; <label>:773:                                    ; preds = %759
  %774 = and i32 %763, -8, !dbg !942
  %775 = zext i32 %774 to i64, !dbg !942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  br label %776, !dbg !942

; <label>:776:                                    ; preds = %759, %773
  %777 = phi i64 [ %775, %773 ], [ 8, %759 ], !dbg !942
  %778 = add nuw nsw i64 %777, %769, !dbg !942
  %779 = load i32, i32* %772, align 4, !dbg !942
  %780 = and i32 %779, 1, !dbg !942
  %781 = icmp eq i32 %780, 0, !dbg !942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  br i1 %781, label %787, label %782, !dbg !942

; <label>:782:                                    ; preds = %776
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %783 = shl i32 %779, 2
  %784 = and i32 %783, 8
  %785 = xor i32 %784, 8
  %786 = zext i32 %785 to i64
  br label %787

; <label>:787:                                    ; preds = %776, %782
  %788 = phi i64 [ 0, %776 ], [ %786, %782 ]
  %789 = add nuw nsw i64 %778, %788, !dbg !942
  %790 = getelementptr inbounds i8, i8* %761, i64 %789, !dbg !942
  %791 = getelementptr inbounds i8, i8* %790, i64 -8, !dbg !942
  %792 = load i32, i32* %772, align 4, !dbg !942
  %793 = and i32 %792, 1, !dbg !942
  %794 = icmp eq i32 %793, 0, !dbg !942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !942
  br i1 %794, label %801, label %795, !dbg !942

; <label>:795:                                    ; preds = %787
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %796 = shl i32 %792, 2
  %797 = and i32 %796, 8
  %798 = xor i32 %797, 8
  %799 = zext i32 %798 to i64
  %800 = sub nsw i64 0, %799
  br label %801

; <label>:801:                                    ; preds = %787, %795
  %802 = phi i64 [ 0, %787 ], [ %800, %795 ]
  %803 = getelementptr inbounds i8, i8* %791, i64 %802, !dbg !942
  %804 = bitcast %struct.raxNode** %27 to i8*, !dbg !944
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %804) #7, !dbg !944
  %805 = call i8* @memcpy(i8* nonnull %804, i8* nonnull %803, i64 8) #6, !dbg !945
  %806 = bitcast %struct.raxNode** %25 to i32**, !dbg !946
  %807 = load i32, i32* %742, align 4, !dbg !947
  %808 = shl i32 %715, 3, !dbg !947
  %809 = and i32 %807, 7, !dbg !947
  %810 = or i32 %809, %808, !dbg !947
  store i32 %810, i32* %742, align 4, !dbg !947
  %811 = icmp ugt i32 %715, 1, !dbg !948
  %812 = zext i1 %811 to i32, !dbg !948
  %813 = load i32*, i32** %806, align 8, !dbg !949, !tbaa !172
  %814 = load i32, i32* %813, align 4, !dbg !950
  %815 = shl nuw nsw i32 %812, 2, !dbg !950
  %816 = and i32 %814, -5, !dbg !950
  %817 = or i32 %816, %815, !dbg !950
  store i32 %817, i32* %813, align 4, !dbg !950
  %818 = load i32*, i32** %806, align 8, !dbg !951, !tbaa !172
  %819 = load i32, i32* %818, align 4, !dbg !952
  %820 = or i32 %819, 1, !dbg !952
  store i32 %820, i32* %818, align 4, !dbg !952
  %821 = load i32*, i32** %806, align 8, !dbg !953, !tbaa !172
  %822 = load i32, i32* %821, align 4, !dbg !954
  %823 = and i32 %822, -3, !dbg !954
  store i32 %823, i32* %821, align 4, !dbg !954
  %824 = load %struct.raxNode*, %struct.raxNode** %25, align 8, !dbg !955, !tbaa !172
  %825 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %824, i64 0, i32 1, i64 0, !dbg !955
  %826 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !956, !tbaa !172
  %827 = load i32, i32* %18, align 4, !dbg !957, !tbaa !48
  %828 = sext i32 %827 to i64, !dbg !958
  %829 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %826, i64 0, i32 1, i64 %828, !dbg !958
  %830 = call i8* @memcpy(i8* nonnull %825, i8* nonnull %829, i64 %716) #6, !dbg !959
  %831 = bitcast i8** %10 to i8*, !dbg !960
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %831), !dbg !960
  store i8* %3, i8** %10, align 8, !tbaa !172
  %832 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %824, i64 0, i32 0, !dbg !963
  %833 = load i32, i32* %832, align 4, !dbg !964
  %834 = or i32 %833, 1, !dbg !964
  store i32 %834, i32* %832, align 4, !dbg !964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !965
  br i1 %722, label %854, label %835, !dbg !965

; <label>:835:                                    ; preds = %801
  %836 = and i32 %834, -3, !dbg !966
  store i32 %836, i32* %832, align 4, !dbg !967
  %837 = bitcast %struct.raxNode* %824 to i8*, !dbg !968
  %838 = lshr i32 %833, 3, !dbg !969
  %839 = add nuw nsw i32 %838, 4, !dbg !969
  %840 = sub nsw i32 4, %838, !dbg !969
  %841 = and i32 %840, 7, !dbg !969
  %842 = add nuw nsw i32 %839, %841, !dbg !969
  %843 = zext i32 %842 to i64, !dbg !969
  %844 = and i32 %833, 4, !dbg !969
  %845 = icmp eq i32 %844, 0, !dbg !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  br i1 %845, label %846, label %849, !dbg !969

; <label>:846:                                    ; preds = %835
  %847 = and i32 %833, -8, !dbg !969
  %848 = zext i32 %847 to i64, !dbg !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  br label %849, !dbg !969

; <label>:849:                                    ; preds = %846, %835
  %850 = phi i64 [ %848, %846 ], [ 8, %835 ], !dbg !969
  %851 = add nuw nsw i64 %850, %843, !dbg !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %852 = getelementptr inbounds i8, i8* %837, i64 %851, !dbg !970
  %853 = call i8* @memcpy(i8* nonnull %852, i8* nonnull %831, i64 8) #6, !dbg !972
  br label %856, !dbg !973

; <label>:854:                                    ; preds = %801
  %855 = or i32 %833, 3, !dbg !974
  store i32 %855, i32* %832, align 4, !dbg !974
  br label %856

; <label>:856:                                    ; preds = %849, %854
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !975
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %831), !dbg !975
  %857 = load %struct.raxNode*, %struct.raxNode** %25, align 8, !dbg !976, !tbaa !172
  %858 = bitcast %struct.raxNode* %857 to i8*, !dbg !976
  %859 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %857, i64 0, i32 0, !dbg !976
  %860 = load i32, i32* %859, align 4, !dbg !976
  %861 = lshr i32 %860, 3, !dbg !976
  %862 = add nuw nsw i32 %861, 4, !dbg !976
  %863 = sub nsw i32 4, %861, !dbg !976
  %864 = and i32 %863, 7, !dbg !976
  %865 = add nuw nsw i32 %862, %864, !dbg !976
  %866 = zext i32 %865 to i64, !dbg !976
  %867 = and i32 %860, 4, !dbg !976
  %868 = icmp eq i32 %867, 0, !dbg !976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !976
  %869 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %857, i64 0, i32 0, !dbg !976
  br i1 %868, label %870, label %873, !dbg !976

; <label>:870:                                    ; preds = %856
  %871 = and i32 %860, -8, !dbg !976
  %872 = zext i32 %871 to i64, !dbg !976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !976
  br label %873, !dbg !976

; <label>:873:                                    ; preds = %856, %870
  %874 = phi i64 [ %872, %870 ], [ 8, %856 ], !dbg !976
  %875 = add nuw nsw i64 %874, %866, !dbg !976
  %876 = load i32, i32* %869, align 4, !dbg !976
  %877 = and i32 %876, 1, !dbg !976
  %878 = icmp eq i32 %877, 0, !dbg !976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !976
  br i1 %878, label %884, label %879, !dbg !976

; <label>:879:                                    ; preds = %873
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %880 = shl i32 %876, 2
  %881 = and i32 %880, 8
  %882 = xor i32 %881, 8
  %883 = zext i32 %882 to i64
  br label %884

; <label>:884:                                    ; preds = %873, %879
  %885 = phi i64 [ 0, %873 ], [ %883, %879 ]
  %886 = add nuw nsw i64 %875, %885, !dbg !976
  %887 = getelementptr inbounds i8, i8* %858, i64 %886, !dbg !976
  %888 = getelementptr inbounds i8, i8* %887, i64 -8, !dbg !976
  %889 = load i32, i32* %869, align 4, !dbg !976
  %890 = and i32 %889, 1, !dbg !976
  %891 = icmp eq i32 %890, 0, !dbg !976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !976
  br i1 %891, label %898, label %892, !dbg !976

; <label>:892:                                    ; preds = %884
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %893 = shl i32 %889, 2
  %894 = and i32 %893, 8
  %895 = xor i32 %894, 8
  %896 = zext i32 %895 to i64
  %897 = sub nsw i64 0, %896
  br label %898

; <label>:898:                                    ; preds = %884, %892
  %899 = phi i64 [ 0, %884 ], [ %897, %892 ]
  %900 = getelementptr inbounds i8, i8* %888, i64 %899, !dbg !976
  %901 = call i8* @memcpy(i8* nonnull %900, i8* nonnull %804, i64 8) #6, !dbg !978
  %902 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 2, !dbg !979
  %903 = load i64, i64* %902, align 8, !dbg !980, !tbaa !857
  %904 = add i64 %903, 1, !dbg !980
  store i64 %904, i64* %902, align 8, !dbg !980, !tbaa !857
  %905 = load i32, i32* %18, align 4, !dbg !981, !tbaa !48
  %906 = bitcast %struct.raxNode** %26 to i32**, !dbg !982
  %907 = load i32*, i32** %906, align 8, !dbg !982, !tbaa !172
  %908 = load i32, i32* %907, align 4, !dbg !983
  %909 = shl i32 %905, 3, !dbg !983
  %910 = and i32 %908, 7, !dbg !983
  %911 = or i32 %910, %909, !dbg !983
  store i32 %911, i32* %907, align 4, !dbg !983
  %912 = load i32, i32* %18, align 4, !dbg !984, !tbaa !48
  %913 = icmp sgt i32 %912, 1, !dbg !985
  %914 = zext i1 %913 to i32, !dbg !985
  %915 = load i32*, i32** %906, align 8, !dbg !986, !tbaa !172
  %916 = load i32, i32* %915, align 4, !dbg !987
  %917 = shl nuw nsw i32 %914, 2, !dbg !987
  %918 = and i32 %916, -5, !dbg !987
  %919 = or i32 %918, %917, !dbg !987
  store i32 %919, i32* %915, align 4, !dbg !987
  %920 = load i32*, i32** %906, align 8, !dbg !988, !tbaa !172
  %921 = load i32, i32* %920, align 4, !dbg !989
  %922 = and i32 %921, -2, !dbg !989
  store i32 %922, i32* %920, align 4, !dbg !989
  %923 = load i32*, i32** %906, align 8, !dbg !990, !tbaa !172
  %924 = load i32, i32* %923, align 4, !dbg !991
  %925 = and i32 %924, -3, !dbg !991
  store i32 %925, i32* %923, align 4, !dbg !991
  %926 = load %struct.raxNode*, %struct.raxNode** %26, align 8, !dbg !992, !tbaa !172
  %927 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %926, i64 0, i32 1, i64 0, !dbg !992
  %928 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !993, !tbaa !172
  %929 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %928, i64 0, i32 1, i64 0, !dbg !993
  %930 = load i32, i32* %18, align 4, !dbg !994, !tbaa !48
  %931 = sext i32 %930 to i64, !dbg !994
  %932 = call i8* @memcpy(i8* nonnull %927, i8* nonnull %929, i64 %931) #6, !dbg !995
  %933 = bitcast %struct.raxNode*** %20 to i8**, !dbg !996
  %934 = load i8*, i8** %933, align 8, !dbg !996, !tbaa !172
  %935 = call i8* @memcpy(i8* %934, i8* nonnull %750, i64 8) #6, !dbg !997
  %936 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !998, !tbaa !172
  %937 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %936, i64 0, i32 0, !dbg !999
  %938 = load i32, i32* %937, align 4, !dbg !999
  %939 = and i32 %938, 1, !dbg !999
  %940 = icmp eq i32 %939, 0, !dbg !998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1000
  br i1 %940, label %1006, label %941, !dbg !1000

; <label>:941:                                    ; preds = %898
  %942 = load i32, i32* %937, align 4, !dbg !1003
  %943 = and i32 %942, 2, !dbg !1003
  %944 = icmp eq i32 %943, 0, !dbg !1004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1005
  br i1 %944, label %945, label %976, !dbg !1005

; <label>:945:                                    ; preds = %941
  %946 = bitcast %struct.raxNode* %936 to i8*, !dbg !1006
  %947 = lshr i32 %942, 3, !dbg !1007
  %948 = add nuw nsw i32 %947, 4, !dbg !1007
  %949 = sub nsw i32 4, %947, !dbg !1007
  %950 = and i32 %949, 7, !dbg !1007
  %951 = add nuw nsw i32 %948, %950, !dbg !1007
  %952 = zext i32 %951 to i64, !dbg !1007
  %953 = and i32 %942, 4, !dbg !1007
  %954 = icmp eq i32 %953, 0, !dbg !1007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  br i1 %954, label %955, label %958, !dbg !1007

; <label>:955:                                    ; preds = %945
  %956 = and i32 %942, -8, !dbg !1007
  %957 = zext i32 %956 to i64, !dbg !1007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  br label %958, !dbg !1007

; <label>:958:                                    ; preds = %955, %945
  %959 = phi i64 [ %957, %955 ], [ 8, %945 ], !dbg !1007
  %960 = add nuw nsw i64 %959, %952, !dbg !1007
  %961 = and i32 %942, 1, !dbg !1007
  %962 = icmp eq i32 %961, 0, !dbg !1007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  br i1 %962, label %968, label %963, !dbg !1007

; <label>:963:                                    ; preds = %958
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %964 = shl i32 %942, 2
  %965 = and i32 %964, 8
  %966 = xor i32 %965, 8
  %967 = zext i32 %966 to i64
  br label %968

; <label>:968:                                    ; preds = %963, %958
  %969 = phi i64 [ 0, %958 ], [ %967, %963 ]
  %970 = add nuw nsw i64 %960, %969, !dbg !1007
  %971 = getelementptr inbounds i8, i8* %946, i64 %970, !dbg !1008
  %972 = getelementptr inbounds i8, i8* %971, i64 -8, !dbg !1009
  %973 = bitcast i8** %9 to i8*, !dbg !1011
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %973) #7, !dbg !1011
  %974 = call i8* @memcpy(i8* nonnull %973, i8* nonnull %972, i64 8) #6, !dbg !1012
  %975 = load i8*, i8** %9, align 8, !dbg !1013, !tbaa !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %973) #7, !dbg !1015
  br label %976

; <label>:976:                                    ; preds = %941, %968
  %977 = phi i8* [ %975, %968 ], [ null, %941 ], !dbg !1016
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  %978 = load %struct.raxNode*, %struct.raxNode** %26, align 8, !dbg !1018, !tbaa !172
  %979 = bitcast i8** %8 to i8*, !dbg !1019
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %979), !dbg !1019
  store i8* %977, i8** %8, align 8, !tbaa !172
  %980 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %978, i64 0, i32 0, !dbg !1022
  %981 = load i32, i32* %980, align 4, !dbg !1023
  %982 = or i32 %981, 1, !dbg !1023
  store i32 %982, i32* %980, align 4, !dbg !1023
  %983 = icmp eq i8* %977, null, !dbg !1024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1025
  br i1 %983, label %1003, label %984, !dbg !1025

; <label>:984:                                    ; preds = %976
  %985 = and i32 %982, -3, !dbg !1026
  store i32 %985, i32* %980, align 4, !dbg !1027
  %986 = bitcast %struct.raxNode* %978 to i8*, !dbg !1028
  %987 = lshr i32 %981, 3, !dbg !1029
  %988 = add nuw nsw i32 %987, 4, !dbg !1029
  %989 = sub nsw i32 4, %987, !dbg !1029
  %990 = and i32 %989, 7, !dbg !1029
  %991 = add nuw nsw i32 %988, %990, !dbg !1029
  %992 = zext i32 %991 to i64, !dbg !1029
  %993 = and i32 %981, 4, !dbg !1029
  %994 = icmp eq i32 %993, 0, !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  br i1 %994, label %995, label %998, !dbg !1029

; <label>:995:                                    ; preds = %984
  %996 = and i32 %981, -8, !dbg !1029
  %997 = zext i32 %996 to i64, !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  br label %998, !dbg !1029

; <label>:998:                                    ; preds = %995, %984
  %999 = phi i64 [ %997, %995 ], [ 8, %984 ], !dbg !1029
  %1000 = add nuw nsw i64 %999, %992, !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %1001 = getelementptr inbounds i8, i8* %986, i64 %1000, !dbg !1030
  %1002 = call i8* @memcpy(i8* nonnull %1001, i8* nonnull %979, i64 8) #6, !dbg !1032
  br label %1005, !dbg !1033

; <label>:1003:                                   ; preds = %976
  %1004 = or i32 %981, 3, !dbg !1034
  store i32 %1004, i32* %980, align 4, !dbg !1034
  br label %1005

; <label>:1005:                                   ; preds = %998, %1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %979), !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  br label %1006, !dbg !1036

; <label>:1006:                                   ; preds = %898, %1005
  %1007 = load %struct.raxNode*, %struct.raxNode** %26, align 8, !dbg !1037, !tbaa !172
  %1008 = bitcast %struct.raxNode* %1007 to i8*, !dbg !1037
  %1009 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %1007, i64 0, i32 0, !dbg !1037
  %1010 = load i32, i32* %1009, align 4, !dbg !1037
  %1011 = lshr i32 %1010, 3, !dbg !1037
  %1012 = add nuw nsw i32 %1011, 4, !dbg !1037
  %1013 = sub nsw i32 4, %1011, !dbg !1037
  %1014 = and i32 %1013, 7, !dbg !1037
  %1015 = add nuw nsw i32 %1012, %1014, !dbg !1037
  %1016 = zext i32 %1015 to i64, !dbg !1037
  %1017 = and i32 %1010, 4, !dbg !1037
  %1018 = icmp eq i32 %1017, 0, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  %1019 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %1007, i64 0, i32 0, !dbg !1037
  br i1 %1018, label %1020, label %1023, !dbg !1037

; <label>:1020:                                   ; preds = %1006
  %1021 = and i32 %1010, -8, !dbg !1037
  %1022 = zext i32 %1021 to i64, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  br label %1023, !dbg !1037

; <label>:1023:                                   ; preds = %1006, %1020
  %1024 = phi i64 [ %1022, %1020 ], [ 8, %1006 ], !dbg !1037
  %1025 = add nuw nsw i64 %1024, %1016, !dbg !1037
  %1026 = load i32, i32* %1019, align 4, !dbg !1037
  %1027 = and i32 %1026, 1, !dbg !1037
  %1028 = icmp eq i32 %1027, 0, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  br i1 %1028, label %1034, label %1029, !dbg !1037

; <label>:1029:                                   ; preds = %1023
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %1030 = shl i32 %1026, 2
  %1031 = and i32 %1030, 8
  %1032 = xor i32 %1031, 8
  %1033 = zext i32 %1032 to i64
  br label %1034

; <label>:1034:                                   ; preds = %1023, %1029
  %1035 = phi i64 [ 0, %1023 ], [ %1033, %1029 ]
  %1036 = add nuw nsw i64 %1025, %1035, !dbg !1037
  %1037 = getelementptr inbounds i8, i8* %1008, i64 %1036, !dbg !1037
  %1038 = getelementptr inbounds i8, i8* %1037, i64 -8, !dbg !1037
  %1039 = load i32, i32* %1019, align 4, !dbg !1037
  %1040 = and i32 %1039, 1, !dbg !1037
  %1041 = icmp eq i32 %1040, 0, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  br i1 %1041, label %1048, label %1042, !dbg !1037

; <label>:1042:                                   ; preds = %1034
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %1043 = shl i32 %1039, 2
  %1044 = and i32 %1043, 8
  %1045 = xor i32 %1044, 8
  %1046 = zext i32 %1045 to i64
  %1047 = sub nsw i64 0, %1046
  br label %1048

; <label>:1048:                                   ; preds = %1034, %1042
  %1049 = phi i64 [ 0, %1034 ], [ %1047, %1042 ]
  %1050 = getelementptr inbounds i8, i8* %1038, i64 %1049, !dbg !1037
  %1051 = call i8* @memcpy(i8* nonnull %1050, i8* nonnull %727, i64 8) #6, !dbg !1038
  %1052 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 1, !dbg !1039
  %1053 = load i64, i64* %1052, align 8, !dbg !1040, !tbaa !645
  %1054 = add i64 %1053, 1, !dbg !1040
  store i64 %1054, i64* %1052, align 8, !dbg !1040, !tbaa !645
  %1055 = bitcast %struct.raxNode** %19 to i8**, !dbg !1041
  %1056 = load i8*, i8** %1055, align 8, !dbg !1041, !tbaa !172
  call void @zfree(i8* %1056) #6, !dbg !1042
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %804) #7, !dbg !1043
  br label %1057

; <label>:1057:                                   ; preds = %1048, %756
  %1058 = phi i32 [ 0, %756 ], [ 1, %1048 ], !dbg !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %750) #7, !dbg !1043
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %727) #7, !dbg !1043
  br label %1247

; <label>:1059:                                   ; preds = %696, %706, %711
  %1060 = phi %struct.raxNode* [ %705, %696 ], [ %209, %706 ], [ %209, %711 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1044
  %1061 = icmp ult i64 %33, %2, !dbg !1045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1044
  br i1 %1061, label %1062, label %1153, !dbg !1044

; <label>:1062:                                   ; preds = %1059
  %1063 = bitcast %struct.raxNode** %28 to i8*
  %1064 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 2
  %1065 = bitcast %struct.raxNode** %28 to i64*
  %1066 = bitcast %struct.raxNode** %19 to i64*
  %1067 = bitcast %struct.raxNode*** %29 to i8*
  %1068 = bitcast %struct.raxNode*** %20 to i8**
  %1069 = bitcast %struct.raxNode*** %29 to i64*
  %1070 = bitcast %struct.raxNode*** %20 to i64*
  br label %1071, !dbg !1044

; <label>:1071:                                   ; preds = %1062, %1143
  %1072 = phi %struct.raxNode* [ %1060, %1062 ], [ %1150, %1143 ], !dbg !1046
  %1073 = phi i64 [ %33, %1062 ], [ %1145, %1143 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1063) #7, !dbg !1047
  %1074 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %1072, i64 0, i32 0, !dbg !1048
  %1075 = load i32, i32* %1074, align 4, !dbg !1048
  %1076 = icmp ult i32 %1075, 8, !dbg !1049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1050
  br i1 %1076, label %1077, label %1132, !dbg !1050

; <label>:1077:                                   ; preds = %1071
  %1078 = sub i64 %2, %1073, !dbg !1051
  %1079 = icmp ugt i64 %1078, 1, !dbg !1052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1053
  br i1 %1079, label %1080, label %1132, !dbg !1053

; <label>:1080:                                   ; preds = %1077
  %1081 = icmp ult i64 %1078, 536870911, !dbg !1055
  %1082 = select i1 %1081, i64 %1078, i64 536870911, !dbg !1055
  %1083 = getelementptr inbounds i8, i8* %1, i64 %1073, !dbg !1056
  %1084 = call %struct.raxNode* @raxCompressNode(%struct.raxNode* %1072, i8* %1083, i64 %1082, %struct.raxNode** nonnull %28) #9, !dbg !1058
  %1085 = icmp eq %struct.raxNode* %1084, null, !dbg !1060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  br i1 %1085, label %1131, label %1086, !dbg !1062

; <label>:1086:                                   ; preds = %1080
  store %struct.raxNode* %1084, %struct.raxNode** %19, align 8, !dbg !1063, !tbaa !172
  %1087 = load i8*, i8** %1068, align 8, !dbg !1064, !tbaa !172
  %1088 = call i8* @memcpy(i8* %1087, i8* nonnull %31, i64 8) #6, !dbg !1065
  %1089 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !1066, !tbaa !172
  %1090 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %1089, i64 0, i32 0, !dbg !1066
  %1091 = load i32, i32* %1090, align 4, !dbg !1066
  %1092 = lshr i32 %1091, 3, !dbg !1066
  %1093 = add nuw nsw i32 %1092, 4, !dbg !1066
  %1094 = sub nsw i32 4, %1092, !dbg !1066
  %1095 = and i32 %1094, 7, !dbg !1066
  %1096 = add nuw nsw i32 %1093, %1095, !dbg !1066
  %1097 = zext i32 %1096 to i64, !dbg !1066
  %1098 = and i32 %1091, 4, !dbg !1066
  %1099 = icmp eq i32 %1098, 0, !dbg !1066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  %1100 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %1089, i64 0, i32 0, !dbg !1066
  br i1 %1099, label %1101, label %1104, !dbg !1066

; <label>:1101:                                   ; preds = %1086
  %1102 = and i32 %1091, -8, !dbg !1066
  %1103 = zext i32 %1102 to i64, !dbg !1066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  br label %1104, !dbg !1066

; <label>:1104:                                   ; preds = %1086, %1101
  %1105 = phi i64 [ %1103, %1101 ], [ 8, %1086 ], !dbg !1066
  %1106 = add nuw nsw i64 %1105, %1097, !dbg !1066
  %1107 = load i32, i32* %1100, align 4, !dbg !1066
  %1108 = and i32 %1107, 1, !dbg !1066
  %1109 = icmp eq i32 %1108, 0, !dbg !1066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  br i1 %1109, label %1113, label %1110, !dbg !1066

; <label>:1110:                                   ; preds = %1104
  %1111 = and i32 %1107, 2, !dbg !1066
  %1112 = icmp eq i32 %1111, 0, !dbg !1066
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %1113

; <label>:1113:                                   ; preds = %1104, %1110
  %1114 = phi i1 [ false, %1104 ], [ %1112, %1110 ], !dbg !1067
  %1115 = zext i1 %1114 to i64, !dbg !1066
  %1116 = shl nuw nsw i64 %1115, 3, !dbg !1066
  %1117 = add nuw nsw i64 %1106, %1116, !dbg !1066
  %1118 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %1089, i64 -2, !dbg !1066
  %1119 = bitcast %struct.raxNode* %1118 to i8*, !dbg !1066
  %1120 = getelementptr inbounds i8, i8* %1119, i64 %1117, !dbg !1066
  %1121 = load i32, i32* %1100, align 4, !dbg !1066
  %1122 = and i32 %1121, 1, !dbg !1066
  %1123 = icmp eq i32 %1122, 0, !dbg !1066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  br i1 %1123, label %1128, label %1124, !dbg !1066

; <label>:1124:                                   ; preds = %1113
  %1125 = and i32 %1121, 2, !dbg !1066
  %1126 = icmp eq i32 %1125, 0, !dbg !1066
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %1127 = select i1 %1126, i64 -8, i64 0, !dbg !1066
  br label %1128, !dbg !1066

; <label>:1128:                                   ; preds = %1124, %1113
  %1129 = phi i64 [ 0, %1113 ], [ %1127, %1124 ]
  %1130 = getelementptr inbounds i8, i8* %1120, i64 %1129, !dbg !1066
  store i8* %1130, i8** %1068, align 8, !dbg !1068, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1069
  br label %1143

; <label>:1131:                                   ; preds = %1080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1070
  br label %1142

; <label>:1132:                                   ; preds = %1077, %1071
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1067) #7, !dbg !1071
  %1133 = getelementptr inbounds i8, i8* %1, i64 %1073, !dbg !1072
  %1134 = load i8, i8* %1133, align 1, !dbg !1072, !tbaa !280
  %1135 = call %struct.raxNode* @raxAddChild(%struct.raxNode* %1072, i8 zeroext %1134, %struct.raxNode** nonnull %28, %struct.raxNode*** nonnull %29) #9, !dbg !1074
  %1136 = icmp eq %struct.raxNode* %1135, null, !dbg !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1078
  br i1 %1136, label %1141, label %1137, !dbg !1078

; <label>:1137:                                   ; preds = %1132
  store %struct.raxNode* %1135, %struct.raxNode** %19, align 8, !dbg !1079, !tbaa !172
  %1138 = load i8*, i8** %1068, align 8, !dbg !1080, !tbaa !172
  %1139 = call i8* @memcpy(i8* %1138, i8* nonnull %31, i64 8) #6, !dbg !1081
  %1140 = load i64, i64* %1069, align 8, !dbg !1082, !tbaa !172
  store i64 %1140, i64* %1070, align 8, !dbg !1083, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1084
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1067) #7, !dbg !1084
  br label %1143

; <label>:1141:                                   ; preds = %1132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1085
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1067) #7, !dbg !1084
  br label %1142

; <label>:1142:                                   ; preds = %1131, %1141
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1063) #7, !dbg !1086
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %1228

; <label>:1143:                                   ; preds = %1128, %1137
  %1144 = phi i64 [ %1082, %1128 ], [ 1, %1137 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %1145 = add i64 %1144, %1073, !dbg !1087
  %1146 = load i64, i64* %1064, align 8, !dbg !1088, !tbaa !857
  %1147 = add i64 %1146, 1, !dbg !1088
  store i64 %1147, i64* %1064, align 8, !dbg !1088, !tbaa !857
  %1148 = load i64, i64* %1065, align 8, !dbg !1089, !tbaa !172
  store i64 %1148, i64* %1066, align 8, !dbg !1090, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1086
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1063) #7, !dbg !1086
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %1149 = icmp ult i64 %1145, %2, !dbg !1045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1044
  %1150 = inttoptr i64 %1148 to %struct.raxNode*, !dbg !1044
  br i1 %1149, label %1071, label %1151, !dbg !1044

; <label>:1151:                                   ; preds = %1143
  %1152 = inttoptr i64 %1148 to %struct.raxNode*, !dbg !1044
  br label %1153, !dbg !1091

; <label>:1153:                                   ; preds = %1151, %1059
  %1154 = phi %struct.raxNode* [ %1060, %1059 ], [ %1152, %1151 ], !dbg !1093
  %1155 = phi i64 [ %33, %1059 ], [ %1145, %1151 ], !dbg !1087
  %1156 = icmp eq i8* %3, null, !dbg !1091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1096
  br i1 %1156, label %1187, label %1157, !dbg !1096

; <label>:1157:                                   ; preds = %1153
  %1158 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %1154, i64 0, i32 0, !dbg !1097
  %1159 = load i32, i32* %1158, align 4, !dbg !1097
  %1160 = lshr i32 %1159, 3, !dbg !1097
  %1161 = sub nsw i32 4, %1160, !dbg !1097
  %1162 = and i32 %1161, 7, !dbg !1097
  %1163 = and i32 %1159, 4, !dbg !1097
  %1164 = icmp eq i32 %1163, 0, !dbg !1097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1097
  br i1 %1164, label %1165, label %1168, !dbg !1097

; <label>:1165:                                   ; preds = %1157
  %1166 = and i32 %1159, -8, !dbg !1097
  %1167 = zext i32 %1166 to i64, !dbg !1097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1097
  br label %1168, !dbg !1097

; <label>:1168:                                   ; preds = %1165, %1157
  %1169 = phi i64 [ %1167, %1165 ], [ 8, %1157 ], !dbg !1097
  %1170 = and i32 %1159, 1, !dbg !1097
  %1171 = icmp eq i32 %1170, 0, !dbg !1097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1097
  br i1 %1171, label %1177, label %1172, !dbg !1097

; <label>:1172:                                   ; preds = %1168
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %1173 = shl i32 %1159, 2
  %1174 = and i32 %1173, 8
  %1175 = xor i32 %1174, 8
  %1176 = zext i32 %1175 to i64
  br label %1177

; <label>:1177:                                   ; preds = %1172, %1168
  %1178 = phi i64 [ 0, %1168 ], [ %1176, %1172 ]
  %1179 = bitcast %struct.raxNode* %1154 to i8*, !dbg !1099
  %1180 = add nuw nsw i32 %1160, 12, !dbg !1097
  %1181 = add nuw nsw i32 %1180, %1162, !dbg !1097
  %1182 = zext i32 %1181 to i64, !dbg !1097
  %1183 = add nuw nsw i64 %1169, %1182, !dbg !1097
  %1184 = add nuw nsw i64 %1183, %1178, !dbg !1100
  %1185 = call i8* @zrealloc(i8* %1179, i64 %1184) #6, !dbg !1101
  %1186 = bitcast i8* %1185 to %struct.raxNode*, !dbg !1101
  br label %1187

; <label>:1187:                                   ; preds = %1153, %1177
  %1188 = phi %struct.raxNode* [ %1186, %1177 ], [ %1154, %1153 ], !dbg !1102
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1103
  %1189 = icmp eq %struct.raxNode* %1188, null, !dbg !1105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1107
  br i1 %1189, label %1228, label %1190, !dbg !1107

; <label>:1190:                                   ; preds = %1187
  store %struct.raxNode* %1188, %struct.raxNode** %19, align 8, !dbg !1108, !tbaa !172
  %1191 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %1188, i64 0, i32 0, !dbg !1109
  %1192 = load i32, i32* %1191, align 4, !dbg !1109
  %1193 = and i32 %1192, 1, !dbg !1109
  %1194 = icmp eq i32 %1193, 0, !dbg !1111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1112
  br i1 %1194, label %1195, label %1199, !dbg !1112

; <label>:1195:                                   ; preds = %1190
  %1196 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 1, !dbg !1113
  %1197 = load i64, i64* %1196, align 8, !dbg !1114, !tbaa !645
  %1198 = add i64 %1197, 1, !dbg !1114
  store i64 %1198, i64* %1196, align 8, !dbg !1114, !tbaa !645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1115
  br label %1199, !dbg !1115

; <label>:1199:                                   ; preds = %1190, %1195
  %1200 = bitcast i8** %7 to i8*, !dbg !1116
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1200), !dbg !1116
  store i8* %3, i8** %7, align 8, !tbaa !172
  %1201 = load i32, i32* %1191, align 4, !dbg !1119
  %1202 = or i32 %1201, 1, !dbg !1119
  store i32 %1202, i32* %1191, align 4, !dbg !1119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1120
  br i1 %1156, label %1222, label %1203, !dbg !1120

; <label>:1203:                                   ; preds = %1199
  %1204 = and i32 %1202, -3, !dbg !1121
  store i32 %1204, i32* %1191, align 4, !dbg !1122
  %1205 = bitcast %struct.raxNode* %1188 to i8*, !dbg !1123
  %1206 = lshr i32 %1201, 3, !dbg !1124
  %1207 = add nuw nsw i32 %1206, 4, !dbg !1124
  %1208 = sub nsw i32 4, %1206, !dbg !1124
  %1209 = and i32 %1208, 7, !dbg !1124
  %1210 = add nuw nsw i32 %1207, %1209, !dbg !1124
  %1211 = zext i32 %1210 to i64, !dbg !1124
  %1212 = and i32 %1201, 4, !dbg !1124
  %1213 = icmp eq i32 %1212, 0, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  br i1 %1213, label %1214, label %1217, !dbg !1124

; <label>:1214:                                   ; preds = %1203
  %1215 = and i32 %1201, -8, !dbg !1124
  %1216 = zext i32 %1215 to i64, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  br label %1217, !dbg !1124

; <label>:1217:                                   ; preds = %1214, %1203
  %1218 = phi i64 [ %1216, %1214 ], [ 8, %1203 ], !dbg !1124
  %1219 = add nuw nsw i64 %1218, %1211, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %1220 = getelementptr inbounds i8, i8* %1205, i64 %1219, !dbg !1125
  %1221 = call i8* @memcpy(i8* nonnull %1220, i8* nonnull %1200, i64 8) #6, !dbg !1127
  br label %1224, !dbg !1128

; <label>:1222:                                   ; preds = %1199
  %1223 = or i32 %1201, 3, !dbg !1129
  store i32 %1223, i32* %1191, align 4, !dbg !1129
  br label %1224

; <label>:1224:                                   ; preds = %1217, %1222
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1130
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1200), !dbg !1130
  %1225 = bitcast %struct.raxNode*** %20 to i8**, !dbg !1131
  %1226 = load i8*, i8** %1225, align 8, !dbg !1131, !tbaa !172
  %1227 = call i8* @memcpy(i8* %1226, i8* nonnull %31, i64 8) #6, !dbg !1132
  br label %1247, !dbg !1133

; <label>:1228:                                   ; preds = %1187, %1142
  %1229 = phi i64 [ %1073, %1142 ], [ %1155, %1187 ]
  %1230 = bitcast %struct.raxNode** %19 to i32**, !dbg !1134
  %1231 = load i32*, i32** %1230, align 8, !dbg !1134, !tbaa !172
  %1232 = load i32, i32* %1231, align 4, !dbg !1136
  %1233 = icmp ult i32 %1232, 8, !dbg !1137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1138
  br i1 %1233, label %1234, label %1245, !dbg !1138

; <label>:1234:                                   ; preds = %1228
  %1235 = or i32 %1232, 2, !dbg !1139
  store i32 %1235, i32* %1231, align 4, !dbg !1139
  %1236 = load i32*, i32** %1230, align 8, !dbg !1141, !tbaa !172
  %1237 = load i32, i32* %1236, align 4, !dbg !1142
  %1238 = or i32 %1237, 1, !dbg !1142
  store i32 %1238, i32* %1236, align 4, !dbg !1142
  %1239 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 1, !dbg !1143
  %1240 = load i64, i64* %1239, align 8, !dbg !1144, !tbaa !645
  %1241 = add i64 %1240, 1, !dbg !1144
  store i64 %1241, i64* %1239, align 8, !dbg !1144, !tbaa !645
  %1242 = call i32 @raxRemove(%struct.rax* %0, i8* %1, i64 %1229, i8** null) #9, !dbg !1145
  %1243 = icmp eq i32 %1242, 0, !dbg !1145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1145
  br i1 %1243, label %1244, label %1245, !dbg !1145

; <label>:1244:                                   ; preds = %1234
  call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 894, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.raxGenericInsert, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1145
  unreachable

; <label>:1245:                                   ; preds = %1234, %1228
  %1246 = call i32* @__errno() #6, !dbg !1146
  store i32 12, i32* %1246, align 4, !dbg !1147, !tbaa !48
  br label %1247, !dbg !1148

; <label>:1247:                                   ; preds = %323, %1245, %1224, %1057, %204, %176, %99
  %1248 = phi i32 [ 0, %99 ], [ 0, %176 ], [ 1, %204 ], [ 0, %1245 ], [ 1, %1224 ], [ %1058, %1057 ], [ 0, %323 ], !dbg !1149
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #7, !dbg !1150
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #7, !dbg !1150
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30) #7, !dbg !1150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  ret i32 %1248, !dbg !1150
}

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc i64 @raxLowWalk(%struct.rax*, i8* nocapture readonly, i64, %struct.raxNode**, %struct.raxNode***, i32*, %struct.raxStack*) unnamed_addr #4 !dbg !1151 {
  %8 = alloca %struct.raxNode*, align 8
  %9 = bitcast %struct.raxNode** %8 to i8*, !dbg !1189
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #7, !dbg !1189
  %10 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 0, !dbg !1190
  %11 = bitcast %struct.rax* %0 to i64*, !dbg !1190
  %12 = load i64, i64* %11, align 8, !dbg !1190, !tbaa !125
  %13 = bitcast %struct.raxNode** %8 to i64*, !dbg !1191
  store i64 %12, i64* %13, align 8, !dbg !1191, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1195
  %14 = inttoptr i64 %12 to %struct.raxNode*, !dbg !1196
  %15 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %14, i64 0, i32 0, !dbg !1197
  %16 = load i32, i32* %15, align 4, !dbg !1197
  %17 = icmp ugt i32 %16, 7, !dbg !1196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  %18 = inttoptr i64 %12 to i32*, !dbg !1198
  br i1 %17, label %19, label %122, !dbg !1198

; <label>:19:                                     ; preds = %7
  %20 = inttoptr i64 %12 to i8*, !dbg !1198
  %21 = icmp eq %struct.raxStack* %6, null
  br label %22, !dbg !1198

; <label>:22:                                     ; preds = %19, %108
  %23 = phi i32* [ %18, %19 ], [ %117, %108 ]
  %24 = phi i64 [ %12, %19 ], [ %119, %108 ]
  %25 = phi %struct.raxNode* [ %14, %19 ], [ %113, %108 ]
  %26 = phi i8* [ %20, %19 ], [ %118, %108 ]
  %27 = phi i32 [ %16, %19 ], [ %115, %108 ]
  %28 = phi %struct.raxNode** [ %10, %19 ], [ %110, %108 ]
  %29 = phi i64 [ 0, %19 ], [ %86, %108 ]
  %30 = icmp ult i64 %29, %2, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1195
  br i1 %30, label %31, label %122, !dbg !1195

; <label>:31:                                     ; preds = %22
  %32 = and i32 %27, 4, !dbg !1201
  %33 = icmp eq i32 %32, 0, !dbg !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1204
  %34 = load i32, i32* %23, align 4, !dbg !1205
  %35 = icmp ugt i32 %34, 7, !dbg !1205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1205
  br i1 %33, label %37, label %36, !dbg !1204

; <label>:36:                                     ; preds = %31
  br i1 %35, label %41, label %58, !dbg !1209

; <label>:37:                                     ; preds = %31
  br i1 %35, label %38, label %76, !dbg !1210

; <label>:38:                                     ; preds = %37
  %39 = getelementptr inbounds i8, i8* %1, i64 %29
  %40 = load i8, i8* %39, align 1, !dbg !1213, !tbaa !280
  br label %65, !dbg !1210

; <label>:41:                                     ; preds = %36, %51
  %42 = phi i64 [ %53, %51 ], [ %29, %36 ]
  %43 = phi i64 [ %52, %51 ], [ 0, %36 ]
  %44 = icmp ult i64 %42, %2, !dbg !1217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  br i1 %44, label %45, label %58, !dbg !1218

; <label>:45:                                     ; preds = %41
  %46 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %25, i64 0, i32 1, i64 %43, !dbg !1219
  %47 = load i8, i8* %46, align 1, !dbg !1219, !tbaa !280
  %48 = getelementptr inbounds i8, i8* %1, i64 %42, !dbg !1222
  %49 = load i8, i8* %48, align 1, !dbg !1222, !tbaa !280
  %50 = icmp eq i8 %47, %49, !dbg !1223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  br i1 %50, label %51, label %58, !dbg !1224

; <label>:51:                                     ; preds = %45
  %52 = add nuw nsw i64 %43, 1, !dbg !1225
  %53 = add i64 %42, 1, !dbg !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  %54 = load i32, i32* %23, align 4, !dbg !1228
  %55 = lshr i32 %54, 3, !dbg !1228
  %56 = zext i32 %55 to i64, !dbg !1229
  %57 = icmp ult i64 %52, %56, !dbg !1230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  br i1 %57, label %41, label %58, !dbg !1209, !llvm.loop !1231

; <label>:58:                                     ; preds = %41, %51, %45, %36
  %59 = phi i64 [ 0, %36 ], [ %43, %45 ], [ %52, %51 ], [ %43, %41 ], !dbg !1205
  %60 = phi i64 [ %29, %36 ], [ %42, %45 ], [ %53, %51 ], [ %42, %41 ], !dbg !1205
  %61 = load i32, i32* %23, align 4, !dbg !1233
  %62 = lshr i32 %61, 3, !dbg !1233
  %63 = zext i32 %62 to i64, !dbg !1235
  %64 = icmp eq i64 %59, %63, !dbg !1236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1237
  br i1 %64, label %84, label %105, !dbg !1237

; <label>:65:                                     ; preds = %38, %70
  %66 = phi i64 [ 0, %38 ], [ %71, %70 ]
  %67 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %25, i64 0, i32 1, i64 %66, !dbg !1238
  %68 = load i8, i8* %67, align 1, !dbg !1238, !tbaa !280
  %69 = icmp eq i8 %68, %40, !dbg !1239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1240
  br i1 %69, label %76, label %70, !dbg !1240

; <label>:70:                                     ; preds = %65
  %71 = add nuw nsw i64 %66, 1, !dbg !1241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  %72 = load i32, i32* %23, align 4, !dbg !1243
  %73 = lshr i32 %72, 3, !dbg !1243
  %74 = zext i32 %73 to i64, !dbg !1244
  %75 = icmp ult i64 %71, %74, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  br i1 %75, label %65, label %76, !dbg !1210, !llvm.loop !1246

; <label>:76:                                     ; preds = %70, %65, %37
  %77 = phi i64 [ 0, %37 ], [ %66, %65 ], [ %71, %70 ], !dbg !1248
  %78 = load i32, i32* %23, align 4, !dbg !1249
  %79 = lshr i32 %78, 3, !dbg !1249
  %80 = zext i32 %79 to i64, !dbg !1251
  %81 = icmp eq i64 %77, %80, !dbg !1252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1253
  br i1 %81, label %105, label %82, !dbg !1253

; <label>:82:                                     ; preds = %76
  %83 = add i64 %29, 1, !dbg !1254
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %84

; <label>:84:                                     ; preds = %58, %82
  %85 = phi i64 [ %59, %58 ], [ %77, %82 ], !dbg !1255
  %86 = phi i64 [ %60, %58 ], [ %83, %82 ], !dbg !1256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1257
  br i1 %21, label %90, label %87, !dbg !1257

; <label>:87:                                     ; preds = %84
  %88 = call fastcc i32 @raxStackPush(%struct.raxStack* nonnull %6, i8* %26) #9, !dbg !1258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1258
  %89 = load %struct.raxNode*, %struct.raxNode** %8, align 8, !dbg !1260, !tbaa !172
  br label %90, !dbg !1258

; <label>:90:                                     ; preds = %84, %87
  %91 = phi %struct.raxNode* [ %25, %84 ], [ %89, %87 ], !dbg !1260
  %92 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %91, i64 0, i32 0, !dbg !1260
  %93 = load i32, i32* %92, align 4, !dbg !1260
  %94 = lshr i32 %93, 3, !dbg !1260
  %95 = zext i32 %94 to i64, !dbg !1260
  %96 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %91, i64 0, i32 1, i64 %95, !dbg !1260
  %97 = sub nsw i32 4, %94, !dbg !1260
  %98 = and i32 %97, 7, !dbg !1260
  %99 = zext i32 %98 to i64, !dbg !1260
  %100 = getelementptr inbounds i8, i8* %96, i64 %99, !dbg !1260
  %101 = bitcast i8* %100 to %struct.raxNode**, !dbg !1260
  %102 = and i32 %93, 4, !dbg !1262
  %103 = icmp eq i32 %102, 0, !dbg !1264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  br i1 %103, label %108, label %104, !dbg !1265

; <label>:104:                                    ; preds = %90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1266
  br label %108, !dbg !1266

; <label>:105:                                    ; preds = %76, %58
  %106 = phi i64 [ %59, %58 ], [ %77, %76 ]
  %107 = phi i64 [ %60, %58 ], [ %29, %76 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1267
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %122

; <label>:108:                                    ; preds = %104, %90
  %109 = phi i64 [ 0, %104 ], [ %85, %90 ], !dbg !1255
  %110 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %101, i64 %109, !dbg !1268
  %111 = bitcast %struct.raxNode** %110 to i8*, !dbg !1269
  %112 = call i8* @memcpy(i8* nonnull %9, i8* %111, i64 8) #6, !dbg !1270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1271
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %113 = load %struct.raxNode*, %struct.raxNode** %8, align 8, !dbg !1196, !tbaa !172
  %114 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %113, i64 0, i32 0, !dbg !1197
  %115 = load i32, i32* %114, align 4, !dbg !1197
  %116 = icmp ugt i32 %115, 7, !dbg !1196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  %117 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %113, i64 0, i32 0, !dbg !1198
  %118 = bitcast %struct.raxNode* %113 to i8*, !dbg !1198
  %119 = ptrtoint %struct.raxNode* %113 to i64, !dbg !1198
  br i1 %116, label %22, label %120, !dbg !1198

; <label>:120:                                    ; preds = %108
  %121 = ptrtoint %struct.raxNode* %113 to i64, !dbg !1198
  br label %122, !dbg !1272

; <label>:122:                                    ; preds = %22, %120, %7, %105
  %123 = phi i32* [ %23, %105 ], [ %18, %7 ], [ %117, %120 ], [ %23, %22 ]
  %124 = phi i64 [ %24, %105 ], [ %12, %7 ], [ %121, %120 ], [ %24, %22 ]
  %125 = phi %struct.raxNode** [ %28, %105 ], [ %10, %7 ], [ %110, %120 ], [ %28, %22 ]
  %126 = phi i64 [ %106, %105 ], [ 0, %7 ], [ 0, %120 ], [ 0, %22 ], !dbg !1274
  %127 = phi i64 [ %107, %105 ], [ 0, %7 ], [ %86, %120 ], [ %29, %22 ], !dbg !1193
  %128 = icmp eq %struct.raxNode** %3, null, !dbg !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1275
  br i1 %128, label %131, label %129, !dbg !1275

; <label>:129:                                    ; preds = %122
  %130 = bitcast %struct.raxNode** %3 to i64*, !dbg !1276
  store i64 %124, i64* %130, align 8, !dbg !1276, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1277
  br label %131, !dbg !1277

; <label>:131:                                    ; preds = %122, %129
  %132 = icmp eq %struct.raxNode*** %4, null, !dbg !1278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1280
  br i1 %132, label %134, label %133, !dbg !1280

; <label>:133:                                    ; preds = %131
  store %struct.raxNode** %125, %struct.raxNode*** %4, align 8, !dbg !1281, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1282
  br label %134, !dbg !1282

; <label>:134:                                    ; preds = %131, %133
  %135 = icmp eq i32* %5, null, !dbg !1283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1285
  br i1 %135, label %142, label %136, !dbg !1285

; <label>:136:                                    ; preds = %134
  %137 = load i32, i32* %123, align 4, !dbg !1286
  %138 = and i32 %137, 4, !dbg !1286
  %139 = icmp eq i32 %138, 0, !dbg !1287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1288
  br i1 %139, label %142, label %140, !dbg !1288

; <label>:140:                                    ; preds = %136
  %141 = trunc i64 %126 to i32, !dbg !1289
  store i32 %141, i32* %5, align 4, !dbg !1290, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1291
  br label %142, !dbg !1291

; <label>:142:                                    ; preds = %136, %134, %140
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #7, !dbg !1292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1293
  ret i64 %127, !dbg !1293
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @raxRemove(%struct.rax*, i8* nocapture readonly, i64, i8**) local_unnamed_addr #0 !dbg !1294 {
  %5 = alloca %struct.raxNode*, align 8
  %6 = alloca %struct.raxNode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.raxNode*, align 8
  %9 = alloca %struct.raxStack, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.raxNode*, align 8
  %12 = alloca %struct.raxNode*, align 8
  %13 = bitcast %struct.raxNode** %8 to i8*, !dbg !1340
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #7, !dbg !1340
  %14 = bitcast %struct.raxStack* %9 to i8*, !dbg !1341
  call void @llvm.lifetime.start.p0i8(i64 288, i8* nonnull %14) #7, !dbg !1341
  %15 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %9, i64 0, i32 3, i64 0, !dbg !1350
  %16 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %9, i64 0, i32 0, !dbg !1351
  store i8** %15, i8*** %16, align 8, !dbg !1352, !tbaa !1353
  %17 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %9, i64 0, i32 1, !dbg !1355
  %18 = bitcast i64* %17 to <2 x i64>*, !dbg !1356
  store <2 x i64> <i64 0, i64 32>, <2 x i64>* %18, align 8, !dbg !1356, !tbaa !111
  %19 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %9, i64 0, i32 4, !dbg !1357
  store i32 0, i32* %19, align 8, !dbg !1358, !tbaa !1359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1360
  %20 = bitcast i32* %10 to i8*, !dbg !1361
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #7, !dbg !1361
  store i32 0, i32* %10, align 4, !dbg !1362, !tbaa !48
  %21 = call fastcc i64 @raxLowWalk(%struct.rax* %0, i8* %1, i64 %2, %struct.raxNode** nonnull %8, %struct.raxNode*** null, i32* nonnull %10, %struct.raxStack* nonnull %9) #9, !dbg !1364
  %22 = icmp eq i64 %21, %2, !dbg !1366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1368
  br i1 %22, label %23, label %36, !dbg !1368

; <label>:23:                                     ; preds = %4
  %24 = load %struct.raxNode*, %struct.raxNode** %8, align 8, !dbg !1369, !tbaa !172
  %25 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %24, i64 0, i32 0, !dbg !1370
  %26 = load i32, i32* %25, align 4, !dbg !1370
  %27 = and i32 %26, 4, !dbg !1370
  %28 = icmp ne i32 %27, 0, !dbg !1369
  %29 = load i32, i32* %10, align 4, !dbg !1371
  %30 = icmp ne i32 %29, 0, !dbg !1372
  %31 = and i1 %28, %30, !dbg !1373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1373
  %32 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %24, i64 0, i32 0, !dbg !1373
  br i1 %31, label %36, label %33, !dbg !1373

; <label>:33:                                     ; preds = %23
  %34 = and i32 %26, 1, !dbg !1374
  %35 = icmp eq i32 %34, 0, !dbg !1375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1376
  br i1 %35, label %36, label %41, !dbg !1376

; <label>:36:                                     ; preds = %33, %4, %23
  %37 = load i8**, i8*** %16, align 8, !dbg !1383, !tbaa !1353
  %38 = icmp eq i8** %37, %15, !dbg !1385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1386
  br i1 %38, label %538, label %39, !dbg !1386

; <label>:39:                                     ; preds = %36
  %40 = bitcast i8** %37 to i8*, !dbg !1387
  call void @zfree(i8* %40) #6, !dbg !1388
  br label %536, !dbg !1388

; <label>:41:                                     ; preds = %33
  %42 = icmp eq i8** %3, null, !dbg !1389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1391
  br i1 %42, label %43, label %45, !dbg !1391

; <label>:43:                                     ; preds = %41
  %44 = bitcast %struct.raxNode** %8 to i32**, !dbg !1392
  br label %88, !dbg !1391

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* %25, align 4, !dbg !1395
  %47 = and i32 %46, 2, !dbg !1395
  %48 = icmp eq i32 %47, 0, !dbg !1396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1397
  br i1 %48, label %51, label %49, !dbg !1397

; <label>:49:                                     ; preds = %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1398
  %50 = bitcast %struct.raxNode** %8 to i32**
  br label %84, !dbg !1398

; <label>:51:                                     ; preds = %45
  %52 = bitcast %struct.raxNode* %24 to i8*, !dbg !1399
  %53 = lshr i32 %46, 3, !dbg !1400
  %54 = add nuw nsw i32 %53, 4, !dbg !1400
  %55 = sub nsw i32 4, %53, !dbg !1400
  %56 = and i32 %55, 7, !dbg !1400
  %57 = add nuw nsw i32 %54, %56, !dbg !1400
  %58 = zext i32 %57 to i64, !dbg !1400
  %59 = and i32 %46, 4, !dbg !1400
  %60 = icmp eq i32 %59, 0, !dbg !1400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  br i1 %60, label %61, label %64, !dbg !1400

; <label>:61:                                     ; preds = %51
  %62 = and i32 %46, -8, !dbg !1400
  %63 = zext i32 %62 to i64, !dbg !1400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  br label %64, !dbg !1400

; <label>:64:                                     ; preds = %61, %51
  %65 = phi i64 [ %63, %61 ], [ 8, %51 ], !dbg !1400
  %66 = add nuw nsw i64 %65, %58, !dbg !1400
  %67 = and i32 %46, 1, !dbg !1400
  %68 = icmp eq i32 %67, 0, !dbg !1400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  br i1 %68, label %74, label %69, !dbg !1400

; <label>:69:                                     ; preds = %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %70 = shl i32 %46, 2
  %71 = and i32 %70, 8
  %72 = xor i32 %71, 8
  %73 = zext i32 %72 to i64
  br label %74

; <label>:74:                                     ; preds = %69, %64
  %75 = phi i64 [ 0, %64 ], [ %73, %69 ]
  %76 = add nuw nsw i64 %66, %75, !dbg !1400
  %77 = getelementptr inbounds i8, i8* %52, i64 %76, !dbg !1401
  %78 = getelementptr inbounds i8, i8* %77, i64 -8, !dbg !1402
  %79 = bitcast i8** %7 to i8*, !dbg !1404
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %79) #7, !dbg !1404
  %80 = call i8* @memcpy(i8* nonnull %79, i8* nonnull %78, i64 8) #6, !dbg !1405
  %81 = load i8*, i8** %7, align 8, !dbg !1406, !tbaa !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %79) #7, !dbg !1408
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %82 = bitcast %struct.raxNode** %8 to i32**
  %83 = load i32*, i32** %82, align 8, !dbg !1392, !tbaa !172
  br label %84

; <label>:84:                                     ; preds = %49, %74
  %85 = phi i32** [ %50, %49 ], [ %82, %74 ]
  %86 = phi i32* [ %32, %49 ], [ %83, %74 ], !dbg !1392
  %87 = phi i8* [ null, %49 ], [ %81, %74 ], !dbg !1409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1408
  store i8* %87, i8** %3, align 8, !dbg !1410, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1411
  br label %88, !dbg !1411

; <label>:88:                                     ; preds = %43, %84
  %89 = phi i32** [ %44, %43 ], [ %85, %84 ], !dbg !1392
  %90 = phi i32* [ %32, %43 ], [ %86, %84 ], !dbg !1392
  %91 = load i32, i32* %90, align 4, !dbg !1412
  %92 = and i32 %91, -2, !dbg !1412
  store i32 %92, i32* %90, align 4, !dbg !1412
  %93 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 1, !dbg !1413
  %94 = load i64, i64* %93, align 8, !dbg !1414, !tbaa !645
  %95 = add i64 %94, -1, !dbg !1414
  store i64 %95, i64* %93, align 8, !dbg !1414, !tbaa !645
  %96 = load i32*, i32** %89, align 8, !dbg !1416, !tbaa !172
  %97 = load i32, i32* %96, align 4, !dbg !1417
  %98 = lshr i32 %97, 3, !dbg !1417
  %99 = icmp eq i32 %98, 0, !dbg !1418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1419
  %100 = bitcast i32* %96 to %struct.raxNode*, !dbg !1419
  br i1 %99, label %101, label %197, !dbg !1419

; <label>:101:                                    ; preds = %88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1421
  %102 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 0, !dbg !1422
  %103 = load %struct.raxNode*, %struct.raxNode** %102, align 8, !dbg !1422, !tbaa !125
  %104 = icmp eq %struct.raxNode* %103, %100, !dbg !1423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1421
  br i1 %104, label %105, label %106, !dbg !1421

; <label>:105:                                    ; preds = %101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1424
  br label %140, !dbg !1424

; <label>:106:                                    ; preds = %101
  %107 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 2
  %108 = bitcast i32** %89 to %struct.raxNode**
  br label %109, !dbg !1421

; <label>:109:                                    ; preds = %106, %135
  %110 = phi %struct.raxNode* [ %100, %106 ], [ %124, %135 ]
  %111 = bitcast %struct.raxNode* %110 to i8*, !dbg !1425
  call void @zfree(i8* %111) #6, !dbg !1427
  %112 = load i64, i64* %107, align 8, !dbg !1428, !tbaa !857
  %113 = add i64 %112, -1, !dbg !1428
  store i64 %113, i64* %107, align 8, !dbg !1428, !tbaa !857
  %114 = load i64, i64* %17, align 8, !dbg !1436, !tbaa !1438
  %115 = icmp eq i64 %114, 0, !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1440
  br i1 %115, label %123, label %116, !dbg !1440

; <label>:116:                                    ; preds = %109
  %117 = add i64 %114, -1, !dbg !1441
  store i64 %117, i64* %17, align 8, !dbg !1441, !tbaa !1438
  %118 = load i8**, i8*** %16, align 8, !dbg !1442, !tbaa !1353
  %119 = getelementptr inbounds i8*, i8** %118, i64 %117, !dbg !1443
  %120 = bitcast i8** %119 to i32**, !dbg !1443
  %121 = load i32*, i32** %120, align 8, !dbg !1443, !tbaa !172
  %122 = bitcast i32* %121 to %struct.raxNode*, !dbg !1444
  br label %123, !dbg !1444

; <label>:123:                                    ; preds = %109, %116
  %124 = phi %struct.raxNode* [ %122, %116 ], [ null, %109 ], !dbg !1445
  %125 = phi i32* [ %121, %116 ], [ null, %109 ], !dbg !1445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1447
  store %struct.raxNode* %124, %struct.raxNode** %108, align 8, !dbg !1448, !tbaa !172
  %126 = load i32, i32* %125, align 4, !dbg !1449
  %127 = and i32 %126, 1, !dbg !1449
  %128 = icmp eq i32 %127, 0, !dbg !1451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1452
  br i1 %128, label %129, label %138, !dbg !1452

; <label>:129:                                    ; preds = %123
  %130 = and i32 %126, 4, !dbg !1453
  %131 = icmp eq i32 %130, 0, !dbg !1454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  br i1 %131, label %132, label %135, !dbg !1455

; <label>:132:                                    ; preds = %129
  %133 = and i32 %126, -8, !dbg !1456
  %134 = icmp eq i32 %133, 8, !dbg !1456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1457
  br i1 %134, label %135, label %138, !dbg !1457

; <label>:135:                                    ; preds = %132, %129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1421
  %136 = load %struct.raxNode*, %struct.raxNode** %102, align 8, !dbg !1422, !tbaa !125
  %137 = icmp eq %struct.raxNode* %124, %136, !dbg !1423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1421
  br i1 %137, label %138, label %109, !dbg !1421, !llvm.loop !1458

; <label>:138:                                    ; preds = %135, %123, %132
  %139 = icmp eq %struct.raxNode* %110, null, !dbg !1460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1424
  br i1 %139, label %140, label %141, !dbg !1424

; <label>:140:                                    ; preds = %105, %138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  br label %531, !dbg !1462

; <label>:141:                                    ; preds = %138
  %142 = bitcast %struct.raxNode** %11 to i8*, !dbg !1464
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %142) #7, !dbg !1464
  %143 = call %struct.raxNode* @raxRemoveChild(%struct.raxNode* %124, %struct.raxNode* nonnull %110) #9, !dbg !1465
  store %struct.raxNode* %143, %struct.raxNode** %11, align 8, !dbg !1466, !tbaa !172
  %144 = load %struct.raxNode*, %struct.raxNode** %8, align 8, !dbg !1467, !tbaa !172
  %145 = icmp eq %struct.raxNode* %143, %144, !dbg !1468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1469
  br i1 %145, label %188, label %146, !dbg !1469

; <label>:146:                                    ; preds = %141
  %147 = load i64, i64* %17, align 8, !dbg !1475, !tbaa !1438
  %148 = icmp eq i64 %147, 0, !dbg !1477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  br i1 %148, label %149, label %150, !dbg !1478

; <label>:149:                                    ; preds = %146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  br label %181, !dbg !1481

; <label>:150:                                    ; preds = %146
  %151 = load i8**, i8*** %16, align 8, !dbg !1482, !tbaa !1353
  %152 = add i64 %147, -1, !dbg !1483
  %153 = getelementptr inbounds i8*, i8** %151, i64 %152, !dbg !1484
  %154 = load i8*, i8** %153, align 8, !dbg !1484, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  %155 = icmp eq i8* %154, null, !dbg !1486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1481
  br i1 %155, label %183, label %156, !dbg !1481

; <label>:156:                                    ; preds = %150
  %157 = bitcast i8* %154 to %struct.raxNode*, !dbg !1488
  %158 = bitcast i8* %154 to i32*, !dbg !1502
  %159 = load i32, i32* %158, align 4, !dbg !1502
  %160 = lshr i32 %159, 3, !dbg !1502
  %161 = zext i32 %160 to i64, !dbg !1502
  %162 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %157, i64 0, i32 1, i64 %161, !dbg !1502
  %163 = sub nsw i32 4, %160, !dbg !1502
  %164 = and i32 %163, 7, !dbg !1502
  %165 = zext i32 %164 to i64, !dbg !1502
  %166 = getelementptr inbounds i8, i8* %162, i64 %165, !dbg !1502
  %167 = bitcast i8* %166 to %struct.raxNode**, !dbg !1502
  %168 = bitcast %struct.raxNode** %5 to i8*, !dbg !1504
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %168) #7, !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1505
  %169 = call i8* @memcpy(i8* nonnull %168, i8* nonnull %166, i64 8) #6, !dbg !1506
  %170 = load %struct.raxNode*, %struct.raxNode** %5, align 8, !dbg !1508, !tbaa !172
  %171 = icmp eq %struct.raxNode* %170, %144, !dbg !1511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  br i1 %171, label %179, label %172, !dbg !1512

; <label>:172:                                    ; preds = %156, %172
  %173 = phi %struct.raxNode** [ %174, %172 ], [ %167, %156 ]
  %174 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %173, i64 1, !dbg !1513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1505
  %175 = bitcast %struct.raxNode** %174 to i8*, !dbg !1514
  %176 = call i8* @memcpy(i8* nonnull %168, i8* nonnull %175, i64 8) #6, !dbg !1506
  %177 = load %struct.raxNode*, %struct.raxNode** %5, align 8, !dbg !1508, !tbaa !172
  %178 = icmp eq %struct.raxNode* %177, %144, !dbg !1511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  br i1 %178, label %179, label %172, !dbg !1512, !llvm.loop !1515

; <label>:179:                                    ; preds = %172, %156
  %180 = phi %struct.raxNode** [ %167, %156 ], [ %174, %172 ], !dbg !1518
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %168) #7, !dbg !1519
  br label %181

; <label>:181:                                    ; preds = %179, %149
  %182 = phi %struct.raxNode** [ %102, %149 ], [ %180, %179 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1521
  br label %183

; <label>:183:                                    ; preds = %181, %150
  %184 = phi %struct.raxNode** [ %102, %150 ], [ %182, %181 ], !dbg !1521
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %185 = bitcast %struct.raxNode** %184 to i8*, !dbg !1522
  %186 = call i8* @memcpy(i8* %185, i8* nonnull %142, i64 8) #6, !dbg !1523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1524
  %187 = load %struct.raxNode*, %struct.raxNode** %11, align 8, !dbg !1525, !tbaa !172
  br label %188, !dbg !1524

; <label>:188:                                    ; preds = %141, %183
  %189 = phi %struct.raxNode* [ %143, %141 ], [ %187, %183 ], !dbg !1525
  %190 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %189, i64 0, i32 0, !dbg !1527
  %191 = load i32, i32* %190, align 4, !dbg !1527
  %192 = and i32 %191, -8, !dbg !1528
  %193 = icmp eq i32 %192, 8, !dbg !1528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1529
  br i1 %193, label %194, label %200, !dbg !1529

; <label>:194:                                    ; preds = %188
  %195 = and i32 %191, 1, !dbg !1530
  %196 = icmp eq i32 %195, 0, !dbg !1531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1532
  br i1 %196, label %201, label %200, !dbg !1532

; <label>:197:                                    ; preds = %88
  %198 = icmp eq i32 %98, 1, !dbg !1533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1536
  br i1 %198, label %199, label %531, !dbg !1535

; <label>:199:                                    ; preds = %197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  br label %203, !dbg !1462

; <label>:200:                                    ; preds = %194, %188
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %142) #7, !dbg !1537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  br label %531, !dbg !1462

; <label>:201:                                    ; preds = %194
  store %struct.raxNode* %189, %struct.raxNode** %8, align 8, !dbg !1539, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1541
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %142) #7, !dbg !1537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  %202 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %189, i64 0, i32 0, !dbg !1462
  br label %203, !dbg !1462

; <label>:203:                                    ; preds = %201, %199
  %204 = phi i32* [ %202, %201 ], [ %96, %199 ]
  %205 = phi %struct.raxNode* [ %189, %201 ], [ %100, %199 ]
  %206 = load i32, i32* %19, align 8, !dbg !1542, !tbaa !1359
  %207 = icmp eq i32 %206, 0, !dbg !1543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1536
  br i1 %207, label %208, label %531, !dbg !1544

; <label>:208:                                    ; preds = %203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1545
  %209 = load i64, i64* %17, align 8, !dbg !1549, !tbaa !1438
  %210 = icmp eq i64 %209, 0, !dbg !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1551
  br i1 %210, label %221, label %211, !dbg !1551

; <label>:211:                                    ; preds = %208
  %212 = bitcast %struct.raxNode** %8 to i8**
  %213 = load i8**, i8*** %16, align 8, !dbg !1552, !tbaa !1353
  %214 = add i64 %209, -1, !dbg !1553
  store i64 %214, i64* %17, align 8, !dbg !1553, !tbaa !1438
  %215 = getelementptr inbounds i8*, i8** %213, i64 %214, !dbg !1554
  %216 = load i8*, i8** %215, align 8, !dbg !1554, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1556
  %217 = icmp eq i8* %216, null, !dbg !1557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1559
  br i1 %217, label %250, label %229, !dbg !1559

; <label>:218:                                    ; preds = %244
  %219 = bitcast i8* %230 to i32*, !dbg !1560
  %220 = bitcast i8* %230 to %struct.raxNode*, !dbg !1551
  br label %221, !dbg !1561

; <label>:221:                                    ; preds = %218, %208
  %222 = phi i32* [ %204, %208 ], [ %219, %218 ]
  %223 = phi %struct.raxNode* [ %205, %208 ], [ %220, %218 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1559
  br label %256, !dbg !1559

; <label>:224:                                    ; preds = %244
  %225 = add i64 %231, -1, !dbg !1553
  store i64 %225, i64* %17, align 8, !dbg !1553, !tbaa !1438
  %226 = getelementptr inbounds i8*, i8** %213, i64 %225, !dbg !1554
  %227 = load i8*, i8** %226, align 8, !dbg !1554, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1556
  %228 = icmp eq i8* %227, null, !dbg !1557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1559
  br i1 %228, label %247, label %229, !dbg !1559, !llvm.loop !1562

; <label>:229:                                    ; preds = %211, %224
  %230 = phi i8* [ %227, %224 ], [ %216, %211 ]
  %231 = phi i64 [ %225, %224 ], [ %214, %211 ]
  %232 = phi %struct.raxNode* [ %246, %224 ], [ %205, %211 ]
  %233 = phi i32* [ %234, %224 ], [ %204, %211 ]
  %234 = bitcast i8* %230 to i32*, !dbg !1560
  %235 = load i32, i32* %234, align 4, !dbg !1560
  %236 = and i32 %235, 1, !dbg !1560
  %237 = icmp eq i32 %236, 0, !dbg !1564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  br i1 %237, label %238, label %250, !dbg !1565

; <label>:238:                                    ; preds = %229
  %239 = and i32 %235, 4, !dbg !1566
  %240 = icmp eq i32 %239, 0, !dbg !1567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1568
  br i1 %240, label %241, label %244, !dbg !1568

; <label>:241:                                    ; preds = %238
  %242 = and i32 %235, -8, !dbg !1569
  %243 = icmp eq i32 %242, 8, !dbg !1569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1570
  br i1 %243, label %244, label %250, !dbg !1570

; <label>:244:                                    ; preds = %241, %238
  store i8* %230, i8** %212, align 8, !dbg !1571, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1545
  %245 = icmp eq i64 %231, 0, !dbg !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1551
  %246 = bitcast i8* %230 to %struct.raxNode*, !dbg !1551
  br i1 %245, label %218, label %224, !dbg !1551, !llvm.loop !1562

; <label>:247:                                    ; preds = %224
  %248 = bitcast i8* %230 to i32*, !dbg !1560
  %249 = bitcast i8* %230 to %struct.raxNode*, !dbg !1551
  br label %250, !dbg !1572

; <label>:250:                                    ; preds = %247, %229, %241, %211
  %251 = phi i32* [ %204, %211 ], [ %248, %247 ], [ %233, %229 ], [ %233, %241 ]
  %252 = phi %struct.raxNode* [ %205, %211 ], [ %249, %247 ], [ %232, %229 ], [ %232, %241 ]
  %253 = phi i8* [ %216, %211 ], [ %227, %247 ], [ %230, %229 ], [ %230, %241 ], !dbg !1554
  %254 = phi i1 [ false, %211 ], [ false, %247 ], [ true, %229 ], [ true, %241 ]
  %255 = bitcast i8* %253 to %struct.raxNode*, !dbg !1572
  br label %256, !dbg !1573

; <label>:256:                                    ; preds = %250, %221
  %257 = phi i32* [ %222, %221 ], [ %251, %250 ]
  %258 = phi %struct.raxNode* [ %223, %221 ], [ %252, %250 ], !dbg !1573
  %259 = phi i1 [ false, %221 ], [ %254, %250 ]
  %260 = phi %struct.raxNode* [ null, %221 ], [ %255, %250 ]
  %261 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %258, i64 0, i32 0, !dbg !1575
  %262 = load i32, i32* %261, align 4, !dbg !1575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1577
  %263 = load i32, i32* %261, align 4, !dbg !1578
  %264 = lshr i32 %263, 3, !dbg !1578
  %265 = icmp eq i32 %264, 0, !dbg !1579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1577
  br i1 %265, label %528, label %266, !dbg !1577

; <label>:266:                                    ; preds = %256
  %267 = lshr i32 %262, 3, !dbg !1575
  %268 = zext i32 %267 to i64, !dbg !1580
  br label %269, !dbg !1582

; <label>:269:                                    ; preds = %266, %331
  %270 = phi i32* [ %314, %331 ], [ %257, %266 ]
  %271 = phi i32 [ %334, %331 ], [ %264, %266 ]
  %272 = phi i32 [ %333, %331 ], [ %263, %266 ]
  %273 = phi %struct.raxNode* [ %318, %331 ], [ %258, %266 ]
  %274 = phi i64 [ %329, %331 ], [ %268, %266 ]
  %275 = phi i32 [ %332, %331 ], [ 1, %266 ]
  %276 = add nuw nsw i32 %271, 4, !dbg !1582
  %277 = sub nsw i32 4, %271, !dbg !1582
  %278 = and i32 %277, 7, !dbg !1582
  %279 = add nuw nsw i32 %276, %278, !dbg !1582
  %280 = zext i32 %279 to i64, !dbg !1582
  %281 = and i32 %272, 4, !dbg !1582
  %282 = icmp eq i32 %281, 0, !dbg !1582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1582
  br i1 %282, label %283, label %286, !dbg !1582

; <label>:283:                                    ; preds = %269
  %284 = and i32 %272, -8, !dbg !1582
  %285 = zext i32 %284 to i64, !dbg !1582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1582
  br label %286, !dbg !1582

; <label>:286:                                    ; preds = %269, %283
  %287 = phi i64 [ %285, %283 ], [ 8, %269 ], !dbg !1582
  %288 = add nuw nsw i64 %287, %280, !dbg !1582
  %289 = load i32, i32* %270, align 4, !dbg !1582
  %290 = and i32 %289, 1, !dbg !1582
  %291 = icmp eq i32 %290, 0, !dbg !1582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1582
  br i1 %291, label %295, label %292, !dbg !1582

; <label>:292:                                    ; preds = %286
  %293 = and i32 %289, 2, !dbg !1582
  %294 = icmp eq i32 %293, 0, !dbg !1582
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %295

; <label>:295:                                    ; preds = %286, %292
  %296 = phi i1 [ false, %286 ], [ %294, %292 ], !dbg !1583
  %297 = zext i1 %296 to i64, !dbg !1582
  %298 = shl nuw nsw i64 %297, 3, !dbg !1582
  %299 = add nuw nsw i64 %288, %298, !dbg !1582
  %300 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %273, i64 -2, !dbg !1582
  %301 = bitcast %struct.raxNode* %300 to i8*, !dbg !1582
  %302 = getelementptr inbounds i8, i8* %301, i64 %299, !dbg !1582
  %303 = load i32, i32* %270, align 4, !dbg !1582
  %304 = and i32 %303, 1, !dbg !1582
  %305 = icmp eq i32 %304, 0, !dbg !1582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1582
  br i1 %305, label %310, label %306, !dbg !1582

; <label>:306:                                    ; preds = %295
  %307 = and i32 %303, 2, !dbg !1582
  %308 = icmp eq i32 %307, 0, !dbg !1582
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %309 = select i1 %308, i64 -8, i64 0, !dbg !1582
  br label %310, !dbg !1582

; <label>:310:                                    ; preds = %306, %295
  %311 = phi i64 [ 0, %295 ], [ %309, %306 ]
  %312 = getelementptr inbounds i8, i8* %302, i64 %311, !dbg !1582
  %313 = call i8* @memcpy(i8* nonnull %13, i8* nonnull %312, i64 8) #6, !dbg !1585
  %314 = load i32*, i32** %89, align 8, !dbg !1586, !tbaa !172
  %315 = load i32, i32* %314, align 4, !dbg !1588
  %316 = and i32 %315, 1, !dbg !1588
  %317 = icmp eq i32 %316, 0, !dbg !1586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1589
  %318 = bitcast i32* %314 to %struct.raxNode*, !dbg !1589
  br i1 %317, label %319, label %337, !dbg !1589

; <label>:319:                                    ; preds = %310
  %320 = and i32 %315, 4, !dbg !1590
  %321 = icmp eq i32 %320, 0, !dbg !1591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  br i1 %321, label %322, label %325, !dbg !1592

; <label>:322:                                    ; preds = %319
  %323 = and i32 %315, -8, !dbg !1593
  %324 = icmp eq i32 %323, 8, !dbg !1593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1594
  br i1 %324, label %325, label %337, !dbg !1594

; <label>:325:                                    ; preds = %322, %319
  %326 = load i32, i32* %314, align 4, !dbg !1595
  %327 = lshr i32 %326, 3, !dbg !1595
  %328 = zext i32 %327 to i64, !dbg !1597
  %329 = add i64 %274, %328, !dbg !1598
  %330 = icmp ugt i64 %329, 536870911, !dbg !1599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1600
  br i1 %330, label %337, label %331, !dbg !1600

; <label>:331:                                    ; preds = %325
  %332 = add nuw nsw i32 %275, 1, !dbg !1601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1602
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %333 = load i32, i32* %314, align 4, !dbg !1578
  %334 = lshr i32 %333, 3, !dbg !1578
  %335 = icmp eq i32 %334, 0, !dbg !1579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1577
  br i1 %335, label %336, label %269, !dbg !1577

; <label>:336:                                    ; preds = %331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1603
  br label %339, !dbg !1603

; <label>:337:                                    ; preds = %325, %310, %322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1604
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %338 = icmp ugt i32 %275, 1, !dbg !1605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1603
  br i1 %338, label %339, label %529, !dbg !1603

; <label>:339:                                    ; preds = %336, %337
  %340 = phi i64 [ %329, %336 ], [ %274, %337 ]
  %341 = sub i64 4, %340, !dbg !1606
  %342 = and i64 %341, 7, !dbg !1606
  %343 = add i64 %340, 12, !dbg !1607
  %344 = add i64 %343, %342, !dbg !1608
  %345 = bitcast %struct.raxNode** %12 to i8*, !dbg !1610
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %345) #7, !dbg !1610
  %346 = call i8* @zmalloc(i64 %344) #6, !dbg !1611
  %347 = bitcast %struct.raxNode** %12 to i8**, !dbg !1612
  store i8* %346, i8** %347, align 8, !dbg !1612, !tbaa !172
  %348 = icmp eq i8* %346, null, !dbg !1613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1615
  br i1 %348, label %349, label %354, !dbg !1615

; <label>:349:                                    ; preds = %339
  %350 = load i8**, i8*** %16, align 8, !dbg !1619, !tbaa !1353
  %351 = icmp eq i8** %350, %15, !dbg !1620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1621
  br i1 %351, label %530, label %352, !dbg !1621

; <label>:352:                                    ; preds = %349
  %353 = bitcast i8** %350 to i8*, !dbg !1622
  call void @zfree(i8* %353) #6, !dbg !1623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1623
  br label %530, !dbg !1623

; <label>:354:                                    ; preds = %339
  %355 = bitcast i8* %346 to i32*, !dbg !1624
  %356 = load i32, i32* %355, align 4, !dbg !1625
  %357 = and i32 %356, -2, !dbg !1625
  store i32 %357, i32* %355, align 4, !dbg !1625
  %358 = bitcast %struct.raxNode** %12 to i32**, !dbg !1626
  %359 = load i32*, i32** %358, align 8, !dbg !1626, !tbaa !172
  %360 = load i32, i32* %359, align 4, !dbg !1627
  %361 = and i32 %360, -3, !dbg !1627
  store i32 %361, i32* %359, align 4, !dbg !1627
  %362 = load i32*, i32** %358, align 8, !dbg !1628, !tbaa !172
  %363 = load i32, i32* %362, align 4, !dbg !1629
  %364 = or i32 %363, 4, !dbg !1629
  store i32 %364, i32* %362, align 4, !dbg !1629
  %365 = trunc i64 %340 to i32, !dbg !1630
  %366 = load i32*, i32** %358, align 8, !dbg !1631, !tbaa !172
  %367 = load i32, i32* %366, align 4, !dbg !1632
  %368 = shl i32 %365, 3, !dbg !1632
  %369 = and i32 %367, 7, !dbg !1632
  %370 = or i32 %369, %368, !dbg !1632
  store i32 %370, i32* %366, align 4, !dbg !1632
  %371 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 2, !dbg !1633
  %372 = load i64, i64* %371, align 8, !dbg !1634, !tbaa !857
  %373 = add i64 %372, 1, !dbg !1634
  store i64 %373, i64* %371, align 8, !dbg !1634, !tbaa !857
  store %struct.raxNode* %258, %struct.raxNode** %8, align 8, !dbg !1635, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1636
  %374 = load i32, i32* %261, align 4, !dbg !1637
  %375 = lshr i32 %374, 3, !dbg !1637
  %376 = icmp eq i32 %375, 0, !dbg !1638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1636
  br i1 %376, label %450, label %377, !dbg !1636

; <label>:377:                                    ; preds = %354, %446
  %378 = phi i32 [ %448, %446 ], [ %375, %354 ]
  %379 = phi %struct.raxNode* [ %438, %446 ], [ %258, %354 ]
  %380 = phi i64 [ %391, %446 ], [ 0, %354 ]
  %381 = load %struct.raxNode*, %struct.raxNode** %12, align 8, !dbg !1639, !tbaa !172
  %382 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %381, i64 0, i32 1, i64 %380, !dbg !1640
  %383 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %379, i64 0, i32 1, i64 0, !dbg !1641
  %384 = zext i32 %378 to i64, !dbg !1642
  %385 = call i8* @memcpy(i8* nonnull %382, i8* nonnull %383, i64 %384) #6, !dbg !1643
  %386 = load %struct.raxNode*, %struct.raxNode** %8, align 8, !dbg !1644, !tbaa !172
  %387 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %386, i64 0, i32 0, !dbg !1645
  %388 = load i32, i32* %387, align 4, !dbg !1645
  %389 = lshr i32 %388, 3, !dbg !1645
  %390 = zext i32 %389 to i64, !dbg !1644
  %391 = add i64 %380, %390, !dbg !1646
  %392 = add nuw nsw i64 %390, 4, !dbg !1647
  %393 = sub nsw i32 4, %389, !dbg !1647
  %394 = and i32 %393, 7, !dbg !1647
  %395 = zext i32 %394 to i64, !dbg !1647
  %396 = add nuw nsw i64 %392, %395, !dbg !1647
  %397 = and i32 %388, 4, !dbg !1647
  %398 = icmp eq i32 %397, 0, !dbg !1647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1647
  %399 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %386, i64 0, i32 0, !dbg !1647
  %400 = bitcast %struct.raxNode* %386 to i8*, !dbg !1647
  br i1 %398, label %401, label %404, !dbg !1647

; <label>:401:                                    ; preds = %377
  %402 = and i32 %388, -8, !dbg !1647
  %403 = zext i32 %402 to i64, !dbg !1647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1647
  br label %404, !dbg !1647

; <label>:404:                                    ; preds = %377, %401
  %405 = phi i64 [ %403, %401 ], [ 8, %377 ], !dbg !1647
  %406 = add nuw nsw i64 %396, %405, !dbg !1647
  %407 = load i32, i32* %399, align 4, !dbg !1647
  %408 = and i32 %407, 1, !dbg !1647
  %409 = icmp eq i32 %408, 0, !dbg !1647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1647
  br i1 %409, label %413, label %410, !dbg !1647

; <label>:410:                                    ; preds = %404
  %411 = and i32 %407, 2, !dbg !1647
  %412 = icmp eq i32 %411, 0, !dbg !1647
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %413

; <label>:413:                                    ; preds = %404, %410
  %414 = phi i1 [ false, %404 ], [ %412, %410 ], !dbg !1648
  %415 = zext i1 %414 to i64, !dbg !1647
  %416 = shl nuw nsw i64 %415, 3, !dbg !1647
  %417 = add nuw nsw i64 %406, %416, !dbg !1647
  %418 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %386, i64 -2, !dbg !1647
  %419 = bitcast %struct.raxNode* %418 to i8*, !dbg !1647
  %420 = getelementptr inbounds i8, i8* %419, i64 %417, !dbg !1647
  %421 = load i32, i32* %399, align 4, !dbg !1647
  %422 = and i32 %421, 1, !dbg !1647
  %423 = icmp eq i32 %422, 0, !dbg !1647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1647
  br i1 %423, label %428, label %424, !dbg !1647

; <label>:424:                                    ; preds = %413
  %425 = and i32 %421, 2, !dbg !1647
  %426 = icmp eq i32 %425, 0, !dbg !1647
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %427 = select i1 %426, i64 -8, i64 0, !dbg !1647
  br label %428, !dbg !1647

; <label>:428:                                    ; preds = %424, %413
  %429 = phi i64 [ 0, %413 ], [ %427, %424 ]
  %430 = getelementptr inbounds i8, i8* %420, i64 %429, !dbg !1647
  %431 = call i8* @memcpy(i8* nonnull %13, i8* nonnull %430, i64 8) #6, !dbg !1651
  call void @zfree(i8* nonnull %400) #6, !dbg !1652
  %432 = load i64, i64* %371, align 8, !dbg !1653, !tbaa !857
  %433 = add i64 %432, -1, !dbg !1653
  store i64 %433, i64* %371, align 8, !dbg !1653, !tbaa !857
  %434 = load i32*, i32** %89, align 8, !dbg !1654, !tbaa !172
  %435 = load i32, i32* %434, align 4, !dbg !1656
  %436 = and i32 %435, 1, !dbg !1656
  %437 = icmp eq i32 %436, 0, !dbg !1654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1657
  %438 = bitcast i32* %434 to %struct.raxNode*, !dbg !1657
  br i1 %437, label %439, label %445, !dbg !1657

; <label>:439:                                    ; preds = %428
  %440 = and i32 %435, 4, !dbg !1658
  %441 = icmp eq i32 %440, 0, !dbg !1659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1660
  br i1 %441, label %442, label %446, !dbg !1660

; <label>:442:                                    ; preds = %439
  %443 = and i32 %435, -8, !dbg !1661
  %444 = icmp eq i32 %443, 8, !dbg !1661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1662
  br i1 %444, label %446, label %445, !dbg !1662

; <label>:445:                                    ; preds = %442, %428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1663
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %450

; <label>:446:                                    ; preds = %442, %439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1664
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %447 = load i32, i32* %434, align 4, !dbg !1637
  %448 = lshr i32 %447, 3, !dbg !1637
  %449 = icmp eq i32 %448, 0, !dbg !1638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1636
  br i1 %449, label %450, label %377, !dbg !1636

; <label>:450:                                    ; preds = %446, %354, %445
  %451 = load %struct.raxNode*, %struct.raxNode** %12, align 8, !dbg !1665, !tbaa !172
  %452 = bitcast %struct.raxNode* %451 to i8*, !dbg !1665
  %453 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %451, i64 0, i32 0, !dbg !1665
  %454 = load i32, i32* %453, align 4, !dbg !1665
  %455 = lshr i32 %454, 3, !dbg !1665
  %456 = add nuw nsw i32 %455, 4, !dbg !1665
  %457 = sub nsw i32 4, %455, !dbg !1665
  %458 = and i32 %457, 7, !dbg !1665
  %459 = add nuw nsw i32 %456, %458, !dbg !1665
  %460 = zext i32 %459 to i64, !dbg !1665
  %461 = and i32 %454, 4, !dbg !1665
  %462 = icmp eq i32 %461, 0, !dbg !1665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1665
  %463 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %451, i64 0, i32 0, !dbg !1665
  %464 = ptrtoint %struct.raxNode* %451 to i64, !dbg !1665
  br i1 %462, label %465, label %468, !dbg !1665

; <label>:465:                                    ; preds = %450
  %466 = and i32 %454, -8, !dbg !1665
  %467 = zext i32 %466 to i64, !dbg !1665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1665
  br label %468, !dbg !1665

; <label>:468:                                    ; preds = %450, %465
  %469 = phi i64 [ %467, %465 ], [ 8, %450 ], !dbg !1665
  %470 = add nuw nsw i64 %469, %460, !dbg !1665
  %471 = load i32, i32* %463, align 4, !dbg !1665
  %472 = and i32 %471, 1, !dbg !1665
  %473 = icmp eq i32 %472, 0, !dbg !1665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1665
  br i1 %473, label %479, label %474, !dbg !1665

; <label>:474:                                    ; preds = %468
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %475 = shl i32 %471, 2
  %476 = and i32 %475, 8
  %477 = xor i32 %476, 8
  %478 = zext i32 %477 to i64
  br label %479

; <label>:479:                                    ; preds = %468, %474
  %480 = phi i64 [ 0, %468 ], [ %478, %474 ]
  %481 = add nuw nsw i64 %470, %480, !dbg !1665
  %482 = getelementptr inbounds i8, i8* %452, i64 %481, !dbg !1665
  %483 = getelementptr inbounds i8, i8* %482, i64 -8, !dbg !1665
  %484 = load i32, i32* %463, align 4, !dbg !1665
  %485 = and i32 %484, 1, !dbg !1665
  %486 = icmp eq i32 %485, 0, !dbg !1665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1665
  br i1 %486, label %493, label %487, !dbg !1665

; <label>:487:                                    ; preds = %479
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %488 = shl i32 %484, 2
  %489 = and i32 %488, 8
  %490 = xor i32 %489, 8
  %491 = zext i32 %490 to i64
  %492 = sub nsw i64 0, %491
  br label %493

; <label>:493:                                    ; preds = %479, %487
  %494 = phi i64 [ 0, %479 ], [ %492, %487 ]
  %495 = getelementptr inbounds i8, i8* %483, i64 %494, !dbg !1665
  %496 = call i8* @memcpy(i8* nonnull %495, i8* nonnull %13, i64 8) #6, !dbg !1667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1668
  br i1 %259, label %497, label %525, !dbg !1668

; <label>:497:                                    ; preds = %493
  %498 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %260, i64 0, i32 0, !dbg !1671
  %499 = load i32, i32* %498, align 4, !dbg !1671
  %500 = lshr i32 %499, 3, !dbg !1671
  %501 = zext i32 %500 to i64, !dbg !1671
  %502 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %260, i64 0, i32 1, i64 %501, !dbg !1671
  %503 = sub nsw i32 4, %500, !dbg !1671
  %504 = and i32 %503, 7, !dbg !1671
  %505 = zext i32 %504 to i64, !dbg !1671
  %506 = getelementptr inbounds i8, i8* %502, i64 %505, !dbg !1671
  %507 = bitcast %struct.raxNode** %6 to i8*, !dbg !1672
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %507) #7, !dbg !1672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1673
  %508 = call i8* @memcpy(i8* nonnull %507, i8* nonnull %506, i64 8) #6, !dbg !1674
  %509 = load %struct.raxNode*, %struct.raxNode** %6, align 8, !dbg !1675, !tbaa !172
  %510 = icmp eq %struct.raxNode* %509, %258, !dbg !1677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1678
  br i1 %510, label %522, label %511, !dbg !1678

; <label>:511:                                    ; preds = %497
  %512 = bitcast i8* %506 to %struct.raxNode**, !dbg !1671
  br label %513, !dbg !1680

; <label>:513:                                    ; preds = %511, %513
  %514 = phi %struct.raxNode** [ %515, %513 ], [ %512, %511 ]
  %515 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %514, i64 1, !dbg !1680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1673
  %516 = bitcast %struct.raxNode** %515 to i8*, !dbg !1681
  %517 = call i8* @memcpy(i8* nonnull %507, i8* nonnull %516, i64 8) #6, !dbg !1674
  %518 = load %struct.raxNode*, %struct.raxNode** %6, align 8, !dbg !1675, !tbaa !172
  %519 = icmp eq %struct.raxNode* %518, %258, !dbg !1677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1678
  br i1 %519, label %520, label %513, !dbg !1678, !llvm.loop !1515

; <label>:520:                                    ; preds = %513
  %521 = bitcast %struct.raxNode** %515 to i8*, !dbg !1681
  br label %522, !dbg !1682

; <label>:522:                                    ; preds = %520, %497
  %523 = phi i8* [ %506, %497 ], [ %521, %520 ], !dbg !1683
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %507) #7, !dbg !1682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1684
  %524 = call i8* @memcpy(i8* %523, i8* nonnull %345, i64 8) #6, !dbg !1685
  br label %527, !dbg !1686

; <label>:525:                                    ; preds = %493
  %526 = bitcast %struct.rax* %0 to i64*, !dbg !1687
  store i64 %464, i64* %526, align 8, !dbg !1687, !tbaa !125
  br label %527

; <label>:527:                                    ; preds = %522, %525
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1689
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %345) #7, !dbg !1689
  br label %528

; <label>:528:                                    ; preds = %256, %527
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %529, !dbg !1690

; <label>:529:                                    ; preds = %528, %337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1690
  br label %531

; <label>:530:                                    ; preds = %349, %352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1692
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %345) #7, !dbg !1689
  br label %536

; <label>:531:                                    ; preds = %200, %140, %197, %203, %529
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %532 = load i8**, i8*** %16, align 8, !dbg !1695, !tbaa !1353
  %533 = icmp eq i8** %532, %15, !dbg !1696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1697
  br i1 %533, label %536, label %534, !dbg !1697

; <label>:534:                                    ; preds = %531
  %535 = bitcast i8** %532 to i8*, !dbg !1698
  call void @zfree(i8* %535) #6, !dbg !1699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1699
  br label %536, !dbg !1699

; <label>:536:                                    ; preds = %530, %531, %534, %39
  %537 = phi i32 [ 0, %39 ], [ 1, %534 ], [ 1, %531 ], [ 1, %530 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %538

; <label>:538:                                    ; preds = %536, %36
  %539 = phi i32 [ 0, %36 ], [ %537, %536 ], !dbg !1700
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #7, !dbg !1701
  call void @llvm.lifetime.end.p0i8(i64 288, i8* nonnull %14) #7, !dbg !1701
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #7, !dbg !1701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1701
  ret i32 %539, !dbg !1701
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxInsert(%struct.rax*, i8*, i64, i8*, i8**) local_unnamed_addr #0 !dbg !1702 {
  %6 = tail call i32 @raxGenericInsert(%struct.rax* %0, i8* %1, i64 %2, i8* %3, i8** %4, i32 1) #9, !dbg !1716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1717
  ret i32 %6, !dbg !1717
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxTryInsert(%struct.rax*, i8*, i64, i8*, i8**) local_unnamed_addr #0 !dbg !1718 {
  %6 = tail call i32 @raxGenericInsert(%struct.rax* %0, i8* %1, i64 %2, i8* %3, i8** %4, i32 0) #9, !dbg !1730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1731
  ret i32 %6, !dbg !1731
}

; Function Attrs: noredzone nounwind
define dso_local i8* @raxFind(%struct.rax*, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !1732 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.raxNode*, align 8
  %6 = alloca i32, align 4
  %7 = bitcast %struct.raxNode** %5 to i8*, !dbg !1745
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #7, !dbg !1745
  %8 = bitcast i32* %6 to i8*, !dbg !1746
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #7, !dbg !1746
  store i32 0, i32* %6, align 4, !dbg !1747, !tbaa !48
  %9 = call fastcc i64 @raxLowWalk(%struct.rax* %0, i8* %1, i64 %2, %struct.raxNode** nonnull %5, %struct.raxNode*** null, i32* nonnull %6, %struct.raxStack* null) #9, !dbg !1749
  %10 = icmp eq i64 %9, %2, !dbg !1751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1753
  br i1 %10, label %11, label %23, !dbg !1753

; <label>:11:                                     ; preds = %3
  %12 = load %struct.raxNode*, %struct.raxNode** %5, align 8, !dbg !1754, !tbaa !172
  %13 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %12, i64 0, i32 0, !dbg !1755
  %14 = load i32, i32* %13, align 4, !dbg !1755
  %15 = and i32 %14, 4, !dbg !1755
  %16 = icmp ne i32 %15, 0, !dbg !1754
  %17 = load i32, i32* %6, align 4, !dbg !1756
  %18 = icmp ne i32 %17, 0, !dbg !1757
  %19 = and i1 %16, %18, !dbg !1758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1758
  br i1 %19, label %23, label %20, !dbg !1758

; <label>:20:                                     ; preds = %11
  %21 = and i32 %14, 1, !dbg !1759
  %22 = icmp eq i32 %21, 0, !dbg !1760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1761
  br i1 %22, label %23, label %25, !dbg !1761

; <label>:23:                                     ; preds = %20, %3, %11
  %24 = load i8*, i8** @raxNotFound, align 8, !dbg !1762, !tbaa !172
  br label %62, !dbg !1763

; <label>:25:                                     ; preds = %20
  %26 = load i32, i32* %13, align 4, !dbg !1766
  %27 = and i32 %26, 2, !dbg !1766
  %28 = icmp eq i32 %27, 0, !dbg !1767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1768
  br i1 %28, label %29, label %60, !dbg !1768

; <label>:29:                                     ; preds = %25
  %30 = bitcast %struct.raxNode* %12 to i8*, !dbg !1769
  %31 = lshr i32 %26, 3, !dbg !1770
  %32 = add nuw nsw i32 %31, 4, !dbg !1770
  %33 = sub nsw i32 4, %31, !dbg !1770
  %34 = and i32 %33, 7, !dbg !1770
  %35 = add nuw nsw i32 %32, %34, !dbg !1770
  %36 = zext i32 %35 to i64, !dbg !1770
  %37 = and i32 %26, 4, !dbg !1770
  %38 = icmp eq i32 %37, 0, !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1770
  br i1 %38, label %39, label %42, !dbg !1770

; <label>:39:                                     ; preds = %29
  %40 = and i32 %26, -8, !dbg !1770
  %41 = zext i32 %40 to i64, !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1770
  br label %42, !dbg !1770

; <label>:42:                                     ; preds = %39, %29
  %43 = phi i64 [ %41, %39 ], [ 8, %29 ], !dbg !1770
  %44 = add nuw nsw i64 %43, %36, !dbg !1770
  %45 = and i32 %26, 1, !dbg !1770
  %46 = icmp eq i32 %45, 0, !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1770
  br i1 %46, label %52, label %47, !dbg !1770

; <label>:47:                                     ; preds = %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %48 = shl i32 %26, 2
  %49 = and i32 %48, 8
  %50 = xor i32 %49, 8
  %51 = zext i32 %50 to i64
  br label %52

; <label>:52:                                     ; preds = %47, %42
  %53 = phi i64 [ 0, %42 ], [ %51, %47 ]
  %54 = add nuw nsw i64 %44, %53, !dbg !1770
  %55 = getelementptr inbounds i8, i8* %30, i64 %54, !dbg !1771
  %56 = getelementptr inbounds i8, i8* %55, i64 -8, !dbg !1772
  %57 = bitcast i8** %4 to i8*, !dbg !1774
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57) #7, !dbg !1774
  %58 = call i8* @memcpy(i8* nonnull %57, i8* nonnull %56, i64 8) #6, !dbg !1775
  %59 = load i8*, i8** %4, align 8, !dbg !1776, !tbaa !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57) #7, !dbg !1778
  br label %60

; <label>:60:                                     ; preds = %25, %52
  %61 = phi i8* [ %59, %52 ], [ null, %25 ], !dbg !1779
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1778
  br label %62, !dbg !1780

; <label>:62:                                     ; preds = %60, %23
  %63 = phi i8* [ %24, %23 ], [ %61, %60 ], !dbg !1781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1782
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #7, !dbg !1783
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !1783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1783
  ret i8* %63, !dbg !1783
}

; Function Attrs: noredzone nounwind
define dso_local nonnull %struct.raxNode** @raxFindParentLink(%struct.raxNode*, %struct.raxNode* readnone) local_unnamed_addr #0 !dbg !1491 {
  %3 = alloca %struct.raxNode*, align 8
  %4 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 0, !dbg !1786
  %5 = load i32, i32* %4, align 4, !dbg !1786
  %6 = lshr i32 %5, 3, !dbg !1786
  %7 = zext i32 %6 to i64, !dbg !1786
  %8 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 1, i64 %7, !dbg !1786
  %9 = sub nsw i32 4, %6, !dbg !1786
  %10 = and i32 %9, 7, !dbg !1786
  %11 = zext i32 %10 to i64, !dbg !1786
  %12 = getelementptr inbounds i8, i8* %8, i64 %11, !dbg !1786
  %13 = bitcast i8* %12 to %struct.raxNode**, !dbg !1786
  %14 = bitcast %struct.raxNode** %3 to i8*, !dbg !1788
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #7, !dbg !1788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1516
  %15 = call i8* @memcpy(i8* nonnull %14, i8* nonnull %12, i64 8) #6, !dbg !1789
  %16 = load %struct.raxNode*, %struct.raxNode** %3, align 8, !dbg !1790, !tbaa !172
  %17 = icmp eq %struct.raxNode* %16, %1, !dbg !1792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1793
  br i1 %17, label %25, label %18, !dbg !1793

; <label>:18:                                     ; preds = %2, %18
  %19 = phi %struct.raxNode** [ %20, %18 ], [ %13, %2 ]
  %20 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %19, i64 1, !dbg !1794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1516
  %21 = bitcast %struct.raxNode** %20 to i8*, !dbg !1795
  %22 = call i8* @memcpy(i8* nonnull %14, i8* nonnull %21, i64 8) #6, !dbg !1789
  %23 = load %struct.raxNode*, %struct.raxNode** %3, align 8, !dbg !1790, !tbaa !172
  %24 = icmp eq %struct.raxNode* %23, %1, !dbg !1792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1793
  br i1 %24, label %25, label %18, !dbg !1793, !llvm.loop !1515

; <label>:25:                                     ; preds = %18, %2
  %26 = phi %struct.raxNode** [ %13, %2 ], [ %20, %18 ], !dbg !1796
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #7, !dbg !1797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1798
  ret %struct.raxNode** %26, !dbg !1798
}

; Function Attrs: noredzone nounwind
define dso_local %struct.raxNode* @raxRemoveChild(%struct.raxNode*, %struct.raxNode* readnone) local_unnamed_addr #0 !dbg !1799 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.raxNode*, align 8
  %6 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 0, !dbg !1819
  %7 = load i32, i32* %6, align 4, !dbg !1819
  %8 = and i32 %7, 4, !dbg !1819
  %9 = icmp eq i32 %8, 0, !dbg !1820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1821
  br i1 %9, label %51, label %10, !dbg !1821

; <label>:10:                                     ; preds = %2
  %11 = and i32 %7, 1, !dbg !1823
  %12 = icmp eq i32 %11, 0, !dbg !1825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1826
  br i1 %12, label %13, label %14, !dbg !1826

; <label>:13:                                     ; preds = %10
  store i32 %11, i32* %6, align 4, !dbg !1827
  br label %50, !dbg !1828

; <label>:14:                                     ; preds = %10
  %15 = and i32 %7, 2, !dbg !1831
  %16 = icmp eq i32 %15, 0, !dbg !1832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1833
  br i1 %16, label %19, label %17, !dbg !1833

; <label>:17:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1836
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1828
  %18 = bitcast i8** %3 to i8*, !dbg !1837
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18), !dbg !1837
  store i8* null, i8** %3, align 8, !tbaa !172
  store i32 1, i32* %6, align 4, !dbg !1841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1842
  br label %46, !dbg !1842

; <label>:19:                                     ; preds = %14
  %20 = bitcast %struct.raxNode* %0 to i8*, !dbg !1843
  %21 = lshr i32 %7, 3, !dbg !1844
  %22 = sub nsw i32 4, %21, !dbg !1844
  %23 = and i32 %22, 7, !dbg !1844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1844
  %24 = add nuw nsw i32 %21, 12, !dbg !1844
  %25 = add nuw nsw i32 %24, %23, !dbg !1844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1844
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %26 = shl i32 %7, 2
  %27 = and i32 %26, 8
  %28 = xor i32 %27, 8
  %29 = add nuw i32 %25, %28, !dbg !1844
  %30 = zext i32 %29 to i64, !dbg !1844
  %31 = getelementptr inbounds i8, i8* %20, i64 %30, !dbg !1845
  %32 = getelementptr inbounds i8, i8* %31, i64 -8, !dbg !1846
  %33 = bitcast i8** %4 to i8*, !dbg !1848
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #7, !dbg !1848
  %34 = call i8* @memcpy(i8* nonnull %33, i8* nonnull %32, i64 8) #6, !dbg !1849
  %35 = load i8*, i8** %4, align 8, !dbg !1850, !tbaa !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #7, !dbg !1835
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %36 = load i32, i32* %6, align 4, !dbg !1852
  %37 = and i32 %36, 1, !dbg !1827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1836
  store i32 %37, i32* %6, align 4, !dbg !1827
  %38 = icmp eq i32 %37, 0, !dbg !1853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1828
  br i1 %38, label %155, label %39, !dbg !1828

; <label>:39:                                     ; preds = %19
  %40 = bitcast i8** %3 to i8*, !dbg !1837
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40), !dbg !1837
  store i8* %35, i8** %3, align 8, !tbaa !172
  store i32 1, i32* %6, align 4, !dbg !1841
  %41 = icmp eq i8* %35, null, !dbg !1854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1842
  br i1 %41, label %46, label %42, !dbg !1842

; <label>:42:                                     ; preds = %39
  store i32 1, i32* %6, align 4, !dbg !1855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1856
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %43 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 2, !dbg !1857
  %44 = bitcast %struct.raxNode* %43 to i8*, !dbg !1857
  %45 = call i8* @memcpy(i8* nonnull %44, i8* nonnull %40, i64 8) #6, !dbg !1859
  br label %48, !dbg !1860

; <label>:46:                                     ; preds = %17, %39
  %47 = phi i8* [ %18, %17 ], [ %40, %39 ]
  store i32 3, i32* %6, align 4, !dbg !1861
  br label %48

; <label>:48:                                     ; preds = %42, %46
  %49 = phi i8* [ %40, %42 ], [ %47, %46 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1862
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49), !dbg !1862
  br label %50, !dbg !1863

; <label>:50:                                     ; preds = %48, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1864
  br label %155

; <label>:51:                                     ; preds = %2
  %52 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 1, i64 0, !dbg !1865
  %53 = lshr i32 %7, 3, !dbg !1865
  %54 = zext i32 %53 to i64, !dbg !1865
  %55 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 1, i64 %54, !dbg !1865
  %56 = sub nsw i32 4, %53, !dbg !1865
  %57 = and i32 %56, 7, !dbg !1865
  %58 = zext i32 %57 to i64, !dbg !1865
  %59 = getelementptr inbounds i8, i8* %55, i64 %58, !dbg !1865
  %60 = bitcast i8* %59 to %struct.raxNode**, !dbg !1865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1869
  %61 = bitcast %struct.raxNode** %5 to i8*, !dbg !1870
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %61) #7, !dbg !1870
  %62 = call i8* @memcpy(i8* nonnull %61, i8* nonnull %59, i64 8) #6, !dbg !1871
  %63 = load %struct.raxNode*, %struct.raxNode** %5, align 8, !dbg !1872, !tbaa !172
  %64 = icmp eq %struct.raxNode* %63, %1, !dbg !1875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1876
  br i1 %64, label %74, label %65, !dbg !1876

; <label>:65:                                     ; preds = %51, %65
  %66 = phi %struct.raxNode** [ %68, %65 ], [ %60, %51 ]
  %67 = phi i8* [ %69, %65 ], [ %52, %51 ]
  %68 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %66, i64 1, !dbg !1877
  %69 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !1878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1879
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %61) #7, !dbg !1879
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %61) #7, !dbg !1870
  %70 = bitcast %struct.raxNode** %68 to i8*, !dbg !1880
  %71 = call i8* @memcpy(i8* nonnull %61, i8* nonnull %70, i64 8) #6, !dbg !1871
  %72 = load %struct.raxNode*, %struct.raxNode** %5, align 8, !dbg !1872, !tbaa !172
  %73 = icmp eq %struct.raxNode* %72, %1, !dbg !1875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1876
  br i1 %73, label %74, label %65, !dbg !1876

; <label>:74:                                     ; preds = %65, %51
  %75 = phi i8* [ %52, %51 ], [ %69, %65 ], !dbg !1868
  %76 = phi %struct.raxNode** [ %60, %51 ], [ %68, %65 ], !dbg !1867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1881
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %61) #7, !dbg !1879
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %77 = load i32, i32* %6, align 4, !dbg !1882
  %78 = lshr i32 %77, 3, !dbg !1882
  %79 = ptrtoint i8* %75 to i64, !dbg !1883
  %80 = ptrtoint i8* %52 to i64, !dbg !1883
  %81 = sub i64 %80, %79, !dbg !1884
  %82 = trunc i64 %81 to i32, !dbg !1885
  %83 = add i32 %78, %82, !dbg !1885
  %84 = add i32 %83, -1, !dbg !1885
  %85 = getelementptr inbounds i8, i8* %75, i64 1, !dbg !1887
  %86 = sext i32 %84 to i64, !dbg !1888
  %87 = call i8* @memmove(i8* nonnull %75, i8* nonnull %85, i64 %86) #6, !dbg !1889
  %88 = load i32, i32* %6, align 4, !dbg !1890
  %89 = lshr i32 %88, 3, !dbg !1890
  %90 = add nuw nsw i32 %89, 4, !dbg !1891
  %91 = and i32 %90, 7, !dbg !1892
  %92 = icmp eq i32 %91, 1, !dbg !1893
  %93 = select i1 %92, i64 8, i64 0, !dbg !1894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1896
  br i1 %92, label %94, label %102, !dbg !1896

; <label>:94:                                     ; preds = %74
  %95 = sub nsw i64 0, %93, !dbg !1897
  %96 = getelementptr inbounds i8, i8* %59, i64 %95, !dbg !1897
  %97 = sub i32 %89, %83, !dbg !1899
  %98 = sext i32 %97 to i64, !dbg !1900
  %99 = shl nsw i64 %98, 3, !dbg !1901
  %100 = call i8* @memmove(i8* nonnull %96, i8* nonnull %59, i64 %99) #6, !dbg !1902
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1902
  %101 = load i32, i32* %6, align 4, !dbg !1903
  br label %102, !dbg !1902

; <label>:102:                                    ; preds = %94, %74
  %103 = phi i32 [ %101, %94 ], [ %88, %74 ], !dbg !1903
  %104 = and i32 %103, 1, !dbg !1903
  %105 = icmp eq i32 %104, 0, !dbg !1904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1905
  br i1 %105, label %111, label %106, !dbg !1905

; <label>:106:                                    ; preds = %102
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %107 = shl i32 %103, 2
  %108 = and i32 %107, 8
  %109 = xor i32 %108, 8
  %110 = zext i32 %109 to i64
  br label %111

; <label>:111:                                    ; preds = %102, %106
  %112 = phi i64 [ 0, %102 ], [ %110, %106 ]
  %113 = bitcast %struct.raxNode** %76 to i8*, !dbg !1907
  %114 = sub nsw i64 0, %93, !dbg !1908
  %115 = getelementptr inbounds i8, i8* %113, i64 %114, !dbg !1908
  %116 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %76, i64 1, !dbg !1909
  %117 = bitcast %struct.raxNode** %116 to i8*, !dbg !1910
  %118 = shl nsw i64 %86, 3, !dbg !1911
  %119 = add nsw i64 %112, %118, !dbg !1912
  %120 = call i8* @memmove(i8* %115, i8* nonnull %117, i64 %119) #6, !dbg !1913
  %121 = load i32, i32* %6, align 4, !dbg !1914
  %122 = lshr i32 %121, 3, !dbg !1914
  %123 = add nuw nsw i32 %122, 536870911, !dbg !1914
  %124 = shl i32 %123, 3, !dbg !1914
  %125 = and i32 %121, 7, !dbg !1914
  %126 = or i32 %124, %125, !dbg !1914
  store i32 %126, i32* %6, align 4, !dbg !1914
  %127 = bitcast %struct.raxNode* %0 to i8*, !dbg !1915
  %128 = and i32 %123, 536870911, !dbg !1916
  %129 = add nuw nsw i32 %128, 4, !dbg !1916
  %130 = sub nsw i32 5, %122, !dbg !1916
  %131 = and i32 %130, 7, !dbg !1916
  %132 = add nuw nsw i32 %129, %131, !dbg !1916
  %133 = zext i32 %132 to i64, !dbg !1916
  %134 = and i32 %121, 4, !dbg !1916
  %135 = icmp eq i32 %134, 0, !dbg !1916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1916
  br i1 %135, label %136, label %138, !dbg !1916

; <label>:136:                                    ; preds = %111
  %137 = zext i32 %124 to i64, !dbg !1916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1916
  br label %138, !dbg !1916

; <label>:138:                                    ; preds = %111, %136
  %139 = phi i64 [ %137, %136 ], [ 8, %111 ], !dbg !1916
  %140 = add nuw nsw i64 %139, %133, !dbg !1916
  %141 = and i32 %121, 1, !dbg !1916
  %142 = icmp eq i32 %141, 0, !dbg !1916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1916
  br i1 %142, label %148, label %143, !dbg !1916

; <label>:143:                                    ; preds = %138
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %144 = shl i32 %121, 2
  %145 = and i32 %144, 8
  %146 = xor i32 %145, 8
  %147 = zext i32 %146 to i64
  br label %148

; <label>:148:                                    ; preds = %138, %143
  %149 = phi i64 [ 0, %138 ], [ %147, %143 ]
  %150 = add nuw nsw i64 %140, %149, !dbg !1916
  %151 = call i8* @zrealloc(i8* %127, i64 %150) #6, !dbg !1917
  %152 = bitcast i8* %151 to %struct.raxNode*, !dbg !1917
  %153 = icmp eq i8* %151, null, !dbg !1919
  %154 = select i1 %153, %struct.raxNode* %0, %struct.raxNode* %152, !dbg !1919
  br label %155

; <label>:155:                                    ; preds = %19, %50, %148
  %156 = phi %struct.raxNode* [ %154, %148 ], [ %0, %50 ], [ %0, %19 ], !dbg !1920
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1921
  ret %struct.raxNode* %156, !dbg !1921
}

; Function Attrs: noredzone nounwind
define dso_local void @raxRecursiveFree(%struct.rax* nocapture, %struct.raxNode*, void (i8*)*) local_unnamed_addr #0 !dbg !1922 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.raxNode*, align 8
  %6 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %1, i64 0, i32 0, !dbg !1939
  %7 = load i32, i32* %6, align 4, !dbg !1939
  %8 = and i32 %7, 4, !dbg !1939
  %9 = icmp eq i32 %8, 0, !dbg !1940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1940
  %10 = lshr i32 %7, 3, !dbg !1941
  br i1 %9, label %16, label %11, !dbg !1940

; <label>:11:                                     ; preds = %3
  %12 = add nuw nsw i32 %10, 4, !dbg !1943
  %13 = sub nsw i32 4, %10, !dbg !1943
  %14 = and i32 %13, 7, !dbg !1943
  %15 = add nuw nsw i32 %12, %14, !dbg !1943
  br label %23

; <label>:16:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1940
  %17 = add nuw nsw i32 %10, 4, !dbg !1943
  %18 = sub nsw i32 4, %10, !dbg !1943
  %19 = and i32 %18, 7, !dbg !1943
  %20 = add nuw nsw i32 %17, %19, !dbg !1943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1943
  %21 = and i32 %7, -8, !dbg !1943
  %22 = zext i32 %21 to i64, !dbg !1943
  br label %23, !dbg !1943

; <label>:23:                                     ; preds = %11, %16
  %24 = phi i32 [ %20, %16 ], [ %15, %11 ]
  %25 = phi i32 [ %10, %16 ], [ 1, %11 ]
  %26 = phi i64 [ %22, %16 ], [ 8, %11 ], !dbg !1943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1943
  %27 = bitcast %struct.raxNode* %1 to i8*, !dbg !1943
  %28 = zext i32 %24 to i64, !dbg !1943
  %29 = add nuw nsw i64 %26, %28, !dbg !1943
  %30 = and i32 %7, 1, !dbg !1943
  %31 = icmp eq i32 %30, 0, !dbg !1943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1943
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %31, label %39, label %32, !dbg !1943

; <label>:32:                                     ; preds = %23
  %33 = shl i32 %7, 2
  %34 = and i32 %33, 8
  %35 = xor i32 %34, 8
  %36 = zext i32 %35 to i64
  %37 = add nuw nsw i64 %29, %36, !dbg !1943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1943
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %38 = sub nsw i64 0, %36
  br label %39

; <label>:39:                                     ; preds = %23, %32
  %40 = phi i64 [ %37, %32 ], [ %29, %23 ]
  %41 = phi i64 [ %38, %32 ], [ 0, %23 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  %42 = icmp eq i32 %25, 0, !dbg !1944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  br i1 %42, label %58, label %43, !dbg !1944

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds i8, i8* %27, i64 %40, !dbg !1943
  %45 = getelementptr inbounds i8, i8* %44, i64 -8, !dbg !1943
  %46 = getelementptr inbounds i8, i8* %45, i64 %41, !dbg !1943
  %47 = bitcast i8* %46 to %struct.raxNode**, !dbg !1943
  %48 = bitcast %struct.raxNode** %5 to i8*
  br label %49, !dbg !1944

; <label>:49:                                     ; preds = %43, %49
  %50 = phi %struct.raxNode** [ %47, %43 ], [ %56, %49 ]
  %51 = phi i32 [ %25, %43 ], [ %52, %49 ]
  %52 = add nsw i32 %51, -1, !dbg !1946
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48) #7, !dbg !1947
  %53 = bitcast %struct.raxNode** %50 to i8*, !dbg !1948
  %54 = call i8* @memcpy(i8* nonnull %48, i8* %53, i64 8) #6, !dbg !1949
  %55 = load %struct.raxNode*, %struct.raxNode** %5, align 8, !dbg !1950, !tbaa !172
  call void @raxRecursiveFree(%struct.rax* %0, %struct.raxNode* %55, void (i8*)* %2) #9, !dbg !1952
  %56 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %50, i64 -1, !dbg !1953
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #7, !dbg !1954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  %57 = icmp eq i32 %52, 0, !dbg !1944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  br i1 %57, label %58, label %49, !dbg !1944, !llvm.loop !1955

; <label>:58:                                     ; preds = %49, %39
  %59 = icmp eq void (i8*)* %2, null, !dbg !1956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1958
  br i1 %59, label %91, label %60, !dbg !1958

; <label>:60:                                     ; preds = %58
  %61 = load i32, i32* %6, align 4, !dbg !1959
  %62 = and i32 %61, 1, !dbg !1959
  %63 = icmp eq i32 %62, 0, !dbg !1960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1961
  br i1 %63, label %91, label %64, !dbg !1961

; <label>:64:                                     ; preds = %60
  %65 = and i32 %61, 2, !dbg !1962
  %66 = icmp eq i32 %65, 0, !dbg !1963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1964
  br i1 %66, label %67, label %91, !dbg !1964

; <label>:67:                                     ; preds = %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1967
  %68 = lshr i32 %61, 3, !dbg !1968
  %69 = add nuw nsw i32 %68, 4, !dbg !1968
  %70 = sub nsw i32 4, %68, !dbg !1968
  %71 = and i32 %70, 7, !dbg !1968
  %72 = add nuw nsw i32 %69, %71, !dbg !1968
  %73 = and i32 %61, 4, !dbg !1968
  %74 = icmp eq i32 %73, 0, !dbg !1968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1968
  br i1 %74, label %75, label %78, !dbg !1968

; <label>:75:                                     ; preds = %67
  %76 = and i32 %61, -8, !dbg !1968
  %77 = zext i32 %76 to i64, !dbg !1968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1968
  br label %78, !dbg !1968

; <label>:78:                                     ; preds = %67, %75
  %79 = phi i64 [ %77, %75 ], [ 8, %67 ], !dbg !1968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1968
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %80 = shl i32 %61, 2
  %81 = and i32 %80, 8
  %82 = xor i32 %81, 8
  %83 = add nuw i32 %72, %82, !dbg !1968
  %84 = zext i32 %83 to i64, !dbg !1968
  %85 = add nuw nsw i64 %79, %84, !dbg !1968
  %86 = getelementptr inbounds i8, i8* %27, i64 %85, !dbg !1969
  %87 = getelementptr inbounds i8, i8* %86, i64 -8, !dbg !1970
  %88 = bitcast i8** %4 to i8*, !dbg !1972
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %88) #7, !dbg !1972
  %89 = call i8* @memcpy(i8* nonnull %88, i8* nonnull %87, i64 8) #6, !dbg !1973
  %90 = load i8*, i8** %4, align 8, !dbg !1974, !tbaa !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %88) #7, !dbg !1976
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1976
  call void %2(i8* %90) #6, !dbg !1977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1977
  br label %91, !dbg !1977

; <label>:91:                                     ; preds = %64, %60, %58, %78
  call void @zfree(i8* %27) #6, !dbg !1978
  %92 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 2, !dbg !1979
  %93 = load i64, i64* %92, align 8, !dbg !1980, !tbaa !857
  %94 = add i64 %93, -1, !dbg !1980
  store i64 %94, i64* %92, align 8, !dbg !1980, !tbaa !857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1981
  ret void, !dbg !1981
}

; Function Attrs: noredzone nounwind
define dso_local void @raxFreeWithCallback(%struct.rax*, void (i8*)*) local_unnamed_addr #0 !dbg !1982 {
  %3 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 0, !dbg !1990
  %4 = load %struct.raxNode*, %struct.raxNode** %3, align 8, !dbg !1990, !tbaa !125
  tail call void @raxRecursiveFree(%struct.rax* %0, %struct.raxNode* %4, void (i8*)* %1) #9, !dbg !1991
  %5 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 2, !dbg !1992
  %6 = load i64, i64* %5, align 8, !dbg !1992, !tbaa !857
  %7 = icmp eq i64 %6, 0, !dbg !1992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1992
  br i1 %7, label %9, label %8, !dbg !1992

; <label>:8:                                      ; preds = %2
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 1242, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.raxFreeWithCallback, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1992
  unreachable

; <label>:9:                                      ; preds = %2
  %10 = bitcast %struct.rax* %0 to i8*, !dbg !1993
  tail call void @zfree(i8* %10) #6, !dbg !1994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1995
  ret void, !dbg !1995
}

; Function Attrs: noredzone nounwind
define dso_local void @raxFree(%struct.rax*) local_unnamed_addr #0 !dbg !1996 {
  %2 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 0, !dbg !2005
  %3 = load %struct.raxNode*, %struct.raxNode** %2, align 8, !dbg !2005, !tbaa !125
  tail call void @raxRecursiveFree(%struct.rax* %0, %struct.raxNode* %3, void (i8*)* null) #6, !dbg !2006
  %4 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 2, !dbg !2007
  %5 = load i64, i64* %4, align 8, !dbg !2007, !tbaa !857
  %6 = icmp eq i64 %5, 0, !dbg !2007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2007
  br i1 %6, label %8, label %7, !dbg !2007

; <label>:7:                                      ; preds = %1
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 1242, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.raxFreeWithCallback, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !2007
  unreachable

; <label>:8:                                      ; preds = %1
  %9 = bitcast %struct.rax* %0 to i8*, !dbg !2008
  tail call void @zfree(i8* %9) #6, !dbg !2009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2011
  ret void, !dbg !2011
}

; Function Attrs: noredzone nounwind
define dso_local void @raxStart(%struct.raxIterator*, %struct.rax*) local_unnamed_addr #0 !dbg !2012 {
  %3 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 0, !dbg !2041
  store i32 2, i32* %3, align 8, !dbg !2042, !tbaa !2043
  %4 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 1, !dbg !2045
  store %struct.rax* %1, %struct.rax** %4, align 8, !dbg !2046, !tbaa !2047
  %5 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 4, !dbg !2048
  %6 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 6, i64 0, !dbg !2049
  %7 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 2, !dbg !2050
  store i8* %6, i8** %7, align 8, !dbg !2051, !tbaa !2052
  %8 = bitcast i64* %5 to <2 x i64>*, !dbg !2053
  store <2 x i64> <i64 0, i64 128>, <2 x i64>* %8, align 8, !dbg !2053, !tbaa !111
  %9 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 3, !dbg !2054
  store i8* null, i8** %9, align 8, !dbg !2055, !tbaa !2056
  %10 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 9, !dbg !2057
  store i32 (%struct.raxNode**)* null, i32 (%struct.raxNode**)** %10, align 8, !dbg !2058, !tbaa !2059
  %11 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 3, i64 0, !dbg !2062
  %12 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 0, !dbg !2063
  store i8** %11, i8*** %12, align 8, !dbg !2064, !tbaa !1353
  %13 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 1, !dbg !2065
  %14 = bitcast i64* %13 to <2 x i64>*, !dbg !2066
  store <2 x i64> <i64 0, i64 32>, <2 x i64>* %14, align 8, !dbg !2066, !tbaa !111
  %15 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 4, !dbg !2067
  store i32 0, i32* %15, align 8, !dbg !2068, !tbaa !1359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2070
  ret void, !dbg !2070
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxIteratorAddChars(%struct.raxIterator*, i8*, i64) local_unnamed_addr #0 !dbg !2071 {
  %4 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 5, !dbg !2085
  %5 = load i64, i64* %4, align 8, !dbg !2085, !tbaa !2086
  %6 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 4, !dbg !2087
  %7 = load i64, i64* %6, align 8, !dbg !2087, !tbaa !2088
  %8 = add i64 %7, %2, !dbg !2089
  %9 = icmp ult i64 %5, %8, !dbg !2090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2091
  %10 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 2, !dbg !2092
  br i1 %9, label %11, label %31, !dbg !2091

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %10, align 8, !dbg !2093, !tbaa !2052
  %13 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 6, i64 0, !dbg !2094
  %14 = icmp eq i8* %12, %13, !dbg !2095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2096
  br i1 %14, label %16, label %15, !dbg !2096

; <label>:15:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2096
  br label %16, !dbg !2096

; <label>:16:                                     ; preds = %11, %15
  %17 = phi i8* [ %12, %15 ], [ null, %11 ], !dbg !2096
  %18 = shl i64 %8, 1, !dbg !2098
  %19 = tail call i8* @zrealloc(i8* %17, i64 %18) #6, !dbg !2100
  store i8* %19, i8** %10, align 8, !dbg !2101, !tbaa !2052
  %20 = icmp eq i8* %19, null, !dbg !2102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2104
  %21 = icmp eq i8* %17, null, !dbg !2105
  br i1 %20, label %22, label %25, !dbg !2104

; <label>:22:                                     ; preds = %16
  %23 = select i1 %21, i8* %13, i8* %17, !dbg !2107
  store i8* %23, i8** %10, align 8, !dbg !2109, !tbaa !2052
  %24 = tail call i32* @__errno() #6, !dbg !2110
  store i32 12, i32* %24, align 4, !dbg !2111, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2112
  br label %38

; <label>:25:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2113
  br i1 %21, label %26, label %29, !dbg !2113

; <label>:26:                                     ; preds = %25
  %27 = load i64, i64* %6, align 8, !dbg !2114, !tbaa !2088
  %28 = tail call i8* @memcpy(i8* nonnull %19, i8* nonnull %13, i64 %27) #6, !dbg !2115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2115
  br label %29, !dbg !2115

; <label>:29:                                     ; preds = %26, %25
  store i64 %18, i64* %4, align 8, !dbg !2116, !tbaa !2086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2117
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %30 = load i64, i64* %6, align 8, !dbg !2118, !tbaa !2088
  br label %31

; <label>:31:                                     ; preds = %3, %29
  %32 = phi i64 [ %30, %29 ], [ %7, %3 ], !dbg !2118
  %33 = load i8*, i8** %10, align 8, !dbg !2119, !tbaa !2052
  %34 = getelementptr inbounds i8, i8* %33, i64 %32, !dbg !2120
  %35 = tail call i8* @memmove(i8* %34, i8* %1, i64 %2) #6, !dbg !2121
  %36 = load i64, i64* %6, align 8, !dbg !2122, !tbaa !2088
  %37 = add i64 %36, %2, !dbg !2122
  store i64 %37, i64* %6, align 8, !dbg !2122, !tbaa !2088
  br label %38, !dbg !2123

; <label>:38:                                     ; preds = %22, %31
  %39 = phi i32 [ 1, %31 ], [ 0, %22 ], !dbg !2124
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  ret i32 %39, !dbg !2125
}

; Function Attrs: noredzone nounwind
define dso_local void @raxIteratorDelChars(%struct.raxIterator* nocapture, i64) local_unnamed_addr #0 !dbg !2126 {
  %3 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 4, !dbg !2134
  %4 = load i64, i64* %3, align 8, !dbg !2135, !tbaa !2088
  %5 = sub i64 %4, %1, !dbg !2135
  store i64 %5, i64* %3, align 8, !dbg !2135, !tbaa !2088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2136
  ret void, !dbg !2136
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxIteratorNextStep(%struct.raxIterator*, i32) local_unnamed_addr #0 !dbg !2137 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 0, !dbg !2162
  %6 = load i32, i32* %5, align 8, !dbg !2162, !tbaa !2043
  %7 = and i32 %6, 2, !dbg !2164
  %8 = icmp eq i32 %7, 0, !dbg !2164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2165
  br i1 %8, label %9, label %276, !dbg !2165

; <label>:9:                                      ; preds = %2
  %10 = and i32 %6, 1, !dbg !2166
  %11 = icmp eq i32 %10, 0, !dbg !2166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2168
  br i1 %11, label %14, label %12, !dbg !2168

; <label>:12:                                     ; preds = %9
  %13 = and i32 %6, -2, !dbg !2169
  store i32 %13, i32* %5, align 8, !dbg !2169, !tbaa !2043
  br label %276, !dbg !2171

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 4, !dbg !2172
  %16 = load i64, i64* %15, align 8, !dbg !2172, !tbaa !2088
  %17 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, !dbg !2174
  %18 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 1, !dbg !2175
  %19 = load i64, i64* %18, align 8, !dbg !2175, !tbaa !2176
  %20 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 7, !dbg !2178
  %21 = bitcast %struct.raxNode** %20 to i64*, !dbg !2178
  %22 = load i64, i64* %21, align 8, !dbg !2178, !tbaa !2179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2181
  %23 = bitcast %struct.raxNode** %20 to i32**
  %24 = bitcast %struct.raxNode** %20 to i8**
  %25 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 2
  %26 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 1
  %27 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %17, i64 0, i32 0
  %28 = bitcast %struct.raxNode** %20 to i8*
  %29 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 9
  %30 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 3
  %31 = bitcast i8** %3 to i8*
  %32 = inttoptr i64 %22 to i32*, !dbg !2181
  %33 = inttoptr i64 %22 to i8*, !dbg !2181
  %34 = bitcast %struct.raxNode** %20 to i32**
  br label %35, !dbg !2181

; <label>:35:                                     ; preds = %266, %14
  %36 = phi i8* [ %33, %14 ], [ %269, %266 ]
  %37 = phi i32* [ %32, %14 ], [ %268, %266 ], !dbg !2182
  %38 = phi i32 [ %1, %14 ], [ 0, %266 ]
  %39 = phi i32 [ undef, %14 ], [ %267, %266 ]
  %40 = load i32, i32* %37, align 4, !dbg !2183
  %41 = and i32 %40, 4, !dbg !2183
  %42 = icmp eq i32 %41, 0, !dbg !2184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2184
  br i1 %42, label %43, label %45, !dbg !2184

; <label>:43:                                     ; preds = %35
  %44 = lshr i32 %40, 3, !dbg !2185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2184
  br label %45, !dbg !2184

; <label>:45:                                     ; preds = %35, %43
  %46 = phi i32 [ %44, %43 ], [ 1, %35 ], !dbg !2184
  %47 = icmp eq i32 %38, 0, !dbg !2187
  %48 = icmp ne i32 %46, 0, !dbg !2188
  %49 = and i1 %47, %48, !dbg !2189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2189
  br i1 %49, label %50, label %119, !dbg !2189

; <label>:50:                                     ; preds = %45
  %51 = call fastcc i32 @raxStackPush(%struct.raxStack* nonnull %17, i8* %36) #9, !dbg !2190
  %52 = icmp eq i32 %51, 0, !dbg !2190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2192
  br i1 %52, label %272, label %53, !dbg !2192

; <label>:53:                                     ; preds = %50
  %54 = load %struct.raxNode*, %struct.raxNode** %20, align 8, !dbg !2193, !tbaa !2179
  %55 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %54, i64 0, i32 1, i64 0, !dbg !2193
  %56 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %54, i64 0, i32 0, !dbg !2193
  %57 = load i32, i32* %56, align 4, !dbg !2193
  %58 = lshr i32 %57, 3, !dbg !2193
  %59 = zext i32 %58 to i64, !dbg !2193
  %60 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %54, i64 0, i32 1, i64 %59, !dbg !2193
  %61 = sub nsw i32 4, %58, !dbg !2193
  %62 = and i32 %61, 7, !dbg !2193
  %63 = zext i32 %62 to i64, !dbg !2193
  %64 = getelementptr inbounds i8, i8* %60, i64 %63, !dbg !2193
  %65 = and i32 %57, 4, !dbg !2195
  %66 = icmp eq i32 %65, 0, !dbg !2197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2197
  br i1 %66, label %68, label %67, !dbg !2197

; <label>:67:                                     ; preds = %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2197
  br label %68, !dbg !2197

; <label>:68:                                     ; preds = %53, %67
  %69 = phi i32 [ %58, %67 ], [ 1, %53 ], !dbg !2197
  %70 = zext i32 %69 to i64, !dbg !2197
  %71 = call i32 @raxIteratorAddChars(%struct.raxIterator* nonnull %0, i8* nonnull %55, i64 %70) #9, !dbg !2198
  %72 = icmp eq i32 %71, 0, !dbg !2198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2199
  br i1 %72, label %270, label %73, !dbg !2199

; <label>:73:                                     ; preds = %68
  %74 = call i8* @memcpy(i8* nonnull %28, i8* nonnull %64, i64 8) #6, !dbg !2200
  %75 = load i32 (%struct.raxNode**)*, i32 (%struct.raxNode**)** %29, align 8, !dbg !2201, !tbaa !2059
  %76 = icmp eq i32 (%struct.raxNode**)* %75, null, !dbg !2203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2204
  br i1 %76, label %82, label %77, !dbg !2204

; <label>:77:                                     ; preds = %73
  %78 = call i32 %75(%struct.raxNode** nonnull %20) #6, !dbg !2205
  %79 = icmp eq i32 %78, 0, !dbg !2205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2206
  br i1 %79, label %82, label %80, !dbg !2206

; <label>:80:                                     ; preds = %77
  %81 = call i8* @memcpy(i8* nonnull %64, i8* nonnull %28, i64 8) #6, !dbg !2207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2207
  br label %82, !dbg !2207

; <label>:82:                                     ; preds = %77, %73, %80
  %83 = load %struct.raxNode*, %struct.raxNode** %20, align 8, !dbg !2208, !tbaa !2179
  %84 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %83, i64 0, i32 0, !dbg !2210
  %85 = load i32, i32* %84, align 4, !dbg !2210
  %86 = and i32 %85, 1, !dbg !2210
  %87 = icmp eq i32 %86, 0, !dbg !2211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2212
  br i1 %87, label %118, label %88, !dbg !2212

; <label>:88:                                     ; preds = %82
  %89 = and i32 %85, 2, !dbg !2216
  %90 = icmp eq i32 %89, 0, !dbg !2217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2218
  br i1 %90, label %91, label %116, !dbg !2218

; <label>:91:                                     ; preds = %88
  %92 = bitcast %struct.raxNode* %83 to i8*, !dbg !2219
  %93 = lshr i32 %85, 3, !dbg !2220
  %94 = add nuw nsw i32 %93, 4, !dbg !2220
  %95 = sub nsw i32 4, %93, !dbg !2220
  %96 = and i32 %95, 7, !dbg !2220
  %97 = add nuw nsw i32 %94, %96, !dbg !2220
  %98 = and i32 %85, 4, !dbg !2220
  %99 = icmp eq i32 %98, 0, !dbg !2220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2220
  br i1 %99, label %100, label %103, !dbg !2220

; <label>:100:                                    ; preds = %91
  %101 = and i32 %85, -8, !dbg !2220
  %102 = zext i32 %101 to i64, !dbg !2220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2220
  br label %103, !dbg !2220

; <label>:103:                                    ; preds = %100, %91
  %104 = phi i64 [ %102, %100 ], [ 8, %91 ], !dbg !2220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2220
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %105 = shl i32 %85, 2
  %106 = and i32 %105, 8
  %107 = xor i32 %106, 8
  %108 = add nuw i32 %97, %107, !dbg !2220
  %109 = zext i32 %108 to i64, !dbg !2220
  %110 = add nuw nsw i64 %104, %109, !dbg !2220
  %111 = getelementptr inbounds i8, i8* %92, i64 %110, !dbg !2221
  %112 = getelementptr inbounds i8, i8* %111, i64 -8, !dbg !2222
  %113 = bitcast i8** %4 to i8*, !dbg !2224
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %113) #7, !dbg !2224
  %114 = call i8* @memcpy(i8* nonnull %113, i8* nonnull %112, i64 8) #6, !dbg !2225
  %115 = load i8*, i8** %4, align 8, !dbg !2226, !tbaa !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %113) #7, !dbg !2228
  br label %116

; <label>:116:                                    ; preds = %88, %103
  %117 = phi i8* [ %115, %103 ], [ null, %88 ], !dbg !2229
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2228
  store i8* %117, i8** %30, align 8, !dbg !2230, !tbaa !2056
  br label %270, !dbg !2231

; <label>:118:                                    ; preds = %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2232
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %266

; <label>:119:                                    ; preds = %45, %263
  %120 = phi i32 [ %264, %263 ], [ %38, %45 ]
  %121 = phi i32 [ %265, %263 ], [ %39, %45 ]
  %122 = icmp ne i32 %120, 0, !dbg !2234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2236
  br i1 %122, label %150, label %123, !dbg !2236

; <label>:123:                                    ; preds = %119
  %124 = load %struct.raxNode*, %struct.raxNode** %20, align 8, !dbg !2237, !tbaa !2179
  %125 = load %struct.rax*, %struct.rax** %26, align 8, !dbg !2238, !tbaa !2047
  %126 = getelementptr inbounds %struct.rax, %struct.rax* %125, i64 0, i32 0, !dbg !2239
  %127 = load %struct.raxNode*, %struct.raxNode** %126, align 8, !dbg !2239, !tbaa !125
  %128 = icmp eq %struct.raxNode* %124, %127, !dbg !2240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2241
  br i1 %128, label %129, label %132, !dbg !2241

; <label>:129:                                    ; preds = %123
  %130 = load i32, i32* %5, align 8, !dbg !2242, !tbaa !2043
  %131 = or i32 %130, 2, !dbg !2242
  store i32 %131, i32* %5, align 8, !dbg !2242, !tbaa !2043
  store i64 %19, i64* %18, align 8, !dbg !2244, !tbaa !2176
  store i64 %16, i64* %15, align 8, !dbg !2245, !tbaa !2088
  store i64 %22, i64* %21, align 8, !dbg !2246, !tbaa !2179
  br label %270

; <label>:132:                                    ; preds = %123
  %133 = load i8*, i8** %25, align 8, !dbg !2247, !tbaa !2052
  %134 = load i64, i64* %15, align 8, !dbg !2248, !tbaa !2088
  %135 = add i64 %134, -1, !dbg !2249
  %136 = getelementptr inbounds i8, i8* %133, i64 %135, !dbg !2250
  %137 = load i8, i8* %136, align 1, !dbg !2250, !tbaa !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2252
  %138 = load i64, i64* %18, align 8, !dbg !2257, !tbaa !1438
  %139 = icmp eq i64 %138, 0, !dbg !2258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2259
  br i1 %139, label %146, label %140, !dbg !2259

; <label>:140:                                    ; preds = %132
  %141 = add i64 %138, -1, !dbg !2260
  store i64 %141, i64* %18, align 8, !dbg !2260, !tbaa !1438
  %142 = load i8**, i8*** %27, align 8, !dbg !2261, !tbaa !1353
  %143 = getelementptr inbounds i8*, i8** %142, i64 %141, !dbg !2262
  %144 = load i8*, i8** %143, align 8, !dbg !2262, !tbaa !172
  %145 = bitcast i8* %144 to i32*, !dbg !2263
  br label %146, !dbg !2263

; <label>:146:                                    ; preds = %132, %140
  %147 = phi i32* [ %145, %140 ], [ null, %132 ], !dbg !2264
  %148 = phi i8* [ %144, %140 ], [ null, %132 ], !dbg !2264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2266
  store i32* %147, i32** %34, align 8, !dbg !2267, !tbaa !2179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2268
  %149 = bitcast i8* %148 to %struct.raxNode*, !dbg !2268
  br label %158, !dbg !2268

; <label>:150:                                    ; preds = %119
  %151 = load i8*, i8** %25, align 8, !dbg !2247, !tbaa !2052
  %152 = load i64, i64* %15, align 8, !dbg !2248, !tbaa !2088
  %153 = add i64 %152, -1, !dbg !2249
  %154 = getelementptr inbounds i8, i8* %151, i64 %153, !dbg !2250
  %155 = load i8, i8* %154, align 1, !dbg !2250, !tbaa !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2252
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %156 = load i32*, i32** %23, align 8, !dbg !2269, !tbaa !2179
  %157 = bitcast i32* %156 to %struct.raxNode*
  br label %158

; <label>:158:                                    ; preds = %150, %146
  %159 = phi i8 [ %155, %150 ], [ %137, %146 ]
  %160 = phi i64 [ %152, %150 ], [ %134, %146 ]
  %161 = phi %struct.raxNode* [ %157, %150 ], [ %149, %146 ]
  %162 = phi i32* [ %156, %150 ], [ %147, %146 ], !dbg !2269
  %163 = load i32, i32* %162, align 4, !dbg !2270
  %164 = and i32 %163, 4, !dbg !2270
  %165 = icmp eq i32 %164, 0, !dbg !2271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2271
  br i1 %165, label %168, label %166, !dbg !2271

; <label>:166:                                    ; preds = %158
  %167 = lshr i32 %163, 3, !dbg !2272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2271
  br label %168, !dbg !2271

; <label>:168:                                    ; preds = %158, %166
  %169 = phi i32 [ %167, %166 ], [ 1, %158 ], !dbg !2271
  %170 = zext i32 %169 to i64, !dbg !2274
  %171 = sub i64 %160, %170, !dbg !2278
  store i64 %171, i64* %15, align 8, !dbg !2278, !tbaa !2088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2279
  %172 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %161, i64 0, i32 0, !dbg !2280
  %173 = load i32, i32* %172, align 4, !dbg !2280
  %174 = and i32 %173, 4, !dbg !2280
  %175 = icmp eq i32 %174, 0, !dbg !2281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2282
  br i1 %175, label %176, label %263, !dbg !2282

; <label>:176:                                    ; preds = %168
  %177 = lshr i32 %173, 3, !dbg !2283
  %178 = xor i1 %122, true, !dbg !2284
  %179 = zext i1 %178 to i32, !dbg !2284
  %180 = icmp ugt i32 %177, %179, !dbg !2285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2286
  br i1 %180, label %181, label %263, !dbg !2286

; <label>:181:                                    ; preds = %176
  %182 = zext i32 %177 to i64, !dbg !2287
  %183 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %161, i64 0, i32 1, i64 %182, !dbg !2287
  %184 = sub nsw i32 4, %177, !dbg !2287
  %185 = and i32 %184, 7, !dbg !2287
  %186 = zext i32 %185 to i64, !dbg !2287
  %187 = getelementptr inbounds i8, i8* %183, i64 %186, !dbg !2287
  %188 = bitcast i8* %187 to %struct.raxNode**, !dbg !2287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2290
  br label %189, !dbg !2291

; <label>:189:                                    ; preds = %181, %196
  %190 = phi i64 [ 0, %181 ], [ %197, %196 ]
  %191 = phi i32 [ 0, %181 ], [ %198, %196 ]
  %192 = phi %struct.raxNode** [ %188, %181 ], [ %199, %196 ]
  %193 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %161, i64 0, i32 1, i64 %190, !dbg !2291
  %194 = load i8, i8* %193, align 1, !dbg !2291, !tbaa !280
  %195 = icmp ugt i8 %194, %159, !dbg !2294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2295
  br i1 %195, label %201, label %196, !dbg !2295

; <label>:196:                                    ; preds = %189
  %197 = add nuw nsw i64 %190, 1, !dbg !2296
  %198 = add nuw nsw i32 %191, 1, !dbg !2296
  %199 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %192, i64 1, !dbg !2297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2290
  %200 = icmp ult i64 %197, %182, !dbg !2298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2290
  br i1 %200, label %189, label %203, !dbg !2290, !llvm.loop !2299

; <label>:201:                                    ; preds = %189
  %202 = trunc i64 %190 to i32, !dbg !2295
  br label %203, !dbg !2301

; <label>:203:                                    ; preds = %196, %201
  %204 = phi %struct.raxNode** [ %192, %201 ], [ %199, %196 ], !dbg !2303
  %205 = phi i32 [ %202, %201 ], [ %198, %196 ], !dbg !2303
  %206 = icmp eq i32 %205, %177, !dbg !2301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2304
  br i1 %206, label %262, label %207, !dbg !2304

; <label>:207:                                    ; preds = %203
  %208 = zext i32 %205 to i64, !dbg !2305
  %209 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %161, i64 0, i32 1, i64 %208, !dbg !2305
  %210 = call i32 @raxIteratorAddChars(%struct.raxIterator* %0, i8* nonnull %209, i64 1) #9, !dbg !2307
  %211 = load i8*, i8** %24, align 8, !dbg !2308, !tbaa !2179
  %212 = call fastcc i32 @raxStackPush(%struct.raxStack* nonnull %17, i8* %211) #9, !dbg !2310
  %213 = icmp eq i32 %212, 0, !dbg !2310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2311
  br i1 %213, label %259, label %214, !dbg !2311

; <label>:214:                                    ; preds = %207
  %215 = bitcast %struct.raxNode** %204 to i8*, !dbg !2312
  %216 = call i8* @memcpy(i8* nonnull %28, i8* %215, i64 8) #6, !dbg !2313
  %217 = load i32 (%struct.raxNode**)*, i32 (%struct.raxNode**)** %29, align 8, !dbg !2314, !tbaa !2059
  %218 = icmp eq i32 (%struct.raxNode**)* %217, null, !dbg !2316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2317
  br i1 %218, label %224, label %219, !dbg !2317

; <label>:219:                                    ; preds = %214
  %220 = call i32 %217(%struct.raxNode** nonnull %20) #6, !dbg !2318
  %221 = icmp eq i32 %220, 0, !dbg !2318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2319
  br i1 %221, label %224, label %222, !dbg !2319

; <label>:222:                                    ; preds = %219
  %223 = call i8* @memcpy(i8* %215, i8* nonnull %28, i64 8) #6, !dbg !2320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2320
  br label %224, !dbg !2320

; <label>:224:                                    ; preds = %219, %214, %222
  %225 = load %struct.raxNode*, %struct.raxNode** %20, align 8, !dbg !2321, !tbaa !2179
  %226 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %225, i64 0, i32 0, !dbg !2323
  %227 = load i32, i32* %226, align 4, !dbg !2323
  %228 = and i32 %227, 1, !dbg !2323
  %229 = icmp eq i32 %228, 0, !dbg !2324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2325
  br i1 %229, label %259, label %230, !dbg !2325

; <label>:230:                                    ; preds = %224
  %231 = and i32 %227, 2, !dbg !2329
  %232 = icmp eq i32 %231, 0, !dbg !2330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2331
  br i1 %232, label %233, label %257, !dbg !2331

; <label>:233:                                    ; preds = %230
  %234 = lshr i32 %227, 3, !dbg !2332
  %235 = add nuw nsw i32 %234, 4, !dbg !2332
  %236 = sub nsw i32 4, %234, !dbg !2332
  %237 = and i32 %236, 7, !dbg !2332
  %238 = add nuw nsw i32 %235, %237, !dbg !2332
  %239 = and i32 %227, 4, !dbg !2332
  %240 = icmp eq i32 %239, 0, !dbg !2332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2332
  br i1 %240, label %241, label %244, !dbg !2332

; <label>:241:                                    ; preds = %233
  %242 = and i32 %227, -8, !dbg !2332
  %243 = zext i32 %242 to i64, !dbg !2332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2332
  br label %244, !dbg !2332

; <label>:244:                                    ; preds = %241, %233
  %245 = phi i64 [ %243, %241 ], [ 8, %233 ], !dbg !2332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2332
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %246 = shl i32 %227, 2
  %247 = and i32 %246, 8
  %248 = xor i32 %247, 8
  %249 = add nuw i32 %238, %248, !dbg !2332
  %250 = zext i32 %249 to i64, !dbg !2332
  %251 = add nuw nsw i64 %245, %250, !dbg !2332
  %252 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %225, i64 -2, !dbg !2333
  %253 = bitcast %struct.raxNode* %252 to i8*, !dbg !2333
  %254 = getelementptr inbounds i8, i8* %253, i64 %251, !dbg !2334
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #7, !dbg !2336
  %255 = call i8* @memcpy(i8* nonnull %31, i8* nonnull %254, i64 8) #6, !dbg !2337
  %256 = load i8*, i8** %3, align 8, !dbg !2338, !tbaa !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #7, !dbg !2340
  br label %257

; <label>:257:                                    ; preds = %230, %244
  %258 = phi i8* [ %256, %244 ], [ null, %230 ], !dbg !2341
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2340
  store i8* %258, i8** %30, align 8, !dbg !2342, !tbaa !2056
  br label %259, !dbg !2343

; <label>:259:                                    ; preds = %224, %207, %257
  %260 = phi i32 [ 1, %257 ], [ 1, %207 ], [ 5, %224 ]
  %261 = phi i32 [ 1, %257 ], [ 0, %207 ], [ %121, %224 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2344
  br label %263

; <label>:262:                                    ; preds = %203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2345
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %263

; <label>:263:                                    ; preds = %176, %168, %262, %259
  %264 = phi i32 [ %260, %259 ], [ 0, %262 ], [ 0, %168 ], [ 0, %176 ]
  %265 = phi i32 [ %261, %259 ], [ %121, %262 ], [ %121, %168 ], [ %121, %176 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  switch i32 %264, label %274 [
    i32 0, label %119
    i32 5, label %266
  ], !llvm.loop !2346

; <label>:266:                                    ; preds = %263, %118
  %267 = phi i32 [ %39, %118 ], [ %265, %263 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2349
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %268 = load i32*, i32** %23, align 8, !dbg !2182, !tbaa !2179
  %269 = bitcast i32* %268 to i8*
  br label %35

; <label>:270:                                    ; preds = %68, %116, %129
  %271 = phi i32 [ 1, %129 ], [ 1, %116 ], [ 0, %68 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2350
  br label %272

; <label>:272:                                    ; preds = %50, %270
  %273 = phi i32 [ %271, %270 ], [ 0, %50 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %274

; <label>:274:                                    ; preds = %263, %272
  %275 = phi i32 [ %273, %272 ], [ %265, %263 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %276

; <label>:276:                                    ; preds = %2, %274, %12
  %277 = phi i32 [ 1, %12 ], [ %275, %274 ], [ 1, %2 ], !dbg !2351
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2352
  ret i32 %277, !dbg !2352
}

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc i32 @raxStackPush(%struct.raxStack*, i8*) unnamed_addr #4 !dbg !2353 {
  %3 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %0, i64 0, i32 1, !dbg !2366
  %4 = load i64, i64* %3, align 8, !dbg !2366, !tbaa !1438
  %5 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %0, i64 0, i32 2, !dbg !2367
  %6 = load i64, i64* %5, align 8, !dbg !2367, !tbaa !2368
  %7 = icmp eq i64 %4, %6, !dbg !2369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2370
  %8 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %0, i64 0, i32 0, !dbg !2371
  br i1 %7, label %9, label %40, !dbg !2370

; <label>:9:                                      ; preds = %2
  %10 = load i8**, i8*** %8, align 8, !dbg !2372, !tbaa !1353
  %11 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %0, i64 0, i32 3, i64 0, !dbg !2373
  %12 = icmp eq i8** %10, %11, !dbg !2374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2375
  br i1 %12, label %13, label %26, !dbg !2375

; <label>:13:                                     ; preds = %9
  %14 = shl i64 %4, 4, !dbg !2376
  %15 = tail call i8* @zmalloc(i64 %14) #6, !dbg !2378
  %16 = bitcast %struct.raxStack* %0 to i8**, !dbg !2379
  store i8* %15, i8** %16, align 8, !dbg !2379, !tbaa !1353
  %17 = icmp eq i8* %15, null, !dbg !2380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2382
  br i1 %17, label %18, label %21, !dbg !2382

; <label>:18:                                     ; preds = %13
  store i8** %10, i8*** %8, align 8, !dbg !2383, !tbaa !1353
  %19 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %0, i64 0, i32 4, !dbg !2385
  store i32 1, i32* %19, align 8, !dbg !2386, !tbaa !1359
  %20 = tail call i32* @__errno() #6, !dbg !2387
  store i32 12, i32* %20, align 4, !dbg !2388, !tbaa !48
  br label %45, !dbg !2389

; <label>:21:                                     ; preds = %13
  %22 = bitcast i8** %10 to i8*, !dbg !2390
  %23 = load i64, i64* %5, align 8, !dbg !2391, !tbaa !2368
  %24 = shl i64 %23, 3, !dbg !2392
  %25 = tail call i8* @memcpy(i8* nonnull %15, i8* nonnull %22, i64 %24) #6, !dbg !2393
  br label %36, !dbg !2394

; <label>:26:                                     ; preds = %9
  %27 = bitcast i8** %10 to i8*, !dbg !2395
  %28 = shl i64 %4, 4, !dbg !2396
  %29 = tail call i8* @zrealloc(i8* %27, i64 %28) #6, !dbg !2397
  %30 = icmp eq i8* %29, null, !dbg !2398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2400
  br i1 %30, label %31, label %34, !dbg !2400

; <label>:31:                                     ; preds = %26
  %32 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %0, i64 0, i32 4, !dbg !2401
  store i32 1, i32* %32, align 8, !dbg !2403, !tbaa !1359
  %33 = tail call i32* @__errno() #6, !dbg !2404
  store i32 12, i32* %33, align 4, !dbg !2405, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2406
  br label %45

; <label>:34:                                     ; preds = %26
  %35 = bitcast %struct.raxStack* %0 to i8**, !dbg !2408
  store i8* %29, i8** %35, align 8, !dbg !2408, !tbaa !1353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2409
  br label %36

; <label>:36:                                     ; preds = %34, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %37 = load i64, i64* %5, align 8, !dbg !2410, !tbaa !2368
  %38 = shl i64 %37, 1, !dbg !2410
  store i64 %38, i64* %5, align 8, !dbg !2410, !tbaa !2368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2411
  %39 = load i64, i64* %3, align 8, !dbg !2412, !tbaa !1438
  br label %40, !dbg !2411

; <label>:40:                                     ; preds = %2, %36
  %41 = phi i64 [ %39, %36 ], [ %4, %2 ], !dbg !2412
  %42 = load i8**, i8*** %8, align 8, !dbg !2413, !tbaa !1353
  %43 = getelementptr inbounds i8*, i8** %42, i64 %41, !dbg !2414
  store i8* %1, i8** %43, align 8, !dbg !2415, !tbaa !172
  %44 = add i64 %41, 1, !dbg !2416
  store i64 %44, i64* %3, align 8, !dbg !2416, !tbaa !1438
  br label %45, !dbg !2417

; <label>:45:                                     ; preds = %31, %40, %18
  %46 = phi i32 [ 0, %18 ], [ 1, %40 ], [ 0, %31 ], !dbg !2418
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2419
  ret i32 %46, !dbg !2419
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxSeekGreatest(%struct.raxIterator*) local_unnamed_addr #0 !dbg !2420 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2428
  %2 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 7, !dbg !2429
  %3 = load %struct.raxNode*, %struct.raxNode** %2, align 8, !dbg !2429, !tbaa !2179
  %4 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %3, i64 0, i32 0, !dbg !2430
  %5 = load i32, i32* %4, align 4, !dbg !2430
  %6 = lshr i32 %5, 3, !dbg !2430
  %7 = icmp eq i32 %6, 0, !dbg !2428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2428
  br i1 %7, label %79, label %8, !dbg !2428

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8
  %10 = bitcast %struct.raxNode** %2 to i8*
  br label %11, !dbg !2428

; <label>:11:                                     ; preds = %8, %70
  %12 = phi i32 [ %6, %8 ], [ %77, %70 ]
  %13 = phi i32 [ %5, %8 ], [ %76, %70 ]
  %14 = phi %struct.raxNode* [ %3, %8 ], [ %74, %70 ]
  %15 = and i32 %13, 4, !dbg !2431
  %16 = icmp eq i32 %15, 0, !dbg !2433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2434
  br i1 %16, label %22, label %17, !dbg !2434

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %14, i64 0, i32 1, i64 0, !dbg !2435
  %19 = zext i32 %12 to i64, !dbg !2438
  %20 = tail call i32 @raxIteratorAddChars(%struct.raxIterator* nonnull %0, i8* nonnull %18, i64 %19) #9, !dbg !2441
  %21 = icmp eq i32 %20, 0, !dbg !2441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2442
  br i1 %21, label %79, label %28, !dbg !2442

; <label>:22:                                     ; preds = %11
  %23 = zext i32 %12 to i64, !dbg !2443
  %24 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %14, i64 0, i32 1, i64 %23, !dbg !2443
  %25 = getelementptr inbounds i8, i8* %24, i64 -1, !dbg !2444
  %26 = tail call i32 @raxIteratorAddChars(%struct.raxIterator* nonnull %0, i8* nonnull %25, i64 1) #9, !dbg !2445
  %27 = icmp eq i32 %26, 0, !dbg !2445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2446
  br i1 %27, label %79, label %28, !dbg !2446

; <label>:28:                                     ; preds = %17, %22
  %29 = load %struct.raxNode*, %struct.raxNode** %2, align 8, !dbg !2447, !tbaa !2179
  %30 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %29, i64 0, i32 0, !dbg !2447
  %31 = load i32, i32* %30, align 4, !dbg !2447
  %32 = lshr i32 %31, 3, !dbg !2447
  %33 = add nuw nsw i32 %32, 4, !dbg !2447
  %34 = sub nsw i32 4, %32, !dbg !2447
  %35 = and i32 %34, 7, !dbg !2447
  %36 = add nuw nsw i32 %33, %35, !dbg !2447
  %37 = zext i32 %36 to i64, !dbg !2447
  %38 = and i32 %31, 4, !dbg !2447
  %39 = icmp eq i32 %38, 0, !dbg !2447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2447
  %40 = bitcast %struct.raxNode* %29 to i8*, !dbg !2447
  br i1 %39, label %41, label %44, !dbg !2447

; <label>:41:                                     ; preds = %28
  %42 = and i32 %31, -8, !dbg !2447
  %43 = zext i32 %42 to i64, !dbg !2447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2447
  br label %44, !dbg !2447

; <label>:44:                                     ; preds = %28, %41
  %45 = phi i64 [ %43, %41 ], [ 8, %28 ], !dbg !2447
  %46 = add nuw nsw i64 %45, %37, !dbg !2447
  %47 = and i32 %31, 1, !dbg !2447
  %48 = icmp eq i32 %47, 0, !dbg !2447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2447
  br i1 %48, label %49, label %53, !dbg !2447

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %29, i64 -2, !dbg !2447
  %51 = bitcast %struct.raxNode* %50 to i8*, !dbg !2447
  %52 = getelementptr inbounds i8, i8* %51, i64 %46, !dbg !2447
  br label %64, !dbg !2447

; <label>:53:                                     ; preds = %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %54 = shl i32 %31, 2, !dbg !2447
  %55 = and i32 %54, 8, !dbg !2447
  %56 = xor i32 %55, 8, !dbg !2447
  %57 = zext i32 %56 to i64, !dbg !2447
  %58 = add nuw nsw i64 %46, %57, !dbg !2447
  %59 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %29, i64 -2, !dbg !2447
  %60 = bitcast %struct.raxNode* %59 to i8*, !dbg !2447
  %61 = getelementptr inbounds i8, i8* %60, i64 %58, !dbg !2447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2447
  %62 = and i32 %31, 2, !dbg !2447
  %63 = icmp eq i32 %62, 0, !dbg !2447
  br label %64

; <label>:64:                                     ; preds = %49, %53
  %65 = phi i8* [ %61, %53 ], [ %52, %49 ]
  %66 = phi i1 [ %63, %53 ], [ false, %49 ], !dbg !2448
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %67 = tail call fastcc i32 @raxStackPush(%struct.raxStack* nonnull %9, i8* %40) #9, !dbg !2449
  %68 = icmp eq i32 %67, 0, !dbg !2449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2451
  br i1 %68, label %69, label %70, !dbg !2451

; <label>:69:                                     ; preds = %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2452
  br label %79

; <label>:70:                                     ; preds = %64
  %71 = select i1 %66, i64 -8, i64 0, !dbg !2447
  %72 = getelementptr inbounds i8, i8* %65, i64 %71, !dbg !2447
  %73 = tail call i8* @memcpy(i8* nonnull %10, i8* nonnull %72, i64 8) #6, !dbg !2454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2455
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %74 = load %struct.raxNode*, %struct.raxNode** %2, align 8, !dbg !2429, !tbaa !2179
  %75 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %74, i64 0, i32 0, !dbg !2430
  %76 = load i32, i32* %75, align 4, !dbg !2430
  %77 = lshr i32 %76, 3, !dbg !2430
  %78 = icmp eq i32 %77, 0, !dbg !2428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2428
  br i1 %78, label %79, label %11, !dbg !2428

; <label>:79:                                     ; preds = %70, %22, %17, %1, %69
  %80 = phi i32 [ 0, %69 ], [ 1, %1 ], [ 1, %70 ], [ 0, %22 ], [ 0, %17 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2456
  ret i32 %80, !dbg !2456
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxIteratorPrevStep(%struct.raxIterator*, i32) local_unnamed_addr #0 !dbg !2457 {
  %3 = alloca i8*, align 8
  %4 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 0, !dbg !2474
  %5 = load i32, i32* %4, align 8, !dbg !2474, !tbaa !2043
  %6 = and i32 %5, 2, !dbg !2476
  %7 = icmp eq i32 %6, 0, !dbg !2476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2477
  br i1 %7, label %8, label %211, !dbg !2477

; <label>:8:                                      ; preds = %2
  %9 = and i32 %5, 1, !dbg !2478
  %10 = icmp eq i32 %9, 0, !dbg !2478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2480
  br i1 %10, label %13, label %11, !dbg !2480

; <label>:11:                                     ; preds = %8
  %12 = and i32 %5, -2, !dbg !2481
  store i32 %12, i32* %4, align 8, !dbg !2481, !tbaa !2043
  br label %211, !dbg !2483

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 4, !dbg !2484
  %15 = load i64, i64* %14, align 8, !dbg !2484, !tbaa !2088
  %16 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, !dbg !2486
  %17 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 1, !dbg !2487
  %18 = load i64, i64* %17, align 8, !dbg !2487, !tbaa !2176
  %19 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 7, !dbg !2489
  %20 = bitcast %struct.raxNode** %19 to i64*, !dbg !2489
  %21 = load i64, i64* %20, align 8, !dbg !2489, !tbaa !2179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2491
  %22 = icmp ne i32 %1, 0, !dbg !2491
  %23 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 2
  %24 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 1
  %25 = bitcast %struct.raxNode** %19 to i8**
  %26 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %16, i64 0, i32 0
  %27 = bitcast %struct.raxNode** %19 to i8*
  %28 = inttoptr i64 %21 to %struct.raxNode*, !dbg !2491
  %29 = inttoptr i64 %21 to i32*, !dbg !2491
  %30 = bitcast %struct.raxNode** %19 to i32**
  br label %31, !dbg !2491

; <label>:31:                                     ; preds = %207, %13
  %32 = phi %struct.raxNode* [ %28, %13 ], [ %168, %207 ]
  %33 = phi %struct.raxNode* [ %28, %13 ], [ %169, %207 ]
  %34 = phi i32* [ %29, %13 ], [ %208, %207 ]
  %35 = phi i1 [ %22, %13 ], [ false, %207 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2492
  br i1 %35, label %62, label %36, !dbg !2492

; <label>:36:                                     ; preds = %31
  %37 = load %struct.rax*, %struct.rax** %24, align 8, !dbg !2494, !tbaa !2047
  %38 = getelementptr inbounds %struct.rax, %struct.rax* %37, i64 0, i32 0, !dbg !2495
  %39 = load %struct.raxNode*, %struct.raxNode** %38, align 8, !dbg !2495, !tbaa !125
  %40 = icmp eq %struct.raxNode* %33, %39, !dbg !2496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2497
  br i1 %40, label %41, label %44, !dbg !2497

; <label>:41:                                     ; preds = %36
  %42 = load i32, i32* %4, align 8, !dbg !2498, !tbaa !2043
  %43 = or i32 %42, 2, !dbg !2498
  store i32 %43, i32* %4, align 8, !dbg !2498, !tbaa !2043
  store i64 %18, i64* %17, align 8, !dbg !2500, !tbaa !2176
  store i64 %15, i64* %14, align 8, !dbg !2501, !tbaa !2088
  store i64 %21, i64* %20, align 8, !dbg !2502, !tbaa !2179
  br label %209

; <label>:44:                                     ; preds = %36
  %45 = load i8*, i8** %23, align 8, !dbg !2503, !tbaa !2052
  %46 = load i64, i64* %14, align 8, !dbg !2504, !tbaa !2088
  %47 = add i64 %46, -1, !dbg !2505
  %48 = getelementptr inbounds i8, i8* %45, i64 %47, !dbg !2506
  %49 = load i8, i8* %48, align 1, !dbg !2506, !tbaa !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2508
  %50 = load i64, i64* %17, align 8, !dbg !2513, !tbaa !1438
  %51 = icmp eq i64 %50, 0, !dbg !2514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2515
  br i1 %51, label %58, label %52, !dbg !2515

; <label>:52:                                     ; preds = %44
  %53 = add i64 %50, -1, !dbg !2516
  store i64 %53, i64* %17, align 8, !dbg !2516, !tbaa !1438
  %54 = load i8**, i8*** %26, align 8, !dbg !2517, !tbaa !1353
  %55 = getelementptr inbounds i8*, i8** %54, i64 %53, !dbg !2518
  %56 = load i8*, i8** %55, align 8, !dbg !2518, !tbaa !172
  %57 = bitcast i8* %56 to i32*, !dbg !2519
  br label %58, !dbg !2519

; <label>:58:                                     ; preds = %44, %52
  %59 = phi i32* [ %57, %52 ], [ null, %44 ], !dbg !2520
  %60 = phi i8* [ %56, %52 ], [ null, %44 ], !dbg !2520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2522
  store i32* %59, i32** %30, align 8, !dbg !2523, !tbaa !2179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2524
  %61 = bitcast i8* %60 to %struct.raxNode*, !dbg !2524
  br label %68, !dbg !2524

; <label>:62:                                     ; preds = %31
  %63 = load i8*, i8** %23, align 8, !dbg !2503, !tbaa !2052
  %64 = load i64, i64* %14, align 8, !dbg !2504, !tbaa !2088
  %65 = add i64 %64, -1, !dbg !2505
  %66 = getelementptr inbounds i8, i8* %63, i64 %65, !dbg !2506
  %67 = load i8, i8* %66, align 1, !dbg !2506, !tbaa !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2508
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %68

; <label>:68:                                     ; preds = %62, %58
  %69 = phi i8 [ %67, %62 ], [ %49, %58 ]
  %70 = phi i64 [ %64, %62 ], [ %46, %58 ]
  %71 = phi %struct.raxNode* [ %32, %62 ], [ %61, %58 ]
  %72 = phi %struct.raxNode* [ %33, %62 ], [ %61, %58 ]
  %73 = phi i32* [ %34, %62 ], [ %59, %58 ], !dbg !2525
  %74 = load i32, i32* %73, align 4, !dbg !2526
  %75 = and i32 %74, 4, !dbg !2526
  %76 = icmp eq i32 %75, 0, !dbg !2527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2527
  br i1 %76, label %79, label %77, !dbg !2527

; <label>:77:                                     ; preds = %68
  %78 = lshr i32 %74, 3, !dbg !2528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2527
  br label %79, !dbg !2527

; <label>:79:                                     ; preds = %68, %77
  %80 = phi i32 [ %78, %77 ], [ 1, %68 ], !dbg !2527
  %81 = zext i32 %80 to i64, !dbg !2530
  %82 = sub i64 %70, %81, !dbg !2534
  store i64 %82, i64* %14, align 8, !dbg !2534, !tbaa !2088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2535
  %83 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %72, i64 0, i32 0, !dbg !2536
  %84 = load i32, i32* %83, align 4, !dbg !2536
  %85 = and i32 %84, 4, !dbg !2536
  %86 = icmp eq i32 %85, 0, !dbg !2537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2538
  br i1 %86, label %87, label %167, !dbg !2538

; <label>:87:                                     ; preds = %79
  %88 = lshr i32 %84, 3, !dbg !2539
  %89 = xor i1 %35, true, !dbg !2540
  %90 = zext i1 %89 to i32, !dbg !2540
  %91 = icmp ugt i32 %88, %90, !dbg !2541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2542
  br i1 %91, label %92, label %167, !dbg !2542

; <label>:92:                                     ; preds = %87
  %93 = add nuw nsw i32 %88, 4, !dbg !2543
  %94 = sub nsw i32 4, %88, !dbg !2543
  %95 = and i32 %94, 7, !dbg !2543
  %96 = add nuw nsw i32 %93, %95, !dbg !2543
  %97 = zext i32 %96 to i64, !dbg !2543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2543
  %98 = and i32 %84, -8, !dbg !2543
  %99 = zext i32 %98 to i64, !dbg !2543
  %100 = add nuw nsw i64 %97, %99, !dbg !2543
  %101 = load i32, i32* %73, align 4, !dbg !2543
  %102 = and i32 %101, 1, !dbg !2543
  %103 = icmp eq i32 %102, 0, !dbg !2543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2543
  br i1 %103, label %104, label %108, !dbg !2543

; <label>:104:                                    ; preds = %92
  %105 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %72, i64 -2, !dbg !2543
  %106 = bitcast %struct.raxNode* %105 to i8*, !dbg !2543
  %107 = getelementptr inbounds i8, i8* %106, i64 %100, !dbg !2543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2543
  br label %120, !dbg !2543

; <label>:108:                                    ; preds = %92
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %109 = shl i32 %101, 2, !dbg !2543
  %110 = and i32 %109, 8, !dbg !2543
  %111 = xor i32 %110, 8, !dbg !2543
  %112 = zext i32 %111 to i64, !dbg !2543
  %113 = add nuw nsw i64 %100, %112, !dbg !2543
  %114 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %72, i64 -2, !dbg !2543
  %115 = bitcast %struct.raxNode* %114 to i8*, !dbg !2543
  %116 = getelementptr inbounds i8, i8* %115, i64 %113, !dbg !2543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2543
  %117 = and i32 %101, 2, !dbg !2543
  %118 = icmp eq i32 %117, 0, !dbg !2543
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %119 = select i1 %118, i64 -8, i64 0, !dbg !2543
  br label %120, !dbg !2543

; <label>:120:                                    ; preds = %108, %104
  %121 = phi i8* [ %107, %104 ], [ %116, %108 ]
  %122 = phi i64 [ 0, %104 ], [ %119, %108 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2545
  %123 = icmp ult i32 %101, 8, !dbg !2546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2545
  br i1 %123, label %124, label %125, !dbg !2545

; <label>:124:                                    ; preds = %120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2548
  br label %165, !dbg !2548

; <label>:125:                                    ; preds = %120
  %126 = getelementptr inbounds i8, i8* %121, i64 %122, !dbg !2543
  %127 = bitcast i8* %126 to %struct.raxNode**, !dbg !2543
  %128 = lshr i32 %101, 3, !dbg !2549
  %129 = zext i32 %128 to i64, !dbg !2549
  %130 = add nsw i64 %129, -1, !dbg !2549
  br label %131, !dbg !2549

; <label>:131:                                    ; preds = %125, %138
  %132 = phi i64 [ %130, %125 ], [ %140, %138 ]
  %133 = phi %struct.raxNode** [ %127, %125 ], [ %139, %138 ]
  %134 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %72, i64 0, i32 1, i64 %132, !dbg !2549
  %135 = load i8, i8* %134, align 1, !dbg !2549, !tbaa !280
  %136 = icmp ult i8 %135, %69, !dbg !2552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2553
  br i1 %136, label %137, label %138, !dbg !2553

; <label>:137:                                    ; preds = %131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2548
  br label %145, !dbg !2548

; <label>:138:                                    ; preds = %131
  %139 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %133, i64 -1, !dbg !2554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2545
  %140 = add i64 %132, -1, !dbg !2555
  %141 = icmp sgt i64 %132, 0, !dbg !2546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2545
  br i1 %141, label %131, label %142, !dbg !2545, !llvm.loop !2556

; <label>:142:                                    ; preds = %138
  %143 = trunc i64 %132 to i32, !dbg !2558
  %144 = icmp eq i32 %143, 0, !dbg !2558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2548
  br i1 %144, label %165, label %145, !dbg !2548

; <label>:145:                                    ; preds = %137, %142
  %146 = phi %struct.raxNode** [ %133, %137 ], [ %139, %142 ]
  %147 = phi i64 [ %132, %137 ], [ %140, %142 ]
  %148 = shl i64 %147, 32, !dbg !2560
  %149 = ashr exact i64 %148, 32, !dbg !2560
  %150 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %72, i64 0, i32 1, i64 %149, !dbg !2560
  %151 = tail call i32 @raxIteratorAddChars(%struct.raxIterator* %0, i8* nonnull %150, i64 1) #9, !dbg !2563
  %152 = icmp eq i32 %151, 0, !dbg !2563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2564
  br i1 %152, label %164, label %153, !dbg !2564

; <label>:153:                                    ; preds = %145
  %154 = load i8*, i8** %25, align 8, !dbg !2565, !tbaa !2179
  %155 = tail call fastcc i32 @raxStackPush(%struct.raxStack* nonnull %16, i8* %154) #9, !dbg !2567
  %156 = icmp eq i32 %155, 0, !dbg !2567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2568
  br i1 %156, label %164, label %157, !dbg !2568

; <label>:157:                                    ; preds = %153
  %158 = bitcast %struct.raxNode** %146 to i8*, !dbg !2569
  %159 = tail call i8* @memcpy(i8* nonnull %27, i8* %158, i64 8) #6, !dbg !2570
  %160 = tail call i32 @raxSeekGreatest(%struct.raxIterator* nonnull %0) #9, !dbg !2571
  %161 = icmp eq i32 %160, 0, !dbg !2571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2573
  br i1 %161, label %164, label %162, !dbg !2573

; <label>:162:                                    ; preds = %157
  %163 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !2574, !tbaa !2179
  br label %165, !dbg !2573

; <label>:164:                                    ; preds = %157, %153, %145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2576
  br label %205

; <label>:165:                                    ; preds = %124, %162, %142
  %166 = phi %struct.raxNode* [ %163, %162 ], [ %71, %142 ], [ %71, %124 ], !dbg !2574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2577
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %167

; <label>:167:                                    ; preds = %165, %79, %87
  %168 = phi %struct.raxNode* [ %166, %165 ], [ %71, %79 ], [ %71, %87 ]
  %169 = phi %struct.raxNode* [ %166, %165 ], [ %72, %79 ], [ %72, %87 ], !dbg !2574
  %170 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %169, i64 0, i32 0, !dbg !2578
  %171 = load i32, i32* %170, align 4, !dbg !2578
  %172 = and i32 %171, 1, !dbg !2578
  %173 = icmp eq i32 %172, 0, !dbg !2579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2580
  br i1 %173, label %207, label %174, !dbg !2580

; <label>:174:                                    ; preds = %167
  %175 = and i32 %171, 2, !dbg !2584
  %176 = icmp eq i32 %175, 0, !dbg !2585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2586
  br i1 %176, label %177, label %202, !dbg !2586

; <label>:177:                                    ; preds = %174
  %178 = bitcast %struct.raxNode* %169 to i8*, !dbg !2587
  %179 = lshr i32 %171, 3, !dbg !2588
  %180 = add nuw nsw i32 %179, 4, !dbg !2588
  %181 = sub nsw i32 4, %179, !dbg !2588
  %182 = and i32 %181, 7, !dbg !2588
  %183 = add nuw nsw i32 %180, %182, !dbg !2588
  %184 = and i32 %171, 4, !dbg !2588
  %185 = icmp eq i32 %184, 0, !dbg !2588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2588
  br i1 %185, label %186, label %189, !dbg !2588

; <label>:186:                                    ; preds = %177
  %187 = and i32 %171, -8, !dbg !2588
  %188 = zext i32 %187 to i64, !dbg !2588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2588
  br label %189, !dbg !2588

; <label>:189:                                    ; preds = %186, %177
  %190 = phi i64 [ %188, %186 ], [ 8, %177 ], !dbg !2588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2588
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %191 = shl i32 %171, 2
  %192 = and i32 %191, 8
  %193 = xor i32 %192, 8
  %194 = add nuw i32 %183, %193, !dbg !2588
  %195 = zext i32 %194 to i64, !dbg !2588
  %196 = add nuw nsw i64 %190, %195, !dbg !2588
  %197 = getelementptr inbounds i8, i8* %178, i64 %196, !dbg !2589
  %198 = getelementptr inbounds i8, i8* %197, i64 -8, !dbg !2590
  %199 = bitcast i8** %3 to i8*, !dbg !2592
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %199) #7, !dbg !2592
  %200 = call i8* @memcpy(i8* nonnull %199, i8* nonnull %198, i64 8) #6, !dbg !2593
  %201 = load i8*, i8** %3, align 8, !dbg !2594, !tbaa !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %199) #7, !dbg !2596
  br label %202

; <label>:202:                                    ; preds = %174, %189
  %203 = phi i8* [ %201, %189 ], [ null, %174 ], !dbg !2597
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2596
  %204 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 3, !dbg !2598
  store i8* %203, i8** %204, align 8, !dbg !2599, !tbaa !2056
  br label %205, !dbg !2600

; <label>:205:                                    ; preds = %202, %164
  %206 = phi i32 [ 0, %164 ], [ 1, %202 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %209

; <label>:207:                                    ; preds = %167
  %208 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %169, i64 0, i32 0, !dbg !2580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2601
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %31

; <label>:209:                                    ; preds = %205, %41
  %210 = phi i32 [ 1, %41 ], [ %206, %205 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %211

; <label>:211:                                    ; preds = %2, %209, %11
  %212 = phi i32 [ 1, %11 ], [ %210, %209 ], [ 1, %2 ], !dbg !2602
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2603
  ret i32 %212, !dbg !2603
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxSeek(%struct.raxIterator*, i8* nocapture readonly, i8*, i64) local_unnamed_addr #0 !dbg !2604 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.raxNode*, align 8
  %10 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, !dbg !2650
  %11 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 1, !dbg !2651
  store i64 0, i64* %11, align 8, !dbg !2652, !tbaa !2176
  %12 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 0, !dbg !2653
  %13 = load i32, i32* %12, align 8, !dbg !2654, !tbaa !2043
  %14 = and i32 %13, -4, !dbg !2655
  %15 = or i32 %14, 1, !dbg !2655
  store i32 %15, i32* %12, align 8, !dbg !2655, !tbaa !2043
  %16 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 4, !dbg !2656
  store i64 0, i64* %16, align 8, !dbg !2657, !tbaa !2088
  %17 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 7, !dbg !2658
  store %struct.raxNode* null, %struct.raxNode** %17, align 8, !dbg !2659, !tbaa !2179
  %18 = load i8, i8* %1, align 1, !dbg !2660, !tbaa !280
  %19 = icmp eq i8 %18, 62, !dbg !2662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2663
  br i1 %19, label %20, label %25, !dbg !2663

; <label>:20:                                     ; preds = %4
  %21 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2664
  %22 = load i8, i8* %21, align 1, !dbg !2664, !tbaa !280
  %23 = icmp eq i8 %22, 61, !dbg !2667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2668
  br i1 %23, label %24, label %43, !dbg !2668

; <label>:24:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2669
  br label %43, !dbg !2669

; <label>:25:                                     ; preds = %4
  %26 = icmp eq i8 %18, 60, !dbg !2670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2672
  br i1 %26, label %27, label %32, !dbg !2672

; <label>:27:                                     ; preds = %25
  %28 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2673
  %29 = load i8, i8* %28, align 1, !dbg !2673, !tbaa !280
  %30 = icmp eq i8 %29, 61, !dbg !2676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2677
  br i1 %30, label %31, label %43, !dbg !2677

; <label>:31:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2678
  br label %43, !dbg !2678

; <label>:32:                                     ; preds = %25
  %33 = icmp eq i8 %18, 61, !dbg !2679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2681
  br i1 %33, label %34, label %35, !dbg !2681

; <label>:34:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2682
  br label %43, !dbg !2682

; <label>:35:                                     ; preds = %32
  %36 = icmp eq i8 %18, 94, !dbg !2684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2686
  br i1 %36, label %37, label %38, !dbg !2686

; <label>:37:                                     ; preds = %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2687
  br label %43, !dbg !2687

; <label>:38:                                     ; preds = %35
  %39 = icmp eq i8 %18, 36, !dbg !2689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2691
  br i1 %39, label %40, label %41, !dbg !2691

; <label>:40:                                     ; preds = %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %43

; <label>:41:                                     ; preds = %38
  %42 = tail call i32* @__errno() #6, !dbg !2692
  store i32 0, i32* %42, align 4, !dbg !2694, !tbaa !48
  br label %389, !dbg !2695

; <label>:43:                                     ; preds = %31, %27, %37, %40, %34, %20, %24
  %44 = phi i32 [ 0, %24 ], [ 0, %20 ], [ 0, %31 ], [ 0, %27 ], [ 0, %34 ], [ 0, %37 ], [ 1, %40 ], !dbg !2696
  %45 = phi i32 [ 0, %24 ], [ 0, %20 ], [ 0, %31 ], [ 0, %27 ], [ 0, %34 ], [ 1, %37 ], [ 0, %40 ], !dbg !2698
  %46 = phi i32 [ 1, %24 ], [ 1, %20 ], [ 0, %31 ], [ 0, %27 ], [ 0, %34 ], [ 0, %37 ], [ 0, %40 ], !dbg !2698
  %47 = phi i32 [ 0, %24 ], [ 0, %20 ], [ 1, %31 ], [ 1, %27 ], [ 0, %34 ], [ 0, %37 ], [ 0, %40 ], !dbg !2698
  %48 = phi i32 [ 1, %24 ], [ 0, %20 ], [ 1, %31 ], [ 0, %27 ], [ 1, %34 ], [ 0, %37 ], [ 0, %40 ], !dbg !2698
  %49 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 1, !dbg !2699
  %50 = load %struct.rax*, %struct.rax** %49, align 8, !dbg !2699, !tbaa !2047
  %51 = getelementptr inbounds %struct.rax, %struct.rax* %50, i64 0, i32 1, !dbg !2701
  %52 = load i64, i64* %51, align 8, !dbg !2701, !tbaa !645
  %53 = icmp eq i64 %52, 0, !dbg !2702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2703
  br i1 %53, label %54, label %56, !dbg !2703

; <label>:54:                                     ; preds = %43
  %55 = or i32 %13, 3, !dbg !2704
  store i32 %55, i32* %12, align 8, !dbg !2704, !tbaa !2043
  br label %389, !dbg !2706

; <label>:56:                                     ; preds = %43
  %57 = icmp eq i32 %45, 0, !dbg !2707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2709
  br i1 %57, label %60, label %58, !dbg !2709

; <label>:58:                                     ; preds = %56
  %59 = tail call i32 @raxSeek(%struct.raxIterator* nonnull %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* null, i64 0) #9, !dbg !2710
  br label %389, !dbg !2712

; <label>:60:                                     ; preds = %56
  %61 = icmp eq i32 %44, 0, !dbg !2713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2715
  br i1 %61, label %106, label %62, !dbg !2715

; <label>:62:                                     ; preds = %60
  %63 = bitcast %struct.rax* %50 to i64*, !dbg !2716
  %64 = load i64, i64* %63, align 8, !dbg !2716, !tbaa !125
  %65 = bitcast %struct.raxNode** %17 to i64*, !dbg !2718
  store i64 %64, i64* %65, align 8, !dbg !2718, !tbaa !2179
  %66 = tail call i32 @raxSeekGreatest(%struct.raxIterator* nonnull %0) #9, !dbg !2719
  %67 = icmp eq i32 %66, 0, !dbg !2719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2721
  br i1 %67, label %389, label %68, !dbg !2721

; <label>:68:                                     ; preds = %62
  %69 = load %struct.raxNode*, %struct.raxNode** %17, align 8, !dbg !2722, !tbaa !2179
  %70 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %69, i64 0, i32 0, !dbg !2722
  %71 = load i32, i32* %70, align 4, !dbg !2722
  %72 = and i32 %71, 1, !dbg !2722
  %73 = icmp eq i32 %72, 0, !dbg !2722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2722
  br i1 %73, label %74, label %75, !dbg !2722

; <label>:74:                                     ; preds = %68
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 1553, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.raxSeek, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !2722
  unreachable

; <label>:75:                                     ; preds = %68
  %76 = and i32 %71, 2, !dbg !2725
  %77 = icmp eq i32 %76, 0, !dbg !2726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2727
  br i1 %77, label %78, label %103, !dbg !2727

; <label>:78:                                     ; preds = %75
  %79 = bitcast %struct.raxNode* %69 to i8*, !dbg !2728
  %80 = lshr i32 %71, 3, !dbg !2729
  %81 = add nuw nsw i32 %80, 4, !dbg !2729
  %82 = sub nsw i32 4, %80, !dbg !2729
  %83 = and i32 %82, 7, !dbg !2729
  %84 = add nuw nsw i32 %81, %83, !dbg !2729
  %85 = and i32 %71, 4, !dbg !2729
  %86 = icmp eq i32 %85, 0, !dbg !2729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2729
  br i1 %86, label %87, label %90, !dbg !2729

; <label>:87:                                     ; preds = %78
  %88 = and i32 %71, -8, !dbg !2729
  %89 = zext i32 %88 to i64, !dbg !2729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2729
  br label %90, !dbg !2729

; <label>:90:                                     ; preds = %87, %78
  %91 = phi i64 [ %89, %87 ], [ 8, %78 ], !dbg !2729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2729
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %92 = shl i32 %71, 2
  %93 = and i32 %92, 8
  %94 = xor i32 %93, 8
  %95 = add nuw i32 %84, %94, !dbg !2729
  %96 = zext i32 %95 to i64, !dbg !2729
  %97 = add nuw nsw i64 %91, %96, !dbg !2729
  %98 = getelementptr inbounds i8, i8* %79, i64 %97, !dbg !2730
  %99 = getelementptr inbounds i8, i8* %98, i64 -8, !dbg !2731
  %100 = bitcast i8** %7 to i8*, !dbg !2733
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %100) #7, !dbg !2733
  %101 = call i8* @memcpy(i8* nonnull %100, i8* nonnull %99, i64 8) #6, !dbg !2734
  %102 = load i8*, i8** %7, align 8, !dbg !2735, !tbaa !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %100) #7, !dbg !2737
  br label %103

; <label>:103:                                    ; preds = %75, %90
  %104 = phi i8* [ %102, %90 ], [ null, %75 ], !dbg !2738
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2737
  %105 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 3, !dbg !2739
  store i8* %104, i8** %105, align 8, !dbg !2740, !tbaa !2056
  br label %389, !dbg !2741

; <label>:106:                                    ; preds = %60
  %107 = bitcast i32* %8 to i8*, !dbg !2742
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %107) #7, !dbg !2742
  store i32 0, i32* %8, align 4, !dbg !2743, !tbaa !48
  %108 = call fastcc i64 @raxLowWalk(%struct.rax* %50, i8* %2, i64 %3, %struct.raxNode** nonnull %17, %struct.raxNode*** null, i32* nonnull %8, %struct.raxStack* nonnull %10) #9, !dbg !2744
  %109 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 4, !dbg !2746
  %110 = load i32, i32* %109, align 8, !dbg !2746, !tbaa !2748
  %111 = icmp eq i32 %110, 0, !dbg !2749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2750
  br i1 %111, label %112, label %385, !dbg !2750

; <label>:112:                                    ; preds = %106
  %113 = icmp eq i32 %48, 0, !dbg !2751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2752
  br i1 %113, label %171, label %114, !dbg !2752

; <label>:114:                                    ; preds = %112
  %115 = icmp eq i64 %108, %3, !dbg !2753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2754
  br i1 %115, label %116, label %171, !dbg !2754

; <label>:116:                                    ; preds = %114
  %117 = bitcast %struct.raxNode** %17 to i32**, !dbg !2755
  %118 = load i32*, i32** %117, align 8, !dbg !2755, !tbaa !2179
  %119 = load i32, i32* %118, align 4, !dbg !2756
  %120 = and i32 %119, 4, !dbg !2756
  %121 = icmp eq i32 %120, 0, !dbg !2757
  %122 = load i32, i32* %8, align 4, !dbg !2758
  %123 = icmp eq i32 %122, 0, !dbg !2759
  %124 = or i1 %121, %123, !dbg !2760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2760
  br i1 %124, label %125, label %171, !dbg !2760

; <label>:125:                                    ; preds = %116
  %126 = and i32 %119, 1, !dbg !2761
  %127 = icmp eq i32 %126, 0, !dbg !2762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2763
  br i1 %127, label %171, label %128, !dbg !2763

; <label>:128:                                    ; preds = %125
  %129 = call i32 @raxIteratorAddChars(%struct.raxIterator* nonnull %0, i8* %2, i64 %3) #9, !dbg !2764
  %130 = icmp eq i32 %129, 0, !dbg !2764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2767
  br i1 %130, label %385, label %131, !dbg !2767

; <label>:131:                                    ; preds = %128
  %132 = load %struct.raxNode*, %struct.raxNode** %17, align 8, !dbg !2768, !tbaa !2179
  %133 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %132, i64 0, i32 0, !dbg !2771
  %134 = load i32, i32* %133, align 4, !dbg !2771
  %135 = and i32 %134, 2, !dbg !2771
  %136 = icmp eq i32 %135, 0, !dbg !2772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2773
  br i1 %136, label %137, label %168, !dbg !2773

; <label>:137:                                    ; preds = %131
  %138 = bitcast %struct.raxNode* %132 to i8*, !dbg !2774
  %139 = lshr i32 %134, 3, !dbg !2775
  %140 = add nuw nsw i32 %139, 4, !dbg !2775
  %141 = sub nsw i32 4, %139, !dbg !2775
  %142 = and i32 %141, 7, !dbg !2775
  %143 = add nuw nsw i32 %140, %142, !dbg !2775
  %144 = zext i32 %143 to i64, !dbg !2775
  %145 = and i32 %134, 4, !dbg !2775
  %146 = icmp eq i32 %145, 0, !dbg !2775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2775
  br i1 %146, label %147, label %150, !dbg !2775

; <label>:147:                                    ; preds = %137
  %148 = and i32 %134, -8, !dbg !2775
  %149 = zext i32 %148 to i64, !dbg !2775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2775
  br label %150, !dbg !2775

; <label>:150:                                    ; preds = %147, %137
  %151 = phi i64 [ %149, %147 ], [ 8, %137 ], !dbg !2775
  %152 = add nuw nsw i64 %151, %144, !dbg !2775
  %153 = and i32 %134, 1, !dbg !2775
  %154 = icmp eq i32 %153, 0, !dbg !2775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2775
  br i1 %154, label %160, label %155, !dbg !2775

; <label>:155:                                    ; preds = %150
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %156 = shl i32 %134, 2
  %157 = and i32 %156, 8
  %158 = xor i32 %157, 8
  %159 = zext i32 %158 to i64
  br label %160

; <label>:160:                                    ; preds = %155, %150
  %161 = phi i64 [ 0, %150 ], [ %159, %155 ]
  %162 = add nuw nsw i64 %152, %161, !dbg !2775
  %163 = getelementptr inbounds i8, i8* %138, i64 %162, !dbg !2776
  %164 = getelementptr inbounds i8, i8* %163, i64 -8, !dbg !2777
  %165 = bitcast i8** %6 to i8*, !dbg !2779
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %165) #7, !dbg !2779
  %166 = call i8* @memcpy(i8* nonnull %165, i8* nonnull %164, i64 8) #6, !dbg !2780
  %167 = load i8*, i8** %6, align 8, !dbg !2781, !tbaa !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %165) #7, !dbg !2783
  br label %168

; <label>:168:                                    ; preds = %131, %160
  %169 = phi i8* [ %167, %160 ], [ null, %131 ], !dbg !2784
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2783
  %170 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 3, !dbg !2785
  store i8* %169, i8** %170, align 8, !dbg !2786, !tbaa !2056
  br label %384, !dbg !2787

; <label>:171:                                    ; preds = %125, %112, %116, %114
  %172 = icmp ne i32 %47, 0, !dbg !2788
  %173 = icmp ne i32 %46, 0, !dbg !2789
  %174 = or i32 %47, %46, !dbg !2790
  %175 = icmp eq i32 %174, 0, !dbg !2790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2790
  br i1 %175, label %381, label %176, !dbg !2790

; <label>:176:                                    ; preds = %171
  %177 = bitcast %struct.raxNode** %17 to i8**, !dbg !2791
  %178 = load i8*, i8** %177, align 8, !dbg !2791, !tbaa !2179
  %179 = call fastcc i32 @raxStackPush(%struct.raxStack* nonnull %10, i8* %178) #9, !dbg !2793
  %180 = icmp eq i32 %179, 0, !dbg !2793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2795
  br i1 %180, label %387, label %181, !dbg !2794

; <label>:181:                                    ; preds = %176
  %182 = load i64, i64* %11, align 8, !dbg !2797, !tbaa !2176
  %183 = icmp ugt i64 %182, 1, !dbg !2798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2799
  br i1 %183, label %184, label %237, !dbg !2799

; <label>:184:                                    ; preds = %181
  %185 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %10, i64 0, i32 0
  %186 = bitcast %struct.raxNode** %9 to i8*
  br label %187, !dbg !2799

; <label>:187:                                    ; preds = %184, %232
  %188 = phi i64 [ 1, %184 ], [ %233, %232 ]
  %189 = load i8**, i8*** %185, align 8, !dbg !2800, !tbaa !2801
  %190 = add i64 %188, -1, !dbg !2802
  %191 = getelementptr inbounds i8*, i8** %189, i64 %190, !dbg !2803
  %192 = bitcast i8** %191 to %struct.raxNode**, !dbg !2803
  %193 = load %struct.raxNode*, %struct.raxNode** %192, align 8, !dbg !2803, !tbaa !172
  %194 = getelementptr inbounds i8*, i8** %189, i64 %188, !dbg !2805
  %195 = bitcast i8** %194 to %struct.raxNode**, !dbg !2805
  %196 = load %struct.raxNode*, %struct.raxNode** %195, align 8, !dbg !2805, !tbaa !172
  %197 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %193, i64 0, i32 0, !dbg !2807
  %198 = load i32, i32* %197, align 4, !dbg !2807
  %199 = and i32 %198, 4, !dbg !2807
  %200 = icmp eq i32 %199, 0, !dbg !2808
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2809
  %201 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %193, i64 0, i32 1, i64 0, !dbg !2810
  %202 = lshr i32 %198, 3, !dbg !2810
  %203 = zext i32 %202 to i64, !dbg !2810
  br i1 %200, label %208, label %204, !dbg !2809

; <label>:204:                                    ; preds = %187
  %205 = call i32 @raxIteratorAddChars(%struct.raxIterator* nonnull %0, i8* nonnull %201, i64 %203) #9, !dbg !2813
  %206 = icmp eq i32 %205, 0, !dbg !2813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2814
  br i1 %206, label %207, label %232, !dbg !2814

; <label>:207:                                    ; preds = %204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2815
  br label %236, !dbg !2815

; <label>:208:                                    ; preds = %187
  %209 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %193, i64 0, i32 1, i64 %203, !dbg !2816
  %210 = sub nsw i32 4, %202, !dbg !2816
  %211 = and i32 %210, 7, !dbg !2816
  %212 = zext i32 %211 to i64, !dbg !2816
  %213 = getelementptr inbounds i8, i8* %209, i64 %212, !dbg !2816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2818
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %186) #7, !dbg !2819
  %214 = call i8* @memcpy(i8* nonnull %186, i8* nonnull %213, i64 8) #6, !dbg !2820
  %215 = load %struct.raxNode*, %struct.raxNode** %9, align 8, !dbg !2821, !tbaa !172
  %216 = icmp eq %struct.raxNode* %215, %196, !dbg !2824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2825
  br i1 %216, label %228, label %217, !dbg !2825

; <label>:217:                                    ; preds = %208
  %218 = bitcast i8* %213 to %struct.raxNode**, !dbg !2816
  br label %219, !dbg !2827

; <label>:219:                                    ; preds = %217, %219
  %220 = phi i8* [ %223, %219 ], [ %201, %217 ]
  %221 = phi %struct.raxNode** [ %222, %219 ], [ %218, %217 ]
  %222 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %221, i64 1, !dbg !2827
  %223 = getelementptr inbounds i8, i8* %220, i64 1, !dbg !2828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2829
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %186) #7, !dbg !2829
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %186) #7, !dbg !2819
  %224 = bitcast %struct.raxNode** %222 to i8*, !dbg !2830
  %225 = call i8* @memcpy(i8* nonnull %186, i8* nonnull %224, i64 8) #6, !dbg !2820
  %226 = load %struct.raxNode*, %struct.raxNode** %9, align 8, !dbg !2821, !tbaa !172
  %227 = icmp eq %struct.raxNode* %226, %196, !dbg !2824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2825
  br i1 %227, label %228, label %219, !dbg !2825

; <label>:228:                                    ; preds = %219, %208
  %229 = phi i8* [ %201, %208 ], [ %223, %219 ], !dbg !2817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2831
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %186) #7, !dbg !2829
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %230 = call i32 @raxIteratorAddChars(%struct.raxIterator* %0, i8* nonnull %229, i64 1) #9, !dbg !2832
  %231 = icmp eq i32 %230, 0, !dbg !2832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2835
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %231, label %236, label %232

; <label>:232:                                    ; preds = %228, %204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2836
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %233 = add nuw i64 %188, 1, !dbg !2837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2838
  %234 = load i64, i64* %11, align 8, !dbg !2797, !tbaa !2176
  %235 = icmp ult i64 %233, %234, !dbg !2798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2799
  br i1 %235, label %187, label %237, !dbg !2799, !llvm.loop !2839

; <label>:236:                                    ; preds = %228, %207
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %385

; <label>:237:                                    ; preds = %232, %181
  %238 = phi i64 [ %182, %181 ], [ %234, %232 ], !dbg !2841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2799
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %239 = icmp eq i64 %238, 0, !dbg !2844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2845
  br i1 %239, label %242, label %240, !dbg !2845

; <label>:240:                                    ; preds = %237
  %241 = add i64 %238, -1, !dbg !2846
  store i64 %241, i64* %11, align 8, !dbg !2846, !tbaa !1438
  br label %242, !dbg !2847

; <label>:242:                                    ; preds = %237, %240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2849
  %243 = icmp eq i64 %108, %3, !dbg !2850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2851
  br i1 %243, label %355, label %244, !dbg !2851

; <label>:244:                                    ; preds = %242
  %245 = bitcast %struct.raxNode** %17 to i32**, !dbg !2852
  %246 = load i32*, i32** %245, align 8, !dbg !2852, !tbaa !2179
  %247 = load i32, i32* %246, align 4, !dbg !2853
  %248 = and i32 %247, 4, !dbg !2853
  %249 = icmp eq i32 %248, 0, !dbg !2854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2855
  br i1 %249, label %250, label %267, !dbg !2855

; <label>:250:                                    ; preds = %244
  %251 = getelementptr inbounds i8, i8* %2, i64 %108, !dbg !2856
  %252 = call i32 @raxIteratorAddChars(%struct.raxIterator* nonnull %0, i8* %251, i64 1) #9, !dbg !2859
  %253 = icmp eq i32 %252, 0, !dbg !2859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2860
  br i1 %253, label %385, label %254, !dbg !2860

; <label>:254:                                    ; preds = %250
  %255 = load i32, i32* %12, align 8, !dbg !2861, !tbaa !2043
  %256 = and i32 %255, -2, !dbg !2861
  store i32 %256, i32* %12, align 8, !dbg !2861, !tbaa !2043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2862
  br i1 %172, label %257, label %260, !dbg !2862

; <label>:257:                                    ; preds = %254
  %258 = call i32 @raxIteratorPrevStep(%struct.raxIterator* nonnull %0, i32 1) #9, !dbg !2864
  %259 = icmp eq i32 %258, 0, !dbg !2864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2865
  br i1 %259, label %385, label %260, !dbg !2865

; <label>:260:                                    ; preds = %257, %254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2866
  br i1 %173, label %261, label %264, !dbg !2866

; <label>:261:                                    ; preds = %260
  %262 = call i32 @raxIteratorNextStep(%struct.raxIterator* nonnull %0, i32 1) #9, !dbg !2868
  %263 = icmp eq i32 %262, 0, !dbg !2868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2869
  br i1 %263, label %385, label %264, !dbg !2869

; <label>:264:                                    ; preds = %261, %260
  %265 = load i32, i32* %12, align 8, !dbg !2870, !tbaa !2043
  %266 = or i32 %265, 1, !dbg !2870
  store i32 %266, i32* %12, align 8, !dbg !2870, !tbaa !2043
  br label %384, !dbg !2871

; <label>:267:                                    ; preds = %244
  %268 = bitcast i32* %246 to %struct.raxNode*, !dbg !2855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2873
  %269 = load i32, i32* %8, align 4, !dbg !2874, !tbaa !48
  %270 = sext i32 %269 to i64, !dbg !2875
  %271 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %268, i64 0, i32 1, i64 %270, !dbg !2875
  %272 = load i8, i8* %271, align 1, !dbg !2875, !tbaa !280
  %273 = getelementptr inbounds i8, i8* %2, i64 %108, !dbg !2876
  %274 = load i8, i8* %273, align 1, !dbg !2876, !tbaa !280
  %275 = load i32, i32* %12, align 8, !dbg !2877, !tbaa !2043
  %276 = and i32 %275, -2, !dbg !2877
  store i32 %276, i32* %12, align 8, !dbg !2877, !tbaa !2043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2878
  br i1 %173, label %277, label %293, !dbg !2878

; <label>:277:                                    ; preds = %267
  %278 = icmp ugt i8 %272, %274, !dbg !2879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2883
  br i1 %278, label %279, label %282, !dbg !2883

; <label>:279:                                    ; preds = %277
  %280 = call i32 @raxIteratorNextStep(%struct.raxIterator* nonnull %0, i32 0) #9, !dbg !2884
  %281 = icmp eq i32 %280, 0, !dbg !2884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2887
  br i1 %281, label %354, label %293, !dbg !2887

; <label>:282:                                    ; preds = %277
  %283 = getelementptr inbounds i32, i32* %246, i64 1, !dbg !2888
  %284 = bitcast i32* %283 to i8*, !dbg !2888
  %285 = load i32, i32* %246, align 4, !dbg !2891
  %286 = lshr i32 %285, 3, !dbg !2891
  %287 = zext i32 %286 to i64, !dbg !2892
  %288 = call i32 @raxIteratorAddChars(%struct.raxIterator* nonnull %0, i8* nonnull %284, i64 %287) #9, !dbg !2893
  %289 = icmp eq i32 %288, 0, !dbg !2893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2894
  br i1 %289, label %354, label %290, !dbg !2894

; <label>:290:                                    ; preds = %282
  %291 = call i32 @raxIteratorNextStep(%struct.raxIterator* nonnull %0, i32 1) #9, !dbg !2895
  %292 = icmp eq i32 %291, 0, !dbg !2895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  br i1 %292, label %354, label %293, !dbg !2897

; <label>:293:                                    ; preds = %279, %290, %267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2898
  br i1 %172, label %294, label %351, !dbg !2898

; <label>:294:                                    ; preds = %293
  %295 = icmp ult i8 %272, %274, !dbg !2899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2903
  br i1 %295, label %296, label %339, !dbg !2903

; <label>:296:                                    ; preds = %294
  %297 = call i32 @raxSeekGreatest(%struct.raxIterator* nonnull %0) #9, !dbg !2904
  %298 = icmp eq i32 %297, 0, !dbg !2904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2907
  br i1 %298, label %354, label %299, !dbg !2907

; <label>:299:                                    ; preds = %296
  %300 = load %struct.raxNode*, %struct.raxNode** %17, align 8, !dbg !2908, !tbaa !2179
  %301 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %300, i64 0, i32 0, !dbg !2911
  %302 = load i32, i32* %301, align 4, !dbg !2911
  %303 = and i32 %302, 2, !dbg !2911
  %304 = icmp eq i32 %303, 0, !dbg !2912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2913
  br i1 %304, label %305, label %336, !dbg !2913

; <label>:305:                                    ; preds = %299
  %306 = bitcast %struct.raxNode* %300 to i8*, !dbg !2914
  %307 = lshr i32 %302, 3, !dbg !2915
  %308 = add nuw nsw i32 %307, 4, !dbg !2915
  %309 = sub nsw i32 4, %307, !dbg !2915
  %310 = and i32 %309, 7, !dbg !2915
  %311 = add nuw nsw i32 %308, %310, !dbg !2915
  %312 = zext i32 %311 to i64, !dbg !2915
  %313 = and i32 %302, 4, !dbg !2915
  %314 = icmp eq i32 %313, 0, !dbg !2915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2915
  br i1 %314, label %315, label %318, !dbg !2915

; <label>:315:                                    ; preds = %305
  %316 = and i32 %302, -8, !dbg !2915
  %317 = zext i32 %316 to i64, !dbg !2915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2915
  br label %318, !dbg !2915

; <label>:318:                                    ; preds = %315, %305
  %319 = phi i64 [ %317, %315 ], [ 8, %305 ], !dbg !2915
  %320 = add nuw nsw i64 %319, %312, !dbg !2915
  %321 = and i32 %302, 1, !dbg !2915
  %322 = icmp eq i32 %321, 0, !dbg !2915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2915
  br i1 %322, label %328, label %323, !dbg !2915

; <label>:323:                                    ; preds = %318
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %324 = shl i32 %302, 2
  %325 = and i32 %324, 8
  %326 = xor i32 %325, 8
  %327 = zext i32 %326 to i64
  br label %328

; <label>:328:                                    ; preds = %323, %318
  %329 = phi i64 [ 0, %318 ], [ %327, %323 ]
  %330 = add nuw nsw i64 %320, %329, !dbg !2915
  %331 = getelementptr inbounds i8, i8* %306, i64 %330, !dbg !2916
  %332 = getelementptr inbounds i8, i8* %331, i64 -8, !dbg !2917
  %333 = bitcast i8** %5 to i8*, !dbg !2919
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %333) #7, !dbg !2919
  %334 = call i8* @memcpy(i8* nonnull %333, i8* nonnull %332, i64 8) #6, !dbg !2920
  %335 = load i8*, i8** %5, align 8, !dbg !2921, !tbaa !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %333) #7, !dbg !2923
  br label %336

; <label>:336:                                    ; preds = %299, %328
  %337 = phi i8* [ %335, %328 ], [ null, %299 ], !dbg !2924
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2923
  %338 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 3, !dbg !2925
  store i8* %337, i8** %338, align 8, !dbg !2926, !tbaa !2056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2927
  br label %351, !dbg !2927

; <label>:339:                                    ; preds = %294
  %340 = load %struct.raxNode*, %struct.raxNode** %17, align 8, !dbg !2928, !tbaa !2179
  %341 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %340, i64 0, i32 1, i64 0, !dbg !2931
  %342 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %340, i64 0, i32 0, !dbg !2932
  %343 = load i32, i32* %342, align 4, !dbg !2932
  %344 = lshr i32 %343, 3, !dbg !2932
  %345 = zext i32 %344 to i64, !dbg !2933
  %346 = call i32 @raxIteratorAddChars(%struct.raxIterator* nonnull %0, i8* nonnull %341, i64 %345) #9, !dbg !2934
  %347 = icmp eq i32 %346, 0, !dbg !2934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2935
  br i1 %347, label %354, label %348, !dbg !2935

; <label>:348:                                    ; preds = %339
  %349 = call i32 @raxIteratorPrevStep(%struct.raxIterator* nonnull %0, i32 1) #9, !dbg !2936
  %350 = icmp eq i32 %349, 0, !dbg !2936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2938
  br i1 %350, label %354, label %351, !dbg !2938

; <label>:351:                                    ; preds = %348, %336, %293
  %352 = load i32, i32* %12, align 8, !dbg !2939, !tbaa !2043
  %353 = or i32 %352, 1, !dbg !2939
  store i32 %353, i32* %12, align 8, !dbg !2939, !tbaa !2043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2940
  br label %384

; <label>:354:                                    ; preds = %348, %339, %296, %290, %282, %279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2941
  br label %385

; <label>:355:                                    ; preds = %242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2872
  %356 = bitcast %struct.raxNode** %17 to i32**
  %357 = load i32*, i32** %356, align 8, !dbg !2942, !tbaa !2179
  %358 = load i32, i32* %12, align 8, !dbg !2945, !tbaa !2043
  %359 = and i32 %358, -2, !dbg !2945
  store i32 %359, i32* %12, align 8, !dbg !2945, !tbaa !2043
  %360 = load i32, i32* %357, align 4, !dbg !2946
  %361 = and i32 %360, 4, !dbg !2946
  %362 = icmp eq i32 %361, 0, !dbg !2947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2948
  br i1 %362, label %370, label %363, !dbg !2948

; <label>:363:                                    ; preds = %355
  %364 = and i32 %360, 1, !dbg !2949
  %365 = icmp ne i32 %364, 0, !dbg !2950
  %366 = load i32, i32* %8, align 4, !dbg !2951
  %367 = icmp ne i32 %366, 0, !dbg !2951
  %368 = and i1 %365, %367, !dbg !2952
  %369 = and i1 %172, %368, !dbg !2952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2952
  br i1 %369, label %378, label %370, !dbg !2952

; <label>:370:                                    ; preds = %355, %363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2953
  br i1 %173, label %371, label %374, !dbg !2953

; <label>:371:                                    ; preds = %370
  %372 = call i32 @raxIteratorNextStep(%struct.raxIterator* nonnull %0, i32 0) #9, !dbg !2956
  %373 = icmp eq i32 %372, 0, !dbg !2956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2957
  br i1 %373, label %385, label %374, !dbg !2957

; <label>:374:                                    ; preds = %371, %370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2958
  br i1 %172, label %375, label %378, !dbg !2958

; <label>:375:                                    ; preds = %374
  %376 = call i32 @raxIteratorPrevStep(%struct.raxIterator* nonnull %0, i32 0) #9, !dbg !2960
  %377 = icmp eq i32 %376, 0, !dbg !2960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2961
  br i1 %377, label %385, label %378, !dbg !2961

; <label>:378:                                    ; preds = %375, %374, %363
  %379 = load i32, i32* %12, align 8, !dbg !2962, !tbaa !2043
  %380 = or i32 %379, 1, !dbg !2962
  store i32 %380, i32* %12, align 8, !dbg !2962, !tbaa !2043
  br label %384

; <label>:381:                                    ; preds = %171
  %382 = load i32, i32* %12, align 8, !dbg !2963, !tbaa !2043
  %383 = or i32 %382, 2, !dbg !2963
  store i32 %383, i32* %12, align 8, !dbg !2963, !tbaa !2043
  br label %385, !dbg !2965

; <label>:384:                                    ; preds = %351, %378, %264, %168
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %385, !dbg !2966

; <label>:385:                                    ; preds = %375, %371, %261, %257, %250, %128, %106, %381, %384, %354, %236
  %386 = phi i32 [ 1, %381 ], [ 0, %236 ], [ 0, %354 ], [ 1, %384 ], [ 0, %106 ], [ 0, %128 ], [ 0, %250 ], [ 0, %257 ], [ 0, %261 ], [ 0, %371 ], [ 0, %375 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %387, !dbg !2967

; <label>:387:                                    ; preds = %385, %176
  %388 = phi i32 [ 0, %176 ], [ %386, %385 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %107) #7, !dbg !2967
  br label %389

; <label>:389:                                    ; preds = %62, %387, %103, %58, %54, %41
  %390 = phi i32 [ 1, %54 ], [ %59, %58 ], [ 1, %103 ], [ %388, %387 ], [ 0, %41 ], [ 0, %62 ], !dbg !2968
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2967
  ret i32 %390, !dbg !2967
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxNext(%struct.raxIterator*) local_unnamed_addr #0 !dbg !2969 {
  %2 = tail call i32 @raxIteratorNextStep(%struct.raxIterator* %0, i32 0) #9, !dbg !2973
  %3 = icmp eq i32 %2, 0, !dbg !2973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2975
  br i1 %3, label %9, label %4, !dbg !2975

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 0, !dbg !2976
  %6 = load i32, i32* %5, align 8, !dbg !2976, !tbaa !2043
  %7 = and i32 %6, 2, !dbg !2978
  %8 = icmp eq i32 %7, 0, !dbg !2978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2979
  br i1 %8, label %12, label %9, !dbg !2979

; <label>:9:                                      ; preds = %4, %1
  %10 = phi i32 [ 12, %1 ], [ 0, %4 ]
  %11 = tail call i32* @__errno() #6, !dbg !2980
  store i32 %10, i32* %11, align 4, !dbg !2980, !tbaa !48
  br label %12, !dbg !2980

; <label>:12:                                     ; preds = %9, %4
  %13 = phi i32 [ 1, %4 ], [ 0, %9 ], !dbg !2980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2982
  ret i32 %13, !dbg !2982
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxPrev(%struct.raxIterator*) local_unnamed_addr #0 !dbg !2983 {
  %2 = tail call i32 @raxIteratorPrevStep(%struct.raxIterator* %0, i32 0) #9, !dbg !2987
  %3 = icmp eq i32 %2, 0, !dbg !2987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2989
  br i1 %3, label %9, label %4, !dbg !2989

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 0, !dbg !2990
  %6 = load i32, i32* %5, align 8, !dbg !2990, !tbaa !2043
  %7 = and i32 %6, 2, !dbg !2992
  %8 = icmp eq i32 %7, 0, !dbg !2992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2993
  br i1 %8, label %12, label %9, !dbg !2993

; <label>:9:                                      ; preds = %4, %1
  %10 = phi i32 [ 12, %1 ], [ 0, %4 ]
  %11 = tail call i32* @__errno() #6, !dbg !2994
  store i32 %10, i32* %11, align 4, !dbg !2994, !tbaa !48
  br label %12, !dbg !2994

; <label>:12:                                     ; preds = %9, %4
  %13 = phi i32 [ 1, %4 ], [ 0, %9 ], !dbg !2994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2996
  ret i32 %13, !dbg !2996
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxRandomWalk(%struct.raxIterator*, i64) local_unnamed_addr #0 !dbg !2997 {
  %3 = alloca %struct.raxNode*, align 8
  %4 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 1, !dbg !3017
  %5 = load %struct.rax*, %struct.rax** %4, align 8, !dbg !3017, !tbaa !2047
  %6 = getelementptr inbounds %struct.rax, %struct.rax* %5, i64 0, i32 1, !dbg !3019
  %7 = load i64, i64* %6, align 8, !dbg !3019, !tbaa !645
  %8 = icmp eq i64 %7, 0, !dbg !3020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3021
  br i1 %8, label %9, label %13, !dbg !3021

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 0, !dbg !3022
  %11 = load i32, i32* %10, align 8, !dbg !3024, !tbaa !2043
  %12 = or i32 %11, 2, !dbg !3024
  store i32 %12, i32* %10, align 8, !dbg !3024, !tbaa !2043
  br label %143, !dbg !3025

; <label>:13:                                     ; preds = %2
  %14 = icmp eq i64 %1, 0, !dbg !3026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3027
  br i1 %14, label %15, label %25, !dbg !3027

; <label>:15:                                     ; preds = %13
  %16 = uitofp i64 %7 to double, !dbg !3028
  %17 = tail call double @log(double %16) #6, !dbg !3029
  %18 = tail call double @floor(double %17) #6, !dbg !3030
  %19 = fptoui double %18 to i64, !dbg !3030
  %20 = shl i64 %19, 1, !dbg !3032
  %21 = tail call i32 @rand() #6, !dbg !3033
  %22 = sext i32 %21 to i64, !dbg !3033
  %23 = urem i64 %22, %20, !dbg !3034
  %24 = add i64 %23, 1, !dbg !3035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3036
  br label %25, !dbg !3036

; <label>:25:                                     ; preds = %15, %13
  %26 = phi i64 [ %24, %15 ], [ %1, %13 ]
  %27 = bitcast %struct.raxNode** %3 to i8*, !dbg !3037
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #7, !dbg !3037
  %28 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 7, !dbg !3038
  %29 = bitcast %struct.raxNode** %28 to i64*, !dbg !3038
  %30 = load i64, i64* %29, align 8, !dbg !3038, !tbaa !2179
  %31 = bitcast %struct.raxNode** %3 to i64*, !dbg !3039
  store i64 %30, i64* %31, align 8, !dbg !3039, !tbaa !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3040
  %32 = bitcast %struct.raxNode** %3 to i32**
  %33 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 1
  %34 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 0
  %35 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8
  %36 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 4
  %37 = inttoptr i64 %30 to %struct.raxNode*, !dbg !3040
  %38 = inttoptr i64 %30 to i32*, !dbg !3040
  br label %39, !dbg !3040

; <label>:39:                                     ; preds = %138, %25
  %40 = phi i32* [ %38, %25 ], [ %131, %138 ]
  %41 = phi %struct.raxNode* [ %37, %25 ], [ %130, %138 ]
  %42 = phi i64 [ %26, %25 ], [ %139, %138 ], !dbg !3041
  %43 = icmp eq i64 %42, 0, !dbg !3043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3044
  br i1 %43, label %44, label %49, !dbg !3044

; <label>:44:                                     ; preds = %39
  %45 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %41, i64 0, i32 0, !dbg !3045
  %46 = load i32, i32* %45, align 4, !dbg !3045
  %47 = and i32 %46, 1, !dbg !3045
  %48 = icmp eq i32 %47, 0, !dbg !3046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3040
  br i1 %48, label %49, label %140, !dbg !3040

; <label>:49:                                     ; preds = %39, %44
  %50 = load i32, i32* %40, align 4, !dbg !3047
  %51 = and i32 %50, 4, !dbg !3047
  %52 = icmp eq i32 %51, 0, !dbg !3048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3048
  br i1 %52, label %53, label %55, !dbg !3048

; <label>:53:                                     ; preds = %49
  %54 = lshr i32 %50, 3, !dbg !3049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3048
  br label %55, !dbg !3048

; <label>:55:                                     ; preds = %49, %53
  %56 = phi i32 [ %54, %53 ], [ 1, %49 ], !dbg !3048
  %57 = call i32 @rand() #6, !dbg !3051
  %58 = load %struct.raxNode*, %struct.raxNode** %3, align 8, !dbg !3052, !tbaa !172
  %59 = load %struct.rax*, %struct.rax** %4, align 8, !dbg !3053, !tbaa !2047
  %60 = getelementptr inbounds %struct.rax, %struct.rax* %59, i64 0, i32 0, !dbg !3054
  %61 = load %struct.raxNode*, %struct.raxNode** %60, align 8, !dbg !3054, !tbaa !125
  %62 = icmp ne %struct.raxNode* %58, %61, !dbg !3055
  %63 = zext i1 %62 to i32, !dbg !3055
  %64 = add nuw nsw i32 %56, %63, !dbg !3056
  %65 = srem i32 %57, %64, !dbg !3057
  %66 = icmp eq i32 %65, %56, !dbg !3059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3060
  br i1 %66, label %67, label %90, !dbg !3060

; <label>:67:                                     ; preds = %55
  %68 = load i64, i64* %33, align 8, !dbg !3061, !tbaa !1438
  %69 = icmp eq i64 %68, 0, !dbg !3063
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3064
  br i1 %69, label %77, label %70, !dbg !3064

; <label>:70:                                     ; preds = %67
  %71 = add i64 %68, -1, !dbg !3066
  store i64 %71, i64* %33, align 8, !dbg !3066, !tbaa !1438
  %72 = load i8**, i8*** %34, align 8, !dbg !3067, !tbaa !1353
  %73 = getelementptr inbounds i8*, i8** %72, i64 %71, !dbg !3068
  %74 = bitcast i8** %73 to i32**, !dbg !3068
  %75 = load i32*, i32** %74, align 8, !dbg !3068, !tbaa !172
  %76 = bitcast i32* %75 to %struct.raxNode*, !dbg !3069
  br label %77, !dbg !3069

; <label>:77:                                     ; preds = %67, %70
  %78 = phi %struct.raxNode* [ %76, %70 ], [ null, %67 ], !dbg !3070
  %79 = phi i32* [ %75, %70 ], [ null, %67 ], !dbg !3070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3072
  store i32* %79, i32** %32, align 8, !dbg !3073, !tbaa !172
  %80 = load i32, i32* %79, align 4, !dbg !3074
  %81 = and i32 %80, 4, !dbg !3074
  %82 = icmp eq i32 %81, 0, !dbg !3075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3075
  br i1 %82, label %85, label %83, !dbg !3075

; <label>:83:                                     ; preds = %77
  %84 = lshr i32 %80, 3, !dbg !3076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3075
  br label %85, !dbg !3075

; <label>:85:                                     ; preds = %77, %83
  %86 = phi i32 [ %84, %83 ], [ 1, %77 ], !dbg !3075
  %87 = zext i32 %86 to i64, !dbg !3078
  %88 = load i64, i64* %36, align 8, !dbg !3082, !tbaa !2088
  %89 = sub i64 %88, %87, !dbg !3082
  store i64 %89, i64* %36, align 8, !dbg !3082, !tbaa !2088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3084
  br label %129, !dbg !3084

; <label>:90:                                     ; preds = %55
  %91 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %58, i64 0, i32 0, !dbg !3085
  %92 = load i32, i32* %91, align 4, !dbg !3085
  %93 = and i32 %92, 4, !dbg !3085
  %94 = icmp eq i32 %93, 0, !dbg !3087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3088
  br i1 %94, label %101, label %95, !dbg !3088

; <label>:95:                                     ; preds = %90
  %96 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %58, i64 0, i32 1, i64 0, !dbg !3089
  %97 = lshr i32 %92, 3, !dbg !3092
  %98 = zext i32 %97 to i64, !dbg !3095
  %99 = call i32 @raxIteratorAddChars(%struct.raxIterator* nonnull %0, i8* nonnull %96, i64 %98) #9, !dbg !3096
  %100 = icmp eq i32 %99, 0, !dbg !3096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3097
  br i1 %100, label %137, label %106, !dbg !3097

; <label>:101:                                    ; preds = %90
  %102 = sext i32 %65 to i64, !dbg !3098
  %103 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %58, i64 0, i32 1, i64 %102, !dbg !3098
  %104 = call i32 @raxIteratorAddChars(%struct.raxIterator* nonnull %0, i8* nonnull %103, i64 1) #9, !dbg !3099
  %105 = icmp eq i32 %104, 0, !dbg !3099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3100
  br i1 %105, label %137, label %106, !dbg !3100

; <label>:106:                                    ; preds = %95, %101
  %107 = load %struct.raxNode*, %struct.raxNode** %3, align 8, !dbg !3101, !tbaa !172
  %108 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %107, i64 0, i32 0, !dbg !3101
  %109 = load i32, i32* %108, align 4, !dbg !3101
  %110 = lshr i32 %109, 3, !dbg !3101
  %111 = bitcast %struct.raxNode* %107 to i8*, !dbg !3102
  %112 = call fastcc i32 @raxStackPush(%struct.raxStack* nonnull %35, i8* %111) #9, !dbg !3104
  %113 = icmp eq i32 %112, 0, !dbg !3104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3105
  br i1 %113, label %128, label %114, !dbg !3105

; <label>:114:                                    ; preds = %106
  %115 = zext i32 %110 to i64, !dbg !3101
  %116 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %107, i64 0, i32 1, i64 %115, !dbg !3101
  %117 = sub nsw i32 4, %110, !dbg !3101
  %118 = and i32 %117, 7, !dbg !3101
  %119 = zext i32 %118 to i64, !dbg !3101
  %120 = getelementptr inbounds i8, i8* %116, i64 %119, !dbg !3101
  %121 = bitcast i8* %120 to %struct.raxNode**, !dbg !3101
  %122 = sext i32 %65 to i64, !dbg !3106
  %123 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %121, i64 %122, !dbg !3106
  %124 = bitcast %struct.raxNode** %123 to i8*, !dbg !3108
  %125 = call i8* @memcpy(i8* nonnull %27, i8* %124, i64 8) #6, !dbg !3109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3110
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %126 = load i32*, i32** %32, align 8, !dbg !3111, !tbaa !172
  %127 = bitcast i32* %126 to %struct.raxNode*
  br label %129

; <label>:128:                                    ; preds = %106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3112
  br label %137

; <label>:129:                                    ; preds = %114, %85
  %130 = phi %struct.raxNode* [ %127, %114 ], [ %78, %85 ], !dbg !3111
  %131 = phi i32* [ %126, %114 ], [ %79, %85 ], !dbg !3111
  %132 = load i32, i32* %131, align 4, !dbg !3113
  %133 = and i32 %132, 1, !dbg !3113
  %134 = icmp eq i32 %133, 0, !dbg !3111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3114
  br i1 %134, label %138, label %135, !dbg !3114

; <label>:135:                                    ; preds = %129
  %136 = add i64 %42, -1, !dbg !3115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3116
  br label %138, !dbg !3116

; <label>:137:                                    ; preds = %101, %95, %128
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %141

; <label>:138:                                    ; preds = %135, %129
  %139 = phi i64 [ %136, %135 ], [ %42, %129 ], !dbg !3117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3118
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %39

; <label>:140:                                    ; preds = %44
  store %struct.raxNode* %41, %struct.raxNode** %28, align 8, !dbg !3119, !tbaa !2179
  br label %141, !dbg !3120

; <label>:141:                                    ; preds = %137, %140
  %142 = phi i32 [ 1, %140 ], [ 0, %137 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #7, !dbg !3121
  br label %143

; <label>:143:                                    ; preds = %141, %9
  %144 = phi i32 [ 0, %9 ], [ %142, %141 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3121
  ret i32 %144, !dbg !3121
}

; Function Attrs: noredzone
declare dso_local double @floor(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @log(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @rand() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @raxCompare(%struct.raxIterator* nocapture readonly, i8* nocapture readonly, i8*, i64) local_unnamed_addr #0 !dbg !3122 {
  %5 = load i8, i8* %1, align 1, !dbg !3140, !tbaa !280
  %6 = icmp eq i8 %5, 61, !dbg !3142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3143
  br i1 %6, label %11, label %7, !dbg !3143

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !3144
  %9 = load i8, i8* %8, align 1, !dbg !3144, !tbaa !280
  %10 = icmp eq i8 %9, 61, !dbg !3145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3146
  br i1 %10, label %11, label %12, !dbg !3146

; <label>:11:                                     ; preds = %7, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3147
  br label %12, !dbg !3147

; <label>:12:                                     ; preds = %11, %7
  %13 = phi i32 [ 1, %11 ], [ 0, %7 ], !dbg !3148
  %14 = icmp eq i8 %5, 62, !dbg !3149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3151
  br i1 %14, label %21, label %15, !dbg !3151

; <label>:15:                                     ; preds = %12
  %16 = icmp eq i8 %5, 60, !dbg !3152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3154
  br i1 %16, label %21, label %17, !dbg !3154

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !3155
  %19 = load i8, i8* %18, align 1, !dbg !3155, !tbaa !280
  %20 = icmp eq i8 %19, 61, !dbg !3157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3158
  br i1 %20, label %24, label %66, !dbg !3158

; <label>:21:                                     ; preds = %15, %12
  %22 = phi i32 [ 0, %12 ], [ 1, %15 ]
  %23 = phi i32 [ 1, %12 ], [ 0, %15 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3159
  br label %24, !dbg !3160

; <label>:24:                                     ; preds = %21, %17
  %25 = phi i32 [ 0, %17 ], [ %22, %21 ], !dbg !3148
  %26 = phi i32 [ 0, %17 ], [ %23, %21 ], !dbg !3148
  %27 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 4, !dbg !3160
  %28 = load i64, i64* %27, align 8, !dbg !3160, !tbaa !2088
  %29 = icmp ugt i64 %28, %3, !dbg !3161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3162
  %30 = select i1 %29, i64 %3, i64 %28, !dbg !3162
  %31 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 2, !dbg !3164
  %32 = load i8*, i8** %31, align 8, !dbg !3164, !tbaa !2052
  %33 = tail call i32 @memcmp(i8* %32, i8* %2, i64 %30) #6, !dbg !3165
  %34 = or i32 %26, %25, !dbg !3167
  %35 = icmp eq i32 %34, 0, !dbg !3167
  %36 = icmp eq i32 %33, 0, !dbg !3169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3148
  br i1 %35, label %37, label %44, !dbg !3167

; <label>:37:                                     ; preds = %24
  br i1 %36, label %38, label %42, !dbg !3171

; <label>:38:                                     ; preds = %37
  %39 = load i64, i64* %27, align 8, !dbg !3172, !tbaa !2088
  %40 = icmp eq i64 %39, %3, !dbg !3173
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %41 = zext i1 %40 to i32
  br label %42

; <label>:42:                                     ; preds = %38, %37
  %43 = phi i32 [ 0, %37 ], [ %41, %38 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3174
  br label %66, !dbg !3174

; <label>:44:                                     ; preds = %24
  br i1 %36, label %45, label %63, !dbg !3175

; <label>:45:                                     ; preds = %44
  %46 = icmp eq i32 %13, 0, !dbg !3176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3179
  br i1 %46, label %51, label %47, !dbg !3179

; <label>:47:                                     ; preds = %45
  %48 = load i64, i64* %27, align 8, !dbg !3180, !tbaa !2088
  %49 = icmp eq i64 %48, %3, !dbg !3181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3182
  br i1 %49, label %50, label %51, !dbg !3182

; <label>:50:                                     ; preds = %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3183
  br label %66, !dbg !3183

; <label>:51:                                     ; preds = %45, %47
  %52 = icmp eq i32 %25, 0, !dbg !3184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3186
  br i1 %52, label %57, label %53, !dbg !3186

; <label>:53:                                     ; preds = %51
  %54 = load i64, i64* %27, align 8, !dbg !3187, !tbaa !2088
  %55 = icmp ult i64 %54, %3, !dbg !3188
  %56 = zext i1 %55 to i32, !dbg !3188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3189
  br label %66, !dbg !3189

; <label>:57:                                     ; preds = %51
  %58 = icmp eq i32 %26, 0, !dbg !3190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3192
  br i1 %58, label %63, label %59, !dbg !3192

; <label>:59:                                     ; preds = %57
  %60 = load i64, i64* %27, align 8, !dbg !3193, !tbaa !2088
  %61 = icmp ugt i64 %60, %3, !dbg !3194
  %62 = zext i1 %61 to i32, !dbg !3194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3195
  br label %66, !dbg !3195

; <label>:63:                                     ; preds = %57, %44
  %64 = icmp sgt i32 %33, 0, !dbg !3196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3199
  %65 = select i1 %64, i32 %26, i32 %25, !dbg !3201
  br label %66, !dbg !3201

; <label>:66:                                     ; preds = %42, %50, %53, %59, %63, %17
  %67 = phi i32 [ 0, %17 ], [ %43, %42 ], [ 1, %50 ], [ %56, %53 ], [ %62, %59 ], [ %65, %63 ], !dbg !3203
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3204
  ret i32 %67, !dbg !3204
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @raxStop(%struct.raxIterator* readonly) local_unnamed_addr #0 !dbg !3205 {
  %2 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 2, !dbg !3211
  %3 = load i8*, i8** %2, align 8, !dbg !3211, !tbaa !2052
  %4 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 6, i64 0, !dbg !3213
  %5 = icmp eq i8* %3, %4, !dbg !3214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3215
  br i1 %5, label %7, label %6, !dbg !3215

; <label>:6:                                      ; preds = %1
  tail call void @zfree(i8* %3) #6, !dbg !3216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3216
  br label %7, !dbg !3216

; <label>:7:                                      ; preds = %1, %6
  %8 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 0, !dbg !3219
  %9 = load i8**, i8*** %8, align 8, !dbg !3219, !tbaa !1353
  %10 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 3, i64 0, !dbg !3220
  %11 = icmp eq i8** %9, %10, !dbg !3221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3222
  br i1 %11, label %14, label %12, !dbg !3222

; <label>:12:                                     ; preds = %7
  %13 = bitcast i8** %9 to i8*, !dbg !3223
  tail call void @zfree(i8* %13) #6, !dbg !3224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3224
  br label %14, !dbg !3224

; <label>:14:                                     ; preds = %7, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3226
  ret void, !dbg !3226
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxEOF(%struct.raxIterator* nocapture readonly) local_unnamed_addr #0 !dbg !3227 {
  %2 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 0, !dbg !3231
  %3 = load i32, i32* %2, align 8, !dbg !3231, !tbaa !2043
  %4 = and i32 %3, 2, !dbg !3232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3233
  ret i32 %4, !dbg !3233
}

; Function Attrs: noredzone nounwind
define dso_local i64 @raxSize(%struct.rax* nocapture readonly) local_unnamed_addr #0 !dbg !3234 {
  %2 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 1, !dbg !3240
  %3 = load i64, i64* %2, align 8, !dbg !3240, !tbaa !645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3241
  ret i64 %3, !dbg !3241
}

; Function Attrs: noredzone nounwind
define dso_local void @raxRecursiveShow(i32, i32, %struct.raxNode*) local_unnamed_addr #0 !dbg !3242 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.raxNode*, align 8
  %6 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %2, i64 0, i32 0, !dbg !3267
  %7 = load i32, i32* %6, align 4, !dbg !3267
  %8 = and i32 %7, 4, !dbg !3267
  %9 = icmp ne i32 %8, 0, !dbg !3268
  %10 = select i1 %9, i32 34, i32 91, !dbg !3269
  %11 = lshr i32 %7, 3, !dbg !3270
  %12 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %2, i64 0, i32 1, i64 0, !dbg !3271
  %13 = select i1 %9, i32 34, i32 93, !dbg !3272
  %14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %10, i32 %11, i8* nonnull %12, i32 %13) #6, !dbg !3273
  %15 = load i32, i32* %6, align 4, !dbg !3275
  %16 = and i32 %15, 1, !dbg !3275
  %17 = icmp eq i32 %16, 0, !dbg !3277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3278
  br i1 %17, label %51, label %18, !dbg !3278

; <label>:18:                                     ; preds = %3
  %19 = and i32 %15, 2, !dbg !3282
  %20 = icmp eq i32 %19, 0, !dbg !3283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3284
  br i1 %20, label %21, label %46, !dbg !3284

; <label>:21:                                     ; preds = %18
  %22 = bitcast %struct.raxNode* %2 to i8*, !dbg !3285
  %23 = lshr i32 %15, 3, !dbg !3286
  %24 = add nuw nsw i32 %23, 4, !dbg !3286
  %25 = sub nsw i32 4, %23, !dbg !3286
  %26 = and i32 %25, 7, !dbg !3286
  %27 = add nuw nsw i32 %24, %26, !dbg !3286
  %28 = and i32 %15, 4, !dbg !3286
  %29 = icmp eq i32 %28, 0, !dbg !3286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3286
  br i1 %29, label %30, label %33, !dbg !3286

; <label>:30:                                     ; preds = %21
  %31 = and i32 %15, -8, !dbg !3286
  %32 = zext i32 %31 to i64, !dbg !3286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3286
  br label %33, !dbg !3286

; <label>:33:                                     ; preds = %30, %21
  %34 = phi i64 [ %32, %30 ], [ 8, %21 ], !dbg !3286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3286
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %35 = shl i32 %15, 2
  %36 = and i32 %35, 8
  %37 = xor i32 %36, 8
  %38 = add nuw i32 %27, %37, !dbg !3286
  %39 = zext i32 %38 to i64, !dbg !3286
  %40 = add nuw nsw i64 %34, %39, !dbg !3286
  %41 = getelementptr inbounds i8, i8* %22, i64 %40, !dbg !3287
  %42 = getelementptr inbounds i8, i8* %41, i64 -8, !dbg !3288
  %43 = bitcast i8** %4 to i8*, !dbg !3290
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43) #7, !dbg !3290
  %44 = call i8* @memcpy(i8* nonnull %43, i8* nonnull %42, i64 8) #6, !dbg !3291
  %45 = load i8*, i8** %4, align 8, !dbg !3292, !tbaa !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #7, !dbg !3294
  br label %46

; <label>:46:                                     ; preds = %18, %33
  %47 = phi i8* [ %45, %33 ], [ null, %18 ], !dbg !3295
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3294
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %47) #6, !dbg !3296
  %49 = add nsw i32 %48, %14, !dbg !3297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3298
  %50 = load i32, i32* %6, align 4, !dbg !3299
  br label %51, !dbg !3298

; <label>:51:                                     ; preds = %3, %46
  %52 = phi i32 [ %50, %46 ], [ %15, %3 ], !dbg !3299
  %53 = phi i32 [ %49, %46 ], [ %14, %3 ], !dbg !3300
  %54 = and i32 %52, 4, !dbg !3299
  %55 = icmp eq i32 %54, 0, !dbg !3301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3301
  br i1 %55, label %56, label %58, !dbg !3301

; <label>:56:                                     ; preds = %51
  %57 = lshr i32 %52, 3, !dbg !3302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3301
  br label %58, !dbg !3301

; <label>:58:                                     ; preds = %51, %56
  %59 = phi i32 [ %57, %56 ], [ 1, %51 ], !dbg !3301
  %60 = icmp eq i32 %0, 0, !dbg !3304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3306
  br i1 %60, label %68, label %61, !dbg !3306

; <label>:61:                                     ; preds = %58
  %62 = icmp ugt i32 %59, 1, !dbg !3307
  %63 = select i1 %62, i32 7, i32 4, !dbg !3309
  %64 = add nsw i32 %63, %1, !dbg !3310
  %65 = icmp eq i32 %59, 1, !dbg !3311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3313
  br i1 %65, label %66, label %68, !dbg !3313

; <label>:66:                                     ; preds = %61
  %67 = add nsw i32 %64, %53, !dbg !3314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3318
  br label %71, !dbg !3318

; <label>:68:                                     ; preds = %58, %61
  %69 = phi i32 [ %64, %61 ], [ %1, %58 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3317
  %70 = icmp eq i32 %59, 0, !dbg !3319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3318
  br i1 %70, label %86, label %71, !dbg !3318

; <label>:71:                                     ; preds = %66, %68
  %72 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %73 = lshr i32 %52, 3, !dbg !3320
  %74 = zext i32 %73 to i64, !dbg !3320
  %75 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %2, i64 0, i32 1, i64 %74, !dbg !3320
  %76 = sub nsw i32 4, %73, !dbg !3320
  %77 = and i32 %76, 7, !dbg !3320
  %78 = zext i32 %77 to i64, !dbg !3320
  %79 = getelementptr inbounds i8, i8* %75, i64 %78, !dbg !3320
  %80 = bitcast i8* %79 to %struct.raxNode**, !dbg !3320
  %81 = icmp eq i32 %59, 1
  %82 = icmp sgt i32 %72, 0
  %83 = bitcast %struct.raxNode** %5 to i8*
  %84 = add nsw i32 %0, 1
  %85 = zext i32 %59 to i64
  br label %87, !dbg !3318

; <label>:86:                                     ; preds = %104, %68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3322
  ret void, !dbg !3322

; <label>:87:                                     ; preds = %104, %71
  %88 = phi i64 [ 0, %71 ], [ %109, %104 ]
  %89 = phi %struct.raxNode** [ %80, %71 ], [ %108, %104 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3323
  br i1 %81, label %102, label %90, !dbg !3323

; <label>:90:                                     ; preds = %87
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !3324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3327
  br i1 %82, label %97, label %92, !dbg !3327

; <label>:92:                                     ; preds = %97, %90
  %93 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %2, i64 0, i32 1, i64 %88, !dbg !3328
  %94 = load i8, i8* %93, align 1, !dbg !3328, !tbaa !280
  %95 = zext i8 %94 to i32, !dbg !3328
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %95) #6, !dbg !3329
  br label %104, !dbg !3330

; <label>:97:                                     ; preds = %90, %97
  %98 = phi i32 [ %100, %97 ], [ 0, %90 ]
  %99 = call i32 @putchar(i32 32) #6, !dbg !3331
  %100 = add nuw nsw i32 %98, 1, !dbg !3333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3327
  %101 = icmp eq i32 %100, %72, !dbg !3335
  br i1 %101, label %92, label %97, !dbg !3327, !llvm.loop !3336

; <label>:102:                                    ; preds = %87
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3338
  br label %104

; <label>:104:                                    ; preds = %102, %92
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %83) #7, !dbg !3340
  %105 = bitcast %struct.raxNode** %89 to i8*, !dbg !3341
  %106 = call i8* @memcpy(i8* nonnull %83, i8* %105, i64 8) #6, !dbg !3342
  %107 = load %struct.raxNode*, %struct.raxNode** %5, align 8, !dbg !3343, !tbaa !172
  call void @raxRecursiveShow(i32 %84, i32 %72, %struct.raxNode* %107) #9, !dbg !3345
  %108 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %89, i64 1, !dbg !3346
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %83) #7, !dbg !3347
  %109 = add nuw nsw i64 %88, 1, !dbg !3348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3318
  %110 = icmp eq i64 %109, %85, !dbg !3319
  br i1 %110, label %86, label %87, !dbg !3318, !llvm.loop !3350
}

; Function Attrs: noredzone
declare dso_local i32 @printf(i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @putchar(i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @raxShow(%struct.rax* nocapture readonly) local_unnamed_addr #0 !dbg !3352 {
  %2 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 0, !dbg !3356
  %3 = load %struct.raxNode*, %struct.raxNode** %2, align 8, !dbg !3356, !tbaa !125
  tail call void @raxRecursiveShow(i32 0, i32 0, %struct.raxNode* %3) #9, !dbg !3357
  %4 = tail call i32 @putchar(i32 10) #6, !dbg !3358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3359
  ret void, !dbg !3359
}

; Function Attrs: noredzone nounwind
define dso_local void @raxDebugShowNode(i8*, %struct.raxNode*) local_unnamed_addr #0 !dbg !3360 {
  %3 = alloca %struct.raxNode*, align 8
  %4 = load i32, i32* @raxDebugMsg, align 4, !dbg !3372, !tbaa !48
  %5 = icmp eq i32 %4, 0, !dbg !3374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3375
  br i1 %5, label %76, label %6, !dbg !3375

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.raxNode* %1 to i8*, !dbg !3376
  %8 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %1, i64 0, i32 0, !dbg !3377
  %9 = load i32, i32* %8, align 4, !dbg !3377
  %10 = lshr i32 %9, 3, !dbg !3377
  %11 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %1, i64 0, i32 1, i64 0, !dbg !3378
  %12 = and i32 %9, 1, !dbg !3379
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i8* %0, %struct.raxNode* %1, i32 %10, i8* nonnull %11, i32 %12, i32 %10) #6, !dbg !3380
  %14 = load i32, i32* %8, align 4, !dbg !3381
  %15 = and i32 %14, 4, !dbg !3381
  %16 = icmp eq i32 %15, 0, !dbg !3382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3382
  %17 = lshr i32 %14, 3, !dbg !3383
  br i1 %16, label %23, label %18, !dbg !3382

; <label>:18:                                     ; preds = %6
  %19 = add nuw nsw i32 %17, 4, !dbg !3385
  %20 = sub nsw i32 4, %17, !dbg !3385
  %21 = and i32 %20, 7, !dbg !3385
  %22 = add nuw nsw i32 %19, %21, !dbg !3385
  br label %30

; <label>:23:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3382
  %24 = add nuw nsw i32 %17, 4, !dbg !3385
  %25 = sub nsw i32 4, %17, !dbg !3385
  %26 = and i32 %25, 7, !dbg !3385
  %27 = add nuw nsw i32 %24, %26, !dbg !3385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3385
  %28 = and i32 %14, -8, !dbg !3385
  %29 = zext i32 %28 to i64, !dbg !3385
  br label %30, !dbg !3385

; <label>:30:                                     ; preds = %18, %23
  %31 = phi i32 [ %27, %23 ], [ %22, %18 ]
  %32 = phi i32 [ %17, %23 ], [ 1, %18 ]
  %33 = phi i64 [ %29, %23 ], [ 8, %18 ], !dbg !3385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3385
  %34 = zext i32 %31 to i64, !dbg !3385
  %35 = add nuw nsw i64 %33, %34, !dbg !3385
  %36 = and i32 %14, 1, !dbg !3385
  %37 = icmp eq i32 %36, 0, !dbg !3385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3385
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %37, label %45, label %38, !dbg !3385

; <label>:38:                                     ; preds = %30
  %39 = shl i32 %14, 2
  %40 = and i32 %39, 8
  %41 = xor i32 %40, 8
  %42 = zext i32 %41 to i64
  %43 = add nuw nsw i64 %35, %42, !dbg !3385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3385
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %44 = sub nsw i64 0, %42
  br label %45

; <label>:45:                                     ; preds = %30, %38
  %46 = phi i64 [ %43, %38 ], [ %35, %30 ]
  %47 = phi i64 [ %44, %38 ], [ 0, %30 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3386
  %48 = icmp eq i32 %32, 0, !dbg !3386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3386
  br i1 %48, label %70, label %49, !dbg !3386

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds i8, i8* %7, i64 %46, !dbg !3385
  %51 = getelementptr inbounds i8, i8* %50, i64 -8, !dbg !3385
  %52 = getelementptr inbounds i8, i8* %51, i64 %47, !dbg !3385
  %53 = bitcast i8* %52 to %struct.raxNode**, !dbg !3385
  %54 = add nsw i32 %32, -1, !dbg !3387
  %55 = sext i32 %54 to i64, !dbg !3388
  %56 = sub nsw i64 0, %55, !dbg !3388
  %57 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %53, i64 %56, !dbg !3388
  %58 = bitcast %struct.raxNode** %3 to i8*
  %59 = bitcast %struct.raxNode** %3 to i8**
  br label %60, !dbg !3386

; <label>:60:                                     ; preds = %49, %60
  %61 = phi %struct.raxNode** [ %57, %49 ], [ %66, %60 ]
  %62 = phi i32 [ %32, %49 ], [ %63, %60 ]
  %63 = add nsw i32 %62, -1, !dbg !3390
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #7, !dbg !3391
  %64 = bitcast %struct.raxNode** %61 to i8*, !dbg !3392
  %65 = call i8* @memcpy(i8* nonnull %58, i8* %64, i64 8) #6, !dbg !3393
  %66 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %61, i64 1, !dbg !3394
  %67 = load i8*, i8** %59, align 8, !dbg !3395, !tbaa !172
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* %67) #6, !dbg !3397
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #7, !dbg !3398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3386
  %69 = icmp eq i32 %63, 0, !dbg !3386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3386
  br i1 %69, label %70, label %60, !dbg !3386, !llvm.loop !3399

; <label>:70:                                     ; preds = %60, %45
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !3400
  %72 = call %struct._reent* @__getreent() #6, !dbg !3401
  %73 = getelementptr inbounds %struct._reent, %struct._reent* %72, i64 0, i32 2, !dbg !3401
  %74 = load %struct.__sFILE*, %struct.__sFILE** %73, align 8, !dbg !3401, !tbaa !3402
  %75 = call i32 @fflush(%struct.__sFILE* %74) #6, !dbg !3407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3408
  br label %76, !dbg !3408

; <label>:76:                                     ; preds = %2, %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3408
  ret void, !dbg !3408
}

; Function Attrs: noredzone
declare dso_local i32 @fflush(%struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i64 @raxTouch(%struct.raxNode*) local_unnamed_addr #0 !dbg !3409 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.raxNode*, align 8
  %4 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 0, !dbg !3425
  %5 = load i32, i32* %4, align 4, !dbg !3425
  %6 = and i32 %5, 1, !dbg !3425
  %7 = icmp eq i32 %6, 0, !dbg !3427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3428
  br i1 %7, label %42, label %8, !dbg !3428

; <label>:8:                                      ; preds = %1
  %9 = and i32 %5, 2, !dbg !3432
  %10 = icmp eq i32 %9, 0, !dbg !3433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3434
  br i1 %10, label %12, label %11, !dbg !3434

; <label>:11:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3435
  br label %39, !dbg !3435

; <label>:12:                                     ; preds = %8
  %13 = bitcast %struct.raxNode* %0 to i8*, !dbg !3436
  %14 = lshr i32 %5, 3, !dbg !3437
  %15 = add nuw nsw i32 %14, 4, !dbg !3437
  %16 = sub nsw i32 4, %14, !dbg !3437
  %17 = and i32 %16, 7, !dbg !3437
  %18 = add nuw nsw i32 %15, %17, !dbg !3437
  %19 = and i32 %5, 4, !dbg !3437
  %20 = icmp eq i32 %19, 0, !dbg !3437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3437
  br i1 %20, label %21, label %24, !dbg !3437

; <label>:21:                                     ; preds = %12
  %22 = and i32 %5, -8, !dbg !3437
  %23 = zext i32 %22 to i64, !dbg !3437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3437
  br label %24, !dbg !3437

; <label>:24:                                     ; preds = %21, %12
  %25 = phi i64 [ %23, %21 ], [ 8, %12 ], !dbg !3437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3437
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %26 = shl i32 %5, 2
  %27 = and i32 %26, 8
  %28 = xor i32 %27, 8
  %29 = add nuw i32 %18, %28, !dbg !3437
  %30 = zext i32 %29 to i64, !dbg !3437
  %31 = add nuw nsw i64 %25, %30, !dbg !3437
  %32 = getelementptr inbounds i8, i8* %13, i64 %31, !dbg !3438
  %33 = getelementptr inbounds i8, i8* %32, i64 -8, !dbg !3439
  %34 = bitcast i8** %2 to i8*, !dbg !3441
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34) #7, !dbg !3441
  %35 = call i8* @memcpy(i8* nonnull %34, i8* nonnull %33, i64 8) #6, !dbg !3442
  %36 = bitcast i8** %2 to i64*, !dbg !3443
  %37 = load i64, i64* %36, align 8, !dbg !3443, !tbaa !172
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34) #7, !dbg !3445
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %38 = load i32, i32* %4, align 4, !dbg !3446
  br label %39

; <label>:39:                                     ; preds = %11, %24
  %40 = phi i32 [ %5, %11 ], [ %38, %24 ], !dbg !3446
  %41 = phi i64 [ 0, %11 ], [ %37, %24 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3447
  br label %42, !dbg !3447

; <label>:42:                                     ; preds = %1, %39
  %43 = phi i32 [ %40, %39 ], [ %5, %1 ], !dbg !3446
  %44 = phi i64 [ %41, %39 ], [ 0, %1 ], !dbg !3448
  %45 = and i32 %43, 4, !dbg !3446
  %46 = icmp eq i32 %45, 0, !dbg !3449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3449
  %47 = lshr i32 %43, 3, !dbg !3448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3450
  br i1 %46, label %48, label %50, !dbg !3449

; <label>:48:                                     ; preds = %42
  %49 = icmp eq i32 %47, 0, !dbg !3454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3455
  br i1 %49, label %62, label %50, !dbg !3455

; <label>:50:                                     ; preds = %42, %48
  %51 = phi i32 [ %47, %48 ], [ 1, %42 ]
  %52 = zext i32 %47 to i64, !dbg !3456
  %53 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 1, i64 %52, !dbg !3456
  %54 = sub nsw i32 4, %47, !dbg !3456
  %55 = and i32 %54, 7, !dbg !3456
  %56 = zext i32 %55 to i64, !dbg !3456
  %57 = getelementptr inbounds i8, i8* %53, i64 %56, !dbg !3456
  %58 = bitcast i8* %57 to %struct.raxNode**, !dbg !3456
  %59 = icmp eq i32 %51, 1
  %60 = bitcast %struct.raxNode** %3 to i8*
  %61 = zext i32 %51 to i64, !dbg !3455
  br label %64, !dbg !3455

; <label>:62:                                     ; preds = %85, %48
  %63 = phi i64 [ %44, %48 ], [ %88, %85 ], !dbg !3458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3459
  ret i64 %63, !dbg !3459

; <label>:64:                                     ; preds = %50, %85
  %65 = phi i64 [ 0, %50 ], [ %90, %85 ]
  %66 = phi i32 [ 0, %50 ], [ %86, %85 ]
  %67 = phi %struct.raxNode** [ %58, %50 ], [ %89, %85 ]
  %68 = phi i64 [ %44, %50 ], [ %88, %85 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3460
  br i1 %59, label %74, label %69, !dbg !3460

; <label>:69:                                     ; preds = %64
  %70 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 1, i64 %65, !dbg !3461
  %71 = load i8, i8* %70, align 1, !dbg !3461, !tbaa !280
  %72 = zext i8 %71 to i64, !dbg !3464
  %73 = add i64 %68, %72, !dbg !3465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3466
  br label %74, !dbg !3466

; <label>:74:                                     ; preds = %64, %69
  %75 = phi i64 [ %73, %69 ], [ %68, %64 ], !dbg !3467
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60) #7, !dbg !3468
  %76 = bitcast %struct.raxNode** %67 to i8*, !dbg !3469
  %77 = call i8* @memcpy(i8* nonnull %60, i8* %76, i64 8) #6, !dbg !3470
  %78 = load %struct.raxNode*, %struct.raxNode** %3, align 8, !dbg !3471, !tbaa !172
  %79 = icmp eq %struct.raxNode* %78, inttoptr (i64 106764128 to %struct.raxNode*), !dbg !3474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3475
  br i1 %79, label %81, label %80, !dbg !3475

; <label>:80:                                     ; preds = %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3476
  br label %85, !dbg !3476

; <label>:81:                                     ; preds = %74
  %82 = add nsw i32 %66, 1, !dbg !3477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3478
  %83 = icmp sgt i32 %66, 0, !dbg !3479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3476
  br i1 %83, label %84, label %85, !dbg !3476

; <label>:84:                                     ; preds = %81
  call void @exit(i32 1) #8, !dbg !3481
  unreachable

; <label>:85:                                     ; preds = %80, %81
  %86 = phi i32 [ %66, %80 ], [ %82, %81 ]
  %87 = call i64 @raxTouch(%struct.raxNode* %78) #9, !dbg !3482
  %88 = add i64 %87, %75, !dbg !3483
  %89 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %67, i64 1, !dbg !3484
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #7, !dbg !3485
  %90 = add nuw nsw i64 %65, 1, !dbg !3486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3487
  %91 = icmp ult i64 %90, %61, !dbg !3454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3455
  br i1 %91, label %64, label %62, !dbg !3455, !llvm.loop !3488
}

; Function Attrs: noredzone noreturn
declare dso_local void @exit(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone noreturn nounwind }
attributes #9 = { nobuiltin noredzone }

!llvm.module.flags = !{!37, !38, !39}
!llvm.ident = !{!40}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "raxNotFound", scope: !2, file: !3, line: 48, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !34)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7, !8, !10, !12, !31, !32, !33}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNode", file: !15, line: 131, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.h", directory: "/root/.unikraft/apps/redis/build")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxNode", file: !15, line: 98, size: 32, elements: !17)
!17 = !{!18, !24, !25, !26, !27}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "iskey", scope: !16, file: !15, line: 99, baseType: !19, size: 1, flags: DIFlagBitField, extraData: i64 0)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !20, line: 48, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !22, line: 79, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "isnull", scope: !16, file: !15, line: 100, baseType: !19, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "iscompr", scope: !16, file: !15, line: 101, baseType: !19, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !16, file: !15, line: 102, baseType: !19, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !16, file: !15, line: 130, baseType: !28, offset: 32)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: -1)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!34 = !{!0, !35}
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "raxDebugMsg", scope: !2, file: !3, line: 74, type: !31, isLocal: true, isDefinition: true)
!37 = !{i32 2, !"Dwarf Version", i32 4}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 4}
!40 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!41 = distinct !DISubprogram(name: "raxSetDebugMsg", scope: !3, file: !3, line: 79, type: !42, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !44)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !31}
!44 = !{!45}
!45 = !DILocalVariable(name: "onoff", arg: 1, scope: !41, file: !3, line: 79, type: !31)
!46 = !DILocation(line: 79, column: 25, scope: !41)
!47 = !DILocation(line: 80, column: 17, scope: !41)
!48 = !{!49, !49, i64 0}
!49 = !{!"int", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !DILocation(line: 81, column: 1, scope: !41)
!53 = distinct !DISubprogram(name: "raxNewNode", scope: !3, file: !3, line: 186, type: !54, isLocal: false, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !60)
!54 = !DISubroutineType(types: !55)
!55 = !{!13, !56, !31}
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !57, line: 40, baseType: !58)
!57 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !59, line: 129, baseType: !32)
!59 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!60 = !{!61, !62, !63, !64}
!61 = !DILocalVariable(name: "children", arg: 1, scope: !53, file: !3, line: 186, type: !56)
!62 = !DILocalVariable(name: "datafield", arg: 2, scope: !53, file: !3, line: 186, type: !31)
!63 = !DILocalVariable(name: "nodesize", scope: !53, file: !3, line: 187, type: !56)
!64 = !DILocalVariable(name: "node", scope: !53, file: !3, line: 190, type: !13)
!65 = !DILocation(line: 186, column: 28, scope: !53)
!66 = !DILocation(line: 186, column: 42, scope: !53)
!67 = !DILocation(line: 187, column: 38, scope: !53)
!68 = !DILocation(line: 187, column: 48, scope: !53)
!69 = !DILocation(line: 188, column: 39, scope: !53)
!70 = !DILocation(line: 187, column: 47, scope: !53)
!71 = !DILocation(line: 187, column: 68, scope: !53)
!72 = !DILocation(line: 187, column: 12, scope: !53)
!73 = !DILocation(line: 189, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !53, file: !3, line: 189, column: 9)
!75 = !DILocation(line: 189, column: 9, scope: !53)
!76 = !DILocation(line: 189, column: 29, scope: !74)
!77 = !DILocation(line: 189, column: 20, scope: !74)
!78 = !DILocation(line: 0, scope: !53)
!79 = !DILocation(line: 190, column: 21, scope: !53)
!80 = !DILocation(line: 191, column: 14, scope: !81)
!81 = distinct !DILexicalBlock(scope: !53, file: !3, line: 191, column: 9)
!82 = !DILocation(line: 191, column: 9, scope: !53)
!83 = !DILocation(line: 190, column: 14, scope: !53)
!84 = !DILocation(line: 192, column: 11, scope: !53)
!85 = !DILocation(line: 195, column: 18, scope: !53)
!86 = !DILocation(line: 195, column: 16, scope: !53)
!87 = !DILocation(line: 196, column: 5, scope: !53)
!88 = !DILocation(line: 0, scope: !81)
!89 = !DILocation(line: 197, column: 1, scope: !53)
!90 = distinct !DISubprogram(name: "raxNew", scope: !3, file: !3, line: 201, type: !91, isLocal: false, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !102)
!91 = !DISubroutineType(types: !92)
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !15, line: 137, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !15, line: 133, size: 192, elements: !96)
!96 = !{!97, !98, !101}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !95, file: !15, line: 134, baseType: !13, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !95, file: !15, line: 135, baseType: !99, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !20, line: 60, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !22, line: 105, baseType: !32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !95, file: !15, line: 136, baseType: !99, size: 64, offset: 128)
!102 = !{!103}
!103 = !DILocalVariable(name: "rax", scope: !90, file: !3, line: 202, type: !93)
!104 = !DILocation(line: 202, column: 16, scope: !90)
!105 = !DILocation(line: 202, column: 10, scope: !90)
!106 = !DILocation(line: 203, column: 13, scope: !107)
!107 = distinct !DILexicalBlock(scope: !90, file: !3, line: 203, column: 9)
!108 = !DILocation(line: 203, column: 9, scope: !90)
!109 = !DILocation(line: 204, column: 10, scope: !90)
!110 = !DILocation(line: 204, column: 17, scope: !90)
!111 = !{!112, !112, i64 0}
!112 = !{!"long", !50, i64 0}
!113 = !DILocation(line: 186, column: 28, scope: !53, inlinedAt: !114)
!114 = distinct !DILocation(line: 206, column: 17, scope: !90)
!115 = !DILocation(line: 186, column: 42, scope: !53, inlinedAt: !114)
!116 = !DILocation(line: 187, column: 12, scope: !53, inlinedAt: !114)
!117 = !DILocation(line: 189, column: 9, scope: !53, inlinedAt: !114)
!118 = !DILocation(line: 190, column: 21, scope: !53, inlinedAt: !114)
!119 = !DILocation(line: 191, column: 14, scope: !81, inlinedAt: !114)
!120 = !DILocation(line: 191, column: 9, scope: !53, inlinedAt: !114)
!121 = !DILocation(line: 191, column: 23, scope: !81, inlinedAt: !114)
!122 = !DILocation(line: 197, column: 1, scope: !53, inlinedAt: !114)
!123 = !DILocation(line: 206, column: 10, scope: !90)
!124 = !DILocation(line: 206, column: 15, scope: !90)
!125 = !{!126, !127, i64 0}
!126 = !{!"rax", !127, i64 0, !112, i64 8, !112, i64 16}
!127 = !{!"any pointer", !50, i64 0}
!128 = !DILocation(line: 207, column: 9, scope: !90)
!129 = !DILocation(line: 208, column: 9, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !3, line: 207, column: 28)
!131 = distinct !DILexicalBlock(scope: !90, file: !3, line: 207, column: 9)
!132 = !DILocation(line: 209, column: 9, scope: !130)
!133 = !DILocation(line: 190, column: 14, scope: !53, inlinedAt: !114)
!134 = !DILocation(line: 192, column: 11, scope: !53, inlinedAt: !114)
!135 = !DILocation(line: 195, column: 16, scope: !53, inlinedAt: !114)
!136 = !DILocation(line: 196, column: 5, scope: !53, inlinedAt: !114)
!137 = !DILocation(line: 211, column: 9, scope: !138)
!138 = distinct !DILexicalBlock(scope: !131, file: !3, line: 210, column: 12)
!139 = !DILocation(line: 0, scope: !138)
!140 = !DILocation(line: 0, scope: !107)
!141 = !DILocation(line: 213, column: 1, scope: !90)
!142 = distinct !DISubprogram(name: "raxReallocForData", scope: !3, file: !3, line: 217, type: !143, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !145)
!143 = !DISubroutineType(types: !144)
!144 = !{!13, !13, !6}
!145 = !{!146, !147, !148}
!146 = !DILocalVariable(name: "n", arg: 1, scope: !142, file: !3, line: 217, type: !13)
!147 = !DILocalVariable(name: "data", arg: 2, scope: !142, file: !3, line: 217, type: !6)
!148 = !DILocalVariable(name: "curlen", scope: !142, file: !3, line: 219, type: !56)
!149 = !DILocation(line: 217, column: 37, scope: !142)
!150 = !DILocation(line: 217, column: 46, scope: !142)
!151 = !DILocation(line: 218, column: 14, scope: !152)
!152 = distinct !DILexicalBlock(scope: !142, file: !3, line: 218, column: 9)
!153 = !DILocation(line: 218, column: 9, scope: !142)
!154 = !DILocation(line: 219, column: 21, scope: !142)
!155 = !DILocation(line: 219, column: 12, scope: !142)
!156 = !DILocation(line: 220, column: 24, scope: !142)
!157 = !DILocation(line: 220, column: 32, scope: !142)
!158 = !DILocation(line: 220, column: 12, scope: !142)
!159 = !DILocation(line: 0, scope: !142)
!160 = !DILocation(line: 221, column: 1, scope: !142)
!161 = distinct !DISubprogram(name: "raxSetData", scope: !3, file: !3, line: 224, type: !162, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !164)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !13, !6}
!164 = !{!165, !166, !167}
!165 = !DILocalVariable(name: "n", arg: 1, scope: !161, file: !3, line: 224, type: !13)
!166 = !DILocalVariable(name: "data", arg: 2, scope: !161, file: !3, line: 224, type: !6)
!167 = !DILocalVariable(name: "ndata", scope: !168, file: !3, line: 228, type: !7)
!168 = distinct !DILexicalBlock(scope: !169, file: !3, line: 226, column: 23)
!169 = distinct !DILexicalBlock(scope: !161, file: !3, line: 226, column: 9)
!170 = !DILocation(line: 224, column: 26, scope: !161)
!171 = !DILocation(line: 224, column: 35, scope: !161)
!172 = !{!127, !127, i64 0}
!173 = !DILocation(line: 225, column: 8, scope: !161)
!174 = !DILocation(line: 225, column: 14, scope: !161)
!175 = !DILocation(line: 226, column: 14, scope: !169)
!176 = !DILocation(line: 226, column: 9, scope: !161)
!177 = !DILocation(line: 0, scope: !178)
!178 = distinct !DILexicalBlock(scope: !169, file: !3, line: 231, column: 12)
!179 = !DILocation(line: 227, column: 19, scope: !168)
!180 = !DILocation(line: 229, column: 14, scope: !168)
!181 = !DILocation(line: 229, column: 23, scope: !168)
!182 = !DILocation(line: 229, column: 46, scope: !168)
!183 = !DILocation(line: 228, column: 16, scope: !168)
!184 = !DILocation(line: 230, column: 22, scope: !168)
!185 = !DILocation(line: 230, column: 9, scope: !168)
!186 = !DILocation(line: 231, column: 5, scope: !168)
!187 = !DILocation(line: 232, column: 19, scope: !178)
!188 = !DILocation(line: 234, column: 1, scope: !161)
!189 = distinct !DISubprogram(name: "raxGetData", scope: !3, file: !3, line: 237, type: !190, isLocal: false, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !192)
!190 = !DISubroutineType(types: !191)
!191 = !{!6, !13}
!192 = !{!193, !194, !195}
!193 = !DILocalVariable(name: "n", arg: 1, scope: !189, file: !3, line: 237, type: !13)
!194 = !DILocalVariable(name: "ndata", scope: !189, file: !3, line: 239, type: !7)
!195 = !DILocalVariable(name: "data", scope: !189, file: !3, line: 240, type: !6)
!196 = !DILocation(line: 237, column: 27, scope: !189)
!197 = !DILocation(line: 238, column: 12, scope: !198)
!198 = distinct !DILexicalBlock(scope: !189, file: !3, line: 238, column: 9)
!199 = !DILocation(line: 238, column: 9, scope: !198)
!200 = !DILocation(line: 238, column: 9, scope: !189)
!201 = !DILocation(line: 239, column: 28, scope: !189)
!202 = !DILocation(line: 239, column: 37, scope: !189)
!203 = !DILocation(line: 239, column: 36, scope: !189)
!204 = !DILocation(line: 239, column: 60, scope: !189)
!205 = !DILocation(line: 239, column: 12, scope: !189)
!206 = !DILocation(line: 240, column: 5, scope: !189)
!207 = !DILocation(line: 241, column: 5, scope: !189)
!208 = !DILocation(line: 242, column: 12, scope: !189)
!209 = !DILocation(line: 240, column: 11, scope: !189)
!210 = !DILocation(line: 243, column: 1, scope: !189)
!211 = !DILocation(line: 0, scope: !189)
!212 = distinct !DISubprogram(name: "raxAddChild", scope: !3, file: !3, line: 254, type: !213, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !216)
!213 = !DISubroutineType(types: !214)
!214 = !{!13, !13, !11, !12, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229}
!217 = !DILocalVariable(name: "n", arg: 1, scope: !212, file: !3, line: 254, type: !13)
!218 = !DILocalVariable(name: "c", arg: 2, scope: !212, file: !3, line: 254, type: !11)
!219 = !DILocalVariable(name: "childptr", arg: 3, scope: !212, file: !3, line: 254, type: !12)
!220 = !DILocalVariable(name: "parentlink", arg: 4, scope: !212, file: !3, line: 254, type: !215)
!221 = !DILocalVariable(name: "curlen", scope: !212, file: !3, line: 257, type: !56)
!222 = !DILocalVariable(name: "newlen", scope: !212, file: !3, line: 259, type: !56)
!223 = !DILocalVariable(name: "child", scope: !212, file: !3, line: 264, type: !13)
!224 = !DILocalVariable(name: "newn", scope: !212, file: !3, line: 268, type: !13)
!225 = !DILocalVariable(name: "pos", scope: !212, file: !3, line: 303, type: !31)
!226 = !DILocalVariable(name: "src", scope: !212, file: !3, line: 314, type: !10)
!227 = !DILocalVariable(name: "dst", scope: !212, file: !3, line: 314, type: !10)
!228 = !DILocalVariable(name: "shift", scope: !212, file: !3, line: 332, type: !56)
!229 = !DILocalVariable(name: "childfield", scope: !212, file: !3, line: 380, type: !12)
!230 = !DILocation(line: 254, column: 31, scope: !212)
!231 = !DILocation(line: 254, column: 48, scope: !212)
!232 = !DILocation(line: 254, column: 61, scope: !212)
!233 = !DILocation(line: 254, column: 82, scope: !212)
!234 = !DILocation(line: 255, column: 5, scope: !212)
!235 = !DILocation(line: 257, column: 21, scope: !212)
!236 = !DILocation(line: 257, column: 12, scope: !212)
!237 = !DILocation(line: 258, column: 12, scope: !212)
!238 = !DILocation(line: 259, column: 21, scope: !212)
!239 = !DILocation(line: 259, column: 12, scope: !212)
!240 = !DILocation(line: 260, column: 12, scope: !212)
!241 = !DILocation(line: 264, column: 5, scope: !212)
!242 = !DILocation(line: 186, column: 28, scope: !53, inlinedAt: !243)
!243 = distinct !DILocation(line: 264, column: 22, scope: !212)
!244 = !DILocation(line: 186, column: 42, scope: !53, inlinedAt: !243)
!245 = !DILocation(line: 187, column: 12, scope: !53, inlinedAt: !243)
!246 = !DILocation(line: 189, column: 9, scope: !53, inlinedAt: !243)
!247 = !DILocation(line: 190, column: 21, scope: !53, inlinedAt: !243)
!248 = !DILocation(line: 191, column: 14, scope: !81, inlinedAt: !243)
!249 = !DILocation(line: 191, column: 9, scope: !53, inlinedAt: !243)
!250 = !DILocation(line: 191, column: 23, scope: !81, inlinedAt: !243)
!251 = !DILocation(line: 197, column: 1, scope: !53, inlinedAt: !243)
!252 = !DILocation(line: 264, column: 14, scope: !212)
!253 = !DILocation(line: 265, column: 24, scope: !254)
!254 = distinct !DILexicalBlock(scope: !212, file: !3, line: 265, column: 9)
!255 = !DILocation(line: 190, column: 14, scope: !53, inlinedAt: !243)
!256 = !DILocation(line: 192, column: 11, scope: !53, inlinedAt: !243)
!257 = !DILocation(line: 195, column: 16, scope: !53, inlinedAt: !243)
!258 = !DILocation(line: 196, column: 5, scope: !53, inlinedAt: !243)
!259 = !DILocation(line: 265, column: 9, scope: !212)
!260 = !DILocation(line: 268, column: 33, scope: !212)
!261 = !DILocation(line: 268, column: 21, scope: !212)
!262 = !DILocation(line: 268, column: 14, scope: !212)
!263 = !DILocation(line: 269, column: 14, scope: !264)
!264 = distinct !DILexicalBlock(scope: !212, file: !3, line: 269, column: 9)
!265 = !DILocation(line: 269, column: 9, scope: !212)
!266 = !DILocation(line: 270, column: 9, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !3, line: 269, column: 23)
!268 = !DILocation(line: 271, column: 9, scope: !267)
!269 = !DILocation(line: 303, column: 9, scope: !212)
!270 = !DILocation(line: 304, column: 10, scope: !271)
!271 = distinct !DILexicalBlock(scope: !212, file: !3, line: 304, column: 5)
!272 = !DILocation(line: 305, column: 16, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !3, line: 305, column: 13)
!274 = distinct !DILexicalBlock(scope: !275, file: !3, line: 304, column: 41)
!275 = distinct !DILexicalBlock(scope: !271, file: !3, line: 304, column: 5)
!276 = !DILocation(line: 304, column: 28, scope: !275)
!277 = !DILocation(line: 304, column: 23, scope: !275)
!278 = !DILocation(line: 304, column: 5, scope: !271)
!279 = !DILocation(line: 305, column: 13, scope: !273)
!280 = !{!50, !50, i64 0}
!281 = !DILocation(line: 305, column: 26, scope: !273)
!282 = !DILocation(line: 305, column: 13, scope: !274)
!283 = !DILocation(line: 304, column: 37, scope: !275)
!284 = !DILocation(line: 304, column: 5, scope: !275)
!285 = distinct !{!285, !278, !286}
!286 = !DILocation(line: 306, column: 5, scope: !271)
!287 = !DILocation(line: 315, column: 12, scope: !288)
!288 = distinct !DILexicalBlock(scope: !212, file: !3, line: 315, column: 9)
!289 = !DILocation(line: 0, scope: !275)
!290 = !DILocation(line: 315, column: 9, scope: !288)
!291 = !DILocation(line: 315, column: 18, scope: !288)
!292 = !DILocation(line: 315, column: 25, scope: !288)
!293 = !DILocation(line: 315, column: 22, scope: !288)
!294 = !DILocation(line: 315, column: 9, scope: !212)
!295 = !DILocation(line: 316, column: 33, scope: !296)
!296 = distinct !DILexicalBlock(scope: !288, file: !3, line: 315, column: 33)
!297 = !DILocation(line: 316, column: 40, scope: !296)
!298 = !DILocation(line: 314, column: 20, scope: !212)
!299 = !DILocation(line: 317, column: 33, scope: !296)
!300 = !DILocation(line: 317, column: 40, scope: !296)
!301 = !DILocation(line: 314, column: 26, scope: !212)
!302 = !DILocation(line: 318, column: 9, scope: !296)
!303 = !DILocation(line: 319, column: 5, scope: !296)
!304 = !DILocation(line: 344, column: 22, scope: !212)
!305 = !DILocation(line: 332, column: 27, scope: !212)
!306 = !DILocation(line: 332, column: 36, scope: !212)
!307 = !DILocation(line: 332, column: 12, scope: !212)
!308 = !DILocation(line: 344, column: 18, scope: !212)
!309 = !DILocation(line: 345, column: 11, scope: !212)
!310 = !DILocation(line: 344, column: 26, scope: !212)
!311 = !DILocation(line: 346, column: 28, scope: !212)
!312 = !DILocation(line: 346, column: 27, scope: !212)
!313 = !DILocation(line: 345, column: 30, scope: !212)
!314 = !DILocation(line: 347, column: 16, scope: !212)
!315 = !DILocation(line: 347, column: 22, scope: !212)
!316 = !DILocation(line: 347, column: 69, scope: !212)
!317 = !DILocation(line: 347, column: 61, scope: !212)
!318 = !DILocation(line: 347, column: 60, scope: !212)
!319 = !DILocation(line: 347, column: 5, scope: !212)
!320 = !DILocation(line: 358, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !212, file: !3, line: 358, column: 9)
!322 = !DILocation(line: 358, column: 9, scope: !212)
!323 = !DILocation(line: 359, column: 32, scope: !324)
!324 = distinct !DILexicalBlock(scope: !321, file: !3, line: 358, column: 16)
!325 = !DILocation(line: 360, column: 20, scope: !324)
!326 = !DILocation(line: 360, column: 9, scope: !324)
!327 = !DILocation(line: 361, column: 5, scope: !324)
!328 = !DILocation(line: 369, column: 18, scope: !212)
!329 = !DILocation(line: 370, column: 16, scope: !212)
!330 = !DILocation(line: 370, column: 26, scope: !212)
!331 = !DILocation(line: 370, column: 30, scope: !212)
!332 = !DILocation(line: 370, column: 23, scope: !212)
!333 = !DILocation(line: 370, column: 5, scope: !212)
!334 = !DILocation(line: 377, column: 18, scope: !212)
!335 = !DILocation(line: 378, column: 12, scope: !212)
!336 = !DILocation(line: 379, column: 28, scope: !212)
!337 = !DILocation(line: 380, column: 43, scope: !212)
!338 = !DILocation(line: 380, column: 15, scope: !212)
!339 = !DILocation(line: 381, column: 5, scope: !212)
!340 = !DILocation(line: 382, column: 17, scope: !212)
!341 = !DILocation(line: 382, column: 15, scope: !212)
!342 = !DILocation(line: 383, column: 17, scope: !212)
!343 = !DILocation(line: 0, scope: !267)
!344 = !DILocation(line: 385, column: 1, scope: !212)
!345 = distinct !DISubprogram(name: "raxCompressNode", scope: !3, file: !3, line: 395, type: !346, isLocal: false, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{!13, !13, !10, !56, !12}
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356}
!349 = !DILocalVariable(name: "n", arg: 1, scope: !345, file: !3, line: 395, type: !13)
!350 = !DILocalVariable(name: "s", arg: 2, scope: !345, file: !3, line: 395, type: !10)
!351 = !DILocalVariable(name: "len", arg: 3, scope: !345, file: !3, line: 395, type: !56)
!352 = !DILocalVariable(name: "child", arg: 4, scope: !345, file: !3, line: 395, type: !12)
!353 = !DILocalVariable(name: "data", scope: !345, file: !3, line: 397, type: !6)
!354 = !DILocalVariable(name: "newsize", scope: !345, file: !3, line: 398, type: !56)
!355 = !DILocalVariable(name: "newn", scope: !345, file: !3, line: 412, type: !13)
!356 = !DILocalVariable(name: "childfield", scope: !345, file: !3, line: 423, type: !12)
!357 = !DILocation(line: 395, column: 35, scope: !345)
!358 = !DILocation(line: 395, column: 53, scope: !345)
!359 = !DILocation(line: 395, column: 63, scope: !345)
!360 = !DILocation(line: 395, column: 78, scope: !345)
!361 = !DILocation(line: 396, column: 5, scope: !345)
!362 = !DILocation(line: 397, column: 11, scope: !345)
!363 = !DILocation(line: 186, column: 28, scope: !53, inlinedAt: !364)
!364 = distinct !DILocation(line: 403, column: 14, scope: !345)
!365 = !DILocation(line: 186, column: 42, scope: !53, inlinedAt: !364)
!366 = !DILocation(line: 187, column: 12, scope: !53, inlinedAt: !364)
!367 = !DILocation(line: 189, column: 9, scope: !53, inlinedAt: !364)
!368 = !DILocation(line: 190, column: 21, scope: !53, inlinedAt: !364)
!369 = !DILocation(line: 191, column: 14, scope: !81, inlinedAt: !364)
!370 = !DILocation(line: 191, column: 9, scope: !53, inlinedAt: !364)
!371 = !DILocation(line: 191, column: 23, scope: !81, inlinedAt: !364)
!372 = !DILocation(line: 197, column: 1, scope: !53, inlinedAt: !364)
!373 = !DILocation(line: 403, column: 12, scope: !345)
!374 = !DILocation(line: 404, column: 25, scope: !375)
!375 = distinct !DILexicalBlock(scope: !345, file: !3, line: 404, column: 9)
!376 = !DILocation(line: 190, column: 14, scope: !53, inlinedAt: !364)
!377 = !DILocation(line: 192, column: 11, scope: !53, inlinedAt: !364)
!378 = !DILocation(line: 195, column: 16, scope: !53, inlinedAt: !364)
!379 = !DILocation(line: 196, column: 5, scope: !53, inlinedAt: !364)
!380 = !DILocation(line: 404, column: 9, scope: !345)
!381 = !DILocation(line: 407, column: 30, scope: !345)
!382 = !DILocation(line: 407, column: 35, scope: !345)
!383 = !DILocation(line: 407, column: 34, scope: !345)
!384 = !DILocation(line: 407, column: 50, scope: !345)
!385 = !DILocation(line: 398, column: 12, scope: !345)
!386 = !DILocation(line: 408, column: 12, scope: !387)
!387 = distinct !DILexicalBlock(scope: !345, file: !3, line: 408, column: 9)
!388 = !DILocation(line: 408, column: 9, scope: !387)
!389 = !DILocation(line: 408, column: 9, scope: !345)
!390 = !DILocation(line: 237, column: 27, scope: !189, inlinedAt: !391)
!391 = distinct !DILocation(line: 409, column: 16, scope: !392)
!392 = distinct !DILexicalBlock(scope: !387, file: !3, line: 408, column: 19)
!393 = !DILocation(line: 238, column: 12, scope: !198, inlinedAt: !391)
!394 = !DILocation(line: 238, column: 9, scope: !198, inlinedAt: !391)
!395 = !DILocation(line: 238, column: 9, scope: !189, inlinedAt: !391)
!396 = !DILocation(line: 238, column: 20, scope: !198, inlinedAt: !391)
!397 = !DILocation(line: 239, column: 28, scope: !189, inlinedAt: !391)
!398 = !DILocation(line: 239, column: 37, scope: !189, inlinedAt: !391)
!399 = !DILocation(line: 239, column: 36, scope: !189, inlinedAt: !391)
!400 = !DILocation(line: 239, column: 60, scope: !189, inlinedAt: !391)
!401 = !DILocation(line: 239, column: 12, scope: !189, inlinedAt: !391)
!402 = !DILocation(line: 240, column: 5, scope: !189, inlinedAt: !391)
!403 = !DILocation(line: 241, column: 5, scope: !189, inlinedAt: !391)
!404 = !DILocation(line: 242, column: 12, scope: !189, inlinedAt: !391)
!405 = !DILocation(line: 240, column: 11, scope: !189, inlinedAt: !391)
!406 = !DILocation(line: 243, column: 1, scope: !189, inlinedAt: !391)
!407 = !DILocation(line: 410, column: 17, scope: !408)
!408 = distinct !DILexicalBlock(scope: !392, file: !3, line: 410, column: 13)
!409 = !DILocation(line: 0, scope: !189, inlinedAt: !391)
!410 = !DILocation(line: 410, column: 14, scope: !408)
!411 = !DILocation(line: 410, column: 13, scope: !392)
!412 = !DILocation(line: 410, column: 33, scope: !408)
!413 = !DILocation(line: 410, column: 25, scope: !408)
!414 = !DILocation(line: 0, scope: !345)
!415 = !DILocation(line: 412, column: 33, scope: !345)
!416 = !DILocation(line: 412, column: 21, scope: !345)
!417 = !DILocation(line: 412, column: 14, scope: !345)
!418 = !DILocation(line: 413, column: 14, scope: !419)
!419 = distinct !DILexicalBlock(scope: !345, file: !3, line: 413, column: 9)
!420 = !DILocation(line: 413, column: 9, scope: !345)
!421 = !DILocation(line: 414, column: 18, scope: !422)
!422 = distinct !DILexicalBlock(scope: !419, file: !3, line: 413, column: 23)
!423 = !DILocation(line: 414, column: 9, scope: !422)
!424 = !DILocation(line: 415, column: 9, scope: !422)
!425 = !DILocation(line: 419, column: 8, scope: !345)
!426 = !DILocation(line: 419, column: 16, scope: !345)
!427 = !DILocation(line: 420, column: 15, scope: !345)
!428 = !DILocation(line: 420, column: 13, scope: !345)
!429 = !DILocation(line: 421, column: 15, scope: !345)
!430 = !DILocation(line: 421, column: 5, scope: !345)
!431 = !DILocation(line: 422, column: 12, scope: !432)
!432 = distinct !DILexicalBlock(scope: !345, file: !3, line: 422, column: 9)
!433 = !DILocation(line: 422, column: 9, scope: !432)
!434 = !DILocation(line: 422, column: 9, scope: !345)
!435 = !DILocation(line: 224, column: 26, scope: !161, inlinedAt: !436)
!436 = distinct !DILocation(line: 422, column: 19, scope: !432)
!437 = !DILocation(line: 224, column: 35, scope: !161, inlinedAt: !436)
!438 = !DILocation(line: 225, column: 14, scope: !161, inlinedAt: !436)
!439 = !DILocation(line: 226, column: 14, scope: !169, inlinedAt: !436)
!440 = !DILocation(line: 226, column: 9, scope: !161, inlinedAt: !436)
!441 = !DILocation(line: 0, scope: !178, inlinedAt: !436)
!442 = !DILocation(line: 227, column: 19, scope: !168, inlinedAt: !436)
!443 = !DILocation(line: 229, column: 23, scope: !168, inlinedAt: !436)
!444 = !DILocation(line: 229, column: 46, scope: !168, inlinedAt: !436)
!445 = !DILocation(line: 228, column: 16, scope: !168, inlinedAt: !436)
!446 = !DILocation(line: 230, column: 9, scope: !168, inlinedAt: !436)
!447 = !DILocation(line: 231, column: 5, scope: !168, inlinedAt: !436)
!448 = !DILocation(line: 232, column: 19, scope: !178, inlinedAt: !436)
!449 = !DILocation(line: 234, column: 1, scope: !161, inlinedAt: !436)
!450 = !DILocation(line: 422, column: 19, scope: !432)
!451 = !DILocation(line: 423, column: 28, scope: !345)
!452 = !DILocation(line: 423, column: 15, scope: !345)
!453 = !DILocation(line: 424, column: 23, scope: !345)
!454 = !DILocation(line: 424, column: 5, scope: !345)
!455 = !DILocation(line: 0, scope: !422)
!456 = !DILocation(line: 426, column: 1, scope: !345)
!457 = distinct !DISubprogram(name: "raxGenericInsert", scope: !3, file: !3, line: 507, type: !458, isLocal: false, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !460)
!458 = !DISubroutineType(types: !459)
!459 = !{!31, !93, !10, !56, !6, !7, !31}
!460 = !{!461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !474, !475, !476, !477, !478, !479, !480, !481, !482, !487, !491, !492, !495, !496, !499, !500, !501, !502, !503, !504, !505, !508, !510, !513, !514, !516, !517}
!461 = !DILocalVariable(name: "rax", arg: 1, scope: !457, file: !3, line: 507, type: !93)
!462 = !DILocalVariable(name: "s", arg: 2, scope: !457, file: !3, line: 507, type: !10)
!463 = !DILocalVariable(name: "len", arg: 3, scope: !457, file: !3, line: 507, type: !56)
!464 = !DILocalVariable(name: "data", arg: 4, scope: !457, file: !3, line: 507, type: !6)
!465 = !DILocalVariable(name: "old", arg: 5, scope: !457, file: !3, line: 507, type: !7)
!466 = !DILocalVariable(name: "overwrite", arg: 6, scope: !457, file: !3, line: 507, type: !31)
!467 = !DILocalVariable(name: "i", scope: !457, file: !3, line: 508, type: !56)
!468 = !DILocalVariable(name: "j", scope: !457, file: !3, line: 509, type: !31)
!469 = !DILocalVariable(name: "h", scope: !457, file: !3, line: 513, type: !13)
!470 = !DILocalVariable(name: "parentlink", scope: !457, file: !3, line: 513, type: !12)
!471 = !DILocalVariable(name: "childfield", scope: !472, file: !3, line: 683, type: !12)
!472 = distinct !DILexicalBlock(scope: !473, file: !3, line: 675, column: 33)
!473 = distinct !DILexicalBlock(scope: !457, file: !3, line: 675, column: 9)
!474 = !DILocalVariable(name: "next", scope: !472, file: !3, line: 684, type: !13)
!475 = !DILocalVariable(name: "trimmedlen", scope: !472, file: !3, line: 693, type: !56)
!476 = !DILocalVariable(name: "postfixlen", scope: !472, file: !3, line: 694, type: !56)
!477 = !DILocalVariable(name: "split_node_is_key", scope: !472, file: !3, line: 695, type: !31)
!478 = !DILocalVariable(name: "nodesize", scope: !472, file: !3, line: 696, type: !56)
!479 = !DILocalVariable(name: "splitnode", scope: !472, file: !3, line: 700, type: !13)
!480 = !DILocalVariable(name: "trimmed", scope: !472, file: !3, line: 701, type: !13)
!481 = !DILocalVariable(name: "postfix", scope: !472, file: !3, line: 702, type: !13)
!482 = !DILocalVariable(name: "ndata", scope: !483, file: !3, line: 733, type: !6)
!483 = distinct !DILexicalBlock(scope: !484, file: !3, line: 732, column: 27)
!484 = distinct !DILexicalBlock(scope: !485, file: !3, line: 732, column: 17)
!485 = distinct !DILexicalBlock(scope: !486, file: !3, line: 730, column: 21)
!486 = distinct !DILexicalBlock(scope: !472, file: !3, line: 730, column: 13)
!487 = !DILocalVariable(name: "ndata", scope: !488, file: !3, line: 745, type: !6)
!488 = distinct !DILexicalBlock(scope: !489, file: !3, line: 744, column: 41)
!489 = distinct !DILexicalBlock(scope: !490, file: !3, line: 744, column: 17)
!490 = distinct !DILexicalBlock(scope: !486, file: !3, line: 737, column: 16)
!491 = !DILocalVariable(name: "cp", scope: !490, file: !3, line: 748, type: !12)
!492 = !DILocalVariable(name: "cp", scope: !493, file: !3, line: 764, type: !12)
!493 = distinct !DILexicalBlock(scope: !494, file: !3, line: 757, column: 25)
!494 = distinct !DILexicalBlock(scope: !472, file: !3, line: 757, column: 13)
!495 = !DILocalVariable(name: "splitchild", scope: !472, file: !3, line: 773, type: !12)
!496 = !DILocalVariable(name: "postfixlen", scope: !497, file: !3, line: 787, type: !56)
!497 = distinct !DILexicalBlock(scope: !498, file: !3, line: 781, column: 40)
!498 = distinct !DILexicalBlock(scope: !473, file: !3, line: 781, column: 16)
!499 = !DILocalVariable(name: "nodesize", scope: !497, file: !3, line: 788, type: !56)
!500 = !DILocalVariable(name: "postfix", scope: !497, file: !3, line: 791, type: !13)
!501 = !DILocalVariable(name: "trimmed", scope: !497, file: !3, line: 795, type: !13)
!502 = !DILocalVariable(name: "childfield", scope: !497, file: !3, line: 805, type: !12)
!503 = !DILocalVariable(name: "next", scope: !497, file: !3, line: 806, type: !13)
!504 = !DILocalVariable(name: "cp", scope: !497, file: !3, line: 816, type: !12)
!505 = !DILocalVariable(name: "aux", scope: !506, file: !3, line: 828, type: !6)
!506 = distinct !DILexicalBlock(scope: !507, file: !3, line: 827, column: 23)
!507 = distinct !DILexicalBlock(scope: !497, file: !3, line: 827, column: 13)
!508 = !DILocalVariable(name: "child", scope: !509, file: !3, line: 847, type: !13)
!509 = distinct !DILexicalBlock(scope: !457, file: !3, line: 846, column: 20)
!510 = !DILocalVariable(name: "comprsize", scope: !511, file: !3, line: 854, type: !56)
!511 = distinct !DILexicalBlock(scope: !512, file: !3, line: 852, column: 40)
!512 = distinct !DILexicalBlock(scope: !509, file: !3, line: 852, column: 13)
!513 = !DILocalVariable(name: "newh", scope: !511, file: !3, line: 857, type: !13)
!514 = !DILocalVariable(name: "new_parentlink", scope: !515, file: !3, line: 865, type: !12)
!515 = distinct !DILexicalBlock(scope: !512, file: !3, line: 863, column: 16)
!516 = !DILocalVariable(name: "newh", scope: !515, file: !3, line: 866, type: !13)
!517 = !DILocalVariable(name: "newh", scope: !457, file: !3, line: 876, type: !13)
!518 = !DILocation(line: 507, column: 27, scope: !457)
!519 = !DILocation(line: 507, column: 47, scope: !457)
!520 = !DILocation(line: 507, column: 57, scope: !457)
!521 = !DILocation(line: 507, column: 68, scope: !457)
!522 = !DILocation(line: 507, column: 81, scope: !457)
!523 = !DILocation(line: 507, column: 90, scope: !457)
!524 = !DILocation(line: 509, column: 5, scope: !457)
!525 = !DILocation(line: 509, column: 9, scope: !457)
!526 = !DILocation(line: 513, column: 5, scope: !457)
!527 = !DILocation(line: 513, column: 14, scope: !457)
!528 = !DILocation(line: 513, column: 19, scope: !457)
!529 = !DILocation(line: 516, column: 9, scope: !457)
!530 = !DILocation(line: 508, column: 12, scope: !457)
!531 = !DILocation(line: 523, column: 11, scope: !532)
!532 = distinct !DILexicalBlock(scope: !457, file: !3, line: 523, column: 9)
!533 = !DILocation(line: 523, column: 18, scope: !532)
!534 = !DILocation(line: 675, column: 9, scope: !473)
!535 = !DILocation(line: 523, column: 23, scope: !532)
!536 = !DILocation(line: 523, column: 26, scope: !532)
!537 = !DILocation(line: 523, column: 37, scope: !532)
!538 = !DILocation(line: 523, column: 39, scope: !532)
!539 = !DILocation(line: 523, column: 34, scope: !532)
!540 = !DILocation(line: 526, column: 17, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !3, line: 526, column: 13)
!542 = distinct !DILexicalBlock(scope: !532, file: !3, line: 523, column: 80)
!543 = !DILocation(line: 526, column: 14, scope: !541)
!544 = !DILocation(line: 526, column: 23, scope: !541)
!545 = !DILocation(line: 526, column: 30, scope: !541)
!546 = !DILocation(line: 526, column: 27, scope: !541)
!547 = !DILocation(line: 526, column: 40, scope: !541)
!548 = !DILocation(line: 526, column: 37, scope: !541)
!549 = !DILocation(line: 217, column: 37, scope: !142, inlinedAt: !550)
!550 = distinct !DILocation(line: 527, column: 17, scope: !551)
!551 = distinct !DILexicalBlock(scope: !541, file: !3, line: 526, column: 52)
!552 = !DILocation(line: 217, column: 46, scope: !142, inlinedAt: !550)
!553 = !DILocation(line: 218, column: 14, scope: !152, inlinedAt: !550)
!554 = !DILocation(line: 218, column: 9, scope: !142, inlinedAt: !550)
!555 = !DILocation(line: 219, column: 21, scope: !142, inlinedAt: !550)
!556 = !DILocation(line: 219, column: 12, scope: !142, inlinedAt: !550)
!557 = !DILocation(line: 220, column: 24, scope: !142, inlinedAt: !550)
!558 = !DILocation(line: 220, column: 32, scope: !142, inlinedAt: !550)
!559 = !DILocation(line: 220, column: 12, scope: !142, inlinedAt: !550)
!560 = !DILocation(line: 0, scope: !142, inlinedAt: !550)
!561 = !DILocation(line: 221, column: 1, scope: !142, inlinedAt: !550)
!562 = !DILocation(line: 527, column: 15, scope: !551)
!563 = !DILocation(line: 528, column: 17, scope: !564)
!564 = distinct !DILexicalBlock(scope: !551, file: !3, line: 528, column: 17)
!565 = !DILocation(line: 528, column: 17, scope: !551)
!566 = !DILocation(line: 530, column: 13, scope: !542)
!567 = !DILocation(line: 528, column: 27, scope: !564)
!568 = !DILocation(line: 528, column: 20, scope: !564)
!569 = !DILocation(line: 530, column: 13, scope: !570)
!570 = distinct !DILexicalBlock(scope: !542, file: !3, line: 530, column: 13)
!571 = !DILocation(line: 530, column: 15, scope: !570)
!572 = !DILocation(line: 531, column: 13, scope: !573)
!573 = distinct !DILexicalBlock(scope: !570, file: !3, line: 530, column: 24)
!574 = !DILocation(line: 531, column: 19, scope: !573)
!575 = !DILocation(line: 532, column: 13, scope: !573)
!576 = !DILocation(line: 536, column: 16, scope: !577)
!577 = distinct !DILexicalBlock(scope: !542, file: !3, line: 536, column: 13)
!578 = !DILocation(line: 536, column: 13, scope: !577)
!579 = !DILocation(line: 536, column: 13, scope: !542)
!580 = !DILocation(line: 537, column: 17, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 537, column: 17)
!582 = distinct !DILexicalBlock(scope: !577, file: !3, line: 536, column: 23)
!583 = !DILocation(line: 537, column: 17, scope: !582)
!584 = !DILocation(line: 237, column: 27, scope: !189, inlinedAt: !585)
!585 = distinct !DILocation(line: 537, column: 29, scope: !581)
!586 = !DILocation(line: 238, column: 12, scope: !198, inlinedAt: !585)
!587 = !DILocation(line: 238, column: 9, scope: !198, inlinedAt: !585)
!588 = !DILocation(line: 238, column: 9, scope: !189, inlinedAt: !585)
!589 = !DILocation(line: 239, column: 28, scope: !189, inlinedAt: !585)
!590 = !DILocation(line: 239, column: 37, scope: !189, inlinedAt: !585)
!591 = !DILocation(line: 239, column: 36, scope: !189, inlinedAt: !585)
!592 = !DILocation(line: 239, column: 60, scope: !189, inlinedAt: !585)
!593 = !DILocation(line: 239, column: 12, scope: !189, inlinedAt: !585)
!594 = !DILocation(line: 240, column: 5, scope: !189, inlinedAt: !585)
!595 = !DILocation(line: 241, column: 5, scope: !189, inlinedAt: !585)
!596 = !DILocation(line: 242, column: 12, scope: !189, inlinedAt: !585)
!597 = !DILocation(line: 240, column: 11, scope: !189, inlinedAt: !585)
!598 = !DILocation(line: 243, column: 1, scope: !189, inlinedAt: !585)
!599 = !DILocation(line: 0, scope: !189, inlinedAt: !585)
!600 = !DILocation(line: 537, column: 27, scope: !581)
!601 = !DILocation(line: 537, column: 22, scope: !581)
!602 = !DILocation(line: 538, column: 17, scope: !603)
!603 = distinct !DILexicalBlock(scope: !582, file: !3, line: 538, column: 17)
!604 = !DILocation(line: 538, column: 17, scope: !582)
!605 = !DILocation(line: 538, column: 39, scope: !603)
!606 = !DILocation(line: 224, column: 26, scope: !161, inlinedAt: !607)
!607 = distinct !DILocation(line: 538, column: 28, scope: !603)
!608 = !DILocation(line: 224, column: 35, scope: !161, inlinedAt: !607)
!609 = !DILocation(line: 225, column: 8, scope: !161, inlinedAt: !607)
!610 = !DILocation(line: 225, column: 14, scope: !161, inlinedAt: !607)
!611 = !DILocation(line: 226, column: 14, scope: !169, inlinedAt: !607)
!612 = !DILocation(line: 226, column: 9, scope: !161, inlinedAt: !607)
!613 = !DILocation(line: 0, scope: !178, inlinedAt: !607)
!614 = !DILocation(line: 227, column: 19, scope: !168, inlinedAt: !607)
!615 = !DILocation(line: 229, column: 14, scope: !168, inlinedAt: !607)
!616 = !DILocation(line: 229, column: 23, scope: !168, inlinedAt: !607)
!617 = !DILocation(line: 229, column: 46, scope: !168, inlinedAt: !607)
!618 = !DILocation(line: 228, column: 16, scope: !168, inlinedAt: !607)
!619 = !DILocation(line: 230, column: 9, scope: !168, inlinedAt: !607)
!620 = !DILocation(line: 231, column: 5, scope: !168, inlinedAt: !607)
!621 = !DILocation(line: 232, column: 19, scope: !178, inlinedAt: !607)
!622 = !DILocation(line: 234, column: 1, scope: !161, inlinedAt: !607)
!623 = !DILocation(line: 538, column: 28, scope: !603)
!624 = !DILocation(line: 539, column: 13, scope: !582)
!625 = !DILocation(line: 539, column: 19, scope: !582)
!626 = !DILocation(line: 540, column: 13, scope: !582)
!627 = !DILocation(line: 224, column: 26, scope: !161, inlinedAt: !628)
!628 = distinct !DILocation(line: 545, column: 9, scope: !542)
!629 = !DILocation(line: 224, column: 35, scope: !161, inlinedAt: !628)
!630 = !DILocation(line: 225, column: 14, scope: !161, inlinedAt: !628)
!631 = !DILocation(line: 226, column: 14, scope: !169, inlinedAt: !628)
!632 = !DILocation(line: 226, column: 9, scope: !161, inlinedAt: !628)
!633 = !DILocation(line: 0, scope: !178, inlinedAt: !628)
!634 = !DILocation(line: 227, column: 19, scope: !168, inlinedAt: !628)
!635 = !DILocation(line: 229, column: 14, scope: !168, inlinedAt: !628)
!636 = !DILocation(line: 229, column: 23, scope: !168, inlinedAt: !628)
!637 = !DILocation(line: 229, column: 46, scope: !168, inlinedAt: !628)
!638 = !DILocation(line: 228, column: 16, scope: !168, inlinedAt: !628)
!639 = !DILocation(line: 230, column: 9, scope: !168, inlinedAt: !628)
!640 = !DILocation(line: 231, column: 5, scope: !168, inlinedAt: !628)
!641 = !DILocation(line: 232, column: 19, scope: !178, inlinedAt: !628)
!642 = !DILocation(line: 234, column: 1, scope: !161, inlinedAt: !628)
!643 = !DILocation(line: 546, column: 14, scope: !542)
!644 = !DILocation(line: 546, column: 20, scope: !542)
!645 = !{!126, !112, i64 8}
!646 = !DILocation(line: 547, column: 9, scope: !542)
!647 = !DILocation(line: 675, column: 12, scope: !473)
!648 = !DILocation(line: 675, column: 20, scope: !473)
!649 = !DILocation(line: 675, column: 9, scope: !457)
!650 = !DILocation(line: 683, column: 32, scope: !472)
!651 = !DILocation(line: 0, scope: !472)
!652 = !DILocation(line: 683, column: 19, scope: !472)
!653 = !DILocation(line: 684, column: 9, scope: !472)
!654 = !DILocation(line: 685, column: 9, scope: !472)
!655 = !DILocation(line: 688, column: 13, scope: !656)
!656 = distinct !DILexicalBlock(scope: !472, file: !3, line: 688, column: 13)
!657 = !DILocation(line: 688, column: 16, scope: !656)
!658 = !DILocation(line: 693, column: 29, scope: !472)
!659 = !DILocation(line: 693, column: 16, scope: !472)
!660 = !DILocation(line: 694, column: 32, scope: !472)
!661 = !DILocation(line: 694, column: 41, scope: !472)
!662 = !DILocation(line: 694, column: 29, scope: !472)
!663 = !DILocation(line: 694, column: 16, scope: !472)
!664 = !DILocation(line: 695, column: 34, scope: !472)
!665 = !DILocation(line: 695, column: 45, scope: !472)
!666 = !DILocation(line: 695, column: 48, scope: !472)
!667 = !DILocation(line: 695, column: 57, scope: !472)
!668 = !DILocation(line: 695, column: 13, scope: !472)
!669 = !DILocation(line: 700, column: 9, scope: !472)
!670 = !DILocation(line: 186, column: 28, scope: !53, inlinedAt: !671)
!671 = distinct !DILocation(line: 700, column: 30, scope: !472)
!672 = !DILocation(line: 186, column: 42, scope: !53, inlinedAt: !671)
!673 = !DILocation(line: 187, column: 12, scope: !53, inlinedAt: !671)
!674 = !DILocation(line: 189, column: 9, scope: !53, inlinedAt: !671)
!675 = !DILocation(line: 189, column: 9, scope: !74, inlinedAt: !671)
!676 = !DILocation(line: 190, column: 21, scope: !53, inlinedAt: !671)
!677 = !DILocation(line: 0, scope: !53, inlinedAt: !671)
!678 = !DILocation(line: 191, column: 14, scope: !81, inlinedAt: !671)
!679 = !DILocation(line: 191, column: 9, scope: !53, inlinedAt: !671)
!680 = !DILocation(line: 190, column: 14, scope: !53, inlinedAt: !671)
!681 = !DILocation(line: 192, column: 11, scope: !53, inlinedAt: !671)
!682 = !DILocation(line: 195, column: 16, scope: !53, inlinedAt: !671)
!683 = !DILocation(line: 196, column: 5, scope: !53, inlinedAt: !671)
!684 = !DILocation(line: 197, column: 1, scope: !53, inlinedAt: !671)
!685 = !DILocation(line: 700, column: 18, scope: !472)
!686 = !DILocation(line: 701, column: 9, scope: !472)
!687 = !DILocation(line: 701, column: 18, scope: !472)
!688 = !DILocation(line: 702, column: 9, scope: !472)
!689 = !DILocation(line: 702, column: 18, scope: !472)
!690 = !DILocation(line: 704, column: 13, scope: !472)
!691 = !DILocation(line: 705, column: 39, scope: !692)
!692 = distinct !DILexicalBlock(scope: !693, file: !3, line: 704, column: 25)
!693 = distinct !DILexicalBlock(scope: !472, file: !3, line: 704, column: 13)
!694 = !DILocation(line: 705, column: 51, scope: !692)
!695 = !DILocation(line: 705, column: 50, scope: !692)
!696 = !DILocation(line: 705, column: 73, scope: !692)
!697 = !DILocation(line: 696, column: 16, scope: !472)
!698 = !DILocation(line: 707, column: 17, scope: !699)
!699 = distinct !DILexicalBlock(scope: !692, file: !3, line: 707, column: 17)
!700 = !DILocation(line: 707, column: 20, scope: !699)
!701 = !DILocation(line: 707, column: 26, scope: !699)
!702 = !DILocation(line: 707, column: 33, scope: !699)
!703 = !DILocation(line: 707, column: 30, scope: !699)
!704 = !DILocation(line: 707, column: 17, scope: !692)
!705 = !DILocation(line: 707, column: 50, scope: !699)
!706 = !DILocation(line: 707, column: 41, scope: !699)
!707 = !DILocation(line: 0, scope: !692)
!708 = !DILocation(line: 708, column: 23, scope: !692)
!709 = !DILocation(line: 708, column: 21, scope: !692)
!710 = !DILocation(line: 709, column: 9, scope: !692)
!711 = !DILocation(line: 711, column: 13, scope: !712)
!712 = distinct !DILexicalBlock(scope: !472, file: !3, line: 711, column: 13)
!713 = !DILocation(line: 711, column: 13, scope: !472)
!714 = !DILocation(line: 712, column: 51, scope: !715)
!715 = distinct !DILexicalBlock(scope: !712, file: !3, line: 711, column: 25)
!716 = !DILocation(line: 712, column: 50, scope: !715)
!717 = !DILocation(line: 712, column: 73, scope: !715)
!718 = !DILocation(line: 714, column: 23, scope: !715)
!719 = !DILocation(line: 714, column: 21, scope: !715)
!720 = !DILocation(line: 715, column: 9, scope: !715)
!721 = !DILocation(line: 718, column: 13, scope: !722)
!722 = distinct !DILexicalBlock(scope: !472, file: !3, line: 718, column: 13)
!723 = !DILocation(line: 718, column: 23, scope: !722)
!724 = !DILocation(line: 718, column: 31, scope: !722)
!725 = !DILocation(line: 719, column: 28, scope: !722)
!726 = !DILocation(line: 719, column: 36, scope: !722)
!727 = !DILocation(line: 719, column: 25, scope: !722)
!728 = !DILocation(line: 720, column: 28, scope: !722)
!729 = !DILocation(line: 720, column: 36, scope: !722)
!730 = !DILocation(line: 720, column: 25, scope: !722)
!731 = !DILocation(line: 722, column: 13, scope: !732)
!732 = distinct !DILexicalBlock(scope: !722, file: !3, line: 721, column: 9)
!733 = !DILocation(line: 723, column: 22, scope: !732)
!734 = !DILocation(line: 723, column: 13, scope: !732)
!735 = !DILocation(line: 724, column: 22, scope: !732)
!736 = !DILocation(line: 724, column: 13, scope: !732)
!737 = !DILocation(line: 725, column: 13, scope: !732)
!738 = !DILocation(line: 725, column: 19, scope: !732)
!739 = !DILocation(line: 726, column: 13, scope: !732)
!740 = !DILocation(line: 781, column: 5, scope: !473)
!741 = !DILocation(line: 728, column: 30, scope: !472)
!742 = !DILocation(line: 728, column: 38, scope: !472)
!743 = !DILocation(line: 728, column: 9, scope: !472)
!744 = !DILocation(line: 728, column: 28, scope: !472)
!745 = !DILocation(line: 730, column: 15, scope: !486)
!746 = !DILocation(line: 730, column: 13, scope: !472)
!747 = !DILocation(line: 732, column: 17, scope: !484)
!748 = !DILocation(line: 732, column: 20, scope: !484)
!749 = !DILocation(line: 732, column: 17, scope: !485)
!750 = !DILocation(line: 237, column: 27, scope: !189, inlinedAt: !751)
!751 = distinct !DILocation(line: 733, column: 31, scope: !483)
!752 = !DILocation(line: 238, column: 12, scope: !198, inlinedAt: !751)
!753 = !DILocation(line: 238, column: 9, scope: !198, inlinedAt: !751)
!754 = !DILocation(line: 238, column: 9, scope: !189, inlinedAt: !751)
!755 = !DILocation(line: 239, column: 28, scope: !189, inlinedAt: !751)
!756 = !DILocation(line: 239, column: 37, scope: !189, inlinedAt: !751)
!757 = !DILocation(line: 239, column: 36, scope: !189, inlinedAt: !751)
!758 = !DILocation(line: 239, column: 60, scope: !189, inlinedAt: !751)
!759 = !DILocation(line: 239, column: 12, scope: !189, inlinedAt: !751)
!760 = !DILocation(line: 240, column: 5, scope: !189, inlinedAt: !751)
!761 = !DILocation(line: 241, column: 5, scope: !189, inlinedAt: !751)
!762 = !DILocation(line: 242, column: 12, scope: !189, inlinedAt: !751)
!763 = !DILocation(line: 240, column: 11, scope: !189, inlinedAt: !751)
!764 = !DILocation(line: 243, column: 1, scope: !189, inlinedAt: !751)
!765 = !DILocation(line: 0, scope: !189, inlinedAt: !751)
!766 = !DILocation(line: 733, column: 23, scope: !483)
!767 = !DILocation(line: 734, column: 28, scope: !483)
!768 = !DILocation(line: 224, column: 26, scope: !161, inlinedAt: !769)
!769 = distinct !DILocation(line: 734, column: 17, scope: !483)
!770 = !DILocation(line: 224, column: 35, scope: !161, inlinedAt: !769)
!771 = !DILocation(line: 225, column: 8, scope: !161, inlinedAt: !769)
!772 = !DILocation(line: 225, column: 14, scope: !161, inlinedAt: !769)
!773 = !DILocation(line: 226, column: 14, scope: !169, inlinedAt: !769)
!774 = !DILocation(line: 226, column: 9, scope: !161, inlinedAt: !769)
!775 = !DILocation(line: 0, scope: !178, inlinedAt: !769)
!776 = !DILocation(line: 227, column: 19, scope: !168, inlinedAt: !769)
!777 = !DILocation(line: 229, column: 14, scope: !168, inlinedAt: !769)
!778 = !DILocation(line: 229, column: 23, scope: !168, inlinedAt: !769)
!779 = !DILocation(line: 229, column: 46, scope: !168, inlinedAt: !769)
!780 = !DILocation(line: 228, column: 16, scope: !168, inlinedAt: !769)
!781 = !DILocation(line: 230, column: 9, scope: !168, inlinedAt: !769)
!782 = !DILocation(line: 231, column: 5, scope: !168, inlinedAt: !769)
!783 = !DILocation(line: 232, column: 19, scope: !178, inlinedAt: !769)
!784 = !DILocation(line: 234, column: 1, scope: !161, inlinedAt: !769)
!785 = !DILocation(line: 735, column: 13, scope: !483)
!786 = !DILocation(line: 736, column: 20, scope: !485)
!787 = !DILocation(line: 736, column: 13, scope: !485)
!788 = !DILocation(line: 737, column: 9, scope: !485)
!789 = !DILocation(line: 739, column: 13, scope: !490)
!790 = !DILocation(line: 739, column: 27, scope: !490)
!791 = !DILocation(line: 740, column: 20, scope: !490)
!792 = !DILocation(line: 740, column: 34, scope: !490)
!793 = !DILocation(line: 740, column: 42, scope: !490)
!794 = !DILocation(line: 740, column: 13, scope: !490)
!795 = !DILocation(line: 741, column: 32, scope: !490)
!796 = !DILocation(line: 741, column: 34, scope: !490)
!797 = !DILocation(line: 741, column: 13, scope: !490)
!798 = !DILocation(line: 741, column: 30, scope: !490)
!799 = !DILocation(line: 742, column: 30, scope: !490)
!800 = !DILocation(line: 742, column: 33, scope: !490)
!801 = !DILocation(line: 742, column: 13, scope: !490)
!802 = !DILocation(line: 742, column: 28, scope: !490)
!803 = !DILocation(line: 743, column: 31, scope: !490)
!804 = !DILocation(line: 743, column: 34, scope: !490)
!805 = !DILocation(line: 743, column: 13, scope: !490)
!806 = !DILocation(line: 743, column: 29, scope: !490)
!807 = !DILocation(line: 744, column: 17, scope: !489)
!808 = !DILocation(line: 744, column: 20, scope: !489)
!809 = !DILocation(line: 744, column: 26, scope: !489)
!810 = !DILocation(line: 744, column: 33, scope: !489)
!811 = !DILocation(line: 744, column: 30, scope: !489)
!812 = !DILocation(line: 744, column: 17, scope: !490)
!813 = !DILocation(line: 237, column: 27, scope: !189, inlinedAt: !814)
!814 = distinct !DILocation(line: 745, column: 31, scope: !488)
!815 = !DILocation(line: 238, column: 12, scope: !198, inlinedAt: !814)
!816 = !DILocation(line: 238, column: 9, scope: !198, inlinedAt: !814)
!817 = !DILocation(line: 238, column: 9, scope: !189, inlinedAt: !814)
!818 = !DILocation(line: 239, column: 28, scope: !189, inlinedAt: !814)
!819 = !DILocation(line: 239, column: 37, scope: !189, inlinedAt: !814)
!820 = !DILocation(line: 239, column: 36, scope: !189, inlinedAt: !814)
!821 = !DILocation(line: 239, column: 60, scope: !189, inlinedAt: !814)
!822 = !DILocation(line: 239, column: 12, scope: !189, inlinedAt: !814)
!823 = !DILocation(line: 240, column: 5, scope: !189, inlinedAt: !814)
!824 = !DILocation(line: 241, column: 5, scope: !189, inlinedAt: !814)
!825 = !DILocation(line: 242, column: 12, scope: !189, inlinedAt: !814)
!826 = !DILocation(line: 240, column: 11, scope: !189, inlinedAt: !814)
!827 = !DILocation(line: 243, column: 1, scope: !189, inlinedAt: !814)
!828 = !DILocation(line: 0, scope: !189, inlinedAt: !814)
!829 = !DILocation(line: 745, column: 23, scope: !488)
!830 = !DILocation(line: 746, column: 28, scope: !488)
!831 = !DILocation(line: 224, column: 26, scope: !161, inlinedAt: !832)
!832 = distinct !DILocation(line: 746, column: 17, scope: !488)
!833 = !DILocation(line: 224, column: 35, scope: !161, inlinedAt: !832)
!834 = !DILocation(line: 225, column: 8, scope: !161, inlinedAt: !832)
!835 = !DILocation(line: 225, column: 14, scope: !161, inlinedAt: !832)
!836 = !DILocation(line: 226, column: 14, scope: !169, inlinedAt: !832)
!837 = !DILocation(line: 226, column: 9, scope: !161, inlinedAt: !832)
!838 = !DILocation(line: 0, scope: !178, inlinedAt: !832)
!839 = !DILocation(line: 227, column: 19, scope: !168, inlinedAt: !832)
!840 = !DILocation(line: 229, column: 14, scope: !168, inlinedAt: !832)
!841 = !DILocation(line: 229, column: 23, scope: !168, inlinedAt: !832)
!842 = !DILocation(line: 229, column: 46, scope: !168, inlinedAt: !832)
!843 = !DILocation(line: 228, column: 16, scope: !168, inlinedAt: !832)
!844 = !DILocation(line: 230, column: 9, scope: !168, inlinedAt: !832)
!845 = !DILocation(line: 231, column: 5, scope: !168, inlinedAt: !832)
!846 = !DILocation(line: 232, column: 19, scope: !178, inlinedAt: !832)
!847 = !DILocation(line: 234, column: 1, scope: !161, inlinedAt: !832)
!848 = !DILocation(line: 747, column: 13, scope: !488)
!849 = !DILocation(line: 748, column: 28, scope: !490)
!850 = !DILocation(line: 748, column: 23, scope: !490)
!851 = !DILocation(line: 749, column: 13, scope: !490)
!852 = !DILocation(line: 750, column: 20, scope: !490)
!853 = !DILocation(line: 750, column: 13, scope: !490)
!854 = !DILocation(line: 751, column: 24, scope: !490)
!855 = !DILocation(line: 752, column: 18, scope: !490)
!856 = !DILocation(line: 752, column: 26, scope: !490)
!857 = !{!126, !112, i64 16}
!858 = !DILocation(line: 757, column: 13, scope: !472)
!859 = !DILocation(line: 759, column: 13, scope: !493)
!860 = !DILocation(line: 759, column: 28, scope: !493)
!861 = !DILocation(line: 760, column: 13, scope: !493)
!862 = !DILocation(line: 760, column: 29, scope: !493)
!863 = !DILocation(line: 761, column: 13, scope: !493)
!864 = !DILocation(line: 761, column: 27, scope: !493)
!865 = !DILocation(line: 762, column: 43, scope: !493)
!866 = !DILocation(line: 762, column: 13, scope: !493)
!867 = !DILocation(line: 762, column: 30, scope: !493)
!868 = !DILocation(line: 763, column: 20, scope: !493)
!869 = !DILocation(line: 763, column: 34, scope: !493)
!870 = !DILocation(line: 763, column: 42, scope: !493)
!871 = !DILocation(line: 763, column: 41, scope: !493)
!872 = !DILocation(line: 763, column: 43, scope: !493)
!873 = !DILocation(line: 763, column: 13, scope: !493)
!874 = !DILocation(line: 764, column: 28, scope: !493)
!875 = !DILocation(line: 764, column: 23, scope: !493)
!876 = !DILocation(line: 765, column: 13, scope: !493)
!877 = !DILocation(line: 766, column: 18, scope: !493)
!878 = !DILocation(line: 766, column: 26, scope: !493)
!879 = !DILocation(line: 767, column: 9, scope: !493)
!880 = !DILocation(line: 769, column: 23, scope: !881)
!881 = distinct !DILexicalBlock(scope: !494, file: !3, line: 767, column: 16)
!882 = !DILocation(line: 684, column: 18, scope: !472)
!883 = !DILocation(line: 769, column: 21, scope: !881)
!884 = !DILocation(line: 773, column: 32, scope: !472)
!885 = !DILocation(line: 773, column: 19, scope: !472)
!886 = !DILocation(line: 774, column: 9, scope: !472)
!887 = !DILocation(line: 779, column: 18, scope: !472)
!888 = !DILocation(line: 779, column: 9, scope: !472)
!889 = !DILocation(line: 780, column: 13, scope: !472)
!890 = !DILocation(line: 780, column: 11, scope: !472)
!891 = !DILocation(line: 781, column: 16, scope: !498)
!892 = !DILocation(line: 781, column: 19, scope: !498)
!893 = !DILocation(line: 781, column: 27, scope: !498)
!894 = !DILocation(line: 781, column: 16, scope: !473)
!895 = !DILocation(line: 787, column: 32, scope: !497)
!896 = !DILocation(line: 787, column: 39, scope: !497)
!897 = !DILocation(line: 787, column: 37, scope: !497)
!898 = !DILocation(line: 787, column: 29, scope: !497)
!899 = !DILocation(line: 787, column: 16, scope: !497)
!900 = !DILocation(line: 788, column: 42, scope: !497)
!901 = !DILocation(line: 788, column: 54, scope: !497)
!902 = !DILocation(line: 788, column: 53, scope: !497)
!903 = !DILocation(line: 788, column: 76, scope: !497)
!904 = !DILocation(line: 788, column: 16, scope: !497)
!905 = !DILocation(line: 790, column: 18, scope: !906)
!906 = distinct !DILexicalBlock(scope: !497, file: !3, line: 790, column: 13)
!907 = !DILocation(line: 790, column: 13, scope: !497)
!908 = !DILocation(line: 790, column: 36, scope: !906)
!909 = !DILocation(line: 790, column: 27, scope: !906)
!910 = !DILocation(line: 0, scope: !497)
!911 = !DILocation(line: 791, column: 9, scope: !497)
!912 = !DILocation(line: 791, column: 28, scope: !497)
!913 = !DILocation(line: 791, column: 18, scope: !497)
!914 = !DILocation(line: 793, column: 36, scope: !497)
!915 = !DILocation(line: 793, column: 35, scope: !497)
!916 = !DILocation(line: 793, column: 38, scope: !497)
!917 = !DILocation(line: 793, column: 37, scope: !497)
!918 = !DILocation(line: 793, column: 51, scope: !497)
!919 = !DILocation(line: 794, column: 13, scope: !920)
!920 = distinct !DILexicalBlock(scope: !497, file: !3, line: 794, column: 13)
!921 = !DILocation(line: 794, column: 16, scope: !920)
!922 = !DILocation(line: 794, column: 22, scope: !920)
!923 = !DILocation(line: 794, column: 29, scope: !920)
!924 = !DILocation(line: 794, column: 26, scope: !920)
!925 = !DILocation(line: 794, column: 13, scope: !497)
!926 = !DILocation(line: 794, column: 46, scope: !920)
!927 = !DILocation(line: 794, column: 37, scope: !920)
!928 = !DILocation(line: 795, column: 9, scope: !497)
!929 = !DILocation(line: 795, column: 28, scope: !497)
!930 = !DILocation(line: 795, column: 18, scope: !497)
!931 = !DILocation(line: 797, column: 21, scope: !932)
!932 = distinct !DILexicalBlock(scope: !497, file: !3, line: 797, column: 13)
!933 = !DILocation(line: 797, column: 40, scope: !932)
!934 = !DILocation(line: 797, column: 29, scope: !932)
!935 = !DILocation(line: 798, column: 13, scope: !936)
!936 = distinct !DILexicalBlock(scope: !932, file: !3, line: 797, column: 49)
!937 = !DILocation(line: 799, column: 22, scope: !936)
!938 = !DILocation(line: 799, column: 13, scope: !936)
!939 = !DILocation(line: 800, column: 13, scope: !936)
!940 = !DILocation(line: 800, column: 19, scope: !936)
!941 = !DILocation(line: 801, column: 13, scope: !936)
!942 = !DILocation(line: 805, column: 32, scope: !497)
!943 = !DILocation(line: 805, column: 19, scope: !497)
!944 = !DILocation(line: 806, column: 9, scope: !497)
!945 = !DILocation(line: 807, column: 9, scope: !497)
!946 = !DILocation(line: 810, column: 9, scope: !497)
!947 = !DILocation(line: 810, column: 23, scope: !497)
!948 = !DILocation(line: 811, column: 39, scope: !497)
!949 = !DILocation(line: 811, column: 9, scope: !497)
!950 = !DILocation(line: 811, column: 26, scope: !497)
!951 = !DILocation(line: 812, column: 9, scope: !497)
!952 = !DILocation(line: 812, column: 24, scope: !497)
!953 = !DILocation(line: 813, column: 9, scope: !497)
!954 = !DILocation(line: 813, column: 25, scope: !497)
!955 = !DILocation(line: 814, column: 16, scope: !497)
!956 = !DILocation(line: 814, column: 30, scope: !497)
!957 = !DILocation(line: 814, column: 38, scope: !497)
!958 = !DILocation(line: 814, column: 37, scope: !497)
!959 = !DILocation(line: 814, column: 9, scope: !497)
!960 = !DILocation(line: 224, column: 26, scope: !161, inlinedAt: !961)
!961 = distinct !DILocation(line: 815, column: 9, scope: !497)
!962 = !DILocation(line: 224, column: 35, scope: !161, inlinedAt: !961)
!963 = !DILocation(line: 225, column: 8, scope: !161, inlinedAt: !961)
!964 = !DILocation(line: 225, column: 14, scope: !161, inlinedAt: !961)
!965 = !DILocation(line: 226, column: 9, scope: !161, inlinedAt: !961)
!966 = !DILocation(line: 0, scope: !178, inlinedAt: !961)
!967 = !DILocation(line: 227, column: 19, scope: !168, inlinedAt: !961)
!968 = !DILocation(line: 229, column: 14, scope: !168, inlinedAt: !961)
!969 = !DILocation(line: 229, column: 23, scope: !168, inlinedAt: !961)
!970 = !DILocation(line: 229, column: 46, scope: !168, inlinedAt: !961)
!971 = !DILocation(line: 228, column: 16, scope: !168, inlinedAt: !961)
!972 = !DILocation(line: 230, column: 9, scope: !168, inlinedAt: !961)
!973 = !DILocation(line: 231, column: 5, scope: !168, inlinedAt: !961)
!974 = !DILocation(line: 232, column: 19, scope: !178, inlinedAt: !961)
!975 = !DILocation(line: 234, column: 1, scope: !161, inlinedAt: !961)
!976 = !DILocation(line: 816, column: 24, scope: !497)
!977 = !DILocation(line: 816, column: 19, scope: !497)
!978 = !DILocation(line: 817, column: 9, scope: !497)
!979 = !DILocation(line: 818, column: 14, scope: !497)
!980 = !DILocation(line: 818, column: 22, scope: !497)
!981 = !DILocation(line: 821, column: 25, scope: !497)
!982 = !DILocation(line: 821, column: 9, scope: !497)
!983 = !DILocation(line: 821, column: 23, scope: !497)
!984 = !DILocation(line: 822, column: 28, scope: !497)
!985 = !DILocation(line: 822, column: 30, scope: !497)
!986 = !DILocation(line: 822, column: 9, scope: !497)
!987 = !DILocation(line: 822, column: 26, scope: !497)
!988 = !DILocation(line: 823, column: 9, scope: !497)
!989 = !DILocation(line: 823, column: 24, scope: !497)
!990 = !DILocation(line: 824, column: 9, scope: !497)
!991 = !DILocation(line: 824, column: 25, scope: !497)
!992 = !DILocation(line: 825, column: 16, scope: !497)
!993 = !DILocation(line: 825, column: 30, scope: !497)
!994 = !DILocation(line: 825, column: 38, scope: !497)
!995 = !DILocation(line: 825, column: 9, scope: !497)
!996 = !DILocation(line: 826, column: 16, scope: !497)
!997 = !DILocation(line: 826, column: 9, scope: !497)
!998 = !DILocation(line: 827, column: 13, scope: !507)
!999 = !DILocation(line: 827, column: 16, scope: !507)
!1000 = !DILocation(line: 827, column: 13, scope: !497)
!1001 = !DILocation(line: 237, column: 27, scope: !189, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 828, column: 25, scope: !506)
!1003 = !DILocation(line: 238, column: 12, scope: !198, inlinedAt: !1002)
!1004 = !DILocation(line: 238, column: 9, scope: !198, inlinedAt: !1002)
!1005 = !DILocation(line: 238, column: 9, scope: !189, inlinedAt: !1002)
!1006 = !DILocation(line: 239, column: 28, scope: !189, inlinedAt: !1002)
!1007 = !DILocation(line: 239, column: 37, scope: !189, inlinedAt: !1002)
!1008 = !DILocation(line: 239, column: 36, scope: !189, inlinedAt: !1002)
!1009 = !DILocation(line: 239, column: 60, scope: !189, inlinedAt: !1002)
!1010 = !DILocation(line: 239, column: 12, scope: !189, inlinedAt: !1002)
!1011 = !DILocation(line: 240, column: 5, scope: !189, inlinedAt: !1002)
!1012 = !DILocation(line: 241, column: 5, scope: !189, inlinedAt: !1002)
!1013 = !DILocation(line: 242, column: 12, scope: !189, inlinedAt: !1002)
!1014 = !DILocation(line: 240, column: 11, scope: !189, inlinedAt: !1002)
!1015 = !DILocation(line: 243, column: 1, scope: !189, inlinedAt: !1002)
!1016 = !DILocation(line: 0, scope: !189, inlinedAt: !1002)
!1017 = !DILocation(line: 828, column: 19, scope: !506)
!1018 = !DILocation(line: 829, column: 24, scope: !506)
!1019 = !DILocation(line: 224, column: 26, scope: !161, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 829, column: 13, scope: !506)
!1021 = !DILocation(line: 224, column: 35, scope: !161, inlinedAt: !1020)
!1022 = !DILocation(line: 225, column: 8, scope: !161, inlinedAt: !1020)
!1023 = !DILocation(line: 225, column: 14, scope: !161, inlinedAt: !1020)
!1024 = !DILocation(line: 226, column: 14, scope: !169, inlinedAt: !1020)
!1025 = !DILocation(line: 226, column: 9, scope: !161, inlinedAt: !1020)
!1026 = !DILocation(line: 0, scope: !178, inlinedAt: !1020)
!1027 = !DILocation(line: 227, column: 19, scope: !168, inlinedAt: !1020)
!1028 = !DILocation(line: 229, column: 14, scope: !168, inlinedAt: !1020)
!1029 = !DILocation(line: 229, column: 23, scope: !168, inlinedAt: !1020)
!1030 = !DILocation(line: 229, column: 46, scope: !168, inlinedAt: !1020)
!1031 = !DILocation(line: 228, column: 16, scope: !168, inlinedAt: !1020)
!1032 = !DILocation(line: 230, column: 9, scope: !168, inlinedAt: !1020)
!1033 = !DILocation(line: 231, column: 5, scope: !168, inlinedAt: !1020)
!1034 = !DILocation(line: 232, column: 19, scope: !178, inlinedAt: !1020)
!1035 = !DILocation(line: 234, column: 1, scope: !161, inlinedAt: !1020)
!1036 = !DILocation(line: 830, column: 9, scope: !506)
!1037 = !DILocation(line: 834, column: 14, scope: !497)
!1038 = !DILocation(line: 835, column: 9, scope: !497)
!1039 = !DILocation(line: 839, column: 14, scope: !497)
!1040 = !DILocation(line: 839, column: 20, scope: !497)
!1041 = !DILocation(line: 840, column: 18, scope: !497)
!1042 = !DILocation(line: 840, column: 9, scope: !497)
!1043 = !DILocation(line: 842, column: 5, scope: !498)
!1044 = !DILocation(line: 846, column: 5, scope: !457)
!1045 = !DILocation(line: 846, column: 13, scope: !457)
!1046 = !DILocation(line: 852, column: 13, scope: !512)
!1047 = !DILocation(line: 847, column: 9, scope: !509)
!1048 = !DILocation(line: 852, column: 16, scope: !512)
!1049 = !DILocation(line: 852, column: 21, scope: !512)
!1050 = !DILocation(line: 852, column: 26, scope: !512)
!1051 = !DILocation(line: 852, column: 32, scope: !512)
!1052 = !DILocation(line: 852, column: 35, scope: !512)
!1053 = !DILocation(line: 852, column: 13, scope: !509)
!1054 = !DILocation(line: 854, column: 20, scope: !511)
!1055 = !DILocation(line: 855, column: 17, scope: !511)
!1056 = !DILocation(line: 857, column: 48, scope: !511)
!1057 = !DILocation(line: 847, column: 18, scope: !509)
!1058 = !DILocation(line: 857, column: 29, scope: !511)
!1059 = !DILocation(line: 857, column: 22, scope: !511)
!1060 = !DILocation(line: 858, column: 22, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !511, file: !3, line: 858, column: 17)
!1062 = !DILocation(line: 858, column: 17, scope: !511)
!1063 = !DILocation(line: 859, column: 15, scope: !511)
!1064 = !DILocation(line: 860, column: 20, scope: !511)
!1065 = !DILocation(line: 860, column: 13, scope: !511)
!1066 = !DILocation(line: 861, column: 26, scope: !511)
!1067 = !DILocation(line: 0, scope: !511)
!1068 = !DILocation(line: 861, column: 24, scope: !511)
!1069 = !DILocation(line: 863, column: 9, scope: !512)
!1070 = !DILocation(line: 858, column: 31, scope: !1061)
!1071 = !DILocation(line: 865, column: 13, scope: !515)
!1072 = !DILocation(line: 866, column: 43, scope: !515)
!1073 = !DILocation(line: 865, column: 23, scope: !515)
!1074 = !DILocation(line: 866, column: 29, scope: !515)
!1075 = !DILocation(line: 866, column: 22, scope: !515)
!1076 = !DILocation(line: 867, column: 22, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !515, file: !3, line: 867, column: 17)
!1078 = !DILocation(line: 867, column: 17, scope: !515)
!1079 = !DILocation(line: 868, column: 15, scope: !515)
!1080 = !DILocation(line: 869, column: 20, scope: !515)
!1081 = !DILocation(line: 869, column: 13, scope: !515)
!1082 = !DILocation(line: 870, column: 26, scope: !515)
!1083 = !DILocation(line: 870, column: 24, scope: !515)
!1084 = !DILocation(line: 872, column: 9, scope: !512)
!1085 = !DILocation(line: 867, column: 31, scope: !1077)
!1086 = !DILocation(line: 875, column: 5, scope: !457)
!1087 = !DILocation(line: 516, column: 7, scope: !457)
!1088 = !DILocation(line: 873, column: 22, scope: !509)
!1089 = !DILocation(line: 874, column: 13, scope: !509)
!1090 = !DILocation(line: 874, column: 11, scope: !509)
!1091 = !DILocation(line: 218, column: 14, scope: !152, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 876, column: 21, scope: !457)
!1093 = !DILocation(line: 876, column: 39, scope: !457)
!1094 = !DILocation(line: 217, column: 37, scope: !142, inlinedAt: !1092)
!1095 = !DILocation(line: 217, column: 46, scope: !142, inlinedAt: !1092)
!1096 = !DILocation(line: 218, column: 9, scope: !142, inlinedAt: !1092)
!1097 = !DILocation(line: 219, column: 21, scope: !142, inlinedAt: !1092)
!1098 = !DILocation(line: 219, column: 12, scope: !142, inlinedAt: !1092)
!1099 = !DILocation(line: 220, column: 24, scope: !142, inlinedAt: !1092)
!1100 = !DILocation(line: 220, column: 32, scope: !142, inlinedAt: !1092)
!1101 = !DILocation(line: 220, column: 12, scope: !142, inlinedAt: !1092)
!1102 = !DILocation(line: 0, scope: !142, inlinedAt: !1092)
!1103 = !DILocation(line: 221, column: 1, scope: !142, inlinedAt: !1092)
!1104 = !DILocation(line: 876, column: 14, scope: !457)
!1105 = !DILocation(line: 877, column: 14, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !457, file: !3, line: 877, column: 9)
!1107 = !DILocation(line: 877, column: 9, scope: !457)
!1108 = !DILocation(line: 878, column: 7, scope: !457)
!1109 = !DILocation(line: 879, column: 13, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !457, file: !3, line: 879, column: 9)
!1111 = !DILocation(line: 879, column: 10, scope: !1110)
!1112 = !DILocation(line: 879, column: 9, scope: !457)
!1113 = !DILocation(line: 879, column: 25, scope: !1110)
!1114 = !DILocation(line: 879, column: 31, scope: !1110)
!1115 = !DILocation(line: 879, column: 20, scope: !1110)
!1116 = !DILocation(line: 224, column: 26, scope: !161, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 880, column: 5, scope: !457)
!1118 = !DILocation(line: 224, column: 35, scope: !161, inlinedAt: !1117)
!1119 = !DILocation(line: 225, column: 14, scope: !161, inlinedAt: !1117)
!1120 = !DILocation(line: 226, column: 9, scope: !161, inlinedAt: !1117)
!1121 = !DILocation(line: 0, scope: !178, inlinedAt: !1117)
!1122 = !DILocation(line: 227, column: 19, scope: !168, inlinedAt: !1117)
!1123 = !DILocation(line: 229, column: 14, scope: !168, inlinedAt: !1117)
!1124 = !DILocation(line: 229, column: 23, scope: !168, inlinedAt: !1117)
!1125 = !DILocation(line: 229, column: 46, scope: !168, inlinedAt: !1117)
!1126 = !DILocation(line: 228, column: 16, scope: !168, inlinedAt: !1117)
!1127 = !DILocation(line: 230, column: 9, scope: !168, inlinedAt: !1117)
!1128 = !DILocation(line: 231, column: 5, scope: !168, inlinedAt: !1117)
!1129 = !DILocation(line: 232, column: 19, scope: !178, inlinedAt: !1117)
!1130 = !DILocation(line: 234, column: 1, scope: !161, inlinedAt: !1117)
!1131 = !DILocation(line: 881, column: 12, scope: !457)
!1132 = !DILocation(line: 881, column: 5, scope: !457)
!1133 = !DILocation(line: 882, column: 5, scope: !457)
!1134 = !DILocation(line: 890, column: 9, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !457, file: !3, line: 890, column: 9)
!1136 = !DILocation(line: 890, column: 12, scope: !1135)
!1137 = !DILocation(line: 890, column: 17, scope: !1135)
!1138 = !DILocation(line: 890, column: 9, scope: !457)
!1139 = !DILocation(line: 891, column: 19, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 890, column: 23)
!1141 = !DILocation(line: 892, column: 9, scope: !1140)
!1142 = !DILocation(line: 892, column: 18, scope: !1140)
!1143 = !DILocation(line: 893, column: 14, scope: !1140)
!1144 = !DILocation(line: 893, column: 20, scope: !1140)
!1145 = !DILocation(line: 894, column: 9, scope: !1140)
!1146 = !DILocation(line: 896, column: 5, scope: !457)
!1147 = !DILocation(line: 896, column: 11, scope: !457)
!1148 = !DILocation(line: 897, column: 5, scope: !457)
!1149 = !DILocation(line: 0, scope: !936)
!1150 = !DILocation(line: 898, column: 1, scope: !457)
!1151 = distinct !DISubprogram(name: "raxLowWalk", scope: !3, file: !3, line: 457, type: !1152, isLocal: true, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1167)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!56, !93, !10, !56, !12, !215, !1154, !1155}
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxStack", file: !15, line: 150, baseType: !1157)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxStack", file: !15, line: 143, size: 2304, elements: !1158)
!1158 = !{!1159, !1160, !1161, !1162, !1166}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1157, file: !15, line: 144, baseType: !7, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !1157, file: !15, line: 145, baseType: !56, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "maxitems", scope: !1157, file: !15, line: 145, baseType: !56, size: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "static_items", scope: !1157, file: !15, line: 148, baseType: !1163, size: 2048, offset: 192)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !1164)
!1164 = !{!1165}
!1165 = !DISubrange(count: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "oom", scope: !1157, file: !15, line: 149, baseType: !31, size: 32, offset: 2240)
!1167 = !{!1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1181}
!1168 = !DILocalVariable(name: "rax", arg: 1, scope: !1151, file: !3, line: 457, type: !93)
!1169 = !DILocalVariable(name: "s", arg: 2, scope: !1151, file: !3, line: 457, type: !10)
!1170 = !DILocalVariable(name: "len", arg: 3, scope: !1151, file: !3, line: 457, type: !56)
!1171 = !DILocalVariable(name: "stopnode", arg: 4, scope: !1151, file: !3, line: 457, type: !12)
!1172 = !DILocalVariable(name: "plink", arg: 5, scope: !1151, file: !3, line: 457, type: !215)
!1173 = !DILocalVariable(name: "splitpos", arg: 6, scope: !1151, file: !3, line: 457, type: !1154)
!1174 = !DILocalVariable(name: "ts", arg: 7, scope: !1151, file: !3, line: 457, type: !1155)
!1175 = !DILocalVariable(name: "h", scope: !1151, file: !3, line: 458, type: !13)
!1176 = !DILocalVariable(name: "parentlink", scope: !1151, file: !3, line: 459, type: !12)
!1177 = !DILocalVariable(name: "i", scope: !1151, file: !3, line: 461, type: !56)
!1178 = !DILocalVariable(name: "j", scope: !1151, file: !3, line: 462, type: !56)
!1179 = !DILocalVariable(name: "v", scope: !1180, file: !3, line: 465, type: !10)
!1180 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 463, column: 31)
!1181 = !DILocalVariable(name: "children", scope: !1180, file: !3, line: 484, type: !12)
!1182 = !DILocation(line: 457, column: 38, scope: !1151)
!1183 = !DILocation(line: 457, column: 58, scope: !1151)
!1184 = !DILocation(line: 457, column: 68, scope: !1151)
!1185 = !DILocation(line: 457, column: 83, scope: !1151)
!1186 = !DILocation(line: 457, column: 104, scope: !1151)
!1187 = !DILocation(line: 457, column: 116, scope: !1151)
!1188 = !DILocation(line: 457, column: 136, scope: !1151)
!1189 = !DILocation(line: 458, column: 5, scope: !1151)
!1190 = !DILocation(line: 458, column: 23, scope: !1151)
!1191 = !DILocation(line: 458, column: 14, scope: !1151)
!1192 = !DILocation(line: 459, column: 15, scope: !1151)
!1193 = !DILocation(line: 461, column: 12, scope: !1151)
!1194 = !DILocation(line: 462, column: 12, scope: !1151)
!1195 = !DILocation(line: 463, column: 5, scope: !1151)
!1196 = !DILocation(line: 463, column: 11, scope: !1151)
!1197 = !DILocation(line: 463, column: 14, scope: !1151)
!1198 = !DILocation(line: 463, column: 19, scope: !1151)
!1199 = !DILocation(line: 463, column: 24, scope: !1151)
!1200 = !DILocation(line: 465, column: 24, scope: !1180)
!1201 = !DILocation(line: 467, column: 16, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 467, column: 13)
!1203 = !DILocation(line: 467, column: 13, scope: !1202)
!1204 = !DILocation(line: 467, column: 13, scope: !1180)
!1205 = !DILocation(line: 0, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 468, column: 13)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 468, column: 13)
!1208 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 467, column: 25)
!1209 = !DILocation(line: 468, column: 37, scope: !1206)
!1210 = !DILocation(line: 476, column: 13, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 476, column: 13)
!1212 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 472, column: 16)
!1213 = !DILocation(line: 477, column: 29, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 477, column: 21)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 476, column: 43)
!1216 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 476, column: 13)
!1217 = !DILocation(line: 468, column: 42, scope: !1206)
!1218 = !DILocation(line: 468, column: 13, scope: !1207)
!1219 = !DILocation(line: 469, column: 21, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 469, column: 21)
!1221 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 468, column: 59)
!1222 = !DILocation(line: 469, column: 29, scope: !1220)
!1223 = !DILocation(line: 469, column: 26, scope: !1220)
!1224 = !DILocation(line: 469, column: 21, scope: !1221)
!1225 = !DILocation(line: 468, column: 50, scope: !1206)
!1226 = !DILocation(line: 468, column: 55, scope: !1206)
!1227 = !DILocation(line: 468, column: 13, scope: !1206)
!1228 = !DILocation(line: 468, column: 32, scope: !1206)
!1229 = !DILocation(line: 468, column: 29, scope: !1206)
!1230 = !DILocation(line: 468, column: 27, scope: !1206)
!1231 = distinct !{!1231, !1218, !1232}
!1232 = !DILocation(line: 470, column: 13, scope: !1207)
!1233 = !DILocation(line: 471, column: 25, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 471, column: 17)
!1235 = !DILocation(line: 471, column: 22, scope: !1234)
!1236 = !DILocation(line: 471, column: 19, scope: !1234)
!1237 = !DILocation(line: 471, column: 17, scope: !1208)
!1238 = !DILocation(line: 477, column: 21, scope: !1214)
!1239 = !DILocation(line: 477, column: 26, scope: !1214)
!1240 = !DILocation(line: 477, column: 21, scope: !1215)
!1241 = !DILocation(line: 476, column: 39, scope: !1216)
!1242 = !DILocation(line: 476, column: 13, scope: !1216)
!1243 = !DILocation(line: 476, column: 32, scope: !1216)
!1244 = !DILocation(line: 476, column: 29, scope: !1216)
!1245 = !DILocation(line: 476, column: 27, scope: !1216)
!1246 = distinct !{!1246, !1210, !1247}
!1247 = !DILocation(line: 478, column: 13, scope: !1211)
!1248 = !DILocation(line: 0, scope: !1216)
!1249 = !DILocation(line: 479, column: 25, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 479, column: 17)
!1251 = !DILocation(line: 479, column: 22, scope: !1250)
!1252 = !DILocation(line: 479, column: 19, scope: !1250)
!1253 = !DILocation(line: 479, column: 17, scope: !1212)
!1254 = !DILocation(line: 480, column: 14, scope: !1212)
!1255 = !DILocation(line: 0, scope: !1211)
!1256 = !DILocation(line: 0, scope: !1212)
!1257 = !DILocation(line: 483, column: 13, scope: !1180)
!1258 = !DILocation(line: 483, column: 17, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 483, column: 13)
!1260 = !DILocation(line: 484, column: 30, scope: !1180)
!1261 = !DILocation(line: 484, column: 19, scope: !1180)
!1262 = !DILocation(line: 485, column: 16, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 485, column: 13)
!1264 = !DILocation(line: 485, column: 13, scope: !1263)
!1265 = !DILocation(line: 485, column: 13, scope: !1180)
!1266 = !DILocation(line: 485, column: 25, scope: !1263)
!1267 = !DILocation(line: 0, scope: !1250)
!1268 = !DILocation(line: 486, column: 27, scope: !1180)
!1269 = !DILocation(line: 486, column: 19, scope: !1180)
!1270 = !DILocation(line: 486, column: 9, scope: !1180)
!1271 = !DILocation(line: 492, column: 5, scope: !1151)
!1272 = !DILocation(line: 494, column: 9, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 494, column: 9)
!1274 = !DILocation(line: 0, scope: !1151)
!1275 = !DILocation(line: 494, column: 9, scope: !1151)
!1276 = !DILocation(line: 494, column: 29, scope: !1273)
!1277 = !DILocation(line: 494, column: 19, scope: !1273)
!1278 = !DILocation(line: 495, column: 9, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 495, column: 9)
!1280 = !DILocation(line: 495, column: 9, scope: !1151)
!1281 = !DILocation(line: 495, column: 23, scope: !1279)
!1282 = !DILocation(line: 495, column: 16, scope: !1279)
!1283 = !DILocation(line: 496, column: 9, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 496, column: 9)
!1285 = !DILocation(line: 496, column: 18, scope: !1284)
!1286 = !DILocation(line: 496, column: 24, scope: !1284)
!1287 = !DILocation(line: 496, column: 21, scope: !1284)
!1288 = !DILocation(line: 496, column: 9, scope: !1151)
!1289 = !DILocation(line: 496, column: 45, scope: !1284)
!1290 = !DILocation(line: 496, column: 43, scope: !1284)
!1291 = !DILocation(line: 496, column: 33, scope: !1284)
!1292 = !DILocation(line: 498, column: 1, scope: !1151)
!1293 = !DILocation(line: 497, column: 5, scope: !1151)
!1294 = distinct !DISubprogram(name: "raxRemove", scope: !3, file: !3, line: 1020, type: !1295, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1297)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!31, !93, !10, !56, !7}
!1297 = !{!1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1310, !1313, !1316, !1317, !1320, !1321, !1322, !1323, !1325, !1328, !1329, !1331, !1332, !1333}
!1298 = !DILocalVariable(name: "rax", arg: 1, scope: !1294, file: !3, line: 1020, type: !93)
!1299 = !DILocalVariable(name: "s", arg: 2, scope: !1294, file: !3, line: 1020, type: !10)
!1300 = !DILocalVariable(name: "len", arg: 3, scope: !1294, file: !3, line: 1020, type: !56)
!1301 = !DILocalVariable(name: "old", arg: 4, scope: !1294, file: !3, line: 1020, type: !7)
!1302 = !DILocalVariable(name: "h", scope: !1294, file: !3, line: 1021, type: !13)
!1303 = !DILocalVariable(name: "ts", scope: !1294, file: !3, line: 1022, type: !1156)
!1304 = !DILocalVariable(name: "splitpos", scope: !1294, file: !3, line: 1026, type: !31)
!1305 = !DILocalVariable(name: "i", scope: !1294, file: !3, line: 1027, type: !56)
!1306 = !DILocalVariable(name: "trycompress", scope: !1294, file: !3, line: 1042, type: !31)
!1307 = !DILocalVariable(name: "child", scope: !1308, file: !3, line: 1047, type: !13)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 1045, column: 23)
!1309 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 1045, column: 9)
!1310 = !DILocalVariable(name: "new", scope: !1311, file: !3, line: 1062, type: !13)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 1059, column: 20)
!1312 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1059, column: 13)
!1313 = !DILocalVariable(name: "parent", scope: !1314, file: !3, line: 1064, type: !13)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 1063, column: 27)
!1315 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 1063, column: 17)
!1316 = !DILocalVariable(name: "parentlink", scope: !1314, file: !3, line: 1065, type: !12)
!1317 = !DILocalVariable(name: "parent", scope: !1318, file: !3, line: 1142, type: !13)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 1134, column: 22)
!1319 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 1134, column: 9)
!1320 = !DILocalVariable(name: "start", scope: !1318, file: !3, line: 1150, type: !13)
!1321 = !DILocalVariable(name: "comprsize", scope: !1318, file: !3, line: 1153, type: !56)
!1322 = !DILocalVariable(name: "nodes", scope: !1318, file: !3, line: 1154, type: !31)
!1323 = !DILocalVariable(name: "cp", scope: !1324, file: !3, line: 1156, type: !12)
!1324 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 1155, column: 29)
!1325 = !DILocalVariable(name: "nodesize", scope: !1326, file: !3, line: 1167, type: !56)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 1165, column: 24)
!1327 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 1165, column: 13)
!1328 = !DILocalVariable(name: "new", scope: !1326, file: !3, line: 1169, type: !13)
!1329 = !DILocalVariable(name: "cp", scope: !1330, file: !3, line: 1190, type: !12)
!1330 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 1187, column: 33)
!1331 = !DILocalVariable(name: "tofree", scope: !1330, file: !3, line: 1191, type: !13)
!1332 = !DILocalVariable(name: "cp", scope: !1326, file: !3, line: 1200, type: !12)
!1333 = !DILocalVariable(name: "parentlink", scope: !1334, file: !3, line: 1205, type: !12)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 1204, column: 25)
!1335 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 1204, column: 17)
!1336 = !DILocation(line: 1020, column: 20, scope: !1294)
!1337 = !DILocation(line: 1020, column: 40, scope: !1294)
!1338 = !DILocation(line: 1020, column: 50, scope: !1294)
!1339 = !DILocation(line: 1020, column: 62, scope: !1294)
!1340 = !DILocation(line: 1021, column: 5, scope: !1294)
!1341 = !DILocation(line: 1022, column: 5, scope: !1294)
!1342 = !DILocation(line: 1022, column: 14, scope: !1294)
!1343 = !DILocalVariable(name: "ts", arg: 1, scope: !1344, file: !3, line: 92, type: !1155)
!1344 = distinct !DISubprogram(name: "raxStackInit", scope: !3, file: !3, line: 92, type: !1345, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1347)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{null, !1155}
!1347 = !{!1343}
!1348 = !DILocation(line: 92, column: 43, scope: !1344, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 1025, column: 5, scope: !1294)
!1350 = !DILocation(line: 93, column: 17, scope: !1344, inlinedAt: !1349)
!1351 = !DILocation(line: 93, column: 9, scope: !1344, inlinedAt: !1349)
!1352 = !DILocation(line: 93, column: 15, scope: !1344, inlinedAt: !1349)
!1353 = !{!1354, !127, i64 0}
!1354 = !{!"raxStack", !127, i64 0, !112, i64 8, !112, i64 16, !50, i64 24, !49, i64 280}
!1355 = !DILocation(line: 94, column: 9, scope: !1344, inlinedAt: !1349)
!1356 = !DILocation(line: 94, column: 15, scope: !1344, inlinedAt: !1349)
!1357 = !DILocation(line: 96, column: 9, scope: !1344, inlinedAt: !1349)
!1358 = !DILocation(line: 96, column: 13, scope: !1344, inlinedAt: !1349)
!1359 = !{!1354, !49, i64 280}
!1360 = !DILocation(line: 97, column: 1, scope: !1344, inlinedAt: !1349)
!1361 = !DILocation(line: 1026, column: 5, scope: !1294)
!1362 = !DILocation(line: 1026, column: 9, scope: !1294)
!1363 = !DILocation(line: 1021, column: 14, scope: !1294)
!1364 = !DILocation(line: 1027, column: 16, scope: !1294)
!1365 = !DILocation(line: 1027, column: 12, scope: !1294)
!1366 = !DILocation(line: 1028, column: 11, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 1028, column: 9)
!1368 = !DILocation(line: 1028, column: 18, scope: !1367)
!1369 = !DILocation(line: 1028, column: 22, scope: !1367)
!1370 = !DILocation(line: 1028, column: 25, scope: !1367)
!1371 = !DILocation(line: 1028, column: 36, scope: !1367)
!1372 = !DILocation(line: 1028, column: 45, scope: !1367)
!1373 = !DILocation(line: 1028, column: 33, scope: !1367)
!1374 = !DILocation(line: 1028, column: 58, scope: !1367)
!1375 = !DILocation(line: 1028, column: 55, scope: !1367)
!1376 = !DILocation(line: 1028, column: 9, scope: !1294)
!1377 = !DILocalVariable(name: "ts", arg: 1, scope: !1378, file: !3, line: 143, type: !1155)
!1378 = distinct !DISubprogram(name: "raxStackFree", scope: !3, file: !3, line: 143, type: !1345, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1379)
!1379 = !{!1377}
!1380 = !DILocation(line: 143, column: 43, scope: !1378, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 1029, column: 9, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 1028, column: 65)
!1383 = !DILocation(line: 144, column: 13, scope: !1384, inlinedAt: !1381)
!1384 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 144, column: 9)
!1385 = !DILocation(line: 144, column: 19, scope: !1384, inlinedAt: !1381)
!1386 = !DILocation(line: 144, column: 9, scope: !1378, inlinedAt: !1381)
!1387 = !DILocation(line: 144, column: 49, scope: !1384, inlinedAt: !1381)
!1388 = !DILocation(line: 144, column: 40, scope: !1384, inlinedAt: !1381)
!1389 = !DILocation(line: 1032, column: 9, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 1032, column: 9)
!1391 = !DILocation(line: 1032, column: 9, scope: !1294)
!1392 = !DILocation(line: 1033, column: 5, scope: !1294)
!1393 = !DILocation(line: 237, column: 27, scope: !189, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 1032, column: 21, scope: !1390)
!1395 = !DILocation(line: 238, column: 12, scope: !198, inlinedAt: !1394)
!1396 = !DILocation(line: 238, column: 9, scope: !198, inlinedAt: !1394)
!1397 = !DILocation(line: 238, column: 9, scope: !189, inlinedAt: !1394)
!1398 = !DILocation(line: 238, column: 20, scope: !198, inlinedAt: !1394)
!1399 = !DILocation(line: 239, column: 28, scope: !189, inlinedAt: !1394)
!1400 = !DILocation(line: 239, column: 37, scope: !189, inlinedAt: !1394)
!1401 = !DILocation(line: 239, column: 36, scope: !189, inlinedAt: !1394)
!1402 = !DILocation(line: 239, column: 60, scope: !189, inlinedAt: !1394)
!1403 = !DILocation(line: 239, column: 12, scope: !189, inlinedAt: !1394)
!1404 = !DILocation(line: 240, column: 5, scope: !189, inlinedAt: !1394)
!1405 = !DILocation(line: 241, column: 5, scope: !189, inlinedAt: !1394)
!1406 = !DILocation(line: 242, column: 12, scope: !189, inlinedAt: !1394)
!1407 = !DILocation(line: 240, column: 11, scope: !189, inlinedAt: !1394)
!1408 = !DILocation(line: 243, column: 1, scope: !189, inlinedAt: !1394)
!1409 = !DILocation(line: 0, scope: !189, inlinedAt: !1394)
!1410 = !DILocation(line: 1032, column: 19, scope: !1390)
!1411 = !DILocation(line: 1032, column: 14, scope: !1390)
!1412 = !DILocation(line: 1033, column: 14, scope: !1294)
!1413 = !DILocation(line: 1034, column: 10, scope: !1294)
!1414 = !DILocation(line: 1034, column: 16, scope: !1294)
!1415 = !DILocation(line: 1042, column: 9, scope: !1294)
!1416 = !DILocation(line: 1045, column: 9, scope: !1309)
!1417 = !DILocation(line: 1045, column: 12, scope: !1309)
!1418 = !DILocation(line: 1045, column: 17, scope: !1309)
!1419 = !DILocation(line: 1045, column: 9, scope: !1294)
!1420 = !DILocation(line: 1047, column: 18, scope: !1308)
!1421 = !DILocation(line: 1048, column: 9, scope: !1308)
!1422 = !DILocation(line: 1048, column: 25, scope: !1308)
!1423 = !DILocation(line: 1048, column: 17, scope: !1308)
!1424 = !DILocation(line: 1059, column: 13, scope: !1308)
!1425 = !DILocation(line: 1052, column: 22, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1048, column: 31)
!1427 = !DILocation(line: 1052, column: 13, scope: !1426)
!1428 = !DILocation(line: 1053, column: 26, scope: !1426)
!1429 = !DILocalVariable(name: "ts", arg: 1, scope: !1430, file: !3, line: 129, type: !1155)
!1430 = distinct !DISubprogram(name: "raxStackPop", scope: !3, file: !3, line: 129, type: !1431, isLocal: true, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1433)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!6, !1155}
!1433 = !{!1429}
!1434 = !DILocation(line: 129, column: 43, scope: !1430, inlinedAt: !1435)
!1435 = distinct !DILocation(line: 1054, column: 17, scope: !1426)
!1436 = !DILocation(line: 130, column: 13, scope: !1437, inlinedAt: !1435)
!1437 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 130, column: 9)
!1438 = !{!1354, !112, i64 8}
!1439 = !DILocation(line: 130, column: 19, scope: !1437, inlinedAt: !1435)
!1440 = !DILocation(line: 130, column: 9, scope: !1430, inlinedAt: !1435)
!1441 = !DILocation(line: 131, column: 14, scope: !1430, inlinedAt: !1435)
!1442 = !DILocation(line: 132, column: 16, scope: !1430, inlinedAt: !1435)
!1443 = !DILocation(line: 132, column: 12, scope: !1430, inlinedAt: !1435)
!1444 = !DILocation(line: 132, column: 5, scope: !1430, inlinedAt: !1435)
!1445 = !DILocation(line: 0, scope: !1430, inlinedAt: !1435)
!1446 = !DILocation(line: 0, scope: !1426)
!1447 = !DILocation(line: 133, column: 1, scope: !1430, inlinedAt: !1435)
!1448 = !DILocation(line: 1054, column: 15, scope: !1426)
!1449 = !DILocation(line: 1057, column: 20, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 1057, column: 17)
!1451 = !DILocation(line: 1057, column: 17, scope: !1450)
!1452 = !DILocation(line: 1057, column: 26, scope: !1450)
!1453 = !DILocation(line: 1057, column: 34, scope: !1450)
!1454 = !DILocation(line: 1057, column: 31, scope: !1450)
!1455 = !DILocation(line: 1057, column: 42, scope: !1450)
!1456 = !DILocation(line: 1057, column: 53, scope: !1450)
!1457 = !DILocation(line: 1057, column: 17, scope: !1426)
!1458 = distinct !{!1458, !1421, !1459}
!1459 = !DILocation(line: 1058, column: 9, scope: !1308)
!1460 = !DILocation(line: 1059, column: 13, scope: !1312)
!1461 = !DILocation(line: 1081, column: 5, scope: !1308)
!1462 = !DILocation(line: 1089, column: 21, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 1089, column: 9)
!1464 = !DILocation(line: 1062, column: 13, scope: !1311)
!1465 = !DILocation(line: 1062, column: 28, scope: !1311)
!1466 = !DILocation(line: 1062, column: 22, scope: !1311)
!1467 = !DILocation(line: 1063, column: 24, scope: !1315)
!1468 = !DILocation(line: 1063, column: 21, scope: !1315)
!1469 = !DILocation(line: 1063, column: 17, scope: !1311)
!1470 = !DILocalVariable(name: "ts", arg: 1, scope: !1471, file: !3, line: 137, type: !1155)
!1471 = distinct !DISubprogram(name: "raxStackPeek", scope: !3, file: !3, line: 137, type: !1431, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1472)
!1472 = !{!1470}
!1473 = !DILocation(line: 137, column: 44, scope: !1471, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 1064, column: 35, scope: !1314)
!1475 = !DILocation(line: 138, column: 13, scope: !1476, inlinedAt: !1474)
!1476 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 138, column: 9)
!1477 = !DILocation(line: 138, column: 19, scope: !1476, inlinedAt: !1474)
!1478 = !DILocation(line: 138, column: 9, scope: !1471, inlinedAt: !1474)
!1479 = !DILocation(line: 138, column: 25, scope: !1476, inlinedAt: !1474)
!1480 = !DILocation(line: 140, column: 1, scope: !1471, inlinedAt: !1474)
!1481 = !DILocation(line: 1066, column: 21, scope: !1314)
!1482 = !DILocation(line: 139, column: 16, scope: !1471, inlinedAt: !1474)
!1483 = !DILocation(line: 139, column: 31, scope: !1471, inlinedAt: !1474)
!1484 = !DILocation(line: 139, column: 12, scope: !1471, inlinedAt: !1474)
!1485 = !DILocation(line: 139, column: 5, scope: !1471, inlinedAt: !1474)
!1486 = !DILocation(line: 1066, column: 28, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 1066, column: 21)
!1488 = !DILocation(line: 1064, column: 35, scope: !1314)
!1489 = !DILocation(line: 1064, column: 26, scope: !1314)
!1490 = !DILocalVariable(name: "parent", arg: 1, scope: !1491, file: !3, line: 932, type: !13)
!1491 = distinct !DISubprogram(name: "raxFindParentLink", scope: !3, file: !3, line: 932, type: !1492, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1494)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!12, !13, !13}
!1494 = !{!1490, !1495, !1496, !1497}
!1495 = !DILocalVariable(name: "child", arg: 2, scope: !1491, file: !3, line: 932, type: !13)
!1496 = !DILocalVariable(name: "cp", scope: !1491, file: !3, line: 933, type: !12)
!1497 = !DILocalVariable(name: "c", scope: !1491, file: !3, line: 934, type: !13)
!1498 = !DILocation(line: 932, column: 38, scope: !1491, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 1069, column: 34, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 1068, column: 24)
!1501 = !DILocation(line: 932, column: 55, scope: !1491, inlinedAt: !1499)
!1502 = !DILocation(line: 933, column: 20, scope: !1491, inlinedAt: !1499)
!1503 = !DILocation(line: 933, column: 15, scope: !1491, inlinedAt: !1499)
!1504 = !DILocation(line: 934, column: 5, scope: !1491, inlinedAt: !1499)
!1505 = !DILocation(line: 935, column: 5, scope: !1491, inlinedAt: !1499)
!1506 = !DILocation(line: 936, column: 9, scope: !1507, inlinedAt: !1499)
!1507 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 935, column: 14)
!1508 = !DILocation(line: 937, column: 13, scope: !1509, inlinedAt: !1499)
!1509 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 937, column: 13)
!1510 = !DILocation(line: 934, column: 14, scope: !1491, inlinedAt: !1499)
!1511 = !DILocation(line: 937, column: 15, scope: !1509, inlinedAt: !1499)
!1512 = !DILocation(line: 937, column: 13, scope: !1507, inlinedAt: !1499)
!1513 = !DILocation(line: 938, column: 11, scope: !1507, inlinedAt: !1499)
!1514 = !DILocation(line: 936, column: 19, scope: !1507, inlinedAt: !1499)
!1515 = distinct !{!1515, !1516, !1517}
!1516 = !DILocation(line: 935, column: 5, scope: !1491)
!1517 = !DILocation(line: 939, column: 5, scope: !1491)
!1518 = !DILocation(line: 0, scope: !1507, inlinedAt: !1499)
!1519 = !DILocation(line: 941, column: 1, scope: !1491, inlinedAt: !1499)
!1520 = !DILocation(line: 1065, column: 27, scope: !1314)
!1521 = !DILocation(line: 0, scope: !1500)
!1522 = !DILocation(line: 1071, column: 24, scope: !1314)
!1523 = !DILocation(line: 1071, column: 17, scope: !1314)
!1524 = !DILocation(line: 1072, column: 13, scope: !1314)
!1525 = !DILocation(line: 1076, column: 17, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 1076, column: 17)
!1527 = !DILocation(line: 1076, column: 22, scope: !1526)
!1528 = !DILocation(line: 1076, column: 27, scope: !1526)
!1529 = !DILocation(line: 1076, column: 32, scope: !1526)
!1530 = !DILocation(line: 1076, column: 40, scope: !1526)
!1531 = !DILocation(line: 1076, column: 46, scope: !1526)
!1532 = !DILocation(line: 1076, column: 17, scope: !1311)
!1533 = !DILocation(line: 1081, column: 24, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 1081, column: 16)
!1535 = !DILocation(line: 1081, column: 16, scope: !1309)
!1536 = !DILocation(line: 0, scope: !1463)
!1537 = !DILocation(line: 1080, column: 9, scope: !1312)
!1538 = !DILocation(line: 1080, column: 9, scope: !1311)
!1539 = !DILocation(line: 1078, column: 19, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 1076, column: 52)
!1541 = !DILocation(line: 1079, column: 13, scope: !1540)
!1542 = !DILocation(line: 1089, column: 27, scope: !1463)
!1543 = !DILocation(line: 1089, column: 24, scope: !1463)
!1544 = !DILocation(line: 1089, column: 9, scope: !1294)
!1545 = !DILocation(line: 1143, column: 9, scope: !1318)
!1546 = !DILocation(line: 129, column: 43, scope: !1430, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 1144, column: 22, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 1143, column: 18)
!1549 = !DILocation(line: 130, column: 13, scope: !1437, inlinedAt: !1547)
!1550 = !DILocation(line: 130, column: 19, scope: !1437, inlinedAt: !1547)
!1551 = !DILocation(line: 130, column: 9, scope: !1430, inlinedAt: !1547)
!1552 = !DILocation(line: 132, column: 16, scope: !1430, inlinedAt: !1547)
!1553 = !DILocation(line: 131, column: 14, scope: !1430, inlinedAt: !1547)
!1554 = !DILocation(line: 132, column: 12, scope: !1430, inlinedAt: !1547)
!1555 = !DILocation(line: 132, column: 5, scope: !1430, inlinedAt: !1547)
!1556 = !DILocation(line: 133, column: 1, scope: !1430, inlinedAt: !1547)
!1557 = !DILocation(line: 1145, column: 18, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 1145, column: 17)
!1559 = !DILocation(line: 1145, column: 25, scope: !1558)
!1560 = !DILocation(line: 1145, column: 36, scope: !1558)
!1561 = !DILocation(line: 130, column: 25, scope: !1437, inlinedAt: !1547)
!1562 = distinct !{!1562, !1545, !1563}
!1563 = !DILocation(line: 1149, column: 9, scope: !1318)
!1564 = !DILocation(line: 1145, column: 28, scope: !1558)
!1565 = !DILocation(line: 1145, column: 42, scope: !1558)
!1566 = !DILocation(line: 1146, column: 27, scope: !1558)
!1567 = !DILocation(line: 1146, column: 19, scope: !1558)
!1568 = !DILocation(line: 1146, column: 35, scope: !1558)
!1569 = !DILocation(line: 1146, column: 51, scope: !1558)
!1570 = !DILocation(line: 1145, column: 17, scope: !1548)
!1571 = !DILocation(line: 1147, column: 15, scope: !1548)
!1572 = !DILocation(line: 1144, column: 22, scope: !1548)
!1573 = !DILocation(line: 1150, column: 26, scope: !1318)
!1574 = !DILocation(line: 1150, column: 18, scope: !1318)
!1575 = !DILocation(line: 1153, column: 31, scope: !1318)
!1576 = !DILocation(line: 1154, column: 13, scope: !1318)
!1577 = !DILocation(line: 1155, column: 9, scope: !1318)
!1578 = !DILocation(line: 1155, column: 18, scope: !1318)
!1579 = !DILocation(line: 1155, column: 23, scope: !1318)
!1580 = !DILocation(line: 1153, column: 28, scope: !1318)
!1581 = !DILocation(line: 1153, column: 16, scope: !1318)
!1582 = !DILocation(line: 1156, column: 28, scope: !1324)
!1583 = !DILocation(line: 0, scope: !1324)
!1584 = !DILocation(line: 1156, column: 23, scope: !1324)
!1585 = !DILocation(line: 1157, column: 13, scope: !1324)
!1586 = !DILocation(line: 1158, column: 17, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1158, column: 17)
!1588 = !DILocation(line: 1158, column: 20, scope: !1587)
!1589 = !DILocation(line: 1158, column: 26, scope: !1587)
!1590 = !DILocation(line: 1158, column: 34, scope: !1587)
!1591 = !DILocation(line: 1158, column: 31, scope: !1587)
!1592 = !DILocation(line: 1158, column: 42, scope: !1587)
!1593 = !DILocation(line: 1158, column: 53, scope: !1587)
!1594 = !DILocation(line: 1158, column: 17, scope: !1324)
!1595 = !DILocation(line: 1161, column: 32, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1161, column: 17)
!1597 = !DILocation(line: 1161, column: 29, scope: !1596)
!1598 = !DILocation(line: 1161, column: 27, scope: !1596)
!1599 = !DILocation(line: 1161, column: 37, scope: !1596)
!1600 = !DILocation(line: 1161, column: 17, scope: !1324)
!1601 = !DILocation(line: 1162, column: 18, scope: !1324)
!1602 = !DILocation(line: 1164, column: 9, scope: !1318)
!1603 = !DILocation(line: 1165, column: 13, scope: !1318)
!1604 = !DILocation(line: 0, scope: !1587)
!1605 = !DILocation(line: 1165, column: 19, scope: !1327)
!1606 = !DILocation(line: 1168, column: 43, scope: !1326)
!1607 = !DILocation(line: 1168, column: 42, scope: !1326)
!1608 = !DILocation(line: 1168, column: 64, scope: !1326)
!1609 = !DILocation(line: 1167, column: 20, scope: !1326)
!1610 = !DILocation(line: 1169, column: 13, scope: !1326)
!1611 = !DILocation(line: 1169, column: 28, scope: !1326)
!1612 = !DILocation(line: 1169, column: 22, scope: !1326)
!1613 = !DILocation(line: 1172, column: 21, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 1172, column: 17)
!1615 = !DILocation(line: 1172, column: 17, scope: !1326)
!1616 = !DILocation(line: 143, column: 43, scope: !1378, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 1173, column: 17, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 1172, column: 30)
!1619 = !DILocation(line: 144, column: 13, scope: !1384, inlinedAt: !1617)
!1620 = !DILocation(line: 144, column: 19, scope: !1384, inlinedAt: !1617)
!1621 = !DILocation(line: 144, column: 9, scope: !1378, inlinedAt: !1617)
!1622 = !DILocation(line: 144, column: 49, scope: !1384, inlinedAt: !1617)
!1623 = !DILocation(line: 144, column: 40, scope: !1384, inlinedAt: !1617)
!1624 = !DILocation(line: 1176, column: 18, scope: !1326)
!1625 = !DILocation(line: 1176, column: 24, scope: !1326)
!1626 = !DILocation(line: 1177, column: 13, scope: !1326)
!1627 = !DILocation(line: 1177, column: 25, scope: !1326)
!1628 = !DILocation(line: 1178, column: 13, scope: !1326)
!1629 = !DILocation(line: 1178, column: 26, scope: !1326)
!1630 = !DILocation(line: 1179, column: 25, scope: !1326)
!1631 = !DILocation(line: 1179, column: 13, scope: !1326)
!1632 = !DILocation(line: 1179, column: 23, scope: !1326)
!1633 = !DILocation(line: 1180, column: 18, scope: !1326)
!1634 = !DILocation(line: 1180, column: 26, scope: !1326)
!1635 = !DILocation(line: 1186, column: 15, scope: !1326)
!1636 = !DILocation(line: 1187, column: 13, scope: !1326)
!1637 = !DILocation(line: 1187, column: 22, scope: !1326)
!1638 = !DILocation(line: 1187, column: 27, scope: !1326)
!1639 = !DILocation(line: 1188, column: 24, scope: !1330)
!1640 = !DILocation(line: 1188, column: 33, scope: !1330)
!1641 = !DILocation(line: 1188, column: 44, scope: !1330)
!1642 = !DILocation(line: 1188, column: 52, scope: !1330)
!1643 = !DILocation(line: 1188, column: 17, scope: !1330)
!1644 = !DILocation(line: 1189, column: 30, scope: !1330)
!1645 = !DILocation(line: 1189, column: 33, scope: !1330)
!1646 = !DILocation(line: 1189, column: 27, scope: !1330)
!1647 = !DILocation(line: 1190, column: 32, scope: !1330)
!1648 = !DILocation(line: 0, scope: !1330)
!1649 = !DILocation(line: 1190, column: 27, scope: !1330)
!1650 = !DILocation(line: 1191, column: 26, scope: !1330)
!1651 = !DILocation(line: 1192, column: 17, scope: !1330)
!1652 = !DILocation(line: 1193, column: 17, scope: !1330)
!1653 = !DILocation(line: 1193, column: 48, scope: !1330)
!1654 = !DILocation(line: 1194, column: 21, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 1194, column: 21)
!1656 = !DILocation(line: 1194, column: 24, scope: !1655)
!1657 = !DILocation(line: 1194, column: 30, scope: !1655)
!1658 = !DILocation(line: 1194, column: 38, scope: !1655)
!1659 = !DILocation(line: 1194, column: 35, scope: !1655)
!1660 = !DILocation(line: 1194, column: 46, scope: !1655)
!1661 = !DILocation(line: 1194, column: 57, scope: !1655)
!1662 = !DILocation(line: 1194, column: 21, scope: !1330)
!1663 = !DILocation(line: 1194, column: 64, scope: !1655)
!1664 = !DILocation(line: 1195, column: 13, scope: !1326)
!1665 = !DILocation(line: 1200, column: 28, scope: !1326)
!1666 = !DILocation(line: 1200, column: 23, scope: !1326)
!1667 = !DILocation(line: 1201, column: 13, scope: !1326)
!1668 = !DILocation(line: 1204, column: 17, scope: !1326)
!1669 = !DILocation(line: 932, column: 55, scope: !1491, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 1205, column: 40, scope: !1334)
!1671 = !DILocation(line: 933, column: 20, scope: !1491, inlinedAt: !1670)
!1672 = !DILocation(line: 934, column: 5, scope: !1491, inlinedAt: !1670)
!1673 = !DILocation(line: 935, column: 5, scope: !1491, inlinedAt: !1670)
!1674 = !DILocation(line: 936, column: 9, scope: !1507, inlinedAt: !1670)
!1675 = !DILocation(line: 937, column: 13, scope: !1509, inlinedAt: !1670)
!1676 = !DILocation(line: 934, column: 14, scope: !1491, inlinedAt: !1670)
!1677 = !DILocation(line: 937, column: 15, scope: !1509, inlinedAt: !1670)
!1678 = !DILocation(line: 937, column: 13, scope: !1507, inlinedAt: !1670)
!1679 = !DILocation(line: 933, column: 15, scope: !1491, inlinedAt: !1670)
!1680 = !DILocation(line: 938, column: 11, scope: !1507, inlinedAt: !1670)
!1681 = !DILocation(line: 936, column: 19, scope: !1507, inlinedAt: !1670)
!1682 = !DILocation(line: 941, column: 1, scope: !1491, inlinedAt: !1670)
!1683 = !DILocation(line: 1206, column: 24, scope: !1334)
!1684 = !DILocation(line: 940, column: 5, scope: !1491, inlinedAt: !1670)
!1685 = !DILocation(line: 1206, column: 17, scope: !1334)
!1686 = !DILocation(line: 1207, column: 13, scope: !1334)
!1687 = !DILocation(line: 1208, column: 27, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 1207, column: 20)
!1689 = !DILocation(line: 1213, column: 9, scope: !1327)
!1690 = !DILocation(line: 1214, column: 5, scope: !1319)
!1691 = !DILocation(line: 145, column: 1, scope: !1378, inlinedAt: !1617)
!1692 = !DILocation(line: 1174, column: 17, scope: !1618)
!1693 = !DILocation(line: 143, column: 43, scope: !1378, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 1215, column: 5, scope: !1294)
!1695 = !DILocation(line: 144, column: 13, scope: !1384, inlinedAt: !1694)
!1696 = !DILocation(line: 144, column: 19, scope: !1384, inlinedAt: !1694)
!1697 = !DILocation(line: 144, column: 9, scope: !1378, inlinedAt: !1694)
!1698 = !DILocation(line: 144, column: 49, scope: !1384, inlinedAt: !1694)
!1699 = !DILocation(line: 144, column: 40, scope: !1384, inlinedAt: !1694)
!1700 = !DILocation(line: 0, scope: !1294)
!1701 = !DILocation(line: 1217, column: 1, scope: !1294)
!1702 = distinct !DISubprogram(name: "raxInsert", scope: !3, file: !3, line: 902, type: !1703, isLocal: false, isDefinition: true, scopeLine: 902, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1705)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!31, !93, !10, !56, !6, !7}
!1705 = !{!1706, !1707, !1708, !1709, !1710}
!1706 = !DILocalVariable(name: "rax", arg: 1, scope: !1702, file: !3, line: 902, type: !93)
!1707 = !DILocalVariable(name: "s", arg: 2, scope: !1702, file: !3, line: 902, type: !10)
!1708 = !DILocalVariable(name: "len", arg: 3, scope: !1702, file: !3, line: 902, type: !56)
!1709 = !DILocalVariable(name: "data", arg: 4, scope: !1702, file: !3, line: 902, type: !6)
!1710 = !DILocalVariable(name: "old", arg: 5, scope: !1702, file: !3, line: 902, type: !7)
!1711 = !DILocation(line: 902, column: 20, scope: !1702)
!1712 = !DILocation(line: 902, column: 40, scope: !1702)
!1713 = !DILocation(line: 902, column: 50, scope: !1702)
!1714 = !DILocation(line: 902, column: 61, scope: !1702)
!1715 = !DILocation(line: 902, column: 74, scope: !1702)
!1716 = !DILocation(line: 903, column: 12, scope: !1702)
!1717 = !DILocation(line: 903, column: 5, scope: !1702)
!1718 = distinct !DISubprogram(name: "raxTryInsert", scope: !3, file: !3, line: 909, type: !1703, isLocal: false, isDefinition: true, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1719)
!1719 = !{!1720, !1721, !1722, !1723, !1724}
!1720 = !DILocalVariable(name: "rax", arg: 1, scope: !1718, file: !3, line: 909, type: !93)
!1721 = !DILocalVariable(name: "s", arg: 2, scope: !1718, file: !3, line: 909, type: !10)
!1722 = !DILocalVariable(name: "len", arg: 3, scope: !1718, file: !3, line: 909, type: !56)
!1723 = !DILocalVariable(name: "data", arg: 4, scope: !1718, file: !3, line: 909, type: !6)
!1724 = !DILocalVariable(name: "old", arg: 5, scope: !1718, file: !3, line: 909, type: !7)
!1725 = !DILocation(line: 909, column: 23, scope: !1718)
!1726 = !DILocation(line: 909, column: 43, scope: !1718)
!1727 = !DILocation(line: 909, column: 53, scope: !1718)
!1728 = !DILocation(line: 909, column: 64, scope: !1718)
!1729 = !DILocation(line: 909, column: 77, scope: !1718)
!1730 = !DILocation(line: 910, column: 12, scope: !1718)
!1731 = !DILocation(line: 910, column: 5, scope: !1718)
!1732 = distinct !DISubprogram(name: "raxFind", scope: !3, file: !3, line: 916, type: !1733, isLocal: false, isDefinition: true, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1735)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!6, !93, !10, !56}
!1735 = !{!1736, !1737, !1738, !1739, !1740, !1741}
!1736 = !DILocalVariable(name: "rax", arg: 1, scope: !1732, file: !3, line: 916, type: !93)
!1737 = !DILocalVariable(name: "s", arg: 2, scope: !1732, file: !3, line: 916, type: !10)
!1738 = !DILocalVariable(name: "len", arg: 3, scope: !1732, file: !3, line: 916, type: !56)
!1739 = !DILocalVariable(name: "h", scope: !1732, file: !3, line: 917, type: !13)
!1740 = !DILocalVariable(name: "splitpos", scope: !1732, file: !3, line: 920, type: !31)
!1741 = !DILocalVariable(name: "i", scope: !1732, file: !3, line: 921, type: !56)
!1742 = !DILocation(line: 916, column: 20, scope: !1732)
!1743 = !DILocation(line: 916, column: 40, scope: !1732)
!1744 = !DILocation(line: 916, column: 50, scope: !1732)
!1745 = !DILocation(line: 917, column: 5, scope: !1732)
!1746 = !DILocation(line: 920, column: 5, scope: !1732)
!1747 = !DILocation(line: 920, column: 9, scope: !1732)
!1748 = !DILocation(line: 917, column: 14, scope: !1732)
!1749 = !DILocation(line: 921, column: 16, scope: !1732)
!1750 = !DILocation(line: 921, column: 12, scope: !1732)
!1751 = !DILocation(line: 922, column: 11, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 922, column: 9)
!1753 = !DILocation(line: 922, column: 18, scope: !1752)
!1754 = !DILocation(line: 922, column: 22, scope: !1752)
!1755 = !DILocation(line: 922, column: 25, scope: !1752)
!1756 = !DILocation(line: 922, column: 36, scope: !1752)
!1757 = !DILocation(line: 922, column: 45, scope: !1752)
!1758 = !DILocation(line: 922, column: 33, scope: !1752)
!1759 = !DILocation(line: 922, column: 58, scope: !1752)
!1760 = !DILocation(line: 922, column: 55, scope: !1752)
!1761 = !DILocation(line: 922, column: 9, scope: !1732)
!1762 = !DILocation(line: 923, column: 16, scope: !1752)
!1763 = !DILocation(line: 923, column: 9, scope: !1752)
!1764 = !DILocation(line: 237, column: 27, scope: !189, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 924, column: 12, scope: !1732)
!1766 = !DILocation(line: 238, column: 12, scope: !198, inlinedAt: !1765)
!1767 = !DILocation(line: 238, column: 9, scope: !198, inlinedAt: !1765)
!1768 = !DILocation(line: 238, column: 9, scope: !189, inlinedAt: !1765)
!1769 = !DILocation(line: 239, column: 28, scope: !189, inlinedAt: !1765)
!1770 = !DILocation(line: 239, column: 37, scope: !189, inlinedAt: !1765)
!1771 = !DILocation(line: 239, column: 36, scope: !189, inlinedAt: !1765)
!1772 = !DILocation(line: 239, column: 60, scope: !189, inlinedAt: !1765)
!1773 = !DILocation(line: 239, column: 12, scope: !189, inlinedAt: !1765)
!1774 = !DILocation(line: 240, column: 5, scope: !189, inlinedAt: !1765)
!1775 = !DILocation(line: 241, column: 5, scope: !189, inlinedAt: !1765)
!1776 = !DILocation(line: 242, column: 12, scope: !189, inlinedAt: !1765)
!1777 = !DILocation(line: 240, column: 11, scope: !189, inlinedAt: !1765)
!1778 = !DILocation(line: 243, column: 1, scope: !189, inlinedAt: !1765)
!1779 = !DILocation(line: 0, scope: !189, inlinedAt: !1765)
!1780 = !DILocation(line: 924, column: 5, scope: !1732)
!1781 = !DILocation(line: 0, scope: !1732)
!1782 = !DILocation(line: 0, scope: !1752)
!1783 = !DILocation(line: 925, column: 1, scope: !1732)
!1784 = !DILocation(line: 932, column: 38, scope: !1491)
!1785 = !DILocation(line: 932, column: 55, scope: !1491)
!1786 = !DILocation(line: 933, column: 20, scope: !1491)
!1787 = !DILocation(line: 933, column: 15, scope: !1491)
!1788 = !DILocation(line: 934, column: 5, scope: !1491)
!1789 = !DILocation(line: 936, column: 9, scope: !1507)
!1790 = !DILocation(line: 937, column: 13, scope: !1509)
!1791 = !DILocation(line: 934, column: 14, scope: !1491)
!1792 = !DILocation(line: 937, column: 15, scope: !1509)
!1793 = !DILocation(line: 937, column: 13, scope: !1507)
!1794 = !DILocation(line: 938, column: 11, scope: !1507)
!1795 = !DILocation(line: 936, column: 19, scope: !1507)
!1796 = !DILocation(line: 0, scope: !1507)
!1797 = !DILocation(line: 941, column: 1, scope: !1491)
!1798 = !DILocation(line: 940, column: 5, scope: !1491)
!1799 = distinct !DISubprogram(name: "raxRemoveChild", scope: !3, file: !3, line: 947, type: !1800, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1802)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!13, !13, !13}
!1802 = !{!1803, !1804, !1805, !1808, !1809, !1810, !1811, !1813, !1814, !1815, !1816}
!1803 = !DILocalVariable(name: "parent", arg: 1, scope: !1799, file: !3, line: 947, type: !13)
!1804 = !DILocalVariable(name: "child", arg: 2, scope: !1799, file: !3, line: 947, type: !13)
!1805 = !DILocalVariable(name: "data", scope: !1806, file: !3, line: 953, type: !6)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 952, column: 26)
!1807 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 952, column: 9)
!1808 = !DILocalVariable(name: "cp", scope: !1799, file: !3, line: 968, type: !12)
!1809 = !DILocalVariable(name: "c", scope: !1799, file: !3, line: 969, type: !12)
!1810 = !DILocalVariable(name: "e", scope: !1799, file: !3, line: 970, type: !10)
!1811 = !DILocalVariable(name: "aux", scope: !1812, file: !3, line: 975, type: !13)
!1812 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 974, column: 14)
!1813 = !DILocalVariable(name: "taillen", scope: !1799, file: !3, line: 984, type: !31)
!1814 = !DILocalVariable(name: "shift", scope: !1799, file: !3, line: 994, type: !56)
!1815 = !DILocalVariable(name: "valuelen", scope: !1799, file: !3, line: 1001, type: !56)
!1816 = !DILocalVariable(name: "newnode", scope: !1799, file: !3, line: 1009, type: !13)
!1817 = !DILocation(line: 947, column: 34, scope: !1799)
!1818 = !DILocation(line: 947, column: 51, scope: !1799)
!1819 = !DILocation(line: 952, column: 17, scope: !1807)
!1820 = !DILocation(line: 952, column: 9, scope: !1807)
!1821 = !DILocation(line: 952, column: 9, scope: !1799)
!1822 = !DILocation(line: 953, column: 15, scope: !1806)
!1823 = !DILocation(line: 954, column: 21, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 954, column: 13)
!1825 = !DILocation(line: 954, column: 13, scope: !1824)
!1826 = !DILocation(line: 954, column: 13, scope: !1806)
!1827 = !DILocation(line: 957, column: 22, scope: !1806)
!1828 = !DILocation(line: 958, column: 13, scope: !1806)
!1829 = !DILocation(line: 237, column: 27, scope: !189, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 954, column: 35, scope: !1824)
!1831 = !DILocation(line: 238, column: 12, scope: !198, inlinedAt: !1830)
!1832 = !DILocation(line: 238, column: 9, scope: !198, inlinedAt: !1830)
!1833 = !DILocation(line: 238, column: 9, scope: !189, inlinedAt: !1830)
!1834 = !DILocation(line: 238, column: 20, scope: !198, inlinedAt: !1830)
!1835 = !DILocation(line: 243, column: 1, scope: !189, inlinedAt: !1830)
!1836 = !DILocation(line: 954, column: 28, scope: !1824)
!1837 = !DILocation(line: 224, column: 26, scope: !161, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 958, column: 28, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 958, column: 13)
!1840 = !DILocation(line: 224, column: 35, scope: !161, inlinedAt: !1838)
!1841 = !DILocation(line: 225, column: 14, scope: !161, inlinedAt: !1838)
!1842 = !DILocation(line: 226, column: 9, scope: !161, inlinedAt: !1838)
!1843 = !DILocation(line: 239, column: 28, scope: !189, inlinedAt: !1830)
!1844 = !DILocation(line: 239, column: 37, scope: !189, inlinedAt: !1830)
!1845 = !DILocation(line: 239, column: 36, scope: !189, inlinedAt: !1830)
!1846 = !DILocation(line: 239, column: 60, scope: !189, inlinedAt: !1830)
!1847 = !DILocation(line: 239, column: 12, scope: !189, inlinedAt: !1830)
!1848 = !DILocation(line: 240, column: 5, scope: !189, inlinedAt: !1830)
!1849 = !DILocation(line: 241, column: 5, scope: !189, inlinedAt: !1830)
!1850 = !DILocation(line: 242, column: 12, scope: !189, inlinedAt: !1830)
!1851 = !DILocation(line: 240, column: 11, scope: !189, inlinedAt: !1830)
!1852 = !DILocation(line: 955, column: 24, scope: !1806)
!1853 = !DILocation(line: 958, column: 13, scope: !1839)
!1854 = !DILocation(line: 226, column: 14, scope: !169, inlinedAt: !1838)
!1855 = !DILocation(line: 227, column: 19, scope: !168, inlinedAt: !1838)
!1856 = !DILocation(line: 229, column: 23, scope: !168, inlinedAt: !1838)
!1857 = !DILocation(line: 229, column: 46, scope: !168, inlinedAt: !1838)
!1858 = !DILocation(line: 228, column: 16, scope: !168, inlinedAt: !1838)
!1859 = !DILocation(line: 230, column: 9, scope: !168, inlinedAt: !1838)
!1860 = !DILocation(line: 231, column: 5, scope: !168, inlinedAt: !1838)
!1861 = !DILocation(line: 232, column: 19, scope: !178, inlinedAt: !1838)
!1862 = !DILocation(line: 234, column: 1, scope: !161, inlinedAt: !1838)
!1863 = !DILocation(line: 958, column: 28, scope: !1839)
!1864 = !DILocation(line: 0, scope: !1839)
!1865 = !DILocation(line: 968, column: 20, scope: !1799)
!1866 = !DILocation(line: 968, column: 15, scope: !1799)
!1867 = !DILocation(line: 969, column: 15, scope: !1799)
!1868 = !DILocation(line: 970, column: 20, scope: !1799)
!1869 = !DILocation(line: 974, column: 5, scope: !1799)
!1870 = !DILocation(line: 975, column: 9, scope: !1812)
!1871 = !DILocation(line: 976, column: 9, scope: !1812)
!1872 = !DILocation(line: 977, column: 13, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 977, column: 13)
!1874 = !DILocation(line: 975, column: 18, scope: !1812)
!1875 = !DILocation(line: 977, column: 17, scope: !1873)
!1876 = !DILocation(line: 977, column: 13, scope: !1812)
!1877 = !DILocation(line: 978, column: 10, scope: !1812)
!1878 = !DILocation(line: 979, column: 10, scope: !1812)
!1879 = !DILocation(line: 980, column: 5, scope: !1799)
!1880 = !DILocation(line: 976, column: 21, scope: !1812)
!1881 = !DILocation(line: 977, column: 27, scope: !1873)
!1882 = !DILocation(line: 984, column: 27, scope: !1799)
!1883 = !DILocation(line: 984, column: 37, scope: !1799)
!1884 = !DILocation(line: 984, column: 32, scope: !1799)
!1885 = !DILocation(line: 984, column: 19, scope: !1799)
!1886 = !DILocation(line: 984, column: 9, scope: !1799)
!1887 = !DILocation(line: 986, column: 16, scope: !1799)
!1888 = !DILocation(line: 986, column: 19, scope: !1799)
!1889 = !DILocation(line: 986, column: 5, scope: !1799)
!1890 = !DILocation(line: 994, column: 30, scope: !1799)
!1891 = !DILocation(line: 994, column: 34, scope: !1799)
!1892 = !DILocation(line: 994, column: 38, scope: !1799)
!1893 = !DILocation(line: 994, column: 55, scope: !1799)
!1894 = !DILocation(line: 994, column: 20, scope: !1799)
!1895 = !DILocation(line: 994, column: 12, scope: !1799)
!1896 = !DILocation(line: 997, column: 9, scope: !1799)
!1897 = !DILocation(line: 998, column: 28, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 997, column: 9)
!1899 = !DILocation(line: 998, column: 59, scope: !1898)
!1900 = !DILocation(line: 998, column: 38, scope: !1898)
!1901 = !DILocation(line: 998, column: 62, scope: !1898)
!1902 = !DILocation(line: 998, column: 9, scope: !1898)
!1903 = !DILocation(line: 1001, column: 32, scope: !1799)
!1904 = !DILocation(line: 1001, column: 24, scope: !1799)
!1905 = !DILocation(line: 1001, column: 38, scope: !1799)
!1906 = !DILocation(line: 1001, column: 12, scope: !1799)
!1907 = !DILocation(line: 1002, column: 14, scope: !1799)
!1908 = !DILocation(line: 1002, column: 23, scope: !1799)
!1909 = !DILocation(line: 1002, column: 31, scope: !1799)
!1910 = !DILocation(line: 1002, column: 30, scope: !1799)
!1911 = !DILocation(line: 1002, column: 41, scope: !1799)
!1912 = !DILocation(line: 1002, column: 59, scope: !1799)
!1913 = !DILocation(line: 1002, column: 5, scope: !1799)
!1914 = !DILocation(line: 1005, column: 17, scope: !1799)
!1915 = !DILocation(line: 1009, column: 36, scope: !1799)
!1916 = !DILocation(line: 1009, column: 43, scope: !1799)
!1917 = !DILocation(line: 1009, column: 24, scope: !1799)
!1918 = !DILocation(line: 1009, column: 14, scope: !1799)
!1919 = !DILocation(line: 1015, column: 12, scope: !1799)
!1920 = !DILocation(line: 0, scope: !1799)
!1921 = !DILocation(line: 1016, column: 1, scope: !1799)
!1922 = distinct !DISubprogram(name: "raxRecursiveFree", scope: !3, file: !3, line: 1221, type: !1923, isLocal: false, isDefinition: true, scopeLine: 1221, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1928)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{null, !93, !13, !1925}
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{null, !6}
!1928 = !{!1929, !1930, !1931, !1932, !1933, !1934}
!1929 = !DILocalVariable(name: "rax", arg: 1, scope: !1922, file: !3, line: 1221, type: !93)
!1930 = !DILocalVariable(name: "n", arg: 2, scope: !1922, file: !3, line: 1221, type: !13)
!1931 = !DILocalVariable(name: "free_callback", arg: 3, scope: !1922, file: !3, line: 1221, type: !1925)
!1932 = !DILocalVariable(name: "numchildren", scope: !1922, file: !3, line: 1223, type: !31)
!1933 = !DILocalVariable(name: "cp", scope: !1922, file: !3, line: 1224, type: !12)
!1934 = !DILocalVariable(name: "child", scope: !1935, file: !3, line: 1226, type: !13)
!1935 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 1225, column: 26)
!1936 = !DILocation(line: 1221, column: 28, scope: !1922)
!1937 = !DILocation(line: 1221, column: 42, scope: !1922)
!1938 = !DILocation(line: 1221, column: 52, scope: !1922)
!1939 = !DILocation(line: 1223, column: 26, scope: !1922)
!1940 = !DILocation(line: 1223, column: 23, scope: !1922)
!1941 = !DILocation(line: 0, scope: !1922)
!1942 = !DILocation(line: 1223, column: 9, scope: !1922)
!1943 = !DILocation(line: 1224, column: 20, scope: !1922)
!1944 = !DILocation(line: 1225, column: 5, scope: !1922)
!1945 = !DILocation(line: 1224, column: 15, scope: !1922)
!1946 = !DILocation(line: 1225, column: 22, scope: !1922)
!1947 = !DILocation(line: 1226, column: 9, scope: !1935)
!1948 = !DILocation(line: 1227, column: 23, scope: !1935)
!1949 = !DILocation(line: 1227, column: 9, scope: !1935)
!1950 = !DILocation(line: 1228, column: 30, scope: !1935)
!1951 = !DILocation(line: 1226, column: 18, scope: !1935)
!1952 = !DILocation(line: 1228, column: 9, scope: !1935)
!1953 = !DILocation(line: 1229, column: 11, scope: !1935)
!1954 = !DILocation(line: 1230, column: 5, scope: !1922)
!1955 = distinct !{!1955, !1944, !1954}
!1956 = !DILocation(line: 1232, column: 9, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 1232, column: 9)
!1958 = !DILocation(line: 1232, column: 23, scope: !1957)
!1959 = !DILocation(line: 1232, column: 29, scope: !1957)
!1960 = !DILocation(line: 1232, column: 26, scope: !1957)
!1961 = !DILocation(line: 1232, column: 35, scope: !1957)
!1962 = !DILocation(line: 1232, column: 42, scope: !1957)
!1963 = !DILocation(line: 1232, column: 39, scope: !1957)
!1964 = !DILocation(line: 1232, column: 9, scope: !1922)
!1965 = !DILocation(line: 237, column: 27, scope: !189, inlinedAt: !1966)
!1966 = distinct !DILocation(line: 1233, column: 23, scope: !1957)
!1967 = !DILocation(line: 238, column: 9, scope: !189, inlinedAt: !1966)
!1968 = !DILocation(line: 239, column: 37, scope: !189, inlinedAt: !1966)
!1969 = !DILocation(line: 239, column: 36, scope: !189, inlinedAt: !1966)
!1970 = !DILocation(line: 239, column: 60, scope: !189, inlinedAt: !1966)
!1971 = !DILocation(line: 239, column: 12, scope: !189, inlinedAt: !1966)
!1972 = !DILocation(line: 240, column: 5, scope: !189, inlinedAt: !1966)
!1973 = !DILocation(line: 241, column: 5, scope: !189, inlinedAt: !1966)
!1974 = !DILocation(line: 242, column: 12, scope: !189, inlinedAt: !1966)
!1975 = !DILocation(line: 240, column: 11, scope: !189, inlinedAt: !1966)
!1976 = !DILocation(line: 243, column: 1, scope: !189, inlinedAt: !1966)
!1977 = !DILocation(line: 1233, column: 9, scope: !1957)
!1978 = !DILocation(line: 1234, column: 5, scope: !1922)
!1979 = !DILocation(line: 1235, column: 10, scope: !1922)
!1980 = !DILocation(line: 1235, column: 18, scope: !1922)
!1981 = !DILocation(line: 1236, column: 1, scope: !1922)
!1982 = distinct !DISubprogram(name: "raxFreeWithCallback", scope: !3, file: !3, line: 1240, type: !1983, isLocal: false, isDefinition: true, scopeLine: 1240, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1985)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{null, !93, !1925}
!1985 = !{!1986, !1987}
!1986 = !DILocalVariable(name: "rax", arg: 1, scope: !1982, file: !3, line: 1240, type: !93)
!1987 = !DILocalVariable(name: "free_callback", arg: 2, scope: !1982, file: !3, line: 1240, type: !1925)
!1988 = !DILocation(line: 1240, column: 31, scope: !1982)
!1989 = !DILocation(line: 1240, column: 43, scope: !1982)
!1990 = !DILocation(line: 1241, column: 31, scope: !1982)
!1991 = !DILocation(line: 1241, column: 5, scope: !1982)
!1992 = !DILocation(line: 1242, column: 5, scope: !1982)
!1993 = !DILocation(line: 1243, column: 14, scope: !1982)
!1994 = !DILocation(line: 1243, column: 5, scope: !1982)
!1995 = !DILocation(line: 1244, column: 1, scope: !1982)
!1996 = distinct !DISubprogram(name: "raxFree", scope: !3, file: !3, line: 1247, type: !1997, isLocal: false, isDefinition: true, scopeLine: 1247, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !93}
!1999 = !{!2000}
!2000 = !DILocalVariable(name: "rax", arg: 1, scope: !1996, file: !3, line: 1247, type: !93)
!2001 = !DILocation(line: 1247, column: 19, scope: !1996)
!2002 = !DILocation(line: 1240, column: 31, scope: !1982, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 1248, column: 5, scope: !1996)
!2004 = !DILocation(line: 1240, column: 43, scope: !1982, inlinedAt: !2003)
!2005 = !DILocation(line: 1241, column: 31, scope: !1982, inlinedAt: !2003)
!2006 = !DILocation(line: 1241, column: 5, scope: !1982, inlinedAt: !2003)
!2007 = !DILocation(line: 1242, column: 5, scope: !1982, inlinedAt: !2003)
!2008 = !DILocation(line: 1243, column: 14, scope: !1982, inlinedAt: !2003)
!2009 = !DILocation(line: 1243, column: 5, scope: !1982, inlinedAt: !2003)
!2010 = !DILocation(line: 1244, column: 1, scope: !1982, inlinedAt: !2003)
!2011 = !DILocation(line: 1249, column: 1, scope: !1996)
!2012 = distinct !DISubprogram(name: "raxStart", scope: !3, file: !3, line: 1256, type: !2013, isLocal: false, isDefinition: true, scopeLine: 1256, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2036)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{null, !2015, !93}
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxIterator", file: !15, line: 186, baseType: !2017)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxIterator", file: !15, line: 175, size: 3840, elements: !2018)
!2018 = !{!2019, !2020, !2021, !2022, !2023, !2024, !2025, !2029, !2030, !2031}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2017, file: !15, line: 176, baseType: !31, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2017, file: !15, line: 177, baseType: !93, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2017, file: !15, line: 178, baseType: !10, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2017, file: !15, line: 179, baseType: !6, size: 64, offset: 192)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !2017, file: !15, line: 180, baseType: !56, size: 64, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "key_max", scope: !2017, file: !15, line: 181, baseType: !56, size: 64, offset: 320)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "key_static_string", scope: !2017, file: !15, line: 182, baseType: !2026, size: 1024, offset: 384)
!2026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1024, elements: !2027)
!2027 = !{!2028}
!2028 = !DISubrange(count: 128)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2017, file: !15, line: 183, baseType: !13, size: 64, offset: 1408)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2017, file: !15, line: 184, baseType: !1156, size: 2304, offset: 1472)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "node_cb", scope: !2017, file: !15, line: 185, baseType: !2032, size: 64, offset: 3776)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNodeCallback", file: !15, line: 165, baseType: !2033)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!31, !12}
!2036 = !{!2037, !2038}
!2037 = !DILocalVariable(name: "it", arg: 1, scope: !2012, file: !3, line: 1256, type: !2015)
!2038 = !DILocalVariable(name: "rt", arg: 2, scope: !2012, file: !3, line: 1256, type: !93)
!2039 = !DILocation(line: 1256, column: 28, scope: !2012)
!2040 = !DILocation(line: 1256, column: 37, scope: !2012)
!2041 = !DILocation(line: 1257, column: 9, scope: !2012)
!2042 = !DILocation(line: 1257, column: 15, scope: !2012)
!2043 = !{!2044, !49, i64 0}
!2044 = !{!"raxIterator", !49, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !112, i64 32, !112, i64 40, !50, i64 48, !127, i64 176, !1354, i64 184, !127, i64 472}
!2045 = !DILocation(line: 1258, column: 9, scope: !2012)
!2046 = !DILocation(line: 1258, column: 12, scope: !2012)
!2047 = !{!2044, !127, i64 8}
!2048 = !DILocation(line: 1259, column: 9, scope: !2012)
!2049 = !DILocation(line: 1260, column: 15, scope: !2012)
!2050 = !DILocation(line: 1260, column: 9, scope: !2012)
!2051 = !DILocation(line: 1260, column: 13, scope: !2012)
!2052 = !{!2044, !127, i64 16}
!2053 = !DILocation(line: 1259, column: 17, scope: !2012)
!2054 = !DILocation(line: 1262, column: 9, scope: !2012)
!2055 = !DILocation(line: 1262, column: 14, scope: !2012)
!2056 = !{!2044, !127, i64 24}
!2057 = !DILocation(line: 1263, column: 9, scope: !2012)
!2058 = !DILocation(line: 1263, column: 17, scope: !2012)
!2059 = !{!2044, !127, i64 472}
!2060 = !DILocation(line: 92, column: 43, scope: !1344, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 1264, column: 5, scope: !2012)
!2062 = !DILocation(line: 93, column: 17, scope: !1344, inlinedAt: !2061)
!2063 = !DILocation(line: 93, column: 9, scope: !1344, inlinedAt: !2061)
!2064 = !DILocation(line: 93, column: 15, scope: !1344, inlinedAt: !2061)
!2065 = !DILocation(line: 94, column: 9, scope: !1344, inlinedAt: !2061)
!2066 = !DILocation(line: 94, column: 15, scope: !1344, inlinedAt: !2061)
!2067 = !DILocation(line: 96, column: 9, scope: !1344, inlinedAt: !2061)
!2068 = !DILocation(line: 96, column: 13, scope: !1344, inlinedAt: !2061)
!2069 = !DILocation(line: 97, column: 1, scope: !1344, inlinedAt: !2061)
!2070 = !DILocation(line: 1265, column: 1, scope: !2012)
!2071 = distinct !DISubprogram(name: "raxIteratorAddChars", scope: !3, file: !3, line: 1270, type: !2072, isLocal: false, isDefinition: true, scopeLine: 1270, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2074)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!31, !2015, !10, !56}
!2074 = !{!2075, !2076, !2077, !2078, !2081}
!2075 = !DILocalVariable(name: "it", arg: 1, scope: !2071, file: !3, line: 1270, type: !2015)
!2076 = !DILocalVariable(name: "s", arg: 2, scope: !2071, file: !3, line: 1270, type: !10)
!2077 = !DILocalVariable(name: "len", arg: 3, scope: !2071, file: !3, line: 1270, type: !56)
!2078 = !DILocalVariable(name: "old", scope: !2079, file: !3, line: 1272, type: !10)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 1271, column: 40)
!2080 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 1271, column: 9)
!2081 = !DILocalVariable(name: "new_max", scope: !2079, file: !3, line: 1274, type: !56)
!2082 = !DILocation(line: 1270, column: 38, scope: !2071)
!2083 = !DILocation(line: 1270, column: 57, scope: !2071)
!2084 = !DILocation(line: 1270, column: 67, scope: !2071)
!2085 = !DILocation(line: 1271, column: 13, scope: !2080)
!2086 = !{!2044, !112, i64 40}
!2087 = !DILocation(line: 1271, column: 27, scope: !2080)
!2088 = !{!2044, !112, i64 32}
!2089 = !DILocation(line: 1271, column: 34, scope: !2080)
!2090 = !DILocation(line: 1271, column: 21, scope: !2080)
!2091 = !DILocation(line: 1271, column: 9, scope: !2071)
!2092 = !DILocation(line: 0, scope: !2071)
!2093 = !DILocation(line: 1272, column: 35, scope: !2079)
!2094 = !DILocation(line: 1272, column: 42, scope: !2079)
!2095 = !DILocation(line: 1272, column: 39, scope: !2079)
!2096 = !DILocation(line: 1272, column: 30, scope: !2079)
!2097 = !DILocation(line: 1272, column: 24, scope: !2079)
!2098 = !DILocation(line: 1274, column: 43, scope: !2079)
!2099 = !DILocation(line: 1274, column: 16, scope: !2079)
!2100 = !DILocation(line: 1275, column: 19, scope: !2079)
!2101 = !DILocation(line: 1275, column: 17, scope: !2079)
!2102 = !DILocation(line: 1276, column: 21, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 1276, column: 13)
!2104 = !DILocation(line: 1276, column: 13, scope: !2079)
!2105 = !DILocation(line: 0, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2079, file: !3, line: 1281, column: 13)
!2107 = !DILocation(line: 1277, column: 23, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2103, file: !3, line: 1276, column: 30)
!2109 = !DILocation(line: 1277, column: 21, scope: !2108)
!2110 = !DILocation(line: 1278, column: 13, scope: !2108)
!2111 = !DILocation(line: 1278, column: 19, scope: !2108)
!2112 = !DILocation(line: 1279, column: 13, scope: !2108)
!2113 = !DILocation(line: 1281, column: 13, scope: !2079)
!2114 = !DILocation(line: 1281, column: 67, scope: !2106)
!2115 = !DILocation(line: 1281, column: 26, scope: !2106)
!2116 = !DILocation(line: 1282, column: 21, scope: !2079)
!2117 = !DILocation(line: 1283, column: 5, scope: !2080)
!2118 = !DILocation(line: 1286, column: 25, scope: !2071)
!2119 = !DILocation(line: 1286, column: 17, scope: !2071)
!2120 = !DILocation(line: 1286, column: 20, scope: !2071)
!2121 = !DILocation(line: 1286, column: 5, scope: !2071)
!2122 = !DILocation(line: 1287, column: 17, scope: !2071)
!2123 = !DILocation(line: 1288, column: 5, scope: !2071)
!2124 = !DILocation(line: 0, scope: !2108)
!2125 = !DILocation(line: 1289, column: 1, scope: !2071)
!2126 = distinct !DISubprogram(name: "raxIteratorDelChars", scope: !3, file: !3, line: 1293, type: !2127, isLocal: false, isDefinition: true, scopeLine: 1293, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2129)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{null, !2015, !56}
!2129 = !{!2130, !2131}
!2130 = !DILocalVariable(name: "it", arg: 1, scope: !2126, file: !3, line: 1293, type: !2015)
!2131 = !DILocalVariable(name: "count", arg: 2, scope: !2126, file: !3, line: 1293, type: !56)
!2132 = !DILocation(line: 1293, column: 39, scope: !2126)
!2133 = !DILocation(line: 1293, column: 50, scope: !2126)
!2134 = !DILocation(line: 1294, column: 9, scope: !2126)
!2135 = !DILocation(line: 1294, column: 17, scope: !2126)
!2136 = !DILocation(line: 1295, column: 1, scope: !2126)
!2137 = distinct !DISubprogram(name: "raxIteratorNextStep", scope: !3, file: !3, line: 1311, type: !2138, isLocal: false, isDefinition: true, scopeLine: 1311, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2140)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!31, !2015, !31}
!2140 = !{!2141, !2142, !2143, !2144, !2145, !2146, !2148, !2151, !2154, !2155, !2156, !2159}
!2141 = !DILocalVariable(name: "it", arg: 1, scope: !2137, file: !3, line: 1311, type: !2015)
!2142 = !DILocalVariable(name: "noup", arg: 2, scope: !2137, file: !3, line: 1311, type: !31)
!2143 = !DILocalVariable(name: "orig_key_len", scope: !2137, file: !3, line: 1321, type: !56)
!2144 = !DILocalVariable(name: "orig_stack_items", scope: !2137, file: !3, line: 1322, type: !56)
!2145 = !DILocalVariable(name: "orig_node", scope: !2137, file: !3, line: 1323, type: !13)
!2146 = !DILocalVariable(name: "children", scope: !2147, file: !3, line: 1326, type: !31)
!2147 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 1325, column: 14)
!2148 = !DILocalVariable(name: "cp", scope: !2149, file: !3, line: 1333, type: !12)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 1327, column: 32)
!2150 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 1327, column: 13)
!2151 = !DILocalVariable(name: "old_noup", scope: !2152, file: !3, line: 1354, type: !31)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 1353, column: 22)
!2153 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 1348, column: 16)
!2154 = !DILocalVariable(name: "prevchild", scope: !2152, file: !3, line: 1366, type: !11)
!2155 = !DILocalVariable(name: "todel", scope: !2152, file: !3, line: 1374, type: !31)
!2156 = !DILocalVariable(name: "cp", scope: !2157, file: !3, line: 1380, type: !12)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 1379, column: 80)
!2158 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 1379, column: 21)
!2159 = !DILocalVariable(name: "i", scope: !2157, file: !3, line: 1381, type: !31)
!2160 = !DILocation(line: 1311, column: 38, scope: !2137)
!2161 = !DILocation(line: 1311, column: 46, scope: !2137)
!2162 = !DILocation(line: 1312, column: 13, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 1312, column: 9)
!2164 = !DILocation(line: 1312, column: 19, scope: !2163)
!2165 = !DILocation(line: 1312, column: 9, scope: !2137)
!2166 = !DILocation(line: 1314, column: 26, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 1314, column: 16)
!2168 = !DILocation(line: 1314, column: 16, scope: !2163)
!2169 = !DILocation(line: 1315, column: 19, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 1314, column: 50)
!2171 = !DILocation(line: 1316, column: 9, scope: !2170)
!2172 = !DILocation(line: 1321, column: 31, scope: !2137)
!2173 = !DILocation(line: 1321, column: 12, scope: !2137)
!2174 = !DILocation(line: 1322, column: 35, scope: !2137)
!2175 = !DILocation(line: 1322, column: 41, scope: !2137)
!2176 = !{!2044, !112, i64 192}
!2177 = !DILocation(line: 1322, column: 12, scope: !2137)
!2178 = !DILocation(line: 1323, column: 30, scope: !2137)
!2179 = !{!2044, !127, i64 176}
!2180 = !DILocation(line: 1323, column: 14, scope: !2137)
!2181 = !DILocation(line: 1325, column: 5, scope: !2137)
!2182 = !DILocation(line: 1326, column: 28, scope: !2147)
!2183 = !DILocation(line: 1326, column: 34, scope: !2147)
!2184 = !DILocation(line: 1326, column: 24, scope: !2147)
!2185 = !DILocation(line: 1326, column: 58, scope: !2147)
!2186 = !DILocation(line: 1326, column: 13, scope: !2147)
!2187 = !DILocation(line: 1327, column: 14, scope: !2150)
!2188 = !DILocation(line: 1327, column: 22, scope: !2150)
!2189 = !DILocation(line: 1327, column: 19, scope: !2150)
!2190 = !DILocation(line: 1332, column: 18, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 1332, column: 17)
!2192 = !DILocation(line: 1332, column: 17, scope: !2149)
!2193 = !DILocation(line: 1333, column: 28, scope: !2149)
!2194 = !DILocation(line: 1333, column: 23, scope: !2149)
!2195 = !DILocation(line: 1335, column: 27, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 1334, column: 17)
!2197 = !DILocation(line: 1335, column: 17, scope: !2196)
!2198 = !DILocation(line: 1334, column: 18, scope: !2196)
!2199 = !DILocation(line: 1334, column: 17, scope: !2149)
!2200 = !DILocation(line: 1336, column: 13, scope: !2149)
!2201 = !DILocation(line: 1339, column: 21, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 1339, column: 17)
!2203 = !DILocation(line: 1339, column: 17, scope: !2202)
!2204 = !DILocation(line: 1339, column: 29, scope: !2202)
!2205 = !DILocation(line: 1339, column: 32, scope: !2202)
!2206 = !DILocation(line: 1339, column: 17, scope: !2149)
!2207 = !DILocation(line: 1340, column: 17, scope: !2202)
!2208 = !DILocation(line: 1344, column: 21, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 1344, column: 17)
!2210 = !DILocation(line: 1344, column: 27, scope: !2209)
!2211 = !DILocation(line: 1344, column: 17, scope: !2209)
!2212 = !DILocation(line: 1344, column: 17, scope: !2149)
!2213 = !DILocation(line: 237, column: 27, scope: !189, inlinedAt: !2214)
!2214 = distinct !DILocation(line: 1345, column: 28, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 1344, column: 34)
!2216 = !DILocation(line: 238, column: 12, scope: !198, inlinedAt: !2214)
!2217 = !DILocation(line: 238, column: 9, scope: !198, inlinedAt: !2214)
!2218 = !DILocation(line: 238, column: 9, scope: !189, inlinedAt: !2214)
!2219 = !DILocation(line: 239, column: 28, scope: !189, inlinedAt: !2214)
!2220 = !DILocation(line: 239, column: 37, scope: !189, inlinedAt: !2214)
!2221 = !DILocation(line: 239, column: 36, scope: !189, inlinedAt: !2214)
!2222 = !DILocation(line: 239, column: 60, scope: !189, inlinedAt: !2214)
!2223 = !DILocation(line: 239, column: 12, scope: !189, inlinedAt: !2214)
!2224 = !DILocation(line: 240, column: 5, scope: !189, inlinedAt: !2214)
!2225 = !DILocation(line: 241, column: 5, scope: !189, inlinedAt: !2214)
!2226 = !DILocation(line: 242, column: 12, scope: !189, inlinedAt: !2214)
!2227 = !DILocation(line: 240, column: 11, scope: !189, inlinedAt: !2214)
!2228 = !DILocation(line: 243, column: 1, scope: !189, inlinedAt: !2214)
!2229 = !DILocation(line: 0, scope: !189, inlinedAt: !2214)
!2230 = !DILocation(line: 1345, column: 26, scope: !2215)
!2231 = !DILocation(line: 1346, column: 17, scope: !2215)
!2232 = !DILocation(line: 1348, column: 9, scope: !2150)
!2233 = !DILocation(line: 1354, column: 21, scope: !2152)
!2234 = !DILocation(line: 1357, column: 22, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 1357, column: 21)
!2236 = !DILocation(line: 1357, column: 27, scope: !2235)
!2237 = !DILocation(line: 1357, column: 34, scope: !2235)
!2238 = !DILocation(line: 1357, column: 46, scope: !2235)
!2239 = !DILocation(line: 1357, column: 50, scope: !2235)
!2240 = !DILocation(line: 1357, column: 39, scope: !2235)
!2241 = !DILocation(line: 1357, column: 21, scope: !2152)
!2242 = !DILocation(line: 1358, column: 31, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 1357, column: 56)
!2244 = !DILocation(line: 1359, column: 37, scope: !2243)
!2245 = !DILocation(line: 1360, column: 33, scope: !2243)
!2246 = !DILocation(line: 1361, column: 30, scope: !2243)
!2247 = !DILocation(line: 1366, column: 47, scope: !2152)
!2248 = !DILocation(line: 1366, column: 55, scope: !2152)
!2249 = !DILocation(line: 1366, column: 62, scope: !2152)
!2250 = !DILocation(line: 1366, column: 43, scope: !2152)
!2251 = !DILocation(line: 1366, column: 31, scope: !2152)
!2252 = !DILocation(line: 1367, column: 21, scope: !2152)
!2253 = !DILocation(line: 129, column: 43, scope: !1430, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 1368, column: 32, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1367, column: 28)
!2256 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 1367, column: 21)
!2257 = !DILocation(line: 130, column: 13, scope: !1437, inlinedAt: !2254)
!2258 = !DILocation(line: 130, column: 19, scope: !1437, inlinedAt: !2254)
!2259 = !DILocation(line: 130, column: 9, scope: !1430, inlinedAt: !2254)
!2260 = !DILocation(line: 131, column: 14, scope: !1430, inlinedAt: !2254)
!2261 = !DILocation(line: 132, column: 16, scope: !1430, inlinedAt: !2254)
!2262 = !DILocation(line: 132, column: 12, scope: !1430, inlinedAt: !2254)
!2263 = !DILocation(line: 132, column: 5, scope: !1430, inlinedAt: !2254)
!2264 = !DILocation(line: 0, scope: !1430, inlinedAt: !2254)
!2265 = !DILocation(line: 0, scope: !2255)
!2266 = !DILocation(line: 133, column: 1, scope: !1430, inlinedAt: !2254)
!2267 = !DILocation(line: 1368, column: 30, scope: !2255)
!2268 = !DILocation(line: 1369, column: 17, scope: !2255)
!2269 = !DILocation(line: 1374, column: 33, scope: !2152)
!2270 = !DILocation(line: 1374, column: 39, scope: !2152)
!2271 = !DILocation(line: 1374, column: 29, scope: !2152)
!2272 = !DILocation(line: 1374, column: 59, scope: !2152)
!2273 = !DILocation(line: 1374, column: 21, scope: !2152)
!2274 = !DILocation(line: 1375, column: 40, scope: !2152)
!2275 = !DILocation(line: 1293, column: 39, scope: !2126, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 1375, column: 17, scope: !2152)
!2277 = !DILocation(line: 1293, column: 50, scope: !2126, inlinedAt: !2276)
!2278 = !DILocation(line: 1294, column: 17, scope: !2126, inlinedAt: !2276)
!2279 = !DILocation(line: 1295, column: 1, scope: !2126, inlinedAt: !2276)
!2280 = !DILocation(line: 1379, column: 32, scope: !2158)
!2281 = !DILocation(line: 1379, column: 22, scope: !2158)
!2282 = !DILocation(line: 1379, column: 40, scope: !2158)
!2283 = !DILocation(line: 1379, column: 53, scope: !2158)
!2284 = !DILocation(line: 1379, column: 61, scope: !2158)
!2285 = !DILocation(line: 1379, column: 58, scope: !2158)
!2286 = !DILocation(line: 1379, column: 21, scope: !2152)
!2287 = !DILocation(line: 1380, column: 36, scope: !2157)
!2288 = !DILocation(line: 1380, column: 31, scope: !2157)
!2289 = !DILocation(line: 1381, column: 25, scope: !2157)
!2290 = !DILocation(line: 1382, column: 21, scope: !2157)
!2291 = !DILocation(line: 1384, column: 29, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 1384, column: 29)
!2293 = distinct !DILexicalBlock(scope: !2157, file: !3, line: 1382, column: 48)
!2294 = !DILocation(line: 1384, column: 47, scope: !2292)
!2295 = !DILocation(line: 1384, column: 29, scope: !2293)
!2296 = !DILocation(line: 1385, column: 26, scope: !2293)
!2297 = !DILocation(line: 1386, column: 27, scope: !2293)
!2298 = !DILocation(line: 1382, column: 30, scope: !2157)
!2299 = distinct !{!2299, !2290, !2300}
!2300 = !DILocation(line: 1387, column: 21, scope: !2157)
!2301 = !DILocation(line: 1388, column: 27, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2157, file: !3, line: 1388, column: 25)
!2303 = !DILocation(line: 0, scope: !2293)
!2304 = !DILocation(line: 1388, column: 25, scope: !2157)
!2305 = !DILocation(line: 1390, column: 62, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 1388, column: 46)
!2307 = !DILocation(line: 1390, column: 25, scope: !2306)
!2308 = !DILocation(line: 1391, column: 58, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 1391, column: 29)
!2310 = !DILocation(line: 1391, column: 30, scope: !2309)
!2311 = !DILocation(line: 1391, column: 29, scope: !2306)
!2312 = !DILocation(line: 1392, column: 42, scope: !2306)
!2313 = !DILocation(line: 1392, column: 25, scope: !2306)
!2314 = !DILocation(line: 1395, column: 33, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 1395, column: 29)
!2316 = !DILocation(line: 1395, column: 29, scope: !2315)
!2317 = !DILocation(line: 1395, column: 41, scope: !2315)
!2318 = !DILocation(line: 1395, column: 44, scope: !2315)
!2319 = !DILocation(line: 1395, column: 29, scope: !2306)
!2320 = !DILocation(line: 1396, column: 29, scope: !2315)
!2321 = !DILocation(line: 1397, column: 33, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 1397, column: 29)
!2323 = !DILocation(line: 1397, column: 39, scope: !2322)
!2324 = !DILocation(line: 1397, column: 29, scope: !2322)
!2325 = !DILocation(line: 1397, column: 29, scope: !2306)
!2326 = !DILocation(line: 237, column: 27, scope: !189, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 1398, column: 40, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 1397, column: 46)
!2329 = !DILocation(line: 238, column: 12, scope: !198, inlinedAt: !2327)
!2330 = !DILocation(line: 238, column: 9, scope: !198, inlinedAt: !2327)
!2331 = !DILocation(line: 238, column: 9, scope: !189, inlinedAt: !2327)
!2332 = !DILocation(line: 239, column: 37, scope: !189, inlinedAt: !2327)
!2333 = !DILocation(line: 239, column: 36, scope: !189, inlinedAt: !2327)
!2334 = !DILocation(line: 239, column: 60, scope: !189, inlinedAt: !2327)
!2335 = !DILocation(line: 239, column: 12, scope: !189, inlinedAt: !2327)
!2336 = !DILocation(line: 240, column: 5, scope: !189, inlinedAt: !2327)
!2337 = !DILocation(line: 241, column: 5, scope: !189, inlinedAt: !2327)
!2338 = !DILocation(line: 242, column: 12, scope: !189, inlinedAt: !2327)
!2339 = !DILocation(line: 240, column: 11, scope: !189, inlinedAt: !2327)
!2340 = !DILocation(line: 243, column: 1, scope: !189, inlinedAt: !2327)
!2341 = !DILocation(line: 0, scope: !189, inlinedAt: !2327)
!2342 = !DILocation(line: 1398, column: 38, scope: !2328)
!2343 = !DILocation(line: 1399, column: 29, scope: !2328)
!2344 = !DILocation(line: 0, scope: !2309)
!2345 = !DILocation(line: 1403, column: 17, scope: !2158)
!2346 = distinct !{!2346, !2347, !2348}
!2347 = !DILocation(line: 1353, column: 13, scope: !2153)
!2348 = !DILocation(line: 1404, column: 13, scope: !2153)
!2349 = !DILocation(line: 1406, column: 5, scope: !2137)
!2350 = !DILocation(line: 0, scope: !2243)
!2351 = !DILocation(line: 0, scope: !2215)
!2352 = !DILocation(line: 1407, column: 1, scope: !2137)
!2353 = distinct !DISubprogram(name: "raxStackPush", scope: !3, file: !3, line: 100, type: !2354, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2356)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!31, !1155, !6}
!2356 = !{!2357, !2358, !2359}
!2357 = !DILocalVariable(name: "ts", arg: 1, scope: !2353, file: !3, line: 100, type: !1155)
!2358 = !DILocalVariable(name: "ptr", arg: 2, scope: !2353, file: !3, line: 100, type: !6)
!2359 = !DILocalVariable(name: "newalloc", scope: !2360, file: !3, line: 112, type: !7)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 111, column: 16)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 102, column: 13)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 101, column: 36)
!2363 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 101, column: 9)
!2364 = !DILocation(line: 100, column: 42, scope: !2353)
!2365 = !DILocation(line: 100, column: 52, scope: !2353)
!2366 = !DILocation(line: 101, column: 13, scope: !2363)
!2367 = !DILocation(line: 101, column: 26, scope: !2363)
!2368 = !{!1354, !112, i64 16}
!2369 = !DILocation(line: 101, column: 19, scope: !2363)
!2370 = !DILocation(line: 101, column: 9, scope: !2353)
!2371 = !DILocation(line: 0, scope: !2353)
!2372 = !DILocation(line: 102, column: 17, scope: !2361)
!2373 = !DILocation(line: 102, column: 26, scope: !2361)
!2374 = !DILocation(line: 102, column: 23, scope: !2361)
!2375 = !DILocation(line: 102, column: 13, scope: !2362)
!2376 = !DILocation(line: 103, column: 62, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 102, column: 44)
!2378 = !DILocation(line: 103, column: 25, scope: !2377)
!2379 = !DILocation(line: 103, column: 23, scope: !2377)
!2380 = !DILocation(line: 104, column: 27, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 104, column: 17)
!2382 = !DILocation(line: 104, column: 17, scope: !2377)
!2383 = !DILocation(line: 105, column: 27, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 104, column: 36)
!2385 = !DILocation(line: 106, column: 21, scope: !2384)
!2386 = !DILocation(line: 106, column: 25, scope: !2384)
!2387 = !DILocation(line: 107, column: 17, scope: !2384)
!2388 = !DILocation(line: 107, column: 23, scope: !2384)
!2389 = !DILocation(line: 108, column: 17, scope: !2384)
!2390 = !DILocation(line: 110, column: 30, scope: !2377)
!2391 = !DILocation(line: 110, column: 65, scope: !2377)
!2392 = !DILocation(line: 110, column: 60, scope: !2377)
!2393 = !DILocation(line: 110, column: 13, scope: !2377)
!2394 = !DILocation(line: 111, column: 9, scope: !2377)
!2395 = !DILocation(line: 112, column: 43, scope: !2360)
!2396 = !DILocation(line: 112, column: 79, scope: !2360)
!2397 = !DILocation(line: 112, column: 31, scope: !2360)
!2398 = !DILocation(line: 113, column: 26, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 113, column: 17)
!2400 = !DILocation(line: 113, column: 17, scope: !2360)
!2401 = !DILocation(line: 114, column: 21, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 113, column: 35)
!2403 = !DILocation(line: 114, column: 25, scope: !2402)
!2404 = !DILocation(line: 115, column: 17, scope: !2402)
!2405 = !DILocation(line: 115, column: 23, scope: !2402)
!2406 = !DILocation(line: 116, column: 17, scope: !2402)
!2407 = !DILocation(line: 112, column: 20, scope: !2360)
!2408 = !DILocation(line: 118, column: 23, scope: !2360)
!2409 = !DILocation(line: 119, column: 9, scope: !2361)
!2410 = !DILocation(line: 120, column: 22, scope: !2362)
!2411 = !DILocation(line: 121, column: 5, scope: !2362)
!2412 = !DILocation(line: 122, column: 19, scope: !2353)
!2413 = !DILocation(line: 122, column: 9, scope: !2353)
!2414 = !DILocation(line: 122, column: 5, scope: !2353)
!2415 = !DILocation(line: 122, column: 26, scope: !2353)
!2416 = !DILocation(line: 123, column: 14, scope: !2353)
!2417 = !DILocation(line: 124, column: 5, scope: !2353)
!2418 = !DILocation(line: 0, scope: !2402)
!2419 = !DILocation(line: 125, column: 1, scope: !2353)
!2420 = distinct !DISubprogram(name: "raxSeekGreatest", scope: !3, file: !3, line: 1412, type: !2421, isLocal: false, isDefinition: true, scopeLine: 1412, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2423)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!31, !2015}
!2423 = !{!2424, !2425}
!2424 = !DILocalVariable(name: "it", arg: 1, scope: !2420, file: !3, line: 1412, type: !2015)
!2425 = !DILocalVariable(name: "cp", scope: !2426, file: !3, line: 1421, type: !12)
!2426 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 1413, column: 27)
!2427 = !DILocation(line: 1412, column: 34, scope: !2420)
!2428 = !DILocation(line: 1413, column: 5, scope: !2420)
!2429 = !DILocation(line: 1413, column: 15, scope: !2420)
!2430 = !DILocation(line: 1413, column: 21, scope: !2420)
!2431 = !DILocation(line: 1414, column: 23, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 1414, column: 13)
!2433 = !DILocation(line: 1414, column: 13, scope: !2432)
!2434 = !DILocation(line: 1414, column: 13, scope: !2426)
!2435 = !DILocation(line: 0, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 1418, column: 17)
!2437 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 1417, column: 16)
!2438 = !DILocation(line: 1416, column: 17, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1415, column: 17)
!2440 = distinct !DILexicalBlock(scope: !2432, file: !3, line: 1414, column: 32)
!2441 = !DILocation(line: 1415, column: 18, scope: !2439)
!2442 = !DILocation(line: 1415, column: 17, scope: !2440)
!2443 = !DILocation(line: 1418, column: 55, scope: !2436)
!2444 = !DILocation(line: 1418, column: 70, scope: !2436)
!2445 = !DILocation(line: 1418, column: 18, scope: !2436)
!2446 = !DILocation(line: 1418, column: 17, scope: !2437)
!2447 = !DILocation(line: 1421, column: 24, scope: !2426)
!2448 = !DILocation(line: 0, scope: !2426)
!2449 = !DILocation(line: 1422, column: 14, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2426, file: !3, line: 1422, column: 13)
!2451 = !DILocation(line: 1422, column: 13, scope: !2426)
!2452 = !DILocation(line: 1422, column: 49, scope: !2450)
!2453 = !DILocation(line: 1421, column: 19, scope: !2426)
!2454 = !DILocation(line: 1423, column: 9, scope: !2426)
!2455 = !DILocation(line: 1424, column: 5, scope: !2420)
!2456 = !DILocation(line: 1426, column: 1, scope: !2420)
!2457 = distinct !DISubprogram(name: "raxIteratorPrevStep", scope: !3, file: !3, line: 1431, type: !2138, isLocal: false, isDefinition: true, scopeLine: 1431, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2458)
!2458 = !{!2459, !2460, !2461, !2462, !2463, !2464, !2466, !2467, !2468, !2471}
!2459 = !DILocalVariable(name: "it", arg: 1, scope: !2457, file: !3, line: 1431, type: !2015)
!2460 = !DILocalVariable(name: "noup", arg: 2, scope: !2457, file: !3, line: 1431, type: !31)
!2461 = !DILocalVariable(name: "orig_key_len", scope: !2457, file: !3, line: 1441, type: !56)
!2462 = !DILocalVariable(name: "orig_stack_items", scope: !2457, file: !3, line: 1442, type: !56)
!2463 = !DILocalVariable(name: "orig_node", scope: !2457, file: !3, line: 1443, type: !13)
!2464 = !DILocalVariable(name: "old_noup", scope: !2465, file: !3, line: 1446, type: !31)
!2465 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 1445, column: 14)
!2466 = !DILocalVariable(name: "prevchild", scope: !2465, file: !3, line: 1457, type: !11)
!2467 = !DILocalVariable(name: "todel", scope: !2465, file: !3, line: 1466, type: !31)
!2468 = !DILocalVariable(name: "cp", scope: !2469, file: !3, line: 1472, type: !12)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 1471, column: 72)
!2470 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 1471, column: 13)
!2471 = !DILocalVariable(name: "i", scope: !2469, file: !3, line: 1473, type: !31)
!2472 = !DILocation(line: 1431, column: 38, scope: !2457)
!2473 = !DILocation(line: 1431, column: 46, scope: !2457)
!2474 = !DILocation(line: 1432, column: 13, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 1432, column: 9)
!2476 = !DILocation(line: 1432, column: 19, scope: !2475)
!2477 = !DILocation(line: 1432, column: 9, scope: !2457)
!2478 = !DILocation(line: 1434, column: 26, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 1434, column: 16)
!2480 = !DILocation(line: 1434, column: 16, scope: !2475)
!2481 = !DILocation(line: 1435, column: 19, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 1434, column: 50)
!2483 = !DILocation(line: 1436, column: 9, scope: !2482)
!2484 = !DILocation(line: 1441, column: 31, scope: !2457)
!2485 = !DILocation(line: 1441, column: 12, scope: !2457)
!2486 = !DILocation(line: 1442, column: 35, scope: !2457)
!2487 = !DILocation(line: 1442, column: 41, scope: !2457)
!2488 = !DILocation(line: 1442, column: 12, scope: !2457)
!2489 = !DILocation(line: 1443, column: 30, scope: !2457)
!2490 = !DILocation(line: 1443, column: 14, scope: !2457)
!2491 = !DILocation(line: 1445, column: 5, scope: !2457)
!2492 = !DILocation(line: 1449, column: 19, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 1449, column: 13)
!2494 = !DILocation(line: 1449, column: 38, scope: !2493)
!2495 = !DILocation(line: 1449, column: 42, scope: !2493)
!2496 = !DILocation(line: 1449, column: 31, scope: !2493)
!2497 = !DILocation(line: 1449, column: 13, scope: !2465)
!2498 = !DILocation(line: 1450, column: 23, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 1449, column: 48)
!2500 = !DILocation(line: 1451, column: 29, scope: !2499)
!2501 = !DILocation(line: 1452, column: 25, scope: !2499)
!2502 = !DILocation(line: 1453, column: 22, scope: !2499)
!2503 = !DILocation(line: 1457, column: 39, scope: !2465)
!2504 = !DILocation(line: 1457, column: 47, scope: !2465)
!2505 = !DILocation(line: 1457, column: 54, scope: !2465)
!2506 = !DILocation(line: 1457, column: 35, scope: !2465)
!2507 = !DILocation(line: 1457, column: 23, scope: !2465)
!2508 = !DILocation(line: 1458, column: 13, scope: !2465)
!2509 = !DILocation(line: 129, column: 43, scope: !1430, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 1459, column: 24, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 1458, column: 20)
!2512 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 1458, column: 13)
!2513 = !DILocation(line: 130, column: 13, scope: !1437, inlinedAt: !2510)
!2514 = !DILocation(line: 130, column: 19, scope: !1437, inlinedAt: !2510)
!2515 = !DILocation(line: 130, column: 9, scope: !1430, inlinedAt: !2510)
!2516 = !DILocation(line: 131, column: 14, scope: !1430, inlinedAt: !2510)
!2517 = !DILocation(line: 132, column: 16, scope: !1430, inlinedAt: !2510)
!2518 = !DILocation(line: 132, column: 12, scope: !1430, inlinedAt: !2510)
!2519 = !DILocation(line: 132, column: 5, scope: !1430, inlinedAt: !2510)
!2520 = !DILocation(line: 0, scope: !1430, inlinedAt: !2510)
!2521 = !DILocation(line: 0, scope: !2511)
!2522 = !DILocation(line: 133, column: 1, scope: !1430, inlinedAt: !2510)
!2523 = !DILocation(line: 1459, column: 22, scope: !2511)
!2524 = !DILocation(line: 1460, column: 9, scope: !2511)
!2525 = !DILocation(line: 1466, column: 25, scope: !2465)
!2526 = !DILocation(line: 1466, column: 31, scope: !2465)
!2527 = !DILocation(line: 1466, column: 21, scope: !2465)
!2528 = !DILocation(line: 1466, column: 51, scope: !2465)
!2529 = !DILocation(line: 1466, column: 13, scope: !2465)
!2530 = !DILocation(line: 1467, column: 32, scope: !2465)
!2531 = !DILocation(line: 1293, column: 39, scope: !2126, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 1467, column: 9, scope: !2465)
!2533 = !DILocation(line: 1293, column: 50, scope: !2126, inlinedAt: !2532)
!2534 = !DILocation(line: 1294, column: 17, scope: !2126, inlinedAt: !2532)
!2535 = !DILocation(line: 1295, column: 1, scope: !2126, inlinedAt: !2532)
!2536 = !DILocation(line: 1471, column: 24, scope: !2470)
!2537 = !DILocation(line: 1471, column: 14, scope: !2470)
!2538 = !DILocation(line: 1471, column: 32, scope: !2470)
!2539 = !DILocation(line: 1471, column: 45, scope: !2470)
!2540 = !DILocation(line: 1471, column: 53, scope: !2470)
!2541 = !DILocation(line: 1471, column: 50, scope: !2470)
!2542 = !DILocation(line: 1471, column: 13, scope: !2465)
!2543 = !DILocation(line: 1472, column: 28, scope: !2469)
!2544 = !DILocation(line: 1473, column: 17, scope: !2469)
!2545 = !DILocation(line: 1474, column: 13, scope: !2469)
!2546 = !DILocation(line: 1474, column: 22, scope: !2469)
!2547 = !DILocation(line: 1472, column: 23, scope: !2469)
!2548 = !DILocation(line: 1483, column: 17, scope: !2469)
!2549 = !DILocation(line: 1476, column: 21, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 1476, column: 21)
!2551 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 1474, column: 28)
!2552 = !DILocation(line: 1476, column: 39, scope: !2550)
!2553 = !DILocation(line: 1476, column: 21, scope: !2551)
!2554 = !DILocation(line: 1478, column: 19, scope: !2551)
!2555 = !DILocation(line: 0, scope: !2551)
!2556 = distinct !{!2556, !2545, !2557}
!2557 = !DILocation(line: 1479, column: 13, scope: !2469)
!2558 = !DILocation(line: 1483, column: 19, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 1483, column: 17)
!2560 = !DILocation(line: 1486, column: 59, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 1486, column: 21)
!2562 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 1483, column: 26)
!2563 = !DILocation(line: 1486, column: 22, scope: !2561)
!2564 = !DILocation(line: 1486, column: 21, scope: !2562)
!2565 = !DILocation(line: 1487, column: 50, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 1487, column: 21)
!2567 = !DILocation(line: 1487, column: 22, scope: !2566)
!2568 = !DILocation(line: 1487, column: 21, scope: !2562)
!2569 = !DILocation(line: 1488, column: 34, scope: !2562)
!2570 = !DILocation(line: 1488, column: 17, scope: !2562)
!2571 = !DILocation(line: 1490, column: 22, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 1490, column: 21)
!2573 = !DILocation(line: 1490, column: 21, scope: !2562)
!2574 = !DILocation(line: 1497, column: 17, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 1497, column: 13)
!2576 = !DILocation(line: 0, scope: !2561)
!2577 = !DILocation(line: 1492, column: 9, scope: !2470)
!2578 = !DILocation(line: 1497, column: 23, scope: !2575)
!2579 = !DILocation(line: 1497, column: 13, scope: !2575)
!2580 = !DILocation(line: 1497, column: 13, scope: !2465)
!2581 = !DILocation(line: 237, column: 27, scope: !189, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 1498, column: 24, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 1497, column: 30)
!2584 = !DILocation(line: 238, column: 12, scope: !198, inlinedAt: !2582)
!2585 = !DILocation(line: 238, column: 9, scope: !198, inlinedAt: !2582)
!2586 = !DILocation(line: 238, column: 9, scope: !189, inlinedAt: !2582)
!2587 = !DILocation(line: 239, column: 28, scope: !189, inlinedAt: !2582)
!2588 = !DILocation(line: 239, column: 37, scope: !189, inlinedAt: !2582)
!2589 = !DILocation(line: 239, column: 36, scope: !189, inlinedAt: !2582)
!2590 = !DILocation(line: 239, column: 60, scope: !189, inlinedAt: !2582)
!2591 = !DILocation(line: 239, column: 12, scope: !189, inlinedAt: !2582)
!2592 = !DILocation(line: 240, column: 5, scope: !189, inlinedAt: !2582)
!2593 = !DILocation(line: 241, column: 5, scope: !189, inlinedAt: !2582)
!2594 = !DILocation(line: 242, column: 12, scope: !189, inlinedAt: !2582)
!2595 = !DILocation(line: 240, column: 11, scope: !189, inlinedAt: !2582)
!2596 = !DILocation(line: 243, column: 1, scope: !189, inlinedAt: !2582)
!2597 = !DILocation(line: 0, scope: !189, inlinedAt: !2582)
!2598 = !DILocation(line: 1498, column: 17, scope: !2583)
!2599 = !DILocation(line: 1498, column: 22, scope: !2583)
!2600 = !DILocation(line: 1499, column: 13, scope: !2583)
!2601 = !DILocation(line: 1501, column: 5, scope: !2457)
!2602 = !DILocation(line: 0, scope: !2583)
!2603 = !DILocation(line: 1502, column: 1, scope: !2457)
!2604 = distinct !DISubprogram(name: "raxSeek", scope: !3, file: !3, line: 1508, type: !2605, isLocal: false, isDefinition: true, scopeLine: 1508, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2609)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!31, !2015, !2607, !10, !56}
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!2609 = !{!2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2626, !2629, !2630, !2633, !2634, !2636, !2640}
!2610 = !DILocalVariable(name: "it", arg: 1, scope: !2604, file: !3, line: 1508, type: !2015)
!2611 = !DILocalVariable(name: "op", arg: 2, scope: !2604, file: !3, line: 1508, type: !2607)
!2612 = !DILocalVariable(name: "ele", arg: 3, scope: !2604, file: !3, line: 1508, type: !10)
!2613 = !DILocalVariable(name: "len", arg: 4, scope: !2604, file: !3, line: 1508, type: !56)
!2614 = !DILocalVariable(name: "eq", scope: !2604, file: !3, line: 1509, type: !31)
!2615 = !DILocalVariable(name: "lt", scope: !2604, file: !3, line: 1509, type: !31)
!2616 = !DILocalVariable(name: "gt", scope: !2604, file: !3, line: 1509, type: !31)
!2617 = !DILocalVariable(name: "first", scope: !2604, file: !3, line: 1509, type: !31)
!2618 = !DILocalVariable(name: "last", scope: !2604, file: !3, line: 1509, type: !31)
!2619 = !DILocalVariable(name: "splitpos", scope: !2604, file: !3, line: 1561, type: !31)
!2620 = !DILocalVariable(name: "i", scope: !2604, file: !3, line: 1562, type: !56)
!2621 = !DILocalVariable(name: "j", scope: !2622, file: !3, line: 1581, type: !56)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 1581, column: 9)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 1574, column: 26)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 1574, column: 16)
!2625 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 1567, column: 9)
!2626 = !DILocalVariable(name: "parent", scope: !2627, file: !3, line: 1582, type: !13)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 1581, column: 54)
!2628 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 1581, column: 9)
!2629 = !DILocalVariable(name: "child", scope: !2627, file: !3, line: 1583, type: !13)
!2630 = !DILocalVariable(name: "cp", scope: !2631, file: !3, line: 1588, type: !12)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 1587, column: 20)
!2632 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 1584, column: 17)
!2633 = !DILocalVariable(name: "p", scope: !2631, file: !3, line: 1589, type: !10)
!2634 = !DILocalVariable(name: "aux", scope: !2635, file: !3, line: 1591, type: !13)
!2635 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 1590, column: 26)
!2636 = !DILocalVariable(name: "nodechar", scope: !2637, file: !3, line: 1624, type: !31)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 1620, column: 51)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 1620, column: 20)
!2639 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 1606, column: 13)
!2640 = !DILocalVariable(name: "keychar", scope: !2637, file: !3, line: 1625, type: !31)
!2641 = !DILocation(line: 1508, column: 26, scope: !2604)
!2642 = !DILocation(line: 1508, column: 42, scope: !2604)
!2643 = !DILocation(line: 1508, column: 61, scope: !2604)
!2644 = !DILocation(line: 1508, column: 73, scope: !2604)
!2645 = !DILocation(line: 1509, column: 9, scope: !2604)
!2646 = !DILocation(line: 1509, column: 17, scope: !2604)
!2647 = !DILocation(line: 1509, column: 25, scope: !2604)
!2648 = !DILocation(line: 1509, column: 33, scope: !2604)
!2649 = !DILocation(line: 1509, column: 44, scope: !2604)
!2650 = !DILocation(line: 1511, column: 9, scope: !2604)
!2651 = !DILocation(line: 1511, column: 15, scope: !2604)
!2652 = !DILocation(line: 1511, column: 21, scope: !2604)
!2653 = !DILocation(line: 1512, column: 9, scope: !2604)
!2654 = !DILocation(line: 1512, column: 15, scope: !2604)
!2655 = !DILocation(line: 1513, column: 15, scope: !2604)
!2656 = !DILocation(line: 1514, column: 9, scope: !2604)
!2657 = !DILocation(line: 1514, column: 17, scope: !2604)
!2658 = !DILocation(line: 1515, column: 9, scope: !2604)
!2659 = !DILocation(line: 1515, column: 14, scope: !2604)
!2660 = !DILocation(line: 1518, column: 9, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 1518, column: 9)
!2662 = !DILocation(line: 1518, column: 15, scope: !2661)
!2663 = !DILocation(line: 1518, column: 9, scope: !2604)
!2664 = !DILocation(line: 1520, column: 13, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 1520, column: 13)
!2666 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 1518, column: 23)
!2667 = !DILocation(line: 1520, column: 19, scope: !2665)
!2668 = !DILocation(line: 1520, column: 13, scope: !2666)
!2669 = !DILocation(line: 1520, column: 27, scope: !2665)
!2670 = !DILocation(line: 1521, column: 22, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 1521, column: 16)
!2672 = !DILocation(line: 1521, column: 16, scope: !2661)
!2673 = !DILocation(line: 1523, column: 13, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 1523, column: 13)
!2675 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1521, column: 30)
!2676 = !DILocation(line: 1523, column: 19, scope: !2674)
!2677 = !DILocation(line: 1523, column: 13, scope: !2675)
!2678 = !DILocation(line: 1523, column: 27, scope: !2674)
!2679 = !DILocation(line: 1524, column: 22, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1524, column: 16)
!2681 = !DILocation(line: 1524, column: 16, scope: !2671)
!2682 = !DILocation(line: 1526, column: 5, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 1524, column: 30)
!2684 = !DILocation(line: 1526, column: 22, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 1526, column: 16)
!2686 = !DILocation(line: 1526, column: 16, scope: !2680)
!2687 = !DILocation(line: 1528, column: 5, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 1526, column: 30)
!2689 = !DILocation(line: 1528, column: 22, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 1528, column: 16)
!2691 = !DILocation(line: 1528, column: 16, scope: !2685)
!2692 = !DILocation(line: 1531, column: 9, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2690, file: !3, line: 1530, column: 12)
!2694 = !DILocation(line: 1531, column: 15, scope: !2693)
!2695 = !DILocation(line: 1532, column: 9, scope: !2693)
!2696 = !DILocation(line: 0, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2690, file: !3, line: 1528, column: 30)
!2698 = !DILocation(line: 0, scope: !2604)
!2699 = !DILocation(line: 1537, column: 13, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 1537, column: 9)
!2701 = !DILocation(line: 1537, column: 17, scope: !2700)
!2702 = !DILocation(line: 1537, column: 24, scope: !2700)
!2703 = !DILocation(line: 1537, column: 9, scope: !2604)
!2704 = !DILocation(line: 1538, column: 19, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 1537, column: 30)
!2706 = !DILocation(line: 1539, column: 9, scope: !2705)
!2707 = !DILocation(line: 1542, column: 9, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 1542, column: 9)
!2709 = !DILocation(line: 1542, column: 9, scope: !2604)
!2710 = !DILocation(line: 1545, column: 16, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 1542, column: 16)
!2712 = !DILocation(line: 1545, column: 9, scope: !2711)
!2713 = !DILocation(line: 1548, column: 9, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 1548, column: 9)
!2715 = !DILocation(line: 1548, column: 9, scope: !2604)
!2716 = !DILocation(line: 1551, column: 28, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2714, file: !3, line: 1548, column: 15)
!2718 = !DILocation(line: 1551, column: 18, scope: !2717)
!2719 = !DILocation(line: 1552, column: 14, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 1552, column: 13)
!2721 = !DILocation(line: 1552, column: 13, scope: !2717)
!2722 = !DILocation(line: 1553, column: 9, scope: !2717)
!2723 = !DILocation(line: 237, column: 27, scope: !189, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 1554, column: 20, scope: !2717)
!2725 = !DILocation(line: 238, column: 12, scope: !198, inlinedAt: !2724)
!2726 = !DILocation(line: 238, column: 9, scope: !198, inlinedAt: !2724)
!2727 = !DILocation(line: 238, column: 9, scope: !189, inlinedAt: !2724)
!2728 = !DILocation(line: 239, column: 28, scope: !189, inlinedAt: !2724)
!2729 = !DILocation(line: 239, column: 37, scope: !189, inlinedAt: !2724)
!2730 = !DILocation(line: 239, column: 36, scope: !189, inlinedAt: !2724)
!2731 = !DILocation(line: 239, column: 60, scope: !189, inlinedAt: !2724)
!2732 = !DILocation(line: 239, column: 12, scope: !189, inlinedAt: !2724)
!2733 = !DILocation(line: 240, column: 5, scope: !189, inlinedAt: !2724)
!2734 = !DILocation(line: 241, column: 5, scope: !189, inlinedAt: !2724)
!2735 = !DILocation(line: 242, column: 12, scope: !189, inlinedAt: !2724)
!2736 = !DILocation(line: 240, column: 11, scope: !189, inlinedAt: !2724)
!2737 = !DILocation(line: 243, column: 1, scope: !189, inlinedAt: !2724)
!2738 = !DILocation(line: 0, scope: !189, inlinedAt: !2724)
!2739 = !DILocation(line: 1554, column: 13, scope: !2717)
!2740 = !DILocation(line: 1554, column: 18, scope: !2717)
!2741 = !DILocation(line: 1555, column: 9, scope: !2717)
!2742 = !DILocation(line: 1561, column: 5, scope: !2604)
!2743 = !DILocation(line: 1561, column: 9, scope: !2604)
!2744 = !DILocation(line: 1562, column: 16, scope: !2604)
!2745 = !DILocation(line: 1562, column: 12, scope: !2604)
!2746 = !DILocation(line: 1565, column: 19, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 1565, column: 9)
!2748 = !{!2044, !49, i64 464}
!2749 = !DILocation(line: 1565, column: 9, scope: !2747)
!2750 = !DILocation(line: 1565, column: 9, scope: !2604)
!2751 = !DILocation(line: 1567, column: 9, scope: !2625)
!2752 = !DILocation(line: 1567, column: 12, scope: !2625)
!2753 = !DILocation(line: 1567, column: 17, scope: !2625)
!2754 = !DILocation(line: 1567, column: 24, scope: !2625)
!2755 = !DILocation(line: 1567, column: 33, scope: !2625)
!2756 = !DILocation(line: 1567, column: 39, scope: !2625)
!2757 = !DILocation(line: 1567, column: 29, scope: !2625)
!2758 = !DILocation(line: 1567, column: 50, scope: !2625)
!2759 = !DILocation(line: 1567, column: 59, scope: !2625)
!2760 = !DILocation(line: 1567, column: 47, scope: !2625)
!2761 = !DILocation(line: 1568, column: 19, scope: !2625)
!2762 = !DILocation(line: 1568, column: 9, scope: !2625)
!2763 = !DILocation(line: 1567, column: 9, scope: !2604)
!2764 = !DILocation(line: 1572, column: 14, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 1572, column: 13)
!2766 = distinct !DILexicalBlock(scope: !2625, file: !3, line: 1569, column: 5)
!2767 = !DILocation(line: 1572, column: 13, scope: !2766)
!2768 = !DILocation(line: 1573, column: 35, scope: !2766)
!2769 = !DILocation(line: 237, column: 27, scope: !189, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 1573, column: 20, scope: !2766)
!2771 = !DILocation(line: 238, column: 12, scope: !198, inlinedAt: !2770)
!2772 = !DILocation(line: 238, column: 9, scope: !198, inlinedAt: !2770)
!2773 = !DILocation(line: 238, column: 9, scope: !189, inlinedAt: !2770)
!2774 = !DILocation(line: 239, column: 28, scope: !189, inlinedAt: !2770)
!2775 = !DILocation(line: 239, column: 37, scope: !189, inlinedAt: !2770)
!2776 = !DILocation(line: 239, column: 36, scope: !189, inlinedAt: !2770)
!2777 = !DILocation(line: 239, column: 60, scope: !189, inlinedAt: !2770)
!2778 = !DILocation(line: 239, column: 12, scope: !189, inlinedAt: !2770)
!2779 = !DILocation(line: 240, column: 5, scope: !189, inlinedAt: !2770)
!2780 = !DILocation(line: 241, column: 5, scope: !189, inlinedAt: !2770)
!2781 = !DILocation(line: 242, column: 12, scope: !189, inlinedAt: !2770)
!2782 = !DILocation(line: 240, column: 11, scope: !189, inlinedAt: !2770)
!2783 = !DILocation(line: 243, column: 1, scope: !189, inlinedAt: !2770)
!2784 = !DILocation(line: 0, scope: !189, inlinedAt: !2770)
!2785 = !DILocation(line: 1573, column: 13, scope: !2766)
!2786 = !DILocation(line: 1573, column: 18, scope: !2766)
!2787 = !DILocation(line: 1574, column: 5, scope: !2766)
!2788 = !DILocation(line: 1574, column: 16, scope: !2624)
!2789 = !DILocation(line: 1574, column: 22, scope: !2624)
!2790 = !DILocation(line: 1574, column: 19, scope: !2624)
!2791 = !DILocation(line: 1580, column: 42, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 1580, column: 13)
!2793 = !DILocation(line: 1580, column: 14, scope: !2792)
!2794 = !DILocation(line: 1580, column: 13, scope: !2623)
!2795 = !DILocation(line: 0, scope: !2622)
!2796 = !DILocation(line: 1581, column: 21, scope: !2622)
!2797 = !DILocation(line: 1581, column: 42, scope: !2628)
!2798 = !DILocation(line: 1581, column: 30, scope: !2628)
!2799 = !DILocation(line: 1581, column: 9, scope: !2622)
!2800 = !DILocation(line: 1582, column: 41, scope: !2627)
!2801 = !{!2044, !127, i64 184}
!2802 = !DILocation(line: 1582, column: 48, scope: !2627)
!2803 = !DILocation(line: 1582, column: 31, scope: !2627)
!2804 = !DILocation(line: 1582, column: 22, scope: !2627)
!2805 = !DILocation(line: 1583, column: 30, scope: !2627)
!2806 = !DILocation(line: 1583, column: 22, scope: !2627)
!2807 = !DILocation(line: 1584, column: 25, scope: !2632)
!2808 = !DILocation(line: 1584, column: 17, scope: !2632)
!2809 = !DILocation(line: 1584, column: 17, scope: !2627)
!2810 = !DILocation(line: 0, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 1585, column: 21)
!2812 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 1584, column: 34)
!2813 = !DILocation(line: 1585, column: 22, scope: !2811)
!2814 = !DILocation(line: 1585, column: 21, scope: !2812)
!2815 = !DILocation(line: 1586, column: 21, scope: !2811)
!2816 = !DILocation(line: 1588, column: 32, scope: !2631)
!2817 = !DILocation(line: 1589, column: 32, scope: !2631)
!2818 = !DILocation(line: 1590, column: 17, scope: !2631)
!2819 = !DILocation(line: 1591, column: 21, scope: !2635)
!2820 = !DILocation(line: 1592, column: 21, scope: !2635)
!2821 = !DILocation(line: 1593, column: 25, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2635, file: !3, line: 1593, column: 25)
!2823 = !DILocation(line: 1591, column: 30, scope: !2635)
!2824 = !DILocation(line: 1593, column: 29, scope: !2822)
!2825 = !DILocation(line: 1593, column: 25, scope: !2635)
!2826 = !DILocation(line: 1588, column: 27, scope: !2631)
!2827 = !DILocation(line: 1594, column: 23, scope: !2635)
!2828 = !DILocation(line: 1595, column: 22, scope: !2635)
!2829 = !DILocation(line: 1596, column: 17, scope: !2631)
!2830 = !DILocation(line: 1592, column: 33, scope: !2635)
!2831 = !DILocation(line: 1593, column: 39, scope: !2822)
!2832 = !DILocation(line: 1597, column: 22, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 1597, column: 21)
!2834 = !DILocation(line: 1597, column: 21, scope: !2631)
!2835 = !DILocation(line: 0, scope: !2632)
!2836 = !DILocation(line: 1599, column: 9, scope: !2628)
!2837 = !DILocation(line: 1581, column: 50, scope: !2628)
!2838 = !DILocation(line: 1581, column: 9, scope: !2628)
!2839 = distinct !{!2839, !2799, !2840}
!2840 = !DILocation(line: 1599, column: 9, scope: !2622)
!2841 = !DILocation(line: 130, column: 13, scope: !1437, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 1600, column: 9, scope: !2623)
!2843 = !DILocation(line: 129, column: 43, scope: !1430, inlinedAt: !2842)
!2844 = !DILocation(line: 130, column: 19, scope: !1437, inlinedAt: !2842)
!2845 = !DILocation(line: 130, column: 9, scope: !1430, inlinedAt: !2842)
!2846 = !DILocation(line: 131, column: 14, scope: !1430, inlinedAt: !2842)
!2847 = !DILocation(line: 132, column: 5, scope: !1430, inlinedAt: !2842)
!2848 = !DILocation(line: 0, scope: !2623)
!2849 = !DILocation(line: 133, column: 1, scope: !1430, inlinedAt: !2842)
!2850 = !DILocation(line: 1606, column: 15, scope: !2639)
!2851 = !DILocation(line: 1606, column: 22, scope: !2639)
!2852 = !DILocation(line: 1606, column: 30, scope: !2639)
!2853 = !DILocation(line: 1606, column: 36, scope: !2639)
!2854 = !DILocation(line: 1606, column: 26, scope: !2639)
!2855 = !DILocation(line: 1606, column: 13, scope: !2623)
!2856 = !DILocation(line: 1612, column: 44, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 1612, column: 17)
!2858 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 1606, column: 45)
!2859 = !DILocation(line: 1612, column: 18, scope: !2857)
!2860 = !DILocation(line: 1612, column: 17, scope: !2858)
!2861 = !DILocation(line: 1616, column: 23, scope: !2858)
!2862 = !DILocation(line: 1617, column: 20, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 1617, column: 17)
!2864 = !DILocation(line: 1617, column: 24, scope: !2863)
!2865 = !DILocation(line: 1617, column: 17, scope: !2858)
!2866 = !DILocation(line: 1618, column: 20, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 1618, column: 17)
!2868 = !DILocation(line: 1618, column: 24, scope: !2867)
!2869 = !DILocation(line: 1618, column: 17, scope: !2858)
!2870 = !DILocation(line: 1619, column: 23, scope: !2858)
!2871 = !DILocation(line: 1620, column: 9, scope: !2858)
!2872 = !DILocation(line: 1620, column: 29, scope: !2638)
!2873 = !DILocation(line: 1620, column: 20, scope: !2639)
!2874 = !DILocation(line: 1624, column: 43, scope: !2637)
!2875 = !DILocation(line: 1624, column: 28, scope: !2637)
!2876 = !DILocation(line: 1625, column: 27, scope: !2637)
!2877 = !DILocation(line: 1626, column: 23, scope: !2637)
!2878 = !DILocation(line: 1627, column: 17, scope: !2637)
!2879 = !DILocation(line: 1631, column: 30, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 1631, column: 21)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 1627, column: 21)
!2882 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 1627, column: 17)
!2883 = !DILocation(line: 1631, column: 21, scope: !2881)
!2884 = !DILocation(line: 1632, column: 26, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 1632, column: 25)
!2886 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1631, column: 41)
!2887 = !DILocation(line: 1632, column: 25, scope: !2886)
!2888 = !DILocation(line: 1634, column: 49, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 1634, column: 25)
!2890 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1633, column: 24)
!2891 = !DILocation(line: 1634, column: 74, scope: !2889)
!2892 = !DILocation(line: 1634, column: 64, scope: !2889)
!2893 = !DILocation(line: 1634, column: 26, scope: !2889)
!2894 = !DILocation(line: 1634, column: 25, scope: !2890)
!2895 = !DILocation(line: 1636, column: 26, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 1636, column: 25)
!2897 = !DILocation(line: 1636, column: 25, scope: !2890)
!2898 = !DILocation(line: 1639, column: 17, scope: !2637)
!2899 = !DILocation(line: 1644, column: 30, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 1644, column: 21)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 1639, column: 21)
!2902 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 1639, column: 17)
!2903 = !DILocation(line: 1644, column: 21, scope: !2901)
!2904 = !DILocation(line: 1645, column: 26, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 1645, column: 25)
!2906 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 1644, column: 41)
!2907 = !DILocation(line: 1645, column: 25, scope: !2906)
!2908 = !DILocation(line: 1646, column: 47, scope: !2906)
!2909 = !DILocation(line: 237, column: 27, scope: !189, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 1646, column: 32, scope: !2906)
!2911 = !DILocation(line: 238, column: 12, scope: !198, inlinedAt: !2910)
!2912 = !DILocation(line: 238, column: 9, scope: !198, inlinedAt: !2910)
!2913 = !DILocation(line: 238, column: 9, scope: !189, inlinedAt: !2910)
!2914 = !DILocation(line: 239, column: 28, scope: !189, inlinedAt: !2910)
!2915 = !DILocation(line: 239, column: 37, scope: !189, inlinedAt: !2910)
!2916 = !DILocation(line: 239, column: 36, scope: !189, inlinedAt: !2910)
!2917 = !DILocation(line: 239, column: 60, scope: !189, inlinedAt: !2910)
!2918 = !DILocation(line: 239, column: 12, scope: !189, inlinedAt: !2910)
!2919 = !DILocation(line: 240, column: 5, scope: !189, inlinedAt: !2910)
!2920 = !DILocation(line: 241, column: 5, scope: !189, inlinedAt: !2910)
!2921 = !DILocation(line: 242, column: 12, scope: !189, inlinedAt: !2910)
!2922 = !DILocation(line: 240, column: 11, scope: !189, inlinedAt: !2910)
!2923 = !DILocation(line: 243, column: 1, scope: !189, inlinedAt: !2910)
!2924 = !DILocation(line: 0, scope: !189, inlinedAt: !2910)
!2925 = !DILocation(line: 1646, column: 25, scope: !2906)
!2926 = !DILocation(line: 1646, column: 30, scope: !2906)
!2927 = !DILocation(line: 1647, column: 17, scope: !2906)
!2928 = !DILocation(line: 1648, column: 53, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 1648, column: 25)
!2930 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 1647, column: 24)
!2931 = !DILocation(line: 1648, column: 49, scope: !2929)
!2932 = !DILocation(line: 1648, column: 74, scope: !2929)
!2933 = !DILocation(line: 1648, column: 64, scope: !2929)
!2934 = !DILocation(line: 1648, column: 26, scope: !2929)
!2935 = !DILocation(line: 1648, column: 25, scope: !2930)
!2936 = !DILocation(line: 1650, column: 26, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 1650, column: 25)
!2938 = !DILocation(line: 1650, column: 25, scope: !2930)
!2939 = !DILocation(line: 1653, column: 23, scope: !2637)
!2940 = !DILocation(line: 1654, column: 9, scope: !2638)
!2941 = !DILocation(line: 0, scope: !2885)
!2942 = !DILocation(line: 1663, column: 21, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 1663, column: 17)
!2944 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 1654, column: 16)
!2945 = !DILocation(line: 1662, column: 23, scope: !2944)
!2946 = !DILocation(line: 1663, column: 27, scope: !2943)
!2947 = !DILocation(line: 1663, column: 17, scope: !2943)
!2948 = !DILocation(line: 1663, column: 35, scope: !2943)
!2949 = !DILocation(line: 1663, column: 48, scope: !2943)
!2950 = !DILocation(line: 1663, column: 38, scope: !2943)
!2951 = !DILocation(line: 1663, column: 57, scope: !2943)
!2952 = !DILocation(line: 1663, column: 54, scope: !2943)
!2953 = !DILocation(line: 1677, column: 24, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 1677, column: 21)
!2955 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 1676, column: 20)
!2956 = !DILocation(line: 1677, column: 28, scope: !2954)
!2957 = !DILocation(line: 1677, column: 21, scope: !2955)
!2958 = !DILocation(line: 1678, column: 24, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 1678, column: 21)
!2960 = !DILocation(line: 1678, column: 28, scope: !2959)
!2961 = !DILocation(line: 1678, column: 21, scope: !2955)
!2962 = !DILocation(line: 1680, column: 23, scope: !2944)
!2963 = !DILocation(line: 1684, column: 19, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 1682, column: 12)
!2965 = !DILocation(line: 1685, column: 9, scope: !2964)
!2966 = !DILocation(line: 1687, column: 5, scope: !2604)
!2967 = !DILocation(line: 1688, column: 1, scope: !2604)
!2968 = !DILocation(line: 0, scope: !2693)
!2969 = distinct !DISubprogram(name: "raxNext", scope: !3, file: !3, line: 1693, type: !2421, isLocal: false, isDefinition: true, scopeLine: 1693, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2970)
!2970 = !{!2971}
!2971 = !DILocalVariable(name: "it", arg: 1, scope: !2969, file: !3, line: 1693, type: !2015)
!2972 = !DILocation(line: 1693, column: 26, scope: !2969)
!2973 = !DILocation(line: 1694, column: 10, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 1694, column: 9)
!2975 = !DILocation(line: 1694, column: 9, scope: !2969)
!2976 = !DILocation(line: 1698, column: 13, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 1698, column: 9)
!2978 = !DILocation(line: 1698, column: 19, scope: !2977)
!2979 = !DILocation(line: 1698, column: 9, scope: !2969)
!2980 = !DILocation(line: 0, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 1694, column: 37)
!2982 = !DILocation(line: 1703, column: 1, scope: !2969)
!2983 = distinct !DISubprogram(name: "raxPrev", scope: !3, file: !3, line: 1708, type: !2421, isLocal: false, isDefinition: true, scopeLine: 1708, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2984)
!2984 = !{!2985}
!2985 = !DILocalVariable(name: "it", arg: 1, scope: !2983, file: !3, line: 1708, type: !2015)
!2986 = !DILocation(line: 1708, column: 26, scope: !2983)
!2987 = !DILocation(line: 1709, column: 10, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 1709, column: 9)
!2989 = !DILocation(line: 1709, column: 9, scope: !2983)
!2990 = !DILocation(line: 1713, column: 13, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 1713, column: 9)
!2992 = !DILocation(line: 1713, column: 19, scope: !2991)
!2993 = !DILocation(line: 1713, column: 9, scope: !2983)
!2994 = !DILocation(line: 0, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 1709, column: 37)
!2996 = !DILocation(line: 1718, column: 1, scope: !2983)
!2997 = distinct !DISubprogram(name: "raxRandomWalk", scope: !3, file: !3, line: 1732, type: !2998, isLocal: false, isDefinition: true, scopeLine: 1732, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3000)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!31, !2015, !56}
!3000 = !{!3001, !3002, !3003, !3006, !3007, !3009, !3010, !3013}
!3001 = !DILocalVariable(name: "it", arg: 1, scope: !2997, file: !3, line: 1732, type: !2015)
!3002 = !DILocalVariable(name: "steps", arg: 2, scope: !2997, file: !3, line: 1732, type: !56)
!3003 = !DILocalVariable(name: "fle", scope: !3004, file: !3, line: 1739, type: !56)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 1738, column: 21)
!3005 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 1738, column: 9)
!3006 = !DILocalVariable(name: "n", scope: !2997, file: !3, line: 1744, type: !13)
!3007 = !DILocalVariable(name: "numchildren", scope: !3008, file: !3, line: 1746, type: !31)
!3008 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 1745, column: 35)
!3009 = !DILocalVariable(name: "r", scope: !3008, file: !3, line: 1747, type: !31)
!3010 = !DILocalVariable(name: "todel", scope: !3011, file: !3, line: 1752, type: !31)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 1749, column: 31)
!3012 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 1749, column: 13)
!3013 = !DILocalVariable(name: "cp", scope: !3014, file: !3, line: 1761, type: !12)
!3014 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 1754, column: 16)
!3015 = !DILocation(line: 1732, column: 32, scope: !2997)
!3016 = !DILocation(line: 1732, column: 43, scope: !2997)
!3017 = !DILocation(line: 1733, column: 13, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 1733, column: 9)
!3019 = !DILocation(line: 1733, column: 17, scope: !3018)
!3020 = !DILocation(line: 1733, column: 24, scope: !3018)
!3021 = !DILocation(line: 1733, column: 9, scope: !2997)
!3022 = !DILocation(line: 1734, column: 13, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 1733, column: 30)
!3024 = !DILocation(line: 1734, column: 19, scope: !3023)
!3025 = !DILocation(line: 1735, column: 9, scope: !3023)
!3026 = !DILocation(line: 1738, column: 15, scope: !3005)
!3027 = !DILocation(line: 1738, column: 9, scope: !2997)
!3028 = !DILocation(line: 1739, column: 32, scope: !3004)
!3029 = !DILocation(line: 1739, column: 28, scope: !3004)
!3030 = !DILocation(line: 1739, column: 22, scope: !3004)
!3031 = !DILocation(line: 1739, column: 16, scope: !3004)
!3032 = !DILocation(line: 1740, column: 13, scope: !3004)
!3033 = !DILocation(line: 1741, column: 21, scope: !3004)
!3034 = !DILocation(line: 1741, column: 28, scope: !3004)
!3035 = !DILocation(line: 1741, column: 19, scope: !3004)
!3036 = !DILocation(line: 1742, column: 5, scope: !3004)
!3037 = !DILocation(line: 1744, column: 5, scope: !2997)
!3038 = !DILocation(line: 1744, column: 22, scope: !2997)
!3039 = !DILocation(line: 1744, column: 14, scope: !2997)
!3040 = !DILocation(line: 1745, column: 5, scope: !2997)
!3041 = !DILocation(line: 0, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 1765, column: 13)
!3043 = !DILocation(line: 1745, column: 17, scope: !2997)
!3044 = !DILocation(line: 1745, column: 21, scope: !2997)
!3045 = !DILocation(line: 1745, column: 28, scope: !2997)
!3046 = !DILocation(line: 1745, column: 24, scope: !2997)
!3047 = !DILocation(line: 1746, column: 30, scope: !3008)
!3048 = !DILocation(line: 1746, column: 27, scope: !3008)
!3049 = !DILocation(line: 1746, column: 47, scope: !3008)
!3050 = !DILocation(line: 1746, column: 13, scope: !3008)
!3051 = !DILocation(line: 1747, column: 17, scope: !3008)
!3052 = !DILocation(line: 1747, column: 40, scope: !3008)
!3053 = !DILocation(line: 1747, column: 49, scope: !3008)
!3054 = !DILocation(line: 1747, column: 53, scope: !3008)
!3055 = !DILocation(line: 1747, column: 42, scope: !3008)
!3056 = !DILocation(line: 1747, column: 38, scope: !3008)
!3057 = !DILocation(line: 1747, column: 24, scope: !3008)
!3058 = !DILocation(line: 1747, column: 13, scope: !3008)
!3059 = !DILocation(line: 1749, column: 15, scope: !3012)
!3060 = !DILocation(line: 1749, column: 13, scope: !3008)
!3061 = !DILocation(line: 130, column: 13, scope: !1437, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 1751, column: 17, scope: !3011)
!3063 = !DILocation(line: 130, column: 19, scope: !1437, inlinedAt: !3062)
!3064 = !DILocation(line: 130, column: 9, scope: !1430, inlinedAt: !3062)
!3065 = !DILocation(line: 129, column: 43, scope: !1430, inlinedAt: !3062)
!3066 = !DILocation(line: 131, column: 14, scope: !1430, inlinedAt: !3062)
!3067 = !DILocation(line: 132, column: 16, scope: !1430, inlinedAt: !3062)
!3068 = !DILocation(line: 132, column: 12, scope: !1430, inlinedAt: !3062)
!3069 = !DILocation(line: 132, column: 5, scope: !1430, inlinedAt: !3062)
!3070 = !DILocation(line: 0, scope: !1430, inlinedAt: !3062)
!3071 = !DILocation(line: 0, scope: !3011)
!3072 = !DILocation(line: 133, column: 1, scope: !1430, inlinedAt: !3062)
!3073 = !DILocation(line: 1751, column: 15, scope: !3011)
!3074 = !DILocation(line: 1752, column: 28, scope: !3011)
!3075 = !DILocation(line: 1752, column: 25, scope: !3011)
!3076 = !DILocation(line: 1752, column: 41, scope: !3011)
!3077 = !DILocation(line: 1752, column: 17, scope: !3011)
!3078 = !DILocation(line: 1753, column: 36, scope: !3011)
!3079 = !DILocation(line: 1293, column: 39, scope: !2126, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 1753, column: 13, scope: !3011)
!3081 = !DILocation(line: 1293, column: 50, scope: !2126, inlinedAt: !3080)
!3082 = !DILocation(line: 1294, column: 17, scope: !2126, inlinedAt: !3080)
!3083 = !DILocation(line: 1295, column: 1, scope: !2126, inlinedAt: !3080)
!3084 = !DILocation(line: 1754, column: 9, scope: !3011)
!3085 = !DILocation(line: 1756, column: 20, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3014, file: !3, line: 1756, column: 17)
!3087 = !DILocation(line: 1756, column: 17, scope: !3086)
!3088 = !DILocation(line: 1756, column: 17, scope: !3014)
!3089 = !DILocation(line: 0, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 1759, column: 21)
!3091 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 1758, column: 20)
!3092 = !DILocation(line: 1757, column: 56, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 1757, column: 21)
!3094 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 1756, column: 29)
!3095 = !DILocation(line: 1757, column: 53, scope: !3093)
!3096 = !DILocation(line: 1757, column: 22, scope: !3093)
!3097 = !DILocation(line: 1757, column: 21, scope: !3094)
!3098 = !DILocation(line: 1759, column: 52, scope: !3090)
!3099 = !DILocation(line: 1759, column: 22, scope: !3090)
!3100 = !DILocation(line: 1759, column: 21, scope: !3091)
!3101 = !DILocation(line: 1761, column: 28, scope: !3014)
!3102 = !DILocation(line: 1762, column: 42, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3014, file: !3, line: 1762, column: 17)
!3104 = !DILocation(line: 1762, column: 18, scope: !3103)
!3105 = !DILocation(line: 1762, column: 17, scope: !3014)
!3106 = !DILocation(line: 1761, column: 51, scope: !3014)
!3107 = !DILocation(line: 1761, column: 23, scope: !3014)
!3108 = !DILocation(line: 1763, column: 23, scope: !3014)
!3109 = !DILocation(line: 1763, column: 13, scope: !3014)
!3110 = !DILocation(line: 1764, column: 9, scope: !3012)
!3111 = !DILocation(line: 1765, column: 13, scope: !3042)
!3112 = !DILocation(line: 1762, column: 46, scope: !3103)
!3113 = !DILocation(line: 1765, column: 16, scope: !3042)
!3114 = !DILocation(line: 1765, column: 13, scope: !3008)
!3115 = !DILocation(line: 1765, column: 28, scope: !3042)
!3116 = !DILocation(line: 1765, column: 23, scope: !3042)
!3117 = !DILocation(line: 0, scope: !3004)
!3118 = !DILocation(line: 1766, column: 5, scope: !2997)
!3119 = !DILocation(line: 1767, column: 14, scope: !2997)
!3120 = !DILocation(line: 1768, column: 5, scope: !2997)
!3121 = !DILocation(line: 1769, column: 1, scope: !2997)
!3122 = distinct !DISubprogram(name: "raxCompare", scope: !3, file: !3, line: 1774, type: !2605, isLocal: false, isDefinition: true, scopeLine: 1774, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3123)
!3123 = !{!3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132}
!3124 = !DILocalVariable(name: "iter", arg: 1, scope: !3122, file: !3, line: 1774, type: !2015)
!3125 = !DILocalVariable(name: "op", arg: 2, scope: !3122, file: !3, line: 1774, type: !2607)
!3126 = !DILocalVariable(name: "key", arg: 3, scope: !3122, file: !3, line: 1774, type: !10)
!3127 = !DILocalVariable(name: "key_len", arg: 4, scope: !3122, file: !3, line: 1774, type: !56)
!3128 = !DILocalVariable(name: "eq", scope: !3122, file: !3, line: 1775, type: !31)
!3129 = !DILocalVariable(name: "lt", scope: !3122, file: !3, line: 1775, type: !31)
!3130 = !DILocalVariable(name: "gt", scope: !3122, file: !3, line: 1775, type: !31)
!3131 = !DILocalVariable(name: "minlen", scope: !3122, file: !3, line: 1782, type: !56)
!3132 = !DILocalVariable(name: "cmp", scope: !3122, file: !3, line: 1783, type: !31)
!3133 = !DILocation(line: 1774, column: 29, scope: !3122)
!3134 = !DILocation(line: 1774, column: 47, scope: !3122)
!3135 = !DILocation(line: 1774, column: 66, scope: !3122)
!3136 = !DILocation(line: 1774, column: 78, scope: !3122)
!3137 = !DILocation(line: 1775, column: 9, scope: !3122)
!3138 = !DILocation(line: 1775, column: 17, scope: !3122)
!3139 = !DILocation(line: 1775, column: 25, scope: !3122)
!3140 = !DILocation(line: 1777, column: 9, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 1777, column: 9)
!3142 = !DILocation(line: 1777, column: 15, scope: !3141)
!3143 = !DILocation(line: 1777, column: 22, scope: !3141)
!3144 = !DILocation(line: 1777, column: 25, scope: !3141)
!3145 = !DILocation(line: 1777, column: 31, scope: !3141)
!3146 = !DILocation(line: 1777, column: 9, scope: !3122)
!3147 = !DILocation(line: 1777, column: 39, scope: !3141)
!3148 = !DILocation(line: 0, scope: !3122)
!3149 = !DILocation(line: 1778, column: 15, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 1778, column: 9)
!3151 = !DILocation(line: 1778, column: 9, scope: !3122)
!3152 = !DILocation(line: 1779, column: 20, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 1779, column: 14)
!3154 = !DILocation(line: 1779, column: 14, scope: !3150)
!3155 = !DILocation(line: 1780, column: 14, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3153, file: !3, line: 1780, column: 14)
!3157 = !DILocation(line: 1780, column: 20, scope: !3156)
!3158 = !DILocation(line: 1780, column: 14, scope: !3153)
!3159 = !DILocation(line: 0, scope: !3150)
!3160 = !DILocation(line: 1782, column: 37, scope: !3122)
!3161 = !DILocation(line: 1782, column: 29, scope: !3122)
!3162 = !DILocation(line: 1782, column: 21, scope: !3122)
!3163 = !DILocation(line: 1782, column: 12, scope: !3122)
!3164 = !DILocation(line: 1783, column: 28, scope: !3122)
!3165 = !DILocation(line: 1783, column: 15, scope: !3122)
!3166 = !DILocation(line: 1783, column: 9, scope: !3122)
!3167 = !DILocation(line: 1786, column: 17, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 1786, column: 9)
!3169 = !DILocation(line: 0, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 1789, column: 9)
!3171 = !DILocation(line: 1786, column: 45, scope: !3168)
!3172 = !DILocation(line: 1786, column: 65, scope: !3168)
!3173 = !DILocation(line: 1786, column: 56, scope: !3168)
!3174 = !DILocation(line: 1786, column: 29, scope: !3168)
!3175 = !DILocation(line: 1789, column: 9, scope: !3122)
!3176 = !DILocation(line: 1791, column: 13, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 1791, column: 13)
!3178 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 1789, column: 19)
!3179 = !DILocation(line: 1791, column: 16, scope: !3177)
!3180 = !DILocation(line: 1791, column: 36, scope: !3177)
!3181 = !DILocation(line: 1791, column: 27, scope: !3177)
!3182 = !DILocation(line: 1791, column: 13, scope: !3178)
!3183 = !DILocation(line: 1791, column: 45, scope: !3177)
!3184 = !DILocation(line: 1792, column: 18, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 1792, column: 18)
!3186 = !DILocation(line: 1792, column: 18, scope: !3177)
!3187 = !DILocation(line: 1792, column: 35, scope: !3185)
!3188 = !DILocation(line: 1792, column: 43, scope: !3185)
!3189 = !DILocation(line: 1792, column: 22, scope: !3185)
!3190 = !DILocation(line: 1793, column: 18, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 1793, column: 18)
!3192 = !DILocation(line: 1793, column: 18, scope: !3185)
!3193 = !DILocation(line: 1793, column: 35, scope: !3191)
!3194 = !DILocation(line: 1793, column: 43, scope: !3191)
!3195 = !DILocation(line: 1793, column: 22, scope: !3191)
!3196 = !DILocation(line: 1794, column: 15, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 1794, column: 11)
!3198 = !DILocation(line: 1794, column: 11, scope: !3122)
!3199 = !DILocation(line: 0, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3197, file: !3, line: 1796, column: 28)
!3201 = !DILocation(line: 1795, column: 9, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3197, file: !3, line: 1794, column: 20)
!3203 = !DILocation(line: 0, scope: !3156)
!3204 = !DILocation(line: 1799, column: 1, scope: !3122)
!3205 = distinct !DISubprogram(name: "raxStop", scope: !3, file: !3, line: 1802, type: !3206, isLocal: false, isDefinition: true, scopeLine: 1802, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3208)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{null, !2015}
!3208 = !{!3209}
!3209 = !DILocalVariable(name: "it", arg: 1, scope: !3205, file: !3, line: 1802, type: !2015)
!3210 = !DILocation(line: 1802, column: 27, scope: !3205)
!3211 = !DILocation(line: 1803, column: 13, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 1803, column: 9)
!3213 = !DILocation(line: 1803, column: 20, scope: !3212)
!3214 = !DILocation(line: 1803, column: 17, scope: !3212)
!3215 = !DILocation(line: 1803, column: 9, scope: !3205)
!3216 = !DILocation(line: 1803, column: 43, scope: !3212)
!3217 = !DILocation(line: 143, column: 43, scope: !1378, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 1804, column: 5, scope: !3205)
!3219 = !DILocation(line: 144, column: 13, scope: !1384, inlinedAt: !3218)
!3220 = !DILocation(line: 144, column: 22, scope: !1384, inlinedAt: !3218)
!3221 = !DILocation(line: 144, column: 19, scope: !1384, inlinedAt: !3218)
!3222 = !DILocation(line: 144, column: 9, scope: !1378, inlinedAt: !3218)
!3223 = !DILocation(line: 144, column: 49, scope: !1384, inlinedAt: !3218)
!3224 = !DILocation(line: 144, column: 40, scope: !1384, inlinedAt: !3218)
!3225 = !DILocation(line: 145, column: 1, scope: !1378, inlinedAt: !3218)
!3226 = !DILocation(line: 1805, column: 1, scope: !3205)
!3227 = distinct !DISubprogram(name: "raxEOF", scope: !3, file: !3, line: 1811, type: !2421, isLocal: false, isDefinition: true, scopeLine: 1811, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3228)
!3228 = !{!3229}
!3229 = !DILocalVariable(name: "it", arg: 1, scope: !3227, file: !3, line: 1811, type: !2015)
!3230 = !DILocation(line: 1811, column: 25, scope: !3227)
!3231 = !DILocation(line: 1812, column: 16, scope: !3227)
!3232 = !DILocation(line: 1812, column: 22, scope: !3227)
!3233 = !DILocation(line: 1812, column: 5, scope: !3227)
!3234 = distinct !DISubprogram(name: "raxSize", scope: !3, file: !3, line: 1816, type: !3235, isLocal: false, isDefinition: true, scopeLine: 1816, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3237)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!99, !93}
!3237 = !{!3238}
!3238 = !DILocalVariable(name: "rax", arg: 1, scope: !3234, file: !3, line: 1816, type: !93)
!3239 = !DILocation(line: 1816, column: 23, scope: !3234)
!3240 = !DILocation(line: 1817, column: 17, scope: !3234)
!3241 = !DILocation(line: 1817, column: 5, scope: !3234)
!3242 = distinct !DISubprogram(name: "raxRecursiveShow", scope: !3, file: !3, line: 1848, type: !3243, isLocal: false, isDefinition: true, scopeLine: 1848, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3245)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{null, !31, !31, !13}
!3245 = !{!3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3256, !3259, !3263}
!3246 = !DILocalVariable(name: "level", arg: 1, scope: !3242, file: !3, line: 1848, type: !31)
!3247 = !DILocalVariable(name: "lpad", arg: 2, scope: !3242, file: !3, line: 1848, type: !31)
!3248 = !DILocalVariable(name: "n", arg: 3, scope: !3242, file: !3, line: 1848, type: !13)
!3249 = !DILocalVariable(name: "s", scope: !3242, file: !3, line: 1849, type: !9)
!3250 = !DILocalVariable(name: "e", scope: !3242, file: !3, line: 1850, type: !9)
!3251 = !DILocalVariable(name: "numchars", scope: !3242, file: !3, line: 1852, type: !31)
!3252 = !DILocalVariable(name: "numchildren", scope: !3242, file: !3, line: 1857, type: !31)
!3253 = !DILocalVariable(name: "cp", scope: !3242, file: !3, line: 1864, type: !12)
!3254 = !DILocalVariable(name: "i", scope: !3255, file: !3, line: 1865, type: !31)
!3255 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 1865, column: 5)
!3256 = !DILocalVariable(name: "branch", scope: !3257, file: !3, line: 1866, type: !8)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 1865, column: 43)
!3258 = distinct !DILexicalBlock(scope: !3255, file: !3, line: 1865, column: 5)
!3259 = !DILocalVariable(name: "j", scope: !3260, file: !3, line: 1869, type: !31)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 1869, column: 13)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !3, line: 1867, column: 30)
!3262 = distinct !DILexicalBlock(scope: !3257, file: !3, line: 1867, column: 13)
!3263 = !DILocalVariable(name: "child", scope: !3257, file: !3, line: 1874, type: !13)
!3264 = !DILocation(line: 1848, column: 27, scope: !3242)
!3265 = !DILocation(line: 1848, column: 38, scope: !3242)
!3266 = !DILocation(line: 1848, column: 53, scope: !3242)
!3267 = !DILocation(line: 1849, column: 17, scope: !3242)
!3268 = !DILocation(line: 1849, column: 14, scope: !3242)
!3269 = !DILocation(line: 1852, column: 39, scope: !3242)
!3270 = !DILocation(line: 1852, column: 45, scope: !3242)
!3271 = !DILocation(line: 1852, column: 51, scope: !3242)
!3272 = !DILocation(line: 1852, column: 60, scope: !3242)
!3273 = !DILocation(line: 1852, column: 20, scope: !3242)
!3274 = !DILocation(line: 1852, column: 9, scope: !3242)
!3275 = !DILocation(line: 1853, column: 12, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 1853, column: 9)
!3277 = !DILocation(line: 1853, column: 9, scope: !3276)
!3278 = !DILocation(line: 1853, column: 9, scope: !3242)
!3279 = !DILocation(line: 237, column: 27, scope: !189, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 1854, column: 34, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3276, file: !3, line: 1853, column: 19)
!3282 = !DILocation(line: 238, column: 12, scope: !198, inlinedAt: !3280)
!3283 = !DILocation(line: 238, column: 9, scope: !198, inlinedAt: !3280)
!3284 = !DILocation(line: 238, column: 9, scope: !189, inlinedAt: !3280)
!3285 = !DILocation(line: 239, column: 28, scope: !189, inlinedAt: !3280)
!3286 = !DILocation(line: 239, column: 37, scope: !189, inlinedAt: !3280)
!3287 = !DILocation(line: 239, column: 36, scope: !189, inlinedAt: !3280)
!3288 = !DILocation(line: 239, column: 60, scope: !189, inlinedAt: !3280)
!3289 = !DILocation(line: 239, column: 12, scope: !189, inlinedAt: !3280)
!3290 = !DILocation(line: 240, column: 5, scope: !189, inlinedAt: !3280)
!3291 = !DILocation(line: 241, column: 5, scope: !189, inlinedAt: !3280)
!3292 = !DILocation(line: 242, column: 12, scope: !189, inlinedAt: !3280)
!3293 = !DILocation(line: 240, column: 11, scope: !189, inlinedAt: !3280)
!3294 = !DILocation(line: 243, column: 1, scope: !189, inlinedAt: !3280)
!3295 = !DILocation(line: 0, scope: !189, inlinedAt: !3280)
!3296 = !DILocation(line: 1854, column: 21, scope: !3281)
!3297 = !DILocation(line: 1854, column: 18, scope: !3281)
!3298 = !DILocation(line: 1855, column: 5, scope: !3281)
!3299 = !DILocation(line: 1857, column: 26, scope: !3242)
!3300 = !DILocation(line: 0, scope: !3242)
!3301 = !DILocation(line: 1857, column: 23, scope: !3242)
!3302 = !DILocation(line: 1857, column: 43, scope: !3242)
!3303 = !DILocation(line: 1857, column: 9, scope: !3242)
!3304 = !DILocation(line: 1860, column: 9, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 1860, column: 9)
!3306 = !DILocation(line: 1860, column: 9, scope: !3242)
!3307 = !DILocation(line: 1861, column: 30, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 1860, column: 16)
!3309 = !DILocation(line: 1861, column: 17, scope: !3308)
!3310 = !DILocation(line: 1861, column: 14, scope: !3308)
!3311 = !DILocation(line: 1862, column: 25, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3308, file: !3, line: 1862, column: 13)
!3313 = !DILocation(line: 1862, column: 13, scope: !3308)
!3314 = !DILocation(line: 1862, column: 36, scope: !3312)
!3315 = !DILocation(line: 1862, column: 31, scope: !3312)
!3316 = !DILocation(line: 1865, column: 14, scope: !3255)
!3317 = !DILocation(line: 1865, column: 10, scope: !3255)
!3318 = !DILocation(line: 1865, column: 5, scope: !3255)
!3319 = !DILocation(line: 1865, column: 23, scope: !3258)
!3320 = !DILocation(line: 1864, column: 20, scope: !3242)
!3321 = !DILocation(line: 1864, column: 15, scope: !3242)
!3322 = !DILocation(line: 1879, column: 1, scope: !3242)
!3323 = !DILocation(line: 1867, column: 13, scope: !3257)
!3324 = !DILocation(line: 1868, column: 13, scope: !3261)
!3325 = !DILocation(line: 1869, column: 22, scope: !3260)
!3326 = !DILocation(line: 1869, column: 18, scope: !3260)
!3327 = !DILocation(line: 1869, column: 13, scope: !3260)
!3328 = !DILocation(line: 1870, column: 27, scope: !3261)
!3329 = !DILocation(line: 1870, column: 13, scope: !3261)
!3330 = !DILocation(line: 1871, column: 9, scope: !3261)
!3331 = !DILocation(line: 1869, column: 44, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 1869, column: 13)
!3333 = !DILocation(line: 1869, column: 40, scope: !3332)
!3334 = !DILocation(line: 1869, column: 13, scope: !3332)
!3335 = !DILocation(line: 1869, column: 31, scope: !3332)
!3336 = distinct !{!3336, !3327, !3337}
!3337 = !DILocation(line: 1869, column: 55, scope: !3260)
!3338 = !DILocation(line: 1872, column: 13, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3262, file: !3, line: 1871, column: 16)
!3340 = !DILocation(line: 1874, column: 9, scope: !3257)
!3341 = !DILocation(line: 1875, column: 23, scope: !3257)
!3342 = !DILocation(line: 1875, column: 9, scope: !3257)
!3343 = !DILocation(line: 1876, column: 39, scope: !3257)
!3344 = !DILocation(line: 1874, column: 18, scope: !3257)
!3345 = !DILocation(line: 1876, column: 9, scope: !3257)
!3346 = !DILocation(line: 1877, column: 11, scope: !3257)
!3347 = !DILocation(line: 1878, column: 5, scope: !3258)
!3348 = !DILocation(line: 1865, column: 39, scope: !3258)
!3349 = !DILocation(line: 1865, column: 5, scope: !3258)
!3350 = distinct !{!3350, !3318, !3351}
!3351 = !DILocation(line: 1878, column: 5, scope: !3255)
!3352 = distinct !DISubprogram(name: "raxShow", scope: !3, file: !3, line: 1882, type: !1997, isLocal: false, isDefinition: true, scopeLine: 1882, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3353)
!3353 = !{!3354}
!3354 = !DILocalVariable(name: "rax", arg: 1, scope: !3352, file: !3, line: 1882, type: !93)
!3355 = !DILocation(line: 1882, column: 19, scope: !3352)
!3356 = !DILocation(line: 1883, column: 31, scope: !3352)
!3357 = !DILocation(line: 1883, column: 5, scope: !3352)
!3358 = !DILocation(line: 1884, column: 5, scope: !3352)
!3359 = !DILocation(line: 1885, column: 1, scope: !3352)
!3360 = distinct !DISubprogram(name: "raxDebugShowNode", scope: !3, file: !3, line: 1888, type: !3361, isLocal: false, isDefinition: true, scopeLine: 1888, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3363)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !2607, !13}
!3363 = !{!3364, !3365, !3366, !3367, !3368}
!3364 = !DILocalVariable(name: "msg", arg: 1, scope: !3360, file: !3, line: 1888, type: !2607)
!3365 = !DILocalVariable(name: "n", arg: 2, scope: !3360, file: !3, line: 1888, type: !13)
!3366 = !DILocalVariable(name: "numcld", scope: !3360, file: !3, line: 1892, type: !31)
!3367 = !DILocalVariable(name: "cldptr", scope: !3360, file: !3, line: 1893, type: !12)
!3368 = !DILocalVariable(name: "child", scope: !3369, file: !3, line: 1895, type: !13)
!3369 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 1894, column: 21)
!3370 = !DILocation(line: 1888, column: 35, scope: !3360)
!3371 = !DILocation(line: 1888, column: 49, scope: !3360)
!3372 = !DILocation(line: 1889, column: 9, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 1889, column: 9)
!3374 = !DILocation(line: 1889, column: 21, scope: !3373)
!3375 = !DILocation(line: 1889, column: 9, scope: !3360)
!3376 = !DILocation(line: 1891, column: 14, scope: !3360)
!3377 = !DILocation(line: 1891, column: 32, scope: !3360)
!3378 = !DILocation(line: 1891, column: 45, scope: !3360)
!3379 = !DILocation(line: 1891, column: 57, scope: !3360)
!3380 = !DILocation(line: 1890, column: 5, scope: !3360)
!3381 = !DILocation(line: 1892, column: 21, scope: !3360)
!3382 = !DILocation(line: 1892, column: 18, scope: !3360)
!3383 = !DILocation(line: 0, scope: !3360)
!3384 = !DILocation(line: 1892, column: 9, scope: !3360)
!3385 = !DILocation(line: 1893, column: 24, scope: !3360)
!3386 = !DILocation(line: 1894, column: 5, scope: !3360)
!3387 = !DILocation(line: 1893, column: 56, scope: !3360)
!3388 = !DILocation(line: 1893, column: 47, scope: !3360)
!3389 = !DILocation(line: 1893, column: 15, scope: !3360)
!3390 = !DILocation(line: 1894, column: 17, scope: !3360)
!3391 = !DILocation(line: 1895, column: 9, scope: !3369)
!3392 = !DILocation(line: 1896, column: 23, scope: !3369)
!3393 = !DILocation(line: 1896, column: 9, scope: !3369)
!3394 = !DILocation(line: 1897, column: 15, scope: !3369)
!3395 = !DILocation(line: 1898, column: 30, scope: !3369)
!3396 = !DILocation(line: 1895, column: 18, scope: !3369)
!3397 = !DILocation(line: 1898, column: 9, scope: !3369)
!3398 = !DILocation(line: 1899, column: 5, scope: !3360)
!3399 = distinct !{!3399, !3386, !3398}
!3400 = !DILocation(line: 1900, column: 5, scope: !3360)
!3401 = !DILocation(line: 1901, column: 12, scope: !3360)
!3402 = !{!3403, !127, i64 16}
!3403 = !{!"_reent", !49, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !49, i64 32, !50, i64 36, !49, i64 64, !127, i64 72, !49, i64 80, !127, i64 88, !127, i64 96, !49, i64 104, !127, i64 112, !127, i64 120, !49, i64 128, !127, i64 136, !50, i64 144, !127, i64 504, !3404, i64 512, !127, i64 1304, !3406, i64 1312, !50, i64 1336}
!3404 = !{!"_atexit", !127, i64 0, !49, i64 8, !50, i64 16, !3405, i64 272}
!3405 = !{!"_on_exit_args", !50, i64 0, !50, i64 256, !49, i64 512, !49, i64 516}
!3406 = !{!"_glue", !127, i64 0, !49, i64 8, !127, i64 16}
!3407 = !DILocation(line: 1901, column: 5, scope: !3360)
!3408 = !DILocation(line: 1902, column: 1, scope: !3360)
!3409 = distinct !DISubprogram(name: "raxTouch", scope: !3, file: !3, line: 1921, type: !3410, isLocal: false, isDefinition: true, scopeLine: 1921, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3412)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!32, !13}
!3412 = !{!3413, !3414, !3415, !3416, !3417, !3418, !3420}
!3413 = !DILocalVariable(name: "n", arg: 1, scope: !3409, file: !3, line: 1921, type: !13)
!3414 = !DILocalVariable(name: "sum", scope: !3409, file: !3, line: 1923, type: !32)
!3415 = !DILocalVariable(name: "numchildren", scope: !3409, file: !3, line: 1928, type: !31)
!3416 = !DILocalVariable(name: "cp", scope: !3409, file: !3, line: 1929, type: !12)
!3417 = !DILocalVariable(name: "count", scope: !3409, file: !3, line: 1930, type: !31)
!3418 = !DILocalVariable(name: "i", scope: !3419, file: !3, line: 1931, type: !31)
!3419 = distinct !DILexicalBlock(scope: !3409, file: !3, line: 1931, column: 5)
!3420 = !DILocalVariable(name: "child", scope: !3421, file: !3, line: 1935, type: !13)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 1931, column: 43)
!3422 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 1931, column: 5)
!3423 = !DILocation(line: 1921, column: 33, scope: !3409)
!3424 = !DILocation(line: 1923, column: 19, scope: !3409)
!3425 = !DILocation(line: 1924, column: 12, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3409, file: !3, line: 1924, column: 9)
!3427 = !DILocation(line: 1924, column: 9, scope: !3426)
!3428 = !DILocation(line: 1924, column: 9, scope: !3409)
!3429 = !DILocation(line: 237, column: 27, scope: !189, inlinedAt: !3430)
!3430 = distinct !DILocation(line: 1925, column: 31, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 1924, column: 19)
!3432 = !DILocation(line: 238, column: 12, scope: !198, inlinedAt: !3430)
!3433 = !DILocation(line: 238, column: 9, scope: !198, inlinedAt: !3430)
!3434 = !DILocation(line: 238, column: 9, scope: !189, inlinedAt: !3430)
!3435 = !DILocation(line: 238, column: 20, scope: !198, inlinedAt: !3430)
!3436 = !DILocation(line: 239, column: 28, scope: !189, inlinedAt: !3430)
!3437 = !DILocation(line: 239, column: 37, scope: !189, inlinedAt: !3430)
!3438 = !DILocation(line: 239, column: 36, scope: !189, inlinedAt: !3430)
!3439 = !DILocation(line: 239, column: 60, scope: !189, inlinedAt: !3430)
!3440 = !DILocation(line: 239, column: 12, scope: !189, inlinedAt: !3430)
!3441 = !DILocation(line: 240, column: 5, scope: !189, inlinedAt: !3430)
!3442 = !DILocation(line: 241, column: 5, scope: !189, inlinedAt: !3430)
!3443 = !DILocation(line: 242, column: 12, scope: !189, inlinedAt: !3430)
!3444 = !DILocation(line: 240, column: 11, scope: !189, inlinedAt: !3430)
!3445 = !DILocation(line: 243, column: 1, scope: !189, inlinedAt: !3430)
!3446 = !DILocation(line: 1928, column: 26, scope: !3409)
!3447 = !DILocation(line: 1926, column: 5, scope: !3431)
!3448 = !DILocation(line: 0, scope: !3409)
!3449 = !DILocation(line: 1928, column: 23, scope: !3409)
!3450 = !DILocation(line: 0, scope: !3419)
!3451 = !DILocation(line: 1928, column: 9, scope: !3409)
!3452 = !DILocation(line: 1930, column: 9, scope: !3409)
!3453 = !DILocation(line: 1931, column: 14, scope: !3419)
!3454 = !DILocation(line: 1931, column: 23, scope: !3422)
!3455 = !DILocation(line: 1931, column: 5, scope: !3419)
!3456 = !DILocation(line: 1929, column: 20, scope: !3409)
!3457 = !DILocation(line: 1929, column: 15, scope: !3409)
!3458 = !DILocation(line: 0, scope: !3421)
!3459 = !DILocation(line: 1942, column: 5, scope: !3409)
!3460 = !DILocation(line: 1932, column: 13, scope: !3421)
!3461 = !DILocation(line: 1933, column: 26, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 1932, column: 30)
!3463 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 1932, column: 13)
!3464 = !DILocation(line: 1933, column: 20, scope: !3462)
!3465 = !DILocation(line: 1933, column: 17, scope: !3462)
!3466 = !DILocation(line: 1934, column: 9, scope: !3462)
!3467 = !DILocation(line: 0, scope: !3431)
!3468 = !DILocation(line: 1935, column: 9, scope: !3421)
!3469 = !DILocation(line: 1936, column: 23, scope: !3421)
!3470 = !DILocation(line: 1936, column: 9, scope: !3421)
!3471 = !DILocation(line: 1937, column: 13, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 1937, column: 13)
!3473 = !DILocation(line: 1935, column: 18, scope: !3421)
!3474 = !DILocation(line: 1937, column: 19, scope: !3472)
!3475 = !DILocation(line: 1937, column: 13, scope: !3421)
!3476 = !DILocation(line: 1938, column: 13, scope: !3421)
!3477 = !DILocation(line: 1937, column: 45, scope: !3472)
!3478 = !DILocation(line: 1937, column: 40, scope: !3472)
!3479 = !DILocation(line: 1938, column: 19, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 1938, column: 13)
!3481 = !DILocation(line: 1938, column: 24, scope: !3480)
!3482 = !DILocation(line: 1939, column: 16, scope: !3421)
!3483 = !DILocation(line: 1939, column: 13, scope: !3421)
!3484 = !DILocation(line: 1940, column: 11, scope: !3421)
!3485 = !DILocation(line: 1941, column: 5, scope: !3422)
!3486 = !DILocation(line: 1931, column: 39, scope: !3422)
!3487 = !DILocation(line: 1931, column: 5, scope: !3422)
!3488 = distinct !{!3488, !3455, !3489}
!3489 = !DILocation(line: 1941, column: 5, scope: !3419)
