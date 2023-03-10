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
  %10 = add i64 %8, 8, !dbg !75
  %11 = select i1 %9, i64 %8, i64 %10, !dbg !76
  %12 = tail call i8* @zmalloc(i64 %11) #6, !dbg !77
  %13 = icmp eq i8* %12, null, !dbg !78
  br i1 %13, label %19, label %14, !dbg !80

; <label>:14:                                     ; preds = %2
  %15 = bitcast i8* %12 to %struct.raxNode*, !dbg !77
  %16 = bitcast i8* %12 to i32*, !dbg !82
  %17 = trunc i64 %0 to i32, !dbg !83
  %18 = shl i32 %17, 3, !dbg !84
  store i32 %18, i32* %16, align 4, !dbg !84
  br label %19, !dbg !85

; <label>:19:                                     ; preds = %2, %14
  %20 = phi %struct.raxNode* [ %15, %14 ], [ null, %2 ], !dbg !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  ret %struct.raxNode* %20, !dbg !87
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local %struct.rax* @raxNew() local_unnamed_addr #0 !dbg !88 {
  %1 = tail call i8* @zmalloc(i64 24) #6, !dbg !102
  %2 = bitcast i8* %1 to %struct.rax*, !dbg !102
  %3 = icmp eq i8* %1, null, !dbg !104
  br i1 %3, label %14, label %4, !dbg !106

; <label>:4:                                      ; preds = %0
  %5 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !107
  %6 = bitcast i8* %5 to <2 x i64>*, !dbg !108
  store <2 x i64> <i64 0, i64 1>, <2 x i64>* %6, align 8, !dbg !108, !tbaa !109
  %7 = tail call i8* @zmalloc(i64 8) #6, !dbg !115
  %8 = icmp eq i8* %7, null, !dbg !116
  br i1 %8, label %9, label %11, !dbg !117

; <label>:9:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  %10 = bitcast i8* %1 to %struct.raxNode**, !dbg !119
  store %struct.raxNode* null, %struct.raxNode** %10, align 8, !dbg !120, !tbaa !121
  tail call void @zfree(i8* nonnull %1) #6, !dbg !124
  br label %14, !dbg !127

; <label>:11:                                     ; preds = %4
  %12 = bitcast i8* %7 to i32*, !dbg !129
  store i32 0, i32* %12, align 4, !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  %13 = bitcast i8* %1 to i8**, !dbg !120
  store i8* %7, i8** %13, align 8, !dbg !120, !tbaa !121
  br label %14, !dbg !131

; <label>:14:                                     ; preds = %11, %0, %9
  %15 = phi %struct.rax* [ null, %9 ], [ null, %0 ], [ %2, %11 ], !dbg !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !134
  ret %struct.rax* %15, !dbg !134
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local %struct.raxNode* @raxReallocForData(%struct.raxNode*, i8* readnone) local_unnamed_addr #0 !dbg !135 {
  %3 = icmp eq i8* %1, null, !dbg !144
  br i1 %3, label %33, label %4, !dbg !146

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 0, !dbg !147
  %6 = load i32, i32* %5, align 4, !dbg !147
  %7 = lshr i32 %6, 3, !dbg !147
  %8 = add nuw nsw i32 %7, 4, !dbg !147
  %9 = sub nsw i32 4, %7, !dbg !147
  %10 = and i32 %9, 7, !dbg !147
  %11 = add nuw nsw i32 %8, %10, !dbg !147
  %12 = zext i32 %11 to i64, !dbg !147
  %13 = and i32 %6, 4, !dbg !147
  %14 = icmp eq i32 %13, 0, !dbg !147
  %15 = and i32 %6, -8, !dbg !147
  %16 = select i1 %14, i32 %15, i32 8, !dbg !147
  %17 = zext i32 %16 to i64, !dbg !147
  %18 = and i32 %6, 1, !dbg !147
  %19 = icmp eq i32 %18, 0, !dbg !147
  br i1 %19, label %25, label %20, !dbg !147

; <label>:20:                                     ; preds = %4
  %21 = shl i32 %6, 2
  %22 = and i32 %21, 8
  %23 = xor i32 %22, 8
  %24 = zext i32 %23 to i64
  br label %25

; <label>:25:                                     ; preds = %4, %20
  %26 = phi i64 [ 0, %4 ], [ %24, %20 ]
  %27 = bitcast %struct.raxNode* %0 to i8*, !dbg !149
  %28 = add nuw nsw i64 %17, 8, !dbg !147
  %29 = add nuw nsw i64 %28, %12, !dbg !147
  %30 = add nuw nsw i64 %29, %26, !dbg !150
  %31 = tail call i8* @zrealloc(i8* %27, i64 %30) #6, !dbg !151
  %32 = bitcast i8* %31 to %struct.raxNode*, !dbg !151
  br label %33

; <label>:33:                                     ; preds = %2, %25
  %34 = phi %struct.raxNode* [ %32, %25 ], [ %0, %2 ], !dbg !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  ret %struct.raxNode* %34, !dbg !153
}

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @raxSetData(%struct.raxNode*, i8*) local_unnamed_addr #0 !dbg !154 {
  %3 = alloca i8*, align 8
  store i8* %1, i8** %3, align 8, !tbaa !165
  %4 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 0, !dbg !166
  %5 = load i32, i32* %4, align 4, !dbg !167
  %6 = or i32 %5, 1, !dbg !167
  store i32 %6, i32* %4, align 4, !dbg !167
  %7 = icmp eq i8* %1, null, !dbg !168
  br i1 %7, label %26, label %8, !dbg !169

; <label>:8:                                      ; preds = %2
  %9 = and i32 %6, -3, !dbg !170
  store i32 %9, i32* %4, align 4, !dbg !172
  %10 = bitcast %struct.raxNode* %0 to i8*, !dbg !173
  %11 = lshr i32 %5, 3, !dbg !174
  %12 = add nuw nsw i32 %11, 4, !dbg !174
  %13 = sub nsw i32 4, %11, !dbg !174
  %14 = and i32 %13, 7, !dbg !174
  %15 = add nuw nsw i32 %12, %14, !dbg !174
  %16 = zext i32 %15 to i64, !dbg !174
  %17 = and i32 %5, 4, !dbg !174
  %18 = icmp eq i32 %17, 0, !dbg !174
  %19 = and i32 %5, -8, !dbg !174
  %20 = select i1 %18, i32 %19, i32 8, !dbg !174
  %21 = zext i32 %20 to i64, !dbg !174
  %22 = add nuw nsw i64 %16, %21, !dbg !174
  %23 = getelementptr inbounds i8, i8* %10, i64 %22, !dbg !175
  %24 = bitcast i8** %3 to i8*, !dbg !177
  %25 = call i8* @memcpy(i8* nonnull %23, i8* nonnull %24, i64 8) #6, !dbg !178
  br label %28, !dbg !179

; <label>:26:                                     ; preds = %2
  %27 = or i32 %5, 3, !dbg !180
  store i32 %27, i32* %4, align 4, !dbg !180
  br label %28

; <label>:28:                                     ; preds = %26, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  ret void, !dbg !181
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @raxGetData(%struct.raxNode*) local_unnamed_addr #0 !dbg !182 {
  %2 = alloca i8*, align 8
  %3 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 0, !dbg !190
  %4 = load i32, i32* %3, align 4, !dbg !190
  %5 = and i32 %4, 2, !dbg !190
  %6 = icmp eq i32 %5, 0, !dbg !192
  br i1 %6, label %7, label %36, !dbg !193

; <label>:7:                                      ; preds = %1
  %8 = bitcast %struct.raxNode* %0 to i8*, !dbg !194
  %9 = lshr i32 %4, 3, !dbg !195
  %10 = add nuw nsw i32 %9, 4, !dbg !195
  %11 = sub nsw i32 4, %9, !dbg !195
  %12 = and i32 %11, 7, !dbg !195
  %13 = add nuw nsw i32 %10, %12, !dbg !195
  %14 = zext i32 %13 to i64, !dbg !195
  %15 = and i32 %4, 4, !dbg !195
  %16 = icmp eq i32 %15, 0, !dbg !195
  %17 = and i32 %4, -8, !dbg !195
  %18 = select i1 %16, i32 %17, i32 8, !dbg !195
  %19 = zext i32 %18 to i64, !dbg !195
  %20 = add nuw nsw i64 %14, %19, !dbg !195
  %21 = and i32 %4, 1, !dbg !195
  %22 = icmp eq i32 %21, 0, !dbg !195
  br i1 %22, label %28, label %23, !dbg !195

; <label>:23:                                     ; preds = %7
  %24 = shl i32 %4, 2
  %25 = and i32 %24, 8
  %26 = xor i32 %25, 8
  %27 = zext i32 %26 to i64
  br label %28

; <label>:28:                                     ; preds = %7, %23
  %29 = phi i64 [ 0, %7 ], [ %27, %23 ]
  %30 = add nuw nsw i64 %20, %29, !dbg !195
  %31 = getelementptr inbounds i8, i8* %8, i64 %30, !dbg !196
  %32 = getelementptr inbounds i8, i8* %31, i64 -8, !dbg !197
  %33 = bitcast i8** %2 to i8*, !dbg !199
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #7, !dbg !199
  %34 = call i8* @memcpy(i8* nonnull %33, i8* nonnull %32, i64 8) #6, !dbg !200
  %35 = load i8*, i8** %2, align 8, !dbg !201, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #7, !dbg !203
  br label %36

; <label>:36:                                     ; preds = %1, %28
  %37 = phi i8* [ %35, %28 ], [ null, %1 ], !dbg !204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !203
  ret i8* %37, !dbg !203
}

; Function Attrs: noredzone nounwind
define dso_local %struct.raxNode* @raxAddChild(%struct.raxNode*, i8 zeroext, %struct.raxNode** nocapture, %struct.raxNode*** nocapture) local_unnamed_addr #0 !dbg !205 {
  %5 = alloca %struct.raxNode*, align 8
  %6 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 0, !dbg !227
  %7 = load i32, i32* %6, align 4, !dbg !227
  %8 = and i32 %7, 4, !dbg !227
  %9 = icmp eq i32 %8, 0, !dbg !227
  br i1 %9, label %11, label %10, !dbg !227

; <label>:10:                                     ; preds = %4
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 255, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.raxAddChild, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !227
  unreachable, !dbg !227

; <label>:11:                                     ; preds = %4
  %12 = lshr i32 %7, 3, !dbg !228
  %13 = add nuw nsw i32 %12, 4, !dbg !228
  %14 = sub nsw i32 4, %12, !dbg !228
  %15 = and i32 %14, 7, !dbg !228
  %16 = add nuw nsw i32 %13, %15, !dbg !228
  %17 = zext i32 %16 to i64, !dbg !228
  %18 = and i32 %7, -8, !dbg !228
  %19 = zext i32 %18 to i64, !dbg !228
  %20 = add nuw nsw i64 %17, %19, !dbg !228
  %21 = and i32 %7, 1, !dbg !228
  %22 = icmp eq i32 %21, 0, !dbg !228
  br i1 %22, label %28, label %23, !dbg !228

; <label>:23:                                     ; preds = %11
  %24 = shl i32 %7, 2
  %25 = and i32 %24, 8
  %26 = xor i32 %25, 8
  %27 = zext i32 %26 to i64
  br label %28

; <label>:28:                                     ; preds = %11, %23
  %29 = phi i64 [ 0, %11 ], [ %27, %23 ]
  %30 = add nuw nsw i64 %20, %29, !dbg !228
  %31 = add nuw nsw i32 %12, 1, !dbg !230
  %32 = shl i32 %31, 3, !dbg !230
  %33 = and i32 %7, 7, !dbg !230
  %34 = or i32 %32, %33, !dbg !230
  store i32 %34, i32* %6, align 4, !dbg !230
  %35 = and i32 %31, 536870911, !dbg !231
  %36 = add nuw nsw i32 %35, 4, !dbg !231
  %37 = sub nsw i32 3, %12, !dbg !231
  %38 = and i32 %37, 7, !dbg !231
  %39 = add nuw nsw i32 %36, %38, !dbg !231
  %40 = zext i32 %39 to i64, !dbg !231
  %41 = zext i32 %32 to i64, !dbg !231
  %42 = add nuw nsw i64 %40, %41, !dbg !231
  br i1 %22, label %48, label %43, !dbg !231

; <label>:43:                                     ; preds = %28
  %44 = shl i32 %7, 2
  %45 = and i32 %44, 8
  %46 = xor i32 %45, 8
  %47 = zext i32 %46 to i64
  br label %48

; <label>:48:                                     ; preds = %28, %43
  %49 = phi i64 [ 0, %28 ], [ %47, %43 ]
  %50 = add nuw nsw i64 %42, %49, !dbg !231
  %51 = add i32 %34, -8, !dbg !233
  store i32 %51, i32* %6, align 4, !dbg !233
  %52 = bitcast %struct.raxNode** %5 to i8*, !dbg !234
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %52) #7, !dbg !234
  %53 = tail call i8* @zmalloc(i64 8) #6, !dbg !239
  %54 = icmp eq i8* %53, null, !dbg !240
  br i1 %54, label %55, label %56, !dbg !241

; <label>:55:                                     ; preds = %48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !242
  store %struct.raxNode* null, %struct.raxNode** %5, align 8, !dbg !243, !tbaa !165
  br label %154, !dbg !244

; <label>:56:                                     ; preds = %48
  %57 = bitcast i8* %53 to i32*, !dbg !246
  store i32 0, i32* %57, align 4, !dbg !247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !242
  %58 = bitcast %struct.raxNode** %5 to i8**, !dbg !243
  store i8* %53, i8** %58, align 8, !dbg !243, !tbaa !165
  %59 = bitcast %struct.raxNode* %0 to i8*, !dbg !248
  %60 = tail call i8* @zrealloc(i8* %59, i64 %50) #6, !dbg !249
  %61 = bitcast i8* %60 to %struct.raxNode*, !dbg !249
  %62 = icmp eq i8* %60, null, !dbg !251
  br i1 %62, label %71, label %63, !dbg !253

; <label>:63:                                     ; preds = %56
  %64 = getelementptr inbounds i8, i8* %60, i64 4, !dbg !254
  %65 = bitcast i8* %60 to i32*, !dbg !260
  %66 = load i32, i32* %65, align 4, !dbg !260
  %67 = icmp ugt i32 %66, 7, !dbg !261
  br i1 %67, label %68, label %84, !dbg !262

; <label>:68:                                     ; preds = %63
  %69 = lshr i32 %66, 3
  %70 = zext i32 %69 to i64
  br label %72, !dbg !263

; <label>:71:                                     ; preds = %56
  tail call void @zfree(i8* nonnull %53) #6, !dbg !264
  br label %154, !dbg !266

; <label>:72:                                     ; preds = %68, %78
  %73 = phi i64 [ 0, %68 ], [ %79, %78 ]
  %74 = phi i32 [ 0, %68 ], [ %80, %78 ]
  %75 = getelementptr inbounds i8, i8* %64, i64 %73, !dbg !263
  %76 = load i8, i8* %75, align 1, !dbg !263, !tbaa !267
  %77 = icmp ugt i8 %76, %1, !dbg !268
  br i1 %77, label %82, label %78, !dbg !269

; <label>:78:                                     ; preds = %72
  %79 = add nuw nsw i64 %73, 1, !dbg !270
  %80 = add nuw nsw i32 %74, 1, !dbg !270
  %81 = icmp ult i64 %79, %70, !dbg !261
  br i1 %81, label %72, label %84, !dbg !262, !llvm.loop !271

; <label>:82:                                     ; preds = %72
  %83 = trunc i64 %73 to i32, !dbg !269
  br label %84, !dbg !273

; <label>:84:                                     ; preds = %78, %82, %63
  %85 = phi i32 [ 0, %63 ], [ %83, %82 ], [ %80, %78 ], !dbg !275
  %86 = and i32 %66, 3, !dbg !273
  %87 = icmp eq i32 %86, 1, !dbg !273
  br i1 %87, label %88, label %95, !dbg !273

; <label>:88:                                     ; preds = %84
  %89 = getelementptr inbounds i8, i8* %60, i64 %30, !dbg !276
  %90 = getelementptr inbounds i8, i8* %89, i64 -8, !dbg !278
  %91 = getelementptr inbounds i8, i8* %60, i64 %50, !dbg !280
  %92 = getelementptr inbounds i8, i8* %91, i64 -8, !dbg !281
  %93 = tail call i8* @memmove(i8* nonnull %92, i8* nonnull %90, i64 8) #6, !dbg !283
  %94 = load i32, i32* %65, align 4, !dbg !284
  br label %95, !dbg !285

; <label>:95:                                     ; preds = %84, %88
  %96 = phi i32 [ %66, %84 ], [ %94, %88 ], !dbg !284
  %97 = sub nsw i64 %50, %30, !dbg !286
  %98 = add nsw i64 %97, -8, !dbg !287
  %99 = lshr i32 %96, 3, !dbg !284
  %100 = zext i32 %99 to i64, !dbg !289
  %101 = getelementptr inbounds i8, i8* %64, i64 %100, !dbg !289
  %102 = sub nsw i32 4, %99, !dbg !290
  %103 = and i32 %102, 7, !dbg !290
  %104 = zext i32 %103 to i64, !dbg !290
  %105 = getelementptr inbounds i8, i8* %101, i64 %104, !dbg !291
  %106 = zext i32 %85 to i64, !dbg !292
  %107 = shl nuw nsw i64 %106, 3, !dbg !293
  %108 = getelementptr inbounds i8, i8* %105, i64 %107, !dbg !294
  %109 = getelementptr inbounds i8, i8* %108, i64 %98, !dbg !295
  %110 = getelementptr inbounds i8, i8* %109, i64 8, !dbg !296
  %111 = sub nsw i32 %99, %85, !dbg !297
  %112 = sext i32 %111 to i64, !dbg !298
  %113 = shl nsw i64 %112, 3, !dbg !299
  %114 = tail call i8* @memmove(i8* nonnull %110, i8* nonnull %108, i64 %113) #6, !dbg !300
  %115 = icmp eq i64 %98, 0, !dbg !301
  br i1 %115, label %127, label %116, !dbg !303

; <label>:116:                                    ; preds = %95
  %117 = load i32, i32* %65, align 4, !dbg !304
  %118 = lshr i32 %117, 3, !dbg !304
  %119 = zext i32 %118 to i64, !dbg !304
  %120 = getelementptr inbounds i8, i8* %64, i64 %119, !dbg !304
  %121 = sub nsw i32 4, %118, !dbg !304
  %122 = and i32 %121, 7, !dbg !304
  %123 = zext i32 %122 to i64, !dbg !304
  %124 = getelementptr inbounds i8, i8* %120, i64 %123, !dbg !304
  %125 = getelementptr inbounds i8, i8* %124, i64 %98, !dbg !306
  %126 = tail call i8* @memmove(i8* nonnull %125, i8* nonnull %124, i64 %107) #6, !dbg !307
  br label %127, !dbg !308

; <label>:127:                                    ; preds = %95, %116
  %128 = getelementptr inbounds i8, i8* %64, i64 %106, !dbg !309
  %129 = getelementptr inbounds i8, i8* %128, i64 1, !dbg !310
  %130 = load i32, i32* %65, align 4, !dbg !311
  %131 = lshr i32 %130, 3, !dbg !311
  %132 = sub nsw i32 %131, %85, !dbg !312
  %133 = sext i32 %132 to i64, !dbg !313
  %134 = tail call i8* @memmove(i8* nonnull %129, i8* nonnull %128, i64 %133) #6, !dbg !314
  store i8 %1, i8* %128, align 1, !dbg !315, !tbaa !267
  %135 = load i32, i32* %65, align 4, !dbg !316
  %136 = lshr i32 %135, 3, !dbg !316
  %137 = add nuw nsw i32 %136, 1, !dbg !316
  %138 = shl i32 %137, 3, !dbg !316
  %139 = and i32 %135, 7, !dbg !316
  %140 = or i32 %138, %139, !dbg !316
  store i32 %140, i32* %65, align 4, !dbg !316
  %141 = and i32 %137, 536870911, !dbg !317
  %142 = zext i32 %141 to i64, !dbg !317
  %143 = getelementptr inbounds i8, i8* %64, i64 %142, !dbg !317
  %144 = sub nsw i32 3, %136, !dbg !317
  %145 = and i32 %144, 7, !dbg !317
  %146 = zext i32 %145 to i64, !dbg !317
  %147 = getelementptr inbounds i8, i8* %143, i64 %146, !dbg !317
  %148 = getelementptr inbounds i8, i8* %147, i64 %107, !dbg !318
  %149 = call i8* @memcpy(i8* nonnull %148, i8* nonnull %52, i64 8) #6, !dbg !320
  %150 = bitcast %struct.raxNode** %5 to i64*, !dbg !321
  %151 = load i64, i64* %150, align 8, !dbg !321, !tbaa !165
  %152 = bitcast %struct.raxNode** %2 to i64*, !dbg !322
  store i64 %151, i64* %152, align 8, !dbg !322, !tbaa !165
  %153 = bitcast %struct.raxNode*** %3 to i8**, !dbg !323
  store i8* %148, i8** %153, align 8, !dbg !323, !tbaa !165
  br label %154

; <label>:154:                                    ; preds = %55, %71, %127
  %155 = phi %struct.raxNode* [ null, %71 ], [ %61, %127 ], [ null, %55 ], !dbg !324
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52) #7, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  ret %struct.raxNode* %155, !dbg !325
}

; Function Attrs: noredzone noreturn
declare dso_local void @__assert_func(i8*, i32, i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local %struct.raxNode* @raxCompressNode(%struct.raxNode*, i8*, i64, %struct.raxNode**) local_unnamed_addr #0 !dbg !326 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 0, !dbg !342
  %8 = load i32, i32* %7, align 4, !dbg !342
  %9 = icmp ult i32 %8, 4, !dbg !342
  br i1 %9, label %11, label %10, !dbg !342

; <label>:10:                                     ; preds = %4
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 396, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.raxCompressNode, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !342
  unreachable, !dbg !342

; <label>:11:                                     ; preds = %4
  %12 = tail call i8* @zmalloc(i64 8) #6, !dbg !348
  %13 = icmp eq i8* %12, null, !dbg !349
  br i1 %13, label %14, label %15, !dbg !350

; <label>:14:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  store %struct.raxNode* null, %struct.raxNode** %3, align 8, !dbg !352, !tbaa !165
  br label %140, !dbg !353

; <label>:15:                                     ; preds = %11
  %16 = bitcast i8* %12 to i32*, !dbg !355
  store i32 0, i32* %16, align 4, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  %17 = bitcast %struct.raxNode** %3 to i8**, !dbg !352
  store i8* %12, i8** %17, align 8, !dbg !352, !tbaa !165
  %18 = add i64 %2, 4, !dbg !357
  %19 = sub i64 4, %2, !dbg !358
  %20 = and i64 %19, 7, !dbg !358
  %21 = add i64 %18, %20, !dbg !359
  %22 = add i64 %21, 8, !dbg !360
  %23 = load i32, i32* %7, align 4, !dbg !362
  %24 = and i32 %23, 1, !dbg !362
  %25 = icmp eq i32 %24, 0, !dbg !364
  br i1 %25, label %61, label %26, !dbg !365

; <label>:26:                                     ; preds = %15
  %27 = and i32 %23, 2, !dbg !369
  %28 = icmp eq i32 %27, 0, !dbg !370
  br i1 %28, label %29, label %55, !dbg !371

; <label>:29:                                     ; preds = %26
  %30 = bitcast %struct.raxNode* %0 to i8*, !dbg !372
  %31 = lshr i32 %23, 3, !dbg !373
  %32 = add nuw nsw i32 %31, 4, !dbg !373
  %33 = sub nsw i32 4, %31, !dbg !373
  %34 = and i32 %33, 7, !dbg !373
  %35 = add nuw nsw i32 %32, %34, !dbg !373
  %36 = zext i32 %35 to i64, !dbg !373
  %37 = and i32 %23, 4, !dbg !373
  %38 = icmp eq i32 %37, 0, !dbg !373
  %39 = and i32 %23, -8, !dbg !373
  %40 = select i1 %38, i32 %39, i32 8, !dbg !373
  %41 = zext i32 %40 to i64, !dbg !373
  %42 = shl i32 %23, 2
  %43 = and i32 %42, 8
  %44 = xor i32 %43, 8
  %45 = zext i32 %44 to i64
  %46 = add nuw nsw i64 %45, %41, !dbg !373
  %47 = add nuw nsw i64 %46, %36, !dbg !373
  %48 = getelementptr inbounds i8, i8* %30, i64 %47, !dbg !374
  %49 = getelementptr inbounds i8, i8* %48, i64 -8, !dbg !375
  %50 = bitcast i8** %6 to i8*, !dbg !377
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #7, !dbg !377
  %51 = call i8* @memcpy(i8* nonnull %50, i8* nonnull %49, i64 8) #6, !dbg !378
  %52 = load i8*, i8** %6, align 8, !dbg !379, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #7, !dbg !381
  %53 = load i32, i32* %7, align 4, !dbg !382
  %54 = and i32 %53, 2, !dbg !382
  br label %55

; <label>:55:                                     ; preds = %26, %29
  %56 = phi i32 [ %27, %26 ], [ %54, %29 ], !dbg !382
  %57 = phi i8* [ null, %26 ], [ %52, %29 ], !dbg !384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  %58 = icmp eq i32 %56, 0, !dbg !385
  %59 = add i64 %21, 16, !dbg !386
  %60 = select i1 %58, i64 %59, i64 %22, !dbg !387
  br label %61, !dbg !387

; <label>:61:                                     ; preds = %55, %15
  %62 = phi i8* [ null, %15 ], [ %57, %55 ], !dbg !388
  %63 = phi i64 [ %22, %15 ], [ %60, %55 ], !dbg !388
  %64 = bitcast %struct.raxNode* %0 to i8*, !dbg !389
  %65 = call i8* @zrealloc(i8* %64, i64 %63) #6, !dbg !390
  %66 = bitcast i8* %65 to %struct.raxNode*, !dbg !390
  %67 = icmp eq i8* %65, null, !dbg !392
  br i1 %67, label %68, label %70, !dbg !394

; <label>:68:                                     ; preds = %61
  %69 = load i8*, i8** %17, align 8, !dbg !395, !tbaa !165
  call void @zfree(i8* %69) #6, !dbg !397
  br label %140, !dbg !398

; <label>:70:                                     ; preds = %61
  %71 = bitcast i8* %65 to i32*, !dbg !399
  %72 = load i32, i32* %71, align 4, !dbg !400
  %73 = trunc i64 %2 to i32, !dbg !401
  %74 = shl i32 %73, 3, !dbg !402
  %75 = and i32 %72, 3, !dbg !402
  %76 = or i32 %74, %75, !dbg !402
  %77 = or i32 %76, 4, !dbg !402
  store i32 %77, i32* %71, align 4, !dbg !402
  %78 = getelementptr inbounds i8, i8* %65, i64 4, !dbg !403
  %79 = call i8* @memcpy(i8* nonnull %78, i8* %1, i64 %2) #6, !dbg !404
  %80 = load i32, i32* %71, align 4, !dbg !405
  %81 = and i32 %80, 1, !dbg !405
  %82 = icmp eq i32 %81, 0, !dbg !407
  br i1 %82, label %110, label %83, !dbg !408

; <label>:83:                                     ; preds = %70
  %84 = bitcast i8** %5 to i8*, !dbg !409
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %84), !dbg !409
  store i8* %62, i8** %5, align 8, !tbaa !165
  %85 = load i32, i32* %71, align 4, !dbg !412
  %86 = or i32 %85, 1, !dbg !412
  store i32 %86, i32* %71, align 4, !dbg !412
  %87 = icmp eq i8* %62, null, !dbg !413
  br i1 %87, label %104, label %88, !dbg !414

; <label>:88:                                     ; preds = %83
  %89 = and i32 %86, -3, !dbg !415
  store i32 %89, i32* %71, align 4, !dbg !416
  %90 = lshr i32 %85, 3, !dbg !417
  %91 = add nuw nsw i32 %90, 4, !dbg !417
  %92 = sub nsw i32 4, %90, !dbg !417
  %93 = and i32 %92, 7, !dbg !417
  %94 = add nuw nsw i32 %91, %93, !dbg !417
  %95 = zext i32 %94 to i64, !dbg !417
  %96 = and i32 %85, 4, !dbg !417
  %97 = icmp eq i32 %96, 0, !dbg !417
  %98 = and i32 %85, -8, !dbg !417
  %99 = select i1 %97, i32 %98, i32 8, !dbg !417
  %100 = zext i32 %99 to i64, !dbg !417
  %101 = add nuw nsw i64 %95, %100, !dbg !417
  %102 = getelementptr inbounds i8, i8* %65, i64 %101, !dbg !418
  %103 = call i8* @memcpy(i8* nonnull %102, i8* nonnull %84, i64 8) #6, !dbg !420
  br label %106, !dbg !421

; <label>:104:                                    ; preds = %83
  %105 = or i32 %85, 3, !dbg !422
  store i32 %105, i32* %71, align 4, !dbg !422
  br label %106

; <label>:106:                                    ; preds = %88, %104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %84), !dbg !423
  %107 = load i32, i32* %71, align 4, !dbg !424
  %108 = and i32 %107, 1, !dbg !424
  %109 = icmp eq i32 %108, 0, !dbg !425
  br label %110, !dbg !425

; <label>:110:                                    ; preds = %70, %106
  %111 = phi i1 [ true, %70 ], [ %109, %106 ]
  %112 = phi i32 [ %80, %70 ], [ %107, %106 ], !dbg !424
  %113 = lshr i32 %112, 3, !dbg !424
  %114 = add nuw nsw i32 %113, 4, !dbg !424
  %115 = sub nsw i32 4, %113, !dbg !424
  %116 = and i32 %115, 7, !dbg !424
  %117 = add nuw nsw i32 %114, %116, !dbg !424
  %118 = zext i32 %117 to i64, !dbg !424
  %119 = and i32 %112, 4, !dbg !424
  %120 = icmp eq i32 %119, 0, !dbg !424
  %121 = and i32 %112, -8, !dbg !424
  %122 = select i1 %120, i32 %121, i32 8, !dbg !424
  %123 = zext i32 %122 to i64, !dbg !424
  %124 = add nuw nsw i64 %118, %123, !dbg !424
  br i1 %111, label %132, label %125, !dbg !424

; <label>:125:                                    ; preds = %110
  %126 = shl i32 %112, 2
  %127 = and i32 %126, 8
  %128 = xor i32 %127, 8
  %129 = zext i32 %128 to i64
  %130 = add nuw nsw i64 %124, %129, !dbg !424
  %131 = sub nsw i64 0, %129
  br label %132

; <label>:132:                                    ; preds = %110, %125
  %133 = phi i64 [ %130, %125 ], [ %124, %110 ]
  %134 = phi i64 [ %131, %125 ], [ 0, %110 ]
  %135 = getelementptr inbounds i8, i8* %65, i64 %133, !dbg !424
  %136 = getelementptr inbounds i8, i8* %135, i64 -8, !dbg !424
  %137 = getelementptr inbounds i8, i8* %136, i64 %134, !dbg !424
  %138 = bitcast %struct.raxNode** %3 to i8*, !dbg !427
  %139 = call i8* @memcpy(i8* nonnull %137, i8* %138, i64 8) #6, !dbg !428
  br label %140

; <label>:140:                                    ; preds = %14, %68, %132
  %141 = phi %struct.raxNode* [ null, %68 ], [ %66, %132 ], [ null, %14 ], !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  ret %struct.raxNode* %141, !dbg !430
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxGenericInsert(%struct.rax*, i8*, i64, i8*, i8**, i32) local_unnamed_addr #0 !dbg !431 {
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
  %18 = alloca %struct.raxNode*, align 8
  %19 = alloca %struct.raxNode*, align 8
  %20 = alloca %struct.raxNode*, align 8
  %21 = alloca %struct.raxNode*, align 8
  %22 = alloca %struct.raxNode*, align 8
  %23 = alloca %struct.raxNode*, align 8
  %24 = alloca %struct.raxNode*, align 8
  %25 = alloca %struct.raxNode*, align 8
  %26 = alloca %struct.raxNode*, align 8
  %27 = alloca %struct.raxNode*, align 8
  %28 = alloca %struct.raxNode**, align 8
  %29 = bitcast %struct.raxNode** %19 to i8*, !dbg !499
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #7, !dbg !499
  %30 = bitcast %struct.raxNode** %18 to i8*, !dbg !540
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30) #7, !dbg !540
  %31 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 0, !dbg !541
  %32 = bitcast %struct.rax* %0 to i64*, !dbg !541
  %33 = load i64, i64* %32, align 8, !dbg !541, !tbaa !121
  %34 = bitcast %struct.raxNode** %18 to i64*, !dbg !542
  store i64 %33, i64* %34, align 8, !dbg !542, !tbaa !165
  %35 = inttoptr i64 %33 to %struct.raxNode*, !dbg !546
  %36 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %35, i64 0, i32 0, !dbg !547
  %37 = load i32, i32* %36, align 4, !dbg !547
  %38 = icmp ugt i32 %37, 7, !dbg !546
  %39 = icmp ne i64 %2, 0, !dbg !548
  %40 = and i1 %39, %38, !dbg !549
  %41 = inttoptr i64 %33 to i32*, !dbg !549
  br i1 %40, label %42, label %122, !dbg !549

; <label>:42:                                     ; preds = %6
  %43 = load i32, i32* %41, align 4, !dbg !550
  br label %44, !dbg !555

; <label>:44:                                     ; preds = %42, %96
  %45 = phi i32 [ %113, %96 ], [ %43, %42 ], !dbg !550
  %46 = phi i32* [ %112, %96 ], [ %41, %42 ]
  %47 = phi i64 [ %117, %96 ], [ %33, %42 ]
  %48 = phi %struct.raxNode* [ %111, %96 ], [ %35, %42 ]
  %49 = phi i32 [ %113, %96 ], [ %37, %42 ]
  %50 = phi %struct.raxNode** [ %108, %96 ], [ %31, %42 ]
  %51 = phi i64 [ %98, %96 ], [ 0, %42 ]
  %52 = and i32 %49, 4, !dbg !555
  %53 = icmp eq i32 %52, 0, !dbg !557
  %54 = lshr i32 %45, 3, !dbg !550
  %55 = zext i32 %54 to i64, !dbg !550
  br i1 %53, label %60, label %56, !dbg !558

; <label>:56:                                     ; preds = %44
  %57 = icmp ne i32 %54, 0, !dbg !559
  %58 = icmp ult i64 %51, %2, !dbg !560
  %59 = and i1 %58, %57, !dbg !561
  br i1 %59, label %65, label %79, !dbg !561

; <label>:60:                                     ; preds = %44
  %61 = icmp eq i32 %54, 0, !dbg !562
  br i1 %61, label %122, label %62, !dbg !566

; <label>:62:                                     ; preds = %60
  %63 = getelementptr inbounds i8, i8* %1, i64 %51
  %64 = load i8, i8* %63, align 1, !tbaa !267
  br label %83, !dbg !566

; <label>:65:                                     ; preds = %56, %73
  %66 = phi i64 [ %75, %73 ], [ %51, %56 ]
  %67 = phi i64 [ %74, %73 ], [ 0, %56 ]
  %68 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %48, i64 0, i32 1, i64 %67, !dbg !567
  %69 = load i8, i8* %68, align 1, !dbg !567, !tbaa !267
  %70 = getelementptr inbounds i8, i8* %1, i64 %66, !dbg !570
  %71 = load i8, i8* %70, align 1, !dbg !570, !tbaa !267
  %72 = icmp eq i8 %69, %71, !dbg !571
  br i1 %72, label %73, label %79, !dbg !572

; <label>:73:                                     ; preds = %65
  %74 = add nuw nsw i64 %67, 1, !dbg !573
  %75 = add nuw i64 %66, 1, !dbg !574
  %76 = icmp ult i64 %74, %55, !dbg !559
  %77 = icmp ult i64 %75, %2, !dbg !560
  %78 = and i1 %77, %76, !dbg !561
  br i1 %78, label %65, label %79, !dbg !561, !llvm.loop !575

; <label>:79:                                     ; preds = %73, %65, %56
  %80 = phi i64 [ 0, %56 ], [ %74, %73 ], [ %67, %65 ], !dbg !550
  %81 = phi i64 [ %51, %56 ], [ %75, %73 ], [ %66, %65 ], !dbg !550
  %82 = icmp eq i64 %80, %55, !dbg !578
  br i1 %82, label %96, label %122, !dbg !580

; <label>:83:                                     ; preds = %88, %62
  %84 = phi i64 [ 0, %62 ], [ %89, %88 ]
  %85 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %48, i64 0, i32 1, i64 %84, !dbg !581
  %86 = load i8, i8* %85, align 1, !dbg !581, !tbaa !267
  %87 = icmp eq i8 %86, %64, !dbg !584
  br i1 %87, label %91, label %88, !dbg !585

; <label>:88:                                     ; preds = %83
  %89 = add nuw nsw i64 %84, 1, !dbg !586
  %90 = icmp ult i64 %89, %55, !dbg !562
  br i1 %90, label %83, label %91, !dbg !566, !llvm.loop !587

; <label>:91:                                     ; preds = %88, %83
  %92 = phi i64 [ %84, %83 ], [ %89, %88 ], !dbg !590
  %93 = icmp eq i64 %92, %55, !dbg !591
  br i1 %93, label %120, label %94, !dbg !593

; <label>:94:                                     ; preds = %91
  %95 = add i64 %51, 1, !dbg !594
  br label %96

; <label>:96:                                     ; preds = %94, %79
  %97 = phi i64 [ %55, %79 ], [ %92, %94 ], !dbg !595
  %98 = phi i64 [ %81, %79 ], [ %95, %94 ], !dbg !596
  %99 = lshr i32 %49, 3, !dbg !597
  %100 = zext i32 %99 to i64, !dbg !597
  %101 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %48, i64 0, i32 1, i64 %100, !dbg !597
  %102 = sub nsw i32 4, %99, !dbg !597
  %103 = and i32 %102, 7, !dbg !597
  %104 = zext i32 %103 to i64, !dbg !597
  %105 = getelementptr inbounds i8, i8* %101, i64 %104, !dbg !597
  %106 = bitcast i8* %105 to %struct.raxNode**, !dbg !597
  %107 = select i1 %53, i64 %97, i64 0, !dbg !599
  %108 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %106, i64 %107, !dbg !600
  %109 = bitcast %struct.raxNode** %108 to i8*, !dbg !601
  %110 = call i8* @memcpy(i8* nonnull %30, i8* %109, i64 8) #6, !dbg !602
  %111 = load %struct.raxNode*, %struct.raxNode** %18, align 8, !dbg !546, !tbaa !165
  %112 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %111, i64 0, i32 0, !dbg !547
  %113 = load i32, i32* %112, align 4, !dbg !547
  %114 = icmp ugt i32 %113, 7, !dbg !546
  %115 = icmp ult i64 %98, %2, !dbg !548
  %116 = and i1 %115, %114, !dbg !549
  %117 = ptrtoint %struct.raxNode* %111 to i64, !dbg !549
  br i1 %116, label %44, label %118, !dbg !549

; <label>:118:                                    ; preds = %96
  %119 = ptrtoint %struct.raxNode* %111 to i64, !dbg !549
  br label %122, !dbg !603

; <label>:120:                                    ; preds = %91
  %121 = zext i32 %54 to i64, !dbg !550
  br label %122, !dbg !603

; <label>:122:                                    ; preds = %60, %79, %118, %120, %6
  %123 = phi i32* [ %41, %6 ], [ %112, %118 ], [ %46, %120 ], [ %46, %79 ], [ %46, %60 ]
  %124 = phi i64 [ %33, %6 ], [ %119, %118 ], [ %47, %120 ], [ %47, %79 ], [ %47, %60 ]
  %125 = phi %struct.raxNode** [ %31, %6 ], [ %108, %118 ], [ %50, %120 ], [ %50, %79 ], [ %50, %60 ], !dbg !543
  %126 = phi i64 [ 0, %6 ], [ 0, %118 ], [ %121, %120 ], [ 0, %60 ], [ %80, %79 ], !dbg !605
  %127 = phi i64 [ 0, %6 ], [ %98, %118 ], [ %51, %120 ], [ %51, %60 ], [ %81, %79 ], !dbg !544
  %128 = bitcast %struct.raxNode** %19 to i64*, !dbg !603
  store i64 %124, i64* %128, align 8, !dbg !603, !tbaa !165
  %129 = ptrtoint %struct.raxNode** %125 to i64, !dbg !606
  %130 = load i32, i32* %123, align 4, !dbg !608
  %131 = and i32 %130, 4, !dbg !608
  %132 = icmp eq i32 %131, 0, !dbg !610
  %133 = trunc i64 %126 to i32, !dbg !611
  %134 = select i1 %132, i32 0, i32 %133, !dbg !612
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30) #7, !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  %135 = icmp eq i64 %127, %2, !dbg !616
  %136 = inttoptr i64 %124 to %struct.raxNode*, !dbg !618
  %137 = inttoptr i64 %124 to i32*, !dbg !618
  br i1 %135, label %138, label %290, !dbg !618

; <label>:138:                                    ; preds = %122
  %139 = load i32, i32* %137, align 4, !dbg !619
  %140 = and i32 %139, 4, !dbg !619
  %141 = icmp eq i32 %140, 0, !dbg !620
  %142 = icmp eq i32 %134, 0, !dbg !621
  %143 = or i1 %142, %141, !dbg !622
  br i1 %143, label %144, label %688, !dbg !622

; <label>:144:                                    ; preds = %138
  %145 = and i32 %139, 1, !dbg !623
  %146 = icmp eq i32 %145, 0, !dbg !626
  br i1 %146, label %152, label %147, !dbg !627

; <label>:147:                                    ; preds = %144
  %148 = and i32 %139, 2, !dbg !628
  %149 = icmp ne i32 %148, 0, !dbg !629
  %150 = icmp ne i32 %5, 0, !dbg !630
  %151 = and i1 %150, %149, !dbg !631
  br i1 %151, label %152, label %190, !dbg !631

; <label>:152:                                    ; preds = %144, %147
  %153 = icmp eq i8* %3, null, !dbg !636
  br i1 %153, label %183, label %154, !dbg !637

; <label>:154:                                    ; preds = %152
  %155 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %136, i64 0, i32 0, !dbg !638
  %156 = load i32, i32* %155, align 4, !dbg !638
  %157 = lshr i32 %156, 3, !dbg !638
  %158 = add nuw nsw i32 %157, 4, !dbg !638
  %159 = sub nsw i32 4, %157, !dbg !638
  %160 = and i32 %159, 7, !dbg !638
  %161 = add nuw nsw i32 %158, %160, !dbg !638
  %162 = zext i32 %161 to i64, !dbg !638
  %163 = and i32 %156, 4, !dbg !638
  %164 = icmp eq i32 %163, 0, !dbg !638
  %165 = and i32 %156, -8, !dbg !638
  %166 = select i1 %164, i32 %165, i32 8, !dbg !638
  %167 = zext i32 %166 to i64, !dbg !638
  %168 = and i32 %156, 1, !dbg !638
  %169 = icmp eq i32 %168, 0, !dbg !638
  br i1 %169, label %175, label %170, !dbg !638

; <label>:170:                                    ; preds = %154
  %171 = shl i32 %156, 2
  %172 = and i32 %171, 8
  %173 = xor i32 %172, 8
  %174 = zext i32 %173 to i64
  br label %175

; <label>:175:                                    ; preds = %170, %154
  %176 = phi i64 [ 0, %154 ], [ %174, %170 ]
  %177 = inttoptr i64 %124 to i8*, !dbg !640
  %178 = add nuw nsw i64 %167, 8, !dbg !638
  %179 = add nuw nsw i64 %178, %162, !dbg !638
  %180 = add nuw nsw i64 %179, %176, !dbg !641
  %181 = call i8* @zrealloc(i8* %177, i64 %180) #6, !dbg !642
  %182 = bitcast i8* %181 to %struct.raxNode*, !dbg !642
  br label %183

; <label>:183:                                    ; preds = %152, %175
  %184 = phi %struct.raxNode* [ %182, %175 ], [ %136, %152 ], !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  store %struct.raxNode* %184, %struct.raxNode** %19, align 8, !dbg !645, !tbaa !165
  %185 = icmp eq %struct.raxNode* %184, null, !dbg !646
  br i1 %185, label %193, label %186, !dbg !648

; <label>:186:                                    ; preds = %183
  %187 = bitcast %struct.raxNode** %125 to i8*, !dbg !649
  %188 = call i8* @memcpy(i8* %187, i8* nonnull %29, i64 8) #6, !dbg !650
  %189 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !651, !tbaa !165
  br label %190, !dbg !650

; <label>:190:                                    ; preds = %186, %147
  %191 = phi %struct.raxNode* [ %189, %186 ], [ %136, %147 ], !dbg !651
  %192 = icmp eq %struct.raxNode* %191, null, !dbg !653
  br i1 %192, label %193, label %195, !dbg !654

; <label>:193:                                    ; preds = %183, %190
  %194 = call i32* @__errno() #6, !dbg !655
  store i32 12, i32* %194, align 4, !dbg !657, !tbaa !48
  br label %1134, !dbg !658

; <label>:195:                                    ; preds = %190
  %196 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %191, i64 0, i32 0, !dbg !659
  %197 = load i32, i32* %196, align 4, !dbg !659
  %198 = and i32 %197, 1, !dbg !659
  %199 = icmp eq i32 %198, 0, !dbg !661
  br i1 %199, label %262, label %200, !dbg !662

; <label>:200:                                    ; preds = %195
  %201 = icmp eq i8** %4, null, !dbg !663
  br i1 %201, label %231, label %202, !dbg !666

; <label>:202:                                    ; preds = %200
  %203 = and i32 %197, 2, !dbg !669
  %204 = icmp eq i32 %203, 0, !dbg !670
  br i1 %204, label %205, label %229, !dbg !671

; <label>:205:                                    ; preds = %202
  %206 = bitcast %struct.raxNode* %191 to i8*, !dbg !672
  %207 = lshr i32 %197, 3, !dbg !673
  %208 = add nuw nsw i32 %207, 4, !dbg !673
  %209 = sub nsw i32 4, %207, !dbg !673
  %210 = and i32 %209, 7, !dbg !673
  %211 = add nuw nsw i32 %208, %210, !dbg !673
  %212 = zext i32 %211 to i64, !dbg !673
  %213 = and i32 %197, 4, !dbg !673
  %214 = icmp eq i32 %213, 0, !dbg !673
  %215 = and i32 %197, -8, !dbg !673
  %216 = select i1 %214, i32 %215, i32 8, !dbg !673
  %217 = zext i32 %216 to i64, !dbg !673
  %218 = shl i32 %197, 2
  %219 = and i32 %218, 8
  %220 = xor i32 %219, 8
  %221 = zext i32 %220 to i64
  %222 = add nuw nsw i64 %221, %217, !dbg !673
  %223 = add nuw nsw i64 %222, %212, !dbg !673
  %224 = getelementptr inbounds i8, i8* %206, i64 %223, !dbg !674
  %225 = getelementptr inbounds i8, i8* %224, i64 -8, !dbg !675
  %226 = bitcast i8** %17 to i8*, !dbg !677
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %226) #7, !dbg !677
  %227 = call i8* @memcpy(i8* nonnull %226, i8* nonnull %225, i64 8) #6, !dbg !678
  %228 = load i8*, i8** %17, align 8, !dbg !679, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %226) #7, !dbg !681
  br label %229

; <label>:229:                                    ; preds = %202, %205
  %230 = phi i8* [ %228, %205 ], [ null, %202 ], !dbg !682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !681
  store i8* %230, i8** %4, align 8, !dbg !683, !tbaa !165
  br label %231, !dbg !684

; <label>:231:                                    ; preds = %200, %229
  %232 = icmp eq i32 %5, 0, !dbg !685
  br i1 %232, label %260, label %233, !dbg !687

; <label>:233:                                    ; preds = %231
  %234 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !688, !tbaa !165
  %235 = bitcast i8** %16 to i8*, !dbg !689
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %235), !dbg !689
  store i8* %3, i8** %16, align 8, !tbaa !165
  %236 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %234, i64 0, i32 0, !dbg !692
  %237 = load i32, i32* %236, align 4, !dbg !693
  %238 = or i32 %237, 1, !dbg !693
  store i32 %238, i32* %236, align 4, !dbg !693
  %239 = icmp eq i8* %3, null, !dbg !694
  br i1 %239, label %257, label %240, !dbg !695

; <label>:240:                                    ; preds = %233
  %241 = and i32 %238, -3, !dbg !696
  store i32 %241, i32* %236, align 4, !dbg !697
  %242 = bitcast %struct.raxNode* %234 to i8*, !dbg !698
  %243 = lshr i32 %237, 3, !dbg !699
  %244 = add nuw nsw i32 %243, 4, !dbg !699
  %245 = sub nsw i32 4, %243, !dbg !699
  %246 = and i32 %245, 7, !dbg !699
  %247 = add nuw nsw i32 %244, %246, !dbg !699
  %248 = zext i32 %247 to i64, !dbg !699
  %249 = and i32 %237, 4, !dbg !699
  %250 = icmp eq i32 %249, 0, !dbg !699
  %251 = and i32 %237, -8, !dbg !699
  %252 = select i1 %250, i32 %251, i32 8, !dbg !699
  %253 = zext i32 %252 to i64, !dbg !699
  %254 = add nuw nsw i64 %248, %253, !dbg !699
  %255 = getelementptr inbounds i8, i8* %242, i64 %254, !dbg !700
  %256 = call i8* @memcpy(i8* nonnull %255, i8* nonnull %235, i64 8) #6, !dbg !702
  br label %259, !dbg !703

; <label>:257:                                    ; preds = %233
  %258 = or i32 %237, 3, !dbg !704
  store i32 %258, i32* %236, align 4, !dbg !704
  br label %259

; <label>:259:                                    ; preds = %240, %257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !705
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %235), !dbg !705
  br label %260, !dbg !706

; <label>:260:                                    ; preds = %231, %259
  %261 = call i32* @__errno() #6, !dbg !707
  store i32 0, i32* %261, align 4, !dbg !708, !tbaa !48
  br label %1134, !dbg !709

; <label>:262:                                    ; preds = %195
  %263 = bitcast i8** %15 to i8*, !dbg !710
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %263), !dbg !710
  store i8* %3, i8** %15, align 8, !tbaa !165
  %264 = load i32, i32* %196, align 4, !dbg !713
  %265 = or i32 %264, 1, !dbg !713
  store i32 %265, i32* %196, align 4, !dbg !713
  %266 = icmp eq i8* %3, null, !dbg !714
  br i1 %266, label %284, label %267, !dbg !715

; <label>:267:                                    ; preds = %262
  %268 = and i32 %265, -3, !dbg !716
  store i32 %268, i32* %196, align 4, !dbg !717
  %269 = bitcast %struct.raxNode* %191 to i8*, !dbg !718
  %270 = lshr i32 %264, 3, !dbg !719
  %271 = add nuw nsw i32 %270, 4, !dbg !719
  %272 = sub nsw i32 4, %270, !dbg !719
  %273 = and i32 %272, 7, !dbg !719
  %274 = add nuw nsw i32 %271, %273, !dbg !719
  %275 = zext i32 %274 to i64, !dbg !719
  %276 = and i32 %264, 4, !dbg !719
  %277 = icmp eq i32 %276, 0, !dbg !719
  %278 = and i32 %264, -8, !dbg !719
  %279 = select i1 %277, i32 %278, i32 8, !dbg !719
  %280 = zext i32 %279 to i64, !dbg !719
  %281 = add nuw nsw i64 %275, %280, !dbg !719
  %282 = getelementptr inbounds i8, i8* %269, i64 %281, !dbg !720
  %283 = call i8* @memcpy(i8* nonnull %282, i8* nonnull %263, i64 8) #6, !dbg !722
  br label %286, !dbg !723

; <label>:284:                                    ; preds = %262
  %285 = or i32 %264, 3, !dbg !724
  store i32 %285, i32* %196, align 4, !dbg !724
  br label %286

; <label>:286:                                    ; preds = %267, %284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %263), !dbg !725
  %287 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 1, !dbg !726
  %288 = load i64, i64* %287, align 8, !dbg !727, !tbaa !728
  %289 = add i64 %288, 1, !dbg !727
  store i64 %289, i64* %287, align 8, !dbg !727, !tbaa !728
  br label %1134, !dbg !729

; <label>:290:                                    ; preds = %122
  %291 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %136, i64 0, i32 0, !dbg !730
  %292 = load i32, i32* %291, align 4, !dbg !730
  %293 = and i32 %292, 4, !dbg !730
  %294 = icmp eq i32 %293, 0, !dbg !731
  br i1 %294, label %966, label %295, !dbg !732

; <label>:295:                                    ; preds = %290
  %296 = inttoptr i64 %124 to i8*, !dbg !733
  %297 = lshr i32 %292, 3, !dbg !733
  %298 = sub nsw i32 4, %297, !dbg !733
  %299 = and i32 %298, 7, !dbg !733
  %300 = add nuw nsw i32 %297, 12, !dbg !733
  %301 = add nuw nsw i32 %300, %299, !dbg !733
  %302 = zext i32 %301 to i64, !dbg !733
  %303 = bitcast %struct.raxNode** %19 to i32**, !dbg !733
  %304 = load i32, i32* %137, align 4, !dbg !733
  %305 = and i32 %304, 3, !dbg !733
  %306 = icmp eq i32 %305, 1, !dbg !733
  %307 = zext i1 %306 to i64, !dbg !733
  %308 = shl nuw nsw i64 %307, 3, !dbg !733
  %309 = add nuw nsw i64 %308, %302, !dbg !733
  %310 = getelementptr inbounds i8, i8* %296, i64 %309, !dbg !733
  %311 = getelementptr inbounds i8, i8* %310, i64 -8, !dbg !733
  %312 = select i1 %306, i64 -8, i64 0, !dbg !733
  %313 = getelementptr inbounds i8, i8* %311, i64 %312, !dbg !733
  %314 = bitcast %struct.raxNode** %20 to i8*, !dbg !735
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %314) #7, !dbg !735
  %315 = call i8* @memcpy(i8* nonnull %314, i8* nonnull %313, i64 8) #6, !dbg !736
  %316 = load i32*, i32** %303, align 8, !dbg !737, !tbaa !165
  %317 = load i32, i32* %316, align 4, !dbg !739
  %318 = sext i32 %134 to i64, !dbg !740
  %319 = lshr i32 %317, 3, !dbg !742
  %320 = xor i32 %134, -1, !dbg !743
  %321 = add i32 %319, %320, !dbg !743
  %322 = sext i32 %321 to i64, !dbg !744
  %323 = icmp ne i32 %134, 0, !dbg !746
  %324 = and i32 %317, 1, !dbg !739
  %325 = icmp eq i32 %324, 0, !dbg !747
  %326 = or i1 %323, %325, !dbg !748
  br i1 %326, label %327, label %329, !dbg !748

; <label>:327:                                    ; preds = %295
  %328 = bitcast %struct.raxNode** %21 to i8*, !dbg !749
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %328) #7, !dbg !749
  br label %334, !dbg !753

; <label>:329:                                    ; preds = %295
  %330 = and i32 %317, 2, !dbg !754
  %331 = icmp eq i32 %330, 0, !dbg !755
  %332 = bitcast %struct.raxNode** %21 to i8*, !dbg !749
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %332) #7, !dbg !749
  %333 = select i1 %331, i64 24, i64 16, !dbg !753
  br label %334, !dbg !753

; <label>:334:                                    ; preds = %329, %327
  %335 = phi i8* [ %328, %327 ], [ %332, %329 ]
  %336 = phi i64 [ 16, %327 ], [ %333, %329 ]
  %337 = call i8* @zmalloc(i64 %336) #6, !dbg !756
  %338 = icmp eq i8* %337, null, !dbg !757
  br i1 %338, label %342, label %339, !dbg !758

; <label>:339:                                    ; preds = %334
  %340 = bitcast i8* %337 to %struct.raxNode*, !dbg !756
  %341 = bitcast i8* %337 to i32*, !dbg !760
  store i32 8, i32* %341, align 4, !dbg !761
  br label %342, !dbg !762

; <label>:342:                                    ; preds = %334, %339
  %343 = phi %struct.raxNode* [ %340, %339 ], [ null, %334 ], !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !764
  store %struct.raxNode* %343, %struct.raxNode** %21, align 8, !dbg !765, !tbaa !165
  %344 = bitcast %struct.raxNode** %22 to i8*, !dbg !766
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %344) #7, !dbg !766
  store %struct.raxNode* null, %struct.raxNode** %22, align 8, !dbg !767, !tbaa !165
  %345 = bitcast %struct.raxNode** %23 to i8*, !dbg !768
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %345) #7, !dbg !768
  store %struct.raxNode* null, %struct.raxNode** %23, align 8, !dbg !769, !tbaa !165
  br i1 %323, label %346, label %359, !dbg !770

; <label>:346:                                    ; preds = %342
  %347 = add nsw i64 %318, 4, !dbg !771
  %348 = sub nsw i64 4, %318, !dbg !774
  %349 = and i64 %348, 7, !dbg !774
  %350 = add nsw i64 %347, %349, !dbg !775
  %351 = load i32*, i32** %303, align 8, !dbg !777, !tbaa !165
  %352 = load i32, i32* %351, align 4, !dbg !779
  %353 = and i32 %352, 3, !dbg !780
  %354 = icmp eq i32 %353, 1, !dbg !780
  %355 = select i1 %354, i64 16, i64 8, !dbg !780
  %356 = add nsw i64 %350, %355, !dbg !780
  %357 = call i8* @zmalloc(i64 %356) #6, !dbg !781
  %358 = bitcast %struct.raxNode** %22 to i8**, !dbg !782
  store i8* %357, i8** %358, align 8, !dbg !782, !tbaa !165
  br label %359, !dbg !783

; <label>:359:                                    ; preds = %346, %342
  %360 = icmp ne i32 %321, 0, !dbg !784
  br i1 %360, label %361, label %368, !dbg !786

; <label>:361:                                    ; preds = %359
  %362 = sub nsw i64 4, %322, !dbg !787
  %363 = and i64 %362, 7, !dbg !787
  %364 = add nsw i64 %322, 12, !dbg !789
  %365 = add nsw i64 %364, %363, !dbg !790
  %366 = call i8* @zmalloc(i64 %365) #6, !dbg !791
  %367 = bitcast %struct.raxNode** %23 to i8**, !dbg !792
  store i8* %366, i8** %367, align 8, !dbg !792, !tbaa !165
  br label %368, !dbg !793

; <label>:368:                                    ; preds = %361, %359
  %369 = load %struct.raxNode*, %struct.raxNode** %21, align 8, !dbg !794, !tbaa !165
  %370 = icmp eq %struct.raxNode* %369, null, !dbg !796
  %371 = bitcast %struct.raxNode* %369 to i8*, !dbg !797
  br i1 %370, label %380, label %372, !dbg !797

; <label>:372:                                    ; preds = %368
  %373 = load %struct.raxNode*, %struct.raxNode** %22, align 8, !dbg !798
  %374 = icmp eq %struct.raxNode* %373, null, !dbg !799
  %375 = and i1 %323, %374, !dbg !800
  br i1 %375, label %380, label %376, !dbg !800

; <label>:376:                                    ; preds = %372
  %377 = load %struct.raxNode*, %struct.raxNode** %23, align 8, !dbg !801
  %378 = icmp eq %struct.raxNode* %377, null, !dbg !802
  %379 = and i1 %360, %378, !dbg !803
  br i1 %379, label %380, label %386, !dbg !803

; <label>:380:                                    ; preds = %376, %372, %368
  call void @zfree(i8* %371) #6, !dbg !804
  %381 = bitcast %struct.raxNode** %22 to i8**, !dbg !806
  %382 = load i8*, i8** %381, align 8, !dbg !806, !tbaa !165
  call void @zfree(i8* %382) #6, !dbg !807
  %383 = bitcast %struct.raxNode** %23 to i8**, !dbg !808
  %384 = load i8*, i8** %383, align 8, !dbg !808, !tbaa !165
  call void @zfree(i8* %384) #6, !dbg !809
  %385 = call i32* @__errno() #6, !dbg !810
  store i32 12, i32* %385, align 4, !dbg !811, !tbaa !48
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %345) #7, !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %344) #7, !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %335) #7, !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %314) #7, !dbg !812
  br label %1134

; <label>:386:                                    ; preds = %376
  %387 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !813, !tbaa !165
  %388 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %387, i64 0, i32 1, i64 %318, !dbg !813
  %389 = load i8, i8* %388, align 1, !dbg !813, !tbaa !267
  %390 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %369, i64 0, i32 1, i64 0, !dbg !814
  store i8 %389, i8* %390, align 4, !dbg !815, !tbaa !267
  %391 = icmp eq i32 %134, 0, !dbg !816
  br i1 %391, label %392, label %456, !dbg !817

; <label>:392:                                    ; preds = %386
  %393 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !818, !tbaa !165
  %394 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %393, i64 0, i32 0, !dbg !819
  %395 = load i32, i32* %394, align 4, !dbg !819
  %396 = and i32 %395, 1, !dbg !819
  %397 = icmp eq i32 %396, 0, !dbg !818
  br i1 %397, label %453, label %398, !dbg !820

; <label>:398:                                    ; preds = %392
  %399 = and i32 %395, 2, !dbg !823
  %400 = icmp eq i32 %399, 0, !dbg !824
  br i1 %400, label %401, label %425, !dbg !825

; <label>:401:                                    ; preds = %398
  %402 = bitcast %struct.raxNode* %393 to i8*, !dbg !826
  %403 = lshr i32 %395, 3, !dbg !827
  %404 = add nuw nsw i32 %403, 4, !dbg !827
  %405 = sub nsw i32 4, %403, !dbg !827
  %406 = and i32 %405, 7, !dbg !827
  %407 = add nuw nsw i32 %404, %406, !dbg !827
  %408 = zext i32 %407 to i64, !dbg !827
  %409 = and i32 %395, 4, !dbg !827
  %410 = icmp eq i32 %409, 0, !dbg !827
  %411 = and i32 %395, -8, !dbg !827
  %412 = select i1 %410, i32 %411, i32 8, !dbg !827
  %413 = zext i32 %412 to i64, !dbg !827
  %414 = shl i32 %395, 2
  %415 = and i32 %414, 8
  %416 = xor i32 %415, 8
  %417 = zext i32 %416 to i64
  %418 = add nuw nsw i64 %417, %413, !dbg !827
  %419 = add nuw nsw i64 %418, %408, !dbg !827
  %420 = getelementptr inbounds i8, i8* %402, i64 %419, !dbg !828
  %421 = getelementptr inbounds i8, i8* %420, i64 -8, !dbg !829
  %422 = bitcast i8** %14 to i8*, !dbg !831
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %422) #7, !dbg !831
  %423 = call i8* @memcpy(i8* nonnull %422, i8* nonnull %421, i64 8) #6, !dbg !832
  %424 = load i8*, i8** %14, align 8, !dbg !833, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %422) #7, !dbg !835
  br label %425

; <label>:425:                                    ; preds = %398, %401
  %426 = phi i8* [ %424, %401 ], [ null, %398 ], !dbg !836
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  %427 = load %struct.raxNode*, %struct.raxNode** %21, align 8, !dbg !838, !tbaa !165
  %428 = bitcast i8** %13 to i8*, !dbg !839
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %428), !dbg !839
  store i8* %426, i8** %13, align 8, !tbaa !165
  %429 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %427, i64 0, i32 0, !dbg !842
  %430 = load i32, i32* %429, align 4, !dbg !843
  %431 = or i32 %430, 1, !dbg !843
  store i32 %431, i32* %429, align 4, !dbg !843
  %432 = icmp eq i8* %426, null, !dbg !844
  br i1 %432, label %450, label %433, !dbg !845

; <label>:433:                                    ; preds = %425
  %434 = and i32 %431, -3, !dbg !846
  store i32 %434, i32* %429, align 4, !dbg !847
  %435 = bitcast %struct.raxNode* %427 to i8*, !dbg !848
  %436 = lshr i32 %430, 3, !dbg !849
  %437 = add nuw nsw i32 %436, 4, !dbg !849
  %438 = sub nsw i32 4, %436, !dbg !849
  %439 = and i32 %438, 7, !dbg !849
  %440 = add nuw nsw i32 %437, %439, !dbg !849
  %441 = zext i32 %440 to i64, !dbg !849
  %442 = and i32 %430, 4, !dbg !849
  %443 = icmp eq i32 %442, 0, !dbg !849
  %444 = and i32 %430, -8, !dbg !849
  %445 = select i1 %443, i32 %444, i32 8, !dbg !849
  %446 = zext i32 %445 to i64, !dbg !849
  %447 = add nuw nsw i64 %441, %446, !dbg !849
  %448 = getelementptr inbounds i8, i8* %435, i64 %447, !dbg !850
  %449 = call i8* @memcpy(i8* nonnull %448, i8* nonnull %428, i64 8) #6, !dbg !852
  br label %452, !dbg !853

; <label>:450:                                    ; preds = %425
  %451 = or i32 %430, 3, !dbg !854
  store i32 %451, i32* %429, align 4, !dbg !854
  br label %452

; <label>:452:                                    ; preds = %433, %450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !855
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %428), !dbg !855
  br label %453, !dbg !856

; <label>:453:                                    ; preds = %392, %452
  %454 = bitcast %struct.raxNode** %125 to i8*, !dbg !857
  %455 = call i8* @memcpy(i8* %454, i8* nonnull %335, i64 8) #6, !dbg !858
  br label %583, !dbg !859

; <label>:456:                                    ; preds = %386
  %457 = bitcast %struct.raxNode** %22 to i32**, !dbg !860
  %458 = load i32*, i32** %457, align 8, !dbg !860, !tbaa !165
  %459 = load i32, i32* %458, align 4, !dbg !861
  %460 = shl i32 %134, 3, !dbg !861
  %461 = and i32 %459, 7, !dbg !861
  %462 = or i32 %461, %460, !dbg !861
  store i32 %462, i32* %458, align 4, !dbg !861
  %463 = load %struct.raxNode*, %struct.raxNode** %22, align 8, !dbg !862, !tbaa !165
  %464 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %463, i64 0, i32 1, i64 0, !dbg !862
  %465 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !863, !tbaa !165
  %466 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %465, i64 0, i32 1, i64 0, !dbg !863
  %467 = call i8* @memcpy(i8* nonnull %464, i8* nonnull %466, i64 %318) #6, !dbg !864
  %468 = icmp sgt i32 %134, 1, !dbg !865
  %469 = zext i1 %468 to i32, !dbg !866
  %470 = load i32*, i32** %457, align 8, !dbg !867, !tbaa !165
  %471 = load i32, i32* %470, align 4, !dbg !868
  %472 = shl nuw nsw i32 %469, 2, !dbg !868
  %473 = and i32 %471, -5, !dbg !868
  %474 = or i32 %473, %472, !dbg !868
  store i32 %474, i32* %470, align 4, !dbg !868
  %475 = load i32*, i32** %303, align 8, !dbg !869, !tbaa !165
  %476 = load i32, i32* %475, align 4, !dbg !870
  %477 = and i32 %476, 1, !dbg !870
  %478 = load i32*, i32** %457, align 8, !dbg !871, !tbaa !165
  %479 = load i32, i32* %478, align 4, !dbg !872
  %480 = and i32 %479, -2, !dbg !872
  %481 = or i32 %480, %477, !dbg !872
  store i32 %481, i32* %478, align 4, !dbg !872
  %482 = load i32*, i32** %303, align 8, !dbg !873, !tbaa !165
  %483 = load i32, i32* %482, align 4, !dbg !874
  %484 = and i32 %483, 2, !dbg !874
  %485 = load i32*, i32** %457, align 8, !dbg !875, !tbaa !165
  %486 = load i32, i32* %485, align 4, !dbg !876
  %487 = and i32 %486, -3, !dbg !876
  %488 = or i32 %487, %484, !dbg !876
  store i32 %488, i32* %485, align 4, !dbg !876
  %489 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !877, !tbaa !165
  %490 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %489, i64 0, i32 0, !dbg !878
  %491 = load i32, i32* %490, align 4, !dbg !878
  %492 = and i32 %491, 3, !dbg !879
  %493 = icmp eq i32 %492, 1, !dbg !879
  br i1 %493, label %494, label %544, !dbg !879

; <label>:494:                                    ; preds = %456
  %495 = bitcast %struct.raxNode* %489 to i8*, !dbg !882
  %496 = lshr i32 %491, 3, !dbg !883
  %497 = add nuw nsw i32 %496, 4, !dbg !883
  %498 = sub nsw i32 4, %496, !dbg !883
  %499 = and i32 %498, 7, !dbg !883
  %500 = add nuw nsw i32 %497, %499, !dbg !883
  %501 = zext i32 %500 to i64, !dbg !883
  %502 = and i32 %491, 4, !dbg !883
  %503 = icmp eq i32 %502, 0, !dbg !883
  %504 = and i32 %491, -8, !dbg !883
  %505 = select i1 %503, i32 %504, i32 8, !dbg !883
  %506 = zext i32 %505 to i64, !dbg !883
  %507 = shl i32 %491, 2
  %508 = and i32 %507, 8
  %509 = xor i32 %508, 8
  %510 = zext i32 %509 to i64
  %511 = add nuw nsw i64 %510, %506, !dbg !883
  %512 = add nuw nsw i64 %511, %501, !dbg !883
  %513 = getelementptr inbounds i8, i8* %495, i64 %512, !dbg !884
  %514 = getelementptr inbounds i8, i8* %513, i64 -8, !dbg !885
  %515 = bitcast i8** %12 to i8*, !dbg !887
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %515) #7, !dbg !887
  %516 = call i8* @memcpy(i8* nonnull %515, i8* nonnull %514, i64 8) #6, !dbg !888
  %517 = load i8*, i8** %12, align 8, !dbg !889, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %515) #7, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  %518 = load %struct.raxNode*, %struct.raxNode** %22, align 8, !dbg !893, !tbaa !165
  %519 = bitcast i8** %11 to i8*, !dbg !894
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %519), !dbg !894
  store i8* %517, i8** %11, align 8, !tbaa !165
  %520 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %518, i64 0, i32 0, !dbg !897
  %521 = load i32, i32* %520, align 4, !dbg !898
  %522 = or i32 %521, 1, !dbg !898
  store i32 %522, i32* %520, align 4, !dbg !898
  %523 = icmp eq i8* %517, null, !dbg !899
  br i1 %523, label %541, label %524, !dbg !900

; <label>:524:                                    ; preds = %494
  %525 = and i32 %522, -3, !dbg !901
  store i32 %525, i32* %520, align 4, !dbg !902
  %526 = bitcast %struct.raxNode* %518 to i8*, !dbg !903
  %527 = lshr i32 %521, 3, !dbg !904
  %528 = add nuw nsw i32 %527, 4, !dbg !904
  %529 = sub nsw i32 4, %527, !dbg !904
  %530 = and i32 %529, 7, !dbg !904
  %531 = add nuw nsw i32 %528, %530, !dbg !904
  %532 = zext i32 %531 to i64, !dbg !904
  %533 = and i32 %521, 4, !dbg !904
  %534 = icmp eq i32 %533, 0, !dbg !904
  %535 = and i32 %521, -8, !dbg !904
  %536 = select i1 %534, i32 %535, i32 8, !dbg !904
  %537 = zext i32 %536 to i64, !dbg !904
  %538 = add nuw nsw i64 %532, %537, !dbg !904
  %539 = getelementptr inbounds i8, i8* %526, i64 %538, !dbg !905
  %540 = call i8* @memcpy(i8* nonnull %539, i8* nonnull %519, i64 8) #6, !dbg !907
  br label %543, !dbg !908

; <label>:541:                                    ; preds = %494
  %542 = or i32 %521, 3, !dbg !909
  store i32 %542, i32* %520, align 4, !dbg !909
  br label %543

; <label>:543:                                    ; preds = %524, %541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !910
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %519), !dbg !910
  br label %544, !dbg !911

; <label>:544:                                    ; preds = %456, %543
  %545 = load %struct.raxNode*, %struct.raxNode** %22, align 8, !dbg !912, !tbaa !165
  %546 = bitcast %struct.raxNode* %545 to i8*, !dbg !912
  %547 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %545, i64 0, i32 0, !dbg !912
  %548 = load i32, i32* %547, align 4, !dbg !912
  %549 = lshr i32 %548, 3, !dbg !912
  %550 = add nuw nsw i32 %549, 4, !dbg !912
  %551 = sub nsw i32 4, %549, !dbg !912
  %552 = and i32 %551, 7, !dbg !912
  %553 = add nuw nsw i32 %550, %552, !dbg !912
  %554 = zext i32 %553 to i64, !dbg !912
  %555 = and i32 %548, 4, !dbg !912
  %556 = icmp eq i32 %555, 0, !dbg !912
  %557 = and i32 %548, -8, !dbg !912
  %558 = select i1 %556, i32 %557, i32 8, !dbg !912
  %559 = zext i32 %558 to i64, !dbg !912
  %560 = add nuw nsw i64 %554, %559, !dbg !912
  %561 = and i32 %548, 1, !dbg !912
  %562 = icmp eq i32 %561, 0, !dbg !912
  br i1 %562, label %570, label %563, !dbg !912

; <label>:563:                                    ; preds = %544
  %564 = shl i32 %548, 2
  %565 = and i32 %564, 8
  %566 = xor i32 %565, 8
  %567 = zext i32 %566 to i64
  %568 = add nuw nsw i64 %560, %567, !dbg !912
  %569 = sub nsw i64 0, %567
  br label %570

; <label>:570:                                    ; preds = %544, %563
  %571 = phi i64 [ %568, %563 ], [ %560, %544 ]
  %572 = phi i64 [ %569, %563 ], [ 0, %544 ]
  %573 = getelementptr inbounds i8, i8* %546, i64 %571, !dbg !912
  %574 = getelementptr inbounds i8, i8* %573, i64 -8, !dbg !912
  %575 = getelementptr inbounds i8, i8* %574, i64 %572, !dbg !912
  %576 = call i8* @memcpy(i8* nonnull %575, i8* nonnull %335, i64 8) #6, !dbg !914
  %577 = bitcast %struct.raxNode** %125 to i8*, !dbg !915
  %578 = call i8* @memcpy(i8* %577, i8* nonnull %344, i64 8) #6, !dbg !916
  %579 = ptrtoint i8* %575 to i64, !dbg !917
  %580 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 2, !dbg !918
  %581 = load i64, i64* %580, align 8, !dbg !919, !tbaa !920
  %582 = add i64 %581, 1, !dbg !919
  store i64 %582, i64* %580, align 8, !dbg !919, !tbaa !920
  br label %583

; <label>:583:                                    ; preds = %570, %453
  %584 = phi i64 [ %129, %453 ], [ %579, %570 ], !dbg !921
  br i1 %360, label %585, label %646, !dbg !922

; <label>:585:                                    ; preds = %583
  %586 = bitcast %struct.raxNode** %23 to i32**, !dbg !923
  %587 = load i32*, i32** %586, align 8, !dbg !923, !tbaa !165
  %588 = load i32, i32* %587, align 4, !dbg !924
  %589 = and i32 %588, -2, !dbg !924
  store i32 %589, i32* %587, align 4, !dbg !924
  %590 = load i32*, i32** %586, align 8, !dbg !925, !tbaa !165
  %591 = load i32, i32* %590, align 4, !dbg !926
  %592 = and i32 %591, -3, !dbg !926
  store i32 %592, i32* %590, align 4, !dbg !926
  %593 = load i32*, i32** %586, align 8, !dbg !927, !tbaa !165
  %594 = load i32, i32* %593, align 4, !dbg !928
  %595 = shl i32 %321, 3, !dbg !928
  %596 = and i32 %594, 7, !dbg !928
  %597 = or i32 %596, %595, !dbg !928
  store i32 %597, i32* %593, align 4, !dbg !928
  %598 = icmp ne i32 %321, 1, !dbg !929
  %599 = zext i1 %598 to i32, !dbg !929
  %600 = load i32*, i32** %586, align 8, !dbg !930, !tbaa !165
  %601 = load i32, i32* %600, align 4, !dbg !931
  %602 = shl nuw nsw i32 %599, 2, !dbg !931
  %603 = and i32 %601, -5, !dbg !931
  %604 = or i32 %603, %602, !dbg !931
  store i32 %604, i32* %600, align 4, !dbg !931
  %605 = load %struct.raxNode*, %struct.raxNode** %23, align 8, !dbg !932, !tbaa !165
  %606 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %605, i64 0, i32 1, i64 0, !dbg !932
  %607 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !933, !tbaa !165
  %608 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %607, i64 0, i32 1, i64 %318, !dbg !934
  %609 = getelementptr inbounds i8, i8* %608, i64 1, !dbg !935
  %610 = call i8* @memcpy(i8* nonnull %606, i8* nonnull %609, i64 %322) #6, !dbg !936
  %611 = load %struct.raxNode*, %struct.raxNode** %23, align 8, !dbg !937, !tbaa !165
  %612 = bitcast %struct.raxNode* %611 to i8*, !dbg !937
  %613 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %611, i64 0, i32 0, !dbg !937
  %614 = load i32, i32* %613, align 4, !dbg !937
  %615 = lshr i32 %614, 3, !dbg !937
  %616 = add nuw nsw i32 %615, 4, !dbg !937
  %617 = sub nsw i32 4, %615, !dbg !937
  %618 = and i32 %617, 7, !dbg !937
  %619 = add nuw nsw i32 %616, %618, !dbg !937
  %620 = zext i32 %619 to i64, !dbg !937
  %621 = and i32 %614, 4, !dbg !937
  %622 = icmp eq i32 %621, 0, !dbg !937
  %623 = and i32 %614, -8, !dbg !937
  %624 = select i1 %622, i32 %623, i32 8, !dbg !937
  %625 = zext i32 %624 to i64, !dbg !937
  %626 = add nuw nsw i64 %620, %625, !dbg !937
  %627 = and i32 %614, 1, !dbg !937
  %628 = icmp eq i32 %627, 0, !dbg !937
  br i1 %628, label %636, label %629, !dbg !937

; <label>:629:                                    ; preds = %585
  %630 = shl i32 %614, 2
  %631 = and i32 %630, 8
  %632 = xor i32 %631, 8
  %633 = zext i32 %632 to i64
  %634 = add nuw nsw i64 %626, %633, !dbg !937
  %635 = sub nsw i64 0, %633
  br label %636

; <label>:636:                                    ; preds = %585, %629
  %637 = phi i64 [ %634, %629 ], [ %626, %585 ]
  %638 = phi i64 [ %635, %629 ], [ 0, %585 ]
  %639 = getelementptr inbounds i8, i8* %612, i64 %637, !dbg !937
  %640 = getelementptr inbounds i8, i8* %639, i64 -8, !dbg !937
  %641 = getelementptr inbounds i8, i8* %640, i64 %638, !dbg !937
  %642 = call i8* @memcpy(i8* nonnull %641, i8* nonnull %314, i64 8) #6, !dbg !939
  %643 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 2, !dbg !940
  %644 = load i64, i64* %643, align 8, !dbg !941, !tbaa !920
  %645 = add i64 %644, 1, !dbg !941
  store i64 %645, i64* %643, align 8, !dbg !941, !tbaa !920
  br label %650, !dbg !942

; <label>:646:                                    ; preds = %583
  %647 = bitcast %struct.raxNode** %20 to i64*, !dbg !943
  %648 = load i64, i64* %647, align 8, !dbg !943, !tbaa !165
  %649 = bitcast %struct.raxNode** %23 to i64*, !dbg !946
  store i64 %648, i64* %649, align 8, !dbg !946, !tbaa !165
  br label %650

; <label>:650:                                    ; preds = %646, %636
  %651 = load %struct.raxNode*, %struct.raxNode** %21, align 8, !dbg !947, !tbaa !165
  %652 = bitcast %struct.raxNode* %651 to i8*, !dbg !947
  %653 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %651, i64 0, i32 0, !dbg !947
  %654 = load i32, i32* %653, align 4, !dbg !947
  %655 = lshr i32 %654, 3, !dbg !947
  %656 = add nuw nsw i32 %655, 4, !dbg !947
  %657 = sub nsw i32 4, %655, !dbg !947
  %658 = and i32 %657, 7, !dbg !947
  %659 = add nuw nsw i32 %656, %658, !dbg !947
  %660 = zext i32 %659 to i64, !dbg !947
  %661 = and i32 %654, 4, !dbg !947
  %662 = icmp eq i32 %661, 0, !dbg !947
  %663 = and i32 %654, -8, !dbg !947
  %664 = select i1 %662, i32 %663, i32 8, !dbg !947
  %665 = zext i32 %664 to i64, !dbg !947
  %666 = add nuw nsw i64 %660, %665, !dbg !947
  %667 = and i32 %654, 1, !dbg !947
  %668 = icmp eq i32 %667, 0, !dbg !947
  br i1 %668, label %676, label %669, !dbg !947

; <label>:669:                                    ; preds = %650
  %670 = shl i32 %654, 2
  %671 = and i32 %670, 8
  %672 = xor i32 %671, 8
  %673 = zext i32 %672 to i64
  %674 = add nuw nsw i64 %666, %673, !dbg !947
  %675 = sub nsw i64 0, %673
  br label %676

; <label>:676:                                    ; preds = %650, %669
  %677 = phi i64 [ %674, %669 ], [ %666, %650 ]
  %678 = phi i64 [ %675, %669 ], [ 0, %650 ]
  %679 = getelementptr inbounds i8, i8* %652, i64 %677, !dbg !947
  %680 = getelementptr inbounds i8, i8* %679, i64 -8, !dbg !947
  %681 = getelementptr inbounds i8, i8* %680, i64 %678, !dbg !947
  %682 = call i8* @memcpy(i8* nonnull %681, i8* nonnull %345, i64 8) #6, !dbg !949
  %683 = bitcast %struct.raxNode** %19 to i8**, !dbg !950
  %684 = load i8*, i8** %683, align 8, !dbg !950, !tbaa !165
  call void @zfree(i8* %684) #6, !dbg !951
  %685 = bitcast %struct.raxNode** %21 to i64*, !dbg !952
  %686 = load i64, i64* %685, align 8, !dbg !952, !tbaa !165
  store i64 %686, i64* %128, align 8, !dbg !953, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %345) #7, !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %344) #7, !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %335) #7, !dbg !812
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %314) #7, !dbg !812
  %687 = inttoptr i64 %686 to %struct.raxNode*
  br label %966

; <label>:688:                                    ; preds = %138
  %689 = bitcast %struct.raxNode** %19 to i32**, !dbg !620
  %690 = lshr i32 %139, 3, !dbg !954
  %691 = sub nsw i32 %690, %134, !dbg !955
  %692 = sext i32 %691 to i64, !dbg !956
  %693 = sub nsw i64 4, %692, !dbg !958
  %694 = and i64 %693, 7, !dbg !958
  %695 = icmp eq i8* %3, null, !dbg !960
  %696 = select i1 %695, i64 12, i64 20, !dbg !962
  %697 = add nsw i64 %696, %692, !dbg !963
  %698 = add nsw i64 %697, %694, !dbg !964
  %699 = bitcast %struct.raxNode** %24 to i8*, !dbg !965
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %699) #7, !dbg !965
  %700 = call i8* @zmalloc(i64 %698) #6, !dbg !966
  %701 = bitcast %struct.raxNode** %24 to i8**, !dbg !967
  store i8* %700, i8** %701, align 8, !dbg !967, !tbaa !165
  %702 = sext i32 %134 to i64, !dbg !968
  %703 = add nsw i64 %702, 4, !dbg !969
  %704 = sub i32 4, %134, !dbg !970
  %705 = and i32 %704, 7, !dbg !970
  %706 = zext i32 %705 to i64, !dbg !970
  %707 = add nsw i64 %703, %706, !dbg !971
  %708 = load i32*, i32** %689, align 8, !dbg !972, !tbaa !165
  %709 = load i32, i32* %708, align 4, !dbg !974
  %710 = and i32 %709, 3, !dbg !975
  %711 = icmp eq i32 %710, 1, !dbg !975
  %712 = select i1 %711, i64 16, i64 8, !dbg !975
  %713 = add nsw i64 %707, %712, !dbg !975
  %714 = bitcast %struct.raxNode** %25 to i8*, !dbg !976
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %714) #7, !dbg !976
  %715 = call i8* @zmalloc(i64 %713) #6, !dbg !977
  %716 = bitcast %struct.raxNode** %25 to i8**, !dbg !978
  store i8* %715, i8** %716, align 8, !dbg !978, !tbaa !165
  %717 = icmp eq i8* %700, null, !dbg !979
  %718 = icmp eq i8* %715, null, !dbg !981
  %719 = or i1 %718, %717, !dbg !982
  %720 = bitcast i8* %700 to i32*, !dbg !982
  br i1 %719, label %721, label %724, !dbg !982

; <label>:721:                                    ; preds = %688
  call void @zfree(i8* %700) #6, !dbg !983
  %722 = load i8*, i8** %716, align 8, !dbg !985, !tbaa !165
  call void @zfree(i8* %722) #6, !dbg !986
  %723 = call i32* @__errno() #6, !dbg !987
  store i32 12, i32* %723, align 4, !dbg !988, !tbaa !48
  br label %964, !dbg !989

; <label>:724:                                    ; preds = %688
  %725 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !990, !tbaa !165
  %726 = bitcast %struct.raxNode* %725 to i8*, !dbg !990
  %727 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %725, i64 0, i32 0, !dbg !990
  %728 = load i32, i32* %727, align 4, !dbg !990
  %729 = lshr i32 %728, 3, !dbg !990
  %730 = add nuw nsw i32 %729, 4, !dbg !990
  %731 = sub nsw i32 4, %729, !dbg !990
  %732 = and i32 %731, 7, !dbg !990
  %733 = add nuw nsw i32 %730, %732, !dbg !990
  %734 = zext i32 %733 to i64, !dbg !990
  %735 = and i32 %728, 4, !dbg !990
  %736 = icmp eq i32 %735, 0, !dbg !990
  %737 = and i32 %728, -8, !dbg !990
  %738 = select i1 %736, i32 %737, i32 8, !dbg !990
  %739 = zext i32 %738 to i64, !dbg !990
  %740 = add nuw nsw i64 %734, %739, !dbg !990
  %741 = and i32 %728, 1, !dbg !990
  %742 = icmp eq i32 %741, 0, !dbg !990
  br i1 %742, label %750, label %743, !dbg !990

; <label>:743:                                    ; preds = %724
  %744 = shl i32 %728, 2
  %745 = and i32 %744, 8
  %746 = xor i32 %745, 8
  %747 = zext i32 %746 to i64
  %748 = add nuw nsw i64 %740, %747, !dbg !990
  %749 = sub nsw i64 0, %747
  br label %750

; <label>:750:                                    ; preds = %724, %743
  %751 = phi i64 [ %748, %743 ], [ %740, %724 ]
  %752 = phi i64 [ %749, %743 ], [ 0, %724 ]
  %753 = getelementptr inbounds i8, i8* %726, i64 %751, !dbg !990
  %754 = getelementptr inbounds i8, i8* %753, i64 -8, !dbg !990
  %755 = getelementptr inbounds i8, i8* %754, i64 %752, !dbg !990
  %756 = bitcast %struct.raxNode** %26 to i8*, !dbg !992
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %756) #7, !dbg !992
  %757 = call i8* @memcpy(i8* nonnull %756, i8* nonnull %755, i64 8) #6, !dbg !993
  %758 = bitcast %struct.raxNode** %24 to i32**, !dbg !994
  %759 = load i32, i32* %720, align 4, !dbg !995
  %760 = shl i32 %691, 3, !dbg !995
  %761 = and i32 %759, 7, !dbg !995
  %762 = or i32 %761, %760, !dbg !995
  store i32 %762, i32* %720, align 4, !dbg !995
  %763 = icmp ugt i32 %691, 1, !dbg !996
  %764 = zext i1 %763 to i32, !dbg !996
  %765 = load i32*, i32** %758, align 8, !dbg !997, !tbaa !165
  %766 = load i32, i32* %765, align 4, !dbg !998
  %767 = shl nuw nsw i32 %764, 2, !dbg !998
  %768 = and i32 %766, -5, !dbg !998
  %769 = or i32 %768, %767, !dbg !998
  store i32 %769, i32* %765, align 4, !dbg !998
  %770 = load i32*, i32** %758, align 8, !dbg !999, !tbaa !165
  %771 = load i32, i32* %770, align 4, !dbg !1000
  %772 = or i32 %771, 1, !dbg !1000
  store i32 %772, i32* %770, align 4, !dbg !1000
  %773 = load i32*, i32** %758, align 8, !dbg !1001, !tbaa !165
  %774 = load i32, i32* %773, align 4, !dbg !1002
  %775 = and i32 %774, -3, !dbg !1002
  store i32 %775, i32* %773, align 4, !dbg !1002
  %776 = load %struct.raxNode*, %struct.raxNode** %24, align 8, !dbg !1003, !tbaa !165
  %777 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %776, i64 0, i32 1, i64 0, !dbg !1003
  %778 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !1004, !tbaa !165
  %779 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %778, i64 0, i32 1, i64 %702, !dbg !1005
  %780 = call i8* @memcpy(i8* nonnull %777, i8* nonnull %779, i64 %692) #6, !dbg !1006
  %781 = bitcast i8** %10 to i8*, !dbg !1007
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %781), !dbg !1007
  store i8* %3, i8** %10, align 8, !tbaa !165
  %782 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %776, i64 0, i32 0, !dbg !1010
  %783 = load i32, i32* %782, align 4, !dbg !1011
  %784 = or i32 %783, 1, !dbg !1011
  store i32 %784, i32* %782, align 4, !dbg !1011
  br i1 %695, label %802, label %785, !dbg !1012

; <label>:785:                                    ; preds = %750
  %786 = and i32 %784, -3, !dbg !1013
  store i32 %786, i32* %782, align 4, !dbg !1014
  %787 = bitcast %struct.raxNode* %776 to i8*, !dbg !1015
  %788 = lshr i32 %783, 3, !dbg !1016
  %789 = add nuw nsw i32 %788, 4, !dbg !1016
  %790 = sub nsw i32 4, %788, !dbg !1016
  %791 = and i32 %790, 7, !dbg !1016
  %792 = add nuw nsw i32 %789, %791, !dbg !1016
  %793 = zext i32 %792 to i64, !dbg !1016
  %794 = and i32 %783, 4, !dbg !1016
  %795 = icmp eq i32 %794, 0, !dbg !1016
  %796 = and i32 %783, -8, !dbg !1016
  %797 = select i1 %795, i32 %796, i32 8, !dbg !1016
  %798 = zext i32 %797 to i64, !dbg !1016
  %799 = add nuw nsw i64 %793, %798, !dbg !1016
  %800 = getelementptr inbounds i8, i8* %787, i64 %799, !dbg !1017
  %801 = call i8* @memcpy(i8* nonnull %800, i8* nonnull %781, i64 8) #6, !dbg !1019
  br label %804, !dbg !1020

; <label>:802:                                    ; preds = %750
  %803 = or i32 %783, 3, !dbg !1021
  store i32 %803, i32* %782, align 4, !dbg !1021
  br label %804

; <label>:804:                                    ; preds = %785, %802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %781), !dbg !1022
  %805 = load %struct.raxNode*, %struct.raxNode** %24, align 8, !dbg !1023, !tbaa !165
  %806 = bitcast %struct.raxNode* %805 to i8*, !dbg !1023
  %807 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %805, i64 0, i32 0, !dbg !1023
  %808 = load i32, i32* %807, align 4, !dbg !1023
  %809 = lshr i32 %808, 3, !dbg !1023
  %810 = add nuw nsw i32 %809, 4, !dbg !1023
  %811 = sub nsw i32 4, %809, !dbg !1023
  %812 = and i32 %811, 7, !dbg !1023
  %813 = add nuw nsw i32 %810, %812, !dbg !1023
  %814 = zext i32 %813 to i64, !dbg !1023
  %815 = and i32 %808, 4, !dbg !1023
  %816 = icmp eq i32 %815, 0, !dbg !1023
  %817 = and i32 %808, -8, !dbg !1023
  %818 = select i1 %816, i32 %817, i32 8, !dbg !1023
  %819 = zext i32 %818 to i64, !dbg !1023
  %820 = add nuw nsw i64 %814, %819, !dbg !1023
  %821 = and i32 %808, 1, !dbg !1023
  %822 = icmp eq i32 %821, 0, !dbg !1023
  br i1 %822, label %830, label %823, !dbg !1023

; <label>:823:                                    ; preds = %804
  %824 = shl i32 %808, 2
  %825 = and i32 %824, 8
  %826 = xor i32 %825, 8
  %827 = zext i32 %826 to i64
  %828 = add nuw nsw i64 %820, %827, !dbg !1023
  %829 = sub nsw i64 0, %827
  br label %830

; <label>:830:                                    ; preds = %804, %823
  %831 = phi i64 [ %828, %823 ], [ %820, %804 ]
  %832 = phi i64 [ %829, %823 ], [ 0, %804 ]
  %833 = getelementptr inbounds i8, i8* %806, i64 %831, !dbg !1023
  %834 = getelementptr inbounds i8, i8* %833, i64 -8, !dbg !1023
  %835 = getelementptr inbounds i8, i8* %834, i64 %832, !dbg !1023
  %836 = call i8* @memcpy(i8* nonnull %835, i8* nonnull %756, i64 8) #6, !dbg !1025
  %837 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 2, !dbg !1026
  %838 = load i64, i64* %837, align 8, !dbg !1027, !tbaa !920
  %839 = add i64 %838, 1, !dbg !1027
  store i64 %839, i64* %837, align 8, !dbg !1027, !tbaa !920
  %840 = bitcast %struct.raxNode** %25 to i32**, !dbg !1028
  %841 = load i32*, i32** %840, align 8, !dbg !1028, !tbaa !165
  %842 = load i32, i32* %841, align 4, !dbg !1029
  %843 = shl i32 %134, 3, !dbg !1029
  %844 = and i32 %842, 7, !dbg !1029
  %845 = or i32 %844, %843, !dbg !1029
  store i32 %845, i32* %841, align 4, !dbg !1029
  %846 = icmp sgt i32 %134, 1, !dbg !1030
  %847 = zext i1 %846 to i32, !dbg !1030
  %848 = load i32*, i32** %840, align 8, !dbg !1031, !tbaa !165
  %849 = load i32, i32* %848, align 4, !dbg !1032
  %850 = shl nuw nsw i32 %847, 2, !dbg !1032
  %851 = and i32 %849, -5, !dbg !1032
  %852 = or i32 %851, %850, !dbg !1032
  store i32 %852, i32* %848, align 4, !dbg !1032
  %853 = load i32*, i32** %840, align 8, !dbg !1033, !tbaa !165
  %854 = load i32, i32* %853, align 4, !dbg !1034
  %855 = and i32 %854, -2, !dbg !1034
  store i32 %855, i32* %853, align 4, !dbg !1034
  %856 = load i32*, i32** %840, align 8, !dbg !1035, !tbaa !165
  %857 = load i32, i32* %856, align 4, !dbg !1036
  %858 = and i32 %857, -3, !dbg !1036
  store i32 %858, i32* %856, align 4, !dbg !1036
  %859 = load %struct.raxNode*, %struct.raxNode** %25, align 8, !dbg !1037, !tbaa !165
  %860 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %859, i64 0, i32 1, i64 0, !dbg !1037
  %861 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !1038, !tbaa !165
  %862 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %861, i64 0, i32 1, i64 0, !dbg !1038
  %863 = call i8* @memcpy(i8* nonnull %860, i8* nonnull %862, i64 %702) #6, !dbg !1039
  %864 = bitcast %struct.raxNode** %125 to i8*, !dbg !1040
  %865 = call i8* @memcpy(i8* %864, i8* nonnull %714, i64 8) #6, !dbg !1041
  %866 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !1042, !tbaa !165
  %867 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %866, i64 0, i32 0, !dbg !1043
  %868 = load i32, i32* %867, align 4, !dbg !1043
  %869 = and i32 %868, 1, !dbg !1043
  %870 = icmp eq i32 %869, 0, !dbg !1042
  br i1 %870, label %926, label %871, !dbg !1044

; <label>:871:                                    ; preds = %830
  %872 = and i32 %868, 2, !dbg !1047
  %873 = icmp eq i32 %872, 0, !dbg !1048
  br i1 %873, label %874, label %898, !dbg !1049

; <label>:874:                                    ; preds = %871
  %875 = bitcast %struct.raxNode* %866 to i8*, !dbg !1050
  %876 = lshr i32 %868, 3, !dbg !1051
  %877 = add nuw nsw i32 %876, 4, !dbg !1051
  %878 = sub nsw i32 4, %876, !dbg !1051
  %879 = and i32 %878, 7, !dbg !1051
  %880 = add nuw nsw i32 %877, %879, !dbg !1051
  %881 = zext i32 %880 to i64, !dbg !1051
  %882 = and i32 %868, 4, !dbg !1051
  %883 = icmp eq i32 %882, 0, !dbg !1051
  %884 = and i32 %868, -8, !dbg !1051
  %885 = select i1 %883, i32 %884, i32 8, !dbg !1051
  %886 = zext i32 %885 to i64, !dbg !1051
  %887 = shl i32 %868, 2
  %888 = and i32 %887, 8
  %889 = xor i32 %888, 8
  %890 = zext i32 %889 to i64
  %891 = add nuw nsw i64 %890, %886, !dbg !1051
  %892 = add nuw nsw i64 %891, %881, !dbg !1051
  %893 = getelementptr inbounds i8, i8* %875, i64 %892, !dbg !1052
  %894 = getelementptr inbounds i8, i8* %893, i64 -8, !dbg !1053
  %895 = bitcast i8** %9 to i8*, !dbg !1055
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %895) #7, !dbg !1055
  %896 = call i8* @memcpy(i8* nonnull %895, i8* nonnull %894, i64 8) #6, !dbg !1056
  %897 = load i8*, i8** %9, align 8, !dbg !1057, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %895) #7, !dbg !1059
  br label %898

; <label>:898:                                    ; preds = %871, %874
  %899 = phi i8* [ %897, %874 ], [ null, %871 ], !dbg !1060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  %900 = load %struct.raxNode*, %struct.raxNode** %25, align 8, !dbg !1062, !tbaa !165
  %901 = bitcast i8** %8 to i8*, !dbg !1063
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %901), !dbg !1063
  store i8* %899, i8** %8, align 8, !tbaa !165
  %902 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %900, i64 0, i32 0, !dbg !1066
  %903 = load i32, i32* %902, align 4, !dbg !1067
  %904 = or i32 %903, 1, !dbg !1067
  store i32 %904, i32* %902, align 4, !dbg !1067
  %905 = icmp eq i8* %899, null, !dbg !1068
  br i1 %905, label %923, label %906, !dbg !1069

; <label>:906:                                    ; preds = %898
  %907 = and i32 %904, -3, !dbg !1070
  store i32 %907, i32* %902, align 4, !dbg !1071
  %908 = bitcast %struct.raxNode* %900 to i8*, !dbg !1072
  %909 = lshr i32 %903, 3, !dbg !1073
  %910 = add nuw nsw i32 %909, 4, !dbg !1073
  %911 = sub nsw i32 4, %909, !dbg !1073
  %912 = and i32 %911, 7, !dbg !1073
  %913 = add nuw nsw i32 %910, %912, !dbg !1073
  %914 = zext i32 %913 to i64, !dbg !1073
  %915 = and i32 %903, 4, !dbg !1073
  %916 = icmp eq i32 %915, 0, !dbg !1073
  %917 = and i32 %903, -8, !dbg !1073
  %918 = select i1 %916, i32 %917, i32 8, !dbg !1073
  %919 = zext i32 %918 to i64, !dbg !1073
  %920 = add nuw nsw i64 %914, %919, !dbg !1073
  %921 = getelementptr inbounds i8, i8* %908, i64 %920, !dbg !1074
  %922 = call i8* @memcpy(i8* nonnull %921, i8* nonnull %901, i64 8) #6, !dbg !1076
  br label %925, !dbg !1077

; <label>:923:                                    ; preds = %898
  %924 = or i32 %903, 3, !dbg !1078
  store i32 %924, i32* %902, align 4, !dbg !1078
  br label %925

; <label>:925:                                    ; preds = %906, %923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1079
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %901), !dbg !1079
  br label %926, !dbg !1080

; <label>:926:                                    ; preds = %830, %925
  %927 = load %struct.raxNode*, %struct.raxNode** %25, align 8, !dbg !1081, !tbaa !165
  %928 = bitcast %struct.raxNode* %927 to i8*, !dbg !1081
  %929 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %927, i64 0, i32 0, !dbg !1081
  %930 = load i32, i32* %929, align 4, !dbg !1081
  %931 = lshr i32 %930, 3, !dbg !1081
  %932 = add nuw nsw i32 %931, 4, !dbg !1081
  %933 = sub nsw i32 4, %931, !dbg !1081
  %934 = and i32 %933, 7, !dbg !1081
  %935 = add nuw nsw i32 %932, %934, !dbg !1081
  %936 = zext i32 %935 to i64, !dbg !1081
  %937 = and i32 %930, 4, !dbg !1081
  %938 = icmp eq i32 %937, 0, !dbg !1081
  %939 = and i32 %930, -8, !dbg !1081
  %940 = select i1 %938, i32 %939, i32 8, !dbg !1081
  %941 = zext i32 %940 to i64, !dbg !1081
  %942 = add nuw nsw i64 %936, %941, !dbg !1081
  %943 = and i32 %930, 1, !dbg !1081
  %944 = icmp eq i32 %943, 0, !dbg !1081
  br i1 %944, label %952, label %945, !dbg !1081

; <label>:945:                                    ; preds = %926
  %946 = shl i32 %930, 2
  %947 = and i32 %946, 8
  %948 = xor i32 %947, 8
  %949 = zext i32 %948 to i64
  %950 = add nuw nsw i64 %942, %949, !dbg !1081
  %951 = sub nsw i64 0, %949
  br label %952

; <label>:952:                                    ; preds = %926, %945
  %953 = phi i64 [ %950, %945 ], [ %942, %926 ]
  %954 = phi i64 [ %951, %945 ], [ 0, %926 ]
  %955 = getelementptr inbounds i8, i8* %928, i64 %953, !dbg !1081
  %956 = getelementptr inbounds i8, i8* %955, i64 -8, !dbg !1081
  %957 = getelementptr inbounds i8, i8* %956, i64 %954, !dbg !1081
  %958 = call i8* @memcpy(i8* nonnull %957, i8* nonnull %699, i64 8) #6, !dbg !1082
  %959 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 1, !dbg !1083
  %960 = load i64, i64* %959, align 8, !dbg !1084, !tbaa !728
  %961 = add i64 %960, 1, !dbg !1084
  store i64 %961, i64* %959, align 8, !dbg !1084, !tbaa !728
  %962 = bitcast %struct.raxNode** %19 to i8**, !dbg !1085
  %963 = load i8*, i8** %962, align 8, !dbg !1085, !tbaa !165
  call void @zfree(i8* %963) #6, !dbg !1086
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %756) #7, !dbg !1087
  br label %964

; <label>:964:                                    ; preds = %952, %721
  %965 = phi i32 [ 0, %721 ], [ 1, %952 ], !dbg !1088
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %714) #7, !dbg !1087
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %699) #7, !dbg !1087
  br label %1134

; <label>:966:                                    ; preds = %290, %676
  %967 = phi %struct.raxNode* [ %687, %676 ], [ %136, %290 ]
  %968 = phi i64 [ %584, %676 ], [ %129, %290 ], !dbg !606
  %969 = icmp ult i64 %127, %2, !dbg !1089
  br i1 %969, label %970, label %1043, !dbg !1090

; <label>:970:                                    ; preds = %966
  %971 = bitcast %struct.raxNode** %27 to i8*
  %972 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 2
  %973 = bitcast %struct.raxNode** %27 to i64*
  %974 = bitcast %struct.raxNode*** %28 to i8*
  %975 = bitcast %struct.raxNode*** %28 to i64*
  br label %976, !dbg !1090

; <label>:976:                                    ; preds = %970, %1032
  %977 = phi %struct.raxNode* [ %967, %970 ], [ %1040, %1032 ], !dbg !1091
  %978 = phi i64 [ %127, %970 ], [ %1035, %1032 ]
  %979 = phi i64 [ %968, %970 ], [ %1033, %1032 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %971) #7, !dbg !1092
  %980 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %977, i64 0, i32 0, !dbg !1093
  %981 = load i32, i32* %980, align 4, !dbg !1093
  %982 = icmp ult i32 %981, 8, !dbg !1094
  br i1 %982, label %983, label %1021, !dbg !1095

; <label>:983:                                    ; preds = %976
  %984 = sub i64 %2, %978, !dbg !1096
  %985 = icmp ugt i64 %984, 1, !dbg !1097
  br i1 %985, label %986, label %1021, !dbg !1098

; <label>:986:                                    ; preds = %983
  %987 = icmp ult i64 %984, 536870911, !dbg !1100
  %988 = select i1 %987, i64 %984, i64 536870911, !dbg !1100
  %989 = getelementptr inbounds i8, i8* %1, i64 %978, !dbg !1101
  %990 = call %struct.raxNode* @raxCompressNode(%struct.raxNode* %977, i8* %989, i64 %988, %struct.raxNode** nonnull %27) #9, !dbg !1103
  %991 = icmp eq %struct.raxNode* %990, null, !dbg !1105
  br i1 %991, label %1031, label %992, !dbg !1107

; <label>:992:                                    ; preds = %986
  store %struct.raxNode* %990, %struct.raxNode** %19, align 8, !dbg !1108, !tbaa !165
  %993 = inttoptr i64 %979 to i8*, !dbg !1109
  %994 = call i8* @memcpy(i8* %993, i8* nonnull %29, i64 8) #6, !dbg !1110
  %995 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !1111, !tbaa !165
  %996 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %995, i64 0, i32 0, !dbg !1111
  %997 = load i32, i32* %996, align 4, !dbg !1111
  %998 = lshr i32 %997, 3, !dbg !1111
  %999 = add nuw nsw i32 %998, 4, !dbg !1111
  %1000 = sub nsw i32 4, %998, !dbg !1111
  %1001 = and i32 %1000, 7, !dbg !1111
  %1002 = add nuw nsw i32 %999, %1001, !dbg !1111
  %1003 = zext i32 %1002 to i64, !dbg !1111
  %1004 = and i32 %997, 4, !dbg !1111
  %1005 = icmp eq i32 %1004, 0, !dbg !1111
  %1006 = and i32 %997, -8, !dbg !1111
  %1007 = select i1 %1005, i32 %1006, i32 8, !dbg !1111
  %1008 = zext i32 %1007 to i64, !dbg !1111
  %1009 = add nuw nsw i64 %1003, %1008, !dbg !1111
  %1010 = and i32 %997, 3, !dbg !1111
  %1011 = icmp eq i32 %1010, 1, !dbg !1111
  %1012 = zext i1 %1011 to i64, !dbg !1111
  %1013 = shl nuw nsw i64 %1012, 3, !dbg !1111
  %1014 = add nuw nsw i64 %1009, %1013, !dbg !1111
  %1015 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %995, i64 -2, !dbg !1111
  %1016 = bitcast %struct.raxNode* %1015 to i8*, !dbg !1111
  %1017 = getelementptr inbounds i8, i8* %1016, i64 %1014, !dbg !1111
  %1018 = select i1 %1011, i64 -8, i64 0, !dbg !1111
  %1019 = getelementptr inbounds i8, i8* %1017, i64 %1018, !dbg !1111
  %1020 = ptrtoint i8* %1019 to i64, !dbg !1112
  br label %1032

; <label>:1021:                                   ; preds = %983, %976
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %974) #7, !dbg !1113
  %1022 = getelementptr inbounds i8, i8* %1, i64 %978, !dbg !1114
  %1023 = load i8, i8* %1022, align 1, !dbg !1114, !tbaa !267
  %1024 = call %struct.raxNode* @raxAddChild(%struct.raxNode* %977, i8 zeroext %1023, %struct.raxNode** nonnull %27, %struct.raxNode*** nonnull %28) #9, !dbg !1116
  %1025 = icmp eq %struct.raxNode* %1024, null, !dbg !1118
  br i1 %1025, label %1030, label %1026, !dbg !1120

; <label>:1026:                                   ; preds = %1021
  store %struct.raxNode* %1024, %struct.raxNode** %19, align 8, !dbg !1121, !tbaa !165
  %1027 = inttoptr i64 %979 to i8*, !dbg !1122
  %1028 = call i8* @memcpy(i8* %1027, i8* nonnull %29, i64 8) #6, !dbg !1123
  %1029 = load i64, i64* %975, align 8, !dbg !1124, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %974) #7, !dbg !1125
  br label %1032

; <label>:1030:                                   ; preds = %1021
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %974) #7, !dbg !1125
  br label %1031

; <label>:1031:                                   ; preds = %986, %1030
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %971) #7, !dbg !1126
  br label %1115

; <label>:1032:                                   ; preds = %992, %1026
  %1033 = phi i64 [ %1020, %992 ], [ %1029, %1026 ], !dbg !606
  %1034 = phi i64 [ %988, %992 ], [ 1, %1026 ]
  %1035 = add i64 %1034, %978, !dbg !1127
  %1036 = load i64, i64* %972, align 8, !dbg !1128, !tbaa !920
  %1037 = add i64 %1036, 1, !dbg !1128
  store i64 %1037, i64* %972, align 8, !dbg !1128, !tbaa !920
  %1038 = load i64, i64* %973, align 8, !dbg !1129, !tbaa !165
  store i64 %1038, i64* %128, align 8, !dbg !1130, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %971) #7, !dbg !1126
  %1039 = icmp ult i64 %1035, %2, !dbg !1089
  %1040 = inttoptr i64 %1038 to %struct.raxNode*, !dbg !1090
  br i1 %1039, label %976, label %1041, !dbg !1090

; <label>:1041:                                   ; preds = %1032
  %1042 = inttoptr i64 %1038 to %struct.raxNode*, !dbg !1090
  br label %1043, !dbg !1131

; <label>:1043:                                   ; preds = %1041, %966
  %1044 = phi %struct.raxNode* [ %967, %966 ], [ %1042, %1041 ], !dbg !1133
  %1045 = phi i64 [ %968, %966 ], [ %1033, %1041 ], !dbg !606
  %1046 = phi i64 [ %127, %966 ], [ %1035, %1041 ], !dbg !1127
  %1047 = icmp eq i8* %3, null, !dbg !1131
  br i1 %1047, label %1077, label %1048, !dbg !1136

; <label>:1048:                                   ; preds = %1043
  %1049 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %1044, i64 0, i32 0, !dbg !1137
  %1050 = load i32, i32* %1049, align 4, !dbg !1137
  %1051 = lshr i32 %1050, 3, !dbg !1137
  %1052 = add nuw nsw i32 %1051, 4, !dbg !1137
  %1053 = sub nsw i32 4, %1051, !dbg !1137
  %1054 = and i32 %1053, 7, !dbg !1137
  %1055 = add nuw nsw i32 %1052, %1054, !dbg !1137
  %1056 = zext i32 %1055 to i64, !dbg !1137
  %1057 = and i32 %1050, 4, !dbg !1137
  %1058 = icmp eq i32 %1057, 0, !dbg !1137
  %1059 = and i32 %1050, -8, !dbg !1137
  %1060 = select i1 %1058, i32 %1059, i32 8, !dbg !1137
  %1061 = zext i32 %1060 to i64, !dbg !1137
  %1062 = and i32 %1050, 1, !dbg !1137
  %1063 = icmp eq i32 %1062, 0, !dbg !1137
  br i1 %1063, label %1069, label %1064, !dbg !1137

; <label>:1064:                                   ; preds = %1048
  %1065 = shl i32 %1050, 2
  %1066 = and i32 %1065, 8
  %1067 = xor i32 %1066, 8
  %1068 = zext i32 %1067 to i64
  br label %1069

; <label>:1069:                                   ; preds = %1064, %1048
  %1070 = phi i64 [ 0, %1048 ], [ %1068, %1064 ]
  %1071 = bitcast %struct.raxNode* %1044 to i8*, !dbg !1139
  %1072 = add nuw nsw i64 %1061, 8, !dbg !1137
  %1073 = add nuw nsw i64 %1072, %1056, !dbg !1137
  %1074 = add nuw nsw i64 %1073, %1070, !dbg !1140
  %1075 = call i8* @zrealloc(i8* %1071, i64 %1074) #6, !dbg !1141
  %1076 = bitcast i8* %1075 to %struct.raxNode*, !dbg !1141
  br label %1077

; <label>:1077:                                   ; preds = %1043, %1069
  %1078 = phi %struct.raxNode* [ %1076, %1069 ], [ %1044, %1043 ], !dbg !1142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1143
  %1079 = icmp eq %struct.raxNode* %1078, null, !dbg !1145
  br i1 %1079, label %1115, label %1080, !dbg !1147

; <label>:1080:                                   ; preds = %1077
  store %struct.raxNode* %1078, %struct.raxNode** %19, align 8, !dbg !1148, !tbaa !165
  %1081 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %1078, i64 0, i32 0, !dbg !1149
  %1082 = load i32, i32* %1081, align 4, !dbg !1149
  %1083 = and i32 %1082, 1, !dbg !1149
  %1084 = icmp eq i32 %1083, 0, !dbg !1151
  br i1 %1084, label %1085, label %1089, !dbg !1152

; <label>:1085:                                   ; preds = %1080
  %1086 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 1, !dbg !1153
  %1087 = load i64, i64* %1086, align 8, !dbg !1154, !tbaa !728
  %1088 = add i64 %1087, 1, !dbg !1154
  store i64 %1088, i64* %1086, align 8, !dbg !1154, !tbaa !728
  br label %1089, !dbg !1155

; <label>:1089:                                   ; preds = %1080, %1085
  %1090 = bitcast i8** %7 to i8*, !dbg !1156
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1090), !dbg !1156
  store i8* %3, i8** %7, align 8, !tbaa !165
  %1091 = load i32, i32* %1081, align 4, !dbg !1159
  %1092 = or i32 %1091, 1, !dbg !1159
  store i32 %1092, i32* %1081, align 4, !dbg !1159
  br i1 %1047, label %1110, label %1093, !dbg !1160

; <label>:1093:                                   ; preds = %1089
  %1094 = and i32 %1092, -3, !dbg !1161
  store i32 %1094, i32* %1081, align 4, !dbg !1162
  %1095 = bitcast %struct.raxNode* %1078 to i8*, !dbg !1163
  %1096 = lshr i32 %1091, 3, !dbg !1164
  %1097 = add nuw nsw i32 %1096, 4, !dbg !1164
  %1098 = sub nsw i32 4, %1096, !dbg !1164
  %1099 = and i32 %1098, 7, !dbg !1164
  %1100 = add nuw nsw i32 %1097, %1099, !dbg !1164
  %1101 = zext i32 %1100 to i64, !dbg !1164
  %1102 = and i32 %1091, 4, !dbg !1164
  %1103 = icmp eq i32 %1102, 0, !dbg !1164
  %1104 = and i32 %1091, -8, !dbg !1164
  %1105 = select i1 %1103, i32 %1104, i32 8, !dbg !1164
  %1106 = zext i32 %1105 to i64, !dbg !1164
  %1107 = add nuw nsw i64 %1101, %1106, !dbg !1164
  %1108 = getelementptr inbounds i8, i8* %1095, i64 %1107, !dbg !1165
  %1109 = call i8* @memcpy(i8* nonnull %1108, i8* nonnull %1090, i64 8) #6, !dbg !1167
  br label %1112, !dbg !1168

; <label>:1110:                                   ; preds = %1089
  %1111 = or i32 %1091, 3, !dbg !1169
  store i32 %1111, i32* %1081, align 4, !dbg !1169
  br label %1112

; <label>:1112:                                   ; preds = %1093, %1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1170
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1090), !dbg !1170
  %1113 = inttoptr i64 %1045 to i8*, !dbg !1171
  %1114 = call i8* @memcpy(i8* %1113, i8* nonnull %29, i64 8) #6, !dbg !1172
  br label %1134, !dbg !1173

; <label>:1115:                                   ; preds = %1077, %1031
  %1116 = phi i64 [ %978, %1031 ], [ %1046, %1077 ]
  %1117 = bitcast %struct.raxNode** %19 to i32**, !dbg !1174
  %1118 = load i32*, i32** %1117, align 8, !dbg !1174, !tbaa !165
  %1119 = load i32, i32* %1118, align 4, !dbg !1176
  %1120 = icmp ult i32 %1119, 8, !dbg !1177
  br i1 %1120, label %1121, label %1132, !dbg !1178

; <label>:1121:                                   ; preds = %1115
  %1122 = or i32 %1119, 2, !dbg !1179
  store i32 %1122, i32* %1118, align 4, !dbg !1179
  %1123 = load i32*, i32** %1117, align 8, !dbg !1181, !tbaa !165
  %1124 = load i32, i32* %1123, align 4, !dbg !1182
  %1125 = or i32 %1124, 1, !dbg !1182
  store i32 %1125, i32* %1123, align 4, !dbg !1182
  %1126 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 1, !dbg !1183
  %1127 = load i64, i64* %1126, align 8, !dbg !1184, !tbaa !728
  %1128 = add i64 %1127, 1, !dbg !1184
  store i64 %1128, i64* %1126, align 8, !dbg !1184, !tbaa !728
  %1129 = call i32 @raxRemove(%struct.rax* %0, i8* %1, i64 %1116, i8** null) #9, !dbg !1185
  %1130 = icmp eq i32 %1129, 0, !dbg !1185
  br i1 %1130, label %1131, label %1132, !dbg !1185

; <label>:1131:                                   ; preds = %1121
  call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 894, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.raxGenericInsert, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1185
  unreachable, !dbg !1185

; <label>:1132:                                   ; preds = %1121, %1115
  %1133 = call i32* @__errno() #6, !dbg !1186
  store i32 12, i32* %1133, align 4, !dbg !1187, !tbaa !48
  br label %1134, !dbg !1188

; <label>:1134:                                   ; preds = %380, %1132, %1112, %964, %286, %260, %193
  %1135 = phi i32 [ 0, %193 ], [ 0, %260 ], [ 1, %286 ], [ 0, %1132 ], [ 1, %1112 ], [ %965, %964 ], [ 0, %380 ], !dbg !1189
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !1190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1190
  ret i32 %1135, !dbg !1190
}

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc i64 @raxLowWalk(%struct.rax*, i8* nocapture readonly, i64, %struct.raxNode**, %struct.raxNode***, i32*, %struct.raxStack*) unnamed_addr #4 !dbg !503 {
  %8 = alloca %struct.raxNode*, align 8
  %9 = bitcast %struct.raxNode** %8 to i8*, !dbg !1198
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #7, !dbg !1198
  %10 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 0, !dbg !1199
  %11 = bitcast %struct.rax* %0 to i64*, !dbg !1199
  %12 = load i64, i64* %11, align 8, !dbg !1199, !tbaa !121
  %13 = bitcast %struct.raxNode** %8 to i64*, !dbg !1200
  store i64 %12, i64* %13, align 8, !dbg !1200, !tbaa !165
  %14 = inttoptr i64 %12 to %struct.raxNode*, !dbg !1204
  %15 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %14, i64 0, i32 0, !dbg !1205
  %16 = load i32, i32* %15, align 4, !dbg !1205
  %17 = icmp ugt i32 %16, 7, !dbg !1204
  %18 = icmp ne i64 %2, 0, !dbg !1206
  %19 = and i1 %18, %17, !dbg !1207
  %20 = inttoptr i64 %12 to i32*, !dbg !1207
  br i1 %19, label %21, label %177, !dbg !1207

; <label>:21:                                     ; preds = %7
  %22 = icmp eq %struct.raxStack* %6, null
  %23 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %6, i64 0, i32 1
  %24 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %6, i64 0, i32 2
  %25 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %6, i64 0, i32 0
  %26 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %6, i64 0, i32 3, i64 0
  %27 = bitcast %struct.raxStack* %6 to i8**
  %28 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %6, i64 0, i32 4
  %29 = bitcast i8** %26 to i8*
  br label %30, !dbg !1207

; <label>:30:                                     ; preds = %21, %149
  %31 = phi i32* [ %20, %21 ], [ %173, %149 ]
  %32 = phi i64 [ %12, %21 ], [ %174, %149 ]
  %33 = phi %struct.raxNode* [ %14, %21 ], [ %167, %149 ]
  %34 = phi i32 [ %16, %21 ], [ %169, %149 ]
  %35 = phi %struct.raxNode** [ %10, %21 ], [ %164, %149 ]
  %36 = phi i64 [ 0, %21 ], [ %111, %149 ]
  %37 = and i32 %34, 4, !dbg !1209
  %38 = icmp eq i32 %37, 0, !dbg !1210
  %39 = load i32, i32* %31, align 4, !dbg !1211
  %40 = lshr i32 %39, 3, !dbg !1211
  %41 = zext i32 %40 to i64, !dbg !1211
  br i1 %38, label %56, label %42, !dbg !1212

; <label>:42:                                     ; preds = %30
  %43 = icmp ne i32 %40, 0, !dbg !1213
  %44 = icmp ult i64 %36, %2, !dbg !1214
  %45 = and i1 %44, %43, !dbg !1215
  br i1 %45, label %46, label %86, !dbg !1215

; <label>:46:                                     ; preds = %42
  %47 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %33, i64 0, i32 1, i64 0, !dbg !1216
  %48 = load i8, i8* %47, align 1, !dbg !1216, !tbaa !267
  %49 = getelementptr inbounds i8, i8* %1, i64 %36, !dbg !1217
  %50 = load i8, i8* %49, align 1, !dbg !1217, !tbaa !267
  %51 = icmp eq i8 %48, %50, !dbg !1218
  br i1 %51, label %52, label %86, !dbg !1219

; <label>:52:                                     ; preds = %46
  %53 = load i32, i32* %31, align 4
  %54 = lshr i32 %53, 3
  %55 = zext i32 %54 to i64
  br label %74, !dbg !1220

; <label>:56:                                     ; preds = %30
  %57 = icmp eq i32 %40, 0, !dbg !1221
  br i1 %57, label %103, label %58, !dbg !588

; <label>:58:                                     ; preds = %56
  %59 = getelementptr inbounds i8, i8* %1, i64 %36
  %60 = load i8, i8* %59, align 1, !tbaa !267
  %61 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %33, i64 0, i32 1, i64 0, !dbg !1222
  %62 = load i8, i8* %61, align 1, !dbg !1222, !tbaa !267
  %63 = icmp eq i8 %62, %60, !dbg !1223
  br i1 %63, label %103, label %64, !dbg !1224

; <label>:64:                                     ; preds = %58
  %65 = load i32, i32* %31, align 4
  %66 = lshr i32 %65, 3
  %67 = zext i32 %66 to i64
  br label %95, !dbg !1225

; <label>:68:                                     ; preds = %74
  %69 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %33, i64 0, i32 1, i64 %77, !dbg !1216
  %70 = load i8, i8* %69, align 1, !dbg !1216, !tbaa !267
  %71 = getelementptr inbounds i8, i8* %1, i64 %78, !dbg !1217
  %72 = load i8, i8* %71, align 1, !dbg !1217, !tbaa !267
  %73 = icmp eq i8 %70, %72, !dbg !1218
  br i1 %73, label %74, label %84, !dbg !1219, !llvm.loop !575

; <label>:74:                                     ; preds = %52, %68
  %75 = phi i64 [ %77, %68 ], [ 0, %52 ]
  %76 = phi i64 [ %78, %68 ], [ %36, %52 ]
  %77 = add nuw nsw i64 %75, 1, !dbg !1220
  %78 = add nuw i64 %76, 1, !dbg !1226
  %79 = icmp ult i64 %77, %55, !dbg !1213
  %80 = icmp ult i64 %78, %2, !dbg !1214
  %81 = and i1 %80, %79, !dbg !1215
  br i1 %81, label %68, label %82, !dbg !1215, !llvm.loop !575

; <label>:82:                                     ; preds = %74
  %83 = zext i32 %54 to i64, !dbg !1227
  br label %86, !dbg !1228

; <label>:84:                                     ; preds = %68
  %85 = zext i32 %54 to i64, !dbg !1227
  br label %86, !dbg !1228

; <label>:86:                                     ; preds = %84, %46, %82, %42
  %87 = phi i64 [ 0, %42 ], [ %77, %82 ], [ 0, %46 ], [ %77, %84 ], !dbg !1211
  %88 = phi i64 [ %36, %42 ], [ %78, %82 ], [ %36, %46 ], [ %78, %84 ], !dbg !1211
  %89 = phi i64 [ %41, %42 ], [ %83, %82 ], [ %41, %46 ], [ %85, %84 ], !dbg !1227
  %90 = icmp eq i64 %87, %89, !dbg !1228
  br i1 %90, label %109, label %177, !dbg !1229

; <label>:91:                                     ; preds = %95
  %92 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %33, i64 0, i32 1, i64 %97, !dbg !1222
  %93 = load i8, i8* %92, align 1, !dbg !1222, !tbaa !267
  %94 = icmp eq i8 %93, %60, !dbg !1223
  br i1 %94, label %101, label %95, !dbg !1224, !llvm.loop !587

; <label>:95:                                     ; preds = %64, %91
  %96 = phi i64 [ %97, %91 ], [ 0, %64 ]
  %97 = add nuw nsw i64 %96, 1, !dbg !1225
  %98 = icmp ult i64 %97, %67, !dbg !1221
  br i1 %98, label %91, label %99, !dbg !588, !llvm.loop !587

; <label>:99:                                     ; preds = %95
  %100 = zext i32 %66 to i64, !dbg !1230
  br label %103, !dbg !1231

; <label>:101:                                    ; preds = %91
  %102 = zext i32 %66 to i64, !dbg !1230
  br label %103, !dbg !1231

; <label>:103:                                    ; preds = %101, %58, %99, %56
  %104 = phi i64 [ 0, %56 ], [ %97, %99 ], [ 0, %58 ], [ %97, %101 ], !dbg !1232
  %105 = phi i64 [ 0, %56 ], [ %100, %99 ], [ %41, %58 ], [ %102, %101 ], !dbg !1230
  %106 = icmp eq i64 %104, %105, !dbg !1231
  br i1 %106, label %177, label %107, !dbg !1233

; <label>:107:                                    ; preds = %103
  %108 = add i64 %36, 1, !dbg !1234
  br label %109

; <label>:109:                                    ; preds = %86, %107
  %110 = phi i64 [ %87, %86 ], [ %104, %107 ], !dbg !1235
  %111 = phi i64 [ %88, %86 ], [ %108, %107 ], !dbg !1236
  br i1 %22, label %149, label %112, !dbg !1237

; <label>:112:                                    ; preds = %109
  %113 = load i64, i64* %23, align 8, !dbg !1253, !tbaa !1254
  %114 = load i64, i64* %24, align 8, !dbg !1256, !tbaa !1257
  %115 = icmp eq i64 %113, %114, !dbg !1258
  br i1 %115, label %116, label %141, !dbg !1259

; <label>:116:                                    ; preds = %112
  %117 = load i8**, i8*** %25, align 8, !dbg !1260, !tbaa !1261
  %118 = icmp eq i8** %117, %26, !dbg !1262
  br i1 %118, label %119, label %129, !dbg !1263

; <label>:119:                                    ; preds = %116
  %120 = shl i64 %113, 4, !dbg !1264
  %121 = call i8* @zmalloc(i64 %120) #6, !dbg !1266
  store i8* %121, i8** %27, align 8, !dbg !1267, !tbaa !1261
  %122 = icmp eq i8* %121, null, !dbg !1268
  br i1 %122, label %123, label %125, !dbg !1270

; <label>:123:                                    ; preds = %119
  store i8** %26, i8*** %25, align 8, !dbg !1271, !tbaa !1261
  store i32 1, i32* %28, align 8, !dbg !1273, !tbaa !1274
  %124 = call i32* @__errno() #6, !dbg !1275
  store i32 12, i32* %124, align 4, !dbg !1276, !tbaa !48
  br label %147, !dbg !1277

; <label>:125:                                    ; preds = %119
  %126 = load i64, i64* %24, align 8, !dbg !1278, !tbaa !1257
  %127 = shl i64 %126, 3, !dbg !1279
  %128 = call i8* @memcpy(i8* nonnull %121, i8* nonnull %29, i64 %127) #6, !dbg !1280
  br label %137, !dbg !1281

; <label>:129:                                    ; preds = %116
  %130 = bitcast i8** %117 to i8*, !dbg !1282
  %131 = shl i64 %113, 4, !dbg !1283
  %132 = call i8* @zrealloc(i8* %130, i64 %131) #6, !dbg !1284
  %133 = icmp eq i8* %132, null, !dbg !1285
  br i1 %133, label %134, label %136, !dbg !1287

; <label>:134:                                    ; preds = %129
  store i32 1, i32* %28, align 8, !dbg !1288, !tbaa !1274
  %135 = call i32* @__errno() #6, !dbg !1290
  store i32 12, i32* %135, align 4, !dbg !1291, !tbaa !48
  br label %147

; <label>:136:                                    ; preds = %129
  store i8* %132, i8** %27, align 8, !dbg !1293, !tbaa !1261
  br label %137

; <label>:137:                                    ; preds = %136, %125
  %138 = load i64, i64* %24, align 8, !dbg !1294, !tbaa !1257
  %139 = shl i64 %138, 1, !dbg !1294
  store i64 %139, i64* %24, align 8, !dbg !1294, !tbaa !1257
  %140 = load i64, i64* %23, align 8, !dbg !1295, !tbaa !1254
  br label %141, !dbg !1296

; <label>:141:                                    ; preds = %137, %112
  %142 = phi i64 [ %140, %137 ], [ %113, %112 ], !dbg !1295
  %143 = load i8**, i8*** %25, align 8, !dbg !1297, !tbaa !1261
  %144 = getelementptr inbounds i8*, i8** %143, i64 %142, !dbg !1298
  %145 = bitcast i8** %144 to i64*, !dbg !1299
  store i64 %32, i64* %145, align 8, !dbg !1299, !tbaa !165
  %146 = add i64 %142, 1, !dbg !1300
  store i64 %146, i64* %23, align 8, !dbg !1300, !tbaa !1254
  br label %147, !dbg !1301

; <label>:147:                                    ; preds = %123, %134, %141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1302
  %148 = load %struct.raxNode*, %struct.raxNode** %8, align 8, !dbg !1303, !tbaa !165
  br label %149, !dbg !1304

; <label>:149:                                    ; preds = %147, %109
  %150 = phi %struct.raxNode* [ %148, %147 ], [ %33, %109 ], !dbg !1303
  %151 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %150, i64 0, i32 0, !dbg !1303
  %152 = load i32, i32* %151, align 4, !dbg !1303
  %153 = lshr i32 %152, 3, !dbg !1303
  %154 = zext i32 %153 to i64, !dbg !1303
  %155 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %150, i64 0, i32 1, i64 %154, !dbg !1303
  %156 = sub nsw i32 4, %153, !dbg !1303
  %157 = and i32 %156, 7, !dbg !1303
  %158 = zext i32 %157 to i64, !dbg !1303
  %159 = getelementptr inbounds i8, i8* %155, i64 %158, !dbg !1303
  %160 = bitcast i8* %159 to %struct.raxNode**, !dbg !1303
  %161 = and i32 %152, 4, !dbg !1306
  %162 = icmp eq i32 %161, 0, !dbg !1308
  %163 = select i1 %162, i64 %110, i64 0, !dbg !1309
  %164 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %160, i64 %163, !dbg !1310
  %165 = bitcast %struct.raxNode** %164 to i8*, !dbg !1311
  %166 = call i8* @memcpy(i8* nonnull %9, i8* %165, i64 8) #6, !dbg !1312
  %167 = load %struct.raxNode*, %struct.raxNode** %8, align 8, !dbg !1204, !tbaa !165
  %168 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %167, i64 0, i32 0, !dbg !1205
  %169 = load i32, i32* %168, align 4, !dbg !1205
  %170 = icmp ugt i32 %169, 7, !dbg !1204
  %171 = icmp ult i64 %111, %2, !dbg !1206
  %172 = and i1 %171, %170, !dbg !1207
  %173 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %167, i64 0, i32 0, !dbg !1207
  %174 = ptrtoint %struct.raxNode* %167 to i64, !dbg !1207
  br i1 %172, label %30, label %175, !dbg !1207

; <label>:175:                                    ; preds = %149
  %176 = ptrtoint %struct.raxNode* %167 to i64, !dbg !1207
  br label %177, !dbg !1313

; <label>:177:                                    ; preds = %103, %86, %175, %7
  %178 = phi i32* [ %20, %7 ], [ %173, %175 ], [ %31, %86 ], [ %31, %103 ]
  %179 = phi i64 [ %12, %7 ], [ %176, %175 ], [ %32, %86 ], [ %32, %103 ]
  %180 = phi %struct.raxNode** [ %10, %7 ], [ %164, %175 ], [ %35, %86 ], [ %35, %103 ], !dbg !1201
  %181 = phi i64 [ 0, %7 ], [ 0, %175 ], [ %104, %103 ], [ %87, %86 ], !dbg !1314
  %182 = phi i64 [ 0, %7 ], [ %111, %175 ], [ %36, %103 ], [ %88, %86 ], !dbg !1202
  %183 = icmp eq %struct.raxNode** %3, null, !dbg !1313
  br i1 %183, label %186, label %184, !dbg !1315

; <label>:184:                                    ; preds = %177
  %185 = bitcast %struct.raxNode** %3 to i64*, !dbg !1316
  store i64 %179, i64* %185, align 8, !dbg !1316, !tbaa !165
  br label %186, !dbg !1317

; <label>:186:                                    ; preds = %177, %184
  %187 = icmp eq %struct.raxNode*** %4, null, !dbg !1318
  br i1 %187, label %189, label %188, !dbg !1319

; <label>:188:                                    ; preds = %186
  store %struct.raxNode** %180, %struct.raxNode*** %4, align 8, !dbg !1320, !tbaa !165
  br label %189, !dbg !1321

; <label>:189:                                    ; preds = %186, %188
  %190 = icmp eq i32* %5, null, !dbg !1322
  br i1 %190, label %197, label %191, !dbg !1323

; <label>:191:                                    ; preds = %189
  %192 = load i32, i32* %178, align 4, !dbg !1324
  %193 = and i32 %192, 4, !dbg !1324
  %194 = icmp eq i32 %193, 0, !dbg !1325
  br i1 %194, label %197, label %195, !dbg !1326

; <label>:195:                                    ; preds = %191
  %196 = trunc i64 %181 to i32, !dbg !1327
  store i32 %196, i32* %5, align 4, !dbg !1328, !tbaa !48
  br label %197, !dbg !1329

; <label>:197:                                    ; preds = %191, %189, %195
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #7, !dbg !1330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  ret i64 %182, !dbg !1331
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @raxRemove(%struct.rax*, i8* nocapture readonly, i64, i8**) local_unnamed_addr #0 !dbg !1332 {
  %5 = alloca %struct.raxNode*, align 8
  %6 = alloca %struct.raxNode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.raxNode*, align 8
  %9 = alloca %struct.raxStack, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.raxNode*, align 8
  %12 = alloca %struct.raxNode*, align 8
  %13 = bitcast %struct.raxNode** %8 to i8*, !dbg !1378
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #7, !dbg !1378
  %14 = bitcast %struct.raxStack* %9 to i8*, !dbg !1379
  call void @llvm.lifetime.start.p0i8(i64 288, i8* nonnull %14) #7, !dbg !1379
  %15 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %9, i64 0, i32 3, i64 0, !dbg !1388
  %16 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %9, i64 0, i32 0, !dbg !1389
  store i8** %15, i8*** %16, align 8, !dbg !1390, !tbaa !1261
  %17 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %9, i64 0, i32 1, !dbg !1391
  %18 = bitcast i64* %17 to <2 x i64>*, !dbg !1392
  store <2 x i64> <i64 0, i64 32>, <2 x i64>* %18, align 8, !dbg !1392, !tbaa !109
  %19 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %9, i64 0, i32 4, !dbg !1393
  store i32 0, i32* %19, align 8, !dbg !1394, !tbaa !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1395
  %20 = bitcast i32* %10 to i8*, !dbg !1396
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #7, !dbg !1396
  store i32 0, i32* %10, align 4, !dbg !1397, !tbaa !48
  %21 = call fastcc i64 @raxLowWalk(%struct.rax* %0, i8* %1, i64 %2, %struct.raxNode** nonnull %8, %struct.raxNode*** null, i32* nonnull %10, %struct.raxStack* nonnull %9) #9, !dbg !1399
  %22 = icmp eq i64 %21, %2, !dbg !1401
  br i1 %22, label %23, label %36, !dbg !1403

; <label>:23:                                     ; preds = %4
  %24 = load %struct.raxNode*, %struct.raxNode** %8, align 8, !dbg !1404, !tbaa !165
  %25 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %24, i64 0, i32 0, !dbg !1405
  %26 = load i32, i32* %25, align 4, !dbg !1405
  %27 = and i32 %26, 4, !dbg !1405
  %28 = icmp ne i32 %27, 0, !dbg !1404
  %29 = load i32, i32* %10, align 4, !dbg !1406
  %30 = icmp ne i32 %29, 0, !dbg !1407
  %31 = and i1 %28, %30, !dbg !1408
  %32 = and i32 %26, 1, !dbg !1409
  %33 = icmp eq i32 %32, 0, !dbg !1410
  %34 = or i1 %33, %31, !dbg !1408
  %35 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %24, i64 0, i32 0, !dbg !1408
  br i1 %34, label %36, label %42, !dbg !1408

; <label>:36:                                     ; preds = %4, %23
  %37 = load i8**, i8*** %16, align 8, !dbg !1417, !tbaa !1261
  %38 = icmp eq i8** %37, %15, !dbg !1419
  br i1 %38, label %41, label %39, !dbg !1420

; <label>:39:                                     ; preds = %36
  %40 = bitcast i8** %37 to i8*, !dbg !1421
  call void @zfree(i8* %40) #6, !dbg !1422
  br label %41, !dbg !1422

; <label>:41:                                     ; preds = %36, %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1423
  br label %455, !dbg !1424

; <label>:42:                                     ; preds = %23
  %43 = icmp eq i8** %3, null, !dbg !1425
  br i1 %43, label %44, label %46, !dbg !1427

; <label>:44:                                     ; preds = %42
  %45 = bitcast %struct.raxNode** %8 to i32**, !dbg !1428
  br label %81, !dbg !1427

; <label>:46:                                     ; preds = %42
  %47 = and i32 %26, 2, !dbg !1431
  %48 = icmp eq i32 %47, 0, !dbg !1432
  br i1 %48, label %51, label %49, !dbg !1433

; <label>:49:                                     ; preds = %46
  %50 = bitcast %struct.raxNode** %8 to i32**
  br label %76, !dbg !1433

; <label>:51:                                     ; preds = %46
  %52 = bitcast %struct.raxNode* %24 to i8*, !dbg !1434
  %53 = lshr i32 %26, 3, !dbg !1435
  %54 = add nuw nsw i32 %53, 4, !dbg !1435
  %55 = sub nsw i32 4, %53, !dbg !1435
  %56 = and i32 %55, 7, !dbg !1435
  %57 = add nuw nsw i32 %54, %56, !dbg !1435
  %58 = zext i32 %57 to i64, !dbg !1435
  %59 = icmp eq i32 %27, 0, !dbg !1435
  %60 = and i32 %26, -8, !dbg !1435
  %61 = select i1 %59, i32 %60, i32 8, !dbg !1435
  %62 = zext i32 %61 to i64, !dbg !1435
  %63 = shl i32 %26, 2
  %64 = and i32 %63, 8
  %65 = xor i32 %64, 8
  %66 = zext i32 %65 to i64
  %67 = add nuw nsw i64 %66, %62, !dbg !1435
  %68 = add nuw nsw i64 %67, %58, !dbg !1435
  %69 = getelementptr inbounds i8, i8* %52, i64 %68, !dbg !1436
  %70 = getelementptr inbounds i8, i8* %69, i64 -8, !dbg !1437
  %71 = bitcast i8** %7 to i8*, !dbg !1439
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %71) #7, !dbg !1439
  %72 = call i8* @memcpy(i8* nonnull %71, i8* nonnull %70, i64 8) #6, !dbg !1440
  %73 = load i8*, i8** %7, align 8, !dbg !1441, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %71) #7, !dbg !1443
  %74 = bitcast %struct.raxNode** %8 to i32**
  %75 = load i32*, i32** %74, align 8, !dbg !1428, !tbaa !165
  br label %76

; <label>:76:                                     ; preds = %49, %51
  %77 = phi i32** [ %50, %49 ], [ %74, %51 ]
  %78 = phi i32* [ %35, %49 ], [ %75, %51 ], !dbg !1428
  %79 = phi i8* [ null, %49 ], [ %73, %51 ], !dbg !1444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1443
  store i8* %79, i8** %3, align 8, !dbg !1445, !tbaa !165
  %80 = load i32, i32* %78, align 4, !dbg !1446
  br label %81, !dbg !1447

; <label>:81:                                     ; preds = %44, %76
  %82 = phi i32** [ %45, %44 ], [ %77, %76 ], !dbg !1428
  %83 = phi i32 [ %26, %44 ], [ %80, %76 ], !dbg !1446
  %84 = phi i32* [ %35, %44 ], [ %78, %76 ], !dbg !1428
  %85 = and i32 %83, -2, !dbg !1446
  store i32 %85, i32* %84, align 4, !dbg !1446
  %86 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 1, !dbg !1448
  %87 = load i64, i64* %86, align 8, !dbg !1449, !tbaa !728
  %88 = add i64 %87, -1, !dbg !1449
  store i64 %88, i64* %86, align 8, !dbg !1449, !tbaa !728
  %89 = load i32*, i32** %82, align 8, !dbg !1451, !tbaa !165
  %90 = load i32, i32* %89, align 4, !dbg !1452
  %91 = lshr i32 %90, 3, !dbg !1452
  %92 = trunc i32 %91 to i29, !dbg !1453
  %93 = bitcast i32* %89 to %struct.raxNode*, !dbg !1453
  switch i29 %92, label %449 [
    i29 0, label %94
    i29 1, label %183
  ], !dbg !1453

; <label>:94:                                     ; preds = %81
  %95 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 0, !dbg !1455
  %96 = load %struct.raxNode*, %struct.raxNode** %95, align 8, !dbg !1455, !tbaa !121
  %97 = icmp eq %struct.raxNode* %96, %93, !dbg !1456
  br i1 %97, label %449, label %98, !dbg !1457

; <label>:98:                                     ; preds = %94
  %99 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 2
  %100 = bitcast i32** %82 to %struct.raxNode**
  br label %104, !dbg !1457

; <label>:101:                                    ; preds = %124
  %102 = load %struct.raxNode*, %struct.raxNode** %95, align 8, !dbg !1455, !tbaa !121
  %103 = icmp eq %struct.raxNode* %119, %102, !dbg !1456
  br i1 %103, label %130, label %104, !dbg !1457, !llvm.loop !1458

; <label>:104:                                    ; preds = %98, %101
  %105 = phi %struct.raxNode* [ %93, %98 ], [ %119, %101 ]
  %106 = bitcast %struct.raxNode* %105 to i8*, !dbg !1460
  call void @zfree(i8* %106) #6, !dbg !1462
  %107 = load i64, i64* %99, align 8, !dbg !1463, !tbaa !920
  %108 = add i64 %107, -1, !dbg !1463
  store i64 %108, i64* %99, align 8, !dbg !1463, !tbaa !920
  %109 = load i64, i64* %17, align 8, !dbg !1471, !tbaa !1254
  %110 = icmp eq i64 %109, 0, !dbg !1473
  br i1 %110, label %118, label %111, !dbg !1474

; <label>:111:                                    ; preds = %104
  %112 = add i64 %109, -1, !dbg !1475
  store i64 %112, i64* %17, align 8, !dbg !1475, !tbaa !1254
  %113 = load i8**, i8*** %16, align 8, !dbg !1476, !tbaa !1261
  %114 = getelementptr inbounds i8*, i8** %113, i64 %112, !dbg !1477
  %115 = bitcast i8** %114 to i32**, !dbg !1477
  %116 = load i32*, i32** %115, align 8, !dbg !1477, !tbaa !165
  %117 = bitcast i32* %116 to %struct.raxNode*, !dbg !1478
  br label %118, !dbg !1478

; <label>:118:                                    ; preds = %104, %111
  %119 = phi %struct.raxNode* [ %117, %111 ], [ null, %104 ], !dbg !1479
  %120 = phi i32* [ %116, %111 ], [ null, %104 ], !dbg !1479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  store %struct.raxNode* %119, %struct.raxNode** %100, align 8, !dbg !1481, !tbaa !165
  %121 = load i32, i32* %120, align 4, !dbg !1482
  %122 = and i32 %121, 1, !dbg !1482
  %123 = icmp eq i32 %122, 0, !dbg !1484
  br i1 %123, label %124, label %130, !dbg !1485

; <label>:124:                                    ; preds = %118
  %125 = and i32 %121, 4, !dbg !1486
  %126 = icmp ne i32 %125, 0, !dbg !1487
  %127 = and i32 %121, -8, !dbg !1488
  %128 = icmp eq i32 %127, 8, !dbg !1488
  %129 = or i1 %126, %128, !dbg !1489
  br i1 %129, label %101, label %130, !dbg !1489, !llvm.loop !1458

; <label>:130:                                    ; preds = %101, %118, %124
  %131 = icmp eq %struct.raxNode* %105, null, !dbg !1490
  br i1 %131, label %449, label %132, !dbg !1491

; <label>:132:                                    ; preds = %130
  %133 = bitcast %struct.raxNode** %11 to i8*, !dbg !1492
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %133) #7, !dbg !1492
  %134 = call %struct.raxNode* @raxRemoveChild(%struct.raxNode* %119, %struct.raxNode* nonnull %105) #9, !dbg !1493
  store %struct.raxNode* %134, %struct.raxNode** %11, align 8, !dbg !1494, !tbaa !165
  %135 = load %struct.raxNode*, %struct.raxNode** %8, align 8, !dbg !1495, !tbaa !165
  %136 = icmp eq %struct.raxNode* %134, %135, !dbg !1496
  br i1 %136, label %174, label %137, !dbg !1497

; <label>:137:                                    ; preds = %132
  %138 = load i64, i64* %17, align 8, !dbg !1503, !tbaa !1254
  %139 = icmp eq i64 %138, 0, !dbg !1505
  br i1 %139, label %167, label %140, !dbg !1506

; <label>:140:                                    ; preds = %137
  %141 = load i8**, i8*** %16, align 8, !dbg !1507, !tbaa !1261
  %142 = add i64 %138, -1, !dbg !1508
  %143 = getelementptr inbounds i8*, i8** %141, i64 %142, !dbg !1509
  %144 = load i8*, i8** %143, align 8, !dbg !1509, !tbaa !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1510
  %145 = icmp eq i8* %144, null, !dbg !1511
  br i1 %145, label %169, label %146, !dbg !1513

; <label>:146:                                    ; preds = %140
  %147 = bitcast i8* %144 to %struct.raxNode*, !dbg !1514
  %148 = bitcast i8* %144 to i32*, !dbg !1528
  %149 = load i32, i32* %148, align 4, !dbg !1528
  %150 = lshr i32 %149, 3, !dbg !1528
  %151 = zext i32 %150 to i64, !dbg !1528
  %152 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %147, i64 0, i32 1, i64 %151, !dbg !1528
  %153 = sub nsw i32 4, %150, !dbg !1528
  %154 = and i32 %153, 7, !dbg !1528
  %155 = zext i32 %154 to i64, !dbg !1528
  %156 = getelementptr inbounds i8, i8* %152, i64 %155, !dbg !1528
  %157 = bitcast i8* %156 to %struct.raxNode**, !dbg !1528
  %158 = bitcast %struct.raxNode** %5 to i8*, !dbg !1530
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %158) #7, !dbg !1530
  br label %159, !dbg !1531

; <label>:159:                                    ; preds = %159, %146
  %160 = phi %struct.raxNode** [ %157, %146 ], [ %165, %159 ], !dbg !1532
  %161 = bitcast %struct.raxNode** %160 to i8*, !dbg !1534
  %162 = call i8* @memcpy(i8* nonnull %158, i8* %161, i64 8) #6, !dbg !1535
  %163 = load %struct.raxNode*, %struct.raxNode** %5, align 8, !dbg !1536, !tbaa !165
  %164 = icmp eq %struct.raxNode* %163, %135, !dbg !1539
  %165 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %160, i64 1, !dbg !1540
  br i1 %164, label %166, label %159, !dbg !1541, !llvm.loop !1542

; <label>:166:                                    ; preds = %159
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %158) #7, !dbg !1545
  br label %167

; <label>:167:                                    ; preds = %137, %166
  %168 = phi %struct.raxNode** [ %160, %166 ], [ %95, %137 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1547
  br label %169, !dbg !1548

; <label>:169:                                    ; preds = %167, %140
  %170 = phi %struct.raxNode** [ %95, %140 ], [ %168, %167 ], !dbg !1547
  %171 = bitcast %struct.raxNode** %170 to i8*, !dbg !1548
  %172 = call i8* @memcpy(i8* %171, i8* nonnull %133, i64 8) #6, !dbg !1549
  %173 = load %struct.raxNode*, %struct.raxNode** %11, align 8, !dbg !1550, !tbaa !165
  br label %174, !dbg !1552

; <label>:174:                                    ; preds = %132, %169
  %175 = phi %struct.raxNode* [ %134, %132 ], [ %173, %169 ], !dbg !1550
  %176 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %175, i64 0, i32 0, !dbg !1553
  %177 = load i32, i32* %176, align 4, !dbg !1553
  %178 = and i32 %177, -7, !dbg !1554
  %179 = icmp eq i32 %178, 8, !dbg !1554
  br i1 %179, label %181, label %180, !dbg !1554

; <label>:180:                                    ; preds = %174
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %133) #7, !dbg !1555
  br label %449, !dbg !1556

; <label>:181:                                    ; preds = %174
  store %struct.raxNode* %175, %struct.raxNode** %8, align 8, !dbg !1558, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %133) #7, !dbg !1555
  %182 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %175, i64 0, i32 0, !dbg !1556
  br label %183, !dbg !1556

; <label>:183:                                    ; preds = %81, %181
  %184 = phi i32* [ %89, %81 ], [ %182, %181 ]
  %185 = phi %struct.raxNode* [ %93, %81 ], [ %175, %181 ]
  %186 = load i32, i32* %19, align 8, !dbg !1560, !tbaa !1274
  %187 = icmp eq i32 %186, 0, !dbg !1561
  br i1 %187, label %188, label %449

; <label>:188:                                    ; preds = %183
  %189 = load i64, i64* %17, align 8, !dbg !1565, !tbaa !1254
  %190 = icmp eq i64 %189, 0, !dbg !1566
  br i1 %190, label %201, label %191, !dbg !1567

; <label>:191:                                    ; preds = %188
  %192 = bitcast %struct.raxNode** %8 to i8**
  %193 = load i8**, i8*** %16, align 8, !dbg !1568, !tbaa !1261
  %194 = add i64 %189, -1, !dbg !1569
  store i64 %194, i64* %17, align 8, !dbg !1569, !tbaa !1254
  %195 = getelementptr inbounds i8*, i8** %193, i64 %194, !dbg !1570
  %196 = load i8*, i8** %195, align 8, !dbg !1570, !tbaa !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1571
  %197 = icmp eq i8* %196, null, !dbg !1572
  br i1 %197, label %230, label %209, !dbg !1574

; <label>:198:                                    ; preds = %224
  %199 = bitcast i8* %210 to i32*, !dbg !1575
  %200 = bitcast i8* %210 to %struct.raxNode*, !dbg !1567
  br label %201, !dbg !1571

; <label>:201:                                    ; preds = %198, %188
  %202 = phi i32* [ %184, %188 ], [ %199, %198 ]
  %203 = phi %struct.raxNode* [ %185, %188 ], [ %200, %198 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1571
  br label %236, !dbg !1574

; <label>:204:                                    ; preds = %224
  %205 = add i64 %211, -1, !dbg !1569
  store i64 %205, i64* %17, align 8, !dbg !1569, !tbaa !1254
  %206 = getelementptr inbounds i8*, i8** %193, i64 %205, !dbg !1570
  %207 = load i8*, i8** %206, align 8, !dbg !1570, !tbaa !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1571
  %208 = icmp eq i8* %207, null, !dbg !1572
  br i1 %208, label %227, label %209, !dbg !1574, !llvm.loop !1576

; <label>:209:                                    ; preds = %191, %204
  %210 = phi i8* [ %207, %204 ], [ %196, %191 ]
  %211 = phi i64 [ %205, %204 ], [ %194, %191 ]
  %212 = phi %struct.raxNode* [ %226, %204 ], [ %185, %191 ]
  %213 = phi i32* [ %214, %204 ], [ %184, %191 ]
  %214 = bitcast i8* %210 to i32*, !dbg !1575
  %215 = load i32, i32* %214, align 4, !dbg !1575
  %216 = and i32 %215, 1, !dbg !1575
  %217 = icmp eq i32 %216, 0, !dbg !1579
  br i1 %217, label %218, label %230, !dbg !1580

; <label>:218:                                    ; preds = %209
  %219 = and i32 %215, 4, !dbg !1581
  %220 = icmp ne i32 %219, 0, !dbg !1582
  %221 = and i32 %215, -8, !dbg !1583
  %222 = icmp eq i32 %221, 8, !dbg !1583
  %223 = or i1 %220, %222, !dbg !1584
  br i1 %223, label %224, label %230, !dbg !1584

; <label>:224:                                    ; preds = %218
  store i8* %210, i8** %192, align 8, !dbg !1585, !tbaa !165
  %225 = icmp eq i64 %211, 0, !dbg !1566
  %226 = bitcast i8* %210 to %struct.raxNode*, !dbg !1567
  br i1 %225, label %198, label %204, !dbg !1567, !llvm.loop !1576

; <label>:227:                                    ; preds = %204
  %228 = bitcast i8* %210 to i32*, !dbg !1575
  %229 = bitcast i8* %210 to %struct.raxNode*, !dbg !1567
  br label %230, !dbg !1586

; <label>:230:                                    ; preds = %227, %209, %218, %191
  %231 = phi i32* [ %184, %191 ], [ %228, %227 ], [ %213, %209 ], [ %213, %218 ]
  %232 = phi %struct.raxNode* [ %185, %191 ], [ %229, %227 ], [ %212, %209 ], [ %212, %218 ]
  %233 = phi i8* [ %196, %191 ], [ %207, %227 ], [ %210, %209 ], [ %210, %218 ], !dbg !1570
  %234 = phi i1 [ false, %191 ], [ false, %227 ], [ true, %209 ], [ true, %218 ]
  %235 = bitcast i8* %233 to %struct.raxNode*, !dbg !1586
  br label %236, !dbg !1587

; <label>:236:                                    ; preds = %230, %201
  %237 = phi i32* [ %202, %201 ], [ %231, %230 ]
  %238 = phi %struct.raxNode* [ %203, %201 ], [ %232, %230 ]
  %239 = phi i1 [ false, %201 ], [ %234, %230 ]
  %240 = phi %struct.raxNode* [ null, %201 ], [ %235, %230 ]
  %241 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %238, i64 0, i32 0, !dbg !1589
  %242 = load i32, i32* %241, align 4, !dbg !1589
  %243 = lshr i32 %242, 3, !dbg !1589
  %244 = zext i32 %243 to i64, !dbg !1590
  br label %245, !dbg !1593

; <label>:245:                                    ; preds = %289, %236
  %246 = phi i32* [ %237, %236 ], [ %278, %289 ]
  %247 = phi %struct.raxNode* [ %238, %236 ], [ %282, %289 ], !dbg !1594
  %248 = phi i32 [ 1, %236 ], [ %296, %289 ], !dbg !1592
  %249 = phi i64 [ %244, %236 ], [ %292, %289 ], !dbg !1591
  %250 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %247, i64 0, i32 0, !dbg !1595
  %251 = load i32, i32* %250, align 4, !dbg !1595
  %252 = lshr i32 %251, 3, !dbg !1595
  %253 = icmp eq i32 %252, 0, !dbg !1596
  br i1 %253, label %297, label %254, !dbg !1593

; <label>:254:                                    ; preds = %245
  %255 = add nuw nsw i32 %252, 4, !dbg !1597
  %256 = sub nsw i32 4, %252, !dbg !1597
  %257 = and i32 %256, 7, !dbg !1597
  %258 = add nuw nsw i32 %255, %257, !dbg !1597
  %259 = zext i32 %258 to i64, !dbg !1597
  %260 = and i32 %251, 4, !dbg !1597
  %261 = icmp eq i32 %260, 0, !dbg !1597
  %262 = and i32 %251, -8, !dbg !1597
  %263 = select i1 %261, i32 %262, i32 8, !dbg !1597
  %264 = zext i32 %263 to i64, !dbg !1597
  %265 = add nuw nsw i64 %259, %264, !dbg !1597
  %266 = load i32, i32* %246, align 4, !dbg !1597
  %267 = and i32 %266, 3, !dbg !1597
  %268 = icmp eq i32 %267, 1, !dbg !1597
  %269 = zext i1 %268 to i64, !dbg !1597
  %270 = shl nuw nsw i64 %269, 3, !dbg !1597
  %271 = add nuw nsw i64 %265, %270, !dbg !1597
  %272 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %247, i64 -2, !dbg !1597
  %273 = bitcast %struct.raxNode* %272 to i8*, !dbg !1597
  %274 = getelementptr inbounds i8, i8* %273, i64 %271, !dbg !1597
  %275 = select i1 %268, i64 -8, i64 0, !dbg !1597
  %276 = getelementptr inbounds i8, i8* %274, i64 %275, !dbg !1597
  %277 = call i8* @memcpy(i8* nonnull %13, i8* nonnull %276, i64 8) #6, !dbg !1599
  %278 = load i32*, i32** %82, align 8, !dbg !1600, !tbaa !165
  %279 = load i32, i32* %278, align 4, !dbg !1602
  %280 = and i32 %279, 1, !dbg !1602
  %281 = icmp eq i32 %280, 0, !dbg !1600
  %282 = bitcast i32* %278 to %struct.raxNode*, !dbg !1603
  br i1 %281, label %283, label %297, !dbg !1603

; <label>:283:                                    ; preds = %254
  %284 = and i32 %279, 4, !dbg !1604
  %285 = icmp ne i32 %284, 0, !dbg !1605
  %286 = and i32 %279, -8, !dbg !1606
  %287 = icmp eq i32 %286, 8, !dbg !1606
  %288 = or i1 %285, %287, !dbg !1607
  br i1 %288, label %289, label %297, !dbg !1607

; <label>:289:                                    ; preds = %283
  %290 = lshr i32 %279, 3, !dbg !1608
  %291 = zext i32 %290 to i64, !dbg !1610
  %292 = add i64 %249, %291, !dbg !1611
  %293 = icmp ugt i64 %292, 536870911, !dbg !1612
  %294 = xor i1 %293, true, !dbg !1613
  %295 = zext i1 %294 to i32, !dbg !1613
  %296 = add nuw nsw i32 %248, %295, !dbg !1613
  br i1 %293, label %297, label %245, !llvm.loop !1614

; <label>:297:                                    ; preds = %289, %254, %283, %245
  %298 = phi i32 [ %296, %289 ], [ %248, %245 ], [ %248, %283 ], [ %248, %254 ], !dbg !1592
  %299 = icmp sgt i32 %298, 1, !dbg !1616
  br i1 %299, label %300, label %449, !dbg !1617

; <label>:300:                                    ; preds = %297
  %301 = sub i64 4, %249, !dbg !1618
  %302 = and i64 %301, 7, !dbg !1618
  %303 = add i64 %249, 12, !dbg !1619
  %304 = add i64 %303, %302, !dbg !1620
  %305 = bitcast %struct.raxNode** %12 to i8*, !dbg !1622
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %305) #7, !dbg !1622
  %306 = call i8* @zmalloc(i64 %304) #6, !dbg !1623
  %307 = bitcast %struct.raxNode** %12 to i8**, !dbg !1624
  store i8* %306, i8** %307, align 8, !dbg !1624, !tbaa !165
  %308 = icmp eq i8* %306, null, !dbg !1625
  br i1 %308, label %309, label %314, !dbg !1627

; <label>:309:                                    ; preds = %300
  %310 = load i8**, i8*** %16, align 8, !dbg !1631, !tbaa !1261
  %311 = icmp eq i8** %310, %15, !dbg !1632
  br i1 %311, label %448, label %312, !dbg !1633

; <label>:312:                                    ; preds = %309
  %313 = bitcast i8** %310 to i8*, !dbg !1634
  call void @zfree(i8* %313) #6, !dbg !1635
  br label %448, !dbg !1635

; <label>:314:                                    ; preds = %300
  %315 = bitcast i8* %306 to i32*, !dbg !1636
  %316 = load i32, i32* %315, align 4, !dbg !1637
  %317 = and i32 %316, -2, !dbg !1637
  store i32 %317, i32* %315, align 4, !dbg !1637
  %318 = bitcast %struct.raxNode** %12 to i32**, !dbg !1638
  %319 = load i32*, i32** %318, align 8, !dbg !1638, !tbaa !165
  %320 = load i32, i32* %319, align 4, !dbg !1639
  %321 = and i32 %320, -3, !dbg !1639
  store i32 %321, i32* %319, align 4, !dbg !1639
  %322 = load i32*, i32** %318, align 8, !dbg !1640, !tbaa !165
  %323 = load i32, i32* %322, align 4, !dbg !1641
  %324 = or i32 %323, 4, !dbg !1641
  store i32 %324, i32* %322, align 4, !dbg !1641
  %325 = trunc i64 %249 to i32, !dbg !1642
  %326 = load i32*, i32** %318, align 8, !dbg !1643, !tbaa !165
  %327 = load i32, i32* %326, align 4, !dbg !1644
  %328 = shl i32 %325, 3, !dbg !1644
  %329 = and i32 %327, 7, !dbg !1644
  %330 = or i32 %329, %328, !dbg !1644
  store i32 %330, i32* %326, align 4, !dbg !1644
  %331 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 2, !dbg !1645
  %332 = load i64, i64* %331, align 8, !dbg !1646, !tbaa !920
  %333 = add i64 %332, 1, !dbg !1646
  store i64 %333, i64* %331, align 8, !dbg !1646, !tbaa !920
  store %struct.raxNode* %238, %struct.raxNode** %8, align 8, !dbg !1647, !tbaa !165
  br label %334, !dbg !1648

; <label>:334:                                    ; preds = %381, %314
  %335 = phi %struct.raxNode* [ %238, %314 ], [ %382, %381 ], !dbg !1649
  %336 = phi i64 [ 0, %314 ], [ %383, %381 ], !dbg !1650
  %337 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %335, i64 0, i32 0, !dbg !1651
  %338 = load i32, i32* %337, align 4, !dbg !1651
  %339 = lshr i32 %338, 3, !dbg !1651
  %340 = icmp eq i32 %339, 0, !dbg !1652
  br i1 %340, label %389, label %341, !dbg !1648

; <label>:341:                                    ; preds = %334
  %342 = load %struct.raxNode*, %struct.raxNode** %12, align 8, !dbg !1653, !tbaa !165
  %343 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %342, i64 0, i32 1, i64 %336, !dbg !1654
  %344 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %335, i64 0, i32 1, i64 0, !dbg !1655
  %345 = zext i32 %339 to i64, !dbg !1656
  %346 = call i8* @memcpy(i8* nonnull %343, i8* nonnull %344, i64 %345) #6, !dbg !1657
  %347 = load %struct.raxNode*, %struct.raxNode** %8, align 8, !dbg !1658, !tbaa !165
  %348 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %347, i64 0, i32 0, !dbg !1659
  %349 = load i32, i32* %348, align 4, !dbg !1659
  %350 = lshr i32 %349, 3, !dbg !1659
  %351 = zext i32 %350 to i64, !dbg !1658
  %352 = add nuw nsw i64 %351, 4, !dbg !1660
  %353 = sub nsw i32 4, %350, !dbg !1660
  %354 = and i32 %353, 7, !dbg !1660
  %355 = zext i32 %354 to i64, !dbg !1660
  %356 = add nuw nsw i64 %352, %355, !dbg !1660
  %357 = and i32 %349, 4, !dbg !1660
  %358 = icmp eq i32 %357, 0, !dbg !1660
  %359 = and i32 %349, -8, !dbg !1660
  %360 = select i1 %358, i32 %359, i32 8, !dbg !1660
  %361 = zext i32 %360 to i64, !dbg !1660
  %362 = add nuw nsw i64 %356, %361, !dbg !1660
  %363 = and i32 %349, 3, !dbg !1660
  %364 = icmp eq i32 %363, 1, !dbg !1660
  %365 = zext i1 %364 to i64, !dbg !1660
  %366 = shl nuw nsw i64 %365, 3, !dbg !1660
  %367 = add nuw nsw i64 %362, %366, !dbg !1660
  %368 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %347, i64 -2, !dbg !1660
  %369 = bitcast %struct.raxNode* %368 to i8*, !dbg !1660
  %370 = getelementptr inbounds i8, i8* %369, i64 %367, !dbg !1660
  %371 = select i1 %364, i64 -8, i64 0, !dbg !1660
  %372 = getelementptr inbounds i8, i8* %370, i64 %371, !dbg !1660
  %373 = bitcast %struct.raxNode* %347 to i8*, !dbg !1662
  %374 = call i8* @memcpy(i8* nonnull %13, i8* nonnull %372, i64 8) #6, !dbg !1664
  call void @zfree(i8* %373) #6, !dbg !1665
  %375 = load i64, i64* %331, align 8, !dbg !1666, !tbaa !920
  %376 = add i64 %375, -1, !dbg !1666
  store i64 %376, i64* %331, align 8, !dbg !1666, !tbaa !920
  %377 = load i32*, i32** %82, align 8, !dbg !1667, !tbaa !165
  %378 = load i32, i32* %377, align 4, !dbg !1669
  %379 = and i32 %378, 1, !dbg !1669
  %380 = icmp eq i32 %379, 0, !dbg !1667
  br i1 %380, label %381, label %389, !dbg !1670

; <label>:381:                                    ; preds = %341
  %382 = bitcast i32* %377 to %struct.raxNode*, !dbg !1670
  %383 = add i64 %336, %351, !dbg !1671
  %384 = and i32 %378, 4, !dbg !1672
  %385 = icmp ne i32 %384, 0, !dbg !1673
  %386 = and i32 %378, -8, !dbg !1674
  %387 = icmp eq i32 %386, 8, !dbg !1674
  %388 = or i1 %385, %387, !dbg !1675
  br i1 %388, label %334, label %389, !dbg !1675

; <label>:389:                                    ; preds = %381, %341, %334
  %390 = load %struct.raxNode*, %struct.raxNode** %12, align 8, !dbg !1676, !tbaa !165
  %391 = bitcast %struct.raxNode* %390 to i8*, !dbg !1676
  %392 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %390, i64 0, i32 0, !dbg !1676
  %393 = load i32, i32* %392, align 4, !dbg !1676
  %394 = lshr i32 %393, 3, !dbg !1676
  %395 = add nuw nsw i32 %394, 4, !dbg !1676
  %396 = sub nsw i32 4, %394, !dbg !1676
  %397 = and i32 %396, 7, !dbg !1676
  %398 = add nuw nsw i32 %395, %397, !dbg !1676
  %399 = zext i32 %398 to i64, !dbg !1676
  %400 = and i32 %393, 4, !dbg !1676
  %401 = icmp eq i32 %400, 0, !dbg !1676
  %402 = and i32 %393, -8, !dbg !1676
  %403 = select i1 %401, i32 %402, i32 8, !dbg !1676
  %404 = zext i32 %403 to i64, !dbg !1676
  %405 = add nuw nsw i64 %399, %404, !dbg !1676
  %406 = and i32 %393, 1, !dbg !1676
  %407 = icmp eq i32 %406, 0, !dbg !1676
  %408 = ptrtoint %struct.raxNode* %390 to i64, !dbg !1676
  br i1 %407, label %416, label %409, !dbg !1676

; <label>:409:                                    ; preds = %389
  %410 = shl i32 %393, 2
  %411 = and i32 %410, 8
  %412 = xor i32 %411, 8
  %413 = zext i32 %412 to i64
  %414 = add nuw nsw i64 %405, %413, !dbg !1676
  %415 = sub nsw i64 0, %413
  br label %416

; <label>:416:                                    ; preds = %389, %409
  %417 = phi i64 [ %414, %409 ], [ %405, %389 ]
  %418 = phi i64 [ %415, %409 ], [ 0, %389 ]
  %419 = getelementptr inbounds i8, i8* %391, i64 %417, !dbg !1676
  %420 = getelementptr inbounds i8, i8* %419, i64 -8, !dbg !1676
  %421 = getelementptr inbounds i8, i8* %420, i64 %418, !dbg !1676
  %422 = call i8* @memcpy(i8* nonnull %421, i8* nonnull %13, i64 8) #6, !dbg !1678
  br i1 %239, label %423, label %445, !dbg !1679

; <label>:423:                                    ; preds = %416
  %424 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %240, i64 0, i32 0, !dbg !1682
  %425 = load i32, i32* %424, align 4, !dbg !1682
  %426 = lshr i32 %425, 3, !dbg !1682
  %427 = zext i32 %426 to i64, !dbg !1682
  %428 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %240, i64 0, i32 1, i64 %427, !dbg !1682
  %429 = sub nsw i32 4, %426, !dbg !1682
  %430 = and i32 %429, 7, !dbg !1682
  %431 = zext i32 %430 to i64, !dbg !1682
  %432 = getelementptr inbounds i8, i8* %428, i64 %431, !dbg !1682
  %433 = bitcast i8* %432 to %struct.raxNode**, !dbg !1682
  %434 = bitcast %struct.raxNode** %6 to i8*, !dbg !1684
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %434) #7, !dbg !1684
  br label %435, !dbg !1685

; <label>:435:                                    ; preds = %435, %423
  %436 = phi %struct.raxNode** [ %433, %423 ], [ %441, %435 ], !dbg !1686
  %437 = bitcast %struct.raxNode** %436 to i8*, !dbg !1687
  %438 = call i8* @memcpy(i8* nonnull %434, i8* %437, i64 8) #6, !dbg !1688
  %439 = load %struct.raxNode*, %struct.raxNode** %6, align 8, !dbg !1689, !tbaa !165
  %440 = icmp eq %struct.raxNode* %439, %238, !dbg !1691
  %441 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %436, i64 1, !dbg !1692
  br i1 %440, label %442, label %435, !dbg !1693, !llvm.loop !1542

; <label>:442:                                    ; preds = %435
  %443 = bitcast %struct.raxNode** %436 to i8*, !dbg !1687
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %434) #7, !dbg !1694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1695
  %444 = call i8* @memcpy(i8* %443, i8* nonnull %305, i64 8) #6, !dbg !1697
  br label %447, !dbg !1698

; <label>:445:                                    ; preds = %416
  %446 = bitcast %struct.rax* %0 to i64*, !dbg !1699
  store i64 %408, i64* %446, align 8, !dbg !1699, !tbaa !121
  br label %447

; <label>:447:                                    ; preds = %445, %442
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %305) #7, !dbg !1701
  br label %449

; <label>:448:                                    ; preds = %309, %312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1702
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %305) #7, !dbg !1701
  br label %455

; <label>:449:                                    ; preds = %94, %297, %447, %81, %130, %180, %183
  %450 = load i8**, i8*** %16, align 8, !dbg !1705, !tbaa !1261
  %451 = icmp eq i8** %450, %15, !dbg !1706
  br i1 %451, label %454, label %452, !dbg !1707

; <label>:452:                                    ; preds = %449
  %453 = bitcast i8** %450 to i8*, !dbg !1708
  call void @zfree(i8* %453) #6, !dbg !1709
  br label %454, !dbg !1709

; <label>:454:                                    ; preds = %449, %452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1710
  br label %455, !dbg !1711

; <label>:455:                                    ; preds = %448, %454, %41
  %456 = phi i32 [ 0, %41 ], [ 1, %448 ], [ 1, %454 ], !dbg !1712
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #7, !dbg !1713
  call void @llvm.lifetime.end.p0i8(i64 288, i8* nonnull %14) #7, !dbg !1713
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #7, !dbg !1713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1713
  ret i32 %456, !dbg !1713
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxInsert(%struct.rax*, i8*, i64, i8*, i8**) local_unnamed_addr #0 !dbg !1714 {
  %6 = tail call i32 @raxGenericInsert(%struct.rax* %0, i8* %1, i64 %2, i8* %3, i8** %4, i32 1) #9, !dbg !1728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1729
  ret i32 %6, !dbg !1729
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxTryInsert(%struct.rax*, i8*, i64, i8*, i8**) local_unnamed_addr #0 !dbg !1730 {
  %6 = tail call i32 @raxGenericInsert(%struct.rax* %0, i8* %1, i64 %2, i8* %3, i8** %4, i32 0) #9, !dbg !1742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1743
  ret i32 %6, !dbg !1743
}

; Function Attrs: noredzone nounwind
define dso_local i8* @raxFind(%struct.rax* nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !1744 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.raxNode*, align 8
  %6 = bitcast %struct.raxNode** %5 to i8*, !dbg !1766
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7, !dbg !1766
  %7 = bitcast %struct.rax* %0 to i64*, !dbg !1767
  %8 = load i64, i64* %7, align 8, !dbg !1767, !tbaa !121
  %9 = bitcast %struct.raxNode** %5 to i64*, !dbg !1768
  store i64 %8, i64* %9, align 8, !dbg !1768, !tbaa !165
  %10 = inttoptr i64 %8 to %struct.raxNode*, !dbg !1772
  %11 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %10, i64 0, i32 0, !dbg !1773
  %12 = load i32, i32* %11, align 4, !dbg !1773
  %13 = icmp ugt i32 %12, 7, !dbg !1772
  %14 = icmp ne i64 %2, 0, !dbg !1774
  %15 = and i1 %14, %13, !dbg !1775
  %16 = inttoptr i64 %8 to i32*, !dbg !1775
  %17 = load i32, i32* %16, align 4, !dbg !1776
  br i1 %15, label %18, label %97, !dbg !1775

; <label>:18:                                     ; preds = %3, %68
  %19 = phi i32 [ %85, %68 ], [ %17, %3 ], !dbg !1777
  %20 = phi i64 [ %89, %68 ], [ %8, %3 ]
  %21 = phi %struct.raxNode* [ %83, %68 ], [ %10, %3 ]
  %22 = phi i32 [ %85, %68 ], [ %12, %3 ]
  %23 = phi i64 [ %70, %68 ], [ 0, %3 ]
  %24 = and i32 %22, 4, !dbg !1779
  %25 = icmp eq i32 %24, 0, !dbg !1780
  %26 = lshr i32 %19, 3, !dbg !1777
  %27 = zext i32 %26 to i64, !dbg !1777
  br i1 %25, label %32, label %28, !dbg !1781

; <label>:28:                                     ; preds = %18
  %29 = icmp ne i32 %26, 0, !dbg !1782
  %30 = icmp ult i64 %23, %2, !dbg !1783
  %31 = and i1 %30, %29, !dbg !1784
  br i1 %31, label %37, label %51, !dbg !1784

; <label>:32:                                     ; preds = %18
  %33 = icmp eq i32 %26, 0, !dbg !1785
  br i1 %33, label %95, label %34, !dbg !1786

; <label>:34:                                     ; preds = %32
  %35 = getelementptr inbounds i8, i8* %1, i64 %23
  %36 = load i8, i8* %35, align 1, !tbaa !267
  br label %55, !dbg !1786

; <label>:37:                                     ; preds = %28, %45
  %38 = phi i64 [ %47, %45 ], [ %23, %28 ]
  %39 = phi i64 [ %46, %45 ], [ 0, %28 ]
  %40 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %21, i64 0, i32 1, i64 %39, !dbg !1787
  %41 = load i8, i8* %40, align 1, !dbg !1787, !tbaa !267
  %42 = getelementptr inbounds i8, i8* %1, i64 %38, !dbg !1788
  %43 = load i8, i8* %42, align 1, !dbg !1788, !tbaa !267
  %44 = icmp eq i8 %41, %43, !dbg !1789
  br i1 %44, label %45, label %51, !dbg !1790

; <label>:45:                                     ; preds = %37
  %46 = add nuw nsw i64 %39, 1, !dbg !1791
  %47 = add nuw i64 %38, 1, !dbg !1792
  %48 = icmp ult i64 %46, %27, !dbg !1782
  %49 = icmp ult i64 %47, %2, !dbg !1783
  %50 = and i1 %49, %48, !dbg !1784
  br i1 %50, label %37, label %51, !dbg !1784, !llvm.loop !575

; <label>:51:                                     ; preds = %45, %37, %28
  %52 = phi i64 [ 0, %28 ], [ %46, %45 ], [ %39, %37 ], !dbg !1777
  %53 = phi i64 [ %23, %28 ], [ %47, %45 ], [ %38, %37 ], !dbg !1777
  %54 = icmp eq i64 %52, %27, !dbg !1793
  br i1 %54, label %68, label %90, !dbg !1794

; <label>:55:                                     ; preds = %60, %34
  %56 = phi i64 [ 0, %34 ], [ %61, %60 ]
  %57 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %21, i64 0, i32 1, i64 %56, !dbg !1795
  %58 = load i8, i8* %57, align 1, !dbg !1795, !tbaa !267
  %59 = icmp eq i8 %58, %36, !dbg !1796
  br i1 %59, label %63, label %60, !dbg !1797

; <label>:60:                                     ; preds = %55
  %61 = add nuw nsw i64 %56, 1, !dbg !1798
  %62 = icmp ult i64 %61, %27, !dbg !1785
  br i1 %62, label %55, label %63, !dbg !1786, !llvm.loop !587

; <label>:63:                                     ; preds = %60, %55
  %64 = phi i64 [ %56, %55 ], [ %61, %60 ], !dbg !1799
  %65 = icmp eq i64 %64, %27, !dbg !1800
  br i1 %65, label %92, label %66, !dbg !1801

; <label>:66:                                     ; preds = %63
  %67 = add i64 %23, 1, !dbg !1802
  br label %68

; <label>:68:                                     ; preds = %66, %51
  %69 = phi i64 [ %27, %51 ], [ %64, %66 ], !dbg !1803
  %70 = phi i64 [ %53, %51 ], [ %67, %66 ], !dbg !1804
  %71 = lshr i32 %22, 3, !dbg !1805
  %72 = zext i32 %71 to i64, !dbg !1805
  %73 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %21, i64 0, i32 1, i64 %72, !dbg !1805
  %74 = sub nsw i32 4, %71, !dbg !1805
  %75 = and i32 %74, 7, !dbg !1805
  %76 = zext i32 %75 to i64, !dbg !1805
  %77 = getelementptr inbounds i8, i8* %73, i64 %76, !dbg !1805
  %78 = bitcast i8* %77 to %struct.raxNode**, !dbg !1805
  %79 = select i1 %25, i64 %69, i64 0, !dbg !1807
  %80 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %78, i64 %79, !dbg !1808
  %81 = bitcast %struct.raxNode** %80 to i8*, !dbg !1809
  %82 = call i8* @memcpy(i8* nonnull %6, i8* %81, i64 8) #6, !dbg !1810
  %83 = load %struct.raxNode*, %struct.raxNode** %5, align 8, !dbg !1772, !tbaa !165
  %84 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %83, i64 0, i32 0, !dbg !1773
  %85 = load i32, i32* %84, align 4, !dbg !1773
  %86 = icmp ugt i32 %85, 7, !dbg !1772
  %87 = icmp ult i64 %70, %2, !dbg !1774
  %88 = and i1 %87, %86, !dbg !1775
  %89 = ptrtoint %struct.raxNode* %83 to i64, !dbg !1775
  br i1 %88, label %18, label %97, !dbg !1775

; <label>:90:                                     ; preds = %51
  %91 = inttoptr i64 %20 to %struct.raxNode*
  br label %97, !dbg !1811

; <label>:92:                                     ; preds = %63
  %93 = zext i32 %26 to i64, !dbg !1777
  %94 = inttoptr i64 %20 to %struct.raxNode*
  br label %97, !dbg !1811

; <label>:95:                                     ; preds = %32
  %96 = inttoptr i64 %20 to %struct.raxNode*
  br label %97, !dbg !1811

; <label>:97:                                     ; preds = %68, %3, %90, %92, %95
  %98 = phi i32 [ %19, %90 ], [ %19, %92 ], [ %19, %95 ], [ %17, %3 ], [ %85, %68 ], !dbg !1811
  %99 = phi %struct.raxNode* [ %91, %90 ], [ %94, %92 ], [ %96, %95 ], [ %10, %3 ], [ %83, %68 ]
  %100 = phi i64 [ %52, %90 ], [ %93, %92 ], [ 0, %95 ], [ 0, %3 ], [ 0, %68 ], !dbg !1812
  %101 = phi i64 [ %53, %90 ], [ %23, %92 ], [ %23, %95 ], [ 0, %3 ], [ %70, %68 ], !dbg !1770
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7, !dbg !1813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1814
  %102 = icmp eq i64 %101, %2, !dbg !1816
  br i1 %102, label %103, label %115, !dbg !1818

; <label>:103:                                    ; preds = %97
  %104 = trunc i64 %100 to i32, !dbg !1819
  %105 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %99, i64 0, i32 0, !dbg !1820
  %106 = load i32, i32* %105, align 4, !dbg !1820
  %107 = and i32 %106, 4, !dbg !1820
  %108 = icmp ne i32 %104, 0, !dbg !1821
  %109 = and i32 %107, %98, !dbg !1822
  %110 = icmp ne i32 %109, 0, !dbg !1822
  %111 = and i1 %108, %110, !dbg !1822
  %112 = and i32 %106, 1, !dbg !1823
  %113 = icmp eq i32 %112, 0, !dbg !1824
  %114 = or i1 %113, %111, !dbg !1822
  br i1 %114, label %115, label %117, !dbg !1822

; <label>:115:                                    ; preds = %97, %103
  %116 = load i8*, i8** @raxNotFound, align 8, !dbg !1825, !tbaa !165
  br label %145, !dbg !1826

; <label>:117:                                    ; preds = %103
  %118 = and i32 %106, 2, !dbg !1829
  %119 = icmp eq i32 %118, 0, !dbg !1830
  br i1 %119, label %120, label %143, !dbg !1831

; <label>:120:                                    ; preds = %117
  %121 = bitcast %struct.raxNode* %99 to i8*, !dbg !1832
  %122 = lshr i32 %106, 3, !dbg !1833
  %123 = add nuw nsw i32 %122, 4, !dbg !1833
  %124 = sub nsw i32 4, %122, !dbg !1833
  %125 = and i32 %124, 7, !dbg !1833
  %126 = add nuw nsw i32 %123, %125, !dbg !1833
  %127 = zext i32 %126 to i64, !dbg !1833
  %128 = icmp eq i32 %107, 0, !dbg !1833
  %129 = and i32 %106, -8, !dbg !1833
  %130 = select i1 %128, i32 %129, i32 8, !dbg !1833
  %131 = zext i32 %130 to i64, !dbg !1833
  %132 = shl i32 %106, 2
  %133 = and i32 %132, 8
  %134 = xor i32 %133, 8
  %135 = zext i32 %134 to i64
  %136 = add nuw nsw i64 %135, %131, !dbg !1833
  %137 = add nuw nsw i64 %136, %127, !dbg !1833
  %138 = getelementptr inbounds i8, i8* %121, i64 %137, !dbg !1834
  %139 = getelementptr inbounds i8, i8* %138, i64 -8, !dbg !1835
  %140 = bitcast i8** %4 to i8*, !dbg !1837
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %140) #7, !dbg !1837
  %141 = call i8* @memcpy(i8* nonnull %140, i8* nonnull %139, i64 8) #6, !dbg !1838
  %142 = load i8*, i8** %4, align 8, !dbg !1839, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %140) #7, !dbg !1841
  br label %143

; <label>:143:                                    ; preds = %117, %120
  %144 = phi i8* [ %142, %120 ], [ null, %117 ], !dbg !1842
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1841
  br label %145, !dbg !1843

; <label>:145:                                    ; preds = %143, %115
  %146 = phi i8* [ %116, %115 ], [ %144, %143 ], !dbg !1776
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1844
  ret i8* %146, !dbg !1844
}

; Function Attrs: noredzone nounwind
define dso_local nonnull %struct.raxNode** @raxFindParentLink(%struct.raxNode*, %struct.raxNode* readnone) local_unnamed_addr #0 !dbg !1517 {
  %3 = alloca %struct.raxNode*, align 8
  %4 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 0, !dbg !1847
  %5 = load i32, i32* %4, align 4, !dbg !1847
  %6 = lshr i32 %5, 3, !dbg !1847
  %7 = zext i32 %6 to i64, !dbg !1847
  %8 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 1, i64 %7, !dbg !1847
  %9 = sub nsw i32 4, %6, !dbg !1847
  %10 = and i32 %9, 7, !dbg !1847
  %11 = zext i32 %10 to i64, !dbg !1847
  %12 = getelementptr inbounds i8, i8* %8, i64 %11, !dbg !1847
  %13 = bitcast i8* %12 to %struct.raxNode**, !dbg !1847
  %14 = bitcast %struct.raxNode** %3 to i8*, !dbg !1849
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #7, !dbg !1849
  br label %15, !dbg !1543

; <label>:15:                                     ; preds = %15, %2
  %16 = phi %struct.raxNode** [ %13, %2 ], [ %21, %15 ], !dbg !1850
  %17 = bitcast %struct.raxNode** %16 to i8*, !dbg !1851
  %18 = call i8* @memcpy(i8* nonnull %14, i8* %17, i64 8) #6, !dbg !1852
  %19 = load %struct.raxNode*, %struct.raxNode** %3, align 8, !dbg !1853, !tbaa !165
  %20 = icmp eq %struct.raxNode* %19, %1, !dbg !1855
  %21 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %16, i64 1, !dbg !1856
  br i1 %20, label %22, label %15, !dbg !1857, !llvm.loop !1542

; <label>:22:                                     ; preds = %15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #7, !dbg !1858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1859
  ret %struct.raxNode** %16, !dbg !1859
}

; Function Attrs: noredzone nounwind
define dso_local %struct.raxNode* @raxRemoveChild(%struct.raxNode*, %struct.raxNode* readnone) local_unnamed_addr #0 !dbg !1860 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.raxNode*, align 8
  %6 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 0, !dbg !1880
  %7 = load i32, i32* %6, align 4, !dbg !1880
  %8 = and i32 %7, 4, !dbg !1880
  %9 = icmp eq i32 %8, 0, !dbg !1881
  br i1 %9, label %50, label %10, !dbg !1882

; <label>:10:                                     ; preds = %2
  %11 = and i32 %7, 1, !dbg !1884
  %12 = icmp eq i32 %11, 0, !dbg !1886
  br i1 %12, label %13, label %14, !dbg !1887

; <label>:13:                                     ; preds = %10
  store i32 %11, i32* %6, align 4, !dbg !1888
  br label %147, !dbg !1889

; <label>:14:                                     ; preds = %10
  %15 = and i32 %7, 2, !dbg !1892
  %16 = icmp eq i32 %15, 0, !dbg !1893
  br i1 %16, label %19, label %17, !dbg !1894

; <label>:17:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1895
  %18 = bitcast i8** %3 to i8*, !dbg !1896
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18), !dbg !1896
  store i8* null, i8** %3, align 8, !tbaa !165
  store i32 1, i32* %6, align 4, !dbg !1900
  br label %46, !dbg !1901

; <label>:19:                                     ; preds = %14
  %20 = bitcast %struct.raxNode* %0 to i8*, !dbg !1902
  %21 = lshr i32 %7, 3, !dbg !1903
  %22 = sub nsw i32 4, %21, !dbg !1903
  %23 = and i32 %22, 7, !dbg !1903
  %24 = add nuw nsw i32 %21, 12, !dbg !1903
  %25 = add nuw nsw i32 %24, %23, !dbg !1903
  %26 = shl i32 %7, 2
  %27 = and i32 %26, 8
  %28 = xor i32 %27, 8
  %29 = add nuw i32 %25, %28, !dbg !1903
  %30 = zext i32 %29 to i64, !dbg !1903
  %31 = getelementptr inbounds i8, i8* %20, i64 %30, !dbg !1904
  %32 = getelementptr inbounds i8, i8* %31, i64 -8, !dbg !1905
  %33 = bitcast i8** %4 to i8*, !dbg !1907
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #7, !dbg !1907
  %34 = call i8* @memcpy(i8* nonnull %33, i8* nonnull %32, i64 8) #6, !dbg !1908
  %35 = load i8*, i8** %4, align 8, !dbg !1909, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #7, !dbg !1895
  %36 = load i32, i32* %6, align 4, !dbg !1911
  %37 = and i32 %36, 1, !dbg !1888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1895
  store i32 %37, i32* %6, align 4, !dbg !1888
  %38 = icmp eq i32 %37, 0, !dbg !1912
  br i1 %38, label %147, label %39, !dbg !1889

; <label>:39:                                     ; preds = %19
  %40 = bitcast i8** %3 to i8*, !dbg !1896
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40), !dbg !1896
  store i8* %35, i8** %3, align 8, !tbaa !165
  store i32 1, i32* %6, align 4, !dbg !1900
  %41 = icmp eq i8* %35, null, !dbg !1913
  br i1 %41, label %46, label %42, !dbg !1901

; <label>:42:                                     ; preds = %39
  store i32 1, i32* %6, align 4, !dbg !1914
  %43 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 2, !dbg !1915
  %44 = bitcast %struct.raxNode* %43 to i8*, !dbg !1915
  %45 = call i8* @memcpy(i8* nonnull %44, i8* nonnull %40, i64 8) #6, !dbg !1917
  br label %48, !dbg !1918

; <label>:46:                                     ; preds = %17, %39
  %47 = phi i8* [ %18, %17 ], [ %40, %39 ]
  store i32 3, i32* %6, align 4, !dbg !1919
  br label %48

; <label>:48:                                     ; preds = %42, %46
  %49 = phi i8* [ %40, %42 ], [ %47, %46 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1920
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49), !dbg !1920
  br label %147, !dbg !1921

; <label>:50:                                     ; preds = %2
  %51 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 1, i64 0, !dbg !1922
  %52 = lshr i32 %7, 3, !dbg !1922
  %53 = zext i32 %52 to i64, !dbg !1922
  %54 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 1, i64 %53, !dbg !1922
  %55 = sub nsw i32 4, %52, !dbg !1922
  %56 = and i32 %55, 7, !dbg !1922
  %57 = zext i32 %56 to i64, !dbg !1922
  %58 = getelementptr inbounds i8, i8* %54, i64 %57, !dbg !1922
  %59 = bitcast i8* %58 to %struct.raxNode**, !dbg !1922
  %60 = bitcast %struct.raxNode** %5 to i8*
  br label %61, !dbg !1926

; <label>:61:                                     ; preds = %61, %50
  %62 = phi i8* [ %51, %50 ], [ %69, %61 ], !dbg !1925
  %63 = phi %struct.raxNode** [ %59, %50 ], [ %68, %61 ], !dbg !1924
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60) #7, !dbg !1927
  %64 = bitcast %struct.raxNode** %63 to i8*, !dbg !1928
  %65 = call i8* @memcpy(i8* nonnull %60, i8* %64, i64 8) #6, !dbg !1929
  %66 = load %struct.raxNode*, %struct.raxNode** %5, align 8, !dbg !1930, !tbaa !165
  %67 = icmp eq %struct.raxNode* %66, %1, !dbg !1933
  %68 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %63, i64 1, !dbg !1934
  %69 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1935
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #7, !dbg !1936
  br i1 %67, label %70, label %61, !llvm.loop !1937

; <label>:70:                                     ; preds = %61
  %71 = load i32, i32* %6, align 4, !dbg !1938
  %72 = lshr i32 %71, 3, !dbg !1938
  %73 = ptrtoint i8* %62 to i64, !dbg !1939
  %74 = ptrtoint i8* %51 to i64, !dbg !1939
  %75 = sub i64 %74, %73, !dbg !1940
  %76 = trunc i64 %75 to i32, !dbg !1941
  %77 = add i32 %72, %76, !dbg !1941
  %78 = add i32 %77, -1, !dbg !1941
  %79 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1943
  %80 = sext i32 %78 to i64, !dbg !1944
  %81 = call i8* @memmove(i8* %62, i8* nonnull %79, i64 %80) #6, !dbg !1945
  %82 = load i32, i32* %6, align 4, !dbg !1946
  %83 = lshr i32 %82, 3, !dbg !1946
  %84 = add nuw nsw i32 %83, 4, !dbg !1947
  %85 = and i32 %84, 7, !dbg !1948
  %86 = icmp eq i32 %85, 1, !dbg !1949
  %87 = select i1 %86, i64 8, i64 0, !dbg !1950
  br i1 %86, label %88, label %96, !dbg !1952

; <label>:88:                                     ; preds = %70
  %89 = sub nsw i64 0, %87, !dbg !1953
  %90 = getelementptr inbounds i8, i8* %58, i64 %89, !dbg !1953
  %91 = sub i32 %83, %77, !dbg !1955
  %92 = sext i32 %91 to i64, !dbg !1956
  %93 = shl nsw i64 %92, 3, !dbg !1957
  %94 = call i8* @memmove(i8* nonnull %90, i8* nonnull %58, i64 %93) #6, !dbg !1958
  %95 = load i32, i32* %6, align 4, !dbg !1959
  br label %96, !dbg !1958

; <label>:96:                                     ; preds = %88, %70
  %97 = phi i32 [ %95, %88 ], [ %82, %70 ], !dbg !1959
  %98 = and i32 %97, 1, !dbg !1959
  %99 = icmp eq i32 %98, 0, !dbg !1960
  br i1 %99, label %105, label %100, !dbg !1961

; <label>:100:                                    ; preds = %96
  %101 = shl i32 %97, 2
  %102 = and i32 %101, 8
  %103 = xor i32 %102, 8
  %104 = zext i32 %103 to i64
  br label %105

; <label>:105:                                    ; preds = %96, %100
  %106 = phi i64 [ 0, %96 ], [ %104, %100 ]
  %107 = bitcast %struct.raxNode** %63 to i8*, !dbg !1963
  %108 = sub nsw i64 0, %87, !dbg !1964
  %109 = getelementptr inbounds i8, i8* %107, i64 %108, !dbg !1964
  %110 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %63, i64 1, !dbg !1965
  %111 = bitcast %struct.raxNode** %110 to i8*, !dbg !1966
  %112 = shl nsw i64 %80, 3, !dbg !1967
  %113 = add nsw i64 %106, %112, !dbg !1968
  %114 = call i8* @memmove(i8* %109, i8* nonnull %111, i64 %113) #6, !dbg !1969
  %115 = load i32, i32* %6, align 4, !dbg !1970
  %116 = lshr i32 %115, 3, !dbg !1970
  %117 = add nuw nsw i32 %116, 536870911, !dbg !1970
  %118 = shl i32 %117, 3, !dbg !1970
  %119 = and i32 %115, 7, !dbg !1970
  %120 = or i32 %118, %119, !dbg !1970
  store i32 %120, i32* %6, align 4, !dbg !1970
  %121 = bitcast %struct.raxNode* %0 to i8*, !dbg !1971
  %122 = and i32 %117, 536870911, !dbg !1972
  %123 = add nuw nsw i32 %122, 4, !dbg !1972
  %124 = sub nsw i32 5, %116, !dbg !1972
  %125 = and i32 %124, 7, !dbg !1972
  %126 = add nuw nsw i32 %123, %125, !dbg !1972
  %127 = zext i32 %126 to i64, !dbg !1972
  %128 = and i32 %115, 4, !dbg !1972
  %129 = icmp eq i32 %128, 0, !dbg !1972
  %130 = select i1 %129, i32 %118, i32 8, !dbg !1972
  %131 = zext i32 %130 to i64, !dbg !1972
  %132 = add nuw nsw i64 %127, %131, !dbg !1972
  %133 = and i32 %115, 1, !dbg !1972
  %134 = icmp eq i32 %133, 0, !dbg !1972
  br i1 %134, label %140, label %135, !dbg !1972

; <label>:135:                                    ; preds = %105
  %136 = shl i32 %115, 2
  %137 = and i32 %136, 8
  %138 = xor i32 %137, 8
  %139 = zext i32 %138 to i64
  br label %140

; <label>:140:                                    ; preds = %105, %135
  %141 = phi i64 [ 0, %105 ], [ %139, %135 ]
  %142 = add nuw nsw i64 %132, %141, !dbg !1972
  %143 = call i8* @zrealloc(i8* %121, i64 %142) #6, !dbg !1973
  %144 = bitcast i8* %143 to %struct.raxNode*, !dbg !1973
  %145 = icmp eq i8* %143, null, !dbg !1975
  %146 = select i1 %145, %struct.raxNode* %0, %struct.raxNode* %144, !dbg !1975
  br label %147

; <label>:147:                                    ; preds = %13, %48, %19, %140
  %148 = phi %struct.raxNode* [ %146, %140 ], [ %0, %19 ], [ %0, %48 ], [ %0, %13 ], !dbg !1976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1977
  ret %struct.raxNode* %148, !dbg !1977
}

; Function Attrs: noredzone nounwind
define dso_local void @raxRecursiveFree(%struct.rax* nocapture, %struct.raxNode*, void (i8*)*) local_unnamed_addr #0 !dbg !1978 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.raxNode*, align 8
  %6 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %1, i64 0, i32 0, !dbg !1995
  %7 = load i32, i32* %6, align 4, !dbg !1995
  %8 = and i32 %7, 4, !dbg !1995
  %9 = icmp eq i32 %8, 0, !dbg !1996
  %10 = lshr i32 %7, 3, !dbg !1997
  %11 = select i1 %9, i32 %10, i32 1, !dbg !1996
  %12 = bitcast %struct.raxNode* %1 to i8*, !dbg !1999
  %13 = add nuw nsw i32 %10, 4, !dbg !1999
  %14 = sub nsw i32 4, %10, !dbg !1999
  %15 = and i32 %14, 7, !dbg !1999
  %16 = add nuw nsw i32 %13, %15, !dbg !1999
  %17 = zext i32 %16 to i64, !dbg !1999
  %18 = and i32 %7, -8, !dbg !1999
  %19 = select i1 %9, i32 %18, i32 8, !dbg !1999
  %20 = zext i32 %19 to i64, !dbg !1999
  %21 = add nuw nsw i64 %17, %20, !dbg !1999
  %22 = and i32 %7, 1, !dbg !1999
  %23 = icmp eq i32 %22, 0, !dbg !1999
  br i1 %23, label %31, label %24, !dbg !1999

; <label>:24:                                     ; preds = %3
  %25 = shl i32 %7, 2
  %26 = and i32 %25, 8
  %27 = xor i32 %26, 8
  %28 = zext i32 %27 to i64
  %29 = add nuw nsw i64 %21, %28, !dbg !1999
  %30 = sub nsw i64 0, %28
  br label %31

; <label>:31:                                     ; preds = %3, %24
  %32 = phi i64 [ %29, %24 ], [ %21, %3 ]
  %33 = phi i64 [ %30, %24 ], [ 0, %3 ]
  %34 = icmp eq i32 %11, 0, !dbg !2000
  br i1 %34, label %50, label %35, !dbg !2000

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %12, i64 %32, !dbg !1999
  %37 = getelementptr inbounds i8, i8* %36, i64 -8, !dbg !1999
  %38 = getelementptr inbounds i8, i8* %37, i64 %33, !dbg !1999
  %39 = bitcast i8* %38 to %struct.raxNode**, !dbg !1999
  %40 = bitcast %struct.raxNode** %5 to i8*
  br label %41, !dbg !2000

; <label>:41:                                     ; preds = %35, %41
  %42 = phi %struct.raxNode** [ %39, %35 ], [ %48, %41 ]
  %43 = phi i32 [ %11, %35 ], [ %44, %41 ]
  %44 = add nsw i32 %43, -1, !dbg !2002
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #7, !dbg !2003
  %45 = bitcast %struct.raxNode** %42 to i8*, !dbg !2004
  %46 = call i8* @memcpy(i8* nonnull %40, i8* %45, i64 8) #6, !dbg !2005
  %47 = load %struct.raxNode*, %struct.raxNode** %5, align 8, !dbg !2006, !tbaa !165
  call void @raxRecursiveFree(%struct.rax* %0, %struct.raxNode* %47, void (i8*)* %2) #9, !dbg !2008
  %48 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %42, i64 -1, !dbg !2009
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #7, !dbg !2010
  %49 = icmp eq i32 %44, 0, !dbg !2000
  br i1 %49, label %50, label %41, !dbg !2000, !llvm.loop !2011

; <label>:50:                                     ; preds = %41, %31
  %51 = icmp eq void (i8*)* %2, null, !dbg !2012
  br i1 %51, label %79, label %52, !dbg !2014

; <label>:52:                                     ; preds = %50
  %53 = load i32, i32* %6, align 4, !dbg !2015
  %54 = and i32 %53, 3, !dbg !2016
  %55 = icmp eq i32 %54, 1, !dbg !2016
  br i1 %55, label %56, label %79, !dbg !2016

; <label>:56:                                     ; preds = %52
  %57 = lshr i32 %53, 3, !dbg !2019
  %58 = add nuw nsw i32 %57, 4, !dbg !2019
  %59 = sub nsw i32 4, %57, !dbg !2019
  %60 = and i32 %59, 7, !dbg !2019
  %61 = add nuw nsw i32 %58, %60, !dbg !2019
  %62 = zext i32 %61 to i64, !dbg !2019
  %63 = and i32 %53, 4, !dbg !2019
  %64 = icmp eq i32 %63, 0, !dbg !2019
  %65 = and i32 %53, -8, !dbg !2019
  %66 = select i1 %64, i32 %65, i32 8, !dbg !2019
  %67 = zext i32 %66 to i64, !dbg !2019
  %68 = shl i32 %53, 2
  %69 = and i32 %68, 8
  %70 = xor i32 %69, 8
  %71 = zext i32 %70 to i64
  %72 = add nuw nsw i64 %71, %67, !dbg !2019
  %73 = add nuw nsw i64 %72, %62, !dbg !2019
  %74 = getelementptr inbounds i8, i8* %12, i64 %73, !dbg !2020
  %75 = getelementptr inbounds i8, i8* %74, i64 -8, !dbg !2021
  %76 = bitcast i8** %4 to i8*, !dbg !2023
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %76) #7, !dbg !2023
  %77 = call i8* @memcpy(i8* nonnull %76, i8* nonnull %75, i64 8) #6, !dbg !2024
  %78 = load i8*, i8** %4, align 8, !dbg !2025, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %76) #7, !dbg !2027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2027
  call void %2(i8* %78) #6, !dbg !2028
  br label %79, !dbg !2028

; <label>:79:                                     ; preds = %52, %50, %56
  call void @zfree(i8* %12) #6, !dbg !2029
  %80 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 2, !dbg !2030
  %81 = load i64, i64* %80, align 8, !dbg !2031, !tbaa !920
  %82 = add i64 %81, -1, !dbg !2031
  store i64 %82, i64* %80, align 8, !dbg !2031, !tbaa !920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2032
  ret void, !dbg !2032
}

; Function Attrs: noredzone nounwind
define dso_local void @raxFreeWithCallback(%struct.rax*, void (i8*)*) local_unnamed_addr #0 !dbg !2033 {
  %3 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 0, !dbg !2041
  %4 = load %struct.raxNode*, %struct.raxNode** %3, align 8, !dbg !2041, !tbaa !121
  tail call void @raxRecursiveFree(%struct.rax* %0, %struct.raxNode* %4, void (i8*)* %1) #9, !dbg !2042
  %5 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 2, !dbg !2043
  %6 = load i64, i64* %5, align 8, !dbg !2043, !tbaa !920
  %7 = icmp eq i64 %6, 0, !dbg !2043
  br i1 %7, label %9, label %8, !dbg !2043

; <label>:8:                                      ; preds = %2
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 1242, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.raxFreeWithCallback, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !2043
  unreachable, !dbg !2043

; <label>:9:                                      ; preds = %2
  %10 = bitcast %struct.rax* %0 to i8*, !dbg !2044
  tail call void @zfree(i8* %10) #6, !dbg !2045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2046
  ret void, !dbg !2046
}

; Function Attrs: noredzone nounwind
define dso_local void @raxFree(%struct.rax*) local_unnamed_addr #0 !dbg !2047 {
  %2 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 0, !dbg !2056
  %3 = load %struct.raxNode*, %struct.raxNode** %2, align 8, !dbg !2056, !tbaa !121
  tail call void @raxRecursiveFree(%struct.rax* %0, %struct.raxNode* %3, void (i8*)* null) #6, !dbg !2057
  %4 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 2, !dbg !2058
  %5 = load i64, i64* %4, align 8, !dbg !2058, !tbaa !920
  %6 = icmp eq i64 %5, 0, !dbg !2058
  br i1 %6, label %8, label %7, !dbg !2058

; <label>:7:                                      ; preds = %1
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 1242, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.raxFreeWithCallback, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !2058
  unreachable, !dbg !2058

; <label>:8:                                      ; preds = %1
  %9 = bitcast %struct.rax* %0 to i8*, !dbg !2059
  tail call void @zfree(i8* %9) #6, !dbg !2060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2062
  ret void, !dbg !2062
}

; Function Attrs: noredzone nounwind
define dso_local void @raxStart(%struct.raxIterator*, %struct.rax*) local_unnamed_addr #0 !dbg !2063 {
  %3 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 0, !dbg !2092
  store i32 2, i32* %3, align 8, !dbg !2093, !tbaa !2094
  %4 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 1, !dbg !2096
  store %struct.rax* %1, %struct.rax** %4, align 8, !dbg !2097, !tbaa !2098
  %5 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 4, !dbg !2099
  %6 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 6, i64 0, !dbg !2100
  %7 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 2, !dbg !2101
  store i8* %6, i8** %7, align 8, !dbg !2102, !tbaa !2103
  %8 = bitcast i64* %5 to <2 x i64>*, !dbg !2104
  store <2 x i64> <i64 0, i64 128>, <2 x i64>* %8, align 8, !dbg !2104, !tbaa !109
  %9 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 3, !dbg !2105
  store i8* null, i8** %9, align 8, !dbg !2106, !tbaa !2107
  %10 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 9, !dbg !2108
  store i32 (%struct.raxNode**)* null, i32 (%struct.raxNode**)** %10, align 8, !dbg !2109, !tbaa !2110
  %11 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 3, i64 0, !dbg !2113
  %12 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 0, !dbg !2114
  store i8** %11, i8*** %12, align 8, !dbg !2115, !tbaa !1261
  %13 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 1, !dbg !2116
  %14 = bitcast i64* %13 to <2 x i64>*, !dbg !2117
  store <2 x i64> <i64 0, i64 32>, <2 x i64>* %14, align 8, !dbg !2117, !tbaa !109
  %15 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 4, !dbg !2118
  store i32 0, i32* %15, align 8, !dbg !2119, !tbaa !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2121
  ret void, !dbg !2121
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxIteratorAddChars(%struct.raxIterator*, i8*, i64) local_unnamed_addr #0 !dbg !2122 {
  %4 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 5, !dbg !2136
  %5 = load i64, i64* %4, align 8, !dbg !2136, !tbaa !2137
  %6 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 4, !dbg !2138
  %7 = load i64, i64* %6, align 8, !dbg !2138, !tbaa !2139
  %8 = add i64 %7, %2, !dbg !2140
  %9 = icmp ult i64 %5, %8, !dbg !2141
  %10 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 2, !dbg !2142
  br i1 %9, label %11, label %29, !dbg !2143

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %10, align 8, !dbg !2144, !tbaa !2103
  %13 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 6, i64 0, !dbg !2145
  %14 = icmp eq i8* %12, %13, !dbg !2146
  %15 = select i1 %14, i8* null, i8* %12, !dbg !2147
  %16 = shl i64 %8, 1, !dbg !2149
  %17 = tail call i8* @zrealloc(i8* %15, i64 %16) #6, !dbg !2151
  store i8* %17, i8** %10, align 8, !dbg !2152, !tbaa !2103
  %18 = icmp eq i8* %17, null, !dbg !2153
  %19 = icmp eq i8* %15, null, !dbg !2155
  br i1 %18, label %20, label %23, !dbg !2157

; <label>:20:                                     ; preds = %11
  %21 = select i1 %19, i8* %13, i8* %15, !dbg !2158
  store i8* %21, i8** %10, align 8, !dbg !2160, !tbaa !2103
  %22 = tail call i32* @__errno() #6, !dbg !2161
  store i32 12, i32* %22, align 4, !dbg !2162, !tbaa !48
  br label %36

; <label>:23:                                     ; preds = %11
  br i1 %19, label %24, label %27, !dbg !2163

; <label>:24:                                     ; preds = %23
  %25 = load i64, i64* %6, align 8, !dbg !2164, !tbaa !2139
  %26 = tail call i8* @memcpy(i8* nonnull %17, i8* nonnull %13, i64 %25) #6, !dbg !2165
  br label %27, !dbg !2165

; <label>:27:                                     ; preds = %24, %23
  store i64 %16, i64* %4, align 8, !dbg !2166, !tbaa !2137
  %28 = load i64, i64* %6, align 8, !dbg !2167, !tbaa !2139
  br label %29

; <label>:29:                                     ; preds = %3, %27
  %30 = phi i64 [ %28, %27 ], [ %7, %3 ], !dbg !2167
  %31 = load i8*, i8** %10, align 8, !dbg !2168, !tbaa !2103
  %32 = getelementptr inbounds i8, i8* %31, i64 %30, !dbg !2169
  %33 = tail call i8* @memmove(i8* %32, i8* %1, i64 %2) #6, !dbg !2170
  %34 = load i64, i64* %6, align 8, !dbg !2171, !tbaa !2139
  %35 = add i64 %34, %2, !dbg !2171
  store i64 %35, i64* %6, align 8, !dbg !2171, !tbaa !2139
  br label %36, !dbg !2172

; <label>:36:                                     ; preds = %20, %29
  %37 = phi i32 [ 1, %29 ], [ 0, %20 ], !dbg !2173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2174
  ret i32 %37, !dbg !2174
}

; Function Attrs: noredzone nounwind
define dso_local void @raxIteratorDelChars(%struct.raxIterator* nocapture, i64) local_unnamed_addr #0 !dbg !2175 {
  %3 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 4, !dbg !2183
  %4 = load i64, i64* %3, align 8, !dbg !2184, !tbaa !2139
  %5 = sub i64 %4, %1, !dbg !2184
  store i64 %5, i64* %3, align 8, !dbg !2184, !tbaa !2139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2185
  ret void, !dbg !2185
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxIteratorNextStep(%struct.raxIterator*, i32) local_unnamed_addr #0 !dbg !2186 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 0, !dbg !2211
  %6 = load i32, i32* %5, align 8, !dbg !2211, !tbaa !2094
  %7 = and i32 %6, 2, !dbg !2213
  %8 = icmp eq i32 %7, 0, !dbg !2213
  br i1 %8, label %9, label %318, !dbg !2214

; <label>:9:                                      ; preds = %2
  %10 = and i32 %6, 1, !dbg !2215
  %11 = icmp eq i32 %10, 0, !dbg !2215
  br i1 %11, label %14, label %12, !dbg !2217

; <label>:12:                                     ; preds = %9
  %13 = and i32 %6, -2, !dbg !2218
  store i32 %13, i32* %5, align 8, !dbg !2218, !tbaa !2094
  br label %318, !dbg !2220

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 4, !dbg !2221
  %16 = load i64, i64* %15, align 8, !dbg !2221, !tbaa !2139
  %17 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, !dbg !2223
  %18 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 1, !dbg !2224
  %19 = load i64, i64* %18, align 8, !dbg !2224, !tbaa !2225
  %20 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 7, !dbg !2227
  %21 = bitcast %struct.raxNode** %20 to i64*, !dbg !2227
  %22 = load i64, i64* %21, align 8, !dbg !2227, !tbaa !2228
  %23 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 2
  %24 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %17, i64 0, i32 0
  %25 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 2
  %26 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 1
  %27 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 3, i64 0
  %28 = bitcast %struct.raxStack* %17 to i8**
  %29 = bitcast %struct.raxNode** %20 to i8*
  %30 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 9
  %31 = inttoptr i64 %22 to i32*, !dbg !2230
  %32 = load i32, i32* %31, align 4, !dbg !2231
  %33 = inttoptr i64 %22 to %struct.raxNode*, !dbg !2230
  %34 = bitcast %struct.raxNode** %20 to i32**
  %35 = bitcast i8** %27 to i8*
  %36 = bitcast i8** %27 to i8*
  br label %37, !dbg !2230

; <label>:37:                                     ; preds = %314, %14
  %38 = phi i64 [ %22, %14 ], [ %317, %314 ]
  %39 = phi %struct.raxNode* [ %33, %14 ], [ %315, %314 ]
  %40 = phi i32 [ %32, %14 ], [ %316, %314 ], !dbg !2231
  %41 = phi i32 [ %1, %14 ], [ 0, %314 ]
  %42 = and i32 %40, 4, !dbg !2231
  %43 = lshr i32 %40, 3, !dbg !2232
  %44 = icmp eq i32 %41, 0, !dbg !2233
  %45 = or i32 %43, %42, !dbg !2234
  %46 = icmp ne i32 %45, 0, !dbg !2234
  %47 = and i1 %44, %46, !dbg !2235
  br i1 %47, label %48, label %145, !dbg !2235

; <label>:48:                                     ; preds = %37
  %49 = load i64, i64* %18, align 8, !dbg !2240, !tbaa !1254
  %50 = load i64, i64* %23, align 8, !dbg !2241, !tbaa !1257
  %51 = icmp eq i64 %49, %50, !dbg !2242
  br i1 %51, label %52, label %77, !dbg !2243

; <label>:52:                                     ; preds = %48
  %53 = load i8**, i8*** %24, align 8, !dbg !2244, !tbaa !1261
  %54 = icmp eq i8** %53, %27, !dbg !2245
  br i1 %54, label %55, label %64, !dbg !2246

; <label>:55:                                     ; preds = %52
  %56 = shl i64 %49, 4, !dbg !2247
  %57 = tail call i8* @zmalloc(i64 %56) #6, !dbg !2248
  store i8* %57, i8** %28, align 8, !dbg !2249, !tbaa !1261
  %58 = icmp eq i8* %57, null, !dbg !2250
  br i1 %58, label %59, label %60, !dbg !2251

; <label>:59:                                     ; preds = %55
  store i8** %27, i8*** %24, align 8, !dbg !2252, !tbaa !1261
  br label %74, !dbg !2253

; <label>:60:                                     ; preds = %55
  %61 = load i64, i64* %23, align 8, !dbg !2254, !tbaa !1257
  %62 = shl i64 %61, 3, !dbg !2255
  %63 = tail call i8* @memcpy(i8* nonnull %57, i8* nonnull %35, i64 %62) #6, !dbg !2256
  br label %70, !dbg !2257

; <label>:64:                                     ; preds = %52
  %65 = bitcast i8** %53 to i8*, !dbg !2258
  %66 = shl i64 %49, 4, !dbg !2259
  %67 = tail call i8* @zrealloc(i8* %65, i64 %66) #6, !dbg !2260
  %68 = icmp eq i8* %67, null, !dbg !2261
  br i1 %68, label %74, label %69, !dbg !2262

; <label>:69:                                     ; preds = %64
  store i8* %67, i8** %28, align 8, !dbg !2264, !tbaa !1261
  br label %70

; <label>:70:                                     ; preds = %69, %60
  %71 = load i64, i64* %23, align 8, !dbg !2265, !tbaa !1257
  %72 = shl i64 %71, 1, !dbg !2265
  store i64 %72, i64* %23, align 8, !dbg !2265, !tbaa !1257
  %73 = load i64, i64* %18, align 8, !dbg !2266, !tbaa !1254
  br label %77, !dbg !2267

; <label>:74:                                     ; preds = %64, %59
  %75 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 4, !dbg !2268
  store i32 1, i32* %75, align 8, !dbg !2268, !tbaa !1274
  %76 = tail call i32* @__errno() #6, !dbg !2268
  store i32 12, i32* %76, align 4, !dbg !2268, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2269
  br label %318, !dbg !2270

; <label>:77:                                     ; preds = %70, %48
  %78 = phi i64 [ %73, %70 ], [ %49, %48 ], !dbg !2266
  %79 = load i8**, i8*** %24, align 8, !dbg !2271, !tbaa !1261
  %80 = getelementptr inbounds i8*, i8** %79, i64 %78, !dbg !2272
  %81 = bitcast i8** %80 to i64*, !dbg !2273
  store i64 %38, i64* %81, align 8, !dbg !2273, !tbaa !165
  %82 = add i64 %78, 1, !dbg !2274
  store i64 %82, i64* %18, align 8, !dbg !2274, !tbaa !1254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2269
  %83 = load %struct.raxNode*, %struct.raxNode** %20, align 8, !dbg !2275, !tbaa !2228
  %84 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %83, i64 0, i32 1, i64 0, !dbg !2275
  %85 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %83, i64 0, i32 0, !dbg !2275
  %86 = load i32, i32* %85, align 4, !dbg !2275
  %87 = lshr i32 %86, 3, !dbg !2275
  %88 = zext i32 %87 to i64, !dbg !2275
  %89 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %83, i64 0, i32 1, i64 %88, !dbg !2275
  %90 = sub nsw i32 4, %87, !dbg !2275
  %91 = and i32 %90, 7, !dbg !2275
  %92 = zext i32 %91 to i64, !dbg !2275
  %93 = getelementptr inbounds i8, i8* %89, i64 %92, !dbg !2275
  %94 = and i32 %86, 4, !dbg !2277
  %95 = icmp eq i32 %94, 0, !dbg !2279
  %96 = select i1 %95, i32 1, i32 %87, !dbg !2279
  %97 = zext i32 %96 to i64, !dbg !2279
  %98 = tail call i32 @raxIteratorAddChars(%struct.raxIterator* nonnull %0, i8* nonnull %84, i64 %97) #9, !dbg !2280
  %99 = icmp eq i32 %98, 0, !dbg !2280
  br i1 %99, label %318, label %100, !dbg !2281

; <label>:100:                                    ; preds = %77
  %101 = tail call i8* @memcpy(i8* nonnull %29, i8* nonnull %93, i64 8) #6, !dbg !2282
  %102 = load i32 (%struct.raxNode**)*, i32 (%struct.raxNode**)** %30, align 8, !dbg !2283, !tbaa !2110
  %103 = icmp eq i32 (%struct.raxNode**)* %102, null, !dbg !2285
  br i1 %103, label %109, label %104, !dbg !2286

; <label>:104:                                    ; preds = %100
  %105 = tail call i32 %102(%struct.raxNode** nonnull %20) #6, !dbg !2287
  %106 = icmp eq i32 %105, 0, !dbg !2287
  br i1 %106, label %109, label %107, !dbg !2288

; <label>:107:                                    ; preds = %104
  %108 = tail call i8* @memcpy(i8* nonnull %93, i8* nonnull %29, i64 8) #6, !dbg !2289
  br label %109, !dbg !2289

; <label>:109:                                    ; preds = %104, %100, %107
  %110 = load %struct.raxNode*, %struct.raxNode** %20, align 8, !dbg !2290, !tbaa !2228
  %111 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %110, i64 0, i32 0, !dbg !2292
  %112 = load i32, i32* %111, align 4, !dbg !2292
  %113 = and i32 %112, 1, !dbg !2292
  %114 = icmp eq i32 %113, 0, !dbg !2293
  br i1 %114, label %314, label %115, !dbg !2294

; <label>:115:                                    ; preds = %109
  %116 = and i32 %112, 2, !dbg !2298
  %117 = icmp eq i32 %116, 0, !dbg !2299
  br i1 %117, label %118, label %142, !dbg !2300

; <label>:118:                                    ; preds = %115
  %119 = bitcast %struct.raxNode* %110 to i8*, !dbg !2301
  %120 = lshr i32 %112, 3, !dbg !2302
  %121 = add nuw nsw i32 %120, 4, !dbg !2302
  %122 = sub nsw i32 4, %120, !dbg !2302
  %123 = and i32 %122, 7, !dbg !2302
  %124 = add nuw nsw i32 %121, %123, !dbg !2302
  %125 = zext i32 %124 to i64, !dbg !2302
  %126 = and i32 %112, 4, !dbg !2302
  %127 = icmp eq i32 %126, 0, !dbg !2302
  %128 = and i32 %112, -8, !dbg !2302
  %129 = select i1 %127, i32 %128, i32 8, !dbg !2302
  %130 = zext i32 %129 to i64, !dbg !2302
  %131 = shl i32 %112, 2
  %132 = and i32 %131, 8
  %133 = xor i32 %132, 8
  %134 = zext i32 %133 to i64
  %135 = add nuw nsw i64 %134, %130, !dbg !2302
  %136 = add nuw nsw i64 %135, %125, !dbg !2302
  %137 = getelementptr inbounds i8, i8* %119, i64 %136, !dbg !2303
  %138 = getelementptr inbounds i8, i8* %137, i64 -8, !dbg !2304
  %139 = bitcast i8** %4 to i8*, !dbg !2306
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %139) #7, !dbg !2306
  %140 = call i8* @memcpy(i8* nonnull %139, i8* nonnull %138, i64 8) #6, !dbg !2307
  %141 = load i8*, i8** %4, align 8, !dbg !2308, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %139) #7, !dbg !2310
  br label %142

; <label>:142:                                    ; preds = %115, %118
  %143 = phi i8* [ %141, %118 ], [ null, %115 ], !dbg !2311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2310
  %144 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 3, !dbg !2312
  store i8* %143, i8** %144, align 8, !dbg !2313, !tbaa !2107
  br label %318, !dbg !2314

; <label>:145:                                    ; preds = %37, %203
  %146 = phi i32 [ %195, %203 ], [ %40, %37 ]
  %147 = phi %struct.raxNode* [ %185, %203 ], [ %39, %37 ]
  %148 = phi i32 [ 0, %203 ], [ %41, %37 ]
  %149 = icmp ne i32 %148, 0, !dbg !2316
  br i1 %149, label %150, label %156, !dbg !2318

; <label>:150:                                    ; preds = %145
  %151 = load i8*, i8** %25, align 8, !dbg !2319, !tbaa !2103
  %152 = load i64, i64* %15, align 8, !dbg !2320, !tbaa !2139
  %153 = add i64 %152, -1, !dbg !2321
  %154 = getelementptr inbounds i8, i8* %151, i64 %153, !dbg !2322
  %155 = load i8, i8* %154, align 1, !dbg !2322, !tbaa !267
  br label %183, !dbg !2324

; <label>:156:                                    ; preds = %145
  %157 = load %struct.rax*, %struct.rax** %26, align 8, !dbg !2325, !tbaa !2098
  %158 = getelementptr inbounds %struct.rax, %struct.rax* %157, i64 0, i32 0, !dbg !2326
  %159 = load %struct.raxNode*, %struct.raxNode** %158, align 8, !dbg !2326, !tbaa !121
  %160 = icmp eq %struct.raxNode* %147, %159, !dbg !2327
  br i1 %160, label %161, label %164, !dbg !2328

; <label>:161:                                    ; preds = %156
  %162 = load i32, i32* %5, align 8, !dbg !2329, !tbaa !2094
  %163 = or i32 %162, 2, !dbg !2329
  store i32 %163, i32* %5, align 8, !dbg !2329, !tbaa !2094
  store i64 %19, i64* %18, align 8, !dbg !2331, !tbaa !2225
  store i64 %16, i64* %15, align 8, !dbg !2332, !tbaa !2139
  store i64 %22, i64* %21, align 8, !dbg !2333, !tbaa !2228
  br label %318

; <label>:164:                                    ; preds = %156
  %165 = load i8*, i8** %25, align 8, !dbg !2319, !tbaa !2103
  %166 = load i64, i64* %15, align 8, !dbg !2320, !tbaa !2139
  %167 = add i64 %166, -1, !dbg !2321
  %168 = getelementptr inbounds i8, i8* %165, i64 %167, !dbg !2322
  %169 = load i8, i8* %168, align 1, !dbg !2322, !tbaa !267
  %170 = load i64, i64* %18, align 8, !dbg !2338, !tbaa !1254
  %171 = icmp eq i64 %170, 0, !dbg !2339
  br i1 %171, label %178, label %172, !dbg !2340

; <label>:172:                                    ; preds = %164
  %173 = add i64 %170, -1, !dbg !2341
  store i64 %173, i64* %18, align 8, !dbg !2341, !tbaa !1254
  %174 = load i8**, i8*** %24, align 8, !dbg !2342, !tbaa !1261
  %175 = getelementptr inbounds i8*, i8** %174, i64 %173, !dbg !2343
  %176 = load i8*, i8** %175, align 8, !dbg !2343, !tbaa !165
  %177 = bitcast i8* %176 to i32*, !dbg !2344
  br label %178, !dbg !2344

; <label>:178:                                    ; preds = %164, %172
  %179 = phi i32* [ %177, %172 ], [ null, %164 ], !dbg !2345
  %180 = phi i8* [ %176, %172 ], [ null, %164 ], !dbg !2345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2346
  store i32* %179, i32** %34, align 8, !dbg !2347, !tbaa !2228
  %181 = bitcast i8* %180 to %struct.raxNode*, !dbg !2348
  %182 = load i32, i32* %179, align 4, !dbg !2349
  br label %183, !dbg !2348

; <label>:183:                                    ; preds = %150, %178
  %184 = phi i32 [ %182, %178 ], [ %146, %150 ], !dbg !2349
  %185 = phi %struct.raxNode* [ %181, %178 ], [ %147, %150 ], !dbg !2350
  %186 = phi i8 [ %169, %178 ], [ %155, %150 ]
  %187 = phi i64 [ %166, %178 ], [ %152, %150 ]
  %188 = and i32 %184, 4, !dbg !2349
  %189 = icmp eq i32 %188, 0, !dbg !2351
  %190 = lshr i32 %184, 3, !dbg !2352
  %191 = select i1 %189, i32 1, i32 %190, !dbg !2351
  %192 = zext i32 %191 to i64, !dbg !2354
  %193 = sub i64 %187, %192, !dbg !2358
  store i64 %193, i64* %15, align 8, !dbg !2358, !tbaa !2139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2359
  %194 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %185, i64 0, i32 0, !dbg !2360
  %195 = load i32, i32* %194, align 4, !dbg !2360
  %196 = and i32 %195, 4, !dbg !2360
  %197 = icmp eq i32 %196, 0, !dbg !2361
  br i1 %197, label %198, label %203, !dbg !2362

; <label>:198:                                    ; preds = %183
  %199 = lshr i32 %195, 3, !dbg !2363
  %200 = xor i1 %149, true, !dbg !2364
  %201 = zext i1 %200 to i32, !dbg !2364
  %202 = icmp ugt i32 %199, %201, !dbg !2365
  br i1 %202, label %204, label %203, !dbg !2366

; <label>:203:                                    ; preds = %198, %183, %226
  br label %145, !dbg !2210

; <label>:204:                                    ; preds = %198
  %205 = zext i32 %199 to i64, !dbg !2367
  %206 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %185, i64 0, i32 1, i64 %205, !dbg !2367
  %207 = sub nsw i32 4, %199, !dbg !2367
  %208 = and i32 %207, 7, !dbg !2367
  %209 = zext i32 %208 to i64, !dbg !2367
  %210 = getelementptr inbounds i8, i8* %206, i64 %209, !dbg !2367
  %211 = bitcast i8* %210 to %struct.raxNode**, !dbg !2367
  br label %212, !dbg !2370

; <label>:212:                                    ; preds = %204, %219
  %213 = phi i64 [ 0, %204 ], [ %220, %219 ]
  %214 = phi i32 [ 0, %204 ], [ %221, %219 ]
  %215 = phi %struct.raxNode** [ %211, %204 ], [ %222, %219 ]
  %216 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %185, i64 0, i32 1, i64 %213, !dbg !2370
  %217 = load i8, i8* %216, align 1, !dbg !2370, !tbaa !267
  %218 = icmp ugt i8 %217, %186, !dbg !2373
  br i1 %218, label %224, label %219, !dbg !2374

; <label>:219:                                    ; preds = %212
  %220 = add nuw nsw i64 %213, 1, !dbg !2375
  %221 = add nuw nsw i32 %214, 1, !dbg !2375
  %222 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %215, i64 1, !dbg !2376
  %223 = icmp ult i64 %220, %205, !dbg !2377
  br i1 %223, label %212, label %226, !dbg !2378, !llvm.loop !2379

; <label>:224:                                    ; preds = %212
  %225 = trunc i64 %213 to i32, !dbg !2374
  br label %226, !dbg !2381

; <label>:226:                                    ; preds = %219, %224
  %227 = phi %struct.raxNode** [ %215, %224 ], [ %222, %219 ], !dbg !2383
  %228 = phi i32 [ %225, %224 ], [ %221, %219 ], !dbg !2383
  %229 = icmp eq i32 %228, %199, !dbg !2381
  br i1 %229, label %203, label %230, !dbg !2384

; <label>:230:                                    ; preds = %226
  %231 = zext i32 %228 to i64, !dbg !2385
  %232 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %185, i64 0, i32 1, i64 %231, !dbg !2385
  %233 = tail call i32 @raxIteratorAddChars(%struct.raxIterator* %0, i8* nonnull %232, i64 1) #9, !dbg !2387
  %234 = load i64, i64* %21, align 8, !dbg !2388, !tbaa !2228
  %235 = load i64, i64* %18, align 8, !dbg !2393, !tbaa !1254
  %236 = load i64, i64* %23, align 8, !dbg !2394, !tbaa !1257
  %237 = icmp eq i64 %235, %236, !dbg !2395
  br i1 %237, label %238, label %263, !dbg !2396

; <label>:238:                                    ; preds = %230
  %239 = load i8**, i8*** %24, align 8, !dbg !2397, !tbaa !1261
  %240 = icmp eq i8** %239, %27, !dbg !2398
  br i1 %240, label %241, label %250, !dbg !2399

; <label>:241:                                    ; preds = %238
  %242 = shl i64 %235, 4, !dbg !2400
  %243 = tail call i8* @zmalloc(i64 %242) #6, !dbg !2401
  store i8* %243, i8** %28, align 8, !dbg !2402, !tbaa !1261
  %244 = icmp eq i8* %243, null, !dbg !2403
  br i1 %244, label %245, label %246, !dbg !2404

; <label>:245:                                    ; preds = %241
  store i8** %27, i8*** %24, align 8, !dbg !2405, !tbaa !1261
  br label %260, !dbg !2406

; <label>:246:                                    ; preds = %241
  %247 = load i64, i64* %23, align 8, !dbg !2407, !tbaa !1257
  %248 = shl i64 %247, 3, !dbg !2408
  %249 = tail call i8* @memcpy(i8* nonnull %243, i8* nonnull %36, i64 %248) #6, !dbg !2409
  br label %256, !dbg !2410

; <label>:250:                                    ; preds = %238
  %251 = bitcast i8** %239 to i8*, !dbg !2411
  %252 = shl i64 %235, 4, !dbg !2412
  %253 = tail call i8* @zrealloc(i8* %251, i64 %252) #6, !dbg !2413
  %254 = icmp eq i8* %253, null, !dbg !2414
  br i1 %254, label %260, label %255, !dbg !2415

; <label>:255:                                    ; preds = %250
  store i8* %253, i8** %28, align 8, !dbg !2417, !tbaa !1261
  br label %256

; <label>:256:                                    ; preds = %255, %246
  %257 = load i64, i64* %23, align 8, !dbg !2418, !tbaa !1257
  %258 = shl i64 %257, 1, !dbg !2418
  store i64 %258, i64* %23, align 8, !dbg !2418, !tbaa !1257
  %259 = load i64, i64* %18, align 8, !dbg !2419, !tbaa !1254
  br label %263, !dbg !2420

; <label>:260:                                    ; preds = %250, %245
  %261 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 4, !dbg !2421
  store i32 1, i32* %261, align 8, !dbg !2421, !tbaa !1274
  %262 = tail call i32* @__errno() #6, !dbg !2421
  store i32 12, i32* %262, align 4, !dbg !2421, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2422
  br label %318, !dbg !2423

; <label>:263:                                    ; preds = %256, %230
  %264 = phi i64 [ %259, %256 ], [ %235, %230 ], !dbg !2419
  %265 = load i8**, i8*** %24, align 8, !dbg !2424, !tbaa !1261
  %266 = getelementptr inbounds i8*, i8** %265, i64 %264, !dbg !2425
  %267 = bitcast i8** %266 to i64*, !dbg !2426
  store i64 %234, i64* %267, align 8, !dbg !2426, !tbaa !165
  %268 = add i64 %264, 1, !dbg !2427
  store i64 %268, i64* %18, align 8, !dbg !2427, !tbaa !1254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2422
  %269 = bitcast %struct.raxNode** %227 to i8*, !dbg !2428
  %270 = tail call i8* @memcpy(i8* nonnull %29, i8* %269, i64 8) #6, !dbg !2429
  %271 = load i32 (%struct.raxNode**)*, i32 (%struct.raxNode**)** %30, align 8, !dbg !2430, !tbaa !2110
  %272 = icmp eq i32 (%struct.raxNode**)* %271, null, !dbg !2432
  br i1 %272, label %278, label %273, !dbg !2433

; <label>:273:                                    ; preds = %263
  %274 = tail call i32 %271(%struct.raxNode** nonnull %20) #6, !dbg !2434
  %275 = icmp eq i32 %274, 0, !dbg !2434
  br i1 %275, label %278, label %276, !dbg !2435

; <label>:276:                                    ; preds = %273
  %277 = tail call i8* @memcpy(i8* %269, i8* nonnull %29, i64 8) #6, !dbg !2436
  br label %278, !dbg !2436

; <label>:278:                                    ; preds = %273, %263, %276
  %279 = load %struct.raxNode*, %struct.raxNode** %20, align 8, !dbg !2437, !tbaa !2228
  %280 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %279, i64 0, i32 0, !dbg !2439
  %281 = load i32, i32* %280, align 4, !dbg !2439
  %282 = and i32 %281, 1, !dbg !2439
  %283 = icmp eq i32 %282, 0, !dbg !2440
  br i1 %283, label %314, label %284, !dbg !2441

; <label>:284:                                    ; preds = %278
  %285 = and i32 %281, 2, !dbg !2445
  %286 = icmp eq i32 %285, 0, !dbg !2446
  br i1 %286, label %287, label %311, !dbg !2447

; <label>:287:                                    ; preds = %284
  %288 = bitcast %struct.raxNode* %279 to i8*, !dbg !2448
  %289 = lshr i32 %281, 3, !dbg !2449
  %290 = add nuw nsw i32 %289, 4, !dbg !2449
  %291 = sub nsw i32 4, %289, !dbg !2449
  %292 = and i32 %291, 7, !dbg !2449
  %293 = add nuw nsw i32 %290, %292, !dbg !2449
  %294 = zext i32 %293 to i64, !dbg !2449
  %295 = and i32 %281, 4, !dbg !2449
  %296 = icmp eq i32 %295, 0, !dbg !2449
  %297 = and i32 %281, -8, !dbg !2449
  %298 = select i1 %296, i32 %297, i32 8, !dbg !2449
  %299 = zext i32 %298 to i64, !dbg !2449
  %300 = shl i32 %281, 2
  %301 = and i32 %300, 8
  %302 = xor i32 %301, 8
  %303 = zext i32 %302 to i64
  %304 = add nuw nsw i64 %303, %299, !dbg !2449
  %305 = add nuw nsw i64 %304, %294, !dbg !2449
  %306 = getelementptr inbounds i8, i8* %288, i64 %305, !dbg !2450
  %307 = getelementptr inbounds i8, i8* %306, i64 -8, !dbg !2451
  %308 = bitcast i8** %3 to i8*, !dbg !2453
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %308) #7, !dbg !2453
  %309 = call i8* @memcpy(i8* nonnull %308, i8* nonnull %307, i64 8) #6, !dbg !2454
  %310 = load i8*, i8** %3, align 8, !dbg !2455, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %308) #7, !dbg !2457
  br label %311

; <label>:311:                                    ; preds = %284, %287
  %312 = phi i8* [ %310, %287 ], [ null, %284 ], !dbg !2458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2457
  %313 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 3, !dbg !2459
  store i8* %312, i8** %313, align 8, !dbg !2460, !tbaa !2107
  br label %318, !dbg !2461

; <label>:314:                                    ; preds = %278, %109
  %315 = phi %struct.raxNode* [ %279, %278 ], [ %110, %109 ]
  %316 = phi i32 [ %281, %278 ], [ %112, %109 ]
  %317 = ptrtoint %struct.raxNode* %315 to i64, !dbg !2462
  br label %37

; <label>:318:                                    ; preds = %77, %260, %311, %142, %161, %74, %2, %12
  %319 = phi i32 [ 1, %12 ], [ 1, %2 ], [ 1, %161 ], [ 0, %74 ], [ 1, %142 ], [ 1, %311 ], [ 0, %260 ], [ 0, %77 ], !dbg !2463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2464
  ret i32 %319, !dbg !2464
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxSeekGreatest(%struct.raxIterator*) local_unnamed_addr #0 !dbg !2465 {
  %2 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 7, !dbg !2473
  %3 = load %struct.raxNode*, %struct.raxNode** %2, align 8, !dbg !2473, !tbaa !2228
  %4 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %3, i64 0, i32 0, !dbg !2474
  %5 = load i32, i32* %4, align 4, !dbg !2474
  %6 = lshr i32 %5, 3, !dbg !2474
  %7 = icmp eq i32 %6, 0, !dbg !2475
  br i1 %7, label %101, label %8, !dbg !2475

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8
  %10 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 1
  %11 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 2
  %12 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %9, i64 0, i32 0
  %13 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 3, i64 0
  %14 = bitcast %struct.raxNode** %2 to i8*
  %15 = bitcast %struct.raxStack* %9 to i8**
  %16 = bitcast i8** %13 to i8*
  br label %17, !dbg !2475

; <label>:17:                                     ; preds = %8, %87
  %18 = phi i32 [ %6, %8 ], [ %99, %87 ]
  %19 = phi i32 [ %5, %8 ], [ %98, %87 ]
  %20 = phi %struct.raxNode* [ %3, %8 ], [ %96, %87 ]
  %21 = and i32 %19, 4, !dbg !2476
  %22 = icmp eq i32 %21, 0, !dbg !2478
  br i1 %22, label %28, label %23, !dbg !2479

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %20, i64 0, i32 1, i64 0, !dbg !2480
  %25 = zext i32 %18 to i64, !dbg !2483
  %26 = tail call i32 @raxIteratorAddChars(%struct.raxIterator* nonnull %0, i8* nonnull %24, i64 %25) #9, !dbg !2486
  %27 = icmp eq i32 %26, 0, !dbg !2486
  br i1 %27, label %101, label %34, !dbg !2487

; <label>:28:                                     ; preds = %17
  %29 = zext i32 %18 to i64, !dbg !2488
  %30 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %20, i64 0, i32 1, i64 %29, !dbg !2488
  %31 = getelementptr inbounds i8, i8* %30, i64 -1, !dbg !2489
  %32 = tail call i32 @raxIteratorAddChars(%struct.raxIterator* nonnull %0, i8* nonnull %31, i64 1) #9, !dbg !2490
  %33 = icmp eq i32 %32, 0, !dbg !2490
  br i1 %33, label %101, label %34, !dbg !2491

; <label>:34:                                     ; preds = %23, %28
  %35 = load %struct.raxNode*, %struct.raxNode** %2, align 8, !dbg !2492, !tbaa !2228
  %36 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %35, i64 0, i32 0, !dbg !2492
  %37 = load i32, i32* %36, align 4, !dbg !2492
  %38 = lshr i32 %37, 3, !dbg !2492
  %39 = add nuw nsw i32 %38, 4, !dbg !2492
  %40 = sub nsw i32 4, %38, !dbg !2492
  %41 = and i32 %40, 7, !dbg !2492
  %42 = add nuw nsw i32 %39, %41, !dbg !2492
  %43 = zext i32 %42 to i64, !dbg !2492
  %44 = and i32 %37, 4, !dbg !2492
  %45 = icmp eq i32 %44, 0, !dbg !2492
  %46 = and i32 %37, -8, !dbg !2492
  %47 = select i1 %45, i32 %46, i32 8, !dbg !2492
  %48 = zext i32 %47 to i64, !dbg !2492
  %49 = add nuw nsw i64 %43, %48, !dbg !2492
  %50 = and i32 %37, 3, !dbg !2492
  %51 = icmp eq i32 %50, 1, !dbg !2492
  %52 = zext i1 %51 to i64, !dbg !2492
  %53 = shl nuw nsw i64 %52, 3, !dbg !2492
  %54 = add nuw nsw i64 %49, %53, !dbg !2492
  %55 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %35, i64 -2, !dbg !2492
  %56 = bitcast %struct.raxNode* %55 to i8*, !dbg !2492
  %57 = getelementptr inbounds i8, i8* %56, i64 %54, !dbg !2492
  %58 = ptrtoint %struct.raxNode* %35 to i64, !dbg !2493
  %59 = load i64, i64* %10, align 8, !dbg !2498, !tbaa !1254
  %60 = load i64, i64* %11, align 8, !dbg !2499, !tbaa !1257
  %61 = icmp eq i64 %59, %60, !dbg !2500
  br i1 %61, label %62, label %87, !dbg !2501

; <label>:62:                                     ; preds = %34
  %63 = load i8**, i8*** %12, align 8, !dbg !2502, !tbaa !1261
  %64 = icmp eq i8** %63, %13, !dbg !2503
  br i1 %64, label %65, label %74, !dbg !2504

; <label>:65:                                     ; preds = %62
  %66 = shl i64 %59, 4, !dbg !2505
  %67 = tail call i8* @zmalloc(i64 %66) #6, !dbg !2506
  store i8* %67, i8** %15, align 8, !dbg !2507, !tbaa !1261
  %68 = icmp eq i8* %67, null, !dbg !2508
  br i1 %68, label %69, label %70, !dbg !2509

; <label>:69:                                     ; preds = %65
  store i8** %13, i8*** %12, align 8, !dbg !2510, !tbaa !1261
  br label %84, !dbg !2511

; <label>:70:                                     ; preds = %65
  %71 = load i64, i64* %11, align 8, !dbg !2512, !tbaa !1257
  %72 = shl i64 %71, 3, !dbg !2513
  %73 = tail call i8* @memcpy(i8* nonnull %67, i8* nonnull %16, i64 %72) #6, !dbg !2514
  br label %80, !dbg !2515

; <label>:74:                                     ; preds = %62
  %75 = bitcast i8** %63 to i8*, !dbg !2516
  %76 = shl i64 %59, 4, !dbg !2517
  %77 = tail call i8* @zrealloc(i8* %75, i64 %76) #6, !dbg !2518
  %78 = icmp eq i8* %77, null, !dbg !2519
  br i1 %78, label %84, label %79, !dbg !2520

; <label>:79:                                     ; preds = %74
  store i8* %77, i8** %15, align 8, !dbg !2522, !tbaa !1261
  br label %80

; <label>:80:                                     ; preds = %79, %70
  %81 = load i64, i64* %11, align 8, !dbg !2523, !tbaa !1257
  %82 = shl i64 %81, 1, !dbg !2523
  store i64 %82, i64* %11, align 8, !dbg !2523, !tbaa !1257
  %83 = load i64, i64* %10, align 8, !dbg !2524, !tbaa !1254
  br label %87, !dbg !2525

; <label>:84:                                     ; preds = %74, %69
  %85 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 4, !dbg !2526
  store i32 1, i32* %85, align 8, !dbg !2526, !tbaa !1274
  %86 = tail call i32* @__errno() #6, !dbg !2526
  store i32 12, i32* %86, align 4, !dbg !2526, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2527
  br label %101, !dbg !2528

; <label>:87:                                     ; preds = %80, %34
  %88 = phi i64 [ %83, %80 ], [ %59, %34 ], !dbg !2524
  %89 = load i8**, i8*** %12, align 8, !dbg !2529, !tbaa !1261
  %90 = getelementptr inbounds i8*, i8** %89, i64 %88, !dbg !2530
  %91 = bitcast i8** %90 to i64*, !dbg !2531
  store i64 %58, i64* %91, align 8, !dbg !2531, !tbaa !165
  %92 = add i64 %88, 1, !dbg !2532
  store i64 %92, i64* %10, align 8, !dbg !2532, !tbaa !1254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2527
  %93 = select i1 %51, i64 -8, i64 0, !dbg !2492
  %94 = getelementptr inbounds i8, i8* %57, i64 %93, !dbg !2492
  %95 = tail call i8* @memcpy(i8* nonnull %14, i8* nonnull %94, i64 8) #6, !dbg !2534
  %96 = load %struct.raxNode*, %struct.raxNode** %2, align 8, !dbg !2473, !tbaa !2228
  %97 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %96, i64 0, i32 0, !dbg !2474
  %98 = load i32, i32* %97, align 4, !dbg !2474
  %99 = lshr i32 %98, 3, !dbg !2474
  %100 = icmp eq i32 %99, 0, !dbg !2475
  br i1 %100, label %101, label %17, !dbg !2475

; <label>:101:                                    ; preds = %23, %28, %87, %1, %84
  %102 = phi i32 [ 0, %84 ], [ 1, %1 ], [ 0, %23 ], [ 0, %28 ], [ 1, %87 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2535
  ret i32 %102, !dbg !2535
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxIteratorPrevStep(%struct.raxIterator*, i32) local_unnamed_addr #0 !dbg !2536 {
  %3 = alloca i8*, align 8
  %4 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 0, !dbg !2553
  %5 = load i32, i32* %4, align 8, !dbg !2553, !tbaa !2094
  %6 = and i32 %5, 2, !dbg !2555
  %7 = icmp eq i32 %6, 0, !dbg !2555
  br i1 %7, label %8, label %217, !dbg !2556

; <label>:8:                                      ; preds = %2
  %9 = and i32 %5, 1, !dbg !2557
  %10 = icmp eq i32 %9, 0, !dbg !2557
  br i1 %10, label %13, label %11, !dbg !2559

; <label>:11:                                     ; preds = %8
  %12 = and i32 %5, -2, !dbg !2560
  store i32 %12, i32* %4, align 8, !dbg !2560, !tbaa !2094
  br label %217, !dbg !2562

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 4, !dbg !2563
  %15 = load i64, i64* %14, align 8, !dbg !2563, !tbaa !2139
  %16 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, !dbg !2565
  %17 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 1, !dbg !2566
  %18 = load i64, i64* %17, align 8, !dbg !2566, !tbaa !2225
  %19 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 7, !dbg !2568
  %20 = bitcast %struct.raxNode** %19 to i64*, !dbg !2568
  %21 = load i64, i64* %20, align 8, !dbg !2568, !tbaa !2228
  %22 = icmp ne i32 %1, 0, !dbg !2570
  %23 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 2
  %24 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 1
  %25 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %16, i64 0, i32 0
  %26 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 2
  %27 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 3, i64 0
  %28 = bitcast %struct.raxNode** %19 to i8*
  %29 = bitcast %struct.raxStack* %16 to i8**
  %30 = inttoptr i64 %21 to %struct.raxNode*, !dbg !2570
  %31 = inttoptr i64 %21 to i32*, !dbg !2570
  %32 = bitcast %struct.raxNode** %19 to i32**
  %33 = bitcast i8** %27 to i8*
  br label %34, !dbg !2570

; <label>:34:                                     ; preds = %180, %13
  %35 = phi %struct.raxNode* [ %30, %13 ], [ %181, %180 ]
  %36 = phi i32* [ %31, %13 ], [ %186, %180 ]
  %37 = phi i1 [ %22, %13 ], [ false, %180 ]
  br i1 %37, label %38, label %44, !dbg !2571

; <label>:38:                                     ; preds = %34
  %39 = load i8*, i8** %23, align 8, !dbg !2573, !tbaa !2103
  %40 = load i64, i64* %14, align 8, !dbg !2574, !tbaa !2139
  %41 = add i64 %40, -1, !dbg !2575
  %42 = getelementptr inbounds i8, i8* %39, i64 %41, !dbg !2576
  %43 = load i8, i8* %42, align 1, !dbg !2576, !tbaa !267
  br label %70, !dbg !2578

; <label>:44:                                     ; preds = %34
  %45 = load %struct.rax*, %struct.rax** %24, align 8, !dbg !2579, !tbaa !2098
  %46 = getelementptr inbounds %struct.rax, %struct.rax* %45, i64 0, i32 0, !dbg !2580
  %47 = load %struct.raxNode*, %struct.raxNode** %46, align 8, !dbg !2580, !tbaa !121
  %48 = icmp eq %struct.raxNode* %35, %47, !dbg !2581
  br i1 %48, label %49, label %52, !dbg !2582

; <label>:49:                                     ; preds = %44
  %50 = load i32, i32* %4, align 8, !dbg !2583, !tbaa !2094
  %51 = or i32 %50, 2, !dbg !2583
  store i32 %51, i32* %4, align 8, !dbg !2583, !tbaa !2094
  store i64 %18, i64* %17, align 8, !dbg !2585, !tbaa !2225
  store i64 %15, i64* %14, align 8, !dbg !2586, !tbaa !2139
  store i64 %21, i64* %20, align 8, !dbg !2587, !tbaa !2228
  br label %217, !dbg !2588

; <label>:52:                                     ; preds = %44
  %53 = load i8*, i8** %23, align 8, !dbg !2573, !tbaa !2103
  %54 = load i64, i64* %14, align 8, !dbg !2574, !tbaa !2139
  %55 = add i64 %54, -1, !dbg !2575
  %56 = getelementptr inbounds i8, i8* %53, i64 %55, !dbg !2576
  %57 = load i8, i8* %56, align 1, !dbg !2576, !tbaa !267
  %58 = load i64, i64* %17, align 8, !dbg !2593, !tbaa !1254
  %59 = icmp eq i64 %58, 0, !dbg !2594
  br i1 %59, label %66, label %60, !dbg !2595

; <label>:60:                                     ; preds = %52
  %61 = add i64 %58, -1, !dbg !2596
  store i64 %61, i64* %17, align 8, !dbg !2596, !tbaa !1254
  %62 = load i8**, i8*** %25, align 8, !dbg !2597, !tbaa !1261
  %63 = getelementptr inbounds i8*, i8** %62, i64 %61, !dbg !2598
  %64 = load i8*, i8** %63, align 8, !dbg !2598, !tbaa !165
  %65 = bitcast i8* %64 to i32*, !dbg !2599
  br label %66, !dbg !2599

; <label>:66:                                     ; preds = %52, %60
  %67 = phi i32* [ %65, %60 ], [ null, %52 ], !dbg !2600
  %68 = phi i8* [ %64, %60 ], [ null, %52 ], !dbg !2600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2601
  store i32* %67, i32** %32, align 8, !dbg !2602, !tbaa !2228
  %69 = bitcast i8* %68 to %struct.raxNode*, !dbg !2603
  br label %70, !dbg !2603

; <label>:70:                                     ; preds = %38, %66
  %71 = phi %struct.raxNode* [ %69, %66 ], [ %35, %38 ]
  %72 = phi i32* [ %67, %66 ], [ %36, %38 ], !dbg !2604
  %73 = phi i8 [ %57, %66 ], [ %43, %38 ]
  %74 = phi i64 [ %54, %66 ], [ %40, %38 ]
  %75 = load i32, i32* %72, align 4, !dbg !2605
  %76 = and i32 %75, 4, !dbg !2605
  %77 = icmp eq i32 %76, 0, !dbg !2606
  %78 = lshr i32 %75, 3, !dbg !2607
  %79 = select i1 %77, i32 1, i32 %78, !dbg !2606
  %80 = zext i32 %79 to i64, !dbg !2609
  %81 = sub i64 %74, %80, !dbg !2613
  store i64 %81, i64* %14, align 8, !dbg !2613, !tbaa !2139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2614
  %82 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %71, i64 0, i32 0, !dbg !2615
  %83 = load i32, i32* %82, align 4, !dbg !2615
  %84 = and i32 %83, 4, !dbg !2615
  %85 = icmp eq i32 %84, 0, !dbg !2616
  br i1 %85, label %86, label %180, !dbg !2617

; <label>:86:                                     ; preds = %70
  %87 = lshr i32 %83, 3, !dbg !2618
  %88 = xor i1 %37, true, !dbg !2619
  %89 = zext i1 %88 to i32, !dbg !2619
  %90 = icmp ugt i32 %87, %89, !dbg !2620
  br i1 %90, label %91, label %180, !dbg !2621

; <label>:91:                                     ; preds = %86
  %92 = load i32, i32* %72, align 4, !dbg !2622
  %93 = and i32 %92, 3, !dbg !2622
  %94 = icmp eq i32 %93, 1, !dbg !2622
  %95 = icmp ult i32 %92, 8, !dbg !2624
  br i1 %95, label %180, label %96, !dbg !2625

; <label>:96:                                     ; preds = %91
  %97 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %71, i64 -2, !dbg !2622
  %98 = bitcast %struct.raxNode* %97 to i8*, !dbg !2622
  %99 = add nuw nsw i32 %87, 4, !dbg !2622
  %100 = sub nsw i32 4, %87, !dbg !2622
  %101 = and i32 %100, 7, !dbg !2622
  %102 = add nuw nsw i32 %99, %101, !dbg !2622
  %103 = zext i32 %102 to i64, !dbg !2622
  %104 = and i32 %83, -8, !dbg !2622
  %105 = zext i32 %104 to i64, !dbg !2622
  %106 = add nuw nsw i64 %103, %105, !dbg !2622
  %107 = zext i1 %94 to i64, !dbg !2622
  %108 = shl nuw nsw i64 %107, 3, !dbg !2622
  %109 = add nuw nsw i64 %106, %108, !dbg !2622
  %110 = getelementptr inbounds i8, i8* %98, i64 %109, !dbg !2622
  %111 = select i1 %94, i64 -8, i64 0, !dbg !2622
  %112 = getelementptr inbounds i8, i8* %110, i64 %111, !dbg !2622
  %113 = bitcast i8* %112 to %struct.raxNode**, !dbg !2622
  %114 = lshr i32 %92, 3, !dbg !2627
  %115 = zext i32 %114 to i64, !dbg !2627
  %116 = add nsw i64 %115, -1, !dbg !2627
  br label %117, !dbg !2627

; <label>:117:                                    ; preds = %96, %123
  %118 = phi i64 [ %116, %96 ], [ %125, %123 ]
  %119 = phi %struct.raxNode** [ %113, %96 ], [ %124, %123 ]
  %120 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %71, i64 0, i32 1, i64 %118, !dbg !2627
  %121 = load i8, i8* %120, align 1, !dbg !2627, !tbaa !267
  %122 = icmp ult i8 %121, %73, !dbg !2630
  br i1 %122, label %130, label %123, !dbg !2631

; <label>:123:                                    ; preds = %117
  %124 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %119, i64 -1, !dbg !2632
  %125 = add i64 %118, -1, !dbg !2633
  %126 = icmp sgt i64 %118, 0, !dbg !2624
  br i1 %126, label %117, label %127, !dbg !2625, !llvm.loop !2634

; <label>:127:                                    ; preds = %123
  %128 = trunc i64 %118 to i32, !dbg !2636
  %129 = icmp eq i32 %128, 0, !dbg !2636
  br i1 %129, label %180, label %130, !dbg !2638

; <label>:130:                                    ; preds = %117, %127
  %131 = phi %struct.raxNode** [ %124, %127 ], [ %119, %117 ]
  %132 = phi i64 [ %125, %127 ], [ %118, %117 ]
  %133 = shl i64 %132, 32, !dbg !2639
  %134 = ashr exact i64 %133, 32, !dbg !2639
  %135 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %71, i64 0, i32 1, i64 %134, !dbg !2639
  %136 = tail call i32 @raxIteratorAddChars(%struct.raxIterator* %0, i8* nonnull %135, i64 1) #9, !dbg !2642
  %137 = icmp eq i32 %136, 0, !dbg !2642
  br i1 %137, label %217, label %138, !dbg !2643

; <label>:138:                                    ; preds = %130
  %139 = load i64, i64* %20, align 8, !dbg !2644, !tbaa !2228
  %140 = load i64, i64* %17, align 8, !dbg !2649, !tbaa !1254
  %141 = load i64, i64* %26, align 8, !dbg !2650, !tbaa !1257
  %142 = icmp eq i64 %140, %141, !dbg !2651
  br i1 %142, label %143, label %168, !dbg !2652

; <label>:143:                                    ; preds = %138
  %144 = load i8**, i8*** %25, align 8, !dbg !2653, !tbaa !1261
  %145 = icmp eq i8** %144, %27, !dbg !2654
  br i1 %145, label %146, label %155, !dbg !2655

; <label>:146:                                    ; preds = %143
  %147 = shl i64 %140, 4, !dbg !2656
  %148 = tail call i8* @zmalloc(i64 %147) #6, !dbg !2657
  store i8* %148, i8** %29, align 8, !dbg !2658, !tbaa !1261
  %149 = icmp eq i8* %148, null, !dbg !2659
  br i1 %149, label %150, label %151, !dbg !2660

; <label>:150:                                    ; preds = %146
  store i8** %27, i8*** %25, align 8, !dbg !2661, !tbaa !1261
  br label %165, !dbg !2662

; <label>:151:                                    ; preds = %146
  %152 = load i64, i64* %26, align 8, !dbg !2663, !tbaa !1257
  %153 = shl i64 %152, 3, !dbg !2664
  %154 = tail call i8* @memcpy(i8* nonnull %148, i8* nonnull %33, i64 %153) #6, !dbg !2665
  br label %161, !dbg !2666

; <label>:155:                                    ; preds = %143
  %156 = bitcast i8** %144 to i8*, !dbg !2667
  %157 = shl i64 %140, 4, !dbg !2668
  %158 = tail call i8* @zrealloc(i8* %156, i64 %157) #6, !dbg !2669
  %159 = icmp eq i8* %158, null, !dbg !2670
  br i1 %159, label %165, label %160, !dbg !2671

; <label>:160:                                    ; preds = %155
  store i8* %158, i8** %29, align 8, !dbg !2673, !tbaa !1261
  br label %161

; <label>:161:                                    ; preds = %160, %151
  %162 = load i64, i64* %26, align 8, !dbg !2674, !tbaa !1257
  %163 = shl i64 %162, 1, !dbg !2674
  store i64 %163, i64* %26, align 8, !dbg !2674, !tbaa !1257
  %164 = load i64, i64* %17, align 8, !dbg !2675, !tbaa !1254
  br label %168, !dbg !2676

; <label>:165:                                    ; preds = %155, %150
  %166 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 4, !dbg !2677
  store i32 1, i32* %166, align 8, !dbg !2677, !tbaa !1274
  %167 = tail call i32* @__errno() #6, !dbg !2677
  store i32 12, i32* %167, align 4, !dbg !2677, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2678
  br label %217, !dbg !2679

; <label>:168:                                    ; preds = %161, %138
  %169 = phi i64 [ %164, %161 ], [ %140, %138 ], !dbg !2675
  %170 = load i8**, i8*** %25, align 8, !dbg !2680, !tbaa !1261
  %171 = getelementptr inbounds i8*, i8** %170, i64 %169, !dbg !2681
  %172 = bitcast i8** %171 to i64*, !dbg !2682
  store i64 %139, i64* %172, align 8, !dbg !2682, !tbaa !165
  %173 = add i64 %169, 1, !dbg !2683
  store i64 %173, i64* %17, align 8, !dbg !2683, !tbaa !1254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2678
  %174 = bitcast %struct.raxNode** %131 to i8*, !dbg !2684
  %175 = tail call i8* @memcpy(i8* nonnull %28, i8* %174, i64 8) #6, !dbg !2685
  %176 = tail call i32 @raxSeekGreatest(%struct.raxIterator* nonnull %0) #9, !dbg !2686
  %177 = icmp eq i32 %176, 0, !dbg !2686
  br i1 %177, label %217, label %178, !dbg !2688

; <label>:178:                                    ; preds = %168
  %179 = load %struct.raxNode*, %struct.raxNode** %19, align 8, !dbg !2689, !tbaa !2228
  br label %180, !dbg !2688

; <label>:180:                                    ; preds = %91, %178, %127, %70, %86
  %181 = phi %struct.raxNode* [ %179, %178 ], [ %71, %127 ], [ %71, %70 ], [ %71, %86 ], [ %71, %91 ], !dbg !2689
  %182 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %181, i64 0, i32 0, !dbg !2691
  %183 = load i32, i32* %182, align 4, !dbg !2691
  %184 = and i32 %183, 1, !dbg !2691
  %185 = icmp eq i32 %184, 0, !dbg !2692
  %186 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %181, i64 0, i32 0, !dbg !2693
  br i1 %185, label %34, label %187, !dbg !2693

; <label>:187:                                    ; preds = %180
  %188 = and i32 %183, 2, !dbg !2697
  %189 = icmp eq i32 %188, 0, !dbg !2698
  br i1 %189, label %190, label %214, !dbg !2699

; <label>:190:                                    ; preds = %187
  %191 = bitcast %struct.raxNode* %181 to i8*, !dbg !2700
  %192 = lshr i32 %183, 3, !dbg !2701
  %193 = add nuw nsw i32 %192, 4, !dbg !2701
  %194 = sub nsw i32 4, %192, !dbg !2701
  %195 = and i32 %194, 7, !dbg !2701
  %196 = add nuw nsw i32 %193, %195, !dbg !2701
  %197 = zext i32 %196 to i64, !dbg !2701
  %198 = and i32 %183, 4, !dbg !2701
  %199 = icmp eq i32 %198, 0, !dbg !2701
  %200 = and i32 %183, -8, !dbg !2701
  %201 = select i1 %199, i32 %200, i32 8, !dbg !2701
  %202 = zext i32 %201 to i64, !dbg !2701
  %203 = shl i32 %183, 2
  %204 = and i32 %203, 8
  %205 = xor i32 %204, 8
  %206 = zext i32 %205 to i64
  %207 = add nuw nsw i64 %206, %202, !dbg !2701
  %208 = add nuw nsw i64 %207, %197, !dbg !2701
  %209 = getelementptr inbounds i8, i8* %191, i64 %208, !dbg !2702
  %210 = getelementptr inbounds i8, i8* %209, i64 -8, !dbg !2703
  %211 = bitcast i8** %3 to i8*, !dbg !2705
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %211) #7, !dbg !2705
  %212 = call i8* @memcpy(i8* nonnull %211, i8* nonnull %210, i64 8) #6, !dbg !2706
  %213 = load i8*, i8** %3, align 8, !dbg !2707, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %211) #7, !dbg !2709
  br label %214

; <label>:214:                                    ; preds = %187, %190
  %215 = phi i8* [ %213, %190 ], [ null, %187 ], !dbg !2710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2709
  %216 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 3, !dbg !2711
  store i8* %215, i8** %216, align 8, !dbg !2712, !tbaa !2107
  br label %217, !dbg !2713

; <label>:217:                                    ; preds = %168, %130, %165, %214, %49, %2, %11
  %218 = phi i32 [ 1, %11 ], [ 1, %2 ], [ 1, %214 ], [ 1, %49 ], [ 0, %165 ], [ 0, %130 ], [ 0, %168 ], !dbg !2714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2715
  ret i32 %218, !dbg !2715
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxSeek(%struct.raxIterator*, i8* nocapture readonly, i8*, i64) local_unnamed_addr #0 !dbg !2716 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.raxNode*, align 8
  %10 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, !dbg !2762
  %11 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 1, !dbg !2763
  store i64 0, i64* %11, align 8, !dbg !2764, !tbaa !2225
  %12 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 0, !dbg !2765
  %13 = load i32, i32* %12, align 8, !dbg !2766, !tbaa !2094
  %14 = and i32 %13, -4, !dbg !2767
  %15 = or i32 %14, 1, !dbg !2767
  store i32 %15, i32* %12, align 8, !dbg !2767, !tbaa !2094
  %16 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 4, !dbg !2768
  store i64 0, i64* %16, align 8, !dbg !2769, !tbaa !2139
  %17 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 7, !dbg !2770
  store %struct.raxNode* null, %struct.raxNode** %17, align 8, !dbg !2771, !tbaa !2228
  %18 = load i8, i8* %1, align 1, !dbg !2772, !tbaa !267
  switch i8 %18, label %29 [
    i8 62, label %19
    i8 60, label %23
    i8 61, label %31
    i8 94, label %27
    i8 36, label %28
  ], !dbg !2774

; <label>:19:                                     ; preds = %4
  %20 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2775
  %21 = load i8, i8* %20, align 1, !dbg !2775, !tbaa !267
  %22 = icmp eq i8 %21, 61, !dbg !2778
  br label %31, !dbg !2779

; <label>:23:                                     ; preds = %4
  %24 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2780
  %25 = load i8, i8* %24, align 1, !dbg !2780, !tbaa !267
  %26 = icmp eq i8 %25, 61, !dbg !2784
  br label %31, !dbg !2785

; <label>:27:                                     ; preds = %4
  br label %31, !dbg !2786

; <label>:28:                                     ; preds = %4
  br label %31

; <label>:29:                                     ; preds = %4
  %30 = tail call i32* @__errno() #6, !dbg !2790
  store i32 0, i32* %30, align 4, !dbg !2793, !tbaa !48
  br label %391, !dbg !2794

; <label>:31:                                     ; preds = %23, %19, %4, %27, %28
  %32 = phi i32 [ 0, %27 ], [ 1, %28 ], [ 0, %19 ], [ 0, %23 ], [ 0, %4 ], !dbg !2795
  %33 = phi i32 [ 1, %27 ], [ 0, %28 ], [ 0, %19 ], [ 0, %23 ], [ 0, %4 ], !dbg !2797
  %34 = phi i32 [ 0, %27 ], [ 0, %28 ], [ 1, %19 ], [ 0, %23 ], [ 0, %4 ], !dbg !2797
  %35 = phi i32 [ 0, %27 ], [ 0, %28 ], [ 0, %19 ], [ 1, %23 ], [ 0, %4 ], !dbg !2797
  %36 = phi i1 [ false, %27 ], [ false, %28 ], [ %22, %19 ], [ %26, %23 ], [ true, %4 ]
  %37 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 1, !dbg !2798
  %38 = load %struct.rax*, %struct.rax** %37, align 8, !dbg !2798, !tbaa !2098
  %39 = getelementptr inbounds %struct.rax, %struct.rax* %38, i64 0, i32 1, !dbg !2800
  %40 = load i64, i64* %39, align 8, !dbg !2800, !tbaa !728
  %41 = icmp eq i64 %40, 0, !dbg !2801
  br i1 %41, label %42, label %44, !dbg !2802

; <label>:42:                                     ; preds = %31
  %43 = or i32 %13, 3, !dbg !2803
  store i32 %43, i32* %12, align 8, !dbg !2803, !tbaa !2094
  br label %391, !dbg !2805

; <label>:44:                                     ; preds = %31
  %45 = icmp eq i32 %33, 0, !dbg !2806
  br i1 %45, label %48, label %46, !dbg !2808

; <label>:46:                                     ; preds = %44
  %47 = tail call i32 @raxSeek(%struct.raxIterator* nonnull %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* null, i64 0) #9, !dbg !2809
  br label %391, !dbg !2811

; <label>:48:                                     ; preds = %44
  %49 = icmp eq i32 %32, 0, !dbg !2812
  br i1 %49, label %93, label %50, !dbg !2814

; <label>:50:                                     ; preds = %48
  %51 = bitcast %struct.rax* %38 to i64*, !dbg !2815
  %52 = load i64, i64* %51, align 8, !dbg !2815, !tbaa !121
  %53 = bitcast %struct.raxNode** %17 to i64*, !dbg !2817
  store i64 %52, i64* %53, align 8, !dbg !2817, !tbaa !2228
  %54 = tail call i32 @raxSeekGreatest(%struct.raxIterator* nonnull %0) #9, !dbg !2818
  %55 = icmp eq i32 %54, 0, !dbg !2818
  br i1 %55, label %391, label %56, !dbg !2820

; <label>:56:                                     ; preds = %50
  %57 = load %struct.raxNode*, %struct.raxNode** %17, align 8, !dbg !2821, !tbaa !2228
  %58 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %57, i64 0, i32 0, !dbg !2821
  %59 = load i32, i32* %58, align 4, !dbg !2821
  %60 = and i32 %59, 1, !dbg !2821
  %61 = icmp eq i32 %60, 0, !dbg !2821
  br i1 %61, label %62, label %63, !dbg !2821

; <label>:62:                                     ; preds = %56
  tail call void @__assert_func(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 1553, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.raxSeek, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !2821
  unreachable, !dbg !2821

; <label>:63:                                     ; preds = %56
  %64 = and i32 %59, 2, !dbg !2824
  %65 = icmp eq i32 %64, 0, !dbg !2825
  br i1 %65, label %66, label %90, !dbg !2826

; <label>:66:                                     ; preds = %63
  %67 = bitcast %struct.raxNode* %57 to i8*, !dbg !2827
  %68 = lshr i32 %59, 3, !dbg !2828
  %69 = add nuw nsw i32 %68, 4, !dbg !2828
  %70 = sub nsw i32 4, %68, !dbg !2828
  %71 = and i32 %70, 7, !dbg !2828
  %72 = add nuw nsw i32 %69, %71, !dbg !2828
  %73 = zext i32 %72 to i64, !dbg !2828
  %74 = and i32 %59, 4, !dbg !2828
  %75 = icmp eq i32 %74, 0, !dbg !2828
  %76 = and i32 %59, -8, !dbg !2828
  %77 = select i1 %75, i32 %76, i32 8, !dbg !2828
  %78 = zext i32 %77 to i64, !dbg !2828
  %79 = shl i32 %59, 2
  %80 = and i32 %79, 8
  %81 = xor i32 %80, 8
  %82 = zext i32 %81 to i64
  %83 = add nuw nsw i64 %82, %78, !dbg !2828
  %84 = add nuw nsw i64 %83, %73, !dbg !2828
  %85 = getelementptr inbounds i8, i8* %67, i64 %84, !dbg !2829
  %86 = getelementptr inbounds i8, i8* %85, i64 -8, !dbg !2830
  %87 = bitcast i8** %7 to i8*, !dbg !2832
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %87) #7, !dbg !2832
  %88 = call i8* @memcpy(i8* nonnull %87, i8* nonnull %86, i64 8) #6, !dbg !2833
  %89 = load i8*, i8** %7, align 8, !dbg !2834, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %87) #7, !dbg !2836
  br label %90

; <label>:90:                                     ; preds = %63, %66
  %91 = phi i8* [ %89, %66 ], [ null, %63 ], !dbg !2837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2836
  %92 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 3, !dbg !2838
  store i8* %91, i8** %92, align 8, !dbg !2839, !tbaa !2107
  br label %391, !dbg !2840

; <label>:93:                                     ; preds = %48
  %94 = bitcast i32* %8 to i8*, !dbg !2841
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %94) #7, !dbg !2841
  store i32 0, i32* %8, align 4, !dbg !2842, !tbaa !48
  %95 = call fastcc i64 @raxLowWalk(%struct.rax* %38, i8* %2, i64 %3, %struct.raxNode** nonnull %17, %struct.raxNode*** null, i32* nonnull %8, %struct.raxStack* nonnull %10) #9, !dbg !2843
  %96 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 4, !dbg !2845
  %97 = load i32, i32* %96, align 8, !dbg !2845, !tbaa !2847
  %98 = icmp eq i32 %97, 0, !dbg !2848
  br i1 %98, label %99, label %389, !dbg !2849

; <label>:99:                                     ; preds = %93
  %100 = icmp eq i64 %95, %3, !dbg !2850
  %101 = and i1 %36, %100, !dbg !2851
  br i1 %101, label %102, label %155, !dbg !2851

; <label>:102:                                    ; preds = %99
  %103 = bitcast %struct.raxNode** %17 to i32**, !dbg !2852
  %104 = load i32*, i32** %103, align 8, !dbg !2852, !tbaa !2228
  %105 = load i32, i32* %104, align 4, !dbg !2853
  %106 = and i32 %105, 4, !dbg !2853
  %107 = icmp ne i32 %106, 0, !dbg !2854
  %108 = load i32, i32* %8, align 4, !dbg !2855
  %109 = icmp ne i32 %108, 0, !dbg !2856
  %110 = and i1 %109, %107, !dbg !2857
  %111 = and i32 %105, 1, !dbg !2858
  %112 = icmp eq i32 %111, 0, !dbg !2859
  %113 = or i1 %112, %110, !dbg !2857
  br i1 %113, label %155, label %114, !dbg !2857

; <label>:114:                                    ; preds = %102
  %115 = call i32 @raxIteratorAddChars(%struct.raxIterator* nonnull %0, i8* %2, i64 %3) #9, !dbg !2860
  %116 = icmp eq i32 %115, 0, !dbg !2860
  br i1 %116, label %389, label %117, !dbg !2863

; <label>:117:                                    ; preds = %114
  %118 = load %struct.raxNode*, %struct.raxNode** %17, align 8, !dbg !2864, !tbaa !2228
  %119 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %118, i64 0, i32 0, !dbg !2867
  %120 = load i32, i32* %119, align 4, !dbg !2867
  %121 = and i32 %120, 2, !dbg !2867
  %122 = icmp eq i32 %121, 0, !dbg !2868
  br i1 %122, label %123, label %152, !dbg !2869

; <label>:123:                                    ; preds = %117
  %124 = bitcast %struct.raxNode* %118 to i8*, !dbg !2870
  %125 = lshr i32 %120, 3, !dbg !2871
  %126 = add nuw nsw i32 %125, 4, !dbg !2871
  %127 = sub nsw i32 4, %125, !dbg !2871
  %128 = and i32 %127, 7, !dbg !2871
  %129 = add nuw nsw i32 %126, %128, !dbg !2871
  %130 = zext i32 %129 to i64, !dbg !2871
  %131 = and i32 %120, 4, !dbg !2871
  %132 = icmp eq i32 %131, 0, !dbg !2871
  %133 = and i32 %120, -8, !dbg !2871
  %134 = select i1 %132, i32 %133, i32 8, !dbg !2871
  %135 = zext i32 %134 to i64, !dbg !2871
  %136 = add nuw nsw i64 %130, %135, !dbg !2871
  %137 = and i32 %120, 1, !dbg !2871
  %138 = icmp eq i32 %137, 0, !dbg !2871
  br i1 %138, label %144, label %139, !dbg !2871

; <label>:139:                                    ; preds = %123
  %140 = shl i32 %120, 2
  %141 = and i32 %140, 8
  %142 = xor i32 %141, 8
  %143 = zext i32 %142 to i64
  br label %144

; <label>:144:                                    ; preds = %139, %123
  %145 = phi i64 [ 0, %123 ], [ %143, %139 ]
  %146 = add nuw nsw i64 %136, %145, !dbg !2871
  %147 = getelementptr inbounds i8, i8* %124, i64 %146, !dbg !2872
  %148 = getelementptr inbounds i8, i8* %147, i64 -8, !dbg !2873
  %149 = bitcast i8** %6 to i8*, !dbg !2875
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %149) #7, !dbg !2875
  %150 = call i8* @memcpy(i8* nonnull %149, i8* nonnull %148, i64 8) #6, !dbg !2876
  %151 = load i8*, i8** %6, align 8, !dbg !2877, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %149) #7, !dbg !2879
  br label %152

; <label>:152:                                    ; preds = %117, %144
  %153 = phi i8* [ %151, %144 ], [ null, %117 ], !dbg !2880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  %154 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 3, !dbg !2881
  store i8* %153, i8** %154, align 8, !dbg !2882, !tbaa !2107
  br label %389, !dbg !2883

; <label>:155:                                    ; preds = %102, %99
  %156 = icmp ne i32 %35, 0, !dbg !2884
  %157 = icmp ne i32 %34, 0, !dbg !2885
  %158 = or i32 %35, %34, !dbg !2886
  %159 = icmp eq i32 %158, 0, !dbg !2886
  br i1 %159, label %386, label %160, !dbg !2886

; <label>:160:                                    ; preds = %155
  %161 = bitcast %struct.raxNode** %17 to i64*, !dbg !2887
  %162 = load i64, i64* %161, align 8, !dbg !2887, !tbaa !2228
  %163 = load i64, i64* %11, align 8, !dbg !2892, !tbaa !1254
  %164 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 2, !dbg !2893
  %165 = load i64, i64* %164, align 8, !dbg !2893, !tbaa !1257
  %166 = icmp eq i64 %163, %165, !dbg !2894
  %167 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %10, i64 0, i32 0, !dbg !2895
  br i1 %166, label %168, label %196, !dbg !2896

; <label>:168:                                    ; preds = %160
  %169 = load i8**, i8*** %167, align 8, !dbg !2897, !tbaa !1261
  %170 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 3, i64 0, !dbg !2898
  %171 = icmp eq i8** %169, %170, !dbg !2899
  br i1 %171, label %172, label %183, !dbg !2900

; <label>:172:                                    ; preds = %168
  %173 = shl i64 %163, 4, !dbg !2901
  %174 = call i8* @zmalloc(i64 %173) #6, !dbg !2902
  %175 = bitcast %struct.raxStack* %10 to i8**, !dbg !2903
  store i8* %174, i8** %175, align 8, !dbg !2903, !tbaa !1261
  %176 = icmp eq i8* %174, null, !dbg !2904
  br i1 %176, label %177, label %178, !dbg !2905

; <label>:177:                                    ; preds = %172
  store i8** %169, i8*** %167, align 8, !dbg !2906, !tbaa !1261
  br label %194, !dbg !2907

; <label>:178:                                    ; preds = %172
  %179 = bitcast i8** %169 to i8*, !dbg !2908
  %180 = load i64, i64* %164, align 8, !dbg !2909, !tbaa !1257
  %181 = shl i64 %180, 3, !dbg !2910
  %182 = call i8* @memcpy(i8* nonnull %174, i8* nonnull %179, i64 %181) #6, !dbg !2911
  br label %190, !dbg !2912

; <label>:183:                                    ; preds = %168
  %184 = bitcast i8** %169 to i8*, !dbg !2913
  %185 = shl i64 %163, 4, !dbg !2914
  %186 = call i8* @zrealloc(i8* %184, i64 %185) #6, !dbg !2915
  %187 = icmp eq i8* %186, null, !dbg !2916
  br i1 %187, label %194, label %188, !dbg !2917

; <label>:188:                                    ; preds = %183
  %189 = bitcast %struct.raxStack* %10 to i8**, !dbg !2919
  store i8* %186, i8** %189, align 8, !dbg !2919, !tbaa !1261
  br label %190

; <label>:190:                                    ; preds = %188, %178
  %191 = load i64, i64* %164, align 8, !dbg !2920, !tbaa !1257
  %192 = shl i64 %191, 1, !dbg !2920
  store i64 %192, i64* %164, align 8, !dbg !2920, !tbaa !1257
  %193 = load i64, i64* %11, align 8, !dbg !2921, !tbaa !1254
  br label %196, !dbg !2922

; <label>:194:                                    ; preds = %183, %177
  store i32 1, i32* %96, align 8, !dbg !2923, !tbaa !1274
  %195 = call i32* @__errno() #6, !dbg !2923
  store i32 12, i32* %195, align 4, !dbg !2923, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2924
  br label %389, !dbg !2925

; <label>:196:                                    ; preds = %160, %190
  %197 = phi i64 [ %193, %190 ], [ %163, %160 ], !dbg !2921
  %198 = load i8**, i8*** %167, align 8, !dbg !2926, !tbaa !1261
  %199 = getelementptr inbounds i8*, i8** %198, i64 %197, !dbg !2927
  %200 = bitcast i8** %199 to i64*, !dbg !2928
  store i64 %162, i64* %200, align 8, !dbg !2928, !tbaa !165
  %201 = add i64 %197, 1, !dbg !2929
  store i64 %201, i64* %11, align 8, !dbg !2929, !tbaa !1254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2924
  %202 = icmp ugt i64 %201, 1, !dbg !2931
  br i1 %202, label %203, label %248, !dbg !2932

; <label>:203:                                    ; preds = %196
  %204 = bitcast %struct.raxNode** %9 to i8*
  br label %205, !dbg !2932

; <label>:205:                                    ; preds = %203, %244
  %206 = phi i64 [ 1, %203 ], [ %245, %244 ]
  %207 = load i8**, i8*** %167, align 8, !dbg !2933, !tbaa !2934
  %208 = add i64 %206, -1, !dbg !2935
  %209 = getelementptr inbounds i8*, i8** %207, i64 %208, !dbg !2936
  %210 = bitcast i8** %209 to %struct.raxNode**, !dbg !2936
  %211 = load %struct.raxNode*, %struct.raxNode** %210, align 8, !dbg !2936, !tbaa !165
  %212 = getelementptr inbounds i8*, i8** %207, i64 %206, !dbg !2938
  %213 = bitcast i8** %212 to %struct.raxNode**, !dbg !2938
  %214 = load %struct.raxNode*, %struct.raxNode** %213, align 8, !dbg !2938, !tbaa !165
  %215 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %211, i64 0, i32 0, !dbg !2940
  %216 = load i32, i32* %215, align 4, !dbg !2940
  %217 = and i32 %216, 4, !dbg !2940
  %218 = icmp eq i32 %217, 0, !dbg !2941
  %219 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %211, i64 0, i32 1, i64 0, !dbg !2942
  %220 = lshr i32 %216, 3, !dbg !2942
  %221 = zext i32 %220 to i64, !dbg !2942
  br i1 %218, label %225, label %222, !dbg !2945

; <label>:222:                                    ; preds = %205
  %223 = call i32 @raxIteratorAddChars(%struct.raxIterator* nonnull %0, i8* nonnull %219, i64 %221) #9, !dbg !2946
  %224 = icmp eq i32 %223, 0, !dbg !2946
  br i1 %224, label %389, label %244, !dbg !2947

; <label>:225:                                    ; preds = %205
  %226 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %211, i64 0, i32 1, i64 %221, !dbg !2948
  %227 = sub nsw i32 4, %220, !dbg !2948
  %228 = and i32 %227, 7, !dbg !2948
  %229 = zext i32 %228 to i64, !dbg !2948
  %230 = getelementptr inbounds i8, i8* %226, i64 %229, !dbg !2948
  %231 = bitcast i8* %230 to %struct.raxNode**, !dbg !2948
  br label %232, !dbg !2951

; <label>:232:                                    ; preds = %232, %225
  %233 = phi %struct.raxNode** [ %231, %225 ], [ %239, %232 ], !dbg !2949
  %234 = phi i8* [ %219, %225 ], [ %240, %232 ], !dbg !2950
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %204) #7, !dbg !2952
  %235 = bitcast %struct.raxNode** %233 to i8*, !dbg !2953
  %236 = call i8* @memcpy(i8* nonnull %204, i8* %235, i64 8) #6, !dbg !2954
  %237 = load %struct.raxNode*, %struct.raxNode** %9, align 8, !dbg !2955, !tbaa !165
  %238 = icmp eq %struct.raxNode* %237, %214, !dbg !2958
  %239 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %233, i64 1, !dbg !2959
  %240 = getelementptr inbounds i8, i8* %234, i64 1, !dbg !2960
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %204) #7, !dbg !2961
  br i1 %238, label %241, label %232, !llvm.loop !2962

; <label>:241:                                    ; preds = %232
  %242 = call i32 @raxIteratorAddChars(%struct.raxIterator* %0, i8* %234, i64 1) #9, !dbg !2963
  %243 = icmp eq i32 %242, 0, !dbg !2963
  br i1 %243, label %389, label %244

; <label>:244:                                    ; preds = %241, %222
  %245 = add nuw i64 %206, 1, !dbg !2965
  %246 = load i64, i64* %11, align 8, !dbg !2966, !tbaa !2225
  %247 = icmp ult i64 %245, %246, !dbg !2931
  br i1 %247, label %205, label %248, !dbg !2932, !llvm.loop !2967

; <label>:248:                                    ; preds = %244, %196
  %249 = phi i64 [ %201, %196 ], [ %246, %244 ], !dbg !2969
  %250 = icmp eq i64 %249, 0, !dbg !2972
  br i1 %250, label %253, label %251, !dbg !2973

; <label>:251:                                    ; preds = %248
  %252 = add i64 %249, -1, !dbg !2974
  store i64 %252, i64* %11, align 8, !dbg !2974, !tbaa !1254
  br label %253, !dbg !2975

; <label>:253:                                    ; preds = %248, %251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2976
  %254 = bitcast %struct.raxNode** %17 to i32**
  %255 = load i32*, i32** %254, align 8, !dbg !2977, !tbaa !2228
  br i1 %100, label %362, label %256, !dbg !2978

; <label>:256:                                    ; preds = %253
  %257 = load i32, i32* %255, align 4, !dbg !2979
  %258 = and i32 %257, 4, !dbg !2979
  %259 = icmp eq i32 %258, 0, !dbg !2980
  br i1 %259, label %260, label %277, !dbg !2981

; <label>:260:                                    ; preds = %256
  %261 = getelementptr inbounds i8, i8* %2, i64 %95, !dbg !2982
  %262 = call i32 @raxIteratorAddChars(%struct.raxIterator* nonnull %0, i8* %261, i64 1) #9, !dbg !2985
  %263 = icmp eq i32 %262, 0, !dbg !2985
  br i1 %263, label %389, label %264, !dbg !2986

; <label>:264:                                    ; preds = %260
  %265 = load i32, i32* %12, align 8, !dbg !2987, !tbaa !2094
  %266 = and i32 %265, -2, !dbg !2987
  store i32 %266, i32* %12, align 8, !dbg !2987, !tbaa !2094
  br i1 %156, label %267, label %270, !dbg !2988

; <label>:267:                                    ; preds = %264
  %268 = call i32 @raxIteratorPrevStep(%struct.raxIterator* nonnull %0, i32 1) #9, !dbg !2990
  %269 = icmp eq i32 %268, 0, !dbg !2990
  br i1 %269, label %389, label %270, !dbg !2991

; <label>:270:                                    ; preds = %267, %264
  br i1 %157, label %271, label %274, !dbg !2992

; <label>:271:                                    ; preds = %270
  %272 = call i32 @raxIteratorNextStep(%struct.raxIterator* nonnull %0, i32 1) #9, !dbg !2994
  %273 = icmp eq i32 %272, 0, !dbg !2994
  br i1 %273, label %389, label %274, !dbg !2995

; <label>:274:                                    ; preds = %271, %270
  %275 = load i32, i32* %12, align 8, !dbg !2996, !tbaa !2094
  %276 = or i32 %275, 1, !dbg !2996
  store i32 %276, i32* %12, align 8, !dbg !2996, !tbaa !2094
  br label %389, !dbg !2997

; <label>:277:                                    ; preds = %256
  %278 = bitcast i32* %255 to %struct.raxNode*, !dbg !2981
  %279 = load i32, i32* %8, align 4, !dbg !2998, !tbaa !48
  %280 = sext i32 %279 to i64, !dbg !2999
  %281 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %278, i64 0, i32 1, i64 %280, !dbg !2999
  %282 = load i8, i8* %281, align 1, !dbg !2999, !tbaa !267
  %283 = getelementptr inbounds i8, i8* %2, i64 %95, !dbg !3000
  %284 = load i8, i8* %283, align 1, !dbg !3000, !tbaa !267
  %285 = load i32, i32* %12, align 8, !dbg !3001, !tbaa !2094
  %286 = and i32 %285, -2, !dbg !3001
  store i32 %286, i32* %12, align 8, !dbg !3001, !tbaa !2094
  br i1 %157, label %287, label %303, !dbg !3002

; <label>:287:                                    ; preds = %277
  %288 = icmp ugt i8 %282, %284, !dbg !3003
  br i1 %288, label %289, label %292, !dbg !3007

; <label>:289:                                    ; preds = %287
  %290 = call i32 @raxIteratorNextStep(%struct.raxIterator* nonnull %0, i32 0) #9, !dbg !3008
  %291 = icmp eq i32 %290, 0, !dbg !3008
  br i1 %291, label %389, label %303, !dbg !3011

; <label>:292:                                    ; preds = %287
  %293 = getelementptr inbounds i32, i32* %255, i64 1, !dbg !3012
  %294 = bitcast i32* %293 to i8*, !dbg !3012
  %295 = load i32, i32* %255, align 4, !dbg !3015
  %296 = lshr i32 %295, 3, !dbg !3015
  %297 = zext i32 %296 to i64, !dbg !3016
  %298 = call i32 @raxIteratorAddChars(%struct.raxIterator* nonnull %0, i8* nonnull %294, i64 %297) #9, !dbg !3017
  %299 = icmp eq i32 %298, 0, !dbg !3017
  br i1 %299, label %389, label %300, !dbg !3018

; <label>:300:                                    ; preds = %292
  %301 = call i32 @raxIteratorNextStep(%struct.raxIterator* nonnull %0, i32 1) #9, !dbg !3019
  %302 = icmp eq i32 %301, 0, !dbg !3019
  br i1 %302, label %389, label %303, !dbg !3021

; <label>:303:                                    ; preds = %289, %300, %277
  br i1 %156, label %304, label %359, !dbg !3022

; <label>:304:                                    ; preds = %303
  %305 = icmp ult i8 %282, %284, !dbg !3023
  br i1 %305, label %306, label %347, !dbg !3027

; <label>:306:                                    ; preds = %304
  %307 = call i32 @raxSeekGreatest(%struct.raxIterator* nonnull %0) #9, !dbg !3028
  %308 = icmp eq i32 %307, 0, !dbg !3028
  br i1 %308, label %389, label %309, !dbg !3031

; <label>:309:                                    ; preds = %306
  %310 = load %struct.raxNode*, %struct.raxNode** %17, align 8, !dbg !3032, !tbaa !2228
  %311 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %310, i64 0, i32 0, !dbg !3035
  %312 = load i32, i32* %311, align 4, !dbg !3035
  %313 = and i32 %312, 2, !dbg !3035
  %314 = icmp eq i32 %313, 0, !dbg !3036
  br i1 %314, label %315, label %344, !dbg !3037

; <label>:315:                                    ; preds = %309
  %316 = bitcast %struct.raxNode* %310 to i8*, !dbg !3038
  %317 = lshr i32 %312, 3, !dbg !3039
  %318 = add nuw nsw i32 %317, 4, !dbg !3039
  %319 = sub nsw i32 4, %317, !dbg !3039
  %320 = and i32 %319, 7, !dbg !3039
  %321 = add nuw nsw i32 %318, %320, !dbg !3039
  %322 = zext i32 %321 to i64, !dbg !3039
  %323 = and i32 %312, 4, !dbg !3039
  %324 = icmp eq i32 %323, 0, !dbg !3039
  %325 = and i32 %312, -8, !dbg !3039
  %326 = select i1 %324, i32 %325, i32 8, !dbg !3039
  %327 = zext i32 %326 to i64, !dbg !3039
  %328 = add nuw nsw i64 %322, %327, !dbg !3039
  %329 = and i32 %312, 1, !dbg !3039
  %330 = icmp eq i32 %329, 0, !dbg !3039
  br i1 %330, label %336, label %331, !dbg !3039

; <label>:331:                                    ; preds = %315
  %332 = shl i32 %312, 2
  %333 = and i32 %332, 8
  %334 = xor i32 %333, 8
  %335 = zext i32 %334 to i64
  br label %336

; <label>:336:                                    ; preds = %331, %315
  %337 = phi i64 [ 0, %315 ], [ %335, %331 ]
  %338 = add nuw nsw i64 %328, %337, !dbg !3039
  %339 = getelementptr inbounds i8, i8* %316, i64 %338, !dbg !3040
  %340 = getelementptr inbounds i8, i8* %339, i64 -8, !dbg !3041
  %341 = bitcast i8** %5 to i8*, !dbg !3043
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %341) #7, !dbg !3043
  %342 = call i8* @memcpy(i8* nonnull %341, i8* nonnull %340, i64 8) #6, !dbg !3044
  %343 = load i8*, i8** %5, align 8, !dbg !3045, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %341) #7, !dbg !3047
  br label %344

; <label>:344:                                    ; preds = %309, %336
  %345 = phi i8* [ %343, %336 ], [ null, %309 ], !dbg !3048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3047
  %346 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 3, !dbg !3049
  store i8* %345, i8** %346, align 8, !dbg !3050, !tbaa !2107
  br label %359, !dbg !3051

; <label>:347:                                    ; preds = %304
  %348 = load %struct.raxNode*, %struct.raxNode** %17, align 8, !dbg !3052, !tbaa !2228
  %349 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %348, i64 0, i32 1, i64 0, !dbg !3055
  %350 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %348, i64 0, i32 0, !dbg !3056
  %351 = load i32, i32* %350, align 4, !dbg !3056
  %352 = lshr i32 %351, 3, !dbg !3056
  %353 = zext i32 %352 to i64, !dbg !3057
  %354 = call i32 @raxIteratorAddChars(%struct.raxIterator* nonnull %0, i8* nonnull %349, i64 %353) #9, !dbg !3058
  %355 = icmp eq i32 %354, 0, !dbg !3058
  br i1 %355, label %389, label %356, !dbg !3059

; <label>:356:                                    ; preds = %347
  %357 = call i32 @raxIteratorPrevStep(%struct.raxIterator* nonnull %0, i32 1) #9, !dbg !3060
  %358 = icmp eq i32 %357, 0, !dbg !3060
  br i1 %358, label %389, label %359, !dbg !3062

; <label>:359:                                    ; preds = %356, %344, %303
  %360 = load i32, i32* %12, align 8, !dbg !3063, !tbaa !2094
  %361 = or i32 %360, 1, !dbg !3063
  store i32 %361, i32* %12, align 8, !dbg !3063, !tbaa !2094
  br label %389

; <label>:362:                                    ; preds = %253
  %363 = load i32, i32* %12, align 8, !dbg !3064, !tbaa !2094
  %364 = and i32 %363, -2, !dbg !3064
  store i32 %364, i32* %12, align 8, !dbg !3064, !tbaa !2094
  %365 = load i32, i32* %255, align 4, !dbg !3066
  %366 = and i32 %365, 4, !dbg !3066
  %367 = icmp eq i32 %366, 0, !dbg !3068
  br i1 %367, label %375, label %368, !dbg !3069

; <label>:368:                                    ; preds = %362
  %369 = and i32 %365, 1, !dbg !3070
  %370 = icmp ne i32 %369, 0, !dbg !3071
  %371 = load i32, i32* %8, align 4, !dbg !3072
  %372 = icmp ne i32 %371, 0, !dbg !3072
  %373 = and i1 %370, %372, !dbg !3073
  %374 = and i1 %156, %373, !dbg !3073
  br i1 %374, label %383, label %375, !dbg !3073

; <label>:375:                                    ; preds = %362, %368
  br i1 %157, label %376, label %379, !dbg !3074

; <label>:376:                                    ; preds = %375
  %377 = call i32 @raxIteratorNextStep(%struct.raxIterator* nonnull %0, i32 0) #9, !dbg !3077
  %378 = icmp eq i32 %377, 0, !dbg !3077
  br i1 %378, label %389, label %379, !dbg !3078

; <label>:379:                                    ; preds = %376, %375
  br i1 %156, label %380, label %383, !dbg !3079

; <label>:380:                                    ; preds = %379
  %381 = call i32 @raxIteratorPrevStep(%struct.raxIterator* nonnull %0, i32 0) #9, !dbg !3081
  %382 = icmp eq i32 %381, 0, !dbg !3081
  br i1 %382, label %389, label %383, !dbg !3082

; <label>:383:                                    ; preds = %380, %379, %368
  %384 = load i32, i32* %12, align 8, !dbg !3083, !tbaa !2094
  %385 = or i32 %384, 1, !dbg !3083
  store i32 %385, i32* %12, align 8, !dbg !3083, !tbaa !2094
  br label %389

; <label>:386:                                    ; preds = %155
  %387 = load i32, i32* %12, align 8, !dbg !3084, !tbaa !2094
  %388 = or i32 %387, 2, !dbg !3084
  store i32 %388, i32* %12, align 8, !dbg !3084, !tbaa !2094
  br label %389, !dbg !3086

; <label>:389:                                    ; preds = %241, %222, %194, %152, %274, %383, %359, %380, %376, %289, %292, %300, %306, %347, %356, %271, %267, %260, %114, %93, %386
  %390 = phi i32 [ 1, %386 ], [ 0, %93 ], [ 0, %114 ], [ 0, %260 ], [ 0, %267 ], [ 0, %271 ], [ 0, %356 ], [ 0, %347 ], [ 0, %306 ], [ 0, %300 ], [ 0, %292 ], [ 0, %289 ], [ 0, %376 ], [ 0, %380 ], [ 1, %359 ], [ 1, %383 ], [ 1, %274 ], [ 1, %152 ], [ 0, %194 ], [ 0, %222 ], [ 0, %241 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %94) #7, !dbg !3087
  br label %391

; <label>:391:                                    ; preds = %50, %389, %90, %46, %42, %29
  %392 = phi i32 [ 1, %42 ], [ %47, %46 ], [ 1, %90 ], [ %390, %389 ], [ 0, %29 ], [ 0, %50 ], !dbg !3088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3087
  ret i32 %392, !dbg !3087
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxNext(%struct.raxIterator*) local_unnamed_addr #0 !dbg !3089 {
  %2 = tail call i32 @raxIteratorNextStep(%struct.raxIterator* %0, i32 0) #9, !dbg !3093
  %3 = icmp eq i32 %2, 0, !dbg !3093
  br i1 %3, label %9, label %4, !dbg !3095

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 0, !dbg !3096
  %6 = load i32, i32* %5, align 8, !dbg !3096, !tbaa !2094
  %7 = and i32 %6, 2, !dbg !3098
  %8 = icmp eq i32 %7, 0, !dbg !3098
  br i1 %8, label %12, label %9, !dbg !3099

; <label>:9:                                      ; preds = %4, %1
  %10 = phi i32 [ 12, %1 ], [ 0, %4 ]
  %11 = tail call i32* @__errno() #6, !dbg !3100
  store i32 %10, i32* %11, align 4, !dbg !3100, !tbaa !48
  br label %12, !dbg !3102

; <label>:12:                                     ; preds = %9, %4
  %13 = phi i32 [ 1, %4 ], [ 0, %9 ], !dbg !3100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3102
  ret i32 %13, !dbg !3102
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxPrev(%struct.raxIterator*) local_unnamed_addr #0 !dbg !3103 {
  %2 = tail call i32 @raxIteratorPrevStep(%struct.raxIterator* %0, i32 0) #9, !dbg !3107
  %3 = icmp eq i32 %2, 0, !dbg !3107
  br i1 %3, label %9, label %4, !dbg !3109

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 0, !dbg !3110
  %6 = load i32, i32* %5, align 8, !dbg !3110, !tbaa !2094
  %7 = and i32 %6, 2, !dbg !3112
  %8 = icmp eq i32 %7, 0, !dbg !3112
  br i1 %8, label %12, label %9, !dbg !3113

; <label>:9:                                      ; preds = %4, %1
  %10 = phi i32 [ 12, %1 ], [ 0, %4 ]
  %11 = tail call i32* @__errno() #6, !dbg !3114
  store i32 %10, i32* %11, align 4, !dbg !3114, !tbaa !48
  br label %12, !dbg !3116

; <label>:12:                                     ; preds = %9, %4
  %13 = phi i32 [ 1, %4 ], [ 0, %9 ], !dbg !3114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3116
  ret i32 %13, !dbg !3116
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxRandomWalk(%struct.raxIterator*, i64) local_unnamed_addr #0 !dbg !3117 {
  %3 = alloca %struct.raxNode*, align 8
  %4 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 1, !dbg !3137
  %5 = load %struct.rax*, %struct.rax** %4, align 8, !dbg !3137, !tbaa !2098
  %6 = getelementptr inbounds %struct.rax, %struct.rax* %5, i64 0, i32 1, !dbg !3139
  %7 = load i64, i64* %6, align 8, !dbg !3139, !tbaa !728
  %8 = icmp eq i64 %7, 0, !dbg !3140
  br i1 %8, label %9, label %13, !dbg !3141

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 0, !dbg !3142
  %11 = load i32, i32* %10, align 8, !dbg !3144, !tbaa !2094
  %12 = or i32 %11, 2, !dbg !3144
  store i32 %12, i32* %10, align 8, !dbg !3144, !tbaa !2094
  br label %170, !dbg !3145

; <label>:13:                                     ; preds = %2
  %14 = icmp eq i64 %1, 0, !dbg !3146
  br i1 %14, label %15, label %25, !dbg !3147

; <label>:15:                                     ; preds = %13
  %16 = uitofp i64 %7 to double, !dbg !3148
  %17 = tail call double @log(double %16) #6, !dbg !3149
  %18 = tail call double @floor(double %17) #6, !dbg !3150
  %19 = fptoui double %18 to i64, !dbg !3150
  %20 = shl i64 %19, 1, !dbg !3152
  %21 = tail call i32 @rand() #6, !dbg !3153
  %22 = sext i32 %21 to i64, !dbg !3153
  %23 = urem i64 %22, %20, !dbg !3154
  %24 = add i64 %23, 1, !dbg !3155
  br label %25, !dbg !3156

; <label>:25:                                     ; preds = %15, %13
  %26 = phi i64 [ %24, %15 ], [ %1, %13 ]
  %27 = bitcast %struct.raxNode** %3 to i8*, !dbg !3157
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #7, !dbg !3157
  %28 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 7, !dbg !3158
  %29 = bitcast %struct.raxNode** %28 to i64*, !dbg !3158
  %30 = load i64, i64* %29, align 8, !dbg !3158, !tbaa !2228
  %31 = bitcast %struct.raxNode** %3 to i64*, !dbg !3159
  store i64 %30, i64* %31, align 8, !dbg !3159, !tbaa !165
  %32 = bitcast %struct.raxNode** %3 to i32**
  %33 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 1
  %34 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 4
  %35 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 0
  %36 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8
  %37 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 2
  %38 = getelementptr inbounds %struct.raxStack, %struct.raxStack* %36, i64 0, i32 0
  %39 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 3, i64 0
  %40 = bitcast %struct.raxStack* %36 to i8**
  %41 = inttoptr i64 %30 to %struct.raxNode*, !dbg !3160
  %42 = inttoptr i64 %30 to i32*, !dbg !3160
  %43 = bitcast i8** %39 to i8*
  br label %44, !dbg !3160

; <label>:44:                                     ; preds = %159, %25
  %45 = phi i32* [ %42, %25 ], [ %161, %159 ]
  %46 = phi %struct.raxNode* [ %41, %25 ], [ %160, %159 ]
  %47 = phi i64 [ %26, %25 ], [ %166, %159 ], !dbg !3161
  %48 = icmp eq i64 %47, 0, !dbg !3163
  br i1 %48, label %49, label %54, !dbg !3164

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %46, i64 0, i32 0, !dbg !3165
  %51 = load i32, i32* %50, align 4, !dbg !3165
  %52 = and i32 %51, 1, !dbg !3165
  %53 = icmp eq i32 %52, 0, !dbg !3166
  br i1 %53, label %54, label %167, !dbg !3160

; <label>:54:                                     ; preds = %44, %49
  %55 = load i32, i32* %45, align 4, !dbg !3167
  %56 = and i32 %55, 4, !dbg !3167
  %57 = icmp eq i32 %56, 0, !dbg !3168
  %58 = lshr i32 %55, 3, !dbg !3169
  %59 = select i1 %57, i32 %58, i32 1, !dbg !3168
  %60 = call i32 @rand() #6, !dbg !3171
  %61 = load %struct.raxNode*, %struct.raxNode** %3, align 8, !dbg !3172, !tbaa !165
  %62 = load %struct.rax*, %struct.rax** %4, align 8, !dbg !3173, !tbaa !2098
  %63 = getelementptr inbounds %struct.rax, %struct.rax* %62, i64 0, i32 0, !dbg !3174
  %64 = load %struct.raxNode*, %struct.raxNode** %63, align 8, !dbg !3174, !tbaa !121
  %65 = icmp ne %struct.raxNode* %61, %64, !dbg !3175
  %66 = zext i1 %65 to i32, !dbg !3175
  %67 = add nuw nsw i32 %59, %66, !dbg !3176
  %68 = srem i32 %60, %67, !dbg !3177
  %69 = icmp eq i32 %68, %59, !dbg !3179
  br i1 %69, label %70, label %91, !dbg !3180

; <label>:70:                                     ; preds = %54
  %71 = load i64, i64* %33, align 8, !dbg !3181, !tbaa !1254
  %72 = icmp eq i64 %71, 0, !dbg !3183
  br i1 %72, label %80, label %73, !dbg !3184

; <label>:73:                                     ; preds = %70
  %74 = add i64 %71, -1, !dbg !3186
  store i64 %74, i64* %33, align 8, !dbg !3186, !tbaa !1254
  %75 = load i8**, i8*** %35, align 8, !dbg !3187, !tbaa !1261
  %76 = getelementptr inbounds i8*, i8** %75, i64 %74, !dbg !3188
  %77 = bitcast i8** %76 to i32**, !dbg !3188
  %78 = load i32*, i32** %77, align 8, !dbg !3188, !tbaa !165
  %79 = bitcast i32* %78 to %struct.raxNode*, !dbg !3189
  br label %80, !dbg !3189

; <label>:80:                                     ; preds = %70, %73
  %81 = phi %struct.raxNode* [ %79, %73 ], [ null, %70 ], !dbg !3190
  %82 = phi i32* [ %78, %73 ], [ null, %70 ], !dbg !3190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3191
  store i32* %82, i32** %32, align 8, !dbg !3192, !tbaa !165
  %83 = load i32, i32* %82, align 4, !dbg !3193
  %84 = and i32 %83, 4, !dbg !3193
  %85 = icmp eq i32 %84, 0, !dbg !3194
  %86 = lshr i32 %83, 3, !dbg !3195
  %87 = select i1 %85, i32 1, i32 %86, !dbg !3194
  %88 = zext i32 %87 to i64, !dbg !3197
  %89 = load i64, i64* %34, align 8, !dbg !3201, !tbaa !2139
  %90 = sub i64 %89, %88, !dbg !3201
  store i64 %90, i64* %34, align 8, !dbg !3201, !tbaa !2139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3202
  br label %159, !dbg !3203

; <label>:91:                                     ; preds = %54
  %92 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %61, i64 0, i32 0, !dbg !3204
  %93 = load i32, i32* %92, align 4, !dbg !3204
  %94 = and i32 %93, 4, !dbg !3204
  %95 = icmp eq i32 %94, 0, !dbg !3206
  br i1 %95, label %102, label %96, !dbg !3207

; <label>:96:                                     ; preds = %91
  %97 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %61, i64 0, i32 1, i64 0, !dbg !3208
  %98 = lshr i32 %93, 3, !dbg !3211
  %99 = zext i32 %98 to i64, !dbg !3214
  %100 = call i32 @raxIteratorAddChars(%struct.raxIterator* nonnull %0, i8* nonnull %97, i64 %99) #9, !dbg !3215
  %101 = icmp eq i32 %100, 0, !dbg !3215
  br i1 %101, label %168, label %107, !dbg !3216

; <label>:102:                                    ; preds = %91
  %103 = sext i32 %68 to i64, !dbg !3217
  %104 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %61, i64 0, i32 1, i64 %103, !dbg !3217
  %105 = call i32 @raxIteratorAddChars(%struct.raxIterator* nonnull %0, i8* nonnull %104, i64 1) #9, !dbg !3218
  %106 = icmp eq i32 %105, 0, !dbg !3218
  br i1 %106, label %168, label %107, !dbg !3219

; <label>:107:                                    ; preds = %96, %102
  %108 = load %struct.raxNode*, %struct.raxNode** %3, align 8, !dbg !3220, !tbaa !165
  %109 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %108, i64 0, i32 0, !dbg !3220
  %110 = load i32, i32* %109, align 4, !dbg !3220
  %111 = lshr i32 %110, 3, !dbg !3220
  %112 = load i64, i64* %33, align 8, !dbg !3225, !tbaa !1254
  %113 = load i64, i64* %37, align 8, !dbg !3226, !tbaa !1257
  %114 = icmp eq i64 %112, %113, !dbg !3227
  br i1 %114, label %115, label %137, !dbg !3228

; <label>:115:                                    ; preds = %107
  %116 = load i8**, i8*** %38, align 8, !dbg !3229, !tbaa !1261
  %117 = icmp eq i8** %116, %39, !dbg !3230
  br i1 %117, label %118, label %127, !dbg !3231

; <label>:118:                                    ; preds = %115
  %119 = shl i64 %112, 4, !dbg !3232
  %120 = call i8* @zmalloc(i64 %119) #6, !dbg !3233
  store i8* %120, i8** %40, align 8, !dbg !3234, !tbaa !1261
  %121 = icmp eq i8* %120, null, !dbg !3235
  br i1 %121, label %122, label %123, !dbg !3236

; <label>:122:                                    ; preds = %118
  store i8** %39, i8*** %38, align 8, !dbg !3237, !tbaa !1261
  br label %156, !dbg !3238

; <label>:123:                                    ; preds = %118
  %124 = load i64, i64* %37, align 8, !dbg !3239, !tbaa !1257
  %125 = shl i64 %124, 3, !dbg !3240
  %126 = call i8* @memcpy(i8* nonnull %120, i8* nonnull %43, i64 %125) #6, !dbg !3241
  br label %133, !dbg !3242

; <label>:127:                                    ; preds = %115
  %128 = bitcast i8** %116 to i8*, !dbg !3243
  %129 = shl i64 %112, 4, !dbg !3244
  %130 = call i8* @zrealloc(i8* %128, i64 %129) #6, !dbg !3245
  %131 = icmp eq i8* %130, null, !dbg !3246
  br i1 %131, label %156, label %132, !dbg !3247

; <label>:132:                                    ; preds = %127
  store i8* %130, i8** %40, align 8, !dbg !3249, !tbaa !1261
  br label %133

; <label>:133:                                    ; preds = %132, %123
  %134 = load i64, i64* %37, align 8, !dbg !3250, !tbaa !1257
  %135 = shl i64 %134, 1, !dbg !3250
  store i64 %135, i64* %37, align 8, !dbg !3250, !tbaa !1257
  %136 = load i64, i64* %33, align 8, !dbg !3251, !tbaa !1254
  br label %137, !dbg !3252

; <label>:137:                                    ; preds = %107, %133
  %138 = phi i64 [ %136, %133 ], [ %112, %107 ], !dbg !3251
  %139 = load i8**, i8*** %38, align 8, !dbg !3253, !tbaa !1261
  %140 = getelementptr inbounds i8*, i8** %139, i64 %138, !dbg !3254
  %141 = bitcast i8** %140 to %struct.raxNode**, !dbg !3255
  store %struct.raxNode* %108, %struct.raxNode** %141, align 8, !dbg !3255, !tbaa !165
  %142 = add i64 %138, 1, !dbg !3256
  store i64 %142, i64* %33, align 8, !dbg !3256, !tbaa !1254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3257
  %143 = zext i32 %111 to i64, !dbg !3220
  %144 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %108, i64 0, i32 1, i64 %143, !dbg !3220
  %145 = sub nsw i32 4, %111, !dbg !3220
  %146 = and i32 %145, 7, !dbg !3220
  %147 = zext i32 %146 to i64, !dbg !3220
  %148 = getelementptr inbounds i8, i8* %144, i64 %147, !dbg !3220
  %149 = bitcast i8* %148 to %struct.raxNode**, !dbg !3220
  %150 = sext i32 %68 to i64, !dbg !3258
  %151 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %149, i64 %150, !dbg !3258
  %152 = bitcast %struct.raxNode** %151 to i8*, !dbg !3260
  %153 = call i8* @memcpy(i8* nonnull %27, i8* %152, i64 8) #6, !dbg !3261
  %154 = load i32*, i32** %32, align 8, !dbg !3262, !tbaa !165
  %155 = bitcast i32* %154 to %struct.raxNode*
  br label %159

; <label>:156:                                    ; preds = %127, %122
  %157 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 4, !dbg !3263
  store i32 1, i32* %157, align 8, !dbg !3263, !tbaa !1274
  %158 = call i32* @__errno() #6, !dbg !3263
  store i32 12, i32* %158, align 4, !dbg !3263, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3257
  br label %168

; <label>:159:                                    ; preds = %80, %137
  %160 = phi %struct.raxNode* [ %81, %80 ], [ %155, %137 ], !dbg !3262
  %161 = phi i32* [ %82, %80 ], [ %154, %137 ], !dbg !3262
  %162 = load i32, i32* %161, align 4, !dbg !3264
  %163 = shl i32 %162, 31, !dbg !3265
  %164 = ashr exact i32 %163, 31, !dbg !3265
  %165 = sext i32 %164 to i64, !dbg !3265
  %166 = add i64 %47, %165, !dbg !3265
  br label %44

; <label>:167:                                    ; preds = %49
  store %struct.raxNode* %46, %struct.raxNode** %28, align 8, !dbg !3266, !tbaa !2228
  br label %168, !dbg !3267

; <label>:168:                                    ; preds = %102, %96, %156, %167
  %169 = phi i32 [ 1, %167 ], [ 0, %156 ], [ 0, %96 ], [ 0, %102 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #7, !dbg !3268
  br label %170

; <label>:170:                                    ; preds = %168, %9
  %171 = phi i32 [ 0, %9 ], [ %169, %168 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3268
  ret i32 %171, !dbg !3268
}

; Function Attrs: noredzone
declare dso_local double @floor(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @log(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @rand() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @raxCompare(%struct.raxIterator* nocapture readonly, i8* nocapture readonly, i8*, i64) local_unnamed_addr #0 !dbg !3269 {
  %5 = load i8, i8* %1, align 1, !dbg !3287, !tbaa !267
  %6 = icmp eq i8 %5, 61, !dbg !3289
  br i1 %6, label %11, label %7, !dbg !3290

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !3291
  %9 = load i8, i8* %8, align 1, !dbg !3291, !tbaa !267
  %10 = icmp eq i8 %9, 61, !dbg !3292
  br i1 %10, label %11, label %12, !dbg !3293

; <label>:11:                                     ; preds = %7, %4
  br label %12, !dbg !3294

; <label>:12:                                     ; preds = %11, %7
  %13 = phi i32 [ 1, %11 ], [ 0, %7 ], !dbg !3295
  switch i8 %5, label %15 [
    i8 62, label %19
    i8 60, label %14
  ], !dbg !3296

; <label>:14:                                     ; preds = %12
  br label %19, !dbg !3297

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !3300
  %17 = load i8, i8* %16, align 1, !dbg !3300, !tbaa !267
  %18 = icmp eq i8 %17, 61, !dbg !3302
  br i1 %18, label %19, label %58, !dbg !3303

; <label>:19:                                     ; preds = %12, %15, %14
  %20 = phi i32 [ 1, %14 ], [ 0, %15 ], [ 0, %12 ], !dbg !3295
  %21 = phi i32 [ 0, %14 ], [ 0, %15 ], [ 1, %12 ], !dbg !3295
  %22 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 4, !dbg !3304
  %23 = load i64, i64* %22, align 8, !dbg !3304, !tbaa !2139
  %24 = icmp ugt i64 %23, %3, !dbg !3305
  %25 = select i1 %24, i64 %3, i64 %23, !dbg !3306
  %26 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 2, !dbg !3308
  %27 = load i8*, i8** %26, align 8, !dbg !3308, !tbaa !2103
  %28 = tail call i32 @memcmp(i8* %27, i8* %2, i64 %25) #6, !dbg !3309
  %29 = or i32 %21, %20, !dbg !3311
  %30 = icmp eq i32 %29, 0, !dbg !3311
  %31 = icmp eq i32 %28, 0, !dbg !3313
  br i1 %30, label %32, label %37, !dbg !3311

; <label>:32:                                     ; preds = %19
  br i1 %31, label %33, label %58, !dbg !3315

; <label>:33:                                     ; preds = %32
  %34 = load i64, i64* %22, align 8, !dbg !3316, !tbaa !2139
  %35 = icmp eq i64 %34, %3, !dbg !3317
  %36 = zext i1 %35 to i32
  br label %58

; <label>:37:                                     ; preds = %19
  br i1 %31, label %38, label %55, !dbg !3318

; <label>:38:                                     ; preds = %37
  %39 = icmp eq i32 %13, 0, !dbg !3319
  br i1 %39, label %43, label %40, !dbg !3322

; <label>:40:                                     ; preds = %38
  %41 = load i64, i64* %22, align 8, !dbg !3323, !tbaa !2139
  %42 = icmp eq i64 %41, %3, !dbg !3324
  br i1 %42, label %58, label %43, !dbg !3325

; <label>:43:                                     ; preds = %38, %40
  %44 = icmp eq i32 %20, 0, !dbg !3326
  br i1 %44, label %49, label %45, !dbg !3328

; <label>:45:                                     ; preds = %43
  %46 = load i64, i64* %22, align 8, !dbg !3329, !tbaa !2139
  %47 = icmp ult i64 %46, %3, !dbg !3330
  %48 = zext i1 %47 to i32, !dbg !3330
  br label %58, !dbg !3331

; <label>:49:                                     ; preds = %43
  %50 = icmp eq i32 %21, 0, !dbg !3332
  br i1 %50, label %55, label %51, !dbg !3334

; <label>:51:                                     ; preds = %49
  %52 = load i64, i64* %22, align 8, !dbg !3335, !tbaa !2139
  %53 = icmp ugt i64 %52, %3, !dbg !3336
  %54 = zext i1 %53 to i32, !dbg !3336
  br label %58, !dbg !3337

; <label>:55:                                     ; preds = %49, %37
  %56 = icmp sgt i32 %28, 0, !dbg !3338
  %57 = select i1 %56, i32 %21, i32 %20, !dbg !3340
  br label %58, !dbg !3340

; <label>:58:                                     ; preds = %45, %51, %33, %32, %40, %55, %15
  %59 = phi i32 [ 0, %15 ], [ %48, %45 ], [ %54, %51 ], [ 0, %32 ], [ %36, %33 ], [ 1, %40 ], [ %57, %55 ], !dbg !3342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3343
  ret i32 %59, !dbg !3343
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @raxStop(%struct.raxIterator* readonly) local_unnamed_addr #0 !dbg !3344 {
  %2 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 2, !dbg !3350
  %3 = load i8*, i8** %2, align 8, !dbg !3350, !tbaa !2103
  %4 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 6, i64 0, !dbg !3352
  %5 = icmp eq i8* %3, %4, !dbg !3353
  br i1 %5, label %7, label %6, !dbg !3354

; <label>:6:                                      ; preds = %1
  tail call void @zfree(i8* %3) #6, !dbg !3355
  br label %7, !dbg !3355

; <label>:7:                                      ; preds = %1, %6
  %8 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 0, !dbg !3358
  %9 = load i8**, i8*** %8, align 8, !dbg !3358, !tbaa !1261
  %10 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 8, i32 3, i64 0, !dbg !3359
  %11 = icmp eq i8** %9, %10, !dbg !3360
  br i1 %11, label %14, label %12, !dbg !3361

; <label>:12:                                     ; preds = %7
  %13 = bitcast i8** %9 to i8*, !dbg !3362
  tail call void @zfree(i8* %13) #6, !dbg !3363
  br label %14, !dbg !3363

; <label>:14:                                     ; preds = %7, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3365
  ret void, !dbg !3365
}

; Function Attrs: noredzone nounwind
define dso_local i32 @raxEOF(%struct.raxIterator* nocapture readonly) local_unnamed_addr #0 !dbg !3366 {
  %2 = getelementptr inbounds %struct.raxIterator, %struct.raxIterator* %0, i64 0, i32 0, !dbg !3370
  %3 = load i32, i32* %2, align 8, !dbg !3370, !tbaa !2094
  %4 = and i32 %3, 2, !dbg !3371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3372
  ret i32 %4, !dbg !3372
}

; Function Attrs: noredzone nounwind
define dso_local i64 @raxSize(%struct.rax* nocapture readonly) local_unnamed_addr #0 !dbg !3373 {
  %2 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 1, !dbg !3379
  %3 = load i64, i64* %2, align 8, !dbg !3379, !tbaa !728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3380
  ret i64 %3, !dbg !3380
}

; Function Attrs: noredzone nounwind
define dso_local void @raxRecursiveShow(i32, i32, %struct.raxNode*) local_unnamed_addr #0 !dbg !3381 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.raxNode*, align 8
  %6 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %2, i64 0, i32 0, !dbg !3406
  %7 = load i32, i32* %6, align 4, !dbg !3406
  %8 = and i32 %7, 4, !dbg !3406
  %9 = icmp ne i32 %8, 0, !dbg !3407
  %10 = select i1 %9, i32 34, i32 91, !dbg !3408
  %11 = lshr i32 %7, 3, !dbg !3409
  %12 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %2, i64 0, i32 1, i64 0, !dbg !3410
  %13 = select i1 %9, i32 34, i32 93, !dbg !3411
  %14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %10, i32 %11, i8* nonnull %12, i32 %13) #6, !dbg !3412
  %15 = load i32, i32* %6, align 4, !dbg !3414
  %16 = and i32 %15, 1, !dbg !3414
  %17 = icmp eq i32 %16, 0, !dbg !3416
  br i1 %17, label %50, label %18, !dbg !3417

; <label>:18:                                     ; preds = %3
  %19 = and i32 %15, 2, !dbg !3421
  %20 = icmp eq i32 %19, 0, !dbg !3422
  br i1 %20, label %21, label %45, !dbg !3423

; <label>:21:                                     ; preds = %18
  %22 = bitcast %struct.raxNode* %2 to i8*, !dbg !3424
  %23 = lshr i32 %15, 3, !dbg !3425
  %24 = add nuw nsw i32 %23, 4, !dbg !3425
  %25 = sub nsw i32 4, %23, !dbg !3425
  %26 = and i32 %25, 7, !dbg !3425
  %27 = add nuw nsw i32 %24, %26, !dbg !3425
  %28 = zext i32 %27 to i64, !dbg !3425
  %29 = and i32 %15, 4, !dbg !3425
  %30 = icmp eq i32 %29, 0, !dbg !3425
  %31 = and i32 %15, -8, !dbg !3425
  %32 = select i1 %30, i32 %31, i32 8, !dbg !3425
  %33 = zext i32 %32 to i64, !dbg !3425
  %34 = shl i32 %15, 2
  %35 = and i32 %34, 8
  %36 = xor i32 %35, 8
  %37 = zext i32 %36 to i64
  %38 = add nuw nsw i64 %37, %33, !dbg !3425
  %39 = add nuw nsw i64 %38, %28, !dbg !3425
  %40 = getelementptr inbounds i8, i8* %22, i64 %39, !dbg !3426
  %41 = getelementptr inbounds i8, i8* %40, i64 -8, !dbg !3427
  %42 = bitcast i8** %4 to i8*, !dbg !3429
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42) #7, !dbg !3429
  %43 = call i8* @memcpy(i8* nonnull %42, i8* nonnull %41, i64 8) #6, !dbg !3430
  %44 = load i8*, i8** %4, align 8, !dbg !3431, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #7, !dbg !3433
  br label %45

; <label>:45:                                     ; preds = %18, %21
  %46 = phi i8* [ %44, %21 ], [ null, %18 ], !dbg !3434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3433
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %46) #6, !dbg !3435
  %48 = add nsw i32 %47, %14, !dbg !3436
  %49 = load i32, i32* %6, align 4, !dbg !3437
  br label %50, !dbg !3438

; <label>:50:                                     ; preds = %3, %45
  %51 = phi i32 [ %49, %45 ], [ %15, %3 ], !dbg !3437
  %52 = phi i32 [ %48, %45 ], [ %14, %3 ], !dbg !3439
  %53 = and i32 %51, 4, !dbg !3437
  %54 = icmp eq i32 %53, 0, !dbg !3440
  %55 = lshr i32 %51, 3, !dbg !3441
  %56 = select i1 %54, i32 %55, i32 1, !dbg !3440
  %57 = icmp eq i32 %0, 0, !dbg !3443
  br i1 %57, label %65, label %58, !dbg !3445

; <label>:58:                                     ; preds = %50
  %59 = icmp ugt i32 %56, 1, !dbg !3446
  %60 = select i1 %59, i32 7, i32 4, !dbg !3448
  %61 = add nsw i32 %60, %1, !dbg !3449
  %62 = icmp eq i32 %56, 1, !dbg !3450
  %63 = select i1 %62, i32 %52, i32 0, !dbg !3452
  %64 = add nsw i32 %61, %63, !dbg !3452
  br label %65, !dbg !3452

; <label>:65:                                     ; preds = %58, %50
  %66 = phi i32 [ %1, %50 ], [ %64, %58 ]
  %67 = icmp eq i32 %56, 0, !dbg !3454
  br i1 %67, label %81, label %68, !dbg !3455

; <label>:68:                                     ; preds = %65
  %69 = zext i32 %55 to i64, !dbg !3456
  %70 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %2, i64 0, i32 1, i64 %69, !dbg !3456
  %71 = sub nsw i32 4, %55, !dbg !3456
  %72 = and i32 %71, 7, !dbg !3456
  %73 = zext i32 %72 to i64, !dbg !3456
  %74 = getelementptr inbounds i8, i8* %70, i64 %73, !dbg !3456
  %75 = bitcast i8* %74 to %struct.raxNode**, !dbg !3456
  %76 = icmp eq i32 %56, 1
  %77 = icmp sgt i32 %66, 0
  %78 = bitcast %struct.raxNode** %5 to i8*
  %79 = add nsw i32 %0, 1
  %80 = zext i32 %56 to i64
  br label %82, !dbg !3455

; <label>:81:                                     ; preds = %99, %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3458
  ret void, !dbg !3458

; <label>:82:                                     ; preds = %99, %68
  %83 = phi i64 [ 0, %68 ], [ %104, %99 ]
  %84 = phi %struct.raxNode** [ %75, %68 ], [ %103, %99 ]
  br i1 %76, label %97, label %85, !dbg !3459

; <label>:85:                                     ; preds = %82
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !3460
  br i1 %77, label %92, label %87, !dbg !3462

; <label>:87:                                     ; preds = %92, %85
  %88 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %2, i64 0, i32 1, i64 %83, !dbg !3463
  %89 = load i8, i8* %88, align 1, !dbg !3463, !tbaa !267
  %90 = zext i8 %89 to i32, !dbg !3463
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %90) #6, !dbg !3464
  br label %99, !dbg !3465

; <label>:92:                                     ; preds = %85, %92
  %93 = phi i32 [ %95, %92 ], [ 0, %85 ]
  %94 = call i32 @putchar(i32 32) #6, !dbg !3466
  %95 = add nuw nsw i32 %93, 1, !dbg !3468
  %96 = icmp eq i32 %95, %66, !dbg !3469
  br i1 %96, label %87, label %92, !dbg !3462, !llvm.loop !3470

; <label>:97:                                     ; preds = %82
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3472
  br label %99

; <label>:99:                                     ; preds = %97, %87
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %78) #7, !dbg !3474
  %100 = bitcast %struct.raxNode** %84 to i8*, !dbg !3475
  %101 = call i8* @memcpy(i8* nonnull %78, i8* %100, i64 8) #6, !dbg !3476
  %102 = load %struct.raxNode*, %struct.raxNode** %5, align 8, !dbg !3477, !tbaa !165
  call void @raxRecursiveShow(i32 %79, i32 %66, %struct.raxNode* %102) #9, !dbg !3479
  %103 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %84, i64 1, !dbg !3480
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %78) #7, !dbg !3481
  %104 = add nuw nsw i64 %83, 1, !dbg !3482
  %105 = icmp eq i64 %104, %80, !dbg !3454
  br i1 %105, label %81, label %82, !dbg !3455, !llvm.loop !3483
}

; Function Attrs: noredzone
declare dso_local i32 @printf(i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @putchar(i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @raxShow(%struct.rax* nocapture readonly) local_unnamed_addr #0 !dbg !3485 {
  %2 = getelementptr inbounds %struct.rax, %struct.rax* %0, i64 0, i32 0, !dbg !3489
  %3 = load %struct.raxNode*, %struct.raxNode** %2, align 8, !dbg !3489, !tbaa !121
  tail call void @raxRecursiveShow(i32 0, i32 0, %struct.raxNode* %3) #9, !dbg !3490
  %4 = tail call i32 @putchar(i32 10) #6, !dbg !3491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3492
  ret void, !dbg !3492
}

; Function Attrs: noredzone nounwind
define dso_local void @raxDebugShowNode(i8*, %struct.raxNode*) local_unnamed_addr #0 !dbg !3493 {
  %3 = alloca %struct.raxNode*, align 8
  %4 = load i32, i32* @raxDebugMsg, align 4, !dbg !3505, !tbaa !48
  %5 = icmp eq i32 %4, 0, !dbg !3507
  br i1 %5, label %68, label %6, !dbg !3508

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.raxNode* %1 to i8*, !dbg !3509
  %8 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %1, i64 0, i32 0, !dbg !3510
  %9 = load i32, i32* %8, align 4, !dbg !3510
  %10 = lshr i32 %9, 3, !dbg !3510
  %11 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %1, i64 0, i32 1, i64 0, !dbg !3511
  %12 = and i32 %9, 1, !dbg !3512
  %13 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i8* %0, %struct.raxNode* %1, i32 %10, i8* nonnull %11, i32 %12, i32 %10) #6, !dbg !3513
  %14 = load i32, i32* %8, align 4, !dbg !3514
  %15 = and i32 %14, 4, !dbg !3514
  %16 = icmp eq i32 %15, 0, !dbg !3515
  %17 = lshr i32 %14, 3, !dbg !3516
  %18 = select i1 %16, i32 %17, i32 1, !dbg !3515
  %19 = add nuw nsw i32 %17, 4, !dbg !3518
  %20 = sub nsw i32 4, %17, !dbg !3518
  %21 = and i32 %20, 7, !dbg !3518
  %22 = add nuw nsw i32 %19, %21, !dbg !3518
  %23 = zext i32 %22 to i64, !dbg !3518
  %24 = and i32 %14, -8, !dbg !3518
  %25 = select i1 %16, i32 %24, i32 8, !dbg !3518
  %26 = zext i32 %25 to i64, !dbg !3518
  %27 = add nuw nsw i64 %23, %26, !dbg !3518
  %28 = and i32 %14, 1, !dbg !3518
  %29 = icmp eq i32 %28, 0, !dbg !3518
  br i1 %29, label %37, label %30, !dbg !3518

; <label>:30:                                     ; preds = %6
  %31 = shl i32 %14, 2
  %32 = and i32 %31, 8
  %33 = xor i32 %32, 8
  %34 = zext i32 %33 to i64
  %35 = add nuw nsw i64 %27, %34, !dbg !3518
  %36 = sub nsw i64 0, %34
  br label %37

; <label>:37:                                     ; preds = %6, %30
  %38 = phi i64 [ %35, %30 ], [ %27, %6 ]
  %39 = phi i64 [ %36, %30 ], [ 0, %6 ]
  %40 = icmp eq i32 %18, 0, !dbg !3519
  br i1 %40, label %62, label %41, !dbg !3519

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds i8, i8* %7, i64 %38, !dbg !3518
  %43 = getelementptr inbounds i8, i8* %42, i64 -8, !dbg !3518
  %44 = getelementptr inbounds i8, i8* %43, i64 %39, !dbg !3518
  %45 = bitcast i8* %44 to %struct.raxNode**, !dbg !3518
  %46 = add nsw i32 %18, -1, !dbg !3520
  %47 = sext i32 %46 to i64, !dbg !3521
  %48 = sub nsw i64 0, %47, !dbg !3521
  %49 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %45, i64 %48, !dbg !3521
  %50 = bitcast %struct.raxNode** %3 to i8*
  %51 = bitcast %struct.raxNode** %3 to i8**
  br label %52, !dbg !3519

; <label>:52:                                     ; preds = %41, %52
  %53 = phi %struct.raxNode** [ %49, %41 ], [ %58, %52 ]
  %54 = phi i32 [ %18, %41 ], [ %55, %52 ]
  %55 = add nsw i32 %54, -1, !dbg !3523
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #7, !dbg !3524
  %56 = bitcast %struct.raxNode** %53 to i8*, !dbg !3525
  %57 = call i8* @memcpy(i8* nonnull %50, i8* %56, i64 8) #6, !dbg !3526
  %58 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %53, i64 1, !dbg !3527
  %59 = load i8*, i8** %51, align 8, !dbg !3528, !tbaa !165
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* %59) #6, !dbg !3530
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #7, !dbg !3531
  %61 = icmp eq i32 %55, 0, !dbg !3519
  br i1 %61, label %62, label %52, !dbg !3519, !llvm.loop !3532

; <label>:62:                                     ; preds = %52, %37
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !3533
  %64 = call %struct._reent* @__getreent() #6, !dbg !3534
  %65 = getelementptr inbounds %struct._reent, %struct._reent* %64, i64 0, i32 2, !dbg !3534
  %66 = load %struct.__sFILE*, %struct.__sFILE** %65, align 8, !dbg !3534, !tbaa !3535
  %67 = call i32 @fflush(%struct.__sFILE* %66) #6, !dbg !3540
  br label %68, !dbg !3541

; <label>:68:                                     ; preds = %2, %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3541
  ret void, !dbg !3541
}

; Function Attrs: noredzone
declare dso_local i32 @fflush(%struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i64 @raxTouch(%struct.raxNode*) local_unnamed_addr #0 !dbg !3542 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.raxNode*, align 8
  %4 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 0, !dbg !3558
  %5 = load i32, i32* %4, align 4, !dbg !3558
  %6 = and i32 %5, 1, !dbg !3558
  %7 = icmp eq i32 %6, 0, !dbg !3560
  br i1 %7, label %40, label %8, !dbg !3561

; <label>:8:                                      ; preds = %1
  %9 = and i32 %5, 2, !dbg !3565
  %10 = icmp eq i32 %9, 0, !dbg !3566
  br i1 %10, label %11, label %37, !dbg !3567

; <label>:11:                                     ; preds = %8
  %12 = bitcast %struct.raxNode* %0 to i8*, !dbg !3568
  %13 = lshr i32 %5, 3, !dbg !3569
  %14 = add nuw nsw i32 %13, 4, !dbg !3569
  %15 = sub nsw i32 4, %13, !dbg !3569
  %16 = and i32 %15, 7, !dbg !3569
  %17 = add nuw nsw i32 %14, %16, !dbg !3569
  %18 = zext i32 %17 to i64, !dbg !3569
  %19 = and i32 %5, 4, !dbg !3569
  %20 = icmp eq i32 %19, 0, !dbg !3569
  %21 = and i32 %5, -8, !dbg !3569
  %22 = select i1 %20, i32 %21, i32 8, !dbg !3569
  %23 = zext i32 %22 to i64, !dbg !3569
  %24 = shl i32 %5, 2
  %25 = and i32 %24, 8
  %26 = xor i32 %25, 8
  %27 = zext i32 %26 to i64
  %28 = add nuw nsw i64 %27, %23, !dbg !3569
  %29 = add nuw nsw i64 %28, %18, !dbg !3569
  %30 = getelementptr inbounds i8, i8* %12, i64 %29, !dbg !3570
  %31 = getelementptr inbounds i8, i8* %30, i64 -8, !dbg !3571
  %32 = bitcast i8** %2 to i8*, !dbg !3573
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #7, !dbg !3573
  %33 = call i8* @memcpy(i8* nonnull %32, i8* nonnull %31, i64 8) #6, !dbg !3574
  %34 = bitcast i8** %2 to i64*, !dbg !3575
  %35 = load i64, i64* %34, align 8, !dbg !3575, !tbaa !165
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #7, !dbg !3577
  %36 = load i32, i32* %4, align 4, !dbg !3578
  br label %37

; <label>:37:                                     ; preds = %8, %11
  %38 = phi i32 [ %36, %11 ], [ %5, %8 ], !dbg !3578
  %39 = phi i64 [ %35, %11 ], [ 0, %8 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3577
  br label %40, !dbg !3579

; <label>:40:                                     ; preds = %1, %37
  %41 = phi i32 [ %38, %37 ], [ %5, %1 ], !dbg !3578
  %42 = phi i64 [ %39, %37 ], [ 0, %1 ], !dbg !3580
  %43 = and i32 %41, 4, !dbg !3578
  %44 = icmp eq i32 %43, 0, !dbg !3581
  %45 = lshr i32 %41, 3, !dbg !3582
  %46 = select i1 %44, i32 %45, i32 1, !dbg !3581
  %47 = icmp eq i32 %46, 0, !dbg !3586
  br i1 %47, label %59, label %48, !dbg !3587

; <label>:48:                                     ; preds = %40
  %49 = zext i32 %45 to i64, !dbg !3588
  %50 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 1, i64 %49, !dbg !3588
  %51 = sub nsw i32 4, %45, !dbg !3588
  %52 = and i32 %51, 7, !dbg !3588
  %53 = zext i32 %52 to i64, !dbg !3588
  %54 = getelementptr inbounds i8, i8* %50, i64 %53, !dbg !3588
  %55 = bitcast i8* %54 to %struct.raxNode**, !dbg !3588
  %56 = icmp eq i32 %46, 1
  %57 = bitcast %struct.raxNode** %3 to i8*
  %58 = zext i32 %46 to i64, !dbg !3587
  br label %61, !dbg !3587

; <label>:59:                                     ; preds = %81, %40
  %60 = phi i64 [ %42, %40 ], [ %83, %81 ], !dbg !3590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3591
  ret i64 %60, !dbg !3591

; <label>:61:                                     ; preds = %48, %81
  %62 = phi i64 [ 0, %48 ], [ %85, %81 ]
  %63 = phi i32 [ 0, %48 ], [ %78, %81 ]
  %64 = phi %struct.raxNode** [ %55, %48 ], [ %84, %81 ]
  %65 = phi i64 [ %42, %48 ], [ %83, %81 ]
  br i1 %56, label %71, label %66, !dbg !3592

; <label>:66:                                     ; preds = %61
  %67 = getelementptr inbounds %struct.raxNode, %struct.raxNode* %0, i64 0, i32 1, i64 %62, !dbg !3593
  %68 = load i8, i8* %67, align 1, !dbg !3593, !tbaa !267
  %69 = zext i8 %68 to i64, !dbg !3596
  %70 = add i64 %65, %69, !dbg !3597
  br label %71, !dbg !3598

; <label>:71:                                     ; preds = %61, %66
  %72 = phi i64 [ %70, %66 ], [ %65, %61 ], !dbg !3599
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57) #7, !dbg !3600
  %73 = bitcast %struct.raxNode** %64 to i8*, !dbg !3601
  %74 = call i8* @memcpy(i8* nonnull %57, i8* %73, i64 8) #6, !dbg !3602
  %75 = load %struct.raxNode*, %struct.raxNode** %3, align 8, !dbg !3603, !tbaa !165
  %76 = icmp eq %struct.raxNode* %75, inttoptr (i64 106764128 to %struct.raxNode*), !dbg !3606
  %77 = zext i1 %76 to i32, !dbg !3607
  %78 = add nuw nsw i32 %63, %77, !dbg !3607
  %79 = icmp ugt i32 %78, 1, !dbg !3608
  br i1 %79, label %80, label %81, !dbg !3610

; <label>:80:                                     ; preds = %71
  call void @exit(i32 1) #8, !dbg !3611
  unreachable, !dbg !3611

; <label>:81:                                     ; preds = %71
  %82 = call i64 @raxTouch(%struct.raxNode* %75) #9, !dbg !3612
  %83 = add i64 %82, %72, !dbg !3613
  %84 = getelementptr inbounds %struct.raxNode*, %struct.raxNode** %64, i64 1, !dbg !3614
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57) #7, !dbg !3615
  %85 = add nuw nsw i64 %62, 1, !dbg !3616
  %86 = icmp ult i64 %85, %58, !dbg !3586
  br i1 %86, label %61, label %59, !dbg !3587, !llvm.loop !3617
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
!75 = !DILocation(line: 189, column: 29, scope: !74)
!76 = !DILocation(line: 189, column: 9, scope: !53)
!77 = !DILocation(line: 190, column: 21, scope: !53)
!78 = !DILocation(line: 191, column: 14, scope: !79)
!79 = distinct !DILexicalBlock(scope: !53, file: !3, line: 191, column: 9)
!80 = !DILocation(line: 191, column: 9, scope: !53)
!81 = !DILocation(line: 190, column: 14, scope: !53)
!82 = !DILocation(line: 192, column: 11, scope: !53)
!83 = !DILocation(line: 195, column: 18, scope: !53)
!84 = !DILocation(line: 195, column: 16, scope: !53)
!85 = !DILocation(line: 196, column: 5, scope: !53)
!86 = !DILocation(line: 0, scope: !53)
!87 = !DILocation(line: 197, column: 1, scope: !53)
!88 = distinct !DISubprogram(name: "raxNew", scope: !3, file: !3, line: 201, type: !89, isLocal: false, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !100)
!89 = !DISubroutineType(types: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "rax", file: !15, line: 137, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rax", file: !15, line: 133, size: 192, elements: !94)
!94 = !{!95, !96, !99}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !93, file: !15, line: 134, baseType: !13, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "numele", scope: !93, file: !15, line: 135, baseType: !97, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !20, line: 60, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !22, line: 105, baseType: !32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "numnodes", scope: !93, file: !15, line: 136, baseType: !97, size: 64, offset: 128)
!100 = !{!101}
!101 = !DILocalVariable(name: "rax", scope: !88, file: !3, line: 202, type: !91)
!102 = !DILocation(line: 202, column: 16, scope: !88)
!103 = !DILocation(line: 202, column: 10, scope: !88)
!104 = !DILocation(line: 203, column: 13, scope: !105)
!105 = distinct !DILexicalBlock(scope: !88, file: !3, line: 203, column: 9)
!106 = !DILocation(line: 203, column: 9, scope: !88)
!107 = !DILocation(line: 204, column: 10, scope: !88)
!108 = !DILocation(line: 204, column: 17, scope: !88)
!109 = !{!110, !110, i64 0}
!110 = !{!"long", !50, i64 0}
!111 = !DILocation(line: 186, column: 28, scope: !53, inlinedAt: !112)
!112 = distinct !DILocation(line: 206, column: 17, scope: !88)
!113 = !DILocation(line: 186, column: 42, scope: !53, inlinedAt: !112)
!114 = !DILocation(line: 187, column: 12, scope: !53, inlinedAt: !112)
!115 = !DILocation(line: 190, column: 21, scope: !53, inlinedAt: !112)
!116 = !DILocation(line: 191, column: 14, scope: !79, inlinedAt: !112)
!117 = !DILocation(line: 191, column: 9, scope: !53, inlinedAt: !112)
!118 = !DILocation(line: 197, column: 1, scope: !53, inlinedAt: !112)
!119 = !DILocation(line: 206, column: 10, scope: !88)
!120 = !DILocation(line: 206, column: 15, scope: !88)
!121 = !{!122, !123, i64 0}
!122 = !{!"rax", !123, i64 0, !110, i64 8, !110, i64 16}
!123 = !{!"any pointer", !50, i64 0}
!124 = !DILocation(line: 208, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !3, line: 207, column: 28)
!126 = distinct !DILexicalBlock(scope: !88, file: !3, line: 207, column: 9)
!127 = !DILocation(line: 209, column: 9, scope: !125)
!128 = !DILocation(line: 190, column: 14, scope: !53, inlinedAt: !112)
!129 = !DILocation(line: 192, column: 11, scope: !53, inlinedAt: !112)
!130 = !DILocation(line: 195, column: 16, scope: !53, inlinedAt: !112)
!131 = !DILocation(line: 207, column: 9, scope: !88)
!132 = !DILocation(line: 0, scope: !133)
!133 = distinct !DILexicalBlock(scope: !126, file: !3, line: 210, column: 12)
!134 = !DILocation(line: 213, column: 1, scope: !88)
!135 = distinct !DISubprogram(name: "raxReallocForData", scope: !3, file: !3, line: 217, type: !136, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !138)
!136 = !DISubroutineType(types: !137)
!137 = !{!13, !13, !6}
!138 = !{!139, !140, !141}
!139 = !DILocalVariable(name: "n", arg: 1, scope: !135, file: !3, line: 217, type: !13)
!140 = !DILocalVariable(name: "data", arg: 2, scope: !135, file: !3, line: 217, type: !6)
!141 = !DILocalVariable(name: "curlen", scope: !135, file: !3, line: 219, type: !56)
!142 = !DILocation(line: 217, column: 37, scope: !135)
!143 = !DILocation(line: 217, column: 46, scope: !135)
!144 = !DILocation(line: 218, column: 14, scope: !145)
!145 = distinct !DILexicalBlock(scope: !135, file: !3, line: 218, column: 9)
!146 = !DILocation(line: 218, column: 9, scope: !135)
!147 = !DILocation(line: 219, column: 21, scope: !135)
!148 = !DILocation(line: 219, column: 12, scope: !135)
!149 = !DILocation(line: 220, column: 24, scope: !135)
!150 = !DILocation(line: 220, column: 32, scope: !135)
!151 = !DILocation(line: 220, column: 12, scope: !135)
!152 = !DILocation(line: 0, scope: !135)
!153 = !DILocation(line: 221, column: 1, scope: !135)
!154 = distinct !DISubprogram(name: "raxSetData", scope: !3, file: !3, line: 224, type: !155, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !157)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !13, !6}
!157 = !{!158, !159, !160}
!158 = !DILocalVariable(name: "n", arg: 1, scope: !154, file: !3, line: 224, type: !13)
!159 = !DILocalVariable(name: "data", arg: 2, scope: !154, file: !3, line: 224, type: !6)
!160 = !DILocalVariable(name: "ndata", scope: !161, file: !3, line: 228, type: !7)
!161 = distinct !DILexicalBlock(scope: !162, file: !3, line: 226, column: 23)
!162 = distinct !DILexicalBlock(scope: !154, file: !3, line: 226, column: 9)
!163 = !DILocation(line: 224, column: 26, scope: !154)
!164 = !DILocation(line: 224, column: 35, scope: !154)
!165 = !{!123, !123, i64 0}
!166 = !DILocation(line: 225, column: 8, scope: !154)
!167 = !DILocation(line: 225, column: 14, scope: !154)
!168 = !DILocation(line: 226, column: 14, scope: !162)
!169 = !DILocation(line: 226, column: 9, scope: !154)
!170 = !DILocation(line: 0, scope: !171)
!171 = distinct !DILexicalBlock(scope: !162, file: !3, line: 231, column: 12)
!172 = !DILocation(line: 227, column: 19, scope: !161)
!173 = !DILocation(line: 229, column: 14, scope: !161)
!174 = !DILocation(line: 229, column: 23, scope: !161)
!175 = !DILocation(line: 229, column: 46, scope: !161)
!176 = !DILocation(line: 228, column: 16, scope: !161)
!177 = !DILocation(line: 230, column: 22, scope: !161)
!178 = !DILocation(line: 230, column: 9, scope: !161)
!179 = !DILocation(line: 231, column: 5, scope: !161)
!180 = !DILocation(line: 232, column: 19, scope: !171)
!181 = !DILocation(line: 234, column: 1, scope: !154)
!182 = distinct !DISubprogram(name: "raxGetData", scope: !3, file: !3, line: 237, type: !183, isLocal: false, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !185)
!183 = !DISubroutineType(types: !184)
!184 = !{!6, !13}
!185 = !{!186, !187, !188}
!186 = !DILocalVariable(name: "n", arg: 1, scope: !182, file: !3, line: 237, type: !13)
!187 = !DILocalVariable(name: "ndata", scope: !182, file: !3, line: 239, type: !7)
!188 = !DILocalVariable(name: "data", scope: !182, file: !3, line: 240, type: !6)
!189 = !DILocation(line: 237, column: 27, scope: !182)
!190 = !DILocation(line: 238, column: 12, scope: !191)
!191 = distinct !DILexicalBlock(scope: !182, file: !3, line: 238, column: 9)
!192 = !DILocation(line: 238, column: 9, scope: !191)
!193 = !DILocation(line: 238, column: 9, scope: !182)
!194 = !DILocation(line: 239, column: 28, scope: !182)
!195 = !DILocation(line: 239, column: 37, scope: !182)
!196 = !DILocation(line: 239, column: 36, scope: !182)
!197 = !DILocation(line: 239, column: 60, scope: !182)
!198 = !DILocation(line: 239, column: 12, scope: !182)
!199 = !DILocation(line: 240, column: 5, scope: !182)
!200 = !DILocation(line: 241, column: 5, scope: !182)
!201 = !DILocation(line: 242, column: 12, scope: !182)
!202 = !DILocation(line: 240, column: 11, scope: !182)
!203 = !DILocation(line: 243, column: 1, scope: !182)
!204 = !DILocation(line: 0, scope: !182)
!205 = distinct !DISubprogram(name: "raxAddChild", scope: !3, file: !3, line: 254, type: !206, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !209)
!206 = !DISubroutineType(types: !207)
!207 = !{!13, !13, !11, !12, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222}
!210 = !DILocalVariable(name: "n", arg: 1, scope: !205, file: !3, line: 254, type: !13)
!211 = !DILocalVariable(name: "c", arg: 2, scope: !205, file: !3, line: 254, type: !11)
!212 = !DILocalVariable(name: "childptr", arg: 3, scope: !205, file: !3, line: 254, type: !12)
!213 = !DILocalVariable(name: "parentlink", arg: 4, scope: !205, file: !3, line: 254, type: !208)
!214 = !DILocalVariable(name: "curlen", scope: !205, file: !3, line: 257, type: !56)
!215 = !DILocalVariable(name: "newlen", scope: !205, file: !3, line: 259, type: !56)
!216 = !DILocalVariable(name: "child", scope: !205, file: !3, line: 264, type: !13)
!217 = !DILocalVariable(name: "newn", scope: !205, file: !3, line: 268, type: !13)
!218 = !DILocalVariable(name: "pos", scope: !205, file: !3, line: 303, type: !31)
!219 = !DILocalVariable(name: "src", scope: !205, file: !3, line: 314, type: !10)
!220 = !DILocalVariable(name: "dst", scope: !205, file: !3, line: 314, type: !10)
!221 = !DILocalVariable(name: "shift", scope: !205, file: !3, line: 332, type: !56)
!222 = !DILocalVariable(name: "childfield", scope: !205, file: !3, line: 380, type: !12)
!223 = !DILocation(line: 254, column: 31, scope: !205)
!224 = !DILocation(line: 254, column: 48, scope: !205)
!225 = !DILocation(line: 254, column: 61, scope: !205)
!226 = !DILocation(line: 254, column: 82, scope: !205)
!227 = !DILocation(line: 255, column: 5, scope: !205)
!228 = !DILocation(line: 257, column: 21, scope: !205)
!229 = !DILocation(line: 257, column: 12, scope: !205)
!230 = !DILocation(line: 258, column: 12, scope: !205)
!231 = !DILocation(line: 259, column: 21, scope: !205)
!232 = !DILocation(line: 259, column: 12, scope: !205)
!233 = !DILocation(line: 260, column: 12, scope: !205)
!234 = !DILocation(line: 264, column: 5, scope: !205)
!235 = !DILocation(line: 186, column: 28, scope: !53, inlinedAt: !236)
!236 = distinct !DILocation(line: 264, column: 22, scope: !205)
!237 = !DILocation(line: 186, column: 42, scope: !53, inlinedAt: !236)
!238 = !DILocation(line: 187, column: 12, scope: !53, inlinedAt: !236)
!239 = !DILocation(line: 190, column: 21, scope: !53, inlinedAt: !236)
!240 = !DILocation(line: 191, column: 14, scope: !79, inlinedAt: !236)
!241 = !DILocation(line: 191, column: 9, scope: !53, inlinedAt: !236)
!242 = !DILocation(line: 197, column: 1, scope: !53, inlinedAt: !236)
!243 = !DILocation(line: 264, column: 14, scope: !205)
!244 = !DILocation(line: 265, column: 9, scope: !205)
!245 = !DILocation(line: 190, column: 14, scope: !53, inlinedAt: !236)
!246 = !DILocation(line: 192, column: 11, scope: !53, inlinedAt: !236)
!247 = !DILocation(line: 195, column: 16, scope: !53, inlinedAt: !236)
!248 = !DILocation(line: 268, column: 33, scope: !205)
!249 = !DILocation(line: 268, column: 21, scope: !205)
!250 = !DILocation(line: 268, column: 14, scope: !205)
!251 = !DILocation(line: 269, column: 14, scope: !252)
!252 = distinct !DILexicalBlock(scope: !205, file: !3, line: 269, column: 9)
!253 = !DILocation(line: 269, column: 9, scope: !205)
!254 = !DILocation(line: 305, column: 16, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 305, column: 13)
!256 = distinct !DILexicalBlock(scope: !257, file: !3, line: 304, column: 41)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 304, column: 5)
!258 = distinct !DILexicalBlock(scope: !205, file: !3, line: 304, column: 5)
!259 = !DILocation(line: 303, column: 9, scope: !205)
!260 = !DILocation(line: 304, column: 28, scope: !257)
!261 = !DILocation(line: 304, column: 23, scope: !257)
!262 = !DILocation(line: 304, column: 5, scope: !258)
!263 = !DILocation(line: 305, column: 13, scope: !255)
!264 = !DILocation(line: 270, column: 9, scope: !265)
!265 = distinct !DILexicalBlock(scope: !252, file: !3, line: 269, column: 23)
!266 = !DILocation(line: 271, column: 9, scope: !265)
!267 = !{!50, !50, i64 0}
!268 = !DILocation(line: 305, column: 26, scope: !255)
!269 = !DILocation(line: 305, column: 13, scope: !256)
!270 = !DILocation(line: 304, column: 37, scope: !257)
!271 = distinct !{!271, !262, !272}
!272 = !DILocation(line: 306, column: 5, scope: !258)
!273 = !DILocation(line: 315, column: 18, scope: !274)
!274 = distinct !DILexicalBlock(scope: !205, file: !3, line: 315, column: 9)
!275 = !DILocation(line: 0, scope: !257)
!276 = !DILocation(line: 316, column: 33, scope: !277)
!277 = distinct !DILexicalBlock(scope: !274, file: !3, line: 315, column: 33)
!278 = !DILocation(line: 316, column: 40, scope: !277)
!279 = !DILocation(line: 314, column: 20, scope: !205)
!280 = !DILocation(line: 317, column: 33, scope: !277)
!281 = !DILocation(line: 317, column: 40, scope: !277)
!282 = !DILocation(line: 314, column: 26, scope: !205)
!283 = !DILocation(line: 318, column: 9, scope: !277)
!284 = !DILocation(line: 344, column: 22, scope: !205)
!285 = !DILocation(line: 319, column: 5, scope: !277)
!286 = !DILocation(line: 332, column: 27, scope: !205)
!287 = !DILocation(line: 332, column: 36, scope: !205)
!288 = !DILocation(line: 332, column: 12, scope: !205)
!289 = !DILocation(line: 344, column: 18, scope: !205)
!290 = !DILocation(line: 345, column: 11, scope: !205)
!291 = !DILocation(line: 344, column: 26, scope: !205)
!292 = !DILocation(line: 346, column: 28, scope: !205)
!293 = !DILocation(line: 346, column: 27, scope: !205)
!294 = !DILocation(line: 345, column: 30, scope: !205)
!295 = !DILocation(line: 347, column: 16, scope: !205)
!296 = !DILocation(line: 347, column: 22, scope: !205)
!297 = !DILocation(line: 347, column: 69, scope: !205)
!298 = !DILocation(line: 347, column: 61, scope: !205)
!299 = !DILocation(line: 347, column: 60, scope: !205)
!300 = !DILocation(line: 347, column: 5, scope: !205)
!301 = !DILocation(line: 358, column: 9, scope: !302)
!302 = distinct !DILexicalBlock(scope: !205, file: !3, line: 358, column: 9)
!303 = !DILocation(line: 358, column: 9, scope: !205)
!304 = !DILocation(line: 359, column: 32, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !3, line: 358, column: 16)
!306 = !DILocation(line: 360, column: 20, scope: !305)
!307 = !DILocation(line: 360, column: 9, scope: !305)
!308 = !DILocation(line: 361, column: 5, scope: !305)
!309 = !DILocation(line: 369, column: 18, scope: !205)
!310 = !DILocation(line: 370, column: 16, scope: !205)
!311 = !DILocation(line: 370, column: 26, scope: !205)
!312 = !DILocation(line: 370, column: 30, scope: !205)
!313 = !DILocation(line: 370, column: 23, scope: !205)
!314 = !DILocation(line: 370, column: 5, scope: !205)
!315 = !DILocation(line: 377, column: 18, scope: !205)
!316 = !DILocation(line: 378, column: 12, scope: !205)
!317 = !DILocation(line: 379, column: 28, scope: !205)
!318 = !DILocation(line: 380, column: 43, scope: !205)
!319 = !DILocation(line: 380, column: 15, scope: !205)
!320 = !DILocation(line: 381, column: 5, scope: !205)
!321 = !DILocation(line: 382, column: 17, scope: !205)
!322 = !DILocation(line: 382, column: 15, scope: !205)
!323 = !DILocation(line: 383, column: 17, scope: !205)
!324 = !DILocation(line: 0, scope: !265)
!325 = !DILocation(line: 385, column: 1, scope: !205)
!326 = distinct !DISubprogram(name: "raxCompressNode", scope: !3, file: !3, line: 395, type: !327, isLocal: false, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !329)
!327 = !DISubroutineType(types: !328)
!328 = !{!13, !13, !10, !56, !12}
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337}
!330 = !DILocalVariable(name: "n", arg: 1, scope: !326, file: !3, line: 395, type: !13)
!331 = !DILocalVariable(name: "s", arg: 2, scope: !326, file: !3, line: 395, type: !10)
!332 = !DILocalVariable(name: "len", arg: 3, scope: !326, file: !3, line: 395, type: !56)
!333 = !DILocalVariable(name: "child", arg: 4, scope: !326, file: !3, line: 395, type: !12)
!334 = !DILocalVariable(name: "data", scope: !326, file: !3, line: 397, type: !6)
!335 = !DILocalVariable(name: "newsize", scope: !326, file: !3, line: 398, type: !56)
!336 = !DILocalVariable(name: "newn", scope: !326, file: !3, line: 412, type: !13)
!337 = !DILocalVariable(name: "childfield", scope: !326, file: !3, line: 423, type: !12)
!338 = !DILocation(line: 395, column: 35, scope: !326)
!339 = !DILocation(line: 395, column: 53, scope: !326)
!340 = !DILocation(line: 395, column: 63, scope: !326)
!341 = !DILocation(line: 395, column: 78, scope: !326)
!342 = !DILocation(line: 396, column: 5, scope: !326)
!343 = !DILocation(line: 397, column: 11, scope: !326)
!344 = !DILocation(line: 186, column: 28, scope: !53, inlinedAt: !345)
!345 = distinct !DILocation(line: 403, column: 14, scope: !326)
!346 = !DILocation(line: 186, column: 42, scope: !53, inlinedAt: !345)
!347 = !DILocation(line: 187, column: 12, scope: !53, inlinedAt: !345)
!348 = !DILocation(line: 190, column: 21, scope: !53, inlinedAt: !345)
!349 = !DILocation(line: 191, column: 14, scope: !79, inlinedAt: !345)
!350 = !DILocation(line: 191, column: 9, scope: !53, inlinedAt: !345)
!351 = !DILocation(line: 197, column: 1, scope: !53, inlinedAt: !345)
!352 = !DILocation(line: 403, column: 12, scope: !326)
!353 = !DILocation(line: 404, column: 9, scope: !326)
!354 = !DILocation(line: 190, column: 14, scope: !53, inlinedAt: !345)
!355 = !DILocation(line: 192, column: 11, scope: !53, inlinedAt: !345)
!356 = !DILocation(line: 195, column: 16, scope: !53, inlinedAt: !345)
!357 = !DILocation(line: 407, column: 30, scope: !326)
!358 = !DILocation(line: 407, column: 35, scope: !326)
!359 = !DILocation(line: 407, column: 34, scope: !326)
!360 = !DILocation(line: 407, column: 50, scope: !326)
!361 = !DILocation(line: 398, column: 12, scope: !326)
!362 = !DILocation(line: 408, column: 12, scope: !363)
!363 = distinct !DILexicalBlock(scope: !326, file: !3, line: 408, column: 9)
!364 = !DILocation(line: 408, column: 9, scope: !363)
!365 = !DILocation(line: 408, column: 9, scope: !326)
!366 = !DILocation(line: 237, column: 27, scope: !182, inlinedAt: !367)
!367 = distinct !DILocation(line: 409, column: 16, scope: !368)
!368 = distinct !DILexicalBlock(scope: !363, file: !3, line: 408, column: 19)
!369 = !DILocation(line: 238, column: 12, scope: !191, inlinedAt: !367)
!370 = !DILocation(line: 238, column: 9, scope: !191, inlinedAt: !367)
!371 = !DILocation(line: 238, column: 9, scope: !182, inlinedAt: !367)
!372 = !DILocation(line: 239, column: 28, scope: !182, inlinedAt: !367)
!373 = !DILocation(line: 239, column: 37, scope: !182, inlinedAt: !367)
!374 = !DILocation(line: 239, column: 36, scope: !182, inlinedAt: !367)
!375 = !DILocation(line: 239, column: 60, scope: !182, inlinedAt: !367)
!376 = !DILocation(line: 239, column: 12, scope: !182, inlinedAt: !367)
!377 = !DILocation(line: 240, column: 5, scope: !182, inlinedAt: !367)
!378 = !DILocation(line: 241, column: 5, scope: !182, inlinedAt: !367)
!379 = !DILocation(line: 242, column: 12, scope: !182, inlinedAt: !367)
!380 = !DILocation(line: 240, column: 11, scope: !182, inlinedAt: !367)
!381 = !DILocation(line: 243, column: 1, scope: !182, inlinedAt: !367)
!382 = !DILocation(line: 410, column: 17, scope: !383)
!383 = distinct !DILexicalBlock(scope: !368, file: !3, line: 410, column: 13)
!384 = !DILocation(line: 0, scope: !182, inlinedAt: !367)
!385 = !DILocation(line: 410, column: 14, scope: !383)
!386 = !DILocation(line: 410, column: 33, scope: !383)
!387 = !DILocation(line: 410, column: 13, scope: !368)
!388 = !DILocation(line: 0, scope: !326)
!389 = !DILocation(line: 412, column: 33, scope: !326)
!390 = !DILocation(line: 412, column: 21, scope: !326)
!391 = !DILocation(line: 412, column: 14, scope: !326)
!392 = !DILocation(line: 413, column: 14, scope: !393)
!393 = distinct !DILexicalBlock(scope: !326, file: !3, line: 413, column: 9)
!394 = !DILocation(line: 413, column: 9, scope: !326)
!395 = !DILocation(line: 414, column: 18, scope: !396)
!396 = distinct !DILexicalBlock(scope: !393, file: !3, line: 413, column: 23)
!397 = !DILocation(line: 414, column: 9, scope: !396)
!398 = !DILocation(line: 415, column: 9, scope: !396)
!399 = !DILocation(line: 419, column: 8, scope: !326)
!400 = !DILocation(line: 419, column: 16, scope: !326)
!401 = !DILocation(line: 420, column: 15, scope: !326)
!402 = !DILocation(line: 420, column: 13, scope: !326)
!403 = !DILocation(line: 421, column: 15, scope: !326)
!404 = !DILocation(line: 421, column: 5, scope: !326)
!405 = !DILocation(line: 422, column: 12, scope: !406)
!406 = distinct !DILexicalBlock(scope: !326, file: !3, line: 422, column: 9)
!407 = !DILocation(line: 422, column: 9, scope: !406)
!408 = !DILocation(line: 422, column: 9, scope: !326)
!409 = !DILocation(line: 224, column: 26, scope: !154, inlinedAt: !410)
!410 = distinct !DILocation(line: 422, column: 19, scope: !406)
!411 = !DILocation(line: 224, column: 35, scope: !154, inlinedAt: !410)
!412 = !DILocation(line: 225, column: 14, scope: !154, inlinedAt: !410)
!413 = !DILocation(line: 226, column: 14, scope: !162, inlinedAt: !410)
!414 = !DILocation(line: 226, column: 9, scope: !154, inlinedAt: !410)
!415 = !DILocation(line: 0, scope: !171, inlinedAt: !410)
!416 = !DILocation(line: 227, column: 19, scope: !161, inlinedAt: !410)
!417 = !DILocation(line: 229, column: 23, scope: !161, inlinedAt: !410)
!418 = !DILocation(line: 229, column: 46, scope: !161, inlinedAt: !410)
!419 = !DILocation(line: 228, column: 16, scope: !161, inlinedAt: !410)
!420 = !DILocation(line: 230, column: 9, scope: !161, inlinedAt: !410)
!421 = !DILocation(line: 231, column: 5, scope: !161, inlinedAt: !410)
!422 = !DILocation(line: 232, column: 19, scope: !171, inlinedAt: !410)
!423 = !DILocation(line: 234, column: 1, scope: !154, inlinedAt: !410)
!424 = !DILocation(line: 423, column: 28, scope: !326)
!425 = !DILocation(line: 422, column: 19, scope: !406)
!426 = !DILocation(line: 423, column: 15, scope: !326)
!427 = !DILocation(line: 424, column: 23, scope: !326)
!428 = !DILocation(line: 424, column: 5, scope: !326)
!429 = !DILocation(line: 0, scope: !396)
!430 = !DILocation(line: 426, column: 1, scope: !326)
!431 = distinct !DISubprogram(name: "raxGenericInsert", scope: !3, file: !3, line: 507, type: !432, isLocal: false, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !434)
!432 = !DISubroutineType(types: !433)
!433 = !{!31, !91, !10, !56, !6, !7, !31}
!434 = !{!435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !448, !449, !450, !451, !452, !453, !454, !455, !456, !461, !465, !466, !469, !470, !473, !474, !475, !476, !477, !478, !479, !482, !484, !487, !488, !490, !491}
!435 = !DILocalVariable(name: "rax", arg: 1, scope: !431, file: !3, line: 507, type: !91)
!436 = !DILocalVariable(name: "s", arg: 2, scope: !431, file: !3, line: 507, type: !10)
!437 = !DILocalVariable(name: "len", arg: 3, scope: !431, file: !3, line: 507, type: !56)
!438 = !DILocalVariable(name: "data", arg: 4, scope: !431, file: !3, line: 507, type: !6)
!439 = !DILocalVariable(name: "old", arg: 5, scope: !431, file: !3, line: 507, type: !7)
!440 = !DILocalVariable(name: "overwrite", arg: 6, scope: !431, file: !3, line: 507, type: !31)
!441 = !DILocalVariable(name: "i", scope: !431, file: !3, line: 508, type: !56)
!442 = !DILocalVariable(name: "j", scope: !431, file: !3, line: 509, type: !31)
!443 = !DILocalVariable(name: "h", scope: !431, file: !3, line: 513, type: !13)
!444 = !DILocalVariable(name: "parentlink", scope: !431, file: !3, line: 513, type: !12)
!445 = !DILocalVariable(name: "childfield", scope: !446, file: !3, line: 683, type: !12)
!446 = distinct !DILexicalBlock(scope: !447, file: !3, line: 675, column: 33)
!447 = distinct !DILexicalBlock(scope: !431, file: !3, line: 675, column: 9)
!448 = !DILocalVariable(name: "next", scope: !446, file: !3, line: 684, type: !13)
!449 = !DILocalVariable(name: "trimmedlen", scope: !446, file: !3, line: 693, type: !56)
!450 = !DILocalVariable(name: "postfixlen", scope: !446, file: !3, line: 694, type: !56)
!451 = !DILocalVariable(name: "split_node_is_key", scope: !446, file: !3, line: 695, type: !31)
!452 = !DILocalVariable(name: "nodesize", scope: !446, file: !3, line: 696, type: !56)
!453 = !DILocalVariable(name: "splitnode", scope: !446, file: !3, line: 700, type: !13)
!454 = !DILocalVariable(name: "trimmed", scope: !446, file: !3, line: 701, type: !13)
!455 = !DILocalVariable(name: "postfix", scope: !446, file: !3, line: 702, type: !13)
!456 = !DILocalVariable(name: "ndata", scope: !457, file: !3, line: 733, type: !6)
!457 = distinct !DILexicalBlock(scope: !458, file: !3, line: 732, column: 27)
!458 = distinct !DILexicalBlock(scope: !459, file: !3, line: 732, column: 17)
!459 = distinct !DILexicalBlock(scope: !460, file: !3, line: 730, column: 21)
!460 = distinct !DILexicalBlock(scope: !446, file: !3, line: 730, column: 13)
!461 = !DILocalVariable(name: "ndata", scope: !462, file: !3, line: 745, type: !6)
!462 = distinct !DILexicalBlock(scope: !463, file: !3, line: 744, column: 41)
!463 = distinct !DILexicalBlock(scope: !464, file: !3, line: 744, column: 17)
!464 = distinct !DILexicalBlock(scope: !460, file: !3, line: 737, column: 16)
!465 = !DILocalVariable(name: "cp", scope: !464, file: !3, line: 748, type: !12)
!466 = !DILocalVariable(name: "cp", scope: !467, file: !3, line: 764, type: !12)
!467 = distinct !DILexicalBlock(scope: !468, file: !3, line: 757, column: 25)
!468 = distinct !DILexicalBlock(scope: !446, file: !3, line: 757, column: 13)
!469 = !DILocalVariable(name: "splitchild", scope: !446, file: !3, line: 773, type: !12)
!470 = !DILocalVariable(name: "postfixlen", scope: !471, file: !3, line: 787, type: !56)
!471 = distinct !DILexicalBlock(scope: !472, file: !3, line: 781, column: 40)
!472 = distinct !DILexicalBlock(scope: !447, file: !3, line: 781, column: 16)
!473 = !DILocalVariable(name: "nodesize", scope: !471, file: !3, line: 788, type: !56)
!474 = !DILocalVariable(name: "postfix", scope: !471, file: !3, line: 791, type: !13)
!475 = !DILocalVariable(name: "trimmed", scope: !471, file: !3, line: 795, type: !13)
!476 = !DILocalVariable(name: "childfield", scope: !471, file: !3, line: 805, type: !12)
!477 = !DILocalVariable(name: "next", scope: !471, file: !3, line: 806, type: !13)
!478 = !DILocalVariable(name: "cp", scope: !471, file: !3, line: 816, type: !12)
!479 = !DILocalVariable(name: "aux", scope: !480, file: !3, line: 828, type: !6)
!480 = distinct !DILexicalBlock(scope: !481, file: !3, line: 827, column: 23)
!481 = distinct !DILexicalBlock(scope: !471, file: !3, line: 827, column: 13)
!482 = !DILocalVariable(name: "child", scope: !483, file: !3, line: 847, type: !13)
!483 = distinct !DILexicalBlock(scope: !431, file: !3, line: 846, column: 20)
!484 = !DILocalVariable(name: "comprsize", scope: !485, file: !3, line: 854, type: !56)
!485 = distinct !DILexicalBlock(scope: !486, file: !3, line: 852, column: 40)
!486 = distinct !DILexicalBlock(scope: !483, file: !3, line: 852, column: 13)
!487 = !DILocalVariable(name: "newh", scope: !485, file: !3, line: 857, type: !13)
!488 = !DILocalVariable(name: "new_parentlink", scope: !489, file: !3, line: 865, type: !12)
!489 = distinct !DILexicalBlock(scope: !486, file: !3, line: 863, column: 16)
!490 = !DILocalVariable(name: "newh", scope: !489, file: !3, line: 866, type: !13)
!491 = !DILocalVariable(name: "newh", scope: !431, file: !3, line: 876, type: !13)
!492 = !DILocation(line: 507, column: 27, scope: !431)
!493 = !DILocation(line: 507, column: 47, scope: !431)
!494 = !DILocation(line: 507, column: 57, scope: !431)
!495 = !DILocation(line: 507, column: 68, scope: !431)
!496 = !DILocation(line: 507, column: 81, scope: !431)
!497 = !DILocation(line: 507, column: 90, scope: !431)
!498 = !DILocation(line: 509, column: 9, scope: !431)
!499 = !DILocation(line: 513, column: 5, scope: !431)
!500 = !DILocation(line: 513, column: 14, scope: !431)
!501 = !DILocation(line: 513, column: 19, scope: !431)
!502 = !DILocalVariable(name: "rax", arg: 1, scope: !503, file: !3, line: 457, type: !91)
!503 = distinct !DISubprogram(name: "raxLowWalk", scope: !3, file: !3, line: 457, type: !504, isLocal: true, isDefinition: true, scopeLine: 457, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !519)
!504 = !DISubroutineType(types: !505)
!505 = !{!56, !91, !10, !56, !12, !208, !506, !507}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxStack", file: !15, line: 150, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxStack", file: !15, line: 143, size: 2304, elements: !510)
!510 = !{!511, !512, !513, !514, !518}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !509, file: !15, line: 144, baseType: !7, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !509, file: !15, line: 145, baseType: !56, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "maxitems", scope: !509, file: !15, line: 145, baseType: !56, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "static_items", scope: !509, file: !15, line: 148, baseType: !515, size: 2048, offset: 192)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "oom", scope: !509, file: !15, line: 149, baseType: !31, size: 32, offset: 2240)
!519 = !{!502, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !532}
!520 = !DILocalVariable(name: "s", arg: 2, scope: !503, file: !3, line: 457, type: !10)
!521 = !DILocalVariable(name: "len", arg: 3, scope: !503, file: !3, line: 457, type: !56)
!522 = !DILocalVariable(name: "stopnode", arg: 4, scope: !503, file: !3, line: 457, type: !12)
!523 = !DILocalVariable(name: "plink", arg: 5, scope: !503, file: !3, line: 457, type: !208)
!524 = !DILocalVariable(name: "splitpos", arg: 6, scope: !503, file: !3, line: 457, type: !506)
!525 = !DILocalVariable(name: "ts", arg: 7, scope: !503, file: !3, line: 457, type: !507)
!526 = !DILocalVariable(name: "h", scope: !503, file: !3, line: 458, type: !13)
!527 = !DILocalVariable(name: "parentlink", scope: !503, file: !3, line: 459, type: !12)
!528 = !DILocalVariable(name: "i", scope: !503, file: !3, line: 461, type: !56)
!529 = !DILocalVariable(name: "j", scope: !503, file: !3, line: 462, type: !56)
!530 = !DILocalVariable(name: "v", scope: !531, file: !3, line: 465, type: !10)
!531 = distinct !DILexicalBlock(scope: !503, file: !3, line: 463, column: 31)
!532 = !DILocalVariable(name: "children", scope: !531, file: !3, line: 484, type: !12)
!533 = !DILocation(line: 457, column: 38, scope: !503, inlinedAt: !534)
!534 = distinct !DILocation(line: 516, column: 9, scope: !431)
!535 = !DILocation(line: 457, column: 58, scope: !503, inlinedAt: !534)
!536 = !DILocation(line: 457, column: 68, scope: !503, inlinedAt: !534)
!537 = !DILocation(line: 457, column: 83, scope: !503, inlinedAt: !534)
!538 = !DILocation(line: 457, column: 104, scope: !503, inlinedAt: !534)
!539 = !DILocation(line: 457, column: 136, scope: !503, inlinedAt: !534)
!540 = !DILocation(line: 458, column: 5, scope: !503, inlinedAt: !534)
!541 = !DILocation(line: 458, column: 23, scope: !503, inlinedAt: !534)
!542 = !DILocation(line: 458, column: 14, scope: !503, inlinedAt: !534)
!543 = !DILocation(line: 459, column: 15, scope: !503, inlinedAt: !534)
!544 = !DILocation(line: 461, column: 12, scope: !503, inlinedAt: !534)
!545 = !DILocation(line: 462, column: 12, scope: !503, inlinedAt: !534)
!546 = !DILocation(line: 463, column: 11, scope: !503, inlinedAt: !534)
!547 = !DILocation(line: 463, column: 14, scope: !503, inlinedAt: !534)
!548 = !DILocation(line: 463, column: 24, scope: !503, inlinedAt: !534)
!549 = !DILocation(line: 463, column: 19, scope: !503, inlinedAt: !534)
!550 = !DILocation(line: 0, scope: !551, inlinedAt: !534)
!551 = distinct !DILexicalBlock(scope: !552, file: !3, line: 468, column: 13)
!552 = distinct !DILexicalBlock(scope: !553, file: !3, line: 468, column: 13)
!553 = distinct !DILexicalBlock(scope: !554, file: !3, line: 467, column: 25)
!554 = distinct !DILexicalBlock(scope: !531, file: !3, line: 467, column: 13)
!555 = !DILocation(line: 467, column: 16, scope: !554, inlinedAt: !534)
!556 = !DILocation(line: 465, column: 24, scope: !531, inlinedAt: !534)
!557 = !DILocation(line: 467, column: 13, scope: !554, inlinedAt: !534)
!558 = !DILocation(line: 467, column: 13, scope: !531, inlinedAt: !534)
!559 = !DILocation(line: 468, column: 27, scope: !551, inlinedAt: !534)
!560 = !DILocation(line: 468, column: 42, scope: !551, inlinedAt: !534)
!561 = !DILocation(line: 468, column: 37, scope: !551, inlinedAt: !534)
!562 = !DILocation(line: 476, column: 27, scope: !563, inlinedAt: !534)
!563 = distinct !DILexicalBlock(scope: !564, file: !3, line: 476, column: 13)
!564 = distinct !DILexicalBlock(scope: !565, file: !3, line: 476, column: 13)
!565 = distinct !DILexicalBlock(scope: !554, file: !3, line: 472, column: 16)
!566 = !DILocation(line: 476, column: 13, scope: !564, inlinedAt: !534)
!567 = !DILocation(line: 469, column: 21, scope: !568, inlinedAt: !534)
!568 = distinct !DILexicalBlock(scope: !569, file: !3, line: 469, column: 21)
!569 = distinct !DILexicalBlock(scope: !551, file: !3, line: 468, column: 59)
!570 = !DILocation(line: 469, column: 29, scope: !568, inlinedAt: !534)
!571 = !DILocation(line: 469, column: 26, scope: !568, inlinedAt: !534)
!572 = !DILocation(line: 469, column: 21, scope: !569, inlinedAt: !534)
!573 = !DILocation(line: 468, column: 50, scope: !551, inlinedAt: !534)
!574 = !DILocation(line: 468, column: 55, scope: !551, inlinedAt: !534)
!575 = distinct !{!575, !576, !577}
!576 = !DILocation(line: 468, column: 13, scope: !552)
!577 = !DILocation(line: 470, column: 13, scope: !552)
!578 = !DILocation(line: 471, column: 19, scope: !579, inlinedAt: !534)
!579 = distinct !DILexicalBlock(scope: !553, file: !3, line: 471, column: 17)
!580 = !DILocation(line: 471, column: 17, scope: !553, inlinedAt: !534)
!581 = !DILocation(line: 477, column: 21, scope: !582, inlinedAt: !534)
!582 = distinct !DILexicalBlock(scope: !583, file: !3, line: 477, column: 21)
!583 = distinct !DILexicalBlock(scope: !563, file: !3, line: 476, column: 43)
!584 = !DILocation(line: 477, column: 26, scope: !582, inlinedAt: !534)
!585 = !DILocation(line: 477, column: 21, scope: !583, inlinedAt: !534)
!586 = !DILocation(line: 476, column: 39, scope: !563, inlinedAt: !534)
!587 = distinct !{!587, !588, !589}
!588 = !DILocation(line: 476, column: 13, scope: !564)
!589 = !DILocation(line: 478, column: 13, scope: !564)
!590 = !DILocation(line: 0, scope: !563, inlinedAt: !534)
!591 = !DILocation(line: 479, column: 19, scope: !592, inlinedAt: !534)
!592 = distinct !DILexicalBlock(scope: !565, file: !3, line: 479, column: 17)
!593 = !DILocation(line: 479, column: 17, scope: !565, inlinedAt: !534)
!594 = !DILocation(line: 480, column: 14, scope: !565, inlinedAt: !534)
!595 = !DILocation(line: 0, scope: !564, inlinedAt: !534)
!596 = !DILocation(line: 0, scope: !565, inlinedAt: !534)
!597 = !DILocation(line: 484, column: 30, scope: !531, inlinedAt: !534)
!598 = !DILocation(line: 484, column: 19, scope: !531, inlinedAt: !534)
!599 = !DILocation(line: 485, column: 13, scope: !531, inlinedAt: !534)
!600 = !DILocation(line: 486, column: 27, scope: !531, inlinedAt: !534)
!601 = !DILocation(line: 486, column: 19, scope: !531, inlinedAt: !534)
!602 = !DILocation(line: 486, column: 9, scope: !531, inlinedAt: !534)
!603 = !DILocation(line: 494, column: 29, scope: !604, inlinedAt: !534)
!604 = distinct !DILexicalBlock(scope: !503, file: !3, line: 494, column: 9)
!605 = !DILocation(line: 0, scope: !503, inlinedAt: !534)
!606 = !DILocation(line: 495, column: 23, scope: !607, inlinedAt: !534)
!607 = distinct !DILexicalBlock(scope: !503, file: !3, line: 495, column: 9)
!608 = !DILocation(line: 496, column: 24, scope: !609, inlinedAt: !534)
!609 = distinct !DILexicalBlock(scope: !503, file: !3, line: 496, column: 9)
!610 = !DILocation(line: 496, column: 21, scope: !609, inlinedAt: !534)
!611 = !DILocation(line: 496, column: 45, scope: !609, inlinedAt: !534)
!612 = !DILocation(line: 496, column: 9, scope: !503, inlinedAt: !534)
!613 = !DILocation(line: 498, column: 1, scope: !503, inlinedAt: !534)
!614 = !DILocation(line: 497, column: 5, scope: !503, inlinedAt: !534)
!615 = !DILocation(line: 508, column: 12, scope: !431)
!616 = !DILocation(line: 523, column: 11, scope: !617)
!617 = distinct !DILexicalBlock(scope: !431, file: !3, line: 523, column: 9)
!618 = !DILocation(line: 523, column: 18, scope: !617)
!619 = !DILocation(line: 523, column: 26, scope: !617)
!620 = !DILocation(line: 523, column: 23, scope: !617)
!621 = !DILocation(line: 523, column: 39, scope: !617)
!622 = !DILocation(line: 523, column: 34, scope: !617)
!623 = !DILocation(line: 526, column: 17, scope: !624)
!624 = distinct !DILexicalBlock(scope: !625, file: !3, line: 526, column: 13)
!625 = distinct !DILexicalBlock(scope: !617, file: !3, line: 523, column: 80)
!626 = !DILocation(line: 526, column: 14, scope: !624)
!627 = !DILocation(line: 526, column: 23, scope: !624)
!628 = !DILocation(line: 526, column: 30, scope: !624)
!629 = !DILocation(line: 526, column: 27, scope: !624)
!630 = !DILocation(line: 526, column: 40, scope: !624)
!631 = !DILocation(line: 526, column: 37, scope: !624)
!632 = !DILocation(line: 217, column: 37, scope: !135, inlinedAt: !633)
!633 = distinct !DILocation(line: 527, column: 17, scope: !634)
!634 = distinct !DILexicalBlock(scope: !624, file: !3, line: 526, column: 52)
!635 = !DILocation(line: 217, column: 46, scope: !135, inlinedAt: !633)
!636 = !DILocation(line: 218, column: 14, scope: !145, inlinedAt: !633)
!637 = !DILocation(line: 218, column: 9, scope: !135, inlinedAt: !633)
!638 = !DILocation(line: 219, column: 21, scope: !135, inlinedAt: !633)
!639 = !DILocation(line: 219, column: 12, scope: !135, inlinedAt: !633)
!640 = !DILocation(line: 220, column: 24, scope: !135, inlinedAt: !633)
!641 = !DILocation(line: 220, column: 32, scope: !135, inlinedAt: !633)
!642 = !DILocation(line: 220, column: 12, scope: !135, inlinedAt: !633)
!643 = !DILocation(line: 0, scope: !135, inlinedAt: !633)
!644 = !DILocation(line: 221, column: 1, scope: !135, inlinedAt: !633)
!645 = !DILocation(line: 527, column: 15, scope: !634)
!646 = !DILocation(line: 528, column: 17, scope: !647)
!647 = distinct !DILexicalBlock(scope: !634, file: !3, line: 528, column: 17)
!648 = !DILocation(line: 528, column: 17, scope: !634)
!649 = !DILocation(line: 528, column: 27, scope: !647)
!650 = !DILocation(line: 528, column: 20, scope: !647)
!651 = !DILocation(line: 530, column: 13, scope: !652)
!652 = distinct !DILexicalBlock(scope: !625, file: !3, line: 530, column: 13)
!653 = !DILocation(line: 530, column: 15, scope: !652)
!654 = !DILocation(line: 530, column: 13, scope: !625)
!655 = !DILocation(line: 531, column: 13, scope: !656)
!656 = distinct !DILexicalBlock(scope: !652, file: !3, line: 530, column: 24)
!657 = !DILocation(line: 531, column: 19, scope: !656)
!658 = !DILocation(line: 532, column: 13, scope: !656)
!659 = !DILocation(line: 536, column: 16, scope: !660)
!660 = distinct !DILexicalBlock(scope: !625, file: !3, line: 536, column: 13)
!661 = !DILocation(line: 536, column: 13, scope: !660)
!662 = !DILocation(line: 536, column: 13, scope: !625)
!663 = !DILocation(line: 537, column: 17, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 537, column: 17)
!665 = distinct !DILexicalBlock(scope: !660, file: !3, line: 536, column: 23)
!666 = !DILocation(line: 537, column: 17, scope: !665)
!667 = !DILocation(line: 237, column: 27, scope: !182, inlinedAt: !668)
!668 = distinct !DILocation(line: 537, column: 29, scope: !664)
!669 = !DILocation(line: 238, column: 12, scope: !191, inlinedAt: !668)
!670 = !DILocation(line: 238, column: 9, scope: !191, inlinedAt: !668)
!671 = !DILocation(line: 238, column: 9, scope: !182, inlinedAt: !668)
!672 = !DILocation(line: 239, column: 28, scope: !182, inlinedAt: !668)
!673 = !DILocation(line: 239, column: 37, scope: !182, inlinedAt: !668)
!674 = !DILocation(line: 239, column: 36, scope: !182, inlinedAt: !668)
!675 = !DILocation(line: 239, column: 60, scope: !182, inlinedAt: !668)
!676 = !DILocation(line: 239, column: 12, scope: !182, inlinedAt: !668)
!677 = !DILocation(line: 240, column: 5, scope: !182, inlinedAt: !668)
!678 = !DILocation(line: 241, column: 5, scope: !182, inlinedAt: !668)
!679 = !DILocation(line: 242, column: 12, scope: !182, inlinedAt: !668)
!680 = !DILocation(line: 240, column: 11, scope: !182, inlinedAt: !668)
!681 = !DILocation(line: 243, column: 1, scope: !182, inlinedAt: !668)
!682 = !DILocation(line: 0, scope: !182, inlinedAt: !668)
!683 = !DILocation(line: 537, column: 27, scope: !664)
!684 = !DILocation(line: 537, column: 22, scope: !664)
!685 = !DILocation(line: 538, column: 17, scope: !686)
!686 = distinct !DILexicalBlock(scope: !665, file: !3, line: 538, column: 17)
!687 = !DILocation(line: 538, column: 17, scope: !665)
!688 = !DILocation(line: 538, column: 39, scope: !686)
!689 = !DILocation(line: 224, column: 26, scope: !154, inlinedAt: !690)
!690 = distinct !DILocation(line: 538, column: 28, scope: !686)
!691 = !DILocation(line: 224, column: 35, scope: !154, inlinedAt: !690)
!692 = !DILocation(line: 225, column: 8, scope: !154, inlinedAt: !690)
!693 = !DILocation(line: 225, column: 14, scope: !154, inlinedAt: !690)
!694 = !DILocation(line: 226, column: 14, scope: !162, inlinedAt: !690)
!695 = !DILocation(line: 226, column: 9, scope: !154, inlinedAt: !690)
!696 = !DILocation(line: 0, scope: !171, inlinedAt: !690)
!697 = !DILocation(line: 227, column: 19, scope: !161, inlinedAt: !690)
!698 = !DILocation(line: 229, column: 14, scope: !161, inlinedAt: !690)
!699 = !DILocation(line: 229, column: 23, scope: !161, inlinedAt: !690)
!700 = !DILocation(line: 229, column: 46, scope: !161, inlinedAt: !690)
!701 = !DILocation(line: 228, column: 16, scope: !161, inlinedAt: !690)
!702 = !DILocation(line: 230, column: 9, scope: !161, inlinedAt: !690)
!703 = !DILocation(line: 231, column: 5, scope: !161, inlinedAt: !690)
!704 = !DILocation(line: 232, column: 19, scope: !171, inlinedAt: !690)
!705 = !DILocation(line: 234, column: 1, scope: !154, inlinedAt: !690)
!706 = !DILocation(line: 538, column: 28, scope: !686)
!707 = !DILocation(line: 539, column: 13, scope: !665)
!708 = !DILocation(line: 539, column: 19, scope: !665)
!709 = !DILocation(line: 540, column: 13, scope: !665)
!710 = !DILocation(line: 224, column: 26, scope: !154, inlinedAt: !711)
!711 = distinct !DILocation(line: 545, column: 9, scope: !625)
!712 = !DILocation(line: 224, column: 35, scope: !154, inlinedAt: !711)
!713 = !DILocation(line: 225, column: 14, scope: !154, inlinedAt: !711)
!714 = !DILocation(line: 226, column: 14, scope: !162, inlinedAt: !711)
!715 = !DILocation(line: 226, column: 9, scope: !154, inlinedAt: !711)
!716 = !DILocation(line: 0, scope: !171, inlinedAt: !711)
!717 = !DILocation(line: 227, column: 19, scope: !161, inlinedAt: !711)
!718 = !DILocation(line: 229, column: 14, scope: !161, inlinedAt: !711)
!719 = !DILocation(line: 229, column: 23, scope: !161, inlinedAt: !711)
!720 = !DILocation(line: 229, column: 46, scope: !161, inlinedAt: !711)
!721 = !DILocation(line: 228, column: 16, scope: !161, inlinedAt: !711)
!722 = !DILocation(line: 230, column: 9, scope: !161, inlinedAt: !711)
!723 = !DILocation(line: 231, column: 5, scope: !161, inlinedAt: !711)
!724 = !DILocation(line: 232, column: 19, scope: !171, inlinedAt: !711)
!725 = !DILocation(line: 234, column: 1, scope: !154, inlinedAt: !711)
!726 = !DILocation(line: 546, column: 14, scope: !625)
!727 = !DILocation(line: 546, column: 20, scope: !625)
!728 = !{!122, !110, i64 8}
!729 = !DILocation(line: 547, column: 9, scope: !625)
!730 = !DILocation(line: 675, column: 12, scope: !447)
!731 = !DILocation(line: 675, column: 9, scope: !447)
!732 = !DILocation(line: 675, column: 20, scope: !447)
!733 = !DILocation(line: 683, column: 32, scope: !446)
!734 = !DILocation(line: 683, column: 19, scope: !446)
!735 = !DILocation(line: 684, column: 9, scope: !446)
!736 = !DILocation(line: 685, column: 9, scope: !446)
!737 = !DILocation(line: 688, column: 13, scope: !738)
!738 = distinct !DILexicalBlock(scope: !446, file: !3, line: 688, column: 13)
!739 = !DILocation(line: 688, column: 16, scope: !738)
!740 = !DILocation(line: 693, column: 29, scope: !446)
!741 = !DILocation(line: 693, column: 16, scope: !446)
!742 = !DILocation(line: 694, column: 32, scope: !446)
!743 = !DILocation(line: 694, column: 41, scope: !446)
!744 = !DILocation(line: 694, column: 29, scope: !446)
!745 = !DILocation(line: 694, column: 16, scope: !446)
!746 = !DILocation(line: 695, column: 34, scope: !446)
!747 = !DILocation(line: 695, column: 48, scope: !446)
!748 = !DILocation(line: 695, column: 45, scope: !446)
!749 = !DILocation(line: 700, column: 9, scope: !446)
!750 = !DILocation(line: 186, column: 28, scope: !53, inlinedAt: !751)
!751 = distinct !DILocation(line: 700, column: 30, scope: !446)
!752 = !DILocation(line: 187, column: 12, scope: !53, inlinedAt: !751)
!753 = !DILocation(line: 189, column: 9, scope: !53, inlinedAt: !751)
!754 = !DILocation(line: 695, column: 64, scope: !446)
!755 = !DILocation(line: 695, column: 60, scope: !446)
!756 = !DILocation(line: 190, column: 21, scope: !53, inlinedAt: !751)
!757 = !DILocation(line: 191, column: 14, scope: !79, inlinedAt: !751)
!758 = !DILocation(line: 191, column: 9, scope: !53, inlinedAt: !751)
!759 = !DILocation(line: 190, column: 14, scope: !53, inlinedAt: !751)
!760 = !DILocation(line: 192, column: 11, scope: !53, inlinedAt: !751)
!761 = !DILocation(line: 195, column: 16, scope: !53, inlinedAt: !751)
!762 = !DILocation(line: 196, column: 5, scope: !53, inlinedAt: !751)
!763 = !DILocation(line: 0, scope: !53, inlinedAt: !751)
!764 = !DILocation(line: 197, column: 1, scope: !53, inlinedAt: !751)
!765 = !DILocation(line: 700, column: 18, scope: !446)
!766 = !DILocation(line: 701, column: 9, scope: !446)
!767 = !DILocation(line: 701, column: 18, scope: !446)
!768 = !DILocation(line: 702, column: 9, scope: !446)
!769 = !DILocation(line: 702, column: 18, scope: !446)
!770 = !DILocation(line: 704, column: 13, scope: !446)
!771 = !DILocation(line: 705, column: 39, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !3, line: 704, column: 25)
!773 = distinct !DILexicalBlock(scope: !446, file: !3, line: 704, column: 13)
!774 = !DILocation(line: 705, column: 51, scope: !772)
!775 = !DILocation(line: 705, column: 50, scope: !772)
!776 = !DILocation(line: 696, column: 16, scope: !446)
!777 = !DILocation(line: 707, column: 17, scope: !778)
!778 = distinct !DILexicalBlock(scope: !772, file: !3, line: 707, column: 17)
!779 = !DILocation(line: 707, column: 20, scope: !778)
!780 = !DILocation(line: 707, column: 26, scope: !778)
!781 = !DILocation(line: 708, column: 23, scope: !772)
!782 = !DILocation(line: 708, column: 21, scope: !772)
!783 = !DILocation(line: 709, column: 9, scope: !772)
!784 = !DILocation(line: 711, column: 13, scope: !785)
!785 = distinct !DILexicalBlock(scope: !446, file: !3, line: 711, column: 13)
!786 = !DILocation(line: 711, column: 13, scope: !446)
!787 = !DILocation(line: 712, column: 51, scope: !788)
!788 = distinct !DILexicalBlock(scope: !785, file: !3, line: 711, column: 25)
!789 = !DILocation(line: 712, column: 50, scope: !788)
!790 = !DILocation(line: 712, column: 73, scope: !788)
!791 = !DILocation(line: 714, column: 23, scope: !788)
!792 = !DILocation(line: 714, column: 21, scope: !788)
!793 = !DILocation(line: 715, column: 9, scope: !788)
!794 = !DILocation(line: 718, column: 13, scope: !795)
!795 = distinct !DILexicalBlock(scope: !446, file: !3, line: 718, column: 13)
!796 = !DILocation(line: 718, column: 23, scope: !795)
!797 = !DILocation(line: 718, column: 31, scope: !795)
!798 = !DILocation(line: 719, column: 28, scope: !795)
!799 = !DILocation(line: 719, column: 36, scope: !795)
!800 = !DILocation(line: 719, column: 25, scope: !795)
!801 = !DILocation(line: 720, column: 28, scope: !795)
!802 = !DILocation(line: 720, column: 36, scope: !795)
!803 = !DILocation(line: 720, column: 25, scope: !795)
!804 = !DILocation(line: 722, column: 13, scope: !805)
!805 = distinct !DILexicalBlock(scope: !795, file: !3, line: 721, column: 9)
!806 = !DILocation(line: 723, column: 22, scope: !805)
!807 = !DILocation(line: 723, column: 13, scope: !805)
!808 = !DILocation(line: 724, column: 22, scope: !805)
!809 = !DILocation(line: 724, column: 13, scope: !805)
!810 = !DILocation(line: 725, column: 13, scope: !805)
!811 = !DILocation(line: 725, column: 19, scope: !805)
!812 = !DILocation(line: 781, column: 5, scope: !447)
!813 = !DILocation(line: 728, column: 30, scope: !446)
!814 = !DILocation(line: 728, column: 9, scope: !446)
!815 = !DILocation(line: 728, column: 28, scope: !446)
!816 = !DILocation(line: 730, column: 15, scope: !460)
!817 = !DILocation(line: 730, column: 13, scope: !446)
!818 = !DILocation(line: 732, column: 17, scope: !458)
!819 = !DILocation(line: 732, column: 20, scope: !458)
!820 = !DILocation(line: 732, column: 17, scope: !459)
!821 = !DILocation(line: 237, column: 27, scope: !182, inlinedAt: !822)
!822 = distinct !DILocation(line: 733, column: 31, scope: !457)
!823 = !DILocation(line: 238, column: 12, scope: !191, inlinedAt: !822)
!824 = !DILocation(line: 238, column: 9, scope: !191, inlinedAt: !822)
!825 = !DILocation(line: 238, column: 9, scope: !182, inlinedAt: !822)
!826 = !DILocation(line: 239, column: 28, scope: !182, inlinedAt: !822)
!827 = !DILocation(line: 239, column: 37, scope: !182, inlinedAt: !822)
!828 = !DILocation(line: 239, column: 36, scope: !182, inlinedAt: !822)
!829 = !DILocation(line: 239, column: 60, scope: !182, inlinedAt: !822)
!830 = !DILocation(line: 239, column: 12, scope: !182, inlinedAt: !822)
!831 = !DILocation(line: 240, column: 5, scope: !182, inlinedAt: !822)
!832 = !DILocation(line: 241, column: 5, scope: !182, inlinedAt: !822)
!833 = !DILocation(line: 242, column: 12, scope: !182, inlinedAt: !822)
!834 = !DILocation(line: 240, column: 11, scope: !182, inlinedAt: !822)
!835 = !DILocation(line: 243, column: 1, scope: !182, inlinedAt: !822)
!836 = !DILocation(line: 0, scope: !182, inlinedAt: !822)
!837 = !DILocation(line: 733, column: 23, scope: !457)
!838 = !DILocation(line: 734, column: 28, scope: !457)
!839 = !DILocation(line: 224, column: 26, scope: !154, inlinedAt: !840)
!840 = distinct !DILocation(line: 734, column: 17, scope: !457)
!841 = !DILocation(line: 224, column: 35, scope: !154, inlinedAt: !840)
!842 = !DILocation(line: 225, column: 8, scope: !154, inlinedAt: !840)
!843 = !DILocation(line: 225, column: 14, scope: !154, inlinedAt: !840)
!844 = !DILocation(line: 226, column: 14, scope: !162, inlinedAt: !840)
!845 = !DILocation(line: 226, column: 9, scope: !154, inlinedAt: !840)
!846 = !DILocation(line: 0, scope: !171, inlinedAt: !840)
!847 = !DILocation(line: 227, column: 19, scope: !161, inlinedAt: !840)
!848 = !DILocation(line: 229, column: 14, scope: !161, inlinedAt: !840)
!849 = !DILocation(line: 229, column: 23, scope: !161, inlinedAt: !840)
!850 = !DILocation(line: 229, column: 46, scope: !161, inlinedAt: !840)
!851 = !DILocation(line: 228, column: 16, scope: !161, inlinedAt: !840)
!852 = !DILocation(line: 230, column: 9, scope: !161, inlinedAt: !840)
!853 = !DILocation(line: 231, column: 5, scope: !161, inlinedAt: !840)
!854 = !DILocation(line: 232, column: 19, scope: !171, inlinedAt: !840)
!855 = !DILocation(line: 234, column: 1, scope: !154, inlinedAt: !840)
!856 = !DILocation(line: 735, column: 13, scope: !457)
!857 = !DILocation(line: 736, column: 20, scope: !459)
!858 = !DILocation(line: 736, column: 13, scope: !459)
!859 = !DILocation(line: 737, column: 9, scope: !459)
!860 = !DILocation(line: 739, column: 13, scope: !464)
!861 = !DILocation(line: 739, column: 27, scope: !464)
!862 = !DILocation(line: 740, column: 20, scope: !464)
!863 = !DILocation(line: 740, column: 34, scope: !464)
!864 = !DILocation(line: 740, column: 13, scope: !464)
!865 = !DILocation(line: 741, column: 34, scope: !464)
!866 = !DILocation(line: 741, column: 32, scope: !464)
!867 = !DILocation(line: 741, column: 13, scope: !464)
!868 = !DILocation(line: 741, column: 30, scope: !464)
!869 = !DILocation(line: 742, column: 30, scope: !464)
!870 = !DILocation(line: 742, column: 33, scope: !464)
!871 = !DILocation(line: 742, column: 13, scope: !464)
!872 = !DILocation(line: 742, column: 28, scope: !464)
!873 = !DILocation(line: 743, column: 31, scope: !464)
!874 = !DILocation(line: 743, column: 34, scope: !464)
!875 = !DILocation(line: 743, column: 13, scope: !464)
!876 = !DILocation(line: 743, column: 29, scope: !464)
!877 = !DILocation(line: 744, column: 17, scope: !463)
!878 = !DILocation(line: 744, column: 20, scope: !463)
!879 = !DILocation(line: 744, column: 26, scope: !463)
!880 = !DILocation(line: 237, column: 27, scope: !182, inlinedAt: !881)
!881 = distinct !DILocation(line: 745, column: 31, scope: !462)
!882 = !DILocation(line: 239, column: 28, scope: !182, inlinedAt: !881)
!883 = !DILocation(line: 239, column: 37, scope: !182, inlinedAt: !881)
!884 = !DILocation(line: 239, column: 36, scope: !182, inlinedAt: !881)
!885 = !DILocation(line: 239, column: 60, scope: !182, inlinedAt: !881)
!886 = !DILocation(line: 239, column: 12, scope: !182, inlinedAt: !881)
!887 = !DILocation(line: 240, column: 5, scope: !182, inlinedAt: !881)
!888 = !DILocation(line: 241, column: 5, scope: !182, inlinedAt: !881)
!889 = !DILocation(line: 242, column: 12, scope: !182, inlinedAt: !881)
!890 = !DILocation(line: 240, column: 11, scope: !182, inlinedAt: !881)
!891 = !DILocation(line: 243, column: 1, scope: !182, inlinedAt: !881)
!892 = !DILocation(line: 745, column: 23, scope: !462)
!893 = !DILocation(line: 746, column: 28, scope: !462)
!894 = !DILocation(line: 224, column: 26, scope: !154, inlinedAt: !895)
!895 = distinct !DILocation(line: 746, column: 17, scope: !462)
!896 = !DILocation(line: 224, column: 35, scope: !154, inlinedAt: !895)
!897 = !DILocation(line: 225, column: 8, scope: !154, inlinedAt: !895)
!898 = !DILocation(line: 225, column: 14, scope: !154, inlinedAt: !895)
!899 = !DILocation(line: 226, column: 14, scope: !162, inlinedAt: !895)
!900 = !DILocation(line: 226, column: 9, scope: !154, inlinedAt: !895)
!901 = !DILocation(line: 0, scope: !171, inlinedAt: !895)
!902 = !DILocation(line: 227, column: 19, scope: !161, inlinedAt: !895)
!903 = !DILocation(line: 229, column: 14, scope: !161, inlinedAt: !895)
!904 = !DILocation(line: 229, column: 23, scope: !161, inlinedAt: !895)
!905 = !DILocation(line: 229, column: 46, scope: !161, inlinedAt: !895)
!906 = !DILocation(line: 228, column: 16, scope: !161, inlinedAt: !895)
!907 = !DILocation(line: 230, column: 9, scope: !161, inlinedAt: !895)
!908 = !DILocation(line: 231, column: 5, scope: !161, inlinedAt: !895)
!909 = !DILocation(line: 232, column: 19, scope: !171, inlinedAt: !895)
!910 = !DILocation(line: 234, column: 1, scope: !154, inlinedAt: !895)
!911 = !DILocation(line: 747, column: 13, scope: !462)
!912 = !DILocation(line: 748, column: 28, scope: !464)
!913 = !DILocation(line: 748, column: 23, scope: !464)
!914 = !DILocation(line: 749, column: 13, scope: !464)
!915 = !DILocation(line: 750, column: 20, scope: !464)
!916 = !DILocation(line: 750, column: 13, scope: !464)
!917 = !DILocation(line: 751, column: 24, scope: !464)
!918 = !DILocation(line: 752, column: 18, scope: !464)
!919 = !DILocation(line: 752, column: 26, scope: !464)
!920 = !{!122, !110, i64 16}
!921 = !DILocation(line: 0, scope: !464)
!922 = !DILocation(line: 757, column: 13, scope: !446)
!923 = !DILocation(line: 759, column: 13, scope: !467)
!924 = !DILocation(line: 759, column: 28, scope: !467)
!925 = !DILocation(line: 760, column: 13, scope: !467)
!926 = !DILocation(line: 760, column: 29, scope: !467)
!927 = !DILocation(line: 761, column: 13, scope: !467)
!928 = !DILocation(line: 761, column: 27, scope: !467)
!929 = !DILocation(line: 762, column: 43, scope: !467)
!930 = !DILocation(line: 762, column: 13, scope: !467)
!931 = !DILocation(line: 762, column: 30, scope: !467)
!932 = !DILocation(line: 763, column: 20, scope: !467)
!933 = !DILocation(line: 763, column: 34, scope: !467)
!934 = !DILocation(line: 763, column: 41, scope: !467)
!935 = !DILocation(line: 763, column: 43, scope: !467)
!936 = !DILocation(line: 763, column: 13, scope: !467)
!937 = !DILocation(line: 764, column: 28, scope: !467)
!938 = !DILocation(line: 764, column: 23, scope: !467)
!939 = !DILocation(line: 765, column: 13, scope: !467)
!940 = !DILocation(line: 766, column: 18, scope: !467)
!941 = !DILocation(line: 766, column: 26, scope: !467)
!942 = !DILocation(line: 767, column: 9, scope: !467)
!943 = !DILocation(line: 769, column: 23, scope: !944)
!944 = distinct !DILexicalBlock(scope: !468, file: !3, line: 767, column: 16)
!945 = !DILocation(line: 684, column: 18, scope: !446)
!946 = !DILocation(line: 769, column: 21, scope: !944)
!947 = !DILocation(line: 773, column: 32, scope: !446)
!948 = !DILocation(line: 773, column: 19, scope: !446)
!949 = !DILocation(line: 774, column: 9, scope: !446)
!950 = !DILocation(line: 779, column: 18, scope: !446)
!951 = !DILocation(line: 779, column: 9, scope: !446)
!952 = !DILocation(line: 780, column: 13, scope: !446)
!953 = !DILocation(line: 780, column: 11, scope: !446)
!954 = !DILocation(line: 787, column: 32, scope: !471)
!955 = !DILocation(line: 787, column: 37, scope: !471)
!956 = !DILocation(line: 787, column: 29, scope: !471)
!957 = !DILocation(line: 787, column: 16, scope: !471)
!958 = !DILocation(line: 788, column: 54, scope: !471)
!959 = !DILocation(line: 788, column: 16, scope: !471)
!960 = !DILocation(line: 790, column: 18, scope: !961)
!961 = distinct !DILexicalBlock(scope: !471, file: !3, line: 790, column: 13)
!962 = !DILocation(line: 788, column: 42, scope: !471)
!963 = !DILocation(line: 788, column: 53, scope: !471)
!964 = !DILocation(line: 790, column: 13, scope: !471)
!965 = !DILocation(line: 791, column: 9, scope: !471)
!966 = !DILocation(line: 791, column: 28, scope: !471)
!967 = !DILocation(line: 791, column: 18, scope: !471)
!968 = !DILocation(line: 793, column: 36, scope: !471)
!969 = !DILocation(line: 793, column: 35, scope: !471)
!970 = !DILocation(line: 793, column: 38, scope: !471)
!971 = !DILocation(line: 793, column: 37, scope: !471)
!972 = !DILocation(line: 794, column: 13, scope: !973)
!973 = distinct !DILexicalBlock(scope: !471, file: !3, line: 794, column: 13)
!974 = !DILocation(line: 794, column: 16, scope: !973)
!975 = !DILocation(line: 794, column: 22, scope: !973)
!976 = !DILocation(line: 795, column: 9, scope: !471)
!977 = !DILocation(line: 795, column: 28, scope: !471)
!978 = !DILocation(line: 795, column: 18, scope: !471)
!979 = !DILocation(line: 797, column: 21, scope: !980)
!980 = distinct !DILexicalBlock(scope: !471, file: !3, line: 797, column: 13)
!981 = !DILocation(line: 797, column: 40, scope: !980)
!982 = !DILocation(line: 797, column: 29, scope: !980)
!983 = !DILocation(line: 798, column: 13, scope: !984)
!984 = distinct !DILexicalBlock(scope: !980, file: !3, line: 797, column: 49)
!985 = !DILocation(line: 799, column: 22, scope: !984)
!986 = !DILocation(line: 799, column: 13, scope: !984)
!987 = !DILocation(line: 800, column: 13, scope: !984)
!988 = !DILocation(line: 800, column: 19, scope: !984)
!989 = !DILocation(line: 801, column: 13, scope: !984)
!990 = !DILocation(line: 805, column: 32, scope: !471)
!991 = !DILocation(line: 805, column: 19, scope: !471)
!992 = !DILocation(line: 806, column: 9, scope: !471)
!993 = !DILocation(line: 807, column: 9, scope: !471)
!994 = !DILocation(line: 810, column: 9, scope: !471)
!995 = !DILocation(line: 810, column: 23, scope: !471)
!996 = !DILocation(line: 811, column: 39, scope: !471)
!997 = !DILocation(line: 811, column: 9, scope: !471)
!998 = !DILocation(line: 811, column: 26, scope: !471)
!999 = !DILocation(line: 812, column: 9, scope: !471)
!1000 = !DILocation(line: 812, column: 24, scope: !471)
!1001 = !DILocation(line: 813, column: 9, scope: !471)
!1002 = !DILocation(line: 813, column: 25, scope: !471)
!1003 = !DILocation(line: 814, column: 16, scope: !471)
!1004 = !DILocation(line: 814, column: 30, scope: !471)
!1005 = !DILocation(line: 814, column: 37, scope: !471)
!1006 = !DILocation(line: 814, column: 9, scope: !471)
!1007 = !DILocation(line: 224, column: 26, scope: !154, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 815, column: 9, scope: !471)
!1009 = !DILocation(line: 224, column: 35, scope: !154, inlinedAt: !1008)
!1010 = !DILocation(line: 225, column: 8, scope: !154, inlinedAt: !1008)
!1011 = !DILocation(line: 225, column: 14, scope: !154, inlinedAt: !1008)
!1012 = !DILocation(line: 226, column: 9, scope: !154, inlinedAt: !1008)
!1013 = !DILocation(line: 0, scope: !171, inlinedAt: !1008)
!1014 = !DILocation(line: 227, column: 19, scope: !161, inlinedAt: !1008)
!1015 = !DILocation(line: 229, column: 14, scope: !161, inlinedAt: !1008)
!1016 = !DILocation(line: 229, column: 23, scope: !161, inlinedAt: !1008)
!1017 = !DILocation(line: 229, column: 46, scope: !161, inlinedAt: !1008)
!1018 = !DILocation(line: 228, column: 16, scope: !161, inlinedAt: !1008)
!1019 = !DILocation(line: 230, column: 9, scope: !161, inlinedAt: !1008)
!1020 = !DILocation(line: 231, column: 5, scope: !161, inlinedAt: !1008)
!1021 = !DILocation(line: 232, column: 19, scope: !171, inlinedAt: !1008)
!1022 = !DILocation(line: 234, column: 1, scope: !154, inlinedAt: !1008)
!1023 = !DILocation(line: 816, column: 24, scope: !471)
!1024 = !DILocation(line: 816, column: 19, scope: !471)
!1025 = !DILocation(line: 817, column: 9, scope: !471)
!1026 = !DILocation(line: 818, column: 14, scope: !471)
!1027 = !DILocation(line: 818, column: 22, scope: !471)
!1028 = !DILocation(line: 821, column: 9, scope: !471)
!1029 = !DILocation(line: 821, column: 23, scope: !471)
!1030 = !DILocation(line: 822, column: 30, scope: !471)
!1031 = !DILocation(line: 822, column: 9, scope: !471)
!1032 = !DILocation(line: 822, column: 26, scope: !471)
!1033 = !DILocation(line: 823, column: 9, scope: !471)
!1034 = !DILocation(line: 823, column: 24, scope: !471)
!1035 = !DILocation(line: 824, column: 9, scope: !471)
!1036 = !DILocation(line: 824, column: 25, scope: !471)
!1037 = !DILocation(line: 825, column: 16, scope: !471)
!1038 = !DILocation(line: 825, column: 30, scope: !471)
!1039 = !DILocation(line: 825, column: 9, scope: !471)
!1040 = !DILocation(line: 826, column: 16, scope: !471)
!1041 = !DILocation(line: 826, column: 9, scope: !471)
!1042 = !DILocation(line: 827, column: 13, scope: !481)
!1043 = !DILocation(line: 827, column: 16, scope: !481)
!1044 = !DILocation(line: 827, column: 13, scope: !471)
!1045 = !DILocation(line: 237, column: 27, scope: !182, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 828, column: 25, scope: !480)
!1047 = !DILocation(line: 238, column: 12, scope: !191, inlinedAt: !1046)
!1048 = !DILocation(line: 238, column: 9, scope: !191, inlinedAt: !1046)
!1049 = !DILocation(line: 238, column: 9, scope: !182, inlinedAt: !1046)
!1050 = !DILocation(line: 239, column: 28, scope: !182, inlinedAt: !1046)
!1051 = !DILocation(line: 239, column: 37, scope: !182, inlinedAt: !1046)
!1052 = !DILocation(line: 239, column: 36, scope: !182, inlinedAt: !1046)
!1053 = !DILocation(line: 239, column: 60, scope: !182, inlinedAt: !1046)
!1054 = !DILocation(line: 239, column: 12, scope: !182, inlinedAt: !1046)
!1055 = !DILocation(line: 240, column: 5, scope: !182, inlinedAt: !1046)
!1056 = !DILocation(line: 241, column: 5, scope: !182, inlinedAt: !1046)
!1057 = !DILocation(line: 242, column: 12, scope: !182, inlinedAt: !1046)
!1058 = !DILocation(line: 240, column: 11, scope: !182, inlinedAt: !1046)
!1059 = !DILocation(line: 243, column: 1, scope: !182, inlinedAt: !1046)
!1060 = !DILocation(line: 0, scope: !182, inlinedAt: !1046)
!1061 = !DILocation(line: 828, column: 19, scope: !480)
!1062 = !DILocation(line: 829, column: 24, scope: !480)
!1063 = !DILocation(line: 224, column: 26, scope: !154, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 829, column: 13, scope: !480)
!1065 = !DILocation(line: 224, column: 35, scope: !154, inlinedAt: !1064)
!1066 = !DILocation(line: 225, column: 8, scope: !154, inlinedAt: !1064)
!1067 = !DILocation(line: 225, column: 14, scope: !154, inlinedAt: !1064)
!1068 = !DILocation(line: 226, column: 14, scope: !162, inlinedAt: !1064)
!1069 = !DILocation(line: 226, column: 9, scope: !154, inlinedAt: !1064)
!1070 = !DILocation(line: 0, scope: !171, inlinedAt: !1064)
!1071 = !DILocation(line: 227, column: 19, scope: !161, inlinedAt: !1064)
!1072 = !DILocation(line: 229, column: 14, scope: !161, inlinedAt: !1064)
!1073 = !DILocation(line: 229, column: 23, scope: !161, inlinedAt: !1064)
!1074 = !DILocation(line: 229, column: 46, scope: !161, inlinedAt: !1064)
!1075 = !DILocation(line: 228, column: 16, scope: !161, inlinedAt: !1064)
!1076 = !DILocation(line: 230, column: 9, scope: !161, inlinedAt: !1064)
!1077 = !DILocation(line: 231, column: 5, scope: !161, inlinedAt: !1064)
!1078 = !DILocation(line: 232, column: 19, scope: !171, inlinedAt: !1064)
!1079 = !DILocation(line: 234, column: 1, scope: !154, inlinedAt: !1064)
!1080 = !DILocation(line: 830, column: 9, scope: !480)
!1081 = !DILocation(line: 834, column: 14, scope: !471)
!1082 = !DILocation(line: 835, column: 9, scope: !471)
!1083 = !DILocation(line: 839, column: 14, scope: !471)
!1084 = !DILocation(line: 839, column: 20, scope: !471)
!1085 = !DILocation(line: 840, column: 18, scope: !471)
!1086 = !DILocation(line: 840, column: 9, scope: !471)
!1087 = !DILocation(line: 842, column: 5, scope: !472)
!1088 = !DILocation(line: 0, scope: !471)
!1089 = !DILocation(line: 846, column: 13, scope: !431)
!1090 = !DILocation(line: 846, column: 5, scope: !431)
!1091 = !DILocation(line: 852, column: 13, scope: !486)
!1092 = !DILocation(line: 847, column: 9, scope: !483)
!1093 = !DILocation(line: 852, column: 16, scope: !486)
!1094 = !DILocation(line: 852, column: 21, scope: !486)
!1095 = !DILocation(line: 852, column: 26, scope: !486)
!1096 = !DILocation(line: 852, column: 32, scope: !486)
!1097 = !DILocation(line: 852, column: 35, scope: !486)
!1098 = !DILocation(line: 852, column: 13, scope: !483)
!1099 = !DILocation(line: 854, column: 20, scope: !485)
!1100 = !DILocation(line: 855, column: 17, scope: !485)
!1101 = !DILocation(line: 857, column: 48, scope: !485)
!1102 = !DILocation(line: 847, column: 18, scope: !483)
!1103 = !DILocation(line: 857, column: 29, scope: !485)
!1104 = !DILocation(line: 857, column: 22, scope: !485)
!1105 = !DILocation(line: 858, column: 22, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !485, file: !3, line: 858, column: 17)
!1107 = !DILocation(line: 858, column: 17, scope: !485)
!1108 = !DILocation(line: 859, column: 15, scope: !485)
!1109 = !DILocation(line: 860, column: 20, scope: !485)
!1110 = !DILocation(line: 860, column: 13, scope: !485)
!1111 = !DILocation(line: 861, column: 26, scope: !485)
!1112 = !DILocation(line: 861, column: 24, scope: !485)
!1113 = !DILocation(line: 865, column: 13, scope: !489)
!1114 = !DILocation(line: 866, column: 43, scope: !489)
!1115 = !DILocation(line: 865, column: 23, scope: !489)
!1116 = !DILocation(line: 866, column: 29, scope: !489)
!1117 = !DILocation(line: 866, column: 22, scope: !489)
!1118 = !DILocation(line: 867, column: 22, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !489, file: !3, line: 867, column: 17)
!1120 = !DILocation(line: 867, column: 17, scope: !489)
!1121 = !DILocation(line: 868, column: 15, scope: !489)
!1122 = !DILocation(line: 869, column: 20, scope: !489)
!1123 = !DILocation(line: 869, column: 13, scope: !489)
!1124 = !DILocation(line: 870, column: 26, scope: !489)
!1125 = !DILocation(line: 872, column: 9, scope: !486)
!1126 = !DILocation(line: 875, column: 5, scope: !431)
!1127 = !DILocation(line: 516, column: 7, scope: !431)
!1128 = !DILocation(line: 873, column: 22, scope: !483)
!1129 = !DILocation(line: 874, column: 13, scope: !483)
!1130 = !DILocation(line: 874, column: 11, scope: !483)
!1131 = !DILocation(line: 218, column: 14, scope: !145, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 876, column: 21, scope: !431)
!1133 = !DILocation(line: 876, column: 39, scope: !431)
!1134 = !DILocation(line: 217, column: 37, scope: !135, inlinedAt: !1132)
!1135 = !DILocation(line: 217, column: 46, scope: !135, inlinedAt: !1132)
!1136 = !DILocation(line: 218, column: 9, scope: !135, inlinedAt: !1132)
!1137 = !DILocation(line: 219, column: 21, scope: !135, inlinedAt: !1132)
!1138 = !DILocation(line: 219, column: 12, scope: !135, inlinedAt: !1132)
!1139 = !DILocation(line: 220, column: 24, scope: !135, inlinedAt: !1132)
!1140 = !DILocation(line: 220, column: 32, scope: !135, inlinedAt: !1132)
!1141 = !DILocation(line: 220, column: 12, scope: !135, inlinedAt: !1132)
!1142 = !DILocation(line: 0, scope: !135, inlinedAt: !1132)
!1143 = !DILocation(line: 221, column: 1, scope: !135, inlinedAt: !1132)
!1144 = !DILocation(line: 876, column: 14, scope: !431)
!1145 = !DILocation(line: 877, column: 14, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !431, file: !3, line: 877, column: 9)
!1147 = !DILocation(line: 877, column: 9, scope: !431)
!1148 = !DILocation(line: 878, column: 7, scope: !431)
!1149 = !DILocation(line: 879, column: 13, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !431, file: !3, line: 879, column: 9)
!1151 = !DILocation(line: 879, column: 10, scope: !1150)
!1152 = !DILocation(line: 879, column: 9, scope: !431)
!1153 = !DILocation(line: 879, column: 25, scope: !1150)
!1154 = !DILocation(line: 879, column: 31, scope: !1150)
!1155 = !DILocation(line: 879, column: 20, scope: !1150)
!1156 = !DILocation(line: 224, column: 26, scope: !154, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 880, column: 5, scope: !431)
!1158 = !DILocation(line: 224, column: 35, scope: !154, inlinedAt: !1157)
!1159 = !DILocation(line: 225, column: 14, scope: !154, inlinedAt: !1157)
!1160 = !DILocation(line: 226, column: 9, scope: !154, inlinedAt: !1157)
!1161 = !DILocation(line: 0, scope: !171, inlinedAt: !1157)
!1162 = !DILocation(line: 227, column: 19, scope: !161, inlinedAt: !1157)
!1163 = !DILocation(line: 229, column: 14, scope: !161, inlinedAt: !1157)
!1164 = !DILocation(line: 229, column: 23, scope: !161, inlinedAt: !1157)
!1165 = !DILocation(line: 229, column: 46, scope: !161, inlinedAt: !1157)
!1166 = !DILocation(line: 228, column: 16, scope: !161, inlinedAt: !1157)
!1167 = !DILocation(line: 230, column: 9, scope: !161, inlinedAt: !1157)
!1168 = !DILocation(line: 231, column: 5, scope: !161, inlinedAt: !1157)
!1169 = !DILocation(line: 232, column: 19, scope: !171, inlinedAt: !1157)
!1170 = !DILocation(line: 234, column: 1, scope: !154, inlinedAt: !1157)
!1171 = !DILocation(line: 881, column: 12, scope: !431)
!1172 = !DILocation(line: 881, column: 5, scope: !431)
!1173 = !DILocation(line: 882, column: 5, scope: !431)
!1174 = !DILocation(line: 890, column: 9, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !431, file: !3, line: 890, column: 9)
!1176 = !DILocation(line: 890, column: 12, scope: !1175)
!1177 = !DILocation(line: 890, column: 17, scope: !1175)
!1178 = !DILocation(line: 890, column: 9, scope: !431)
!1179 = !DILocation(line: 891, column: 19, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 890, column: 23)
!1181 = !DILocation(line: 892, column: 9, scope: !1180)
!1182 = !DILocation(line: 892, column: 18, scope: !1180)
!1183 = !DILocation(line: 893, column: 14, scope: !1180)
!1184 = !DILocation(line: 893, column: 20, scope: !1180)
!1185 = !DILocation(line: 894, column: 9, scope: !1180)
!1186 = !DILocation(line: 896, column: 5, scope: !431)
!1187 = !DILocation(line: 896, column: 11, scope: !431)
!1188 = !DILocation(line: 897, column: 5, scope: !431)
!1189 = !DILocation(line: 0, scope: !984)
!1190 = !DILocation(line: 898, column: 1, scope: !431)
!1191 = !DILocation(line: 457, column: 38, scope: !503)
!1192 = !DILocation(line: 457, column: 58, scope: !503)
!1193 = !DILocation(line: 457, column: 68, scope: !503)
!1194 = !DILocation(line: 457, column: 83, scope: !503)
!1195 = !DILocation(line: 457, column: 104, scope: !503)
!1196 = !DILocation(line: 457, column: 116, scope: !503)
!1197 = !DILocation(line: 457, column: 136, scope: !503)
!1198 = !DILocation(line: 458, column: 5, scope: !503)
!1199 = !DILocation(line: 458, column: 23, scope: !503)
!1200 = !DILocation(line: 458, column: 14, scope: !503)
!1201 = !DILocation(line: 459, column: 15, scope: !503)
!1202 = !DILocation(line: 461, column: 12, scope: !503)
!1203 = !DILocation(line: 462, column: 12, scope: !503)
!1204 = !DILocation(line: 463, column: 11, scope: !503)
!1205 = !DILocation(line: 463, column: 14, scope: !503)
!1206 = !DILocation(line: 463, column: 24, scope: !503)
!1207 = !DILocation(line: 463, column: 19, scope: !503)
!1208 = !DILocation(line: 465, column: 24, scope: !531)
!1209 = !DILocation(line: 467, column: 16, scope: !554)
!1210 = !DILocation(line: 467, column: 13, scope: !554)
!1211 = !DILocation(line: 0, scope: !551)
!1212 = !DILocation(line: 467, column: 13, scope: !531)
!1213 = !DILocation(line: 468, column: 27, scope: !551)
!1214 = !DILocation(line: 468, column: 42, scope: !551)
!1215 = !DILocation(line: 468, column: 37, scope: !551)
!1216 = !DILocation(line: 469, column: 21, scope: !568)
!1217 = !DILocation(line: 469, column: 29, scope: !568)
!1218 = !DILocation(line: 469, column: 26, scope: !568)
!1219 = !DILocation(line: 469, column: 21, scope: !569)
!1220 = !DILocation(line: 468, column: 50, scope: !551)
!1221 = !DILocation(line: 476, column: 27, scope: !563)
!1222 = !DILocation(line: 477, column: 21, scope: !582)
!1223 = !DILocation(line: 477, column: 26, scope: !582)
!1224 = !DILocation(line: 477, column: 21, scope: !583)
!1225 = !DILocation(line: 476, column: 39, scope: !563)
!1226 = !DILocation(line: 468, column: 55, scope: !551)
!1227 = !DILocation(line: 468, column: 29, scope: !551)
!1228 = !DILocation(line: 471, column: 19, scope: !579)
!1229 = !DILocation(line: 471, column: 17, scope: !553)
!1230 = !DILocation(line: 476, column: 29, scope: !563)
!1231 = !DILocation(line: 479, column: 19, scope: !592)
!1232 = !DILocation(line: 0, scope: !563)
!1233 = !DILocation(line: 479, column: 17, scope: !565)
!1234 = !DILocation(line: 480, column: 14, scope: !565)
!1235 = !DILocation(line: 0, scope: !564)
!1236 = !DILocation(line: 0, scope: !565)
!1237 = !DILocation(line: 483, column: 13, scope: !531)
!1238 = !DILocalVariable(name: "ts", arg: 1, scope: !1239, file: !3, line: 100, type: !507)
!1239 = distinct !DISubprogram(name: "raxStackPush", scope: !3, file: !3, line: 100, type: !1240, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1242)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!31, !507, !6}
!1242 = !{!1238, !1243, !1244}
!1243 = !DILocalVariable(name: "ptr", arg: 2, scope: !1239, file: !3, line: 100, type: !6)
!1244 = !DILocalVariable(name: "newalloc", scope: !1245, file: !3, line: 112, type: !7)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 111, column: 16)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 102, column: 13)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 101, column: 36)
!1248 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 101, column: 9)
!1249 = !DILocation(line: 100, column: 42, scope: !1239, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 483, column: 17, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !531, file: !3, line: 483, column: 13)
!1252 = !DILocation(line: 100, column: 52, scope: !1239, inlinedAt: !1250)
!1253 = !DILocation(line: 101, column: 13, scope: !1248, inlinedAt: !1250)
!1254 = !{!1255, !110, i64 8}
!1255 = !{!"raxStack", !123, i64 0, !110, i64 8, !110, i64 16, !50, i64 24, !49, i64 280}
!1256 = !DILocation(line: 101, column: 26, scope: !1248, inlinedAt: !1250)
!1257 = !{!1255, !110, i64 16}
!1258 = !DILocation(line: 101, column: 19, scope: !1248, inlinedAt: !1250)
!1259 = !DILocation(line: 101, column: 9, scope: !1239, inlinedAt: !1250)
!1260 = !DILocation(line: 102, column: 17, scope: !1246, inlinedAt: !1250)
!1261 = !{!1255, !123, i64 0}
!1262 = !DILocation(line: 102, column: 23, scope: !1246, inlinedAt: !1250)
!1263 = !DILocation(line: 102, column: 13, scope: !1247, inlinedAt: !1250)
!1264 = !DILocation(line: 103, column: 62, scope: !1265, inlinedAt: !1250)
!1265 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 102, column: 44)
!1266 = !DILocation(line: 103, column: 25, scope: !1265, inlinedAt: !1250)
!1267 = !DILocation(line: 103, column: 23, scope: !1265, inlinedAt: !1250)
!1268 = !DILocation(line: 104, column: 27, scope: !1269, inlinedAt: !1250)
!1269 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 104, column: 17)
!1270 = !DILocation(line: 104, column: 17, scope: !1265, inlinedAt: !1250)
!1271 = !DILocation(line: 105, column: 27, scope: !1272, inlinedAt: !1250)
!1272 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 104, column: 36)
!1273 = !DILocation(line: 106, column: 25, scope: !1272, inlinedAt: !1250)
!1274 = !{!1255, !49, i64 280}
!1275 = !DILocation(line: 107, column: 17, scope: !1272, inlinedAt: !1250)
!1276 = !DILocation(line: 107, column: 23, scope: !1272, inlinedAt: !1250)
!1277 = !DILocation(line: 108, column: 17, scope: !1272, inlinedAt: !1250)
!1278 = !DILocation(line: 110, column: 65, scope: !1265, inlinedAt: !1250)
!1279 = !DILocation(line: 110, column: 60, scope: !1265, inlinedAt: !1250)
!1280 = !DILocation(line: 110, column: 13, scope: !1265, inlinedAt: !1250)
!1281 = !DILocation(line: 111, column: 9, scope: !1265, inlinedAt: !1250)
!1282 = !DILocation(line: 112, column: 43, scope: !1245, inlinedAt: !1250)
!1283 = !DILocation(line: 112, column: 79, scope: !1245, inlinedAt: !1250)
!1284 = !DILocation(line: 112, column: 31, scope: !1245, inlinedAt: !1250)
!1285 = !DILocation(line: 113, column: 26, scope: !1286, inlinedAt: !1250)
!1286 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 113, column: 17)
!1287 = !DILocation(line: 113, column: 17, scope: !1245, inlinedAt: !1250)
!1288 = !DILocation(line: 114, column: 25, scope: !1289, inlinedAt: !1250)
!1289 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 113, column: 35)
!1290 = !DILocation(line: 115, column: 17, scope: !1289, inlinedAt: !1250)
!1291 = !DILocation(line: 115, column: 23, scope: !1289, inlinedAt: !1250)
!1292 = !DILocation(line: 112, column: 20, scope: !1245, inlinedAt: !1250)
!1293 = !DILocation(line: 118, column: 23, scope: !1245, inlinedAt: !1250)
!1294 = !DILocation(line: 120, column: 22, scope: !1247, inlinedAt: !1250)
!1295 = !DILocation(line: 122, column: 19, scope: !1239, inlinedAt: !1250)
!1296 = !DILocation(line: 121, column: 5, scope: !1247, inlinedAt: !1250)
!1297 = !DILocation(line: 122, column: 9, scope: !1239, inlinedAt: !1250)
!1298 = !DILocation(line: 122, column: 5, scope: !1239, inlinedAt: !1250)
!1299 = !DILocation(line: 122, column: 26, scope: !1239, inlinedAt: !1250)
!1300 = !DILocation(line: 123, column: 14, scope: !1239, inlinedAt: !1250)
!1301 = !DILocation(line: 124, column: 5, scope: !1239, inlinedAt: !1250)
!1302 = !DILocation(line: 125, column: 1, scope: !1239, inlinedAt: !1250)
!1303 = !DILocation(line: 484, column: 30, scope: !531)
!1304 = !DILocation(line: 483, column: 17, scope: !1251)
!1305 = !DILocation(line: 484, column: 19, scope: !531)
!1306 = !DILocation(line: 485, column: 16, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !531, file: !3, line: 485, column: 13)
!1308 = !DILocation(line: 485, column: 13, scope: !1307)
!1309 = !DILocation(line: 485, column: 13, scope: !531)
!1310 = !DILocation(line: 486, column: 27, scope: !531)
!1311 = !DILocation(line: 486, column: 19, scope: !531)
!1312 = !DILocation(line: 486, column: 9, scope: !531)
!1313 = !DILocation(line: 494, column: 9, scope: !604)
!1314 = !DILocation(line: 0, scope: !503)
!1315 = !DILocation(line: 494, column: 9, scope: !503)
!1316 = !DILocation(line: 494, column: 29, scope: !604)
!1317 = !DILocation(line: 494, column: 19, scope: !604)
!1318 = !DILocation(line: 495, column: 9, scope: !607)
!1319 = !DILocation(line: 495, column: 9, scope: !503)
!1320 = !DILocation(line: 495, column: 23, scope: !607)
!1321 = !DILocation(line: 495, column: 16, scope: !607)
!1322 = !DILocation(line: 496, column: 9, scope: !609)
!1323 = !DILocation(line: 496, column: 18, scope: !609)
!1324 = !DILocation(line: 496, column: 24, scope: !609)
!1325 = !DILocation(line: 496, column: 21, scope: !609)
!1326 = !DILocation(line: 496, column: 9, scope: !503)
!1327 = !DILocation(line: 496, column: 45, scope: !609)
!1328 = !DILocation(line: 496, column: 43, scope: !609)
!1329 = !DILocation(line: 496, column: 33, scope: !609)
!1330 = !DILocation(line: 498, column: 1, scope: !503)
!1331 = !DILocation(line: 497, column: 5, scope: !503)
!1332 = distinct !DISubprogram(name: "raxRemove", scope: !3, file: !3, line: 1020, type: !1333, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1335)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!31, !91, !10, !56, !7}
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1348, !1351, !1354, !1355, !1358, !1359, !1360, !1361, !1363, !1366, !1367, !1369, !1370, !1371}
!1336 = !DILocalVariable(name: "rax", arg: 1, scope: !1332, file: !3, line: 1020, type: !91)
!1337 = !DILocalVariable(name: "s", arg: 2, scope: !1332, file: !3, line: 1020, type: !10)
!1338 = !DILocalVariable(name: "len", arg: 3, scope: !1332, file: !3, line: 1020, type: !56)
!1339 = !DILocalVariable(name: "old", arg: 4, scope: !1332, file: !3, line: 1020, type: !7)
!1340 = !DILocalVariable(name: "h", scope: !1332, file: !3, line: 1021, type: !13)
!1341 = !DILocalVariable(name: "ts", scope: !1332, file: !3, line: 1022, type: !508)
!1342 = !DILocalVariable(name: "splitpos", scope: !1332, file: !3, line: 1026, type: !31)
!1343 = !DILocalVariable(name: "i", scope: !1332, file: !3, line: 1027, type: !56)
!1344 = !DILocalVariable(name: "trycompress", scope: !1332, file: !3, line: 1042, type: !31)
!1345 = !DILocalVariable(name: "child", scope: !1346, file: !3, line: 1047, type: !13)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 1045, column: 23)
!1347 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 1045, column: 9)
!1348 = !DILocalVariable(name: "new", scope: !1349, file: !3, line: 1062, type: !13)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 1059, column: 20)
!1350 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 1059, column: 13)
!1351 = !DILocalVariable(name: "parent", scope: !1352, file: !3, line: 1064, type: !13)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 1063, column: 27)
!1353 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 1063, column: 17)
!1354 = !DILocalVariable(name: "parentlink", scope: !1352, file: !3, line: 1065, type: !12)
!1355 = !DILocalVariable(name: "parent", scope: !1356, file: !3, line: 1142, type: !13)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 1134, column: 22)
!1357 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 1134, column: 9)
!1358 = !DILocalVariable(name: "start", scope: !1356, file: !3, line: 1150, type: !13)
!1359 = !DILocalVariable(name: "comprsize", scope: !1356, file: !3, line: 1153, type: !56)
!1360 = !DILocalVariable(name: "nodes", scope: !1356, file: !3, line: 1154, type: !31)
!1361 = !DILocalVariable(name: "cp", scope: !1362, file: !3, line: 1156, type: !12)
!1362 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 1155, column: 29)
!1363 = !DILocalVariable(name: "nodesize", scope: !1364, file: !3, line: 1167, type: !56)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 1165, column: 24)
!1365 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 1165, column: 13)
!1366 = !DILocalVariable(name: "new", scope: !1364, file: !3, line: 1169, type: !13)
!1367 = !DILocalVariable(name: "cp", scope: !1368, file: !3, line: 1190, type: !12)
!1368 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 1187, column: 33)
!1369 = !DILocalVariable(name: "tofree", scope: !1368, file: !3, line: 1191, type: !13)
!1370 = !DILocalVariable(name: "cp", scope: !1364, file: !3, line: 1200, type: !12)
!1371 = !DILocalVariable(name: "parentlink", scope: !1372, file: !3, line: 1205, type: !12)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 1204, column: 25)
!1373 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 1204, column: 17)
!1374 = !DILocation(line: 1020, column: 20, scope: !1332)
!1375 = !DILocation(line: 1020, column: 40, scope: !1332)
!1376 = !DILocation(line: 1020, column: 50, scope: !1332)
!1377 = !DILocation(line: 1020, column: 62, scope: !1332)
!1378 = !DILocation(line: 1021, column: 5, scope: !1332)
!1379 = !DILocation(line: 1022, column: 5, scope: !1332)
!1380 = !DILocation(line: 1022, column: 14, scope: !1332)
!1381 = !DILocalVariable(name: "ts", arg: 1, scope: !1382, file: !3, line: 92, type: !507)
!1382 = distinct !DISubprogram(name: "raxStackInit", scope: !3, file: !3, line: 92, type: !1383, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1385)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{null, !507}
!1385 = !{!1381}
!1386 = !DILocation(line: 92, column: 43, scope: !1382, inlinedAt: !1387)
!1387 = distinct !DILocation(line: 1025, column: 5, scope: !1332)
!1388 = !DILocation(line: 93, column: 17, scope: !1382, inlinedAt: !1387)
!1389 = !DILocation(line: 93, column: 9, scope: !1382, inlinedAt: !1387)
!1390 = !DILocation(line: 93, column: 15, scope: !1382, inlinedAt: !1387)
!1391 = !DILocation(line: 94, column: 9, scope: !1382, inlinedAt: !1387)
!1392 = !DILocation(line: 94, column: 15, scope: !1382, inlinedAt: !1387)
!1393 = !DILocation(line: 96, column: 9, scope: !1382, inlinedAt: !1387)
!1394 = !DILocation(line: 96, column: 13, scope: !1382, inlinedAt: !1387)
!1395 = !DILocation(line: 97, column: 1, scope: !1382, inlinedAt: !1387)
!1396 = !DILocation(line: 1026, column: 5, scope: !1332)
!1397 = !DILocation(line: 1026, column: 9, scope: !1332)
!1398 = !DILocation(line: 1021, column: 14, scope: !1332)
!1399 = !DILocation(line: 1027, column: 16, scope: !1332)
!1400 = !DILocation(line: 1027, column: 12, scope: !1332)
!1401 = !DILocation(line: 1028, column: 11, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 1028, column: 9)
!1403 = !DILocation(line: 1028, column: 18, scope: !1402)
!1404 = !DILocation(line: 1028, column: 22, scope: !1402)
!1405 = !DILocation(line: 1028, column: 25, scope: !1402)
!1406 = !DILocation(line: 1028, column: 36, scope: !1402)
!1407 = !DILocation(line: 1028, column: 45, scope: !1402)
!1408 = !DILocation(line: 1028, column: 33, scope: !1402)
!1409 = !DILocation(line: 1028, column: 58, scope: !1402)
!1410 = !DILocation(line: 1028, column: 55, scope: !1402)
!1411 = !DILocalVariable(name: "ts", arg: 1, scope: !1412, file: !3, line: 143, type: !507)
!1412 = distinct !DISubprogram(name: "raxStackFree", scope: !3, file: !3, line: 143, type: !1383, isLocal: true, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1413)
!1413 = !{!1411}
!1414 = !DILocation(line: 143, column: 43, scope: !1412, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 1029, column: 9, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 1028, column: 65)
!1417 = !DILocation(line: 144, column: 13, scope: !1418, inlinedAt: !1415)
!1418 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 144, column: 9)
!1419 = !DILocation(line: 144, column: 19, scope: !1418, inlinedAt: !1415)
!1420 = !DILocation(line: 144, column: 9, scope: !1412, inlinedAt: !1415)
!1421 = !DILocation(line: 144, column: 49, scope: !1418, inlinedAt: !1415)
!1422 = !DILocation(line: 144, column: 40, scope: !1418, inlinedAt: !1415)
!1423 = !DILocation(line: 145, column: 1, scope: !1412, inlinedAt: !1415)
!1424 = !DILocation(line: 1030, column: 9, scope: !1416)
!1425 = !DILocation(line: 1032, column: 9, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 1032, column: 9)
!1427 = !DILocation(line: 1032, column: 9, scope: !1332)
!1428 = !DILocation(line: 1033, column: 5, scope: !1332)
!1429 = !DILocation(line: 237, column: 27, scope: !182, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 1032, column: 21, scope: !1426)
!1431 = !DILocation(line: 238, column: 12, scope: !191, inlinedAt: !1430)
!1432 = !DILocation(line: 238, column: 9, scope: !191, inlinedAt: !1430)
!1433 = !DILocation(line: 238, column: 9, scope: !182, inlinedAt: !1430)
!1434 = !DILocation(line: 239, column: 28, scope: !182, inlinedAt: !1430)
!1435 = !DILocation(line: 239, column: 37, scope: !182, inlinedAt: !1430)
!1436 = !DILocation(line: 239, column: 36, scope: !182, inlinedAt: !1430)
!1437 = !DILocation(line: 239, column: 60, scope: !182, inlinedAt: !1430)
!1438 = !DILocation(line: 239, column: 12, scope: !182, inlinedAt: !1430)
!1439 = !DILocation(line: 240, column: 5, scope: !182, inlinedAt: !1430)
!1440 = !DILocation(line: 241, column: 5, scope: !182, inlinedAt: !1430)
!1441 = !DILocation(line: 242, column: 12, scope: !182, inlinedAt: !1430)
!1442 = !DILocation(line: 240, column: 11, scope: !182, inlinedAt: !1430)
!1443 = !DILocation(line: 243, column: 1, scope: !182, inlinedAt: !1430)
!1444 = !DILocation(line: 0, scope: !182, inlinedAt: !1430)
!1445 = !DILocation(line: 1032, column: 19, scope: !1426)
!1446 = !DILocation(line: 1033, column: 14, scope: !1332)
!1447 = !DILocation(line: 1032, column: 14, scope: !1426)
!1448 = !DILocation(line: 1034, column: 10, scope: !1332)
!1449 = !DILocation(line: 1034, column: 16, scope: !1332)
!1450 = !DILocation(line: 1042, column: 9, scope: !1332)
!1451 = !DILocation(line: 1045, column: 9, scope: !1347)
!1452 = !DILocation(line: 1045, column: 12, scope: !1347)
!1453 = !DILocation(line: 1045, column: 9, scope: !1332)
!1454 = !DILocation(line: 1047, column: 18, scope: !1346)
!1455 = !DILocation(line: 1048, column: 25, scope: !1346)
!1456 = !DILocation(line: 1048, column: 17, scope: !1346)
!1457 = !DILocation(line: 1048, column: 9, scope: !1346)
!1458 = distinct !{!1458, !1457, !1459}
!1459 = !DILocation(line: 1058, column: 9, scope: !1346)
!1460 = !DILocation(line: 1052, column: 22, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 1048, column: 31)
!1462 = !DILocation(line: 1052, column: 13, scope: !1461)
!1463 = !DILocation(line: 1053, column: 26, scope: !1461)
!1464 = !DILocalVariable(name: "ts", arg: 1, scope: !1465, file: !3, line: 129, type: !507)
!1465 = distinct !DISubprogram(name: "raxStackPop", scope: !3, file: !3, line: 129, type: !1466, isLocal: true, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1468)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!6, !507}
!1468 = !{!1464}
!1469 = !DILocation(line: 129, column: 43, scope: !1465, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 1054, column: 17, scope: !1461)
!1471 = !DILocation(line: 130, column: 13, scope: !1472, inlinedAt: !1470)
!1472 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 130, column: 9)
!1473 = !DILocation(line: 130, column: 19, scope: !1472, inlinedAt: !1470)
!1474 = !DILocation(line: 130, column: 9, scope: !1465, inlinedAt: !1470)
!1475 = !DILocation(line: 131, column: 14, scope: !1465, inlinedAt: !1470)
!1476 = !DILocation(line: 132, column: 16, scope: !1465, inlinedAt: !1470)
!1477 = !DILocation(line: 132, column: 12, scope: !1465, inlinedAt: !1470)
!1478 = !DILocation(line: 132, column: 5, scope: !1465, inlinedAt: !1470)
!1479 = !DILocation(line: 0, scope: !1465, inlinedAt: !1470)
!1480 = !DILocation(line: 133, column: 1, scope: !1465, inlinedAt: !1470)
!1481 = !DILocation(line: 1054, column: 15, scope: !1461)
!1482 = !DILocation(line: 1057, column: 20, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 1057, column: 17)
!1484 = !DILocation(line: 1057, column: 17, scope: !1483)
!1485 = !DILocation(line: 1057, column: 26, scope: !1483)
!1486 = !DILocation(line: 1057, column: 34, scope: !1483)
!1487 = !DILocation(line: 1057, column: 31, scope: !1483)
!1488 = !DILocation(line: 1057, column: 53, scope: !1483)
!1489 = !DILocation(line: 1057, column: 42, scope: !1483)
!1490 = !DILocation(line: 1059, column: 13, scope: !1350)
!1491 = !DILocation(line: 1059, column: 13, scope: !1346)
!1492 = !DILocation(line: 1062, column: 13, scope: !1349)
!1493 = !DILocation(line: 1062, column: 28, scope: !1349)
!1494 = !DILocation(line: 1062, column: 22, scope: !1349)
!1495 = !DILocation(line: 1063, column: 24, scope: !1353)
!1496 = !DILocation(line: 1063, column: 21, scope: !1353)
!1497 = !DILocation(line: 1063, column: 17, scope: !1349)
!1498 = !DILocalVariable(name: "ts", arg: 1, scope: !1499, file: !3, line: 137, type: !507)
!1499 = distinct !DISubprogram(name: "raxStackPeek", scope: !3, file: !3, line: 137, type: !1466, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1500)
!1500 = !{!1498}
!1501 = !DILocation(line: 137, column: 44, scope: !1499, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 1064, column: 35, scope: !1352)
!1503 = !DILocation(line: 138, column: 13, scope: !1504, inlinedAt: !1502)
!1504 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 138, column: 9)
!1505 = !DILocation(line: 138, column: 19, scope: !1504, inlinedAt: !1502)
!1506 = !DILocation(line: 138, column: 9, scope: !1499, inlinedAt: !1502)
!1507 = !DILocation(line: 139, column: 16, scope: !1499, inlinedAt: !1502)
!1508 = !DILocation(line: 139, column: 31, scope: !1499, inlinedAt: !1502)
!1509 = !DILocation(line: 139, column: 12, scope: !1499, inlinedAt: !1502)
!1510 = !DILocation(line: 140, column: 1, scope: !1499, inlinedAt: !1502)
!1511 = !DILocation(line: 1066, column: 28, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1066, column: 21)
!1513 = !DILocation(line: 1066, column: 21, scope: !1352)
!1514 = !DILocation(line: 1064, column: 35, scope: !1352)
!1515 = !DILocation(line: 1064, column: 26, scope: !1352)
!1516 = !DILocalVariable(name: "parent", arg: 1, scope: !1517, file: !3, line: 932, type: !13)
!1517 = distinct !DISubprogram(name: "raxFindParentLink", scope: !3, file: !3, line: 932, type: !1518, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1520)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!12, !13, !13}
!1520 = !{!1516, !1521, !1522, !1523}
!1521 = !DILocalVariable(name: "child", arg: 2, scope: !1517, file: !3, line: 932, type: !13)
!1522 = !DILocalVariable(name: "cp", scope: !1517, file: !3, line: 933, type: !12)
!1523 = !DILocalVariable(name: "c", scope: !1517, file: !3, line: 934, type: !13)
!1524 = !DILocation(line: 932, column: 38, scope: !1517, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 1069, column: 34, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 1068, column: 24)
!1527 = !DILocation(line: 932, column: 55, scope: !1517, inlinedAt: !1525)
!1528 = !DILocation(line: 933, column: 20, scope: !1517, inlinedAt: !1525)
!1529 = !DILocation(line: 933, column: 15, scope: !1517, inlinedAt: !1525)
!1530 = !DILocation(line: 934, column: 5, scope: !1517, inlinedAt: !1525)
!1531 = !DILocation(line: 935, column: 5, scope: !1517, inlinedAt: !1525)
!1532 = !DILocation(line: 0, scope: !1533, inlinedAt: !1525)
!1533 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 935, column: 14)
!1534 = !DILocation(line: 936, column: 19, scope: !1533, inlinedAt: !1525)
!1535 = !DILocation(line: 936, column: 9, scope: !1533, inlinedAt: !1525)
!1536 = !DILocation(line: 937, column: 13, scope: !1537, inlinedAt: !1525)
!1537 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 937, column: 13)
!1538 = !DILocation(line: 934, column: 14, scope: !1517, inlinedAt: !1525)
!1539 = !DILocation(line: 937, column: 15, scope: !1537, inlinedAt: !1525)
!1540 = !DILocation(line: 938, column: 11, scope: !1533, inlinedAt: !1525)
!1541 = !DILocation(line: 937, column: 13, scope: !1533, inlinedAt: !1525)
!1542 = distinct !{!1542, !1543, !1544}
!1543 = !DILocation(line: 935, column: 5, scope: !1517)
!1544 = !DILocation(line: 939, column: 5, scope: !1517)
!1545 = !DILocation(line: 941, column: 1, scope: !1517, inlinedAt: !1525)
!1546 = !DILocation(line: 1065, column: 27, scope: !1352)
!1547 = !DILocation(line: 0, scope: !1526)
!1548 = !DILocation(line: 1071, column: 24, scope: !1352)
!1549 = !DILocation(line: 1071, column: 17, scope: !1352)
!1550 = !DILocation(line: 1076, column: 17, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 1076, column: 17)
!1552 = !DILocation(line: 1072, column: 13, scope: !1352)
!1553 = !DILocation(line: 1076, column: 22, scope: !1551)
!1554 = !DILocation(line: 1076, column: 32, scope: !1551)
!1555 = !DILocation(line: 1080, column: 9, scope: !1350)
!1556 = !DILocation(line: 1089, column: 21, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 1089, column: 9)
!1558 = !DILocation(line: 1078, column: 19, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 1076, column: 52)
!1560 = !DILocation(line: 1089, column: 27, scope: !1557)
!1561 = !DILocation(line: 1089, column: 24, scope: !1557)
!1562 = !DILocation(line: 129, column: 43, scope: !1465, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 1144, column: 22, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 1143, column: 18)
!1565 = !DILocation(line: 130, column: 13, scope: !1472, inlinedAt: !1563)
!1566 = !DILocation(line: 130, column: 19, scope: !1472, inlinedAt: !1563)
!1567 = !DILocation(line: 130, column: 9, scope: !1465, inlinedAt: !1563)
!1568 = !DILocation(line: 132, column: 16, scope: !1465, inlinedAt: !1563)
!1569 = !DILocation(line: 131, column: 14, scope: !1465, inlinedAt: !1563)
!1570 = !DILocation(line: 132, column: 12, scope: !1465, inlinedAt: !1563)
!1571 = !DILocation(line: 133, column: 1, scope: !1465, inlinedAt: !1563)
!1572 = !DILocation(line: 1145, column: 18, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 1145, column: 17)
!1574 = !DILocation(line: 1145, column: 25, scope: !1573)
!1575 = !DILocation(line: 1145, column: 36, scope: !1573)
!1576 = distinct !{!1576, !1577, !1578}
!1577 = !DILocation(line: 1143, column: 9, scope: !1356)
!1578 = !DILocation(line: 1149, column: 9, scope: !1356)
!1579 = !DILocation(line: 1145, column: 28, scope: !1573)
!1580 = !DILocation(line: 1145, column: 42, scope: !1573)
!1581 = !DILocation(line: 1146, column: 27, scope: !1573)
!1582 = !DILocation(line: 1146, column: 19, scope: !1573)
!1583 = !DILocation(line: 1146, column: 51, scope: !1573)
!1584 = !DILocation(line: 1146, column: 35, scope: !1573)
!1585 = !DILocation(line: 1147, column: 15, scope: !1564)
!1586 = !DILocation(line: 1144, column: 22, scope: !1564)
!1587 = !DILocation(line: 1150, column: 26, scope: !1356)
!1588 = !DILocation(line: 1150, column: 18, scope: !1356)
!1589 = !DILocation(line: 1153, column: 31, scope: !1356)
!1590 = !DILocation(line: 1153, column: 28, scope: !1356)
!1591 = !DILocation(line: 1153, column: 16, scope: !1356)
!1592 = !DILocation(line: 1154, column: 13, scope: !1356)
!1593 = !DILocation(line: 1155, column: 9, scope: !1356)
!1594 = !DILocation(line: 1155, column: 15, scope: !1356)
!1595 = !DILocation(line: 1155, column: 18, scope: !1356)
!1596 = !DILocation(line: 1155, column: 23, scope: !1356)
!1597 = !DILocation(line: 1156, column: 28, scope: !1362)
!1598 = !DILocation(line: 1156, column: 23, scope: !1362)
!1599 = !DILocation(line: 1157, column: 13, scope: !1362)
!1600 = !DILocation(line: 1158, column: 17, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 1158, column: 17)
!1602 = !DILocation(line: 1158, column: 20, scope: !1601)
!1603 = !DILocation(line: 1158, column: 26, scope: !1601)
!1604 = !DILocation(line: 1158, column: 34, scope: !1601)
!1605 = !DILocation(line: 1158, column: 31, scope: !1601)
!1606 = !DILocation(line: 1158, column: 53, scope: !1601)
!1607 = !DILocation(line: 1158, column: 42, scope: !1601)
!1608 = !DILocation(line: 1161, column: 32, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 1161, column: 17)
!1610 = !DILocation(line: 1161, column: 29, scope: !1609)
!1611 = !DILocation(line: 1161, column: 27, scope: !1609)
!1612 = !DILocation(line: 1161, column: 37, scope: !1609)
!1613 = !DILocation(line: 1161, column: 17, scope: !1362)
!1614 = distinct !{!1614, !1593, !1615}
!1615 = !DILocation(line: 1164, column: 9, scope: !1356)
!1616 = !DILocation(line: 1165, column: 19, scope: !1365)
!1617 = !DILocation(line: 1165, column: 13, scope: !1356)
!1618 = !DILocation(line: 1168, column: 43, scope: !1364)
!1619 = !DILocation(line: 1168, column: 42, scope: !1364)
!1620 = !DILocation(line: 1168, column: 64, scope: !1364)
!1621 = !DILocation(line: 1167, column: 20, scope: !1364)
!1622 = !DILocation(line: 1169, column: 13, scope: !1364)
!1623 = !DILocation(line: 1169, column: 28, scope: !1364)
!1624 = !DILocation(line: 1169, column: 22, scope: !1364)
!1625 = !DILocation(line: 1172, column: 21, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 1172, column: 17)
!1627 = !DILocation(line: 1172, column: 17, scope: !1364)
!1628 = !DILocation(line: 143, column: 43, scope: !1412, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 1173, column: 17, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 1172, column: 30)
!1631 = !DILocation(line: 144, column: 13, scope: !1418, inlinedAt: !1629)
!1632 = !DILocation(line: 144, column: 19, scope: !1418, inlinedAt: !1629)
!1633 = !DILocation(line: 144, column: 9, scope: !1412, inlinedAt: !1629)
!1634 = !DILocation(line: 144, column: 49, scope: !1418, inlinedAt: !1629)
!1635 = !DILocation(line: 144, column: 40, scope: !1418, inlinedAt: !1629)
!1636 = !DILocation(line: 1176, column: 18, scope: !1364)
!1637 = !DILocation(line: 1176, column: 24, scope: !1364)
!1638 = !DILocation(line: 1177, column: 13, scope: !1364)
!1639 = !DILocation(line: 1177, column: 25, scope: !1364)
!1640 = !DILocation(line: 1178, column: 13, scope: !1364)
!1641 = !DILocation(line: 1178, column: 26, scope: !1364)
!1642 = !DILocation(line: 1179, column: 25, scope: !1364)
!1643 = !DILocation(line: 1179, column: 13, scope: !1364)
!1644 = !DILocation(line: 1179, column: 23, scope: !1364)
!1645 = !DILocation(line: 1180, column: 18, scope: !1364)
!1646 = !DILocation(line: 1180, column: 26, scope: !1364)
!1647 = !DILocation(line: 1186, column: 15, scope: !1364)
!1648 = !DILocation(line: 1187, column: 13, scope: !1364)
!1649 = !DILocation(line: 1187, column: 19, scope: !1364)
!1650 = !DILocation(line: 0, scope: !1368)
!1651 = !DILocation(line: 1187, column: 22, scope: !1364)
!1652 = !DILocation(line: 1187, column: 27, scope: !1364)
!1653 = !DILocation(line: 1188, column: 24, scope: !1368)
!1654 = !DILocation(line: 1188, column: 33, scope: !1368)
!1655 = !DILocation(line: 1188, column: 44, scope: !1368)
!1656 = !DILocation(line: 1188, column: 52, scope: !1368)
!1657 = !DILocation(line: 1188, column: 17, scope: !1368)
!1658 = !DILocation(line: 1189, column: 30, scope: !1368)
!1659 = !DILocation(line: 1189, column: 33, scope: !1368)
!1660 = !DILocation(line: 1190, column: 32, scope: !1368)
!1661 = !DILocation(line: 1190, column: 27, scope: !1368)
!1662 = !DILocation(line: 1191, column: 35, scope: !1368)
!1663 = !DILocation(line: 1191, column: 26, scope: !1368)
!1664 = !DILocation(line: 1192, column: 17, scope: !1368)
!1665 = !DILocation(line: 1193, column: 17, scope: !1368)
!1666 = !DILocation(line: 1193, column: 48, scope: !1368)
!1667 = !DILocation(line: 1194, column: 21, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 1194, column: 21)
!1669 = !DILocation(line: 1194, column: 24, scope: !1668)
!1670 = !DILocation(line: 1194, column: 30, scope: !1668)
!1671 = !DILocation(line: 1189, column: 27, scope: !1368)
!1672 = !DILocation(line: 1194, column: 38, scope: !1668)
!1673 = !DILocation(line: 1194, column: 35, scope: !1668)
!1674 = !DILocation(line: 1194, column: 57, scope: !1668)
!1675 = !DILocation(line: 1194, column: 46, scope: !1668)
!1676 = !DILocation(line: 1200, column: 28, scope: !1364)
!1677 = !DILocation(line: 1200, column: 23, scope: !1364)
!1678 = !DILocation(line: 1201, column: 13, scope: !1364)
!1679 = !DILocation(line: 1204, column: 17, scope: !1364)
!1680 = !DILocation(line: 932, column: 55, scope: !1517, inlinedAt: !1681)
!1681 = distinct !DILocation(line: 1205, column: 40, scope: !1372)
!1682 = !DILocation(line: 933, column: 20, scope: !1517, inlinedAt: !1681)
!1683 = !DILocation(line: 933, column: 15, scope: !1517, inlinedAt: !1681)
!1684 = !DILocation(line: 934, column: 5, scope: !1517, inlinedAt: !1681)
!1685 = !DILocation(line: 935, column: 5, scope: !1517, inlinedAt: !1681)
!1686 = !DILocation(line: 0, scope: !1533, inlinedAt: !1681)
!1687 = !DILocation(line: 936, column: 19, scope: !1533, inlinedAt: !1681)
!1688 = !DILocation(line: 936, column: 9, scope: !1533, inlinedAt: !1681)
!1689 = !DILocation(line: 937, column: 13, scope: !1537, inlinedAt: !1681)
!1690 = !DILocation(line: 934, column: 14, scope: !1517, inlinedAt: !1681)
!1691 = !DILocation(line: 937, column: 15, scope: !1537, inlinedAt: !1681)
!1692 = !DILocation(line: 938, column: 11, scope: !1533, inlinedAt: !1681)
!1693 = !DILocation(line: 937, column: 13, scope: !1533, inlinedAt: !1681)
!1694 = !DILocation(line: 941, column: 1, scope: !1517, inlinedAt: !1681)
!1695 = !DILocation(line: 940, column: 5, scope: !1517, inlinedAt: !1681)
!1696 = !DILocation(line: 1205, column: 27, scope: !1372)
!1697 = !DILocation(line: 1206, column: 17, scope: !1372)
!1698 = !DILocation(line: 1207, column: 13, scope: !1372)
!1699 = !DILocation(line: 1208, column: 27, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 1207, column: 20)
!1701 = !DILocation(line: 1213, column: 9, scope: !1365)
!1702 = !DILocation(line: 145, column: 1, scope: !1412, inlinedAt: !1629)
!1703 = !DILocation(line: 143, column: 43, scope: !1412, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 1215, column: 5, scope: !1332)
!1705 = !DILocation(line: 144, column: 13, scope: !1418, inlinedAt: !1704)
!1706 = !DILocation(line: 144, column: 19, scope: !1418, inlinedAt: !1704)
!1707 = !DILocation(line: 144, column: 9, scope: !1412, inlinedAt: !1704)
!1708 = !DILocation(line: 144, column: 49, scope: !1418, inlinedAt: !1704)
!1709 = !DILocation(line: 144, column: 40, scope: !1418, inlinedAt: !1704)
!1710 = !DILocation(line: 145, column: 1, scope: !1412, inlinedAt: !1704)
!1711 = !DILocation(line: 1216, column: 5, scope: !1332)
!1712 = !DILocation(line: 0, scope: !1332)
!1713 = !DILocation(line: 1217, column: 1, scope: !1332)
!1714 = distinct !DISubprogram(name: "raxInsert", scope: !3, file: !3, line: 902, type: !1715, isLocal: false, isDefinition: true, scopeLine: 902, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1717)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!31, !91, !10, !56, !6, !7}
!1717 = !{!1718, !1719, !1720, !1721, !1722}
!1718 = !DILocalVariable(name: "rax", arg: 1, scope: !1714, file: !3, line: 902, type: !91)
!1719 = !DILocalVariable(name: "s", arg: 2, scope: !1714, file: !3, line: 902, type: !10)
!1720 = !DILocalVariable(name: "len", arg: 3, scope: !1714, file: !3, line: 902, type: !56)
!1721 = !DILocalVariable(name: "data", arg: 4, scope: !1714, file: !3, line: 902, type: !6)
!1722 = !DILocalVariable(name: "old", arg: 5, scope: !1714, file: !3, line: 902, type: !7)
!1723 = !DILocation(line: 902, column: 20, scope: !1714)
!1724 = !DILocation(line: 902, column: 40, scope: !1714)
!1725 = !DILocation(line: 902, column: 50, scope: !1714)
!1726 = !DILocation(line: 902, column: 61, scope: !1714)
!1727 = !DILocation(line: 902, column: 74, scope: !1714)
!1728 = !DILocation(line: 903, column: 12, scope: !1714)
!1729 = !DILocation(line: 903, column: 5, scope: !1714)
!1730 = distinct !DISubprogram(name: "raxTryInsert", scope: !3, file: !3, line: 909, type: !1715, isLocal: false, isDefinition: true, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1731)
!1731 = !{!1732, !1733, !1734, !1735, !1736}
!1732 = !DILocalVariable(name: "rax", arg: 1, scope: !1730, file: !3, line: 909, type: !91)
!1733 = !DILocalVariable(name: "s", arg: 2, scope: !1730, file: !3, line: 909, type: !10)
!1734 = !DILocalVariable(name: "len", arg: 3, scope: !1730, file: !3, line: 909, type: !56)
!1735 = !DILocalVariable(name: "data", arg: 4, scope: !1730, file: !3, line: 909, type: !6)
!1736 = !DILocalVariable(name: "old", arg: 5, scope: !1730, file: !3, line: 909, type: !7)
!1737 = !DILocation(line: 909, column: 23, scope: !1730)
!1738 = !DILocation(line: 909, column: 43, scope: !1730)
!1739 = !DILocation(line: 909, column: 53, scope: !1730)
!1740 = !DILocation(line: 909, column: 64, scope: !1730)
!1741 = !DILocation(line: 909, column: 77, scope: !1730)
!1742 = !DILocation(line: 910, column: 12, scope: !1730)
!1743 = !DILocation(line: 910, column: 5, scope: !1730)
!1744 = distinct !DISubprogram(name: "raxFind", scope: !3, file: !3, line: 916, type: !1745, isLocal: false, isDefinition: true, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1747)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!6, !91, !10, !56}
!1747 = !{!1748, !1749, !1750, !1751, !1752, !1753}
!1748 = !DILocalVariable(name: "rax", arg: 1, scope: !1744, file: !3, line: 916, type: !91)
!1749 = !DILocalVariable(name: "s", arg: 2, scope: !1744, file: !3, line: 916, type: !10)
!1750 = !DILocalVariable(name: "len", arg: 3, scope: !1744, file: !3, line: 916, type: !56)
!1751 = !DILocalVariable(name: "h", scope: !1744, file: !3, line: 917, type: !13)
!1752 = !DILocalVariable(name: "splitpos", scope: !1744, file: !3, line: 920, type: !31)
!1753 = !DILocalVariable(name: "i", scope: !1744, file: !3, line: 921, type: !56)
!1754 = !DILocation(line: 916, column: 20, scope: !1744)
!1755 = !DILocation(line: 916, column: 40, scope: !1744)
!1756 = !DILocation(line: 916, column: 50, scope: !1744)
!1757 = !DILocation(line: 920, column: 9, scope: !1744)
!1758 = !DILocation(line: 917, column: 14, scope: !1744)
!1759 = !DILocation(line: 457, column: 38, scope: !503, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 921, column: 16, scope: !1744)
!1761 = !DILocation(line: 457, column: 58, scope: !503, inlinedAt: !1760)
!1762 = !DILocation(line: 457, column: 68, scope: !503, inlinedAt: !1760)
!1763 = !DILocation(line: 457, column: 83, scope: !503, inlinedAt: !1760)
!1764 = !DILocation(line: 457, column: 104, scope: !503, inlinedAt: !1760)
!1765 = !DILocation(line: 457, column: 136, scope: !503, inlinedAt: !1760)
!1766 = !DILocation(line: 458, column: 5, scope: !503, inlinedAt: !1760)
!1767 = !DILocation(line: 458, column: 23, scope: !503, inlinedAt: !1760)
!1768 = !DILocation(line: 458, column: 14, scope: !503, inlinedAt: !1760)
!1769 = !DILocation(line: 459, column: 15, scope: !503, inlinedAt: !1760)
!1770 = !DILocation(line: 461, column: 12, scope: !503, inlinedAt: !1760)
!1771 = !DILocation(line: 462, column: 12, scope: !503, inlinedAt: !1760)
!1772 = !DILocation(line: 463, column: 11, scope: !503, inlinedAt: !1760)
!1773 = !DILocation(line: 463, column: 14, scope: !503, inlinedAt: !1760)
!1774 = !DILocation(line: 463, column: 24, scope: !503, inlinedAt: !1760)
!1775 = !DILocation(line: 463, column: 19, scope: !503, inlinedAt: !1760)
!1776 = !DILocation(line: 0, scope: !1744)
!1777 = !DILocation(line: 0, scope: !551, inlinedAt: !1760)
!1778 = !DILocation(line: 465, column: 24, scope: !531, inlinedAt: !1760)
!1779 = !DILocation(line: 467, column: 16, scope: !554, inlinedAt: !1760)
!1780 = !DILocation(line: 467, column: 13, scope: !554, inlinedAt: !1760)
!1781 = !DILocation(line: 467, column: 13, scope: !531, inlinedAt: !1760)
!1782 = !DILocation(line: 468, column: 27, scope: !551, inlinedAt: !1760)
!1783 = !DILocation(line: 468, column: 42, scope: !551, inlinedAt: !1760)
!1784 = !DILocation(line: 468, column: 37, scope: !551, inlinedAt: !1760)
!1785 = !DILocation(line: 476, column: 27, scope: !563, inlinedAt: !1760)
!1786 = !DILocation(line: 476, column: 13, scope: !564, inlinedAt: !1760)
!1787 = !DILocation(line: 469, column: 21, scope: !568, inlinedAt: !1760)
!1788 = !DILocation(line: 469, column: 29, scope: !568, inlinedAt: !1760)
!1789 = !DILocation(line: 469, column: 26, scope: !568, inlinedAt: !1760)
!1790 = !DILocation(line: 469, column: 21, scope: !569, inlinedAt: !1760)
!1791 = !DILocation(line: 468, column: 50, scope: !551, inlinedAt: !1760)
!1792 = !DILocation(line: 468, column: 55, scope: !551, inlinedAt: !1760)
!1793 = !DILocation(line: 471, column: 19, scope: !579, inlinedAt: !1760)
!1794 = !DILocation(line: 471, column: 17, scope: !553, inlinedAt: !1760)
!1795 = !DILocation(line: 477, column: 21, scope: !582, inlinedAt: !1760)
!1796 = !DILocation(line: 477, column: 26, scope: !582, inlinedAt: !1760)
!1797 = !DILocation(line: 477, column: 21, scope: !583, inlinedAt: !1760)
!1798 = !DILocation(line: 476, column: 39, scope: !563, inlinedAt: !1760)
!1799 = !DILocation(line: 0, scope: !563, inlinedAt: !1760)
!1800 = !DILocation(line: 479, column: 19, scope: !592, inlinedAt: !1760)
!1801 = !DILocation(line: 479, column: 17, scope: !565, inlinedAt: !1760)
!1802 = !DILocation(line: 480, column: 14, scope: !565, inlinedAt: !1760)
!1803 = !DILocation(line: 0, scope: !564, inlinedAt: !1760)
!1804 = !DILocation(line: 0, scope: !565, inlinedAt: !1760)
!1805 = !DILocation(line: 484, column: 30, scope: !531, inlinedAt: !1760)
!1806 = !DILocation(line: 484, column: 19, scope: !531, inlinedAt: !1760)
!1807 = !DILocation(line: 485, column: 13, scope: !531, inlinedAt: !1760)
!1808 = !DILocation(line: 486, column: 27, scope: !531, inlinedAt: !1760)
!1809 = !DILocation(line: 486, column: 19, scope: !531, inlinedAt: !1760)
!1810 = !DILocation(line: 486, column: 9, scope: !531, inlinedAt: !1760)
!1811 = !DILocation(line: 496, column: 24, scope: !609, inlinedAt: !1760)
!1812 = !DILocation(line: 0, scope: !503, inlinedAt: !1760)
!1813 = !DILocation(line: 498, column: 1, scope: !503, inlinedAt: !1760)
!1814 = !DILocation(line: 497, column: 5, scope: !503, inlinedAt: !1760)
!1815 = !DILocation(line: 921, column: 12, scope: !1744)
!1816 = !DILocation(line: 922, column: 11, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1744, file: !3, line: 922, column: 9)
!1818 = !DILocation(line: 922, column: 18, scope: !1817)
!1819 = !DILocation(line: 496, column: 45, scope: !609, inlinedAt: !1760)
!1820 = !DILocation(line: 922, column: 25, scope: !1817)
!1821 = !DILocation(line: 922, column: 45, scope: !1817)
!1822 = !DILocation(line: 922, column: 33, scope: !1817)
!1823 = !DILocation(line: 922, column: 58, scope: !1817)
!1824 = !DILocation(line: 922, column: 55, scope: !1817)
!1825 = !DILocation(line: 923, column: 16, scope: !1817)
!1826 = !DILocation(line: 923, column: 9, scope: !1817)
!1827 = !DILocation(line: 237, column: 27, scope: !182, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 924, column: 12, scope: !1744)
!1829 = !DILocation(line: 238, column: 12, scope: !191, inlinedAt: !1828)
!1830 = !DILocation(line: 238, column: 9, scope: !191, inlinedAt: !1828)
!1831 = !DILocation(line: 238, column: 9, scope: !182, inlinedAt: !1828)
!1832 = !DILocation(line: 239, column: 28, scope: !182, inlinedAt: !1828)
!1833 = !DILocation(line: 239, column: 37, scope: !182, inlinedAt: !1828)
!1834 = !DILocation(line: 239, column: 36, scope: !182, inlinedAt: !1828)
!1835 = !DILocation(line: 239, column: 60, scope: !182, inlinedAt: !1828)
!1836 = !DILocation(line: 239, column: 12, scope: !182, inlinedAt: !1828)
!1837 = !DILocation(line: 240, column: 5, scope: !182, inlinedAt: !1828)
!1838 = !DILocation(line: 241, column: 5, scope: !182, inlinedAt: !1828)
!1839 = !DILocation(line: 242, column: 12, scope: !182, inlinedAt: !1828)
!1840 = !DILocation(line: 240, column: 11, scope: !182, inlinedAt: !1828)
!1841 = !DILocation(line: 243, column: 1, scope: !182, inlinedAt: !1828)
!1842 = !DILocation(line: 0, scope: !182, inlinedAt: !1828)
!1843 = !DILocation(line: 924, column: 5, scope: !1744)
!1844 = !DILocation(line: 925, column: 1, scope: !1744)
!1845 = !DILocation(line: 932, column: 38, scope: !1517)
!1846 = !DILocation(line: 932, column: 55, scope: !1517)
!1847 = !DILocation(line: 933, column: 20, scope: !1517)
!1848 = !DILocation(line: 933, column: 15, scope: !1517)
!1849 = !DILocation(line: 934, column: 5, scope: !1517)
!1850 = !DILocation(line: 0, scope: !1533)
!1851 = !DILocation(line: 936, column: 19, scope: !1533)
!1852 = !DILocation(line: 936, column: 9, scope: !1533)
!1853 = !DILocation(line: 937, column: 13, scope: !1537)
!1854 = !DILocation(line: 934, column: 14, scope: !1517)
!1855 = !DILocation(line: 937, column: 15, scope: !1537)
!1856 = !DILocation(line: 938, column: 11, scope: !1533)
!1857 = !DILocation(line: 937, column: 13, scope: !1533)
!1858 = !DILocation(line: 941, column: 1, scope: !1517)
!1859 = !DILocation(line: 940, column: 5, scope: !1517)
!1860 = distinct !DISubprogram(name: "raxRemoveChild", scope: !3, file: !3, line: 947, type: !1861, isLocal: false, isDefinition: true, scopeLine: 947, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1863)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!13, !13, !13}
!1863 = !{!1864, !1865, !1866, !1869, !1870, !1871, !1872, !1874, !1875, !1876, !1877}
!1864 = !DILocalVariable(name: "parent", arg: 1, scope: !1860, file: !3, line: 947, type: !13)
!1865 = !DILocalVariable(name: "child", arg: 2, scope: !1860, file: !3, line: 947, type: !13)
!1866 = !DILocalVariable(name: "data", scope: !1867, file: !3, line: 953, type: !6)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 952, column: 26)
!1868 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 952, column: 9)
!1869 = !DILocalVariable(name: "cp", scope: !1860, file: !3, line: 968, type: !12)
!1870 = !DILocalVariable(name: "c", scope: !1860, file: !3, line: 969, type: !12)
!1871 = !DILocalVariable(name: "e", scope: !1860, file: !3, line: 970, type: !10)
!1872 = !DILocalVariable(name: "aux", scope: !1873, file: !3, line: 975, type: !13)
!1873 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 974, column: 14)
!1874 = !DILocalVariable(name: "taillen", scope: !1860, file: !3, line: 984, type: !31)
!1875 = !DILocalVariable(name: "shift", scope: !1860, file: !3, line: 994, type: !56)
!1876 = !DILocalVariable(name: "valuelen", scope: !1860, file: !3, line: 1001, type: !56)
!1877 = !DILocalVariable(name: "newnode", scope: !1860, file: !3, line: 1009, type: !13)
!1878 = !DILocation(line: 947, column: 34, scope: !1860)
!1879 = !DILocation(line: 947, column: 51, scope: !1860)
!1880 = !DILocation(line: 952, column: 17, scope: !1868)
!1881 = !DILocation(line: 952, column: 9, scope: !1868)
!1882 = !DILocation(line: 952, column: 9, scope: !1860)
!1883 = !DILocation(line: 953, column: 15, scope: !1867)
!1884 = !DILocation(line: 954, column: 21, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 954, column: 13)
!1886 = !DILocation(line: 954, column: 13, scope: !1885)
!1887 = !DILocation(line: 954, column: 13, scope: !1867)
!1888 = !DILocation(line: 957, column: 22, scope: !1867)
!1889 = !DILocation(line: 958, column: 13, scope: !1867)
!1890 = !DILocation(line: 237, column: 27, scope: !182, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 954, column: 35, scope: !1885)
!1892 = !DILocation(line: 238, column: 12, scope: !191, inlinedAt: !1891)
!1893 = !DILocation(line: 238, column: 9, scope: !191, inlinedAt: !1891)
!1894 = !DILocation(line: 238, column: 9, scope: !182, inlinedAt: !1891)
!1895 = !DILocation(line: 243, column: 1, scope: !182, inlinedAt: !1891)
!1896 = !DILocation(line: 224, column: 26, scope: !154, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 958, column: 28, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 958, column: 13)
!1899 = !DILocation(line: 224, column: 35, scope: !154, inlinedAt: !1897)
!1900 = !DILocation(line: 225, column: 14, scope: !154, inlinedAt: !1897)
!1901 = !DILocation(line: 226, column: 9, scope: !154, inlinedAt: !1897)
!1902 = !DILocation(line: 239, column: 28, scope: !182, inlinedAt: !1891)
!1903 = !DILocation(line: 239, column: 37, scope: !182, inlinedAt: !1891)
!1904 = !DILocation(line: 239, column: 36, scope: !182, inlinedAt: !1891)
!1905 = !DILocation(line: 239, column: 60, scope: !182, inlinedAt: !1891)
!1906 = !DILocation(line: 239, column: 12, scope: !182, inlinedAt: !1891)
!1907 = !DILocation(line: 240, column: 5, scope: !182, inlinedAt: !1891)
!1908 = !DILocation(line: 241, column: 5, scope: !182, inlinedAt: !1891)
!1909 = !DILocation(line: 242, column: 12, scope: !182, inlinedAt: !1891)
!1910 = !DILocation(line: 240, column: 11, scope: !182, inlinedAt: !1891)
!1911 = !DILocation(line: 955, column: 24, scope: !1867)
!1912 = !DILocation(line: 958, column: 13, scope: !1898)
!1913 = !DILocation(line: 226, column: 14, scope: !162, inlinedAt: !1897)
!1914 = !DILocation(line: 227, column: 19, scope: !161, inlinedAt: !1897)
!1915 = !DILocation(line: 229, column: 46, scope: !161, inlinedAt: !1897)
!1916 = !DILocation(line: 228, column: 16, scope: !161, inlinedAt: !1897)
!1917 = !DILocation(line: 230, column: 9, scope: !161, inlinedAt: !1897)
!1918 = !DILocation(line: 231, column: 5, scope: !161, inlinedAt: !1897)
!1919 = !DILocation(line: 232, column: 19, scope: !171, inlinedAt: !1897)
!1920 = !DILocation(line: 234, column: 1, scope: !154, inlinedAt: !1897)
!1921 = !DILocation(line: 958, column: 28, scope: !1898)
!1922 = !DILocation(line: 968, column: 20, scope: !1860)
!1923 = !DILocation(line: 968, column: 15, scope: !1860)
!1924 = !DILocation(line: 969, column: 15, scope: !1860)
!1925 = !DILocation(line: 970, column: 20, scope: !1860)
!1926 = !DILocation(line: 974, column: 5, scope: !1860)
!1927 = !DILocation(line: 975, column: 9, scope: !1873)
!1928 = !DILocation(line: 976, column: 21, scope: !1873)
!1929 = !DILocation(line: 976, column: 9, scope: !1873)
!1930 = !DILocation(line: 977, column: 13, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 977, column: 13)
!1932 = !DILocation(line: 975, column: 18, scope: !1873)
!1933 = !DILocation(line: 977, column: 17, scope: !1931)
!1934 = !DILocation(line: 978, column: 10, scope: !1873)
!1935 = !DILocation(line: 979, column: 10, scope: !1873)
!1936 = !DILocation(line: 980, column: 5, scope: !1860)
!1937 = distinct !{!1937, !1926, !1936}
!1938 = !DILocation(line: 984, column: 27, scope: !1860)
!1939 = !DILocation(line: 984, column: 37, scope: !1860)
!1940 = !DILocation(line: 984, column: 32, scope: !1860)
!1941 = !DILocation(line: 984, column: 19, scope: !1860)
!1942 = !DILocation(line: 984, column: 9, scope: !1860)
!1943 = !DILocation(line: 986, column: 16, scope: !1860)
!1944 = !DILocation(line: 986, column: 19, scope: !1860)
!1945 = !DILocation(line: 986, column: 5, scope: !1860)
!1946 = !DILocation(line: 994, column: 30, scope: !1860)
!1947 = !DILocation(line: 994, column: 34, scope: !1860)
!1948 = !DILocation(line: 994, column: 38, scope: !1860)
!1949 = !DILocation(line: 994, column: 55, scope: !1860)
!1950 = !DILocation(line: 994, column: 20, scope: !1860)
!1951 = !DILocation(line: 994, column: 12, scope: !1860)
!1952 = !DILocation(line: 997, column: 9, scope: !1860)
!1953 = !DILocation(line: 998, column: 28, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 997, column: 9)
!1955 = !DILocation(line: 998, column: 59, scope: !1954)
!1956 = !DILocation(line: 998, column: 38, scope: !1954)
!1957 = !DILocation(line: 998, column: 62, scope: !1954)
!1958 = !DILocation(line: 998, column: 9, scope: !1954)
!1959 = !DILocation(line: 1001, column: 32, scope: !1860)
!1960 = !DILocation(line: 1001, column: 24, scope: !1860)
!1961 = !DILocation(line: 1001, column: 38, scope: !1860)
!1962 = !DILocation(line: 1001, column: 12, scope: !1860)
!1963 = !DILocation(line: 1002, column: 14, scope: !1860)
!1964 = !DILocation(line: 1002, column: 23, scope: !1860)
!1965 = !DILocation(line: 1002, column: 31, scope: !1860)
!1966 = !DILocation(line: 1002, column: 30, scope: !1860)
!1967 = !DILocation(line: 1002, column: 41, scope: !1860)
!1968 = !DILocation(line: 1002, column: 59, scope: !1860)
!1969 = !DILocation(line: 1002, column: 5, scope: !1860)
!1970 = !DILocation(line: 1005, column: 17, scope: !1860)
!1971 = !DILocation(line: 1009, column: 36, scope: !1860)
!1972 = !DILocation(line: 1009, column: 43, scope: !1860)
!1973 = !DILocation(line: 1009, column: 24, scope: !1860)
!1974 = !DILocation(line: 1009, column: 14, scope: !1860)
!1975 = !DILocation(line: 1015, column: 12, scope: !1860)
!1976 = !DILocation(line: 0, scope: !1860)
!1977 = !DILocation(line: 1016, column: 1, scope: !1860)
!1978 = distinct !DISubprogram(name: "raxRecursiveFree", scope: !3, file: !3, line: 1221, type: !1979, isLocal: false, isDefinition: true, scopeLine: 1221, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1984)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{null, !91, !13, !1981}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !6}
!1984 = !{!1985, !1986, !1987, !1988, !1989, !1990}
!1985 = !DILocalVariable(name: "rax", arg: 1, scope: !1978, file: !3, line: 1221, type: !91)
!1986 = !DILocalVariable(name: "n", arg: 2, scope: !1978, file: !3, line: 1221, type: !13)
!1987 = !DILocalVariable(name: "free_callback", arg: 3, scope: !1978, file: !3, line: 1221, type: !1981)
!1988 = !DILocalVariable(name: "numchildren", scope: !1978, file: !3, line: 1223, type: !31)
!1989 = !DILocalVariable(name: "cp", scope: !1978, file: !3, line: 1224, type: !12)
!1990 = !DILocalVariable(name: "child", scope: !1991, file: !3, line: 1226, type: !13)
!1991 = distinct !DILexicalBlock(scope: !1978, file: !3, line: 1225, column: 26)
!1992 = !DILocation(line: 1221, column: 28, scope: !1978)
!1993 = !DILocation(line: 1221, column: 42, scope: !1978)
!1994 = !DILocation(line: 1221, column: 52, scope: !1978)
!1995 = !DILocation(line: 1223, column: 26, scope: !1978)
!1996 = !DILocation(line: 1223, column: 23, scope: !1978)
!1997 = !DILocation(line: 1223, column: 43, scope: !1978)
!1998 = !DILocation(line: 1223, column: 9, scope: !1978)
!1999 = !DILocation(line: 1224, column: 20, scope: !1978)
!2000 = !DILocation(line: 1225, column: 5, scope: !1978)
!2001 = !DILocation(line: 1224, column: 15, scope: !1978)
!2002 = !DILocation(line: 1225, column: 22, scope: !1978)
!2003 = !DILocation(line: 1226, column: 9, scope: !1991)
!2004 = !DILocation(line: 1227, column: 23, scope: !1991)
!2005 = !DILocation(line: 1227, column: 9, scope: !1991)
!2006 = !DILocation(line: 1228, column: 30, scope: !1991)
!2007 = !DILocation(line: 1226, column: 18, scope: !1991)
!2008 = !DILocation(line: 1228, column: 9, scope: !1991)
!2009 = !DILocation(line: 1229, column: 11, scope: !1991)
!2010 = !DILocation(line: 1230, column: 5, scope: !1978)
!2011 = distinct !{!2011, !2000, !2010}
!2012 = !DILocation(line: 1232, column: 9, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1978, file: !3, line: 1232, column: 9)
!2014 = !DILocation(line: 1232, column: 23, scope: !2013)
!2015 = !DILocation(line: 1232, column: 29, scope: !2013)
!2016 = !DILocation(line: 1232, column: 35, scope: !2013)
!2017 = !DILocation(line: 237, column: 27, scope: !182, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 1233, column: 23, scope: !2013)
!2019 = !DILocation(line: 239, column: 37, scope: !182, inlinedAt: !2018)
!2020 = !DILocation(line: 239, column: 36, scope: !182, inlinedAt: !2018)
!2021 = !DILocation(line: 239, column: 60, scope: !182, inlinedAt: !2018)
!2022 = !DILocation(line: 239, column: 12, scope: !182, inlinedAt: !2018)
!2023 = !DILocation(line: 240, column: 5, scope: !182, inlinedAt: !2018)
!2024 = !DILocation(line: 241, column: 5, scope: !182, inlinedAt: !2018)
!2025 = !DILocation(line: 242, column: 12, scope: !182, inlinedAt: !2018)
!2026 = !DILocation(line: 240, column: 11, scope: !182, inlinedAt: !2018)
!2027 = !DILocation(line: 243, column: 1, scope: !182, inlinedAt: !2018)
!2028 = !DILocation(line: 1233, column: 9, scope: !2013)
!2029 = !DILocation(line: 1234, column: 5, scope: !1978)
!2030 = !DILocation(line: 1235, column: 10, scope: !1978)
!2031 = !DILocation(line: 1235, column: 18, scope: !1978)
!2032 = !DILocation(line: 1236, column: 1, scope: !1978)
!2033 = distinct !DISubprogram(name: "raxFreeWithCallback", scope: !3, file: !3, line: 1240, type: !2034, isLocal: false, isDefinition: true, scopeLine: 1240, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2036)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null, !91, !1981}
!2036 = !{!2037, !2038}
!2037 = !DILocalVariable(name: "rax", arg: 1, scope: !2033, file: !3, line: 1240, type: !91)
!2038 = !DILocalVariable(name: "free_callback", arg: 2, scope: !2033, file: !3, line: 1240, type: !1981)
!2039 = !DILocation(line: 1240, column: 31, scope: !2033)
!2040 = !DILocation(line: 1240, column: 43, scope: !2033)
!2041 = !DILocation(line: 1241, column: 31, scope: !2033)
!2042 = !DILocation(line: 1241, column: 5, scope: !2033)
!2043 = !DILocation(line: 1242, column: 5, scope: !2033)
!2044 = !DILocation(line: 1243, column: 14, scope: !2033)
!2045 = !DILocation(line: 1243, column: 5, scope: !2033)
!2046 = !DILocation(line: 1244, column: 1, scope: !2033)
!2047 = distinct !DISubprogram(name: "raxFree", scope: !3, file: !3, line: 1247, type: !2048, isLocal: false, isDefinition: true, scopeLine: 1247, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2050)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{null, !91}
!2050 = !{!2051}
!2051 = !DILocalVariable(name: "rax", arg: 1, scope: !2047, file: !3, line: 1247, type: !91)
!2052 = !DILocation(line: 1247, column: 19, scope: !2047)
!2053 = !DILocation(line: 1240, column: 31, scope: !2033, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 1248, column: 5, scope: !2047)
!2055 = !DILocation(line: 1240, column: 43, scope: !2033, inlinedAt: !2054)
!2056 = !DILocation(line: 1241, column: 31, scope: !2033, inlinedAt: !2054)
!2057 = !DILocation(line: 1241, column: 5, scope: !2033, inlinedAt: !2054)
!2058 = !DILocation(line: 1242, column: 5, scope: !2033, inlinedAt: !2054)
!2059 = !DILocation(line: 1243, column: 14, scope: !2033, inlinedAt: !2054)
!2060 = !DILocation(line: 1243, column: 5, scope: !2033, inlinedAt: !2054)
!2061 = !DILocation(line: 1244, column: 1, scope: !2033, inlinedAt: !2054)
!2062 = !DILocation(line: 1249, column: 1, scope: !2047)
!2063 = distinct !DISubprogram(name: "raxStart", scope: !3, file: !3, line: 1256, type: !2064, isLocal: false, isDefinition: true, scopeLine: 1256, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2087)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{null, !2066, !91}
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxIterator", file: !15, line: 186, baseType: !2068)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raxIterator", file: !15, line: 175, size: 3840, elements: !2069)
!2069 = !{!2070, !2071, !2072, !2073, !2074, !2075, !2076, !2080, !2081, !2082}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2068, file: !15, line: 176, baseType: !31, size: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2068, file: !15, line: 177, baseType: !91, size: 64, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2068, file: !15, line: 178, baseType: !10, size: 64, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2068, file: !15, line: 179, baseType: !6, size: 64, offset: 192)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !2068, file: !15, line: 180, baseType: !56, size: 64, offset: 256)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "key_max", scope: !2068, file: !15, line: 181, baseType: !56, size: 64, offset: 320)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "key_static_string", scope: !2068, file: !15, line: 182, baseType: !2077, size: 1024, offset: 384)
!2077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1024, elements: !2078)
!2078 = !{!2079}
!2079 = !DISubrange(count: 128)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2068, file: !15, line: 183, baseType: !13, size: 64, offset: 1408)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2068, file: !15, line: 184, baseType: !508, size: 2304, offset: 1472)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "node_cb", scope: !2068, file: !15, line: 185, baseType: !2083, size: 64, offset: 3776)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "raxNodeCallback", file: !15, line: 165, baseType: !2084)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!31, !12}
!2087 = !{!2088, !2089}
!2088 = !DILocalVariable(name: "it", arg: 1, scope: !2063, file: !3, line: 1256, type: !2066)
!2089 = !DILocalVariable(name: "rt", arg: 2, scope: !2063, file: !3, line: 1256, type: !91)
!2090 = !DILocation(line: 1256, column: 28, scope: !2063)
!2091 = !DILocation(line: 1256, column: 37, scope: !2063)
!2092 = !DILocation(line: 1257, column: 9, scope: !2063)
!2093 = !DILocation(line: 1257, column: 15, scope: !2063)
!2094 = !{!2095, !49, i64 0}
!2095 = !{!"raxIterator", !49, i64 0, !123, i64 8, !123, i64 16, !123, i64 24, !110, i64 32, !110, i64 40, !50, i64 48, !123, i64 176, !1255, i64 184, !123, i64 472}
!2096 = !DILocation(line: 1258, column: 9, scope: !2063)
!2097 = !DILocation(line: 1258, column: 12, scope: !2063)
!2098 = !{!2095, !123, i64 8}
!2099 = !DILocation(line: 1259, column: 9, scope: !2063)
!2100 = !DILocation(line: 1260, column: 15, scope: !2063)
!2101 = !DILocation(line: 1260, column: 9, scope: !2063)
!2102 = !DILocation(line: 1260, column: 13, scope: !2063)
!2103 = !{!2095, !123, i64 16}
!2104 = !DILocation(line: 1259, column: 17, scope: !2063)
!2105 = !DILocation(line: 1262, column: 9, scope: !2063)
!2106 = !DILocation(line: 1262, column: 14, scope: !2063)
!2107 = !{!2095, !123, i64 24}
!2108 = !DILocation(line: 1263, column: 9, scope: !2063)
!2109 = !DILocation(line: 1263, column: 17, scope: !2063)
!2110 = !{!2095, !123, i64 472}
!2111 = !DILocation(line: 92, column: 43, scope: !1382, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 1264, column: 5, scope: !2063)
!2113 = !DILocation(line: 93, column: 17, scope: !1382, inlinedAt: !2112)
!2114 = !DILocation(line: 93, column: 9, scope: !1382, inlinedAt: !2112)
!2115 = !DILocation(line: 93, column: 15, scope: !1382, inlinedAt: !2112)
!2116 = !DILocation(line: 94, column: 9, scope: !1382, inlinedAt: !2112)
!2117 = !DILocation(line: 94, column: 15, scope: !1382, inlinedAt: !2112)
!2118 = !DILocation(line: 96, column: 9, scope: !1382, inlinedAt: !2112)
!2119 = !DILocation(line: 96, column: 13, scope: !1382, inlinedAt: !2112)
!2120 = !DILocation(line: 97, column: 1, scope: !1382, inlinedAt: !2112)
!2121 = !DILocation(line: 1265, column: 1, scope: !2063)
!2122 = distinct !DISubprogram(name: "raxIteratorAddChars", scope: !3, file: !3, line: 1270, type: !2123, isLocal: false, isDefinition: true, scopeLine: 1270, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!31, !2066, !10, !56}
!2125 = !{!2126, !2127, !2128, !2129, !2132}
!2126 = !DILocalVariable(name: "it", arg: 1, scope: !2122, file: !3, line: 1270, type: !2066)
!2127 = !DILocalVariable(name: "s", arg: 2, scope: !2122, file: !3, line: 1270, type: !10)
!2128 = !DILocalVariable(name: "len", arg: 3, scope: !2122, file: !3, line: 1270, type: !56)
!2129 = !DILocalVariable(name: "old", scope: !2130, file: !3, line: 1272, type: !10)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 1271, column: 40)
!2131 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 1271, column: 9)
!2132 = !DILocalVariable(name: "new_max", scope: !2130, file: !3, line: 1274, type: !56)
!2133 = !DILocation(line: 1270, column: 38, scope: !2122)
!2134 = !DILocation(line: 1270, column: 57, scope: !2122)
!2135 = !DILocation(line: 1270, column: 67, scope: !2122)
!2136 = !DILocation(line: 1271, column: 13, scope: !2131)
!2137 = !{!2095, !110, i64 40}
!2138 = !DILocation(line: 1271, column: 27, scope: !2131)
!2139 = !{!2095, !110, i64 32}
!2140 = !DILocation(line: 1271, column: 34, scope: !2131)
!2141 = !DILocation(line: 1271, column: 21, scope: !2131)
!2142 = !DILocation(line: 0, scope: !2122)
!2143 = !DILocation(line: 1271, column: 9, scope: !2122)
!2144 = !DILocation(line: 1272, column: 35, scope: !2130)
!2145 = !DILocation(line: 1272, column: 42, scope: !2130)
!2146 = !DILocation(line: 1272, column: 39, scope: !2130)
!2147 = !DILocation(line: 1272, column: 30, scope: !2130)
!2148 = !DILocation(line: 1272, column: 24, scope: !2130)
!2149 = !DILocation(line: 1274, column: 43, scope: !2130)
!2150 = !DILocation(line: 1274, column: 16, scope: !2130)
!2151 = !DILocation(line: 1275, column: 19, scope: !2130)
!2152 = !DILocation(line: 1275, column: 17, scope: !2130)
!2153 = !DILocation(line: 1276, column: 21, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 1276, column: 13)
!2155 = !DILocation(line: 0, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 1281, column: 13)
!2157 = !DILocation(line: 1276, column: 13, scope: !2130)
!2158 = !DILocation(line: 1277, column: 23, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 1276, column: 30)
!2160 = !DILocation(line: 1277, column: 21, scope: !2159)
!2161 = !DILocation(line: 1278, column: 13, scope: !2159)
!2162 = !DILocation(line: 1278, column: 19, scope: !2159)
!2163 = !DILocation(line: 1281, column: 13, scope: !2130)
!2164 = !DILocation(line: 1281, column: 67, scope: !2156)
!2165 = !DILocation(line: 1281, column: 26, scope: !2156)
!2166 = !DILocation(line: 1282, column: 21, scope: !2130)
!2167 = !DILocation(line: 1286, column: 25, scope: !2122)
!2168 = !DILocation(line: 1286, column: 17, scope: !2122)
!2169 = !DILocation(line: 1286, column: 20, scope: !2122)
!2170 = !DILocation(line: 1286, column: 5, scope: !2122)
!2171 = !DILocation(line: 1287, column: 17, scope: !2122)
!2172 = !DILocation(line: 1288, column: 5, scope: !2122)
!2173 = !DILocation(line: 0, scope: !2159)
!2174 = !DILocation(line: 1289, column: 1, scope: !2122)
!2175 = distinct !DISubprogram(name: "raxIteratorDelChars", scope: !3, file: !3, line: 1293, type: !2176, isLocal: false, isDefinition: true, scopeLine: 1293, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2178)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{null, !2066, !56}
!2178 = !{!2179, !2180}
!2179 = !DILocalVariable(name: "it", arg: 1, scope: !2175, file: !3, line: 1293, type: !2066)
!2180 = !DILocalVariable(name: "count", arg: 2, scope: !2175, file: !3, line: 1293, type: !56)
!2181 = !DILocation(line: 1293, column: 39, scope: !2175)
!2182 = !DILocation(line: 1293, column: 50, scope: !2175)
!2183 = !DILocation(line: 1294, column: 9, scope: !2175)
!2184 = !DILocation(line: 1294, column: 17, scope: !2175)
!2185 = !DILocation(line: 1295, column: 1, scope: !2175)
!2186 = distinct !DISubprogram(name: "raxIteratorNextStep", scope: !3, file: !3, line: 1311, type: !2187, isLocal: false, isDefinition: true, scopeLine: 1311, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2189)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!31, !2066, !31}
!2189 = !{!2190, !2191, !2192, !2193, !2194, !2195, !2197, !2200, !2203, !2204, !2205, !2208}
!2190 = !DILocalVariable(name: "it", arg: 1, scope: !2186, file: !3, line: 1311, type: !2066)
!2191 = !DILocalVariable(name: "noup", arg: 2, scope: !2186, file: !3, line: 1311, type: !31)
!2192 = !DILocalVariable(name: "orig_key_len", scope: !2186, file: !3, line: 1321, type: !56)
!2193 = !DILocalVariable(name: "orig_stack_items", scope: !2186, file: !3, line: 1322, type: !56)
!2194 = !DILocalVariable(name: "orig_node", scope: !2186, file: !3, line: 1323, type: !13)
!2195 = !DILocalVariable(name: "children", scope: !2196, file: !3, line: 1326, type: !31)
!2196 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 1325, column: 14)
!2197 = !DILocalVariable(name: "cp", scope: !2198, file: !3, line: 1333, type: !12)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 1327, column: 32)
!2199 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 1327, column: 13)
!2200 = !DILocalVariable(name: "old_noup", scope: !2201, file: !3, line: 1354, type: !31)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !3, line: 1353, column: 22)
!2202 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 1348, column: 16)
!2203 = !DILocalVariable(name: "prevchild", scope: !2201, file: !3, line: 1366, type: !11)
!2204 = !DILocalVariable(name: "todel", scope: !2201, file: !3, line: 1374, type: !31)
!2205 = !DILocalVariable(name: "cp", scope: !2206, file: !3, line: 1380, type: !12)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 1379, column: 80)
!2207 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 1379, column: 21)
!2208 = !DILocalVariable(name: "i", scope: !2206, file: !3, line: 1381, type: !31)
!2209 = !DILocation(line: 1311, column: 38, scope: !2186)
!2210 = !DILocation(line: 1311, column: 46, scope: !2186)
!2211 = !DILocation(line: 1312, column: 13, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 1312, column: 9)
!2213 = !DILocation(line: 1312, column: 19, scope: !2212)
!2214 = !DILocation(line: 1312, column: 9, scope: !2186)
!2215 = !DILocation(line: 1314, column: 26, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 1314, column: 16)
!2217 = !DILocation(line: 1314, column: 16, scope: !2212)
!2218 = !DILocation(line: 1315, column: 19, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2216, file: !3, line: 1314, column: 50)
!2220 = !DILocation(line: 1316, column: 9, scope: !2219)
!2221 = !DILocation(line: 1321, column: 31, scope: !2186)
!2222 = !DILocation(line: 1321, column: 12, scope: !2186)
!2223 = !DILocation(line: 1322, column: 35, scope: !2186)
!2224 = !DILocation(line: 1322, column: 41, scope: !2186)
!2225 = !{!2095, !110, i64 192}
!2226 = !DILocation(line: 1322, column: 12, scope: !2186)
!2227 = !DILocation(line: 1323, column: 30, scope: !2186)
!2228 = !{!2095, !123, i64 176}
!2229 = !DILocation(line: 1323, column: 14, scope: !2186)
!2230 = !DILocation(line: 1325, column: 5, scope: !2186)
!2231 = !DILocation(line: 1326, column: 34, scope: !2196)
!2232 = !DILocation(line: 1326, column: 58, scope: !2196)
!2233 = !DILocation(line: 1327, column: 14, scope: !2199)
!2234 = !DILocation(line: 1327, column: 22, scope: !2199)
!2235 = !DILocation(line: 1327, column: 19, scope: !2199)
!2236 = !DILocation(line: 100, column: 42, scope: !1239, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 1332, column: 18, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 1332, column: 17)
!2239 = !DILocation(line: 100, column: 52, scope: !1239, inlinedAt: !2237)
!2240 = !DILocation(line: 101, column: 13, scope: !1248, inlinedAt: !2237)
!2241 = !DILocation(line: 101, column: 26, scope: !1248, inlinedAt: !2237)
!2242 = !DILocation(line: 101, column: 19, scope: !1248, inlinedAt: !2237)
!2243 = !DILocation(line: 101, column: 9, scope: !1239, inlinedAt: !2237)
!2244 = !DILocation(line: 102, column: 17, scope: !1246, inlinedAt: !2237)
!2245 = !DILocation(line: 102, column: 23, scope: !1246, inlinedAt: !2237)
!2246 = !DILocation(line: 102, column: 13, scope: !1247, inlinedAt: !2237)
!2247 = !DILocation(line: 103, column: 62, scope: !1265, inlinedAt: !2237)
!2248 = !DILocation(line: 103, column: 25, scope: !1265, inlinedAt: !2237)
!2249 = !DILocation(line: 103, column: 23, scope: !1265, inlinedAt: !2237)
!2250 = !DILocation(line: 104, column: 27, scope: !1269, inlinedAt: !2237)
!2251 = !DILocation(line: 104, column: 17, scope: !1265, inlinedAt: !2237)
!2252 = !DILocation(line: 105, column: 27, scope: !1272, inlinedAt: !2237)
!2253 = !DILocation(line: 108, column: 17, scope: !1272, inlinedAt: !2237)
!2254 = !DILocation(line: 110, column: 65, scope: !1265, inlinedAt: !2237)
!2255 = !DILocation(line: 110, column: 60, scope: !1265, inlinedAt: !2237)
!2256 = !DILocation(line: 110, column: 13, scope: !1265, inlinedAt: !2237)
!2257 = !DILocation(line: 111, column: 9, scope: !1265, inlinedAt: !2237)
!2258 = !DILocation(line: 112, column: 43, scope: !1245, inlinedAt: !2237)
!2259 = !DILocation(line: 112, column: 79, scope: !1245, inlinedAt: !2237)
!2260 = !DILocation(line: 112, column: 31, scope: !1245, inlinedAt: !2237)
!2261 = !DILocation(line: 113, column: 26, scope: !1286, inlinedAt: !2237)
!2262 = !DILocation(line: 113, column: 17, scope: !1245, inlinedAt: !2237)
!2263 = !DILocation(line: 112, column: 20, scope: !1245, inlinedAt: !2237)
!2264 = !DILocation(line: 118, column: 23, scope: !1245, inlinedAt: !2237)
!2265 = !DILocation(line: 120, column: 22, scope: !1247, inlinedAt: !2237)
!2266 = !DILocation(line: 122, column: 19, scope: !1239, inlinedAt: !2237)
!2267 = !DILocation(line: 121, column: 5, scope: !1247, inlinedAt: !2237)
!2268 = !DILocation(line: 0, scope: !2238)
!2269 = !DILocation(line: 125, column: 1, scope: !1239, inlinedAt: !2237)
!2270 = !DILocation(line: 1332, column: 17, scope: !2198)
!2271 = !DILocation(line: 122, column: 9, scope: !1239, inlinedAt: !2237)
!2272 = !DILocation(line: 122, column: 5, scope: !1239, inlinedAt: !2237)
!2273 = !DILocation(line: 122, column: 26, scope: !1239, inlinedAt: !2237)
!2274 = !DILocation(line: 123, column: 14, scope: !1239, inlinedAt: !2237)
!2275 = !DILocation(line: 1333, column: 28, scope: !2198)
!2276 = !DILocation(line: 1333, column: 23, scope: !2198)
!2277 = !DILocation(line: 1335, column: 27, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 1334, column: 17)
!2279 = !DILocation(line: 1335, column: 17, scope: !2278)
!2280 = !DILocation(line: 1334, column: 18, scope: !2278)
!2281 = !DILocation(line: 1334, column: 17, scope: !2198)
!2282 = !DILocation(line: 1336, column: 13, scope: !2198)
!2283 = !DILocation(line: 1339, column: 21, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 1339, column: 17)
!2285 = !DILocation(line: 1339, column: 17, scope: !2284)
!2286 = !DILocation(line: 1339, column: 29, scope: !2284)
!2287 = !DILocation(line: 1339, column: 32, scope: !2284)
!2288 = !DILocation(line: 1339, column: 17, scope: !2198)
!2289 = !DILocation(line: 1340, column: 17, scope: !2284)
!2290 = !DILocation(line: 1344, column: 21, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 1344, column: 17)
!2292 = !DILocation(line: 1344, column: 27, scope: !2291)
!2293 = !DILocation(line: 1344, column: 17, scope: !2291)
!2294 = !DILocation(line: 1344, column: 17, scope: !2198)
!2295 = !DILocation(line: 237, column: 27, scope: !182, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 1345, column: 28, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 1344, column: 34)
!2298 = !DILocation(line: 238, column: 12, scope: !191, inlinedAt: !2296)
!2299 = !DILocation(line: 238, column: 9, scope: !191, inlinedAt: !2296)
!2300 = !DILocation(line: 238, column: 9, scope: !182, inlinedAt: !2296)
!2301 = !DILocation(line: 239, column: 28, scope: !182, inlinedAt: !2296)
!2302 = !DILocation(line: 239, column: 37, scope: !182, inlinedAt: !2296)
!2303 = !DILocation(line: 239, column: 36, scope: !182, inlinedAt: !2296)
!2304 = !DILocation(line: 239, column: 60, scope: !182, inlinedAt: !2296)
!2305 = !DILocation(line: 239, column: 12, scope: !182, inlinedAt: !2296)
!2306 = !DILocation(line: 240, column: 5, scope: !182, inlinedAt: !2296)
!2307 = !DILocation(line: 241, column: 5, scope: !182, inlinedAt: !2296)
!2308 = !DILocation(line: 242, column: 12, scope: !182, inlinedAt: !2296)
!2309 = !DILocation(line: 240, column: 11, scope: !182, inlinedAt: !2296)
!2310 = !DILocation(line: 243, column: 1, scope: !182, inlinedAt: !2296)
!2311 = !DILocation(line: 0, scope: !182, inlinedAt: !2296)
!2312 = !DILocation(line: 1345, column: 21, scope: !2297)
!2313 = !DILocation(line: 1345, column: 26, scope: !2297)
!2314 = !DILocation(line: 1346, column: 17, scope: !2297)
!2315 = !DILocation(line: 1354, column: 21, scope: !2201)
!2316 = !DILocation(line: 1357, column: 22, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 1357, column: 21)
!2318 = !DILocation(line: 1357, column: 27, scope: !2317)
!2319 = !DILocation(line: 1366, column: 47, scope: !2201)
!2320 = !DILocation(line: 1366, column: 55, scope: !2201)
!2321 = !DILocation(line: 1366, column: 62, scope: !2201)
!2322 = !DILocation(line: 1366, column: 43, scope: !2201)
!2323 = !DILocation(line: 1366, column: 31, scope: !2201)
!2324 = !DILocation(line: 1367, column: 21, scope: !2201)
!2325 = !DILocation(line: 1357, column: 46, scope: !2317)
!2326 = !DILocation(line: 1357, column: 50, scope: !2317)
!2327 = !DILocation(line: 1357, column: 39, scope: !2317)
!2328 = !DILocation(line: 1357, column: 21, scope: !2201)
!2329 = !DILocation(line: 1358, column: 31, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 1357, column: 56)
!2331 = !DILocation(line: 1359, column: 37, scope: !2330)
!2332 = !DILocation(line: 1360, column: 33, scope: !2330)
!2333 = !DILocation(line: 1361, column: 30, scope: !2330)
!2334 = !DILocation(line: 129, column: 43, scope: !1465, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 1368, column: 32, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !3, line: 1367, column: 28)
!2337 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 1367, column: 21)
!2338 = !DILocation(line: 130, column: 13, scope: !1472, inlinedAt: !2335)
!2339 = !DILocation(line: 130, column: 19, scope: !1472, inlinedAt: !2335)
!2340 = !DILocation(line: 130, column: 9, scope: !1465, inlinedAt: !2335)
!2341 = !DILocation(line: 131, column: 14, scope: !1465, inlinedAt: !2335)
!2342 = !DILocation(line: 132, column: 16, scope: !1465, inlinedAt: !2335)
!2343 = !DILocation(line: 132, column: 12, scope: !1465, inlinedAt: !2335)
!2344 = !DILocation(line: 132, column: 5, scope: !1465, inlinedAt: !2335)
!2345 = !DILocation(line: 0, scope: !1465, inlinedAt: !2335)
!2346 = !DILocation(line: 133, column: 1, scope: !1465, inlinedAt: !2335)
!2347 = !DILocation(line: 1368, column: 30, scope: !2336)
!2348 = !DILocation(line: 1369, column: 17, scope: !2336)
!2349 = !DILocation(line: 1374, column: 39, scope: !2201)
!2350 = !DILocation(line: 1379, column: 26, scope: !2207)
!2351 = !DILocation(line: 1374, column: 29, scope: !2201)
!2352 = !DILocation(line: 1374, column: 59, scope: !2201)
!2353 = !DILocation(line: 1374, column: 21, scope: !2201)
!2354 = !DILocation(line: 1375, column: 40, scope: !2201)
!2355 = !DILocation(line: 1293, column: 39, scope: !2175, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 1375, column: 17, scope: !2201)
!2357 = !DILocation(line: 1293, column: 50, scope: !2175, inlinedAt: !2356)
!2358 = !DILocation(line: 1294, column: 17, scope: !2175, inlinedAt: !2356)
!2359 = !DILocation(line: 1295, column: 1, scope: !2175, inlinedAt: !2356)
!2360 = !DILocation(line: 1379, column: 32, scope: !2207)
!2361 = !DILocation(line: 1379, column: 22, scope: !2207)
!2362 = !DILocation(line: 1379, column: 40, scope: !2207)
!2363 = !DILocation(line: 1379, column: 53, scope: !2207)
!2364 = !DILocation(line: 1379, column: 61, scope: !2207)
!2365 = !DILocation(line: 1379, column: 58, scope: !2207)
!2366 = !DILocation(line: 1379, column: 21, scope: !2201)
!2367 = !DILocation(line: 1380, column: 36, scope: !2206)
!2368 = !DILocation(line: 1380, column: 31, scope: !2206)
!2369 = !DILocation(line: 1381, column: 25, scope: !2206)
!2370 = !DILocation(line: 1384, column: 29, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !3, line: 1384, column: 29)
!2372 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 1382, column: 48)
!2373 = !DILocation(line: 1384, column: 47, scope: !2371)
!2374 = !DILocation(line: 1384, column: 29, scope: !2372)
!2375 = !DILocation(line: 1385, column: 26, scope: !2372)
!2376 = !DILocation(line: 1386, column: 27, scope: !2372)
!2377 = !DILocation(line: 1382, column: 30, scope: !2206)
!2378 = !DILocation(line: 1382, column: 21, scope: !2206)
!2379 = distinct !{!2379, !2378, !2380}
!2380 = !DILocation(line: 1387, column: 21, scope: !2206)
!2381 = !DILocation(line: 1388, column: 27, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 1388, column: 25)
!2383 = !DILocation(line: 0, scope: !2372)
!2384 = !DILocation(line: 1388, column: 25, scope: !2206)
!2385 = !DILocation(line: 1390, column: 62, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2382, file: !3, line: 1388, column: 46)
!2387 = !DILocation(line: 1390, column: 25, scope: !2386)
!2388 = !DILocation(line: 1391, column: 58, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 1391, column: 29)
!2390 = !DILocation(line: 100, column: 42, scope: !1239, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 1391, column: 30, scope: !2389)
!2392 = !DILocation(line: 100, column: 52, scope: !1239, inlinedAt: !2391)
!2393 = !DILocation(line: 101, column: 13, scope: !1248, inlinedAt: !2391)
!2394 = !DILocation(line: 101, column: 26, scope: !1248, inlinedAt: !2391)
!2395 = !DILocation(line: 101, column: 19, scope: !1248, inlinedAt: !2391)
!2396 = !DILocation(line: 101, column: 9, scope: !1239, inlinedAt: !2391)
!2397 = !DILocation(line: 102, column: 17, scope: !1246, inlinedAt: !2391)
!2398 = !DILocation(line: 102, column: 23, scope: !1246, inlinedAt: !2391)
!2399 = !DILocation(line: 102, column: 13, scope: !1247, inlinedAt: !2391)
!2400 = !DILocation(line: 103, column: 62, scope: !1265, inlinedAt: !2391)
!2401 = !DILocation(line: 103, column: 25, scope: !1265, inlinedAt: !2391)
!2402 = !DILocation(line: 103, column: 23, scope: !1265, inlinedAt: !2391)
!2403 = !DILocation(line: 104, column: 27, scope: !1269, inlinedAt: !2391)
!2404 = !DILocation(line: 104, column: 17, scope: !1265, inlinedAt: !2391)
!2405 = !DILocation(line: 105, column: 27, scope: !1272, inlinedAt: !2391)
!2406 = !DILocation(line: 108, column: 17, scope: !1272, inlinedAt: !2391)
!2407 = !DILocation(line: 110, column: 65, scope: !1265, inlinedAt: !2391)
!2408 = !DILocation(line: 110, column: 60, scope: !1265, inlinedAt: !2391)
!2409 = !DILocation(line: 110, column: 13, scope: !1265, inlinedAt: !2391)
!2410 = !DILocation(line: 111, column: 9, scope: !1265, inlinedAt: !2391)
!2411 = !DILocation(line: 112, column: 43, scope: !1245, inlinedAt: !2391)
!2412 = !DILocation(line: 112, column: 79, scope: !1245, inlinedAt: !2391)
!2413 = !DILocation(line: 112, column: 31, scope: !1245, inlinedAt: !2391)
!2414 = !DILocation(line: 113, column: 26, scope: !1286, inlinedAt: !2391)
!2415 = !DILocation(line: 113, column: 17, scope: !1245, inlinedAt: !2391)
!2416 = !DILocation(line: 112, column: 20, scope: !1245, inlinedAt: !2391)
!2417 = !DILocation(line: 118, column: 23, scope: !1245, inlinedAt: !2391)
!2418 = !DILocation(line: 120, column: 22, scope: !1247, inlinedAt: !2391)
!2419 = !DILocation(line: 122, column: 19, scope: !1239, inlinedAt: !2391)
!2420 = !DILocation(line: 121, column: 5, scope: !1247, inlinedAt: !2391)
!2421 = !DILocation(line: 0, scope: !2389)
!2422 = !DILocation(line: 125, column: 1, scope: !1239, inlinedAt: !2391)
!2423 = !DILocation(line: 1391, column: 29, scope: !2386)
!2424 = !DILocation(line: 122, column: 9, scope: !1239, inlinedAt: !2391)
!2425 = !DILocation(line: 122, column: 5, scope: !1239, inlinedAt: !2391)
!2426 = !DILocation(line: 122, column: 26, scope: !1239, inlinedAt: !2391)
!2427 = !DILocation(line: 123, column: 14, scope: !1239, inlinedAt: !2391)
!2428 = !DILocation(line: 1392, column: 42, scope: !2386)
!2429 = !DILocation(line: 1392, column: 25, scope: !2386)
!2430 = !DILocation(line: 1395, column: 33, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 1395, column: 29)
!2432 = !DILocation(line: 1395, column: 29, scope: !2431)
!2433 = !DILocation(line: 1395, column: 41, scope: !2431)
!2434 = !DILocation(line: 1395, column: 44, scope: !2431)
!2435 = !DILocation(line: 1395, column: 29, scope: !2386)
!2436 = !DILocation(line: 1396, column: 29, scope: !2431)
!2437 = !DILocation(line: 1397, column: 33, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 1397, column: 29)
!2439 = !DILocation(line: 1397, column: 39, scope: !2438)
!2440 = !DILocation(line: 1397, column: 29, scope: !2438)
!2441 = !DILocation(line: 1397, column: 29, scope: !2386)
!2442 = !DILocation(line: 237, column: 27, scope: !182, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 1398, column: 40, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 1397, column: 46)
!2445 = !DILocation(line: 238, column: 12, scope: !191, inlinedAt: !2443)
!2446 = !DILocation(line: 238, column: 9, scope: !191, inlinedAt: !2443)
!2447 = !DILocation(line: 238, column: 9, scope: !182, inlinedAt: !2443)
!2448 = !DILocation(line: 239, column: 28, scope: !182, inlinedAt: !2443)
!2449 = !DILocation(line: 239, column: 37, scope: !182, inlinedAt: !2443)
!2450 = !DILocation(line: 239, column: 36, scope: !182, inlinedAt: !2443)
!2451 = !DILocation(line: 239, column: 60, scope: !182, inlinedAt: !2443)
!2452 = !DILocation(line: 239, column: 12, scope: !182, inlinedAt: !2443)
!2453 = !DILocation(line: 240, column: 5, scope: !182, inlinedAt: !2443)
!2454 = !DILocation(line: 241, column: 5, scope: !182, inlinedAt: !2443)
!2455 = !DILocation(line: 242, column: 12, scope: !182, inlinedAt: !2443)
!2456 = !DILocation(line: 240, column: 11, scope: !182, inlinedAt: !2443)
!2457 = !DILocation(line: 243, column: 1, scope: !182, inlinedAt: !2443)
!2458 = !DILocation(line: 0, scope: !182, inlinedAt: !2443)
!2459 = !DILocation(line: 1398, column: 33, scope: !2444)
!2460 = !DILocation(line: 1398, column: 38, scope: !2444)
!2461 = !DILocation(line: 1399, column: 29, scope: !2444)
!2462 = !DILocation(line: 0, scope: !2198)
!2463 = !DILocation(line: 0, scope: !2297)
!2464 = !DILocation(line: 1407, column: 1, scope: !2186)
!2465 = distinct !DISubprogram(name: "raxSeekGreatest", scope: !3, file: !3, line: 1412, type: !2466, isLocal: false, isDefinition: true, scopeLine: 1412, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!31, !2066}
!2468 = !{!2469, !2470}
!2469 = !DILocalVariable(name: "it", arg: 1, scope: !2465, file: !3, line: 1412, type: !2066)
!2470 = !DILocalVariable(name: "cp", scope: !2471, file: !3, line: 1421, type: !12)
!2471 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 1413, column: 27)
!2472 = !DILocation(line: 1412, column: 34, scope: !2465)
!2473 = !DILocation(line: 1413, column: 15, scope: !2465)
!2474 = !DILocation(line: 1413, column: 21, scope: !2465)
!2475 = !DILocation(line: 1413, column: 5, scope: !2465)
!2476 = !DILocation(line: 1414, column: 23, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 1414, column: 13)
!2478 = !DILocation(line: 1414, column: 13, scope: !2477)
!2479 = !DILocation(line: 1414, column: 13, scope: !2471)
!2480 = !DILocation(line: 0, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1418, column: 17)
!2482 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 1417, column: 16)
!2483 = !DILocation(line: 1416, column: 17, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 1415, column: 17)
!2485 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 1414, column: 32)
!2486 = !DILocation(line: 1415, column: 18, scope: !2484)
!2487 = !DILocation(line: 1415, column: 17, scope: !2485)
!2488 = !DILocation(line: 1418, column: 55, scope: !2481)
!2489 = !DILocation(line: 1418, column: 70, scope: !2481)
!2490 = !DILocation(line: 1418, column: 18, scope: !2481)
!2491 = !DILocation(line: 1418, column: 17, scope: !2482)
!2492 = !DILocation(line: 1421, column: 24, scope: !2471)
!2493 = !DILocation(line: 1422, column: 42, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 1422, column: 13)
!2495 = !DILocation(line: 100, column: 42, scope: !1239, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 1422, column: 14, scope: !2494)
!2497 = !DILocation(line: 100, column: 52, scope: !1239, inlinedAt: !2496)
!2498 = !DILocation(line: 101, column: 13, scope: !1248, inlinedAt: !2496)
!2499 = !DILocation(line: 101, column: 26, scope: !1248, inlinedAt: !2496)
!2500 = !DILocation(line: 101, column: 19, scope: !1248, inlinedAt: !2496)
!2501 = !DILocation(line: 101, column: 9, scope: !1239, inlinedAt: !2496)
!2502 = !DILocation(line: 102, column: 17, scope: !1246, inlinedAt: !2496)
!2503 = !DILocation(line: 102, column: 23, scope: !1246, inlinedAt: !2496)
!2504 = !DILocation(line: 102, column: 13, scope: !1247, inlinedAt: !2496)
!2505 = !DILocation(line: 103, column: 62, scope: !1265, inlinedAt: !2496)
!2506 = !DILocation(line: 103, column: 25, scope: !1265, inlinedAt: !2496)
!2507 = !DILocation(line: 103, column: 23, scope: !1265, inlinedAt: !2496)
!2508 = !DILocation(line: 104, column: 27, scope: !1269, inlinedAt: !2496)
!2509 = !DILocation(line: 104, column: 17, scope: !1265, inlinedAt: !2496)
!2510 = !DILocation(line: 105, column: 27, scope: !1272, inlinedAt: !2496)
!2511 = !DILocation(line: 108, column: 17, scope: !1272, inlinedAt: !2496)
!2512 = !DILocation(line: 110, column: 65, scope: !1265, inlinedAt: !2496)
!2513 = !DILocation(line: 110, column: 60, scope: !1265, inlinedAt: !2496)
!2514 = !DILocation(line: 110, column: 13, scope: !1265, inlinedAt: !2496)
!2515 = !DILocation(line: 111, column: 9, scope: !1265, inlinedAt: !2496)
!2516 = !DILocation(line: 112, column: 43, scope: !1245, inlinedAt: !2496)
!2517 = !DILocation(line: 112, column: 79, scope: !1245, inlinedAt: !2496)
!2518 = !DILocation(line: 112, column: 31, scope: !1245, inlinedAt: !2496)
!2519 = !DILocation(line: 113, column: 26, scope: !1286, inlinedAt: !2496)
!2520 = !DILocation(line: 113, column: 17, scope: !1245, inlinedAt: !2496)
!2521 = !DILocation(line: 112, column: 20, scope: !1245, inlinedAt: !2496)
!2522 = !DILocation(line: 118, column: 23, scope: !1245, inlinedAt: !2496)
!2523 = !DILocation(line: 120, column: 22, scope: !1247, inlinedAt: !2496)
!2524 = !DILocation(line: 122, column: 19, scope: !1239, inlinedAt: !2496)
!2525 = !DILocation(line: 121, column: 5, scope: !1247, inlinedAt: !2496)
!2526 = !DILocation(line: 0, scope: !2494)
!2527 = !DILocation(line: 125, column: 1, scope: !1239, inlinedAt: !2496)
!2528 = !DILocation(line: 1422, column: 13, scope: !2471)
!2529 = !DILocation(line: 122, column: 9, scope: !1239, inlinedAt: !2496)
!2530 = !DILocation(line: 122, column: 5, scope: !1239, inlinedAt: !2496)
!2531 = !DILocation(line: 122, column: 26, scope: !1239, inlinedAt: !2496)
!2532 = !DILocation(line: 123, column: 14, scope: !1239, inlinedAt: !2496)
!2533 = !DILocation(line: 1421, column: 19, scope: !2471)
!2534 = !DILocation(line: 1423, column: 9, scope: !2471)
!2535 = !DILocation(line: 1426, column: 1, scope: !2465)
!2536 = distinct !DISubprogram(name: "raxIteratorPrevStep", scope: !3, file: !3, line: 1431, type: !2187, isLocal: false, isDefinition: true, scopeLine: 1431, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2537)
!2537 = !{!2538, !2539, !2540, !2541, !2542, !2543, !2545, !2546, !2547, !2550}
!2538 = !DILocalVariable(name: "it", arg: 1, scope: !2536, file: !3, line: 1431, type: !2066)
!2539 = !DILocalVariable(name: "noup", arg: 2, scope: !2536, file: !3, line: 1431, type: !31)
!2540 = !DILocalVariable(name: "orig_key_len", scope: !2536, file: !3, line: 1441, type: !56)
!2541 = !DILocalVariable(name: "orig_stack_items", scope: !2536, file: !3, line: 1442, type: !56)
!2542 = !DILocalVariable(name: "orig_node", scope: !2536, file: !3, line: 1443, type: !13)
!2543 = !DILocalVariable(name: "old_noup", scope: !2544, file: !3, line: 1446, type: !31)
!2544 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 1445, column: 14)
!2545 = !DILocalVariable(name: "prevchild", scope: !2544, file: !3, line: 1457, type: !11)
!2546 = !DILocalVariable(name: "todel", scope: !2544, file: !3, line: 1466, type: !31)
!2547 = !DILocalVariable(name: "cp", scope: !2548, file: !3, line: 1472, type: !12)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 1471, column: 72)
!2549 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 1471, column: 13)
!2550 = !DILocalVariable(name: "i", scope: !2548, file: !3, line: 1473, type: !31)
!2551 = !DILocation(line: 1431, column: 38, scope: !2536)
!2552 = !DILocation(line: 1431, column: 46, scope: !2536)
!2553 = !DILocation(line: 1432, column: 13, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 1432, column: 9)
!2555 = !DILocation(line: 1432, column: 19, scope: !2554)
!2556 = !DILocation(line: 1432, column: 9, scope: !2536)
!2557 = !DILocation(line: 1434, column: 26, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 1434, column: 16)
!2559 = !DILocation(line: 1434, column: 16, scope: !2554)
!2560 = !DILocation(line: 1435, column: 19, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 1434, column: 50)
!2562 = !DILocation(line: 1436, column: 9, scope: !2561)
!2563 = !DILocation(line: 1441, column: 31, scope: !2536)
!2564 = !DILocation(line: 1441, column: 12, scope: !2536)
!2565 = !DILocation(line: 1442, column: 35, scope: !2536)
!2566 = !DILocation(line: 1442, column: 41, scope: !2536)
!2567 = !DILocation(line: 1442, column: 12, scope: !2536)
!2568 = !DILocation(line: 1443, column: 30, scope: !2536)
!2569 = !DILocation(line: 1443, column: 14, scope: !2536)
!2570 = !DILocation(line: 1445, column: 5, scope: !2536)
!2571 = !DILocation(line: 1449, column: 19, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 1449, column: 13)
!2573 = !DILocation(line: 1457, column: 39, scope: !2544)
!2574 = !DILocation(line: 1457, column: 47, scope: !2544)
!2575 = !DILocation(line: 1457, column: 54, scope: !2544)
!2576 = !DILocation(line: 1457, column: 35, scope: !2544)
!2577 = !DILocation(line: 1457, column: 23, scope: !2544)
!2578 = !DILocation(line: 1458, column: 13, scope: !2544)
!2579 = !DILocation(line: 1449, column: 38, scope: !2572)
!2580 = !DILocation(line: 1449, column: 42, scope: !2572)
!2581 = !DILocation(line: 1449, column: 31, scope: !2572)
!2582 = !DILocation(line: 1449, column: 13, scope: !2544)
!2583 = !DILocation(line: 1450, column: 23, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 1449, column: 48)
!2585 = !DILocation(line: 1451, column: 29, scope: !2584)
!2586 = !DILocation(line: 1452, column: 25, scope: !2584)
!2587 = !DILocation(line: 1453, column: 22, scope: !2584)
!2588 = !DILocation(line: 1454, column: 13, scope: !2584)
!2589 = !DILocation(line: 129, column: 43, scope: !1465, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 1459, column: 24, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 1458, column: 20)
!2592 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 1458, column: 13)
!2593 = !DILocation(line: 130, column: 13, scope: !1472, inlinedAt: !2590)
!2594 = !DILocation(line: 130, column: 19, scope: !1472, inlinedAt: !2590)
!2595 = !DILocation(line: 130, column: 9, scope: !1465, inlinedAt: !2590)
!2596 = !DILocation(line: 131, column: 14, scope: !1465, inlinedAt: !2590)
!2597 = !DILocation(line: 132, column: 16, scope: !1465, inlinedAt: !2590)
!2598 = !DILocation(line: 132, column: 12, scope: !1465, inlinedAt: !2590)
!2599 = !DILocation(line: 132, column: 5, scope: !1465, inlinedAt: !2590)
!2600 = !DILocation(line: 0, scope: !1465, inlinedAt: !2590)
!2601 = !DILocation(line: 133, column: 1, scope: !1465, inlinedAt: !2590)
!2602 = !DILocation(line: 1459, column: 22, scope: !2591)
!2603 = !DILocation(line: 1460, column: 9, scope: !2591)
!2604 = !DILocation(line: 1466, column: 25, scope: !2544)
!2605 = !DILocation(line: 1466, column: 31, scope: !2544)
!2606 = !DILocation(line: 1466, column: 21, scope: !2544)
!2607 = !DILocation(line: 1466, column: 51, scope: !2544)
!2608 = !DILocation(line: 1466, column: 13, scope: !2544)
!2609 = !DILocation(line: 1467, column: 32, scope: !2544)
!2610 = !DILocation(line: 1293, column: 39, scope: !2175, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 1467, column: 9, scope: !2544)
!2612 = !DILocation(line: 1293, column: 50, scope: !2175, inlinedAt: !2611)
!2613 = !DILocation(line: 1294, column: 17, scope: !2175, inlinedAt: !2611)
!2614 = !DILocation(line: 1295, column: 1, scope: !2175, inlinedAt: !2611)
!2615 = !DILocation(line: 1471, column: 24, scope: !2549)
!2616 = !DILocation(line: 1471, column: 14, scope: !2549)
!2617 = !DILocation(line: 1471, column: 32, scope: !2549)
!2618 = !DILocation(line: 1471, column: 45, scope: !2549)
!2619 = !DILocation(line: 1471, column: 53, scope: !2549)
!2620 = !DILocation(line: 1471, column: 50, scope: !2549)
!2621 = !DILocation(line: 1471, column: 13, scope: !2544)
!2622 = !DILocation(line: 1472, column: 28, scope: !2548)
!2623 = !DILocation(line: 1473, column: 17, scope: !2548)
!2624 = !DILocation(line: 1474, column: 22, scope: !2548)
!2625 = !DILocation(line: 1474, column: 13, scope: !2548)
!2626 = !DILocation(line: 1472, column: 23, scope: !2548)
!2627 = !DILocation(line: 1476, column: 21, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 1476, column: 21)
!2629 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 1474, column: 28)
!2630 = !DILocation(line: 1476, column: 39, scope: !2628)
!2631 = !DILocation(line: 1476, column: 21, scope: !2629)
!2632 = !DILocation(line: 1478, column: 19, scope: !2629)
!2633 = !DILocation(line: 0, scope: !2629)
!2634 = distinct !{!2634, !2625, !2635}
!2635 = !DILocation(line: 1479, column: 13, scope: !2548)
!2636 = !DILocation(line: 1483, column: 19, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 1483, column: 17)
!2638 = !DILocation(line: 1483, column: 17, scope: !2548)
!2639 = !DILocation(line: 1486, column: 59, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 1486, column: 21)
!2641 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 1483, column: 26)
!2642 = !DILocation(line: 1486, column: 22, scope: !2640)
!2643 = !DILocation(line: 1486, column: 21, scope: !2641)
!2644 = !DILocation(line: 1487, column: 50, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 1487, column: 21)
!2646 = !DILocation(line: 100, column: 42, scope: !1239, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 1487, column: 22, scope: !2645)
!2648 = !DILocation(line: 100, column: 52, scope: !1239, inlinedAt: !2647)
!2649 = !DILocation(line: 101, column: 13, scope: !1248, inlinedAt: !2647)
!2650 = !DILocation(line: 101, column: 26, scope: !1248, inlinedAt: !2647)
!2651 = !DILocation(line: 101, column: 19, scope: !1248, inlinedAt: !2647)
!2652 = !DILocation(line: 101, column: 9, scope: !1239, inlinedAt: !2647)
!2653 = !DILocation(line: 102, column: 17, scope: !1246, inlinedAt: !2647)
!2654 = !DILocation(line: 102, column: 23, scope: !1246, inlinedAt: !2647)
!2655 = !DILocation(line: 102, column: 13, scope: !1247, inlinedAt: !2647)
!2656 = !DILocation(line: 103, column: 62, scope: !1265, inlinedAt: !2647)
!2657 = !DILocation(line: 103, column: 25, scope: !1265, inlinedAt: !2647)
!2658 = !DILocation(line: 103, column: 23, scope: !1265, inlinedAt: !2647)
!2659 = !DILocation(line: 104, column: 27, scope: !1269, inlinedAt: !2647)
!2660 = !DILocation(line: 104, column: 17, scope: !1265, inlinedAt: !2647)
!2661 = !DILocation(line: 105, column: 27, scope: !1272, inlinedAt: !2647)
!2662 = !DILocation(line: 108, column: 17, scope: !1272, inlinedAt: !2647)
!2663 = !DILocation(line: 110, column: 65, scope: !1265, inlinedAt: !2647)
!2664 = !DILocation(line: 110, column: 60, scope: !1265, inlinedAt: !2647)
!2665 = !DILocation(line: 110, column: 13, scope: !1265, inlinedAt: !2647)
!2666 = !DILocation(line: 111, column: 9, scope: !1265, inlinedAt: !2647)
!2667 = !DILocation(line: 112, column: 43, scope: !1245, inlinedAt: !2647)
!2668 = !DILocation(line: 112, column: 79, scope: !1245, inlinedAt: !2647)
!2669 = !DILocation(line: 112, column: 31, scope: !1245, inlinedAt: !2647)
!2670 = !DILocation(line: 113, column: 26, scope: !1286, inlinedAt: !2647)
!2671 = !DILocation(line: 113, column: 17, scope: !1245, inlinedAt: !2647)
!2672 = !DILocation(line: 112, column: 20, scope: !1245, inlinedAt: !2647)
!2673 = !DILocation(line: 118, column: 23, scope: !1245, inlinedAt: !2647)
!2674 = !DILocation(line: 120, column: 22, scope: !1247, inlinedAt: !2647)
!2675 = !DILocation(line: 122, column: 19, scope: !1239, inlinedAt: !2647)
!2676 = !DILocation(line: 121, column: 5, scope: !1247, inlinedAt: !2647)
!2677 = !DILocation(line: 0, scope: !2645)
!2678 = !DILocation(line: 125, column: 1, scope: !1239, inlinedAt: !2647)
!2679 = !DILocation(line: 1487, column: 21, scope: !2641)
!2680 = !DILocation(line: 122, column: 9, scope: !1239, inlinedAt: !2647)
!2681 = !DILocation(line: 122, column: 5, scope: !1239, inlinedAt: !2647)
!2682 = !DILocation(line: 122, column: 26, scope: !1239, inlinedAt: !2647)
!2683 = !DILocation(line: 123, column: 14, scope: !1239, inlinedAt: !2647)
!2684 = !DILocation(line: 1488, column: 34, scope: !2641)
!2685 = !DILocation(line: 1488, column: 17, scope: !2641)
!2686 = !DILocation(line: 1490, column: 22, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 1490, column: 21)
!2688 = !DILocation(line: 1490, column: 21, scope: !2641)
!2689 = !DILocation(line: 1497, column: 17, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 1497, column: 13)
!2691 = !DILocation(line: 1497, column: 23, scope: !2690)
!2692 = !DILocation(line: 1497, column: 13, scope: !2690)
!2693 = !DILocation(line: 1497, column: 13, scope: !2544)
!2694 = !DILocation(line: 237, column: 27, scope: !182, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 1498, column: 24, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2690, file: !3, line: 1497, column: 30)
!2697 = !DILocation(line: 238, column: 12, scope: !191, inlinedAt: !2695)
!2698 = !DILocation(line: 238, column: 9, scope: !191, inlinedAt: !2695)
!2699 = !DILocation(line: 238, column: 9, scope: !182, inlinedAt: !2695)
!2700 = !DILocation(line: 239, column: 28, scope: !182, inlinedAt: !2695)
!2701 = !DILocation(line: 239, column: 37, scope: !182, inlinedAt: !2695)
!2702 = !DILocation(line: 239, column: 36, scope: !182, inlinedAt: !2695)
!2703 = !DILocation(line: 239, column: 60, scope: !182, inlinedAt: !2695)
!2704 = !DILocation(line: 239, column: 12, scope: !182, inlinedAt: !2695)
!2705 = !DILocation(line: 240, column: 5, scope: !182, inlinedAt: !2695)
!2706 = !DILocation(line: 241, column: 5, scope: !182, inlinedAt: !2695)
!2707 = !DILocation(line: 242, column: 12, scope: !182, inlinedAt: !2695)
!2708 = !DILocation(line: 240, column: 11, scope: !182, inlinedAt: !2695)
!2709 = !DILocation(line: 243, column: 1, scope: !182, inlinedAt: !2695)
!2710 = !DILocation(line: 0, scope: !182, inlinedAt: !2695)
!2711 = !DILocation(line: 1498, column: 17, scope: !2696)
!2712 = !DILocation(line: 1498, column: 22, scope: !2696)
!2713 = !DILocation(line: 1499, column: 13, scope: !2696)
!2714 = !DILocation(line: 0, scope: !2696)
!2715 = !DILocation(line: 1502, column: 1, scope: !2536)
!2716 = distinct !DISubprogram(name: "raxSeek", scope: !3, file: !3, line: 1508, type: !2717, isLocal: false, isDefinition: true, scopeLine: 1508, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2721)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!31, !2066, !2719, !10, !56}
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!2721 = !{!2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2738, !2741, !2742, !2745, !2746, !2748, !2752}
!2722 = !DILocalVariable(name: "it", arg: 1, scope: !2716, file: !3, line: 1508, type: !2066)
!2723 = !DILocalVariable(name: "op", arg: 2, scope: !2716, file: !3, line: 1508, type: !2719)
!2724 = !DILocalVariable(name: "ele", arg: 3, scope: !2716, file: !3, line: 1508, type: !10)
!2725 = !DILocalVariable(name: "len", arg: 4, scope: !2716, file: !3, line: 1508, type: !56)
!2726 = !DILocalVariable(name: "eq", scope: !2716, file: !3, line: 1509, type: !31)
!2727 = !DILocalVariable(name: "lt", scope: !2716, file: !3, line: 1509, type: !31)
!2728 = !DILocalVariable(name: "gt", scope: !2716, file: !3, line: 1509, type: !31)
!2729 = !DILocalVariable(name: "first", scope: !2716, file: !3, line: 1509, type: !31)
!2730 = !DILocalVariable(name: "last", scope: !2716, file: !3, line: 1509, type: !31)
!2731 = !DILocalVariable(name: "splitpos", scope: !2716, file: !3, line: 1561, type: !31)
!2732 = !DILocalVariable(name: "i", scope: !2716, file: !3, line: 1562, type: !56)
!2733 = !DILocalVariable(name: "j", scope: !2734, file: !3, line: 1581, type: !56)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 1581, column: 9)
!2735 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1574, column: 26)
!2736 = distinct !DILexicalBlock(scope: !2737, file: !3, line: 1574, column: 16)
!2737 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 1567, column: 9)
!2738 = !DILocalVariable(name: "parent", scope: !2739, file: !3, line: 1582, type: !13)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !3, line: 1581, column: 54)
!2740 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 1581, column: 9)
!2741 = !DILocalVariable(name: "child", scope: !2739, file: !3, line: 1583, type: !13)
!2742 = !DILocalVariable(name: "cp", scope: !2743, file: !3, line: 1588, type: !12)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 1587, column: 20)
!2744 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 1584, column: 17)
!2745 = !DILocalVariable(name: "p", scope: !2743, file: !3, line: 1589, type: !10)
!2746 = !DILocalVariable(name: "aux", scope: !2747, file: !3, line: 1591, type: !13)
!2747 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 1590, column: 26)
!2748 = !DILocalVariable(name: "nodechar", scope: !2749, file: !3, line: 1624, type: !31)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 1620, column: 51)
!2750 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 1620, column: 20)
!2751 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 1606, column: 13)
!2752 = !DILocalVariable(name: "keychar", scope: !2749, file: !3, line: 1625, type: !31)
!2753 = !DILocation(line: 1508, column: 26, scope: !2716)
!2754 = !DILocation(line: 1508, column: 42, scope: !2716)
!2755 = !DILocation(line: 1508, column: 61, scope: !2716)
!2756 = !DILocation(line: 1508, column: 73, scope: !2716)
!2757 = !DILocation(line: 1509, column: 9, scope: !2716)
!2758 = !DILocation(line: 1509, column: 17, scope: !2716)
!2759 = !DILocation(line: 1509, column: 25, scope: !2716)
!2760 = !DILocation(line: 1509, column: 33, scope: !2716)
!2761 = !DILocation(line: 1509, column: 44, scope: !2716)
!2762 = !DILocation(line: 1511, column: 9, scope: !2716)
!2763 = !DILocation(line: 1511, column: 15, scope: !2716)
!2764 = !DILocation(line: 1511, column: 21, scope: !2716)
!2765 = !DILocation(line: 1512, column: 9, scope: !2716)
!2766 = !DILocation(line: 1512, column: 15, scope: !2716)
!2767 = !DILocation(line: 1513, column: 15, scope: !2716)
!2768 = !DILocation(line: 1514, column: 9, scope: !2716)
!2769 = !DILocation(line: 1514, column: 17, scope: !2716)
!2770 = !DILocation(line: 1515, column: 9, scope: !2716)
!2771 = !DILocation(line: 1515, column: 14, scope: !2716)
!2772 = !DILocation(line: 1518, column: 9, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 1518, column: 9)
!2774 = !DILocation(line: 1518, column: 9, scope: !2716)
!2775 = !DILocation(line: 1520, column: 13, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 1520, column: 13)
!2777 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 1518, column: 23)
!2778 = !DILocation(line: 1520, column: 19, scope: !2776)
!2779 = !DILocation(line: 1520, column: 13, scope: !2777)
!2780 = !DILocation(line: 1523, column: 13, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 1523, column: 13)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 1521, column: 30)
!2783 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 1521, column: 16)
!2784 = !DILocation(line: 1523, column: 19, scope: !2781)
!2785 = !DILocation(line: 1523, column: 13, scope: !2782)
!2786 = !DILocation(line: 1528, column: 5, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 1526, column: 30)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 1526, column: 16)
!2789 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 1524, column: 16)
!2790 = !DILocation(line: 1531, column: 9, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 1530, column: 12)
!2792 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 1528, column: 16)
!2793 = !DILocation(line: 1531, column: 15, scope: !2791)
!2794 = !DILocation(line: 1532, column: 9, scope: !2791)
!2795 = !DILocation(line: 0, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 1528, column: 30)
!2797 = !DILocation(line: 0, scope: !2716)
!2798 = !DILocation(line: 1537, column: 13, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 1537, column: 9)
!2800 = !DILocation(line: 1537, column: 17, scope: !2799)
!2801 = !DILocation(line: 1537, column: 24, scope: !2799)
!2802 = !DILocation(line: 1537, column: 9, scope: !2716)
!2803 = !DILocation(line: 1538, column: 19, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 1537, column: 30)
!2805 = !DILocation(line: 1539, column: 9, scope: !2804)
!2806 = !DILocation(line: 1542, column: 9, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 1542, column: 9)
!2808 = !DILocation(line: 1542, column: 9, scope: !2716)
!2809 = !DILocation(line: 1545, column: 16, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 1542, column: 16)
!2811 = !DILocation(line: 1545, column: 9, scope: !2810)
!2812 = !DILocation(line: 1548, column: 9, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 1548, column: 9)
!2814 = !DILocation(line: 1548, column: 9, scope: !2716)
!2815 = !DILocation(line: 1551, column: 28, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2813, file: !3, line: 1548, column: 15)
!2817 = !DILocation(line: 1551, column: 18, scope: !2816)
!2818 = !DILocation(line: 1552, column: 14, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 1552, column: 13)
!2820 = !DILocation(line: 1552, column: 13, scope: !2816)
!2821 = !DILocation(line: 1553, column: 9, scope: !2816)
!2822 = !DILocation(line: 237, column: 27, scope: !182, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 1554, column: 20, scope: !2816)
!2824 = !DILocation(line: 238, column: 12, scope: !191, inlinedAt: !2823)
!2825 = !DILocation(line: 238, column: 9, scope: !191, inlinedAt: !2823)
!2826 = !DILocation(line: 238, column: 9, scope: !182, inlinedAt: !2823)
!2827 = !DILocation(line: 239, column: 28, scope: !182, inlinedAt: !2823)
!2828 = !DILocation(line: 239, column: 37, scope: !182, inlinedAt: !2823)
!2829 = !DILocation(line: 239, column: 36, scope: !182, inlinedAt: !2823)
!2830 = !DILocation(line: 239, column: 60, scope: !182, inlinedAt: !2823)
!2831 = !DILocation(line: 239, column: 12, scope: !182, inlinedAt: !2823)
!2832 = !DILocation(line: 240, column: 5, scope: !182, inlinedAt: !2823)
!2833 = !DILocation(line: 241, column: 5, scope: !182, inlinedAt: !2823)
!2834 = !DILocation(line: 242, column: 12, scope: !182, inlinedAt: !2823)
!2835 = !DILocation(line: 240, column: 11, scope: !182, inlinedAt: !2823)
!2836 = !DILocation(line: 243, column: 1, scope: !182, inlinedAt: !2823)
!2837 = !DILocation(line: 0, scope: !182, inlinedAt: !2823)
!2838 = !DILocation(line: 1554, column: 13, scope: !2816)
!2839 = !DILocation(line: 1554, column: 18, scope: !2816)
!2840 = !DILocation(line: 1555, column: 9, scope: !2816)
!2841 = !DILocation(line: 1561, column: 5, scope: !2716)
!2842 = !DILocation(line: 1561, column: 9, scope: !2716)
!2843 = !DILocation(line: 1562, column: 16, scope: !2716)
!2844 = !DILocation(line: 1562, column: 12, scope: !2716)
!2845 = !DILocation(line: 1565, column: 19, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 1565, column: 9)
!2847 = !{!2095, !49, i64 464}
!2848 = !DILocation(line: 1565, column: 9, scope: !2846)
!2849 = !DILocation(line: 1565, column: 9, scope: !2716)
!2850 = !DILocation(line: 1567, column: 17, scope: !2737)
!2851 = !DILocation(line: 1567, column: 12, scope: !2737)
!2852 = !DILocation(line: 1567, column: 33, scope: !2737)
!2853 = !DILocation(line: 1567, column: 39, scope: !2737)
!2854 = !DILocation(line: 1567, column: 29, scope: !2737)
!2855 = !DILocation(line: 1567, column: 50, scope: !2737)
!2856 = !DILocation(line: 1567, column: 59, scope: !2737)
!2857 = !DILocation(line: 1567, column: 47, scope: !2737)
!2858 = !DILocation(line: 1568, column: 19, scope: !2737)
!2859 = !DILocation(line: 1568, column: 9, scope: !2737)
!2860 = !DILocation(line: 1572, column: 14, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 1572, column: 13)
!2862 = distinct !DILexicalBlock(scope: !2737, file: !3, line: 1569, column: 5)
!2863 = !DILocation(line: 1572, column: 13, scope: !2862)
!2864 = !DILocation(line: 1573, column: 35, scope: !2862)
!2865 = !DILocation(line: 237, column: 27, scope: !182, inlinedAt: !2866)
!2866 = distinct !DILocation(line: 1573, column: 20, scope: !2862)
!2867 = !DILocation(line: 238, column: 12, scope: !191, inlinedAt: !2866)
!2868 = !DILocation(line: 238, column: 9, scope: !191, inlinedAt: !2866)
!2869 = !DILocation(line: 238, column: 9, scope: !182, inlinedAt: !2866)
!2870 = !DILocation(line: 239, column: 28, scope: !182, inlinedAt: !2866)
!2871 = !DILocation(line: 239, column: 37, scope: !182, inlinedAt: !2866)
!2872 = !DILocation(line: 239, column: 36, scope: !182, inlinedAt: !2866)
!2873 = !DILocation(line: 239, column: 60, scope: !182, inlinedAt: !2866)
!2874 = !DILocation(line: 239, column: 12, scope: !182, inlinedAt: !2866)
!2875 = !DILocation(line: 240, column: 5, scope: !182, inlinedAt: !2866)
!2876 = !DILocation(line: 241, column: 5, scope: !182, inlinedAt: !2866)
!2877 = !DILocation(line: 242, column: 12, scope: !182, inlinedAt: !2866)
!2878 = !DILocation(line: 240, column: 11, scope: !182, inlinedAt: !2866)
!2879 = !DILocation(line: 243, column: 1, scope: !182, inlinedAt: !2866)
!2880 = !DILocation(line: 0, scope: !182, inlinedAt: !2866)
!2881 = !DILocation(line: 1573, column: 13, scope: !2862)
!2882 = !DILocation(line: 1573, column: 18, scope: !2862)
!2883 = !DILocation(line: 1574, column: 5, scope: !2862)
!2884 = !DILocation(line: 1574, column: 16, scope: !2736)
!2885 = !DILocation(line: 1574, column: 22, scope: !2736)
!2886 = !DILocation(line: 1574, column: 19, scope: !2736)
!2887 = !DILocation(line: 1580, column: 42, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 1580, column: 13)
!2889 = !DILocation(line: 100, column: 42, scope: !1239, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 1580, column: 14, scope: !2888)
!2891 = !DILocation(line: 100, column: 52, scope: !1239, inlinedAt: !2890)
!2892 = !DILocation(line: 101, column: 13, scope: !1248, inlinedAt: !2890)
!2893 = !DILocation(line: 101, column: 26, scope: !1248, inlinedAt: !2890)
!2894 = !DILocation(line: 101, column: 19, scope: !1248, inlinedAt: !2890)
!2895 = !DILocation(line: 0, scope: !1239, inlinedAt: !2890)
!2896 = !DILocation(line: 101, column: 9, scope: !1239, inlinedAt: !2890)
!2897 = !DILocation(line: 102, column: 17, scope: !1246, inlinedAt: !2890)
!2898 = !DILocation(line: 102, column: 26, scope: !1246, inlinedAt: !2890)
!2899 = !DILocation(line: 102, column: 23, scope: !1246, inlinedAt: !2890)
!2900 = !DILocation(line: 102, column: 13, scope: !1247, inlinedAt: !2890)
!2901 = !DILocation(line: 103, column: 62, scope: !1265, inlinedAt: !2890)
!2902 = !DILocation(line: 103, column: 25, scope: !1265, inlinedAt: !2890)
!2903 = !DILocation(line: 103, column: 23, scope: !1265, inlinedAt: !2890)
!2904 = !DILocation(line: 104, column: 27, scope: !1269, inlinedAt: !2890)
!2905 = !DILocation(line: 104, column: 17, scope: !1265, inlinedAt: !2890)
!2906 = !DILocation(line: 105, column: 27, scope: !1272, inlinedAt: !2890)
!2907 = !DILocation(line: 108, column: 17, scope: !1272, inlinedAt: !2890)
!2908 = !DILocation(line: 110, column: 30, scope: !1265, inlinedAt: !2890)
!2909 = !DILocation(line: 110, column: 65, scope: !1265, inlinedAt: !2890)
!2910 = !DILocation(line: 110, column: 60, scope: !1265, inlinedAt: !2890)
!2911 = !DILocation(line: 110, column: 13, scope: !1265, inlinedAt: !2890)
!2912 = !DILocation(line: 111, column: 9, scope: !1265, inlinedAt: !2890)
!2913 = !DILocation(line: 112, column: 43, scope: !1245, inlinedAt: !2890)
!2914 = !DILocation(line: 112, column: 79, scope: !1245, inlinedAt: !2890)
!2915 = !DILocation(line: 112, column: 31, scope: !1245, inlinedAt: !2890)
!2916 = !DILocation(line: 113, column: 26, scope: !1286, inlinedAt: !2890)
!2917 = !DILocation(line: 113, column: 17, scope: !1245, inlinedAt: !2890)
!2918 = !DILocation(line: 112, column: 20, scope: !1245, inlinedAt: !2890)
!2919 = !DILocation(line: 118, column: 23, scope: !1245, inlinedAt: !2890)
!2920 = !DILocation(line: 120, column: 22, scope: !1247, inlinedAt: !2890)
!2921 = !DILocation(line: 122, column: 19, scope: !1239, inlinedAt: !2890)
!2922 = !DILocation(line: 121, column: 5, scope: !1247, inlinedAt: !2890)
!2923 = !DILocation(line: 0, scope: !2888)
!2924 = !DILocation(line: 125, column: 1, scope: !1239, inlinedAt: !2890)
!2925 = !DILocation(line: 1580, column: 13, scope: !2735)
!2926 = !DILocation(line: 122, column: 9, scope: !1239, inlinedAt: !2890)
!2927 = !DILocation(line: 122, column: 5, scope: !1239, inlinedAt: !2890)
!2928 = !DILocation(line: 122, column: 26, scope: !1239, inlinedAt: !2890)
!2929 = !DILocation(line: 123, column: 14, scope: !1239, inlinedAt: !2890)
!2930 = !DILocation(line: 1581, column: 21, scope: !2734)
!2931 = !DILocation(line: 1581, column: 30, scope: !2740)
!2932 = !DILocation(line: 1581, column: 9, scope: !2734)
!2933 = !DILocation(line: 1582, column: 41, scope: !2739)
!2934 = !{!2095, !123, i64 184}
!2935 = !DILocation(line: 1582, column: 48, scope: !2739)
!2936 = !DILocation(line: 1582, column: 31, scope: !2739)
!2937 = !DILocation(line: 1582, column: 22, scope: !2739)
!2938 = !DILocation(line: 1583, column: 30, scope: !2739)
!2939 = !DILocation(line: 1583, column: 22, scope: !2739)
!2940 = !DILocation(line: 1584, column: 25, scope: !2744)
!2941 = !DILocation(line: 1584, column: 17, scope: !2744)
!2942 = !DILocation(line: 0, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 1585, column: 21)
!2944 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 1584, column: 34)
!2945 = !DILocation(line: 1584, column: 17, scope: !2739)
!2946 = !DILocation(line: 1585, column: 22, scope: !2943)
!2947 = !DILocation(line: 1585, column: 21, scope: !2944)
!2948 = !DILocation(line: 1588, column: 32, scope: !2743)
!2949 = !DILocation(line: 1588, column: 27, scope: !2743)
!2950 = !DILocation(line: 1589, column: 32, scope: !2743)
!2951 = !DILocation(line: 1590, column: 17, scope: !2743)
!2952 = !DILocation(line: 1591, column: 21, scope: !2747)
!2953 = !DILocation(line: 1592, column: 33, scope: !2747)
!2954 = !DILocation(line: 1592, column: 21, scope: !2747)
!2955 = !DILocation(line: 1593, column: 25, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 1593, column: 25)
!2957 = !DILocation(line: 1591, column: 30, scope: !2747)
!2958 = !DILocation(line: 1593, column: 29, scope: !2956)
!2959 = !DILocation(line: 1594, column: 23, scope: !2747)
!2960 = !DILocation(line: 1595, column: 22, scope: !2747)
!2961 = !DILocation(line: 1596, column: 17, scope: !2743)
!2962 = distinct !{!2962, !2951, !2961}
!2963 = !DILocation(line: 1597, column: 22, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 1597, column: 21)
!2965 = !DILocation(line: 1581, column: 50, scope: !2740)
!2966 = !DILocation(line: 1581, column: 42, scope: !2740)
!2967 = distinct !{!2967, !2932, !2968}
!2968 = !DILocation(line: 1599, column: 9, scope: !2734)
!2969 = !DILocation(line: 130, column: 13, scope: !1472, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 1600, column: 9, scope: !2735)
!2971 = !DILocation(line: 129, column: 43, scope: !1465, inlinedAt: !2970)
!2972 = !DILocation(line: 130, column: 19, scope: !1472, inlinedAt: !2970)
!2973 = !DILocation(line: 130, column: 9, scope: !1465, inlinedAt: !2970)
!2974 = !DILocation(line: 131, column: 14, scope: !1465, inlinedAt: !2970)
!2975 = !DILocation(line: 132, column: 5, scope: !1465, inlinedAt: !2970)
!2976 = !DILocation(line: 133, column: 1, scope: !1465, inlinedAt: !2970)
!2977 = !DILocation(line: 0, scope: !2751)
!2978 = !DILocation(line: 1606, column: 22, scope: !2751)
!2979 = !DILocation(line: 1606, column: 36, scope: !2751)
!2980 = !DILocation(line: 1606, column: 26, scope: !2751)
!2981 = !DILocation(line: 1606, column: 13, scope: !2735)
!2982 = !DILocation(line: 1612, column: 44, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 1612, column: 17)
!2984 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 1606, column: 45)
!2985 = !DILocation(line: 1612, column: 18, scope: !2983)
!2986 = !DILocation(line: 1612, column: 17, scope: !2984)
!2987 = !DILocation(line: 1616, column: 23, scope: !2984)
!2988 = !DILocation(line: 1617, column: 20, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 1617, column: 17)
!2990 = !DILocation(line: 1617, column: 24, scope: !2989)
!2991 = !DILocation(line: 1617, column: 17, scope: !2984)
!2992 = !DILocation(line: 1618, column: 20, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 1618, column: 17)
!2994 = !DILocation(line: 1618, column: 24, scope: !2993)
!2995 = !DILocation(line: 1618, column: 17, scope: !2984)
!2996 = !DILocation(line: 1619, column: 23, scope: !2984)
!2997 = !DILocation(line: 1620, column: 9, scope: !2984)
!2998 = !DILocation(line: 1624, column: 43, scope: !2749)
!2999 = !DILocation(line: 1624, column: 28, scope: !2749)
!3000 = !DILocation(line: 1625, column: 27, scope: !2749)
!3001 = !DILocation(line: 1626, column: 23, scope: !2749)
!3002 = !DILocation(line: 1627, column: 17, scope: !2749)
!3003 = !DILocation(line: 1631, column: 30, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 1631, column: 21)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 1627, column: 21)
!3006 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 1627, column: 17)
!3007 = !DILocation(line: 1631, column: 21, scope: !3005)
!3008 = !DILocation(line: 1632, column: 26, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 1632, column: 25)
!3010 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 1631, column: 41)
!3011 = !DILocation(line: 1632, column: 25, scope: !3010)
!3012 = !DILocation(line: 1634, column: 49, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3014, file: !3, line: 1634, column: 25)
!3014 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 1633, column: 24)
!3015 = !DILocation(line: 1634, column: 74, scope: !3013)
!3016 = !DILocation(line: 1634, column: 64, scope: !3013)
!3017 = !DILocation(line: 1634, column: 26, scope: !3013)
!3018 = !DILocation(line: 1634, column: 25, scope: !3014)
!3019 = !DILocation(line: 1636, column: 26, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3014, file: !3, line: 1636, column: 25)
!3021 = !DILocation(line: 1636, column: 25, scope: !3014)
!3022 = !DILocation(line: 1639, column: 17, scope: !2749)
!3023 = !DILocation(line: 1644, column: 30, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 1644, column: 21)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 1639, column: 21)
!3026 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 1639, column: 17)
!3027 = !DILocation(line: 1644, column: 21, scope: !3025)
!3028 = !DILocation(line: 1645, column: 26, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !3, line: 1645, column: 25)
!3030 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1644, column: 41)
!3031 = !DILocation(line: 1645, column: 25, scope: !3030)
!3032 = !DILocation(line: 1646, column: 47, scope: !3030)
!3033 = !DILocation(line: 237, column: 27, scope: !182, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 1646, column: 32, scope: !3030)
!3035 = !DILocation(line: 238, column: 12, scope: !191, inlinedAt: !3034)
!3036 = !DILocation(line: 238, column: 9, scope: !191, inlinedAt: !3034)
!3037 = !DILocation(line: 238, column: 9, scope: !182, inlinedAt: !3034)
!3038 = !DILocation(line: 239, column: 28, scope: !182, inlinedAt: !3034)
!3039 = !DILocation(line: 239, column: 37, scope: !182, inlinedAt: !3034)
!3040 = !DILocation(line: 239, column: 36, scope: !182, inlinedAt: !3034)
!3041 = !DILocation(line: 239, column: 60, scope: !182, inlinedAt: !3034)
!3042 = !DILocation(line: 239, column: 12, scope: !182, inlinedAt: !3034)
!3043 = !DILocation(line: 240, column: 5, scope: !182, inlinedAt: !3034)
!3044 = !DILocation(line: 241, column: 5, scope: !182, inlinedAt: !3034)
!3045 = !DILocation(line: 242, column: 12, scope: !182, inlinedAt: !3034)
!3046 = !DILocation(line: 240, column: 11, scope: !182, inlinedAt: !3034)
!3047 = !DILocation(line: 243, column: 1, scope: !182, inlinedAt: !3034)
!3048 = !DILocation(line: 0, scope: !182, inlinedAt: !3034)
!3049 = !DILocation(line: 1646, column: 25, scope: !3030)
!3050 = !DILocation(line: 1646, column: 30, scope: !3030)
!3051 = !DILocation(line: 1647, column: 17, scope: !3030)
!3052 = !DILocation(line: 1648, column: 53, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 1648, column: 25)
!3054 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1647, column: 24)
!3055 = !DILocation(line: 1648, column: 49, scope: !3053)
!3056 = !DILocation(line: 1648, column: 74, scope: !3053)
!3057 = !DILocation(line: 1648, column: 64, scope: !3053)
!3058 = !DILocation(line: 1648, column: 26, scope: !3053)
!3059 = !DILocation(line: 1648, column: 25, scope: !3054)
!3060 = !DILocation(line: 1650, column: 26, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 1650, column: 25)
!3062 = !DILocation(line: 1650, column: 25, scope: !3054)
!3063 = !DILocation(line: 1653, column: 23, scope: !2749)
!3064 = !DILocation(line: 1662, column: 23, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 1654, column: 16)
!3066 = !DILocation(line: 1663, column: 27, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 1663, column: 17)
!3068 = !DILocation(line: 1663, column: 17, scope: !3067)
!3069 = !DILocation(line: 1663, column: 35, scope: !3067)
!3070 = !DILocation(line: 1663, column: 48, scope: !3067)
!3071 = !DILocation(line: 1663, column: 38, scope: !3067)
!3072 = !DILocation(line: 1663, column: 57, scope: !3067)
!3073 = !DILocation(line: 1663, column: 54, scope: !3067)
!3074 = !DILocation(line: 1677, column: 24, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 1677, column: 21)
!3076 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 1676, column: 20)
!3077 = !DILocation(line: 1677, column: 28, scope: !3075)
!3078 = !DILocation(line: 1677, column: 21, scope: !3076)
!3079 = !DILocation(line: 1678, column: 24, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 1678, column: 21)
!3081 = !DILocation(line: 1678, column: 28, scope: !3080)
!3082 = !DILocation(line: 1678, column: 21, scope: !3076)
!3083 = !DILocation(line: 1680, column: 23, scope: !3065)
!3084 = !DILocation(line: 1684, column: 19, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 1682, column: 12)
!3086 = !DILocation(line: 1685, column: 9, scope: !3085)
!3087 = !DILocation(line: 1688, column: 1, scope: !2716)
!3088 = !DILocation(line: 0, scope: !2791)
!3089 = distinct !DISubprogram(name: "raxNext", scope: !3, file: !3, line: 1693, type: !2466, isLocal: false, isDefinition: true, scopeLine: 1693, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3090)
!3090 = !{!3091}
!3091 = !DILocalVariable(name: "it", arg: 1, scope: !3089, file: !3, line: 1693, type: !2066)
!3092 = !DILocation(line: 1693, column: 26, scope: !3089)
!3093 = !DILocation(line: 1694, column: 10, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 1694, column: 9)
!3095 = !DILocation(line: 1694, column: 9, scope: !3089)
!3096 = !DILocation(line: 1698, column: 13, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3089, file: !3, line: 1698, column: 9)
!3098 = !DILocation(line: 1698, column: 19, scope: !3097)
!3099 = !DILocation(line: 1698, column: 9, scope: !3089)
!3100 = !DILocation(line: 0, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 1694, column: 37)
!3102 = !DILocation(line: 1703, column: 1, scope: !3089)
!3103 = distinct !DISubprogram(name: "raxPrev", scope: !3, file: !3, line: 1708, type: !2466, isLocal: false, isDefinition: true, scopeLine: 1708, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3104)
!3104 = !{!3105}
!3105 = !DILocalVariable(name: "it", arg: 1, scope: !3103, file: !3, line: 1708, type: !2066)
!3106 = !DILocation(line: 1708, column: 26, scope: !3103)
!3107 = !DILocation(line: 1709, column: 10, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3103, file: !3, line: 1709, column: 9)
!3109 = !DILocation(line: 1709, column: 9, scope: !3103)
!3110 = !DILocation(line: 1713, column: 13, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3103, file: !3, line: 1713, column: 9)
!3112 = !DILocation(line: 1713, column: 19, scope: !3111)
!3113 = !DILocation(line: 1713, column: 9, scope: !3103)
!3114 = !DILocation(line: 0, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 1709, column: 37)
!3116 = !DILocation(line: 1718, column: 1, scope: !3103)
!3117 = distinct !DISubprogram(name: "raxRandomWalk", scope: !3, file: !3, line: 1732, type: !3118, isLocal: false, isDefinition: true, scopeLine: 1732, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!31, !2066, !56}
!3120 = !{!3121, !3122, !3123, !3126, !3127, !3129, !3130, !3133}
!3121 = !DILocalVariable(name: "it", arg: 1, scope: !3117, file: !3, line: 1732, type: !2066)
!3122 = !DILocalVariable(name: "steps", arg: 2, scope: !3117, file: !3, line: 1732, type: !56)
!3123 = !DILocalVariable(name: "fle", scope: !3124, file: !3, line: 1739, type: !56)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 1738, column: 21)
!3125 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 1738, column: 9)
!3126 = !DILocalVariable(name: "n", scope: !3117, file: !3, line: 1744, type: !13)
!3127 = !DILocalVariable(name: "numchildren", scope: !3128, file: !3, line: 1746, type: !31)
!3128 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 1745, column: 35)
!3129 = !DILocalVariable(name: "r", scope: !3128, file: !3, line: 1747, type: !31)
!3130 = !DILocalVariable(name: "todel", scope: !3131, file: !3, line: 1752, type: !31)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 1749, column: 31)
!3132 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 1749, column: 13)
!3133 = !DILocalVariable(name: "cp", scope: !3134, file: !3, line: 1761, type: !12)
!3134 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 1754, column: 16)
!3135 = !DILocation(line: 1732, column: 32, scope: !3117)
!3136 = !DILocation(line: 1732, column: 43, scope: !3117)
!3137 = !DILocation(line: 1733, column: 13, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 1733, column: 9)
!3139 = !DILocation(line: 1733, column: 17, scope: !3138)
!3140 = !DILocation(line: 1733, column: 24, scope: !3138)
!3141 = !DILocation(line: 1733, column: 9, scope: !3117)
!3142 = !DILocation(line: 1734, column: 13, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 1733, column: 30)
!3144 = !DILocation(line: 1734, column: 19, scope: !3143)
!3145 = !DILocation(line: 1735, column: 9, scope: !3143)
!3146 = !DILocation(line: 1738, column: 15, scope: !3125)
!3147 = !DILocation(line: 1738, column: 9, scope: !3117)
!3148 = !DILocation(line: 1739, column: 32, scope: !3124)
!3149 = !DILocation(line: 1739, column: 28, scope: !3124)
!3150 = !DILocation(line: 1739, column: 22, scope: !3124)
!3151 = !DILocation(line: 1739, column: 16, scope: !3124)
!3152 = !DILocation(line: 1740, column: 13, scope: !3124)
!3153 = !DILocation(line: 1741, column: 21, scope: !3124)
!3154 = !DILocation(line: 1741, column: 28, scope: !3124)
!3155 = !DILocation(line: 1741, column: 19, scope: !3124)
!3156 = !DILocation(line: 1742, column: 5, scope: !3124)
!3157 = !DILocation(line: 1744, column: 5, scope: !3117)
!3158 = !DILocation(line: 1744, column: 22, scope: !3117)
!3159 = !DILocation(line: 1744, column: 14, scope: !3117)
!3160 = !DILocation(line: 1745, column: 5, scope: !3117)
!3161 = !DILocation(line: 0, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 1765, column: 13)
!3163 = !DILocation(line: 1745, column: 17, scope: !3117)
!3164 = !DILocation(line: 1745, column: 21, scope: !3117)
!3165 = !DILocation(line: 1745, column: 28, scope: !3117)
!3166 = !DILocation(line: 1745, column: 24, scope: !3117)
!3167 = !DILocation(line: 1746, column: 30, scope: !3128)
!3168 = !DILocation(line: 1746, column: 27, scope: !3128)
!3169 = !DILocation(line: 1746, column: 47, scope: !3128)
!3170 = !DILocation(line: 1746, column: 13, scope: !3128)
!3171 = !DILocation(line: 1747, column: 17, scope: !3128)
!3172 = !DILocation(line: 1747, column: 40, scope: !3128)
!3173 = !DILocation(line: 1747, column: 49, scope: !3128)
!3174 = !DILocation(line: 1747, column: 53, scope: !3128)
!3175 = !DILocation(line: 1747, column: 42, scope: !3128)
!3176 = !DILocation(line: 1747, column: 38, scope: !3128)
!3177 = !DILocation(line: 1747, column: 24, scope: !3128)
!3178 = !DILocation(line: 1747, column: 13, scope: !3128)
!3179 = !DILocation(line: 1749, column: 15, scope: !3132)
!3180 = !DILocation(line: 1749, column: 13, scope: !3128)
!3181 = !DILocation(line: 130, column: 13, scope: !1472, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 1751, column: 17, scope: !3131)
!3183 = !DILocation(line: 130, column: 19, scope: !1472, inlinedAt: !3182)
!3184 = !DILocation(line: 130, column: 9, scope: !1465, inlinedAt: !3182)
!3185 = !DILocation(line: 129, column: 43, scope: !1465, inlinedAt: !3182)
!3186 = !DILocation(line: 131, column: 14, scope: !1465, inlinedAt: !3182)
!3187 = !DILocation(line: 132, column: 16, scope: !1465, inlinedAt: !3182)
!3188 = !DILocation(line: 132, column: 12, scope: !1465, inlinedAt: !3182)
!3189 = !DILocation(line: 132, column: 5, scope: !1465, inlinedAt: !3182)
!3190 = !DILocation(line: 0, scope: !1465, inlinedAt: !3182)
!3191 = !DILocation(line: 133, column: 1, scope: !1465, inlinedAt: !3182)
!3192 = !DILocation(line: 1751, column: 15, scope: !3131)
!3193 = !DILocation(line: 1752, column: 28, scope: !3131)
!3194 = !DILocation(line: 1752, column: 25, scope: !3131)
!3195 = !DILocation(line: 1752, column: 41, scope: !3131)
!3196 = !DILocation(line: 1752, column: 17, scope: !3131)
!3197 = !DILocation(line: 1753, column: 36, scope: !3131)
!3198 = !DILocation(line: 1293, column: 39, scope: !2175, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 1753, column: 13, scope: !3131)
!3200 = !DILocation(line: 1293, column: 50, scope: !2175, inlinedAt: !3199)
!3201 = !DILocation(line: 1294, column: 17, scope: !2175, inlinedAt: !3199)
!3202 = !DILocation(line: 1295, column: 1, scope: !2175, inlinedAt: !3199)
!3203 = !DILocation(line: 1754, column: 9, scope: !3131)
!3204 = !DILocation(line: 1756, column: 20, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3134, file: !3, line: 1756, column: 17)
!3206 = !DILocation(line: 1756, column: 17, scope: !3205)
!3207 = !DILocation(line: 1756, column: 17, scope: !3134)
!3208 = !DILocation(line: 0, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 1759, column: 21)
!3210 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 1758, column: 20)
!3211 = !DILocation(line: 1757, column: 56, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 1757, column: 21)
!3213 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 1756, column: 29)
!3214 = !DILocation(line: 1757, column: 53, scope: !3212)
!3215 = !DILocation(line: 1757, column: 22, scope: !3212)
!3216 = !DILocation(line: 1757, column: 21, scope: !3213)
!3217 = !DILocation(line: 1759, column: 52, scope: !3209)
!3218 = !DILocation(line: 1759, column: 22, scope: !3209)
!3219 = !DILocation(line: 1759, column: 21, scope: !3210)
!3220 = !DILocation(line: 1761, column: 28, scope: !3134)
!3221 = !DILocation(line: 100, column: 42, scope: !1239, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 1762, column: 18, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3134, file: !3, line: 1762, column: 17)
!3224 = !DILocation(line: 100, column: 52, scope: !1239, inlinedAt: !3222)
!3225 = !DILocation(line: 101, column: 13, scope: !1248, inlinedAt: !3222)
!3226 = !DILocation(line: 101, column: 26, scope: !1248, inlinedAt: !3222)
!3227 = !DILocation(line: 101, column: 19, scope: !1248, inlinedAt: !3222)
!3228 = !DILocation(line: 101, column: 9, scope: !1239, inlinedAt: !3222)
!3229 = !DILocation(line: 102, column: 17, scope: !1246, inlinedAt: !3222)
!3230 = !DILocation(line: 102, column: 23, scope: !1246, inlinedAt: !3222)
!3231 = !DILocation(line: 102, column: 13, scope: !1247, inlinedAt: !3222)
!3232 = !DILocation(line: 103, column: 62, scope: !1265, inlinedAt: !3222)
!3233 = !DILocation(line: 103, column: 25, scope: !1265, inlinedAt: !3222)
!3234 = !DILocation(line: 103, column: 23, scope: !1265, inlinedAt: !3222)
!3235 = !DILocation(line: 104, column: 27, scope: !1269, inlinedAt: !3222)
!3236 = !DILocation(line: 104, column: 17, scope: !1265, inlinedAt: !3222)
!3237 = !DILocation(line: 105, column: 27, scope: !1272, inlinedAt: !3222)
!3238 = !DILocation(line: 108, column: 17, scope: !1272, inlinedAt: !3222)
!3239 = !DILocation(line: 110, column: 65, scope: !1265, inlinedAt: !3222)
!3240 = !DILocation(line: 110, column: 60, scope: !1265, inlinedAt: !3222)
!3241 = !DILocation(line: 110, column: 13, scope: !1265, inlinedAt: !3222)
!3242 = !DILocation(line: 111, column: 9, scope: !1265, inlinedAt: !3222)
!3243 = !DILocation(line: 112, column: 43, scope: !1245, inlinedAt: !3222)
!3244 = !DILocation(line: 112, column: 79, scope: !1245, inlinedAt: !3222)
!3245 = !DILocation(line: 112, column: 31, scope: !1245, inlinedAt: !3222)
!3246 = !DILocation(line: 113, column: 26, scope: !1286, inlinedAt: !3222)
!3247 = !DILocation(line: 113, column: 17, scope: !1245, inlinedAt: !3222)
!3248 = !DILocation(line: 112, column: 20, scope: !1245, inlinedAt: !3222)
!3249 = !DILocation(line: 118, column: 23, scope: !1245, inlinedAt: !3222)
!3250 = !DILocation(line: 120, column: 22, scope: !1247, inlinedAt: !3222)
!3251 = !DILocation(line: 122, column: 19, scope: !1239, inlinedAt: !3222)
!3252 = !DILocation(line: 121, column: 5, scope: !1247, inlinedAt: !3222)
!3253 = !DILocation(line: 122, column: 9, scope: !1239, inlinedAt: !3222)
!3254 = !DILocation(line: 122, column: 5, scope: !1239, inlinedAt: !3222)
!3255 = !DILocation(line: 122, column: 26, scope: !1239, inlinedAt: !3222)
!3256 = !DILocation(line: 123, column: 14, scope: !1239, inlinedAt: !3222)
!3257 = !DILocation(line: 125, column: 1, scope: !1239, inlinedAt: !3222)
!3258 = !DILocation(line: 1761, column: 51, scope: !3134)
!3259 = !DILocation(line: 1761, column: 23, scope: !3134)
!3260 = !DILocation(line: 1763, column: 23, scope: !3134)
!3261 = !DILocation(line: 1763, column: 13, scope: !3134)
!3262 = !DILocation(line: 1765, column: 13, scope: !3162)
!3263 = !DILocation(line: 0, scope: !3223)
!3264 = !DILocation(line: 1765, column: 16, scope: !3162)
!3265 = !DILocation(line: 1765, column: 13, scope: !3128)
!3266 = !DILocation(line: 1767, column: 14, scope: !3117)
!3267 = !DILocation(line: 1768, column: 5, scope: !3117)
!3268 = !DILocation(line: 1769, column: 1, scope: !3117)
!3269 = distinct !DISubprogram(name: "raxCompare", scope: !3, file: !3, line: 1774, type: !2717, isLocal: false, isDefinition: true, scopeLine: 1774, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3270)
!3270 = !{!3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279}
!3271 = !DILocalVariable(name: "iter", arg: 1, scope: !3269, file: !3, line: 1774, type: !2066)
!3272 = !DILocalVariable(name: "op", arg: 2, scope: !3269, file: !3, line: 1774, type: !2719)
!3273 = !DILocalVariable(name: "key", arg: 3, scope: !3269, file: !3, line: 1774, type: !10)
!3274 = !DILocalVariable(name: "key_len", arg: 4, scope: !3269, file: !3, line: 1774, type: !56)
!3275 = !DILocalVariable(name: "eq", scope: !3269, file: !3, line: 1775, type: !31)
!3276 = !DILocalVariable(name: "lt", scope: !3269, file: !3, line: 1775, type: !31)
!3277 = !DILocalVariable(name: "gt", scope: !3269, file: !3, line: 1775, type: !31)
!3278 = !DILocalVariable(name: "minlen", scope: !3269, file: !3, line: 1782, type: !56)
!3279 = !DILocalVariable(name: "cmp", scope: !3269, file: !3, line: 1783, type: !31)
!3280 = !DILocation(line: 1774, column: 29, scope: !3269)
!3281 = !DILocation(line: 1774, column: 47, scope: !3269)
!3282 = !DILocation(line: 1774, column: 66, scope: !3269)
!3283 = !DILocation(line: 1774, column: 78, scope: !3269)
!3284 = !DILocation(line: 1775, column: 9, scope: !3269)
!3285 = !DILocation(line: 1775, column: 17, scope: !3269)
!3286 = !DILocation(line: 1775, column: 25, scope: !3269)
!3287 = !DILocation(line: 1777, column: 9, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 1777, column: 9)
!3289 = !DILocation(line: 1777, column: 15, scope: !3288)
!3290 = !DILocation(line: 1777, column: 22, scope: !3288)
!3291 = !DILocation(line: 1777, column: 25, scope: !3288)
!3292 = !DILocation(line: 1777, column: 31, scope: !3288)
!3293 = !DILocation(line: 1777, column: 9, scope: !3269)
!3294 = !DILocation(line: 1777, column: 39, scope: !3288)
!3295 = !DILocation(line: 0, scope: !3269)
!3296 = !DILocation(line: 1778, column: 9, scope: !3269)
!3297 = !DILocation(line: 1779, column: 28, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 1779, column: 14)
!3299 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 1778, column: 9)
!3300 = !DILocation(line: 1780, column: 14, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 1780, column: 14)
!3302 = !DILocation(line: 1780, column: 20, scope: !3301)
!3303 = !DILocation(line: 1780, column: 14, scope: !3298)
!3304 = !DILocation(line: 1782, column: 37, scope: !3269)
!3305 = !DILocation(line: 1782, column: 29, scope: !3269)
!3306 = !DILocation(line: 1782, column: 21, scope: !3269)
!3307 = !DILocation(line: 1782, column: 12, scope: !3269)
!3308 = !DILocation(line: 1783, column: 28, scope: !3269)
!3309 = !DILocation(line: 1783, column: 15, scope: !3269)
!3310 = !DILocation(line: 1783, column: 9, scope: !3269)
!3311 = !DILocation(line: 1786, column: 17, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 1786, column: 9)
!3313 = !DILocation(line: 0, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 1789, column: 9)
!3315 = !DILocation(line: 1786, column: 45, scope: !3312)
!3316 = !DILocation(line: 1786, column: 65, scope: !3312)
!3317 = !DILocation(line: 1786, column: 56, scope: !3312)
!3318 = !DILocation(line: 1789, column: 9, scope: !3269)
!3319 = !DILocation(line: 1791, column: 13, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 1791, column: 13)
!3321 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 1789, column: 19)
!3322 = !DILocation(line: 1791, column: 16, scope: !3320)
!3323 = !DILocation(line: 1791, column: 36, scope: !3320)
!3324 = !DILocation(line: 1791, column: 27, scope: !3320)
!3325 = !DILocation(line: 1791, column: 13, scope: !3321)
!3326 = !DILocation(line: 1792, column: 18, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3320, file: !3, line: 1792, column: 18)
!3328 = !DILocation(line: 1792, column: 18, scope: !3320)
!3329 = !DILocation(line: 1792, column: 35, scope: !3327)
!3330 = !DILocation(line: 1792, column: 43, scope: !3327)
!3331 = !DILocation(line: 1792, column: 22, scope: !3327)
!3332 = !DILocation(line: 1793, column: 18, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3327, file: !3, line: 1793, column: 18)
!3334 = !DILocation(line: 1793, column: 18, scope: !3327)
!3335 = !DILocation(line: 1793, column: 35, scope: !3333)
!3336 = !DILocation(line: 1793, column: 43, scope: !3333)
!3337 = !DILocation(line: 1793, column: 22, scope: !3333)
!3338 = !DILocation(line: 1794, column: 15, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 1794, column: 11)
!3340 = !DILocation(line: 1795, column: 9, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3339, file: !3, line: 1794, column: 20)
!3342 = !DILocation(line: 0, scope: !3301)
!3343 = !DILocation(line: 1799, column: 1, scope: !3269)
!3344 = distinct !DISubprogram(name: "raxStop", scope: !3, file: !3, line: 1802, type: !3345, isLocal: false, isDefinition: true, scopeLine: 1802, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3347)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{null, !2066}
!3347 = !{!3348}
!3348 = !DILocalVariable(name: "it", arg: 1, scope: !3344, file: !3, line: 1802, type: !2066)
!3349 = !DILocation(line: 1802, column: 27, scope: !3344)
!3350 = !DILocation(line: 1803, column: 13, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3344, file: !3, line: 1803, column: 9)
!3352 = !DILocation(line: 1803, column: 20, scope: !3351)
!3353 = !DILocation(line: 1803, column: 17, scope: !3351)
!3354 = !DILocation(line: 1803, column: 9, scope: !3344)
!3355 = !DILocation(line: 1803, column: 43, scope: !3351)
!3356 = !DILocation(line: 143, column: 43, scope: !1412, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 1804, column: 5, scope: !3344)
!3358 = !DILocation(line: 144, column: 13, scope: !1418, inlinedAt: !3357)
!3359 = !DILocation(line: 144, column: 22, scope: !1418, inlinedAt: !3357)
!3360 = !DILocation(line: 144, column: 19, scope: !1418, inlinedAt: !3357)
!3361 = !DILocation(line: 144, column: 9, scope: !1412, inlinedAt: !3357)
!3362 = !DILocation(line: 144, column: 49, scope: !1418, inlinedAt: !3357)
!3363 = !DILocation(line: 144, column: 40, scope: !1418, inlinedAt: !3357)
!3364 = !DILocation(line: 145, column: 1, scope: !1412, inlinedAt: !3357)
!3365 = !DILocation(line: 1805, column: 1, scope: !3344)
!3366 = distinct !DISubprogram(name: "raxEOF", scope: !3, file: !3, line: 1811, type: !2466, isLocal: false, isDefinition: true, scopeLine: 1811, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3367)
!3367 = !{!3368}
!3368 = !DILocalVariable(name: "it", arg: 1, scope: !3366, file: !3, line: 1811, type: !2066)
!3369 = !DILocation(line: 1811, column: 25, scope: !3366)
!3370 = !DILocation(line: 1812, column: 16, scope: !3366)
!3371 = !DILocation(line: 1812, column: 22, scope: !3366)
!3372 = !DILocation(line: 1812, column: 5, scope: !3366)
!3373 = distinct !DISubprogram(name: "raxSize", scope: !3, file: !3, line: 1816, type: !3374, isLocal: false, isDefinition: true, scopeLine: 1816, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3376)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!97, !91}
!3376 = !{!3377}
!3377 = !DILocalVariable(name: "rax", arg: 1, scope: !3373, file: !3, line: 1816, type: !91)
!3378 = !DILocation(line: 1816, column: 23, scope: !3373)
!3379 = !DILocation(line: 1817, column: 17, scope: !3373)
!3380 = !DILocation(line: 1817, column: 5, scope: !3373)
!3381 = distinct !DISubprogram(name: "raxRecursiveShow", scope: !3, file: !3, line: 1848, type: !3382, isLocal: false, isDefinition: true, scopeLine: 1848, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3384)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{null, !31, !31, !13}
!3384 = !{!3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3395, !3398, !3402}
!3385 = !DILocalVariable(name: "level", arg: 1, scope: !3381, file: !3, line: 1848, type: !31)
!3386 = !DILocalVariable(name: "lpad", arg: 2, scope: !3381, file: !3, line: 1848, type: !31)
!3387 = !DILocalVariable(name: "n", arg: 3, scope: !3381, file: !3, line: 1848, type: !13)
!3388 = !DILocalVariable(name: "s", scope: !3381, file: !3, line: 1849, type: !9)
!3389 = !DILocalVariable(name: "e", scope: !3381, file: !3, line: 1850, type: !9)
!3390 = !DILocalVariable(name: "numchars", scope: !3381, file: !3, line: 1852, type: !31)
!3391 = !DILocalVariable(name: "numchildren", scope: !3381, file: !3, line: 1857, type: !31)
!3392 = !DILocalVariable(name: "cp", scope: !3381, file: !3, line: 1864, type: !12)
!3393 = !DILocalVariable(name: "i", scope: !3394, file: !3, line: 1865, type: !31)
!3394 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 1865, column: 5)
!3395 = !DILocalVariable(name: "branch", scope: !3396, file: !3, line: 1866, type: !8)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 1865, column: 43)
!3397 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 1865, column: 5)
!3398 = !DILocalVariable(name: "j", scope: !3399, file: !3, line: 1869, type: !31)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 1869, column: 13)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !3, line: 1867, column: 30)
!3401 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 1867, column: 13)
!3402 = !DILocalVariable(name: "child", scope: !3396, file: !3, line: 1874, type: !13)
!3403 = !DILocation(line: 1848, column: 27, scope: !3381)
!3404 = !DILocation(line: 1848, column: 38, scope: !3381)
!3405 = !DILocation(line: 1848, column: 53, scope: !3381)
!3406 = !DILocation(line: 1849, column: 17, scope: !3381)
!3407 = !DILocation(line: 1849, column: 14, scope: !3381)
!3408 = !DILocation(line: 1852, column: 39, scope: !3381)
!3409 = !DILocation(line: 1852, column: 45, scope: !3381)
!3410 = !DILocation(line: 1852, column: 51, scope: !3381)
!3411 = !DILocation(line: 1852, column: 60, scope: !3381)
!3412 = !DILocation(line: 1852, column: 20, scope: !3381)
!3413 = !DILocation(line: 1852, column: 9, scope: !3381)
!3414 = !DILocation(line: 1853, column: 12, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 1853, column: 9)
!3416 = !DILocation(line: 1853, column: 9, scope: !3415)
!3417 = !DILocation(line: 1853, column: 9, scope: !3381)
!3418 = !DILocation(line: 237, column: 27, scope: !182, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 1854, column: 34, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3415, file: !3, line: 1853, column: 19)
!3421 = !DILocation(line: 238, column: 12, scope: !191, inlinedAt: !3419)
!3422 = !DILocation(line: 238, column: 9, scope: !191, inlinedAt: !3419)
!3423 = !DILocation(line: 238, column: 9, scope: !182, inlinedAt: !3419)
!3424 = !DILocation(line: 239, column: 28, scope: !182, inlinedAt: !3419)
!3425 = !DILocation(line: 239, column: 37, scope: !182, inlinedAt: !3419)
!3426 = !DILocation(line: 239, column: 36, scope: !182, inlinedAt: !3419)
!3427 = !DILocation(line: 239, column: 60, scope: !182, inlinedAt: !3419)
!3428 = !DILocation(line: 239, column: 12, scope: !182, inlinedAt: !3419)
!3429 = !DILocation(line: 240, column: 5, scope: !182, inlinedAt: !3419)
!3430 = !DILocation(line: 241, column: 5, scope: !182, inlinedAt: !3419)
!3431 = !DILocation(line: 242, column: 12, scope: !182, inlinedAt: !3419)
!3432 = !DILocation(line: 240, column: 11, scope: !182, inlinedAt: !3419)
!3433 = !DILocation(line: 243, column: 1, scope: !182, inlinedAt: !3419)
!3434 = !DILocation(line: 0, scope: !182, inlinedAt: !3419)
!3435 = !DILocation(line: 1854, column: 21, scope: !3420)
!3436 = !DILocation(line: 1854, column: 18, scope: !3420)
!3437 = !DILocation(line: 1857, column: 26, scope: !3381)
!3438 = !DILocation(line: 1855, column: 5, scope: !3420)
!3439 = !DILocation(line: 0, scope: !3381)
!3440 = !DILocation(line: 1857, column: 23, scope: !3381)
!3441 = !DILocation(line: 1857, column: 43, scope: !3381)
!3442 = !DILocation(line: 1857, column: 9, scope: !3381)
!3443 = !DILocation(line: 1860, column: 9, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 1860, column: 9)
!3445 = !DILocation(line: 1860, column: 9, scope: !3381)
!3446 = !DILocation(line: 1861, column: 30, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3444, file: !3, line: 1860, column: 16)
!3448 = !DILocation(line: 1861, column: 17, scope: !3447)
!3449 = !DILocation(line: 1861, column: 14, scope: !3447)
!3450 = !DILocation(line: 1862, column: 25, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 1862, column: 13)
!3452 = !DILocation(line: 1862, column: 13, scope: !3447)
!3453 = !DILocation(line: 1865, column: 14, scope: !3394)
!3454 = !DILocation(line: 1865, column: 23, scope: !3397)
!3455 = !DILocation(line: 1865, column: 5, scope: !3394)
!3456 = !DILocation(line: 1864, column: 20, scope: !3381)
!3457 = !DILocation(line: 1864, column: 15, scope: !3381)
!3458 = !DILocation(line: 1879, column: 1, scope: !3381)
!3459 = !DILocation(line: 1867, column: 13, scope: !3396)
!3460 = !DILocation(line: 1868, column: 13, scope: !3400)
!3461 = !DILocation(line: 1869, column: 22, scope: !3399)
!3462 = !DILocation(line: 1869, column: 13, scope: !3399)
!3463 = !DILocation(line: 1870, column: 27, scope: !3400)
!3464 = !DILocation(line: 1870, column: 13, scope: !3400)
!3465 = !DILocation(line: 1871, column: 9, scope: !3400)
!3466 = !DILocation(line: 1869, column: 44, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3399, file: !3, line: 1869, column: 13)
!3468 = !DILocation(line: 1869, column: 40, scope: !3467)
!3469 = !DILocation(line: 1869, column: 31, scope: !3467)
!3470 = distinct !{!3470, !3462, !3471}
!3471 = !DILocation(line: 1869, column: 55, scope: !3399)
!3472 = !DILocation(line: 1872, column: 13, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3401, file: !3, line: 1871, column: 16)
!3474 = !DILocation(line: 1874, column: 9, scope: !3396)
!3475 = !DILocation(line: 1875, column: 23, scope: !3396)
!3476 = !DILocation(line: 1875, column: 9, scope: !3396)
!3477 = !DILocation(line: 1876, column: 39, scope: !3396)
!3478 = !DILocation(line: 1874, column: 18, scope: !3396)
!3479 = !DILocation(line: 1876, column: 9, scope: !3396)
!3480 = !DILocation(line: 1877, column: 11, scope: !3396)
!3481 = !DILocation(line: 1878, column: 5, scope: !3397)
!3482 = !DILocation(line: 1865, column: 39, scope: !3397)
!3483 = distinct !{!3483, !3455, !3484}
!3484 = !DILocation(line: 1878, column: 5, scope: !3394)
!3485 = distinct !DISubprogram(name: "raxShow", scope: !3, file: !3, line: 1882, type: !2048, isLocal: false, isDefinition: true, scopeLine: 1882, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3486)
!3486 = !{!3487}
!3487 = !DILocalVariable(name: "rax", arg: 1, scope: !3485, file: !3, line: 1882, type: !91)
!3488 = !DILocation(line: 1882, column: 19, scope: !3485)
!3489 = !DILocation(line: 1883, column: 31, scope: !3485)
!3490 = !DILocation(line: 1883, column: 5, scope: !3485)
!3491 = !DILocation(line: 1884, column: 5, scope: !3485)
!3492 = !DILocation(line: 1885, column: 1, scope: !3485)
!3493 = distinct !DISubprogram(name: "raxDebugShowNode", scope: !3, file: !3, line: 1888, type: !3494, isLocal: false, isDefinition: true, scopeLine: 1888, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3496)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{null, !2719, !13}
!3496 = !{!3497, !3498, !3499, !3500, !3501}
!3497 = !DILocalVariable(name: "msg", arg: 1, scope: !3493, file: !3, line: 1888, type: !2719)
!3498 = !DILocalVariable(name: "n", arg: 2, scope: !3493, file: !3, line: 1888, type: !13)
!3499 = !DILocalVariable(name: "numcld", scope: !3493, file: !3, line: 1892, type: !31)
!3500 = !DILocalVariable(name: "cldptr", scope: !3493, file: !3, line: 1893, type: !12)
!3501 = !DILocalVariable(name: "child", scope: !3502, file: !3, line: 1895, type: !13)
!3502 = distinct !DILexicalBlock(scope: !3493, file: !3, line: 1894, column: 21)
!3503 = !DILocation(line: 1888, column: 35, scope: !3493)
!3504 = !DILocation(line: 1888, column: 49, scope: !3493)
!3505 = !DILocation(line: 1889, column: 9, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3493, file: !3, line: 1889, column: 9)
!3507 = !DILocation(line: 1889, column: 21, scope: !3506)
!3508 = !DILocation(line: 1889, column: 9, scope: !3493)
!3509 = !DILocation(line: 1891, column: 14, scope: !3493)
!3510 = !DILocation(line: 1891, column: 32, scope: !3493)
!3511 = !DILocation(line: 1891, column: 45, scope: !3493)
!3512 = !DILocation(line: 1891, column: 57, scope: !3493)
!3513 = !DILocation(line: 1890, column: 5, scope: !3493)
!3514 = !DILocation(line: 1892, column: 21, scope: !3493)
!3515 = !DILocation(line: 1892, column: 18, scope: !3493)
!3516 = !DILocation(line: 1892, column: 38, scope: !3493)
!3517 = !DILocation(line: 1892, column: 9, scope: !3493)
!3518 = !DILocation(line: 1893, column: 24, scope: !3493)
!3519 = !DILocation(line: 1894, column: 5, scope: !3493)
!3520 = !DILocation(line: 1893, column: 56, scope: !3493)
!3521 = !DILocation(line: 1893, column: 47, scope: !3493)
!3522 = !DILocation(line: 1893, column: 15, scope: !3493)
!3523 = !DILocation(line: 1894, column: 17, scope: !3493)
!3524 = !DILocation(line: 1895, column: 9, scope: !3502)
!3525 = !DILocation(line: 1896, column: 23, scope: !3502)
!3526 = !DILocation(line: 1896, column: 9, scope: !3502)
!3527 = !DILocation(line: 1897, column: 15, scope: !3502)
!3528 = !DILocation(line: 1898, column: 30, scope: !3502)
!3529 = !DILocation(line: 1895, column: 18, scope: !3502)
!3530 = !DILocation(line: 1898, column: 9, scope: !3502)
!3531 = !DILocation(line: 1899, column: 5, scope: !3493)
!3532 = distinct !{!3532, !3519, !3531}
!3533 = !DILocation(line: 1900, column: 5, scope: !3493)
!3534 = !DILocation(line: 1901, column: 12, scope: !3493)
!3535 = !{!3536, !123, i64 16}
!3536 = !{!"_reent", !49, i64 0, !123, i64 8, !123, i64 16, !123, i64 24, !49, i64 32, !50, i64 36, !49, i64 64, !123, i64 72, !49, i64 80, !123, i64 88, !123, i64 96, !49, i64 104, !123, i64 112, !123, i64 120, !49, i64 128, !123, i64 136, !50, i64 144, !123, i64 504, !3537, i64 512, !123, i64 1304, !3539, i64 1312, !50, i64 1336}
!3537 = !{!"_atexit", !123, i64 0, !49, i64 8, !50, i64 16, !3538, i64 272}
!3538 = !{!"_on_exit_args", !50, i64 0, !50, i64 256, !49, i64 512, !49, i64 516}
!3539 = !{!"_glue", !123, i64 0, !49, i64 8, !123, i64 16}
!3540 = !DILocation(line: 1901, column: 5, scope: !3493)
!3541 = !DILocation(line: 1902, column: 1, scope: !3493)
!3542 = distinct !DISubprogram(name: "raxTouch", scope: !3, file: !3, line: 1921, type: !3543, isLocal: false, isDefinition: true, scopeLine: 1921, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3545)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!32, !13}
!3545 = !{!3546, !3547, !3548, !3549, !3550, !3551, !3553}
!3546 = !DILocalVariable(name: "n", arg: 1, scope: !3542, file: !3, line: 1921, type: !13)
!3547 = !DILocalVariable(name: "sum", scope: !3542, file: !3, line: 1923, type: !32)
!3548 = !DILocalVariable(name: "numchildren", scope: !3542, file: !3, line: 1928, type: !31)
!3549 = !DILocalVariable(name: "cp", scope: !3542, file: !3, line: 1929, type: !12)
!3550 = !DILocalVariable(name: "count", scope: !3542, file: !3, line: 1930, type: !31)
!3551 = !DILocalVariable(name: "i", scope: !3552, file: !3, line: 1931, type: !31)
!3552 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 1931, column: 5)
!3553 = !DILocalVariable(name: "child", scope: !3554, file: !3, line: 1935, type: !13)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 1931, column: 43)
!3555 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 1931, column: 5)
!3556 = !DILocation(line: 1921, column: 33, scope: !3542)
!3557 = !DILocation(line: 1923, column: 19, scope: !3542)
!3558 = !DILocation(line: 1924, column: 12, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 1924, column: 9)
!3560 = !DILocation(line: 1924, column: 9, scope: !3559)
!3561 = !DILocation(line: 1924, column: 9, scope: !3542)
!3562 = !DILocation(line: 237, column: 27, scope: !182, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 1925, column: 31, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3559, file: !3, line: 1924, column: 19)
!3565 = !DILocation(line: 238, column: 12, scope: !191, inlinedAt: !3563)
!3566 = !DILocation(line: 238, column: 9, scope: !191, inlinedAt: !3563)
!3567 = !DILocation(line: 238, column: 9, scope: !182, inlinedAt: !3563)
!3568 = !DILocation(line: 239, column: 28, scope: !182, inlinedAt: !3563)
!3569 = !DILocation(line: 239, column: 37, scope: !182, inlinedAt: !3563)
!3570 = !DILocation(line: 239, column: 36, scope: !182, inlinedAt: !3563)
!3571 = !DILocation(line: 239, column: 60, scope: !182, inlinedAt: !3563)
!3572 = !DILocation(line: 239, column: 12, scope: !182, inlinedAt: !3563)
!3573 = !DILocation(line: 240, column: 5, scope: !182, inlinedAt: !3563)
!3574 = !DILocation(line: 241, column: 5, scope: !182, inlinedAt: !3563)
!3575 = !DILocation(line: 242, column: 12, scope: !182, inlinedAt: !3563)
!3576 = !DILocation(line: 240, column: 11, scope: !182, inlinedAt: !3563)
!3577 = !DILocation(line: 243, column: 1, scope: !182, inlinedAt: !3563)
!3578 = !DILocation(line: 1928, column: 26, scope: !3542)
!3579 = !DILocation(line: 1926, column: 5, scope: !3564)
!3580 = !DILocation(line: 0, scope: !3542)
!3581 = !DILocation(line: 1928, column: 23, scope: !3542)
!3582 = !DILocation(line: 1928, column: 43, scope: !3542)
!3583 = !DILocation(line: 1928, column: 9, scope: !3542)
!3584 = !DILocation(line: 1930, column: 9, scope: !3542)
!3585 = !DILocation(line: 1931, column: 14, scope: !3552)
!3586 = !DILocation(line: 1931, column: 23, scope: !3555)
!3587 = !DILocation(line: 1931, column: 5, scope: !3552)
!3588 = !DILocation(line: 1929, column: 20, scope: !3542)
!3589 = !DILocation(line: 1929, column: 15, scope: !3542)
!3590 = !DILocation(line: 0, scope: !3554)
!3591 = !DILocation(line: 1942, column: 5, scope: !3542)
!3592 = !DILocation(line: 1932, column: 13, scope: !3554)
!3593 = !DILocation(line: 1933, column: 26, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !3, line: 1932, column: 30)
!3595 = distinct !DILexicalBlock(scope: !3554, file: !3, line: 1932, column: 13)
!3596 = !DILocation(line: 1933, column: 20, scope: !3594)
!3597 = !DILocation(line: 1933, column: 17, scope: !3594)
!3598 = !DILocation(line: 1934, column: 9, scope: !3594)
!3599 = !DILocation(line: 0, scope: !3564)
!3600 = !DILocation(line: 1935, column: 9, scope: !3554)
!3601 = !DILocation(line: 1936, column: 23, scope: !3554)
!3602 = !DILocation(line: 1936, column: 9, scope: !3554)
!3603 = !DILocation(line: 1937, column: 13, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3554, file: !3, line: 1937, column: 13)
!3605 = !DILocation(line: 1935, column: 18, scope: !3554)
!3606 = !DILocation(line: 1937, column: 19, scope: !3604)
!3607 = !DILocation(line: 1937, column: 13, scope: !3554)
!3608 = !DILocation(line: 1938, column: 19, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3554, file: !3, line: 1938, column: 13)
!3610 = !DILocation(line: 1938, column: 13, scope: !3554)
!3611 = !DILocation(line: 1938, column: 24, scope: !3609)
!3612 = !DILocation(line: 1939, column: 16, scope: !3554)
!3613 = !DILocation(line: 1939, column: 13, scope: !3554)
!3614 = !DILocation(line: 1940, column: 11, scope: !3554)
!3615 = !DILocation(line: 1941, column: 5, scope: !3555)
!3616 = !DILocation(line: 1931, column: 39, scope: !3555)
!3617 = distinct !{!3617, !3587, !3618}
!3618 = !DILocation(line: 1941, column: 5, scope: !3552)
