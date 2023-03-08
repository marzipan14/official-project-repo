; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/quicklist.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/quicklist.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.quicklist = type { %struct.quicklistNode*, %struct.quicklistNode*, i64, i64, i32 }
%struct.quicklistNode = type { %struct.quicklistNode*, %struct.quicklistNode*, i8*, i32, i32 }
%struct.quicklistLZF = type { i32, [0 x i8] }
%struct.quicklistIter = type { %struct.quicklist*, %struct.quicklistNode*, i8*, i64, i32 }
%struct.quicklistEntry = type { %struct.quicklist*, %struct.quicklistNode*, i8*, i8*, i64, i32, i32 }

@optimization_level = internal unnamed_addr constant [5 x i64] [i64 4096, i64 8192, i64 16384, i64 32768, i64 65536], align 16, !dbg !0

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklist* @quicklistCreate() local_unnamed_addr #0 !dbg !61 {
  %1 = tail call i8* @zmalloc(i64 40) #6, !dbg !67
  %2 = bitcast i8* %1 to %struct.quicklist*, !dbg !67
  %3 = bitcast i8* %1 to <2 x %struct.quicklistNode*>*, !dbg !69
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %3, align 8, !dbg !69, !tbaa !70
  %4 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !74
  %5 = bitcast i8* %4 to <2 x i64>*, !dbg !75
  store <2 x i64> zeroinitializer, <2 x i64>* %5, align 8, !dbg !75, !tbaa !76
  %6 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !78
  %7 = bitcast i8* %6 to i32*, !dbg !78
  store i32 65534, i32* %7, align 8, !dbg !79
  ret %struct.quicklist* %2, !dbg !80
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local void @quicklistSetCompressDepth(%struct.quicklist* nocapture, i32) local_unnamed_addr #0 !dbg !81 {
  %3 = icmp sgt i32 %1, 0, !dbg !89
  %4 = select i1 %3, i32 %1, i32 0, !dbg !89
  %5 = icmp slt i32 %4, 65536, !dbg !91
  %6 = select i1 %5, i32 %4, i32 65536, !dbg !91
  %7 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !92
  %8 = load i32, i32* %7, align 8, !dbg !93
  %9 = shl i32 %6, 16, !dbg !93
  %10 = and i32 %8, 65535, !dbg !93
  %11 = or i32 %10, %9, !dbg !93
  store i32 %11, i32* %7, align 8, !dbg !93
  ret void, !dbg !94
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistSetFill(%struct.quicklist* nocapture, i32) local_unnamed_addr #0 !dbg !95 {
  %3 = icmp sgt i32 %1, -5, !dbg !101
  %4 = select i1 %3, i32 %1, i32 -5, !dbg !101
  %5 = icmp slt i32 %4, 32768, !dbg !103
  %6 = select i1 %5, i32 %4, i32 32768, !dbg !103
  %7 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !104
  %8 = load i32, i32* %7, align 8, !dbg !105
  %9 = and i32 %6, 65535, !dbg !105
  %10 = and i32 %8, -65536, !dbg !105
  %11 = or i32 %10, %9, !dbg !105
  store i32 %11, i32* %7, align 8, !dbg !105
  ret void, !dbg !106
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistSetOptions(%struct.quicklist* nocapture, i32, i32) local_unnamed_addr #0 !dbg !107 {
  %4 = icmp sgt i32 %1, -5, !dbg !120
  %5 = select i1 %4, i32 %1, i32 -5, !dbg !120
  %6 = icmp slt i32 %5, 32768, !dbg !121
  %7 = select i1 %6, i32 %5, i32 32768, !dbg !121
  %8 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !122
  %9 = and i32 %7, 65535, !dbg !123
  %10 = icmp sgt i32 %2, 0, !dbg !127
  %11 = select i1 %10, i32 %2, i32 0, !dbg !127
  %12 = icmp slt i32 %11, 65536, !dbg !128
  %13 = select i1 %12, i32 %11, i32 65536, !dbg !128
  %14 = shl i32 %13, 16, !dbg !129
  %15 = or i32 %14, %9, !dbg !129
  store i32 %15, i32* %8, align 8, !dbg !129
  ret void, !dbg !130
}

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklist* @quicklistNew(i32, i32) local_unnamed_addr #0 !dbg !131 {
  %3 = tail call i8* @zmalloc(i64 40) #6, !dbg !140
  %4 = bitcast i8* %3 to %struct.quicklist*, !dbg !140
  %5 = bitcast i8* %3 to <2 x %struct.quicklistNode*>*, !dbg !143
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %5, align 8, !dbg !143, !tbaa !70
  %6 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !144
  %7 = bitcast i8* %6 to <2 x i64>*, !dbg !145
  store <2 x i64> zeroinitializer, <2 x i64>* %7, align 8, !dbg !145, !tbaa !76
  %8 = getelementptr inbounds i8, i8* %3, i64 32, !dbg !146
  %9 = bitcast i8* %8 to i32*, !dbg !146
  %10 = icmp sgt i32 %0, -5, !dbg !155
  %11 = select i1 %10, i32 %0, i32 -5, !dbg !155
  %12 = icmp slt i32 %11, 32768, !dbg !156
  %13 = select i1 %12, i32 %11, i32 32768, !dbg !156
  %14 = and i32 %13, 65535, !dbg !157
  %15 = icmp sgt i32 %1, 0, !dbg !161
  %16 = select i1 %15, i32 %1, i32 0, !dbg !161
  %17 = icmp slt i32 %16, 65536, !dbg !162
  %18 = select i1 %17, i32 %16, i32 65536, !dbg !162
  %19 = shl i32 %18, 16, !dbg !163
  %20 = or i32 %19, %14, !dbg !163
  store i32 %20, i32* %9, align 8, !dbg !163
  ret %struct.quicklist* %4, !dbg !164
}

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklistNode* @quicklistCreateNode() local_unnamed_addr #0 !dbg !165 {
  %1 = tail call i8* @zmalloc(i64 32) #6, !dbg !170
  %2 = bitcast i8* %1 to %struct.quicklistNode*, !dbg !170
  %3 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !172
  %4 = bitcast i8* %3 to i8**, !dbg !172
  store i8* null, i8** %4, align 8, !dbg !173, !tbaa !174
  %5 = getelementptr inbounds i8, i8* %1, i64 28, !dbg !177
  %6 = bitcast i8* %5 to i32*, !dbg !177
  %7 = load i32, i32* %6, align 4, !dbg !178
  %8 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !179
  %9 = bitcast i8* %8 to i32*, !dbg !179
  store i32 0, i32* %9, align 8, !dbg !180, !tbaa !181
  %10 = bitcast i8* %1 to <2 x %struct.quicklistNode*>*, !dbg !182
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %10, align 8, !dbg !182, !tbaa !70
  %11 = and i32 %7, -2097152, !dbg !183
  %12 = or i32 %11, 589824, !dbg !183
  store i32 %12, i32* %6, align 4, !dbg !183
  ret %struct.quicklistNode* %2, !dbg !184
}

; Function Attrs: noredzone nounwind readonly
define dso_local i64 @quicklistCount(%struct.quicklist* nocapture readonly) local_unnamed_addr #4 !dbg !185 {
  %2 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !193
  %3 = load i64, i64* %2, align 8, !dbg !193, !tbaa !194
  ret i64 %3, !dbg !196
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistRelease(%struct.quicklist*) local_unnamed_addr #0 !dbg !197 {
  %2 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !206
  %3 = load i64, i64* %2, align 8, !dbg !206, !tbaa !207
  %4 = icmp eq i64 %3, 0, !dbg !209
  br i1 %4, label %27, label %5, !dbg !209

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !210
  %7 = load %struct.quicklistNode*, %struct.quicklistNode** %6, align 8, !dbg !210, !tbaa !211
  %8 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2
  br label %9, !dbg !209

; <label>:9:                                      ; preds = %5, %9
  %10 = phi i64 [ %3, %5 ], [ %13, %9 ]
  %11 = phi %struct.quicklistNode* [ %7, %5 ], [ %15, %9 ]
  %12 = bitcast %struct.quicklistNode* %11 to i8*, !dbg !213
  %13 = add i64 %10, -1, !dbg !214
  %14 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 1, !dbg !215
  %15 = load %struct.quicklistNode*, %struct.quicklistNode** %14, align 8, !dbg !215, !tbaa !217
  %16 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !219
  %17 = load i8*, i8** %16, align 8, !dbg !219, !tbaa !174
  tail call void @zfree(i8* %17) #6, !dbg !220
  %18 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 4, !dbg !221
  %19 = load i32, i32* %18, align 4, !dbg !221
  %20 = and i32 %19, 65535, !dbg !221
  %21 = zext i32 %20 to i64, !dbg !222
  %22 = load i64, i64* %8, align 8, !dbg !223, !tbaa !194
  %23 = sub i64 %22, %21, !dbg !223
  store i64 %23, i64* %8, align 8, !dbg !223, !tbaa !194
  tail call void @zfree(i8* %12) #6, !dbg !224
  %24 = load i64, i64* %2, align 8, !dbg !225, !tbaa !207
  %25 = add i64 %24, -1, !dbg !225
  store i64 %25, i64* %2, align 8, !dbg !225, !tbaa !207
  %26 = icmp eq i64 %13, 0, !dbg !209
  br i1 %26, label %27, label %9, !dbg !209, !llvm.loop !226

; <label>:27:                                     ; preds = %9, %1
  %28 = bitcast %struct.quicklist* %0 to i8*, !dbg !228
  tail call void @zfree(i8* %28) #6, !dbg !229
  ret void, !dbg !230
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @__quicklistCompressNode(%struct.quicklistNode* nocapture) local_unnamed_addr #0 !dbg !231 {
  %2 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 3, !dbg !238
  %3 = load i32, i32* %2, align 8, !dbg !238, !tbaa !181
  %4 = icmp ult i32 %3, 48, !dbg !240
  br i1 %4, label %30, label %5, !dbg !241

; <label>:5:                                      ; preds = %1
  %6 = zext i32 %3 to i64, !dbg !242
  %7 = add nuw nsw i64 %6, 4, !dbg !243
  %8 = tail call i8* @zmalloc(i64 %7) #6, !dbg !244
  %9 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 2, !dbg !246
  %10 = load i8*, i8** %9, align 8, !dbg !246, !tbaa !174
  %11 = load i32, i32* %2, align 8, !dbg !248, !tbaa !181
  %12 = getelementptr inbounds i8, i8* %8, i64 4, !dbg !249
  %13 = tail call i32 @lzf_compress(i8* %10, i32 %11, i8* nonnull %12, i32 %11) #6, !dbg !250
  %14 = bitcast i8* %8 to i32*, !dbg !251
  store i32 %13, i32* %14, align 4, !dbg !252, !tbaa !253
  %15 = icmp eq i32 %13, 0, !dbg !254
  br i1 %15, label %20, label %16, !dbg !255

; <label>:16:                                     ; preds = %5
  %17 = add i32 %13, 8, !dbg !256
  %18 = load i32, i32* %2, align 8, !dbg !257, !tbaa !181
  %19 = icmp ult i32 %17, %18, !dbg !258
  br i1 %19, label %21, label %20, !dbg !259

; <label>:20:                                     ; preds = %16, %5
  tail call void @zfree(i8* %8) #6, !dbg !260
  br label %30, !dbg !262

; <label>:21:                                     ; preds = %16
  %22 = zext i32 %13 to i64, !dbg !263
  %23 = add nuw nsw i64 %22, 4, !dbg !264
  %24 = tail call i8* @zrealloc(i8* %8, i64 %23) #6, !dbg !265
  %25 = load i8*, i8** %9, align 8, !dbg !266, !tbaa !174
  tail call void @zfree(i8* %25) #6, !dbg !267
  store i8* %24, i8** %9, align 8, !dbg !268, !tbaa !174
  %26 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 4, !dbg !269
  %27 = load i32, i32* %26, align 4, !dbg !270
  %28 = and i32 %27, -1245185, !dbg !270
  %29 = or i32 %28, 131072, !dbg !270
  store i32 %29, i32* %26, align 4, !dbg !271
  br label %30, !dbg !272

; <label>:30:                                     ; preds = %20, %21, %1
  %31 = phi i32 [ 0, %1 ], [ 0, %20 ], [ 1, %21 ], !dbg !273
  ret i32 %31, !dbg !274
}

; Function Attrs: noredzone
declare dso_local i32 @lzf_compress(i8*, i32, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @__quicklistDecompressNode(%struct.quicklistNode* nocapture) local_unnamed_addr #0 !dbg !275 {
  %2 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 3, !dbg !281
  %3 = load i32, i32* %2, align 8, !dbg !281, !tbaa !181
  %4 = zext i32 %3 to i64, !dbg !282
  %5 = tail call i8* @zmalloc(i64 %4) #6, !dbg !283
  %6 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 2, !dbg !285
  %7 = load i8*, i8** %6, align 8, !dbg !285, !tbaa !174
  %8 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !287
  %9 = bitcast i8* %7 to i32*, !dbg !289
  %10 = load i32, i32* %9, align 4, !dbg !289, !tbaa !253
  %11 = load i32, i32* %2, align 8, !dbg !290, !tbaa !181
  %12 = tail call i32 @lzf_decompress(i8* nonnull %8, i32 %10, i8* %5, i32 %11) #6, !dbg !291
  %13 = icmp eq i32 %12, 0, !dbg !292
  br i1 %13, label %14, label %15, !dbg !293

; <label>:14:                                     ; preds = %1
  tail call void @zfree(i8* %5) #6, !dbg !294
  br label %20, !dbg !296

; <label>:15:                                     ; preds = %1
  tail call void @zfree(i8* %7) #6, !dbg !297
  store i8* %5, i8** %6, align 8, !dbg !298, !tbaa !174
  %16 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 4, !dbg !299
  %17 = load i32, i32* %16, align 4, !dbg !300
  %18 = and i32 %17, -196609, !dbg !300
  %19 = or i32 %18, 65536, !dbg !300
  store i32 %19, i32* %16, align 4, !dbg !300
  br label %20, !dbg !301

; <label>:20:                                     ; preds = %15, %14
  %21 = phi i32 [ 0, %14 ], [ 1, %15 ], !dbg !302
  ret i32 %21, !dbg !303
}

; Function Attrs: noredzone
declare dso_local i32 @lzf_decompress(i8*, i32, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @quicklistGetLzf(%struct.quicklistNode* nocapture readonly, i8** nocapture) local_unnamed_addr #0 !dbg !304 {
  %3 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 2, !dbg !316
  %4 = bitcast i8** %3 to %struct.quicklistLZF**, !dbg !316
  %5 = load %struct.quicklistLZF*, %struct.quicklistLZF** %4, align 8, !dbg !316, !tbaa !174
  %6 = getelementptr inbounds %struct.quicklistLZF, %struct.quicklistLZF* %5, i64 0, i32 1, i64 0, !dbg !318
  store i8* %6, i8** %1, align 8, !dbg !319, !tbaa !70
  %7 = getelementptr inbounds %struct.quicklistLZF, %struct.quicklistLZF* %5, i64 0, i32 0, !dbg !320
  %8 = load i32, i32* %7, align 4, !dbg !320, !tbaa !253
  %9 = zext i32 %8 to i64, !dbg !321
  ret i64 %9, !dbg !322
}

; Function Attrs: noredzone nounwind
define dso_local void @__quicklistCompress(%struct.quicklist* nocapture readonly, %struct.quicklistNode*) local_unnamed_addr #0 !dbg !323 {
  %3 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !335
  %4 = load i32, i32* %3, align 8, !dbg !335
  %5 = lshr i32 %4, 16, !dbg !335
  %6 = icmp eq i32 %5, 0, !dbg !335
  br i1 %6, label %124, label %7, !dbg !337

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !338
  %9 = load i64, i64* %8, align 8, !dbg !338, !tbaa !207
  %10 = shl nuw nsw i32 %5, 1, !dbg !339
  %11 = zext i32 %10 to i64, !dbg !340
  %12 = icmp ult i64 %9, %11, !dbg !341
  br i1 %12, label %124, label %13, !dbg !342

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !343
  %15 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !345
  %16 = load %struct.quicklistNode*, %struct.quicklistNode** %15, align 8, !dbg !349, !tbaa !70
  %17 = load %struct.quicklistNode*, %struct.quicklistNode** %14, align 8, !dbg !349, !tbaa !70
  %18 = icmp ugt i32 %4, 65535, !dbg !351
  br i1 %18, label %19, label %90, !dbg !352

; <label>:19:                                     ; preds = %13, %75
  %20 = phi i32 [ %84, %75 ], [ 1, %13 ]
  %21 = phi %struct.quicklistNode* [ %83, %75 ], [ %17, %13 ]
  %22 = phi %struct.quicklistNode* [ %82, %75 ], [ %16, %13 ]
  %23 = phi i32 [ %79, %75 ], [ 0, %13 ]
  %24 = icmp eq %struct.quicklistNode* %21, null, !dbg !353
  br i1 %24, label %48, label %25, !dbg !353

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %21, i64 0, i32 4, !dbg !353
  %27 = load i32, i32* %26, align 4, !dbg !353
  %28 = and i32 %27, 196608, !dbg !353
  %29 = icmp eq i32 %28, 131072, !dbg !353
  br i1 %29, label %30, label %48, !dbg !356

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %21, i64 0, i32 3, !dbg !360
  %32 = load i32, i32* %31, align 8, !dbg !360, !tbaa !181
  %33 = zext i32 %32 to i64, !dbg !361
  %34 = tail call i8* @zmalloc(i64 %33) #6, !dbg !362
  %35 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %21, i64 0, i32 2, !dbg !364
  %36 = load i8*, i8** %35, align 8, !dbg !364, !tbaa !174
  %37 = getelementptr inbounds i8, i8* %36, i64 4, !dbg !366
  %38 = bitcast i8* %36 to i32*, !dbg !367
  %39 = load i32, i32* %38, align 4, !dbg !367, !tbaa !253
  %40 = load i32, i32* %31, align 8, !dbg !368, !tbaa !181
  %41 = tail call i32 @lzf_decompress(i8* nonnull %37, i32 %39, i8* %34, i32 %40) #6, !dbg !369
  %42 = icmp eq i32 %41, 0, !dbg !370
  br i1 %42, label %43, label %44, !dbg !371

; <label>:43:                                     ; preds = %30
  tail call void @zfree(i8* %34) #6, !dbg !372
  br label %48, !dbg !373

; <label>:44:                                     ; preds = %30
  tail call void @zfree(i8* %36) #6, !dbg !374
  store i8* %34, i8** %35, align 8, !dbg !375, !tbaa !174
  %45 = load i32, i32* %26, align 4, !dbg !376
  %46 = and i32 %45, -196609, !dbg !376
  %47 = or i32 %46, 65536, !dbg !376
  store i32 %47, i32* %26, align 4, !dbg !376
  br label %48, !dbg !377

; <label>:48:                                     ; preds = %44, %43, %19, %25
  %49 = icmp eq %struct.quicklistNode* %22, null, !dbg !378
  br i1 %49, label %73, label %50, !dbg !378

; <label>:50:                                     ; preds = %48
  %51 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %22, i64 0, i32 4, !dbg !378
  %52 = load i32, i32* %51, align 4, !dbg !378
  %53 = and i32 %52, 196608, !dbg !378
  %54 = icmp eq i32 %53, 131072, !dbg !378
  br i1 %54, label %55, label %73, !dbg !381

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %22, i64 0, i32 3, !dbg !385
  %57 = load i32, i32* %56, align 8, !dbg !385, !tbaa !181
  %58 = zext i32 %57 to i64, !dbg !386
  %59 = tail call i8* @zmalloc(i64 %58) #6, !dbg !387
  %60 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %22, i64 0, i32 2, !dbg !389
  %61 = load i8*, i8** %60, align 8, !dbg !389, !tbaa !174
  %62 = getelementptr inbounds i8, i8* %61, i64 4, !dbg !391
  %63 = bitcast i8* %61 to i32*, !dbg !392
  %64 = load i32, i32* %63, align 4, !dbg !392, !tbaa !253
  %65 = load i32, i32* %56, align 8, !dbg !393, !tbaa !181
  %66 = tail call i32 @lzf_decompress(i8* nonnull %62, i32 %64, i8* %59, i32 %65) #6, !dbg !394
  %67 = icmp eq i32 %66, 0, !dbg !395
  br i1 %67, label %68, label %69, !dbg !396

; <label>:68:                                     ; preds = %55
  tail call void @zfree(i8* %59) #6, !dbg !397
  br label %73, !dbg !398

; <label>:69:                                     ; preds = %55
  tail call void @zfree(i8* %61) #6, !dbg !399
  store i8* %59, i8** %60, align 8, !dbg !400, !tbaa !174
  %70 = load i32, i32* %51, align 4, !dbg !401
  %71 = and i32 %70, -196609, !dbg !401
  %72 = or i32 %71, 65536, !dbg !401
  store i32 %72, i32* %51, align 4, !dbg !401
  br label %73, !dbg !402

; <label>:73:                                     ; preds = %69, %68, %48, %50
  %74 = icmp eq %struct.quicklistNode* %21, %22, !dbg !403
  br i1 %74, label %124, label %75, !dbg !405

; <label>:75:                                     ; preds = %73
  %76 = icmp eq %struct.quicklistNode* %21, %1, !dbg !406
  %77 = icmp eq %struct.quicklistNode* %22, %1, !dbg !408
  %78 = or i1 %77, %76, !dbg !409
  %79 = select i1 %78, i32 1, i32 %23, !dbg !409
  %80 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %21, i64 0, i32 1, !dbg !410
  %81 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %22, i64 0, i32 0, !dbg !411
  %82 = load %struct.quicklistNode*, %struct.quicklistNode** %81, align 8, !dbg !349, !tbaa !70
  %83 = load %struct.quicklistNode*, %struct.quicklistNode** %80, align 8, !dbg !349, !tbaa !70
  %84 = add nuw nsw i32 %20, 1, !dbg !412
  %85 = load i32, i32* %3, align 8, !dbg !413
  %86 = lshr i32 %85, 16, !dbg !413
  %87 = icmp ult i32 %20, %86, !dbg !351
  br i1 %87, label %19, label %88, !dbg !352, !llvm.loop !414

; <label>:88:                                     ; preds = %75
  %89 = icmp eq i32 %79, 0, !dbg !416
  br label %90, !dbg !416

; <label>:90:                                     ; preds = %88, %13
  %91 = phi i32 [ 0, %13 ], [ %20, %88 ], !dbg !418
  %92 = phi i1 [ true, %13 ], [ %89, %88 ]
  %93 = phi %struct.quicklistNode* [ %16, %13 ], [ %82, %88 ], !dbg !349
  %94 = phi %struct.quicklistNode* [ %17, %13 ], [ %83, %88 ], !dbg !349
  %95 = icmp ne %struct.quicklistNode* %1, null, !dbg !419
  %96 = and i1 %95, %92, !dbg !422
  br i1 %96, label %97, label %104, !dbg !422

; <label>:97:                                     ; preds = %90
  %98 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !419
  %99 = load i32, i32* %98, align 4, !dbg !419
  %100 = and i32 %99, 196608, !dbg !419
  %101 = icmp eq i32 %100, 65536, !dbg !419
  br i1 %101, label %102, label %104, !dbg !423

; <label>:102:                                    ; preds = %97
  %103 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %1) #8, !dbg !424
  br label %104, !dbg !424

; <label>:104:                                    ; preds = %90, %97, %102
  %105 = icmp ugt i32 %91, 1, !dbg !426
  br i1 %105, label %106, label %124, !dbg !428

; <label>:106:                                    ; preds = %104
  %107 = icmp eq %struct.quicklistNode* %94, null, !dbg !429
  br i1 %107, label %115, label %108, !dbg !429

; <label>:108:                                    ; preds = %106
  %109 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %94, i64 0, i32 4, !dbg !429
  %110 = load i32, i32* %109, align 4, !dbg !429
  %111 = and i32 %110, 196608, !dbg !429
  %112 = icmp eq i32 %111, 65536, !dbg !429
  br i1 %112, label %113, label %115, !dbg !433

; <label>:113:                                    ; preds = %108
  %114 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %94) #8, !dbg !434
  br label %115, !dbg !434

; <label>:115:                                    ; preds = %106, %108, %113
  %116 = icmp eq %struct.quicklistNode* %93, null, !dbg !436
  br i1 %116, label %124, label %117, !dbg !436

; <label>:117:                                    ; preds = %115
  %118 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %93, i64 0, i32 4, !dbg !436
  %119 = load i32, i32* %118, align 4, !dbg !436
  %120 = and i32 %119, 196608, !dbg !436
  %121 = icmp eq i32 %120, 65536, !dbg !436
  br i1 %121, label %122, label %124, !dbg !439

; <label>:122:                                    ; preds = %117
  %123 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %93) #8, !dbg !440
  br label %124, !dbg !440

; <label>:124:                                    ; preds = %73, %115, %117, %122, %104, %2, %7
  ret void, !dbg !442
}

; Function Attrs: noredzone nounwind
define dso_local void @__quicklistInsertNode(%struct.quicklist* nocapture, %struct.quicklistNode*, %struct.quicklistNode*, i32) local_unnamed_addr #0 !dbg !443 {
  %5 = icmp eq i32 %3, 0, !dbg !455
  br i1 %5, label %25, label %6, !dbg !457

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 0, !dbg !458
  store %struct.quicklistNode* %1, %struct.quicklistNode** %7, align 8, !dbg !460, !tbaa !461
  %8 = icmp eq %struct.quicklistNode* %1, null, !dbg !462
  br i1 %8, label %20, label %9, !dbg !464

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 1, !dbg !465
  %11 = bitcast %struct.quicklistNode** %10 to i64*, !dbg !465
  %12 = load i64, i64* %11, align 8, !dbg !465, !tbaa !217
  %13 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 1, !dbg !467
  %14 = bitcast %struct.quicklistNode** %13 to i64*, !dbg !468
  store i64 %12, i64* %14, align 8, !dbg !468, !tbaa !217
  %15 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !469, !tbaa !217
  %16 = icmp eq %struct.quicklistNode* %15, null, !dbg !471
  br i1 %16, label %19, label %17, !dbg !472

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %15, i64 0, i32 0, !dbg !473
  store %struct.quicklistNode* %2, %struct.quicklistNode** %18, align 8, !dbg !474, !tbaa !461
  br label %19, !dbg !475

; <label>:19:                                     ; preds = %9, %17
  store %struct.quicklistNode* %2, %struct.quicklistNode** %10, align 8, !dbg !476, !tbaa !217
  br label %20, !dbg !477

; <label>:20:                                     ; preds = %6, %19
  %21 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !478
  %22 = load %struct.quicklistNode*, %struct.quicklistNode** %21, align 8, !dbg !478, !tbaa !480
  %23 = icmp eq %struct.quicklistNode* %22, %1, !dbg !481
  br i1 %23, label %24, label %43, !dbg !482

; <label>:24:                                     ; preds = %20
  store %struct.quicklistNode* %2, %struct.quicklistNode** %21, align 8, !dbg !483, !tbaa !480
  br label %43, !dbg !484

; <label>:25:                                     ; preds = %4
  %26 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 1, !dbg !485
  store %struct.quicklistNode* %1, %struct.quicklistNode** %26, align 8, !dbg !487, !tbaa !217
  %27 = icmp eq %struct.quicklistNode* %1, null, !dbg !488
  br i1 %27, label %38, label %28, !dbg !490

; <label>:28:                                     ; preds = %25
  %29 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 0, !dbg !491
  %30 = bitcast %struct.quicklistNode* %1 to i64*, !dbg !491
  %31 = load i64, i64* %30, align 8, !dbg !491, !tbaa !461
  %32 = bitcast %struct.quicklistNode* %2 to i64*, !dbg !493
  store i64 %31, i64* %32, align 8, !dbg !493, !tbaa !461
  %33 = load %struct.quicklistNode*, %struct.quicklistNode** %29, align 8, !dbg !494, !tbaa !461
  %34 = icmp eq %struct.quicklistNode* %33, null, !dbg !496
  br i1 %34, label %37, label %35, !dbg !497

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %33, i64 0, i32 1, !dbg !498
  store %struct.quicklistNode* %2, %struct.quicklistNode** %36, align 8, !dbg !499, !tbaa !217
  br label %37, !dbg !500

; <label>:37:                                     ; preds = %28, %35
  store %struct.quicklistNode* %2, %struct.quicklistNode** %29, align 8, !dbg !501, !tbaa !461
  br label %38, !dbg !502

; <label>:38:                                     ; preds = %25, %37
  %39 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !503
  %40 = load %struct.quicklistNode*, %struct.quicklistNode** %39, align 8, !dbg !503, !tbaa !211
  %41 = icmp eq %struct.quicklistNode* %40, %1, !dbg !505
  br i1 %41, label %42, label %43, !dbg !506

; <label>:42:                                     ; preds = %38
  store %struct.quicklistNode* %2, %struct.quicklistNode** %39, align 8, !dbg !507, !tbaa !211
  br label %43, !dbg !508

; <label>:43:                                     ; preds = %38, %42, %20, %24
  %44 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !509
  %45 = load i64, i64* %44, align 8, !dbg !509, !tbaa !207
  %46 = icmp eq i64 %45, 0, !dbg !511
  br i1 %46, label %47, label %50, !dbg !512

; <label>:47:                                     ; preds = %43
  %48 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !513
  store %struct.quicklistNode* %2, %struct.quicklistNode** %48, align 8, !dbg !515, !tbaa !480
  %49 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !516
  store %struct.quicklistNode* %2, %struct.quicklistNode** %49, align 8, !dbg !517, !tbaa !211
  br label %50, !dbg !518

; <label>:50:                                     ; preds = %47, %43
  %51 = icmp eq %struct.quicklistNode* %1, null, !dbg !519
  br i1 %51, label %63, label %52, !dbg !521

; <label>:52:                                     ; preds = %50
  %53 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !522
  %54 = load i32, i32* %53, align 4, !dbg !522
  %55 = and i32 %54, 1048576, !dbg !522
  %56 = icmp eq i32 %55, 0, !dbg !522
  br i1 %56, label %62, label %57, !dbg !525

; <label>:57:                                     ; preds = %52
  %58 = and i32 %54, 196608, !dbg !526
  %59 = icmp eq i32 %58, 65536, !dbg !526
  br i1 %59, label %60, label %63, !dbg !529

; <label>:60:                                     ; preds = %57
  %61 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %1) #8, !dbg !530
  br label %63, !dbg !530

; <label>:62:                                     ; preds = %52
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %1) #8, !dbg !522
  br label %63

; <label>:63:                                     ; preds = %50, %60, %57, %62
  %64 = load i64, i64* %44, align 8, !dbg !532, !tbaa !207
  %65 = add i64 %64, 1, !dbg !532
  store i64 %65, i64* %44, align 8, !dbg !532, !tbaa !207
  ret void, !dbg !533
}

; Function Attrs: noredzone nounwind
define dso_local void @_quicklistInsertNodeBefore(%struct.quicklist* nocapture, %struct.quicklistNode*, %struct.quicklistNode*) local_unnamed_addr #0 !dbg !534 {
  %4 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 1, !dbg !549
  store %struct.quicklistNode* %1, %struct.quicklistNode** %4, align 8, !dbg !550, !tbaa !217
  %5 = icmp eq %struct.quicklistNode* %1, null, !dbg !551
  br i1 %5, label %16, label %6, !dbg !552

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 0, !dbg !553
  %8 = bitcast %struct.quicklistNode* %1 to i64*, !dbg !553
  %9 = load i64, i64* %8, align 8, !dbg !553, !tbaa !461
  %10 = bitcast %struct.quicklistNode* %2 to i64*, !dbg !554
  store i64 %9, i64* %10, align 8, !dbg !554, !tbaa !461
  %11 = load %struct.quicklistNode*, %struct.quicklistNode** %7, align 8, !dbg !555, !tbaa !461
  %12 = icmp eq %struct.quicklistNode* %11, null, !dbg !556
  br i1 %12, label %15, label %13, !dbg !557

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 1, !dbg !558
  store %struct.quicklistNode* %2, %struct.quicklistNode** %14, align 8, !dbg !559, !tbaa !217
  br label %15, !dbg !560

; <label>:15:                                     ; preds = %13, %6
  store %struct.quicklistNode* %2, %struct.quicklistNode** %7, align 8, !dbg !561, !tbaa !461
  br label %16, !dbg !562

; <label>:16:                                     ; preds = %15, %3
  %17 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !563
  %18 = load %struct.quicklistNode*, %struct.quicklistNode** %17, align 8, !dbg !563, !tbaa !211
  %19 = icmp eq %struct.quicklistNode* %18, %1, !dbg !564
  br i1 %19, label %20, label %21, !dbg !565

; <label>:20:                                     ; preds = %16
  store %struct.quicklistNode* %2, %struct.quicklistNode** %17, align 8, !dbg !566, !tbaa !211
  br label %21, !dbg !567

; <label>:21:                                     ; preds = %20, %16
  %22 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !568
  %23 = load i64, i64* %22, align 8, !dbg !568, !tbaa !207
  %24 = icmp eq i64 %23, 0, !dbg !569
  br i1 %24, label %25, label %27, !dbg !570

; <label>:25:                                     ; preds = %21
  %26 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !571
  store %struct.quicklistNode* %2, %struct.quicklistNode** %26, align 8, !dbg !572, !tbaa !480
  store %struct.quicklistNode* %2, %struct.quicklistNode** %17, align 8, !dbg !573, !tbaa !211
  br label %27, !dbg !574

; <label>:27:                                     ; preds = %25, %21
  br i1 %5, label %39, label %28, !dbg !575

; <label>:28:                                     ; preds = %27
  %29 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !576
  %30 = load i32, i32* %29, align 4, !dbg !576
  %31 = and i32 %30, 1048576, !dbg !576
  %32 = icmp eq i32 %31, 0, !dbg !576
  br i1 %32, label %38, label %33, !dbg !577

; <label>:33:                                     ; preds = %28
  %34 = and i32 %30, 196608, !dbg !578
  %35 = icmp eq i32 %34, 65536, !dbg !578
  br i1 %35, label %36, label %39, !dbg !579

; <label>:36:                                     ; preds = %33
  %37 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %1) #6, !dbg !580
  br label %39, !dbg !580

; <label>:38:                                     ; preds = %28
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %1) #6, !dbg !576
  br label %39

; <label>:39:                                     ; preds = %27, %33, %36, %38
  %40 = load i64, i64* %22, align 8, !dbg !581, !tbaa !207
  %41 = add i64 %40, 1, !dbg !581
  store i64 %41, i64* %22, align 8, !dbg !581, !tbaa !207
  ret void, !dbg !582
}

; Function Attrs: noredzone nounwind
define dso_local void @_quicklistInsertNodeAfter(%struct.quicklist* nocapture, %struct.quicklistNode*, %struct.quicklistNode*) local_unnamed_addr #0 !dbg !583 {
  %4 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 0, !dbg !596
  store %struct.quicklistNode* %1, %struct.quicklistNode** %4, align 8, !dbg !597, !tbaa !461
  %5 = icmp eq %struct.quicklistNode* %1, null, !dbg !598
  br i1 %5, label %17, label %6, !dbg !599

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 1, !dbg !600
  %8 = bitcast %struct.quicklistNode** %7 to i64*, !dbg !600
  %9 = load i64, i64* %8, align 8, !dbg !600, !tbaa !217
  %10 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 1, !dbg !601
  %11 = bitcast %struct.quicklistNode** %10 to i64*, !dbg !602
  store i64 %9, i64* %11, align 8, !dbg !602, !tbaa !217
  %12 = load %struct.quicklistNode*, %struct.quicklistNode** %7, align 8, !dbg !603, !tbaa !217
  %13 = icmp eq %struct.quicklistNode* %12, null, !dbg !604
  br i1 %13, label %16, label %14, !dbg !605

; <label>:14:                                     ; preds = %6
  %15 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %12, i64 0, i32 0, !dbg !606
  store %struct.quicklistNode* %2, %struct.quicklistNode** %15, align 8, !dbg !607, !tbaa !461
  br label %16, !dbg !608

; <label>:16:                                     ; preds = %14, %6
  store %struct.quicklistNode* %2, %struct.quicklistNode** %7, align 8, !dbg !609, !tbaa !217
  br label %17, !dbg !610

; <label>:17:                                     ; preds = %16, %3
  %18 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !611
  %19 = load %struct.quicklistNode*, %struct.quicklistNode** %18, align 8, !dbg !611, !tbaa !480
  %20 = icmp eq %struct.quicklistNode* %19, %1, !dbg !612
  br i1 %20, label %21, label %22, !dbg !613

; <label>:21:                                     ; preds = %17
  store %struct.quicklistNode* %2, %struct.quicklistNode** %18, align 8, !dbg !614, !tbaa !480
  br label %22, !dbg !615

; <label>:22:                                     ; preds = %21, %17
  %23 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !616
  %24 = load i64, i64* %23, align 8, !dbg !616, !tbaa !207
  %25 = icmp eq i64 %24, 0, !dbg !617
  br i1 %25, label %26, label %28, !dbg !618

; <label>:26:                                     ; preds = %22
  store %struct.quicklistNode* %2, %struct.quicklistNode** %18, align 8, !dbg !619, !tbaa !480
  %27 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !620
  store %struct.quicklistNode* %2, %struct.quicklistNode** %27, align 8, !dbg !621, !tbaa !211
  br label %28, !dbg !622

; <label>:28:                                     ; preds = %26, %22
  br i1 %5, label %40, label %29, !dbg !623

; <label>:29:                                     ; preds = %28
  %30 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !624
  %31 = load i32, i32* %30, align 4, !dbg !624
  %32 = and i32 %31, 1048576, !dbg !624
  %33 = icmp eq i32 %32, 0, !dbg !624
  br i1 %33, label %39, label %34, !dbg !625

; <label>:34:                                     ; preds = %29
  %35 = and i32 %31, 196608, !dbg !626
  %36 = icmp eq i32 %35, 65536, !dbg !626
  br i1 %36, label %37, label %40, !dbg !627

; <label>:37:                                     ; preds = %34
  %38 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %1) #6, !dbg !628
  br label %40, !dbg !628

; <label>:39:                                     ; preds = %29
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %1) #6, !dbg !624
  br label %40

; <label>:40:                                     ; preds = %28, %34, %37, %39
  %41 = load i64, i64* %23, align 8, !dbg !629, !tbaa !207
  %42 = add i64 %41, 1, !dbg !629
  store i64 %42, i64* %23, align 8, !dbg !629, !tbaa !207
  ret void, !dbg !630
}

; Function Attrs: noredzone nounwind readnone
define dso_local i32 @_quicklistNodeSizeMeetsOptimizationRequirement(i64, i32) local_unnamed_addr #5 !dbg !631 {
  %3 = icmp ugt i32 %1, -6, !dbg !641
  br i1 %3, label %4, label %11, !dbg !643

; <label>:4:                                      ; preds = %2
  %5 = xor i32 %1, -1, !dbg !644
  %6 = sext i32 %5 to i64, !dbg !645
  %7 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %6, !dbg !647
  %8 = load i64, i64* %7, align 8, !dbg !647, !tbaa !76
  %9 = icmp uge i64 %8, %0, !dbg !650
  %10 = zext i1 %9 to i32, !dbg !651
  br label %11, !dbg !651

; <label>:11:                                     ; preds = %2, %4
  %12 = phi i32 [ 0, %2 ], [ %10, %4 ], !dbg !653
  ret i32 %12, !dbg !655
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @_quicklistNodeAllowInsert(%struct.quicklistNode* readonly, i32, i64) local_unnamed_addr #4 !dbg !656 {
  %4 = icmp eq %struct.quicklistNode* %0, null, !dbg !668
  br i1 %4, label %40, label %5, !dbg !670, !prof !671

; <label>:5:                                      ; preds = %3
  %6 = icmp ult i64 %2, 254, !dbg !672
  %7 = select i1 %6, i32 1, i32 5, !dbg !674
  %8 = icmp ult i64 %2, 64, !dbg !676
  br i1 %8, label %9, label %11, !dbg !678

; <label>:9:                                      ; preds = %5
  %10 = add nuw nsw i32 %7, 1, !dbg !679
  br label %17, !dbg !680

; <label>:11:                                     ; preds = %5
  %12 = icmp ult i64 %2, 16384, !dbg !681
  br i1 %12, label %13, label %15, !dbg !683, !prof !684

; <label>:13:                                     ; preds = %11
  %14 = or i32 %7, 2, !dbg !685
  br label %17, !dbg !686

; <label>:15:                                     ; preds = %11
  %16 = add nuw nsw i32 %7, 5, !dbg !687
  br label %17

; <label>:17:                                     ; preds = %13, %15, %9
  %18 = phi i32 [ %10, %9 ], [ %14, %13 ], [ %16, %15 ], !dbg !688
  %19 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 3, !dbg !689
  %20 = load i32, i32* %19, align 8, !dbg !689, !tbaa !181
  %21 = trunc i64 %2 to i32, !dbg !690
  %22 = add i32 %18, %21, !dbg !690
  %23 = add i32 %22, %20, !dbg !690
  %24 = icmp ugt i32 %1, -6, !dbg !695
  br i1 %24, label %25, label %32, !dbg !696

; <label>:25:                                     ; preds = %17
  %26 = zext i32 %23 to i64, !dbg !697
  %27 = xor i32 %1, -1, !dbg !699
  %28 = sext i32 %27 to i64, !dbg !700
  %29 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %28, !dbg !702
  %30 = load i64, i64* %29, align 8, !dbg !702, !tbaa !76
  %31 = icmp ult i64 %30, %26, !dbg !703
  br i1 %31, label %32, label %40, !dbg !704, !prof !671

; <label>:32:                                     ; preds = %17, %25
  %33 = icmp ult i32 %23, 8193, !dbg !705
  br i1 %33, label %34, label %40, !dbg !707

; <label>:34:                                     ; preds = %32
  %35 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 4, !dbg !708
  %36 = load i32, i32* %35, align 4, !dbg !708
  %37 = and i32 %36, 65535, !dbg !708
  %38 = icmp slt i32 %37, %1, !dbg !710
  %39 = zext i1 %38 to i32, !dbg !711
  br label %40, !dbg !711

; <label>:40:                                     ; preds = %25, %32, %34, %3
  %41 = phi i32 [ 0, %3 ], [ 1, %25 ], [ 0, %32 ], [ %39, %34 ], !dbg !712
  ret i32 %41, !dbg !713
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @_quicklistNodeAllowMerge(%struct.quicklistNode* readonly, %struct.quicklistNode* readonly, i32) local_unnamed_addr #4 !dbg !714 {
  %4 = icmp ne %struct.quicklistNode* %0, null, !dbg !725
  %5 = icmp ne %struct.quicklistNode* %1, null, !dbg !727
  %6 = and i1 %4, %5, !dbg !728
  br i1 %6, label %7, label %34, !dbg !728

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 3, !dbg !729
  %9 = load i32, i32* %8, align 8, !dbg !729, !tbaa !181
  %10 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 3, !dbg !730
  %11 = load i32, i32* %10, align 8, !dbg !730, !tbaa !181
  %12 = add i32 %9, -11, !dbg !731
  %13 = add i32 %12, %11, !dbg !732
  %14 = icmp ugt i32 %2, -6, !dbg !737
  br i1 %14, label %15, label %22, !dbg !738

; <label>:15:                                     ; preds = %7
  %16 = zext i32 %13 to i64, !dbg !739
  %17 = xor i32 %2, -1, !dbg !741
  %18 = sext i32 %17 to i64, !dbg !742
  %19 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %18, !dbg !744
  %20 = load i64, i64* %19, align 8, !dbg !744, !tbaa !76
  %21 = icmp ult i64 %20, %16, !dbg !745
  br i1 %21, label %22, label %34, !dbg !746, !prof !671

; <label>:22:                                     ; preds = %7, %15
  %23 = icmp ult i32 %13, 8193, !dbg !747
  br i1 %23, label %24, label %34, !dbg !749

; <label>:24:                                     ; preds = %22
  %25 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 4, !dbg !750
  %26 = load i32, i32* %25, align 4, !dbg !750
  %27 = and i32 %26, 65535, !dbg !750
  %28 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !752
  %29 = load i32, i32* %28, align 4, !dbg !752
  %30 = and i32 %29, 65535, !dbg !752
  %31 = add nuw nsw i32 %30, %27, !dbg !753
  %32 = icmp sle i32 %31, %2, !dbg !754
  %33 = zext i1 %32 to i32, !dbg !755
  br label %34, !dbg !755

; <label>:34:                                     ; preds = %15, %22, %24, %3
  %35 = phi i32 [ 0, %3 ], [ 1, %15 ], [ 0, %22 ], [ %33, %24 ], !dbg !756
  ret i32 %35, !dbg !757
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistPushHead(%struct.quicklist* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !758 {
  %4 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !772
  %5 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !772, !tbaa !211
  %6 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !774
  %7 = load i32, i32* %6, align 8, !dbg !774
  %8 = shl i32 %7, 16, !dbg !774
  %9 = ashr exact i32 %8, 16, !dbg !774
  %10 = icmp eq %struct.quicklistNode* %5, null, !dbg !779
  br i1 %10, label %11, label %13, !dbg !780, !prof !671

; <label>:11:                                     ; preds = %3
  %12 = trunc i64 %2 to i32, !dbg !781
  br label %57, !dbg !780

; <label>:13:                                     ; preds = %3
  %14 = icmp ult i64 %2, 254, !dbg !782
  %15 = select i1 %14, i32 1, i32 5, !dbg !783
  %16 = icmp ult i64 %2, 64, !dbg !785
  br i1 %16, label %17, label %19, !dbg !786

; <label>:17:                                     ; preds = %13
  %18 = add nuw nsw i32 %15, 1, !dbg !787
  br label %25, !dbg !788

; <label>:19:                                     ; preds = %13
  %20 = icmp ult i64 %2, 16384, !dbg !789
  br i1 %20, label %21, label %23, !dbg !790, !prof !684

; <label>:21:                                     ; preds = %19
  %22 = or i32 %15, 2, !dbg !791
  br label %25, !dbg !792

; <label>:23:                                     ; preds = %19
  %24 = add nuw nsw i32 %15, 5, !dbg !793
  br label %25

; <label>:25:                                     ; preds = %23, %21, %17
  %26 = phi i32 [ %18, %17 ], [ %22, %21 ], [ %24, %23 ], !dbg !794
  %27 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %5, i64 0, i32 3, !dbg !795
  %28 = load i32, i32* %27, align 8, !dbg !795, !tbaa !181
  %29 = trunc i64 %2 to i32, !dbg !796
  %30 = add i32 %26, %29, !dbg !796
  %31 = add i32 %30, %28, !dbg !796
  %32 = icmp ugt i32 %9, -6, !dbg !800
  br i1 %32, label %33, label %40, !dbg !801

; <label>:33:                                     ; preds = %25
  %34 = zext i32 %31 to i64, !dbg !802
  %35 = xor i32 %9, -1, !dbg !804
  %36 = sext i32 %35 to i64, !dbg !805
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %36, !dbg !807
  %38 = load i64, i64* %37, align 8, !dbg !807, !tbaa !76
  %39 = icmp ult i64 %38, %34, !dbg !808
  br i1 %39, label %40, label %47, !dbg !809, !prof !671

; <label>:40:                                     ; preds = %33, %25
  %41 = icmp ult i32 %31, 8193, !dbg !810
  br i1 %41, label %42, label %57, !dbg !811

; <label>:42:                                     ; preds = %40
  %43 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %5, i64 0, i32 4, !dbg !812
  %44 = load i32, i32* %43, align 4, !dbg !812
  %45 = and i32 %44, 65535, !dbg !812
  %46 = icmp slt i32 %45, %9, !dbg !813
  br i1 %46, label %47, label %57, !dbg !814, !prof !684

; <label>:47:                                     ; preds = %42, %33
  %48 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %5, i64 0, i32 2, !dbg !815
  %49 = load i8*, i8** %48, align 8, !dbg !815, !tbaa !174
  %50 = tail call i8* @ziplistPush(i8* %49, i8* %1, i32 %29, i32 0) #6, !dbg !817
  %51 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !818, !tbaa !211
  %52 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %51, i64 0, i32 2, !dbg !819
  store i8* %50, i8** %52, align 8, !dbg !820, !tbaa !174
  %53 = tail call i64 @ziplistBlobLen(i8* %50) #6, !dbg !821
  %54 = trunc i64 %53 to i32, !dbg !821
  %55 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !821, !tbaa !211
  %56 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %55, i64 0, i32 3, !dbg !821
  store i32 %54, i32* %56, align 8, !dbg !821, !tbaa !181
  br label %114, !dbg !823

; <label>:57:                                     ; preds = %11, %42, %40
  %58 = phi i32 [ %12, %11 ], [ %29, %42 ], [ %29, %40 ], !dbg !781
  %59 = tail call i8* @zmalloc(i64 32) #6, !dbg !824
  %60 = getelementptr inbounds i8, i8* %59, i64 16, !dbg !827
  %61 = bitcast i8* %60 to i8**, !dbg !827
  store i8* null, i8** %61, align 8, !dbg !828, !tbaa !174
  %62 = getelementptr inbounds i8, i8* %59, i64 28, !dbg !829
  %63 = bitcast i8* %62 to i32*, !dbg !829
  %64 = load i32, i32* %63, align 4, !dbg !830
  %65 = getelementptr inbounds i8, i8* %59, i64 24, !dbg !831
  %66 = bitcast i8* %65 to i32*, !dbg !831
  store i32 0, i32* %66, align 8, !dbg !832, !tbaa !181
  %67 = getelementptr inbounds i8, i8* %59, i64 8, !dbg !833
  %68 = bitcast i8* %67 to %struct.quicklistNode**, !dbg !833
  %69 = bitcast i8* %59 to <2 x %struct.quicklistNode*>*, !dbg !834
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %69, align 8, !dbg !834, !tbaa !70
  %70 = and i32 %64, -2097152, !dbg !835
  %71 = or i32 %70, 589824, !dbg !835
  store i32 %71, i32* %63, align 4, !dbg !835
  %72 = tail call i8* @ziplistNew() #6, !dbg !837
  %73 = tail call i8* @ziplistPush(i8* %72, i8* %1, i32 %58, i32 0) #6, !dbg !838
  store i8* %73, i8** %61, align 8, !dbg !839, !tbaa !174
  %74 = tail call i64 @ziplistBlobLen(i8* %73) #6, !dbg !840
  %75 = trunc i64 %74 to i32, !dbg !840
  store i32 %75, i32* %66, align 8, !dbg !840, !tbaa !181
  %76 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !842, !tbaa !211
  store %struct.quicklistNode* %76, %struct.quicklistNode** %68, align 8, !dbg !852, !tbaa !217
  %77 = icmp eq %struct.quicklistNode* %76, null, !dbg !853
  br i1 %77, label %90, label %78, !dbg !854

; <label>:78:                                     ; preds = %57
  %79 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %76, i64 0, i32 0, !dbg !855
  %80 = bitcast %struct.quicklistNode* %76 to i64*, !dbg !855
  %81 = load i64, i64* %80, align 8, !dbg !855, !tbaa !461
  %82 = bitcast i8* %59 to i64*, !dbg !856
  store i64 %81, i64* %82, align 8, !dbg !856, !tbaa !461
  %83 = load %struct.quicklistNode*, %struct.quicklistNode** %79, align 8, !dbg !857, !tbaa !461
  %84 = icmp eq %struct.quicklistNode* %83, null, !dbg !858
  br i1 %84, label %88, label %85, !dbg !859

; <label>:85:                                     ; preds = %78
  %86 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %83, i64 0, i32 1, !dbg !860
  %87 = bitcast %struct.quicklistNode** %86 to i8**, !dbg !861
  store i8* %59, i8** %87, align 8, !dbg !861, !tbaa !217
  br label %88, !dbg !862

; <label>:88:                                     ; preds = %85, %78
  %89 = bitcast %struct.quicklistNode* %76 to i8**, !dbg !863
  store i8* %59, i8** %89, align 8, !dbg !863, !tbaa !461
  br label %90, !dbg !864

; <label>:90:                                     ; preds = %88, %57
  %91 = bitcast %struct.quicklist* %0 to i8**, !dbg !865
  store i8* %59, i8** %91, align 8, !dbg !865, !tbaa !211
  %92 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !866
  %93 = load i64, i64* %92, align 8, !dbg !866, !tbaa !207
  %94 = icmp eq i64 %93, 0, !dbg !867
  br i1 %94, label %95, label %98, !dbg !868

; <label>:95:                                     ; preds = %90
  %96 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !869
  %97 = bitcast %struct.quicklistNode** %96 to i8**, !dbg !870
  store i8* %59, i8** %97, align 8, !dbg !870, !tbaa !480
  store i8* %59, i8** %91, align 8, !dbg !871, !tbaa !211
  br label %98, !dbg !872

; <label>:98:                                     ; preds = %95, %90
  br i1 %77, label %110, label %99, !dbg !873

; <label>:99:                                     ; preds = %98
  %100 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %76, i64 0, i32 4, !dbg !874
  %101 = load i32, i32* %100, align 4, !dbg !874
  %102 = and i32 %101, 1048576, !dbg !874
  %103 = icmp eq i32 %102, 0, !dbg !874
  br i1 %103, label %109, label %104, !dbg !875

; <label>:104:                                    ; preds = %99
  %105 = and i32 %101, 196608, !dbg !876
  %106 = icmp eq i32 %105, 65536, !dbg !876
  br i1 %106, label %107, label %110, !dbg !877

; <label>:107:                                    ; preds = %104
  %108 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %76) #6, !dbg !878
  br label %110, !dbg !878

; <label>:109:                                    ; preds = %99
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %76) #6, !dbg !874
  br label %110

; <label>:110:                                    ; preds = %98, %104, %107, %109
  %111 = load i64, i64* %92, align 8, !dbg !879, !tbaa !207
  %112 = add i64 %111, 1, !dbg !879
  store i64 %112, i64* %92, align 8, !dbg !879, !tbaa !207
  %113 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !880, !tbaa !211
  br label %114

; <label>:114:                                    ; preds = %110, %47
  %115 = phi %struct.quicklistNode* [ %113, %110 ], [ %55, %47 ], !dbg !880
  %116 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !881
  %117 = load i64, i64* %116, align 8, !dbg !882, !tbaa !194
  %118 = add i64 %117, 1, !dbg !882
  store i64 %118, i64* %116, align 8, !dbg !882, !tbaa !194
  %119 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %115, i64 0, i32 4, !dbg !883
  %120 = load i32, i32* %119, align 4, !dbg !884
  %121 = add i32 %120, 1, !dbg !884
  %122 = and i32 %121, 65535, !dbg !884
  %123 = and i32 %120, -65536, !dbg !884
  %124 = or i32 %122, %123, !dbg !884
  store i32 %124, i32* %119, align 4, !dbg !884
  %125 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !885, !tbaa !211
  %126 = icmp ne %struct.quicklistNode* %5, %125, !dbg !886
  %127 = zext i1 %126 to i32, !dbg !886
  ret i32 %127, !dbg !887
}

; Function Attrs: noredzone
declare dso_local i8* @ziplistPush(i8*, i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @ziplistBlobLen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @ziplistNew() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistPushTail(%struct.quicklist* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !888 {
  %4 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !900
  %5 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !900, !tbaa !480
  %6 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !902
  %7 = load i32, i32* %6, align 8, !dbg !902
  %8 = shl i32 %7, 16, !dbg !902
  %9 = ashr exact i32 %8, 16, !dbg !902
  %10 = icmp eq %struct.quicklistNode* %5, null, !dbg !907
  br i1 %10, label %11, label %13, !dbg !908, !prof !671

; <label>:11:                                     ; preds = %3
  %12 = trunc i64 %2 to i32, !dbg !909
  br label %57, !dbg !908

; <label>:13:                                     ; preds = %3
  %14 = icmp ult i64 %2, 254, !dbg !910
  %15 = select i1 %14, i32 1, i32 5, !dbg !911
  %16 = icmp ult i64 %2, 64, !dbg !913
  br i1 %16, label %17, label %19, !dbg !914

; <label>:17:                                     ; preds = %13
  %18 = add nuw nsw i32 %15, 1, !dbg !915
  br label %25, !dbg !916

; <label>:19:                                     ; preds = %13
  %20 = icmp ult i64 %2, 16384, !dbg !917
  br i1 %20, label %21, label %23, !dbg !918, !prof !684

; <label>:21:                                     ; preds = %19
  %22 = or i32 %15, 2, !dbg !919
  br label %25, !dbg !920

; <label>:23:                                     ; preds = %19
  %24 = add nuw nsw i32 %15, 5, !dbg !921
  br label %25

; <label>:25:                                     ; preds = %23, %21, %17
  %26 = phi i32 [ %18, %17 ], [ %22, %21 ], [ %24, %23 ], !dbg !922
  %27 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %5, i64 0, i32 3, !dbg !923
  %28 = load i32, i32* %27, align 8, !dbg !923, !tbaa !181
  %29 = trunc i64 %2 to i32, !dbg !924
  %30 = add i32 %26, %29, !dbg !924
  %31 = add i32 %30, %28, !dbg !924
  %32 = icmp ugt i32 %9, -6, !dbg !928
  br i1 %32, label %33, label %40, !dbg !929

; <label>:33:                                     ; preds = %25
  %34 = zext i32 %31 to i64, !dbg !930
  %35 = xor i32 %9, -1, !dbg !932
  %36 = sext i32 %35 to i64, !dbg !933
  %37 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %36, !dbg !935
  %38 = load i64, i64* %37, align 8, !dbg !935, !tbaa !76
  %39 = icmp ult i64 %38, %34, !dbg !936
  br i1 %39, label %40, label %47, !dbg !937, !prof !671

; <label>:40:                                     ; preds = %33, %25
  %41 = icmp ult i32 %31, 8193, !dbg !938
  br i1 %41, label %42, label %57, !dbg !939

; <label>:42:                                     ; preds = %40
  %43 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %5, i64 0, i32 4, !dbg !940
  %44 = load i32, i32* %43, align 4, !dbg !940
  %45 = and i32 %44, 65535, !dbg !940
  %46 = icmp slt i32 %45, %9, !dbg !941
  br i1 %46, label %47, label %57, !dbg !942, !prof !684

; <label>:47:                                     ; preds = %42, %33
  %48 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %5, i64 0, i32 2, !dbg !943
  %49 = load i8*, i8** %48, align 8, !dbg !943, !tbaa !174
  %50 = tail call i8* @ziplistPush(i8* %49, i8* %1, i32 %29, i32 1) #6, !dbg !945
  %51 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !946, !tbaa !480
  %52 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %51, i64 0, i32 2, !dbg !947
  store i8* %50, i8** %52, align 8, !dbg !948, !tbaa !174
  %53 = tail call i64 @ziplistBlobLen(i8* %50) #6, !dbg !949
  %54 = trunc i64 %53 to i32, !dbg !949
  %55 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !949, !tbaa !480
  %56 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %55, i64 0, i32 3, !dbg !949
  store i32 %54, i32* %56, align 8, !dbg !949, !tbaa !181
  br label %112, !dbg !951

; <label>:57:                                     ; preds = %11, %42, %40
  %58 = phi i32 [ %12, %11 ], [ %29, %42 ], [ %29, %40 ], !dbg !909
  %59 = tail call i8* @zmalloc(i64 32) #6, !dbg !952
  %60 = getelementptr inbounds i8, i8* %59, i64 16, !dbg !955
  %61 = bitcast i8* %60 to i8**, !dbg !955
  store i8* null, i8** %61, align 8, !dbg !956, !tbaa !174
  %62 = getelementptr inbounds i8, i8* %59, i64 28, !dbg !957
  %63 = bitcast i8* %62 to i32*, !dbg !957
  %64 = load i32, i32* %63, align 4, !dbg !958
  %65 = getelementptr inbounds i8, i8* %59, i64 24, !dbg !959
  %66 = bitcast i8* %65 to i32*, !dbg !959
  store i32 0, i32* %66, align 8, !dbg !960, !tbaa !181
  %67 = bitcast i8* %59 to %struct.quicklistNode**, !dbg !961
  %68 = bitcast i8* %59 to <2 x %struct.quicklistNode*>*, !dbg !962
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %68, align 8, !dbg !962, !tbaa !70
  %69 = and i32 %64, -2097152, !dbg !963
  %70 = or i32 %69, 589824, !dbg !963
  store i32 %70, i32* %63, align 4, !dbg !963
  %71 = tail call i8* @ziplistNew() #6, !dbg !965
  %72 = tail call i8* @ziplistPush(i8* %71, i8* %1, i32 %58, i32 1) #6, !dbg !966
  store i8* %72, i8** %61, align 8, !dbg !967, !tbaa !174
  %73 = tail call i64 @ziplistBlobLen(i8* %72) #6, !dbg !968
  %74 = trunc i64 %73 to i32, !dbg !968
  store i32 %74, i32* %66, align 8, !dbg !968, !tbaa !181
  %75 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !970, !tbaa !480
  store %struct.quicklistNode* %75, %struct.quicklistNode** %67, align 8, !dbg !980, !tbaa !461
  %76 = icmp eq %struct.quicklistNode* %75, null, !dbg !981
  br i1 %76, label %89, label %77, !dbg !982

; <label>:77:                                     ; preds = %57
  %78 = getelementptr inbounds i8, i8* %59, i64 8, !dbg !983
  %79 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %75, i64 0, i32 1, !dbg !984
  %80 = bitcast %struct.quicklistNode** %79 to i64*, !dbg !984
  %81 = load i64, i64* %80, align 8, !dbg !984, !tbaa !217
  %82 = bitcast i8* %78 to i64*, !dbg !985
  store i64 %81, i64* %82, align 8, !dbg !985, !tbaa !217
  %83 = load %struct.quicklistNode*, %struct.quicklistNode** %79, align 8, !dbg !986, !tbaa !217
  %84 = icmp eq %struct.quicklistNode* %83, null, !dbg !987
  br i1 %84, label %87, label %85, !dbg !988

; <label>:85:                                     ; preds = %77
  %86 = bitcast %struct.quicklistNode* %83 to i8**, !dbg !989
  store i8* %59, i8** %86, align 8, !dbg !989, !tbaa !461
  br label %87, !dbg !990

; <label>:87:                                     ; preds = %85, %77
  %88 = bitcast %struct.quicklistNode** %79 to i8**, !dbg !991
  store i8* %59, i8** %88, align 8, !dbg !991, !tbaa !217
  br label %89, !dbg !992

; <label>:89:                                     ; preds = %87, %57
  %90 = bitcast %struct.quicklistNode** %4 to i8**, !dbg !993
  store i8* %59, i8** %90, align 8, !dbg !993, !tbaa !480
  %91 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !994
  %92 = load i64, i64* %91, align 8, !dbg !994, !tbaa !207
  %93 = icmp eq i64 %92, 0, !dbg !995
  br i1 %93, label %94, label %96, !dbg !996

; <label>:94:                                     ; preds = %89
  store i8* %59, i8** %90, align 8, !dbg !997, !tbaa !480
  %95 = bitcast %struct.quicklist* %0 to i8**, !dbg !998
  store i8* %59, i8** %95, align 8, !dbg !998, !tbaa !211
  br label %96, !dbg !999

; <label>:96:                                     ; preds = %94, %89
  br i1 %76, label %108, label %97, !dbg !1000

; <label>:97:                                     ; preds = %96
  %98 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %75, i64 0, i32 4, !dbg !1001
  %99 = load i32, i32* %98, align 4, !dbg !1001
  %100 = and i32 %99, 1048576, !dbg !1001
  %101 = icmp eq i32 %100, 0, !dbg !1001
  br i1 %101, label %107, label %102, !dbg !1002

; <label>:102:                                    ; preds = %97
  %103 = and i32 %99, 196608, !dbg !1003
  %104 = icmp eq i32 %103, 65536, !dbg !1003
  br i1 %104, label %105, label %108, !dbg !1004

; <label>:105:                                    ; preds = %102
  %106 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %75) #6, !dbg !1005
  br label %108, !dbg !1005

; <label>:107:                                    ; preds = %97
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %75) #6, !dbg !1001
  br label %108

; <label>:108:                                    ; preds = %96, %102, %105, %107
  %109 = load i64, i64* %91, align 8, !dbg !1006, !tbaa !207
  %110 = add i64 %109, 1, !dbg !1006
  store i64 %110, i64* %91, align 8, !dbg !1006, !tbaa !207
  %111 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !1007, !tbaa !480
  br label %112

; <label>:112:                                    ; preds = %108, %47
  %113 = phi %struct.quicklistNode* [ %111, %108 ], [ %55, %47 ], !dbg !1007
  %114 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !1008
  %115 = load i64, i64* %114, align 8, !dbg !1009, !tbaa !194
  %116 = add i64 %115, 1, !dbg !1009
  store i64 %116, i64* %114, align 8, !dbg !1009, !tbaa !194
  %117 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %113, i64 0, i32 4, !dbg !1010
  %118 = load i32, i32* %117, align 4, !dbg !1011
  %119 = add i32 %118, 1, !dbg !1011
  %120 = and i32 %119, 65535, !dbg !1011
  %121 = and i32 %118, -65536, !dbg !1011
  %122 = or i32 %120, %121, !dbg !1011
  store i32 %122, i32* %117, align 4, !dbg !1011
  %123 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !1012, !tbaa !480
  %124 = icmp ne %struct.quicklistNode* %5, %123, !dbg !1013
  %125 = zext i1 %124 to i32, !dbg !1013
  ret i32 %125, !dbg !1014
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistAppendZiplist(%struct.quicklist* nocapture, i8*) local_unnamed_addr #0 !dbg !1015 {
  %3 = tail call i8* @zmalloc(i64 32) #6, !dbg !1024
  %4 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !1027
  %5 = bitcast i8* %4 to i8**, !dbg !1027
  %6 = getelementptr inbounds i8, i8* %3, i64 28, !dbg !1028
  %7 = bitcast i8* %6 to i32*, !dbg !1028
  %8 = load i32, i32* %7, align 4, !dbg !1029
  %9 = getelementptr inbounds i8, i8* %3, i64 24, !dbg !1030
  %10 = bitcast i8* %9 to i32*, !dbg !1030
  store i32 0, i32* %10, align 8, !dbg !1031, !tbaa !181
  %11 = bitcast i8* %3 to %struct.quicklistNode**, !dbg !1032
  %12 = bitcast i8* %3 to <2 x %struct.quicklistNode*>*, !dbg !1033
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %12, align 8, !dbg !1033, !tbaa !70
  %13 = and i32 %8, -2097152, !dbg !1034
  %14 = or i32 %13, 589824, !dbg !1034
  store i32 %14, i32* %7, align 4, !dbg !1034
  store i8* %1, i8** %5, align 8, !dbg !1036, !tbaa !174
  %15 = tail call i32 @ziplistLen(i8* %1) #6, !dbg !1037
  %16 = load i32, i32* %7, align 4, !dbg !1038
  %17 = and i32 %15, 65535, !dbg !1038
  %18 = and i32 %16, -65536, !dbg !1038
  %19 = or i32 %18, %17, !dbg !1038
  store i32 %19, i32* %7, align 4, !dbg !1038
  %20 = tail call i64 @ziplistBlobLen(i8* %1) #6, !dbg !1039
  %21 = trunc i64 %20 to i32, !dbg !1039
  store i32 %21, i32* %10, align 8, !dbg !1040, !tbaa !181
  %22 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !1041
  %23 = load %struct.quicklistNode*, %struct.quicklistNode** %22, align 8, !dbg !1041, !tbaa !480
  store %struct.quicklistNode* %23, %struct.quicklistNode** %11, align 8, !dbg !1051, !tbaa !461
  %24 = icmp eq %struct.quicklistNode* %23, null, !dbg !1052
  br i1 %24, label %37, label %25, !dbg !1053

; <label>:25:                                     ; preds = %2
  %26 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !1054
  %27 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %23, i64 0, i32 1, !dbg !1055
  %28 = bitcast %struct.quicklistNode** %27 to i64*, !dbg !1055
  %29 = load i64, i64* %28, align 8, !dbg !1055, !tbaa !217
  %30 = bitcast i8* %26 to i64*, !dbg !1056
  store i64 %29, i64* %30, align 8, !dbg !1056, !tbaa !217
  %31 = load %struct.quicklistNode*, %struct.quicklistNode** %27, align 8, !dbg !1057, !tbaa !217
  %32 = icmp eq %struct.quicklistNode* %31, null, !dbg !1058
  br i1 %32, label %35, label %33, !dbg !1059

; <label>:33:                                     ; preds = %25
  %34 = bitcast %struct.quicklistNode* %31 to i8**, !dbg !1060
  store i8* %3, i8** %34, align 8, !dbg !1060, !tbaa !461
  br label %35, !dbg !1061

; <label>:35:                                     ; preds = %33, %25
  %36 = bitcast %struct.quicklistNode** %27 to i8**, !dbg !1062
  store i8* %3, i8** %36, align 8, !dbg !1062, !tbaa !217
  br label %37, !dbg !1063

; <label>:37:                                     ; preds = %35, %2
  %38 = bitcast %struct.quicklistNode** %22 to i8**, !dbg !1064
  store i8* %3, i8** %38, align 8, !dbg !1064, !tbaa !480
  %39 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !1065
  %40 = load i64, i64* %39, align 8, !dbg !1065, !tbaa !207
  %41 = icmp eq i64 %40, 0, !dbg !1066
  br i1 %41, label %42, label %44, !dbg !1067

; <label>:42:                                     ; preds = %37
  store i8* %3, i8** %38, align 8, !dbg !1068, !tbaa !480
  %43 = bitcast %struct.quicklist* %0 to i8**, !dbg !1069
  store i8* %3, i8** %43, align 8, !dbg !1069, !tbaa !211
  br label %44, !dbg !1070

; <label>:44:                                     ; preds = %42, %37
  br i1 %24, label %56, label %45, !dbg !1071

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %23, i64 0, i32 4, !dbg !1072
  %47 = load i32, i32* %46, align 4, !dbg !1072
  %48 = and i32 %47, 1048576, !dbg !1072
  %49 = icmp eq i32 %48, 0, !dbg !1072
  br i1 %49, label %55, label %50, !dbg !1073

; <label>:50:                                     ; preds = %45
  %51 = and i32 %47, 196608, !dbg !1074
  %52 = icmp eq i32 %51, 65536, !dbg !1074
  br i1 %52, label %53, label %56, !dbg !1075

; <label>:53:                                     ; preds = %50
  %54 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %23) #6, !dbg !1076
  br label %56, !dbg !1076

; <label>:55:                                     ; preds = %45
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %23) #6, !dbg !1072
  br label %56

; <label>:56:                                     ; preds = %44, %50, %53, %55
  %57 = load i64, i64* %39, align 8, !dbg !1077, !tbaa !207
  %58 = add i64 %57, 1, !dbg !1077
  store i64 %58, i64* %39, align 8, !dbg !1077, !tbaa !207
  %59 = load i32, i32* %7, align 4, !dbg !1078
  %60 = and i32 %59, 65535, !dbg !1078
  %61 = zext i32 %60 to i64, !dbg !1079
  %62 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !1080
  %63 = load i64, i64* %62, align 8, !dbg !1081, !tbaa !194
  %64 = add i64 %63, %61, !dbg !1081
  store i64 %64, i64* %62, align 8, !dbg !1081, !tbaa !194
  ret void, !dbg !1082
}

; Function Attrs: noredzone
declare dso_local i32 @ziplistLen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklist* @quicklistAppendValuesFromZiplist(%struct.quicklist* returned, i8*) local_unnamed_addr #0 !dbg !1083 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [32 x i8], align 16
  %7 = bitcast i8** %3 to i8*, !dbg !1100
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #7, !dbg !1100
  %8 = bitcast i32* %4 to i8*, !dbg !1101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #7, !dbg !1101
  %9 = bitcast i64* %5 to i8*, !dbg !1102
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #7, !dbg !1102
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !1103
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %10) #7, !dbg !1103
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 32, i1 false), !dbg !1104
  %11 = tail call i8* @ziplistIndex(i8* %1, i32 0) #6, !dbg !1105
  %12 = call i32 @ziplistGet(i8* %11, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #6, !dbg !1110
  %13 = icmp eq i32 %12, 0, !dbg !1111
  br i1 %13, label %31, label %14, !dbg !1111

; <label>:14:                                     ; preds = %2, %23
  %15 = phi i8* [ %28, %23 ], [ %11, %2 ]
  %16 = load i8*, i8** %3, align 8, !dbg !1112, !tbaa !70
  %17 = icmp eq i8* %16, null, !dbg !1112
  br i1 %17, label %20, label %18, !dbg !1115

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %4, align 4, !dbg !1116, !tbaa !253
  br label %23, !dbg !1115

; <label>:20:                                     ; preds = %14
  %21 = load i64, i64* %5, align 8, !dbg !1117, !tbaa !1119
  %22 = call i32 @ll2string(i8* nonnull %10, i64 32, i64 %21) #6, !dbg !1121
  store i32 %22, i32* %4, align 4, !dbg !1122, !tbaa !253
  store i8* %10, i8** %3, align 8, !dbg !1123, !tbaa !70
  br label %23, !dbg !1124

; <label>:23:                                     ; preds = %18, %20
  %24 = phi i32 [ %19, %18 ], [ %22, %20 ], !dbg !1116
  %25 = phi i8* [ %16, %18 ], [ %10, %20 ], !dbg !1125
  %26 = zext i32 %24 to i64, !dbg !1116
  %27 = call i32 @quicklistPushTail(%struct.quicklist* %0, i8* %25, i64 %26) #8, !dbg !1126
  %28 = call i8* @ziplistNext(i8* %1, i8* %15) #6, !dbg !1127
  %29 = call i32 @ziplistGet(i8* %28, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #6, !dbg !1110
  %30 = icmp eq i32 %29, 0, !dbg !1111
  br i1 %30, label %31, label %14, !dbg !1111, !llvm.loop !1128

; <label>:31:                                     ; preds = %23, %2
  call void @zfree(i8* %1) #6, !dbg !1130
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #7, !dbg !1131
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #7, !dbg !1131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #7, !dbg !1131
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !1131
  ret %struct.quicklist* %0, !dbg !1132
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #1

; Function Attrs: noredzone
declare dso_local i8* @ziplistIndex(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @ziplistGet(i8*, i8**, i32*, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @ziplistNext(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklist* @quicklistCreateFromZiplist(i32, i32, i8*) local_unnamed_addr #0 !dbg !1133 {
  %4 = tail call i8* @zmalloc(i64 40) #6, !dbg !1146
  %5 = bitcast i8* %4 to %struct.quicklist*, !dbg !1146
  %6 = bitcast i8* %4 to <2 x %struct.quicklistNode*>*, !dbg !1149
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %6, align 8, !dbg !1149, !tbaa !70
  %7 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !1150
  %8 = bitcast i8* %7 to <2 x i64>*, !dbg !1151
  store <2 x i64> zeroinitializer, <2 x i64>* %8, align 8, !dbg !1151, !tbaa !76
  %9 = getelementptr inbounds i8, i8* %4, i64 32, !dbg !1152
  %10 = bitcast i8* %9 to i32*, !dbg !1152
  %11 = icmp sgt i32 %0, -5, !dbg !1161
  %12 = select i1 %11, i32 %0, i32 -5, !dbg !1161
  %13 = icmp slt i32 %12, 32768, !dbg !1162
  %14 = select i1 %13, i32 %12, i32 32768, !dbg !1162
  %15 = and i32 %14, 65535, !dbg !1163
  %16 = icmp sgt i32 %1, 0, !dbg !1167
  %17 = select i1 %16, i32 %1, i32 0, !dbg !1167
  %18 = icmp slt i32 %17, 65536, !dbg !1168
  %19 = select i1 %18, i32 %17, i32 65536, !dbg !1168
  %20 = shl i32 %19, 16, !dbg !1169
  %21 = or i32 %20, %15, !dbg !1169
  store i32 %21, i32* %10, align 8, !dbg !1169
  %22 = tail call %struct.quicklist* @quicklistAppendValuesFromZiplist(%struct.quicklist* %5, i8* %2) #8, !dbg !1170
  ret %struct.quicklist* %22, !dbg !1171
}

; Function Attrs: noredzone nounwind
define dso_local void @__quicklistDelNode(%struct.quicklist* nocapture, %struct.quicklistNode*) local_unnamed_addr #0 !dbg !1172 {
  %3 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 1, !dbg !1180
  %4 = load %struct.quicklistNode*, %struct.quicklistNode** %3, align 8, !dbg !1180, !tbaa !217
  %5 = icmp eq %struct.quicklistNode* %4, null, !dbg !1182
  %6 = ptrtoint %struct.quicklistNode* %4 to i64, !dbg !1183
  br i1 %5, label %11, label %7, !dbg !1183

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.quicklistNode* %1 to i64*, !dbg !1184
  %9 = load i64, i64* %8, align 8, !dbg !1184, !tbaa !461
  %10 = bitcast %struct.quicklistNode* %4 to i64*, !dbg !1185
  store i64 %9, i64* %10, align 8, !dbg !1185, !tbaa !461
  br label %11, !dbg !1186

; <label>:11:                                     ; preds = %2, %7
  %12 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 0, !dbg !1187
  %13 = load %struct.quicklistNode*, %struct.quicklistNode** %12, align 8, !dbg !1187, !tbaa !461
  %14 = icmp eq %struct.quicklistNode* %13, null, !dbg !1189
  %15 = ptrtoint %struct.quicklistNode* %13 to i64, !dbg !1190
  br i1 %14, label %19, label %16, !dbg !1190

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %13, i64 0, i32 1, !dbg !1191
  %18 = bitcast %struct.quicklistNode** %17 to i64*, !dbg !1192
  store i64 %6, i64* %18, align 8, !dbg !1192, !tbaa !217
  br label %19, !dbg !1193

; <label>:19:                                     ; preds = %11, %16
  %20 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !1194
  %21 = load %struct.quicklistNode*, %struct.quicklistNode** %20, align 8, !dbg !1194, !tbaa !480
  %22 = icmp eq %struct.quicklistNode* %21, %1, !dbg !1196
  br i1 %22, label %23, label %25, !dbg !1197

; <label>:23:                                     ; preds = %19
  %24 = bitcast %struct.quicklistNode** %20 to i64*, !dbg !1198
  store i64 %15, i64* %24, align 8, !dbg !1198, !tbaa !480
  br label %25, !dbg !1200

; <label>:25:                                     ; preds = %23, %19
  %26 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !1201
  %27 = load %struct.quicklistNode*, %struct.quicklistNode** %26, align 8, !dbg !1201, !tbaa !211
  %28 = icmp eq %struct.quicklistNode* %27, %1, !dbg !1203
  br i1 %28, label %29, label %33, !dbg !1204

; <label>:29:                                     ; preds = %25
  %30 = bitcast %struct.quicklistNode** %3 to i64*, !dbg !1205
  %31 = load i64, i64* %30, align 8, !dbg !1205, !tbaa !217
  %32 = bitcast %struct.quicklist* %0 to i64*, !dbg !1207
  store i64 %31, i64* %32, align 8, !dbg !1207, !tbaa !211
  br label %33, !dbg !1208

; <label>:33:                                     ; preds = %29, %25
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* null) #8, !dbg !1209
  %34 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !1210
  %35 = load i32, i32* %34, align 4, !dbg !1210
  %36 = and i32 %35, 65535, !dbg !1210
  %37 = zext i32 %36 to i64, !dbg !1211
  %38 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !1212
  %39 = load i64, i64* %38, align 8, !dbg !1213, !tbaa !194
  %40 = sub i64 %39, %37, !dbg !1213
  store i64 %40, i64* %38, align 8, !dbg !1213, !tbaa !194
  %41 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 2, !dbg !1214
  %42 = load i8*, i8** %41, align 8, !dbg !1214, !tbaa !174
  tail call void @zfree(i8* %42) #6, !dbg !1215
  %43 = bitcast %struct.quicklistNode* %1 to i8*, !dbg !1216
  tail call void @zfree(i8* %43) #6, !dbg !1217
  %44 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !1218
  %45 = load i64, i64* %44, align 8, !dbg !1219, !tbaa !207
  %46 = add i64 %45, -1, !dbg !1219
  store i64 %46, i64* %44, align 8, !dbg !1219, !tbaa !207
  ret void, !dbg !1220
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistDelIndex(%struct.quicklist* nocapture, %struct.quicklistNode*, i8**) local_unnamed_addr #0 !dbg !1221 {
  %4 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 2, !dbg !1234
  %5 = load i8*, i8** %4, align 8, !dbg !1234, !tbaa !174
  %6 = tail call i8* @ziplistDelete(i8* %5, i8** %2) #6, !dbg !1235
  store i8* %6, i8** %4, align 8, !dbg !1236, !tbaa !174
  %7 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !1237
  %8 = load i32, i32* %7, align 4, !dbg !1238
  %9 = add i32 %8, 65535, !dbg !1238
  %10 = and i32 %9, 65535, !dbg !1238
  %11 = and i32 %8, -65536, !dbg !1238
  %12 = or i32 %10, %11, !dbg !1238
  store i32 %12, i32* %7, align 4, !dbg !1238
  %13 = icmp eq i32 %10, 0, !dbg !1239
  br i1 %13, label %14, label %57, !dbg !1241

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 1, !dbg !1246
  %16 = load %struct.quicklistNode*, %struct.quicklistNode** %15, align 8, !dbg !1246, !tbaa !217
  %17 = icmp eq %struct.quicklistNode* %16, null, !dbg !1247
  %18 = ptrtoint %struct.quicklistNode* %16 to i64, !dbg !1248
  br i1 %17, label %23, label %19, !dbg !1248

; <label>:19:                                     ; preds = %14
  %20 = bitcast %struct.quicklistNode* %1 to i64*, !dbg !1249
  %21 = load i64, i64* %20, align 8, !dbg !1249, !tbaa !461
  %22 = bitcast %struct.quicklistNode* %16 to i64*, !dbg !1250
  store i64 %21, i64* %22, align 8, !dbg !1250, !tbaa !461
  br label %23, !dbg !1251

; <label>:23:                                     ; preds = %19, %14
  %24 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 0, !dbg !1252
  %25 = load %struct.quicklistNode*, %struct.quicklistNode** %24, align 8, !dbg !1252, !tbaa !461
  %26 = icmp eq %struct.quicklistNode* %25, null, !dbg !1253
  %27 = ptrtoint %struct.quicklistNode* %25 to i64, !dbg !1254
  br i1 %26, label %31, label %28, !dbg !1254

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %25, i64 0, i32 1, !dbg !1255
  %30 = bitcast %struct.quicklistNode** %29 to i64*, !dbg !1256
  store i64 %18, i64* %30, align 8, !dbg !1256, !tbaa !217
  br label %31, !dbg !1257

; <label>:31:                                     ; preds = %28, %23
  %32 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !1258
  %33 = load %struct.quicklistNode*, %struct.quicklistNode** %32, align 8, !dbg !1258, !tbaa !480
  %34 = icmp eq %struct.quicklistNode* %33, %1, !dbg !1259
  br i1 %34, label %35, label %37, !dbg !1260

; <label>:35:                                     ; preds = %31
  %36 = bitcast %struct.quicklistNode** %32 to i64*, !dbg !1261
  store i64 %27, i64* %36, align 8, !dbg !1261, !tbaa !480
  br label %37, !dbg !1262

; <label>:37:                                     ; preds = %35, %31
  %38 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !1263
  %39 = load %struct.quicklistNode*, %struct.quicklistNode** %38, align 8, !dbg !1263, !tbaa !211
  %40 = icmp eq %struct.quicklistNode* %39, %1, !dbg !1264
  br i1 %40, label %41, label %45, !dbg !1265

; <label>:41:                                     ; preds = %37
  %42 = bitcast %struct.quicklistNode** %15 to i64*, !dbg !1266
  %43 = load i64, i64* %42, align 8, !dbg !1266, !tbaa !217
  %44 = bitcast %struct.quicklist* %0 to i64*, !dbg !1267
  store i64 %43, i64* %44, align 8, !dbg !1267, !tbaa !211
  br label %45, !dbg !1268

; <label>:45:                                     ; preds = %37, %41
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* null) #6, !dbg !1269
  %46 = load i32, i32* %7, align 4, !dbg !1270
  %47 = and i32 %46, 65535, !dbg !1270
  %48 = zext i32 %47 to i64, !dbg !1271
  %49 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !1272
  %50 = load i64, i64* %49, align 8, !dbg !1273, !tbaa !194
  %51 = sub i64 %50, %48, !dbg !1273
  store i64 %51, i64* %49, align 8, !dbg !1273, !tbaa !194
  %52 = load i8*, i8** %4, align 8, !dbg !1274, !tbaa !174
  tail call void @zfree(i8* %52) #6, !dbg !1275
  %53 = bitcast %struct.quicklistNode* %1 to i8*, !dbg !1276
  tail call void @zfree(i8* %53) #6, !dbg !1277
  %54 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !1278
  %55 = load i64, i64* %54, align 8, !dbg !1279, !tbaa !207
  %56 = add i64 %55, -1, !dbg !1279
  store i64 %56, i64* %54, align 8, !dbg !1279, !tbaa !207
  br label %62, !dbg !1280

; <label>:57:                                     ; preds = %3
  %58 = tail call i64 @ziplistBlobLen(i8* %6) #6, !dbg !1281
  %59 = trunc i64 %58 to i32, !dbg !1281
  %60 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 3, !dbg !1281
  store i32 %59, i32* %60, align 8, !dbg !1281, !tbaa !181
  %61 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !1284
  br label %62

; <label>:62:                                     ; preds = %57, %45
  %63 = phi i64* [ %61, %57 ], [ %49, %45 ], !dbg !1284
  %64 = phi i32 [ 0, %57 ], [ 1, %45 ]
  %65 = load i64, i64* %63, align 8, !dbg !1285, !tbaa !194
  %66 = add i64 %65, -1, !dbg !1285
  store i64 %66, i64* %63, align 8, !dbg !1285, !tbaa !194
  ret i32 %64, !dbg !1286
}

; Function Attrs: noredzone
declare dso_local i8* @ziplistDelete(i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @quicklistDelEntry(%struct.quicklistIter* nocapture, %struct.quicklistEntry*) local_unnamed_addr #0 !dbg !1287 {
  %3 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 1, !dbg !1319
  %4 = load %struct.quicklistNode*, %struct.quicklistNode** %3, align 8, !dbg !1319, !tbaa !1320
  %5 = bitcast %struct.quicklistNode* %4 to i64*, !dbg !1322
  %6 = load i64, i64* %5, align 8, !dbg !1322, !tbaa !461
  %7 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %4, i64 0, i32 1, !dbg !1324
  %8 = bitcast %struct.quicklistNode** %7 to i64*, !dbg !1324
  %9 = load i64, i64* %8, align 8, !dbg !1324, !tbaa !217
  %10 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 0, !dbg !1326
  %11 = load %struct.quicklist*, %struct.quicklist** %10, align 8, !dbg !1326, !tbaa !1327
  %12 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 2, !dbg !1328
  %13 = tail call i32 @quicklistDelIndex(%struct.quicklist* %11, %struct.quicklistNode* %4, i8** nonnull %12) #8, !dbg !1329
  %14 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 2, !dbg !1331
  store i8* null, i8** %14, align 8, !dbg !1332, !tbaa !1333
  %15 = icmp eq i32 %13, 0, !dbg !1335
  br i1 %15, label %27, label %16, !dbg !1337

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 4, !dbg !1338
  %18 = load i32, i32* %17, align 8, !dbg !1338, !tbaa !1341
  switch i32 %18, label %27 [
    i32 0, label %19
    i32 1, label %23
  ], !dbg !1342

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 1, !dbg !1343
  %21 = bitcast %struct.quicklistNode** %20 to i64*, !dbg !1345
  store i64 %9, i64* %21, align 8, !dbg !1345, !tbaa !1346
  %22 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 3, !dbg !1347
  store i64 0, i64* %22, align 8, !dbg !1348, !tbaa !1349
  br label %27, !dbg !1350

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 1, !dbg !1351
  %25 = bitcast %struct.quicklistNode** %24 to i64*, !dbg !1354
  store i64 %6, i64* %25, align 8, !dbg !1354, !tbaa !1346
  %26 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 3, !dbg !1355
  store i64 -1, i64* %26, align 8, !dbg !1356, !tbaa !1349
  br label %27, !dbg !1357

; <label>:27:                                     ; preds = %16, %2, %19, %23
  ret void, !dbg !1358
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistReplaceAtIndex(%struct.quicklist*, i64, i8*, i32) local_unnamed_addr #0 !dbg !1359 {
  %5 = alloca %struct.quicklistEntry, align 8
  %6 = bitcast %struct.quicklistEntry* %5 to i8*, !dbg !1372
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %6) #7, !dbg !1372
  %7 = call i32 @quicklistIndex(%struct.quicklist* %0, i64 %1, %struct.quicklistEntry* nonnull %5) #8, !dbg !1374
  %8 = icmp eq i32 %7, 0, !dbg !1374
  br i1 %8, label %38, label %9, !dbg !1376, !prof !671

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %5, i64 0, i32 1, !dbg !1377
  %11 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !1377, !tbaa !1320
  %12 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !1379
  %13 = load i8*, i8** %12, align 8, !dbg !1379, !tbaa !174
  %14 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %5, i64 0, i32 2, !dbg !1380
  %15 = call i8* @ziplistDelete(i8* %13, i8** nonnull %14) #6, !dbg !1381
  %16 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !1382, !tbaa !1320
  %17 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %16, i64 0, i32 2, !dbg !1383
  store i8* %15, i8** %17, align 8, !dbg !1384, !tbaa !174
  %18 = load i8*, i8** %14, align 8, !dbg !1385, !tbaa !1386
  %19 = call i8* @ziplistInsert(i8* %15, i8* %18, i8* %2, i32 %3) #6, !dbg !1387
  %20 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !1388, !tbaa !1320
  %21 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %20, i64 0, i32 2, !dbg !1389
  store i8* %19, i8** %21, align 8, !dbg !1390, !tbaa !174
  %22 = call i64 @ziplistBlobLen(i8* %19) #6, !dbg !1391
  %23 = trunc i64 %22 to i32, !dbg !1391
  %24 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !1391, !tbaa !1320
  %25 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %24, i64 0, i32 3, !dbg !1391
  store i32 %23, i32* %25, align 8, !dbg !1391, !tbaa !181
  %26 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %24, i64 0, i32 4, !dbg !1393
  %27 = load i32, i32* %26, align 4, !dbg !1393
  %28 = and i32 %27, 1048576, !dbg !1393
  %29 = icmp eq i32 %28, 0, !dbg !1393
  br i1 %29, label %37, label %30, !dbg !1396

; <label>:30:                                     ; preds = %9
  %31 = icmp ne %struct.quicklistNode* %24, null, !dbg !1397
  %32 = and i32 %27, 196608, !dbg !1397
  %33 = icmp eq i32 %32, 65536, !dbg !1397
  %34 = and i1 %31, %33, !dbg !1397
  br i1 %34, label %35, label %38, !dbg !1397

; <label>:35:                                     ; preds = %30
  %36 = call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %24) #8, !dbg !1400
  br label %38, !dbg !1400

; <label>:37:                                     ; preds = %9
  call void @__quicklistCompress(%struct.quicklist* %0, %struct.quicklistNode* %24) #8, !dbg !1393
  br label %38

; <label>:38:                                     ; preds = %4, %37, %35, %30
  %39 = phi i32 [ 1, %30 ], [ 1, %35 ], [ 1, %37 ], [ 0, %4 ], !dbg !1402
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %6) #7, !dbg !1404
  ret i32 %39, !dbg !1404
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistIndex(%struct.quicklist*, i64, %struct.quicklistEntry*) local_unnamed_addr #0 !dbg !1405 {
  %4 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 3, !dbg !1422
  %5 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 2, !dbg !1422
  %6 = bitcast i8** %5 to <2 x i8*>*, !dbg !1422
  store <2 x i8*> zeroinitializer, <2 x i8*>* %6, align 8, !dbg !1422, !tbaa !70
  %7 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 4, !dbg !1422
  store i64 -123456789, i64* %7, align 8, !dbg !1422, !tbaa !1424
  %8 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 0, !dbg !1422
  %9 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 1, !dbg !1422
  store %struct.quicklistNode* null, %struct.quicklistNode** %9, align 8, !dbg !1422, !tbaa !1320
  %10 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 6, !dbg !1422
  store i32 123456789, i32* %10, align 4, !dbg !1422, !tbaa !1425
  %11 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 5, !dbg !1422
  store i32 0, i32* %11, align 8, !dbg !1422, !tbaa !1426
  store %struct.quicklist* %0, %struct.quicklist** %8, align 8, !dbg !1427, !tbaa !1327
  %12 = icmp sgt i64 %1, -1, !dbg !1428
  %13 = xor i1 %12, true, !dbg !1431
  %14 = sext i1 %13 to i64, !dbg !1431
  %15 = xor i64 %14, %1, !dbg !1431
  %16 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !1432
  %17 = load i64, i64* %16, align 8, !dbg !1432, !tbaa !194
  %18 = icmp ult i64 %15, %17, !dbg !1434
  br i1 %18, label %19, label %82, !dbg !1435

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !1436
  %21 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !1439
  %22 = select i1 %12, %struct.quicklistNode** %20, %struct.quicklistNode** %21, !dbg !1431
  %23 = load %struct.quicklistNode*, %struct.quicklistNode** %22, align 8, !dbg !1441, !tbaa !70
  %24 = icmp eq %struct.quicklistNode* %23, null, !dbg !1445
  br i1 %24, label %82, label %25, !dbg !1446, !prof !671

; <label>:25:                                     ; preds = %19, %34
  %26 = phi %struct.quicklistNode* [ %38, %34 ], [ %23, %19 ]
  %27 = phi i64 [ %32, %34 ], [ 0, %19 ]
  %28 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %26, i64 0, i32 4, !dbg !1447
  %29 = load i32, i32* %28, align 4, !dbg !1447
  %30 = and i32 %29, 65535, !dbg !1447
  %31 = zext i32 %30 to i64, !dbg !1448
  %32 = add i64 %27, %31, !dbg !1449
  %33 = icmp ugt i64 %32, %15, !dbg !1450
  br i1 %33, label %40, label %34, !dbg !1451

; <label>:34:                                     ; preds = %25
  %35 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %26, i64 0, i32 1, !dbg !1452
  %36 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %26, i64 0, i32 0, !dbg !1453
  %37 = select i1 %12, %struct.quicklistNode** %35, %struct.quicklistNode** %36, !dbg !1454
  %38 = load %struct.quicklistNode*, %struct.quicklistNode** %37, align 8, !dbg !1441, !tbaa !70
  %39 = icmp eq %struct.quicklistNode* %38, null, !dbg !1445
  br i1 %39, label %82, label %25, !dbg !1446, !prof !671, !llvm.loop !1455

; <label>:40:                                     ; preds = %25
  %41 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %26, i64 0, i32 4, !dbg !1447
  store %struct.quicklistNode* %26, %struct.quicklistNode** %9, align 8, !dbg !1457, !tbaa !1320
  %42 = xor i64 %15, 4294967295, !dbg !1458
  %43 = add i64 %27, %42, !dbg !1461
  %44 = sub i64 %15, %27, !dbg !1462
  %45 = select i1 %12, i64 %44, i64 %43, !dbg !1464
  %46 = trunc i64 %45 to i32, !dbg !1465
  store i32 %46, i32* %10, align 4, !dbg !1465, !tbaa !1425
  %47 = load i32, i32* %41, align 4, !dbg !1466
  %48 = and i32 %47, 196608, !dbg !1466
  %49 = icmp eq i32 %48, 131072, !dbg !1466
  br i1 %49, label %50, label %75, !dbg !1469

; <label>:50:                                     ; preds = %40
  %51 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %26, i64 0, i32 3, !dbg !1473
  %52 = load i32, i32* %51, align 8, !dbg !1473, !tbaa !181
  %53 = zext i32 %52 to i64, !dbg !1474
  %54 = tail call i8* @zmalloc(i64 %53) #6, !dbg !1475
  %55 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %26, i64 0, i32 2, !dbg !1477
  %56 = load i8*, i8** %55, align 8, !dbg !1477, !tbaa !174
  %57 = getelementptr inbounds i8, i8* %56, i64 4, !dbg !1479
  %58 = bitcast i8* %56 to i32*, !dbg !1480
  %59 = load i32, i32* %58, align 4, !dbg !1480, !tbaa !253
  %60 = load i32, i32* %51, align 8, !dbg !1481, !tbaa !181
  %61 = tail call i32 @lzf_decompress(i8* nonnull %57, i32 %59, i8* %54, i32 %60) #6, !dbg !1482
  %62 = icmp eq i32 %61, 0, !dbg !1483
  br i1 %62, label %63, label %64, !dbg !1484

; <label>:63:                                     ; preds = %50
  tail call void @zfree(i8* %54) #6, !dbg !1485
  br label %68, !dbg !1486

; <label>:64:                                     ; preds = %50
  tail call void @zfree(i8* %56) #6, !dbg !1487
  store i8* %54, i8** %55, align 8, !dbg !1488, !tbaa !174
  %65 = load i32, i32* %41, align 4, !dbg !1489
  %66 = and i32 %65, -196609, !dbg !1489
  %67 = or i32 %66, 65536, !dbg !1489
  store i32 %67, i32* %41, align 4, !dbg !1489
  br label %68, !dbg !1490

; <label>:68:                                     ; preds = %63, %64
  %69 = load %struct.quicklistNode*, %struct.quicklistNode** %9, align 8, !dbg !1491, !tbaa !1320
  %70 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %69, i64 0, i32 4, !dbg !1491
  %71 = load i32, i32* %70, align 4, !dbg !1491
  %72 = or i32 %71, 1048576, !dbg !1491
  store i32 %72, i32* %70, align 4, !dbg !1491
  %73 = load %struct.quicklistNode*, %struct.quicklistNode** %9, align 8, !dbg !1492, !tbaa !1320
  %74 = load i32, i32* %10, align 4, !dbg !1493, !tbaa !1425
  br label %75, !dbg !1491

; <label>:75:                                     ; preds = %68, %40
  %76 = phi i32 [ %74, %68 ], [ %46, %40 ], !dbg !1493
  %77 = phi %struct.quicklistNode* [ %73, %68 ], [ %26, %40 ], !dbg !1492
  %78 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %77, i64 0, i32 2, !dbg !1494
  %79 = load i8*, i8** %78, align 8, !dbg !1494, !tbaa !174
  %80 = tail call i8* @ziplistIndex(i8* %79, i32 %76) #6, !dbg !1495
  store i8* %80, i8** %5, align 8, !dbg !1496, !tbaa !1386
  %81 = tail call i32 @ziplistGet(i8* %80, i8** nonnull %4, i32* nonnull %11, i64* nonnull %7) #6, !dbg !1497
  br label %82, !dbg !1498

; <label>:82:                                     ; preds = %34, %19, %3, %75
  %83 = phi i32 [ 1, %75 ], [ 0, %3 ], [ 0, %19 ], [ 0, %34 ], !dbg !1499
  ret i32 %83, !dbg !1501
}

; Function Attrs: noredzone
declare dso_local i8* @ziplistInsert(i8*, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklistNode* @_quicklistZiplistMerge(%struct.quicklist* nocapture, %struct.quicklistNode*, %struct.quicklistNode*) local_unnamed_addr #0 !dbg !1502 {
  %4 = icmp eq %struct.quicklistNode* %1, null, !dbg !1516
  br i1 %4, label %28, label %5, !dbg !1516

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !1516
  %7 = load i32, i32* %6, align 4, !dbg !1516
  %8 = and i32 %7, 196608, !dbg !1516
  %9 = icmp eq i32 %8, 131072, !dbg !1516
  br i1 %9, label %10, label %28, !dbg !1519

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 3, !dbg !1523
  %12 = load i32, i32* %11, align 8, !dbg !1523, !tbaa !181
  %13 = zext i32 %12 to i64, !dbg !1524
  %14 = tail call i8* @zmalloc(i64 %13) #6, !dbg !1525
  %15 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 2, !dbg !1527
  %16 = load i8*, i8** %15, align 8, !dbg !1527, !tbaa !174
  %17 = getelementptr inbounds i8, i8* %16, i64 4, !dbg !1529
  %18 = bitcast i8* %16 to i32*, !dbg !1530
  %19 = load i32, i32* %18, align 4, !dbg !1530, !tbaa !253
  %20 = load i32, i32* %11, align 8, !dbg !1531, !tbaa !181
  %21 = tail call i32 @lzf_decompress(i8* nonnull %17, i32 %19, i8* %14, i32 %20) #6, !dbg !1532
  %22 = icmp eq i32 %21, 0, !dbg !1533
  br i1 %22, label %23, label %24, !dbg !1534

; <label>:23:                                     ; preds = %10
  tail call void @zfree(i8* %14) #6, !dbg !1535
  br label %28, !dbg !1536

; <label>:24:                                     ; preds = %10
  tail call void @zfree(i8* %16) #6, !dbg !1537
  store i8* %14, i8** %15, align 8, !dbg !1538, !tbaa !174
  %25 = load i32, i32* %6, align 4, !dbg !1539
  %26 = and i32 %25, -196609, !dbg !1539
  %27 = or i32 %26, 65536, !dbg !1539
  store i32 %27, i32* %6, align 4, !dbg !1539
  br label %28, !dbg !1540

; <label>:28:                                     ; preds = %24, %23, %3, %5
  %29 = icmp eq %struct.quicklistNode* %2, null, !dbg !1541
  br i1 %29, label %53, label %30, !dbg !1541

; <label>:30:                                     ; preds = %28
  %31 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 4, !dbg !1541
  %32 = load i32, i32* %31, align 4, !dbg !1541
  %33 = and i32 %32, 196608, !dbg !1541
  %34 = icmp eq i32 %33, 131072, !dbg !1541
  br i1 %34, label %35, label %53, !dbg !1544

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 3, !dbg !1548
  %37 = load i32, i32* %36, align 8, !dbg !1548, !tbaa !181
  %38 = zext i32 %37 to i64, !dbg !1549
  %39 = tail call i8* @zmalloc(i64 %38) #6, !dbg !1550
  %40 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 2, !dbg !1552
  %41 = load i8*, i8** %40, align 8, !dbg !1552, !tbaa !174
  %42 = getelementptr inbounds i8, i8* %41, i64 4, !dbg !1554
  %43 = bitcast i8* %41 to i32*, !dbg !1555
  %44 = load i32, i32* %43, align 4, !dbg !1555, !tbaa !253
  %45 = load i32, i32* %36, align 8, !dbg !1556, !tbaa !181
  %46 = tail call i32 @lzf_decompress(i8* nonnull %42, i32 %44, i8* %39, i32 %45) #6, !dbg !1557
  %47 = icmp eq i32 %46, 0, !dbg !1558
  br i1 %47, label %48, label %49, !dbg !1559

; <label>:48:                                     ; preds = %35
  tail call void @zfree(i8* %39) #6, !dbg !1560
  br label %53, !dbg !1561

; <label>:49:                                     ; preds = %35
  tail call void @zfree(i8* %41) #6, !dbg !1562
  store i8* %39, i8** %40, align 8, !dbg !1563, !tbaa !174
  %50 = load i32, i32* %31, align 4, !dbg !1564
  %51 = and i32 %50, -196609, !dbg !1564
  %52 = or i32 %51, 65536, !dbg !1564
  store i32 %52, i32* %31, align 4, !dbg !1564
  br label %53, !dbg !1565

; <label>:53:                                     ; preds = %49, %48, %28, %30
  %54 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 2, !dbg !1566
  %55 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 2, !dbg !1567
  %56 = tail call i8* @ziplistMerge(i8** nonnull %54, i8** nonnull %55) #6, !dbg !1568
  %57 = icmp eq i8* %56, null, !dbg !1568
  br i1 %57, label %137, label %58, !dbg !1569

; <label>:58:                                     ; preds = %53
  %59 = load i8*, i8** %54, align 8, !dbg !1572, !tbaa !174
  %60 = icmp eq i8* %59, null, !dbg !1574
  br i1 %60, label %67, label %61, !dbg !1575

; <label>:61:                                     ; preds = %58
  %62 = load i8*, i8** %55, align 8, !dbg !1576, !tbaa !174
  %63 = icmp eq i8* %62, null, !dbg !1578
  %64 = select i1 %63, %struct.quicklistNode* %1, %struct.quicklistNode* null, !dbg !1579
  %65 = select i1 %63, %struct.quicklistNode* %2, %struct.quicklistNode* null, !dbg !1579
  %66 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %64, i64 0, i32 2, !dbg !1580
  br label %67, !dbg !1579

; <label>:67:                                     ; preds = %61, %58
  %68 = phi i8** [ %66, %61 ], [ %55, %58 ], !dbg !1580
  %69 = phi %struct.quicklistNode* [ %64, %61 ], [ %2, %58 ], !dbg !1581
  %70 = phi %struct.quicklistNode* [ %65, %61 ], [ %1, %58 ], !dbg !1581
  %71 = load i8*, i8** %68, align 8, !dbg !1580, !tbaa !174
  %72 = tail call i32 @ziplistLen(i8* %71) #6, !dbg !1583
  %73 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %69, i64 0, i32 4, !dbg !1584
  %74 = load i32, i32* %73, align 4, !dbg !1585
  %75 = and i32 %72, 65535, !dbg !1585
  %76 = and i32 %74, -65536, !dbg !1585
  %77 = or i32 %76, %75, !dbg !1585
  store i32 %77, i32* %73, align 4, !dbg !1585
  %78 = load i8*, i8** %68, align 8, !dbg !1586, !tbaa !174
  %79 = tail call i64 @ziplistBlobLen(i8* %78) #6, !dbg !1586
  %80 = trunc i64 %79 to i32, !dbg !1586
  %81 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %69, i64 0, i32 3, !dbg !1586
  store i32 %80, i32* %81, align 8, !dbg !1586, !tbaa !181
  %82 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %70, i64 0, i32 4, !dbg !1588
  %83 = load i32, i32* %82, align 4, !dbg !1589
  %84 = and i32 %83, -65536, !dbg !1589
  store i32 %84, i32* %82, align 4, !dbg !1589
  %85 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %70, i64 0, i32 1, !dbg !1593
  %86 = load %struct.quicklistNode*, %struct.quicklistNode** %85, align 8, !dbg !1593, !tbaa !217
  %87 = icmp eq %struct.quicklistNode* %86, null, !dbg !1594
  %88 = ptrtoint %struct.quicklistNode* %86 to i64, !dbg !1595
  br i1 %87, label %93, label %89, !dbg !1595

; <label>:89:                                     ; preds = %67
  %90 = bitcast %struct.quicklistNode* %70 to i64*, !dbg !1596
  %91 = load i64, i64* %90, align 8, !dbg !1596, !tbaa !461
  %92 = bitcast %struct.quicklistNode* %86 to i64*, !dbg !1597
  store i64 %91, i64* %92, align 8, !dbg !1597, !tbaa !461
  br label %93, !dbg !1598

; <label>:93:                                     ; preds = %89, %67
  %94 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %70, i64 0, i32 0, !dbg !1599
  %95 = load %struct.quicklistNode*, %struct.quicklistNode** %94, align 8, !dbg !1599, !tbaa !461
  %96 = icmp eq %struct.quicklistNode* %95, null, !dbg !1600
  %97 = ptrtoint %struct.quicklistNode* %95 to i64, !dbg !1601
  br i1 %96, label %101, label %98, !dbg !1601

; <label>:98:                                     ; preds = %93
  %99 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %95, i64 0, i32 1, !dbg !1602
  %100 = bitcast %struct.quicklistNode** %99 to i64*, !dbg !1603
  store i64 %88, i64* %100, align 8, !dbg !1603, !tbaa !217
  br label %101, !dbg !1604

; <label>:101:                                    ; preds = %98, %93
  %102 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !1605
  %103 = load %struct.quicklistNode*, %struct.quicklistNode** %102, align 8, !dbg !1605, !tbaa !480
  %104 = icmp eq %struct.quicklistNode* %103, %70, !dbg !1606
  br i1 %104, label %105, label %107, !dbg !1607

; <label>:105:                                    ; preds = %101
  %106 = bitcast %struct.quicklistNode** %102 to i64*, !dbg !1608
  store i64 %97, i64* %106, align 8, !dbg !1608, !tbaa !480
  br label %107, !dbg !1609

; <label>:107:                                    ; preds = %105, %101
  %108 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !1610
  %109 = load %struct.quicklistNode*, %struct.quicklistNode** %108, align 8, !dbg !1610, !tbaa !211
  %110 = icmp eq %struct.quicklistNode* %109, %70, !dbg !1611
  br i1 %110, label %111, label %115, !dbg !1612

; <label>:111:                                    ; preds = %107
  %112 = bitcast %struct.quicklistNode** %85 to i64*, !dbg !1613
  %113 = load i64, i64* %112, align 8, !dbg !1613, !tbaa !217
  %114 = bitcast %struct.quicklist* %0 to i64*, !dbg !1614
  store i64 %113, i64* %114, align 8, !dbg !1614, !tbaa !211
  br label %115, !dbg !1615

; <label>:115:                                    ; preds = %107, %111
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* null) #6, !dbg !1616
  %116 = load i32, i32* %82, align 4, !dbg !1617
  %117 = and i32 %116, 65535, !dbg !1617
  %118 = zext i32 %117 to i64, !dbg !1618
  %119 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !1619
  %120 = load i64, i64* %119, align 8, !dbg !1620, !tbaa !194
  %121 = sub i64 %120, %118, !dbg !1620
  store i64 %121, i64* %119, align 8, !dbg !1620, !tbaa !194
  %122 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %70, i64 0, i32 2, !dbg !1621
  %123 = load i8*, i8** %122, align 8, !dbg !1621, !tbaa !174
  tail call void @zfree(i8* %123) #6, !dbg !1622
  %124 = bitcast %struct.quicklistNode* %70 to i8*, !dbg !1623
  tail call void @zfree(i8* %124) #6, !dbg !1624
  %125 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !1625
  %126 = load i64, i64* %125, align 8, !dbg !1626, !tbaa !207
  %127 = add i64 %126, -1, !dbg !1626
  store i64 %127, i64* %125, align 8, !dbg !1626, !tbaa !207
  %128 = load i32, i32* %73, align 4, !dbg !1627
  %129 = and i32 %128, 1048576, !dbg !1627
  %130 = icmp eq i32 %129, 0, !dbg !1627
  br i1 %130, label %136, label %131, !dbg !1630

; <label>:131:                                    ; preds = %115
  %132 = and i32 %128, 196608, !dbg !1631
  %133 = icmp eq i32 %132, 65536, !dbg !1631
  br i1 %133, label %134, label %137, !dbg !1631

; <label>:134:                                    ; preds = %131
  %135 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %69) #8, !dbg !1634
  br label %137, !dbg !1634

; <label>:136:                                    ; preds = %115
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %69) #8, !dbg !1627
  br label %137

; <label>:137:                                    ; preds = %53, %136, %134, %131
  %138 = phi %struct.quicklistNode* [ %69, %131 ], [ %69, %134 ], [ %69, %136 ], [ null, %53 ], !dbg !1636
  ret %struct.quicklistNode* %138, !dbg !1638
}

; Function Attrs: noredzone
declare dso_local i8* @ziplistMerge(i8**, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @_quicklistMergeNodes(%struct.quicklist* nocapture, %struct.quicklistNode*) local_unnamed_addr #0 !dbg !1639 {
  %3 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !1651
  %4 = load i32, i32* %3, align 8, !dbg !1651
  %5 = shl i32 %4, 16, !dbg !1651
  %6 = ashr exact i32 %5, 16, !dbg !1651
  %7 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 0, !dbg !1658
  %8 = load %struct.quicklistNode*, %struct.quicklistNode** %7, align 8, !dbg !1658, !tbaa !461
  %9 = icmp eq %struct.quicklistNode* %8, null, !dbg !1660
  br i1 %9, label %13, label %10, !dbg !1661

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %8, i64 0, i32 0, !dbg !1662
  %12 = load %struct.quicklistNode*, %struct.quicklistNode** %11, align 8, !dbg !1662, !tbaa !461
  br label %13, !dbg !1665

; <label>:13:                                     ; preds = %10, %2
  %14 = phi %struct.quicklistNode* [ null, %2 ], [ %12, %10 ], !dbg !1666
  %15 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 1, !dbg !1667
  %16 = load %struct.quicklistNode*, %struct.quicklistNode** %15, align 8, !dbg !1667, !tbaa !217
  %17 = icmp eq %struct.quicklistNode* %16, null, !dbg !1669
  br i1 %17, label %21, label %18, !dbg !1670

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %16, i64 0, i32 1, !dbg !1671
  %20 = load %struct.quicklistNode*, %struct.quicklistNode** %19, align 8, !dbg !1671, !tbaa !217
  br label %21, !dbg !1674

; <label>:21:                                     ; preds = %18, %13
  %22 = phi %struct.quicklistNode* [ null, %13 ], [ %20, %18 ], !dbg !1666
  %23 = icmp ne %struct.quicklistNode* %8, null, !dbg !1680
  %24 = icmp ne %struct.quicklistNode* %14, null, !dbg !1681
  %25 = and i1 %23, %24, !dbg !1682
  br i1 %25, label %26, label %54, !dbg !1682

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %8, i64 0, i32 3, !dbg !1683
  %28 = load i32, i32* %27, align 8, !dbg !1683, !tbaa !181
  %29 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %14, i64 0, i32 3, !dbg !1684
  %30 = load i32, i32* %29, align 8, !dbg !1684, !tbaa !181
  %31 = add i32 %28, -11, !dbg !1685
  %32 = add i32 %31, %30, !dbg !1686
  %33 = icmp ugt i32 %6, -6, !dbg !1690
  br i1 %33, label %34, label %41, !dbg !1691

; <label>:34:                                     ; preds = %26
  %35 = zext i32 %32 to i64, !dbg !1692
  %36 = xor i32 %6, -1, !dbg !1694
  %37 = sext i32 %36 to i64, !dbg !1695
  %38 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %37, !dbg !1697
  %39 = load i64, i64* %38, align 8, !dbg !1697, !tbaa !76
  %40 = icmp ult i64 %39, %35, !dbg !1698
  br i1 %40, label %41, label %52, !dbg !1699, !prof !671

; <label>:41:                                     ; preds = %34, %26
  %42 = icmp ult i32 %32, 8193, !dbg !1700
  br i1 %42, label %43, label %54, !dbg !1701

; <label>:43:                                     ; preds = %41
  %44 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %8, i64 0, i32 4, !dbg !1702
  %45 = load i32, i32* %44, align 4, !dbg !1702
  %46 = and i32 %45, 65535, !dbg !1702
  %47 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %14, i64 0, i32 4, !dbg !1703
  %48 = load i32, i32* %47, align 4, !dbg !1703
  %49 = and i32 %48, 65535, !dbg !1703
  %50 = add nuw nsw i32 %49, %46, !dbg !1704
  %51 = icmp sgt i32 %50, %6, !dbg !1705
  br i1 %51, label %54, label %52, !dbg !1706

; <label>:52:                                     ; preds = %34, %43
  %53 = tail call %struct.quicklistNode* @_quicklistZiplistMerge(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %14, %struct.quicklistNode* nonnull %8) #8, !dbg !1707
  br label %54, !dbg !1709

; <label>:54:                                     ; preds = %41, %21, %43, %52
  %55 = icmp ne %struct.quicklistNode* %16, null, !dbg !1715
  %56 = icmp ne %struct.quicklistNode* %22, null, !dbg !1716
  %57 = and i1 %55, %56, !dbg !1717
  br i1 %57, label %58, label %86, !dbg !1717

; <label>:58:                                     ; preds = %54
  %59 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %16, i64 0, i32 3, !dbg !1718
  %60 = load i32, i32* %59, align 8, !dbg !1718, !tbaa !181
  %61 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %22, i64 0, i32 3, !dbg !1719
  %62 = load i32, i32* %61, align 8, !dbg !1719, !tbaa !181
  %63 = add i32 %60, -11, !dbg !1720
  %64 = add i32 %63, %62, !dbg !1721
  %65 = icmp ugt i32 %6, -6, !dbg !1725
  br i1 %65, label %66, label %73, !dbg !1726

; <label>:66:                                     ; preds = %58
  %67 = zext i32 %64 to i64, !dbg !1727
  %68 = xor i32 %6, -1, !dbg !1729
  %69 = sext i32 %68 to i64, !dbg !1730
  %70 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %69, !dbg !1732
  %71 = load i64, i64* %70, align 8, !dbg !1732, !tbaa !76
  %72 = icmp ult i64 %71, %67, !dbg !1733
  br i1 %72, label %73, label %84, !dbg !1734, !prof !671

; <label>:73:                                     ; preds = %66, %58
  %74 = icmp ult i32 %64, 8193, !dbg !1735
  br i1 %74, label %75, label %86, !dbg !1736

; <label>:75:                                     ; preds = %73
  %76 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %16, i64 0, i32 4, !dbg !1737
  %77 = load i32, i32* %76, align 4, !dbg !1737
  %78 = and i32 %77, 65535, !dbg !1737
  %79 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %22, i64 0, i32 4, !dbg !1738
  %80 = load i32, i32* %79, align 4, !dbg !1738
  %81 = and i32 %80, 65535, !dbg !1738
  %82 = add nuw nsw i32 %81, %78, !dbg !1739
  %83 = icmp sgt i32 %82, %6, !dbg !1740
  br i1 %83, label %86, label %84, !dbg !1741

; <label>:84:                                     ; preds = %66, %75
  %85 = tail call %struct.quicklistNode* @_quicklistZiplistMerge(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %16, %struct.quicklistNode* nonnull %22) #8, !dbg !1742
  br label %86, !dbg !1744

; <label>:86:                                     ; preds = %73, %54, %75, %84
  %87 = load %struct.quicklistNode*, %struct.quicklistNode** %7, align 8, !dbg !1745, !tbaa !461
  %88 = icmp eq %struct.quicklistNode* %87, null, !dbg !1751
  br i1 %88, label %118, label %89, !dbg !1752

; <label>:89:                                     ; preds = %86
  %90 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 3, !dbg !1753
  %91 = load i32, i32* %90, align 8, !dbg !1753, !tbaa !181
  %92 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %87, i64 0, i32 3, !dbg !1754
  %93 = load i32, i32* %92, align 8, !dbg !1754, !tbaa !181
  %94 = add i32 %91, -11, !dbg !1755
  %95 = add i32 %94, %93, !dbg !1756
  %96 = icmp ugt i32 %6, -6, !dbg !1760
  br i1 %96, label %97, label %104, !dbg !1761

; <label>:97:                                     ; preds = %89
  %98 = zext i32 %95 to i64, !dbg !1762
  %99 = xor i32 %6, -1, !dbg !1764
  %100 = sext i32 %99 to i64, !dbg !1765
  %101 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %100, !dbg !1767
  %102 = load i64, i64* %101, align 8, !dbg !1767, !tbaa !76
  %103 = icmp ult i64 %102, %98, !dbg !1768
  br i1 %103, label %104, label %115, !dbg !1769, !prof !671

; <label>:104:                                    ; preds = %97, %89
  %105 = icmp ult i32 %95, 8193, !dbg !1770
  br i1 %105, label %106, label %118, !dbg !1771

; <label>:106:                                    ; preds = %104
  %107 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !1772
  %108 = load i32, i32* %107, align 4, !dbg !1772
  %109 = and i32 %108, 65535, !dbg !1772
  %110 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %87, i64 0, i32 4, !dbg !1773
  %111 = load i32, i32* %110, align 4, !dbg !1773
  %112 = and i32 %111, 65535, !dbg !1773
  %113 = add nuw nsw i32 %112, %109, !dbg !1774
  %114 = icmp sgt i32 %113, %6, !dbg !1775
  br i1 %114, label %118, label %115, !dbg !1776

; <label>:115:                                    ; preds = %97, %106
  %116 = tail call %struct.quicklistNode* @_quicklistZiplistMerge(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %87, %struct.quicklistNode* nonnull %1) #8, !dbg !1777
  %117 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %116, i64 0, i32 1, !dbg !1779
  br label %118, !dbg !1781

; <label>:118:                                    ; preds = %86, %104, %106, %115
  %119 = phi %struct.quicklistNode** [ %15, %86 ], [ %15, %104 ], [ %15, %106 ], [ %117, %115 ], !dbg !1779
  %120 = phi %struct.quicklistNode* [ %1, %86 ], [ %1, %104 ], [ %1, %106 ], [ %116, %115 ], !dbg !1782
  %121 = load %struct.quicklistNode*, %struct.quicklistNode** %119, align 8, !dbg !1779, !tbaa !217
  %122 = icmp ne %struct.quicklistNode* %120, null, !dbg !1788
  %123 = icmp ne %struct.quicklistNode* %121, null, !dbg !1789
  %124 = and i1 %122, %123, !dbg !1790
  br i1 %124, label %125, label %153, !dbg !1790

; <label>:125:                                    ; preds = %118
  %126 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %120, i64 0, i32 3, !dbg !1791
  %127 = load i32, i32* %126, align 8, !dbg !1791, !tbaa !181
  %128 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %121, i64 0, i32 3, !dbg !1792
  %129 = load i32, i32* %128, align 8, !dbg !1792, !tbaa !181
  %130 = add i32 %127, -11, !dbg !1793
  %131 = add i32 %130, %129, !dbg !1794
  %132 = icmp ugt i32 %6, -6, !dbg !1798
  br i1 %132, label %133, label %140, !dbg !1799

; <label>:133:                                    ; preds = %125
  %134 = zext i32 %131 to i64, !dbg !1800
  %135 = xor i32 %6, -1, !dbg !1802
  %136 = sext i32 %135 to i64, !dbg !1803
  %137 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %136, !dbg !1805
  %138 = load i64, i64* %137, align 8, !dbg !1805, !tbaa !76
  %139 = icmp ult i64 %138, %134, !dbg !1806
  br i1 %139, label %140, label %151, !dbg !1807, !prof !671

; <label>:140:                                    ; preds = %133, %125
  %141 = icmp ult i32 %131, 8193, !dbg !1808
  br i1 %141, label %142, label %153, !dbg !1809

; <label>:142:                                    ; preds = %140
  %143 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %120, i64 0, i32 4, !dbg !1810
  %144 = load i32, i32* %143, align 4, !dbg !1810
  %145 = and i32 %144, 65535, !dbg !1810
  %146 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %121, i64 0, i32 4, !dbg !1811
  %147 = load i32, i32* %146, align 4, !dbg !1811
  %148 = and i32 %147, 65535, !dbg !1811
  %149 = add nuw nsw i32 %148, %145, !dbg !1812
  %150 = icmp sgt i32 %149, %6, !dbg !1813
  br i1 %150, label %153, label %151, !dbg !1814

; <label>:151:                                    ; preds = %133, %142
  %152 = tail call %struct.quicklistNode* @_quicklistZiplistMerge(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %120, %struct.quicklistNode* nonnull %121) #8, !dbg !1815
  br label %153, !dbg !1817

; <label>:153:                                    ; preds = %140, %118, %142, %151
  ret void, !dbg !1818
}

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklistNode* @_quicklistSplitNode(%struct.quicklistNode* nocapture, i32, i32) local_unnamed_addr #0 !dbg !1819 {
  %4 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 3, !dbg !1835
  %5 = load i32, i32* %4, align 8, !dbg !1835, !tbaa !181
  %6 = zext i32 %5 to i64, !dbg !1836
  %7 = tail call i8* @zmalloc(i64 32) #6, !dbg !1838
  %8 = bitcast i8* %7 to %struct.quicklistNode*, !dbg !1838
  %9 = getelementptr inbounds i8, i8* %7, i64 16, !dbg !1841
  %10 = bitcast i8* %9 to i8**, !dbg !1841
  store i8* null, i8** %10, align 8, !dbg !1842, !tbaa !174
  %11 = getelementptr inbounds i8, i8* %7, i64 28, !dbg !1843
  %12 = bitcast i8* %11 to i32*, !dbg !1843
  %13 = load i32, i32* %12, align 4, !dbg !1844
  %14 = getelementptr inbounds i8, i8* %7, i64 24, !dbg !1845
  %15 = bitcast i8* %14 to i32*, !dbg !1845
  store i32 0, i32* %15, align 8, !dbg !1846, !tbaa !181
  %16 = bitcast i8* %7 to <2 x %struct.quicklistNode*>*, !dbg !1847
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %16, align 8, !dbg !1847, !tbaa !70
  %17 = and i32 %13, -2097152, !dbg !1848
  %18 = or i32 %17, 589824, !dbg !1848
  store i32 %18, i32* %12, align 4, !dbg !1848
  %19 = tail call i8* @zmalloc(i64 %6) #6, !dbg !1850
  store i8* %19, i8** %10, align 8, !dbg !1851, !tbaa !174
  %20 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 2, !dbg !1852
  %21 = load i8*, i8** %20, align 8, !dbg !1852, !tbaa !174
  %22 = tail call i8* @memcpy(i8* %19, i8* %21, i64 %6) #6, !dbg !1853
  %23 = icmp ne i32 %2, 0, !dbg !1854
  %24 = add nsw i32 %1, 1, !dbg !1855
  %25 = select i1 %23, i32 %24, i32 0, !dbg !1854
  %26 = select i1 %23, i32 -1, i32 %1, !dbg !1857
  %27 = select i1 %23, i32 0, i32 %1, !dbg !1859
  %28 = select i1 %23, i32 %24, i32 -1, !dbg !1861
  %29 = load i8*, i8** %20, align 8, !dbg !1863, !tbaa !174
  %30 = tail call i8* @ziplistDeleteRange(i8* %29, i32 %25, i32 %26) #6, !dbg !1864
  store i8* %30, i8** %20, align 8, !dbg !1865, !tbaa !174
  %31 = tail call i32 @ziplistLen(i8* %30) #6, !dbg !1866
  %32 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 4, !dbg !1867
  %33 = load i32, i32* %32, align 4, !dbg !1868
  %34 = and i32 %31, 65535, !dbg !1868
  %35 = and i32 %33, -65536, !dbg !1868
  %36 = or i32 %35, %34, !dbg !1868
  store i32 %36, i32* %32, align 4, !dbg !1868
  %37 = load i8*, i8** %20, align 8, !dbg !1869, !tbaa !174
  %38 = tail call i64 @ziplistBlobLen(i8* %37) #6, !dbg !1869
  %39 = trunc i64 %38 to i32, !dbg !1869
  store i32 %39, i32* %4, align 8, !dbg !1869, !tbaa !181
  %40 = load i8*, i8** %10, align 8, !dbg !1871, !tbaa !174
  %41 = tail call i8* @ziplistDeleteRange(i8* %40, i32 %27, i32 %28) #6, !dbg !1872
  store i8* %41, i8** %10, align 8, !dbg !1873, !tbaa !174
  %42 = tail call i32 @ziplistLen(i8* %41) #6, !dbg !1874
  %43 = load i32, i32* %12, align 4, !dbg !1875
  %44 = and i32 %42, 65535, !dbg !1875
  %45 = and i32 %43, -65536, !dbg !1875
  %46 = or i32 %45, %44, !dbg !1875
  store i32 %46, i32* %12, align 4, !dbg !1875
  %47 = load i8*, i8** %10, align 8, !dbg !1876, !tbaa !174
  %48 = tail call i64 @ziplistBlobLen(i8* %47) #6, !dbg !1876
  %49 = trunc i64 %48 to i32, !dbg !1876
  store i32 %49, i32* %15, align 8, !dbg !1876, !tbaa !181
  ret %struct.quicklistNode* %8, !dbg !1878
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @ziplistDeleteRange(i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @_quicklistInsert(%struct.quicklist* nocapture, %struct.quicklistEntry* nocapture readonly, i8*, i64, i32) local_unnamed_addr #0 !dbg !1879 {
  %6 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !1909
  %7 = load i32, i32* %6, align 8, !dbg !1909
  %8 = shl i32 %7, 16, !dbg !1909
  %9 = ashr exact i32 %8, 16, !dbg !1909
  %10 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 1, !dbg !1911
  %11 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !1911, !tbaa !1320
  %12 = icmp eq %struct.quicklistNode* %11, null, !dbg !1914
  br i1 %12, label %13, label %59, !dbg !1916

; <label>:13:                                     ; preds = %5
  %14 = tail call i8* @zmalloc(i64 32) #6, !dbg !1917
  %15 = getelementptr inbounds i8, i8* %14, i64 16, !dbg !1921
  %16 = bitcast i8* %15 to i8**, !dbg !1921
  store i8* null, i8** %16, align 8, !dbg !1922, !tbaa !174
  %17 = getelementptr inbounds i8, i8* %14, i64 28, !dbg !1923
  %18 = bitcast i8* %17 to i32*, !dbg !1923
  %19 = load i32, i32* %18, align 4, !dbg !1924
  %20 = getelementptr inbounds i8, i8* %14, i64 24, !dbg !1925
  %21 = bitcast i8* %20 to i32*, !dbg !1925
  store i32 0, i32* %21, align 8, !dbg !1926, !tbaa !181
  %22 = bitcast i8* %14 to <2 x %struct.quicklistNode*>*, !dbg !1927
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %22, align 8, !dbg !1927, !tbaa !70
  %23 = and i32 %19, -2097152, !dbg !1928
  %24 = or i32 %23, 589824, !dbg !1928
  store i32 %24, i32* %18, align 4, !dbg !1928
  %25 = tail call i8* @ziplistNew() #6, !dbg !1929
  %26 = trunc i64 %3 to i32, !dbg !1930
  %27 = tail call i8* @ziplistPush(i8* %25, i8* %2, i32 %26, i32 0) #6, !dbg !1931
  store i8* %27, i8** %16, align 8, !dbg !1932, !tbaa !174
  %28 = icmp eq i32 %4, 0, !dbg !1938
  br i1 %28, label %36, label %29, !dbg !1939

; <label>:29:                                     ; preds = %13
  %30 = bitcast i8* %14 to %struct.quicklistNode**, !dbg !1940
  store %struct.quicklistNode* null, %struct.quicklistNode** %30, align 8, !dbg !1941, !tbaa !461
  %31 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !1942
  %32 = load %struct.quicklistNode*, %struct.quicklistNode** %31, align 8, !dbg !1942, !tbaa !480
  %33 = icmp eq %struct.quicklistNode* %32, null, !dbg !1943
  br i1 %33, label %34, label %44, !dbg !1944

; <label>:34:                                     ; preds = %29
  %35 = bitcast %struct.quicklistNode** %31 to i8**, !dbg !1945
  store i8* %14, i8** %35, align 8, !dbg !1945, !tbaa !480
  br label %44, !dbg !1946

; <label>:36:                                     ; preds = %13
  %37 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !1947
  %38 = bitcast i8* %37 to %struct.quicklistNode**, !dbg !1947
  store %struct.quicklistNode* null, %struct.quicklistNode** %38, align 8, !dbg !1948, !tbaa !217
  %39 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !1949
  %40 = load %struct.quicklistNode*, %struct.quicklistNode** %39, align 8, !dbg !1949, !tbaa !211
  %41 = icmp eq %struct.quicklistNode* %40, null, !dbg !1950
  br i1 %41, label %42, label %44, !dbg !1951

; <label>:42:                                     ; preds = %36
  %43 = bitcast %struct.quicklist* %0 to i8**, !dbg !1952
  store i8* %14, i8** %43, align 8, !dbg !1952, !tbaa !211
  br label %44, !dbg !1953

; <label>:44:                                     ; preds = %42, %36, %34, %29
  %45 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !1954
  %46 = load i64, i64* %45, align 8, !dbg !1954, !tbaa !207
  %47 = icmp eq i64 %46, 0, !dbg !1955
  br i1 %47, label %48, label %52, !dbg !1956

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !1957
  %50 = bitcast %struct.quicklistNode** %49 to i8**, !dbg !1958
  store i8* %14, i8** %50, align 8, !dbg !1958, !tbaa !480
  %51 = bitcast %struct.quicklist* %0 to i8**, !dbg !1959
  store i8* %14, i8** %51, align 8, !dbg !1959, !tbaa !211
  br label %52, !dbg !1960

; <label>:52:                                     ; preds = %44, %48
  %53 = add i64 %46, 1, !dbg !1961
  store i64 %53, i64* %45, align 8, !dbg !1961, !tbaa !207
  %54 = load i32, i32* %18, align 4, !dbg !1962
  %55 = add i32 %54, 1, !dbg !1962
  %56 = and i32 %55, 65535, !dbg !1962
  %57 = and i32 %54, -65536, !dbg !1962
  %58 = or i32 %56, %57, !dbg !1962
  store i32 %58, i32* %18, align 4, !dbg !1962
  br label %479, !dbg !1963

; <label>:59:                                     ; preds = %5
  %60 = icmp ult i64 %3, 254, !dbg !1969
  %61 = select i1 %60, i32 1, i32 5, !dbg !1970
  %62 = icmp ult i64 %3, 64, !dbg !1972
  br i1 %62, label %63, label %65, !dbg !1973

; <label>:63:                                     ; preds = %59
  %64 = add nuw nsw i32 %61, 1, !dbg !1974
  br label %71, !dbg !1975

; <label>:65:                                     ; preds = %59
  %66 = icmp ult i64 %3, 16384, !dbg !1976
  br i1 %66, label %67, label %69, !dbg !1977, !prof !684

; <label>:67:                                     ; preds = %65
  %68 = or i32 %61, 2, !dbg !1978
  br label %71, !dbg !1979

; <label>:69:                                     ; preds = %65
  %70 = add nuw nsw i32 %61, 5, !dbg !1980
  br label %71

; <label>:71:                                     ; preds = %69, %67, %63
  %72 = phi i32 [ %64, %63 ], [ %68, %67 ], [ %70, %69 ], !dbg !1981
  %73 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 3, !dbg !1982
  %74 = load i32, i32* %73, align 8, !dbg !1982, !tbaa !181
  %75 = trunc i64 %3 to i32, !dbg !1983
  %76 = add i32 %72, %75, !dbg !1983
  %77 = add i32 %76, %74, !dbg !1983
  %78 = icmp ugt i32 %9, -6, !dbg !1987
  br i1 %78, label %79, label %86, !dbg !1988

; <label>:79:                                     ; preds = %71
  %80 = zext i32 %77 to i64, !dbg !1989
  %81 = xor i32 %9, -1, !dbg !1991
  %82 = sext i32 %81 to i64, !dbg !1992
  %83 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %82, !dbg !1994
  %84 = load i64, i64* %83, align 8, !dbg !1994, !tbaa !76
  %85 = icmp ult i64 %84, %80, !dbg !1995
  br i1 %85, label %86, label %94, !dbg !1996, !prof !671

; <label>:86:                                     ; preds = %79, %71
  %87 = icmp ult i32 %77, 8193, !dbg !1997
  br i1 %87, label %88, label %94, !dbg !1998

; <label>:88:                                     ; preds = %86
  %89 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 4, !dbg !1999
  %90 = load i32, i32* %89, align 4, !dbg !1999
  %91 = and i32 %90, 65535, !dbg !1999
  %92 = icmp slt i32 %91, %9, !dbg !2000
  %93 = zext i1 %92 to i32, !dbg !2001
  br label %94, !dbg !2001

; <label>:94:                                     ; preds = %79, %86, %88
  %95 = phi i32 [ 1, %79 ], [ 0, %86 ], [ %93, %88 ], !dbg !2002
  %96 = icmp eq i32 %95, 0, !dbg !2003
  %97 = xor i32 %95, 1, !dbg !2004
  %98 = icmp ne i32 %4, 0, !dbg !2005
  %99 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 6, !dbg !2007
  %100 = load i32, i32* %99, align 4, !dbg !2007, !tbaa !1425
  br i1 %98, label %101, label %140, !dbg !2009

; <label>:101:                                    ; preds = %94
  %102 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 4, !dbg !2010
  %103 = load i32, i32* %102, align 4, !dbg !2010
  %104 = and i32 %103, 65535, !dbg !2010
  %105 = icmp eq i32 %100, %104, !dbg !2011
  br i1 %105, label %106, label %176, !dbg !2012

; <label>:106:                                    ; preds = %101
  %107 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 1, !dbg !2013
  %108 = load %struct.quicklistNode*, %struct.quicklistNode** %107, align 8, !dbg !2013, !tbaa !217
  %109 = icmp eq %struct.quicklistNode* %108, null, !dbg !2020
  br i1 %109, label %139, label %110, !dbg !2021, !prof !671

; <label>:110:                                    ; preds = %106
  br i1 %62, label %111, label %113, !dbg !2023

; <label>:111:                                    ; preds = %110
  %112 = add nuw nsw i32 %61, 1, !dbg !2024
  br label %119, !dbg !2025

; <label>:113:                                    ; preds = %110
  %114 = icmp ult i64 %3, 16384, !dbg !2026
  br i1 %114, label %115, label %117, !dbg !2027, !prof !684

; <label>:115:                                    ; preds = %113
  %116 = or i32 %61, 2, !dbg !2028
  br label %119, !dbg !2029

; <label>:117:                                    ; preds = %113
  %118 = add nuw nsw i32 %61, 5, !dbg !2030
  br label %119

; <label>:119:                                    ; preds = %117, %115, %111
  %120 = phi i32 [ %112, %111 ], [ %116, %115 ], [ %118, %117 ], !dbg !2031
  %121 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %108, i64 0, i32 3, !dbg !2032
  %122 = load i32, i32* %121, align 8, !dbg !2032, !tbaa !181
  %123 = add i32 %120, %75, !dbg !2033
  %124 = add i32 %123, %122, !dbg !2033
  br i1 %78, label %125, label %132, !dbg !2037

; <label>:125:                                    ; preds = %119
  %126 = zext i32 %124 to i64, !dbg !2038
  %127 = xor i32 %9, -1, !dbg !2040
  %128 = sext i32 %127 to i64, !dbg !2041
  %129 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %128, !dbg !2043
  %130 = load i64, i64* %129, align 8, !dbg !2043, !tbaa !76
  %131 = icmp ult i64 %130, %126, !dbg !2044
  br i1 %131, label %132, label %176, !dbg !2045, !prof !671

; <label>:132:                                    ; preds = %125, %119
  %133 = icmp ult i32 %124, 8193, !dbg !2046
  br i1 %133, label %134, label %139, !dbg !2047

; <label>:134:                                    ; preds = %132
  %135 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %108, i64 0, i32 4, !dbg !2048
  %136 = load i32, i32* %135, align 4, !dbg !2048
  %137 = and i32 %136, 65535, !dbg !2048
  %138 = icmp slt i32 %137, %9, !dbg !2049
  br i1 %138, label %176, label %139, !dbg !2050

; <label>:139:                                    ; preds = %134, %132, %106
  br label %176, !dbg !2050

; <label>:140:                                    ; preds = %94
  %141 = icmp eq i32 %100, 0, !dbg !2051
  br i1 %141, label %142, label %231, !dbg !2052

; <label>:142:                                    ; preds = %140
  %143 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 0, !dbg !2053
  %144 = load %struct.quicklistNode*, %struct.quicklistNode** %143, align 8, !dbg !2053, !tbaa !461
  %145 = icmp eq %struct.quicklistNode* %144, null, !dbg !2060
  br i1 %145, label %175, label %146, !dbg !2061, !prof !671

; <label>:146:                                    ; preds = %142
  br i1 %62, label %147, label %149, !dbg !2063

; <label>:147:                                    ; preds = %146
  %148 = add nuw nsw i32 %61, 1, !dbg !2064
  br label %155, !dbg !2065

; <label>:149:                                    ; preds = %146
  %150 = icmp ult i64 %3, 16384, !dbg !2066
  br i1 %150, label %151, label %153, !dbg !2067, !prof !684

; <label>:151:                                    ; preds = %149
  %152 = or i32 %61, 2, !dbg !2068
  br label %155, !dbg !2069

; <label>:153:                                    ; preds = %149
  %154 = add nuw nsw i32 %61, 5, !dbg !2070
  br label %155

; <label>:155:                                    ; preds = %153, %151, %147
  %156 = phi i32 [ %148, %147 ], [ %152, %151 ], [ %154, %153 ], !dbg !2071
  %157 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %144, i64 0, i32 3, !dbg !2072
  %158 = load i32, i32* %157, align 8, !dbg !2072, !tbaa !181
  %159 = add i32 %156, %75, !dbg !2073
  %160 = add i32 %159, %158, !dbg !2073
  br i1 %78, label %161, label %168, !dbg !2077

; <label>:161:                                    ; preds = %155
  %162 = zext i32 %160 to i64, !dbg !2078
  %163 = xor i32 %9, -1, !dbg !2080
  %164 = sext i32 %163 to i64, !dbg !2081
  %165 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %164, !dbg !2083
  %166 = load i64, i64* %165, align 8, !dbg !2083, !tbaa !76
  %167 = icmp ult i64 %166, %162, !dbg !2084
  br i1 %167, label %168, label %231, !dbg !2085, !prof !671

; <label>:168:                                    ; preds = %161, %155
  %169 = icmp ult i32 %160, 8193, !dbg !2086
  br i1 %169, label %170, label %175, !dbg !2087

; <label>:170:                                    ; preds = %168
  %171 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %144, i64 0, i32 4, !dbg !2088
  %172 = load i32, i32* %171, align 4, !dbg !2088
  %173 = and i32 %172, 65535, !dbg !2088
  %174 = icmp slt i32 %173, %9, !dbg !2089
  br i1 %174, label %231, label %175, !dbg !2090

; <label>:175:                                    ; preds = %170, %168, %142
  br label %231, !dbg !2090

; <label>:176:                                    ; preds = %134, %125, %139, %101
  %177 = phi i32 [ 0, %134 ], [ 1, %139 ], [ 0, %101 ], [ 0, %125 ]
  %178 = phi i32 [ 1, %134 ], [ 1, %139 ], [ 0, %101 ], [ 1, %125 ]
  %179 = icmp eq i32 %97, 0, !dbg !2091
  br i1 %179, label %180, label %231, !dbg !2092

; <label>:180:                                    ; preds = %176
  %181 = and i32 %103, 196608, !dbg !2093
  %182 = icmp eq i32 %181, 131072, !dbg !2093
  br i1 %182, label %185, label %183, !dbg !2096

; <label>:183:                                    ; preds = %180
  %184 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !2097
  br label %205, !dbg !2096

; <label>:185:                                    ; preds = %180
  %186 = zext i32 %74 to i64, !dbg !2101
  %187 = tail call i8* @zmalloc(i64 %186) #6, !dbg !2102
  %188 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !2104
  %189 = load i8*, i8** %188, align 8, !dbg !2104, !tbaa !174
  %190 = getelementptr inbounds i8, i8* %189, i64 4, !dbg !2106
  %191 = bitcast i8* %189 to i32*, !dbg !2107
  %192 = load i32, i32* %191, align 4, !dbg !2107, !tbaa !253
  %193 = load i32, i32* %73, align 8, !dbg !2108, !tbaa !181
  %194 = tail call i32 @lzf_decompress(i8* nonnull %190, i32 %192, i8* %187, i32 %193) #6, !dbg !2109
  %195 = icmp eq i32 %194, 0, !dbg !2110
  br i1 %195, label %196, label %198, !dbg !2111

; <label>:196:                                    ; preds = %185
  tail call void @zfree(i8* %187) #6, !dbg !2112
  %197 = load i32, i32* %102, align 4, !dbg !2113
  br label %202, !dbg !2114

; <label>:198:                                    ; preds = %185
  tail call void @zfree(i8* %189) #6, !dbg !2115
  store i8* %187, i8** %188, align 8, !dbg !2116, !tbaa !174
  %199 = load i32, i32* %102, align 4, !dbg !2117
  %200 = and i32 %199, -196609, !dbg !2117
  %201 = or i32 %200, 65536, !dbg !2117
  store i32 %201, i32* %102, align 4, !dbg !2117
  br label %202, !dbg !2118

; <label>:202:                                    ; preds = %196, %198
  %203 = phi i32 [ %197, %196 ], [ %201, %198 ], !dbg !2113
  %204 = or i32 %203, 1048576, !dbg !2113
  store i32 %204, i32* %102, align 4, !dbg !2113
  br label %205, !dbg !2113

; <label>:205:                                    ; preds = %183, %202
  %206 = phi i8** [ %184, %183 ], [ %188, %202 ], !dbg !2097
  %207 = load i8*, i8** %206, align 8, !dbg !2097, !tbaa !174
  %208 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 2, !dbg !2119
  %209 = load i8*, i8** %208, align 8, !dbg !2119, !tbaa !1386
  %210 = tail call i8* @ziplistNext(i8* %207, i8* %209) #6, !dbg !2120
  %211 = icmp eq i8* %210, null, !dbg !2122
  %212 = load i8*, i8** %206, align 8, !dbg !2124, !tbaa !174
  br i1 %211, label %213, label %215, !dbg !2126

; <label>:213:                                    ; preds = %205
  %214 = tail call i8* @ziplistPush(i8* %212, i8* %2, i32 %75, i32 1) #6, !dbg !2127
  br label %217, !dbg !2129

; <label>:215:                                    ; preds = %205
  %216 = tail call i8* @ziplistInsert(i8* %212, i8* nonnull %210, i8* %2, i32 %75) #6, !dbg !2130
  br label %217

; <label>:217:                                    ; preds = %215, %213
  %218 = phi i8* [ %216, %215 ], [ %214, %213 ]
  store i8* %218, i8** %206, align 8, !dbg !2131, !tbaa !174
  %219 = load i32, i32* %102, align 4, !dbg !2132
  %220 = add i32 %219, 1, !dbg !2132
  %221 = and i32 %220, 65535, !dbg !2132
  %222 = and i32 %219, -65536, !dbg !2132
  %223 = or i32 %221, %222, !dbg !2132
  store i32 %223, i32* %102, align 4, !dbg !2132
  %224 = tail call i64 @ziplistBlobLen(i8* %218) #6, !dbg !2133
  %225 = trunc i64 %224 to i32, !dbg !2133
  store i32 %225, i32* %73, align 8, !dbg !2133, !tbaa !181
  %226 = load i32, i32* %102, align 4, !dbg !2135
  %227 = and i32 %226, 1245184, !dbg !2138
  %228 = icmp eq i32 %227, 1114112, !dbg !2138
  br i1 %228, label %229, label %479, !dbg !2138

; <label>:229:                                    ; preds = %217
  %230 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %11) #8, !dbg !2139
  br label %479, !dbg !2139

; <label>:231:                                    ; preds = %170, %161, %140, %175, %176
  %232 = phi i32 [ 0, %176 ], [ 1, %175 ], [ 1, %170 ], [ 0, %140 ], [ 1, %161 ]
  %233 = phi i32 [ 0, %176 ], [ 1, %175 ], [ 0, %170 ], [ 0, %140 ], [ 0, %161 ]
  %234 = phi i32 [ %177, %176 ], [ 0, %175 ], [ 0, %170 ], [ 0, %140 ], [ 0, %161 ]
  %235 = phi i32 [ %178, %176 ], [ 0, %175 ], [ 0, %170 ], [ 0, %140 ], [ 0, %161 ]
  %236 = or i32 %97, %4, !dbg !2143
  %237 = icmp eq i32 %236, 0, !dbg !2143
  br i1 %237, label %238, label %283, !dbg !2143

; <label>:238:                                    ; preds = %231
  %239 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 4, !dbg !2145
  %240 = load i32, i32* %239, align 4, !dbg !2145
  %241 = and i32 %240, 196608, !dbg !2145
  %242 = icmp eq i32 %241, 131072, !dbg !2145
  br i1 %242, label %245, label %243, !dbg !2149

; <label>:243:                                    ; preds = %238
  %244 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !2150
  br label %265, !dbg !2149

; <label>:245:                                    ; preds = %238
  %246 = zext i32 %74 to i64, !dbg !2154
  %247 = tail call i8* @zmalloc(i64 %246) #6, !dbg !2155
  %248 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !2157
  %249 = load i8*, i8** %248, align 8, !dbg !2157, !tbaa !174
  %250 = getelementptr inbounds i8, i8* %249, i64 4, !dbg !2159
  %251 = bitcast i8* %249 to i32*, !dbg !2160
  %252 = load i32, i32* %251, align 4, !dbg !2160, !tbaa !253
  %253 = load i32, i32* %73, align 8, !dbg !2161, !tbaa !181
  %254 = tail call i32 @lzf_decompress(i8* nonnull %250, i32 %252, i8* %247, i32 %253) #6, !dbg !2162
  %255 = icmp eq i32 %254, 0, !dbg !2163
  br i1 %255, label %256, label %258, !dbg !2164

; <label>:256:                                    ; preds = %245
  tail call void @zfree(i8* %247) #6, !dbg !2165
  %257 = load i32, i32* %239, align 4, !dbg !2166
  br label %262, !dbg !2167

; <label>:258:                                    ; preds = %245
  tail call void @zfree(i8* %249) #6, !dbg !2168
  store i8* %247, i8** %248, align 8, !dbg !2169, !tbaa !174
  %259 = load i32, i32* %239, align 4, !dbg !2170
  %260 = and i32 %259, -196609, !dbg !2170
  %261 = or i32 %260, 65536, !dbg !2170
  store i32 %261, i32* %239, align 4, !dbg !2170
  br label %262, !dbg !2171

; <label>:262:                                    ; preds = %256, %258
  %263 = phi i32 [ %257, %256 ], [ %261, %258 ], !dbg !2166
  %264 = or i32 %263, 1048576, !dbg !2166
  store i32 %264, i32* %239, align 4, !dbg !2166
  br label %265, !dbg !2166

; <label>:265:                                    ; preds = %243, %262
  %266 = phi i8** [ %244, %243 ], [ %248, %262 ], !dbg !2150
  %267 = load i8*, i8** %266, align 8, !dbg !2150, !tbaa !174
  %268 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 2, !dbg !2172
  %269 = load i8*, i8** %268, align 8, !dbg !2172, !tbaa !1386
  %270 = tail call i8* @ziplistInsert(i8* %267, i8* %269, i8* %2, i32 %75) #6, !dbg !2173
  store i8* %270, i8** %266, align 8, !dbg !2174, !tbaa !174
  %271 = load i32, i32* %239, align 4, !dbg !2175
  %272 = add i32 %271, 1, !dbg !2175
  %273 = and i32 %272, 65535, !dbg !2175
  %274 = and i32 %271, -65536, !dbg !2175
  %275 = or i32 %273, %274, !dbg !2175
  store i32 %275, i32* %239, align 4, !dbg !2175
  %276 = tail call i64 @ziplistBlobLen(i8* %270) #6, !dbg !2176
  %277 = trunc i64 %276 to i32, !dbg !2176
  store i32 %277, i32* %73, align 8, !dbg !2176, !tbaa !181
  %278 = load i32, i32* %239, align 4, !dbg !2178
  %279 = and i32 %278, 1245184, !dbg !2181
  %280 = icmp eq i32 %279, 1114112, !dbg !2181
  br i1 %280, label %281, label %479, !dbg !2181

; <label>:281:                                    ; preds = %265
  %282 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %11) #8, !dbg !2182
  br label %479, !dbg !2182

; <label>:283:                                    ; preds = %231
  %284 = icmp ne i32 %235, 0, !dbg !2186
  %285 = and i1 %96, %284, !dbg !2188
  br i1 %285, label %286, label %340, !dbg !2188

; <label>:286:                                    ; preds = %283
  %287 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 1, !dbg !2189
  %288 = load %struct.quicklistNode*, %struct.quicklistNode** %287, align 8, !dbg !2189, !tbaa !217
  %289 = icmp ne %struct.quicklistNode* %288, null, !dbg !2190
  %290 = icmp eq i32 %234, 0, !dbg !2191
  %291 = and i1 %290, %289, !dbg !2192
  %292 = and i1 %98, %291, !dbg !2192
  br i1 %292, label %293, label %340, !dbg !2192

; <label>:293:                                    ; preds = %286
  %294 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %288, i64 0, i32 4, !dbg !2193
  %295 = load i32, i32* %294, align 4, !dbg !2193
  %296 = and i32 %295, 196608, !dbg !2193
  %297 = icmp eq i32 %296, 131072, !dbg !2193
  br i1 %297, label %301, label %298, !dbg !2197

; <label>:298:                                    ; preds = %293
  %299 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %288, i64 0, i32 2, !dbg !2198
  %300 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %288, i64 0, i32 3, !dbg !2199
  br label %323, !dbg !2197

; <label>:301:                                    ; preds = %293
  %302 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %288, i64 0, i32 3, !dbg !2204
  %303 = load i32, i32* %302, align 8, !dbg !2204, !tbaa !181
  %304 = zext i32 %303 to i64, !dbg !2205
  %305 = tail call i8* @zmalloc(i64 %304) #6, !dbg !2206
  %306 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %288, i64 0, i32 2, !dbg !2208
  %307 = load i8*, i8** %306, align 8, !dbg !2208, !tbaa !174
  %308 = getelementptr inbounds i8, i8* %307, i64 4, !dbg !2210
  %309 = bitcast i8* %307 to i32*, !dbg !2211
  %310 = load i32, i32* %309, align 4, !dbg !2211, !tbaa !253
  %311 = load i32, i32* %302, align 8, !dbg !2212, !tbaa !181
  %312 = tail call i32 @lzf_decompress(i8* nonnull %308, i32 %310, i8* %305, i32 %311) #6, !dbg !2213
  %313 = icmp eq i32 %312, 0, !dbg !2214
  br i1 %313, label %314, label %316, !dbg !2215

; <label>:314:                                    ; preds = %301
  tail call void @zfree(i8* %305) #6, !dbg !2216
  %315 = load i32, i32* %294, align 4, !dbg !2217
  br label %320, !dbg !2218

; <label>:316:                                    ; preds = %301
  tail call void @zfree(i8* %307) #6, !dbg !2219
  store i8* %305, i8** %306, align 8, !dbg !2220, !tbaa !174
  %317 = load i32, i32* %294, align 4, !dbg !2221
  %318 = and i32 %317, -196609, !dbg !2221
  %319 = or i32 %318, 65536, !dbg !2221
  store i32 %319, i32* %294, align 4, !dbg !2221
  br label %320, !dbg !2222

; <label>:320:                                    ; preds = %314, %316
  %321 = phi i32 [ %315, %314 ], [ %319, %316 ], !dbg !2217
  %322 = or i32 %321, 1048576, !dbg !2217
  store i32 %322, i32* %294, align 4, !dbg !2217
  br label %323, !dbg !2217

; <label>:323:                                    ; preds = %298, %320
  %324 = phi i32* [ %300, %298 ], [ %302, %320 ], !dbg !2199
  %325 = phi i8** [ %299, %298 ], [ %306, %320 ], !dbg !2198
  %326 = load i8*, i8** %325, align 8, !dbg !2198, !tbaa !174
  %327 = tail call i8* @ziplistPush(i8* %326, i8* %2, i32 %75, i32 0) #6, !dbg !2223
  store i8* %327, i8** %325, align 8, !dbg !2224, !tbaa !174
  %328 = load i32, i32* %294, align 4, !dbg !2225
  %329 = add i32 %328, 1, !dbg !2225
  %330 = and i32 %329, 65535, !dbg !2225
  %331 = and i32 %328, -65536, !dbg !2225
  %332 = or i32 %330, %331, !dbg !2225
  store i32 %332, i32* %294, align 4, !dbg !2225
  %333 = tail call i64 @ziplistBlobLen(i8* %327) #6, !dbg !2199
  %334 = trunc i64 %333 to i32, !dbg !2199
  store i32 %334, i32* %324, align 8, !dbg !2199, !tbaa !181
  %335 = load i32, i32* %294, align 4, !dbg !2226
  %336 = and i32 %335, 1245184, !dbg !2229
  %337 = icmp eq i32 %336, 1114112, !dbg !2229
  br i1 %337, label %338, label %479, !dbg !2229

; <label>:338:                                    ; preds = %323
  %339 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %288) #8, !dbg !2230
  br label %479, !dbg !2230

; <label>:340:                                    ; preds = %286, %283
  %341 = icmp ne i32 %232, 0, !dbg !2234
  %342 = and i1 %96, %341, !dbg !2236
  br i1 %342, label %343, label %397, !dbg !2236

; <label>:343:                                    ; preds = %340
  %344 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 0, !dbg !2237
  %345 = load %struct.quicklistNode*, %struct.quicklistNode** %344, align 8, !dbg !2237, !tbaa !461
  %346 = icmp eq %struct.quicklistNode* %345, null, !dbg !2238
  %347 = or i32 %233, %4, !dbg !2239
  %348 = icmp ne i32 %347, 0, !dbg !2239
  %349 = or i1 %348, %346, !dbg !2239
  br i1 %349, label %397, label %350, !dbg !2239

; <label>:350:                                    ; preds = %343
  %351 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %345, i64 0, i32 4, !dbg !2240
  %352 = load i32, i32* %351, align 4, !dbg !2240
  %353 = and i32 %352, 196608, !dbg !2240
  %354 = icmp eq i32 %353, 131072, !dbg !2240
  br i1 %354, label %358, label %355, !dbg !2244

; <label>:355:                                    ; preds = %350
  %356 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %345, i64 0, i32 2, !dbg !2245
  %357 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %345, i64 0, i32 3, !dbg !2246
  br label %380, !dbg !2244

; <label>:358:                                    ; preds = %350
  %359 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %345, i64 0, i32 3, !dbg !2251
  %360 = load i32, i32* %359, align 8, !dbg !2251, !tbaa !181
  %361 = zext i32 %360 to i64, !dbg !2252
  %362 = tail call i8* @zmalloc(i64 %361) #6, !dbg !2253
  %363 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %345, i64 0, i32 2, !dbg !2255
  %364 = load i8*, i8** %363, align 8, !dbg !2255, !tbaa !174
  %365 = getelementptr inbounds i8, i8* %364, i64 4, !dbg !2257
  %366 = bitcast i8* %364 to i32*, !dbg !2258
  %367 = load i32, i32* %366, align 4, !dbg !2258, !tbaa !253
  %368 = load i32, i32* %359, align 8, !dbg !2259, !tbaa !181
  %369 = tail call i32 @lzf_decompress(i8* nonnull %365, i32 %367, i8* %362, i32 %368) #6, !dbg !2260
  %370 = icmp eq i32 %369, 0, !dbg !2261
  br i1 %370, label %371, label %373, !dbg !2262

; <label>:371:                                    ; preds = %358
  tail call void @zfree(i8* %362) #6, !dbg !2263
  %372 = load i32, i32* %351, align 4, !dbg !2264
  br label %377, !dbg !2265

; <label>:373:                                    ; preds = %358
  tail call void @zfree(i8* %364) #6, !dbg !2266
  store i8* %362, i8** %363, align 8, !dbg !2267, !tbaa !174
  %374 = load i32, i32* %351, align 4, !dbg !2268
  %375 = and i32 %374, -196609, !dbg !2268
  %376 = or i32 %375, 65536, !dbg !2268
  store i32 %376, i32* %351, align 4, !dbg !2268
  br label %377, !dbg !2269

; <label>:377:                                    ; preds = %371, %373
  %378 = phi i32 [ %372, %371 ], [ %376, %373 ], !dbg !2264
  %379 = or i32 %378, 1048576, !dbg !2264
  store i32 %379, i32* %351, align 4, !dbg !2264
  br label %380, !dbg !2264

; <label>:380:                                    ; preds = %355, %377
  %381 = phi i32* [ %357, %355 ], [ %359, %377 ], !dbg !2246
  %382 = phi i8** [ %356, %355 ], [ %363, %377 ], !dbg !2245
  %383 = load i8*, i8** %382, align 8, !dbg !2245, !tbaa !174
  %384 = tail call i8* @ziplistPush(i8* %383, i8* %2, i32 %75, i32 1) #6, !dbg !2270
  store i8* %384, i8** %382, align 8, !dbg !2271, !tbaa !174
  %385 = load i32, i32* %351, align 4, !dbg !2272
  %386 = add i32 %385, 1, !dbg !2272
  %387 = and i32 %386, 65535, !dbg !2272
  %388 = and i32 %385, -65536, !dbg !2272
  %389 = or i32 %387, %388, !dbg !2272
  store i32 %389, i32* %351, align 4, !dbg !2272
  %390 = tail call i64 @ziplistBlobLen(i8* %384) #6, !dbg !2246
  %391 = trunc i64 %390 to i32, !dbg !2246
  store i32 %391, i32* %381, align 8, !dbg !2246, !tbaa !181
  %392 = load i32, i32* %351, align 4, !dbg !2273
  %393 = and i32 %392, 1245184, !dbg !2276
  %394 = icmp eq i32 %393, 1114112, !dbg !2276
  br i1 %394, label %395, label %479, !dbg !2276

; <label>:395:                                    ; preds = %380
  %396 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %345) #8, !dbg !2277
  br label %479, !dbg !2277

; <label>:397:                                    ; preds = %343, %340
  br i1 %96, label %398, label %479, !dbg !2281

; <label>:398:                                    ; preds = %397
  br i1 %284, label %399, label %406, !dbg !2283

; <label>:399:                                    ; preds = %398
  %400 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 1, !dbg !2284
  %401 = load %struct.quicklistNode*, %struct.quicklistNode** %400, align 8, !dbg !2284, !tbaa !217
  %402 = icmp ne %struct.quicklistNode* %401, null, !dbg !2285
  %403 = icmp ne i32 %234, 0, !dbg !2286
  %404 = and i1 %403, %402, !dbg !2287
  %405 = and i1 %98, %404, !dbg !2287
  br i1 %405, label %414, label %406, !dbg !2287

; <label>:406:                                    ; preds = %399, %398
  br i1 %341, label %407, label %436, !dbg !2288

; <label>:407:                                    ; preds = %406
  %408 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 0, !dbg !2289
  %409 = load %struct.quicklistNode*, %struct.quicklistNode** %408, align 8, !dbg !2289, !tbaa !461
  %410 = icmp eq %struct.quicklistNode* %409, null, !dbg !2290
  %411 = icmp eq i32 %233, 0, !dbg !2291
  %412 = or i1 %411, %410, !dbg !2292
  %413 = or i1 %98, %412, !dbg !2292
  br i1 %413, label %436, label %414, !dbg !2292

; <label>:414:                                    ; preds = %407, %399
  %415 = tail call i8* @zmalloc(i64 32) #6, !dbg !2293
  %416 = bitcast i8* %415 to %struct.quicklistNode*, !dbg !2293
  %417 = getelementptr inbounds i8, i8* %415, i64 16, !dbg !2297
  %418 = bitcast i8* %417 to i8**, !dbg !2297
  store i8* null, i8** %418, align 8, !dbg !2298, !tbaa !174
  %419 = getelementptr inbounds i8, i8* %415, i64 28, !dbg !2299
  %420 = bitcast i8* %419 to i32*, !dbg !2299
  %421 = load i32, i32* %420, align 4, !dbg !2300
  %422 = getelementptr inbounds i8, i8* %415, i64 24, !dbg !2301
  %423 = bitcast i8* %422 to i32*, !dbg !2301
  store i32 0, i32* %423, align 8, !dbg !2302, !tbaa !181
  %424 = bitcast i8* %415 to <2 x %struct.quicklistNode*>*, !dbg !2303
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %424, align 8, !dbg !2303, !tbaa !70
  %425 = and i32 %421, -2097152, !dbg !2304
  %426 = or i32 %425, 589824, !dbg !2304
  store i32 %426, i32* %420, align 4, !dbg !2304
  %427 = tail call i8* @ziplistNew() #6, !dbg !2305
  %428 = tail call i8* @ziplistPush(i8* %427, i8* %2, i32 %75, i32 0) #6, !dbg !2306
  store i8* %428, i8** %418, align 8, !dbg !2307, !tbaa !174
  %429 = load i32, i32* %420, align 4, !dbg !2308
  %430 = add i32 %429, 1, !dbg !2308
  %431 = and i32 %430, 65535, !dbg !2308
  %432 = and i32 %429, -65536, !dbg !2308
  %433 = or i32 %431, %432, !dbg !2308
  store i32 %433, i32* %420, align 4, !dbg !2308
  %434 = tail call i64 @ziplistBlobLen(i8* %428) #6, !dbg !2309
  %435 = trunc i64 %434 to i32, !dbg !2309
  store i32 %435, i32* %423, align 8, !dbg !2309, !tbaa !181
  tail call void @__quicklistInsertNode(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %11, %struct.quicklistNode* %416, i32 %4) #8, !dbg !2311
  br label %479, !dbg !2312

; <label>:436:                                    ; preds = %406, %407
  %437 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 4, !dbg !2313
  %438 = load i32, i32* %437, align 4, !dbg !2313
  %439 = and i32 %438, 196608, !dbg !2313
  %440 = icmp eq i32 %439, 131072, !dbg !2313
  br i1 %440, label %441, label %462, !dbg !2318

; <label>:441:                                    ; preds = %436
  %442 = zext i32 %74 to i64, !dbg !2322
  %443 = tail call i8* @zmalloc(i64 %442) #6, !dbg !2323
  %444 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !2325
  %445 = load i8*, i8** %444, align 8, !dbg !2325, !tbaa !174
  %446 = getelementptr inbounds i8, i8* %445, i64 4, !dbg !2327
  %447 = bitcast i8* %445 to i32*, !dbg !2328
  %448 = load i32, i32* %447, align 4, !dbg !2328, !tbaa !253
  %449 = load i32, i32* %73, align 8, !dbg !2329, !tbaa !181
  %450 = tail call i32 @lzf_decompress(i8* nonnull %446, i32 %448, i8* %443, i32 %449) #6, !dbg !2330
  %451 = icmp eq i32 %450, 0, !dbg !2331
  br i1 %451, label %452, label %454, !dbg !2332

; <label>:452:                                    ; preds = %441
  tail call void @zfree(i8* %443) #6, !dbg !2333
  %453 = load i32, i32* %437, align 4, !dbg !2334
  br label %458, !dbg !2335

; <label>:454:                                    ; preds = %441
  tail call void @zfree(i8* %445) #6, !dbg !2336
  store i8* %443, i8** %444, align 8, !dbg !2337, !tbaa !174
  %455 = load i32, i32* %437, align 4, !dbg !2338
  %456 = and i32 %455, -196609, !dbg !2338
  %457 = or i32 %456, 65536, !dbg !2338
  store i32 %457, i32* %437, align 4, !dbg !2338
  br label %458, !dbg !2339

; <label>:458:                                    ; preds = %452, %454
  %459 = phi i32 [ %453, %452 ], [ %457, %454 ], !dbg !2334
  %460 = or i32 %459, 1048576, !dbg !2334
  store i32 %460, i32* %437, align 4, !dbg !2334
  %461 = load i32, i32* %99, align 4, !dbg !2340, !tbaa !1425
  br label %462, !dbg !2334

; <label>:462:                                    ; preds = %458, %436
  %463 = phi i32 [ %461, %458 ], [ %100, %436 ], !dbg !2340
  %464 = tail call %struct.quicklistNode* @_quicklistSplitNode(%struct.quicklistNode* nonnull %11, i32 %463, i32 %4) #8, !dbg !2341
  %465 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %464, i64 0, i32 2, !dbg !2342
  %466 = load i8*, i8** %465, align 8, !dbg !2342, !tbaa !174
  %467 = xor i1 %98, true, !dbg !2343
  %468 = zext i1 %467 to i32, !dbg !2343
  %469 = tail call i8* @ziplistPush(i8* %466, i8* %2, i32 %75, i32 %468) #6, !dbg !2344
  store i8* %469, i8** %465, align 8, !dbg !2345, !tbaa !174
  %470 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %464, i64 0, i32 4, !dbg !2346
  %471 = load i32, i32* %470, align 4, !dbg !2347
  %472 = add i32 %471, 1, !dbg !2347
  %473 = and i32 %472, 65535, !dbg !2347
  %474 = and i32 %471, -65536, !dbg !2347
  %475 = or i32 %473, %474, !dbg !2347
  store i32 %475, i32* %470, align 4, !dbg !2347
  %476 = tail call i64 @ziplistBlobLen(i8* %469) #6, !dbg !2348
  %477 = trunc i64 %476 to i32, !dbg !2348
  %478 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %464, i64 0, i32 3, !dbg !2348
  store i32 %477, i32* %478, align 8, !dbg !2348, !tbaa !181
  tail call void @__quicklistInsertNode(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %11, %struct.quicklistNode* %464, i32 %4) #8, !dbg !2350
  tail call void @_quicklistMergeNodes(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %11) #8, !dbg !2351
  br label %479, !dbg !2352

; <label>:479:                                    ; preds = %338, %323, %414, %462, %380, %395, %281, %217, %229, %265, %397, %52
  %480 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !2353
  %481 = load i64, i64* %480, align 8, !dbg !2353, !tbaa !194
  %482 = add i64 %481, 1, !dbg !2353
  store i64 %482, i64* %480, align 8, !dbg !2353, !tbaa !194
  ret void, !dbg !2354
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistInsertBefore(%struct.quicklist* nocapture, %struct.quicklistEntry* nocapture readonly, i8*, i64) local_unnamed_addr #0 !dbg !2355 {
  tail call void @_quicklistInsert(%struct.quicklist* %0, %struct.quicklistEntry* %1, i8* %2, i64 %3, i32 0) #8, !dbg !2367
  ret void, !dbg !2368
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistInsertAfter(%struct.quicklist* nocapture, %struct.quicklistEntry* nocapture readonly, i8*, i64) local_unnamed_addr #0 !dbg !2369 {
  tail call void @_quicklistInsert(%struct.quicklist* %0, %struct.quicklistEntry* %1, i8* %2, i64 %3, i32 1) #8, !dbg !2379
  ret void, !dbg !2380
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistDelRange(%struct.quicklist*, i64, i64) local_unnamed_addr #0 !dbg !2381 {
  %4 = alloca %struct.quicklistEntry, align 8
  %5 = icmp slt i64 %2, 1, !dbg !2399
  br i1 %5, label %202, label %6, !dbg !2401

; <label>:6:                                      ; preds = %3
  %7 = icmp sgt i64 %1, -1, !dbg !2403
  br i1 %7, label %8, label %11, !dbg !2405

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !2406
  %10 = load i64, i64* %9, align 8, !dbg !2406, !tbaa !194
  br label %11, !dbg !2407

; <label>:11:                                     ; preds = %6, %8
  %12 = phi i64 [ %10, %8 ], [ 0, %6 ]
  %13 = sub i64 %12, %1, !dbg !2408
  %14 = icmp ult i64 %13, %2, !dbg !2408
  %15 = select i1 %14, i64 %13, i64 %2, !dbg !2410
  %16 = bitcast %struct.quicklistEntry* %4 to i8*, !dbg !2411
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %16) #7, !dbg !2411
  %17 = call i32 @quicklistIndex(%struct.quicklist* %0, i64 %1, %struct.quicklistEntry* nonnull %4) #8, !dbg !2413
  %18 = icmp eq i32 %17, 0, !dbg !2413
  br i1 %18, label %200, label %19, !dbg !2415

; <label>:19:                                     ; preds = %11
  %20 = icmp eq i64 %15, 0, !dbg !2416
  br i1 %20, label %200, label %21, !dbg !2416

; <label>:21:                                     ; preds = %19
  %22 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 1, !dbg !2417
  %23 = load %struct.quicklistNode*, %struct.quicklistNode** %22, align 8, !dbg !2417, !tbaa !1320
  %24 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 6
  %25 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2
  %26 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1
  %27 = bitcast %struct.quicklistNode** %26 to i64*
  %28 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0
  %29 = bitcast %struct.quicklist* %0 to i64*
  %30 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3
  %31 = load i32, i32* %24, align 4, !dbg !2419, !tbaa !1425
  br label %32, !dbg !2416

; <label>:32:                                     ; preds = %21, %196
  %33 = phi i32 [ %31, %21 ], [ 0, %196 ], !dbg !2419
  %34 = phi %struct.quicklistNode* [ %23, %21 ], [ %37, %196 ]
  %35 = phi i64 [ %15, %21 ], [ %198, %196 ]
  %36 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 1, !dbg !2421
  %37 = load %struct.quicklistNode*, %struct.quicklistNode** %36, align 8, !dbg !2421, !tbaa !217
  %38 = icmp eq i32 %33, 0, !dbg !2424
  br i1 %38, label %39, label %45, !dbg !2425

; <label>:39:                                     ; preds = %32
  %40 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 4, !dbg !2426
  %41 = load i32, i32* %40, align 4, !dbg !2426
  %42 = and i32 %41, 65535, !dbg !2426
  %43 = zext i32 %42 to i64, !dbg !2427
  %44 = icmp ult i64 %35, %43, !dbg !2428
  br i1 %44, label %52, label %68, !dbg !2429

; <label>:45:                                     ; preds = %32
  %46 = icmp sgt i32 %33, -1, !dbg !2430
  br i1 %46, label %47, label %61, !dbg !2432

; <label>:47:                                     ; preds = %45
  %48 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 4
  %49 = load i32, i32* %48, align 4, !dbg !2433
  %50 = and i32 %49, 65535, !dbg !2433
  %51 = zext i32 %50 to i64, !dbg !2434
  br label %52, !dbg !2432

; <label>:52:                                     ; preds = %47, %39
  %53 = phi i64 [ %51, %47 ], [ %43, %39 ], !dbg !2434
  %54 = phi i32 [ %50, %47 ], [ %42, %39 ], !dbg !2433
  %55 = phi i32* [ %48, %47 ], [ %40, %39 ], !dbg !2433
  %56 = phi i32 [ %49, %47 ], [ %41, %39 ], !dbg !2433
  %57 = icmp ult i64 %35, %53, !dbg !2435
  br i1 %57, label %104, label %58, !dbg !2436

; <label>:58:                                     ; preds = %52
  %59 = sub nsw i32 %54, %33, !dbg !2437
  %60 = sext i32 %59 to i64, !dbg !2439
  br label %104, !dbg !2441

; <label>:61:                                     ; preds = %45
  %62 = sub nsw i32 0, %33, !dbg !2442
  %63 = sext i32 %62 to i64, !dbg !2442
  %64 = icmp ult i64 %35, %63, !dbg !2445
  %65 = select i1 %64, i64 %35, i64 %63, !dbg !2447
  %66 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 4
  %67 = load i32, i32* %66, align 4, !dbg !2448
  br label %104, !dbg !2447

; <label>:68:                                     ; preds = %39
  %69 = icmp eq %struct.quicklistNode* %37, null, !dbg !2457
  %70 = ptrtoint %struct.quicklistNode* %37 to i64, !dbg !2458
  br i1 %69, label %75, label %71, !dbg !2458

; <label>:71:                                     ; preds = %68
  %72 = bitcast %struct.quicklistNode* %34 to i64*, !dbg !2459
  %73 = load i64, i64* %72, align 8, !dbg !2459, !tbaa !461
  %74 = bitcast %struct.quicklistNode* %37 to i64*, !dbg !2460
  store i64 %73, i64* %74, align 8, !dbg !2460, !tbaa !461
  br label %75, !dbg !2461

; <label>:75:                                     ; preds = %71, %68
  %76 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 0, !dbg !2462
  %77 = load %struct.quicklistNode*, %struct.quicklistNode** %76, align 8, !dbg !2462, !tbaa !461
  %78 = icmp eq %struct.quicklistNode* %77, null, !dbg !2463
  %79 = ptrtoint %struct.quicklistNode* %77 to i64, !dbg !2464
  br i1 %78, label %83, label %80, !dbg !2464

; <label>:80:                                     ; preds = %75
  %81 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %77, i64 0, i32 1, !dbg !2465
  %82 = bitcast %struct.quicklistNode** %81 to i64*, !dbg !2466
  store i64 %70, i64* %82, align 8, !dbg !2466, !tbaa !217
  br label %83, !dbg !2467

; <label>:83:                                     ; preds = %80, %75
  %84 = load %struct.quicklistNode*, %struct.quicklistNode** %26, align 8, !dbg !2468, !tbaa !480
  %85 = icmp eq %struct.quicklistNode* %84, %34, !dbg !2469
  br i1 %85, label %86, label %87, !dbg !2470

; <label>:86:                                     ; preds = %83
  store i64 %79, i64* %27, align 8, !dbg !2471, !tbaa !480
  br label %87, !dbg !2472

; <label>:87:                                     ; preds = %86, %83
  %88 = load %struct.quicklistNode*, %struct.quicklistNode** %28, align 8, !dbg !2473, !tbaa !211
  %89 = icmp eq %struct.quicklistNode* %88, %34, !dbg !2474
  br i1 %89, label %90, label %93, !dbg !2475

; <label>:90:                                     ; preds = %87
  %91 = bitcast %struct.quicklistNode** %36 to i64*, !dbg !2476
  %92 = load i64, i64* %91, align 8, !dbg !2476, !tbaa !217
  store i64 %92, i64* %29, align 8, !dbg !2477, !tbaa !211
  br label %93, !dbg !2478

; <label>:93:                                     ; preds = %87, %90
  call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* null) #6, !dbg !2479
  %94 = load i32, i32* %40, align 4, !dbg !2480
  %95 = and i32 %94, 65535, !dbg !2480
  %96 = zext i32 %95 to i64, !dbg !2481
  %97 = load i64, i64* %25, align 8, !dbg !2482, !tbaa !194
  %98 = sub i64 %97, %96, !dbg !2482
  store i64 %98, i64* %25, align 8, !dbg !2482, !tbaa !194
  %99 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 2, !dbg !2483
  %100 = load i8*, i8** %99, align 8, !dbg !2483, !tbaa !174
  call void @zfree(i8* %100) #6, !dbg !2484
  %101 = bitcast %struct.quicklistNode* %34 to i8*, !dbg !2485
  call void @zfree(i8* %101) #6, !dbg !2486
  %102 = load i64, i64* %30, align 8, !dbg !2487, !tbaa !207
  %103 = add i64 %102, -1, !dbg !2487
  store i64 %103, i64* %30, align 8, !dbg !2487, !tbaa !207
  br label %196, !dbg !2488

; <label>:104:                                    ; preds = %52, %61, %58
  %105 = phi i32* [ %55, %52 ], [ %66, %61 ], [ %55, %58 ], !dbg !2448
  %106 = phi i32 [ %56, %52 ], [ %67, %61 ], [ %56, %58 ], !dbg !2448
  %107 = phi i64 [ %35, %52 ], [ %65, %61 ], [ %60, %58 ]
  %108 = and i32 %106, 196608, !dbg !2448
  %109 = icmp eq i32 %108, 131072, !dbg !2448
  br i1 %109, label %113, label %110, !dbg !2489

; <label>:110:                                    ; preds = %104
  %111 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 2, !dbg !2490
  %112 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 3, !dbg !2491
  br label %136, !dbg !2489

; <label>:113:                                    ; preds = %104
  %114 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 3, !dbg !2496
  %115 = load i32, i32* %114, align 8, !dbg !2496, !tbaa !181
  %116 = zext i32 %115 to i64, !dbg !2497
  %117 = call i8* @zmalloc(i64 %116) #6, !dbg !2498
  %118 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 2, !dbg !2500
  %119 = load i8*, i8** %118, align 8, !dbg !2500, !tbaa !174
  %120 = getelementptr inbounds i8, i8* %119, i64 4, !dbg !2502
  %121 = bitcast i8* %119 to i32*, !dbg !2503
  %122 = load i32, i32* %121, align 4, !dbg !2503, !tbaa !253
  %123 = load i32, i32* %114, align 8, !dbg !2504, !tbaa !181
  %124 = call i32 @lzf_decompress(i8* nonnull %120, i32 %122, i8* %117, i32 %123) #6, !dbg !2505
  %125 = icmp eq i32 %124, 0, !dbg !2506
  br i1 %125, label %126, label %128, !dbg !2507

; <label>:126:                                    ; preds = %113
  call void @zfree(i8* %117) #6, !dbg !2508
  %127 = load i32, i32* %105, align 4, !dbg !2509
  br label %132, !dbg !2510

; <label>:128:                                    ; preds = %113
  call void @zfree(i8* %119) #6, !dbg !2511
  store i8* %117, i8** %118, align 8, !dbg !2512, !tbaa !174
  %129 = load i32, i32* %105, align 4, !dbg !2513
  %130 = and i32 %129, -196609, !dbg !2513
  %131 = or i32 %130, 65536, !dbg !2513
  store i32 %131, i32* %105, align 4, !dbg !2513
  br label %132, !dbg !2514

; <label>:132:                                    ; preds = %126, %128
  %133 = phi i32 [ %127, %126 ], [ %131, %128 ], !dbg !2509
  %134 = or i32 %133, 1048576, !dbg !2509
  store i32 %134, i32* %105, align 4, !dbg !2509
  %135 = load i32, i32* %24, align 4, !dbg !2515, !tbaa !1425
  br label %136, !dbg !2509

; <label>:136:                                    ; preds = %110, %132
  %137 = phi i32* [ %112, %110 ], [ %114, %132 ], !dbg !2491
  %138 = phi i8** [ %111, %110 ], [ %118, %132 ], !dbg !2490
  %139 = phi i32 [ %33, %110 ], [ %135, %132 ], !dbg !2515
  %140 = load i8*, i8** %138, align 8, !dbg !2490, !tbaa !174
  %141 = trunc i64 %107 to i32, !dbg !2516
  %142 = call i8* @ziplistDeleteRange(i8* %140, i32 %139, i32 %141) #6, !dbg !2517
  store i8* %142, i8** %138, align 8, !dbg !2518, !tbaa !174
  %143 = call i64 @ziplistBlobLen(i8* %142) #6, !dbg !2491
  %144 = trunc i64 %143 to i32, !dbg !2491
  store i32 %144, i32* %137, align 8, !dbg !2491, !tbaa !181
  %145 = load i32, i32* %105, align 4, !dbg !2519
  %146 = sub i32 %145, %141, !dbg !2519
  %147 = and i32 %146, 65535, !dbg !2519
  %148 = and i32 %145, -65536, !dbg !2519
  %149 = or i32 %147, %148, !dbg !2519
  store i32 %149, i32* %105, align 4, !dbg !2519
  %150 = load i64, i64* %25, align 8, !dbg !2520, !tbaa !194
  %151 = sub i64 %150, %107, !dbg !2520
  store i64 %151, i64* %25, align 8, !dbg !2520, !tbaa !194
  %152 = load i32, i32* %105, align 4, !dbg !2521
  %153 = and i32 %152, 65535, !dbg !2521
  %154 = icmp eq i32 %153, 0, !dbg !2521
  br i1 %154, label %155, label %191, !dbg !2524

; <label>:155:                                    ; preds = %136
  %156 = load %struct.quicklistNode*, %struct.quicklistNode** %36, align 8, !dbg !2529, !tbaa !217
  %157 = icmp eq %struct.quicklistNode* %156, null, !dbg !2530
  %158 = ptrtoint %struct.quicklistNode* %156 to i64, !dbg !2531
  br i1 %157, label %163, label %159, !dbg !2531

; <label>:159:                                    ; preds = %155
  %160 = bitcast %struct.quicklistNode* %34 to i64*, !dbg !2532
  %161 = load i64, i64* %160, align 8, !dbg !2532, !tbaa !461
  %162 = bitcast %struct.quicklistNode* %156 to i64*, !dbg !2533
  store i64 %161, i64* %162, align 8, !dbg !2533, !tbaa !461
  br label %163, !dbg !2534

; <label>:163:                                    ; preds = %159, %155
  %164 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 0, !dbg !2535
  %165 = load %struct.quicklistNode*, %struct.quicklistNode** %164, align 8, !dbg !2535, !tbaa !461
  %166 = icmp eq %struct.quicklistNode* %165, null, !dbg !2536
  %167 = ptrtoint %struct.quicklistNode* %165 to i64, !dbg !2537
  br i1 %166, label %171, label %168, !dbg !2537

; <label>:168:                                    ; preds = %163
  %169 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %165, i64 0, i32 1, !dbg !2538
  %170 = bitcast %struct.quicklistNode** %169 to i64*, !dbg !2539
  store i64 %158, i64* %170, align 8, !dbg !2539, !tbaa !217
  br label %171, !dbg !2540

; <label>:171:                                    ; preds = %168, %163
  %172 = load %struct.quicklistNode*, %struct.quicklistNode** %26, align 8, !dbg !2541, !tbaa !480
  %173 = icmp eq %struct.quicklistNode* %172, %34, !dbg !2542
  br i1 %173, label %174, label %175, !dbg !2543

; <label>:174:                                    ; preds = %171
  store i64 %167, i64* %27, align 8, !dbg !2544, !tbaa !480
  br label %175, !dbg !2545

; <label>:175:                                    ; preds = %174, %171
  %176 = load %struct.quicklistNode*, %struct.quicklistNode** %28, align 8, !dbg !2546, !tbaa !211
  %177 = icmp eq %struct.quicklistNode* %176, %34, !dbg !2547
  br i1 %177, label %178, label %181, !dbg !2548

; <label>:178:                                    ; preds = %175
  %179 = bitcast %struct.quicklistNode** %36 to i64*, !dbg !2549
  %180 = load i64, i64* %179, align 8, !dbg !2549, !tbaa !217
  store i64 %180, i64* %29, align 8, !dbg !2550, !tbaa !211
  br label %181, !dbg !2551

; <label>:181:                                    ; preds = %178, %175
  call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* null) #6, !dbg !2552
  %182 = load i32, i32* %105, align 4, !dbg !2553
  %183 = and i32 %182, 65535, !dbg !2553
  %184 = zext i32 %183 to i64, !dbg !2554
  %185 = load i64, i64* %25, align 8, !dbg !2555, !tbaa !194
  %186 = sub i64 %185, %184, !dbg !2555
  store i64 %186, i64* %25, align 8, !dbg !2555, !tbaa !194
  %187 = load i8*, i8** %138, align 8, !dbg !2556, !tbaa !174
  call void @zfree(i8* %187) #6, !dbg !2557
  %188 = bitcast %struct.quicklistNode* %34 to i8*, !dbg !2558
  call void @zfree(i8* %188) #6, !dbg !2559
  %189 = load i64, i64* %30, align 8, !dbg !2560, !tbaa !207
  %190 = add i64 %189, -1, !dbg !2560
  store i64 %190, i64* %30, align 8, !dbg !2560, !tbaa !207
  br label %196, !dbg !2561

; <label>:191:                                    ; preds = %136
  %192 = and i32 %152, 1245184, !dbg !2562
  %193 = icmp eq i32 %192, 1114112, !dbg !2562
  br i1 %193, label %194, label %196, !dbg !2562

; <label>:194:                                    ; preds = %191
  %195 = call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %34) #8, !dbg !2565
  br label %196, !dbg !2565

; <label>:196:                                    ; preds = %181, %191, %194, %93
  %197 = phi i64 [ %107, %191 ], [ %107, %194 ], [ %43, %93 ], [ %107, %181 ]
  %198 = sub i64 %35, %197, !dbg !2570
  store i32 0, i32* %24, align 4, !dbg !2571, !tbaa !1425
  %199 = icmp eq i64 %198, 0, !dbg !2416
  br i1 %199, label %200, label %32, !dbg !2416, !llvm.loop !2572

; <label>:200:                                    ; preds = %196, %19, %11
  %201 = phi i32 [ 0, %11 ], [ 1, %19 ], [ 1, %196 ], !dbg !2574
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %16) #7, !dbg !2575
  br label %202

; <label>:202:                                    ; preds = %3, %200
  %203 = phi i32 [ %201, %200 ], [ 0, %3 ], !dbg !2576
  ret i32 %203, !dbg !2575
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistCompare(i8*, i8*, i32) local_unnamed_addr #0 !dbg !2577 {
  %4 = tail call i32 @ziplistCompare(i8* %0, i8* %1, i32 %2) #6, !dbg !2587
  ret i32 %4, !dbg !2588
}

; Function Attrs: noredzone
declare dso_local i32 @ziplistCompare(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklistIter* @quicklistGetIterator(%struct.quicklist*, i32) local_unnamed_addr #0 !dbg !2589 {
  %3 = tail call i8* @zmalloc(i64 40) #6, !dbg !2598
  %4 = bitcast i8* %3 to %struct.quicklistIter*, !dbg !2598
  switch i32 %1, label %18 [
    i32 0, label %5
    i32 1, label %7
  ], !dbg !2600

; <label>:5:                                      ; preds = %2
  %6 = bitcast %struct.quicklist* %0 to i64*, !dbg !2601
  br label %10, !dbg !2604

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !2605
  %9 = bitcast %struct.quicklistNode** %8 to i64*, !dbg !2605
  br label %10, !dbg !2608

; <label>:10:                                     ; preds = %5, %7
  %11 = phi i64* [ %9, %7 ], [ %6, %5 ]
  %12 = phi i64 [ -1, %7 ], [ 0, %5 ]
  %13 = load i64, i64* %11, align 8, !dbg !2609, !tbaa !70
  %14 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !2609
  %15 = bitcast i8* %14 to i64*, !dbg !2609
  store i64 %13, i64* %15, align 8, !dbg !2609, !tbaa !1346
  %16 = getelementptr inbounds i8, i8* %3, i64 24, !dbg !2609
  %17 = bitcast i8* %16 to i64*, !dbg !2609
  store i64 %12, i64* %17, align 8, !dbg !2609, !tbaa !1349
  br label %18, !dbg !2610

; <label>:18:                                     ; preds = %10, %2
  %19 = getelementptr inbounds i8, i8* %3, i64 32, !dbg !2610
  %20 = bitcast i8* %19 to i32*, !dbg !2610
  store i32 %1, i32* %20, align 8, !dbg !2611, !tbaa !1341
  %21 = bitcast i8* %3 to %struct.quicklist**, !dbg !2612
  store %struct.quicklist* %0, %struct.quicklist** %21, align 8, !dbg !2613, !tbaa !2614
  %22 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !2615
  %23 = bitcast i8* %22 to i8**, !dbg !2615
  store i8* null, i8** %23, align 8, !dbg !2616, !tbaa !1333
  ret %struct.quicklistIter* %4, !dbg !2617
}

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist*, i32, i64) local_unnamed_addr #0 !dbg !2618 {
  %4 = alloca %struct.quicklistEntry, align 8
  %5 = bitcast %struct.quicklistEntry* %4 to i8*, !dbg !2632
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #7, !dbg !2632
  %6 = call i32 @quicklistIndex(%struct.quicklist* %0, i64 %2, %struct.quicklistEntry* nonnull %4) #8, !dbg !2634
  %7 = icmp eq i32 %6, 0, !dbg !2634
  br i1 %7, label %45, label %8, !dbg !2635

; <label>:8:                                      ; preds = %3
  %9 = call i8* @zmalloc(i64 40) #6, !dbg !2639
  %10 = bitcast i8* %9 to %struct.quicklistIter*, !dbg !2639
  switch i32 %1, label %11 [
    i32 0, label %16
    i32 1, label %23
  ], !dbg !2641

; <label>:11:                                     ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !2642
  %13 = bitcast i8* %12 to i64*, !dbg !2643
  %14 = getelementptr inbounds i8, i8* %9, i64 24, !dbg !2644
  %15 = bitcast i8* %14 to i64*, !dbg !2644
  br label %31, !dbg !2641

; <label>:16:                                     ; preds = %8
  %17 = bitcast %struct.quicklist* %0 to i64*, !dbg !2645
  %18 = load i64, i64* %17, align 8, !dbg !2645, !tbaa !211
  %19 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !2646
  %20 = bitcast i8* %19 to i64*, !dbg !2647
  store i64 %18, i64* %20, align 8, !dbg !2647, !tbaa !1346
  %21 = getelementptr inbounds i8, i8* %9, i64 24, !dbg !2648
  %22 = bitcast i8* %21 to i64*, !dbg !2648
  store i64 0, i64* %22, align 8, !dbg !2649, !tbaa !1349
  br label %31, !dbg !2650

; <label>:23:                                     ; preds = %8
  %24 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !2651
  %25 = bitcast %struct.quicklistNode** %24 to i64*, !dbg !2651
  %26 = load i64, i64* %25, align 8, !dbg !2651, !tbaa !480
  %27 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !2652
  %28 = bitcast i8* %27 to i64*, !dbg !2653
  store i64 %26, i64* %28, align 8, !dbg !2653, !tbaa !1346
  %29 = getelementptr inbounds i8, i8* %9, i64 24, !dbg !2654
  %30 = bitcast i8* %29 to i64*, !dbg !2654
  store i64 -1, i64* %30, align 8, !dbg !2655, !tbaa !1349
  br label %31, !dbg !2656

; <label>:31:                                     ; preds = %11, %16, %23
  %32 = phi i64* [ %15, %11 ], [ %22, %16 ], [ %30, %23 ], !dbg !2644
  %33 = phi i64* [ %13, %11 ], [ %20, %16 ], [ %28, %23 ], !dbg !2643
  %34 = getelementptr inbounds i8, i8* %9, i64 32, !dbg !2657
  %35 = bitcast i8* %34 to i32*, !dbg !2657
  store i32 %1, i32* %35, align 8, !dbg !2658, !tbaa !1341
  %36 = bitcast i8* %9 to %struct.quicklist**, !dbg !2659
  store %struct.quicklist* %0, %struct.quicklist** %36, align 8, !dbg !2660, !tbaa !2614
  %37 = getelementptr inbounds i8, i8* %9, i64 16, !dbg !2661
  %38 = bitcast i8* %37 to i8**, !dbg !2661
  store i8* null, i8** %38, align 8, !dbg !2663, !tbaa !1333
  %39 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 1, !dbg !2664
  %40 = bitcast %struct.quicklistNode** %39 to i64*, !dbg !2664
  %41 = load i64, i64* %40, align 8, !dbg !2664, !tbaa !1320
  store i64 %41, i64* %33, align 8, !dbg !2643, !tbaa !1346
  %42 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 6, !dbg !2665
  %43 = load i32, i32* %42, align 4, !dbg !2665, !tbaa !1425
  %44 = sext i32 %43 to i64, !dbg !2666
  store i64 %44, i64* %32, align 8, !dbg !2667, !tbaa !1349
  br label %45

; <label>:45:                                     ; preds = %3, %31
  %46 = phi %struct.quicklistIter* [ %10, %31 ], [ null, %3 ], !dbg !2668
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #7, !dbg !2670
  ret %struct.quicklistIter* %46, !dbg !2670
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistReleaseIterator(%struct.quicklistIter*) local_unnamed_addr #0 !dbg !2671 {
  %2 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 1, !dbg !2677
  %3 = load %struct.quicklistNode*, %struct.quicklistNode** %2, align 8, !dbg !2677, !tbaa !1346
  %4 = icmp eq %struct.quicklistNode* %3, null, !dbg !2679
  br i1 %4, label %18, label %5, !dbg !2680

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %3, i64 0, i32 4, !dbg !2681
  %7 = load i32, i32* %6, align 4, !dbg !2681
  %8 = and i32 %7, 1048576, !dbg !2681
  %9 = icmp eq i32 %8, 0, !dbg !2681
  br i1 %9, label %15, label %10, !dbg !2684

; <label>:10:                                     ; preds = %5
  %11 = and i32 %7, 196608, !dbg !2685
  %12 = icmp eq i32 %11, 65536, !dbg !2685
  br i1 %12, label %13, label %18, !dbg !2688

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %3) #8, !dbg !2689
  br label %18, !dbg !2689

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 0, !dbg !2681
  %17 = load %struct.quicklist*, %struct.quicklist** %16, align 8, !dbg !2681, !tbaa !2614
  tail call void @__quicklistCompress(%struct.quicklist* %17, %struct.quicklistNode* nonnull %3) #8, !dbg !2681
  br label %18

; <label>:18:                                     ; preds = %1, %13, %10, %15
  %19 = bitcast %struct.quicklistIter* %0 to i8*, !dbg !2691
  tail call void @zfree(i8* %19) #6, !dbg !2692
  ret void, !dbg !2693
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistNext(%struct.quicklistIter*, %struct.quicklistEntry*) local_unnamed_addr #0 !dbg !2694 {
  %3 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 3, !dbg !2707
  %4 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 2, !dbg !2707
  %5 = bitcast i8** %4 to <2 x i8*>*, !dbg !2707
  store <2 x i8*> zeroinitializer, <2 x i8*>* %5, align 8, !dbg !2707, !tbaa !70
  %6 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 4, !dbg !2707
  store i64 -123456789, i64* %6, align 8, !dbg !2707, !tbaa !1424
  %7 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 0, !dbg !2707
  store %struct.quicklist* null, %struct.quicklist** %7, align 8, !dbg !2707, !tbaa !1327
  %8 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 1, !dbg !2707
  store %struct.quicklistNode* null, %struct.quicklistNode** %8, align 8, !dbg !2707, !tbaa !1320
  %9 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 6, !dbg !2707
  store i32 123456789, i32* %9, align 4, !dbg !2707, !tbaa !1425
  %10 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 5, !dbg !2707
  store i32 0, i32* %10, align 8, !dbg !2707, !tbaa !1426
  %11 = icmp eq %struct.quicklistIter* %0, null, !dbg !2709
  br i1 %11, label %121, label %12, !dbg !2711

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 0
  %14 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 1
  %15 = bitcast %struct.quicklistNode** %14 to i64*
  %16 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 2
  %17 = bitcast i8** %4 to i64*
  %18 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 3
  %19 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 4
  %20 = bitcast %struct.quicklistNode** %14 to i64**
  %21 = bitcast %struct.quicklistIter* %0 to <2 x i64>*, !dbg !2712
  %22 = load <2 x i64>, <2 x i64>* %21, align 8, !dbg !2712, !tbaa !70
  %23 = bitcast %struct.quicklistEntry* %1 to <2 x i64>*, !dbg !2713
  store <2 x i64> %22, <2 x i64>* %23, align 8, !dbg !2713, !tbaa !70
  %24 = extractelement <2 x i64> %22, i32 1, !dbg !2714
  %25 = icmp eq i64 %24, 0, !dbg !2714
  br i1 %25, label %121, label %26, !dbg !2716

; <label>:26:                                     ; preds = %12
  %27 = bitcast i8** %4 to <2 x i8*>*
  %28 = bitcast %struct.quicklistIter* %0 to <2 x i64>*
  %29 = bitcast %struct.quicklistEntry* %1 to <2 x i64>*
  br label %30, !dbg !2717

; <label>:30:                                     ; preds = %26, %117
  %31 = phi i64 [ %119, %117 ], [ %24, %26 ]
  %32 = inttoptr i64 %31 to %struct.quicklistNode*, !dbg !2717
  %33 = load i8*, i8** %16, align 8, !dbg !2720, !tbaa !1333
  %34 = icmp eq i8* %33, null, !dbg !2722
  br i1 %34, label %35, label %72, !dbg !2723

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %32, i64 0, i32 4, !dbg !2724
  %37 = load i32, i32* %36, align 4, !dbg !2724
  %38 = and i32 %37, 196608, !dbg !2724
  %39 = icmp eq i32 %38, 131072, !dbg !2724
  br i1 %39, label %40, label %64, !dbg !2728

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %32, i64 0, i32 3, !dbg !2732
  %42 = load i32, i32* %41, align 8, !dbg !2732, !tbaa !181
  %43 = zext i32 %42 to i64, !dbg !2733
  %44 = tail call i8* @zmalloc(i64 %43) #6, !dbg !2734
  %45 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %32, i64 0, i32 2, !dbg !2736
  %46 = load i8*, i8** %45, align 8, !dbg !2736, !tbaa !174
  %47 = getelementptr inbounds i8, i8* %46, i64 4, !dbg !2738
  %48 = bitcast i8* %46 to i32*, !dbg !2739
  %49 = load i32, i32* %48, align 4, !dbg !2739, !tbaa !253
  %50 = load i32, i32* %41, align 8, !dbg !2740, !tbaa !181
  %51 = tail call i32 @lzf_decompress(i8* nonnull %47, i32 %49, i8* %44, i32 %50) #6, !dbg !2741
  %52 = icmp eq i32 %51, 0, !dbg !2742
  br i1 %52, label %53, label %54, !dbg !2743

; <label>:53:                                     ; preds = %40
  tail call void @zfree(i8* %44) #6, !dbg !2744
  br label %58, !dbg !2745

; <label>:54:                                     ; preds = %40
  tail call void @zfree(i8* %46) #6, !dbg !2746
  store i8* %44, i8** %45, align 8, !dbg !2747, !tbaa !174
  %55 = load i32, i32* %36, align 4, !dbg !2748
  %56 = and i32 %55, -196609, !dbg !2748
  %57 = or i32 %56, 65536, !dbg !2748
  store i32 %57, i32* %36, align 4, !dbg !2748
  br label %58, !dbg !2749

; <label>:58:                                     ; preds = %53, %54
  %59 = load %struct.quicklistNode*, %struct.quicklistNode** %14, align 8, !dbg !2750, !tbaa !1346
  %60 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %59, i64 0, i32 4, !dbg !2750
  %61 = load i32, i32* %60, align 4, !dbg !2750
  %62 = or i32 %61, 1048576, !dbg !2750
  store i32 %62, i32* %60, align 4, !dbg !2750
  %63 = load %struct.quicklistNode*, %struct.quicklistNode** %14, align 8, !dbg !2751, !tbaa !1346
  br label %64, !dbg !2750

; <label>:64:                                     ; preds = %58, %35
  %65 = phi %struct.quicklistNode* [ %63, %58 ], [ %32, %35 ], !dbg !2751
  %66 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %65, i64 0, i32 2, !dbg !2752
  %67 = load i8*, i8** %66, align 8, !dbg !2752, !tbaa !174
  %68 = load i64, i64* %18, align 8, !dbg !2753, !tbaa !1349
  %69 = trunc i64 %68 to i32, !dbg !2754
  %70 = tail call i8* @ziplistIndex(i8* %67, i32 %69) #6, !dbg !2755
  store i8* %70, i8** %16, align 8, !dbg !2756, !tbaa !1333
  %71 = load i64, i64* %18, align 8, !dbg !2757, !tbaa !1349
  br label %82, !dbg !2758

; <label>:72:                                     ; preds = %30
  %73 = load i32, i32* %19, align 8, !dbg !2759, !tbaa !1341
  %74 = icmp eq i32 %73, 0, !dbg !2762
  %75 = select i1 %74, i8* (i8*, i8*)* @ziplistNext, i8* (i8*, i8*)* @ziplistPrev, !dbg !2762
  %76 = select i1 %74, i64 1, i64 -1, !dbg !2762
  %77 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %32, i64 0, i32 2, !dbg !2763
  %78 = load i8*, i8** %77, align 8, !dbg !2763, !tbaa !174
  %79 = tail call i8* %75(i8* %78, i8* nonnull %33) #6, !dbg !2764, !callees !2765
  store i8* %79, i8** %16, align 8, !dbg !2766, !tbaa !1333
  %80 = load i64, i64* %18, align 8, !dbg !2767, !tbaa !1349
  %81 = add nsw i64 %80, %76, !dbg !2767
  store i64 %81, i64* %18, align 8, !dbg !2767, !tbaa !1349
  br label %82

; <label>:82:                                     ; preds = %72, %64
  %83 = phi i8* [ %79, %72 ], [ %70, %64 ], !dbg !2768
  %84 = phi i64 [ %81, %72 ], [ %71, %64 ], !dbg !2757
  %85 = ptrtoint i8* %83 to i64, !dbg !2770
  store i64 %85, i64* %17, align 8, !dbg !2771, !tbaa !1386
  %86 = trunc i64 %84 to i32, !dbg !2772
  store i32 %86, i32* %9, align 4, !dbg !2773, !tbaa !1425
  %87 = icmp eq i8* %83, null, !dbg !2774
  br i1 %87, label %90, label %88, !dbg !2775

; <label>:88:                                     ; preds = %82
  %89 = tail call i32 @ziplistGet(i8* nonnull %83, i8** nonnull %3, i32* nonnull %10, i64* nonnull %6) #6, !dbg !2776
  br label %121, !dbg !2778

; <label>:90:                                     ; preds = %82
  %91 = load %struct.quicklistNode*, %struct.quicklistNode** %14, align 8, !dbg !2779, !tbaa !1346
  %92 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %91, i64 0, i32 4, !dbg !2779
  %93 = load i32, i32* %92, align 4, !dbg !2779
  %94 = and i32 %93, 1048576, !dbg !2779
  %95 = icmp eq i32 %94, 0, !dbg !2779
  br i1 %95, label %103, label %96, !dbg !2783

; <label>:96:                                     ; preds = %90
  %97 = icmp ne %struct.quicklistNode* %91, null, !dbg !2784
  %98 = and i32 %93, 196608, !dbg !2784
  %99 = icmp eq i32 %98, 65536, !dbg !2784
  %100 = and i1 %97, %99, !dbg !2784
  br i1 %100, label %101, label %105, !dbg !2784

; <label>:101:                                    ; preds = %96
  %102 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %91) #8, !dbg !2787
  br label %105, !dbg !2787

; <label>:103:                                    ; preds = %90
  %104 = load %struct.quicklist*, %struct.quicklist** %13, align 8, !dbg !2779, !tbaa !2614
  tail call void @__quicklistCompress(%struct.quicklist* %104, %struct.quicklistNode* %91) #8, !dbg !2779
  br label %105

; <label>:105:                                    ; preds = %96, %101, %103
  %106 = load i32, i32* %19, align 8, !dbg !2789, !tbaa !1341
  switch i32 %106, label %117 [
    i32 0, label %107
    i32 1, label %111
  ], !dbg !2791

; <label>:107:                                    ; preds = %105
  %108 = load %struct.quicklistNode*, %struct.quicklistNode** %14, align 8, !dbg !2792, !tbaa !1346
  %109 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %108, i64 0, i32 1, !dbg !2794
  %110 = bitcast %struct.quicklistNode** %109 to i64*, !dbg !2794
  br label %113, !dbg !2795

; <label>:111:                                    ; preds = %105
  %112 = load i64*, i64** %20, align 8, !dbg !2796, !tbaa !1346
  br label %113, !dbg !2799

; <label>:113:                                    ; preds = %107, %111
  %114 = phi i64* [ %112, %111 ], [ %110, %107 ]
  %115 = phi i64 [ -1, %111 ], [ 0, %107 ]
  %116 = load i64, i64* %114, align 8, !dbg !2800, !tbaa !70
  store i64 %116, i64* %15, align 8, !dbg !2800, !tbaa !1346
  store i64 %115, i64* %18, align 8, !dbg !2800, !tbaa !1349
  br label %117, !dbg !2801

; <label>:117:                                    ; preds = %113, %105
  store i8* null, i8** %16, align 8, !dbg !2801, !tbaa !1333
  store <2 x i8*> zeroinitializer, <2 x i8*>* %27, align 8, !dbg !2707, !tbaa !70
  store i64 -123456789, i64* %6, align 8, !dbg !2707, !tbaa !1424
  store %struct.quicklist* null, %struct.quicklist** %7, align 8, !dbg !2707, !tbaa !1327
  store %struct.quicklistNode* null, %struct.quicklistNode** %8, align 8, !dbg !2707, !tbaa !1320
  store i32 123456789, i32* %9, align 4, !dbg !2707, !tbaa !1425
  store i32 0, i32* %10, align 8, !dbg !2707, !tbaa !1426
  %118 = load <2 x i64>, <2 x i64>* %28, align 8, !dbg !2712, !tbaa !70
  store <2 x i64> %118, <2 x i64>* %29, align 8, !dbg !2713, !tbaa !70
  %119 = extractelement <2 x i64> %118, i32 1, !dbg !2714
  %120 = icmp eq i64 %119, 0, !dbg !2714
  br i1 %120, label %121, label %30, !dbg !2716

; <label>:121:                                    ; preds = %117, %12, %2, %88
  %122 = phi i32 [ 1, %88 ], [ 0, %2 ], [ 0, %12 ], [ 0, %117 ], !dbg !2802
  ret i32 %122, !dbg !2804
}

; Function Attrs: noredzone
declare dso_local i8* @ziplistPrev(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklist* @quicklistDup(%struct.quicklist* nocapture readonly) local_unnamed_addr #0 !dbg !2805 {
  %2 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !2821
  %3 = load i32, i32* %2, align 8, !dbg !2821
  %4 = shl i32 %3, 16, !dbg !2821
  %5 = ashr exact i32 %4, 16, !dbg !2821
  %6 = and i32 %3, -65536, !dbg !2822
  %7 = tail call i8* @zmalloc(i64 40) #6, !dbg !2828
  %8 = bitcast i8* %7 to %struct.quicklist*, !dbg !2828
  %9 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !2831
  %10 = bitcast i8* %9 to %struct.quicklistNode**, !dbg !2831
  %11 = bitcast i8* %7 to <2 x %struct.quicklistNode*>*, !dbg !2832
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %11, align 8, !dbg !2832, !tbaa !70
  %12 = getelementptr inbounds i8, i8* %7, i64 24, !dbg !2833
  %13 = bitcast i8* %12 to i64*, !dbg !2833
  %14 = getelementptr inbounds i8, i8* %7, i64 16, !dbg !2834
  %15 = bitcast i8* %14 to i64*, !dbg !2834
  %16 = bitcast i8* %14 to <2 x i64>*, !dbg !2835
  store <2 x i64> zeroinitializer, <2 x i64>* %16, align 8, !dbg !2835, !tbaa !76
  %17 = getelementptr inbounds i8, i8* %7, i64 32, !dbg !2836
  %18 = bitcast i8* %17 to i32*, !dbg !2836
  %19 = icmp sgt i32 %5, -5, !dbg !2844
  %20 = select i1 %19, i32 %5, i32 -5, !dbg !2844
  %21 = and i32 %20, 65535, !dbg !2845
  %22 = or i32 %21, %6, !dbg !2822
  store i32 %22, i32* %18, align 8, !dbg !2822
  %23 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !2849
  %24 = load %struct.quicklistNode*, %struct.quicklistNode** %23, align 8, !dbg !2851, !tbaa !70
  %25 = icmp eq %struct.quicklistNode* %24, null, !dbg !2852
  br i1 %25, label %29, label %26, !dbg !2852

; <label>:26:                                     ; preds = %1
  %27 = bitcast i8* %9 to i8**
  %28 = bitcast i8* %7 to i8**
  br label %30, !dbg !2852

; <label>:29:                                     ; preds = %115, %1
  ret %struct.quicklist* %8, !dbg !2853

; <label>:30:                                     ; preds = %26, %115
  %31 = phi %struct.quicklistNode* [ %24, %26 ], [ %119, %115 ]
  %32 = tail call i8* @zmalloc(i64 32) #6, !dbg !2854
  %33 = getelementptr inbounds i8, i8* %32, i64 16, !dbg !2856
  %34 = bitcast i8* %33 to i8**, !dbg !2856
  store i8* null, i8** %34, align 8, !dbg !2857, !tbaa !174
  %35 = getelementptr inbounds i8, i8* %32, i64 28, !dbg !2858
  %36 = bitcast i8* %35 to i32*, !dbg !2858
  %37 = load i32, i32* %36, align 4, !dbg !2859
  %38 = getelementptr inbounds i8, i8* %32, i64 24, !dbg !2860
  %39 = bitcast i8* %38 to i32*, !dbg !2860
  store i32 0, i32* %39, align 8, !dbg !2861, !tbaa !181
  %40 = bitcast i8* %32 to %struct.quicklistNode**, !dbg !2862
  %41 = getelementptr inbounds i8, i8* %32, i64 8, !dbg !2863
  %42 = bitcast i8* %32 to <2 x %struct.quicklistNode*>*, !dbg !2864
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %42, align 8, !dbg !2864, !tbaa !70
  %43 = and i32 %37, -2097152, !dbg !2865
  %44 = or i32 %43, 589824, !dbg !2865
  store i32 %44, i32* %36, align 4, !dbg !2865
  %45 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %31, i64 0, i32 4, !dbg !2866
  %46 = load i32, i32* %45, align 4, !dbg !2866
  %47 = lshr i32 %46, 16, !dbg !2866
  %48 = trunc i32 %47 to i2, !dbg !2867
  switch i2 %48, label %70 [
    i2 -2, label %49
    i2 1, label %60
  ], !dbg !2867

; <label>:49:                                     ; preds = %30
  %50 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %31, i64 0, i32 2, !dbg !2870
  %51 = bitcast i8** %50 to %struct.quicklistLZF**, !dbg !2870
  %52 = load %struct.quicklistLZF*, %struct.quicklistLZF** %51, align 8, !dbg !2870, !tbaa !174
  %53 = getelementptr inbounds %struct.quicklistLZF, %struct.quicklistLZF* %52, i64 0, i32 0, !dbg !2872
  %54 = load i32, i32* %53, align 4, !dbg !2872, !tbaa !253
  %55 = zext i32 %54 to i64, !dbg !2873
  %56 = add nuw nsw i64 %55, 4, !dbg !2874
  %57 = tail call i8* @zmalloc(i64 %56) #6, !dbg !2876
  store i8* %57, i8** %34, align 8, !dbg !2877, !tbaa !174
  %58 = load i8*, i8** %50, align 8, !dbg !2878, !tbaa !174
  %59 = tail call i8* @memcpy(i8* %57, i8* %58, i64 %56) #6, !dbg !2879
  br label %70, !dbg !2880

; <label>:60:                                     ; preds = %30
  %61 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %31, i64 0, i32 3, !dbg !2881
  %62 = load i32, i32* %61, align 8, !dbg !2881, !tbaa !181
  %63 = zext i32 %62 to i64, !dbg !2884
  %64 = tail call i8* @zmalloc(i64 %63) #6, !dbg !2885
  store i8* %64, i8** %34, align 8, !dbg !2886, !tbaa !174
  %65 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %31, i64 0, i32 2, !dbg !2887
  %66 = load i8*, i8** %65, align 8, !dbg !2887, !tbaa !174
  %67 = load i32, i32* %61, align 8, !dbg !2888, !tbaa !181
  %68 = zext i32 %67 to i64, !dbg !2889
  %69 = tail call i8* @memcpy(i8* %64, i8* %66, i64 %68) #6, !dbg !2890
  br label %70, !dbg !2891

; <label>:70:                                     ; preds = %30, %60, %49
  %71 = load i32, i32* %45, align 4, !dbg !2892
  %72 = and i32 %71, 65535, !dbg !2892
  %73 = load i32, i32* %36, align 4, !dbg !2893
  %74 = and i32 %73, -65536, !dbg !2893
  %75 = or i32 %74, %72, !dbg !2893
  store i32 %75, i32* %36, align 4, !dbg !2893
  %76 = zext i32 %72 to i64, !dbg !2894
  %77 = load i64, i64* %15, align 8, !dbg !2895, !tbaa !194
  %78 = add i64 %77, %76, !dbg !2895
  store i64 %78, i64* %15, align 8, !dbg !2895, !tbaa !194
  %79 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %31, i64 0, i32 3, !dbg !2896
  %80 = load i32, i32* %79, align 8, !dbg !2896, !tbaa !181
  store i32 %80, i32* %39, align 8, !dbg !2897, !tbaa !181
  %81 = load i32, i32* %45, align 4, !dbg !2898
  %82 = and i32 %81, 196608, !dbg !2898
  %83 = load i32, i32* %36, align 4, !dbg !2899
  %84 = and i32 %83, -196609, !dbg !2899
  %85 = or i32 %84, %82, !dbg !2899
  store i32 %85, i32* %36, align 4, !dbg !2899
  %86 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !2900, !tbaa !480
  store %struct.quicklistNode* %86, %struct.quicklistNode** %40, align 8, !dbg !2910, !tbaa !461
  %87 = icmp eq %struct.quicklistNode* %86, null, !dbg !2911
  br i1 %87, label %99, label %88, !dbg !2912

; <label>:88:                                     ; preds = %70
  %89 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %86, i64 0, i32 1, !dbg !2913
  %90 = bitcast %struct.quicklistNode** %89 to i64*, !dbg !2913
  %91 = load i64, i64* %90, align 8, !dbg !2913, !tbaa !217
  %92 = bitcast i8* %41 to i64*, !dbg !2914
  store i64 %91, i64* %92, align 8, !dbg !2914, !tbaa !217
  %93 = load %struct.quicklistNode*, %struct.quicklistNode** %89, align 8, !dbg !2915, !tbaa !217
  %94 = icmp eq %struct.quicklistNode* %93, null, !dbg !2916
  br i1 %94, label %97, label %95, !dbg !2917

; <label>:95:                                     ; preds = %88
  %96 = bitcast %struct.quicklistNode* %93 to i8**, !dbg !2918
  store i8* %32, i8** %96, align 8, !dbg !2918, !tbaa !461
  br label %97, !dbg !2919

; <label>:97:                                     ; preds = %95, %88
  %98 = bitcast %struct.quicklistNode** %89 to i8**, !dbg !2920
  store i8* %32, i8** %98, align 8, !dbg !2920, !tbaa !217
  br label %99, !dbg !2921

; <label>:99:                                     ; preds = %97, %70
  store i8* %32, i8** %27, align 8, !dbg !2922, !tbaa !480
  %100 = load i64, i64* %13, align 8, !dbg !2923, !tbaa !207
  %101 = icmp eq i64 %100, 0, !dbg !2924
  br i1 %101, label %102, label %103, !dbg !2925

; <label>:102:                                    ; preds = %99
  store i8* %32, i8** %27, align 8, !dbg !2926, !tbaa !480
  store i8* %32, i8** %28, align 8, !dbg !2927, !tbaa !211
  br label %103, !dbg !2928

; <label>:103:                                    ; preds = %102, %99
  br i1 %87, label %115, label %104, !dbg !2929

; <label>:104:                                    ; preds = %103
  %105 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %86, i64 0, i32 4, !dbg !2930
  %106 = load i32, i32* %105, align 4, !dbg !2930
  %107 = and i32 %106, 1048576, !dbg !2930
  %108 = icmp eq i32 %107, 0, !dbg !2930
  br i1 %108, label %114, label %109, !dbg !2931

; <label>:109:                                    ; preds = %104
  %110 = and i32 %106, 196608, !dbg !2932
  %111 = icmp eq i32 %110, 65536, !dbg !2932
  br i1 %111, label %112, label %115, !dbg !2933

; <label>:112:                                    ; preds = %109
  %113 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %86) #6, !dbg !2934
  br label %115, !dbg !2934

; <label>:114:                                    ; preds = %104
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %8, %struct.quicklistNode* nonnull %86) #6, !dbg !2930
  br label %115

; <label>:115:                                    ; preds = %103, %109, %112, %114
  %116 = load i64, i64* %13, align 8, !dbg !2935, !tbaa !207
  %117 = add i64 %116, 1, !dbg !2935
  store i64 %117, i64* %13, align 8, !dbg !2935, !tbaa !207
  %118 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %31, i64 0, i32 1, !dbg !2936
  %119 = load %struct.quicklistNode*, %struct.quicklistNode** %118, align 8, !dbg !2851, !tbaa !70
  %120 = icmp eq %struct.quicklistNode* %119, null, !dbg !2852
  br i1 %120, label %29, label %30, !dbg !2852, !llvm.loop !2937
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistRotate(%struct.quicklist* nocapture) local_unnamed_addr #0 !dbg !2939 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  %7 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !2948
  %8 = load i64, i64* %7, align 8, !dbg !2948, !tbaa !194
  %9 = icmp ult i64 %8, 2, !dbg !2950
  br i1 %9, label %45, label %10, !dbg !2951

; <label>:10:                                     ; preds = %1
  %11 = bitcast i8** %2 to i8*, !dbg !2952
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #7, !dbg !2952
  %12 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !2953
  %13 = load %struct.quicklistNode*, %struct.quicklistNode** %12, align 8, !dbg !2953, !tbaa !480
  %14 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %13, i64 0, i32 2, !dbg !2954
  %15 = load i8*, i8** %14, align 8, !dbg !2954, !tbaa !174
  %16 = tail call i8* @ziplistIndex(i8* %15, i32 -1) #6, !dbg !2955
  store i8* %16, i8** %2, align 8, !dbg !2956, !tbaa !70
  %17 = bitcast i8** %3 to i8*, !dbg !2957
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #7, !dbg !2957
  %18 = bitcast i64* %4 to i8*, !dbg !2958
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #7, !dbg !2958
  %19 = bitcast i32* %5 to i8*, !dbg !2959
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #7, !dbg !2959
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !2960
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %20) #7, !dbg !2960
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %20, i8 0, i64 32, i1 false), !dbg !2961
  %21 = call i32 @ziplistGet(i8* %16, i8** nonnull %3, i32* nonnull %5, i64* nonnull %4) #6, !dbg !2965
  %22 = load i8*, i8** %3, align 8, !dbg !2966, !tbaa !70
  %23 = icmp eq i8* %22, null, !dbg !2966
  br i1 %23, label %26, label %24, !dbg !2968

; <label>:24:                                     ; preds = %10
  %25 = load i32, i32* %5, align 4, !dbg !2969, !tbaa !253
  br label %29, !dbg !2968

; <label>:26:                                     ; preds = %10
  %27 = load i64, i64* %4, align 8, !dbg !2970, !tbaa !1119
  %28 = call i32 @ll2string(i8* nonnull %20, i64 32, i64 %27) #6, !dbg !2972
  store i32 %28, i32* %5, align 4, !dbg !2973, !tbaa !253
  store i8* %20, i8** %3, align 8, !dbg !2974, !tbaa !70
  br label %29, !dbg !2975

; <label>:29:                                     ; preds = %24, %26
  %30 = phi i32 [ %25, %24 ], [ %28, %26 ], !dbg !2969
  %31 = phi i8* [ %22, %24 ], [ %20, %26 ], !dbg !2976
  %32 = zext i32 %30 to i64, !dbg !2969
  %33 = call i32 @quicklistPushHead(%struct.quicklist* nonnull %0, i8* nonnull %31, i64 %32) #8, !dbg !2977
  %34 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !2978
  %35 = load i64, i64* %34, align 8, !dbg !2978, !tbaa !207
  %36 = icmp eq i64 %35, 1, !dbg !2980
  br i1 %36, label %37, label %42, !dbg !2981

; <label>:37:                                     ; preds = %29
  %38 = load %struct.quicklistNode*, %struct.quicklistNode** %12, align 8, !dbg !2982, !tbaa !480
  %39 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %38, i64 0, i32 2, !dbg !2984
  %40 = load i8*, i8** %39, align 8, !dbg !2984, !tbaa !174
  %41 = call i8* @ziplistIndex(i8* %40, i32 -1) #6, !dbg !2985
  store i8* %41, i8** %2, align 8, !dbg !2986, !tbaa !70
  br label %42, !dbg !2987

; <label>:42:                                     ; preds = %37, %29
  %43 = load %struct.quicklistNode*, %struct.quicklistNode** %12, align 8, !dbg !2988, !tbaa !480
  %44 = call i32 @quicklistDelIndex(%struct.quicklist* nonnull %0, %struct.quicklistNode* %43, i8** nonnull %2) #8, !dbg !2989
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %20) #7, !dbg !2990
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #7, !dbg !2990
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #7, !dbg !2990
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #7, !dbg !2990
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #7, !dbg !2990
  br label %45, !dbg !2990

; <label>:45:                                     ; preds = %1, %42
  ret void, !dbg !2990
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistPopCustom(%struct.quicklist* nocapture, i32, i8**, i32*, i64*, i8* (i8*, i32)* nocapture) local_unnamed_addr #0 !dbg !2991 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = bitcast i8** %7 to i8*, !dbg !3018
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #7, !dbg !3018
  %12 = bitcast i8** %8 to i8*, !dbg !3019
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #7, !dbg !3019
  %13 = bitcast i32* %9 to i8*, !dbg !3020
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #7, !dbg !3020
  %14 = bitcast i64* %10 to i8*, !dbg !3021
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #7, !dbg !3021
  %15 = icmp eq i32 %1, 0, !dbg !3022
  %16 = xor i1 %15, true, !dbg !3023
  %17 = sext i1 %16 to i32, !dbg !3023
  %18 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !3025
  %19 = load i64, i64* %18, align 8, !dbg !3025, !tbaa !194
  %20 = icmp eq i64 %19, 0, !dbg !3027
  br i1 %20, label %65, label %21, !dbg !3028

; <label>:21:                                     ; preds = %6
  %22 = icmp ne i8** %2, null, !dbg !3029
  br i1 %22, label %23, label %24, !dbg !3031

; <label>:23:                                     ; preds = %21
  store i8* null, i8** %2, align 8, !dbg !3032, !tbaa !70
  br label %24, !dbg !3033

; <label>:24:                                     ; preds = %23, %21
  %25 = icmp ne i32* %3, null, !dbg !3034
  br i1 %25, label %26, label %27, !dbg !3036

; <label>:26:                                     ; preds = %24
  store i32 0, i32* %3, align 4, !dbg !3037, !tbaa !253
  br label %27, !dbg !3038

; <label>:27:                                     ; preds = %26, %24
  %28 = icmp ne i64* %4, null, !dbg !3039
  br i1 %28, label %29, label %30, !dbg !3041

; <label>:29:                                     ; preds = %27
  store i64 -123456789, i64* %4, align 8, !dbg !3042, !tbaa !1119
  br label %30, !dbg !3043

; <label>:30:                                     ; preds = %29, %27
  br i1 %15, label %31, label %35, !dbg !3044

; <label>:31:                                     ; preds = %30
  %32 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !3046
  %33 = load %struct.quicklistNode*, %struct.quicklistNode** %32, align 8, !dbg !3046, !tbaa !211
  %34 = icmp eq %struct.quicklistNode* %33, null, !dbg !3047
  br i1 %34, label %65, label %41, !dbg !3048

; <label>:35:                                     ; preds = %30
  %36 = icmp eq i32 %1, -1, !dbg !3049
  br i1 %36, label %37, label %65, !dbg !3051

; <label>:37:                                     ; preds = %35
  %38 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !3052
  %39 = load %struct.quicklistNode*, %struct.quicklistNode** %38, align 8, !dbg !3052, !tbaa !480
  %40 = icmp eq %struct.quicklistNode* %39, null, !dbg !3053
  br i1 %40, label %65, label %41, !dbg !3054

; <label>:41:                                     ; preds = %37, %31
  %42 = phi %struct.quicklistNode* [ %33, %31 ], [ %39, %37 ], !dbg !3055
  %43 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %42, i64 0, i32 2, !dbg !3058
  %44 = load i8*, i8** %43, align 8, !dbg !3058, !tbaa !174
  %45 = tail call i8* @ziplistIndex(i8* %44, i32 %17) #6, !dbg !3059
  store i8* %45, i8** %7, align 8, !dbg !3061, !tbaa !70
  %46 = call i32 @ziplistGet(i8* %45, i8** nonnull %8, i32* nonnull %9, i64* nonnull %10) #6, !dbg !3065
  %47 = icmp eq i32 %46, 0, !dbg !3065
  br i1 %47, label %65, label %48, !dbg !3067

; <label>:48:                                     ; preds = %41
  %49 = load i8*, i8** %8, align 8, !dbg !3068, !tbaa !70
  %50 = icmp eq i8* %49, null, !dbg !3068
  br i1 %50, label %58, label %51, !dbg !3071

; <label>:51:                                     ; preds = %48
  br i1 %22, label %52, label %55, !dbg !3072

; <label>:52:                                     ; preds = %51
  %53 = load i32, i32* %9, align 4, !dbg !3074, !tbaa !253
  %54 = call i8* %5(i8* nonnull %49, i32 %53) #6, !dbg !3076
  store i8* %54, i8** %2, align 8, !dbg !3077, !tbaa !70
  br label %55, !dbg !3078

; <label>:55:                                     ; preds = %52, %51
  br i1 %25, label %56, label %63, !dbg !3079

; <label>:56:                                     ; preds = %55
  %57 = load i32, i32* %9, align 4, !dbg !3080, !tbaa !253
  store i32 %57, i32* %3, align 4, !dbg !3082, !tbaa !253
  br label %63, !dbg !3083

; <label>:58:                                     ; preds = %48
  br i1 %22, label %59, label %60, !dbg !3084

; <label>:59:                                     ; preds = %58
  store i8* null, i8** %2, align 8, !dbg !3086, !tbaa !70
  br label %60, !dbg !3088

; <label>:60:                                     ; preds = %59, %58
  br i1 %28, label %61, label %63, !dbg !3089

; <label>:61:                                     ; preds = %60
  %62 = load i64, i64* %10, align 8, !dbg !3090, !tbaa !1119
  store i64 %62, i64* %4, align 8, !dbg !3092, !tbaa !1119
  br label %63, !dbg !3093

; <label>:63:                                     ; preds = %60, %61, %55, %56
  %64 = call i32 @quicklistDelIndex(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %42, i8** nonnull %7) #8, !dbg !3094
  br label %65, !dbg !3095

; <label>:65:                                     ; preds = %31, %63, %37, %35, %41, %6
  %66 = phi i32 [ 0, %6 ], [ 1, %63 ], [ 0, %37 ], [ 0, %35 ], [ 0, %41 ], [ 0, %31 ], !dbg !3096
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #7, !dbg !3097
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #7, !dbg !3097
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #7, !dbg !3097
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #7, !dbg !3097
  ret i32 %66, !dbg !3097
}

; Function Attrs: noredzone nounwind
define dso_local i8* @_quicklistSaver(i8*, i32) local_unnamed_addr #0 !dbg !3098 {
  %3 = icmp eq i8* %0, null, !dbg !3105
  br i1 %3, label %8, label %4, !dbg !3107

; <label>:4:                                      ; preds = %2
  %5 = zext i32 %1 to i64, !dbg !3108
  %6 = tail call i8* @zmalloc(i64 %5) #6, !dbg !3110
  %7 = tail call i8* @memcpy(i8* %6, i8* nonnull %0, i64 %5) #6, !dbg !3112
  br label %8, !dbg !3113

; <label>:8:                                      ; preds = %2, %4
  %9 = phi i8* [ %6, %4 ], [ null, %2 ], !dbg !3114
  ret i8* %9, !dbg !3115
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistPop(%struct.quicklist* nocapture, i32, i8**, i32*, i64*) local_unnamed_addr #0 !dbg !3116 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !3134
  %11 = load i64, i64* %10, align 8, !dbg !3134, !tbaa !194
  %12 = icmp eq i64 %11, 0, !dbg !3136
  br i1 %12, label %69, label %13, !dbg !3137

; <label>:13:                                     ; preds = %5
  %14 = bitcast i8** %6 to i8*, !dbg !3144
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #7, !dbg !3144
  %15 = bitcast i8** %7 to i8*, !dbg !3145
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #7, !dbg !3145
  %16 = bitcast i32* %8 to i8*, !dbg !3146
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #7, !dbg !3146
  %17 = bitcast i64* %9 to i8*, !dbg !3147
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #7, !dbg !3147
  %18 = icmp eq i32 %1, 0, !dbg !3148
  %19 = xor i1 %18, true, !dbg !3149
  %20 = sext i1 %19 to i32, !dbg !3149
  br i1 %18, label %21, label %25, !dbg !3151

; <label>:21:                                     ; preds = %13
  %22 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !3152
  %23 = load %struct.quicklistNode*, %struct.quicklistNode** %22, align 8, !dbg !3152, !tbaa !211
  %24 = icmp eq %struct.quicklistNode* %23, null, !dbg !3153
  br i1 %24, label %55, label %31, !dbg !3154

; <label>:25:                                     ; preds = %13
  %26 = icmp eq i32 %1, -1, !dbg !3155
  br i1 %26, label %27, label %55, !dbg !3156

; <label>:27:                                     ; preds = %25
  %28 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !3157
  %29 = load %struct.quicklistNode*, %struct.quicklistNode** %28, align 8, !dbg !3157, !tbaa !480
  %30 = icmp eq %struct.quicklistNode* %29, null, !dbg !3158
  br i1 %30, label %55, label %31, !dbg !3159

; <label>:31:                                     ; preds = %27, %21
  %32 = phi %struct.quicklistNode* [ %23, %21 ], [ %29, %27 ], !dbg !3160
  %33 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %32, i64 0, i32 2, !dbg !3162
  %34 = load i8*, i8** %33, align 8, !dbg !3162, !tbaa !174
  %35 = tail call i8* @ziplistIndex(i8* %34, i32 %20) #6, !dbg !3163
  store i8* %35, i8** %6, align 8, !dbg !3165, !tbaa !70
  %36 = call i32 @ziplistGet(i8* %35, i8** nonnull %7, i32* nonnull %8, i64* nonnull %9) #6, !dbg !3169
  %37 = icmp eq i32 %36, 0, !dbg !3169
  br i1 %37, label %55, label %38, !dbg !3170

; <label>:38:                                     ; preds = %31
  %39 = load i8*, i8** %7, align 8, !dbg !3171, !tbaa !70
  %40 = icmp eq i8* %39, null, !dbg !3171
  br i1 %40, label %48, label %41, !dbg !3172

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %8, align 4, !dbg !3173, !tbaa !253
  %43 = zext i32 %42 to i64, !dbg !3177
  %44 = call i8* @zmalloc(i64 %43) #6, !dbg !3178
  %45 = call i8* @memcpy(i8* %44, i8* nonnull %39, i64 %43) #6, !dbg !3180
  %46 = ptrtoint i8* %44 to i64, !dbg !3181
  %47 = load i32, i32* %8, align 4, !dbg !3182, !tbaa !253
  br label %50, !dbg !3183

; <label>:48:                                     ; preds = %38
  %49 = load i64, i64* %9, align 8, !dbg !3184, !tbaa !1119
  br label %50, !dbg !3185

; <label>:50:                                     ; preds = %48, %41
  %51 = phi i64 [ 0, %48 ], [ %46, %41 ], !dbg !3186
  %52 = phi i32 [ 0, %48 ], [ %47, %41 ], !dbg !3186
  %53 = phi i64 [ %49, %48 ], [ -123456789, %41 ], !dbg !3186
  %54 = call i32 @quicklistDelIndex(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %32, i8** nonnull %6) #6, !dbg !3187
  br label %55, !dbg !3188

; <label>:55:                                     ; preds = %21, %25, %27, %31, %50
  %56 = phi i64 [ 0, %21 ], [ 0, %31 ], [ %51, %50 ], [ 0, %27 ], [ 0, %25 ]
  %57 = phi i32 [ 0, %21 ], [ 0, %31 ], [ %52, %50 ], [ 0, %27 ], [ 0, %25 ]
  %58 = phi i64 [ -123456789, %21 ], [ -123456789, %31 ], [ %53, %50 ], [ -123456789, %27 ], [ -123456789, %25 ]
  %59 = phi i32 [ 0, %21 ], [ 0, %31 ], [ 1, %50 ], [ 0, %27 ], [ 0, %25 ], !dbg !3189
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #7, !dbg !3190
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #7, !dbg !3190
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #7, !dbg !3190
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #7, !dbg !3190
  %60 = icmp eq i8** %2, null, !dbg !3192
  br i1 %60, label %63, label %61, !dbg !3194

; <label>:61:                                     ; preds = %55
  %62 = bitcast i8** %2 to i64*, !dbg !3195
  store i64 %56, i64* %62, align 8, !dbg !3195, !tbaa !70
  br label %63, !dbg !3196

; <label>:63:                                     ; preds = %55, %61
  %64 = icmp eq i64* %4, null, !dbg !3197
  br i1 %64, label %66, label %65, !dbg !3199

; <label>:65:                                     ; preds = %63
  store i64 %58, i64* %4, align 8, !dbg !3201, !tbaa !1119
  br label %66, !dbg !3202

; <label>:66:                                     ; preds = %63, %65
  %67 = icmp eq i32* %3, null, !dbg !3203
  br i1 %67, label %69, label %68, !dbg !3205

; <label>:68:                                     ; preds = %66
  store i32 %57, i32* %3, align 4, !dbg !3207, !tbaa !253
  br label %69, !dbg !3208

; <label>:69:                                     ; preds = %68, %66, %5
  %70 = phi i32 [ 0, %5 ], [ %59, %66 ], [ %59, %68 ], !dbg !3186
  ret i32 %70, !dbg !3209
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistPush(%struct.quicklist* nocapture, i8*, i64, i32) local_unnamed_addr #0 !dbg !3210 {
  switch i32 %3, label %9 [
    i32 0, label %5
    i32 -1, label %7
  ], !dbg !3222

; <label>:5:                                      ; preds = %4
  %6 = tail call i32 @quicklistPushHead(%struct.quicklist* %0, i8* %1, i64 %2) #8, !dbg !3223
  br label %9, !dbg !3226

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @quicklistPushTail(%struct.quicklist* %0, i8* %1, i64 %2) #8, !dbg !3227
  br label %9, !dbg !3230

; <label>:9:                                      ; preds = %4, %7, %5
  ret void, !dbg !3231
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone }

!llvm.module.flags = !{!57, !58, !59}
!llvm.ident = !{!60}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "optimization_level", scope: !2, file: !3, line: 67, type: !49, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !48)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/quicklist.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !8, !14, !20, !21, !47, !43}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistLZF", file: !10, line: 65, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/quicklist.h", directory: "/root/.unikraft/apps/redis/build")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistLZF", file: !10, line: 62, size: 32, elements: !12)
!12 = !{!13, !15}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !11, file: !10, line: 63, baseType: !14, size: 32)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !11, file: !10, line: 64, baseType: !16, offset: 32)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, elements: !18)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19}
!19 = !DISubrange(count: -1)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklist", file: !10, line: 80, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklist", file: !10, line: 73, size: 320, elements: !24)
!24 = !{!25, !41, !42, !44, !45, !46}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !23, file: !10, line: 74, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistNode", file: !10, line: 55, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistNode", file: !10, line: 44, size: 256, elements: !29)
!29 = !{!30, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !28, file: !10, line: 45, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !28, file: !10, line: 46, baseType: !31, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "zl", scope: !28, file: !10, line: 47, baseType: !6, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !28, file: !10, line: 48, baseType: !14, size: 32, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !28, file: !10, line: 49, baseType: !14, size: 16, offset: 224, flags: DIFlagBitField, extraData: i64 224)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !28, file: !10, line: 50, baseType: !14, size: 2, offset: 240, flags: DIFlagBitField, extraData: i64 224)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !28, file: !10, line: 51, baseType: !14, size: 2, offset: 242, flags: DIFlagBitField, extraData: i64 224)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "recompress", scope: !28, file: !10, line: 52, baseType: !14, size: 1, offset: 244, flags: DIFlagBitField, extraData: i64 224)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "attempted_compress", scope: !28, file: !10, line: 53, baseType: !14, size: 1, offset: 245, flags: DIFlagBitField, extraData: i64 224)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !28, file: !10, line: 54, baseType: !14, size: 10, offset: 246, flags: DIFlagBitField, extraData: i64 224)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !23, file: !10, line: 75, baseType: !26, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !23, file: !10, line: 76, baseType: !43, size: 64, offset: 128)
!43 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !23, file: !10, line: 77, baseType: !43, size: 64, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !23, file: !10, line: 78, baseType: !20, size: 16, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !23, file: !10, line: 79, baseType: !14, size: 16, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!48 = !{!0}
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 320, elements: !55)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !52, line: 40, baseType: !53)
!52 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !54, line: 129, baseType: !43)
!54 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!55 = !{!56}
!56 = !DISubrange(count: 5)
!57 = !{i32 2, !"Dwarf Version", i32 4}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!61 = distinct !DISubprogram(name: "quicklistCreate", scope: !3, file: !3, line: 114, type: !62, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !64)
!62 = !DISubroutineType(types: !63)
!63 = !{!21}
!64 = !{!65}
!65 = !DILocalVariable(name: "quicklist", scope: !61, file: !3, line: 115, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!67 = !DILocation(line: 117, column: 17, scope: !61)
!68 = !DILocation(line: 115, column: 23, scope: !61)
!69 = !DILocation(line: 118, column: 21, scope: !61)
!70 = !{!71, !71, i64 0}
!71 = !{!"any pointer", !72, i64 0}
!72 = !{!"omnipotent char", !73, i64 0}
!73 = !{!"Simple C/C++ TBAA"}
!74 = !DILocation(line: 120, column: 16, scope: !61)
!75 = !DILocation(line: 120, column: 22, scope: !61)
!76 = !{!77, !77, i64 0}
!77 = !{!"long", !72, i64 0}
!78 = !DILocation(line: 121, column: 16, scope: !61)
!79 = !DILocation(line: 122, column: 21, scope: !61)
!80 = !DILocation(line: 123, column: 5, scope: !61)
!81 = distinct !DISubprogram(name: "quicklistSetCompressDepth", scope: !3, file: !3, line: 127, type: !82, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !84)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !21, !20}
!84 = !{!85, !86}
!85 = !DILocalVariable(name: "quicklist", arg: 1, scope: !81, file: !3, line: 127, type: !21)
!86 = !DILocalVariable(name: "compress", arg: 2, scope: !81, file: !3, line: 127, type: !20)
!87 = !DILocation(line: 127, column: 43, scope: !81)
!88 = !DILocation(line: 127, column: 58, scope: !81)
!89 = !DILocation(line: 130, column: 16, scope: !90)
!90 = distinct !DILexicalBlock(scope: !81, file: !3, line: 128, column: 9)
!91 = !DILocation(line: 128, column: 9, scope: !81)
!92 = !DILocation(line: 133, column: 16, scope: !81)
!93 = !DILocation(line: 133, column: 25, scope: !81)
!94 = !DILocation(line: 134, column: 1, scope: !81)
!95 = distinct !DISubprogram(name: "quicklistSetFill", scope: !3, file: !3, line: 137, type: !82, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !96)
!96 = !{!97, !98}
!97 = !DILocalVariable(name: "quicklist", arg: 1, scope: !95, file: !3, line: 137, type: !21)
!98 = !DILocalVariable(name: "fill", arg: 2, scope: !95, file: !3, line: 137, type: !20)
!99 = !DILocation(line: 137, column: 34, scope: !95)
!100 = !DILocation(line: 137, column: 49, scope: !95)
!101 = !DILocation(line: 140, column: 16, scope: !102)
!102 = distinct !DILexicalBlock(scope: !95, file: !3, line: 138, column: 9)
!103 = !DILocation(line: 138, column: 9, scope: !95)
!104 = !DILocation(line: 143, column: 16, scope: !95)
!105 = !DILocation(line: 143, column: 21, scope: !95)
!106 = !DILocation(line: 144, column: 1, scope: !95)
!107 = distinct !DISubprogram(name: "quicklistSetOptions", scope: !3, file: !3, line: 146, type: !108, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !110)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !21, !20, !20}
!110 = !{!111, !112, !113}
!111 = !DILocalVariable(name: "quicklist", arg: 1, scope: !107, file: !3, line: 146, type: !21)
!112 = !DILocalVariable(name: "fill", arg: 2, scope: !107, file: !3, line: 146, type: !20)
!113 = !DILocalVariable(name: "depth", arg: 3, scope: !107, file: !3, line: 146, type: !20)
!114 = !DILocation(line: 146, column: 37, scope: !107)
!115 = !DILocation(line: 146, column: 52, scope: !107)
!116 = !DILocation(line: 146, column: 62, scope: !107)
!117 = !DILocation(line: 137, column: 34, scope: !95, inlinedAt: !118)
!118 = distinct !DILocation(line: 147, column: 5, scope: !107)
!119 = !DILocation(line: 137, column: 49, scope: !95, inlinedAt: !118)
!120 = !DILocation(line: 140, column: 16, scope: !102, inlinedAt: !118)
!121 = !DILocation(line: 138, column: 9, scope: !95, inlinedAt: !118)
!122 = !DILocation(line: 143, column: 16, scope: !95, inlinedAt: !118)
!123 = !DILocation(line: 143, column: 21, scope: !95, inlinedAt: !118)
!124 = !DILocation(line: 127, column: 43, scope: !81, inlinedAt: !125)
!125 = distinct !DILocation(line: 148, column: 5, scope: !107)
!126 = !DILocation(line: 127, column: 58, scope: !81, inlinedAt: !125)
!127 = !DILocation(line: 130, column: 16, scope: !90, inlinedAt: !125)
!128 = !DILocation(line: 128, column: 9, scope: !81, inlinedAt: !125)
!129 = !DILocation(line: 133, column: 25, scope: !81, inlinedAt: !125)
!130 = !DILocation(line: 149, column: 1, scope: !107)
!131 = distinct !DISubprogram(name: "quicklistNew", scope: !3, file: !3, line: 152, type: !132, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{!21, !20, !20}
!134 = !{!135, !136, !137}
!135 = !DILocalVariable(name: "fill", arg: 1, scope: !131, file: !3, line: 152, type: !20)
!136 = !DILocalVariable(name: "compress", arg: 2, scope: !131, file: !3, line: 152, type: !20)
!137 = !DILocalVariable(name: "quicklist", scope: !131, file: !3, line: 153, type: !21)
!138 = !DILocation(line: 152, column: 29, scope: !131)
!139 = !DILocation(line: 152, column: 39, scope: !131)
!140 = !DILocation(line: 117, column: 17, scope: !61, inlinedAt: !141)
!141 = distinct !DILocation(line: 153, column: 28, scope: !131)
!142 = !DILocation(line: 115, column: 23, scope: !61, inlinedAt: !141)
!143 = !DILocation(line: 118, column: 21, scope: !61, inlinedAt: !141)
!144 = !DILocation(line: 120, column: 16, scope: !61, inlinedAt: !141)
!145 = !DILocation(line: 120, column: 22, scope: !61, inlinedAt: !141)
!146 = !DILocation(line: 121, column: 16, scope: !61, inlinedAt: !141)
!147 = !DILocation(line: 153, column: 16, scope: !131)
!148 = !DILocation(line: 146, column: 37, scope: !107, inlinedAt: !149)
!149 = distinct !DILocation(line: 154, column: 5, scope: !131)
!150 = !DILocation(line: 146, column: 52, scope: !107, inlinedAt: !149)
!151 = !DILocation(line: 146, column: 62, scope: !107, inlinedAt: !149)
!152 = !DILocation(line: 137, column: 34, scope: !95, inlinedAt: !153)
!153 = distinct !DILocation(line: 147, column: 5, scope: !107, inlinedAt: !149)
!154 = !DILocation(line: 137, column: 49, scope: !95, inlinedAt: !153)
!155 = !DILocation(line: 140, column: 16, scope: !102, inlinedAt: !153)
!156 = !DILocation(line: 138, column: 9, scope: !95, inlinedAt: !153)
!157 = !DILocation(line: 143, column: 21, scope: !95, inlinedAt: !153)
!158 = !DILocation(line: 127, column: 43, scope: !81, inlinedAt: !159)
!159 = distinct !DILocation(line: 148, column: 5, scope: !107, inlinedAt: !149)
!160 = !DILocation(line: 127, column: 58, scope: !81, inlinedAt: !159)
!161 = !DILocation(line: 130, column: 16, scope: !90, inlinedAt: !159)
!162 = !DILocation(line: 128, column: 9, scope: !81, inlinedAt: !159)
!163 = !DILocation(line: 133, column: 25, scope: !81, inlinedAt: !159)
!164 = !DILocation(line: 155, column: 5, scope: !131)
!165 = distinct !DISubprogram(name: "quicklistCreateNode", scope: !3, file: !3, line: 158, type: !166, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !168)
!166 = !DISubroutineType(types: !167)
!167 = !{!26}
!168 = !{!169}
!169 = !DILocalVariable(name: "node", scope: !165, file: !3, line: 159, type: !26)
!170 = !DILocation(line: 160, column: 12, scope: !165)
!171 = !DILocation(line: 159, column: 20, scope: !165)
!172 = !DILocation(line: 161, column: 11, scope: !165)
!173 = !DILocation(line: 161, column: 14, scope: !165)
!174 = !{!175, !71, i64 16}
!175 = !{!"quicklistNode", !71, i64 0, !71, i64 8, !71, i64 16, !176, i64 24, !176, i64 28, !176, i64 30, !176, i64 30, !176, i64 30, !176, i64 30, !176, i64 30}
!176 = !{!"int", !72, i64 0}
!177 = !DILocation(line: 162, column: 11, scope: !165)
!178 = !DILocation(line: 162, column: 17, scope: !165)
!179 = !DILocation(line: 163, column: 11, scope: !165)
!180 = !DILocation(line: 163, column: 14, scope: !165)
!181 = !{!175, !176, i64 24}
!182 = !DILocation(line: 164, column: 29, scope: !165)
!183 = !DILocation(line: 167, column: 22, scope: !165)
!184 = !DILocation(line: 168, column: 5, scope: !165)
!185 = distinct !DISubprogram(name: "quicklistCount", scope: !3, file: !3, line: 172, type: !186, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !190)
!186 = !DISubroutineType(types: !187)
!187 = !{!43, !188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!190 = !{!191}
!191 = !DILocalVariable(name: "ql", arg: 1, scope: !185, file: !3, line: 172, type: !188)
!192 = !DILocation(line: 172, column: 47, scope: !185)
!193 = !DILocation(line: 172, column: 64, scope: !185)
!194 = !{!195, !77, i64 16}
!195 = !{!"quicklist", !71, i64 0, !71, i64 8, !77, i64 16, !77, i64 24, !176, i64 32, !176, i64 34}
!196 = !DILocation(line: 172, column: 53, scope: !185)
!197 = distinct !DISubprogram(name: "quicklistRelease", scope: !3, file: !3, line: 175, type: !198, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !200)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !21}
!200 = !{!201, !202, !203, !204}
!201 = !DILocalVariable(name: "quicklist", arg: 1, scope: !197, file: !3, line: 175, type: !21)
!202 = !DILocalVariable(name: "len", scope: !197, file: !3, line: 176, type: !43)
!203 = !DILocalVariable(name: "current", scope: !197, file: !3, line: 177, type: !26)
!204 = !DILocalVariable(name: "next", scope: !197, file: !3, line: 177, type: !26)
!205 = !DILocation(line: 175, column: 34, scope: !197)
!206 = !DILocation(line: 180, column: 22, scope: !197)
!207 = !{!195, !77, i64 24}
!208 = !DILocation(line: 176, column: 19, scope: !197)
!209 = !DILocation(line: 181, column: 5, scope: !197)
!210 = !DILocation(line: 179, column: 26, scope: !197)
!211 = !{!195, !71, i64 0}
!212 = !DILocation(line: 177, column: 20, scope: !197)
!213 = !DILocation(line: 0, scope: !197)
!214 = !DILocation(line: 181, column: 15, scope: !197)
!215 = !DILocation(line: 182, column: 25, scope: !216)
!216 = distinct !DILexicalBlock(scope: !197, file: !3, line: 181, column: 19)
!217 = !{!175, !71, i64 8}
!218 = !DILocation(line: 177, column: 30, scope: !197)
!219 = !DILocation(line: 184, column: 24, scope: !216)
!220 = !DILocation(line: 184, column: 9, scope: !216)
!221 = !DILocation(line: 185, column: 38, scope: !216)
!222 = !DILocation(line: 185, column: 29, scope: !216)
!223 = !DILocation(line: 185, column: 26, scope: !216)
!224 = !DILocation(line: 187, column: 9, scope: !216)
!225 = !DILocation(line: 189, column: 23, scope: !216)
!226 = distinct !{!226, !209, !227}
!227 = !DILocation(line: 191, column: 5, scope: !197)
!228 = !DILocation(line: 192, column: 11, scope: !197)
!229 = !DILocation(line: 192, column: 5, scope: !197)
!230 = !DILocation(line: 193, column: 1, scope: !197)
!231 = distinct !DISubprogram(name: "__quicklistCompressNode", scope: !3, file: !3, line: 198, type: !232, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !234)
!232 = !DISubroutineType(types: !233)
!233 = !{!20, !26}
!234 = !{!235, !236}
!235 = !DILocalVariable(name: "node", arg: 1, scope: !231, file: !3, line: 198, type: !26)
!236 = !DILocalVariable(name: "lzf", scope: !231, file: !3, line: 207, type: !8)
!237 = !DILocation(line: 198, column: 57, scope: !231)
!238 = !DILocation(line: 204, column: 15, scope: !239)
!239 = distinct !DILexicalBlock(scope: !231, file: !3, line: 204, column: 9)
!240 = !DILocation(line: 204, column: 18, scope: !239)
!241 = !DILocation(line: 204, column: 9, scope: !231)
!242 = !DILocation(line: 207, column: 48, scope: !231)
!243 = !DILocation(line: 207, column: 46, scope: !231)
!244 = !DILocation(line: 207, column: 25, scope: !231)
!245 = !DILocation(line: 207, column: 19, scope: !231)
!246 = !DILocation(line: 210, column: 40, scope: !247)
!247 = distinct !DILexicalBlock(scope: !231, file: !3, line: 210, column: 9)
!248 = !DILocation(line: 210, column: 50, scope: !247)
!249 = !DILocation(line: 210, column: 59, scope: !247)
!250 = !DILocation(line: 210, column: 21, scope: !247)
!251 = !DILocation(line: 210, column: 16, scope: !247)
!252 = !DILocation(line: 210, column: 19, scope: !247)
!253 = !{!176, !176, i64 0}
!254 = !DILocation(line: 211, column: 45, scope: !247)
!255 = !DILocation(line: 211, column: 51, scope: !247)
!256 = !DILocation(line: 212, column: 17, scope: !247)
!257 = !DILocation(line: 212, column: 49, scope: !247)
!258 = !DILocation(line: 212, column: 40, scope: !247)
!259 = !DILocation(line: 210, column: 9, scope: !231)
!260 = !DILocation(line: 214, column: 9, scope: !261)
!261 = distinct !DILexicalBlock(scope: !247, file: !3, line: 212, column: 53)
!262 = !DILocation(line: 215, column: 9, scope: !261)
!263 = !DILocation(line: 217, column: 40, scope: !231)
!264 = !DILocation(line: 217, column: 38, scope: !231)
!265 = !DILocation(line: 217, column: 11, scope: !231)
!266 = !DILocation(line: 218, column: 17, scope: !231)
!267 = !DILocation(line: 218, column: 5, scope: !231)
!268 = !DILocation(line: 219, column: 14, scope: !231)
!269 = !DILocation(line: 220, column: 11, scope: !231)
!270 = !DILocation(line: 220, column: 20, scope: !231)
!271 = !DILocation(line: 221, column: 22, scope: !231)
!272 = !DILocation(line: 222, column: 5, scope: !231)
!273 = !DILocation(line: 0, scope: !261)
!274 = !DILocation(line: 223, column: 1, scope: !231)
!275 = distinct !DISubprogram(name: "__quicklistDecompressNode", scope: !3, file: !3, line: 235, type: !232, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !276)
!276 = !{!277, !278, !279}
!277 = !DILocalVariable(name: "node", arg: 1, scope: !275, file: !3, line: 235, type: !26)
!278 = !DILocalVariable(name: "decompressed", scope: !275, file: !3, line: 240, type: !47)
!279 = !DILocalVariable(name: "lzf", scope: !275, file: !3, line: 241, type: !8)
!280 = !DILocation(line: 235, column: 59, scope: !275)
!281 = !DILocation(line: 240, column: 40, scope: !275)
!282 = !DILocation(line: 240, column: 34, scope: !275)
!283 = !DILocation(line: 240, column: 26, scope: !275)
!284 = !DILocation(line: 240, column: 11, scope: !275)
!285 = !DILocation(line: 241, column: 47, scope: !275)
!286 = !DILocation(line: 241, column: 19, scope: !275)
!287 = !DILocation(line: 242, column: 29, scope: !288)
!288 = distinct !DILexicalBlock(scope: !275, file: !3, line: 242, column: 9)
!289 = !DILocation(line: 242, column: 46, scope: !288)
!290 = !DILocation(line: 242, column: 70, scope: !288)
!291 = !DILocation(line: 242, column: 9, scope: !288)
!292 = !DILocation(line: 242, column: 74, scope: !288)
!293 = !DILocation(line: 242, column: 9, scope: !275)
!294 = !DILocation(line: 244, column: 9, scope: !295)
!295 = distinct !DILexicalBlock(scope: !288, file: !3, line: 242, column: 80)
!296 = !DILocation(line: 245, column: 9, scope: !295)
!297 = !DILocation(line: 247, column: 5, scope: !275)
!298 = !DILocation(line: 248, column: 14, scope: !275)
!299 = !DILocation(line: 249, column: 11, scope: !275)
!300 = !DILocation(line: 249, column: 20, scope: !275)
!301 = !DILocation(line: 250, column: 5, scope: !275)
!302 = !DILocation(line: 0, scope: !275)
!303 = !DILocation(line: 251, column: 1, scope: !275)
!304 = distinct !DISubprogram(name: "quicklistGetLzf", scope: !3, file: !3, line: 273, type: !305, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !310)
!305 = !DISubroutineType(types: !306)
!306 = !{!51, !307, !309}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!310 = !{!311, !312, !313}
!311 = !DILocalVariable(name: "node", arg: 1, scope: !304, file: !3, line: 273, type: !307)
!312 = !DILocalVariable(name: "data", arg: 2, scope: !304, file: !3, line: 273, type: !309)
!313 = !DILocalVariable(name: "lzf", scope: !304, file: !3, line: 274, type: !8)
!314 = !DILocation(line: 273, column: 45, scope: !304)
!315 = !DILocation(line: 273, column: 58, scope: !304)
!316 = !DILocation(line: 274, column: 47, scope: !304)
!317 = !DILocation(line: 274, column: 19, scope: !304)
!318 = !DILocation(line: 275, column: 13, scope: !304)
!319 = !DILocation(line: 275, column: 11, scope: !304)
!320 = !DILocation(line: 276, column: 17, scope: !304)
!321 = !DILocation(line: 276, column: 12, scope: !304)
!322 = !DILocation(line: 276, column: 5, scope: !304)
!323 = distinct !DISubprogram(name: "__quicklistCompress", scope: !3, file: !3, line: 285, type: !324, isLocal: false, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !326)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !188, !26}
!326 = !{!327, !328, !329, !330, !331, !332}
!327 = !DILocalVariable(name: "quicklist", arg: 1, scope: !323, file: !3, line: 285, type: !188)
!328 = !DILocalVariable(name: "node", arg: 2, scope: !323, file: !3, line: 286, type: !26)
!329 = !DILocalVariable(name: "forward", scope: !323, file: !3, line: 325, type: !26)
!330 = !DILocalVariable(name: "reverse", scope: !323, file: !3, line: 326, type: !26)
!331 = !DILocalVariable(name: "depth", scope: !323, file: !3, line: 327, type: !20)
!332 = !DILocalVariable(name: "in_depth", scope: !323, file: !3, line: 328, type: !20)
!333 = !DILocation(line: 285, column: 56, scope: !323)
!334 = !DILocation(line: 286, column: 54, scope: !323)
!335 = !DILocation(line: 289, column: 10, scope: !336)
!336 = distinct !DILexicalBlock(scope: !323, file: !3, line: 289, column: 9)
!337 = !DILocation(line: 289, column: 48, scope: !336)
!338 = !DILocation(line: 290, column: 20, scope: !336)
!339 = !DILocation(line: 290, column: 61, scope: !336)
!340 = !DILocation(line: 290, column: 26, scope: !336)
!341 = !DILocation(line: 290, column: 24, scope: !336)
!342 = !DILocation(line: 289, column: 9, scope: !323)
!343 = !DILocation(line: 325, column: 41, scope: !323)
!344 = !DILocation(line: 325, column: 20, scope: !323)
!345 = !DILocation(line: 326, column: 41, scope: !323)
!346 = !DILocation(line: 326, column: 20, scope: !323)
!347 = !DILocation(line: 327, column: 9, scope: !323)
!348 = !DILocation(line: 328, column: 9, scope: !323)
!349 = !DILocation(line: 0, scope: !350)
!350 = distinct !DILexicalBlock(scope: !323, file: !3, line: 329, column: 43)
!351 = !DILocation(line: 329, column: 20, scope: !323)
!352 = !DILocation(line: 329, column: 5, scope: !323)
!353 = !DILocation(line: 330, column: 9, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !3, line: 330, column: 9)
!355 = distinct !DILexicalBlock(scope: !350, file: !3, line: 330, column: 9)
!356 = !DILocation(line: 330, column: 9, scope: !355)
!357 = !DILocation(line: 235, column: 59, scope: !275, inlinedAt: !358)
!358 = distinct !DILocation(line: 330, column: 9, scope: !359)
!359 = distinct !DILexicalBlock(scope: !354, file: !3, line: 330, column: 9)
!360 = !DILocation(line: 240, column: 40, scope: !275, inlinedAt: !358)
!361 = !DILocation(line: 240, column: 34, scope: !275, inlinedAt: !358)
!362 = !DILocation(line: 240, column: 26, scope: !275, inlinedAt: !358)
!363 = !DILocation(line: 240, column: 11, scope: !275, inlinedAt: !358)
!364 = !DILocation(line: 241, column: 47, scope: !275, inlinedAt: !358)
!365 = !DILocation(line: 241, column: 19, scope: !275, inlinedAt: !358)
!366 = !DILocation(line: 242, column: 29, scope: !288, inlinedAt: !358)
!367 = !DILocation(line: 242, column: 46, scope: !288, inlinedAt: !358)
!368 = !DILocation(line: 242, column: 70, scope: !288, inlinedAt: !358)
!369 = !DILocation(line: 242, column: 9, scope: !288, inlinedAt: !358)
!370 = !DILocation(line: 242, column: 74, scope: !288, inlinedAt: !358)
!371 = !DILocation(line: 242, column: 9, scope: !275, inlinedAt: !358)
!372 = !DILocation(line: 244, column: 9, scope: !295, inlinedAt: !358)
!373 = !DILocation(line: 245, column: 9, scope: !295, inlinedAt: !358)
!374 = !DILocation(line: 247, column: 5, scope: !275, inlinedAt: !358)
!375 = !DILocation(line: 248, column: 14, scope: !275, inlinedAt: !358)
!376 = !DILocation(line: 249, column: 20, scope: !275, inlinedAt: !358)
!377 = !DILocation(line: 250, column: 5, scope: !275, inlinedAt: !358)
!378 = !DILocation(line: 331, column: 9, scope: !379)
!379 = distinct !DILexicalBlock(scope: !380, file: !3, line: 331, column: 9)
!380 = distinct !DILexicalBlock(scope: !350, file: !3, line: 331, column: 9)
!381 = !DILocation(line: 331, column: 9, scope: !380)
!382 = !DILocation(line: 235, column: 59, scope: !275, inlinedAt: !383)
!383 = distinct !DILocation(line: 331, column: 9, scope: !384)
!384 = distinct !DILexicalBlock(scope: !379, file: !3, line: 331, column: 9)
!385 = !DILocation(line: 240, column: 40, scope: !275, inlinedAt: !383)
!386 = !DILocation(line: 240, column: 34, scope: !275, inlinedAt: !383)
!387 = !DILocation(line: 240, column: 26, scope: !275, inlinedAt: !383)
!388 = !DILocation(line: 240, column: 11, scope: !275, inlinedAt: !383)
!389 = !DILocation(line: 241, column: 47, scope: !275, inlinedAt: !383)
!390 = !DILocation(line: 241, column: 19, scope: !275, inlinedAt: !383)
!391 = !DILocation(line: 242, column: 29, scope: !288, inlinedAt: !383)
!392 = !DILocation(line: 242, column: 46, scope: !288, inlinedAt: !383)
!393 = !DILocation(line: 242, column: 70, scope: !288, inlinedAt: !383)
!394 = !DILocation(line: 242, column: 9, scope: !288, inlinedAt: !383)
!395 = !DILocation(line: 242, column: 74, scope: !288, inlinedAt: !383)
!396 = !DILocation(line: 242, column: 9, scope: !275, inlinedAt: !383)
!397 = !DILocation(line: 244, column: 9, scope: !295, inlinedAt: !383)
!398 = !DILocation(line: 245, column: 9, scope: !295, inlinedAt: !383)
!399 = !DILocation(line: 247, column: 5, scope: !275, inlinedAt: !383)
!400 = !DILocation(line: 248, column: 14, scope: !275, inlinedAt: !383)
!401 = !DILocation(line: 249, column: 20, scope: !275, inlinedAt: !383)
!402 = !DILocation(line: 250, column: 5, scope: !275, inlinedAt: !383)
!403 = !DILocation(line: 336, column: 21, scope: !404)
!404 = distinct !DILexicalBlock(scope: !350, file: !3, line: 336, column: 13)
!405 = !DILocation(line: 336, column: 13, scope: !350)
!406 = !DILocation(line: 333, column: 21, scope: !407)
!407 = distinct !DILexicalBlock(scope: !350, file: !3, line: 333, column: 13)
!408 = !DILocation(line: 333, column: 40, scope: !407)
!409 = !DILocation(line: 333, column: 29, scope: !407)
!410 = !DILocation(line: 339, column: 28, scope: !350)
!411 = !DILocation(line: 340, column: 28, scope: !350)
!412 = !DILocation(line: 329, column: 17, scope: !323)
!413 = !DILocation(line: 329, column: 33, scope: !323)
!414 = distinct !{!414, !352, !415}
!415 = !DILocation(line: 341, column: 5, scope: !323)
!416 = !DILocation(line: 343, column: 10, scope: !417)
!417 = distinct !DILexicalBlock(scope: !323, file: !3, line: 343, column: 9)
!418 = !DILocation(line: 0, scope: !323)
!419 = !DILocation(line: 344, column: 9, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !3, line: 344, column: 9)
!421 = distinct !DILexicalBlock(scope: !417, file: !3, line: 344, column: 9)
!422 = !DILocation(line: 343, column: 9, scope: !323)
!423 = !DILocation(line: 344, column: 9, scope: !421)
!424 = !DILocation(line: 344, column: 9, scope: !425)
!425 = distinct !DILexicalBlock(scope: !420, file: !3, line: 344, column: 9)
!426 = !DILocation(line: 346, column: 15, scope: !427)
!427 = distinct !DILexicalBlock(scope: !323, file: !3, line: 346, column: 9)
!428 = !DILocation(line: 346, column: 9, scope: !323)
!429 = !DILocation(line: 348, column: 9, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !3, line: 348, column: 9)
!431 = distinct !DILexicalBlock(scope: !432, file: !3, line: 348, column: 9)
!432 = distinct !DILexicalBlock(scope: !427, file: !3, line: 346, column: 20)
!433 = !DILocation(line: 348, column: 9, scope: !431)
!434 = !DILocation(line: 348, column: 9, scope: !435)
!435 = distinct !DILexicalBlock(scope: !430, file: !3, line: 348, column: 9)
!436 = !DILocation(line: 349, column: 9, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 349, column: 9)
!438 = distinct !DILexicalBlock(scope: !432, file: !3, line: 349, column: 9)
!439 = !DILocation(line: 349, column: 9, scope: !438)
!440 = !DILocation(line: 349, column: 9, scope: !441)
!441 = distinct !DILexicalBlock(scope: !437, file: !3, line: 349, column: 9)
!442 = !DILocation(line: 351, column: 1, scope: !323)
!443 = distinct !DISubprogram(name: "__quicklistInsertNode", scope: !3, file: !3, line: 372, type: !444, isLocal: false, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !446)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !21, !26, !26, !20}
!446 = !{!447, !448, !449, !450}
!447 = !DILocalVariable(name: "quicklist", arg: 1, scope: !443, file: !3, line: 372, type: !21)
!448 = !DILocalVariable(name: "old_node", arg: 2, scope: !443, file: !3, line: 373, type: !26)
!449 = !DILocalVariable(name: "new_node", arg: 3, scope: !443, file: !3, line: 374, type: !26)
!450 = !DILocalVariable(name: "after", arg: 4, scope: !443, file: !3, line: 374, type: !20)
!451 = !DILocation(line: 372, column: 52, scope: !443)
!452 = !DILocation(line: 373, column: 56, scope: !443)
!453 = !DILocation(line: 374, column: 56, scope: !443)
!454 = !DILocation(line: 374, column: 70, scope: !443)
!455 = !DILocation(line: 375, column: 9, scope: !456)
!456 = distinct !DILexicalBlock(scope: !443, file: !3, line: 375, column: 9)
!457 = !DILocation(line: 375, column: 9, scope: !443)
!458 = !DILocation(line: 376, column: 19, scope: !459)
!459 = distinct !DILexicalBlock(scope: !456, file: !3, line: 375, column: 16)
!460 = !DILocation(line: 376, column: 24, scope: !459)
!461 = !{!175, !71, i64 0}
!462 = !DILocation(line: 377, column: 13, scope: !463)
!463 = distinct !DILexicalBlock(scope: !459, file: !3, line: 377, column: 13)
!464 = !DILocation(line: 377, column: 13, scope: !459)
!465 = !DILocation(line: 378, column: 40, scope: !466)
!466 = distinct !DILexicalBlock(scope: !463, file: !3, line: 377, column: 23)
!467 = !DILocation(line: 378, column: 23, scope: !466)
!468 = !DILocation(line: 378, column: 28, scope: !466)
!469 = !DILocation(line: 379, column: 27, scope: !470)
!470 = distinct !DILexicalBlock(scope: !466, file: !3, line: 379, column: 17)
!471 = !DILocation(line: 379, column: 17, scope: !470)
!472 = !DILocation(line: 379, column: 17, scope: !466)
!473 = !DILocation(line: 380, column: 33, scope: !470)
!474 = !DILocation(line: 380, column: 38, scope: !470)
!475 = !DILocation(line: 380, column: 17, scope: !470)
!476 = !DILocation(line: 381, column: 28, scope: !466)
!477 = !DILocation(line: 382, column: 9, scope: !466)
!478 = !DILocation(line: 383, column: 24, scope: !479)
!479 = distinct !DILexicalBlock(scope: !459, file: !3, line: 383, column: 13)
!480 = !{!195, !71, i64 8}
!481 = !DILocation(line: 383, column: 29, scope: !479)
!482 = !DILocation(line: 383, column: 13, scope: !459)
!483 = !DILocation(line: 384, column: 29, scope: !479)
!484 = !DILocation(line: 384, column: 13, scope: !479)
!485 = !DILocation(line: 386, column: 19, scope: !486)
!486 = distinct !DILexicalBlock(scope: !456, file: !3, line: 385, column: 12)
!487 = !DILocation(line: 386, column: 24, scope: !486)
!488 = !DILocation(line: 387, column: 13, scope: !489)
!489 = distinct !DILexicalBlock(scope: !486, file: !3, line: 387, column: 13)
!490 = !DILocation(line: 387, column: 13, scope: !486)
!491 = !DILocation(line: 388, column: 40, scope: !492)
!492 = distinct !DILexicalBlock(scope: !489, file: !3, line: 387, column: 23)
!493 = !DILocation(line: 388, column: 28, scope: !492)
!494 = !DILocation(line: 389, column: 27, scope: !495)
!495 = distinct !DILexicalBlock(scope: !492, file: !3, line: 389, column: 17)
!496 = !DILocation(line: 389, column: 17, scope: !495)
!497 = !DILocation(line: 389, column: 17, scope: !492)
!498 = !DILocation(line: 390, column: 33, scope: !495)
!499 = !DILocation(line: 390, column: 38, scope: !495)
!500 = !DILocation(line: 390, column: 17, scope: !495)
!501 = !DILocation(line: 391, column: 28, scope: !492)
!502 = !DILocation(line: 392, column: 9, scope: !492)
!503 = !DILocation(line: 393, column: 24, scope: !504)
!504 = distinct !DILexicalBlock(scope: !486, file: !3, line: 393, column: 13)
!505 = !DILocation(line: 393, column: 29, scope: !504)
!506 = !DILocation(line: 393, column: 13, scope: !486)
!507 = !DILocation(line: 394, column: 29, scope: !504)
!508 = !DILocation(line: 394, column: 13, scope: !504)
!509 = !DILocation(line: 397, column: 20, scope: !510)
!510 = distinct !DILexicalBlock(scope: !443, file: !3, line: 397, column: 9)
!511 = !DILocation(line: 397, column: 24, scope: !510)
!512 = !DILocation(line: 397, column: 9, scope: !443)
!513 = !DILocation(line: 398, column: 38, scope: !514)
!514 = distinct !DILexicalBlock(scope: !510, file: !3, line: 397, column: 30)
!515 = !DILocation(line: 398, column: 43, scope: !514)
!516 = !DILocation(line: 398, column: 20, scope: !514)
!517 = !DILocation(line: 398, column: 25, scope: !514)
!518 = !DILocation(line: 399, column: 5, scope: !514)
!519 = !DILocation(line: 401, column: 9, scope: !520)
!520 = distinct !DILexicalBlock(scope: !443, file: !3, line: 401, column: 9)
!521 = !DILocation(line: 401, column: 9, scope: !443)
!522 = !DILocation(line: 402, column: 9, scope: !523)
!523 = distinct !DILexicalBlock(scope: !524, file: !3, line: 402, column: 9)
!524 = distinct !DILexicalBlock(scope: !520, file: !3, line: 402, column: 9)
!525 = !DILocation(line: 402, column: 9, scope: !524)
!526 = !DILocation(line: 402, column: 9, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !3, line: 402, column: 9)
!528 = distinct !DILexicalBlock(scope: !523, file: !3, line: 402, column: 9)
!529 = !DILocation(line: 402, column: 9, scope: !528)
!530 = !DILocation(line: 402, column: 9, scope: !531)
!531 = distinct !DILexicalBlock(scope: !527, file: !3, line: 402, column: 9)
!532 = !DILocation(line: 404, column: 19, scope: !443)
!533 = !DILocation(line: 405, column: 1, scope: !443)
!534 = distinct !DISubprogram(name: "_quicklistInsertNodeBefore", scope: !3, file: !3, line: 408, type: !535, isLocal: false, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !537)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !21, !26, !26}
!537 = !{!538, !539, !540}
!538 = !DILocalVariable(name: "quicklist", arg: 1, scope: !534, file: !3, line: 408, type: !21)
!539 = !DILocalVariable(name: "old_node", arg: 2, scope: !534, file: !3, line: 409, type: !26)
!540 = !DILocalVariable(name: "new_node", arg: 3, scope: !534, file: !3, line: 410, type: !26)
!541 = !DILocation(line: 408, column: 57, scope: !534)
!542 = !DILocation(line: 409, column: 61, scope: !534)
!543 = !DILocation(line: 410, column: 61, scope: !534)
!544 = !DILocation(line: 372, column: 52, scope: !443, inlinedAt: !545)
!545 = distinct !DILocation(line: 411, column: 5, scope: !534)
!546 = !DILocation(line: 373, column: 56, scope: !443, inlinedAt: !545)
!547 = !DILocation(line: 374, column: 56, scope: !443, inlinedAt: !545)
!548 = !DILocation(line: 374, column: 70, scope: !443, inlinedAt: !545)
!549 = !DILocation(line: 386, column: 19, scope: !486, inlinedAt: !545)
!550 = !DILocation(line: 386, column: 24, scope: !486, inlinedAt: !545)
!551 = !DILocation(line: 387, column: 13, scope: !489, inlinedAt: !545)
!552 = !DILocation(line: 387, column: 13, scope: !486, inlinedAt: !545)
!553 = !DILocation(line: 388, column: 40, scope: !492, inlinedAt: !545)
!554 = !DILocation(line: 388, column: 28, scope: !492, inlinedAt: !545)
!555 = !DILocation(line: 389, column: 27, scope: !495, inlinedAt: !545)
!556 = !DILocation(line: 389, column: 17, scope: !495, inlinedAt: !545)
!557 = !DILocation(line: 389, column: 17, scope: !492, inlinedAt: !545)
!558 = !DILocation(line: 390, column: 33, scope: !495, inlinedAt: !545)
!559 = !DILocation(line: 390, column: 38, scope: !495, inlinedAt: !545)
!560 = !DILocation(line: 390, column: 17, scope: !495, inlinedAt: !545)
!561 = !DILocation(line: 391, column: 28, scope: !492, inlinedAt: !545)
!562 = !DILocation(line: 392, column: 9, scope: !492, inlinedAt: !545)
!563 = !DILocation(line: 393, column: 24, scope: !504, inlinedAt: !545)
!564 = !DILocation(line: 393, column: 29, scope: !504, inlinedAt: !545)
!565 = !DILocation(line: 393, column: 13, scope: !486, inlinedAt: !545)
!566 = !DILocation(line: 394, column: 29, scope: !504, inlinedAt: !545)
!567 = !DILocation(line: 394, column: 13, scope: !504, inlinedAt: !545)
!568 = !DILocation(line: 397, column: 20, scope: !510, inlinedAt: !545)
!569 = !DILocation(line: 397, column: 24, scope: !510, inlinedAt: !545)
!570 = !DILocation(line: 397, column: 9, scope: !443, inlinedAt: !545)
!571 = !DILocation(line: 398, column: 38, scope: !514, inlinedAt: !545)
!572 = !DILocation(line: 398, column: 43, scope: !514, inlinedAt: !545)
!573 = !DILocation(line: 398, column: 25, scope: !514, inlinedAt: !545)
!574 = !DILocation(line: 399, column: 5, scope: !514, inlinedAt: !545)
!575 = !DILocation(line: 401, column: 9, scope: !443, inlinedAt: !545)
!576 = !DILocation(line: 402, column: 9, scope: !523, inlinedAt: !545)
!577 = !DILocation(line: 402, column: 9, scope: !524, inlinedAt: !545)
!578 = !DILocation(line: 402, column: 9, scope: !527, inlinedAt: !545)
!579 = !DILocation(line: 402, column: 9, scope: !528, inlinedAt: !545)
!580 = !DILocation(line: 402, column: 9, scope: !531, inlinedAt: !545)
!581 = !DILocation(line: 404, column: 19, scope: !443, inlinedAt: !545)
!582 = !DILocation(line: 412, column: 1, scope: !534)
!583 = distinct !DISubprogram(name: "_quicklistInsertNodeAfter", scope: !3, file: !3, line: 414, type: !535, isLocal: false, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !584)
!584 = !{!585, !586, !587}
!585 = !DILocalVariable(name: "quicklist", arg: 1, scope: !583, file: !3, line: 414, type: !21)
!586 = !DILocalVariable(name: "old_node", arg: 2, scope: !583, file: !3, line: 415, type: !26)
!587 = !DILocalVariable(name: "new_node", arg: 3, scope: !583, file: !3, line: 416, type: !26)
!588 = !DILocation(line: 414, column: 56, scope: !583)
!589 = !DILocation(line: 415, column: 60, scope: !583)
!590 = !DILocation(line: 416, column: 60, scope: !583)
!591 = !DILocation(line: 372, column: 52, scope: !443, inlinedAt: !592)
!592 = distinct !DILocation(line: 417, column: 5, scope: !583)
!593 = !DILocation(line: 373, column: 56, scope: !443, inlinedAt: !592)
!594 = !DILocation(line: 374, column: 56, scope: !443, inlinedAt: !592)
!595 = !DILocation(line: 374, column: 70, scope: !443, inlinedAt: !592)
!596 = !DILocation(line: 376, column: 19, scope: !459, inlinedAt: !592)
!597 = !DILocation(line: 376, column: 24, scope: !459, inlinedAt: !592)
!598 = !DILocation(line: 377, column: 13, scope: !463, inlinedAt: !592)
!599 = !DILocation(line: 377, column: 13, scope: !459, inlinedAt: !592)
!600 = !DILocation(line: 378, column: 40, scope: !466, inlinedAt: !592)
!601 = !DILocation(line: 378, column: 23, scope: !466, inlinedAt: !592)
!602 = !DILocation(line: 378, column: 28, scope: !466, inlinedAt: !592)
!603 = !DILocation(line: 379, column: 27, scope: !470, inlinedAt: !592)
!604 = !DILocation(line: 379, column: 17, scope: !470, inlinedAt: !592)
!605 = !DILocation(line: 379, column: 17, scope: !466, inlinedAt: !592)
!606 = !DILocation(line: 380, column: 33, scope: !470, inlinedAt: !592)
!607 = !DILocation(line: 380, column: 38, scope: !470, inlinedAt: !592)
!608 = !DILocation(line: 380, column: 17, scope: !470, inlinedAt: !592)
!609 = !DILocation(line: 381, column: 28, scope: !466, inlinedAt: !592)
!610 = !DILocation(line: 382, column: 9, scope: !466, inlinedAt: !592)
!611 = !DILocation(line: 383, column: 24, scope: !479, inlinedAt: !592)
!612 = !DILocation(line: 383, column: 29, scope: !479, inlinedAt: !592)
!613 = !DILocation(line: 383, column: 13, scope: !459, inlinedAt: !592)
!614 = !DILocation(line: 384, column: 29, scope: !479, inlinedAt: !592)
!615 = !DILocation(line: 384, column: 13, scope: !479, inlinedAt: !592)
!616 = !DILocation(line: 397, column: 20, scope: !510, inlinedAt: !592)
!617 = !DILocation(line: 397, column: 24, scope: !510, inlinedAt: !592)
!618 = !DILocation(line: 397, column: 9, scope: !443, inlinedAt: !592)
!619 = !DILocation(line: 398, column: 43, scope: !514, inlinedAt: !592)
!620 = !DILocation(line: 398, column: 20, scope: !514, inlinedAt: !592)
!621 = !DILocation(line: 398, column: 25, scope: !514, inlinedAt: !592)
!622 = !DILocation(line: 399, column: 5, scope: !514, inlinedAt: !592)
!623 = !DILocation(line: 401, column: 9, scope: !443, inlinedAt: !592)
!624 = !DILocation(line: 402, column: 9, scope: !523, inlinedAt: !592)
!625 = !DILocation(line: 402, column: 9, scope: !524, inlinedAt: !592)
!626 = !DILocation(line: 402, column: 9, scope: !527, inlinedAt: !592)
!627 = !DILocation(line: 402, column: 9, scope: !528, inlinedAt: !592)
!628 = !DILocation(line: 402, column: 9, scope: !531, inlinedAt: !592)
!629 = !DILocation(line: 404, column: 19, scope: !443, inlinedAt: !592)
!630 = !DILocation(line: 418, column: 1, scope: !583)
!631 = distinct !DISubprogram(name: "_quicklistNodeSizeMeetsOptimizationRequirement", scope: !3, file: !3, line: 421, type: !632, isLocal: false, isDefinition: true, scopeLine: 422, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !635)
!632 = !DISubroutineType(types: !633)
!633 = !{!20, !50, !634}
!634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!635 = !{!636, !637, !638}
!636 = !DILocalVariable(name: "sz", arg: 1, scope: !631, file: !3, line: 421, type: !50)
!637 = !DILocalVariable(name: "fill", arg: 2, scope: !631, file: !3, line: 422, type: !634)
!638 = !DILocalVariable(name: "offset", scope: !631, file: !3, line: 426, type: !51)
!639 = !DILocation(line: 421, column: 61, scope: !631)
!640 = !DILocation(line: 422, column: 58, scope: !631)
!641 = !DILocation(line: 427, column: 16, scope: !642)
!642 = distinct !DILexicalBlock(scope: !631, file: !3, line: 427, column: 9)
!643 = !DILocation(line: 423, column: 9, scope: !631)
!644 = !DILocation(line: 426, column: 29, scope: !631)
!645 = !DILocation(line: 426, column: 21, scope: !631)
!646 = !DILocation(line: 426, column: 12, scope: !631)
!647 = !DILocation(line: 428, column: 19, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !3, line: 428, column: 13)
!649 = distinct !DILexicalBlock(scope: !642, file: !3, line: 427, column: 78)
!650 = !DILocation(line: 428, column: 16, scope: !648)
!651 = !DILocation(line: 431, column: 13, scope: !652)
!652 = distinct !DILexicalBlock(scope: !648, file: !3, line: 430, column: 16)
!653 = !DILocation(line: 0, scope: !654)
!654 = distinct !DILexicalBlock(scope: !648, file: !3, line: 428, column: 47)
!655 = !DILocation(line: 436, column: 1, scope: !631)
!656 = distinct !DISubprogram(name: "_quicklistNodeAllowInsert", scope: !3, file: !3, line: 440, type: !657, isLocal: false, isDefinition: true, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !659)
!657 = !DISubroutineType(types: !658)
!658 = !{!20, !307, !634, !50}
!659 = !{!660, !661, !662, !663, !664}
!660 = !DILocalVariable(name: "node", arg: 1, scope: !656, file: !3, line: 440, type: !307)
!661 = !DILocalVariable(name: "fill", arg: 2, scope: !656, file: !3, line: 441, type: !634)
!662 = !DILocalVariable(name: "sz", arg: 3, scope: !656, file: !3, line: 441, type: !50)
!663 = !DILocalVariable(name: "ziplist_overhead", scope: !656, file: !3, line: 445, type: !20)
!664 = !DILocalVariable(name: "new_sz", scope: !656, file: !3, line: 461, type: !14)
!665 = !DILocation(line: 440, column: 65, scope: !656)
!666 = !DILocation(line: 441, column: 54, scope: !656)
!667 = !DILocation(line: 441, column: 73, scope: !656)
!668 = !DILocation(line: 442, column: 9, scope: !669)
!669 = distinct !DILexicalBlock(scope: !656, file: !3, line: 442, column: 9)
!670 = !DILocation(line: 442, column: 9, scope: !656)
!671 = !{!"branch_weights", i32 1, i32 2000}
!672 = !DILocation(line: 447, column: 12, scope: !673)
!673 = distinct !DILexicalBlock(scope: !656, file: !3, line: 447, column: 9)
!674 = !DILocation(line: 448, column: 9, scope: !673)
!675 = !DILocation(line: 445, column: 9, scope: !656)
!676 = !DILocation(line: 453, column: 12, scope: !677)
!677 = distinct !DILexicalBlock(scope: !656, file: !3, line: 453, column: 9)
!678 = !DILocation(line: 453, column: 9, scope: !656)
!679 = !DILocation(line: 454, column: 26, scope: !677)
!680 = !DILocation(line: 454, column: 9, scope: !677)
!681 = !DILocation(line: 455, column: 14, scope: !682)
!682 = distinct !DILexicalBlock(scope: !677, file: !3, line: 455, column: 14)
!683 = !DILocation(line: 455, column: 14, scope: !677)
!684 = !{!"branch_weights", i32 2000, i32 1}
!685 = !DILocation(line: 456, column: 26, scope: !682)
!686 = !DILocation(line: 456, column: 9, scope: !682)
!687 = !DILocation(line: 458, column: 26, scope: !682)
!688 = !DILocation(line: 0, scope: !682)
!689 = !DILocation(line: 461, column: 33, scope: !656)
!690 = !DILocation(line: 461, column: 27, scope: !656)
!691 = !DILocation(line: 461, column: 18, scope: !656)
!692 = !DILocation(line: 422, column: 58, scope: !631, inlinedAt: !693)
!693 = distinct !DILocation(line: 462, column: 9, scope: !694)
!694 = distinct !DILexicalBlock(scope: !656, file: !3, line: 462, column: 9)
!695 = !DILocation(line: 427, column: 16, scope: !642, inlinedAt: !693)
!696 = !DILocation(line: 423, column: 9, scope: !631, inlinedAt: !693)
!697 = !DILocation(line: 462, column: 9, scope: !694)
!698 = !DILocation(line: 421, column: 61, scope: !631, inlinedAt: !693)
!699 = !DILocation(line: 426, column: 29, scope: !631, inlinedAt: !693)
!700 = !DILocation(line: 426, column: 21, scope: !631, inlinedAt: !693)
!701 = !DILocation(line: 426, column: 12, scope: !631, inlinedAt: !693)
!702 = !DILocation(line: 428, column: 19, scope: !648, inlinedAt: !693)
!703 = !DILocation(line: 428, column: 16, scope: !648, inlinedAt: !693)
!704 = !DILocation(line: 462, column: 9, scope: !656)
!705 = !DILocation(line: 464, column: 15, scope: !706)
!706 = distinct !DILexicalBlock(scope: !694, file: !3, line: 464, column: 14)
!707 = !DILocation(line: 464, column: 14, scope: !694)
!708 = !DILocation(line: 466, column: 25, scope: !709)
!709 = distinct !DILexicalBlock(scope: !706, file: !3, line: 466, column: 14)
!710 = !DILocation(line: 466, column: 31, scope: !709)
!711 = !DILocation(line: 467, column: 9, scope: !709)
!712 = !DILocation(line: 0, scope: !694)
!713 = !DILocation(line: 470, column: 1, scope: !656)
!714 = distinct !DISubprogram(name: "_quicklistNodeAllowMerge", scope: !3, file: !3, line: 472, type: !715, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !717)
!715 = !DISubroutineType(types: !716)
!716 = !{!20, !307, !307, !634}
!717 = !{!718, !719, !720, !721}
!718 = !DILocalVariable(name: "a", arg: 1, scope: !714, file: !3, line: 472, type: !307)
!719 = !DILocalVariable(name: "b", arg: 2, scope: !714, file: !3, line: 473, type: !307)
!720 = !DILocalVariable(name: "fill", arg: 3, scope: !714, file: !3, line: 474, type: !634)
!721 = !DILocalVariable(name: "merge_sz", scope: !714, file: !3, line: 480, type: !14)
!722 = !DILocation(line: 472, column: 64, scope: !714)
!723 = !DILocation(line: 473, column: 64, scope: !714)
!724 = !DILocation(line: 474, column: 53, scope: !714)
!725 = !DILocation(line: 475, column: 10, scope: !726)
!726 = distinct !DILexicalBlock(scope: !714, file: !3, line: 475, column: 9)
!727 = !DILocation(line: 475, column: 16, scope: !726)
!728 = !DILocation(line: 475, column: 12, scope: !726)
!729 = !DILocation(line: 480, column: 32, scope: !714)
!730 = !DILocation(line: 480, column: 40, scope: !714)
!731 = !DILocation(line: 480, column: 35, scope: !714)
!732 = !DILocation(line: 480, column: 43, scope: !714)
!733 = !DILocation(line: 480, column: 18, scope: !714)
!734 = !DILocation(line: 422, column: 58, scope: !631, inlinedAt: !735)
!735 = distinct !DILocation(line: 481, column: 9, scope: !736)
!736 = distinct !DILexicalBlock(scope: !714, file: !3, line: 481, column: 9)
!737 = !DILocation(line: 427, column: 16, scope: !642, inlinedAt: !735)
!738 = !DILocation(line: 423, column: 9, scope: !631, inlinedAt: !735)
!739 = !DILocation(line: 481, column: 9, scope: !736)
!740 = !DILocation(line: 421, column: 61, scope: !631, inlinedAt: !735)
!741 = !DILocation(line: 426, column: 29, scope: !631, inlinedAt: !735)
!742 = !DILocation(line: 426, column: 21, scope: !631, inlinedAt: !735)
!743 = !DILocation(line: 426, column: 12, scope: !631, inlinedAt: !735)
!744 = !DILocation(line: 428, column: 19, scope: !648, inlinedAt: !735)
!745 = !DILocation(line: 428, column: 16, scope: !648, inlinedAt: !735)
!746 = !DILocation(line: 481, column: 9, scope: !714)
!747 = !DILocation(line: 483, column: 15, scope: !748)
!748 = distinct !DILexicalBlock(scope: !736, file: !3, line: 483, column: 14)
!749 = !DILocation(line: 483, column: 14, scope: !736)
!750 = !DILocation(line: 485, column: 23, scope: !751)
!751 = distinct !DILexicalBlock(scope: !748, file: !3, line: 485, column: 14)
!752 = !DILocation(line: 485, column: 34, scope: !751)
!753 = !DILocation(line: 485, column: 29, scope: !751)
!754 = !DILocation(line: 485, column: 41, scope: !751)
!755 = !DILocation(line: 488, column: 9, scope: !751)
!756 = !DILocation(line: 0, scope: !726)
!757 = !DILocation(line: 489, column: 1, scope: !714)
!758 = distinct !DISubprogram(name: "quicklistPushHead", scope: !3, file: !3, line: 500, type: !759, isLocal: false, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !761)
!759 = !DISubroutineType(types: !760)
!760 = !{!20, !21, !47, !51}
!761 = !{!762, !763, !764, !765, !766}
!762 = !DILocalVariable(name: "quicklist", arg: 1, scope: !758, file: !3, line: 500, type: !21)
!763 = !DILocalVariable(name: "value", arg: 2, scope: !758, file: !3, line: 500, type: !47)
!764 = !DILocalVariable(name: "sz", arg: 3, scope: !758, file: !3, line: 500, type: !51)
!765 = !DILocalVariable(name: "orig_head", scope: !758, file: !3, line: 501, type: !26)
!766 = !DILocalVariable(name: "node", scope: !767, file: !3, line: 508, type: !26)
!767 = distinct !DILexicalBlock(scope: !768, file: !3, line: 507, column: 12)
!768 = distinct !DILexicalBlock(scope: !758, file: !3, line: 502, column: 9)
!769 = !DILocation(line: 500, column: 34, scope: !758)
!770 = !DILocation(line: 500, column: 51, scope: !758)
!771 = !DILocation(line: 500, column: 65, scope: !758)
!772 = !DILocation(line: 501, column: 43, scope: !758)
!773 = !DILocation(line: 501, column: 20, scope: !758)
!774 = !DILocation(line: 502, column: 9, scope: !768)
!775 = !DILocation(line: 440, column: 65, scope: !656, inlinedAt: !776)
!776 = distinct !DILocation(line: 502, column: 9, scope: !768)
!777 = !DILocation(line: 441, column: 54, scope: !656, inlinedAt: !776)
!778 = !DILocation(line: 441, column: 73, scope: !656, inlinedAt: !776)
!779 = !DILocation(line: 442, column: 9, scope: !669, inlinedAt: !776)
!780 = !DILocation(line: 442, column: 9, scope: !656, inlinedAt: !776)
!781 = !DILocation(line: 509, column: 53, scope: !767)
!782 = !DILocation(line: 447, column: 12, scope: !673, inlinedAt: !776)
!783 = !DILocation(line: 448, column: 9, scope: !673, inlinedAt: !776)
!784 = !DILocation(line: 445, column: 9, scope: !656, inlinedAt: !776)
!785 = !DILocation(line: 453, column: 12, scope: !677, inlinedAt: !776)
!786 = !DILocation(line: 453, column: 9, scope: !656, inlinedAt: !776)
!787 = !DILocation(line: 454, column: 26, scope: !677, inlinedAt: !776)
!788 = !DILocation(line: 454, column: 9, scope: !677, inlinedAt: !776)
!789 = !DILocation(line: 455, column: 14, scope: !682, inlinedAt: !776)
!790 = !DILocation(line: 455, column: 14, scope: !677, inlinedAt: !776)
!791 = !DILocation(line: 456, column: 26, scope: !682, inlinedAt: !776)
!792 = !DILocation(line: 456, column: 9, scope: !682, inlinedAt: !776)
!793 = !DILocation(line: 458, column: 26, scope: !682, inlinedAt: !776)
!794 = !DILocation(line: 0, scope: !682, inlinedAt: !776)
!795 = !DILocation(line: 461, column: 33, scope: !656, inlinedAt: !776)
!796 = !DILocation(line: 461, column: 27, scope: !656, inlinedAt: !776)
!797 = !DILocation(line: 461, column: 18, scope: !656, inlinedAt: !776)
!798 = !DILocation(line: 422, column: 58, scope: !631, inlinedAt: !799)
!799 = distinct !DILocation(line: 462, column: 9, scope: !694, inlinedAt: !776)
!800 = !DILocation(line: 427, column: 16, scope: !642, inlinedAt: !799)
!801 = !DILocation(line: 423, column: 9, scope: !631, inlinedAt: !799)
!802 = !DILocation(line: 462, column: 9, scope: !694, inlinedAt: !776)
!803 = !DILocation(line: 421, column: 61, scope: !631, inlinedAt: !799)
!804 = !DILocation(line: 426, column: 29, scope: !631, inlinedAt: !799)
!805 = !DILocation(line: 426, column: 21, scope: !631, inlinedAt: !799)
!806 = !DILocation(line: 426, column: 12, scope: !631, inlinedAt: !799)
!807 = !DILocation(line: 428, column: 19, scope: !648, inlinedAt: !799)
!808 = !DILocation(line: 428, column: 16, scope: !648, inlinedAt: !799)
!809 = !DILocation(line: 462, column: 9, scope: !656, inlinedAt: !776)
!810 = !DILocation(line: 464, column: 15, scope: !706, inlinedAt: !776)
!811 = !DILocation(line: 464, column: 14, scope: !694, inlinedAt: !776)
!812 = !DILocation(line: 466, column: 25, scope: !709, inlinedAt: !776)
!813 = !DILocation(line: 466, column: 31, scope: !709, inlinedAt: !776)
!814 = !DILocation(line: 502, column: 9, scope: !758)
!815 = !DILocation(line: 505, column: 42, scope: !816)
!816 = distinct !DILexicalBlock(scope: !768, file: !3, line: 503, column: 79)
!817 = !DILocation(line: 505, column: 13, scope: !816)
!818 = !DILocation(line: 504, column: 20, scope: !816)
!819 = !DILocation(line: 504, column: 26, scope: !816)
!820 = !DILocation(line: 504, column: 29, scope: !816)
!821 = !DILocation(line: 506, column: 9, scope: !822)
!822 = distinct !DILexicalBlock(scope: !816, file: !3, line: 506, column: 9)
!823 = !DILocation(line: 507, column: 5, scope: !816)
!824 = !DILocation(line: 160, column: 12, scope: !165, inlinedAt: !825)
!825 = distinct !DILocation(line: 508, column: 31, scope: !767)
!826 = !DILocation(line: 159, column: 20, scope: !165, inlinedAt: !825)
!827 = !DILocation(line: 161, column: 11, scope: !165, inlinedAt: !825)
!828 = !DILocation(line: 161, column: 14, scope: !165, inlinedAt: !825)
!829 = !DILocation(line: 162, column: 11, scope: !165, inlinedAt: !825)
!830 = !DILocation(line: 162, column: 17, scope: !165, inlinedAt: !825)
!831 = !DILocation(line: 163, column: 11, scope: !165, inlinedAt: !825)
!832 = !DILocation(line: 163, column: 14, scope: !165, inlinedAt: !825)
!833 = !DILocation(line: 164, column: 11, scope: !165, inlinedAt: !825)
!834 = !DILocation(line: 164, column: 29, scope: !165, inlinedAt: !825)
!835 = !DILocation(line: 167, column: 22, scope: !165, inlinedAt: !825)
!836 = !DILocation(line: 508, column: 24, scope: !767)
!837 = !DILocation(line: 509, column: 32, scope: !767)
!838 = !DILocation(line: 509, column: 20, scope: !767)
!839 = !DILocation(line: 509, column: 18, scope: !767)
!840 = !DILocation(line: 511, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !767, file: !3, line: 511, column: 9)
!842 = !DILocation(line: 512, column: 58, scope: !767)
!843 = !DILocation(line: 408, column: 57, scope: !534, inlinedAt: !844)
!844 = distinct !DILocation(line: 512, column: 9, scope: !767)
!845 = !DILocation(line: 409, column: 61, scope: !534, inlinedAt: !844)
!846 = !DILocation(line: 410, column: 61, scope: !534, inlinedAt: !844)
!847 = !DILocation(line: 372, column: 52, scope: !443, inlinedAt: !848)
!848 = distinct !DILocation(line: 411, column: 5, scope: !534, inlinedAt: !844)
!849 = !DILocation(line: 373, column: 56, scope: !443, inlinedAt: !848)
!850 = !DILocation(line: 374, column: 56, scope: !443, inlinedAt: !848)
!851 = !DILocation(line: 374, column: 70, scope: !443, inlinedAt: !848)
!852 = !DILocation(line: 386, column: 24, scope: !486, inlinedAt: !848)
!853 = !DILocation(line: 387, column: 13, scope: !489, inlinedAt: !848)
!854 = !DILocation(line: 387, column: 13, scope: !486, inlinedAt: !848)
!855 = !DILocation(line: 388, column: 40, scope: !492, inlinedAt: !848)
!856 = !DILocation(line: 388, column: 28, scope: !492, inlinedAt: !848)
!857 = !DILocation(line: 389, column: 27, scope: !495, inlinedAt: !848)
!858 = !DILocation(line: 389, column: 17, scope: !495, inlinedAt: !848)
!859 = !DILocation(line: 389, column: 17, scope: !492, inlinedAt: !848)
!860 = !DILocation(line: 390, column: 33, scope: !495, inlinedAt: !848)
!861 = !DILocation(line: 390, column: 38, scope: !495, inlinedAt: !848)
!862 = !DILocation(line: 390, column: 17, scope: !495, inlinedAt: !848)
!863 = !DILocation(line: 391, column: 28, scope: !492, inlinedAt: !848)
!864 = !DILocation(line: 392, column: 9, scope: !492, inlinedAt: !848)
!865 = !DILocation(line: 394, column: 29, scope: !504, inlinedAt: !848)
!866 = !DILocation(line: 397, column: 20, scope: !510, inlinedAt: !848)
!867 = !DILocation(line: 397, column: 24, scope: !510, inlinedAt: !848)
!868 = !DILocation(line: 397, column: 9, scope: !443, inlinedAt: !848)
!869 = !DILocation(line: 398, column: 38, scope: !514, inlinedAt: !848)
!870 = !DILocation(line: 398, column: 43, scope: !514, inlinedAt: !848)
!871 = !DILocation(line: 398, column: 25, scope: !514, inlinedAt: !848)
!872 = !DILocation(line: 399, column: 5, scope: !514, inlinedAt: !848)
!873 = !DILocation(line: 401, column: 9, scope: !443, inlinedAt: !848)
!874 = !DILocation(line: 402, column: 9, scope: !523, inlinedAt: !848)
!875 = !DILocation(line: 402, column: 9, scope: !524, inlinedAt: !848)
!876 = !DILocation(line: 402, column: 9, scope: !527, inlinedAt: !848)
!877 = !DILocation(line: 402, column: 9, scope: !528, inlinedAt: !848)
!878 = !DILocation(line: 402, column: 9, scope: !531, inlinedAt: !848)
!879 = !DILocation(line: 404, column: 19, scope: !443, inlinedAt: !848)
!880 = !DILocation(line: 515, column: 16, scope: !758)
!881 = !DILocation(line: 514, column: 16, scope: !758)
!882 = !DILocation(line: 514, column: 21, scope: !758)
!883 = !DILocation(line: 515, column: 22, scope: !758)
!884 = !DILocation(line: 515, column: 27, scope: !758)
!885 = !DILocation(line: 516, column: 37, scope: !758)
!886 = !DILocation(line: 516, column: 23, scope: !758)
!887 = !DILocation(line: 516, column: 5, scope: !758)
!888 = distinct !DISubprogram(name: "quicklistPushTail", scope: !3, file: !3, line: 523, type: !759, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !889)
!889 = !{!890, !891, !892, !893, !894}
!890 = !DILocalVariable(name: "quicklist", arg: 1, scope: !888, file: !3, line: 523, type: !21)
!891 = !DILocalVariable(name: "value", arg: 2, scope: !888, file: !3, line: 523, type: !47)
!892 = !DILocalVariable(name: "sz", arg: 3, scope: !888, file: !3, line: 523, type: !51)
!893 = !DILocalVariable(name: "orig_tail", scope: !888, file: !3, line: 524, type: !26)
!894 = !DILocalVariable(name: "node", scope: !895, file: !3, line: 531, type: !26)
!895 = distinct !DILexicalBlock(scope: !896, file: !3, line: 530, column: 12)
!896 = distinct !DILexicalBlock(scope: !888, file: !3, line: 525, column: 9)
!897 = !DILocation(line: 523, column: 34, scope: !888)
!898 = !DILocation(line: 523, column: 51, scope: !888)
!899 = !DILocation(line: 523, column: 65, scope: !888)
!900 = !DILocation(line: 524, column: 43, scope: !888)
!901 = !DILocation(line: 524, column: 20, scope: !888)
!902 = !DILocation(line: 525, column: 9, scope: !896)
!903 = !DILocation(line: 440, column: 65, scope: !656, inlinedAt: !904)
!904 = distinct !DILocation(line: 525, column: 9, scope: !896)
!905 = !DILocation(line: 441, column: 54, scope: !656, inlinedAt: !904)
!906 = !DILocation(line: 441, column: 73, scope: !656, inlinedAt: !904)
!907 = !DILocation(line: 442, column: 9, scope: !669, inlinedAt: !904)
!908 = !DILocation(line: 442, column: 9, scope: !656, inlinedAt: !904)
!909 = !DILocation(line: 532, column: 53, scope: !895)
!910 = !DILocation(line: 447, column: 12, scope: !673, inlinedAt: !904)
!911 = !DILocation(line: 448, column: 9, scope: !673, inlinedAt: !904)
!912 = !DILocation(line: 445, column: 9, scope: !656, inlinedAt: !904)
!913 = !DILocation(line: 453, column: 12, scope: !677, inlinedAt: !904)
!914 = !DILocation(line: 453, column: 9, scope: !656, inlinedAt: !904)
!915 = !DILocation(line: 454, column: 26, scope: !677, inlinedAt: !904)
!916 = !DILocation(line: 454, column: 9, scope: !677, inlinedAt: !904)
!917 = !DILocation(line: 455, column: 14, scope: !682, inlinedAt: !904)
!918 = !DILocation(line: 455, column: 14, scope: !677, inlinedAt: !904)
!919 = !DILocation(line: 456, column: 26, scope: !682, inlinedAt: !904)
!920 = !DILocation(line: 456, column: 9, scope: !682, inlinedAt: !904)
!921 = !DILocation(line: 458, column: 26, scope: !682, inlinedAt: !904)
!922 = !DILocation(line: 0, scope: !682, inlinedAt: !904)
!923 = !DILocation(line: 461, column: 33, scope: !656, inlinedAt: !904)
!924 = !DILocation(line: 461, column: 27, scope: !656, inlinedAt: !904)
!925 = !DILocation(line: 461, column: 18, scope: !656, inlinedAt: !904)
!926 = !DILocation(line: 422, column: 58, scope: !631, inlinedAt: !927)
!927 = distinct !DILocation(line: 462, column: 9, scope: !694, inlinedAt: !904)
!928 = !DILocation(line: 427, column: 16, scope: !642, inlinedAt: !927)
!929 = !DILocation(line: 423, column: 9, scope: !631, inlinedAt: !927)
!930 = !DILocation(line: 462, column: 9, scope: !694, inlinedAt: !904)
!931 = !DILocation(line: 421, column: 61, scope: !631, inlinedAt: !927)
!932 = !DILocation(line: 426, column: 29, scope: !631, inlinedAt: !927)
!933 = !DILocation(line: 426, column: 21, scope: !631, inlinedAt: !927)
!934 = !DILocation(line: 426, column: 12, scope: !631, inlinedAt: !927)
!935 = !DILocation(line: 428, column: 19, scope: !648, inlinedAt: !927)
!936 = !DILocation(line: 428, column: 16, scope: !648, inlinedAt: !927)
!937 = !DILocation(line: 462, column: 9, scope: !656, inlinedAt: !904)
!938 = !DILocation(line: 464, column: 15, scope: !706, inlinedAt: !904)
!939 = !DILocation(line: 464, column: 14, scope: !694, inlinedAt: !904)
!940 = !DILocation(line: 466, column: 25, scope: !709, inlinedAt: !904)
!941 = !DILocation(line: 466, column: 31, scope: !709, inlinedAt: !904)
!942 = !DILocation(line: 525, column: 9, scope: !888)
!943 = !DILocation(line: 528, column: 42, scope: !944)
!944 = distinct !DILexicalBlock(scope: !896, file: !3, line: 526, column: 79)
!945 = !DILocation(line: 528, column: 13, scope: !944)
!946 = !DILocation(line: 527, column: 20, scope: !944)
!947 = !DILocation(line: 527, column: 26, scope: !944)
!948 = !DILocation(line: 527, column: 29, scope: !944)
!949 = !DILocation(line: 529, column: 9, scope: !950)
!950 = distinct !DILexicalBlock(scope: !944, file: !3, line: 529, column: 9)
!951 = !DILocation(line: 530, column: 5, scope: !944)
!952 = !DILocation(line: 160, column: 12, scope: !165, inlinedAt: !953)
!953 = distinct !DILocation(line: 531, column: 31, scope: !895)
!954 = !DILocation(line: 159, column: 20, scope: !165, inlinedAt: !953)
!955 = !DILocation(line: 161, column: 11, scope: !165, inlinedAt: !953)
!956 = !DILocation(line: 161, column: 14, scope: !165, inlinedAt: !953)
!957 = !DILocation(line: 162, column: 11, scope: !165, inlinedAt: !953)
!958 = !DILocation(line: 162, column: 17, scope: !165, inlinedAt: !953)
!959 = !DILocation(line: 163, column: 11, scope: !165, inlinedAt: !953)
!960 = !DILocation(line: 163, column: 14, scope: !165, inlinedAt: !953)
!961 = !DILocation(line: 164, column: 24, scope: !165, inlinedAt: !953)
!962 = !DILocation(line: 164, column: 29, scope: !165, inlinedAt: !953)
!963 = !DILocation(line: 167, column: 22, scope: !165, inlinedAt: !953)
!964 = !DILocation(line: 531, column: 24, scope: !895)
!965 = !DILocation(line: 532, column: 32, scope: !895)
!966 = !DILocation(line: 532, column: 20, scope: !895)
!967 = !DILocation(line: 532, column: 18, scope: !895)
!968 = !DILocation(line: 534, column: 9, scope: !969)
!969 = distinct !DILexicalBlock(scope: !895, file: !3, line: 534, column: 9)
!970 = !DILocation(line: 535, column: 57, scope: !895)
!971 = !DILocation(line: 414, column: 56, scope: !583, inlinedAt: !972)
!972 = distinct !DILocation(line: 535, column: 9, scope: !895)
!973 = !DILocation(line: 415, column: 60, scope: !583, inlinedAt: !972)
!974 = !DILocation(line: 416, column: 60, scope: !583, inlinedAt: !972)
!975 = !DILocation(line: 372, column: 52, scope: !443, inlinedAt: !976)
!976 = distinct !DILocation(line: 417, column: 5, scope: !583, inlinedAt: !972)
!977 = !DILocation(line: 373, column: 56, scope: !443, inlinedAt: !976)
!978 = !DILocation(line: 374, column: 56, scope: !443, inlinedAt: !976)
!979 = !DILocation(line: 374, column: 70, scope: !443, inlinedAt: !976)
!980 = !DILocation(line: 376, column: 24, scope: !459, inlinedAt: !976)
!981 = !DILocation(line: 377, column: 13, scope: !463, inlinedAt: !976)
!982 = !DILocation(line: 377, column: 13, scope: !459, inlinedAt: !976)
!983 = !DILocation(line: 164, column: 11, scope: !165, inlinedAt: !953)
!984 = !DILocation(line: 378, column: 40, scope: !466, inlinedAt: !976)
!985 = !DILocation(line: 378, column: 28, scope: !466, inlinedAt: !976)
!986 = !DILocation(line: 379, column: 27, scope: !470, inlinedAt: !976)
!987 = !DILocation(line: 379, column: 17, scope: !470, inlinedAt: !976)
!988 = !DILocation(line: 379, column: 17, scope: !466, inlinedAt: !976)
!989 = !DILocation(line: 380, column: 38, scope: !470, inlinedAt: !976)
!990 = !DILocation(line: 380, column: 17, scope: !470, inlinedAt: !976)
!991 = !DILocation(line: 381, column: 28, scope: !466, inlinedAt: !976)
!992 = !DILocation(line: 382, column: 9, scope: !466, inlinedAt: !976)
!993 = !DILocation(line: 384, column: 29, scope: !479, inlinedAt: !976)
!994 = !DILocation(line: 397, column: 20, scope: !510, inlinedAt: !976)
!995 = !DILocation(line: 397, column: 24, scope: !510, inlinedAt: !976)
!996 = !DILocation(line: 397, column: 9, scope: !443, inlinedAt: !976)
!997 = !DILocation(line: 398, column: 43, scope: !514, inlinedAt: !976)
!998 = !DILocation(line: 398, column: 25, scope: !514, inlinedAt: !976)
!999 = !DILocation(line: 399, column: 5, scope: !514, inlinedAt: !976)
!1000 = !DILocation(line: 401, column: 9, scope: !443, inlinedAt: !976)
!1001 = !DILocation(line: 402, column: 9, scope: !523, inlinedAt: !976)
!1002 = !DILocation(line: 402, column: 9, scope: !524, inlinedAt: !976)
!1003 = !DILocation(line: 402, column: 9, scope: !527, inlinedAt: !976)
!1004 = !DILocation(line: 402, column: 9, scope: !528, inlinedAt: !976)
!1005 = !DILocation(line: 402, column: 9, scope: !531, inlinedAt: !976)
!1006 = !DILocation(line: 404, column: 19, scope: !443, inlinedAt: !976)
!1007 = !DILocation(line: 538, column: 16, scope: !888)
!1008 = !DILocation(line: 537, column: 16, scope: !888)
!1009 = !DILocation(line: 537, column: 21, scope: !888)
!1010 = !DILocation(line: 538, column: 22, scope: !888)
!1011 = !DILocation(line: 538, column: 27, scope: !888)
!1012 = !DILocation(line: 539, column: 37, scope: !888)
!1013 = !DILocation(line: 539, column: 23, scope: !888)
!1014 = !DILocation(line: 539, column: 5, scope: !888)
!1015 = distinct !DISubprogram(name: "quicklistAppendZiplist", scope: !3, file: !3, line: 545, type: !1016, isLocal: false, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1018)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !21, !6}
!1018 = !{!1019, !1020, !1021}
!1019 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1015, file: !3, line: 545, type: !21)
!1020 = !DILocalVariable(name: "zl", arg: 2, scope: !1015, file: !3, line: 545, type: !6)
!1021 = !DILocalVariable(name: "node", scope: !1015, file: !3, line: 546, type: !26)
!1022 = !DILocation(line: 545, column: 40, scope: !1015)
!1023 = !DILocation(line: 545, column: 66, scope: !1015)
!1024 = !DILocation(line: 160, column: 12, scope: !165, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 546, column: 27, scope: !1015)
!1026 = !DILocation(line: 159, column: 20, scope: !165, inlinedAt: !1025)
!1027 = !DILocation(line: 161, column: 11, scope: !165, inlinedAt: !1025)
!1028 = !DILocation(line: 162, column: 11, scope: !165, inlinedAt: !1025)
!1029 = !DILocation(line: 162, column: 17, scope: !165, inlinedAt: !1025)
!1030 = !DILocation(line: 163, column: 11, scope: !165, inlinedAt: !1025)
!1031 = !DILocation(line: 163, column: 14, scope: !165, inlinedAt: !1025)
!1032 = !DILocation(line: 164, column: 24, scope: !165, inlinedAt: !1025)
!1033 = !DILocation(line: 164, column: 29, scope: !165, inlinedAt: !1025)
!1034 = !DILocation(line: 167, column: 22, scope: !165, inlinedAt: !1025)
!1035 = !DILocation(line: 546, column: 20, scope: !1015)
!1036 = !DILocation(line: 548, column: 14, scope: !1015)
!1037 = !DILocation(line: 549, column: 19, scope: !1015)
!1038 = !DILocation(line: 549, column: 17, scope: !1015)
!1039 = !DILocation(line: 550, column: 16, scope: !1015)
!1040 = !DILocation(line: 550, column: 14, scope: !1015)
!1041 = !DILocation(line: 552, column: 53, scope: !1015)
!1042 = !DILocation(line: 414, column: 56, scope: !583, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 552, column: 5, scope: !1015)
!1044 = !DILocation(line: 415, column: 60, scope: !583, inlinedAt: !1043)
!1045 = !DILocation(line: 416, column: 60, scope: !583, inlinedAt: !1043)
!1046 = !DILocation(line: 372, column: 52, scope: !443, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 417, column: 5, scope: !583, inlinedAt: !1043)
!1048 = !DILocation(line: 373, column: 56, scope: !443, inlinedAt: !1047)
!1049 = !DILocation(line: 374, column: 56, scope: !443, inlinedAt: !1047)
!1050 = !DILocation(line: 374, column: 70, scope: !443, inlinedAt: !1047)
!1051 = !DILocation(line: 376, column: 24, scope: !459, inlinedAt: !1047)
!1052 = !DILocation(line: 377, column: 13, scope: !463, inlinedAt: !1047)
!1053 = !DILocation(line: 377, column: 13, scope: !459, inlinedAt: !1047)
!1054 = !DILocation(line: 164, column: 11, scope: !165, inlinedAt: !1025)
!1055 = !DILocation(line: 378, column: 40, scope: !466, inlinedAt: !1047)
!1056 = !DILocation(line: 378, column: 28, scope: !466, inlinedAt: !1047)
!1057 = !DILocation(line: 379, column: 27, scope: !470, inlinedAt: !1047)
!1058 = !DILocation(line: 379, column: 17, scope: !470, inlinedAt: !1047)
!1059 = !DILocation(line: 379, column: 17, scope: !466, inlinedAt: !1047)
!1060 = !DILocation(line: 380, column: 38, scope: !470, inlinedAt: !1047)
!1061 = !DILocation(line: 380, column: 17, scope: !470, inlinedAt: !1047)
!1062 = !DILocation(line: 381, column: 28, scope: !466, inlinedAt: !1047)
!1063 = !DILocation(line: 382, column: 9, scope: !466, inlinedAt: !1047)
!1064 = !DILocation(line: 384, column: 29, scope: !479, inlinedAt: !1047)
!1065 = !DILocation(line: 397, column: 20, scope: !510, inlinedAt: !1047)
!1066 = !DILocation(line: 397, column: 24, scope: !510, inlinedAt: !1047)
!1067 = !DILocation(line: 397, column: 9, scope: !443, inlinedAt: !1047)
!1068 = !DILocation(line: 398, column: 43, scope: !514, inlinedAt: !1047)
!1069 = !DILocation(line: 398, column: 25, scope: !514, inlinedAt: !1047)
!1070 = !DILocation(line: 399, column: 5, scope: !514, inlinedAt: !1047)
!1071 = !DILocation(line: 401, column: 9, scope: !443, inlinedAt: !1047)
!1072 = !DILocation(line: 402, column: 9, scope: !523, inlinedAt: !1047)
!1073 = !DILocation(line: 402, column: 9, scope: !524, inlinedAt: !1047)
!1074 = !DILocation(line: 402, column: 9, scope: !527, inlinedAt: !1047)
!1075 = !DILocation(line: 402, column: 9, scope: !528, inlinedAt: !1047)
!1076 = !DILocation(line: 402, column: 9, scope: !531, inlinedAt: !1047)
!1077 = !DILocation(line: 404, column: 19, scope: !443, inlinedAt: !1047)
!1078 = !DILocation(line: 553, column: 31, scope: !1015)
!1079 = !DILocation(line: 553, column: 25, scope: !1015)
!1080 = !DILocation(line: 553, column: 16, scope: !1015)
!1081 = !DILocation(line: 553, column: 22, scope: !1015)
!1082 = !DILocation(line: 554, column: 1, scope: !1015)
!1083 = distinct !DISubprogram(name: "quicklistAppendValuesFromZiplist", scope: !3, file: !3, line: 562, type: !1084, isLocal: false, isDefinition: true, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1086)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!21, !21, !6}
!1086 = !{!1087, !1088, !1089, !1090, !1091, !1093, !1097}
!1087 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1083, file: !3, line: 562, type: !21)
!1088 = !DILocalVariable(name: "zl", arg: 2, scope: !1083, file: !3, line: 563, type: !6)
!1089 = !DILocalVariable(name: "value", scope: !1083, file: !3, line: 564, type: !6)
!1090 = !DILocalVariable(name: "sz", scope: !1083, file: !3, line: 565, type: !14)
!1091 = !DILocalVariable(name: "longval", scope: !1083, file: !3, line: 566, type: !1092)
!1092 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1093 = !DILocalVariable(name: "longstr", scope: !1083, file: !3, line: 567, type: !1094)
!1094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 256, elements: !1095)
!1095 = !{!1096}
!1096 = !DISubrange(count: 32)
!1097 = !DILocalVariable(name: "p", scope: !1083, file: !3, line: 569, type: !6)
!1098 = !DILocation(line: 562, column: 56, scope: !1083)
!1099 = !DILocation(line: 563, column: 60, scope: !1083)
!1100 = !DILocation(line: 564, column: 5, scope: !1083)
!1101 = !DILocation(line: 565, column: 5, scope: !1083)
!1102 = !DILocation(line: 566, column: 5, scope: !1083)
!1103 = !DILocation(line: 567, column: 5, scope: !1083)
!1104 = !DILocation(line: 567, column: 10, scope: !1083)
!1105 = !DILocation(line: 569, column: 24, scope: !1083)
!1106 = !DILocation(line: 569, column: 20, scope: !1083)
!1107 = !DILocation(line: 564, column: 20, scope: !1083)
!1108 = !DILocation(line: 565, column: 18, scope: !1083)
!1109 = !DILocation(line: 566, column: 15, scope: !1083)
!1110 = !DILocation(line: 570, column: 12, scope: !1083)
!1111 = !DILocation(line: 570, column: 5, scope: !1083)
!1112 = !DILocation(line: 571, column: 14, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 571, column: 13)
!1114 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 570, column: 50)
!1115 = !DILocation(line: 571, column: 13, scope: !1114)
!1116 = !DILocation(line: 576, column: 45, scope: !1114)
!1117 = !DILocation(line: 573, column: 54, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 571, column: 21)
!1119 = !{!1120, !1120, i64 0}
!1120 = !{!"long long", !72, i64 0}
!1121 = !DILocation(line: 573, column: 18, scope: !1118)
!1122 = !DILocation(line: 573, column: 16, scope: !1118)
!1123 = !DILocation(line: 574, column: 19, scope: !1118)
!1124 = !DILocation(line: 575, column: 9, scope: !1118)
!1125 = !DILocation(line: 576, column: 38, scope: !1114)
!1126 = !DILocation(line: 576, column: 9, scope: !1114)
!1127 = !DILocation(line: 577, column: 13, scope: !1114)
!1128 = distinct !{!1128, !1111, !1129}
!1129 = !DILocation(line: 578, column: 5, scope: !1083)
!1130 = !DILocation(line: 579, column: 5, scope: !1083)
!1131 = !DILocation(line: 581, column: 1, scope: !1083)
!1132 = !DILocation(line: 580, column: 5, scope: !1083)
!1133 = distinct !DISubprogram(name: "quicklistCreateFromZiplist", scope: !3, file: !3, line: 586, type: !1134, isLocal: false, isDefinition: true, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1136)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!21, !20, !20, !6}
!1136 = !{!1137, !1138, !1139}
!1137 = !DILocalVariable(name: "fill", arg: 1, scope: !1133, file: !3, line: 586, type: !20)
!1138 = !DILocalVariable(name: "compress", arg: 2, scope: !1133, file: !3, line: 586, type: !20)
!1139 = !DILocalVariable(name: "zl", arg: 3, scope: !1133, file: !3, line: 587, type: !6)
!1140 = !DILocation(line: 586, column: 43, scope: !1133)
!1141 = !DILocation(line: 586, column: 53, scope: !1133)
!1142 = !DILocation(line: 587, column: 54, scope: !1133)
!1143 = !DILocation(line: 152, column: 29, scope: !131, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 588, column: 45, scope: !1133)
!1145 = !DILocation(line: 152, column: 39, scope: !131, inlinedAt: !1144)
!1146 = !DILocation(line: 117, column: 17, scope: !61, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 153, column: 28, scope: !131, inlinedAt: !1144)
!1148 = !DILocation(line: 115, column: 23, scope: !61, inlinedAt: !1147)
!1149 = !DILocation(line: 118, column: 21, scope: !61, inlinedAt: !1147)
!1150 = !DILocation(line: 120, column: 16, scope: !61, inlinedAt: !1147)
!1151 = !DILocation(line: 120, column: 22, scope: !61, inlinedAt: !1147)
!1152 = !DILocation(line: 121, column: 16, scope: !61, inlinedAt: !1147)
!1153 = !DILocation(line: 153, column: 16, scope: !131, inlinedAt: !1144)
!1154 = !DILocation(line: 146, column: 37, scope: !107, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 154, column: 5, scope: !131, inlinedAt: !1144)
!1156 = !DILocation(line: 146, column: 52, scope: !107, inlinedAt: !1155)
!1157 = !DILocation(line: 146, column: 62, scope: !107, inlinedAt: !1155)
!1158 = !DILocation(line: 137, column: 34, scope: !95, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 147, column: 5, scope: !107, inlinedAt: !1155)
!1160 = !DILocation(line: 137, column: 49, scope: !95, inlinedAt: !1159)
!1161 = !DILocation(line: 140, column: 16, scope: !102, inlinedAt: !1159)
!1162 = !DILocation(line: 138, column: 9, scope: !95, inlinedAt: !1159)
!1163 = !DILocation(line: 143, column: 21, scope: !95, inlinedAt: !1159)
!1164 = !DILocation(line: 127, column: 43, scope: !81, inlinedAt: !1165)
!1165 = distinct !DILocation(line: 148, column: 5, scope: !107, inlinedAt: !1155)
!1166 = !DILocation(line: 127, column: 58, scope: !81, inlinedAt: !1165)
!1167 = !DILocation(line: 130, column: 16, scope: !90, inlinedAt: !1165)
!1168 = !DILocation(line: 128, column: 9, scope: !81, inlinedAt: !1165)
!1169 = !DILocation(line: 133, column: 25, scope: !81, inlinedAt: !1165)
!1170 = !DILocation(line: 588, column: 12, scope: !1133)
!1171 = !DILocation(line: 588, column: 5, scope: !1133)
!1172 = distinct !DISubprogram(name: "__quicklistDelNode", scope: !3, file: !3, line: 599, type: !1173, isLocal: false, isDefinition: true, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1175)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{null, !21, !26}
!1175 = !{!1176, !1177}
!1176 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1172, file: !3, line: 599, type: !21)
!1177 = !DILocalVariable(name: "node", arg: 2, scope: !1172, file: !3, line: 600, type: !26)
!1178 = !DILocation(line: 599, column: 49, scope: !1172)
!1179 = !DILocation(line: 600, column: 53, scope: !1172)
!1180 = !DILocation(line: 601, column: 15, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 601, column: 9)
!1182 = !DILocation(line: 601, column: 9, scope: !1181)
!1183 = !DILocation(line: 601, column: 9, scope: !1172)
!1184 = !DILocation(line: 602, column: 34, scope: !1181)
!1185 = !DILocation(line: 602, column: 26, scope: !1181)
!1186 = !DILocation(line: 602, column: 9, scope: !1181)
!1187 = !DILocation(line: 603, column: 15, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 603, column: 9)
!1189 = !DILocation(line: 603, column: 9, scope: !1188)
!1190 = !DILocation(line: 603, column: 9, scope: !1172)
!1191 = !DILocation(line: 604, column: 21, scope: !1188)
!1192 = !DILocation(line: 604, column: 26, scope: !1188)
!1193 = !DILocation(line: 604, column: 9, scope: !1188)
!1194 = !DILocation(line: 606, column: 28, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 606, column: 9)
!1196 = !DILocation(line: 606, column: 14, scope: !1195)
!1197 = !DILocation(line: 606, column: 9, scope: !1172)
!1198 = !DILocation(line: 607, column: 25, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 606, column: 34)
!1200 = !DILocation(line: 608, column: 5, scope: !1199)
!1201 = !DILocation(line: 610, column: 28, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 610, column: 9)
!1203 = !DILocation(line: 610, column: 14, scope: !1202)
!1204 = !DILocation(line: 610, column: 9, scope: !1172)
!1205 = !DILocation(line: 611, column: 33, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 610, column: 34)
!1207 = !DILocation(line: 611, column: 25, scope: !1206)
!1208 = !DILocation(line: 612, column: 5, scope: !1206)
!1209 = !DILocation(line: 616, column: 5, scope: !1172)
!1210 = !DILocation(line: 618, column: 31, scope: !1172)
!1211 = !DILocation(line: 618, column: 25, scope: !1172)
!1212 = !DILocation(line: 618, column: 16, scope: !1172)
!1213 = !DILocation(line: 618, column: 22, scope: !1172)
!1214 = !DILocation(line: 620, column: 17, scope: !1172)
!1215 = !DILocation(line: 620, column: 5, scope: !1172)
!1216 = !DILocation(line: 621, column: 11, scope: !1172)
!1217 = !DILocation(line: 621, column: 5, scope: !1172)
!1218 = !DILocation(line: 622, column: 16, scope: !1172)
!1219 = !DILocation(line: 622, column: 19, scope: !1172)
!1220 = !DILocation(line: 623, column: 1, scope: !1172)
!1221 = distinct !DISubprogram(name: "quicklistDelIndex", scope: !3, file: !3, line: 633, type: !1222, isLocal: false, isDefinition: true, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1225)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!20, !21, !26, !1224}
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1225 = !{!1226, !1227, !1228, !1229}
!1226 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1221, file: !3, line: 633, type: !21)
!1227 = !DILocalVariable(name: "node", arg: 2, scope: !1221, file: !3, line: 633, type: !26)
!1228 = !DILocalVariable(name: "p", arg: 3, scope: !1221, file: !3, line: 634, type: !1224)
!1229 = !DILocalVariable(name: "gone", scope: !1221, file: !3, line: 635, type: !20)
!1230 = !DILocation(line: 633, column: 47, scope: !1221)
!1231 = !DILocation(line: 633, column: 73, scope: !1221)
!1232 = !DILocation(line: 634, column: 52, scope: !1221)
!1233 = !DILocation(line: 635, column: 9, scope: !1221)
!1234 = !DILocation(line: 637, column: 36, scope: !1221)
!1235 = !DILocation(line: 637, column: 16, scope: !1221)
!1236 = !DILocation(line: 637, column: 14, scope: !1221)
!1237 = !DILocation(line: 638, column: 11, scope: !1221)
!1238 = !DILocation(line: 638, column: 16, scope: !1221)
!1239 = !DILocation(line: 639, column: 21, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 639, column: 9)
!1241 = !DILocation(line: 639, column: 9, scope: !1221)
!1242 = !DILocation(line: 599, column: 49, scope: !1172, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 641, column: 9, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 639, column: 27)
!1245 = !DILocation(line: 600, column: 53, scope: !1172, inlinedAt: !1243)
!1246 = !DILocation(line: 601, column: 15, scope: !1181, inlinedAt: !1243)
!1247 = !DILocation(line: 601, column: 9, scope: !1181, inlinedAt: !1243)
!1248 = !DILocation(line: 601, column: 9, scope: !1172, inlinedAt: !1243)
!1249 = !DILocation(line: 602, column: 34, scope: !1181, inlinedAt: !1243)
!1250 = !DILocation(line: 602, column: 26, scope: !1181, inlinedAt: !1243)
!1251 = !DILocation(line: 602, column: 9, scope: !1181, inlinedAt: !1243)
!1252 = !DILocation(line: 603, column: 15, scope: !1188, inlinedAt: !1243)
!1253 = !DILocation(line: 603, column: 9, scope: !1188, inlinedAt: !1243)
!1254 = !DILocation(line: 603, column: 9, scope: !1172, inlinedAt: !1243)
!1255 = !DILocation(line: 604, column: 21, scope: !1188, inlinedAt: !1243)
!1256 = !DILocation(line: 604, column: 26, scope: !1188, inlinedAt: !1243)
!1257 = !DILocation(line: 604, column: 9, scope: !1188, inlinedAt: !1243)
!1258 = !DILocation(line: 606, column: 28, scope: !1195, inlinedAt: !1243)
!1259 = !DILocation(line: 606, column: 14, scope: !1195, inlinedAt: !1243)
!1260 = !DILocation(line: 606, column: 9, scope: !1172, inlinedAt: !1243)
!1261 = !DILocation(line: 607, column: 25, scope: !1199, inlinedAt: !1243)
!1262 = !DILocation(line: 608, column: 5, scope: !1199, inlinedAt: !1243)
!1263 = !DILocation(line: 610, column: 28, scope: !1202, inlinedAt: !1243)
!1264 = !DILocation(line: 610, column: 14, scope: !1202, inlinedAt: !1243)
!1265 = !DILocation(line: 610, column: 9, scope: !1172, inlinedAt: !1243)
!1266 = !DILocation(line: 611, column: 33, scope: !1206, inlinedAt: !1243)
!1267 = !DILocation(line: 611, column: 25, scope: !1206, inlinedAt: !1243)
!1268 = !DILocation(line: 612, column: 5, scope: !1206, inlinedAt: !1243)
!1269 = !DILocation(line: 616, column: 5, scope: !1172, inlinedAt: !1243)
!1270 = !DILocation(line: 618, column: 31, scope: !1172, inlinedAt: !1243)
!1271 = !DILocation(line: 618, column: 25, scope: !1172, inlinedAt: !1243)
!1272 = !DILocation(line: 618, column: 16, scope: !1172, inlinedAt: !1243)
!1273 = !DILocation(line: 618, column: 22, scope: !1172, inlinedAt: !1243)
!1274 = !DILocation(line: 620, column: 17, scope: !1172, inlinedAt: !1243)
!1275 = !DILocation(line: 620, column: 5, scope: !1172, inlinedAt: !1243)
!1276 = !DILocation(line: 621, column: 11, scope: !1172, inlinedAt: !1243)
!1277 = !DILocation(line: 621, column: 5, scope: !1172, inlinedAt: !1243)
!1278 = !DILocation(line: 622, column: 16, scope: !1172, inlinedAt: !1243)
!1279 = !DILocation(line: 622, column: 19, scope: !1172, inlinedAt: !1243)
!1280 = !DILocation(line: 642, column: 5, scope: !1244)
!1281 = !DILocation(line: 643, column: 9, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 643, column: 9)
!1283 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 642, column: 12)
!1284 = !DILocation(line: 645, column: 16, scope: !1221)
!1285 = !DILocation(line: 645, column: 21, scope: !1221)
!1286 = !DILocation(line: 647, column: 5, scope: !1221)
!1287 = distinct !DISubprogram(name: "quicklistDelEntry", scope: !3, file: !3, line: 654, type: !1288, isLocal: false, isDefinition: true, scopeLine: 654, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1311)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{null, !1290, !1300}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistIter", file: !10, line: 88, baseType: !1292)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistIter", file: !10, line: 82, size: 320, elements: !1293)
!1293 = !{!1294, !1295, !1296, !1297, !1299}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !1292, file: !10, line: 83, baseType: !188, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1292, file: !10, line: 84, baseType: !26, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !1292, file: !10, line: 85, baseType: !6, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1292, file: !10, line: 86, baseType: !1298, size: 64, offset: 192)
!1298 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !1292, file: !10, line: 87, baseType: !20, size: 32, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistEntry", file: !10, line: 98, baseType: !1302)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistEntry", file: !10, line: 90, size: 384, elements: !1303)
!1303 = !{!1304, !1305, !1306, !1307, !1308, !1309, !1310}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !1302, file: !10, line: 91, baseType: !188, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1302, file: !10, line: 92, baseType: !26, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !1302, file: !10, line: 93, baseType: !6, size: 64, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1302, file: !10, line: 94, baseType: !6, size: 64, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "longval", scope: !1302, file: !10, line: 95, baseType: !1092, size: 64, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !1302, file: !10, line: 96, baseType: !14, size: 32, offset: 320)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1302, file: !10, line: 97, baseType: !20, size: 32, offset: 352)
!1311 = !{!1312, !1313, !1314, !1315, !1316}
!1312 = !DILocalVariable(name: "iter", arg: 1, scope: !1287, file: !3, line: 654, type: !1290)
!1313 = !DILocalVariable(name: "entry", arg: 2, scope: !1287, file: !3, line: 654, type: !1300)
!1314 = !DILocalVariable(name: "prev", scope: !1287, file: !3, line: 655, type: !26)
!1315 = !DILocalVariable(name: "next", scope: !1287, file: !3, line: 656, type: !26)
!1316 = !DILocalVariable(name: "deleted_node", scope: !1287, file: !3, line: 657, type: !20)
!1317 = !DILocation(line: 654, column: 39, scope: !1287)
!1318 = !DILocation(line: 654, column: 61, scope: !1287)
!1319 = !DILocation(line: 655, column: 34, scope: !1287)
!1320 = !{!1321, !71, i64 8}
!1321 = !{!"quicklistEntry", !71, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !1120, i64 32, !176, i64 40, !176, i64 44}
!1322 = !DILocation(line: 655, column: 40, scope: !1287)
!1323 = !DILocation(line: 655, column: 20, scope: !1287)
!1324 = !DILocation(line: 656, column: 40, scope: !1287)
!1325 = !DILocation(line: 656, column: 20, scope: !1287)
!1326 = !DILocation(line: 657, column: 62, scope: !1287)
!1327 = !{!1321, !71, i64 0}
!1328 = !DILocation(line: 658, column: 63, scope: !1287)
!1329 = !DILocation(line: 657, column: 24, scope: !1287)
!1330 = !DILocation(line: 657, column: 9, scope: !1287)
!1331 = !DILocation(line: 661, column: 11, scope: !1287)
!1332 = !DILocation(line: 661, column: 14, scope: !1287)
!1333 = !{!1334, !71, i64 16}
!1334 = !{!"quicklistIter", !71, i64 0, !71, i64 8, !71, i64 16, !77, i64 24, !176, i64 32}
!1335 = !DILocation(line: 664, column: 9, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 664, column: 9)
!1337 = !DILocation(line: 664, column: 9, scope: !1287)
!1338 = !DILocation(line: 665, column: 19, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 665, column: 13)
!1340 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 664, column: 23)
!1341 = !{!1334, !176, i64 32}
!1342 = !DILocation(line: 665, column: 13, scope: !1340)
!1343 = !DILocation(line: 666, column: 19, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 665, column: 47)
!1345 = !DILocation(line: 666, column: 27, scope: !1344)
!1346 = !{!1334, !71, i64 8}
!1347 = !DILocation(line: 667, column: 19, scope: !1344)
!1348 = !DILocation(line: 667, column: 26, scope: !1344)
!1349 = !{!1334, !77, i64 24}
!1350 = !DILocation(line: 668, column: 9, scope: !1344)
!1351 = !DILocation(line: 669, column: 19, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 668, column: 54)
!1353 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 668, column: 20)
!1354 = !DILocation(line: 669, column: 27, scope: !1352)
!1355 = !DILocation(line: 670, column: 19, scope: !1352)
!1356 = !DILocation(line: 670, column: 26, scope: !1352)
!1357 = !DILocation(line: 671, column: 9, scope: !1352)
!1358 = !DILocation(line: 681, column: 1, scope: !1287)
!1359 = distinct !DISubprogram(name: "quicklistReplaceAtIndex", scope: !3, file: !3, line: 687, type: !1360, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1362)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!20, !21, !1298, !47, !20}
!1362 = !{!1363, !1364, !1365, !1366, !1367}
!1363 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1359, file: !3, line: 687, type: !21)
!1364 = !DILocalVariable(name: "index", arg: 2, scope: !1359, file: !3, line: 687, type: !1298)
!1365 = !DILocalVariable(name: "data", arg: 3, scope: !1359, file: !3, line: 687, type: !47)
!1366 = !DILocalVariable(name: "sz", arg: 4, scope: !1359, file: !3, line: 688, type: !20)
!1367 = !DILocalVariable(name: "entry", scope: !1359, file: !3, line: 689, type: !1301)
!1368 = !DILocation(line: 687, column: 40, scope: !1359)
!1369 = !DILocation(line: 687, column: 56, scope: !1359)
!1370 = !DILocation(line: 687, column: 69, scope: !1359)
!1371 = !DILocation(line: 688, column: 33, scope: !1359)
!1372 = !DILocation(line: 689, column: 5, scope: !1359)
!1373 = !DILocation(line: 689, column: 20, scope: !1359)
!1374 = !DILocation(line: 690, column: 9, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 690, column: 9)
!1376 = !DILocation(line: 690, column: 9, scope: !1359)
!1377 = !DILocation(line: 692, column: 46, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 690, column: 59)
!1379 = !DILocation(line: 692, column: 52, scope: !1378)
!1380 = !DILocation(line: 692, column: 63, scope: !1378)
!1381 = !DILocation(line: 692, column: 26, scope: !1378)
!1382 = !DILocation(line: 692, column: 15, scope: !1378)
!1383 = !DILocation(line: 692, column: 21, scope: !1378)
!1384 = !DILocation(line: 692, column: 24, scope: !1378)
!1385 = !DILocation(line: 693, column: 62, scope: !1378)
!1386 = !{!1321, !71, i64 16}
!1387 = !DILocation(line: 693, column: 26, scope: !1378)
!1388 = !DILocation(line: 693, column: 15, scope: !1378)
!1389 = !DILocation(line: 693, column: 21, scope: !1378)
!1390 = !DILocation(line: 693, column: 24, scope: !1378)
!1391 = !DILocation(line: 694, column: 9, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 694, column: 9)
!1393 = !DILocation(line: 695, column: 9, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 695, column: 9)
!1395 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 695, column: 9)
!1396 = !DILocation(line: 695, column: 9, scope: !1395)
!1397 = !DILocation(line: 695, column: 9, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 695, column: 9)
!1399 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 695, column: 9)
!1400 = !DILocation(line: 695, column: 9, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 695, column: 9)
!1402 = !DILocation(line: 0, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 697, column: 12)
!1404 = !DILocation(line: 700, column: 1, scope: !1359)
!1405 = distinct !DISubprogram(name: "quicklistIndex", scope: !3, file: !3, line: 1245, type: !1406, isLocal: false, isDefinition: true, scopeLine: 1246, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1409)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!20, !188, !1408, !1300}
!1408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1092)
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1416, !1417}
!1410 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1405, file: !3, line: 1245, type: !188)
!1411 = !DILocalVariable(name: "idx", arg: 2, scope: !1405, file: !3, line: 1245, type: !1408)
!1412 = !DILocalVariable(name: "entry", arg: 3, scope: !1405, file: !3, line: 1246, type: !1300)
!1413 = !DILocalVariable(name: "n", scope: !1405, file: !3, line: 1247, type: !26)
!1414 = !DILocalVariable(name: "accum", scope: !1405, file: !3, line: 1248, type: !1415)
!1415 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1416 = !DILocalVariable(name: "index", scope: !1405, file: !3, line: 1249, type: !1415)
!1417 = !DILocalVariable(name: "forward", scope: !1405, file: !3, line: 1250, type: !20)
!1418 = !DILocation(line: 1245, column: 37, scope: !1405)
!1419 = !DILocation(line: 1245, column: 64, scope: !1405)
!1420 = !DILocation(line: 1246, column: 36, scope: !1405)
!1421 = !DILocation(line: 1248, column: 24, scope: !1405)
!1422 = !DILocation(line: 1252, column: 5, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 1252, column: 5)
!1424 = !{!1321, !1120, i64 32}
!1425 = !{!1321, !176, i64 44}
!1426 = !{!1321, !176, i64 40}
!1427 = !DILocation(line: 1253, column: 22, scope: !1405)
!1428 = !DILocation(line: 1255, column: 10, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 1255, column: 9)
!1430 = !DILocation(line: 1249, column: 24, scope: !1405)
!1431 = !DILocation(line: 1255, column: 9, scope: !1405)
!1432 = !DILocation(line: 1263, column: 29, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 1263, column: 9)
!1434 = !DILocation(line: 1263, column: 15, scope: !1433)
!1435 = !DILocation(line: 1263, column: 9, scope: !1405)
!1436 = !DILocation(line: 1260, column: 24, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 1258, column: 12)
!1438 = !DILocation(line: 1247, column: 20, scope: !1405)
!1439 = !DILocation(line: 1257, column: 24, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 1255, column: 19)
!1441 = !DILocation(line: 0, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 1269, column: 16)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 1267, column: 13)
!1444 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 1266, column: 23)
!1445 = !DILocation(line: 1266, column: 12, scope: !1405)
!1446 = !DILocation(line: 1266, column: 5, scope: !1405)
!1447 = !DILocation(line: 1267, column: 25, scope: !1443)
!1448 = !DILocation(line: 1267, column: 22, scope: !1443)
!1449 = !DILocation(line: 1267, column: 20, scope: !1443)
!1450 = !DILocation(line: 1267, column: 32, scope: !1443)
!1451 = !DILocation(line: 1267, column: 13, scope: !1444)
!1452 = !DILocation(line: 1273, column: 30, scope: !1442)
!1453 = !DILocation(line: 1273, column: 40, scope: !1442)
!1454 = !DILocation(line: 1273, column: 17, scope: !1442)
!1455 = distinct !{!1455, !1446, !1456}
!1456 = !DILocation(line: 1275, column: 5, scope: !1405)
!1457 = !DILocation(line: 1283, column: 17, scope: !1405)
!1458 = !DILocation(line: 1290, column: 34, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 1287, column: 12)
!1460 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 1284, column: 9)
!1461 = !DILocation(line: 1290, column: 38, scope: !1459)
!1462 = !DILocation(line: 1286, column: 31, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 1284, column: 18)
!1464 = !DILocation(line: 1284, column: 9, scope: !1405)
!1465 = !DILocation(line: 0, scope: !1463)
!1466 = !DILocation(line: 1293, column: 5, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 1293, column: 5)
!1468 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 1293, column: 5)
!1469 = !DILocation(line: 1293, column: 5, scope: !1468)
!1470 = !DILocation(line: 235, column: 59, scope: !275, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 1293, column: 5, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 1293, column: 5)
!1473 = !DILocation(line: 240, column: 40, scope: !275, inlinedAt: !1471)
!1474 = !DILocation(line: 240, column: 34, scope: !275, inlinedAt: !1471)
!1475 = !DILocation(line: 240, column: 26, scope: !275, inlinedAt: !1471)
!1476 = !DILocation(line: 240, column: 11, scope: !275, inlinedAt: !1471)
!1477 = !DILocation(line: 241, column: 47, scope: !275, inlinedAt: !1471)
!1478 = !DILocation(line: 241, column: 19, scope: !275, inlinedAt: !1471)
!1479 = !DILocation(line: 242, column: 29, scope: !288, inlinedAt: !1471)
!1480 = !DILocation(line: 242, column: 46, scope: !288, inlinedAt: !1471)
!1481 = !DILocation(line: 242, column: 70, scope: !288, inlinedAt: !1471)
!1482 = !DILocation(line: 242, column: 9, scope: !288, inlinedAt: !1471)
!1483 = !DILocation(line: 242, column: 74, scope: !288, inlinedAt: !1471)
!1484 = !DILocation(line: 242, column: 9, scope: !275, inlinedAt: !1471)
!1485 = !DILocation(line: 244, column: 9, scope: !295, inlinedAt: !1471)
!1486 = !DILocation(line: 245, column: 9, scope: !295, inlinedAt: !1471)
!1487 = !DILocation(line: 247, column: 5, scope: !275, inlinedAt: !1471)
!1488 = !DILocation(line: 248, column: 14, scope: !275, inlinedAt: !1471)
!1489 = !DILocation(line: 249, column: 20, scope: !275, inlinedAt: !1471)
!1490 = !DILocation(line: 250, column: 5, scope: !275, inlinedAt: !1471)
!1491 = !DILocation(line: 1293, column: 5, scope: !1472)
!1492 = !DILocation(line: 1294, column: 37, scope: !1405)
!1493 = !DILocation(line: 1294, column: 54, scope: !1405)
!1494 = !DILocation(line: 1294, column: 43, scope: !1405)
!1495 = !DILocation(line: 1294, column: 17, scope: !1405)
!1496 = !DILocation(line: 1294, column: 15, scope: !1405)
!1497 = !DILocation(line: 1295, column: 5, scope: !1405)
!1498 = !DILocation(line: 1298, column: 5, scope: !1405)
!1499 = !DILocation(line: 0, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 1277, column: 9)
!1501 = !DILocation(line: 1299, column: 1, scope: !1405)
!1502 = distinct !DISubprogram(name: "_quicklistZiplistMerge", scope: !3, file: !3, line: 715, type: !1503, isLocal: false, isDefinition: true, scopeLine: 717, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1505)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!26, !21, !26, !26}
!1505 = !{!1506, !1507, !1508, !1509, !1512}
!1506 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1502, file: !3, line: 715, type: !21)
!1507 = !DILocalVariable(name: "a", arg: 2, scope: !1502, file: !3, line: 716, type: !26)
!1508 = !DILocalVariable(name: "b", arg: 3, scope: !1502, file: !3, line: 717, type: !26)
!1509 = !DILocalVariable(name: "keep", scope: !1510, file: !3, line: 724, type: !26)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 722, column: 41)
!1511 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 722, column: 9)
!1512 = !DILocalVariable(name: "nokeep", scope: !1510, file: !3, line: 724, type: !26)
!1513 = !DILocation(line: 715, column: 63, scope: !1502)
!1514 = !DILocation(line: 716, column: 67, scope: !1502)
!1515 = !DILocation(line: 717, column: 67, scope: !1502)
!1516 = !DILocation(line: 720, column: 5, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 720, column: 5)
!1518 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 720, column: 5)
!1519 = !DILocation(line: 720, column: 5, scope: !1518)
!1520 = !DILocation(line: 235, column: 59, scope: !275, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 720, column: 5, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 720, column: 5)
!1523 = !DILocation(line: 240, column: 40, scope: !275, inlinedAt: !1521)
!1524 = !DILocation(line: 240, column: 34, scope: !275, inlinedAt: !1521)
!1525 = !DILocation(line: 240, column: 26, scope: !275, inlinedAt: !1521)
!1526 = !DILocation(line: 240, column: 11, scope: !275, inlinedAt: !1521)
!1527 = !DILocation(line: 241, column: 47, scope: !275, inlinedAt: !1521)
!1528 = !DILocation(line: 241, column: 19, scope: !275, inlinedAt: !1521)
!1529 = !DILocation(line: 242, column: 29, scope: !288, inlinedAt: !1521)
!1530 = !DILocation(line: 242, column: 46, scope: !288, inlinedAt: !1521)
!1531 = !DILocation(line: 242, column: 70, scope: !288, inlinedAt: !1521)
!1532 = !DILocation(line: 242, column: 9, scope: !288, inlinedAt: !1521)
!1533 = !DILocation(line: 242, column: 74, scope: !288, inlinedAt: !1521)
!1534 = !DILocation(line: 242, column: 9, scope: !275, inlinedAt: !1521)
!1535 = !DILocation(line: 244, column: 9, scope: !295, inlinedAt: !1521)
!1536 = !DILocation(line: 245, column: 9, scope: !295, inlinedAt: !1521)
!1537 = !DILocation(line: 247, column: 5, scope: !275, inlinedAt: !1521)
!1538 = !DILocation(line: 248, column: 14, scope: !275, inlinedAt: !1521)
!1539 = !DILocation(line: 249, column: 20, scope: !275, inlinedAt: !1521)
!1540 = !DILocation(line: 250, column: 5, scope: !275, inlinedAt: !1521)
!1541 = !DILocation(line: 721, column: 5, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 721, column: 5)
!1543 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 721, column: 5)
!1544 = !DILocation(line: 721, column: 5, scope: !1543)
!1545 = !DILocation(line: 235, column: 59, scope: !275, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 721, column: 5, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 721, column: 5)
!1548 = !DILocation(line: 240, column: 40, scope: !275, inlinedAt: !1546)
!1549 = !DILocation(line: 240, column: 34, scope: !275, inlinedAt: !1546)
!1550 = !DILocation(line: 240, column: 26, scope: !275, inlinedAt: !1546)
!1551 = !DILocation(line: 240, column: 11, scope: !275, inlinedAt: !1546)
!1552 = !DILocation(line: 241, column: 47, scope: !275, inlinedAt: !1546)
!1553 = !DILocation(line: 241, column: 19, scope: !275, inlinedAt: !1546)
!1554 = !DILocation(line: 242, column: 29, scope: !288, inlinedAt: !1546)
!1555 = !DILocation(line: 242, column: 46, scope: !288, inlinedAt: !1546)
!1556 = !DILocation(line: 242, column: 70, scope: !288, inlinedAt: !1546)
!1557 = !DILocation(line: 242, column: 9, scope: !288, inlinedAt: !1546)
!1558 = !DILocation(line: 242, column: 74, scope: !288, inlinedAt: !1546)
!1559 = !DILocation(line: 242, column: 9, scope: !275, inlinedAt: !1546)
!1560 = !DILocation(line: 244, column: 9, scope: !295, inlinedAt: !1546)
!1561 = !DILocation(line: 245, column: 9, scope: !295, inlinedAt: !1546)
!1562 = !DILocation(line: 247, column: 5, scope: !275, inlinedAt: !1546)
!1563 = !DILocation(line: 248, column: 14, scope: !275, inlinedAt: !1546)
!1564 = !DILocation(line: 249, column: 20, scope: !275, inlinedAt: !1546)
!1565 = !DILocation(line: 250, column: 5, scope: !275, inlinedAt: !1546)
!1566 = !DILocation(line: 722, column: 27, scope: !1511)
!1567 = !DILocation(line: 722, column: 35, scope: !1511)
!1568 = !DILocation(line: 722, column: 10, scope: !1511)
!1569 = !DILocation(line: 722, column: 9, scope: !1502)
!1570 = !DILocation(line: 724, column: 24, scope: !1510)
!1571 = !DILocation(line: 724, column: 38, scope: !1510)
!1572 = !DILocation(line: 725, column: 17, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 725, column: 13)
!1574 = !DILocation(line: 725, column: 14, scope: !1573)
!1575 = !DILocation(line: 725, column: 13, scope: !1510)
!1576 = !DILocation(line: 728, column: 24, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 728, column: 20)
!1578 = !DILocation(line: 728, column: 21, scope: !1577)
!1579 = !DILocation(line: 728, column: 20, scope: !1573)
!1580 = !DILocation(line: 732, column: 40, scope: !1510)
!1581 = !DILocation(line: 0, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 725, column: 21)
!1583 = !DILocation(line: 732, column: 23, scope: !1510)
!1584 = !DILocation(line: 732, column: 15, scope: !1510)
!1585 = !DILocation(line: 732, column: 21, scope: !1510)
!1586 = !DILocation(line: 733, column: 9, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 733, column: 9)
!1588 = !DILocation(line: 735, column: 17, scope: !1510)
!1589 = !DILocation(line: 735, column: 23, scope: !1510)
!1590 = !DILocation(line: 599, column: 49, scope: !1172, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 736, column: 9, scope: !1510)
!1592 = !DILocation(line: 600, column: 53, scope: !1172, inlinedAt: !1591)
!1593 = !DILocation(line: 601, column: 15, scope: !1181, inlinedAt: !1591)
!1594 = !DILocation(line: 601, column: 9, scope: !1181, inlinedAt: !1591)
!1595 = !DILocation(line: 601, column: 9, scope: !1172, inlinedAt: !1591)
!1596 = !DILocation(line: 602, column: 34, scope: !1181, inlinedAt: !1591)
!1597 = !DILocation(line: 602, column: 26, scope: !1181, inlinedAt: !1591)
!1598 = !DILocation(line: 602, column: 9, scope: !1181, inlinedAt: !1591)
!1599 = !DILocation(line: 603, column: 15, scope: !1188, inlinedAt: !1591)
!1600 = !DILocation(line: 603, column: 9, scope: !1188, inlinedAt: !1591)
!1601 = !DILocation(line: 603, column: 9, scope: !1172, inlinedAt: !1591)
!1602 = !DILocation(line: 604, column: 21, scope: !1188, inlinedAt: !1591)
!1603 = !DILocation(line: 604, column: 26, scope: !1188, inlinedAt: !1591)
!1604 = !DILocation(line: 604, column: 9, scope: !1188, inlinedAt: !1591)
!1605 = !DILocation(line: 606, column: 28, scope: !1195, inlinedAt: !1591)
!1606 = !DILocation(line: 606, column: 14, scope: !1195, inlinedAt: !1591)
!1607 = !DILocation(line: 606, column: 9, scope: !1172, inlinedAt: !1591)
!1608 = !DILocation(line: 607, column: 25, scope: !1199, inlinedAt: !1591)
!1609 = !DILocation(line: 608, column: 5, scope: !1199, inlinedAt: !1591)
!1610 = !DILocation(line: 610, column: 28, scope: !1202, inlinedAt: !1591)
!1611 = !DILocation(line: 610, column: 14, scope: !1202, inlinedAt: !1591)
!1612 = !DILocation(line: 610, column: 9, scope: !1172, inlinedAt: !1591)
!1613 = !DILocation(line: 611, column: 33, scope: !1206, inlinedAt: !1591)
!1614 = !DILocation(line: 611, column: 25, scope: !1206, inlinedAt: !1591)
!1615 = !DILocation(line: 612, column: 5, scope: !1206, inlinedAt: !1591)
!1616 = !DILocation(line: 616, column: 5, scope: !1172, inlinedAt: !1591)
!1617 = !DILocation(line: 618, column: 31, scope: !1172, inlinedAt: !1591)
!1618 = !DILocation(line: 618, column: 25, scope: !1172, inlinedAt: !1591)
!1619 = !DILocation(line: 618, column: 16, scope: !1172, inlinedAt: !1591)
!1620 = !DILocation(line: 618, column: 22, scope: !1172, inlinedAt: !1591)
!1621 = !DILocation(line: 620, column: 17, scope: !1172, inlinedAt: !1591)
!1622 = !DILocation(line: 620, column: 5, scope: !1172, inlinedAt: !1591)
!1623 = !DILocation(line: 621, column: 11, scope: !1172, inlinedAt: !1591)
!1624 = !DILocation(line: 621, column: 5, scope: !1172, inlinedAt: !1591)
!1625 = !DILocation(line: 622, column: 16, scope: !1172, inlinedAt: !1591)
!1626 = !DILocation(line: 622, column: 19, scope: !1172, inlinedAt: !1591)
!1627 = !DILocation(line: 737, column: 9, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 737, column: 9)
!1629 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 737, column: 9)
!1630 = !DILocation(line: 737, column: 9, scope: !1629)
!1631 = !DILocation(line: 737, column: 9, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 737, column: 9)
!1633 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 737, column: 9)
!1634 = !DILocation(line: 737, column: 9, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 737, column: 9)
!1636 = !DILocation(line: 0, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 739, column: 12)
!1638 = !DILocation(line: 743, column: 1, scope: !1502)
!1639 = distinct !DISubprogram(name: "_quicklistMergeNodes", scope: !3, file: !3, line: 753, type: !1173, isLocal: false, isDefinition: true, scopeLine: 754, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1640)
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648}
!1641 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1639, file: !3, line: 753, type: !21)
!1642 = !DILocalVariable(name: "center", arg: 2, scope: !1639, file: !3, line: 754, type: !26)
!1643 = !DILocalVariable(name: "fill", scope: !1639, file: !3, line: 755, type: !20)
!1644 = !DILocalVariable(name: "prev", scope: !1639, file: !3, line: 756, type: !26)
!1645 = !DILocalVariable(name: "prev_prev", scope: !1639, file: !3, line: 756, type: !26)
!1646 = !DILocalVariable(name: "next", scope: !1639, file: !3, line: 756, type: !26)
!1647 = !DILocalVariable(name: "next_next", scope: !1639, file: !3, line: 756, type: !26)
!1648 = !DILocalVariable(name: "target", scope: !1639, file: !3, line: 756, type: !26)
!1649 = !DILocation(line: 753, column: 51, scope: !1639)
!1650 = !DILocation(line: 754, column: 55, scope: !1639)
!1651 = !DILocation(line: 755, column: 27, scope: !1639)
!1652 = !DILocation(line: 755, column: 9, scope: !1639)
!1653 = !DILocation(line: 756, column: 58, scope: !1639)
!1654 = !DILocation(line: 756, column: 46, scope: !1639)
!1655 = !DILocation(line: 756, column: 39, scope: !1639)
!1656 = !DILocation(line: 756, column: 27, scope: !1639)
!1657 = !DILocation(line: 756, column: 20, scope: !1639)
!1658 = !DILocation(line: 759, column: 17, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 759, column: 9)
!1660 = !DILocation(line: 759, column: 9, scope: !1659)
!1661 = !DILocation(line: 759, column: 9, scope: !1639)
!1662 = !DILocation(line: 761, column: 27, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 761, column: 13)
!1664 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 759, column: 23)
!1665 = !DILocation(line: 761, column: 13, scope: !1664)
!1666 = !DILocation(line: 0, scope: !1639)
!1667 = !DILocation(line: 765, column: 17, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 765, column: 9)
!1669 = !DILocation(line: 765, column: 9, scope: !1668)
!1670 = !DILocation(line: 765, column: 9, scope: !1639)
!1671 = !DILocation(line: 767, column: 27, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 767, column: 13)
!1673 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 765, column: 23)
!1674 = !DILocation(line: 767, column: 13, scope: !1673)
!1675 = !DILocation(line: 472, column: 64, scope: !714, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 772, column: 9, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 772, column: 9)
!1678 = !DILocation(line: 473, column: 64, scope: !714, inlinedAt: !1676)
!1679 = !DILocation(line: 474, column: 53, scope: !714, inlinedAt: !1676)
!1680 = !DILocation(line: 475, column: 10, scope: !726, inlinedAt: !1676)
!1681 = !DILocation(line: 475, column: 16, scope: !726, inlinedAt: !1676)
!1682 = !DILocation(line: 475, column: 12, scope: !726, inlinedAt: !1676)
!1683 = !DILocation(line: 480, column: 32, scope: !714, inlinedAt: !1676)
!1684 = !DILocation(line: 480, column: 40, scope: !714, inlinedAt: !1676)
!1685 = !DILocation(line: 480, column: 35, scope: !714, inlinedAt: !1676)
!1686 = !DILocation(line: 480, column: 43, scope: !714, inlinedAt: !1676)
!1687 = !DILocation(line: 480, column: 18, scope: !714, inlinedAt: !1676)
!1688 = !DILocation(line: 422, column: 58, scope: !631, inlinedAt: !1689)
!1689 = distinct !DILocation(line: 481, column: 9, scope: !736, inlinedAt: !1676)
!1690 = !DILocation(line: 427, column: 16, scope: !642, inlinedAt: !1689)
!1691 = !DILocation(line: 423, column: 9, scope: !631, inlinedAt: !1689)
!1692 = !DILocation(line: 481, column: 9, scope: !736, inlinedAt: !1676)
!1693 = !DILocation(line: 421, column: 61, scope: !631, inlinedAt: !1689)
!1694 = !DILocation(line: 426, column: 29, scope: !631, inlinedAt: !1689)
!1695 = !DILocation(line: 426, column: 21, scope: !631, inlinedAt: !1689)
!1696 = !DILocation(line: 426, column: 12, scope: !631, inlinedAt: !1689)
!1697 = !DILocation(line: 428, column: 19, scope: !648, inlinedAt: !1689)
!1698 = !DILocation(line: 428, column: 16, scope: !648, inlinedAt: !1689)
!1699 = !DILocation(line: 481, column: 9, scope: !714, inlinedAt: !1676)
!1700 = !DILocation(line: 483, column: 15, scope: !748, inlinedAt: !1676)
!1701 = !DILocation(line: 483, column: 14, scope: !736, inlinedAt: !1676)
!1702 = !DILocation(line: 485, column: 23, scope: !751, inlinedAt: !1676)
!1703 = !DILocation(line: 485, column: 34, scope: !751, inlinedAt: !1676)
!1704 = !DILocation(line: 485, column: 29, scope: !751, inlinedAt: !1676)
!1705 = !DILocation(line: 485, column: 41, scope: !751, inlinedAt: !1676)
!1706 = !DILocation(line: 772, column: 9, scope: !1639)
!1707 = !DILocation(line: 773, column: 9, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 772, column: 58)
!1709 = !DILocation(line: 775, column: 5, scope: !1708)
!1710 = !DILocation(line: 472, column: 64, scope: !714, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 778, column: 9, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 778, column: 9)
!1713 = !DILocation(line: 473, column: 64, scope: !714, inlinedAt: !1711)
!1714 = !DILocation(line: 474, column: 53, scope: !714, inlinedAt: !1711)
!1715 = !DILocation(line: 475, column: 10, scope: !726, inlinedAt: !1711)
!1716 = !DILocation(line: 475, column: 16, scope: !726, inlinedAt: !1711)
!1717 = !DILocation(line: 475, column: 12, scope: !726, inlinedAt: !1711)
!1718 = !DILocation(line: 480, column: 32, scope: !714, inlinedAt: !1711)
!1719 = !DILocation(line: 480, column: 40, scope: !714, inlinedAt: !1711)
!1720 = !DILocation(line: 480, column: 35, scope: !714, inlinedAt: !1711)
!1721 = !DILocation(line: 480, column: 43, scope: !714, inlinedAt: !1711)
!1722 = !DILocation(line: 480, column: 18, scope: !714, inlinedAt: !1711)
!1723 = !DILocation(line: 422, column: 58, scope: !631, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 481, column: 9, scope: !736, inlinedAt: !1711)
!1725 = !DILocation(line: 427, column: 16, scope: !642, inlinedAt: !1724)
!1726 = !DILocation(line: 423, column: 9, scope: !631, inlinedAt: !1724)
!1727 = !DILocation(line: 481, column: 9, scope: !736, inlinedAt: !1711)
!1728 = !DILocation(line: 421, column: 61, scope: !631, inlinedAt: !1724)
!1729 = !DILocation(line: 426, column: 29, scope: !631, inlinedAt: !1724)
!1730 = !DILocation(line: 426, column: 21, scope: !631, inlinedAt: !1724)
!1731 = !DILocation(line: 426, column: 12, scope: !631, inlinedAt: !1724)
!1732 = !DILocation(line: 428, column: 19, scope: !648, inlinedAt: !1724)
!1733 = !DILocation(line: 428, column: 16, scope: !648, inlinedAt: !1724)
!1734 = !DILocation(line: 481, column: 9, scope: !714, inlinedAt: !1711)
!1735 = !DILocation(line: 483, column: 15, scope: !748, inlinedAt: !1711)
!1736 = !DILocation(line: 483, column: 14, scope: !736, inlinedAt: !1711)
!1737 = !DILocation(line: 485, column: 23, scope: !751, inlinedAt: !1711)
!1738 = !DILocation(line: 485, column: 34, scope: !751, inlinedAt: !1711)
!1739 = !DILocation(line: 485, column: 29, scope: !751, inlinedAt: !1711)
!1740 = !DILocation(line: 485, column: 41, scope: !751, inlinedAt: !1711)
!1741 = !DILocation(line: 778, column: 9, scope: !1639)
!1742 = !DILocation(line: 779, column: 9, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 778, column: 58)
!1744 = !DILocation(line: 781, column: 5, scope: !1743)
!1745 = !DILocation(line: 784, column: 50, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 784, column: 9)
!1747 = !DILocation(line: 472, column: 64, scope: !714, inlinedAt: !1748)
!1748 = distinct !DILocation(line: 784, column: 9, scope: !1746)
!1749 = !DILocation(line: 473, column: 64, scope: !714, inlinedAt: !1748)
!1750 = !DILocation(line: 474, column: 53, scope: !714, inlinedAt: !1748)
!1751 = !DILocation(line: 475, column: 16, scope: !726, inlinedAt: !1748)
!1752 = !DILocation(line: 475, column: 12, scope: !726, inlinedAt: !1748)
!1753 = !DILocation(line: 480, column: 32, scope: !714, inlinedAt: !1748)
!1754 = !DILocation(line: 480, column: 40, scope: !714, inlinedAt: !1748)
!1755 = !DILocation(line: 480, column: 35, scope: !714, inlinedAt: !1748)
!1756 = !DILocation(line: 480, column: 43, scope: !714, inlinedAt: !1748)
!1757 = !DILocation(line: 480, column: 18, scope: !714, inlinedAt: !1748)
!1758 = !DILocation(line: 422, column: 58, scope: !631, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 481, column: 9, scope: !736, inlinedAt: !1748)
!1760 = !DILocation(line: 427, column: 16, scope: !642, inlinedAt: !1759)
!1761 = !DILocation(line: 423, column: 9, scope: !631, inlinedAt: !1759)
!1762 = !DILocation(line: 481, column: 9, scope: !736, inlinedAt: !1748)
!1763 = !DILocation(line: 421, column: 61, scope: !631, inlinedAt: !1759)
!1764 = !DILocation(line: 426, column: 29, scope: !631, inlinedAt: !1759)
!1765 = !DILocation(line: 426, column: 21, scope: !631, inlinedAt: !1759)
!1766 = !DILocation(line: 426, column: 12, scope: !631, inlinedAt: !1759)
!1767 = !DILocation(line: 428, column: 19, scope: !648, inlinedAt: !1759)
!1768 = !DILocation(line: 428, column: 16, scope: !648, inlinedAt: !1759)
!1769 = !DILocation(line: 481, column: 9, scope: !714, inlinedAt: !1748)
!1770 = !DILocation(line: 483, column: 15, scope: !748, inlinedAt: !1748)
!1771 = !DILocation(line: 483, column: 14, scope: !736, inlinedAt: !1748)
!1772 = !DILocation(line: 485, column: 23, scope: !751, inlinedAt: !1748)
!1773 = !DILocation(line: 485, column: 34, scope: !751, inlinedAt: !1748)
!1774 = !DILocation(line: 485, column: 29, scope: !751, inlinedAt: !1748)
!1775 = !DILocation(line: 485, column: 41, scope: !751, inlinedAt: !1748)
!1776 = !DILocation(line: 784, column: 9, scope: !1639)
!1777 = !DILocation(line: 785, column: 18, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 784, column: 63)
!1779 = !DILocation(line: 793, column: 50, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 793, column: 9)
!1781 = !DILocation(line: 787, column: 5, scope: !1778)
!1782 = !DILocation(line: 0, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 787, column: 12)
!1784 = !DILocation(line: 472, column: 64, scope: !714, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 793, column: 9, scope: !1780)
!1786 = !DILocation(line: 473, column: 64, scope: !714, inlinedAt: !1785)
!1787 = !DILocation(line: 474, column: 53, scope: !714, inlinedAt: !1785)
!1788 = !DILocation(line: 475, column: 10, scope: !726, inlinedAt: !1785)
!1789 = !DILocation(line: 475, column: 16, scope: !726, inlinedAt: !1785)
!1790 = !DILocation(line: 475, column: 12, scope: !726, inlinedAt: !1785)
!1791 = !DILocation(line: 480, column: 32, scope: !714, inlinedAt: !1785)
!1792 = !DILocation(line: 480, column: 40, scope: !714, inlinedAt: !1785)
!1793 = !DILocation(line: 480, column: 35, scope: !714, inlinedAt: !1785)
!1794 = !DILocation(line: 480, column: 43, scope: !714, inlinedAt: !1785)
!1795 = !DILocation(line: 480, column: 18, scope: !714, inlinedAt: !1785)
!1796 = !DILocation(line: 422, column: 58, scope: !631, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 481, column: 9, scope: !736, inlinedAt: !1785)
!1798 = !DILocation(line: 427, column: 16, scope: !642, inlinedAt: !1797)
!1799 = !DILocation(line: 423, column: 9, scope: !631, inlinedAt: !1797)
!1800 = !DILocation(line: 481, column: 9, scope: !736, inlinedAt: !1785)
!1801 = !DILocation(line: 421, column: 61, scope: !631, inlinedAt: !1797)
!1802 = !DILocation(line: 426, column: 29, scope: !631, inlinedAt: !1797)
!1803 = !DILocation(line: 426, column: 21, scope: !631, inlinedAt: !1797)
!1804 = !DILocation(line: 426, column: 12, scope: !631, inlinedAt: !1797)
!1805 = !DILocation(line: 428, column: 19, scope: !648, inlinedAt: !1797)
!1806 = !DILocation(line: 428, column: 16, scope: !648, inlinedAt: !1797)
!1807 = !DILocation(line: 481, column: 9, scope: !714, inlinedAt: !1785)
!1808 = !DILocation(line: 483, column: 15, scope: !748, inlinedAt: !1785)
!1809 = !DILocation(line: 483, column: 14, scope: !736, inlinedAt: !1785)
!1810 = !DILocation(line: 485, column: 23, scope: !751, inlinedAt: !1785)
!1811 = !DILocation(line: 485, column: 34, scope: !751, inlinedAt: !1785)
!1812 = !DILocation(line: 485, column: 29, scope: !751, inlinedAt: !1785)
!1813 = !DILocation(line: 485, column: 41, scope: !751, inlinedAt: !1785)
!1814 = !DILocation(line: 793, column: 9, scope: !1639)
!1815 = !DILocation(line: 794, column: 9, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 793, column: 63)
!1817 = !DILocation(line: 795, column: 5, scope: !1816)
!1818 = !DILocation(line: 796, column: 1, scope: !1639)
!1819 = distinct !DISubprogram(name: "_quicklistSplitNode", scope: !3, file: !3, line: 817, type: !1820, isLocal: false, isDefinition: true, scopeLine: 818, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1822)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!26, !26, !20, !20}
!1822 = !{!1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831}
!1823 = !DILocalVariable(name: "node", arg: 1, scope: !1819, file: !3, line: 817, type: !26)
!1824 = !DILocalVariable(name: "offset", arg: 2, scope: !1819, file: !3, line: 817, type: !20)
!1825 = !DILocalVariable(name: "after", arg: 3, scope: !1819, file: !3, line: 818, type: !20)
!1826 = !DILocalVariable(name: "zl_sz", scope: !1819, file: !3, line: 819, type: !51)
!1827 = !DILocalVariable(name: "new_node", scope: !1819, file: !3, line: 821, type: !26)
!1828 = !DILocalVariable(name: "orig_start", scope: !1819, file: !3, line: 828, type: !20)
!1829 = !DILocalVariable(name: "orig_extent", scope: !1819, file: !3, line: 829, type: !20)
!1830 = !DILocalVariable(name: "new_start", scope: !1819, file: !3, line: 830, type: !20)
!1831 = !DILocalVariable(name: "new_extent", scope: !1819, file: !3, line: 831, type: !20)
!1832 = !DILocation(line: 817, column: 64, scope: !1819)
!1833 = !DILocation(line: 817, column: 74, scope: !1819)
!1834 = !DILocation(line: 818, column: 53, scope: !1819)
!1835 = !DILocation(line: 819, column: 26, scope: !1819)
!1836 = !DILocation(line: 819, column: 20, scope: !1819)
!1837 = !DILocation(line: 819, column: 12, scope: !1819)
!1838 = !DILocation(line: 160, column: 12, scope: !165, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 821, column: 31, scope: !1819)
!1840 = !DILocation(line: 159, column: 20, scope: !165, inlinedAt: !1839)
!1841 = !DILocation(line: 161, column: 11, scope: !165, inlinedAt: !1839)
!1842 = !DILocation(line: 161, column: 14, scope: !165, inlinedAt: !1839)
!1843 = !DILocation(line: 162, column: 11, scope: !165, inlinedAt: !1839)
!1844 = !DILocation(line: 162, column: 17, scope: !165, inlinedAt: !1839)
!1845 = !DILocation(line: 163, column: 11, scope: !165, inlinedAt: !1839)
!1846 = !DILocation(line: 163, column: 14, scope: !165, inlinedAt: !1839)
!1847 = !DILocation(line: 164, column: 29, scope: !165, inlinedAt: !1839)
!1848 = !DILocation(line: 167, column: 22, scope: !165, inlinedAt: !1839)
!1849 = !DILocation(line: 821, column: 20, scope: !1819)
!1850 = !DILocation(line: 822, column: 20, scope: !1819)
!1851 = !DILocation(line: 822, column: 18, scope: !1819)
!1852 = !DILocation(line: 825, column: 32, scope: !1819)
!1853 = !DILocation(line: 825, column: 5, scope: !1819)
!1854 = !DILocation(line: 828, column: 22, scope: !1819)
!1855 = !DILocation(line: 828, column: 37, scope: !1819)
!1856 = !DILocation(line: 828, column: 9, scope: !1819)
!1857 = !DILocation(line: 829, column: 23, scope: !1819)
!1858 = !DILocation(line: 829, column: 9, scope: !1819)
!1859 = !DILocation(line: 830, column: 21, scope: !1819)
!1860 = !DILocation(line: 830, column: 9, scope: !1819)
!1861 = !DILocation(line: 831, column: 22, scope: !1819)
!1862 = !DILocation(line: 831, column: 9, scope: !1819)
!1863 = !DILocation(line: 836, column: 41, scope: !1819)
!1864 = !DILocation(line: 836, column: 16, scope: !1819)
!1865 = !DILocation(line: 836, column: 14, scope: !1819)
!1866 = !DILocation(line: 837, column: 19, scope: !1819)
!1867 = !DILocation(line: 837, column: 11, scope: !1819)
!1868 = !DILocation(line: 837, column: 17, scope: !1819)
!1869 = !DILocation(line: 838, column: 5, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 838, column: 5)
!1871 = !DILocation(line: 840, column: 49, scope: !1819)
!1872 = !DILocation(line: 840, column: 20, scope: !1819)
!1873 = !DILocation(line: 840, column: 18, scope: !1819)
!1874 = !DILocation(line: 841, column: 23, scope: !1819)
!1875 = !DILocation(line: 841, column: 21, scope: !1819)
!1876 = !DILocation(line: 842, column: 5, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 842, column: 5)
!1878 = !DILocation(line: 845, column: 5, scope: !1819)
!1879 = distinct !DISubprogram(name: "_quicklistInsert", scope: !3, file: !3, line: 852, type: !1880, isLocal: false, isDefinition: true, scopeLine: 853, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1882)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{null, !21, !1300, !47, !50, !20}
!1882 = !{!1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896}
!1883 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1879, file: !3, line: 852, type: !21)
!1884 = !DILocalVariable(name: "entry", arg: 2, scope: !1879, file: !3, line: 852, type: !1300)
!1885 = !DILocalVariable(name: "value", arg: 3, scope: !1879, file: !3, line: 853, type: !47)
!1886 = !DILocalVariable(name: "sz", arg: 4, scope: !1879, file: !3, line: 853, type: !50)
!1887 = !DILocalVariable(name: "after", arg: 5, scope: !1879, file: !3, line: 853, type: !20)
!1888 = !DILocalVariable(name: "full", scope: !1879, file: !3, line: 854, type: !20)
!1889 = !DILocalVariable(name: "at_tail", scope: !1879, file: !3, line: 854, type: !20)
!1890 = !DILocalVariable(name: "at_head", scope: !1879, file: !3, line: 854, type: !20)
!1891 = !DILocalVariable(name: "full_next", scope: !1879, file: !3, line: 854, type: !20)
!1892 = !DILocalVariable(name: "full_prev", scope: !1879, file: !3, line: 854, type: !20)
!1893 = !DILocalVariable(name: "fill", scope: !1879, file: !3, line: 855, type: !20)
!1894 = !DILocalVariable(name: "node", scope: !1879, file: !3, line: 856, type: !26)
!1895 = !DILocalVariable(name: "new_node", scope: !1879, file: !3, line: 857, type: !26)
!1896 = !DILocalVariable(name: "next", scope: !1897, file: !3, line: 899, type: !6)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 896, column: 25)
!1898 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 896, column: 9)
!1899 = !DILocation(line: 852, column: 47, scope: !1879)
!1900 = !DILocation(line: 852, column: 74, scope: !1879)
!1901 = !DILocation(line: 853, column: 42, scope: !1879)
!1902 = !DILocation(line: 853, column: 62, scope: !1879)
!1903 = !DILocation(line: 853, column: 70, scope: !1879)
!1904 = !DILocation(line: 854, column: 9, scope: !1879)
!1905 = !DILocation(line: 854, column: 19, scope: !1879)
!1906 = !DILocation(line: 854, column: 32, scope: !1879)
!1907 = !DILocation(line: 854, column: 45, scope: !1879)
!1908 = !DILocation(line: 854, column: 60, scope: !1879)
!1909 = !DILocation(line: 855, column: 27, scope: !1879)
!1910 = !DILocation(line: 855, column: 9, scope: !1879)
!1911 = !DILocation(line: 856, column: 34, scope: !1879)
!1912 = !DILocation(line: 856, column: 20, scope: !1879)
!1913 = !DILocation(line: 857, column: 20, scope: !1879)
!1914 = !DILocation(line: 859, column: 10, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 859, column: 9)
!1916 = !DILocation(line: 859, column: 9, scope: !1879)
!1917 = !DILocation(line: 160, column: 12, scope: !165, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 862, column: 20, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 859, column: 16)
!1920 = !DILocation(line: 159, column: 20, scope: !165, inlinedAt: !1918)
!1921 = !DILocation(line: 161, column: 11, scope: !165, inlinedAt: !1918)
!1922 = !DILocation(line: 161, column: 14, scope: !165, inlinedAt: !1918)
!1923 = !DILocation(line: 162, column: 11, scope: !165, inlinedAt: !1918)
!1924 = !DILocation(line: 162, column: 17, scope: !165, inlinedAt: !1918)
!1925 = !DILocation(line: 163, column: 11, scope: !165, inlinedAt: !1918)
!1926 = !DILocation(line: 163, column: 14, scope: !165, inlinedAt: !1918)
!1927 = !DILocation(line: 164, column: 29, scope: !165, inlinedAt: !1918)
!1928 = !DILocation(line: 167, column: 22, scope: !165, inlinedAt: !1918)
!1929 = !DILocation(line: 863, column: 36, scope: !1919)
!1930 = !DILocation(line: 863, column: 57, scope: !1919)
!1931 = !DILocation(line: 863, column: 24, scope: !1919)
!1932 = !DILocation(line: 863, column: 22, scope: !1919)
!1933 = !DILocation(line: 372, column: 52, scope: !443, inlinedAt: !1934)
!1934 = distinct !DILocation(line: 864, column: 9, scope: !1919)
!1935 = !DILocation(line: 373, column: 56, scope: !443, inlinedAt: !1934)
!1936 = !DILocation(line: 374, column: 56, scope: !443, inlinedAt: !1934)
!1937 = !DILocation(line: 374, column: 70, scope: !443, inlinedAt: !1934)
!1938 = !DILocation(line: 375, column: 9, scope: !456, inlinedAt: !1934)
!1939 = !DILocation(line: 375, column: 9, scope: !443, inlinedAt: !1934)
!1940 = !DILocation(line: 164, column: 24, scope: !165, inlinedAt: !1918)
!1941 = !DILocation(line: 376, column: 24, scope: !459, inlinedAt: !1934)
!1942 = !DILocation(line: 383, column: 24, scope: !479, inlinedAt: !1934)
!1943 = !DILocation(line: 383, column: 29, scope: !479, inlinedAt: !1934)
!1944 = !DILocation(line: 383, column: 13, scope: !459, inlinedAt: !1934)
!1945 = !DILocation(line: 384, column: 29, scope: !479, inlinedAt: !1934)
!1946 = !DILocation(line: 384, column: 13, scope: !479, inlinedAt: !1934)
!1947 = !DILocation(line: 164, column: 11, scope: !165, inlinedAt: !1918)
!1948 = !DILocation(line: 386, column: 24, scope: !486, inlinedAt: !1934)
!1949 = !DILocation(line: 393, column: 24, scope: !504, inlinedAt: !1934)
!1950 = !DILocation(line: 393, column: 29, scope: !504, inlinedAt: !1934)
!1951 = !DILocation(line: 393, column: 13, scope: !486, inlinedAt: !1934)
!1952 = !DILocation(line: 394, column: 29, scope: !504, inlinedAt: !1934)
!1953 = !DILocation(line: 394, column: 13, scope: !504, inlinedAt: !1934)
!1954 = !DILocation(line: 397, column: 20, scope: !510, inlinedAt: !1934)
!1955 = !DILocation(line: 397, column: 24, scope: !510, inlinedAt: !1934)
!1956 = !DILocation(line: 397, column: 9, scope: !443, inlinedAt: !1934)
!1957 = !DILocation(line: 398, column: 38, scope: !514, inlinedAt: !1934)
!1958 = !DILocation(line: 398, column: 43, scope: !514, inlinedAt: !1934)
!1959 = !DILocation(line: 398, column: 25, scope: !514, inlinedAt: !1934)
!1960 = !DILocation(line: 399, column: 5, scope: !514, inlinedAt: !1934)
!1961 = !DILocation(line: 404, column: 19, scope: !443, inlinedAt: !1934)
!1962 = !DILocation(line: 865, column: 24, scope: !1919)
!1963 = !DILocation(line: 867, column: 9, scope: !1919)
!1964 = !DILocation(line: 440, column: 65, scope: !656, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 871, column: 10, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 871, column: 9)
!1967 = !DILocation(line: 441, column: 54, scope: !656, inlinedAt: !1965)
!1968 = !DILocation(line: 441, column: 73, scope: !656, inlinedAt: !1965)
!1969 = !DILocation(line: 447, column: 12, scope: !673, inlinedAt: !1965)
!1970 = !DILocation(line: 448, column: 9, scope: !673, inlinedAt: !1965)
!1971 = !DILocation(line: 445, column: 9, scope: !656, inlinedAt: !1965)
!1972 = !DILocation(line: 453, column: 12, scope: !677, inlinedAt: !1965)
!1973 = !DILocation(line: 453, column: 9, scope: !656, inlinedAt: !1965)
!1974 = !DILocation(line: 454, column: 26, scope: !677, inlinedAt: !1965)
!1975 = !DILocation(line: 454, column: 9, scope: !677, inlinedAt: !1965)
!1976 = !DILocation(line: 455, column: 14, scope: !682, inlinedAt: !1965)
!1977 = !DILocation(line: 455, column: 14, scope: !677, inlinedAt: !1965)
!1978 = !DILocation(line: 456, column: 26, scope: !682, inlinedAt: !1965)
!1979 = !DILocation(line: 456, column: 9, scope: !682, inlinedAt: !1965)
!1980 = !DILocation(line: 458, column: 26, scope: !682, inlinedAt: !1965)
!1981 = !DILocation(line: 0, scope: !682, inlinedAt: !1965)
!1982 = !DILocation(line: 461, column: 33, scope: !656, inlinedAt: !1965)
!1983 = !DILocation(line: 461, column: 27, scope: !656, inlinedAt: !1965)
!1984 = !DILocation(line: 461, column: 18, scope: !656, inlinedAt: !1965)
!1985 = !DILocation(line: 422, column: 58, scope: !631, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 462, column: 9, scope: !694, inlinedAt: !1965)
!1987 = !DILocation(line: 427, column: 16, scope: !642, inlinedAt: !1986)
!1988 = !DILocation(line: 423, column: 9, scope: !631, inlinedAt: !1986)
!1989 = !DILocation(line: 462, column: 9, scope: !694, inlinedAt: !1965)
!1990 = !DILocation(line: 421, column: 61, scope: !631, inlinedAt: !1986)
!1991 = !DILocation(line: 426, column: 29, scope: !631, inlinedAt: !1986)
!1992 = !DILocation(line: 426, column: 21, scope: !631, inlinedAt: !1986)
!1993 = !DILocation(line: 426, column: 12, scope: !631, inlinedAt: !1986)
!1994 = !DILocation(line: 428, column: 19, scope: !648, inlinedAt: !1986)
!1995 = !DILocation(line: 428, column: 16, scope: !648, inlinedAt: !1986)
!1996 = !DILocation(line: 462, column: 9, scope: !656, inlinedAt: !1965)
!1997 = !DILocation(line: 464, column: 15, scope: !706, inlinedAt: !1965)
!1998 = !DILocation(line: 464, column: 14, scope: !694, inlinedAt: !1965)
!1999 = !DILocation(line: 466, column: 25, scope: !709, inlinedAt: !1965)
!2000 = !DILocation(line: 466, column: 31, scope: !709, inlinedAt: !1965)
!2001 = !DILocation(line: 467, column: 9, scope: !709, inlinedAt: !1965)
!2002 = !DILocation(line: 0, scope: !694, inlinedAt: !1965)
!2003 = !DILocation(line: 871, column: 10, scope: !1966)
!2004 = !DILocation(line: 871, column: 9, scope: !1879)
!2005 = !DILocation(line: 877, column: 9, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 877, column: 9)
!2007 = !DILocation(line: 0, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 886, column: 9)
!2009 = !DILocation(line: 877, column: 15, scope: !2006)
!2010 = !DILocation(line: 877, column: 42, scope: !2006)
!2011 = !DILocation(line: 877, column: 33, scope: !2006)
!2012 = !DILocation(line: 877, column: 9, scope: !1879)
!2013 = !DILocation(line: 880, column: 46, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 880, column: 13)
!2015 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 877, column: 50)
!2016 = !DILocation(line: 440, column: 65, scope: !656, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 880, column: 14, scope: !2014)
!2018 = !DILocation(line: 441, column: 54, scope: !656, inlinedAt: !2017)
!2019 = !DILocation(line: 441, column: 73, scope: !656, inlinedAt: !2017)
!2020 = !DILocation(line: 442, column: 9, scope: !669, inlinedAt: !2017)
!2021 = !DILocation(line: 442, column: 9, scope: !656, inlinedAt: !2017)
!2022 = !DILocation(line: 445, column: 9, scope: !656, inlinedAt: !2017)
!2023 = !DILocation(line: 453, column: 9, scope: !656, inlinedAt: !2017)
!2024 = !DILocation(line: 454, column: 26, scope: !677, inlinedAt: !2017)
!2025 = !DILocation(line: 454, column: 9, scope: !677, inlinedAt: !2017)
!2026 = !DILocation(line: 455, column: 14, scope: !682, inlinedAt: !2017)
!2027 = !DILocation(line: 455, column: 14, scope: !677, inlinedAt: !2017)
!2028 = !DILocation(line: 456, column: 26, scope: !682, inlinedAt: !2017)
!2029 = !DILocation(line: 456, column: 9, scope: !682, inlinedAt: !2017)
!2030 = !DILocation(line: 458, column: 26, scope: !682, inlinedAt: !2017)
!2031 = !DILocation(line: 0, scope: !682, inlinedAt: !2017)
!2032 = !DILocation(line: 461, column: 33, scope: !656, inlinedAt: !2017)
!2033 = !DILocation(line: 461, column: 27, scope: !656, inlinedAt: !2017)
!2034 = !DILocation(line: 461, column: 18, scope: !656, inlinedAt: !2017)
!2035 = !DILocation(line: 422, column: 58, scope: !631, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 462, column: 9, scope: !694, inlinedAt: !2017)
!2037 = !DILocation(line: 423, column: 9, scope: !631, inlinedAt: !2036)
!2038 = !DILocation(line: 462, column: 9, scope: !694, inlinedAt: !2017)
!2039 = !DILocation(line: 421, column: 61, scope: !631, inlinedAt: !2036)
!2040 = !DILocation(line: 426, column: 29, scope: !631, inlinedAt: !2036)
!2041 = !DILocation(line: 426, column: 21, scope: !631, inlinedAt: !2036)
!2042 = !DILocation(line: 426, column: 12, scope: !631, inlinedAt: !2036)
!2043 = !DILocation(line: 428, column: 19, scope: !648, inlinedAt: !2036)
!2044 = !DILocation(line: 428, column: 16, scope: !648, inlinedAt: !2036)
!2045 = !DILocation(line: 462, column: 9, scope: !656, inlinedAt: !2017)
!2046 = !DILocation(line: 464, column: 15, scope: !706, inlinedAt: !2017)
!2047 = !DILocation(line: 464, column: 14, scope: !694, inlinedAt: !2017)
!2048 = !DILocation(line: 466, column: 25, scope: !709, inlinedAt: !2017)
!2049 = !DILocation(line: 466, column: 31, scope: !709, inlinedAt: !2017)
!2050 = !DILocation(line: 880, column: 13, scope: !2015)
!2051 = !DILocation(line: 886, column: 34, scope: !2008)
!2052 = !DILocation(line: 886, column: 9, scope: !1879)
!2053 = !DILocation(line: 889, column: 46, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 889, column: 13)
!2055 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 886, column: 41)
!2056 = !DILocation(line: 440, column: 65, scope: !656, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 889, column: 14, scope: !2054)
!2058 = !DILocation(line: 441, column: 54, scope: !656, inlinedAt: !2057)
!2059 = !DILocation(line: 441, column: 73, scope: !656, inlinedAt: !2057)
!2060 = !DILocation(line: 442, column: 9, scope: !669, inlinedAt: !2057)
!2061 = !DILocation(line: 442, column: 9, scope: !656, inlinedAt: !2057)
!2062 = !DILocation(line: 445, column: 9, scope: !656, inlinedAt: !2057)
!2063 = !DILocation(line: 453, column: 9, scope: !656, inlinedAt: !2057)
!2064 = !DILocation(line: 454, column: 26, scope: !677, inlinedAt: !2057)
!2065 = !DILocation(line: 454, column: 9, scope: !677, inlinedAt: !2057)
!2066 = !DILocation(line: 455, column: 14, scope: !682, inlinedAt: !2057)
!2067 = !DILocation(line: 455, column: 14, scope: !677, inlinedAt: !2057)
!2068 = !DILocation(line: 456, column: 26, scope: !682, inlinedAt: !2057)
!2069 = !DILocation(line: 456, column: 9, scope: !682, inlinedAt: !2057)
!2070 = !DILocation(line: 458, column: 26, scope: !682, inlinedAt: !2057)
!2071 = !DILocation(line: 0, scope: !682, inlinedAt: !2057)
!2072 = !DILocation(line: 461, column: 33, scope: !656, inlinedAt: !2057)
!2073 = !DILocation(line: 461, column: 27, scope: !656, inlinedAt: !2057)
!2074 = !DILocation(line: 461, column: 18, scope: !656, inlinedAt: !2057)
!2075 = !DILocation(line: 422, column: 58, scope: !631, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 462, column: 9, scope: !694, inlinedAt: !2057)
!2077 = !DILocation(line: 423, column: 9, scope: !631, inlinedAt: !2076)
!2078 = !DILocation(line: 462, column: 9, scope: !694, inlinedAt: !2057)
!2079 = !DILocation(line: 421, column: 61, scope: !631, inlinedAt: !2076)
!2080 = !DILocation(line: 426, column: 29, scope: !631, inlinedAt: !2076)
!2081 = !DILocation(line: 426, column: 21, scope: !631, inlinedAt: !2076)
!2082 = !DILocation(line: 426, column: 12, scope: !631, inlinedAt: !2076)
!2083 = !DILocation(line: 428, column: 19, scope: !648, inlinedAt: !2076)
!2084 = !DILocation(line: 428, column: 16, scope: !648, inlinedAt: !2076)
!2085 = !DILocation(line: 462, column: 9, scope: !656, inlinedAt: !2057)
!2086 = !DILocation(line: 464, column: 15, scope: !706, inlinedAt: !2057)
!2087 = !DILocation(line: 464, column: 14, scope: !694, inlinedAt: !2057)
!2088 = !DILocation(line: 466, column: 25, scope: !709, inlinedAt: !2057)
!2089 = !DILocation(line: 466, column: 31, scope: !709, inlinedAt: !2057)
!2090 = !DILocation(line: 889, column: 13, scope: !2055)
!2091 = !DILocation(line: 896, column: 10, scope: !1898)
!2092 = !DILocation(line: 896, column: 15, scope: !1898)
!2093 = !DILocation(line: 898, column: 9, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 898, column: 9)
!2095 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 898, column: 9)
!2096 = !DILocation(line: 898, column: 9, scope: !2095)
!2097 = !DILocation(line: 899, column: 49, scope: !1897)
!2098 = !DILocation(line: 235, column: 59, scope: !275, inlinedAt: !2099)
!2099 = distinct !DILocation(line: 898, column: 9, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 898, column: 9)
!2101 = !DILocation(line: 240, column: 34, scope: !275, inlinedAt: !2099)
!2102 = !DILocation(line: 240, column: 26, scope: !275, inlinedAt: !2099)
!2103 = !DILocation(line: 240, column: 11, scope: !275, inlinedAt: !2099)
!2104 = !DILocation(line: 241, column: 47, scope: !275, inlinedAt: !2099)
!2105 = !DILocation(line: 241, column: 19, scope: !275, inlinedAt: !2099)
!2106 = !DILocation(line: 242, column: 29, scope: !288, inlinedAt: !2099)
!2107 = !DILocation(line: 242, column: 46, scope: !288, inlinedAt: !2099)
!2108 = !DILocation(line: 242, column: 70, scope: !288, inlinedAt: !2099)
!2109 = !DILocation(line: 242, column: 9, scope: !288, inlinedAt: !2099)
!2110 = !DILocation(line: 242, column: 74, scope: !288, inlinedAt: !2099)
!2111 = !DILocation(line: 242, column: 9, scope: !275, inlinedAt: !2099)
!2112 = !DILocation(line: 244, column: 9, scope: !295, inlinedAt: !2099)
!2113 = !DILocation(line: 898, column: 9, scope: !2100)
!2114 = !DILocation(line: 245, column: 9, scope: !295, inlinedAt: !2099)
!2115 = !DILocation(line: 247, column: 5, scope: !275, inlinedAt: !2099)
!2116 = !DILocation(line: 248, column: 14, scope: !275, inlinedAt: !2099)
!2117 = !DILocation(line: 249, column: 20, scope: !275, inlinedAt: !2099)
!2118 = !DILocation(line: 250, column: 5, scope: !275, inlinedAt: !2099)
!2119 = !DILocation(line: 899, column: 60, scope: !1897)
!2120 = !DILocation(line: 899, column: 31, scope: !1897)
!2121 = !DILocation(line: 899, column: 24, scope: !1897)
!2122 = !DILocation(line: 900, column: 18, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 900, column: 13)
!2124 = !DILocation(line: 0, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 902, column: 16)
!2126 = !DILocation(line: 900, column: 13, scope: !1897)
!2127 = !DILocation(line: 901, column: 24, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 900, column: 27)
!2129 = !DILocation(line: 902, column: 9, scope: !2128)
!2130 = !DILocation(line: 903, column: 24, scope: !2125)
!2131 = !DILocation(line: 0, scope: !2128)
!2132 = !DILocation(line: 905, column: 20, scope: !1897)
!2133 = !DILocation(line: 906, column: 9, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 906, column: 9)
!2135 = !DILocation(line: 907, column: 9, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 907, column: 9)
!2137 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 907, column: 9)
!2138 = !DILocation(line: 907, column: 9, scope: !2137)
!2139 = !DILocation(line: 907, column: 9, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 907, column: 9)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 907, column: 9)
!2142 = distinct !DILexicalBlock(scope: !2136, file: !3, line: 907, column: 9)
!2143 = !DILocation(line: 908, column: 22, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 908, column: 16)
!2145 = !DILocation(line: 910, column: 9, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 910, column: 9)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 910, column: 9)
!2148 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 908, column: 33)
!2149 = !DILocation(line: 910, column: 9, scope: !2147)
!2150 = !DILocation(line: 911, column: 40, scope: !2148)
!2151 = !DILocation(line: 235, column: 59, scope: !275, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 910, column: 9, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 910, column: 9)
!2154 = !DILocation(line: 240, column: 34, scope: !275, inlinedAt: !2152)
!2155 = !DILocation(line: 240, column: 26, scope: !275, inlinedAt: !2152)
!2156 = !DILocation(line: 240, column: 11, scope: !275, inlinedAt: !2152)
!2157 = !DILocation(line: 241, column: 47, scope: !275, inlinedAt: !2152)
!2158 = !DILocation(line: 241, column: 19, scope: !275, inlinedAt: !2152)
!2159 = !DILocation(line: 242, column: 29, scope: !288, inlinedAt: !2152)
!2160 = !DILocation(line: 242, column: 46, scope: !288, inlinedAt: !2152)
!2161 = !DILocation(line: 242, column: 70, scope: !288, inlinedAt: !2152)
!2162 = !DILocation(line: 242, column: 9, scope: !288, inlinedAt: !2152)
!2163 = !DILocation(line: 242, column: 74, scope: !288, inlinedAt: !2152)
!2164 = !DILocation(line: 242, column: 9, scope: !275, inlinedAt: !2152)
!2165 = !DILocation(line: 244, column: 9, scope: !295, inlinedAt: !2152)
!2166 = !DILocation(line: 910, column: 9, scope: !2153)
!2167 = !DILocation(line: 245, column: 9, scope: !295, inlinedAt: !2152)
!2168 = !DILocation(line: 247, column: 5, scope: !275, inlinedAt: !2152)
!2169 = !DILocation(line: 248, column: 14, scope: !275, inlinedAt: !2152)
!2170 = !DILocation(line: 249, column: 20, scope: !275, inlinedAt: !2152)
!2171 = !DILocation(line: 250, column: 5, scope: !275, inlinedAt: !2152)
!2172 = !DILocation(line: 911, column: 51, scope: !2148)
!2173 = !DILocation(line: 911, column: 20, scope: !2148)
!2174 = !DILocation(line: 911, column: 18, scope: !2148)
!2175 = !DILocation(line: 912, column: 20, scope: !2148)
!2176 = !DILocation(line: 913, column: 9, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 913, column: 9)
!2178 = !DILocation(line: 914, column: 9, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 914, column: 9)
!2180 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 914, column: 9)
!2181 = !DILocation(line: 914, column: 9, scope: !2180)
!2182 = !DILocation(line: 914, column: 9, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 914, column: 9)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !3, line: 914, column: 9)
!2185 = distinct !DILexicalBlock(scope: !2179, file: !3, line: 914, column: 9)
!2186 = !DILocation(line: 915, column: 24, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 915, column: 16)
!2188 = !DILocation(line: 915, column: 21, scope: !2187)
!2189 = !DILocation(line: 915, column: 41, scope: !2187)
!2190 = !DILocation(line: 915, column: 35, scope: !2187)
!2191 = !DILocation(line: 915, column: 50, scope: !2187)
!2192 = !DILocation(line: 915, column: 46, scope: !2187)
!2193 = !DILocation(line: 920, column: 9, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 920, column: 9)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 920, column: 9)
!2196 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 915, column: 70)
!2197 = !DILocation(line: 920, column: 9, scope: !2195)
!2198 = !DILocation(line: 921, column: 46, scope: !2196)
!2199 = !DILocation(line: 923, column: 9, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 923, column: 9)
!2201 = !DILocation(line: 235, column: 59, scope: !275, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 920, column: 9, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 920, column: 9)
!2204 = !DILocation(line: 240, column: 40, scope: !275, inlinedAt: !2202)
!2205 = !DILocation(line: 240, column: 34, scope: !275, inlinedAt: !2202)
!2206 = !DILocation(line: 240, column: 26, scope: !275, inlinedAt: !2202)
!2207 = !DILocation(line: 240, column: 11, scope: !275, inlinedAt: !2202)
!2208 = !DILocation(line: 241, column: 47, scope: !275, inlinedAt: !2202)
!2209 = !DILocation(line: 241, column: 19, scope: !275, inlinedAt: !2202)
!2210 = !DILocation(line: 242, column: 29, scope: !288, inlinedAt: !2202)
!2211 = !DILocation(line: 242, column: 46, scope: !288, inlinedAt: !2202)
!2212 = !DILocation(line: 242, column: 70, scope: !288, inlinedAt: !2202)
!2213 = !DILocation(line: 242, column: 9, scope: !288, inlinedAt: !2202)
!2214 = !DILocation(line: 242, column: 74, scope: !288, inlinedAt: !2202)
!2215 = !DILocation(line: 242, column: 9, scope: !275, inlinedAt: !2202)
!2216 = !DILocation(line: 244, column: 9, scope: !295, inlinedAt: !2202)
!2217 = !DILocation(line: 920, column: 9, scope: !2203)
!2218 = !DILocation(line: 245, column: 9, scope: !295, inlinedAt: !2202)
!2219 = !DILocation(line: 247, column: 5, scope: !275, inlinedAt: !2202)
!2220 = !DILocation(line: 248, column: 14, scope: !275, inlinedAt: !2202)
!2221 = !DILocation(line: 249, column: 20, scope: !275, inlinedAt: !2202)
!2222 = !DILocation(line: 250, column: 5, scope: !275, inlinedAt: !2202)
!2223 = !DILocation(line: 921, column: 24, scope: !2196)
!2224 = !DILocation(line: 921, column: 22, scope: !2196)
!2225 = !DILocation(line: 922, column: 24, scope: !2196)
!2226 = !DILocation(line: 924, column: 9, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 924, column: 9)
!2228 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 924, column: 9)
!2229 = !DILocation(line: 924, column: 9, scope: !2228)
!2230 = !DILocation(line: 924, column: 9, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 924, column: 9)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !3, line: 924, column: 9)
!2233 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 924, column: 9)
!2234 = !DILocation(line: 925, column: 24, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 925, column: 16)
!2236 = !DILocation(line: 925, column: 21, scope: !2235)
!2237 = !DILocation(line: 925, column: 41, scope: !2235)
!2238 = !DILocation(line: 925, column: 35, scope: !2235)
!2239 = !DILocation(line: 925, column: 46, scope: !2235)
!2240 = !DILocation(line: 930, column: 9, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 930, column: 9)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 930, column: 9)
!2243 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 925, column: 71)
!2244 = !DILocation(line: 930, column: 9, scope: !2242)
!2245 = !DILocation(line: 931, column: 46, scope: !2243)
!2246 = !DILocation(line: 933, column: 9, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 933, column: 9)
!2248 = !DILocation(line: 235, column: 59, scope: !275, inlinedAt: !2249)
!2249 = distinct !DILocation(line: 930, column: 9, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2241, file: !3, line: 930, column: 9)
!2251 = !DILocation(line: 240, column: 40, scope: !275, inlinedAt: !2249)
!2252 = !DILocation(line: 240, column: 34, scope: !275, inlinedAt: !2249)
!2253 = !DILocation(line: 240, column: 26, scope: !275, inlinedAt: !2249)
!2254 = !DILocation(line: 240, column: 11, scope: !275, inlinedAt: !2249)
!2255 = !DILocation(line: 241, column: 47, scope: !275, inlinedAt: !2249)
!2256 = !DILocation(line: 241, column: 19, scope: !275, inlinedAt: !2249)
!2257 = !DILocation(line: 242, column: 29, scope: !288, inlinedAt: !2249)
!2258 = !DILocation(line: 242, column: 46, scope: !288, inlinedAt: !2249)
!2259 = !DILocation(line: 242, column: 70, scope: !288, inlinedAt: !2249)
!2260 = !DILocation(line: 242, column: 9, scope: !288, inlinedAt: !2249)
!2261 = !DILocation(line: 242, column: 74, scope: !288, inlinedAt: !2249)
!2262 = !DILocation(line: 242, column: 9, scope: !275, inlinedAt: !2249)
!2263 = !DILocation(line: 244, column: 9, scope: !295, inlinedAt: !2249)
!2264 = !DILocation(line: 930, column: 9, scope: !2250)
!2265 = !DILocation(line: 245, column: 9, scope: !295, inlinedAt: !2249)
!2266 = !DILocation(line: 247, column: 5, scope: !275, inlinedAt: !2249)
!2267 = !DILocation(line: 248, column: 14, scope: !275, inlinedAt: !2249)
!2268 = !DILocation(line: 249, column: 20, scope: !275, inlinedAt: !2249)
!2269 = !DILocation(line: 250, column: 5, scope: !275, inlinedAt: !2249)
!2270 = !DILocation(line: 931, column: 24, scope: !2243)
!2271 = !DILocation(line: 931, column: 22, scope: !2243)
!2272 = !DILocation(line: 932, column: 24, scope: !2243)
!2273 = !DILocation(line: 934, column: 9, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 934, column: 9)
!2275 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 934, column: 9)
!2276 = !DILocation(line: 934, column: 9, scope: !2275)
!2277 = !DILocation(line: 934, column: 9, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 934, column: 9)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 934, column: 9)
!2280 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 934, column: 9)
!2281 = !DILocation(line: 935, column: 21, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 935, column: 16)
!2283 = !DILocation(line: 935, column: 34, scope: !2282)
!2284 = !DILocation(line: 935, column: 43, scope: !2282)
!2285 = !DILocation(line: 935, column: 37, scope: !2282)
!2286 = !DILocation(line: 935, column: 51, scope: !2282)
!2287 = !DILocation(line: 935, column: 48, scope: !2282)
!2288 = !DILocation(line: 936, column: 34, scope: !2282)
!2289 = !DILocation(line: 936, column: 43, scope: !2282)
!2290 = !DILocation(line: 936, column: 37, scope: !2282)
!2291 = !DILocation(line: 936, column: 51, scope: !2282)
!2292 = !DILocation(line: 936, column: 48, scope: !2282)
!2293 = !DILocation(line: 160, column: 12, scope: !165, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 940, column: 20, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 936, column: 74)
!2296 = !DILocation(line: 159, column: 20, scope: !165, inlinedAt: !2294)
!2297 = !DILocation(line: 161, column: 11, scope: !165, inlinedAt: !2294)
!2298 = !DILocation(line: 161, column: 14, scope: !165, inlinedAt: !2294)
!2299 = !DILocation(line: 162, column: 11, scope: !165, inlinedAt: !2294)
!2300 = !DILocation(line: 162, column: 17, scope: !165, inlinedAt: !2294)
!2301 = !DILocation(line: 163, column: 11, scope: !165, inlinedAt: !2294)
!2302 = !DILocation(line: 163, column: 14, scope: !165, inlinedAt: !2294)
!2303 = !DILocation(line: 164, column: 29, scope: !165, inlinedAt: !2294)
!2304 = !DILocation(line: 167, column: 22, scope: !165, inlinedAt: !2294)
!2305 = !DILocation(line: 941, column: 36, scope: !2295)
!2306 = !DILocation(line: 941, column: 24, scope: !2295)
!2307 = !DILocation(line: 941, column: 22, scope: !2295)
!2308 = !DILocation(line: 942, column: 24, scope: !2295)
!2309 = !DILocation(line: 943, column: 9, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 943, column: 9)
!2311 = !DILocation(line: 944, column: 9, scope: !2295)
!2312 = !DILocation(line: 945, column: 5, scope: !2295)
!2313 = !DILocation(line: 949, column: 9, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 949, column: 9)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !3, line: 949, column: 9)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 945, column: 22)
!2317 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 945, column: 16)
!2318 = !DILocation(line: 949, column: 9, scope: !2315)
!2319 = !DILocation(line: 235, column: 59, scope: !275, inlinedAt: !2320)
!2320 = distinct !DILocation(line: 949, column: 9, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 949, column: 9)
!2322 = !DILocation(line: 240, column: 34, scope: !275, inlinedAt: !2320)
!2323 = !DILocation(line: 240, column: 26, scope: !275, inlinedAt: !2320)
!2324 = !DILocation(line: 240, column: 11, scope: !275, inlinedAt: !2320)
!2325 = !DILocation(line: 241, column: 47, scope: !275, inlinedAt: !2320)
!2326 = !DILocation(line: 241, column: 19, scope: !275, inlinedAt: !2320)
!2327 = !DILocation(line: 242, column: 29, scope: !288, inlinedAt: !2320)
!2328 = !DILocation(line: 242, column: 46, scope: !288, inlinedAt: !2320)
!2329 = !DILocation(line: 242, column: 70, scope: !288, inlinedAt: !2320)
!2330 = !DILocation(line: 242, column: 9, scope: !288, inlinedAt: !2320)
!2331 = !DILocation(line: 242, column: 74, scope: !288, inlinedAt: !2320)
!2332 = !DILocation(line: 242, column: 9, scope: !275, inlinedAt: !2320)
!2333 = !DILocation(line: 244, column: 9, scope: !295, inlinedAt: !2320)
!2334 = !DILocation(line: 949, column: 9, scope: !2321)
!2335 = !DILocation(line: 245, column: 9, scope: !295, inlinedAt: !2320)
!2336 = !DILocation(line: 247, column: 5, scope: !275, inlinedAt: !2320)
!2337 = !DILocation(line: 248, column: 14, scope: !275, inlinedAt: !2320)
!2338 = !DILocation(line: 249, column: 20, scope: !275, inlinedAt: !2320)
!2339 = !DILocation(line: 250, column: 5, scope: !275, inlinedAt: !2320)
!2340 = !DILocation(line: 950, column: 53, scope: !2316)
!2341 = !DILocation(line: 950, column: 20, scope: !2316)
!2342 = !DILocation(line: 951, column: 46, scope: !2316)
!2343 = !DILocation(line: 952, column: 36, scope: !2316)
!2344 = !DILocation(line: 951, column: 24, scope: !2316)
!2345 = !DILocation(line: 951, column: 22, scope: !2316)
!2346 = !DILocation(line: 953, column: 19, scope: !2316)
!2347 = !DILocation(line: 953, column: 24, scope: !2316)
!2348 = !DILocation(line: 954, column: 9, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2316, file: !3, line: 954, column: 9)
!2350 = !DILocation(line: 955, column: 9, scope: !2316)
!2351 = !DILocation(line: 956, column: 9, scope: !2316)
!2352 = !DILocation(line: 957, column: 5, scope: !2316)
!2353 = !DILocation(line: 0, scope: !1919)
!2354 = !DILocation(line: 960, column: 1, scope: !1879)
!2355 = distinct !DISubprogram(name: "quicklistInsertBefore", scope: !3, file: !3, line: 962, type: !2356, isLocal: false, isDefinition: true, scopeLine: 963, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2358)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{null, !21, !1300, !47, !50}
!2358 = !{!2359, !2360, !2361, !2362}
!2359 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2355, file: !3, line: 962, type: !21)
!2360 = !DILocalVariable(name: "entry", arg: 2, scope: !2355, file: !3, line: 962, type: !1300)
!2361 = !DILocalVariable(name: "value", arg: 3, scope: !2355, file: !3, line: 963, type: !47)
!2362 = !DILocalVariable(name: "sz", arg: 4, scope: !2355, file: !3, line: 963, type: !50)
!2363 = !DILocation(line: 962, column: 39, scope: !2355)
!2364 = !DILocation(line: 962, column: 66, scope: !2355)
!2365 = !DILocation(line: 963, column: 34, scope: !2355)
!2366 = !DILocation(line: 963, column: 54, scope: !2355)
!2367 = !DILocation(line: 964, column: 5, scope: !2355)
!2368 = !DILocation(line: 965, column: 1, scope: !2355)
!2369 = distinct !DISubprogram(name: "quicklistInsertAfter", scope: !3, file: !3, line: 967, type: !2356, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2370)
!2370 = !{!2371, !2372, !2373, !2374}
!2371 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2369, file: !3, line: 967, type: !21)
!2372 = !DILocalVariable(name: "entry", arg: 2, scope: !2369, file: !3, line: 967, type: !1300)
!2373 = !DILocalVariable(name: "value", arg: 3, scope: !2369, file: !3, line: 968, type: !47)
!2374 = !DILocalVariable(name: "sz", arg: 4, scope: !2369, file: !3, line: 968, type: !50)
!2375 = !DILocation(line: 967, column: 38, scope: !2369)
!2376 = !DILocation(line: 967, column: 65, scope: !2369)
!2377 = !DILocation(line: 968, column: 33, scope: !2369)
!2378 = !DILocation(line: 968, column: 53, scope: !2369)
!2379 = !DILocation(line: 969, column: 5, scope: !2369)
!2380 = !DILocation(line: 970, column: 1, scope: !2369)
!2381 = distinct !DISubprogram(name: "quicklistDelRange", scope: !3, file: !3, line: 978, type: !2382, isLocal: false, isDefinition: true, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2385)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!20, !21, !2384, !2384}
!2384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1298)
!2385 = !{!2386, !2387, !2388, !2389, !2390, !2391, !2392, !2394, !2395}
!2386 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2381, file: !3, line: 978, type: !21)
!2387 = !DILocalVariable(name: "start", arg: 2, scope: !2381, file: !3, line: 978, type: !2384)
!2388 = !DILocalVariable(name: "count", arg: 3, scope: !2381, file: !3, line: 979, type: !2384)
!2389 = !DILocalVariable(name: "extent", scope: !2381, file: !3, line: 983, type: !43)
!2390 = !DILocalVariable(name: "entry", scope: !2381, file: !3, line: 993, type: !1301)
!2391 = !DILocalVariable(name: "node", scope: !2381, file: !3, line: 999, type: !26)
!2392 = !DILocalVariable(name: "next", scope: !2393, file: !3, line: 1003, type: !26)
!2393 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 1002, column: 20)
!2394 = !DILocalVariable(name: "del", scope: !2393, file: !3, line: 1005, type: !43)
!2395 = !DILocalVariable(name: "delete_entire_node", scope: !2393, file: !3, line: 1006, type: !20)
!2396 = !DILocation(line: 978, column: 34, scope: !2381)
!2397 = !DILocation(line: 978, column: 56, scope: !2381)
!2398 = !DILocation(line: 979, column: 34, scope: !2381)
!2399 = !DILocation(line: 980, column: 15, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 980, column: 9)
!2401 = !DILocation(line: 980, column: 9, scope: !2381)
!2402 = !DILocation(line: 983, column: 19, scope: !2381)
!2403 = !DILocation(line: 985, column: 15, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 985, column: 9)
!2405 = !DILocation(line: 985, column: 20, scope: !2404)
!2406 = !DILocation(line: 985, column: 44, scope: !2404)
!2407 = !DILocation(line: 985, column: 9, scope: !2381)
!2408 = !DILocation(line: 0, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 988, column: 16)
!2410 = !DILocation(line: 0, scope: !2404)
!2411 = !DILocation(line: 993, column: 5, scope: !2381)
!2412 = !DILocation(line: 993, column: 20, scope: !2381)
!2413 = !DILocation(line: 994, column: 10, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 994, column: 9)
!2415 = !DILocation(line: 994, column: 9, scope: !2381)
!2416 = !DILocation(line: 1002, column: 5, scope: !2381)
!2417 = !DILocation(line: 999, column: 33, scope: !2381)
!2418 = !DILocation(line: 999, column: 20, scope: !2381)
!2419 = !DILocation(line: 1007, column: 19, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 1007, column: 13)
!2421 = !DILocation(line: 1003, column: 37, scope: !2393)
!2422 = !DILocation(line: 1003, column: 24, scope: !2393)
!2423 = !DILocation(line: 1006, column: 13, scope: !2393)
!2424 = !DILocation(line: 1007, column: 26, scope: !2420)
!2425 = !DILocation(line: 1007, column: 31, scope: !2420)
!2426 = !DILocation(line: 1007, column: 50, scope: !2420)
!2427 = !DILocation(line: 1007, column: 44, scope: !2420)
!2428 = !DILocation(line: 1007, column: 41, scope: !2420)
!2429 = !DILocation(line: 1007, column: 13, scope: !2393)
!2430 = !DILocation(line: 1012, column: 33, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 1012, column: 20)
!2432 = !DILocation(line: 1012, column: 38, scope: !2431)
!2433 = !DILocation(line: 1012, column: 57, scope: !2431)
!2434 = !DILocation(line: 1012, column: 51, scope: !2431)
!2435 = !DILocation(line: 1012, column: 48, scope: !2431)
!2436 = !DILocation(line: 1012, column: 20, scope: !2420)
!2437 = !DILocation(line: 1015, column: 31, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 1012, column: 64)
!2439 = !DILocation(line: 1015, column: 19, scope: !2438)
!2440 = !DILocation(line: 1005, column: 23, scope: !2393)
!2441 = !DILocation(line: 1016, column: 9, scope: !2438)
!2442 = !DILocation(line: 1022, column: 19, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 1016, column: 38)
!2444 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 1016, column: 20)
!2445 = !DILocation(line: 1027, column: 21, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 1027, column: 17)
!2447 = !DILocation(line: 1027, column: 17, scope: !2443)
!2448 = !DILocation(line: 1042, column: 13, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 1042, column: 13)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 1042, column: 13)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 1041, column: 16)
!2452 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 1039, column: 13)
!2453 = !DILocation(line: 599, column: 49, scope: !1172, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 1040, column: 13, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 1039, column: 33)
!2456 = !DILocation(line: 600, column: 53, scope: !1172, inlinedAt: !2454)
!2457 = !DILocation(line: 601, column: 9, scope: !1181, inlinedAt: !2454)
!2458 = !DILocation(line: 601, column: 9, scope: !1172, inlinedAt: !2454)
!2459 = !DILocation(line: 602, column: 34, scope: !1181, inlinedAt: !2454)
!2460 = !DILocation(line: 602, column: 26, scope: !1181, inlinedAt: !2454)
!2461 = !DILocation(line: 602, column: 9, scope: !1181, inlinedAt: !2454)
!2462 = !DILocation(line: 603, column: 15, scope: !1188, inlinedAt: !2454)
!2463 = !DILocation(line: 603, column: 9, scope: !1188, inlinedAt: !2454)
!2464 = !DILocation(line: 603, column: 9, scope: !1172, inlinedAt: !2454)
!2465 = !DILocation(line: 604, column: 21, scope: !1188, inlinedAt: !2454)
!2466 = !DILocation(line: 604, column: 26, scope: !1188, inlinedAt: !2454)
!2467 = !DILocation(line: 604, column: 9, scope: !1188, inlinedAt: !2454)
!2468 = !DILocation(line: 606, column: 28, scope: !1195, inlinedAt: !2454)
!2469 = !DILocation(line: 606, column: 14, scope: !1195, inlinedAt: !2454)
!2470 = !DILocation(line: 606, column: 9, scope: !1172, inlinedAt: !2454)
!2471 = !DILocation(line: 607, column: 25, scope: !1199, inlinedAt: !2454)
!2472 = !DILocation(line: 608, column: 5, scope: !1199, inlinedAt: !2454)
!2473 = !DILocation(line: 610, column: 28, scope: !1202, inlinedAt: !2454)
!2474 = !DILocation(line: 610, column: 14, scope: !1202, inlinedAt: !2454)
!2475 = !DILocation(line: 610, column: 9, scope: !1172, inlinedAt: !2454)
!2476 = !DILocation(line: 611, column: 33, scope: !1206, inlinedAt: !2454)
!2477 = !DILocation(line: 611, column: 25, scope: !1206, inlinedAt: !2454)
!2478 = !DILocation(line: 612, column: 5, scope: !1206, inlinedAt: !2454)
!2479 = !DILocation(line: 616, column: 5, scope: !1172, inlinedAt: !2454)
!2480 = !DILocation(line: 618, column: 31, scope: !1172, inlinedAt: !2454)
!2481 = !DILocation(line: 618, column: 25, scope: !1172, inlinedAt: !2454)
!2482 = !DILocation(line: 618, column: 22, scope: !1172, inlinedAt: !2454)
!2483 = !DILocation(line: 620, column: 17, scope: !1172, inlinedAt: !2454)
!2484 = !DILocation(line: 620, column: 5, scope: !1172, inlinedAt: !2454)
!2485 = !DILocation(line: 621, column: 11, scope: !1172, inlinedAt: !2454)
!2486 = !DILocation(line: 621, column: 5, scope: !1172, inlinedAt: !2454)
!2487 = !DILocation(line: 622, column: 19, scope: !1172, inlinedAt: !2454)
!2488 = !DILocation(line: 1041, column: 9, scope: !2455)
!2489 = !DILocation(line: 1042, column: 13, scope: !2450)
!2490 = !DILocation(line: 1043, column: 49, scope: !2451)
!2491 = !DILocation(line: 1044, column: 13, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 1044, column: 13)
!2493 = !DILocation(line: 235, column: 59, scope: !275, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 1042, column: 13, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 1042, column: 13)
!2496 = !DILocation(line: 240, column: 40, scope: !275, inlinedAt: !2494)
!2497 = !DILocation(line: 240, column: 34, scope: !275, inlinedAt: !2494)
!2498 = !DILocation(line: 240, column: 26, scope: !275, inlinedAt: !2494)
!2499 = !DILocation(line: 240, column: 11, scope: !275, inlinedAt: !2494)
!2500 = !DILocation(line: 241, column: 47, scope: !275, inlinedAt: !2494)
!2501 = !DILocation(line: 241, column: 19, scope: !275, inlinedAt: !2494)
!2502 = !DILocation(line: 242, column: 29, scope: !288, inlinedAt: !2494)
!2503 = !DILocation(line: 242, column: 46, scope: !288, inlinedAt: !2494)
!2504 = !DILocation(line: 242, column: 70, scope: !288, inlinedAt: !2494)
!2505 = !DILocation(line: 242, column: 9, scope: !288, inlinedAt: !2494)
!2506 = !DILocation(line: 242, column: 74, scope: !288, inlinedAt: !2494)
!2507 = !DILocation(line: 242, column: 9, scope: !275, inlinedAt: !2494)
!2508 = !DILocation(line: 244, column: 9, scope: !295, inlinedAt: !2494)
!2509 = !DILocation(line: 1042, column: 13, scope: !2495)
!2510 = !DILocation(line: 245, column: 9, scope: !295, inlinedAt: !2494)
!2511 = !DILocation(line: 247, column: 5, scope: !275, inlinedAt: !2494)
!2512 = !DILocation(line: 248, column: 14, scope: !275, inlinedAt: !2494)
!2513 = !DILocation(line: 249, column: 20, scope: !275, inlinedAt: !2494)
!2514 = !DILocation(line: 250, column: 5, scope: !275, inlinedAt: !2494)
!2515 = !DILocation(line: 1043, column: 59, scope: !2451)
!2516 = !DILocation(line: 1043, column: 67, scope: !2451)
!2517 = !DILocation(line: 1043, column: 24, scope: !2451)
!2518 = !DILocation(line: 1043, column: 22, scope: !2451)
!2519 = !DILocation(line: 1045, column: 25, scope: !2451)
!2520 = !DILocation(line: 1046, column: 30, scope: !2451)
!2521 = !DILocation(line: 1047, column: 13, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !3, line: 1047, column: 13)
!2523 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 1047, column: 13)
!2524 = !DILocation(line: 1047, column: 13, scope: !2523)
!2525 = !DILocation(line: 599, column: 49, scope: !1172, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 1047, column: 13, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 1047, column: 13)
!2528 = !DILocation(line: 600, column: 53, scope: !1172, inlinedAt: !2526)
!2529 = !DILocation(line: 601, column: 15, scope: !1181, inlinedAt: !2526)
!2530 = !DILocation(line: 601, column: 9, scope: !1181, inlinedAt: !2526)
!2531 = !DILocation(line: 601, column: 9, scope: !1172, inlinedAt: !2526)
!2532 = !DILocation(line: 602, column: 34, scope: !1181, inlinedAt: !2526)
!2533 = !DILocation(line: 602, column: 26, scope: !1181, inlinedAt: !2526)
!2534 = !DILocation(line: 602, column: 9, scope: !1181, inlinedAt: !2526)
!2535 = !DILocation(line: 603, column: 15, scope: !1188, inlinedAt: !2526)
!2536 = !DILocation(line: 603, column: 9, scope: !1188, inlinedAt: !2526)
!2537 = !DILocation(line: 603, column: 9, scope: !1172, inlinedAt: !2526)
!2538 = !DILocation(line: 604, column: 21, scope: !1188, inlinedAt: !2526)
!2539 = !DILocation(line: 604, column: 26, scope: !1188, inlinedAt: !2526)
!2540 = !DILocation(line: 604, column: 9, scope: !1188, inlinedAt: !2526)
!2541 = !DILocation(line: 606, column: 28, scope: !1195, inlinedAt: !2526)
!2542 = !DILocation(line: 606, column: 14, scope: !1195, inlinedAt: !2526)
!2543 = !DILocation(line: 606, column: 9, scope: !1172, inlinedAt: !2526)
!2544 = !DILocation(line: 607, column: 25, scope: !1199, inlinedAt: !2526)
!2545 = !DILocation(line: 608, column: 5, scope: !1199, inlinedAt: !2526)
!2546 = !DILocation(line: 610, column: 28, scope: !1202, inlinedAt: !2526)
!2547 = !DILocation(line: 610, column: 14, scope: !1202, inlinedAt: !2526)
!2548 = !DILocation(line: 610, column: 9, scope: !1172, inlinedAt: !2526)
!2549 = !DILocation(line: 611, column: 33, scope: !1206, inlinedAt: !2526)
!2550 = !DILocation(line: 611, column: 25, scope: !1206, inlinedAt: !2526)
!2551 = !DILocation(line: 612, column: 5, scope: !1206, inlinedAt: !2526)
!2552 = !DILocation(line: 616, column: 5, scope: !1172, inlinedAt: !2526)
!2553 = !DILocation(line: 618, column: 31, scope: !1172, inlinedAt: !2526)
!2554 = !DILocation(line: 618, column: 25, scope: !1172, inlinedAt: !2526)
!2555 = !DILocation(line: 618, column: 22, scope: !1172, inlinedAt: !2526)
!2556 = !DILocation(line: 620, column: 17, scope: !1172, inlinedAt: !2526)
!2557 = !DILocation(line: 620, column: 5, scope: !1172, inlinedAt: !2526)
!2558 = !DILocation(line: 621, column: 11, scope: !1172, inlinedAt: !2526)
!2559 = !DILocation(line: 621, column: 5, scope: !1172, inlinedAt: !2526)
!2560 = !DILocation(line: 622, column: 19, scope: !1172, inlinedAt: !2526)
!2561 = !DILocation(line: 1048, column: 17, scope: !2451)
!2562 = !DILocation(line: 1049, column: 17, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 1049, column: 17)
!2564 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 1048, column: 17)
!2565 = !DILocation(line: 1049, column: 17, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 1049, column: 17)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 1049, column: 17)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 1049, column: 17)
!2569 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1049, column: 17)
!2570 = !DILocation(line: 1052, column: 16, scope: !2393)
!2571 = !DILocation(line: 1056, column: 22, scope: !2393)
!2572 = distinct !{!2572, !2416, !2573}
!2573 = !DILocation(line: 1057, column: 5, scope: !2381)
!2574 = !DILocation(line: 0, scope: !2414)
!2575 = !DILocation(line: 1059, column: 1, scope: !2381)
!2576 = !DILocation(line: 0, scope: !2381)
!2577 = distinct !DISubprogram(name: "quicklistCompare", scope: !3, file: !3, line: 1062, type: !2578, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2580)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!20, !6, !6, !20}
!2580 = !{!2581, !2582, !2583}
!2581 = !DILocalVariable(name: "p1", arg: 1, scope: !2577, file: !3, line: 1062, type: !6)
!2582 = !DILocalVariable(name: "p2", arg: 2, scope: !2577, file: !3, line: 1062, type: !6)
!2583 = !DILocalVariable(name: "p2_len", arg: 3, scope: !2577, file: !3, line: 1062, type: !20)
!2584 = !DILocation(line: 1062, column: 37, scope: !2577)
!2585 = !DILocation(line: 1062, column: 56, scope: !2577)
!2586 = !DILocation(line: 1062, column: 64, scope: !2577)
!2587 = !DILocation(line: 1063, column: 12, scope: !2577)
!2588 = !DILocation(line: 1063, column: 5, scope: !2577)
!2589 = distinct !DISubprogram(name: "quicklistGetIterator", scope: !3, file: !3, line: 1068, type: !2590, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2592)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!1290, !188, !20}
!2592 = !{!2593, !2594, !2595}
!2593 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2589, file: !3, line: 1068, type: !188)
!2594 = !DILocalVariable(name: "direction", arg: 2, scope: !2589, file: !3, line: 1068, type: !20)
!2595 = !DILocalVariable(name: "iter", scope: !2589, file: !3, line: 1069, type: !1290)
!2596 = !DILocation(line: 1068, column: 54, scope: !2589)
!2597 = !DILocation(line: 1068, column: 69, scope: !2589)
!2598 = !DILocation(line: 1071, column: 12, scope: !2589)
!2599 = !DILocation(line: 1069, column: 20, scope: !2589)
!2600 = !DILocation(line: 1073, column: 9, scope: !2589)
!2601 = !DILocation(line: 1074, column: 36, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 1073, column: 37)
!2603 = distinct !DILexicalBlock(scope: !2589, file: !3, line: 1073, column: 9)
!2604 = !DILocation(line: 1076, column: 5, scope: !2602)
!2605 = !DILocation(line: 1077, column: 36, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 1076, column: 44)
!2607 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 1076, column: 16)
!2608 = !DILocation(line: 1079, column: 5, scope: !2606)
!2609 = !DILocation(line: 0, scope: !2602)
!2610 = !DILocation(line: 1081, column: 11, scope: !2589)
!2611 = !DILocation(line: 1081, column: 21, scope: !2589)
!2612 = !DILocation(line: 1082, column: 11, scope: !2589)
!2613 = !DILocation(line: 1082, column: 21, scope: !2589)
!2614 = !{!1334, !71, i64 0}
!2615 = !DILocation(line: 1084, column: 11, scope: !2589)
!2616 = !DILocation(line: 1084, column: 14, scope: !2589)
!2617 = !DILocation(line: 1086, column: 5, scope: !2589)
!2618 = distinct !DISubprogram(name: "quicklistGetIteratorAtIdx", scope: !3, file: !3, line: 1091, type: !2619, isLocal: false, isDefinition: true, scopeLine: 1093, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2621)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!1290, !188, !634, !1408}
!2621 = !{!2622, !2623, !2624, !2625, !2626}
!2622 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2618, file: !3, line: 1091, type: !188)
!2623 = !DILocalVariable(name: "direction", arg: 2, scope: !2618, file: !3, line: 1092, type: !634)
!2624 = !DILocalVariable(name: "idx", arg: 3, scope: !2618, file: !3, line: 1093, type: !1408)
!2625 = !DILocalVariable(name: "entry", scope: !2618, file: !3, line: 1094, type: !1301)
!2626 = !DILocalVariable(name: "base", scope: !2627, file: !3, line: 1097, type: !1290)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 1096, column: 49)
!2628 = distinct !DILexicalBlock(scope: !2618, file: !3, line: 1096, column: 9)
!2629 = !DILocation(line: 1091, column: 59, scope: !2618)
!2630 = !DILocation(line: 1092, column: 52, scope: !2618)
!2631 = !DILocation(line: 1093, column: 58, scope: !2618)
!2632 = !DILocation(line: 1094, column: 5, scope: !2618)
!2633 = !DILocation(line: 1094, column: 20, scope: !2618)
!2634 = !DILocation(line: 1096, column: 9, scope: !2628)
!2635 = !DILocation(line: 1096, column: 9, scope: !2618)
!2636 = !DILocation(line: 1068, column: 54, scope: !2589, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 1097, column: 31, scope: !2627)
!2638 = !DILocation(line: 1068, column: 69, scope: !2589, inlinedAt: !2637)
!2639 = !DILocation(line: 1071, column: 12, scope: !2589, inlinedAt: !2637)
!2640 = !DILocation(line: 1069, column: 20, scope: !2589, inlinedAt: !2637)
!2641 = !DILocation(line: 1073, column: 9, scope: !2589, inlinedAt: !2637)
!2642 = !DILocation(line: 1099, column: 15, scope: !2627)
!2643 = !DILocation(line: 1099, column: 23, scope: !2627)
!2644 = !DILocation(line: 1100, column: 15, scope: !2627)
!2645 = !DILocation(line: 1074, column: 36, scope: !2602, inlinedAt: !2637)
!2646 = !DILocation(line: 1074, column: 15, scope: !2602, inlinedAt: !2637)
!2647 = !DILocation(line: 1074, column: 23, scope: !2602, inlinedAt: !2637)
!2648 = !DILocation(line: 1075, column: 15, scope: !2602, inlinedAt: !2637)
!2649 = !DILocation(line: 1075, column: 22, scope: !2602, inlinedAt: !2637)
!2650 = !DILocation(line: 1076, column: 5, scope: !2602, inlinedAt: !2637)
!2651 = !DILocation(line: 1077, column: 36, scope: !2606, inlinedAt: !2637)
!2652 = !DILocation(line: 1077, column: 15, scope: !2606, inlinedAt: !2637)
!2653 = !DILocation(line: 1077, column: 23, scope: !2606, inlinedAt: !2637)
!2654 = !DILocation(line: 1078, column: 15, scope: !2606, inlinedAt: !2637)
!2655 = !DILocation(line: 1078, column: 22, scope: !2606, inlinedAt: !2637)
!2656 = !DILocation(line: 1079, column: 5, scope: !2606, inlinedAt: !2637)
!2657 = !DILocation(line: 1081, column: 11, scope: !2589, inlinedAt: !2637)
!2658 = !DILocation(line: 1081, column: 21, scope: !2589, inlinedAt: !2637)
!2659 = !DILocation(line: 1082, column: 11, scope: !2589, inlinedAt: !2637)
!2660 = !DILocation(line: 1082, column: 21, scope: !2589, inlinedAt: !2637)
!2661 = !DILocation(line: 1084, column: 11, scope: !2589, inlinedAt: !2637)
!2662 = !DILocation(line: 1097, column: 24, scope: !2627)
!2663 = !DILocation(line: 1098, column: 18, scope: !2627)
!2664 = !DILocation(line: 1099, column: 31, scope: !2627)
!2665 = !DILocation(line: 1100, column: 30, scope: !2627)
!2666 = !DILocation(line: 1100, column: 24, scope: !2627)
!2667 = !DILocation(line: 1100, column: 22, scope: !2627)
!2668 = !DILocation(line: 0, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 1102, column: 12)
!2670 = !DILocation(line: 1105, column: 1, scope: !2618)
!2671 = distinct !DISubprogram(name: "quicklistReleaseIterator", scope: !3, file: !3, line: 1109, type: !2672, isLocal: false, isDefinition: true, scopeLine: 1109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2674)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{null, !1290}
!2674 = !{!2675}
!2675 = !DILocalVariable(name: "iter", arg: 1, scope: !2671, file: !3, line: 1109, type: !1290)
!2676 = !DILocation(line: 1109, column: 46, scope: !2671)
!2677 = !DILocation(line: 1110, column: 15, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 1110, column: 9)
!2679 = !DILocation(line: 1110, column: 9, scope: !2678)
!2680 = !DILocation(line: 1110, column: 9, scope: !2671)
!2681 = !DILocation(line: 1111, column: 9, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !3, line: 1111, column: 9)
!2683 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 1111, column: 9)
!2684 = !DILocation(line: 1111, column: 9, scope: !2683)
!2685 = !DILocation(line: 1111, column: 9, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !3, line: 1111, column: 9)
!2687 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 1111, column: 9)
!2688 = !DILocation(line: 1111, column: 9, scope: !2687)
!2689 = !DILocation(line: 1111, column: 9, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 1111, column: 9)
!2691 = !DILocation(line: 1113, column: 11, scope: !2671)
!2692 = !DILocation(line: 1113, column: 5, scope: !2671)
!2693 = !DILocation(line: 1114, column: 1, scope: !2671)
!2694 = distinct !DISubprogram(name: "quicklistNext", scope: !3, file: !3, line: 1137, type: !2695, isLocal: false, isDefinition: true, scopeLine: 1137, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2697)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!20, !1290, !1300}
!2697 = !{!2698, !2699, !2700, !2704}
!2698 = !DILocalVariable(name: "iter", arg: 1, scope: !2694, file: !3, line: 1137, type: !1290)
!2699 = !DILocalVariable(name: "entry", arg: 2, scope: !2694, file: !3, line: 1137, type: !1300)
!2700 = !DILocalVariable(name: "nextFn", scope: !2694, file: !3, line: 1153, type: !2701)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!6, !6, !6}
!2704 = !DILocalVariable(name: "offset_update", scope: !2694, file: !3, line: 1154, type: !20)
!2705 = !DILocation(line: 1137, column: 34, scope: !2694)
!2706 = !DILocation(line: 1137, column: 56, scope: !2694)
!2707 = !DILocation(line: 1138, column: 5, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 1138, column: 5)
!2709 = !DILocation(line: 1140, column: 10, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 1140, column: 9)
!2711 = !DILocation(line: 1140, column: 9, scope: !2694)
!2712 = !DILocation(line: 1145, column: 30, scope: !2694)
!2713 = !DILocation(line: 1145, column: 22, scope: !2694)
!2714 = !DILocation(line: 1148, column: 10, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 1148, column: 9)
!2716 = !DILocation(line: 1148, column: 9, scope: !2694)
!2717 = !DILocation(line: 1148, column: 16, scope: !2715)
!2718 = !DILocation(line: 1153, column: 22, scope: !2694)
!2719 = !DILocation(line: 1154, column: 9, scope: !2694)
!2720 = !DILocation(line: 1156, column: 16, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 1156, column: 9)
!2722 = !DILocation(line: 1156, column: 10, scope: !2721)
!2723 = !DILocation(line: 1156, column: 9, scope: !2694)
!2724 = !DILocation(line: 1158, column: 9, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 1158, column: 9)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 1158, column: 9)
!2727 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 1156, column: 20)
!2728 = !DILocation(line: 1158, column: 9, scope: !2726)
!2729 = !DILocation(line: 235, column: 59, scope: !275, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 1158, column: 9, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 1158, column: 9)
!2732 = !DILocation(line: 240, column: 40, scope: !275, inlinedAt: !2730)
!2733 = !DILocation(line: 240, column: 34, scope: !275, inlinedAt: !2730)
!2734 = !DILocation(line: 240, column: 26, scope: !275, inlinedAt: !2730)
!2735 = !DILocation(line: 240, column: 11, scope: !275, inlinedAt: !2730)
!2736 = !DILocation(line: 241, column: 47, scope: !275, inlinedAt: !2730)
!2737 = !DILocation(line: 241, column: 19, scope: !275, inlinedAt: !2730)
!2738 = !DILocation(line: 242, column: 29, scope: !288, inlinedAt: !2730)
!2739 = !DILocation(line: 242, column: 46, scope: !288, inlinedAt: !2730)
!2740 = !DILocation(line: 242, column: 70, scope: !288, inlinedAt: !2730)
!2741 = !DILocation(line: 242, column: 9, scope: !288, inlinedAt: !2730)
!2742 = !DILocation(line: 242, column: 74, scope: !288, inlinedAt: !2730)
!2743 = !DILocation(line: 242, column: 9, scope: !275, inlinedAt: !2730)
!2744 = !DILocation(line: 244, column: 9, scope: !295, inlinedAt: !2730)
!2745 = !DILocation(line: 245, column: 9, scope: !295, inlinedAt: !2730)
!2746 = !DILocation(line: 247, column: 5, scope: !275, inlinedAt: !2730)
!2747 = !DILocation(line: 248, column: 14, scope: !275, inlinedAt: !2730)
!2748 = !DILocation(line: 249, column: 20, scope: !275, inlinedAt: !2730)
!2749 = !DILocation(line: 250, column: 5, scope: !275, inlinedAt: !2730)
!2750 = !DILocation(line: 1158, column: 9, scope: !2731)
!2751 = !DILocation(line: 1159, column: 39, scope: !2727)
!2752 = !DILocation(line: 1159, column: 48, scope: !2727)
!2753 = !DILocation(line: 1159, column: 58, scope: !2727)
!2754 = !DILocation(line: 1159, column: 52, scope: !2727)
!2755 = !DILocation(line: 1159, column: 20, scope: !2727)
!2756 = !DILocation(line: 1159, column: 18, scope: !2727)
!2757 = !DILocation(line: 1174, column: 27, scope: !2694)
!2758 = !DILocation(line: 1160, column: 5, scope: !2727)
!2759 = !DILocation(line: 1162, column: 19, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 1162, column: 13)
!2761 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 1160, column: 12)
!2762 = !DILocation(line: 1162, column: 13, scope: !2761)
!2763 = !DILocation(line: 1169, column: 42, scope: !2761)
!2764 = !DILocation(line: 1169, column: 20, scope: !2761)
!2765 = !{i8* (i8*, i8*)* @ziplistNext, i8* (i8*, i8*)* @ziplistPrev}
!2766 = !DILocation(line: 1169, column: 18, scope: !2761)
!2767 = !DILocation(line: 1170, column: 22, scope: !2761)
!2768 = !DILocation(line: 1176, column: 15, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 1176, column: 9)
!2770 = !DILocation(line: 1173, column: 23, scope: !2694)
!2771 = !DILocation(line: 1173, column: 15, scope: !2694)
!2772 = !DILocation(line: 1174, column: 21, scope: !2694)
!2773 = !DILocation(line: 1174, column: 19, scope: !2694)
!2774 = !DILocation(line: 1176, column: 9, scope: !2769)
!2775 = !DILocation(line: 1176, column: 9, scope: !2694)
!2776 = !DILocation(line: 1178, column: 9, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 1176, column: 19)
!2778 = !DILocation(line: 1179, column: 9, scope: !2777)
!2779 = !DILocation(line: 1183, column: 9, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 1183, column: 9)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 1183, column: 9)
!2782 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 1180, column: 12)
!2783 = !DILocation(line: 1183, column: 9, scope: !2781)
!2784 = !DILocation(line: 1183, column: 9, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !3, line: 1183, column: 9)
!2786 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 1183, column: 9)
!2787 = !DILocation(line: 1183, column: 9, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 1183, column: 9)
!2789 = !DILocation(line: 1184, column: 19, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 1184, column: 13)
!2791 = !DILocation(line: 1184, column: 13, scope: !2782)
!2792 = !DILocation(line: 1187, column: 35, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 1184, column: 47)
!2794 = !DILocation(line: 1187, column: 44, scope: !2793)
!2795 = !DILocation(line: 1189, column: 9, scope: !2793)
!2796 = !DILocation(line: 1192, column: 35, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 1189, column: 54)
!2798 = distinct !DILexicalBlock(scope: !2790, file: !3, line: 1189, column: 20)
!2799 = !DILocation(line: 1194, column: 9, scope: !2797)
!2800 = !DILocation(line: 0, scope: !2793)
!2801 = !DILocation(line: 1195, column: 18, scope: !2782)
!2802 = !DILocation(line: 0, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 1140, column: 16)
!2804 = !DILocation(line: 1198, column: 1, scope: !2694)
!2805 = distinct !DISubprogram(name: "quicklistDup", scope: !3, file: !3, line: 1206, type: !2806, isLocal: false, isDefinition: true, scopeLine: 1206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2808)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!21, !21}
!2808 = !{!2809, !2810, !2811, !2813, !2816, !2819}
!2809 = !DILocalVariable(name: "orig", arg: 1, scope: !2805, file: !3, line: 1206, type: !21)
!2810 = !DILocalVariable(name: "copy", scope: !2805, file: !3, line: 1207, type: !21)
!2811 = !DILocalVariable(name: "current", scope: !2812, file: !3, line: 1211, type: !26)
!2812 = distinct !DILexicalBlock(scope: !2805, file: !3, line: 1211, column: 5)
!2813 = !DILocalVariable(name: "node", scope: !2814, file: !3, line: 1213, type: !26)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !3, line: 1212, column: 35)
!2815 = distinct !DILexicalBlock(scope: !2812, file: !3, line: 1211, column: 5)
!2816 = !DILocalVariable(name: "lzf", scope: !2817, file: !3, line: 1216, type: !8)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 1215, column: 63)
!2818 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 1215, column: 13)
!2819 = !DILocalVariable(name: "lzf_sz", scope: !2817, file: !3, line: 1217, type: !51)
!2820 = !DILocation(line: 1206, column: 36, scope: !2805)
!2821 = !DILocation(line: 1209, column: 31, scope: !2805)
!2822 = !DILocation(line: 133, column: 25, scope: !81, inlinedAt: !2823)
!2823 = distinct !DILocation(line: 148, column: 5, scope: !107, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 154, column: 5, scope: !131, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 1209, column: 12, scope: !2805)
!2826 = !DILocation(line: 152, column: 29, scope: !131, inlinedAt: !2825)
!2827 = !DILocation(line: 152, column: 39, scope: !131, inlinedAt: !2825)
!2828 = !DILocation(line: 117, column: 17, scope: !61, inlinedAt: !2829)
!2829 = distinct !DILocation(line: 153, column: 28, scope: !131, inlinedAt: !2825)
!2830 = !DILocation(line: 115, column: 23, scope: !61, inlinedAt: !2829)
!2831 = !DILocation(line: 118, column: 34, scope: !61, inlinedAt: !2829)
!2832 = !DILocation(line: 118, column: 21, scope: !61, inlinedAt: !2829)
!2833 = !DILocation(line: 119, column: 16, scope: !61, inlinedAt: !2829)
!2834 = !DILocation(line: 120, column: 16, scope: !61, inlinedAt: !2829)
!2835 = !DILocation(line: 120, column: 22, scope: !61, inlinedAt: !2829)
!2836 = !DILocation(line: 121, column: 16, scope: !61, inlinedAt: !2829)
!2837 = !DILocation(line: 153, column: 16, scope: !131, inlinedAt: !2825)
!2838 = !DILocation(line: 146, column: 37, scope: !107, inlinedAt: !2824)
!2839 = !DILocation(line: 146, column: 52, scope: !107, inlinedAt: !2824)
!2840 = !DILocation(line: 146, column: 62, scope: !107, inlinedAt: !2824)
!2841 = !DILocation(line: 137, column: 34, scope: !95, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 147, column: 5, scope: !107, inlinedAt: !2824)
!2843 = !DILocation(line: 137, column: 49, scope: !95, inlinedAt: !2842)
!2844 = !DILocation(line: 140, column: 16, scope: !102, inlinedAt: !2842)
!2845 = !DILocation(line: 143, column: 21, scope: !95, inlinedAt: !2842)
!2846 = !DILocation(line: 127, column: 43, scope: !81, inlinedAt: !2823)
!2847 = !DILocation(line: 127, column: 58, scope: !81, inlinedAt: !2823)
!2848 = !DILocation(line: 1207, column: 16, scope: !2805)
!2849 = !DILocation(line: 1211, column: 41, scope: !2812)
!2850 = !DILocation(line: 1211, column: 25, scope: !2812)
!2851 = !DILocation(line: 0, scope: !2815)
!2852 = !DILocation(line: 1211, column: 5, scope: !2812)
!2853 = !DILocation(line: 1234, column: 5, scope: !2805)
!2854 = !DILocation(line: 160, column: 12, scope: !165, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 1213, column: 31, scope: !2814)
!2856 = !DILocation(line: 161, column: 11, scope: !165, inlinedAt: !2855)
!2857 = !DILocation(line: 161, column: 14, scope: !165, inlinedAt: !2855)
!2858 = !DILocation(line: 162, column: 11, scope: !165, inlinedAt: !2855)
!2859 = !DILocation(line: 162, column: 17, scope: !165, inlinedAt: !2855)
!2860 = !DILocation(line: 163, column: 11, scope: !165, inlinedAt: !2855)
!2861 = !DILocation(line: 163, column: 14, scope: !165, inlinedAt: !2855)
!2862 = !DILocation(line: 164, column: 24, scope: !165, inlinedAt: !2855)
!2863 = !DILocation(line: 164, column: 11, scope: !165, inlinedAt: !2855)
!2864 = !DILocation(line: 164, column: 29, scope: !165, inlinedAt: !2855)
!2865 = !DILocation(line: 167, column: 22, scope: !165, inlinedAt: !2855)
!2866 = !DILocation(line: 1215, column: 22, scope: !2818)
!2867 = !DILocation(line: 1215, column: 13, scope: !2814)
!2868 = !DILocation(line: 1213, column: 24, scope: !2814)
!2869 = !DILocation(line: 159, column: 20, scope: !165, inlinedAt: !2855)
!2870 = !DILocation(line: 1216, column: 58, scope: !2817)
!2871 = !DILocation(line: 1216, column: 27, scope: !2817)
!2872 = !DILocation(line: 1217, column: 49, scope: !2817)
!2873 = !DILocation(line: 1217, column: 44, scope: !2817)
!2874 = !DILocation(line: 1217, column: 42, scope: !2817)
!2875 = !DILocation(line: 1217, column: 20, scope: !2817)
!2876 = !DILocation(line: 1218, column: 24, scope: !2817)
!2877 = !DILocation(line: 1218, column: 22, scope: !2817)
!2878 = !DILocation(line: 1219, column: 39, scope: !2817)
!2879 = !DILocation(line: 1219, column: 13, scope: !2817)
!2880 = !DILocation(line: 1220, column: 9, scope: !2817)
!2881 = !DILocation(line: 1221, column: 41, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 1220, column: 70)
!2883 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 1220, column: 20)
!2884 = !DILocation(line: 1221, column: 32, scope: !2882)
!2885 = !DILocation(line: 1221, column: 24, scope: !2882)
!2886 = !DILocation(line: 1221, column: 22, scope: !2882)
!2887 = !DILocation(line: 1222, column: 39, scope: !2882)
!2888 = !DILocation(line: 1222, column: 52, scope: !2882)
!2889 = !DILocation(line: 1222, column: 43, scope: !2882)
!2890 = !DILocation(line: 1222, column: 13, scope: !2882)
!2891 = !DILocation(line: 1223, column: 9, scope: !2882)
!2892 = !DILocation(line: 1225, column: 32, scope: !2814)
!2893 = !DILocation(line: 1225, column: 21, scope: !2814)
!2894 = !DILocation(line: 1226, column: 24, scope: !2814)
!2895 = !DILocation(line: 1226, column: 21, scope: !2814)
!2896 = !DILocation(line: 1227, column: 29, scope: !2814)
!2897 = !DILocation(line: 1227, column: 18, scope: !2814)
!2898 = !DILocation(line: 1228, column: 35, scope: !2814)
!2899 = !DILocation(line: 1228, column: 24, scope: !2814)
!2900 = !DILocation(line: 1230, column: 47, scope: !2814)
!2901 = !DILocation(line: 414, column: 56, scope: !583, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 1230, column: 9, scope: !2814)
!2903 = !DILocation(line: 415, column: 60, scope: !583, inlinedAt: !2902)
!2904 = !DILocation(line: 416, column: 60, scope: !583, inlinedAt: !2902)
!2905 = !DILocation(line: 372, column: 52, scope: !443, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 417, column: 5, scope: !583, inlinedAt: !2902)
!2907 = !DILocation(line: 373, column: 56, scope: !443, inlinedAt: !2906)
!2908 = !DILocation(line: 374, column: 56, scope: !443, inlinedAt: !2906)
!2909 = !DILocation(line: 374, column: 70, scope: !443, inlinedAt: !2906)
!2910 = !DILocation(line: 376, column: 24, scope: !459, inlinedAt: !2906)
!2911 = !DILocation(line: 377, column: 13, scope: !463, inlinedAt: !2906)
!2912 = !DILocation(line: 377, column: 13, scope: !459, inlinedAt: !2906)
!2913 = !DILocation(line: 378, column: 40, scope: !466, inlinedAt: !2906)
!2914 = !DILocation(line: 378, column: 28, scope: !466, inlinedAt: !2906)
!2915 = !DILocation(line: 379, column: 27, scope: !470, inlinedAt: !2906)
!2916 = !DILocation(line: 379, column: 17, scope: !470, inlinedAt: !2906)
!2917 = !DILocation(line: 379, column: 17, scope: !466, inlinedAt: !2906)
!2918 = !DILocation(line: 380, column: 38, scope: !470, inlinedAt: !2906)
!2919 = !DILocation(line: 380, column: 17, scope: !470, inlinedAt: !2906)
!2920 = !DILocation(line: 381, column: 28, scope: !466, inlinedAt: !2906)
!2921 = !DILocation(line: 382, column: 9, scope: !466, inlinedAt: !2906)
!2922 = !DILocation(line: 384, column: 29, scope: !479, inlinedAt: !2906)
!2923 = !DILocation(line: 397, column: 20, scope: !510, inlinedAt: !2906)
!2924 = !DILocation(line: 397, column: 24, scope: !510, inlinedAt: !2906)
!2925 = !DILocation(line: 397, column: 9, scope: !443, inlinedAt: !2906)
!2926 = !DILocation(line: 398, column: 43, scope: !514, inlinedAt: !2906)
!2927 = !DILocation(line: 398, column: 25, scope: !514, inlinedAt: !2906)
!2928 = !DILocation(line: 399, column: 5, scope: !514, inlinedAt: !2906)
!2929 = !DILocation(line: 401, column: 9, scope: !443, inlinedAt: !2906)
!2930 = !DILocation(line: 402, column: 9, scope: !523, inlinedAt: !2906)
!2931 = !DILocation(line: 402, column: 9, scope: !524, inlinedAt: !2906)
!2932 = !DILocation(line: 402, column: 9, scope: !527, inlinedAt: !2906)
!2933 = !DILocation(line: 402, column: 9, scope: !528, inlinedAt: !2906)
!2934 = !DILocation(line: 402, column: 9, scope: !531, inlinedAt: !2906)
!2935 = !DILocation(line: 404, column: 19, scope: !443, inlinedAt: !2906)
!2936 = !DILocation(line: 1212, column: 29, scope: !2815)
!2937 = distinct !{!2937, !2852, !2938}
!2938 = !DILocation(line: 1231, column: 5, scope: !2812)
!2939 = distinct !DISubprogram(name: "quicklistRotate", scope: !3, file: !3, line: 1302, type: !198, isLocal: false, isDefinition: true, scopeLine: 1302, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2940)
!2940 = !{!2941, !2942, !2943, !2944, !2945, !2946}
!2941 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2939, file: !3, line: 1302, type: !21)
!2942 = !DILocalVariable(name: "p", scope: !2939, file: !3, line: 1307, type: !6)
!2943 = !DILocalVariable(name: "value", scope: !2939, file: !3, line: 1308, type: !6)
!2944 = !DILocalVariable(name: "longval", scope: !2939, file: !3, line: 1309, type: !1092)
!2945 = !DILocalVariable(name: "sz", scope: !2939, file: !3, line: 1310, type: !14)
!2946 = !DILocalVariable(name: "longstr", scope: !2939, file: !3, line: 1311, type: !1094)
!2947 = !DILocation(line: 1302, column: 33, scope: !2939)
!2948 = !DILocation(line: 1303, column: 20, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 1303, column: 9)
!2950 = !DILocation(line: 1303, column: 26, scope: !2949)
!2951 = !DILocation(line: 1303, column: 9, scope: !2939)
!2952 = !DILocation(line: 1307, column: 5, scope: !2939)
!2953 = !DILocation(line: 1307, column: 48, scope: !2939)
!2954 = !DILocation(line: 1307, column: 54, scope: !2939)
!2955 = !DILocation(line: 1307, column: 24, scope: !2939)
!2956 = !DILocation(line: 1307, column: 20, scope: !2939)
!2957 = !DILocation(line: 1308, column: 5, scope: !2939)
!2958 = !DILocation(line: 1309, column: 5, scope: !2939)
!2959 = !DILocation(line: 1310, column: 5, scope: !2939)
!2960 = !DILocation(line: 1311, column: 5, scope: !2939)
!2961 = !DILocation(line: 1311, column: 10, scope: !2939)
!2962 = !DILocation(line: 1308, column: 20, scope: !2939)
!2963 = !DILocation(line: 1309, column: 15, scope: !2939)
!2964 = !DILocation(line: 1310, column: 18, scope: !2939)
!2965 = !DILocation(line: 1312, column: 5, scope: !2939)
!2966 = !DILocation(line: 1315, column: 10, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 1315, column: 9)
!2968 = !DILocation(line: 1315, column: 9, scope: !2939)
!2969 = !DILocation(line: 1322, column: 41, scope: !2939)
!2970 = !DILocation(line: 1317, column: 50, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 1315, column: 17)
!2972 = !DILocation(line: 1317, column: 14, scope: !2971)
!2973 = !DILocation(line: 1317, column: 12, scope: !2971)
!2974 = !DILocation(line: 1318, column: 15, scope: !2971)
!2975 = !DILocation(line: 1319, column: 5, scope: !2971)
!2976 = !DILocation(line: 1322, column: 34, scope: !2939)
!2977 = !DILocation(line: 1322, column: 5, scope: !2939)
!2978 = !DILocation(line: 1327, column: 20, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 1327, column: 9)
!2980 = !DILocation(line: 1327, column: 24, scope: !2979)
!2981 = !DILocation(line: 1327, column: 9, scope: !2939)
!2982 = !DILocation(line: 1328, column: 37, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 1327, column: 30)
!2984 = !DILocation(line: 1328, column: 43, scope: !2983)
!2985 = !DILocation(line: 1328, column: 13, scope: !2983)
!2986 = !DILocation(line: 1328, column: 11, scope: !2983)
!2987 = !DILocation(line: 1329, column: 5, scope: !2983)
!2988 = !DILocation(line: 1332, column: 45, scope: !2939)
!2989 = !DILocation(line: 1332, column: 5, scope: !2939)
!2990 = !DILocation(line: 1333, column: 1, scope: !2939)
!2991 = distinct !DISubprogram(name: "quicklistPopCustom", scope: !3, file: !3, line: 1344, type: !2992, isLocal: false, isDefinition: true, scopeLine: 1346, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2999)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!20, !21, !20, !1224, !2994, !2995, !2996}
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!47, !6, !14}
!2999 = !{!3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011}
!3000 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2991, file: !3, line: 1344, type: !21)
!3001 = !DILocalVariable(name: "where", arg: 2, scope: !2991, file: !3, line: 1344, type: !20)
!3002 = !DILocalVariable(name: "data", arg: 3, scope: !2991, file: !3, line: 1344, type: !1224)
!3003 = !DILocalVariable(name: "sz", arg: 4, scope: !2991, file: !3, line: 1345, type: !2994)
!3004 = !DILocalVariable(name: "sval", arg: 5, scope: !2991, file: !3, line: 1345, type: !2995)
!3005 = !DILocalVariable(name: "saver", arg: 6, scope: !2991, file: !3, line: 1346, type: !2996)
!3006 = !DILocalVariable(name: "p", scope: !2991, file: !3, line: 1347, type: !6)
!3007 = !DILocalVariable(name: "vstr", scope: !2991, file: !3, line: 1348, type: !6)
!3008 = !DILocalVariable(name: "vlen", scope: !2991, file: !3, line: 1349, type: !14)
!3009 = !DILocalVariable(name: "vlong", scope: !2991, file: !3, line: 1350, type: !1092)
!3010 = !DILocalVariable(name: "pos", scope: !2991, file: !3, line: 1351, type: !20)
!3011 = !DILocalVariable(name: "node", scope: !2991, file: !3, line: 1363, type: !26)
!3012 = !DILocation(line: 1344, column: 35, scope: !2991)
!3013 = !DILocation(line: 1344, column: 50, scope: !2991)
!3014 = !DILocation(line: 1344, column: 73, scope: !2991)
!3015 = !DILocation(line: 1345, column: 38, scope: !2991)
!3016 = !DILocation(line: 1345, column: 53, scope: !2991)
!3017 = !DILocation(line: 1346, column: 32, scope: !2991)
!3018 = !DILocation(line: 1347, column: 5, scope: !2991)
!3019 = !DILocation(line: 1348, column: 5, scope: !2991)
!3020 = !DILocation(line: 1349, column: 5, scope: !2991)
!3021 = !DILocation(line: 1350, column: 5, scope: !2991)
!3022 = !DILocation(line: 1351, column: 22, scope: !2991)
!3023 = !DILocation(line: 1351, column: 15, scope: !2991)
!3024 = !DILocation(line: 1351, column: 9, scope: !2991)
!3025 = !DILocation(line: 1353, column: 20, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 1353, column: 9)
!3027 = !DILocation(line: 1353, column: 26, scope: !3026)
!3028 = !DILocation(line: 1353, column: 9, scope: !2991)
!3029 = !DILocation(line: 1356, column: 9, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 1356, column: 9)
!3031 = !DILocation(line: 1356, column: 9, scope: !2991)
!3032 = !DILocation(line: 1357, column: 15, scope: !3030)
!3033 = !DILocation(line: 1357, column: 9, scope: !3030)
!3034 = !DILocation(line: 1358, column: 9, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 1358, column: 9)
!3036 = !DILocation(line: 1358, column: 9, scope: !2991)
!3037 = !DILocation(line: 1359, column: 13, scope: !3035)
!3038 = !DILocation(line: 1359, column: 9, scope: !3035)
!3039 = !DILocation(line: 1360, column: 9, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 1360, column: 9)
!3041 = !DILocation(line: 1360, column: 9, scope: !2991)
!3042 = !DILocation(line: 1361, column: 15, scope: !3040)
!3043 = !DILocation(line: 1361, column: 9, scope: !3040)
!3044 = !DILocation(line: 1364, column: 33, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 1364, column: 9)
!3046 = !DILocation(line: 1364, column: 47, scope: !3045)
!3047 = !DILocation(line: 1364, column: 36, scope: !3045)
!3048 = !DILocation(line: 1364, column: 9, scope: !2991)
!3049 = !DILocation(line: 1366, column: 22, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1366, column: 16)
!3051 = !DILocation(line: 1366, column: 40, scope: !3050)
!3052 = !DILocation(line: 1366, column: 54, scope: !3050)
!3053 = !DILocation(line: 1366, column: 43, scope: !3050)
!3054 = !DILocation(line: 1366, column: 16, scope: !3045)
!3055 = !DILocation(line: 0, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3050, file: !3, line: 1366, column: 60)
!3057 = !DILocation(line: 1363, column: 20, scope: !2991)
!3058 = !DILocation(line: 1372, column: 28, scope: !2991)
!3059 = !DILocation(line: 1372, column: 9, scope: !2991)
!3060 = !DILocation(line: 1347, column: 20, scope: !2991)
!3061 = !DILocation(line: 1372, column: 7, scope: !2991)
!3062 = !DILocation(line: 1348, column: 20, scope: !2991)
!3063 = !DILocation(line: 1349, column: 18, scope: !2991)
!3064 = !DILocation(line: 1350, column: 15, scope: !2991)
!3065 = !DILocation(line: 1373, column: 9, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 1373, column: 9)
!3067 = !DILocation(line: 1373, column: 9, scope: !2991)
!3068 = !DILocation(line: 1374, column: 13, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 1374, column: 13)
!3070 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 1373, column: 46)
!3071 = !DILocation(line: 1374, column: 13, scope: !3070)
!3072 = !DILocation(line: 1375, column: 17, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 1374, column: 19)
!3074 = !DILocation(line: 1376, column: 37, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3073, file: !3, line: 1375, column: 17)
!3076 = !DILocation(line: 1376, column: 25, scope: !3075)
!3077 = !DILocation(line: 1376, column: 23, scope: !3075)
!3078 = !DILocation(line: 1376, column: 17, scope: !3075)
!3079 = !DILocation(line: 1377, column: 17, scope: !3073)
!3080 = !DILocation(line: 1378, column: 23, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3073, file: !3, line: 1377, column: 17)
!3082 = !DILocation(line: 1378, column: 21, scope: !3081)
!3083 = !DILocation(line: 1378, column: 17, scope: !3081)
!3084 = !DILocation(line: 1380, column: 17, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 1379, column: 16)
!3086 = !DILocation(line: 1381, column: 23, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 1380, column: 17)
!3088 = !DILocation(line: 1381, column: 17, scope: !3087)
!3089 = !DILocation(line: 1382, column: 17, scope: !3085)
!3090 = !DILocation(line: 1383, column: 25, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 1382, column: 17)
!3092 = !DILocation(line: 1383, column: 23, scope: !3091)
!3093 = !DILocation(line: 1383, column: 17, scope: !3091)
!3094 = !DILocation(line: 1385, column: 9, scope: !3070)
!3095 = !DILocation(line: 1386, column: 9, scope: !3070)
!3096 = !DILocation(line: 0, scope: !3070)
!3097 = !DILocation(line: 1389, column: 1, scope: !2991)
!3098 = distinct !DISubprogram(name: "_quicklistSaver", scope: !3, file: !3, line: 1392, type: !2997, isLocal: false, isDefinition: true, scopeLine: 1392, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3099)
!3099 = !{!3100, !3101, !3102}
!3100 = !DILocalVariable(name: "data", arg: 1, scope: !3098, file: !3, line: 1392, type: !6)
!3101 = !DILocalVariable(name: "sz", arg: 2, scope: !3098, file: !3, line: 1392, type: !14)
!3102 = !DILocalVariable(name: "vstr", scope: !3098, file: !3, line: 1393, type: !6)
!3103 = !DILocation(line: 1392, column: 51, scope: !3098)
!3104 = !DILocation(line: 1392, column: 70, scope: !3098)
!3105 = !DILocation(line: 1394, column: 9, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 1394, column: 9)
!3107 = !DILocation(line: 1394, column: 9, scope: !3098)
!3108 = !DILocation(line: 1395, column: 24, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 1394, column: 15)
!3110 = !DILocation(line: 1395, column: 16, scope: !3109)
!3111 = !DILocation(line: 1393, column: 20, scope: !3098)
!3112 = !DILocation(line: 1396, column: 9, scope: !3109)
!3113 = !DILocation(line: 1397, column: 9, scope: !3109)
!3114 = !DILocation(line: 0, scope: !3098)
!3115 = !DILocation(line: 1400, column: 1, scope: !3098)
!3116 = distinct !DISubprogram(name: "quicklistPop", scope: !3, file: !3, line: 1405, type: !3117, isLocal: false, isDefinition: true, scopeLine: 1406, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3119)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!20, !21, !20, !1224, !2994, !2995}
!3119 = !{!3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128}
!3120 = !DILocalVariable(name: "quicklist", arg: 1, scope: !3116, file: !3, line: 1405, type: !21)
!3121 = !DILocalVariable(name: "where", arg: 2, scope: !3116, file: !3, line: 1405, type: !20)
!3122 = !DILocalVariable(name: "data", arg: 3, scope: !3116, file: !3, line: 1405, type: !1224)
!3123 = !DILocalVariable(name: "sz", arg: 4, scope: !3116, file: !3, line: 1406, type: !2994)
!3124 = !DILocalVariable(name: "slong", arg: 5, scope: !3116, file: !3, line: 1406, type: !2995)
!3125 = !DILocalVariable(name: "vstr", scope: !3116, file: !3, line: 1407, type: !6)
!3126 = !DILocalVariable(name: "vlen", scope: !3116, file: !3, line: 1408, type: !14)
!3127 = !DILocalVariable(name: "vlong", scope: !3116, file: !3, line: 1409, type: !1092)
!3128 = !DILocalVariable(name: "ret", scope: !3116, file: !3, line: 1412, type: !20)
!3129 = !DILocation(line: 1405, column: 29, scope: !3116)
!3130 = !DILocation(line: 1405, column: 44, scope: !3116)
!3131 = !DILocation(line: 1405, column: 67, scope: !3116)
!3132 = !DILocation(line: 1406, column: 32, scope: !3116)
!3133 = !DILocation(line: 1406, column: 47, scope: !3116)
!3134 = !DILocation(line: 1410, column: 20, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 1410, column: 9)
!3136 = !DILocation(line: 1410, column: 26, scope: !3135)
!3137 = !DILocation(line: 1410, column: 9, scope: !3116)
!3138 = !DILocation(line: 1407, column: 20, scope: !3116)
!3139 = !DILocation(line: 1344, column: 35, scope: !2991, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 1412, column: 15, scope: !3116)
!3141 = !DILocation(line: 1344, column: 50, scope: !2991, inlinedAt: !3140)
!3142 = !DILocation(line: 1344, column: 73, scope: !2991, inlinedAt: !3140)
!3143 = !DILocation(line: 1346, column: 32, scope: !2991, inlinedAt: !3140)
!3144 = !DILocation(line: 1347, column: 5, scope: !2991, inlinedAt: !3140)
!3145 = !DILocation(line: 1348, column: 5, scope: !2991, inlinedAt: !3140)
!3146 = !DILocation(line: 1349, column: 5, scope: !2991, inlinedAt: !3140)
!3147 = !DILocation(line: 1350, column: 5, scope: !2991, inlinedAt: !3140)
!3148 = !DILocation(line: 1351, column: 22, scope: !2991, inlinedAt: !3140)
!3149 = !DILocation(line: 1351, column: 15, scope: !2991, inlinedAt: !3140)
!3150 = !DILocation(line: 1351, column: 9, scope: !2991, inlinedAt: !3140)
!3151 = !DILocation(line: 1364, column: 33, scope: !3045, inlinedAt: !3140)
!3152 = !DILocation(line: 1364, column: 47, scope: !3045, inlinedAt: !3140)
!3153 = !DILocation(line: 1364, column: 36, scope: !3045, inlinedAt: !3140)
!3154 = !DILocation(line: 1364, column: 9, scope: !2991, inlinedAt: !3140)
!3155 = !DILocation(line: 1366, column: 22, scope: !3050, inlinedAt: !3140)
!3156 = !DILocation(line: 1366, column: 40, scope: !3050, inlinedAt: !3140)
!3157 = !DILocation(line: 1366, column: 54, scope: !3050, inlinedAt: !3140)
!3158 = !DILocation(line: 1366, column: 43, scope: !3050, inlinedAt: !3140)
!3159 = !DILocation(line: 1366, column: 16, scope: !3045, inlinedAt: !3140)
!3160 = !DILocation(line: 0, scope: !3056, inlinedAt: !3140)
!3161 = !DILocation(line: 1363, column: 20, scope: !2991, inlinedAt: !3140)
!3162 = !DILocation(line: 1372, column: 28, scope: !2991, inlinedAt: !3140)
!3163 = !DILocation(line: 1372, column: 9, scope: !2991, inlinedAt: !3140)
!3164 = !DILocation(line: 1347, column: 20, scope: !2991, inlinedAt: !3140)
!3165 = !DILocation(line: 1372, column: 7, scope: !2991, inlinedAt: !3140)
!3166 = !DILocation(line: 1348, column: 20, scope: !2991, inlinedAt: !3140)
!3167 = !DILocation(line: 1349, column: 18, scope: !2991, inlinedAt: !3140)
!3168 = !DILocation(line: 1350, column: 15, scope: !2991, inlinedAt: !3140)
!3169 = !DILocation(line: 1373, column: 9, scope: !3066, inlinedAt: !3140)
!3170 = !DILocation(line: 1373, column: 9, scope: !2991, inlinedAt: !3140)
!3171 = !DILocation(line: 1374, column: 13, scope: !3069, inlinedAt: !3140)
!3172 = !DILocation(line: 1374, column: 13, scope: !3070, inlinedAt: !3140)
!3173 = !DILocation(line: 1376, column: 37, scope: !3075, inlinedAt: !3140)
!3174 = !DILocation(line: 1392, column: 51, scope: !3098, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 1376, column: 25, scope: !3075, inlinedAt: !3140)
!3176 = !DILocation(line: 1392, column: 70, scope: !3098, inlinedAt: !3175)
!3177 = !DILocation(line: 1395, column: 24, scope: !3109, inlinedAt: !3175)
!3178 = !DILocation(line: 1395, column: 16, scope: !3109, inlinedAt: !3175)
!3179 = !DILocation(line: 1393, column: 20, scope: !3098, inlinedAt: !3175)
!3180 = !DILocation(line: 1396, column: 9, scope: !3109, inlinedAt: !3175)
!3181 = !DILocation(line: 1376, column: 23, scope: !3075, inlinedAt: !3140)
!3182 = !DILocation(line: 1378, column: 23, scope: !3081, inlinedAt: !3140)
!3183 = !DILocation(line: 1378, column: 17, scope: !3081, inlinedAt: !3140)
!3184 = !DILocation(line: 1383, column: 25, scope: !3091, inlinedAt: !3140)
!3185 = !DILocation(line: 1383, column: 17, scope: !3091, inlinedAt: !3140)
!3186 = !DILocation(line: 0, scope: !3116)
!3187 = !DILocation(line: 1385, column: 9, scope: !3070, inlinedAt: !3140)
!3188 = !DILocation(line: 1386, column: 9, scope: !3070, inlinedAt: !3140)
!3189 = !DILocation(line: 0, scope: !3070, inlinedAt: !3140)
!3190 = !DILocation(line: 1389, column: 1, scope: !2991, inlinedAt: !3140)
!3191 = !DILocation(line: 1412, column: 9, scope: !3116)
!3192 = !DILocation(line: 1414, column: 9, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 1414, column: 9)
!3194 = !DILocation(line: 1414, column: 9, scope: !3116)
!3195 = !DILocation(line: 1415, column: 15, scope: !3193)
!3196 = !DILocation(line: 1415, column: 9, scope: !3193)
!3197 = !DILocation(line: 1416, column: 9, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 1416, column: 9)
!3199 = !DILocation(line: 1416, column: 9, scope: !3116)
!3200 = !DILocation(line: 1409, column: 15, scope: !3116)
!3201 = !DILocation(line: 1417, column: 16, scope: !3198)
!3202 = !DILocation(line: 1417, column: 9, scope: !3198)
!3203 = !DILocation(line: 1418, column: 9, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 1418, column: 9)
!3205 = !DILocation(line: 1418, column: 9, scope: !3116)
!3206 = !DILocation(line: 1408, column: 18, scope: !3116)
!3207 = !DILocation(line: 1419, column: 13, scope: !3204)
!3208 = !DILocation(line: 1419, column: 9, scope: !3204)
!3209 = !DILocation(line: 1421, column: 1, scope: !3116)
!3210 = distinct !DISubprogram(name: "quicklistPush", scope: !3, file: !3, line: 1424, type: !3211, isLocal: false, isDefinition: true, scopeLine: 1425, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3213)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{null, !21, !47, !50, !20}
!3213 = !{!3214, !3215, !3216, !3217}
!3214 = !DILocalVariable(name: "quicklist", arg: 1, scope: !3210, file: !3, line: 1424, type: !21)
!3215 = !DILocalVariable(name: "value", arg: 2, scope: !3210, file: !3, line: 1424, type: !47)
!3216 = !DILocalVariable(name: "sz", arg: 3, scope: !3210, file: !3, line: 1424, type: !50)
!3217 = !DILocalVariable(name: "where", arg: 4, scope: !3210, file: !3, line: 1425, type: !20)
!3218 = !DILocation(line: 1424, column: 31, scope: !3210)
!3219 = !DILocation(line: 1424, column: 48, scope: !3210)
!3220 = !DILocation(line: 1424, column: 68, scope: !3210)
!3221 = !DILocation(line: 1425, column: 24, scope: !3210)
!3222 = !DILocation(line: 1426, column: 9, scope: !3210)
!3223 = !DILocation(line: 1427, column: 9, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !3, line: 1426, column: 34)
!3225 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 1426, column: 9)
!3226 = !DILocation(line: 1428, column: 5, scope: !3224)
!3227 = !DILocation(line: 1429, column: 9, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 1428, column: 41)
!3229 = distinct !DILexicalBlock(scope: !3225, file: !3, line: 1428, column: 16)
!3230 = !DILocation(line: 1430, column: 5, scope: !3228)
!3231 = !DILocation(line: 1431, column: 1, scope: !3210)
