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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklist* @quicklistCreate() local_unnamed_addr #0 !dbg !61 {
  %1 = tail call i8* @zmalloc(i64 40) #4, !dbg !67
  %2 = bitcast i8* %1 to %struct.quicklist*, !dbg !67
  %3 = bitcast i8* %1 to <2 x %struct.quicklistNode*>*, !dbg !69
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %3, align 8, !dbg !69, !tbaa !70
  %4 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !74
  %5 = bitcast i8* %4 to <2 x i64>*, !dbg !75
  store <2 x i64> zeroinitializer, <2 x i64>* %5, align 8, !dbg !75, !tbaa !76
  %6 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !78
  %7 = bitcast i8* %6 to i32*, !dbg !78
  store i32 65534, i32* %7, align 8, !dbg !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
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
  %3 = icmp sgt i32 %1, 65536, !dbg !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  br i1 %3, label %6, label %4, !dbg !91

; <label>:4:                                      ; preds = %2
  %5 = icmp slt i32 %1, 0, !dbg !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  br i1 %5, label %6, label %8, !dbg !94

; <label>:6:                                      ; preds = %4, %2
  %7 = phi i32 [ 65536, %2 ], [ 0, %4 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  br label %8, !dbg !97

; <label>:8:                                      ; preds = %6, %4
  %9 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %10 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !97
  %11 = load i32, i32* %10, align 8, !dbg !98
  %12 = shl i32 %9, 16, !dbg !98
  %13 = and i32 %11, 65535, !dbg !98
  %14 = or i32 %13, %12, !dbg !98
  store i32 %14, i32* %10, align 8, !dbg !98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  ret void, !dbg !99
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistSetFill(%struct.quicklist* nocapture, i32) local_unnamed_addr #0 !dbg !100 {
  %3 = icmp sgt i32 %1, 32768, !dbg !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  br i1 %3, label %6, label %4, !dbg !108

; <label>:4:                                      ; preds = %2
  %5 = icmp slt i32 %1, -5, !dbg !109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !111
  br i1 %5, label %6, label %8, !dbg !111

; <label>:6:                                      ; preds = %4, %2
  %7 = phi i32 [ 32768, %2 ], [ -5, %4 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  br label %8, !dbg !114

; <label>:8:                                      ; preds = %6, %4
  %9 = phi i32 [ %1, %4 ], [ %7, %6 ]
  %10 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !114
  %11 = load i32, i32* %10, align 8, !dbg !115
  %12 = and i32 %9, 65535, !dbg !115
  %13 = and i32 %11, -65536, !dbg !115
  %14 = or i32 %13, %12, !dbg !115
  store i32 %14, i32* %10, align 8, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  ret void, !dbg !116
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistSetOptions(%struct.quicklist* nocapture, i32, i32) local_unnamed_addr #0 !dbg !117 {
  %4 = icmp sgt i32 %1, 32768, !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !131
  br i1 %4, label %7, label %5, !dbg !131

; <label>:5:                                      ; preds = %3
  %6 = icmp slt i32 %1, -5, !dbg !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !133
  br i1 %6, label %7, label %9, !dbg !133

; <label>:7:                                      ; preds = %5, %3
  %8 = phi i32 [ 32768, %3 ], [ -5, %5 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !134
  br label %9, !dbg !135

; <label>:9:                                      ; preds = %7, %5
  %10 = phi i32 [ %1, %5 ], [ %8, %7 ]
  %11 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !135
  %12 = load i32, i32* %11, align 8, !dbg !136
  %13 = and i32 %10, 65535, !dbg !136
  %14 = and i32 %12, -65536, !dbg !136
  %15 = or i32 %14, %13, !dbg !136
  store i32 %15, i32* %11, align 8, !dbg !136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !137
  %16 = icmp sgt i32 %2, 65536, !dbg !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  br i1 %16, label %19, label %17, !dbg !142

; <label>:17:                                     ; preds = %9
  %18 = icmp slt i32 %2, 0, !dbg !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  br i1 %18, label %19, label %21, !dbg !144

; <label>:19:                                     ; preds = %17, %9
  %20 = phi i32 [ 65536, %9 ], [ 0, %17 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !134
  br label %21, !dbg !145

; <label>:21:                                     ; preds = %19, %17
  %22 = phi i32 [ %2, %17 ], [ %20, %19 ]
  %23 = shl i32 %22, 16, !dbg !145
  %24 = or i32 %23, %13, !dbg !145
  store i32 %24, i32* %11, align 8, !dbg !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !147
  ret void, !dbg !147
}

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklist* @quicklistNew(i32, i32) local_unnamed_addr #0 !dbg !148 {
  %3 = tail call i8* @zmalloc(i64 40) #4, !dbg !157
  %4 = bitcast i8* %3 to %struct.quicklist*, !dbg !157
  %5 = bitcast i8* %3 to <2 x %struct.quicklistNode*>*, !dbg !160
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %5, align 8, !dbg !160, !tbaa !70
  %6 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !161
  %7 = bitcast i8* %6 to <2 x i64>*, !dbg !162
  store <2 x i64> zeroinitializer, <2 x i64>* %7, align 8, !dbg !162, !tbaa !76
  %8 = getelementptr inbounds i8, i8* %3, i64 32, !dbg !163
  %9 = bitcast i8* %8 to i32*, !dbg !163
  store i32 65534, i32* %9, align 8, !dbg !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !165
  %10 = icmp sgt i32 %0, 32768, !dbg !174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !175
  br i1 %10, label %13, label %11, !dbg !175

; <label>:11:                                     ; preds = %2
  %12 = icmp slt i32 %0, -5, !dbg !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  br i1 %12, label %13, label %15, !dbg !177

; <label>:13:                                     ; preds = %11, %2
  %14 = phi i32 [ 32768, %2 ], [ -5, %11 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !178
  br label %15, !dbg !179

; <label>:15:                                     ; preds = %13, %11
  %16 = phi i32 [ %0, %11 ], [ %14, %13 ]
  %17 = and i32 %16, 65535, !dbg !179
  store i32 %17, i32* %9, align 8, !dbg !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !180
  %18 = icmp sgt i32 %1, 65536, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !185
  br i1 %18, label %21, label %19, !dbg !185

; <label>:19:                                     ; preds = %15
  %20 = icmp slt i32 %1, 0, !dbg !186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !187
  br i1 %20, label %21, label %23, !dbg !187

; <label>:21:                                     ; preds = %19, %15
  %22 = phi i32 [ 65536, %15 ], [ 0, %19 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !178
  br label %23, !dbg !188

; <label>:23:                                     ; preds = %21, %19
  %24 = phi i32 [ %1, %19 ], [ %22, %21 ]
  %25 = shl i32 %24, 16, !dbg !188
  %26 = or i32 %25, %17, !dbg !188
  store i32 %26, i32* %9, align 8, !dbg !188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !191
  ret %struct.quicklist* %4, !dbg !191
}

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklistNode* @quicklistCreateNode() local_unnamed_addr #0 !dbg !192 {
  %1 = tail call i8* @zmalloc(i64 32) #4, !dbg !197
  %2 = bitcast i8* %1 to %struct.quicklistNode*, !dbg !197
  %3 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !199
  %4 = bitcast i8* %3 to i8**, !dbg !199
  store i8* null, i8** %4, align 8, !dbg !200, !tbaa !201
  %5 = getelementptr inbounds i8, i8* %1, i64 28, !dbg !204
  %6 = bitcast i8* %5 to i32*, !dbg !204
  %7 = load i32, i32* %6, align 4, !dbg !205
  %8 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !206
  %9 = bitcast i8* %8 to i32*, !dbg !206
  store i32 0, i32* %9, align 8, !dbg !207, !tbaa !208
  %10 = bitcast i8* %1 to <2 x %struct.quicklistNode*>*, !dbg !209
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %10, align 8, !dbg !209, !tbaa !70
  %11 = and i32 %7, -2097152, !dbg !210
  %12 = or i32 %11, 589824, !dbg !210
  store i32 %12, i32* %6, align 4, !dbg !210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  ret %struct.quicklistNode* %2, !dbg !211
}

; Function Attrs: noredzone nounwind
define dso_local i64 @quicklistCount(%struct.quicklist* nocapture readonly) local_unnamed_addr #0 !dbg !212 {
  %2 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !220
  %3 = load i64, i64* %2, align 8, !dbg !220, !tbaa !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !223
  ret i64 %3, !dbg !223
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistRelease(%struct.quicklist*) local_unnamed_addr #0 !dbg !224 {
  %2 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !233
  %3 = load %struct.quicklistNode*, %struct.quicklistNode** %2, align 8, !dbg !233, !tbaa !234
  %4 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !236
  %5 = load i64, i64* %4, align 8, !dbg !236, !tbaa !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  %6 = icmp eq i64 %5, 0, !dbg !239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  br i1 %6, label %27, label %7, !dbg !239

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2
  br label %9, !dbg !239

; <label>:9:                                      ; preds = %7, %9
  %10 = phi i64 [ %5, %7 ], [ %13, %9 ]
  %11 = phi %struct.quicklistNode* [ %3, %7 ], [ %15, %9 ]
  %12 = bitcast %struct.quicklistNode* %11 to i8*, !dbg !240
  %13 = add i64 %10, -1, !dbg !241
  %14 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 1, !dbg !242
  %15 = load %struct.quicklistNode*, %struct.quicklistNode** %14, align 8, !dbg !242, !tbaa !244
  %16 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !246
  %17 = load i8*, i8** %16, align 8, !dbg !246, !tbaa !201
  tail call void @zfree(i8* %17) #4, !dbg !247
  %18 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 4, !dbg !248
  %19 = load i32, i32* %18, align 4, !dbg !248
  %20 = and i32 %19, 65535, !dbg !248
  %21 = zext i32 %20 to i64, !dbg !249
  %22 = load i64, i64* %8, align 8, !dbg !250, !tbaa !221
  %23 = sub i64 %22, %21, !dbg !250
  store i64 %23, i64* %8, align 8, !dbg !250, !tbaa !221
  tail call void @zfree(i8* %12) #4, !dbg !251
  %24 = load i64, i64* %4, align 8, !dbg !252, !tbaa !237
  %25 = add i64 %24, -1, !dbg !252
  store i64 %25, i64* %4, align 8, !dbg !252, !tbaa !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  %26 = icmp eq i64 %13, 0, !dbg !239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  br i1 %26, label %27, label %9, !dbg !239, !llvm.loop !253

; <label>:27:                                     ; preds = %9, %1
  %28 = bitcast %struct.quicklist* %0 to i8*, !dbg !255
  tail call void @zfree(i8* %28) #4, !dbg !256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !257
  ret void, !dbg !257
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @__quicklistCompressNode(%struct.quicklistNode* nocapture) local_unnamed_addr #0 !dbg !258 {
  %2 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 3, !dbg !265
  %3 = load i32, i32* %2, align 8, !dbg !265, !tbaa !208
  %4 = icmp ult i32 %3, 48, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  br i1 %4, label %32, label %5, !dbg !268

; <label>:5:                                      ; preds = %1
  %6 = zext i32 %3 to i64, !dbg !269
  %7 = add nuw nsw i64 %6, 4, !dbg !270
  %8 = tail call i8* @zmalloc(i64 %7) #4, !dbg !271
  %9 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 2, !dbg !273
  %10 = load i8*, i8** %9, align 8, !dbg !273, !tbaa !201
  %11 = load i32, i32* %2, align 8, !dbg !275, !tbaa !208
  %12 = getelementptr inbounds i8, i8* %8, i64 4, !dbg !276
  %13 = tail call i32 @lzf_compress(i8* %10, i32 %11, i8* nonnull %12, i32 %11) #4, !dbg !277
  %14 = bitcast i8* %8 to i32*, !dbg !278
  store i32 %13, i32* %14, align 4, !dbg !279, !tbaa !280
  %15 = icmp eq i32 %13, 0, !dbg !281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  br i1 %15, label %20, label %16, !dbg !282

; <label>:16:                                     ; preds = %5
  %17 = add i32 %13, 8, !dbg !283
  %18 = load i32, i32* %2, align 8, !dbg !284, !tbaa !208
  %19 = icmp ult i32 %17, %18, !dbg !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  br i1 %19, label %21, label %20, !dbg !286

; <label>:20:                                     ; preds = %16, %5
  tail call void @zfree(i8* %8) #4, !dbg !287
  br label %30, !dbg !289

; <label>:21:                                     ; preds = %16
  %22 = zext i32 %13 to i64, !dbg !290
  %23 = add nuw nsw i64 %22, 4, !dbg !291
  %24 = tail call i8* @zrealloc(i8* %8, i64 %23) #4, !dbg !292
  %25 = load i8*, i8** %9, align 8, !dbg !293, !tbaa !201
  tail call void @zfree(i8* %25) #4, !dbg !294
  store i8* %24, i8** %9, align 8, !dbg !295, !tbaa !201
  %26 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 4, !dbg !296
  %27 = load i32, i32* %26, align 4, !dbg !297
  %28 = and i32 %27, -1245185, !dbg !297
  %29 = or i32 %28, 131072, !dbg !297
  store i32 %29, i32* %26, align 4, !dbg !298
  br label %30, !dbg !299

; <label>:30:                                     ; preds = %21, %20
  %31 = phi i32 [ 0, %20 ], [ 1, %21 ], !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br label %32

; <label>:32:                                     ; preds = %1, %30
  %33 = phi i32 [ %31, %30 ], [ 0, %1 ], !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  ret i32 %33, !dbg !302
}

; Function Attrs: noredzone
declare dso_local i32 @lzf_compress(i8*, i32, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @__quicklistDecompressNode(%struct.quicklistNode* nocapture) local_unnamed_addr #0 !dbg !303 {
  %2 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 3, !dbg !309
  %3 = load i32, i32* %2, align 8, !dbg !309, !tbaa !208
  %4 = zext i32 %3 to i64, !dbg !310
  %5 = tail call i8* @zmalloc(i64 %4) #4, !dbg !311
  %6 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 2, !dbg !313
  %7 = load i8*, i8** %6, align 8, !dbg !313, !tbaa !201
  %8 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !315
  %9 = bitcast i8* %7 to i32*, !dbg !317
  %10 = load i32, i32* %9, align 4, !dbg !317, !tbaa !280
  %11 = load i32, i32* %2, align 8, !dbg !318, !tbaa !208
  %12 = tail call i32 @lzf_decompress(i8* nonnull %8, i32 %10, i8* %5, i32 %11) #4, !dbg !319
  %13 = icmp eq i32 %12, 0, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  br i1 %13, label %14, label %15, !dbg !321

; <label>:14:                                     ; preds = %1
  tail call void @zfree(i8* %5) #4, !dbg !322
  br label %20, !dbg !324

; <label>:15:                                     ; preds = %1
  tail call void @zfree(i8* %7) #4, !dbg !325
  store i8* %5, i8** %6, align 8, !dbg !326, !tbaa !201
  %16 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 4, !dbg !327
  %17 = load i32, i32* %16, align 4, !dbg !328
  %18 = and i32 %17, -196609, !dbg !328
  %19 = or i32 %18, 65536, !dbg !328
  store i32 %19, i32* %16, align 4, !dbg !328
  br label %20, !dbg !329

; <label>:20:                                     ; preds = %15, %14
  %21 = phi i32 [ 0, %14 ], [ 1, %15 ], !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  ret i32 %21, !dbg !332
}

; Function Attrs: noredzone
declare dso_local i32 @lzf_decompress(i8*, i32, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @quicklistGetLzf(%struct.quicklistNode* nocapture readonly, i8** nocapture) local_unnamed_addr #0 !dbg !333 {
  %3 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 2, !dbg !345
  %4 = bitcast i8** %3 to %struct.quicklistLZF**, !dbg !345
  %5 = load %struct.quicklistLZF*, %struct.quicklistLZF** %4, align 8, !dbg !345, !tbaa !201
  %6 = getelementptr inbounds %struct.quicklistLZF, %struct.quicklistLZF* %5, i64 0, i32 1, i64 0, !dbg !347
  store i8* %6, i8** %1, align 8, !dbg !348, !tbaa !70
  %7 = getelementptr inbounds %struct.quicklistLZF, %struct.quicklistLZF* %5, i64 0, i32 0, !dbg !349
  %8 = load i32, i32* %7, align 4, !dbg !349, !tbaa !280
  %9 = zext i32 %8 to i64, !dbg !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  ret i64 %9, !dbg !351
}

; Function Attrs: noredzone nounwind
define dso_local void @__quicklistCompress(%struct.quicklist* nocapture readonly, %struct.quicklistNode*) local_unnamed_addr #0 !dbg !352 {
  %3 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !364
  %4 = load i32, i32* %3, align 8, !dbg !364
  %5 = lshr i32 %4, 16, !dbg !364
  %6 = icmp eq i32 %5, 0, !dbg !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  br i1 %6, label %128, label %7, !dbg !366

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !367
  %9 = load i64, i64* %8, align 8, !dbg !367, !tbaa !237
  %10 = shl nuw nsw i32 %5, 1, !dbg !368
  %11 = zext i32 %10 to i64, !dbg !369
  %12 = icmp ult i64 %9, %11, !dbg !370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  br i1 %12, label %128, label %13, !dbg !371

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !372
  %15 = load %struct.quicklistNode*, %struct.quicklistNode** %14, align 8, !dbg !372, !tbaa !234
  %16 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !374
  %17 = load %struct.quicklistNode*, %struct.quicklistNode** %16, align 8, !dbg !374, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  %18 = icmp ugt i32 %4, 65535, !dbg !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  br i1 %18, label %19, label %92, !dbg !379

; <label>:19:                                     ; preds = %13, %83
  %20 = phi i32 [ %88, %83 ], [ 1, %13 ]
  %21 = phi i32 [ %81, %83 ], [ 0, %13 ]
  %22 = phi %struct.quicklistNode* [ %87, %83 ], [ %17, %13 ]
  %23 = phi %struct.quicklistNode* [ %85, %83 ], [ %15, %13 ]
  %24 = icmp eq %struct.quicklistNode* %23, null, !dbg !381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br i1 %24, label %49, label %25, !dbg !381

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %23, i64 0, i32 4, !dbg !381
  %27 = load i32, i32* %26, align 4, !dbg !381
  %28 = and i32 %27, 196608, !dbg !381
  %29 = icmp eq i32 %28, 131072, !dbg !381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  br i1 %29, label %30, label %49, !dbg !385

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %23, i64 0, i32 3, !dbg !389
  %32 = load i32, i32* %31, align 8, !dbg !389, !tbaa !208
  %33 = zext i32 %32 to i64, !dbg !390
  %34 = tail call i8* @zmalloc(i64 %33) #4, !dbg !391
  %35 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %23, i64 0, i32 2, !dbg !393
  %36 = load i8*, i8** %35, align 8, !dbg !393, !tbaa !201
  %37 = getelementptr inbounds i8, i8* %36, i64 4, !dbg !395
  %38 = bitcast i8* %36 to i32*, !dbg !396
  %39 = load i32, i32* %38, align 4, !dbg !396, !tbaa !280
  %40 = load i32, i32* %31, align 8, !dbg !397, !tbaa !208
  %41 = tail call i32 @lzf_decompress(i8* nonnull %37, i32 %39, i8* %34, i32 %40) #4, !dbg !398
  %42 = icmp eq i32 %41, 0, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  br i1 %42, label %43, label %44, !dbg !400

; <label>:43:                                     ; preds = %30
  tail call void @zfree(i8* %34) #4, !dbg !401
  br label %48, !dbg !402

; <label>:44:                                     ; preds = %30
  tail call void @zfree(i8* %36) #4, !dbg !403
  store i8* %34, i8** %35, align 8, !dbg !404, !tbaa !201
  %45 = load i32, i32* %26, align 4, !dbg !405
  %46 = and i32 %45, -196609, !dbg !405
  %47 = or i32 %46, 65536, !dbg !405
  store i32 %47, i32* %26, align 4, !dbg !405
  br label %48, !dbg !406

; <label>:48:                                     ; preds = %43, %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  br label %49, !dbg !409

; <label>:49:                                     ; preds = %19, %25, %48
  %50 = icmp eq %struct.quicklistNode* %22, null, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br i1 %50, label %75, label %51, !dbg !410

; <label>:51:                                     ; preds = %49
  %52 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %22, i64 0, i32 4, !dbg !410
  %53 = load i32, i32* %52, align 4, !dbg !410
  %54 = and i32 %53, 196608, !dbg !410
  %55 = icmp eq i32 %54, 131072, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  br i1 %55, label %56, label %75, !dbg !413

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %22, i64 0, i32 3, !dbg !417
  %58 = load i32, i32* %57, align 8, !dbg !417, !tbaa !208
  %59 = zext i32 %58 to i64, !dbg !418
  %60 = tail call i8* @zmalloc(i64 %59) #4, !dbg !419
  %61 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %22, i64 0, i32 2, !dbg !421
  %62 = load i8*, i8** %61, align 8, !dbg !421, !tbaa !201
  %63 = getelementptr inbounds i8, i8* %62, i64 4, !dbg !423
  %64 = bitcast i8* %62 to i32*, !dbg !424
  %65 = load i32, i32* %64, align 4, !dbg !424, !tbaa !280
  %66 = load i32, i32* %57, align 8, !dbg !425, !tbaa !208
  %67 = tail call i32 @lzf_decompress(i8* nonnull %63, i32 %65, i8* %60, i32 %66) #4, !dbg !426
  %68 = icmp eq i32 %67, 0, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %68, label %69, label %70, !dbg !428

; <label>:69:                                     ; preds = %56
  tail call void @zfree(i8* %60) #4, !dbg !429
  br label %74, !dbg !430

; <label>:70:                                     ; preds = %56
  tail call void @zfree(i8* %62) #4, !dbg !431
  store i8* %60, i8** %61, align 8, !dbg !432, !tbaa !201
  %71 = load i32, i32* %52, align 4, !dbg !433
  %72 = and i32 %71, -196609, !dbg !433
  %73 = or i32 %72, 65536, !dbg !433
  store i32 %73, i32* %52, align 4, !dbg !433
  br label %74, !dbg !434

; <label>:74:                                     ; preds = %69, %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  br label %75, !dbg !437

; <label>:75:                                     ; preds = %49, %74, %51
  %76 = icmp eq %struct.quicklistNode* %23, %1, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  br i1 %76, label %79, label %77, !dbg !440

; <label>:77:                                     ; preds = %75
  %78 = icmp eq %struct.quicklistNode* %22, %1, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  br i1 %78, label %79, label %80, !dbg !442

; <label>:79:                                     ; preds = %77, %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  br label %80, !dbg !443

; <label>:80:                                     ; preds = %79, %77
  %81 = phi i32 [ 1, %79 ], [ %21, %77 ], !dbg !444
  %82 = icmp eq %struct.quicklistNode* %23, %22, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  br i1 %82, label %127, label %83, !dbg !447

; <label>:83:                                     ; preds = %80
  %84 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %23, i64 0, i32 1, !dbg !448
  %85 = load %struct.quicklistNode*, %struct.quicklistNode** %84, align 8, !dbg !448, !tbaa !244
  %86 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %22, i64 0, i32 0, !dbg !449
  %87 = load %struct.quicklistNode*, %struct.quicklistNode** %86, align 8, !dbg !449, !tbaa !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  %88 = add nuw nsw i32 %20, 1, !dbg !451
  %89 = load i32, i32* %3, align 8, !dbg !452
  %90 = lshr i32 %89, 16, !dbg !452
  %91 = icmp ult i32 %20, %90, !dbg !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  br i1 %91, label %19, label %92, !dbg !379, !llvm.loop !453

; <label>:92:                                     ; preds = %83, %13
  %93 = phi %struct.quicklistNode* [ %15, %13 ], [ %85, %83 ], !dbg !455
  %94 = phi %struct.quicklistNode* [ %17, %13 ], [ %87, %83 ], !dbg !455
  %95 = phi i32 [ 0, %13 ], [ %20, %83 ], !dbg !444
  %96 = phi i32 [ 0, %13 ], [ %81, %83 ], !dbg !456
  %97 = icmp eq i32 %96, 0, !dbg !457
  %98 = icmp ne %struct.quicklistNode* %1, null, !dbg !459
  %99 = and i1 %98, %97, !dbg !462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  br i1 %99, label %100, label %107, !dbg !462

; <label>:100:                                    ; preds = %92
  %101 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !459
  %102 = load i32, i32* %101, align 4, !dbg !459
  %103 = and i32 %102, 196608, !dbg !459
  %104 = icmp eq i32 %103, 65536, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  br i1 %104, label %105, label %107, !dbg !463

; <label>:105:                                    ; preds = %100
  %106 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %1) #6, !dbg !464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  br label %107, !dbg !464

; <label>:107:                                    ; preds = %92, %100, %105
  %108 = icmp ugt i32 %95, 1, !dbg !466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !468
  br i1 %108, label %109, label %127, !dbg !468

; <label>:109:                                    ; preds = %107
  %110 = icmp eq %struct.quicklistNode* %93, null, !dbg !469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
  br i1 %110, label %118, label %111, !dbg !469

; <label>:111:                                    ; preds = %109
  %112 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %93, i64 0, i32 4, !dbg !469
  %113 = load i32, i32* %112, align 4, !dbg !469
  %114 = and i32 %113, 196608, !dbg !469
  %115 = icmp eq i32 %114, 65536, !dbg !469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !473
  br i1 %115, label %116, label %118, !dbg !473

; <label>:116:                                    ; preds = %111
  %117 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %93) #6, !dbg !474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  br label %118, !dbg !474

; <label>:118:                                    ; preds = %109, %111, %116
  %119 = icmp eq %struct.quicklistNode* %94, null, !dbg !476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  br i1 %119, label %127, label %120, !dbg !476

; <label>:120:                                    ; preds = %118
  %121 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %94, i64 0, i32 4, !dbg !476
  %122 = load i32, i32* %121, align 4, !dbg !476
  %123 = and i32 %122, 196608, !dbg !476
  %124 = icmp eq i32 %123, 65536, !dbg !476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  br i1 %124, label %125, label %127, !dbg !479

; <label>:125:                                    ; preds = %120
  %126 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %94) #6, !dbg !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !480
  br label %127, !dbg !480

; <label>:127:                                    ; preds = %80, %107, %125, %120, %118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %128

; <label>:128:                                    ; preds = %2, %7, %127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  ret void, !dbg !483
}

; Function Attrs: noredzone nounwind
define dso_local void @__quicklistInsertNode(%struct.quicklist* nocapture, %struct.quicklistNode*, %struct.quicklistNode*, i32) local_unnamed_addr #0 !dbg !484 {
  %5 = icmp eq i32 %3, 0, !dbg !496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  br i1 %5, label %25, label %6, !dbg !498

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 0, !dbg !499
  store %struct.quicklistNode* %1, %struct.quicklistNode** %7, align 8, !dbg !501, !tbaa !450
  %8 = icmp eq %struct.quicklistNode* %1, null, !dbg !502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  br i1 %8, label %20, label %9, !dbg !504

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 1, !dbg !505
  %11 = bitcast %struct.quicklistNode** %10 to i64*, !dbg !505
  %12 = load i64, i64* %11, align 8, !dbg !505, !tbaa !244
  %13 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 1, !dbg !507
  %14 = bitcast %struct.quicklistNode** %13 to i64*, !dbg !508
  store i64 %12, i64* %14, align 8, !dbg !508, !tbaa !244
  %15 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !509, !tbaa !244
  %16 = icmp eq %struct.quicklistNode* %15, null, !dbg !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  br i1 %16, label %19, label %17, !dbg !512

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %15, i64 0, i32 0, !dbg !513
  store %struct.quicklistNode* %2, %struct.quicklistNode** %18, align 8, !dbg !514, !tbaa !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  br label %19, !dbg !515

; <label>:19:                                     ; preds = %9, %17
  store %struct.quicklistNode* %2, %struct.quicklistNode** %10, align 8, !dbg !516, !tbaa !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  br label %20, !dbg !517

; <label>:20:                                     ; preds = %6, %19
  %21 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !518
  %22 = load %struct.quicklistNode*, %struct.quicklistNode** %21, align 8, !dbg !518, !tbaa !375
  %23 = icmp eq %struct.quicklistNode* %22, %1, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  br i1 %23, label %24, label %43, !dbg !521

; <label>:24:                                     ; preds = %20
  store %struct.quicklistNode* %2, %struct.quicklistNode** %21, align 8, !dbg !522, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  br label %43, !dbg !523

; <label>:25:                                     ; preds = %4
  %26 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 1, !dbg !524
  store %struct.quicklistNode* %1, %struct.quicklistNode** %26, align 8, !dbg !526, !tbaa !244
  %27 = icmp eq %struct.quicklistNode* %1, null, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  br i1 %27, label %38, label %28, !dbg !529

; <label>:28:                                     ; preds = %25
  %29 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 0, !dbg !530
  %30 = bitcast %struct.quicklistNode* %1 to i64*, !dbg !530
  %31 = load i64, i64* %30, align 8, !dbg !530, !tbaa !450
  %32 = bitcast %struct.quicklistNode* %2 to i64*, !dbg !532
  store i64 %31, i64* %32, align 8, !dbg !532, !tbaa !450
  %33 = load %struct.quicklistNode*, %struct.quicklistNode** %29, align 8, !dbg !533, !tbaa !450
  %34 = icmp eq %struct.quicklistNode* %33, null, !dbg !535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  br i1 %34, label %37, label %35, !dbg !536

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %33, i64 0, i32 1, !dbg !537
  store %struct.quicklistNode* %2, %struct.quicklistNode** %36, align 8, !dbg !538, !tbaa !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  br label %37, !dbg !539

; <label>:37:                                     ; preds = %28, %35
  store %struct.quicklistNode* %2, %struct.quicklistNode** %29, align 8, !dbg !540, !tbaa !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  br label %38, !dbg !541

; <label>:38:                                     ; preds = %25, %37
  %39 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !542
  %40 = load %struct.quicklistNode*, %struct.quicklistNode** %39, align 8, !dbg !542, !tbaa !234
  %41 = icmp eq %struct.quicklistNode* %40, %1, !dbg !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  br i1 %41, label %42, label %43, !dbg !545

; <label>:42:                                     ; preds = %38
  store %struct.quicklistNode* %2, %struct.quicklistNode** %39, align 8, !dbg !546, !tbaa !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  br label %43, !dbg !547

; <label>:43:                                     ; preds = %38, %42, %20, %24
  %44 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !548
  %45 = load i64, i64* %44, align 8, !dbg !548, !tbaa !237
  %46 = icmp eq i64 %45, 0, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !551
  br i1 %46, label %47, label %50, !dbg !551

; <label>:47:                                     ; preds = %43
  %48 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !552
  store %struct.quicklistNode* %2, %struct.quicklistNode** %48, align 8, !dbg !554, !tbaa !375
  %49 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !555
  store %struct.quicklistNode* %2, %struct.quicklistNode** %49, align 8, !dbg !556, !tbaa !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  br label %50, !dbg !557

; <label>:50:                                     ; preds = %47, %43
  %51 = icmp eq %struct.quicklistNode* %1, null, !dbg !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !560
  br i1 %51, label %63, label %52, !dbg !560

; <label>:52:                                     ; preds = %50
  %53 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !561
  %54 = load i32, i32* %53, align 4, !dbg !561
  %55 = and i32 %54, 1048576, !dbg !561
  %56 = icmp eq i32 %55, 0, !dbg !561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  br i1 %56, label %62, label %57, !dbg !564

; <label>:57:                                     ; preds = %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  %58 = and i32 %54, 196608, !dbg !565
  %59 = icmp eq i32 %58, 65536, !dbg !565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !568
  br i1 %59, label %60, label %63, !dbg !568

; <label>:60:                                     ; preds = %57
  %61 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %1) #6, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  br label %63, !dbg !569

; <label>:62:                                     ; preds = %52
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %1) #6, !dbg !561
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %63

; <label>:63:                                     ; preds = %50, %60, %57, %62
  %64 = load i64, i64* %44, align 8, !dbg !571, !tbaa !237
  %65 = add i64 %64, 1, !dbg !571
  store i64 %65, i64* %44, align 8, !dbg !571, !tbaa !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  ret void, !dbg !572
}

; Function Attrs: noredzone nounwind
define dso_local void @_quicklistInsertNodeBefore(%struct.quicklist* nocapture, %struct.quicklistNode*, %struct.quicklistNode*) local_unnamed_addr #0 !dbg !573 {
  tail call void @__quicklistInsertNode(%struct.quicklist* %0, %struct.quicklistNode* %1, %struct.quicklistNode* %2, i32 0) #6, !dbg !583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  ret void, !dbg !584
}

; Function Attrs: noredzone nounwind
define dso_local void @_quicklistInsertNodeAfter(%struct.quicklist* nocapture, %struct.quicklistNode*, %struct.quicklistNode*) local_unnamed_addr #0 !dbg !585 {
  tail call void @__quicklistInsertNode(%struct.quicklist* %0, %struct.quicklistNode* %1, %struct.quicklistNode* %2, i32 1) #6, !dbg !593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  ret void, !dbg !594
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_quicklistNodeSizeMeetsOptimizationRequirement(i64, i32) local_unnamed_addr #0 !dbg !595 {
  %3 = icmp sgt i32 %1, -1, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  br i1 %3, label %14, label %4, !dbg !607

; <label>:4:                                      ; preds = %2
  %5 = icmp ugt i32 %1, -6, !dbg !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !610
  br i1 %5, label %6, label %13, !dbg !610

; <label>:6:                                      ; preds = %4
  %7 = xor i32 %1, -1, !dbg !611
  %8 = sext i32 %7 to i64, !dbg !612
  %9 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %8, !dbg !614
  %10 = load i64, i64* %9, align 8, !dbg !614, !tbaa !76
  %11 = icmp uge i64 %10, %0, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  %12 = zext i1 %11 to i32, !dbg !621
  br label %14, !dbg !621

; <label>:13:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  br label %14, !dbg !623

; <label>:14:                                     ; preds = %13, %6, %2
  %15 = phi i32 [ 0, %2 ], [ 0, %13 ], [ %12, %6 ], !dbg !619
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  ret i32 %15, !dbg !625
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_quicklistNodeAllowInsert(%struct.quicklistNode* readonly, i32, i64) local_unnamed_addr #0 !dbg !626 {
  %4 = icmp eq %struct.quicklistNode* %0, null, !dbg !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  br i1 %4, label %46, label %5, !dbg !640, !prof !641

; <label>:5:                                      ; preds = %3
  %6 = icmp ult i64 %2, 254, !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !644
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %7 = select i1 %6, i32 1, i32 5, !dbg !645
  %8 = icmp ult i64 %2, 64, !dbg !647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  br i1 %8, label %9, label %11, !dbg !649

; <label>:9:                                      ; preds = %5
  %10 = add nuw nsw i32 %7, 1, !dbg !650
  br label %17, !dbg !651

; <label>:11:                                     ; preds = %5
  %12 = icmp ult i64 %2, 16384, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  br i1 %12, label %13, label %15, !dbg !654, !prof !655

; <label>:13:                                     ; preds = %11
  %14 = or i32 %7, 2, !dbg !656
  br label %17, !dbg !657

; <label>:15:                                     ; preds = %11
  %16 = add nuw nsw i32 %7, 5, !dbg !658
  br label %17

; <label>:17:                                     ; preds = %13, %15, %9
  %18 = phi i32 [ %10, %9 ], [ %14, %13 ], [ %16, %15 ], !dbg !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %19 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 3, !dbg !660
  %20 = load i32, i32* %19, align 8, !dbg !660, !tbaa !208
  %21 = trunc i64 %2 to i32, !dbg !661
  %22 = add i32 %18, %21, !dbg !661
  %23 = add i32 %22, %20, !dbg !661
  %24 = zext i32 %23 to i64, !dbg !663
  %25 = icmp sgt i32 %1, -1, !dbg !668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !669
  br i1 %25, label %36, label %26, !dbg !669

; <label>:26:                                     ; preds = %17
  %27 = icmp ugt i32 %1, -6, !dbg !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  br i1 %27, label %29, label %28, !dbg !671

; <label>:28:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  br label %36, !dbg !673

; <label>:29:                                     ; preds = %26
  %30 = xor i32 %1, -1, !dbg !674
  %31 = sext i32 %30 to i64, !dbg !675
  %32 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %31, !dbg !677
  %33 = load i64, i64* %32, align 8, !dbg !677, !tbaa !76
  %34 = icmp ult i64 %33, %24, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !680
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  br i1 %34, label %37, label %35, !dbg !673, !prof !641

; <label>:35:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  br label %46, !dbg !682

; <label>:36:                                     ; preds = %17, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  br label %37, !dbg !683

; <label>:37:                                     ; preds = %36, %29
  %38 = icmp ult i32 %23, 8193, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  br i1 %38, label %40, label %39, !dbg !685

; <label>:39:                                     ; preds = %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  br label %46, !dbg !686

; <label>:40:                                     ; preds = %37
  %41 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 4, !dbg !687
  %42 = load i32, i32* %41, align 4, !dbg !687
  %43 = and i32 %42, 65535, !dbg !687
  %44 = icmp slt i32 %43, %1, !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  %45 = zext i1 %44 to i32, !dbg !692
  br label %46, !dbg !692

; <label>:46:                                     ; preds = %35, %39, %40, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %35 ], [ 0, %39 ], [ %45, %40 ], !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  ret i32 %47, !dbg !694
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_quicklistNodeAllowMerge(%struct.quicklistNode* readonly, %struct.quicklistNode* readonly, i32) local_unnamed_addr #0 !dbg !695 {
  %4 = icmp ne %struct.quicklistNode* %0, null, !dbg !706
  %5 = icmp ne %struct.quicklistNode* %1, null, !dbg !708
  %6 = and i1 %4, %5, !dbg !709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !709
  br i1 %6, label %7, label %40, !dbg !709

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 3, !dbg !710
  %9 = load i32, i32* %8, align 8, !dbg !710, !tbaa !208
  %10 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 3, !dbg !711
  %11 = load i32, i32* %10, align 8, !dbg !711, !tbaa !208
  %12 = add i32 %9, -11, !dbg !712
  %13 = add i32 %12, %11, !dbg !713
  %14 = zext i32 %13 to i64, !dbg !715
  %15 = icmp sgt i32 %2, -1, !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  br i1 %15, label %26, label %16, !dbg !721

; <label>:16:                                     ; preds = %7
  %17 = icmp ugt i32 %2, -6, !dbg !722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  br i1 %17, label %19, label %18, !dbg !723

; <label>:18:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !724
  br label %26, !dbg !725

; <label>:19:                                     ; preds = %16
  %20 = xor i32 %2, -1, !dbg !726
  %21 = sext i32 %20 to i64, !dbg !727
  %22 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %21, !dbg !729
  %23 = load i64, i64* %22, align 8, !dbg !729, !tbaa !76
  %24 = icmp ult i64 %23, %14, !dbg !730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  br i1 %24, label %27, label %25, !dbg !725, !prof !641

; <label>:25:                                     ; preds = %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !734
  br label %40, !dbg !734

; <label>:26:                                     ; preds = %7, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  br label %27, !dbg !735

; <label>:27:                                     ; preds = %26, %19
  %28 = icmp ult i32 %13, 8193, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  br i1 %28, label %30, label %29, !dbg !737

; <label>:29:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  br label %40, !dbg !738

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 4, !dbg !739
  %32 = load i32, i32* %31, align 4, !dbg !739
  %33 = and i32 %32, 65535, !dbg !739
  %34 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !741
  %35 = load i32, i32* %34, align 4, !dbg !741
  %36 = and i32 %35, 65535, !dbg !741
  %37 = add nuw nsw i32 %36, %33, !dbg !742
  %38 = icmp sle i32 %37, %2, !dbg !743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !745
  %39 = zext i1 %38 to i32, !dbg !746
  br label %40, !dbg !746

; <label>:40:                                     ; preds = %25, %29, %30, %3
  %41 = phi i32 [ 0, %3 ], [ 1, %25 ], [ 0, %29 ], [ %39, %30 ], !dbg !747
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  ret i32 %41, !dbg !748
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistPushHead(%struct.quicklist* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !749 {
  %4 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !763
  %5 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !763, !tbaa !234
  %6 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !765
  %7 = load i32, i32* %6, align 8, !dbg !765
  %8 = shl i32 %7, 16, !dbg !765
  %9 = ashr exact i32 %8, 16, !dbg !765
  %10 = tail call i32 @_quicklistNodeAllowInsert(%struct.quicklistNode* %5, i32 %9, i64 %2) #6, !dbg !765
  %11 = icmp eq i32 %10, 0, !dbg !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  br i1 %11, label %24, label %12, !dbg !766, !prof !641

; <label>:12:                                     ; preds = %3
  %13 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !767, !tbaa !234
  %14 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %13, i64 0, i32 2, !dbg !769
  %15 = load i8*, i8** %14, align 8, !dbg !769, !tbaa !201
  %16 = trunc i64 %2 to i32, !dbg !770
  %17 = tail call i8* @ziplistPush(i8* %15, i8* %1, i32 %16, i32 0) #4, !dbg !771
  %18 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !772, !tbaa !234
  %19 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %18, i64 0, i32 2, !dbg !773
  store i8* %17, i8** %19, align 8, !dbg !774, !tbaa !201
  %20 = tail call i64 @ziplistBlobLen(i8* %17) #4, !dbg !775
  %21 = trunc i64 %20 to i32, !dbg !775
  %22 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !775, !tbaa !234
  %23 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %22, i64 0, i32 3, !dbg !775
  store i32 %21, i32* %23, align 8, !dbg !775, !tbaa !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !777
  br label %44, !dbg !777

; <label>:24:                                     ; preds = %3
  %25 = tail call i8* @zmalloc(i64 32) #4, !dbg !778
  %26 = bitcast i8* %25 to %struct.quicklistNode*, !dbg !778
  %27 = getelementptr inbounds i8, i8* %25, i64 16, !dbg !781
  %28 = bitcast i8* %27 to i8**, !dbg !781
  store i8* null, i8** %28, align 8, !dbg !782, !tbaa !201
  %29 = getelementptr inbounds i8, i8* %25, i64 28, !dbg !783
  %30 = bitcast i8* %29 to i32*, !dbg !783
  %31 = load i32, i32* %30, align 4, !dbg !784
  %32 = getelementptr inbounds i8, i8* %25, i64 24, !dbg !785
  %33 = bitcast i8* %32 to i32*, !dbg !785
  store i32 0, i32* %33, align 8, !dbg !786, !tbaa !208
  %34 = bitcast i8* %25 to <2 x %struct.quicklistNode*>*, !dbg !787
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %34, align 8, !dbg !787, !tbaa !70
  %35 = and i32 %31, -2097152, !dbg !788
  %36 = or i32 %35, 589824, !dbg !788
  store i32 %36, i32* %30, align 4, !dbg !788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !789
  %37 = tail call i8* @ziplistNew() #4, !dbg !791
  %38 = trunc i64 %2 to i32, !dbg !792
  %39 = tail call i8* @ziplistPush(i8* %37, i8* %1, i32 %38, i32 0) #4, !dbg !793
  store i8* %39, i8** %28, align 8, !dbg !794, !tbaa !201
  %40 = tail call i64 @ziplistBlobLen(i8* %39) #4, !dbg !795
  %41 = trunc i64 %40 to i32, !dbg !795
  store i32 %41, i32* %33, align 8, !dbg !795, !tbaa !208
  %42 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !797, !tbaa !234
  tail call void @__quicklistInsertNode(%struct.quicklist* nonnull %0, %struct.quicklistNode* %42, %struct.quicklistNode* %26, i32 0) #4, !dbg !802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !803
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %43 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !804, !tbaa !234
  br label %44

; <label>:44:                                     ; preds = %24, %12
  %45 = phi %struct.quicklistNode* [ %43, %24 ], [ %22, %12 ], !dbg !804
  %46 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !805
  %47 = load i64, i64* %46, align 8, !dbg !806, !tbaa !221
  %48 = add i64 %47, 1, !dbg !806
  store i64 %48, i64* %46, align 8, !dbg !806, !tbaa !221
  %49 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %45, i64 0, i32 4, !dbg !807
  %50 = load i32, i32* %49, align 4, !dbg !808
  %51 = add i32 %50, 1, !dbg !808
  %52 = and i32 %51, 65535, !dbg !808
  %53 = and i32 %50, -65536, !dbg !808
  %54 = or i32 %52, %53, !dbg !808
  store i32 %54, i32* %49, align 4, !dbg !808
  %55 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !809, !tbaa !234
  %56 = icmp ne %struct.quicklistNode* %5, %55, !dbg !810
  %57 = zext i1 %56 to i32, !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  ret i32 %57, !dbg !811
}

; Function Attrs: noredzone
declare dso_local i8* @ziplistPush(i8*, i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @ziplistBlobLen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @ziplistNew() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistPushTail(%struct.quicklist* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !812 {
  %4 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !824
  %5 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !824, !tbaa !375
  %6 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !826
  %7 = load i32, i32* %6, align 8, !dbg !826
  %8 = shl i32 %7, 16, !dbg !826
  %9 = ashr exact i32 %8, 16, !dbg !826
  %10 = tail call i32 @_quicklistNodeAllowInsert(%struct.quicklistNode* %5, i32 %9, i64 %2) #6, !dbg !826
  %11 = icmp eq i32 %10, 0, !dbg !826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !827
  br i1 %11, label %24, label %12, !dbg !827, !prof !641

; <label>:12:                                     ; preds = %3
  %13 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !828, !tbaa !375
  %14 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %13, i64 0, i32 2, !dbg !830
  %15 = load i8*, i8** %14, align 8, !dbg !830, !tbaa !201
  %16 = trunc i64 %2 to i32, !dbg !831
  %17 = tail call i8* @ziplistPush(i8* %15, i8* %1, i32 %16, i32 1) #4, !dbg !832
  %18 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !833, !tbaa !375
  %19 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %18, i64 0, i32 2, !dbg !834
  store i8* %17, i8** %19, align 8, !dbg !835, !tbaa !201
  %20 = tail call i64 @ziplistBlobLen(i8* %17) #4, !dbg !836
  %21 = trunc i64 %20 to i32, !dbg !836
  %22 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !836, !tbaa !375
  %23 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %22, i64 0, i32 3, !dbg !836
  store i32 %21, i32* %23, align 8, !dbg !836, !tbaa !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !838
  br label %44, !dbg !838

; <label>:24:                                     ; preds = %3
  %25 = tail call i8* @zmalloc(i64 32) #4, !dbg !839
  %26 = bitcast i8* %25 to %struct.quicklistNode*, !dbg !839
  %27 = getelementptr inbounds i8, i8* %25, i64 16, !dbg !842
  %28 = bitcast i8* %27 to i8**, !dbg !842
  store i8* null, i8** %28, align 8, !dbg !843, !tbaa !201
  %29 = getelementptr inbounds i8, i8* %25, i64 28, !dbg !844
  %30 = bitcast i8* %29 to i32*, !dbg !844
  %31 = load i32, i32* %30, align 4, !dbg !845
  %32 = getelementptr inbounds i8, i8* %25, i64 24, !dbg !846
  %33 = bitcast i8* %32 to i32*, !dbg !846
  store i32 0, i32* %33, align 8, !dbg !847, !tbaa !208
  %34 = bitcast i8* %25 to <2 x %struct.quicklistNode*>*, !dbg !848
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %34, align 8, !dbg !848, !tbaa !70
  %35 = and i32 %31, -2097152, !dbg !849
  %36 = or i32 %35, 589824, !dbg !849
  store i32 %36, i32* %30, align 4, !dbg !849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !850
  %37 = tail call i8* @ziplistNew() #4, !dbg !852
  %38 = trunc i64 %2 to i32, !dbg !853
  %39 = tail call i8* @ziplistPush(i8* %37, i8* %1, i32 %38, i32 1) #4, !dbg !854
  store i8* %39, i8** %28, align 8, !dbg !855, !tbaa !201
  %40 = tail call i64 @ziplistBlobLen(i8* %39) #4, !dbg !856
  %41 = trunc i64 %40 to i32, !dbg !856
  store i32 %41, i32* %33, align 8, !dbg !856, !tbaa !208
  %42 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !858, !tbaa !375
  tail call void @__quicklistInsertNode(%struct.quicklist* nonnull %0, %struct.quicklistNode* %42, %struct.quicklistNode* %26, i32 1) #4, !dbg !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %43 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !865, !tbaa !375
  br label %44

; <label>:44:                                     ; preds = %24, %12
  %45 = phi %struct.quicklistNode* [ %43, %24 ], [ %22, %12 ], !dbg !865
  %46 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !866
  %47 = load i64, i64* %46, align 8, !dbg !867, !tbaa !221
  %48 = add i64 %47, 1, !dbg !867
  store i64 %48, i64* %46, align 8, !dbg !867, !tbaa !221
  %49 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %45, i64 0, i32 4, !dbg !868
  %50 = load i32, i32* %49, align 4, !dbg !869
  %51 = add i32 %50, 1, !dbg !869
  %52 = and i32 %51, 65535, !dbg !869
  %53 = and i32 %50, -65536, !dbg !869
  %54 = or i32 %52, %53, !dbg !869
  store i32 %54, i32* %49, align 4, !dbg !869
  %55 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !870, !tbaa !375
  %56 = icmp ne %struct.quicklistNode* %5, %55, !dbg !871
  %57 = zext i1 %56 to i32, !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  ret i32 %57, !dbg !872
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistAppendZiplist(%struct.quicklist* nocapture, i8*) local_unnamed_addr #0 !dbg !873 {
  %3 = tail call i8* @zmalloc(i64 32) #4, !dbg !882
  %4 = bitcast i8* %3 to %struct.quicklistNode*, !dbg !882
  %5 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !885
  %6 = bitcast i8* %5 to i8**, !dbg !885
  %7 = getelementptr inbounds i8, i8* %3, i64 28, !dbg !886
  %8 = bitcast i8* %7 to i32*, !dbg !886
  %9 = load i32, i32* %8, align 4, !dbg !887
  %10 = getelementptr inbounds i8, i8* %3, i64 24, !dbg !888
  %11 = bitcast i8* %10 to i32*, !dbg !888
  store i32 0, i32* %11, align 8, !dbg !889, !tbaa !208
  %12 = bitcast i8* %3 to <2 x %struct.quicklistNode*>*, !dbg !890
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %12, align 8, !dbg !890, !tbaa !70
  %13 = and i32 %9, -2097152, !dbg !891
  %14 = or i32 %13, 589824, !dbg !891
  store i32 %14, i32* %8, align 4, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !892
  store i8* %1, i8** %6, align 8, !dbg !894, !tbaa !201
  %15 = tail call i32 @ziplistLen(i8* %1) #4, !dbg !895
  %16 = load i32, i32* %8, align 4, !dbg !896
  %17 = and i32 %15, 65535, !dbg !896
  %18 = and i32 %16, -65536, !dbg !896
  %19 = or i32 %18, %17, !dbg !896
  store i32 %19, i32* %8, align 4, !dbg !896
  %20 = tail call i64 @ziplistBlobLen(i8* %1) #4, !dbg !897
  %21 = trunc i64 %20 to i32, !dbg !897
  store i32 %21, i32* %11, align 8, !dbg !898, !tbaa !208
  %22 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !899
  %23 = load %struct.quicklistNode*, %struct.quicklistNode** %22, align 8, !dbg !899, !tbaa !375
  tail call void @__quicklistInsertNode(%struct.quicklist* %0, %struct.quicklistNode* %23, %struct.quicklistNode* %4, i32 1) #4, !dbg !904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !905
  %24 = load i32, i32* %8, align 4, !dbg !906
  %25 = and i32 %24, 65535, !dbg !906
  %26 = zext i32 %25 to i64, !dbg !907
  %27 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !908
  %28 = load i64, i64* %27, align 8, !dbg !909, !tbaa !221
  %29 = add i64 %28, %26, !dbg !909
  store i64 %29, i64* %27, align 8, !dbg !909, !tbaa !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !910
  ret void, !dbg !910
}

; Function Attrs: noredzone
declare dso_local i32 @ziplistLen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklist* @quicklistAppendValuesFromZiplist(%struct.quicklist* returned, i8*) local_unnamed_addr #0 !dbg !911 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [32 x i8], align 16
  %7 = bitcast i8** %3 to i8*, !dbg !928
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !928
  %8 = bitcast i32* %4 to i8*, !dbg !929
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #5, !dbg !929
  %9 = bitcast i64* %5 to i8*, !dbg !930
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #5, !dbg !930
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !931
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %10) #5, !dbg !931
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 32, i1 false), !dbg !932
  %11 = tail call i8* @ziplistIndex(i8* %1, i32 0) #4, !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  %12 = call i32 @ziplistGet(i8* %11, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #4, !dbg !939
  %13 = icmp eq i32 %12, 0, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  br i1 %13, label %31, label %14, !dbg !935

; <label>:14:                                     ; preds = %2, %23
  %15 = phi i8* [ %28, %23 ], [ %11, %2 ]
  %16 = load i8*, i8** %3, align 8, !dbg !940, !tbaa !70
  %17 = icmp eq i8* %16, null, !dbg !940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !943
  br i1 %17, label %20, label %18, !dbg !943

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %4, align 4, !dbg !944, !tbaa !280
  br label %23, !dbg !943

; <label>:20:                                     ; preds = %14
  %21 = load i64, i64* %5, align 8, !dbg !945, !tbaa !947
  %22 = call i32 @ll2string(i8* nonnull %10, i64 32, i64 %21) #4, !dbg !949
  store i32 %22, i32* %4, align 4, !dbg !950, !tbaa !280
  store i8* %10, i8** %3, align 8, !dbg !951, !tbaa !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  br label %23, !dbg !952

; <label>:23:                                     ; preds = %18, %20
  %24 = phi i32 [ %19, %18 ], [ %22, %20 ], !dbg !944
  %25 = phi i8* [ %16, %18 ], [ %10, %20 ], !dbg !953
  %26 = zext i32 %24 to i64, !dbg !944
  %27 = call i32 @quicklistPushTail(%struct.quicklist* %0, i8* %25, i64 %26) #6, !dbg !954
  %28 = call i8* @ziplistNext(i8* %1, i8* %15) #4, !dbg !955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  %29 = call i32 @ziplistGet(i8* %28, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #4, !dbg !939
  %30 = icmp eq i32 %29, 0, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  br i1 %30, label %31, label %14, !dbg !935, !llvm.loop !956

; <label>:31:                                     ; preds = %23, %2
  call void @zfree(i8* %1) #4, !dbg !958
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #5, !dbg !959
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #5, !dbg !959
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #5, !dbg !959
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  ret %struct.quicklist* %0, !dbg !960
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
define dso_local %struct.quicklist* @quicklistCreateFromZiplist(i32, i32, i8*) local_unnamed_addr #0 !dbg !961 {
  %4 = tail call i8* @zmalloc(i64 40) #4, !dbg !974
  %5 = bitcast i8* %4 to %struct.quicklist*, !dbg !974
  %6 = bitcast i8* %4 to <2 x %struct.quicklistNode*>*, !dbg !977
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %6, align 8, !dbg !977, !tbaa !70
  %7 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !978
  %8 = bitcast i8* %7 to <2 x i64>*, !dbg !979
  store <2 x i64> zeroinitializer, <2 x i64>* %8, align 8, !dbg !979, !tbaa !76
  %9 = getelementptr inbounds i8, i8* %4, i64 32, !dbg !980
  %10 = bitcast i8* %9 to i32*, !dbg !980
  store i32 65534, i32* %10, align 8, !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  %11 = icmp sgt i32 %0, 32768, !dbg !991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !992
  br i1 %11, label %14, label %12, !dbg !992

; <label>:12:                                     ; preds = %3
  %13 = icmp slt i32 %0, -5, !dbg !993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !994
  br i1 %13, label %14, label %16, !dbg !994

; <label>:14:                                     ; preds = %12, %3
  %15 = phi i32 [ 32768, %3 ], [ -5, %12 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !995
  br label %16, !dbg !996

; <label>:16:                                     ; preds = %14, %12
  %17 = phi i32 [ %0, %12 ], [ %15, %14 ]
  %18 = and i32 %17, 65535, !dbg !996
  store i32 %18, i32* %10, align 8, !dbg !996
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  %19 = icmp sgt i32 %1, 65536, !dbg !1001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1002
  br i1 %19, label %22, label %20, !dbg !1002

; <label>:20:                                     ; preds = %16
  %21 = icmp slt i32 %1, 0, !dbg !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1004
  br i1 %21, label %22, label %24, !dbg !1004

; <label>:22:                                     ; preds = %20, %16
  %23 = phi i32 [ 65536, %16 ], [ 0, %20 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !995
  br label %24, !dbg !1005

; <label>:24:                                     ; preds = %22, %20
  %25 = phi i32 [ %1, %20 ], [ %23, %22 ]
  %26 = shl i32 %25, 16, !dbg !1005
  %27 = or i32 %26, %18, !dbg !1005
  store i32 %27, i32* %10, align 8, !dbg !1005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1008
  %28 = tail call %struct.quicklist* @quicklistAppendValuesFromZiplist(%struct.quicklist* nonnull %5, i8* %2) #6, !dbg !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1010
  ret %struct.quicklist* %28, !dbg !1010
}

; Function Attrs: noredzone nounwind
define dso_local void @__quicklistDelNode(%struct.quicklist* nocapture, %struct.quicklistNode*) local_unnamed_addr #0 !dbg !1011 {
  %3 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 1, !dbg !1019
  %4 = load %struct.quicklistNode*, %struct.quicklistNode** %3, align 8, !dbg !1019, !tbaa !244
  %5 = icmp eq %struct.quicklistNode* %4, null, !dbg !1021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  %6 = ptrtoint %struct.quicklistNode* %4 to i64, !dbg !1022
  br i1 %5, label %11, label %7, !dbg !1022

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.quicklistNode* %1 to i64*, !dbg !1023
  %9 = load i64, i64* %8, align 8, !dbg !1023, !tbaa !450
  %10 = bitcast %struct.quicklistNode* %4 to i64*, !dbg !1024
  store i64 %9, i64* %10, align 8, !dbg !1024, !tbaa !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1025
  br label %11, !dbg !1025

; <label>:11:                                     ; preds = %2, %7
  %12 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 0, !dbg !1026
  %13 = load %struct.quicklistNode*, %struct.quicklistNode** %12, align 8, !dbg !1026, !tbaa !450
  %14 = icmp eq %struct.quicklistNode* %13, null, !dbg !1028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  %15 = ptrtoint %struct.quicklistNode* %13 to i64, !dbg !1029
  br i1 %14, label %19, label %16, !dbg !1029

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %13, i64 0, i32 1, !dbg !1030
  %18 = bitcast %struct.quicklistNode** %17 to i64*, !dbg !1031
  store i64 %6, i64* %18, align 8, !dbg !1031, !tbaa !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br label %19, !dbg !1032

; <label>:19:                                     ; preds = %11, %16
  %20 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !1033
  %21 = load %struct.quicklistNode*, %struct.quicklistNode** %20, align 8, !dbg !1033, !tbaa !375
  %22 = icmp eq %struct.quicklistNode* %21, %1, !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  br i1 %22, label %23, label %25, !dbg !1036

; <label>:23:                                     ; preds = %19
  %24 = bitcast %struct.quicklistNode** %20 to i64*, !dbg !1037
  store i64 %15, i64* %24, align 8, !dbg !1037, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  br label %25, !dbg !1039

; <label>:25:                                     ; preds = %23, %19
  %26 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !1040
  %27 = load %struct.quicklistNode*, %struct.quicklistNode** %26, align 8, !dbg !1040, !tbaa !234
  %28 = icmp eq %struct.quicklistNode* %27, %1, !dbg !1042
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  br i1 %28, label %29, label %33, !dbg !1043

; <label>:29:                                     ; preds = %25
  %30 = bitcast %struct.quicklistNode** %3 to i64*, !dbg !1044
  %31 = load i64, i64* %30, align 8, !dbg !1044, !tbaa !244
  %32 = bitcast %struct.quicklist* %0 to i64*, !dbg !1046
  store i64 %31, i64* %32, align 8, !dbg !1046, !tbaa !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1047
  br label %33, !dbg !1047

; <label>:33:                                     ; preds = %29, %25
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* null) #6, !dbg !1048
  %34 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !1049
  %35 = load i32, i32* %34, align 4, !dbg !1049
  %36 = and i32 %35, 65535, !dbg !1049
  %37 = zext i32 %36 to i64, !dbg !1050
  %38 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !1051
  %39 = load i64, i64* %38, align 8, !dbg !1052, !tbaa !221
  %40 = sub i64 %39, %37, !dbg !1052
  store i64 %40, i64* %38, align 8, !dbg !1052, !tbaa !221
  %41 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 2, !dbg !1053
  %42 = load i8*, i8** %41, align 8, !dbg !1053, !tbaa !201
  tail call void @zfree(i8* %42) #4, !dbg !1054
  %43 = bitcast %struct.quicklistNode* %1 to i8*, !dbg !1055
  tail call void @zfree(i8* %43) #4, !dbg !1056
  %44 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !1057
  %45 = load i64, i64* %44, align 8, !dbg !1058, !tbaa !237
  %46 = add i64 %45, -1, !dbg !1058
  store i64 %46, i64* %44, align 8, !dbg !1058, !tbaa !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  ret void, !dbg !1059
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistDelIndex(%struct.quicklist* nocapture, %struct.quicklistNode*, i8**) local_unnamed_addr #0 !dbg !1060 {
  %4 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 2, !dbg !1073
  %5 = load i8*, i8** %4, align 8, !dbg !1073, !tbaa !201
  %6 = tail call i8* @ziplistDelete(i8* %5, i8** %2) #4, !dbg !1074
  store i8* %6, i8** %4, align 8, !dbg !1075, !tbaa !201
  %7 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !1076
  %8 = load i32, i32* %7, align 4, !dbg !1077
  %9 = add i32 %8, 65535, !dbg !1077
  %10 = and i32 %9, 65535, !dbg !1077
  %11 = and i32 %8, -65536, !dbg !1077
  %12 = or i32 %10, %11, !dbg !1077
  store i32 %12, i32* %7, align 4, !dbg !1077
  %13 = icmp eq i32 %10, 0, !dbg !1078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1080
  br i1 %13, label %14, label %15, !dbg !1080

; <label>:14:                                     ; preds = %3
  tail call void @__quicklistDelNode(%struct.quicklist* %0, %struct.quicklistNode* nonnull %1) #6, !dbg !1081
  br label %19, !dbg !1083

; <label>:15:                                     ; preds = %3
  %16 = tail call i64 @ziplistBlobLen(i8* %6) #4, !dbg !1084
  %17 = trunc i64 %16 to i32, !dbg !1084
  %18 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 3, !dbg !1084
  store i32 %17, i32* %18, align 8, !dbg !1084, !tbaa !208
  br label %19

; <label>:19:                                     ; preds = %15, %14
  %20 = phi i32 [ 1, %14 ], [ 0, %15 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %21 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !1087
  %22 = load i64, i64* %21, align 8, !dbg !1088, !tbaa !221
  %23 = add i64 %22, -1, !dbg !1088
  store i64 %23, i64* %21, align 8, !dbg !1088, !tbaa !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1089
  ret i32 %20, !dbg !1089
}

; Function Attrs: noredzone
declare dso_local i8* @ziplistDelete(i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @quicklistDelEntry(%struct.quicklistIter* nocapture, %struct.quicklistEntry*) local_unnamed_addr #0 !dbg !1090 {
  %3 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 1, !dbg !1122
  %4 = load %struct.quicklistNode*, %struct.quicklistNode** %3, align 8, !dbg !1122, !tbaa !1123
  %5 = bitcast %struct.quicklistNode* %4 to i64*, !dbg !1125
  %6 = load i64, i64* %5, align 8, !dbg !1125, !tbaa !450
  %7 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %4, i64 0, i32 1, !dbg !1127
  %8 = bitcast %struct.quicklistNode** %7 to i64*, !dbg !1127
  %9 = load i64, i64* %8, align 8, !dbg !1127, !tbaa !244
  %10 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 0, !dbg !1129
  %11 = load %struct.quicklist*, %struct.quicklist** %10, align 8, !dbg !1129, !tbaa !1130
  %12 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 2, !dbg !1131
  %13 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %4, i64 0, i32 2, !dbg !1137
  %14 = load i8*, i8** %13, align 8, !dbg !1137, !tbaa !201
  %15 = tail call i8* @ziplistDelete(i8* %14, i8** nonnull %12) #4, !dbg !1138
  store i8* %15, i8** %13, align 8, !dbg !1139, !tbaa !201
  %16 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %4, i64 0, i32 4, !dbg !1140
  %17 = load i32, i32* %16, align 4, !dbg !1141
  %18 = add i32 %17, 65535, !dbg !1141
  %19 = and i32 %18, 65535, !dbg !1141
  %20 = and i32 %17, -65536, !dbg !1141
  %21 = or i32 %19, %20, !dbg !1141
  store i32 %21, i32* %16, align 4, !dbg !1141
  %22 = icmp eq i32 %19, 0, !dbg !1142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1143
  br i1 %22, label %23, label %31, !dbg !1143

; <label>:23:                                     ; preds = %2
  tail call void @__quicklistDelNode(%struct.quicklist* %11, %struct.quicklistNode* nonnull %4) #4, !dbg !1144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1145
  %24 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %11, i64 0, i32 2, !dbg !1146
  %25 = load i64, i64* %24, align 8, !dbg !1147, !tbaa !221
  %26 = add i64 %25, -1, !dbg !1147
  store i64 %26, i64* %24, align 8, !dbg !1147, !tbaa !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  %27 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 2, !dbg !1149
  store i8* null, i8** %27, align 8, !dbg !1150, !tbaa !1151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1153
  %28 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 4, !dbg !1154
  %29 = load i32, i32* %28, align 8, !dbg !1154, !tbaa !1158
  %30 = icmp eq i32 %29, 0, !dbg !1159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1160
  br i1 %30, label %39, label %43, !dbg !1160

; <label>:31:                                     ; preds = %2
  %32 = tail call i64 @ziplistBlobLen(i8* %15) #4, !dbg !1161
  %33 = trunc i64 %32 to i32, !dbg !1161
  %34 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %4, i64 0, i32 3, !dbg !1161
  store i32 %33, i32* %34, align 8, !dbg !1161, !tbaa !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %35 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %11, i64 0, i32 2, !dbg !1146
  %36 = load i64, i64* %35, align 8, !dbg !1147, !tbaa !221
  %37 = add i64 %36, -1, !dbg !1147
  store i64 %37, i64* %35, align 8, !dbg !1147, !tbaa !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  %38 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 2, !dbg !1149
  store i8* null, i8** %38, align 8, !dbg !1150, !tbaa !1151
  br label %49, !dbg !1153

; <label>:39:                                     ; preds = %23
  %40 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 1, !dbg !1162
  %41 = bitcast %struct.quicklistNode** %40 to i64*, !dbg !1164
  store i64 %9, i64* %41, align 8, !dbg !1164, !tbaa !1165
  %42 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 3, !dbg !1166
  store i64 0, i64* %42, align 8, !dbg !1167, !tbaa !1168
  br label %49, !dbg !1169

; <label>:43:                                     ; preds = %23
  %44 = icmp eq i32 %29, 1, !dbg !1170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  br i1 %44, label %45, label %50, !dbg !1172

; <label>:45:                                     ; preds = %43
  %46 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 1, !dbg !1173
  %47 = bitcast %struct.quicklistNode** %46 to i64*, !dbg !1175
  store i64 %6, i64* %47, align 8, !dbg !1175, !tbaa !1165
  %48 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 3, !dbg !1176
  store i64 -1, i64* %48, align 8, !dbg !1177, !tbaa !1168
  br label %49, !dbg !1178

; <label>:49:                                     ; preds = %45, %39, %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1179
  br label %50, !dbg !1180

; <label>:50:                                     ; preds = %49, %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1180
  ret void, !dbg !1180
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistReplaceAtIndex(%struct.quicklist*, i64, i8*, i32) local_unnamed_addr #0 !dbg !1181 {
  %5 = alloca %struct.quicklistEntry, align 8
  %6 = bitcast %struct.quicklistEntry* %5 to i8*, !dbg !1194
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %6) #5, !dbg !1194
  %7 = call i32 @quicklistIndex(%struct.quicklist* %0, i64 %1, %struct.quicklistEntry* nonnull %5) #6, !dbg !1196
  %8 = icmp eq i32 %7, 0, !dbg !1196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  br i1 %8, label %38, label %9, !dbg !1198, !prof !641

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %5, i64 0, i32 1, !dbg !1199
  %11 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !1199, !tbaa !1123
  %12 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !1201
  %13 = load i8*, i8** %12, align 8, !dbg !1201, !tbaa !201
  %14 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %5, i64 0, i32 2, !dbg !1202
  %15 = call i8* @ziplistDelete(i8* %13, i8** nonnull %14) #4, !dbg !1203
  %16 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !1204, !tbaa !1123
  %17 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %16, i64 0, i32 2, !dbg !1205
  store i8* %15, i8** %17, align 8, !dbg !1206, !tbaa !201
  %18 = load i8*, i8** %14, align 8, !dbg !1207, !tbaa !1208
  %19 = call i8* @ziplistInsert(i8* %15, i8* %18, i8* %2, i32 %3) #4, !dbg !1209
  %20 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !1210, !tbaa !1123
  %21 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %20, i64 0, i32 2, !dbg !1211
  store i8* %19, i8** %21, align 8, !dbg !1212, !tbaa !201
  %22 = call i64 @ziplistBlobLen(i8* %19) #4, !dbg !1213
  %23 = trunc i64 %22 to i32, !dbg !1213
  %24 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !1213, !tbaa !1123
  %25 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %24, i64 0, i32 3, !dbg !1213
  store i32 %23, i32* %25, align 8, !dbg !1213, !tbaa !208
  %26 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %24, i64 0, i32 4, !dbg !1215
  %27 = load i32, i32* %26, align 4, !dbg !1215
  %28 = and i32 %27, 1048576, !dbg !1215
  %29 = icmp eq i32 %28, 0, !dbg !1215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  br i1 %29, label %37, label %30, !dbg !1218

; <label>:30:                                     ; preds = %9
  %31 = icmp eq %struct.quicklistNode* %24, null, !dbg !1219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1219
  br i1 %31, label %38, label %32, !dbg !1219

; <label>:32:                                     ; preds = %30
  %33 = and i32 %27, 196608, !dbg !1219
  %34 = icmp eq i32 %33, 65536, !dbg !1219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1222
  br i1 %34, label %35, label %38, !dbg !1222

; <label>:35:                                     ; preds = %32
  %36 = call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %24) #6, !dbg !1223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1223
  br label %38, !dbg !1223

; <label>:37:                                     ; preds = %9
  call void @__quicklistCompress(%struct.quicklist* %0, %struct.quicklistNode* %24) #6, !dbg !1215
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %38

; <label>:38:                                     ; preds = %4, %37, %35, %32, %30
  %39 = phi i32 [ 1, %30 ], [ 1, %32 ], [ 1, %35 ], [ 1, %37 ], [ 0, %4 ], !dbg !1225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %6) #5, !dbg !1228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  ret i32 %39, !dbg !1228
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistIndex(%struct.quicklist*, i64, %struct.quicklistEntry*) local_unnamed_addr #0 !dbg !1229 {
  %4 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 3, !dbg !1246
  %5 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 2, !dbg !1246
  %6 = bitcast i8** %5 to <2 x i8*>*, !dbg !1246
  store <2 x i8*> zeroinitializer, <2 x i8*>* %6, align 8, !dbg !1246, !tbaa !70
  %7 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 4, !dbg !1246
  store i64 -123456789, i64* %7, align 8, !dbg !1246, !tbaa !1248
  %8 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 0, !dbg !1246
  %9 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 1, !dbg !1246
  store %struct.quicklistNode* null, %struct.quicklistNode** %9, align 8, !dbg !1246, !tbaa !1123
  %10 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 6, !dbg !1246
  store i32 123456789, i32* %10, align 4, !dbg !1246, !tbaa !1249
  %11 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 5, !dbg !1246
  store i32 0, i32* %11, align 8, !dbg !1246, !tbaa !1250
  store %struct.quicklist* %0, %struct.quicklist** %8, align 8, !dbg !1251, !tbaa !1130
  %12 = icmp sgt i64 %1, -1, !dbg !1252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1254
  %13 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !1256
  %14 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !1259
  %15 = select i1 %12, %struct.quicklistNode** %13, %struct.quicklistNode** %14, !dbg !1254
  %16 = xor i1 %12, true, !dbg !1254
  %17 = sext i1 %16 to i64, !dbg !1254
  %18 = xor i64 %17, %1, !dbg !1254
  %19 = load %struct.quicklistNode*, %struct.quicklistNode** %15, align 8, !dbg !1261, !tbaa !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %20 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !1262
  %21 = load i64, i64* %20, align 8, !dbg !1262, !tbaa !221
  %22 = icmp ult i64 %18, %21, !dbg !1264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  br i1 %22, label %23, label %85, !dbg !1265

; <label>:23:                                     ; preds = %3
  %24 = icmp eq %struct.quicklistNode* %19, null, !dbg !1266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1267
  br i1 %24, label %40, label %25, !dbg !1267, !prof !641

; <label>:25:                                     ; preds = %23, %34
  %26 = phi i64 [ %32, %34 ], [ 0, %23 ]
  %27 = phi %struct.quicklistNode* [ %38, %34 ], [ %19, %23 ]
  %28 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %27, i64 0, i32 4, !dbg !1268
  %29 = load i32, i32* %28, align 4, !dbg !1268
  %30 = and i32 %29, 65535, !dbg !1268
  %31 = zext i32 %30 to i64, !dbg !1271
  %32 = add i64 %26, %31, !dbg !1272
  %33 = icmp ugt i64 %32, %18, !dbg !1273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1275
  br i1 %33, label %41, label %34, !dbg !1274

; <label>:34:                                     ; preds = %25
  %35 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %27, i64 0, i32 0, !dbg !1277
  %36 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %27, i64 0, i32 1, !dbg !1278
  %37 = select i1 %12, %struct.quicklistNode** %36, %struct.quicklistNode** %35, !dbg !1279
  %38 = load %struct.quicklistNode*, %struct.quicklistNode** %37, align 8, !dbg !1275, !tbaa !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1267
  %39 = icmp eq %struct.quicklistNode* %38, null, !dbg !1266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1267
  br i1 %39, label %40, label %25, !dbg !1267, !prof !641, !llvm.loop !1280

; <label>:40:                                     ; preds = %34, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1282
  br label %85, !dbg !1283

; <label>:41:                                     ; preds = %25
  %42 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %27, i64 0, i32 4, !dbg !1268
  store %struct.quicklistNode* %27, %struct.quicklistNode** %9, align 8, !dbg !1285, !tbaa !1123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1286
  %43 = xor i64 %18, 4294967295, !dbg !1287
  %44 = add i64 %26, %43, !dbg !1290
  %45 = trunc i64 %44 to i32, !dbg !1291
  %46 = sub i64 %18, %26, !dbg !1292
  %47 = trunc i64 %46 to i32, !dbg !1294
  %48 = select i1 %12, i32 %47, i32 %45, !dbg !1286
  %49 = select i1 %12, i32 %47, i32 %45, !dbg !1286
  store i32 %48, i32* %10, align 4, !dbg !1295, !tbaa !1249
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1296
  %50 = load i32, i32* %42, align 4, !dbg !1296
  %51 = and i32 %50, 196608, !dbg !1296
  %52 = icmp eq i32 %51, 131072, !dbg !1296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1299
  br i1 %52, label %53, label %78, !dbg !1299

; <label>:53:                                     ; preds = %41
  %54 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %27, i64 0, i32 3, !dbg !1303
  %55 = load i32, i32* %54, align 8, !dbg !1303, !tbaa !208
  %56 = zext i32 %55 to i64, !dbg !1304
  %57 = tail call i8* @zmalloc(i64 %56) #4, !dbg !1305
  %58 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %27, i64 0, i32 2, !dbg !1307
  %59 = load i8*, i8** %58, align 8, !dbg !1307, !tbaa !201
  %60 = getelementptr inbounds i8, i8* %59, i64 4, !dbg !1309
  %61 = bitcast i8* %59 to i32*, !dbg !1310
  %62 = load i32, i32* %61, align 4, !dbg !1310, !tbaa !280
  %63 = load i32, i32* %54, align 8, !dbg !1311, !tbaa !208
  %64 = tail call i32 @lzf_decompress(i8* nonnull %60, i32 %62, i8* %57, i32 %63) #4, !dbg !1312
  %65 = icmp eq i32 %64, 0, !dbg !1313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1314
  br i1 %65, label %66, label %67, !dbg !1314

; <label>:66:                                     ; preds = %53
  tail call void @zfree(i8* %57) #4, !dbg !1315
  br label %71, !dbg !1316

; <label>:67:                                     ; preds = %53
  tail call void @zfree(i8* %59) #4, !dbg !1317
  store i8* %57, i8** %58, align 8, !dbg !1318, !tbaa !201
  %68 = load i32, i32* %42, align 4, !dbg !1319
  %69 = and i32 %68, -196609, !dbg !1319
  %70 = or i32 %69, 65536, !dbg !1319
  store i32 %70, i32* %42, align 4, !dbg !1319
  br label %71, !dbg !1320

; <label>:71:                                     ; preds = %66, %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  %72 = load %struct.quicklistNode*, %struct.quicklistNode** %9, align 8, !dbg !1323, !tbaa !1123
  %73 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %72, i64 0, i32 4, !dbg !1323
  %74 = load i32, i32* %73, align 4, !dbg !1323
  %75 = or i32 %74, 1048576, !dbg !1323
  store i32 %75, i32* %73, align 4, !dbg !1323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  %76 = load %struct.quicklistNode*, %struct.quicklistNode** %9, align 8, !dbg !1324, !tbaa !1123
  %77 = load i32, i32* %10, align 4, !dbg !1325, !tbaa !1249
  br label %78, !dbg !1323

; <label>:78:                                     ; preds = %71, %41
  %79 = phi i32 [ %77, %71 ], [ %49, %41 ], !dbg !1325
  %80 = phi %struct.quicklistNode* [ %76, %71 ], [ %27, %41 ], !dbg !1324
  %81 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %80, i64 0, i32 2, !dbg !1326
  %82 = load i8*, i8** %81, align 8, !dbg !1326, !tbaa !201
  %83 = tail call i8* @ziplistIndex(i8* %82, i32 %79) #4, !dbg !1327
  store i8* %83, i8** %5, align 8, !dbg !1328, !tbaa !1208
  %84 = tail call i32 @ziplistGet(i8* %83, i8** nonnull %4, i32* nonnull %11, i64* nonnull %7) #4, !dbg !1329
  br label %85, !dbg !1330

; <label>:85:                                     ; preds = %3, %78, %40
  %86 = phi i32 [ 1, %78 ], [ 0, %40 ], [ 0, %3 ], !dbg !1331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1333
  ret i32 %86, !dbg !1333
}

; Function Attrs: noredzone
declare dso_local i8* @ziplistInsert(i8*, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklistNode* @_quicklistZiplistMerge(%struct.quicklist* nocapture, %struct.quicklistNode*, %struct.quicklistNode*) local_unnamed_addr #0 !dbg !1334 {
  %4 = icmp eq %struct.quicklistNode* %1, null, !dbg !1348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  br i1 %4, label %29, label %5, !dbg !1348

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !1348
  %7 = load i32, i32* %6, align 4, !dbg !1348
  %8 = and i32 %7, 196608, !dbg !1348
  %9 = icmp eq i32 %8, 131072, !dbg !1348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1351
  br i1 %9, label %10, label %29, !dbg !1351

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 3, !dbg !1355
  %12 = load i32, i32* %11, align 8, !dbg !1355, !tbaa !208
  %13 = zext i32 %12 to i64, !dbg !1356
  %14 = tail call i8* @zmalloc(i64 %13) #4, !dbg !1357
  %15 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 2, !dbg !1359
  %16 = load i8*, i8** %15, align 8, !dbg !1359, !tbaa !201
  %17 = getelementptr inbounds i8, i8* %16, i64 4, !dbg !1361
  %18 = bitcast i8* %16 to i32*, !dbg !1362
  %19 = load i32, i32* %18, align 4, !dbg !1362, !tbaa !280
  %20 = load i32, i32* %11, align 8, !dbg !1363, !tbaa !208
  %21 = tail call i32 @lzf_decompress(i8* nonnull %17, i32 %19, i8* %14, i32 %20) #4, !dbg !1364
  %22 = icmp eq i32 %21, 0, !dbg !1365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  br i1 %22, label %23, label %24, !dbg !1366

; <label>:23:                                     ; preds = %10
  tail call void @zfree(i8* %14) #4, !dbg !1367
  br label %28, !dbg !1368

; <label>:24:                                     ; preds = %10
  tail call void @zfree(i8* %16) #4, !dbg !1369
  store i8* %14, i8** %15, align 8, !dbg !1370, !tbaa !201
  %25 = load i32, i32* %6, align 4, !dbg !1371
  %26 = and i32 %25, -196609, !dbg !1371
  %27 = or i32 %26, 65536, !dbg !1371
  store i32 %27, i32* %6, align 4, !dbg !1371
  br label %28, !dbg !1372

; <label>:28:                                     ; preds = %23, %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1375
  br label %29, !dbg !1375

; <label>:29:                                     ; preds = %3, %28, %5
  %30 = icmp eq %struct.quicklistNode* %2, null, !dbg !1376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1376
  br i1 %30, label %55, label %31, !dbg !1376

; <label>:31:                                     ; preds = %29
  %32 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 4, !dbg !1376
  %33 = load i32, i32* %32, align 4, !dbg !1376
  %34 = and i32 %33, 196608, !dbg !1376
  %35 = icmp eq i32 %34, 131072, !dbg !1376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1379
  br i1 %35, label %36, label %55, !dbg !1379

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 3, !dbg !1383
  %38 = load i32, i32* %37, align 8, !dbg !1383, !tbaa !208
  %39 = zext i32 %38 to i64, !dbg !1384
  %40 = tail call i8* @zmalloc(i64 %39) #4, !dbg !1385
  %41 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 2, !dbg !1387
  %42 = load i8*, i8** %41, align 8, !dbg !1387, !tbaa !201
  %43 = getelementptr inbounds i8, i8* %42, i64 4, !dbg !1389
  %44 = bitcast i8* %42 to i32*, !dbg !1390
  %45 = load i32, i32* %44, align 4, !dbg !1390, !tbaa !280
  %46 = load i32, i32* %37, align 8, !dbg !1391, !tbaa !208
  %47 = tail call i32 @lzf_decompress(i8* nonnull %43, i32 %45, i8* %40, i32 %46) #4, !dbg !1392
  %48 = icmp eq i32 %47, 0, !dbg !1393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1394
  br i1 %48, label %49, label %50, !dbg !1394

; <label>:49:                                     ; preds = %36
  tail call void @zfree(i8* %40) #4, !dbg !1395
  br label %54, !dbg !1396

; <label>:50:                                     ; preds = %36
  tail call void @zfree(i8* %42) #4, !dbg !1397
  store i8* %40, i8** %41, align 8, !dbg !1398, !tbaa !201
  %51 = load i32, i32* %32, align 4, !dbg !1399
  %52 = and i32 %51, -196609, !dbg !1399
  %53 = or i32 %52, 65536, !dbg !1399
  store i32 %53, i32* %32, align 4, !dbg !1399
  br label %54, !dbg !1400

; <label>:54:                                     ; preds = %49, %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1403
  br label %55, !dbg !1403

; <label>:55:                                     ; preds = %29, %31, %54
  %56 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 2, !dbg !1404
  %57 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 2, !dbg !1405
  %58 = tail call i8* @ziplistMerge(i8** nonnull %56, i8** nonnull %57) #4, !dbg !1406
  %59 = icmp eq i8* %58, null, !dbg !1406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1407
  br i1 %59, label %98, label %60, !dbg !1407

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %56, align 8, !dbg !1410, !tbaa !201
  %62 = icmp eq i8* %61, null, !dbg !1412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1413
  br i1 %62, label %66, label %63, !dbg !1413

; <label>:63:                                     ; preds = %60
  %64 = load i8*, i8** %57, align 8, !dbg !1414, !tbaa !201
  %65 = icmp eq i8* %64, null, !dbg !1416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1417
  br i1 %65, label %66, label %69, !dbg !1417

; <label>:66:                                     ; preds = %63, %60
  %67 = phi %struct.quicklistNode* [ %2, %60 ], [ %1, %63 ]
  %68 = phi %struct.quicklistNode* [ %1, %60 ], [ %2, %63 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1418
  br label %69, !dbg !1420

; <label>:69:                                     ; preds = %66, %63
  %70 = phi %struct.quicklistNode* [ null, %63 ], [ %67, %66 ], !dbg !1418
  %71 = phi %struct.quicklistNode* [ null, %63 ], [ %68, %66 ], !dbg !1418
  %72 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %70, i64 0, i32 2, !dbg !1420
  %73 = load i8*, i8** %72, align 8, !dbg !1420, !tbaa !201
  %74 = tail call i32 @ziplistLen(i8* %73) #4, !dbg !1421
  %75 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %70, i64 0, i32 4, !dbg !1422
  %76 = load i32, i32* %75, align 4, !dbg !1423
  %77 = and i32 %74, 65535, !dbg !1423
  %78 = and i32 %76, -65536, !dbg !1423
  %79 = or i32 %78, %77, !dbg !1423
  store i32 %79, i32* %75, align 4, !dbg !1423
  %80 = load i8*, i8** %72, align 8, !dbg !1424, !tbaa !201
  %81 = tail call i64 @ziplistBlobLen(i8* %80) #4, !dbg !1424
  %82 = trunc i64 %81 to i32, !dbg !1424
  %83 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %70, i64 0, i32 3, !dbg !1424
  store i32 %82, i32* %83, align 8, !dbg !1424, !tbaa !208
  %84 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %71, i64 0, i32 4, !dbg !1426
  %85 = load i32, i32* %84, align 4, !dbg !1427
  %86 = and i32 %85, -65536, !dbg !1427
  store i32 %86, i32* %84, align 4, !dbg !1427
  tail call void @__quicklistDelNode(%struct.quicklist* %0, %struct.quicklistNode* %71) #6, !dbg !1428
  %87 = load i32, i32* %75, align 4, !dbg !1429
  %88 = and i32 %87, 1048576, !dbg !1429
  %89 = icmp eq i32 %88, 0, !dbg !1429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1432
  br i1 %89, label %97, label %90, !dbg !1432

; <label>:90:                                     ; preds = %69
  %91 = icmp eq %struct.quicklistNode* %70, null, !dbg !1433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1433
  br i1 %91, label %98, label %92, !dbg !1433

; <label>:92:                                     ; preds = %90
  %93 = and i32 %87, 196608, !dbg !1433
  %94 = icmp eq i32 %93, 65536, !dbg !1433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  br i1 %94, label %95, label %98, !dbg !1436

; <label>:95:                                     ; preds = %92
  %96 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %70) #6, !dbg !1437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  br label %98, !dbg !1437

; <label>:97:                                     ; preds = %69
  tail call void @__quicklistCompress(%struct.quicklist* %0, %struct.quicklistNode* %70) #6, !dbg !1429
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %98

; <label>:98:                                     ; preds = %55, %97, %95, %92, %90
  %99 = phi %struct.quicklistNode* [ %70, %90 ], [ %70, %92 ], [ %70, %95 ], [ %70, %97 ], [ null, %55 ], !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1441
  ret %struct.quicklistNode* %99, !dbg !1441
}

; Function Attrs: noredzone
declare dso_local i8* @ziplistMerge(i8**, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @_quicklistMergeNodes(%struct.quicklist* nocapture, %struct.quicklistNode*) local_unnamed_addr #0 !dbg !1442 {
  %3 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !1454
  %4 = load i32, i32* %3, align 8, !dbg !1454
  %5 = shl i32 %4, 16, !dbg !1454
  %6 = ashr exact i32 %5, 16, !dbg !1454
  %7 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 0, !dbg !1461
  %8 = load %struct.quicklistNode*, %struct.quicklistNode** %7, align 8, !dbg !1461, !tbaa !450
  %9 = icmp eq %struct.quicklistNode* %8, null, !dbg !1463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1464
  br i1 %9, label %15, label %10, !dbg !1464

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %8, i64 0, i32 0, !dbg !1465
  %12 = load %struct.quicklistNode*, %struct.quicklistNode** %11, align 8, !dbg !1465, !tbaa !450
  %13 = icmp eq %struct.quicklistNode* %12, null, !dbg !1468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1469
  br i1 %13, label %15, label %14, !dbg !1469

; <label>:14:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1470
  br label %15, !dbg !1470

; <label>:15:                                     ; preds = %10, %2, %14
  %16 = phi %struct.quicklistNode* [ %12, %14 ], [ null, %10 ], [ null, %2 ], !dbg !1471
  %17 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 1, !dbg !1472
  %18 = load %struct.quicklistNode*, %struct.quicklistNode** %17, align 8, !dbg !1472, !tbaa !244
  %19 = icmp eq %struct.quicklistNode* %18, null, !dbg !1474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1475
  br i1 %19, label %25, label %20, !dbg !1475

; <label>:20:                                     ; preds = %15
  %21 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %18, i64 0, i32 1, !dbg !1476
  %22 = load %struct.quicklistNode*, %struct.quicklistNode** %21, align 8, !dbg !1476, !tbaa !244
  %23 = icmp eq %struct.quicklistNode* %22, null, !dbg !1479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1480
  br i1 %23, label %25, label %24, !dbg !1480

; <label>:24:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1481
  br label %25, !dbg !1481

; <label>:25:                                     ; preds = %20, %15, %24
  %26 = phi %struct.quicklistNode* [ %22, %24 ], [ null, %20 ], [ null, %15 ], !dbg !1471
  %27 = icmp ne %struct.quicklistNode* %8, null, !dbg !1487
  %28 = icmp ne %struct.quicklistNode* %16, null, !dbg !1488
  %29 = and i1 %27, %28, !dbg !1489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1489
  br i1 %29, label %31, label %30, !dbg !1489

; <label>:30:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1491
  br label %65, !dbg !1492

; <label>:31:                                     ; preds = %25
  %32 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %8, i64 0, i32 3, !dbg !1493
  %33 = load i32, i32* %32, align 8, !dbg !1493, !tbaa !208
  %34 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %16, i64 0, i32 3, !dbg !1494
  %35 = load i32, i32* %34, align 8, !dbg !1494, !tbaa !208
  %36 = add i32 %33, -11, !dbg !1495
  %37 = add i32 %36, %35, !dbg !1496
  %38 = zext i32 %37 to i64, !dbg !1498
  %39 = icmp sgt i32 %5, -65536, !dbg !1502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1503
  br i1 %39, label %50, label %40, !dbg !1503

; <label>:40:                                     ; preds = %31
  %41 = icmp ugt i32 %6, -6, !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1505
  br i1 %41, label %43, label %42, !dbg !1505

; <label>:42:                                     ; preds = %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1506
  br label %50, !dbg !1507

; <label>:43:                                     ; preds = %40
  %44 = xor i32 %6, -1, !dbg !1508
  %45 = sext i32 %44 to i64, !dbg !1509
  %46 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %45, !dbg !1511
  %47 = load i64, i64* %46, align 8, !dbg !1511, !tbaa !76
  %48 = icmp ult i64 %47, %38, !dbg !1512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1514
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1507
  br i1 %48, label %51, label %49, !dbg !1507, !prof !641

; <label>:49:                                     ; preds = %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1516
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1492
  br label %63, !dbg !1492

; <label>:50:                                     ; preds = %31, %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1507
  br label %51, !dbg !1517

; <label>:51:                                     ; preds = %50, %43
  %52 = icmp ult i32 %37, 8193, !dbg !1517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1518
  br i1 %52, label %54, label %53, !dbg !1518

; <label>:53:                                     ; preds = %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1519
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1491
  br label %65, !dbg !1492

; <label>:54:                                     ; preds = %51
  %55 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %8, i64 0, i32 4, !dbg !1520
  %56 = load i32, i32* %55, align 4, !dbg !1520
  %57 = and i32 %56, 65535, !dbg !1520
  %58 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %16, i64 0, i32 4, !dbg !1521
  %59 = load i32, i32* %58, align 4, !dbg !1521
  %60 = and i32 %59, 65535, !dbg !1521
  %61 = add nuw nsw i32 %60, %57, !dbg !1522
  %62 = icmp sgt i32 %61, %6, !dbg !1523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1525
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1492
  br i1 %62, label %66, label %63, !dbg !1492

; <label>:63:                                     ; preds = %49, %54
  %64 = tail call %struct.quicklistNode* @_quicklistZiplistMerge(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %16, %struct.quicklistNode* nonnull %8) #6, !dbg !1526
  br label %65, !dbg !1528

; <label>:65:                                     ; preds = %63, %30, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1529
  br label %66, !dbg !1530

; <label>:66:                                     ; preds = %65, %54
  %67 = icmp ne %struct.quicklistNode* %18, null, !dbg !1530
  %68 = icmp ne %struct.quicklistNode* %26, null, !dbg !1536
  %69 = and i1 %67, %68, !dbg !1537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  br i1 %69, label %71, label %70, !dbg !1537

; <label>:70:                                     ; preds = %66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1539
  br label %105, !dbg !1540

; <label>:71:                                     ; preds = %66
  %72 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %18, i64 0, i32 3, !dbg !1541
  %73 = load i32, i32* %72, align 8, !dbg !1541, !tbaa !208
  %74 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %26, i64 0, i32 3, !dbg !1542
  %75 = load i32, i32* %74, align 8, !dbg !1542, !tbaa !208
  %76 = add i32 %73, -11, !dbg !1543
  %77 = add i32 %76, %75, !dbg !1544
  %78 = zext i32 %77 to i64, !dbg !1546
  %79 = icmp sgt i32 %5, -65536, !dbg !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1551
  br i1 %79, label %90, label %80, !dbg !1551

; <label>:80:                                     ; preds = %71
  %81 = icmp ugt i32 %6, -6, !dbg !1552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  br i1 %81, label %83, label %82, !dbg !1553

; <label>:82:                                     ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1554
  br label %90, !dbg !1555

; <label>:83:                                     ; preds = %80
  %84 = xor i32 %6, -1, !dbg !1556
  %85 = sext i32 %84 to i64, !dbg !1557
  %86 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %85, !dbg !1559
  %87 = load i64, i64* %86, align 8, !dbg !1559, !tbaa !76
  %88 = icmp ult i64 %87, %78, !dbg !1560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1562
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1555
  br i1 %88, label %91, label %89, !dbg !1555, !prof !641

; <label>:89:                                     ; preds = %83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1564
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1540
  br label %103, !dbg !1540

; <label>:90:                                     ; preds = %71, %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1555
  br label %91, !dbg !1565

; <label>:91:                                     ; preds = %90, %83
  %92 = icmp ult i32 %77, 8193, !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1566
  br i1 %92, label %94, label %93, !dbg !1566

; <label>:93:                                     ; preds = %91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1567
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1539
  br label %105, !dbg !1540

; <label>:94:                                     ; preds = %91
  %95 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %18, i64 0, i32 4, !dbg !1568
  %96 = load i32, i32* %95, align 4, !dbg !1568
  %97 = and i32 %96, 65535, !dbg !1568
  %98 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %26, i64 0, i32 4, !dbg !1569
  %99 = load i32, i32* %98, align 4, !dbg !1569
  %100 = and i32 %99, 65535, !dbg !1569
  %101 = add nuw nsw i32 %100, %97, !dbg !1570
  %102 = icmp sgt i32 %101, %6, !dbg !1571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1573
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1540
  br i1 %102, label %106, label %103, !dbg !1540

; <label>:103:                                    ; preds = %89, %94
  %104 = tail call %struct.quicklistNode* @_quicklistZiplistMerge(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %18, %struct.quicklistNode* nonnull %26) #6, !dbg !1574
  br label %105, !dbg !1576

; <label>:105:                                    ; preds = %103, %70, %93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1577
  br label %106, !dbg !1578

; <label>:106:                                    ; preds = %105, %94
  %107 = load %struct.quicklistNode*, %struct.quicklistNode** %7, align 8, !dbg !1578, !tbaa !450
  %108 = icmp eq %struct.quicklistNode* %107, null, !dbg !1584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1585
  br i1 %108, label %144, label %109, !dbg !1585

; <label>:109:                                    ; preds = %106
  %110 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 3, !dbg !1586
  %111 = load i32, i32* %110, align 8, !dbg !1586, !tbaa !208
  %112 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %107, i64 0, i32 3, !dbg !1587
  %113 = load i32, i32* %112, align 8, !dbg !1587, !tbaa !208
  %114 = add i32 %111, -11, !dbg !1588
  %115 = add i32 %114, %113, !dbg !1589
  %116 = zext i32 %115 to i64, !dbg !1591
  %117 = icmp sgt i32 %5, -65536, !dbg !1595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1596
  br i1 %117, label %128, label %118, !dbg !1596

; <label>:118:                                    ; preds = %109
  %119 = icmp ugt i32 %6, -6, !dbg !1597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  br i1 %119, label %121, label %120, !dbg !1598

; <label>:120:                                    ; preds = %118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1599
  br label %128, !dbg !1600

; <label>:121:                                    ; preds = %118
  %122 = xor i32 %6, -1, !dbg !1601
  %123 = sext i32 %122 to i64, !dbg !1602
  %124 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %123, !dbg !1604
  %125 = load i64, i64* %124, align 8, !dbg !1604, !tbaa !76
  %126 = icmp ult i64 %125, %116, !dbg !1605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1607
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1600
  br i1 %126, label %129, label %127, !dbg !1600, !prof !641

; <label>:127:                                    ; preds = %121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1609
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1611
  br label %141, !dbg !1611

; <label>:128:                                    ; preds = %109, %120
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1600
  br label %129, !dbg !1612

; <label>:129:                                    ; preds = %128, %121
  %130 = icmp ult i32 %115, 8193, !dbg !1612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1613
  br i1 %130, label %132, label %131, !dbg !1613

; <label>:131:                                    ; preds = %129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1614
  br label %144, !dbg !1611

; <label>:132:                                    ; preds = %129
  %133 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !1615
  %134 = load i32, i32* %133, align 4, !dbg !1615
  %135 = and i32 %134, 65535, !dbg !1615
  %136 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %107, i64 0, i32 4, !dbg !1616
  %137 = load i32, i32* %136, align 4, !dbg !1616
  %138 = and i32 %137, 65535, !dbg !1616
  %139 = add nuw nsw i32 %138, %135, !dbg !1617
  %140 = icmp sgt i32 %139, %6, !dbg !1618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1611
  br i1 %140, label %145, label %141, !dbg !1611

; <label>:141:                                    ; preds = %127, %132
  %142 = tail call %struct.quicklistNode* @_quicklistZiplistMerge(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %107, %struct.quicklistNode* nonnull %1) #6, !dbg !1621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1623
  %143 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %142, i64 0, i32 1, !dbg !1624
  br label %146, !dbg !1623

; <label>:144:                                    ; preds = %106, %131
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1611
  br label %145

; <label>:145:                                    ; preds = %144, %132
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %146

; <label>:146:                                    ; preds = %145, %141
  %147 = phi %struct.quicklistNode** [ %17, %145 ], [ %143, %141 ], !dbg !1624
  %148 = phi %struct.quicklistNode* [ %1, %145 ], [ %142, %141 ], !dbg !1626
  %149 = load %struct.quicklistNode*, %struct.quicklistNode** %147, align 8, !dbg !1624, !tbaa !244
  %150 = icmp ne %struct.quicklistNode* %148, null, !dbg !1632
  %151 = icmp ne %struct.quicklistNode* %149, null, !dbg !1633
  %152 = and i1 %150, %151, !dbg !1634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1634
  br i1 %152, label %154, label %153, !dbg !1634

; <label>:153:                                    ; preds = %146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1636
  br label %188, !dbg !1637

; <label>:154:                                    ; preds = %146
  %155 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %148, i64 0, i32 3, !dbg !1638
  %156 = load i32, i32* %155, align 8, !dbg !1638, !tbaa !208
  %157 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %149, i64 0, i32 3, !dbg !1639
  %158 = load i32, i32* %157, align 8, !dbg !1639, !tbaa !208
  %159 = add i32 %156, -11, !dbg !1640
  %160 = add i32 %159, %158, !dbg !1641
  %161 = zext i32 %160 to i64, !dbg !1643
  %162 = icmp sgt i32 %5, -65536, !dbg !1647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1648
  br i1 %162, label %173, label %163, !dbg !1648

; <label>:163:                                    ; preds = %154
  %164 = icmp ugt i32 %6, -6, !dbg !1649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1650
  br i1 %164, label %166, label %165, !dbg !1650

; <label>:165:                                    ; preds = %163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1651
  br label %173, !dbg !1652

; <label>:166:                                    ; preds = %163
  %167 = xor i32 %6, -1, !dbg !1653
  %168 = sext i32 %167 to i64, !dbg !1654
  %169 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %168, !dbg !1656
  %170 = load i64, i64* %169, align 8, !dbg !1656, !tbaa !76
  %171 = icmp ult i64 %170, %161, !dbg !1657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1659
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1652
  br i1 %171, label %174, label %172, !dbg !1652, !prof !641

; <label>:172:                                    ; preds = %166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1661
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1637
  br label %186, !dbg !1637

; <label>:173:                                    ; preds = %154, %165
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1652
  br label %174, !dbg !1662

; <label>:174:                                    ; preds = %173, %166
  %175 = icmp ult i32 %160, 8193, !dbg !1662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1663
  br i1 %175, label %177, label %176, !dbg !1663

; <label>:176:                                    ; preds = %174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1664
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1636
  br label %188, !dbg !1637

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %148, i64 0, i32 4, !dbg !1665
  %179 = load i32, i32* %178, align 4, !dbg !1665
  %180 = and i32 %179, 65535, !dbg !1665
  %181 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %149, i64 0, i32 4, !dbg !1666
  %182 = load i32, i32* %181, align 4, !dbg !1666
  %183 = and i32 %182, 65535, !dbg !1666
  %184 = add nuw nsw i32 %183, %180, !dbg !1667
  %185 = icmp sgt i32 %184, %6, !dbg !1668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1670
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1637
  br i1 %185, label %189, label %186, !dbg !1637

; <label>:186:                                    ; preds = %172, %177
  %187 = tail call %struct.quicklistNode* @_quicklistZiplistMerge(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %148, %struct.quicklistNode* nonnull %149) #6, !dbg !1671
  br label %188, !dbg !1673

; <label>:188:                                    ; preds = %186, %153, %176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1674
  br label %189, !dbg !1675

; <label>:189:                                    ; preds = %188, %177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1675
  ret void, !dbg !1675
}

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklistNode* @_quicklistSplitNode(%struct.quicklistNode* nocapture, i32, i32) local_unnamed_addr #0 !dbg !1676 {
  %4 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 3, !dbg !1692
  %5 = load i32, i32* %4, align 8, !dbg !1692, !tbaa !208
  %6 = zext i32 %5 to i64, !dbg !1693
  %7 = tail call i8* @zmalloc(i64 32) #4, !dbg !1695
  %8 = bitcast i8* %7 to %struct.quicklistNode*, !dbg !1695
  %9 = getelementptr inbounds i8, i8* %7, i64 16, !dbg !1698
  %10 = bitcast i8* %9 to i8**, !dbg !1698
  store i8* null, i8** %10, align 8, !dbg !1699, !tbaa !201
  %11 = getelementptr inbounds i8, i8* %7, i64 28, !dbg !1700
  %12 = bitcast i8* %11 to i32*, !dbg !1700
  %13 = load i32, i32* %12, align 4, !dbg !1701
  %14 = getelementptr inbounds i8, i8* %7, i64 24, !dbg !1702
  %15 = bitcast i8* %14 to i32*, !dbg !1702
  store i32 0, i32* %15, align 8, !dbg !1703, !tbaa !208
  %16 = bitcast i8* %7 to <2 x %struct.quicklistNode*>*, !dbg !1704
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %16, align 8, !dbg !1704, !tbaa !70
  %17 = and i32 %13, -2097152, !dbg !1705
  %18 = or i32 %17, 589824, !dbg !1705
  store i32 %18, i32* %12, align 4, !dbg !1705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1706
  %19 = tail call i8* @zmalloc(i64 %6) #4, !dbg !1708
  store i8* %19, i8** %10, align 8, !dbg !1709, !tbaa !201
  %20 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 2, !dbg !1710
  %21 = load i8*, i8** %20, align 8, !dbg !1710, !tbaa !201
  %22 = tail call i8* @memcpy(i8* %19, i8* %21, i64 %6) #4, !dbg !1711
  %23 = icmp ne i32 %2, 0, !dbg !1712
  %24 = add nsw i32 %1, 1, !dbg !1713
  %25 = select i1 %23, i32 %24, i32 0, !dbg !1712
  %26 = select i1 %23, i32 -1, i32 %1, !dbg !1715
  %27 = select i1 %23, i32 0, i32 %1, !dbg !1717
  %28 = select i1 %23, i32 %24, i32 -1, !dbg !1719
  %29 = load i8*, i8** %20, align 8, !dbg !1721, !tbaa !201
  %30 = tail call i8* @ziplistDeleteRange(i8* %29, i32 %25, i32 %26) #4, !dbg !1722
  store i8* %30, i8** %20, align 8, !dbg !1723, !tbaa !201
  %31 = tail call i32 @ziplistLen(i8* %30) #4, !dbg !1724
  %32 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 4, !dbg !1725
  %33 = load i32, i32* %32, align 4, !dbg !1726
  %34 = and i32 %31, 65535, !dbg !1726
  %35 = and i32 %33, -65536, !dbg !1726
  %36 = or i32 %35, %34, !dbg !1726
  store i32 %36, i32* %32, align 4, !dbg !1726
  %37 = load i8*, i8** %20, align 8, !dbg !1727, !tbaa !201
  %38 = tail call i64 @ziplistBlobLen(i8* %37) #4, !dbg !1727
  %39 = trunc i64 %38 to i32, !dbg !1727
  store i32 %39, i32* %4, align 8, !dbg !1727, !tbaa !208
  %40 = load i8*, i8** %10, align 8, !dbg !1729, !tbaa !201
  %41 = tail call i8* @ziplistDeleteRange(i8* %40, i32 %27, i32 %28) #4, !dbg !1730
  store i8* %41, i8** %10, align 8, !dbg !1731, !tbaa !201
  %42 = tail call i32 @ziplistLen(i8* %41) #4, !dbg !1732
  %43 = load i32, i32* %12, align 4, !dbg !1733
  %44 = and i32 %42, 65535, !dbg !1733
  %45 = and i32 %43, -65536, !dbg !1733
  %46 = or i32 %45, %44, !dbg !1733
  store i32 %46, i32* %12, align 4, !dbg !1733
  %47 = load i8*, i8** %10, align 8, !dbg !1734, !tbaa !201
  %48 = tail call i64 @ziplistBlobLen(i8* %47) #4, !dbg !1734
  %49 = trunc i64 %48 to i32, !dbg !1734
  store i32 %49, i32* %15, align 8, !dbg !1734, !tbaa !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1736
  ret %struct.quicklistNode* %8, !dbg !1736
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @ziplistDeleteRange(i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @_quicklistInsert(%struct.quicklist* nocapture, %struct.quicklistEntry* nocapture readonly, i8*, i64, i32) local_unnamed_addr #0 !dbg !1737 {
  %6 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !1767
  %7 = load i32, i32* %6, align 8, !dbg !1767
  %8 = shl i32 %7, 16, !dbg !1767
  %9 = ashr exact i32 %8, 16, !dbg !1767
  %10 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 1, !dbg !1769
  %11 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !1769, !tbaa !1123
  %12 = icmp eq %struct.quicklistNode* %11, null, !dbg !1772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1774
  br i1 %12, label %13, label %59, !dbg !1774

; <label>:13:                                     ; preds = %5
  %14 = tail call i8* @zmalloc(i64 32) #4, !dbg !1775
  %15 = getelementptr inbounds i8, i8* %14, i64 16, !dbg !1779
  %16 = bitcast i8* %15 to i8**, !dbg !1779
  store i8* null, i8** %16, align 8, !dbg !1780, !tbaa !201
  %17 = getelementptr inbounds i8, i8* %14, i64 28, !dbg !1781
  %18 = bitcast i8* %17 to i32*, !dbg !1781
  %19 = load i32, i32* %18, align 4, !dbg !1782
  %20 = getelementptr inbounds i8, i8* %14, i64 24, !dbg !1783
  %21 = bitcast i8* %20 to i32*, !dbg !1783
  store i32 0, i32* %21, align 8, !dbg !1784, !tbaa !208
  %22 = bitcast i8* %14 to <2 x %struct.quicklistNode*>*, !dbg !1785
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %22, align 8, !dbg !1785, !tbaa !70
  %23 = and i32 %19, -2097152, !dbg !1786
  %24 = or i32 %23, 589824, !dbg !1786
  store i32 %24, i32* %18, align 4, !dbg !1786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1787
  %25 = tail call i8* @ziplistNew() #4, !dbg !1788
  %26 = trunc i64 %3 to i32, !dbg !1789
  %27 = tail call i8* @ziplistPush(i8* %25, i8* %2, i32 %26, i32 0) #4, !dbg !1790
  store i8* %27, i8** %16, align 8, !dbg !1791, !tbaa !201
  %28 = icmp eq i32 %4, 0, !dbg !1797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1798
  br i1 %28, label %36, label %29, !dbg !1798

; <label>:29:                                     ; preds = %13
  %30 = bitcast i8* %14 to %struct.quicklistNode**, !dbg !1799
  store %struct.quicklistNode* null, %struct.quicklistNode** %30, align 8, !dbg !1800, !tbaa !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1801
  %31 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !1802
  %32 = load %struct.quicklistNode*, %struct.quicklistNode** %31, align 8, !dbg !1802, !tbaa !375
  %33 = icmp eq %struct.quicklistNode* %32, null, !dbg !1803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1804
  br i1 %33, label %34, label %44, !dbg !1804

; <label>:34:                                     ; preds = %29
  %35 = bitcast %struct.quicklistNode** %31 to i8**, !dbg !1805
  store i8* %14, i8** %35, align 8, !dbg !1805, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1806
  br label %44, !dbg !1806

; <label>:36:                                     ; preds = %13
  %37 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !1807
  %38 = bitcast i8* %37 to %struct.quicklistNode**, !dbg !1807
  store %struct.quicklistNode* null, %struct.quicklistNode** %38, align 8, !dbg !1808, !tbaa !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1809
  %39 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !1810
  %40 = load %struct.quicklistNode*, %struct.quicklistNode** %39, align 8, !dbg !1810, !tbaa !234
  %41 = icmp eq %struct.quicklistNode* %40, null, !dbg !1811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1812
  br i1 %41, label %42, label %44, !dbg !1812

; <label>:42:                                     ; preds = %36
  %43 = bitcast %struct.quicklist* %0 to i8**, !dbg !1813
  store i8* %14, i8** %43, align 8, !dbg !1813, !tbaa !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1814
  br label %44, !dbg !1814

; <label>:44:                                     ; preds = %42, %36, %34, %29
  %45 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !1815
  %46 = load i64, i64* %45, align 8, !dbg !1815, !tbaa !237
  %47 = icmp eq i64 %46, 0, !dbg !1816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1817
  br i1 %47, label %48, label %52, !dbg !1817

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !1818
  %50 = bitcast %struct.quicklistNode** %49 to i8**, !dbg !1819
  store i8* %14, i8** %50, align 8, !dbg !1819, !tbaa !375
  %51 = bitcast %struct.quicklist* %0 to i8**, !dbg !1820
  store i8* %14, i8** %51, align 8, !dbg !1820, !tbaa !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1821
  br label %52, !dbg !1821

; <label>:52:                                     ; preds = %44, %48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1822
  %53 = add i64 %46, 1, !dbg !1823
  store i64 %53, i64* %45, align 8, !dbg !1823, !tbaa !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1824
  %54 = load i32, i32* %18, align 4, !dbg !1825
  %55 = add i32 %54, 1, !dbg !1825
  %56 = and i32 %55, 65535, !dbg !1825
  %57 = and i32 %54, -65536, !dbg !1825
  %58 = or i32 %56, %57, !dbg !1825
  store i32 %58, i32* %18, align 4, !dbg !1825
  br label %425, !dbg !1826

; <label>:59:                                     ; preds = %5
  %60 = tail call i32 @_quicklistNodeAllowInsert(%struct.quicklistNode* nonnull %11, i32 %9, i64 %3) #6, !dbg !1827
  %61 = icmp eq i32 %60, 0, !dbg !1827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1829
  br i1 %61, label %62, label %63, !dbg !1829

; <label>:62:                                     ; preds = %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1830
  br label %63, !dbg !1830

; <label>:63:                                     ; preds = %59, %62
  %64 = phi i32 [ 0, %59 ], [ 1, %62 ], !dbg !1832
  %65 = icmp ne i32 %4, 0, !dbg !1833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1835
  br i1 %65, label %66, label %79, !dbg !1835

; <label>:66:                                     ; preds = %63
  %67 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 6, !dbg !1836
  %68 = load i32, i32* %67, align 4, !dbg !1836, !tbaa !1249
  %69 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 4, !dbg !1837
  %70 = load i32, i32* %69, align 4, !dbg !1837
  %71 = and i32 %70, 65535, !dbg !1837
  %72 = icmp eq i32 %68, %71, !dbg !1838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1839
  br i1 %72, label %73, label %92, !dbg !1839

; <label>:73:                                     ; preds = %66
  %74 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 1, !dbg !1840
  %75 = load %struct.quicklistNode*, %struct.quicklistNode** %74, align 8, !dbg !1840, !tbaa !244
  %76 = tail call i32 @_quicklistNodeAllowInsert(%struct.quicklistNode* %75, i32 %9, i64 %3) #6, !dbg !1843
  %77 = icmp eq i32 %76, 0, !dbg !1843
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1844
  br i1 %77, label %78, label %92, !dbg !1844

; <label>:78:                                     ; preds = %73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1845
  br label %92, !dbg !1845

; <label>:79:                                     ; preds = %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1847
  %80 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 6, !dbg !1849
  %81 = load i32, i32* %80, align 4, !dbg !1849, !tbaa !1249
  %82 = icmp eq i32 %81, 0, !dbg !1850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1851
  br i1 %82, label %83, label %89, !dbg !1851

; <label>:83:                                     ; preds = %79
  %84 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 0, !dbg !1852
  %85 = load %struct.quicklistNode*, %struct.quicklistNode** %84, align 8, !dbg !1852, !tbaa !450
  %86 = tail call i32 @_quicklistNodeAllowInsert(%struct.quicklistNode* %85, i32 %9, i64 %3) #6, !dbg !1855
  %87 = icmp eq i32 %86, 0, !dbg !1855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1856
  br i1 %87, label %88, label %89, !dbg !1856

; <label>:88:                                     ; preds = %83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1857
  br label %89, !dbg !1857

; <label>:89:                                     ; preds = %83, %88, %79
  %90 = phi i32 [ 0, %79 ], [ 1, %88 ], [ 0, %83 ]
  %91 = phi i32 [ 0, %79 ], [ 1, %88 ], [ 1, %83 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1859
  br label %156, !dbg !1859

; <label>:92:                                     ; preds = %73, %78, %66
  %93 = phi i32 [ 0, %66 ], [ 1, %78 ], [ 0, %73 ]
  %94 = phi i32 [ 0, %66 ], [ 1, %78 ], [ 1, %73 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1847
  %95 = icmp eq i32 %64, 0, !dbg !1860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1859
  br i1 %95, label %96, label %156, !dbg !1859

; <label>:96:                                     ; preds = %92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  %97 = load i32, i32* %69, align 4, !dbg !1861
  %98 = and i32 %97, 196608, !dbg !1861
  %99 = icmp eq i32 %98, 131072, !dbg !1861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1864
  br i1 %99, label %102, label %100, !dbg !1864

; <label>:100:                                    ; preds = %96
  %101 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !1865
  br label %124, !dbg !1864

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 3, !dbg !1869
  %104 = load i32, i32* %103, align 8, !dbg !1869, !tbaa !208
  %105 = zext i32 %104 to i64, !dbg !1870
  %106 = tail call i8* @zmalloc(i64 %105) #4, !dbg !1871
  %107 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !1873
  %108 = load i8*, i8** %107, align 8, !dbg !1873, !tbaa !201
  %109 = getelementptr inbounds i8, i8* %108, i64 4, !dbg !1875
  %110 = bitcast i8* %108 to i32*, !dbg !1876
  %111 = load i32, i32* %110, align 4, !dbg !1876, !tbaa !280
  %112 = load i32, i32* %103, align 8, !dbg !1877, !tbaa !208
  %113 = tail call i32 @lzf_decompress(i8* nonnull %109, i32 %111, i8* %106, i32 %112) #4, !dbg !1878
  %114 = icmp eq i32 %113, 0, !dbg !1879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1880
  br i1 %114, label %115, label %117, !dbg !1880

; <label>:115:                                    ; preds = %102
  tail call void @zfree(i8* %106) #4, !dbg !1881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1882
  %116 = load i32, i32* %69, align 4, !dbg !1883
  br label %121, !dbg !1882

; <label>:117:                                    ; preds = %102
  tail call void @zfree(i8* %108) #4, !dbg !1884
  store i8* %106, i8** %107, align 8, !dbg !1885, !tbaa !201
  %118 = load i32, i32* %69, align 4, !dbg !1886
  %119 = and i32 %118, -196609, !dbg !1886
  %120 = or i32 %119, 65536, !dbg !1886
  store i32 %120, i32* %69, align 4, !dbg !1886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1887
  br label %121, !dbg !1887

; <label>:121:                                    ; preds = %115, %117
  %122 = phi i32 [ %116, %115 ], [ %120, %117 ], !dbg !1883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1888
  %123 = or i32 %122, 1048576, !dbg !1883
  store i32 %123, i32* %69, align 4, !dbg !1883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1883
  br label %124, !dbg !1883

; <label>:124:                                    ; preds = %100, %121
  %125 = phi i8** [ %101, %100 ], [ %107, %121 ], !dbg !1865
  %126 = load i8*, i8** %125, align 8, !dbg !1865, !tbaa !201
  %127 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 2, !dbg !1889
  %128 = load i8*, i8** %127, align 8, !dbg !1889, !tbaa !1208
  %129 = tail call i8* @ziplistNext(i8* %126, i8* %128) #4, !dbg !1890
  %130 = icmp eq i8* %129, null, !dbg !1892
  %131 = load i8*, i8** %125, align 8, !dbg !1894, !tbaa !201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1896
  %132 = trunc i64 %3 to i32, !dbg !1894
  br i1 %130, label %133, label %135, !dbg !1896

; <label>:133:                                    ; preds = %124
  %134 = tail call i8* @ziplistPush(i8* %131, i8* %2, i32 %132, i32 1) #4, !dbg !1897
  br label %137, !dbg !1899

; <label>:135:                                    ; preds = %124
  %136 = tail call i8* @ziplistInsert(i8* %131, i8* nonnull %129, i8* %2, i32 %132) #4, !dbg !1900
  br label %137

; <label>:137:                                    ; preds = %135, %133
  %138 = phi i8* [ %136, %135 ], [ %134, %133 ]
  store i8* %138, i8** %125, align 8, !dbg !1901, !tbaa !201
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %139 = load i32, i32* %69, align 4, !dbg !1902
  %140 = add i32 %139, 1, !dbg !1902
  %141 = and i32 %140, 65535, !dbg !1902
  %142 = and i32 %139, -65536, !dbg !1902
  %143 = or i32 %141, %142, !dbg !1902
  store i32 %143, i32* %69, align 4, !dbg !1902
  %144 = tail call i64 @ziplistBlobLen(i8* %138) #4, !dbg !1903
  %145 = trunc i64 %144 to i32, !dbg !1903
  %146 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 3, !dbg !1903
  store i32 %145, i32* %146, align 8, !dbg !1903, !tbaa !208
  %147 = load i32, i32* %69, align 4, !dbg !1905
  %148 = and i32 %147, 1048576, !dbg !1905
  %149 = icmp eq i32 %148, 0, !dbg !1905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1908
  br i1 %149, label %155, label %150, !dbg !1908

; <label>:150:                                    ; preds = %137
  %151 = and i32 %147, 196608, !dbg !1909
  %152 = icmp eq i32 %151, 65536, !dbg !1909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1912
  br i1 %152, label %153, label %155, !dbg !1912

; <label>:153:                                    ; preds = %150
  %154 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %11) #6, !dbg !1913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1913
  br label %155, !dbg !1913

; <label>:155:                                    ; preds = %137, %150, %153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1915
  br label %425, !dbg !1915

; <label>:156:                                    ; preds = %89, %92
  %157 = phi i32 [ %91, %89 ], [ 0, %92 ]
  %158 = phi i32 [ %90, %89 ], [ 0, %92 ]
  %159 = phi i32 [ 0, %89 ], [ %93, %92 ]
  %160 = phi i32 [ 0, %89 ], [ %94, %92 ]
  %161 = icmp ne i32 %64, 0, !dbg !1916
  %162 = or i32 %64, %4, !dbg !1918
  %163 = icmp eq i32 %162, 0, !dbg !1918
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1918
  br i1 %163, label %164, label %217, !dbg !1918

; <label>:164:                                    ; preds = %156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1919
  %165 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 4, !dbg !1919
  %166 = load i32, i32* %165, align 4, !dbg !1919
  %167 = and i32 %166, 196608, !dbg !1919
  %168 = icmp eq i32 %167, 131072, !dbg !1919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1923
  br i1 %168, label %172, label %169, !dbg !1923

; <label>:169:                                    ; preds = %164
  %170 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !1924
  %171 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 3, !dbg !1925
  br label %194, !dbg !1923

; <label>:172:                                    ; preds = %164
  %173 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 3, !dbg !1930
  %174 = load i32, i32* %173, align 8, !dbg !1930, !tbaa !208
  %175 = zext i32 %174 to i64, !dbg !1931
  %176 = tail call i8* @zmalloc(i64 %175) #4, !dbg !1932
  %177 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !1934
  %178 = load i8*, i8** %177, align 8, !dbg !1934, !tbaa !201
  %179 = getelementptr inbounds i8, i8* %178, i64 4, !dbg !1936
  %180 = bitcast i8* %178 to i32*, !dbg !1937
  %181 = load i32, i32* %180, align 4, !dbg !1937, !tbaa !280
  %182 = load i32, i32* %173, align 8, !dbg !1938, !tbaa !208
  %183 = tail call i32 @lzf_decompress(i8* nonnull %179, i32 %181, i8* %176, i32 %182) #4, !dbg !1939
  %184 = icmp eq i32 %183, 0, !dbg !1940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1941
  br i1 %184, label %185, label %187, !dbg !1941

; <label>:185:                                    ; preds = %172
  tail call void @zfree(i8* %176) #4, !dbg !1942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1943
  %186 = load i32, i32* %165, align 4, !dbg !1944
  br label %191, !dbg !1943

; <label>:187:                                    ; preds = %172
  tail call void @zfree(i8* %178) #4, !dbg !1945
  store i8* %176, i8** %177, align 8, !dbg !1946, !tbaa !201
  %188 = load i32, i32* %165, align 4, !dbg !1947
  %189 = and i32 %188, -196609, !dbg !1947
  %190 = or i32 %189, 65536, !dbg !1947
  store i32 %190, i32* %165, align 4, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1948
  br label %191, !dbg !1948

; <label>:191:                                    ; preds = %185, %187
  %192 = phi i32 [ %186, %185 ], [ %190, %187 ], !dbg !1944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1949
  %193 = or i32 %192, 1048576, !dbg !1944
  store i32 %193, i32* %165, align 4, !dbg !1944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  br label %194, !dbg !1944

; <label>:194:                                    ; preds = %169, %191
  %195 = phi i32* [ %171, %169 ], [ %173, %191 ], !dbg !1925
  %196 = phi i8** [ %170, %169 ], [ %177, %191 ], !dbg !1924
  %197 = load i8*, i8** %196, align 8, !dbg !1924, !tbaa !201
  %198 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 2, !dbg !1950
  %199 = load i8*, i8** %198, align 8, !dbg !1950, !tbaa !1208
  %200 = trunc i64 %3 to i32, !dbg !1951
  %201 = tail call i8* @ziplistInsert(i8* %197, i8* %199, i8* %2, i32 %200) #4, !dbg !1952
  store i8* %201, i8** %196, align 8, !dbg !1953, !tbaa !201
  %202 = load i32, i32* %165, align 4, !dbg !1954
  %203 = add i32 %202, 1, !dbg !1954
  %204 = and i32 %203, 65535, !dbg !1954
  %205 = and i32 %202, -65536, !dbg !1954
  %206 = or i32 %204, %205, !dbg !1954
  store i32 %206, i32* %165, align 4, !dbg !1954
  %207 = tail call i64 @ziplistBlobLen(i8* %201) #4, !dbg !1925
  %208 = trunc i64 %207 to i32, !dbg !1925
  store i32 %208, i32* %195, align 8, !dbg !1925, !tbaa !208
  %209 = load i32, i32* %165, align 4, !dbg !1955
  %210 = and i32 %209, 1048576, !dbg !1955
  %211 = icmp eq i32 %210, 0, !dbg !1955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1958
  br i1 %211, label %425, label %212, !dbg !1958

; <label>:212:                                    ; preds = %194
  %213 = and i32 %209, 196608, !dbg !1959
  %214 = icmp eq i32 %213, 65536, !dbg !1959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1962
  br i1 %214, label %215, label %425, !dbg !1962

; <label>:215:                                    ; preds = %212
  %216 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %11) #6, !dbg !1963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1963
  br label %425, !dbg !1963

; <label>:217:                                    ; preds = %156
  %218 = icmp ne i32 %160, 0, !dbg !1965
  %219 = and i1 %161, %218, !dbg !1967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1967
  br i1 %219, label %220, label %278, !dbg !1967

; <label>:220:                                    ; preds = %217
  %221 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 1, !dbg !1968
  %222 = load %struct.quicklistNode*, %struct.quicklistNode** %221, align 8, !dbg !1968, !tbaa !244
  %223 = icmp ne %struct.quicklistNode* %222, null, !dbg !1969
  %224 = icmp eq i32 %159, 0, !dbg !1970
  %225 = and i1 %224, %223, !dbg !1971
  %226 = and i1 %65, %225, !dbg !1971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1971
  br i1 %226, label %227, label %278, !dbg !1971

; <label>:227:                                    ; preds = %220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1972
  %228 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %222, i64 0, i32 4, !dbg !1972
  %229 = load i32, i32* %228, align 4, !dbg !1972
  %230 = and i32 %229, 196608, !dbg !1972
  %231 = icmp eq i32 %230, 131072, !dbg !1972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1976
  br i1 %231, label %235, label %232, !dbg !1976

; <label>:232:                                    ; preds = %227
  %233 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %222, i64 0, i32 2, !dbg !1977
  %234 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %222, i64 0, i32 3, !dbg !1978
  br label %257, !dbg !1976

; <label>:235:                                    ; preds = %227
  %236 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %222, i64 0, i32 3, !dbg !1983
  %237 = load i32, i32* %236, align 8, !dbg !1983, !tbaa !208
  %238 = zext i32 %237 to i64, !dbg !1984
  %239 = tail call i8* @zmalloc(i64 %238) #4, !dbg !1985
  %240 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %222, i64 0, i32 2, !dbg !1987
  %241 = load i8*, i8** %240, align 8, !dbg !1987, !tbaa !201
  %242 = getelementptr inbounds i8, i8* %241, i64 4, !dbg !1989
  %243 = bitcast i8* %241 to i32*, !dbg !1990
  %244 = load i32, i32* %243, align 4, !dbg !1990, !tbaa !280
  %245 = load i32, i32* %236, align 8, !dbg !1991, !tbaa !208
  %246 = tail call i32 @lzf_decompress(i8* nonnull %242, i32 %244, i8* %239, i32 %245) #4, !dbg !1992
  %247 = icmp eq i32 %246, 0, !dbg !1993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1994
  br i1 %247, label %248, label %250, !dbg !1994

; <label>:248:                                    ; preds = %235
  tail call void @zfree(i8* %239) #4, !dbg !1995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1996
  %249 = load i32, i32* %228, align 4, !dbg !1997
  br label %254, !dbg !1996

; <label>:250:                                    ; preds = %235
  tail call void @zfree(i8* %241) #4, !dbg !1998
  store i8* %239, i8** %240, align 8, !dbg !1999, !tbaa !201
  %251 = load i32, i32* %228, align 4, !dbg !2000
  %252 = and i32 %251, -196609, !dbg !2000
  %253 = or i32 %252, 65536, !dbg !2000
  store i32 %253, i32* %228, align 4, !dbg !2000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2001
  br label %254, !dbg !2001

; <label>:254:                                    ; preds = %248, %250
  %255 = phi i32 [ %249, %248 ], [ %253, %250 ], !dbg !1997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2002
  %256 = or i32 %255, 1048576, !dbg !1997
  store i32 %256, i32* %228, align 4, !dbg !1997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1997
  br label %257, !dbg !1997

; <label>:257:                                    ; preds = %232, %254
  %258 = phi i32* [ %234, %232 ], [ %236, %254 ], !dbg !1978
  %259 = phi i8** [ %233, %232 ], [ %240, %254 ], !dbg !1977
  %260 = load i8*, i8** %259, align 8, !dbg !1977, !tbaa !201
  %261 = trunc i64 %3 to i32, !dbg !2003
  %262 = tail call i8* @ziplistPush(i8* %260, i8* %2, i32 %261, i32 0) #4, !dbg !2004
  store i8* %262, i8** %259, align 8, !dbg !2005, !tbaa !201
  %263 = load i32, i32* %228, align 4, !dbg !2006
  %264 = add i32 %263, 1, !dbg !2006
  %265 = and i32 %264, 65535, !dbg !2006
  %266 = and i32 %263, -65536, !dbg !2006
  %267 = or i32 %265, %266, !dbg !2006
  store i32 %267, i32* %228, align 4, !dbg !2006
  %268 = tail call i64 @ziplistBlobLen(i8* %262) #4, !dbg !1978
  %269 = trunc i64 %268 to i32, !dbg !1978
  store i32 %269, i32* %258, align 8, !dbg !1978, !tbaa !208
  %270 = load i32, i32* %228, align 4, !dbg !2007
  %271 = and i32 %270, 1048576, !dbg !2007
  %272 = icmp eq i32 %271, 0, !dbg !2007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2010
  br i1 %272, label %425, label %273, !dbg !2010

; <label>:273:                                    ; preds = %257
  %274 = and i32 %270, 196608, !dbg !2011
  %275 = icmp eq i32 %274, 65536, !dbg !2011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2014
  br i1 %275, label %276, label %425, !dbg !2014

; <label>:276:                                    ; preds = %273
  %277 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %222) #6, !dbg !2015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2015
  br label %425, !dbg !2015

; <label>:278:                                    ; preds = %220, %217
  %279 = icmp ne i32 %157, 0, !dbg !2017
  %280 = and i1 %161, %279, !dbg !2019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2019
  br i1 %280, label %281, label %339, !dbg !2019

; <label>:281:                                    ; preds = %278
  %282 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 0, !dbg !2020
  %283 = load %struct.quicklistNode*, %struct.quicklistNode** %282, align 8, !dbg !2020, !tbaa !450
  %284 = icmp eq %struct.quicklistNode* %283, null, !dbg !2021
  %285 = or i32 %158, %4, !dbg !2022
  %286 = icmp ne i32 %285, 0, !dbg !2022
  %287 = or i1 %286, %284, !dbg !2022
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2022
  br i1 %287, label %339, label %288, !dbg !2022

; <label>:288:                                    ; preds = %281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2023
  %289 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %283, i64 0, i32 4, !dbg !2023
  %290 = load i32, i32* %289, align 4, !dbg !2023
  %291 = and i32 %290, 196608, !dbg !2023
  %292 = icmp eq i32 %291, 131072, !dbg !2023
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2027
  br i1 %292, label %296, label %293, !dbg !2027

; <label>:293:                                    ; preds = %288
  %294 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %283, i64 0, i32 2, !dbg !2028
  %295 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %283, i64 0, i32 3, !dbg !2029
  br label %318, !dbg !2027

; <label>:296:                                    ; preds = %288
  %297 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %283, i64 0, i32 3, !dbg !2034
  %298 = load i32, i32* %297, align 8, !dbg !2034, !tbaa !208
  %299 = zext i32 %298 to i64, !dbg !2035
  %300 = tail call i8* @zmalloc(i64 %299) #4, !dbg !2036
  %301 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %283, i64 0, i32 2, !dbg !2038
  %302 = load i8*, i8** %301, align 8, !dbg !2038, !tbaa !201
  %303 = getelementptr inbounds i8, i8* %302, i64 4, !dbg !2040
  %304 = bitcast i8* %302 to i32*, !dbg !2041
  %305 = load i32, i32* %304, align 4, !dbg !2041, !tbaa !280
  %306 = load i32, i32* %297, align 8, !dbg !2042, !tbaa !208
  %307 = tail call i32 @lzf_decompress(i8* nonnull %303, i32 %305, i8* %300, i32 %306) #4, !dbg !2043
  %308 = icmp eq i32 %307, 0, !dbg !2044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2045
  br i1 %308, label %309, label %311, !dbg !2045

; <label>:309:                                    ; preds = %296
  tail call void @zfree(i8* %300) #4, !dbg !2046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2047
  %310 = load i32, i32* %289, align 4, !dbg !2048
  br label %315, !dbg !2047

; <label>:311:                                    ; preds = %296
  tail call void @zfree(i8* %302) #4, !dbg !2049
  store i8* %300, i8** %301, align 8, !dbg !2050, !tbaa !201
  %312 = load i32, i32* %289, align 4, !dbg !2051
  %313 = and i32 %312, -196609, !dbg !2051
  %314 = or i32 %313, 65536, !dbg !2051
  store i32 %314, i32* %289, align 4, !dbg !2051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2052
  br label %315, !dbg !2052

; <label>:315:                                    ; preds = %309, %311
  %316 = phi i32 [ %310, %309 ], [ %314, %311 ], !dbg !2048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2053
  %317 = or i32 %316, 1048576, !dbg !2048
  store i32 %317, i32* %289, align 4, !dbg !2048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2048
  br label %318, !dbg !2048

; <label>:318:                                    ; preds = %293, %315
  %319 = phi i32* [ %295, %293 ], [ %297, %315 ], !dbg !2029
  %320 = phi i8** [ %294, %293 ], [ %301, %315 ], !dbg !2028
  %321 = load i8*, i8** %320, align 8, !dbg !2028, !tbaa !201
  %322 = trunc i64 %3 to i32, !dbg !2054
  %323 = tail call i8* @ziplistPush(i8* %321, i8* %2, i32 %322, i32 1) #4, !dbg !2055
  store i8* %323, i8** %320, align 8, !dbg !2056, !tbaa !201
  %324 = load i32, i32* %289, align 4, !dbg !2057
  %325 = add i32 %324, 1, !dbg !2057
  %326 = and i32 %325, 65535, !dbg !2057
  %327 = and i32 %324, -65536, !dbg !2057
  %328 = or i32 %326, %327, !dbg !2057
  store i32 %328, i32* %289, align 4, !dbg !2057
  %329 = tail call i64 @ziplistBlobLen(i8* %323) #4, !dbg !2029
  %330 = trunc i64 %329 to i32, !dbg !2029
  store i32 %330, i32* %319, align 8, !dbg !2029, !tbaa !208
  %331 = load i32, i32* %289, align 4, !dbg !2058
  %332 = and i32 %331, 1048576, !dbg !2058
  %333 = icmp eq i32 %332, 0, !dbg !2058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  br i1 %333, label %425, label %334, !dbg !2061

; <label>:334:                                    ; preds = %318
  %335 = and i32 %331, 196608, !dbg !2062
  %336 = icmp eq i32 %335, 65536, !dbg !2062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2065
  br i1 %336, label %337, label %425, !dbg !2065

; <label>:337:                                    ; preds = %334
  %338 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %283) #6, !dbg !2066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2066
  br label %425, !dbg !2066

; <label>:339:                                    ; preds = %281, %278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2070
  br i1 %161, label %340, label %425, !dbg !2068

; <label>:340:                                    ; preds = %339
  br i1 %218, label %341, label %348, !dbg !2071

; <label>:341:                                    ; preds = %340
  %342 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 1, !dbg !2072
  %343 = load %struct.quicklistNode*, %struct.quicklistNode** %342, align 8, !dbg !2072, !tbaa !244
  %344 = icmp ne %struct.quicklistNode* %343, null, !dbg !2073
  %345 = icmp ne i32 %159, 0, !dbg !2074
  %346 = and i1 %345, %344, !dbg !2075
  %347 = and i1 %65, %346, !dbg !2075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2075
  br i1 %347, label %356, label %348, !dbg !2075

; <label>:348:                                    ; preds = %341, %340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2076
  br i1 %279, label %349, label %379, !dbg !2076

; <label>:349:                                    ; preds = %348
  %350 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 0, !dbg !2077
  %351 = load %struct.quicklistNode*, %struct.quicklistNode** %350, align 8, !dbg !2077, !tbaa !450
  %352 = icmp eq %struct.quicklistNode* %351, null, !dbg !2078
  %353 = icmp eq i32 %158, 0, !dbg !2079
  %354 = or i1 %353, %352, !dbg !2080
  %355 = or i1 %65, %354, !dbg !2080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2080
  br i1 %355, label %379, label %356, !dbg !2080

; <label>:356:                                    ; preds = %349, %341
  %357 = tail call i8* @zmalloc(i64 32) #4, !dbg !2081
  %358 = bitcast i8* %357 to %struct.quicklistNode*, !dbg !2081
  %359 = getelementptr inbounds i8, i8* %357, i64 16, !dbg !2085
  %360 = bitcast i8* %359 to i8**, !dbg !2085
  store i8* null, i8** %360, align 8, !dbg !2086, !tbaa !201
  %361 = getelementptr inbounds i8, i8* %357, i64 28, !dbg !2087
  %362 = bitcast i8* %361 to i32*, !dbg !2087
  %363 = load i32, i32* %362, align 4, !dbg !2088
  %364 = getelementptr inbounds i8, i8* %357, i64 24, !dbg !2089
  %365 = bitcast i8* %364 to i32*, !dbg !2089
  store i32 0, i32* %365, align 8, !dbg !2090, !tbaa !208
  %366 = bitcast i8* %357 to <2 x %struct.quicklistNode*>*, !dbg !2091
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %366, align 8, !dbg !2091, !tbaa !70
  %367 = and i32 %363, -2097152, !dbg !2092
  %368 = or i32 %367, 589824, !dbg !2092
  store i32 %368, i32* %362, align 4, !dbg !2092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2093
  %369 = tail call i8* @ziplistNew() #4, !dbg !2094
  %370 = trunc i64 %3 to i32, !dbg !2095
  %371 = tail call i8* @ziplistPush(i8* %369, i8* %2, i32 %370, i32 0) #4, !dbg !2096
  store i8* %371, i8** %360, align 8, !dbg !2097, !tbaa !201
  %372 = load i32, i32* %362, align 4, !dbg !2098
  %373 = add i32 %372, 1, !dbg !2098
  %374 = and i32 %373, 65535, !dbg !2098
  %375 = and i32 %372, -65536, !dbg !2098
  %376 = or i32 %374, %375, !dbg !2098
  store i32 %376, i32* %362, align 4, !dbg !2098
  %377 = tail call i64 @ziplistBlobLen(i8* %371) #4, !dbg !2099
  %378 = trunc i64 %377 to i32, !dbg !2099
  store i32 %378, i32* %365, align 8, !dbg !2099, !tbaa !208
  tail call void @__quicklistInsertNode(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %11, %struct.quicklistNode* %358, i32 %4) #6, !dbg !2101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2102
  br label %425, !dbg !2102

; <label>:379:                                    ; preds = %348, %349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2104
  %380 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 4, !dbg !2104
  %381 = load i32, i32* %380, align 4, !dbg !2104
  %382 = and i32 %381, 196608, !dbg !2104
  %383 = icmp eq i32 %382, 131072, !dbg !2104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2109
  br i1 %383, label %384, label %406, !dbg !2109

; <label>:384:                                    ; preds = %379
  %385 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 3, !dbg !2113
  %386 = load i32, i32* %385, align 8, !dbg !2113, !tbaa !208
  %387 = zext i32 %386 to i64, !dbg !2114
  %388 = tail call i8* @zmalloc(i64 %387) #4, !dbg !2115
  %389 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !2117
  %390 = load i8*, i8** %389, align 8, !dbg !2117, !tbaa !201
  %391 = getelementptr inbounds i8, i8* %390, i64 4, !dbg !2119
  %392 = bitcast i8* %390 to i32*, !dbg !2120
  %393 = load i32, i32* %392, align 4, !dbg !2120, !tbaa !280
  %394 = load i32, i32* %385, align 8, !dbg !2121, !tbaa !208
  %395 = tail call i32 @lzf_decompress(i8* nonnull %391, i32 %393, i8* %388, i32 %394) #4, !dbg !2122
  %396 = icmp eq i32 %395, 0, !dbg !2123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2124
  br i1 %396, label %397, label %399, !dbg !2124

; <label>:397:                                    ; preds = %384
  tail call void @zfree(i8* %388) #4, !dbg !2125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2126
  %398 = load i32, i32* %380, align 4, !dbg !2127
  br label %403, !dbg !2126

; <label>:399:                                    ; preds = %384
  tail call void @zfree(i8* %390) #4, !dbg !2128
  store i8* %388, i8** %389, align 8, !dbg !2129, !tbaa !201
  %400 = load i32, i32* %380, align 4, !dbg !2130
  %401 = and i32 %400, -196609, !dbg !2130
  %402 = or i32 %401, 65536, !dbg !2130
  store i32 %402, i32* %380, align 4, !dbg !2130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2131
  br label %403, !dbg !2131

; <label>:403:                                    ; preds = %397, %399
  %404 = phi i32 [ %398, %397 ], [ %402, %399 ], !dbg !2127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2132
  %405 = or i32 %404, 1048576, !dbg !2127
  store i32 %405, i32* %380, align 4, !dbg !2127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2127
  br label %406, !dbg !2127

; <label>:406:                                    ; preds = %403, %379
  %407 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 6, !dbg !2133
  %408 = load i32, i32* %407, align 4, !dbg !2133, !tbaa !1249
  %409 = tail call %struct.quicklistNode* @_quicklistSplitNode(%struct.quicklistNode* nonnull %11, i32 %408, i32 %4) #6, !dbg !2134
  %410 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %409, i64 0, i32 2, !dbg !2135
  %411 = load i8*, i8** %410, align 8, !dbg !2135, !tbaa !201
  %412 = trunc i64 %3 to i32, !dbg !2136
  %413 = xor i1 %65, true, !dbg !2137
  %414 = zext i1 %413 to i32, !dbg !2137
  %415 = tail call i8* @ziplistPush(i8* %411, i8* %2, i32 %412, i32 %414) #4, !dbg !2138
  store i8* %415, i8** %410, align 8, !dbg !2139, !tbaa !201
  %416 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %409, i64 0, i32 4, !dbg !2140
  %417 = load i32, i32* %416, align 4, !dbg !2141
  %418 = add i32 %417, 1, !dbg !2141
  %419 = and i32 %418, 65535, !dbg !2141
  %420 = and i32 %417, -65536, !dbg !2141
  %421 = or i32 %419, %420, !dbg !2141
  store i32 %421, i32* %416, align 4, !dbg !2141
  %422 = tail call i64 @ziplistBlobLen(i8* %415) #4, !dbg !2142
  %423 = trunc i64 %422 to i32, !dbg !2142
  %424 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %409, i64 0, i32 3, !dbg !2142
  store i32 %423, i32* %424, align 8, !dbg !2142, !tbaa !208
  tail call void @__quicklistInsertNode(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %11, %struct.quicklistNode* %409, i32 %4) #6, !dbg !2144
  tail call void @_quicklistMergeNodes(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %11) #6, !dbg !2145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2146
  br label %425, !dbg !2146

; <label>:425:                                    ; preds = %155, %273, %276, %356, %406, %337, %334, %215, %212, %194, %339, %318, %257, %52
  %426 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !2147
  %427 = load i64, i64* %426, align 8, !dbg !2147, !tbaa !221
  %428 = add i64 %427, 1, !dbg !2147
  store i64 %428, i64* %426, align 8, !dbg !2147, !tbaa !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2148
  ret void, !dbg !2148
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistInsertBefore(%struct.quicklist* nocapture, %struct.quicklistEntry* nocapture readonly, i8*, i64) local_unnamed_addr #0 !dbg !2149 {
  tail call void @_quicklistInsert(%struct.quicklist* %0, %struct.quicklistEntry* %1, i8* %2, i64 %3, i32 0) #6, !dbg !2161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2162
  ret void, !dbg !2162
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistInsertAfter(%struct.quicklist* nocapture, %struct.quicklistEntry* nocapture readonly, i8*, i64) local_unnamed_addr #0 !dbg !2163 {
  tail call void @_quicklistInsert(%struct.quicklist* %0, %struct.quicklistEntry* %1, i8* %2, i64 %3, i32 1) #6, !dbg !2173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2174
  ret void, !dbg !2174
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistDelRange(%struct.quicklist*, i64, i64) local_unnamed_addr #0 !dbg !2175 {
  %4 = alloca %struct.quicklistEntry, align 8
  %5 = icmp slt i64 %2, 1, !dbg !2193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2195
  br i1 %5, label %132, label %6, !dbg !2195

; <label>:6:                                      ; preds = %3
  %7 = icmp sgt i64 %1, -1, !dbg !2197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2199
  br i1 %7, label %8, label %14, !dbg !2199

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !2200
  %10 = load i64, i64* %9, align 8, !dbg !2200, !tbaa !221
  %11 = sub i64 %10, %1, !dbg !2201
  %12 = icmp ult i64 %11, %2, !dbg !2202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2204
  %13 = select i1 %12, i64 %11, i64 %2, !dbg !2206
  br label %18, !dbg !2206

; <label>:14:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2208
  %15 = sub nsw i64 0, %1, !dbg !2209
  %16 = icmp ult i64 %15, %2, !dbg !2210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2211
  br i1 %16, label %17, label %18, !dbg !2211

; <label>:17:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2212
  br label %18, !dbg !2212

; <label>:18:                                     ; preds = %8, %14, %17
  %19 = phi i64 [ %15, %17 ], [ %2, %14 ], [ %13, %8 ], !dbg !2214
  %20 = bitcast %struct.quicklistEntry* %4 to i8*, !dbg !2215
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %20) #5, !dbg !2215
  %21 = call i32 @quicklistIndex(%struct.quicklist* %0, i64 %1, %struct.quicklistEntry* nonnull %4) #6, !dbg !2217
  %22 = icmp eq i32 %21, 0, !dbg !2217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2219
  br i1 %22, label %130, label %23, !dbg !2219

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 1, !dbg !2220
  %25 = load %struct.quicklistNode*, %struct.quicklistNode** %24, align 8, !dbg !2220, !tbaa !1123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2222
  %26 = icmp eq i64 %19, 0, !dbg !2222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2222
  br i1 %26, label %130, label %27, !dbg !2222

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 6
  %29 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2
  %30 = load i32, i32* %28, align 4, !dbg !2223, !tbaa !1249
  br label %31, !dbg !2222

; <label>:31:                                     ; preds = %27, %126
  %32 = phi i32 [ %30, %27 ], [ 0, %126 ], !dbg !2223
  %33 = phi %struct.quicklistNode* [ %25, %27 ], [ %36, %126 ]
  %34 = phi i64 [ %19, %27 ], [ %128, %126 ]
  %35 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %33, i64 0, i32 1, !dbg !2225
  %36 = load %struct.quicklistNode*, %struct.quicklistNode** %35, align 8, !dbg !2225, !tbaa !244
  %37 = icmp eq i32 %32, 0, !dbg !2228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2229
  br i1 %37, label %38, label %44, !dbg !2229

; <label>:38:                                     ; preds = %31
  %39 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %33, i64 0, i32 4, !dbg !2230
  %40 = load i32, i32* %39, align 4, !dbg !2230
  %41 = and i32 %40, 65535, !dbg !2230
  %42 = zext i32 %41 to i64, !dbg !2231
  %43 = icmp ult i64 %34, %42, !dbg !2232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2234
  br i1 %43, label %51, label %63, !dbg !2233

; <label>:44:                                     ; preds = %31
  %45 = icmp sgt i32 %32, -1, !dbg !2236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2238
  br i1 %45, label %46, label %58, !dbg !2238

; <label>:46:                                     ; preds = %44
  %47 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %33, i64 0, i32 4
  %48 = load i32, i32* %47, align 4, !dbg !2239
  %49 = and i32 %48, 65535, !dbg !2239
  %50 = zext i32 %49 to i64, !dbg !2240
  br label %51, !dbg !2238

; <label>:51:                                     ; preds = %46, %38
  %52 = phi i64 [ %50, %46 ], [ %42, %38 ], !dbg !2240
  %53 = phi i32 [ %49, %46 ], [ %41, %38 ], !dbg !2239
  %54 = icmp ult i64 %34, %52, !dbg !2241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2242
  br i1 %54, label %62, label %55, !dbg !2242

; <label>:55:                                     ; preds = %51
  %56 = sub nsw i32 %53, %32, !dbg !2243
  %57 = sext i32 %56 to i64, !dbg !2245
  br label %64, !dbg !2247

; <label>:58:                                     ; preds = %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2248
  %59 = sub nsw i32 0, %32, !dbg !2249
  %60 = sext i32 %59 to i64, !dbg !2249
  %61 = icmp ult i64 %34, %60, !dbg !2252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2254
  br i1 %61, label %64, label %66, !dbg !2254

; <label>:62:                                     ; preds = %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2248
  br label %64

; <label>:63:                                     ; preds = %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2255
  call void @__quicklistDelNode(%struct.quicklist* %0, %struct.quicklistNode* nonnull %33) #6, !dbg !2256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2259
  br label %126, !dbg !2259

; <label>:64:                                     ; preds = %58, %55, %62
  %65 = phi i64 [ %57, %55 ], [ %34, %62 ], [ %34, %58 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %66, !dbg !2255

; <label>:66:                                     ; preds = %64, %58
  %67 = phi i64 [ %60, %58 ], [ %65, %64 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2260
  %68 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %33, i64 0, i32 4, !dbg !2260
  %69 = load i32, i32* %68, align 4, !dbg !2260
  %70 = and i32 %69, 196608, !dbg !2260
  %71 = icmp eq i32 %70, 131072, !dbg !2260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2264
  br i1 %71, label %75, label %72, !dbg !2264

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %33, i64 0, i32 2, !dbg !2265
  %74 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %33, i64 0, i32 3, !dbg !2266
  br label %98, !dbg !2264

; <label>:75:                                     ; preds = %66
  %76 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %33, i64 0, i32 3, !dbg !2271
  %77 = load i32, i32* %76, align 8, !dbg !2271, !tbaa !208
  %78 = zext i32 %77 to i64, !dbg !2272
  %79 = call i8* @zmalloc(i64 %78) #4, !dbg !2273
  %80 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %33, i64 0, i32 2, !dbg !2275
  %81 = load i8*, i8** %80, align 8, !dbg !2275, !tbaa !201
  %82 = getelementptr inbounds i8, i8* %81, i64 4, !dbg !2277
  %83 = bitcast i8* %81 to i32*, !dbg !2278
  %84 = load i32, i32* %83, align 4, !dbg !2278, !tbaa !280
  %85 = load i32, i32* %76, align 8, !dbg !2279, !tbaa !208
  %86 = call i32 @lzf_decompress(i8* nonnull %82, i32 %84, i8* %79, i32 %85) #4, !dbg !2280
  %87 = icmp eq i32 %86, 0, !dbg !2281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2282
  br i1 %87, label %88, label %90, !dbg !2282

; <label>:88:                                     ; preds = %75
  call void @zfree(i8* %79) #4, !dbg !2283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2284
  %89 = load i32, i32* %68, align 4, !dbg !2285
  br label %94, !dbg !2284

; <label>:90:                                     ; preds = %75
  call void @zfree(i8* %81) #4, !dbg !2286
  store i8* %79, i8** %80, align 8, !dbg !2287, !tbaa !201
  %91 = load i32, i32* %68, align 4, !dbg !2288
  %92 = and i32 %91, -196609, !dbg !2288
  %93 = or i32 %92, 65536, !dbg !2288
  store i32 %93, i32* %68, align 4, !dbg !2288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2289
  br label %94, !dbg !2289

; <label>:94:                                     ; preds = %88, %90
  %95 = phi i32 [ %89, %88 ], [ %93, %90 ], !dbg !2285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2290
  %96 = or i32 %95, 1048576, !dbg !2285
  store i32 %96, i32* %68, align 4, !dbg !2285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2285
  %97 = load i32, i32* %28, align 4, !dbg !2291, !tbaa !1249
  br label %98, !dbg !2285

; <label>:98:                                     ; preds = %72, %94
  %99 = phi i32* [ %74, %72 ], [ %76, %94 ], !dbg !2266
  %100 = phi i8** [ %73, %72 ], [ %80, %94 ], !dbg !2265
  %101 = phi i32 [ %32, %72 ], [ %97, %94 ], !dbg !2291
  %102 = load i8*, i8** %100, align 8, !dbg !2265, !tbaa !201
  %103 = trunc i64 %67 to i32, !dbg !2292
  %104 = call i8* @ziplistDeleteRange(i8* %102, i32 %101, i32 %103) #4, !dbg !2293
  store i8* %104, i8** %100, align 8, !dbg !2294, !tbaa !201
  %105 = call i64 @ziplistBlobLen(i8* %104) #4, !dbg !2266
  %106 = trunc i64 %105 to i32, !dbg !2266
  store i32 %106, i32* %99, align 8, !dbg !2266, !tbaa !208
  %107 = load i32, i32* %68, align 4, !dbg !2295
  %108 = sub i32 %107, %103, !dbg !2295
  %109 = and i32 %108, 65535, !dbg !2295
  %110 = and i32 %107, -65536, !dbg !2295
  %111 = or i32 %109, %110, !dbg !2295
  store i32 %111, i32* %68, align 4, !dbg !2295
  %112 = load i64, i64* %29, align 8, !dbg !2296, !tbaa !221
  %113 = sub i64 %112, %67, !dbg !2296
  store i64 %113, i64* %29, align 8, !dbg !2296, !tbaa !221
  %114 = load i32, i32* %68, align 4, !dbg !2297
  %115 = and i32 %114, 65535, !dbg !2297
  %116 = icmp eq i32 %115, 0, !dbg !2297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2300
  br i1 %116, label %117, label %118, !dbg !2300

; <label>:117:                                    ; preds = %98
  call void @__quicklistDelNode(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %33) #6, !dbg !2301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2303
  br label %126, !dbg !2303

; <label>:118:                                    ; preds = %98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2303
  %119 = and i32 %114, 1048576, !dbg !2304
  %120 = icmp eq i32 %119, 0, !dbg !2304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2308
  br i1 %120, label %126, label %121, !dbg !2308

; <label>:121:                                    ; preds = %118
  %122 = and i32 %114, 196608, !dbg !2309
  %123 = icmp eq i32 %122, 65536, !dbg !2309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2312
  br i1 %123, label %124, label %126, !dbg !2312

; <label>:124:                                    ; preds = %121
  %125 = call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %33) #6, !dbg !2313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2313
  br label %126, !dbg !2313

; <label>:126:                                    ; preds = %117, %118, %121, %124, %63
  %127 = phi i64 [ %67, %118 ], [ %67, %121 ], [ %67, %124 ], [ %42, %63 ], [ %67, %117 ]
  %128 = sub i64 %34, %127, !dbg !2315
  store i32 0, i32* %28, align 4, !dbg !2316, !tbaa !1249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2222
  %129 = icmp eq i64 %128, 0, !dbg !2222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2222
  br i1 %129, label %130, label %31, !dbg !2222, !llvm.loop !2317

; <label>:130:                                    ; preds = %126, %23, %18
  %131 = phi i32 [ 0, %18 ], [ 1, %23 ], [ 1, %126 ], !dbg !2319
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %20) #5, !dbg !2320
  br label %132

; <label>:132:                                    ; preds = %3, %130
  %133 = phi i32 [ %131, %130 ], [ 0, %3 ], !dbg !2214
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2320
  ret i32 %133, !dbg !2320
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistCompare(i8*, i8*, i32) local_unnamed_addr #0 !dbg !2321 {
  %4 = tail call i32 @ziplistCompare(i8* %0, i8* %1, i32 %2) #4, !dbg !2331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2332
  ret i32 %4, !dbg !2332
}

; Function Attrs: noredzone
declare dso_local i32 @ziplistCompare(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklistIter* @quicklistGetIterator(%struct.quicklist*, i32) local_unnamed_addr #0 !dbg !2333 {
  %3 = tail call i8* @zmalloc(i64 40) #4, !dbg !2342
  %4 = bitcast i8* %3 to %struct.quicklistIter*, !dbg !2342
  %5 = icmp eq i32 %1, 0, !dbg !2344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2346
  br i1 %5, label %6, label %8, !dbg !2346

; <label>:6:                                      ; preds = %2
  %7 = bitcast %struct.quicklist* %0 to i64*, !dbg !2347
  br label %13, !dbg !2349

; <label>:8:                                      ; preds = %2
  %9 = icmp eq i32 %1, 1, !dbg !2350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2352
  br i1 %9, label %10, label %21, !dbg !2352

; <label>:10:                                     ; preds = %8
  %11 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !2353
  %12 = bitcast %struct.quicklistNode** %11 to i64*, !dbg !2353
  br label %13, !dbg !2355

; <label>:13:                                     ; preds = %6, %10
  %14 = phi i64* [ %12, %10 ], [ %7, %6 ]
  %15 = phi i64 [ -1, %10 ], [ 0, %6 ]
  %16 = load i64, i64* %14, align 8, !dbg !2356, !tbaa !70
  %17 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !2356
  %18 = bitcast i8* %17 to i64*, !dbg !2356
  store i64 %16, i64* %18, align 8, !dbg !2356, !tbaa !1165
  %19 = getelementptr inbounds i8, i8* %3, i64 24, !dbg !2356
  %20 = bitcast i8* %19 to i64*, !dbg !2356
  store i64 %15, i64* %20, align 8, !dbg !2356, !tbaa !1168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2356
  br label %21, !dbg !2357

; <label>:21:                                     ; preds = %13, %8
  %22 = getelementptr inbounds i8, i8* %3, i64 32, !dbg !2357
  %23 = bitcast i8* %22 to i32*, !dbg !2357
  store i32 %1, i32* %23, align 8, !dbg !2358, !tbaa !1158
  %24 = bitcast i8* %3 to %struct.quicklist**, !dbg !2359
  store %struct.quicklist* %0, %struct.quicklist** %24, align 8, !dbg !2360, !tbaa !2361
  %25 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !2362
  %26 = bitcast i8* %25 to i8**, !dbg !2362
  store i8* null, i8** %26, align 8, !dbg !2363, !tbaa !1151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2364
  ret %struct.quicklistIter* %4, !dbg !2364
}

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist*, i32, i64) local_unnamed_addr #0 !dbg !2365 {
  %4 = alloca %struct.quicklistEntry, align 8
  %5 = bitcast %struct.quicklistEntry* %4 to i8*, !dbg !2379
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #5, !dbg !2379
  %6 = call i32 @quicklistIndex(%struct.quicklist* %0, i64 %2, %struct.quicklistEntry* nonnull %4) #6, !dbg !2381
  %7 = icmp eq i32 %6, 0, !dbg !2381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2382
  br i1 %7, label %48, label %8, !dbg !2382

; <label>:8:                                      ; preds = %3
  %9 = call i8* @zmalloc(i64 40) #4, !dbg !2386
  %10 = bitcast i8* %9 to %struct.quicklistIter*, !dbg !2386
  %11 = icmp eq i32 %1, 0, !dbg !2388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2389
  br i1 %11, label %12, label %19, !dbg !2389

; <label>:12:                                     ; preds = %8
  %13 = bitcast %struct.quicklist* %0 to i64*, !dbg !2390
  %14 = load i64, i64* %13, align 8, !dbg !2390, !tbaa !234
  %15 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !2391
  %16 = bitcast i8* %15 to i64*, !dbg !2392
  store i64 %14, i64* %16, align 8, !dbg !2392, !tbaa !1165
  %17 = getelementptr inbounds i8, i8* %9, i64 24, !dbg !2393
  %18 = bitcast i8* %17 to i64*, !dbg !2393
  store i64 0, i64* %18, align 8, !dbg !2394, !tbaa !1168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2395
  br label %34, !dbg !2395

; <label>:19:                                     ; preds = %8
  %20 = icmp eq i32 %1, 1, !dbg !2396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2397
  br i1 %20, label %26, label %21, !dbg !2397

; <label>:21:                                     ; preds = %19
  %22 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !2398
  %23 = bitcast i8* %22 to i64*, !dbg !2399
  %24 = getelementptr inbounds i8, i8* %9, i64 24, !dbg !2400
  %25 = bitcast i8* %24 to i64*, !dbg !2400
  br label %34, !dbg !2397

; <label>:26:                                     ; preds = %19
  %27 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !2401
  %28 = bitcast %struct.quicklistNode** %27 to i64*, !dbg !2401
  %29 = load i64, i64* %28, align 8, !dbg !2401, !tbaa !375
  %30 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !2402
  %31 = bitcast i8* %30 to i64*, !dbg !2403
  store i64 %29, i64* %31, align 8, !dbg !2403, !tbaa !1165
  %32 = getelementptr inbounds i8, i8* %9, i64 24, !dbg !2404
  %33 = bitcast i8* %32 to i64*, !dbg !2404
  store i64 -1, i64* %33, align 8, !dbg !2405, !tbaa !1168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2406
  br label %34, !dbg !2406

; <label>:34:                                     ; preds = %21, %12, %26
  %35 = phi i64* [ %25, %21 ], [ %18, %12 ], [ %33, %26 ], !dbg !2400
  %36 = phi i64* [ %23, %21 ], [ %16, %12 ], [ %31, %26 ], !dbg !2399
  %37 = getelementptr inbounds i8, i8* %9, i64 32, !dbg !2407
  %38 = bitcast i8* %37 to i32*, !dbg !2407
  store i32 %1, i32* %38, align 8, !dbg !2408, !tbaa !1158
  %39 = bitcast i8* %9 to %struct.quicklist**, !dbg !2409
  store %struct.quicklist* %0, %struct.quicklist** %39, align 8, !dbg !2410, !tbaa !2361
  %40 = getelementptr inbounds i8, i8* %9, i64 16, !dbg !2411
  %41 = bitcast i8* %40 to i8**, !dbg !2411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2412
  store i8* null, i8** %41, align 8, !dbg !2414, !tbaa !1151
  %42 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 1, !dbg !2415
  %43 = bitcast %struct.quicklistNode** %42 to i64*, !dbg !2415
  %44 = load i64, i64* %43, align 8, !dbg !2415, !tbaa !1123
  store i64 %44, i64* %36, align 8, !dbg !2399, !tbaa !1165
  %45 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 6, !dbg !2416
  %46 = load i32, i32* %45, align 4, !dbg !2416, !tbaa !1249
  %47 = sext i32 %46 to i64, !dbg !2417
  store i64 %47, i64* %35, align 8, !dbg !2418, !tbaa !1168
  br label %48

; <label>:48:                                     ; preds = %3, %34
  %49 = phi %struct.quicklistIter* [ %10, %34 ], [ null, %3 ], !dbg !2419
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #5, !dbg !2421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2421
  ret %struct.quicklistIter* %49, !dbg !2421
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistReleaseIterator(%struct.quicklistIter*) local_unnamed_addr #0 !dbg !2422 {
  %2 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 1, !dbg !2428
  %3 = load %struct.quicklistNode*, %struct.quicklistNode** %2, align 8, !dbg !2428, !tbaa !1165
  %4 = icmp eq %struct.quicklistNode* %3, null, !dbg !2430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2431
  br i1 %4, label %18, label %5, !dbg !2431

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %3, i64 0, i32 4, !dbg !2432
  %7 = load i32, i32* %6, align 4, !dbg !2432
  %8 = and i32 %7, 1048576, !dbg !2432
  %9 = icmp eq i32 %8, 0, !dbg !2432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2435
  br i1 %9, label %15, label %10, !dbg !2435

; <label>:10:                                     ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2436
  %11 = and i32 %7, 196608, !dbg !2436
  %12 = icmp eq i32 %11, 65536, !dbg !2436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2439
  br i1 %12, label %13, label %18, !dbg !2439

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %3) #6, !dbg !2440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2440
  br label %18, !dbg !2440

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 0, !dbg !2432
  %17 = load %struct.quicklist*, %struct.quicklist** %16, align 8, !dbg !2432, !tbaa !2361
  tail call void @__quicklistCompress(%struct.quicklist* %17, %struct.quicklistNode* nonnull %3) #6, !dbg !2432
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %18

; <label>:18:                                     ; preds = %1, %13, %10, %15
  %19 = bitcast %struct.quicklistIter* %0 to i8*, !dbg !2442
  tail call void @zfree(i8* %19) #4, !dbg !2443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2444
  ret void, !dbg !2444
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistNext(%struct.quicklistIter*, %struct.quicklistEntry*) local_unnamed_addr #0 !dbg !2445 {
  %3 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 3, !dbg !2458
  %4 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 2, !dbg !2458
  %5 = bitcast i8** %4 to <2 x i8*>*, !dbg !2458
  store <2 x i8*> zeroinitializer, <2 x i8*>* %5, align 8, !dbg !2458, !tbaa !70
  %6 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 4, !dbg !2458
  store i64 -123456789, i64* %6, align 8, !dbg !2458, !tbaa !1248
  %7 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 0, !dbg !2458
  store %struct.quicklist* null, %struct.quicklist** %7, align 8, !dbg !2458, !tbaa !1130
  %8 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 1, !dbg !2458
  store %struct.quicklistNode* null, %struct.quicklistNode** %8, align 8, !dbg !2458, !tbaa !1123
  %9 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 6, !dbg !2458
  store i32 123456789, i32* %9, align 4, !dbg !2458, !tbaa !1249
  %10 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 5, !dbg !2458
  store i32 0, i32* %10, align 8, !dbg !2458, !tbaa !1250
  %11 = icmp eq %struct.quicklistIter* %0, null, !dbg !2460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2462
  br i1 %11, label %124, label %12, !dbg !2462

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 0, !dbg !2463
  %14 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 1, !dbg !2464
  %15 = bitcast %struct.quicklistNode** %14 to i64*, !dbg !2464
  %16 = bitcast %struct.quicklistIter* %0 to <2 x i64>*, !dbg !2463
  %17 = load <2 x i64>, <2 x i64>* %16, align 8, !dbg !2463, !tbaa !70
  %18 = bitcast %struct.quicklistEntry* %1 to <2 x i64>*, !dbg !2465
  store <2 x i64> %17, <2 x i64>* %18, align 8, !dbg !2465, !tbaa !70
  %19 = extractelement <2 x i64> %17, i32 1, !dbg !2466
  %20 = inttoptr i64 %19 to %struct.quicklistNode*, !dbg !2466
  %21 = icmp eq i64 %19, 0, !dbg !2468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2469
  br i1 %21, label %124, label %22, !dbg !2469

; <label>:22:                                     ; preds = %12
  %23 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 2, !dbg !2472
  %24 = load i8*, i8** %23, align 8, !dbg !2472, !tbaa !1151
  %25 = icmp eq i8* %24, null, !dbg !2474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2475
  br i1 %25, label %26, label %64, !dbg !2475

; <label>:26:                                     ; preds = %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2476
  %27 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %20, i64 0, i32 4, !dbg !2476
  %28 = load i32, i32* %27, align 4, !dbg !2476
  %29 = and i32 %28, 196608, !dbg !2476
  %30 = icmp eq i32 %29, 131072, !dbg !2476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2480
  br i1 %30, label %31, label %55, !dbg !2480

; <label>:31:                                     ; preds = %26
  %32 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %20, i64 0, i32 3, !dbg !2484
  %33 = load i32, i32* %32, align 8, !dbg !2484, !tbaa !208
  %34 = zext i32 %33 to i64, !dbg !2485
  %35 = tail call i8* @zmalloc(i64 %34) #4, !dbg !2486
  %36 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %20, i64 0, i32 2, !dbg !2488
  %37 = load i8*, i8** %36, align 8, !dbg !2488, !tbaa !201
  %38 = getelementptr inbounds i8, i8* %37, i64 4, !dbg !2490
  %39 = bitcast i8* %37 to i32*, !dbg !2491
  %40 = load i32, i32* %39, align 4, !dbg !2491, !tbaa !280
  %41 = load i32, i32* %32, align 8, !dbg !2492, !tbaa !208
  %42 = tail call i32 @lzf_decompress(i8* nonnull %38, i32 %40, i8* %35, i32 %41) #4, !dbg !2493
  %43 = icmp eq i32 %42, 0, !dbg !2494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2495
  br i1 %43, label %44, label %45, !dbg !2495

; <label>:44:                                     ; preds = %31
  tail call void @zfree(i8* %35) #4, !dbg !2496
  br label %49, !dbg !2497

; <label>:45:                                     ; preds = %31
  tail call void @zfree(i8* %37) #4, !dbg !2498
  store i8* %35, i8** %36, align 8, !dbg !2499, !tbaa !201
  %46 = load i32, i32* %27, align 4, !dbg !2500
  %47 = and i32 %46, -196609, !dbg !2500
  %48 = or i32 %47, 65536, !dbg !2500
  store i32 %48, i32* %27, align 4, !dbg !2500
  br label %49, !dbg !2501

; <label>:49:                                     ; preds = %44, %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2503
  %50 = load %struct.quicklistNode*, %struct.quicklistNode** %14, align 8, !dbg !2504, !tbaa !1165
  %51 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %50, i64 0, i32 4, !dbg !2504
  %52 = load i32, i32* %51, align 4, !dbg !2504
  %53 = or i32 %52, 1048576, !dbg !2504
  store i32 %53, i32* %51, align 4, !dbg !2504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2504
  %54 = load %struct.quicklistNode*, %struct.quicklistNode** %14, align 8, !dbg !2505, !tbaa !1165
  br label %55, !dbg !2504

; <label>:55:                                     ; preds = %49, %26
  %56 = phi %struct.quicklistNode* [ %54, %49 ], [ %20, %26 ], !dbg !2505
  %57 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %56, i64 0, i32 2, !dbg !2506
  %58 = load i8*, i8** %57, align 8, !dbg !2506, !tbaa !201
  %59 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 3, !dbg !2507
  %60 = load i64, i64* %59, align 8, !dbg !2507, !tbaa !1168
  %61 = trunc i64 %60 to i32, !dbg !2508
  %62 = tail call i8* @ziplistIndex(i8* %58, i32 %61) #4, !dbg !2509
  store i8* %62, i8** %23, align 8, !dbg !2510, !tbaa !1151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2511
  %63 = load i64, i64* %59, align 8, !dbg !2512, !tbaa !1168
  br label %78, !dbg !2511

; <label>:64:                                     ; preds = %22
  %65 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 4, !dbg !2513
  %66 = load i32, i32* %65, align 8, !dbg !2513, !tbaa !1158
  %67 = icmp eq i32 %66, 0, !dbg !2516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2518
  br i1 %67, label %69, label %68, !dbg !2517

; <label>:68:                                     ; preds = %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2519
  br label %69, !dbg !2519

; <label>:69:                                     ; preds = %64, %68
  %70 = phi i8* (i8*, i8*)* [ @ziplistPrev, %68 ], [ @ziplistNext, %64 ], !dbg !2522
  %71 = phi i64 [ -1, %68 ], [ 1, %64 ]
  %72 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %20, i64 0, i32 2, !dbg !2523
  %73 = load i8*, i8** %72, align 8, !dbg !2523, !tbaa !201
  %74 = tail call i8* %70(i8* %73, i8* nonnull %24) #4, !dbg !2524, !callees !2525
  store i8* %74, i8** %23, align 8, !dbg !2526, !tbaa !1151
  %75 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 3, !dbg !2527
  %76 = load i64, i64* %75, align 8, !dbg !2528, !tbaa !1168
  %77 = add nsw i64 %76, %71, !dbg !2528
  store i64 %77, i64* %75, align 8, !dbg !2528, !tbaa !1168
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %78

; <label>:78:                                     ; preds = %69, %55
  %79 = phi i64* [ %75, %69 ], [ %59, %55 ], !dbg !2512
  %80 = phi i8* [ %74, %69 ], [ %62, %55 ], !dbg !2529
  %81 = phi i64 [ %77, %69 ], [ %63, %55 ], !dbg !2512
  %82 = ptrtoint i8* %80 to i64, !dbg !2531
  %83 = bitcast i8** %4 to i64*, !dbg !2532
  store i64 %82, i64* %83, align 8, !dbg !2532, !tbaa !1208
  %84 = trunc i64 %81 to i32, !dbg !2533
  store i32 %84, i32* %9, align 4, !dbg !2534, !tbaa !1249
  %85 = icmp eq i8* %80, null, !dbg !2535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2536
  br i1 %85, label %88, label %86, !dbg !2536

; <label>:86:                                     ; preds = %78
  %87 = tail call i32 @ziplistGet(i8* nonnull %80, i8** nonnull %3, i32* nonnull %10, i64* nonnull %6) #4, !dbg !2537
  br label %122, !dbg !2539

; <label>:88:                                     ; preds = %78
  %89 = load %struct.quicklistNode*, %struct.quicklistNode** %14, align 8, !dbg !2540, !tbaa !1165
  %90 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %89, i64 0, i32 4, !dbg !2540
  %91 = load i32, i32* %90, align 4, !dbg !2540
  %92 = and i32 %91, 1048576, !dbg !2540
  %93 = icmp eq i32 %92, 0, !dbg !2540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2544
  br i1 %93, label %101, label %94, !dbg !2544

; <label>:94:                                     ; preds = %88
  %95 = icmp eq %struct.quicklistNode* %89, null, !dbg !2545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2545
  br i1 %95, label %103, label %96, !dbg !2545

; <label>:96:                                     ; preds = %94
  %97 = and i32 %91, 196608, !dbg !2545
  %98 = icmp eq i32 %97, 65536, !dbg !2545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2548
  br i1 %98, label %99, label %103, !dbg !2548

; <label>:99:                                     ; preds = %96
  %100 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %89) #6, !dbg !2549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2549
  br label %103, !dbg !2549

; <label>:101:                                    ; preds = %88
  %102 = load %struct.quicklist*, %struct.quicklist** %13, align 8, !dbg !2540, !tbaa !2361
  tail call void @__quicklistCompress(%struct.quicklist* %102, %struct.quicklistNode* %89) #6, !dbg !2540
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %103

; <label>:103:                                    ; preds = %94, %96, %99, %101
  %104 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 4, !dbg !2551
  %105 = load i32, i32* %104, align 8, !dbg !2551, !tbaa !1158
  %106 = icmp eq i32 %105, 0, !dbg !2553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2554
  br i1 %106, label %107, label %111, !dbg !2554

; <label>:107:                                    ; preds = %103
  %108 = load %struct.quicklistNode*, %struct.quicklistNode** %14, align 8, !dbg !2555, !tbaa !1165
  %109 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %108, i64 0, i32 1, !dbg !2557
  %110 = bitcast %struct.quicklistNode** %109 to i64*, !dbg !2557
  br label %116, !dbg !2558

; <label>:111:                                    ; preds = %103
  %112 = icmp eq i32 %105, 1, !dbg !2559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2561
  br i1 %112, label %113, label %120, !dbg !2561

; <label>:113:                                    ; preds = %111
  %114 = bitcast %struct.quicklistNode** %14 to i64**, !dbg !2562
  %115 = load i64*, i64** %114, align 8, !dbg !2562, !tbaa !1165
  br label %116, !dbg !2564

; <label>:116:                                    ; preds = %107, %113
  %117 = phi i64* [ %115, %113 ], [ %110, %107 ]
  %118 = phi i64 [ -1, %113 ], [ 0, %107 ]
  %119 = load i64, i64* %117, align 8, !dbg !2565, !tbaa !70
  store i64 %119, i64* %15, align 8, !dbg !2565, !tbaa !1165
  store i64 %118, i64* %79, align 8, !dbg !2565, !tbaa !1168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2565
  br label %120, !dbg !2566

; <label>:120:                                    ; preds = %116, %111
  store i8* null, i8** %23, align 8, !dbg !2566, !tbaa !1151
  %121 = tail call i32 @quicklistNext(%struct.quicklistIter* nonnull %0, %struct.quicklistEntry* nonnull %1) #6, !dbg !2567
  br label %122, !dbg !2568

; <label>:122:                                    ; preds = %120, %86
  %123 = phi i32 [ 1, %86 ], [ %121, %120 ], !dbg !2569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2570
  br label %124

; <label>:124:                                    ; preds = %12, %2, %122
  %125 = phi i32 [ %123, %122 ], [ 0, %2 ], [ 0, %12 ], !dbg !2571
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2573
  ret i32 %125, !dbg !2573
}

; Function Attrs: noredzone
declare dso_local i8* @ziplistPrev(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklist* @quicklistDup(%struct.quicklist* nocapture readonly) local_unnamed_addr #0 !dbg !2574 {
  %2 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !2590
  %3 = load i32, i32* %2, align 8, !dbg !2590
  %4 = shl i32 %3, 16, !dbg !2590
  %5 = ashr exact i32 %4, 16, !dbg !2590
  %6 = and i32 %3, -65536, !dbg !2591
  %7 = tail call i8* @zmalloc(i64 40) #4, !dbg !2597
  %8 = bitcast i8* %7 to %struct.quicklist*, !dbg !2597
  %9 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !2600
  %10 = bitcast i8* %9 to %struct.quicklistNode**, !dbg !2600
  %11 = bitcast i8* %7 to <2 x %struct.quicklistNode*>*, !dbg !2601
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %11, align 8, !dbg !2601, !tbaa !70
  %12 = getelementptr inbounds i8, i8* %7, i64 16, !dbg !2602
  %13 = bitcast i8* %12 to i64*, !dbg !2602
  %14 = bitcast i8* %12 to <2 x i64>*, !dbg !2603
  store <2 x i64> zeroinitializer, <2 x i64>* %14, align 8, !dbg !2603, !tbaa !76
  %15 = getelementptr inbounds i8, i8* %7, i64 32, !dbg !2604
  %16 = bitcast i8* %15 to i32*, !dbg !2604
  store i32 65534, i32* %16, align 8, !dbg !2605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2614
  %17 = icmp slt i32 %4, -327680, !dbg !2615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  br i1 %17, label %18, label %19, !dbg !2616

; <label>:18:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2617
  br label %19, !dbg !2617

; <label>:19:                                     ; preds = %1, %18
  %20 = phi i32 [ -5, %18 ], [ %5, %1 ]
  %21 = and i32 %20, 65535, !dbg !2619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2624
  %22 = or i32 %21, %6, !dbg !2591
  store i32 %22, i32* %16, align 8, !dbg !2591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2627
  %23 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !2629
  %24 = load %struct.quicklistNode*, %struct.quicklistNode** %23, align 8, !dbg !2629, !tbaa !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2631
  %25 = icmp eq %struct.quicklistNode* %24, null, !dbg !2632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2632
  br i1 %25, label %26, label %27, !dbg !2632

; <label>:26:                                     ; preds = %70, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2633
  ret %struct.quicklist* %8, !dbg !2633

; <label>:27:                                     ; preds = %19, %70
  %28 = phi %struct.quicklistNode* [ %88, %70 ], [ %24, %19 ]
  %29 = tail call i8* @zmalloc(i64 32) #4, !dbg !2634
  %30 = bitcast i8* %29 to %struct.quicklistNode*, !dbg !2634
  %31 = getelementptr inbounds i8, i8* %29, i64 16, !dbg !2637
  %32 = bitcast i8* %31 to i8**, !dbg !2637
  store i8* null, i8** %32, align 8, !dbg !2638, !tbaa !201
  %33 = getelementptr inbounds i8, i8* %29, i64 28, !dbg !2639
  %34 = bitcast i8* %33 to i32*, !dbg !2639
  %35 = load i32, i32* %34, align 4, !dbg !2640
  %36 = getelementptr inbounds i8, i8* %29, i64 24, !dbg !2641
  %37 = bitcast i8* %36 to i32*, !dbg !2641
  store i32 0, i32* %37, align 8, !dbg !2642, !tbaa !208
  %38 = bitcast i8* %29 to <2 x %struct.quicklistNode*>*, !dbg !2643
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %38, align 8, !dbg !2643, !tbaa !70
  %39 = and i32 %35, -2097152, !dbg !2644
  %40 = or i32 %39, 589824, !dbg !2644
  store i32 %40, i32* %34, align 4, !dbg !2644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2645
  %41 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %28, i64 0, i32 4, !dbg !2647
  %42 = load i32, i32* %41, align 4, !dbg !2647
  %43 = lshr i32 %42, 16, !dbg !2647
  %44 = and i32 %43, 3, !dbg !2647
  %45 = icmp eq i32 %44, 2, !dbg !2648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2649
  br i1 %45, label %46, label %57, !dbg !2649

; <label>:46:                                     ; preds = %27
  %47 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %28, i64 0, i32 2, !dbg !2650
  %48 = bitcast i8** %47 to %struct.quicklistLZF**, !dbg !2650
  %49 = load %struct.quicklistLZF*, %struct.quicklistLZF** %48, align 8, !dbg !2650, !tbaa !201
  %50 = getelementptr inbounds %struct.quicklistLZF, %struct.quicklistLZF* %49, i64 0, i32 0, !dbg !2652
  %51 = load i32, i32* %50, align 4, !dbg !2652, !tbaa !280
  %52 = zext i32 %51 to i64, !dbg !2653
  %53 = add nuw nsw i64 %52, 4, !dbg !2654
  %54 = tail call i8* @zmalloc(i64 %53) #4, !dbg !2656
  store i8* %54, i8** %32, align 8, !dbg !2657, !tbaa !201
  %55 = load i8*, i8** %47, align 8, !dbg !2658, !tbaa !201
  %56 = tail call i8* @memcpy(i8* %54, i8* %55, i64 %53) #4, !dbg !2659
  br label %69, !dbg !2660

; <label>:57:                                     ; preds = %27
  %58 = icmp eq i32 %44, 1, !dbg !2661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2663
  br i1 %58, label %59, label %70, !dbg !2663

; <label>:59:                                     ; preds = %57
  %60 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %28, i64 0, i32 3, !dbg !2664
  %61 = load i32, i32* %60, align 8, !dbg !2664, !tbaa !208
  %62 = zext i32 %61 to i64, !dbg !2666
  %63 = tail call i8* @zmalloc(i64 %62) #4, !dbg !2667
  store i8* %63, i8** %32, align 8, !dbg !2668, !tbaa !201
  %64 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %28, i64 0, i32 2, !dbg !2669
  %65 = load i8*, i8** %64, align 8, !dbg !2669, !tbaa !201
  %66 = load i32, i32* %60, align 8, !dbg !2670, !tbaa !208
  %67 = zext i32 %66 to i64, !dbg !2671
  %68 = tail call i8* @memcpy(i8* %63, i8* %65, i64 %67) #4, !dbg !2672
  br label %69, !dbg !2673

; <label>:69:                                     ; preds = %46, %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2674
  br label %70, !dbg !2675

; <label>:70:                                     ; preds = %69, %57
  %71 = load i32, i32* %41, align 4, !dbg !2675
  %72 = and i32 %71, 65535, !dbg !2675
  %73 = load i32, i32* %34, align 4, !dbg !2676
  %74 = and i32 %73, -65536, !dbg !2676
  %75 = or i32 %74, %72, !dbg !2676
  store i32 %75, i32* %34, align 4, !dbg !2676
  %76 = zext i32 %72 to i64, !dbg !2677
  %77 = load i64, i64* %13, align 8, !dbg !2678, !tbaa !221
  %78 = add i64 %77, %76, !dbg !2678
  store i64 %78, i64* %13, align 8, !dbg !2678, !tbaa !221
  %79 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %28, i64 0, i32 3, !dbg !2679
  %80 = load i32, i32* %79, align 8, !dbg !2679, !tbaa !208
  store i32 %80, i32* %37, align 8, !dbg !2680, !tbaa !208
  %81 = load i32, i32* %41, align 4, !dbg !2681
  %82 = and i32 %81, 196608, !dbg !2681
  %83 = load i32, i32* %34, align 4, !dbg !2682
  %84 = and i32 %83, -196609, !dbg !2682
  %85 = or i32 %84, %82, !dbg !2682
  store i32 %85, i32* %34, align 4, !dbg !2682
  %86 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !2683, !tbaa !375
  tail call void @__quicklistInsertNode(%struct.quicklist* %8, %struct.quicklistNode* %86, %struct.quicklistNode* %30, i32 1) #4, !dbg !2688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2689
  %87 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %28, i64 0, i32 1, !dbg !2690
  %88 = load %struct.quicklistNode*, %struct.quicklistNode** %87, align 8, !dbg !2690, !tbaa !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2691
  %89 = icmp eq %struct.quicklistNode* %88, null, !dbg !2632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2632
  br i1 %89, label %26, label %27, !dbg !2632, !llvm.loop !2692
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistRotate(%struct.quicklist* nocapture) local_unnamed_addr #0 !dbg !2694 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  %7 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !2703
  %8 = load i64, i64* %7, align 8, !dbg !2703, !tbaa !221
  %9 = icmp ult i64 %8, 2, !dbg !2705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2706
  br i1 %9, label %62, label %10, !dbg !2706

; <label>:10:                                     ; preds = %1
  %11 = bitcast i8** %2 to i8*, !dbg !2707
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5, !dbg !2707
  %12 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !2708
  %13 = load %struct.quicklistNode*, %struct.quicklistNode** %12, align 8, !dbg !2708, !tbaa !375
  %14 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %13, i64 0, i32 2, !dbg !2709
  %15 = load i8*, i8** %14, align 8, !dbg !2709, !tbaa !201
  %16 = tail call i8* @ziplistIndex(i8* %15, i32 -1) #4, !dbg !2710
  store i8* %16, i8** %2, align 8, !dbg !2711, !tbaa !70
  %17 = bitcast i8** %3 to i8*, !dbg !2712
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #5, !dbg !2712
  %18 = bitcast i64* %4 to i8*, !dbg !2713
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #5, !dbg !2713
  %19 = bitcast i32* %5 to i8*, !dbg !2714
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #5, !dbg !2714
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !2715
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %20) #5, !dbg !2715
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %20, i8 0, i64 32, i1 false), !dbg !2716
  %21 = call i32 @ziplistGet(i8* %16, i8** nonnull %3, i32* nonnull %5, i64* nonnull %4) #4, !dbg !2720
  %22 = load i8*, i8** %3, align 8, !dbg !2721, !tbaa !70
  %23 = icmp eq i8* %22, null, !dbg !2721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2723
  br i1 %23, label %26, label %24, !dbg !2723

; <label>:24:                                     ; preds = %10
  %25 = load i32, i32* %5, align 4, !dbg !2724, !tbaa !280
  br label %29, !dbg !2723

; <label>:26:                                     ; preds = %10
  %27 = load i64, i64* %4, align 8, !dbg !2725, !tbaa !947
  %28 = call i32 @ll2string(i8* nonnull %20, i64 32, i64 %27) #4, !dbg !2727
  store i32 %28, i32* %5, align 4, !dbg !2728, !tbaa !280
  store i8* %20, i8** %3, align 8, !dbg !2729, !tbaa !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2730
  br label %29, !dbg !2730

; <label>:29:                                     ; preds = %24, %26
  %30 = phi i32 [ %25, %24 ], [ %28, %26 ], !dbg !2724
  %31 = phi i8* [ %22, %24 ], [ %20, %26 ], !dbg !2731
  %32 = zext i32 %30 to i64, !dbg !2724
  %33 = call i32 @quicklistPushHead(%struct.quicklist* nonnull %0, i8* nonnull %31, i64 %32) #6, !dbg !2732
  %34 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !2733
  %35 = load i64, i64* %34, align 8, !dbg !2733, !tbaa !237
  %36 = icmp eq i64 %35, 1, !dbg !2735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2736
  br i1 %36, label %37, label %42, !dbg !2736

; <label>:37:                                     ; preds = %29
  %38 = load %struct.quicklistNode*, %struct.quicklistNode** %12, align 8, !dbg !2737, !tbaa !375
  %39 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %38, i64 0, i32 2, !dbg !2739
  %40 = load i8*, i8** %39, align 8, !dbg !2739, !tbaa !201
  %41 = call i8* @ziplistIndex(i8* %40, i32 -1) #4, !dbg !2740
  store i8* %41, i8** %2, align 8, !dbg !2741, !tbaa !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2742
  br label %42, !dbg !2742

; <label>:42:                                     ; preds = %37, %29
  %43 = load %struct.quicklistNode*, %struct.quicklistNode** %12, align 8, !dbg !2743, !tbaa !375
  %44 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %43, i64 0, i32 2, !dbg !2749
  %45 = load i8*, i8** %44, align 8, !dbg !2749, !tbaa !201
  %46 = call i8* @ziplistDelete(i8* %45, i8** nonnull %2) #4, !dbg !2750
  store i8* %46, i8** %44, align 8, !dbg !2751, !tbaa !201
  %47 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %43, i64 0, i32 4, !dbg !2752
  %48 = load i32, i32* %47, align 4, !dbg !2753
  %49 = add i32 %48, 65535, !dbg !2753
  %50 = and i32 %49, 65535, !dbg !2753
  %51 = and i32 %48, -65536, !dbg !2753
  %52 = or i32 %50, %51, !dbg !2753
  store i32 %52, i32* %47, align 4, !dbg !2753
  %53 = icmp eq i32 %50, 0, !dbg !2754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2755
  br i1 %53, label %54, label %55, !dbg !2755

; <label>:54:                                     ; preds = %42
  call void @__quicklistDelNode(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %43) #4, !dbg !2756
  br label %59, !dbg !2757

; <label>:55:                                     ; preds = %42
  %56 = call i64 @ziplistBlobLen(i8* %46) #4, !dbg !2758
  %57 = trunc i64 %56 to i32, !dbg !2758
  %58 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %43, i64 0, i32 3, !dbg !2758
  store i32 %57, i32* %58, align 8, !dbg !2758, !tbaa !208
  br label %59

; <label>:59:                                     ; preds = %54, %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %60 = load i64, i64* %7, align 8, !dbg !2759, !tbaa !221
  %61 = add i64 %60, -1, !dbg !2759
  store i64 %61, i64* %7, align 8, !dbg !2759, !tbaa !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2760
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %20) #5, !dbg !2761
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #5, !dbg !2761
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #5, !dbg !2761
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #5, !dbg !2761
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5, !dbg !2761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2761
  br label %62, !dbg !2761

; <label>:62:                                     ; preds = %1, %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2761
  ret void, !dbg !2761
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistPopCustom(%struct.quicklist* nocapture, i32, i8**, i32*, i64*, i8* (i8*, i32)* nocapture) local_unnamed_addr #0 !dbg !2762 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = bitcast i8** %7 to i8*, !dbg !2789
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5, !dbg !2789
  %12 = bitcast i8** %8 to i8*, !dbg !2790
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5, !dbg !2790
  %13 = bitcast i32* %9 to i8*, !dbg !2791
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5, !dbg !2791
  %14 = bitcast i64* %10 to i8*, !dbg !2792
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #5, !dbg !2792
  %15 = icmp eq i32 %1, 0, !dbg !2793
  %16 = xor i1 %15, true, !dbg !2794
  %17 = sext i1 %16 to i32, !dbg !2794
  %18 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !2796
  %19 = load i64, i64* %18, align 8, !dbg !2796, !tbaa !221
  %20 = icmp eq i64 %19, 0, !dbg !2798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2799
  br i1 %20, label %84, label %21, !dbg !2799

; <label>:21:                                     ; preds = %6
  %22 = icmp ne i8** %2, null, !dbg !2800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2802
  br i1 %22, label %23, label %24, !dbg !2802

; <label>:23:                                     ; preds = %21
  store i8* null, i8** %2, align 8, !dbg !2803, !tbaa !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2804
  br label %24, !dbg !2804

; <label>:24:                                     ; preds = %23, %21
  %25 = icmp ne i32* %3, null, !dbg !2805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2807
  br i1 %25, label %26, label %27, !dbg !2807

; <label>:26:                                     ; preds = %24
  store i32 0, i32* %3, align 4, !dbg !2808, !tbaa !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2809
  br label %27, !dbg !2809

; <label>:27:                                     ; preds = %26, %24
  %28 = icmp ne i64* %4, null, !dbg !2810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2812
  br i1 %28, label %29, label %30, !dbg !2812

; <label>:29:                                     ; preds = %27
  store i64 -123456789, i64* %4, align 8, !dbg !2813, !tbaa !947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2814
  br label %30, !dbg !2814

; <label>:30:                                     ; preds = %29, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2815
  br i1 %15, label %31, label %35, !dbg !2815

; <label>:31:                                     ; preds = %30
  %32 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !2817
  %33 = load %struct.quicklistNode*, %struct.quicklistNode** %32, align 8, !dbg !2817, !tbaa !234
  %34 = icmp eq %struct.quicklistNode* %33, null, !dbg !2818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2820
  br i1 %34, label %82, label %42, !dbg !2819

; <label>:35:                                     ; preds = %30
  %36 = icmp eq i32 %1, -1, !dbg !2822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2824
  br i1 %36, label %37, label %82, !dbg !2824

; <label>:37:                                     ; preds = %35
  %38 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !2825
  %39 = load %struct.quicklistNode*, %struct.quicklistNode** %38, align 8, !dbg !2825, !tbaa !375
  %40 = icmp eq %struct.quicklistNode* %39, null, !dbg !2826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2827
  br i1 %40, label %82, label %41, !dbg !2827

; <label>:41:                                     ; preds = %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %42

; <label>:42:                                     ; preds = %31, %41
  %43 = phi %struct.quicklistNode* [ %39, %41 ], [ %33, %31 ], !dbg !2829
  %44 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %43, i64 0, i32 2, !dbg !2831
  %45 = load i8*, i8** %44, align 8, !dbg !2831, !tbaa !201
  %46 = tail call i8* @ziplistIndex(i8* %45, i32 %17) #4, !dbg !2832
  store i8* %46, i8** %7, align 8, !dbg !2834, !tbaa !70
  %47 = call i32 @ziplistGet(i8* %46, i8** nonnull %8, i32* nonnull %9, i64* nonnull %10) #4, !dbg !2838
  %48 = icmp eq i32 %47, 0, !dbg !2838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2840
  br i1 %48, label %82, label %49, !dbg !2840

; <label>:49:                                     ; preds = %42
  %50 = load i8*, i8** %8, align 8, !dbg !2841, !tbaa !70
  %51 = icmp eq i8* %50, null, !dbg !2841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2845
  br i1 %51, label %59, label %52, !dbg !2844

; <label>:52:                                     ; preds = %49
  br i1 %22, label %53, label %56, !dbg !2847

; <label>:53:                                     ; preds = %52
  %54 = load i32, i32* %9, align 4, !dbg !2848, !tbaa !280
  %55 = call i8* %5(i8* nonnull %50, i32 %54) #4, !dbg !2850
  store i8* %55, i8** %2, align 8, !dbg !2851, !tbaa !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2852
  br label %56, !dbg !2852

; <label>:56:                                     ; preds = %53, %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2853
  br i1 %25, label %57, label %64, !dbg !2853

; <label>:57:                                     ; preds = %56
  %58 = load i32, i32* %9, align 4, !dbg !2854, !tbaa !280
  store i32 %58, i32* %3, align 4, !dbg !2856, !tbaa !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2857
  br label %64, !dbg !2857

; <label>:59:                                     ; preds = %49
  br i1 %22, label %60, label %61, !dbg !2858

; <label>:60:                                     ; preds = %59
  store i8* null, i8** %2, align 8, !dbg !2860, !tbaa !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2862
  br label %61, !dbg !2862

; <label>:61:                                     ; preds = %60, %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2863
  br i1 %28, label %62, label %64, !dbg !2863

; <label>:62:                                     ; preds = %61
  %63 = load i64, i64* %10, align 8, !dbg !2864, !tbaa !947
  store i64 %63, i64* %4, align 8, !dbg !2866, !tbaa !947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2867
  br label %64, !dbg !2867

; <label>:64:                                     ; preds = %61, %62, %56, %57
  %65 = load i8*, i8** %44, align 8, !dbg !2873, !tbaa !201
  %66 = call i8* @ziplistDelete(i8* %65, i8** nonnull %7) #4, !dbg !2874
  store i8* %66, i8** %44, align 8, !dbg !2875, !tbaa !201
  %67 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %43, i64 0, i32 4, !dbg !2876
  %68 = load i32, i32* %67, align 4, !dbg !2877
  %69 = add i32 %68, 65535, !dbg !2877
  %70 = and i32 %69, 65535, !dbg !2877
  %71 = and i32 %68, -65536, !dbg !2877
  %72 = or i32 %70, %71, !dbg !2877
  store i32 %72, i32* %67, align 4, !dbg !2877
  %73 = icmp eq i32 %70, 0, !dbg !2878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  br i1 %73, label %74, label %75, !dbg !2879

; <label>:74:                                     ; preds = %64
  call void @__quicklistDelNode(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %43) #4, !dbg !2880
  br label %79, !dbg !2881

; <label>:75:                                     ; preds = %64
  %76 = call i64 @ziplistBlobLen(i8* %66) #4, !dbg !2882
  %77 = trunc i64 %76 to i32, !dbg !2882
  %78 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %43, i64 0, i32 3, !dbg !2882
  store i32 %77, i32* %78, align 8, !dbg !2882, !tbaa !208
  br label %79

; <label>:79:                                     ; preds = %74, %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %80 = load i64, i64* %18, align 8, !dbg !2883, !tbaa !221
  %81 = add i64 %80, -1, !dbg !2883
  store i64 %81, i64* %18, align 8, !dbg !2883, !tbaa !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2884
  br label %82, !dbg !2885

; <label>:82:                                     ; preds = %42, %35, %37, %31, %79
  %83 = phi i32 [ 1, %79 ], [ 0, %31 ], [ 0, %37 ], [ 0, %35 ], [ 0, %42 ], !dbg !2886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2886
  br label %84

; <label>:84:                                     ; preds = %6, %82
  %85 = phi i32 [ %83, %82 ], [ 0, %6 ], !dbg !2888
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #5, !dbg !2889
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !2889
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5, !dbg !2889
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5, !dbg !2889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2889
  ret i32 %85, !dbg !2889
}

; Function Attrs: noredzone nounwind
define dso_local i8* @_quicklistSaver(i8*, i32) #0 !dbg !2890 {
  %3 = icmp eq i8* %0, null, !dbg !2897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2899
  br i1 %3, label %8, label %4, !dbg !2899

; <label>:4:                                      ; preds = %2
  %5 = zext i32 %1 to i64, !dbg !2900
  %6 = tail call i8* @zmalloc(i64 %5) #4, !dbg !2902
  %7 = tail call i8* @memcpy(i8* %6, i8* nonnull %0, i64 %5) #4, !dbg !2904
  br label %8, !dbg !2905

; <label>:8:                                      ; preds = %2, %4
  %9 = phi i8* [ %6, %4 ], [ null, %2 ], !dbg !2906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2908
  ret i8* %9, !dbg !2908
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistPop(%struct.quicklist* nocapture, i32, i8**, i32*, i64*) local_unnamed_addr #0 !dbg !2909 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = bitcast i8** %6 to i8*, !dbg !2927
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #5, !dbg !2927
  %10 = bitcast i32* %7 to i8*, !dbg !2928
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #5, !dbg !2928
  %11 = bitcast i64* %8 to i8*, !dbg !2929
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5, !dbg !2929
  %12 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !2930
  %13 = load i64, i64* %12, align 8, !dbg !2930, !tbaa !221
  %14 = icmp eq i64 %13, 0, !dbg !2932
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2933
  br i1 %14, label %30, label %15, !dbg !2933

; <label>:15:                                     ; preds = %5
  %16 = call i32 @quicklistPopCustom(%struct.quicklist* nonnull %0, i32 %1, i8** nonnull %6, i32* nonnull %7, i64* nonnull %8, i8* (i8*, i32)* nonnull @_quicklistSaver) #6, !dbg !2937
  %17 = icmp eq i8** %2, null, !dbg !2939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2941
  br i1 %17, label %22, label %18, !dbg !2941

; <label>:18:                                     ; preds = %15
  %19 = bitcast i8** %6 to i64*, !dbg !2942
  %20 = load i64, i64* %19, align 8, !dbg !2942, !tbaa !70
  %21 = bitcast i8** %2 to i64*, !dbg !2943
  store i64 %20, i64* %21, align 8, !dbg !2943, !tbaa !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2944
  br label %22, !dbg !2944

; <label>:22:                                     ; preds = %15, %18
  %23 = icmp eq i64* %4, null, !dbg !2945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  br i1 %23, label %26, label %24, !dbg !2947

; <label>:24:                                     ; preds = %22
  %25 = load i64, i64* %8, align 8, !dbg !2948, !tbaa !947
  store i64 %25, i64* %4, align 8, !dbg !2949, !tbaa !947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2950
  br label %26, !dbg !2950

; <label>:26:                                     ; preds = %22, %24
  %27 = icmp eq i32* %3, null, !dbg !2951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2953
  br i1 %27, label %30, label %28, !dbg !2953

; <label>:28:                                     ; preds = %26
  %29 = load i32, i32* %7, align 4, !dbg !2954, !tbaa !280
  store i32 %29, i32* %3, align 4, !dbg !2955, !tbaa !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2956
  br label %30, !dbg !2956

; <label>:30:                                     ; preds = %28, %26, %5
  %31 = phi i32 [ 0, %5 ], [ %16, %26 ], [ %16, %28 ], !dbg !2957
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5, !dbg !2958
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #5, !dbg !2958
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #5, !dbg !2958
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2958
  ret i32 %31, !dbg !2958
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistPush(%struct.quicklist* nocapture, i8*, i64, i32) local_unnamed_addr #0 !dbg !2959 {
  %5 = icmp eq i32 %3, 0, !dbg !2971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2973
  br i1 %5, label %6, label %8, !dbg !2973

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @quicklistPushHead(%struct.quicklist* %0, i8* %1, i64 %2) #6, !dbg !2974
  br label %12, !dbg !2976

; <label>:8:                                      ; preds = %4
  %9 = icmp eq i32 %3, -1, !dbg !2977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2979
  br i1 %9, label %10, label %13, !dbg !2979

; <label>:10:                                     ; preds = %8
  %11 = tail call i32 @quicklistPushTail(%struct.quicklist* %0, i8* %1, i64 %2) #6, !dbg !2980
  br label %12, !dbg !2982

; <label>:12:                                     ; preds = %6, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2983
  br label %13, !dbg !2984

; <label>:13:                                     ; preds = %12, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2984
  ret void, !dbg !2984
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

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
!89 = !DILocation(line: 128, column: 18, scope: !90)
!90 = distinct !DILexicalBlock(scope: !81, file: !3, line: 128, column: 9)
!91 = !DILocation(line: 128, column: 9, scope: !81)
!92 = !DILocation(line: 130, column: 25, scope: !93)
!93 = distinct !DILexicalBlock(scope: !90, file: !3, line: 130, column: 16)
!94 = !DILocation(line: 130, column: 16, scope: !90)
!95 = !DILocation(line: 0, scope: !96)
!96 = distinct !DILexicalBlock(scope: !90, file: !3, line: 128, column: 34)
!97 = !DILocation(line: 133, column: 16, scope: !81)
!98 = !DILocation(line: 133, column: 25, scope: !81)
!99 = !DILocation(line: 134, column: 1, scope: !81)
!100 = distinct !DISubprogram(name: "quicklistSetFill", scope: !3, file: !3, line: 137, type: !82, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !101)
!101 = !{!102, !103}
!102 = !DILocalVariable(name: "quicklist", arg: 1, scope: !100, file: !3, line: 137, type: !21)
!103 = !DILocalVariable(name: "fill", arg: 2, scope: !100, file: !3, line: 137, type: !20)
!104 = !DILocation(line: 137, column: 34, scope: !100)
!105 = !DILocation(line: 137, column: 49, scope: !100)
!106 = !DILocation(line: 138, column: 14, scope: !107)
!107 = distinct !DILexicalBlock(scope: !100, file: !3, line: 138, column: 9)
!108 = !DILocation(line: 138, column: 9, scope: !100)
!109 = !DILocation(line: 140, column: 21, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !3, line: 140, column: 16)
!111 = !DILocation(line: 140, column: 16, scope: !107)
!112 = !DILocation(line: 0, scope: !113)
!113 = distinct !DILexicalBlock(scope: !107, file: !3, line: 138, column: 26)
!114 = !DILocation(line: 143, column: 16, scope: !100)
!115 = !DILocation(line: 143, column: 21, scope: !100)
!116 = !DILocation(line: 144, column: 1, scope: !100)
!117 = distinct !DISubprogram(name: "quicklistSetOptions", scope: !3, file: !3, line: 146, type: !118, isLocal: false, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !120)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !21, !20, !20}
!120 = !{!121, !122, !123}
!121 = !DILocalVariable(name: "quicklist", arg: 1, scope: !117, file: !3, line: 146, type: !21)
!122 = !DILocalVariable(name: "fill", arg: 2, scope: !117, file: !3, line: 146, type: !20)
!123 = !DILocalVariable(name: "depth", arg: 3, scope: !117, file: !3, line: 146, type: !20)
!124 = !DILocation(line: 146, column: 37, scope: !117)
!125 = !DILocation(line: 146, column: 52, scope: !117)
!126 = !DILocation(line: 146, column: 62, scope: !117)
!127 = !DILocation(line: 137, column: 34, scope: !100, inlinedAt: !128)
!128 = distinct !DILocation(line: 147, column: 5, scope: !117)
!129 = !DILocation(line: 137, column: 49, scope: !100, inlinedAt: !128)
!130 = !DILocation(line: 138, column: 14, scope: !107, inlinedAt: !128)
!131 = !DILocation(line: 138, column: 9, scope: !100, inlinedAt: !128)
!132 = !DILocation(line: 140, column: 21, scope: !110, inlinedAt: !128)
!133 = !DILocation(line: 140, column: 16, scope: !107, inlinedAt: !128)
!134 = !DILocation(line: 0, scope: !117)
!135 = !DILocation(line: 143, column: 16, scope: !100, inlinedAt: !128)
!136 = !DILocation(line: 143, column: 21, scope: !100, inlinedAt: !128)
!137 = !DILocation(line: 144, column: 1, scope: !100, inlinedAt: !128)
!138 = !DILocation(line: 127, column: 43, scope: !81, inlinedAt: !139)
!139 = distinct !DILocation(line: 148, column: 5, scope: !117)
!140 = !DILocation(line: 127, column: 58, scope: !81, inlinedAt: !139)
!141 = !DILocation(line: 128, column: 18, scope: !90, inlinedAt: !139)
!142 = !DILocation(line: 128, column: 9, scope: !81, inlinedAt: !139)
!143 = !DILocation(line: 130, column: 25, scope: !93, inlinedAt: !139)
!144 = !DILocation(line: 130, column: 16, scope: !90, inlinedAt: !139)
!145 = !DILocation(line: 133, column: 25, scope: !81, inlinedAt: !139)
!146 = !DILocation(line: 134, column: 1, scope: !81, inlinedAt: !139)
!147 = !DILocation(line: 149, column: 1, scope: !117)
!148 = distinct !DISubprogram(name: "quicklistNew", scope: !3, file: !3, line: 152, type: !149, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !151)
!149 = !DISubroutineType(types: !150)
!150 = !{!21, !20, !20}
!151 = !{!152, !153, !154}
!152 = !DILocalVariable(name: "fill", arg: 1, scope: !148, file: !3, line: 152, type: !20)
!153 = !DILocalVariable(name: "compress", arg: 2, scope: !148, file: !3, line: 152, type: !20)
!154 = !DILocalVariable(name: "quicklist", scope: !148, file: !3, line: 153, type: !21)
!155 = !DILocation(line: 152, column: 29, scope: !148)
!156 = !DILocation(line: 152, column: 39, scope: !148)
!157 = !DILocation(line: 117, column: 17, scope: !61, inlinedAt: !158)
!158 = distinct !DILocation(line: 153, column: 28, scope: !148)
!159 = !DILocation(line: 115, column: 23, scope: !61, inlinedAt: !158)
!160 = !DILocation(line: 118, column: 21, scope: !61, inlinedAt: !158)
!161 = !DILocation(line: 120, column: 16, scope: !61, inlinedAt: !158)
!162 = !DILocation(line: 120, column: 22, scope: !61, inlinedAt: !158)
!163 = !DILocation(line: 121, column: 16, scope: !61, inlinedAt: !158)
!164 = !DILocation(line: 122, column: 21, scope: !61, inlinedAt: !158)
!165 = !DILocation(line: 123, column: 5, scope: !61, inlinedAt: !158)
!166 = !DILocation(line: 153, column: 16, scope: !148)
!167 = !DILocation(line: 146, column: 37, scope: !117, inlinedAt: !168)
!168 = distinct !DILocation(line: 154, column: 5, scope: !148)
!169 = !DILocation(line: 146, column: 52, scope: !117, inlinedAt: !168)
!170 = !DILocation(line: 146, column: 62, scope: !117, inlinedAt: !168)
!171 = !DILocation(line: 137, column: 34, scope: !100, inlinedAt: !172)
!172 = distinct !DILocation(line: 147, column: 5, scope: !117, inlinedAt: !168)
!173 = !DILocation(line: 137, column: 49, scope: !100, inlinedAt: !172)
!174 = !DILocation(line: 138, column: 14, scope: !107, inlinedAt: !172)
!175 = !DILocation(line: 138, column: 9, scope: !100, inlinedAt: !172)
!176 = !DILocation(line: 140, column: 21, scope: !110, inlinedAt: !172)
!177 = !DILocation(line: 140, column: 16, scope: !107, inlinedAt: !172)
!178 = !DILocation(line: 0, scope: !117, inlinedAt: !168)
!179 = !DILocation(line: 143, column: 21, scope: !100, inlinedAt: !172)
!180 = !DILocation(line: 144, column: 1, scope: !100, inlinedAt: !172)
!181 = !DILocation(line: 127, column: 43, scope: !81, inlinedAt: !182)
!182 = distinct !DILocation(line: 148, column: 5, scope: !117, inlinedAt: !168)
!183 = !DILocation(line: 127, column: 58, scope: !81, inlinedAt: !182)
!184 = !DILocation(line: 128, column: 18, scope: !90, inlinedAt: !182)
!185 = !DILocation(line: 128, column: 9, scope: !81, inlinedAt: !182)
!186 = !DILocation(line: 130, column: 25, scope: !93, inlinedAt: !182)
!187 = !DILocation(line: 130, column: 16, scope: !90, inlinedAt: !182)
!188 = !DILocation(line: 133, column: 25, scope: !81, inlinedAt: !182)
!189 = !DILocation(line: 134, column: 1, scope: !81, inlinedAt: !182)
!190 = !DILocation(line: 149, column: 1, scope: !117, inlinedAt: !168)
!191 = !DILocation(line: 155, column: 5, scope: !148)
!192 = distinct !DISubprogram(name: "quicklistCreateNode", scope: !3, file: !3, line: 158, type: !193, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !195)
!193 = !DISubroutineType(types: !194)
!194 = !{!26}
!195 = !{!196}
!196 = !DILocalVariable(name: "node", scope: !192, file: !3, line: 159, type: !26)
!197 = !DILocation(line: 160, column: 12, scope: !192)
!198 = !DILocation(line: 159, column: 20, scope: !192)
!199 = !DILocation(line: 161, column: 11, scope: !192)
!200 = !DILocation(line: 161, column: 14, scope: !192)
!201 = !{!202, !71, i64 16}
!202 = !{!"quicklistNode", !71, i64 0, !71, i64 8, !71, i64 16, !203, i64 24, !203, i64 28, !203, i64 30, !203, i64 30, !203, i64 30, !203, i64 30, !203, i64 30}
!203 = !{!"int", !72, i64 0}
!204 = !DILocation(line: 162, column: 11, scope: !192)
!205 = !DILocation(line: 162, column: 17, scope: !192)
!206 = !DILocation(line: 163, column: 11, scope: !192)
!207 = !DILocation(line: 163, column: 14, scope: !192)
!208 = !{!202, !203, i64 24}
!209 = !DILocation(line: 164, column: 29, scope: !192)
!210 = !DILocation(line: 167, column: 22, scope: !192)
!211 = !DILocation(line: 168, column: 5, scope: !192)
!212 = distinct !DISubprogram(name: "quicklistCount", scope: !3, file: !3, line: 172, type: !213, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !217)
!213 = !DISubroutineType(types: !214)
!214 = !{!43, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!217 = !{!218}
!218 = !DILocalVariable(name: "ql", arg: 1, scope: !212, file: !3, line: 172, type: !215)
!219 = !DILocation(line: 172, column: 47, scope: !212)
!220 = !DILocation(line: 172, column: 64, scope: !212)
!221 = !{!222, !77, i64 16}
!222 = !{!"quicklist", !71, i64 0, !71, i64 8, !77, i64 16, !77, i64 24, !203, i64 32, !203, i64 34}
!223 = !DILocation(line: 172, column: 53, scope: !212)
!224 = distinct !DISubprogram(name: "quicklistRelease", scope: !3, file: !3, line: 175, type: !225, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !227)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !21}
!227 = !{!228, !229, !230, !231}
!228 = !DILocalVariable(name: "quicklist", arg: 1, scope: !224, file: !3, line: 175, type: !21)
!229 = !DILocalVariable(name: "len", scope: !224, file: !3, line: 176, type: !43)
!230 = !DILocalVariable(name: "current", scope: !224, file: !3, line: 177, type: !26)
!231 = !DILocalVariable(name: "next", scope: !224, file: !3, line: 177, type: !26)
!232 = !DILocation(line: 175, column: 34, scope: !224)
!233 = !DILocation(line: 179, column: 26, scope: !224)
!234 = !{!222, !71, i64 0}
!235 = !DILocation(line: 177, column: 20, scope: !224)
!236 = !DILocation(line: 180, column: 22, scope: !224)
!237 = !{!222, !77, i64 24}
!238 = !DILocation(line: 176, column: 19, scope: !224)
!239 = !DILocation(line: 181, column: 5, scope: !224)
!240 = !DILocation(line: 0, scope: !224)
!241 = !DILocation(line: 181, column: 15, scope: !224)
!242 = !DILocation(line: 182, column: 25, scope: !243)
!243 = distinct !DILexicalBlock(scope: !224, file: !3, line: 181, column: 19)
!244 = !{!202, !71, i64 8}
!245 = !DILocation(line: 177, column: 30, scope: !224)
!246 = !DILocation(line: 184, column: 24, scope: !243)
!247 = !DILocation(line: 184, column: 9, scope: !243)
!248 = !DILocation(line: 185, column: 38, scope: !243)
!249 = !DILocation(line: 185, column: 29, scope: !243)
!250 = !DILocation(line: 185, column: 26, scope: !243)
!251 = !DILocation(line: 187, column: 9, scope: !243)
!252 = !DILocation(line: 189, column: 23, scope: !243)
!253 = distinct !{!253, !239, !254}
!254 = !DILocation(line: 191, column: 5, scope: !224)
!255 = !DILocation(line: 192, column: 11, scope: !224)
!256 = !DILocation(line: 192, column: 5, scope: !224)
!257 = !DILocation(line: 193, column: 1, scope: !224)
!258 = distinct !DISubprogram(name: "__quicklistCompressNode", scope: !3, file: !3, line: 198, type: !259, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !261)
!259 = !DISubroutineType(types: !260)
!260 = !{!20, !26}
!261 = !{!262, !263}
!262 = !DILocalVariable(name: "node", arg: 1, scope: !258, file: !3, line: 198, type: !26)
!263 = !DILocalVariable(name: "lzf", scope: !258, file: !3, line: 207, type: !8)
!264 = !DILocation(line: 198, column: 57, scope: !258)
!265 = !DILocation(line: 204, column: 15, scope: !266)
!266 = distinct !DILexicalBlock(scope: !258, file: !3, line: 204, column: 9)
!267 = !DILocation(line: 204, column: 18, scope: !266)
!268 = !DILocation(line: 204, column: 9, scope: !258)
!269 = !DILocation(line: 207, column: 48, scope: !258)
!270 = !DILocation(line: 207, column: 46, scope: !258)
!271 = !DILocation(line: 207, column: 25, scope: !258)
!272 = !DILocation(line: 207, column: 19, scope: !258)
!273 = !DILocation(line: 210, column: 40, scope: !274)
!274 = distinct !DILexicalBlock(scope: !258, file: !3, line: 210, column: 9)
!275 = !DILocation(line: 210, column: 50, scope: !274)
!276 = !DILocation(line: 210, column: 59, scope: !274)
!277 = !DILocation(line: 210, column: 21, scope: !274)
!278 = !DILocation(line: 210, column: 16, scope: !274)
!279 = !DILocation(line: 210, column: 19, scope: !274)
!280 = !{!203, !203, i64 0}
!281 = !DILocation(line: 211, column: 45, scope: !274)
!282 = !DILocation(line: 211, column: 51, scope: !274)
!283 = !DILocation(line: 212, column: 17, scope: !274)
!284 = !DILocation(line: 212, column: 49, scope: !274)
!285 = !DILocation(line: 212, column: 40, scope: !274)
!286 = !DILocation(line: 210, column: 9, scope: !258)
!287 = !DILocation(line: 214, column: 9, scope: !288)
!288 = distinct !DILexicalBlock(scope: !274, file: !3, line: 212, column: 53)
!289 = !DILocation(line: 215, column: 9, scope: !288)
!290 = !DILocation(line: 217, column: 40, scope: !258)
!291 = !DILocation(line: 217, column: 38, scope: !258)
!292 = !DILocation(line: 217, column: 11, scope: !258)
!293 = !DILocation(line: 218, column: 17, scope: !258)
!294 = !DILocation(line: 218, column: 5, scope: !258)
!295 = !DILocation(line: 219, column: 14, scope: !258)
!296 = !DILocation(line: 220, column: 11, scope: !258)
!297 = !DILocation(line: 220, column: 20, scope: !258)
!298 = !DILocation(line: 221, column: 22, scope: !258)
!299 = !DILocation(line: 222, column: 5, scope: !258)
!300 = !DILocation(line: 0, scope: !258)
!301 = !DILocation(line: 0, scope: !288)
!302 = !DILocation(line: 223, column: 1, scope: !258)
!303 = distinct !DISubprogram(name: "__quicklistDecompressNode", scope: !3, file: !3, line: 235, type: !259, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !304)
!304 = !{!305, !306, !307}
!305 = !DILocalVariable(name: "node", arg: 1, scope: !303, file: !3, line: 235, type: !26)
!306 = !DILocalVariable(name: "decompressed", scope: !303, file: !3, line: 240, type: !47)
!307 = !DILocalVariable(name: "lzf", scope: !303, file: !3, line: 241, type: !8)
!308 = !DILocation(line: 235, column: 59, scope: !303)
!309 = !DILocation(line: 240, column: 40, scope: !303)
!310 = !DILocation(line: 240, column: 34, scope: !303)
!311 = !DILocation(line: 240, column: 26, scope: !303)
!312 = !DILocation(line: 240, column: 11, scope: !303)
!313 = !DILocation(line: 241, column: 47, scope: !303)
!314 = !DILocation(line: 241, column: 19, scope: !303)
!315 = !DILocation(line: 242, column: 29, scope: !316)
!316 = distinct !DILexicalBlock(scope: !303, file: !3, line: 242, column: 9)
!317 = !DILocation(line: 242, column: 46, scope: !316)
!318 = !DILocation(line: 242, column: 70, scope: !316)
!319 = !DILocation(line: 242, column: 9, scope: !316)
!320 = !DILocation(line: 242, column: 74, scope: !316)
!321 = !DILocation(line: 242, column: 9, scope: !303)
!322 = !DILocation(line: 244, column: 9, scope: !323)
!323 = distinct !DILexicalBlock(scope: !316, file: !3, line: 242, column: 80)
!324 = !DILocation(line: 245, column: 9, scope: !323)
!325 = !DILocation(line: 247, column: 5, scope: !303)
!326 = !DILocation(line: 248, column: 14, scope: !303)
!327 = !DILocation(line: 249, column: 11, scope: !303)
!328 = !DILocation(line: 249, column: 20, scope: !303)
!329 = !DILocation(line: 250, column: 5, scope: !303)
!330 = !DILocation(line: 0, scope: !303)
!331 = !DILocation(line: 0, scope: !323)
!332 = !DILocation(line: 251, column: 1, scope: !303)
!333 = distinct !DISubprogram(name: "quicklistGetLzf", scope: !3, file: !3, line: 273, type: !334, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !339)
!334 = !DISubroutineType(types: !335)
!335 = !{!51, !336, !338}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!339 = !{!340, !341, !342}
!340 = !DILocalVariable(name: "node", arg: 1, scope: !333, file: !3, line: 273, type: !336)
!341 = !DILocalVariable(name: "data", arg: 2, scope: !333, file: !3, line: 273, type: !338)
!342 = !DILocalVariable(name: "lzf", scope: !333, file: !3, line: 274, type: !8)
!343 = !DILocation(line: 273, column: 45, scope: !333)
!344 = !DILocation(line: 273, column: 58, scope: !333)
!345 = !DILocation(line: 274, column: 47, scope: !333)
!346 = !DILocation(line: 274, column: 19, scope: !333)
!347 = !DILocation(line: 275, column: 13, scope: !333)
!348 = !DILocation(line: 275, column: 11, scope: !333)
!349 = !DILocation(line: 276, column: 17, scope: !333)
!350 = !DILocation(line: 276, column: 12, scope: !333)
!351 = !DILocation(line: 276, column: 5, scope: !333)
!352 = distinct !DISubprogram(name: "__quicklistCompress", scope: !3, file: !3, line: 285, type: !353, isLocal: false, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !355)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !215, !26}
!355 = !{!356, !357, !358, !359, !360, !361}
!356 = !DILocalVariable(name: "quicklist", arg: 1, scope: !352, file: !3, line: 285, type: !215)
!357 = !DILocalVariable(name: "node", arg: 2, scope: !352, file: !3, line: 286, type: !26)
!358 = !DILocalVariable(name: "forward", scope: !352, file: !3, line: 325, type: !26)
!359 = !DILocalVariable(name: "reverse", scope: !352, file: !3, line: 326, type: !26)
!360 = !DILocalVariable(name: "depth", scope: !352, file: !3, line: 327, type: !20)
!361 = !DILocalVariable(name: "in_depth", scope: !352, file: !3, line: 328, type: !20)
!362 = !DILocation(line: 285, column: 56, scope: !352)
!363 = !DILocation(line: 286, column: 54, scope: !352)
!364 = !DILocation(line: 289, column: 10, scope: !365)
!365 = distinct !DILexicalBlock(scope: !352, file: !3, line: 289, column: 9)
!366 = !DILocation(line: 289, column: 48, scope: !365)
!367 = !DILocation(line: 290, column: 20, scope: !365)
!368 = !DILocation(line: 290, column: 61, scope: !365)
!369 = !DILocation(line: 290, column: 26, scope: !365)
!370 = !DILocation(line: 290, column: 24, scope: !365)
!371 = !DILocation(line: 289, column: 9, scope: !352)
!372 = !DILocation(line: 325, column: 41, scope: !352)
!373 = !DILocation(line: 325, column: 20, scope: !352)
!374 = !DILocation(line: 326, column: 41, scope: !352)
!375 = !{!222, !71, i64 8}
!376 = !DILocation(line: 326, column: 20, scope: !352)
!377 = !DILocation(line: 327, column: 9, scope: !352)
!378 = !DILocation(line: 328, column: 9, scope: !352)
!379 = !DILocation(line: 329, column: 5, scope: !352)
!380 = !DILocation(line: 329, column: 20, scope: !352)
!381 = !DILocation(line: 330, column: 9, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !3, line: 330, column: 9)
!383 = distinct !DILexicalBlock(scope: !384, file: !3, line: 330, column: 9)
!384 = distinct !DILexicalBlock(scope: !352, file: !3, line: 329, column: 43)
!385 = !DILocation(line: 330, column: 9, scope: !383)
!386 = !DILocation(line: 235, column: 59, scope: !303, inlinedAt: !387)
!387 = distinct !DILocation(line: 330, column: 9, scope: !388)
!388 = distinct !DILexicalBlock(scope: !382, file: !3, line: 330, column: 9)
!389 = !DILocation(line: 240, column: 40, scope: !303, inlinedAt: !387)
!390 = !DILocation(line: 240, column: 34, scope: !303, inlinedAt: !387)
!391 = !DILocation(line: 240, column: 26, scope: !303, inlinedAt: !387)
!392 = !DILocation(line: 240, column: 11, scope: !303, inlinedAt: !387)
!393 = !DILocation(line: 241, column: 47, scope: !303, inlinedAt: !387)
!394 = !DILocation(line: 241, column: 19, scope: !303, inlinedAt: !387)
!395 = !DILocation(line: 242, column: 29, scope: !316, inlinedAt: !387)
!396 = !DILocation(line: 242, column: 46, scope: !316, inlinedAt: !387)
!397 = !DILocation(line: 242, column: 70, scope: !316, inlinedAt: !387)
!398 = !DILocation(line: 242, column: 9, scope: !316, inlinedAt: !387)
!399 = !DILocation(line: 242, column: 74, scope: !316, inlinedAt: !387)
!400 = !DILocation(line: 242, column: 9, scope: !303, inlinedAt: !387)
!401 = !DILocation(line: 244, column: 9, scope: !323, inlinedAt: !387)
!402 = !DILocation(line: 245, column: 9, scope: !323, inlinedAt: !387)
!403 = !DILocation(line: 247, column: 5, scope: !303, inlinedAt: !387)
!404 = !DILocation(line: 248, column: 14, scope: !303, inlinedAt: !387)
!405 = !DILocation(line: 249, column: 20, scope: !303, inlinedAt: !387)
!406 = !DILocation(line: 250, column: 5, scope: !303, inlinedAt: !387)
!407 = !DILocation(line: 0, scope: !388)
!408 = !DILocation(line: 251, column: 1, scope: !303, inlinedAt: !387)
!409 = !DILocation(line: 330, column: 9, scope: !388)
!410 = !DILocation(line: 331, column: 9, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !3, line: 331, column: 9)
!412 = distinct !DILexicalBlock(scope: !384, file: !3, line: 331, column: 9)
!413 = !DILocation(line: 331, column: 9, scope: !412)
!414 = !DILocation(line: 235, column: 59, scope: !303, inlinedAt: !415)
!415 = distinct !DILocation(line: 331, column: 9, scope: !416)
!416 = distinct !DILexicalBlock(scope: !411, file: !3, line: 331, column: 9)
!417 = !DILocation(line: 240, column: 40, scope: !303, inlinedAt: !415)
!418 = !DILocation(line: 240, column: 34, scope: !303, inlinedAt: !415)
!419 = !DILocation(line: 240, column: 26, scope: !303, inlinedAt: !415)
!420 = !DILocation(line: 240, column: 11, scope: !303, inlinedAt: !415)
!421 = !DILocation(line: 241, column: 47, scope: !303, inlinedAt: !415)
!422 = !DILocation(line: 241, column: 19, scope: !303, inlinedAt: !415)
!423 = !DILocation(line: 242, column: 29, scope: !316, inlinedAt: !415)
!424 = !DILocation(line: 242, column: 46, scope: !316, inlinedAt: !415)
!425 = !DILocation(line: 242, column: 70, scope: !316, inlinedAt: !415)
!426 = !DILocation(line: 242, column: 9, scope: !316, inlinedAt: !415)
!427 = !DILocation(line: 242, column: 74, scope: !316, inlinedAt: !415)
!428 = !DILocation(line: 242, column: 9, scope: !303, inlinedAt: !415)
!429 = !DILocation(line: 244, column: 9, scope: !323, inlinedAt: !415)
!430 = !DILocation(line: 245, column: 9, scope: !323, inlinedAt: !415)
!431 = !DILocation(line: 247, column: 5, scope: !303, inlinedAt: !415)
!432 = !DILocation(line: 248, column: 14, scope: !303, inlinedAt: !415)
!433 = !DILocation(line: 249, column: 20, scope: !303, inlinedAt: !415)
!434 = !DILocation(line: 250, column: 5, scope: !303, inlinedAt: !415)
!435 = !DILocation(line: 0, scope: !416)
!436 = !DILocation(line: 251, column: 1, scope: !303, inlinedAt: !415)
!437 = !DILocation(line: 331, column: 9, scope: !416)
!438 = !DILocation(line: 333, column: 21, scope: !439)
!439 = distinct !DILexicalBlock(scope: !384, file: !3, line: 333, column: 13)
!440 = !DILocation(line: 333, column: 29, scope: !439)
!441 = !DILocation(line: 333, column: 40, scope: !439)
!442 = !DILocation(line: 333, column: 13, scope: !384)
!443 = !DILocation(line: 334, column: 13, scope: !439)
!444 = !DILocation(line: 0, scope: !352)
!445 = !DILocation(line: 336, column: 21, scope: !446)
!446 = distinct !DILexicalBlock(scope: !384, file: !3, line: 336, column: 13)
!447 = !DILocation(line: 336, column: 13, scope: !384)
!448 = !DILocation(line: 339, column: 28, scope: !384)
!449 = !DILocation(line: 340, column: 28, scope: !384)
!450 = !{!202, !71, i64 0}
!451 = !DILocation(line: 329, column: 17, scope: !352)
!452 = !DILocation(line: 329, column: 33, scope: !352)
!453 = distinct !{!453, !379, !454}
!454 = !DILocation(line: 341, column: 5, scope: !352)
!455 = !DILocation(line: 0, scope: !384)
!456 = !DILocation(line: 0, scope: !439)
!457 = !DILocation(line: 343, column: 10, scope: !458)
!458 = distinct !DILexicalBlock(scope: !352, file: !3, line: 343, column: 9)
!459 = !DILocation(line: 344, column: 9, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !3, line: 344, column: 9)
!461 = distinct !DILexicalBlock(scope: !458, file: !3, line: 344, column: 9)
!462 = !DILocation(line: 343, column: 9, scope: !352)
!463 = !DILocation(line: 344, column: 9, scope: !461)
!464 = !DILocation(line: 344, column: 9, scope: !465)
!465 = distinct !DILexicalBlock(scope: !460, file: !3, line: 344, column: 9)
!466 = !DILocation(line: 346, column: 15, scope: !467)
!467 = distinct !DILexicalBlock(scope: !352, file: !3, line: 346, column: 9)
!468 = !DILocation(line: 346, column: 9, scope: !352)
!469 = !DILocation(line: 348, column: 9, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !3, line: 348, column: 9)
!471 = distinct !DILexicalBlock(scope: !472, file: !3, line: 348, column: 9)
!472 = distinct !DILexicalBlock(scope: !467, file: !3, line: 346, column: 20)
!473 = !DILocation(line: 348, column: 9, scope: !471)
!474 = !DILocation(line: 348, column: 9, scope: !475)
!475 = distinct !DILexicalBlock(scope: !470, file: !3, line: 348, column: 9)
!476 = !DILocation(line: 349, column: 9, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !3, line: 349, column: 9)
!478 = distinct !DILexicalBlock(scope: !472, file: !3, line: 349, column: 9)
!479 = !DILocation(line: 349, column: 9, scope: !478)
!480 = !DILocation(line: 349, column: 9, scope: !481)
!481 = distinct !DILexicalBlock(scope: !477, file: !3, line: 349, column: 9)
!482 = !DILocation(line: 0, scope: !446)
!483 = !DILocation(line: 351, column: 1, scope: !352)
!484 = distinct !DISubprogram(name: "__quicklistInsertNode", scope: !3, file: !3, line: 372, type: !485, isLocal: false, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !487)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !21, !26, !26, !20}
!487 = !{!488, !489, !490, !491}
!488 = !DILocalVariable(name: "quicklist", arg: 1, scope: !484, file: !3, line: 372, type: !21)
!489 = !DILocalVariable(name: "old_node", arg: 2, scope: !484, file: !3, line: 373, type: !26)
!490 = !DILocalVariable(name: "new_node", arg: 3, scope: !484, file: !3, line: 374, type: !26)
!491 = !DILocalVariable(name: "after", arg: 4, scope: !484, file: !3, line: 374, type: !20)
!492 = !DILocation(line: 372, column: 52, scope: !484)
!493 = !DILocation(line: 373, column: 56, scope: !484)
!494 = !DILocation(line: 374, column: 56, scope: !484)
!495 = !DILocation(line: 374, column: 70, scope: !484)
!496 = !DILocation(line: 375, column: 9, scope: !497)
!497 = distinct !DILexicalBlock(scope: !484, file: !3, line: 375, column: 9)
!498 = !DILocation(line: 375, column: 9, scope: !484)
!499 = !DILocation(line: 376, column: 19, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !3, line: 375, column: 16)
!501 = !DILocation(line: 376, column: 24, scope: !500)
!502 = !DILocation(line: 377, column: 13, scope: !503)
!503 = distinct !DILexicalBlock(scope: !500, file: !3, line: 377, column: 13)
!504 = !DILocation(line: 377, column: 13, scope: !500)
!505 = !DILocation(line: 378, column: 40, scope: !506)
!506 = distinct !DILexicalBlock(scope: !503, file: !3, line: 377, column: 23)
!507 = !DILocation(line: 378, column: 23, scope: !506)
!508 = !DILocation(line: 378, column: 28, scope: !506)
!509 = !DILocation(line: 379, column: 27, scope: !510)
!510 = distinct !DILexicalBlock(scope: !506, file: !3, line: 379, column: 17)
!511 = !DILocation(line: 379, column: 17, scope: !510)
!512 = !DILocation(line: 379, column: 17, scope: !506)
!513 = !DILocation(line: 380, column: 33, scope: !510)
!514 = !DILocation(line: 380, column: 38, scope: !510)
!515 = !DILocation(line: 380, column: 17, scope: !510)
!516 = !DILocation(line: 381, column: 28, scope: !506)
!517 = !DILocation(line: 382, column: 9, scope: !506)
!518 = !DILocation(line: 383, column: 24, scope: !519)
!519 = distinct !DILexicalBlock(scope: !500, file: !3, line: 383, column: 13)
!520 = !DILocation(line: 383, column: 29, scope: !519)
!521 = !DILocation(line: 383, column: 13, scope: !500)
!522 = !DILocation(line: 384, column: 29, scope: !519)
!523 = !DILocation(line: 384, column: 13, scope: !519)
!524 = !DILocation(line: 386, column: 19, scope: !525)
!525 = distinct !DILexicalBlock(scope: !497, file: !3, line: 385, column: 12)
!526 = !DILocation(line: 386, column: 24, scope: !525)
!527 = !DILocation(line: 387, column: 13, scope: !528)
!528 = distinct !DILexicalBlock(scope: !525, file: !3, line: 387, column: 13)
!529 = !DILocation(line: 387, column: 13, scope: !525)
!530 = !DILocation(line: 388, column: 40, scope: !531)
!531 = distinct !DILexicalBlock(scope: !528, file: !3, line: 387, column: 23)
!532 = !DILocation(line: 388, column: 28, scope: !531)
!533 = !DILocation(line: 389, column: 27, scope: !534)
!534 = distinct !DILexicalBlock(scope: !531, file: !3, line: 389, column: 17)
!535 = !DILocation(line: 389, column: 17, scope: !534)
!536 = !DILocation(line: 389, column: 17, scope: !531)
!537 = !DILocation(line: 390, column: 33, scope: !534)
!538 = !DILocation(line: 390, column: 38, scope: !534)
!539 = !DILocation(line: 390, column: 17, scope: !534)
!540 = !DILocation(line: 391, column: 28, scope: !531)
!541 = !DILocation(line: 392, column: 9, scope: !531)
!542 = !DILocation(line: 393, column: 24, scope: !543)
!543 = distinct !DILexicalBlock(scope: !525, file: !3, line: 393, column: 13)
!544 = !DILocation(line: 393, column: 29, scope: !543)
!545 = !DILocation(line: 393, column: 13, scope: !525)
!546 = !DILocation(line: 394, column: 29, scope: !543)
!547 = !DILocation(line: 394, column: 13, scope: !543)
!548 = !DILocation(line: 397, column: 20, scope: !549)
!549 = distinct !DILexicalBlock(scope: !484, file: !3, line: 397, column: 9)
!550 = !DILocation(line: 397, column: 24, scope: !549)
!551 = !DILocation(line: 397, column: 9, scope: !484)
!552 = !DILocation(line: 398, column: 38, scope: !553)
!553 = distinct !DILexicalBlock(scope: !549, file: !3, line: 397, column: 30)
!554 = !DILocation(line: 398, column: 43, scope: !553)
!555 = !DILocation(line: 398, column: 20, scope: !553)
!556 = !DILocation(line: 398, column: 25, scope: !553)
!557 = !DILocation(line: 399, column: 5, scope: !553)
!558 = !DILocation(line: 401, column: 9, scope: !559)
!559 = distinct !DILexicalBlock(scope: !484, file: !3, line: 401, column: 9)
!560 = !DILocation(line: 401, column: 9, scope: !484)
!561 = !DILocation(line: 402, column: 9, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !3, line: 402, column: 9)
!563 = distinct !DILexicalBlock(scope: !559, file: !3, line: 402, column: 9)
!564 = !DILocation(line: 402, column: 9, scope: !563)
!565 = !DILocation(line: 402, column: 9, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !3, line: 402, column: 9)
!567 = distinct !DILexicalBlock(scope: !562, file: !3, line: 402, column: 9)
!568 = !DILocation(line: 402, column: 9, scope: !567)
!569 = !DILocation(line: 402, column: 9, scope: !570)
!570 = distinct !DILexicalBlock(scope: !566, file: !3, line: 402, column: 9)
!571 = !DILocation(line: 404, column: 19, scope: !484)
!572 = !DILocation(line: 405, column: 1, scope: !484)
!573 = distinct !DISubprogram(name: "_quicklistInsertNodeBefore", scope: !3, file: !3, line: 408, type: !574, isLocal: false, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !21, !26, !26}
!576 = !{!577, !578, !579}
!577 = !DILocalVariable(name: "quicklist", arg: 1, scope: !573, file: !3, line: 408, type: !21)
!578 = !DILocalVariable(name: "old_node", arg: 2, scope: !573, file: !3, line: 409, type: !26)
!579 = !DILocalVariable(name: "new_node", arg: 3, scope: !573, file: !3, line: 410, type: !26)
!580 = !DILocation(line: 408, column: 57, scope: !573)
!581 = !DILocation(line: 409, column: 61, scope: !573)
!582 = !DILocation(line: 410, column: 61, scope: !573)
!583 = !DILocation(line: 411, column: 5, scope: !573)
!584 = !DILocation(line: 412, column: 1, scope: !573)
!585 = distinct !DISubprogram(name: "_quicklistInsertNodeAfter", scope: !3, file: !3, line: 414, type: !574, isLocal: false, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !586)
!586 = !{!587, !588, !589}
!587 = !DILocalVariable(name: "quicklist", arg: 1, scope: !585, file: !3, line: 414, type: !21)
!588 = !DILocalVariable(name: "old_node", arg: 2, scope: !585, file: !3, line: 415, type: !26)
!589 = !DILocalVariable(name: "new_node", arg: 3, scope: !585, file: !3, line: 416, type: !26)
!590 = !DILocation(line: 414, column: 56, scope: !585)
!591 = !DILocation(line: 415, column: 60, scope: !585)
!592 = !DILocation(line: 416, column: 60, scope: !585)
!593 = !DILocation(line: 417, column: 5, scope: !585)
!594 = !DILocation(line: 418, column: 1, scope: !585)
!595 = distinct !DISubprogram(name: "_quicklistNodeSizeMeetsOptimizationRequirement", scope: !3, file: !3, line: 421, type: !596, isLocal: false, isDefinition: true, scopeLine: 422, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !599)
!596 = !DISubroutineType(types: !597)
!597 = !{!20, !50, !598}
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!599 = !{!600, !601, !602}
!600 = !DILocalVariable(name: "sz", arg: 1, scope: !595, file: !3, line: 421, type: !50)
!601 = !DILocalVariable(name: "fill", arg: 2, scope: !595, file: !3, line: 422, type: !598)
!602 = !DILocalVariable(name: "offset", scope: !595, file: !3, line: 426, type: !51)
!603 = !DILocation(line: 421, column: 61, scope: !595)
!604 = !DILocation(line: 422, column: 58, scope: !595)
!605 = !DILocation(line: 423, column: 14, scope: !606)
!606 = distinct !DILexicalBlock(scope: !595, file: !3, line: 423, column: 9)
!607 = !DILocation(line: 423, column: 9, scope: !595)
!608 = !DILocation(line: 427, column: 16, scope: !609)
!609 = distinct !DILexicalBlock(scope: !595, file: !3, line: 427, column: 9)
!610 = !DILocation(line: 427, column: 9, scope: !595)
!611 = !DILocation(line: 426, column: 29, scope: !595)
!612 = !DILocation(line: 426, column: 21, scope: !595)
!613 = !DILocation(line: 426, column: 12, scope: !595)
!614 = !DILocation(line: 428, column: 19, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !3, line: 428, column: 13)
!616 = distinct !DILexicalBlock(scope: !609, file: !3, line: 427, column: 78)
!617 = !DILocation(line: 428, column: 16, scope: !615)
!618 = !DILocation(line: 428, column: 13, scope: !616)
!619 = !DILocation(line: 0, scope: !620)
!620 = distinct !DILexicalBlock(scope: !615, file: !3, line: 428, column: 47)
!621 = !DILocation(line: 431, column: 13, scope: !622)
!622 = distinct !DILexicalBlock(scope: !615, file: !3, line: 430, column: 16)
!623 = !DILocation(line: 434, column: 9, scope: !624)
!624 = distinct !DILexicalBlock(scope: !609, file: !3, line: 433, column: 12)
!625 = !DILocation(line: 436, column: 1, scope: !595)
!626 = distinct !DISubprogram(name: "_quicklistNodeAllowInsert", scope: !3, file: !3, line: 440, type: !627, isLocal: false, isDefinition: true, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !629)
!627 = !DISubroutineType(types: !628)
!628 = !{!20, !336, !598, !50}
!629 = !{!630, !631, !632, !633, !634}
!630 = !DILocalVariable(name: "node", arg: 1, scope: !626, file: !3, line: 440, type: !336)
!631 = !DILocalVariable(name: "fill", arg: 2, scope: !626, file: !3, line: 441, type: !598)
!632 = !DILocalVariable(name: "sz", arg: 3, scope: !626, file: !3, line: 441, type: !50)
!633 = !DILocalVariable(name: "ziplist_overhead", scope: !626, file: !3, line: 445, type: !20)
!634 = !DILocalVariable(name: "new_sz", scope: !626, file: !3, line: 461, type: !14)
!635 = !DILocation(line: 440, column: 65, scope: !626)
!636 = !DILocation(line: 441, column: 54, scope: !626)
!637 = !DILocation(line: 441, column: 73, scope: !626)
!638 = !DILocation(line: 442, column: 9, scope: !639)
!639 = distinct !DILexicalBlock(scope: !626, file: !3, line: 442, column: 9)
!640 = !DILocation(line: 442, column: 9, scope: !626)
!641 = !{!"branch_weights", i32 1, i32 2000}
!642 = !DILocation(line: 447, column: 12, scope: !643)
!643 = distinct !DILexicalBlock(scope: !626, file: !3, line: 447, column: 9)
!644 = !DILocation(line: 447, column: 9, scope: !626)
!645 = !DILocation(line: 448, column: 9, scope: !643)
!646 = !DILocation(line: 445, column: 9, scope: !626)
!647 = !DILocation(line: 453, column: 12, scope: !648)
!648 = distinct !DILexicalBlock(scope: !626, file: !3, line: 453, column: 9)
!649 = !DILocation(line: 453, column: 9, scope: !626)
!650 = !DILocation(line: 454, column: 26, scope: !648)
!651 = !DILocation(line: 454, column: 9, scope: !648)
!652 = !DILocation(line: 455, column: 14, scope: !653)
!653 = distinct !DILexicalBlock(scope: !648, file: !3, line: 455, column: 14)
!654 = !DILocation(line: 455, column: 14, scope: !648)
!655 = !{!"branch_weights", i32 2000, i32 1}
!656 = !DILocation(line: 456, column: 26, scope: !653)
!657 = !DILocation(line: 456, column: 9, scope: !653)
!658 = !DILocation(line: 458, column: 26, scope: !653)
!659 = !DILocation(line: 0, scope: !653)
!660 = !DILocation(line: 461, column: 33, scope: !626)
!661 = !DILocation(line: 461, column: 27, scope: !626)
!662 = !DILocation(line: 461, column: 18, scope: !626)
!663 = !DILocation(line: 462, column: 9, scope: !664)
!664 = distinct !DILexicalBlock(scope: !626, file: !3, line: 462, column: 9)
!665 = !DILocation(line: 421, column: 61, scope: !595, inlinedAt: !666)
!666 = distinct !DILocation(line: 462, column: 9, scope: !664)
!667 = !DILocation(line: 422, column: 58, scope: !595, inlinedAt: !666)
!668 = !DILocation(line: 423, column: 14, scope: !606, inlinedAt: !666)
!669 = !DILocation(line: 423, column: 9, scope: !595, inlinedAt: !666)
!670 = !DILocation(line: 427, column: 16, scope: !609, inlinedAt: !666)
!671 = !DILocation(line: 427, column: 9, scope: !595, inlinedAt: !666)
!672 = !DILocation(line: 434, column: 9, scope: !624, inlinedAt: !666)
!673 = !DILocation(line: 462, column: 9, scope: !626)
!674 = !DILocation(line: 426, column: 29, scope: !595, inlinedAt: !666)
!675 = !DILocation(line: 426, column: 21, scope: !595, inlinedAt: !666)
!676 = !DILocation(line: 426, column: 12, scope: !595, inlinedAt: !666)
!677 = !DILocation(line: 428, column: 19, scope: !615, inlinedAt: !666)
!678 = !DILocation(line: 428, column: 16, scope: !615, inlinedAt: !666)
!679 = !DILocation(line: 428, column: 13, scope: !616, inlinedAt: !666)
!680 = !DILocation(line: 0, scope: !620, inlinedAt: !666)
!681 = !DILocation(line: 436, column: 1, scope: !595, inlinedAt: !666)
!682 = !DILocation(line: 463, column: 9, scope: !664)
!683 = !DILocation(line: 464, column: 15, scope: !684)
!684 = distinct !DILexicalBlock(scope: !664, file: !3, line: 464, column: 14)
!685 = !DILocation(line: 464, column: 14, scope: !664)
!686 = !DILocation(line: 465, column: 9, scope: !684)
!687 = !DILocation(line: 466, column: 25, scope: !688)
!688 = distinct !DILexicalBlock(scope: !684, file: !3, line: 466, column: 14)
!689 = !DILocation(line: 466, column: 31, scope: !688)
!690 = !DILocation(line: 466, column: 14, scope: !684)
!691 = !DILocation(line: 0, scope: !688)
!692 = !DILocation(line: 467, column: 9, scope: !688)
!693 = !DILocation(line: 0, scope: !664)
!694 = !DILocation(line: 470, column: 1, scope: !626)
!695 = distinct !DISubprogram(name: "_quicklistNodeAllowMerge", scope: !3, file: !3, line: 472, type: !696, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !698)
!696 = !DISubroutineType(types: !697)
!697 = !{!20, !336, !336, !598}
!698 = !{!699, !700, !701, !702}
!699 = !DILocalVariable(name: "a", arg: 1, scope: !695, file: !3, line: 472, type: !336)
!700 = !DILocalVariable(name: "b", arg: 2, scope: !695, file: !3, line: 473, type: !336)
!701 = !DILocalVariable(name: "fill", arg: 3, scope: !695, file: !3, line: 474, type: !598)
!702 = !DILocalVariable(name: "merge_sz", scope: !695, file: !3, line: 480, type: !14)
!703 = !DILocation(line: 472, column: 64, scope: !695)
!704 = !DILocation(line: 473, column: 64, scope: !695)
!705 = !DILocation(line: 474, column: 53, scope: !695)
!706 = !DILocation(line: 475, column: 10, scope: !707)
!707 = distinct !DILexicalBlock(scope: !695, file: !3, line: 475, column: 9)
!708 = !DILocation(line: 475, column: 16, scope: !707)
!709 = !DILocation(line: 475, column: 12, scope: !707)
!710 = !DILocation(line: 480, column: 32, scope: !695)
!711 = !DILocation(line: 480, column: 40, scope: !695)
!712 = !DILocation(line: 480, column: 35, scope: !695)
!713 = !DILocation(line: 480, column: 43, scope: !695)
!714 = !DILocation(line: 480, column: 18, scope: !695)
!715 = !DILocation(line: 481, column: 9, scope: !716)
!716 = distinct !DILexicalBlock(scope: !695, file: !3, line: 481, column: 9)
!717 = !DILocation(line: 421, column: 61, scope: !595, inlinedAt: !718)
!718 = distinct !DILocation(line: 481, column: 9, scope: !716)
!719 = !DILocation(line: 422, column: 58, scope: !595, inlinedAt: !718)
!720 = !DILocation(line: 423, column: 14, scope: !606, inlinedAt: !718)
!721 = !DILocation(line: 423, column: 9, scope: !595, inlinedAt: !718)
!722 = !DILocation(line: 427, column: 16, scope: !609, inlinedAt: !718)
!723 = !DILocation(line: 427, column: 9, scope: !595, inlinedAt: !718)
!724 = !DILocation(line: 434, column: 9, scope: !624, inlinedAt: !718)
!725 = !DILocation(line: 481, column: 9, scope: !695)
!726 = !DILocation(line: 426, column: 29, scope: !595, inlinedAt: !718)
!727 = !DILocation(line: 426, column: 21, scope: !595, inlinedAt: !718)
!728 = !DILocation(line: 426, column: 12, scope: !595, inlinedAt: !718)
!729 = !DILocation(line: 428, column: 19, scope: !615, inlinedAt: !718)
!730 = !DILocation(line: 428, column: 16, scope: !615, inlinedAt: !718)
!731 = !DILocation(line: 428, column: 13, scope: !616, inlinedAt: !718)
!732 = !DILocation(line: 0, scope: !620, inlinedAt: !718)
!733 = !DILocation(line: 436, column: 1, scope: !595, inlinedAt: !718)
!734 = !DILocation(line: 482, column: 9, scope: !716)
!735 = !DILocation(line: 483, column: 15, scope: !736)
!736 = distinct !DILexicalBlock(scope: !716, file: !3, line: 483, column: 14)
!737 = !DILocation(line: 483, column: 14, scope: !716)
!738 = !DILocation(line: 484, column: 9, scope: !736)
!739 = !DILocation(line: 485, column: 23, scope: !740)
!740 = distinct !DILexicalBlock(scope: !736, file: !3, line: 485, column: 14)
!741 = !DILocation(line: 485, column: 34, scope: !740)
!742 = !DILocation(line: 485, column: 29, scope: !740)
!743 = !DILocation(line: 485, column: 41, scope: !740)
!744 = !DILocation(line: 485, column: 14, scope: !736)
!745 = !DILocation(line: 0, scope: !740)
!746 = !DILocation(line: 488, column: 9, scope: !740)
!747 = !DILocation(line: 0, scope: !707)
!748 = !DILocation(line: 489, column: 1, scope: !695)
!749 = distinct !DISubprogram(name: "quicklistPushHead", scope: !3, file: !3, line: 500, type: !750, isLocal: false, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !752)
!750 = !DISubroutineType(types: !751)
!751 = !{!20, !21, !47, !51}
!752 = !{!753, !754, !755, !756, !757}
!753 = !DILocalVariable(name: "quicklist", arg: 1, scope: !749, file: !3, line: 500, type: !21)
!754 = !DILocalVariable(name: "value", arg: 2, scope: !749, file: !3, line: 500, type: !47)
!755 = !DILocalVariable(name: "sz", arg: 3, scope: !749, file: !3, line: 500, type: !51)
!756 = !DILocalVariable(name: "orig_head", scope: !749, file: !3, line: 501, type: !26)
!757 = !DILocalVariable(name: "node", scope: !758, file: !3, line: 508, type: !26)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 507, column: 12)
!759 = distinct !DILexicalBlock(scope: !749, file: !3, line: 502, column: 9)
!760 = !DILocation(line: 500, column: 34, scope: !749)
!761 = !DILocation(line: 500, column: 51, scope: !749)
!762 = !DILocation(line: 500, column: 65, scope: !749)
!763 = !DILocation(line: 501, column: 43, scope: !749)
!764 = !DILocation(line: 501, column: 20, scope: !749)
!765 = !DILocation(line: 502, column: 9, scope: !759)
!766 = !DILocation(line: 502, column: 9, scope: !749)
!767 = !DILocation(line: 505, column: 36, scope: !768)
!768 = distinct !DILexicalBlock(scope: !759, file: !3, line: 503, column: 79)
!769 = !DILocation(line: 505, column: 42, scope: !768)
!770 = !DILocation(line: 505, column: 53, scope: !768)
!771 = !DILocation(line: 505, column: 13, scope: !768)
!772 = !DILocation(line: 504, column: 20, scope: !768)
!773 = !DILocation(line: 504, column: 26, scope: !768)
!774 = !DILocation(line: 504, column: 29, scope: !768)
!775 = !DILocation(line: 506, column: 9, scope: !776)
!776 = distinct !DILexicalBlock(scope: !768, file: !3, line: 506, column: 9)
!777 = !DILocation(line: 507, column: 5, scope: !768)
!778 = !DILocation(line: 160, column: 12, scope: !192, inlinedAt: !779)
!779 = distinct !DILocation(line: 508, column: 31, scope: !758)
!780 = !DILocation(line: 159, column: 20, scope: !192, inlinedAt: !779)
!781 = !DILocation(line: 161, column: 11, scope: !192, inlinedAt: !779)
!782 = !DILocation(line: 161, column: 14, scope: !192, inlinedAt: !779)
!783 = !DILocation(line: 162, column: 11, scope: !192, inlinedAt: !779)
!784 = !DILocation(line: 162, column: 17, scope: !192, inlinedAt: !779)
!785 = !DILocation(line: 163, column: 11, scope: !192, inlinedAt: !779)
!786 = !DILocation(line: 163, column: 14, scope: !192, inlinedAt: !779)
!787 = !DILocation(line: 164, column: 29, scope: !192, inlinedAt: !779)
!788 = !DILocation(line: 167, column: 22, scope: !192, inlinedAt: !779)
!789 = !DILocation(line: 168, column: 5, scope: !192, inlinedAt: !779)
!790 = !DILocation(line: 508, column: 24, scope: !758)
!791 = !DILocation(line: 509, column: 32, scope: !758)
!792 = !DILocation(line: 509, column: 53, scope: !758)
!793 = !DILocation(line: 509, column: 20, scope: !758)
!794 = !DILocation(line: 509, column: 18, scope: !758)
!795 = !DILocation(line: 511, column: 9, scope: !796)
!796 = distinct !DILexicalBlock(scope: !758, file: !3, line: 511, column: 9)
!797 = !DILocation(line: 512, column: 58, scope: !758)
!798 = !DILocation(line: 408, column: 57, scope: !573, inlinedAt: !799)
!799 = distinct !DILocation(line: 512, column: 9, scope: !758)
!800 = !DILocation(line: 409, column: 61, scope: !573, inlinedAt: !799)
!801 = !DILocation(line: 410, column: 61, scope: !573, inlinedAt: !799)
!802 = !DILocation(line: 411, column: 5, scope: !573, inlinedAt: !799)
!803 = !DILocation(line: 412, column: 1, scope: !573, inlinedAt: !799)
!804 = !DILocation(line: 515, column: 16, scope: !749)
!805 = !DILocation(line: 514, column: 16, scope: !749)
!806 = !DILocation(line: 514, column: 21, scope: !749)
!807 = !DILocation(line: 515, column: 22, scope: !749)
!808 = !DILocation(line: 515, column: 27, scope: !749)
!809 = !DILocation(line: 516, column: 37, scope: !749)
!810 = !DILocation(line: 516, column: 23, scope: !749)
!811 = !DILocation(line: 516, column: 5, scope: !749)
!812 = distinct !DISubprogram(name: "quicklistPushTail", scope: !3, file: !3, line: 523, type: !750, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !813)
!813 = !{!814, !815, !816, !817, !818}
!814 = !DILocalVariable(name: "quicklist", arg: 1, scope: !812, file: !3, line: 523, type: !21)
!815 = !DILocalVariable(name: "value", arg: 2, scope: !812, file: !3, line: 523, type: !47)
!816 = !DILocalVariable(name: "sz", arg: 3, scope: !812, file: !3, line: 523, type: !51)
!817 = !DILocalVariable(name: "orig_tail", scope: !812, file: !3, line: 524, type: !26)
!818 = !DILocalVariable(name: "node", scope: !819, file: !3, line: 531, type: !26)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 530, column: 12)
!820 = distinct !DILexicalBlock(scope: !812, file: !3, line: 525, column: 9)
!821 = !DILocation(line: 523, column: 34, scope: !812)
!822 = !DILocation(line: 523, column: 51, scope: !812)
!823 = !DILocation(line: 523, column: 65, scope: !812)
!824 = !DILocation(line: 524, column: 43, scope: !812)
!825 = !DILocation(line: 524, column: 20, scope: !812)
!826 = !DILocation(line: 525, column: 9, scope: !820)
!827 = !DILocation(line: 525, column: 9, scope: !812)
!828 = !DILocation(line: 528, column: 36, scope: !829)
!829 = distinct !DILexicalBlock(scope: !820, file: !3, line: 526, column: 79)
!830 = !DILocation(line: 528, column: 42, scope: !829)
!831 = !DILocation(line: 528, column: 53, scope: !829)
!832 = !DILocation(line: 528, column: 13, scope: !829)
!833 = !DILocation(line: 527, column: 20, scope: !829)
!834 = !DILocation(line: 527, column: 26, scope: !829)
!835 = !DILocation(line: 527, column: 29, scope: !829)
!836 = !DILocation(line: 529, column: 9, scope: !837)
!837 = distinct !DILexicalBlock(scope: !829, file: !3, line: 529, column: 9)
!838 = !DILocation(line: 530, column: 5, scope: !829)
!839 = !DILocation(line: 160, column: 12, scope: !192, inlinedAt: !840)
!840 = distinct !DILocation(line: 531, column: 31, scope: !819)
!841 = !DILocation(line: 159, column: 20, scope: !192, inlinedAt: !840)
!842 = !DILocation(line: 161, column: 11, scope: !192, inlinedAt: !840)
!843 = !DILocation(line: 161, column: 14, scope: !192, inlinedAt: !840)
!844 = !DILocation(line: 162, column: 11, scope: !192, inlinedAt: !840)
!845 = !DILocation(line: 162, column: 17, scope: !192, inlinedAt: !840)
!846 = !DILocation(line: 163, column: 11, scope: !192, inlinedAt: !840)
!847 = !DILocation(line: 163, column: 14, scope: !192, inlinedAt: !840)
!848 = !DILocation(line: 164, column: 29, scope: !192, inlinedAt: !840)
!849 = !DILocation(line: 167, column: 22, scope: !192, inlinedAt: !840)
!850 = !DILocation(line: 168, column: 5, scope: !192, inlinedAt: !840)
!851 = !DILocation(line: 531, column: 24, scope: !819)
!852 = !DILocation(line: 532, column: 32, scope: !819)
!853 = !DILocation(line: 532, column: 53, scope: !819)
!854 = !DILocation(line: 532, column: 20, scope: !819)
!855 = !DILocation(line: 532, column: 18, scope: !819)
!856 = !DILocation(line: 534, column: 9, scope: !857)
!857 = distinct !DILexicalBlock(scope: !819, file: !3, line: 534, column: 9)
!858 = !DILocation(line: 535, column: 57, scope: !819)
!859 = !DILocation(line: 414, column: 56, scope: !585, inlinedAt: !860)
!860 = distinct !DILocation(line: 535, column: 9, scope: !819)
!861 = !DILocation(line: 415, column: 60, scope: !585, inlinedAt: !860)
!862 = !DILocation(line: 416, column: 60, scope: !585, inlinedAt: !860)
!863 = !DILocation(line: 417, column: 5, scope: !585, inlinedAt: !860)
!864 = !DILocation(line: 418, column: 1, scope: !585, inlinedAt: !860)
!865 = !DILocation(line: 538, column: 16, scope: !812)
!866 = !DILocation(line: 537, column: 16, scope: !812)
!867 = !DILocation(line: 537, column: 21, scope: !812)
!868 = !DILocation(line: 538, column: 22, scope: !812)
!869 = !DILocation(line: 538, column: 27, scope: !812)
!870 = !DILocation(line: 539, column: 37, scope: !812)
!871 = !DILocation(line: 539, column: 23, scope: !812)
!872 = !DILocation(line: 539, column: 5, scope: !812)
!873 = distinct !DISubprogram(name: "quicklistAppendZiplist", scope: !3, file: !3, line: 545, type: !874, isLocal: false, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !876)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !21, !6}
!876 = !{!877, !878, !879}
!877 = !DILocalVariable(name: "quicklist", arg: 1, scope: !873, file: !3, line: 545, type: !21)
!878 = !DILocalVariable(name: "zl", arg: 2, scope: !873, file: !3, line: 545, type: !6)
!879 = !DILocalVariable(name: "node", scope: !873, file: !3, line: 546, type: !26)
!880 = !DILocation(line: 545, column: 40, scope: !873)
!881 = !DILocation(line: 545, column: 66, scope: !873)
!882 = !DILocation(line: 160, column: 12, scope: !192, inlinedAt: !883)
!883 = distinct !DILocation(line: 546, column: 27, scope: !873)
!884 = !DILocation(line: 159, column: 20, scope: !192, inlinedAt: !883)
!885 = !DILocation(line: 161, column: 11, scope: !192, inlinedAt: !883)
!886 = !DILocation(line: 162, column: 11, scope: !192, inlinedAt: !883)
!887 = !DILocation(line: 162, column: 17, scope: !192, inlinedAt: !883)
!888 = !DILocation(line: 163, column: 11, scope: !192, inlinedAt: !883)
!889 = !DILocation(line: 163, column: 14, scope: !192, inlinedAt: !883)
!890 = !DILocation(line: 164, column: 29, scope: !192, inlinedAt: !883)
!891 = !DILocation(line: 167, column: 22, scope: !192, inlinedAt: !883)
!892 = !DILocation(line: 168, column: 5, scope: !192, inlinedAt: !883)
!893 = !DILocation(line: 546, column: 20, scope: !873)
!894 = !DILocation(line: 548, column: 14, scope: !873)
!895 = !DILocation(line: 549, column: 19, scope: !873)
!896 = !DILocation(line: 549, column: 17, scope: !873)
!897 = !DILocation(line: 550, column: 16, scope: !873)
!898 = !DILocation(line: 550, column: 14, scope: !873)
!899 = !DILocation(line: 552, column: 53, scope: !873)
!900 = !DILocation(line: 414, column: 56, scope: !585, inlinedAt: !901)
!901 = distinct !DILocation(line: 552, column: 5, scope: !873)
!902 = !DILocation(line: 415, column: 60, scope: !585, inlinedAt: !901)
!903 = !DILocation(line: 416, column: 60, scope: !585, inlinedAt: !901)
!904 = !DILocation(line: 417, column: 5, scope: !585, inlinedAt: !901)
!905 = !DILocation(line: 418, column: 1, scope: !585, inlinedAt: !901)
!906 = !DILocation(line: 553, column: 31, scope: !873)
!907 = !DILocation(line: 553, column: 25, scope: !873)
!908 = !DILocation(line: 553, column: 16, scope: !873)
!909 = !DILocation(line: 553, column: 22, scope: !873)
!910 = !DILocation(line: 554, column: 1, scope: !873)
!911 = distinct !DISubprogram(name: "quicklistAppendValuesFromZiplist", scope: !3, file: !3, line: 562, type: !912, isLocal: false, isDefinition: true, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !914)
!912 = !DISubroutineType(types: !913)
!913 = !{!21, !21, !6}
!914 = !{!915, !916, !917, !918, !919, !921, !925}
!915 = !DILocalVariable(name: "quicklist", arg: 1, scope: !911, file: !3, line: 562, type: !21)
!916 = !DILocalVariable(name: "zl", arg: 2, scope: !911, file: !3, line: 563, type: !6)
!917 = !DILocalVariable(name: "value", scope: !911, file: !3, line: 564, type: !6)
!918 = !DILocalVariable(name: "sz", scope: !911, file: !3, line: 565, type: !14)
!919 = !DILocalVariable(name: "longval", scope: !911, file: !3, line: 566, type: !920)
!920 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!921 = !DILocalVariable(name: "longstr", scope: !911, file: !3, line: 567, type: !922)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 256, elements: !923)
!923 = !{!924}
!924 = !DISubrange(count: 32)
!925 = !DILocalVariable(name: "p", scope: !911, file: !3, line: 569, type: !6)
!926 = !DILocation(line: 562, column: 56, scope: !911)
!927 = !DILocation(line: 563, column: 60, scope: !911)
!928 = !DILocation(line: 564, column: 5, scope: !911)
!929 = !DILocation(line: 565, column: 5, scope: !911)
!930 = !DILocation(line: 566, column: 5, scope: !911)
!931 = !DILocation(line: 567, column: 5, scope: !911)
!932 = !DILocation(line: 567, column: 10, scope: !911)
!933 = !DILocation(line: 569, column: 24, scope: !911)
!934 = !DILocation(line: 569, column: 20, scope: !911)
!935 = !DILocation(line: 570, column: 5, scope: !911)
!936 = !DILocation(line: 564, column: 20, scope: !911)
!937 = !DILocation(line: 565, column: 18, scope: !911)
!938 = !DILocation(line: 566, column: 15, scope: !911)
!939 = !DILocation(line: 570, column: 12, scope: !911)
!940 = !DILocation(line: 571, column: 14, scope: !941)
!941 = distinct !DILexicalBlock(scope: !942, file: !3, line: 571, column: 13)
!942 = distinct !DILexicalBlock(scope: !911, file: !3, line: 570, column: 50)
!943 = !DILocation(line: 571, column: 13, scope: !942)
!944 = !DILocation(line: 576, column: 45, scope: !942)
!945 = !DILocation(line: 573, column: 54, scope: !946)
!946 = distinct !DILexicalBlock(scope: !941, file: !3, line: 571, column: 21)
!947 = !{!948, !948, i64 0}
!948 = !{!"long long", !72, i64 0}
!949 = !DILocation(line: 573, column: 18, scope: !946)
!950 = !DILocation(line: 573, column: 16, scope: !946)
!951 = !DILocation(line: 574, column: 19, scope: !946)
!952 = !DILocation(line: 575, column: 9, scope: !946)
!953 = !DILocation(line: 576, column: 38, scope: !942)
!954 = !DILocation(line: 576, column: 9, scope: !942)
!955 = !DILocation(line: 577, column: 13, scope: !942)
!956 = distinct !{!956, !935, !957}
!957 = !DILocation(line: 578, column: 5, scope: !911)
!958 = !DILocation(line: 579, column: 5, scope: !911)
!959 = !DILocation(line: 581, column: 1, scope: !911)
!960 = !DILocation(line: 580, column: 5, scope: !911)
!961 = distinct !DISubprogram(name: "quicklistCreateFromZiplist", scope: !3, file: !3, line: 586, type: !962, isLocal: false, isDefinition: true, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !964)
!962 = !DISubroutineType(types: !963)
!963 = !{!21, !20, !20, !6}
!964 = !{!965, !966, !967}
!965 = !DILocalVariable(name: "fill", arg: 1, scope: !961, file: !3, line: 586, type: !20)
!966 = !DILocalVariable(name: "compress", arg: 2, scope: !961, file: !3, line: 586, type: !20)
!967 = !DILocalVariable(name: "zl", arg: 3, scope: !961, file: !3, line: 587, type: !6)
!968 = !DILocation(line: 586, column: 43, scope: !961)
!969 = !DILocation(line: 586, column: 53, scope: !961)
!970 = !DILocation(line: 587, column: 54, scope: !961)
!971 = !DILocation(line: 152, column: 29, scope: !148, inlinedAt: !972)
!972 = distinct !DILocation(line: 588, column: 45, scope: !961)
!973 = !DILocation(line: 152, column: 39, scope: !148, inlinedAt: !972)
!974 = !DILocation(line: 117, column: 17, scope: !61, inlinedAt: !975)
!975 = distinct !DILocation(line: 153, column: 28, scope: !148, inlinedAt: !972)
!976 = !DILocation(line: 115, column: 23, scope: !61, inlinedAt: !975)
!977 = !DILocation(line: 118, column: 21, scope: !61, inlinedAt: !975)
!978 = !DILocation(line: 120, column: 16, scope: !61, inlinedAt: !975)
!979 = !DILocation(line: 120, column: 22, scope: !61, inlinedAt: !975)
!980 = !DILocation(line: 121, column: 16, scope: !61, inlinedAt: !975)
!981 = !DILocation(line: 122, column: 21, scope: !61, inlinedAt: !975)
!982 = !DILocation(line: 123, column: 5, scope: !61, inlinedAt: !975)
!983 = !DILocation(line: 153, column: 16, scope: !148, inlinedAt: !972)
!984 = !DILocation(line: 146, column: 37, scope: !117, inlinedAt: !985)
!985 = distinct !DILocation(line: 154, column: 5, scope: !148, inlinedAt: !972)
!986 = !DILocation(line: 146, column: 52, scope: !117, inlinedAt: !985)
!987 = !DILocation(line: 146, column: 62, scope: !117, inlinedAt: !985)
!988 = !DILocation(line: 137, column: 34, scope: !100, inlinedAt: !989)
!989 = distinct !DILocation(line: 147, column: 5, scope: !117, inlinedAt: !985)
!990 = !DILocation(line: 137, column: 49, scope: !100, inlinedAt: !989)
!991 = !DILocation(line: 138, column: 14, scope: !107, inlinedAt: !989)
!992 = !DILocation(line: 138, column: 9, scope: !100, inlinedAt: !989)
!993 = !DILocation(line: 140, column: 21, scope: !110, inlinedAt: !989)
!994 = !DILocation(line: 140, column: 16, scope: !107, inlinedAt: !989)
!995 = !DILocation(line: 0, scope: !117, inlinedAt: !985)
!996 = !DILocation(line: 143, column: 21, scope: !100, inlinedAt: !989)
!997 = !DILocation(line: 144, column: 1, scope: !100, inlinedAt: !989)
!998 = !DILocation(line: 127, column: 43, scope: !81, inlinedAt: !999)
!999 = distinct !DILocation(line: 148, column: 5, scope: !117, inlinedAt: !985)
!1000 = !DILocation(line: 127, column: 58, scope: !81, inlinedAt: !999)
!1001 = !DILocation(line: 128, column: 18, scope: !90, inlinedAt: !999)
!1002 = !DILocation(line: 128, column: 9, scope: !81, inlinedAt: !999)
!1003 = !DILocation(line: 130, column: 25, scope: !93, inlinedAt: !999)
!1004 = !DILocation(line: 130, column: 16, scope: !90, inlinedAt: !999)
!1005 = !DILocation(line: 133, column: 25, scope: !81, inlinedAt: !999)
!1006 = !DILocation(line: 134, column: 1, scope: !81, inlinedAt: !999)
!1007 = !DILocation(line: 149, column: 1, scope: !117, inlinedAt: !985)
!1008 = !DILocation(line: 155, column: 5, scope: !148, inlinedAt: !972)
!1009 = !DILocation(line: 588, column: 12, scope: !961)
!1010 = !DILocation(line: 588, column: 5, scope: !961)
!1011 = distinct !DISubprogram(name: "__quicklistDelNode", scope: !3, file: !3, line: 599, type: !1012, isLocal: false, isDefinition: true, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1014)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{null, !21, !26}
!1014 = !{!1015, !1016}
!1015 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1011, file: !3, line: 599, type: !21)
!1016 = !DILocalVariable(name: "node", arg: 2, scope: !1011, file: !3, line: 600, type: !26)
!1017 = !DILocation(line: 599, column: 49, scope: !1011)
!1018 = !DILocation(line: 600, column: 53, scope: !1011)
!1019 = !DILocation(line: 601, column: 15, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 601, column: 9)
!1021 = !DILocation(line: 601, column: 9, scope: !1020)
!1022 = !DILocation(line: 601, column: 9, scope: !1011)
!1023 = !DILocation(line: 602, column: 34, scope: !1020)
!1024 = !DILocation(line: 602, column: 26, scope: !1020)
!1025 = !DILocation(line: 602, column: 9, scope: !1020)
!1026 = !DILocation(line: 603, column: 15, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 603, column: 9)
!1028 = !DILocation(line: 603, column: 9, scope: !1027)
!1029 = !DILocation(line: 603, column: 9, scope: !1011)
!1030 = !DILocation(line: 604, column: 21, scope: !1027)
!1031 = !DILocation(line: 604, column: 26, scope: !1027)
!1032 = !DILocation(line: 604, column: 9, scope: !1027)
!1033 = !DILocation(line: 606, column: 28, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 606, column: 9)
!1035 = !DILocation(line: 606, column: 14, scope: !1034)
!1036 = !DILocation(line: 606, column: 9, scope: !1011)
!1037 = !DILocation(line: 607, column: 25, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 606, column: 34)
!1039 = !DILocation(line: 608, column: 5, scope: !1038)
!1040 = !DILocation(line: 610, column: 28, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 610, column: 9)
!1042 = !DILocation(line: 610, column: 14, scope: !1041)
!1043 = !DILocation(line: 610, column: 9, scope: !1011)
!1044 = !DILocation(line: 611, column: 33, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 610, column: 34)
!1046 = !DILocation(line: 611, column: 25, scope: !1045)
!1047 = !DILocation(line: 612, column: 5, scope: !1045)
!1048 = !DILocation(line: 616, column: 5, scope: !1011)
!1049 = !DILocation(line: 618, column: 31, scope: !1011)
!1050 = !DILocation(line: 618, column: 25, scope: !1011)
!1051 = !DILocation(line: 618, column: 16, scope: !1011)
!1052 = !DILocation(line: 618, column: 22, scope: !1011)
!1053 = !DILocation(line: 620, column: 17, scope: !1011)
!1054 = !DILocation(line: 620, column: 5, scope: !1011)
!1055 = !DILocation(line: 621, column: 11, scope: !1011)
!1056 = !DILocation(line: 621, column: 5, scope: !1011)
!1057 = !DILocation(line: 622, column: 16, scope: !1011)
!1058 = !DILocation(line: 622, column: 19, scope: !1011)
!1059 = !DILocation(line: 623, column: 1, scope: !1011)
!1060 = distinct !DISubprogram(name: "quicklistDelIndex", scope: !3, file: !3, line: 633, type: !1061, isLocal: false, isDefinition: true, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1064)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!20, !21, !26, !1063}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1064 = !{!1065, !1066, !1067, !1068}
!1065 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1060, file: !3, line: 633, type: !21)
!1066 = !DILocalVariable(name: "node", arg: 2, scope: !1060, file: !3, line: 633, type: !26)
!1067 = !DILocalVariable(name: "p", arg: 3, scope: !1060, file: !3, line: 634, type: !1063)
!1068 = !DILocalVariable(name: "gone", scope: !1060, file: !3, line: 635, type: !20)
!1069 = !DILocation(line: 633, column: 47, scope: !1060)
!1070 = !DILocation(line: 633, column: 73, scope: !1060)
!1071 = !DILocation(line: 634, column: 52, scope: !1060)
!1072 = !DILocation(line: 635, column: 9, scope: !1060)
!1073 = !DILocation(line: 637, column: 36, scope: !1060)
!1074 = !DILocation(line: 637, column: 16, scope: !1060)
!1075 = !DILocation(line: 637, column: 14, scope: !1060)
!1076 = !DILocation(line: 638, column: 11, scope: !1060)
!1077 = !DILocation(line: 638, column: 16, scope: !1060)
!1078 = !DILocation(line: 639, column: 21, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 639, column: 9)
!1080 = !DILocation(line: 639, column: 9, scope: !1060)
!1081 = !DILocation(line: 641, column: 9, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 639, column: 27)
!1083 = !DILocation(line: 642, column: 5, scope: !1082)
!1084 = !DILocation(line: 643, column: 9, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 643, column: 9)
!1086 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 642, column: 12)
!1087 = !DILocation(line: 645, column: 16, scope: !1060)
!1088 = !DILocation(line: 645, column: 21, scope: !1060)
!1089 = !DILocation(line: 647, column: 5, scope: !1060)
!1090 = distinct !DISubprogram(name: "quicklistDelEntry", scope: !3, file: !3, line: 654, type: !1091, isLocal: false, isDefinition: true, scopeLine: 654, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1114)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{null, !1093, !1103}
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistIter", file: !10, line: 88, baseType: !1095)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistIter", file: !10, line: 82, size: 320, elements: !1096)
!1096 = !{!1097, !1098, !1099, !1100, !1102}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !1095, file: !10, line: 83, baseType: !215, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1095, file: !10, line: 84, baseType: !26, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !1095, file: !10, line: 85, baseType: !6, size: 64, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1095, file: !10, line: 86, baseType: !1101, size: 64, offset: 192)
!1101 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !1095, file: !10, line: 87, baseType: !20, size: 32, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistEntry", file: !10, line: 98, baseType: !1105)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistEntry", file: !10, line: 90, size: 384, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1111, !1112, !1113}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !1105, file: !10, line: 91, baseType: !215, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1105, file: !10, line: 92, baseType: !26, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !1105, file: !10, line: 93, baseType: !6, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1105, file: !10, line: 94, baseType: !6, size: 64, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "longval", scope: !1105, file: !10, line: 95, baseType: !920, size: 64, offset: 256)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !1105, file: !10, line: 96, baseType: !14, size: 32, offset: 320)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1105, file: !10, line: 97, baseType: !20, size: 32, offset: 352)
!1114 = !{!1115, !1116, !1117, !1118, !1119}
!1115 = !DILocalVariable(name: "iter", arg: 1, scope: !1090, file: !3, line: 654, type: !1093)
!1116 = !DILocalVariable(name: "entry", arg: 2, scope: !1090, file: !3, line: 654, type: !1103)
!1117 = !DILocalVariable(name: "prev", scope: !1090, file: !3, line: 655, type: !26)
!1118 = !DILocalVariable(name: "next", scope: !1090, file: !3, line: 656, type: !26)
!1119 = !DILocalVariable(name: "deleted_node", scope: !1090, file: !3, line: 657, type: !20)
!1120 = !DILocation(line: 654, column: 39, scope: !1090)
!1121 = !DILocation(line: 654, column: 61, scope: !1090)
!1122 = !DILocation(line: 655, column: 34, scope: !1090)
!1123 = !{!1124, !71, i64 8}
!1124 = !{!"quicklistEntry", !71, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !948, i64 32, !203, i64 40, !203, i64 44}
!1125 = !DILocation(line: 655, column: 40, scope: !1090)
!1126 = !DILocation(line: 655, column: 20, scope: !1090)
!1127 = !DILocation(line: 656, column: 40, scope: !1090)
!1128 = !DILocation(line: 656, column: 20, scope: !1090)
!1129 = !DILocation(line: 657, column: 62, scope: !1090)
!1130 = !{!1124, !71, i64 0}
!1131 = !DILocation(line: 658, column: 63, scope: !1090)
!1132 = !DILocation(line: 633, column: 47, scope: !1060, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 657, column: 24, scope: !1090)
!1134 = !DILocation(line: 633, column: 73, scope: !1060, inlinedAt: !1133)
!1135 = !DILocation(line: 634, column: 52, scope: !1060, inlinedAt: !1133)
!1136 = !DILocation(line: 635, column: 9, scope: !1060, inlinedAt: !1133)
!1137 = !DILocation(line: 637, column: 36, scope: !1060, inlinedAt: !1133)
!1138 = !DILocation(line: 637, column: 16, scope: !1060, inlinedAt: !1133)
!1139 = !DILocation(line: 637, column: 14, scope: !1060, inlinedAt: !1133)
!1140 = !DILocation(line: 638, column: 11, scope: !1060, inlinedAt: !1133)
!1141 = !DILocation(line: 638, column: 16, scope: !1060, inlinedAt: !1133)
!1142 = !DILocation(line: 639, column: 21, scope: !1079, inlinedAt: !1133)
!1143 = !DILocation(line: 639, column: 9, scope: !1060, inlinedAt: !1133)
!1144 = !DILocation(line: 641, column: 9, scope: !1082, inlinedAt: !1133)
!1145 = !DILocation(line: 642, column: 5, scope: !1082, inlinedAt: !1133)
!1146 = !DILocation(line: 645, column: 16, scope: !1060, inlinedAt: !1133)
!1147 = !DILocation(line: 645, column: 21, scope: !1060, inlinedAt: !1133)
!1148 = !DILocation(line: 647, column: 5, scope: !1060, inlinedAt: !1133)
!1149 = !DILocation(line: 661, column: 11, scope: !1090)
!1150 = !DILocation(line: 661, column: 14, scope: !1090)
!1151 = !{!1152, !71, i64 16}
!1152 = !{!"quicklistIter", !71, i64 0, !71, i64 8, !71, i64 16, !77, i64 24, !203, i64 32}
!1153 = !DILocation(line: 664, column: 9, scope: !1090)
!1154 = !DILocation(line: 665, column: 19, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 665, column: 13)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 664, column: 23)
!1157 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 664, column: 9)
!1158 = !{!1152, !203, i64 32}
!1159 = !DILocation(line: 665, column: 29, scope: !1155)
!1160 = !DILocation(line: 665, column: 13, scope: !1156)
!1161 = !DILocation(line: 643, column: 9, scope: !1085, inlinedAt: !1133)
!1162 = !DILocation(line: 666, column: 19, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 665, column: 47)
!1164 = !DILocation(line: 666, column: 27, scope: !1163)
!1165 = !{!1152, !71, i64 8}
!1166 = !DILocation(line: 667, column: 19, scope: !1163)
!1167 = !DILocation(line: 667, column: 26, scope: !1163)
!1168 = !{!1152, !77, i64 24}
!1169 = !DILocation(line: 668, column: 9, scope: !1163)
!1170 = !DILocation(line: 668, column: 36, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 668, column: 20)
!1172 = !DILocation(line: 668, column: 20, scope: !1155)
!1173 = !DILocation(line: 669, column: 19, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 668, column: 54)
!1175 = !DILocation(line: 669, column: 27, scope: !1174)
!1176 = !DILocation(line: 670, column: 19, scope: !1174)
!1177 = !DILocation(line: 670, column: 26, scope: !1174)
!1178 = !DILocation(line: 671, column: 9, scope: !1174)
!1179 = !DILocation(line: 0, scope: !1174)
!1180 = !DILocation(line: 681, column: 1, scope: !1090)
!1181 = distinct !DISubprogram(name: "quicklistReplaceAtIndex", scope: !3, file: !3, line: 687, type: !1182, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1184)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!20, !21, !1101, !47, !20}
!1184 = !{!1185, !1186, !1187, !1188, !1189}
!1185 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1181, file: !3, line: 687, type: !21)
!1186 = !DILocalVariable(name: "index", arg: 2, scope: !1181, file: !3, line: 687, type: !1101)
!1187 = !DILocalVariable(name: "data", arg: 3, scope: !1181, file: !3, line: 687, type: !47)
!1188 = !DILocalVariable(name: "sz", arg: 4, scope: !1181, file: !3, line: 688, type: !20)
!1189 = !DILocalVariable(name: "entry", scope: !1181, file: !3, line: 689, type: !1104)
!1190 = !DILocation(line: 687, column: 40, scope: !1181)
!1191 = !DILocation(line: 687, column: 56, scope: !1181)
!1192 = !DILocation(line: 687, column: 69, scope: !1181)
!1193 = !DILocation(line: 688, column: 33, scope: !1181)
!1194 = !DILocation(line: 689, column: 5, scope: !1181)
!1195 = !DILocation(line: 689, column: 20, scope: !1181)
!1196 = !DILocation(line: 690, column: 9, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 690, column: 9)
!1198 = !DILocation(line: 690, column: 9, scope: !1181)
!1199 = !DILocation(line: 692, column: 46, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 690, column: 59)
!1201 = !DILocation(line: 692, column: 52, scope: !1200)
!1202 = !DILocation(line: 692, column: 63, scope: !1200)
!1203 = !DILocation(line: 692, column: 26, scope: !1200)
!1204 = !DILocation(line: 692, column: 15, scope: !1200)
!1205 = !DILocation(line: 692, column: 21, scope: !1200)
!1206 = !DILocation(line: 692, column: 24, scope: !1200)
!1207 = !DILocation(line: 693, column: 62, scope: !1200)
!1208 = !{!1124, !71, i64 16}
!1209 = !DILocation(line: 693, column: 26, scope: !1200)
!1210 = !DILocation(line: 693, column: 15, scope: !1200)
!1211 = !DILocation(line: 693, column: 21, scope: !1200)
!1212 = !DILocation(line: 693, column: 24, scope: !1200)
!1213 = !DILocation(line: 694, column: 9, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 694, column: 9)
!1215 = !DILocation(line: 695, column: 9, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 695, column: 9)
!1217 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 695, column: 9)
!1218 = !DILocation(line: 695, column: 9, scope: !1217)
!1219 = !DILocation(line: 695, column: 9, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 695, column: 9)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 695, column: 9)
!1222 = !DILocation(line: 695, column: 9, scope: !1221)
!1223 = !DILocation(line: 695, column: 9, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 695, column: 9)
!1225 = !DILocation(line: 0, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 697, column: 12)
!1227 = !DILocation(line: 0, scope: !1200)
!1228 = !DILocation(line: 700, column: 1, scope: !1181)
!1229 = distinct !DISubprogram(name: "quicklistIndex", scope: !3, file: !3, line: 1245, type: !1230, isLocal: false, isDefinition: true, scopeLine: 1246, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1233)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!20, !215, !1232, !1103}
!1232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !920)
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1240, !1241}
!1234 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1229, file: !3, line: 1245, type: !215)
!1235 = !DILocalVariable(name: "idx", arg: 2, scope: !1229, file: !3, line: 1245, type: !1232)
!1236 = !DILocalVariable(name: "entry", arg: 3, scope: !1229, file: !3, line: 1246, type: !1103)
!1237 = !DILocalVariable(name: "n", scope: !1229, file: !3, line: 1247, type: !26)
!1238 = !DILocalVariable(name: "accum", scope: !1229, file: !3, line: 1248, type: !1239)
!1239 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1240 = !DILocalVariable(name: "index", scope: !1229, file: !3, line: 1249, type: !1239)
!1241 = !DILocalVariable(name: "forward", scope: !1229, file: !3, line: 1250, type: !20)
!1242 = !DILocation(line: 1245, column: 37, scope: !1229)
!1243 = !DILocation(line: 1245, column: 64, scope: !1229)
!1244 = !DILocation(line: 1246, column: 36, scope: !1229)
!1245 = !DILocation(line: 1248, column: 24, scope: !1229)
!1246 = !DILocation(line: 1252, column: 5, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 1252, column: 5)
!1248 = !{!1124, !948, i64 32}
!1249 = !{!1124, !203, i64 44}
!1250 = !{!1124, !203, i64 40}
!1251 = !DILocation(line: 1253, column: 22, scope: !1229)
!1252 = !DILocation(line: 1255, column: 10, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 1255, column: 9)
!1254 = !DILocation(line: 1255, column: 9, scope: !1229)
!1255 = !DILocation(line: 1249, column: 24, scope: !1229)
!1256 = !DILocation(line: 1260, column: 24, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 1258, column: 12)
!1258 = !DILocation(line: 1247, column: 20, scope: !1229)
!1259 = !DILocation(line: 1257, column: 24, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 1255, column: 19)
!1261 = !DILocation(line: 0, scope: !1260)
!1262 = !DILocation(line: 1263, column: 29, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 1263, column: 9)
!1264 = !DILocation(line: 1263, column: 15, scope: !1263)
!1265 = !DILocation(line: 1263, column: 9, scope: !1229)
!1266 = !DILocation(line: 1266, column: 12, scope: !1229)
!1267 = !DILocation(line: 1266, column: 5, scope: !1229)
!1268 = !DILocation(line: 1267, column: 25, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 1267, column: 13)
!1270 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 1266, column: 23)
!1271 = !DILocation(line: 1267, column: 22, scope: !1269)
!1272 = !DILocation(line: 1267, column: 20, scope: !1269)
!1273 = !DILocation(line: 1267, column: 32, scope: !1269)
!1274 = !DILocation(line: 1267, column: 13, scope: !1270)
!1275 = !DILocation(line: 0, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 1269, column: 16)
!1277 = !DILocation(line: 1273, column: 40, scope: !1276)
!1278 = !DILocation(line: 1273, column: 30, scope: !1276)
!1279 = !DILocation(line: 1273, column: 17, scope: !1276)
!1280 = distinct !{!1280, !1267, !1281}
!1281 = !DILocation(line: 1275, column: 5, scope: !1229)
!1282 = !DILocation(line: 1277, column: 9, scope: !1229)
!1283 = !DILocation(line: 1278, column: 9, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 1277, column: 9)
!1285 = !DILocation(line: 1283, column: 17, scope: !1229)
!1286 = !DILocation(line: 1284, column: 9, scope: !1229)
!1287 = !DILocation(line: 1290, column: 34, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 1287, column: 12)
!1289 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 1284, column: 9)
!1290 = !DILocation(line: 1290, column: 38, scope: !1288)
!1291 = !DILocation(line: 1290, column: 25, scope: !1288)
!1292 = !DILocation(line: 1286, column: 31, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 1284, column: 18)
!1294 = !DILocation(line: 1286, column: 25, scope: !1293)
!1295 = !DILocation(line: 0, scope: !1293)
!1296 = !DILocation(line: 1293, column: 5, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 1293, column: 5)
!1298 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 1293, column: 5)
!1299 = !DILocation(line: 1293, column: 5, scope: !1298)
!1300 = !DILocation(line: 235, column: 59, scope: !303, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 1293, column: 5, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 1293, column: 5)
!1303 = !DILocation(line: 240, column: 40, scope: !303, inlinedAt: !1301)
!1304 = !DILocation(line: 240, column: 34, scope: !303, inlinedAt: !1301)
!1305 = !DILocation(line: 240, column: 26, scope: !303, inlinedAt: !1301)
!1306 = !DILocation(line: 240, column: 11, scope: !303, inlinedAt: !1301)
!1307 = !DILocation(line: 241, column: 47, scope: !303, inlinedAt: !1301)
!1308 = !DILocation(line: 241, column: 19, scope: !303, inlinedAt: !1301)
!1309 = !DILocation(line: 242, column: 29, scope: !316, inlinedAt: !1301)
!1310 = !DILocation(line: 242, column: 46, scope: !316, inlinedAt: !1301)
!1311 = !DILocation(line: 242, column: 70, scope: !316, inlinedAt: !1301)
!1312 = !DILocation(line: 242, column: 9, scope: !316, inlinedAt: !1301)
!1313 = !DILocation(line: 242, column: 74, scope: !316, inlinedAt: !1301)
!1314 = !DILocation(line: 242, column: 9, scope: !303, inlinedAt: !1301)
!1315 = !DILocation(line: 244, column: 9, scope: !323, inlinedAt: !1301)
!1316 = !DILocation(line: 245, column: 9, scope: !323, inlinedAt: !1301)
!1317 = !DILocation(line: 247, column: 5, scope: !303, inlinedAt: !1301)
!1318 = !DILocation(line: 248, column: 14, scope: !303, inlinedAt: !1301)
!1319 = !DILocation(line: 249, column: 20, scope: !303, inlinedAt: !1301)
!1320 = !DILocation(line: 250, column: 5, scope: !303, inlinedAt: !1301)
!1321 = !DILocation(line: 0, scope: !1302)
!1322 = !DILocation(line: 251, column: 1, scope: !303, inlinedAt: !1301)
!1323 = !DILocation(line: 1293, column: 5, scope: !1302)
!1324 = !DILocation(line: 1294, column: 37, scope: !1229)
!1325 = !DILocation(line: 1294, column: 54, scope: !1229)
!1326 = !DILocation(line: 1294, column: 43, scope: !1229)
!1327 = !DILocation(line: 1294, column: 17, scope: !1229)
!1328 = !DILocation(line: 1294, column: 15, scope: !1229)
!1329 = !DILocation(line: 1295, column: 5, scope: !1229)
!1330 = !DILocation(line: 1298, column: 5, scope: !1229)
!1331 = !DILocation(line: 0, scope: !1284)
!1332 = !DILocation(line: 0, scope: !1263)
!1333 = !DILocation(line: 1299, column: 1, scope: !1229)
!1334 = distinct !DISubprogram(name: "_quicklistZiplistMerge", scope: !3, file: !3, line: 715, type: !1335, isLocal: false, isDefinition: true, scopeLine: 717, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1337)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!26, !21, !26, !26}
!1337 = !{!1338, !1339, !1340, !1341, !1344}
!1338 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1334, file: !3, line: 715, type: !21)
!1339 = !DILocalVariable(name: "a", arg: 2, scope: !1334, file: !3, line: 716, type: !26)
!1340 = !DILocalVariable(name: "b", arg: 3, scope: !1334, file: !3, line: 717, type: !26)
!1341 = !DILocalVariable(name: "keep", scope: !1342, file: !3, line: 724, type: !26)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 722, column: 41)
!1343 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 722, column: 9)
!1344 = !DILocalVariable(name: "nokeep", scope: !1342, file: !3, line: 724, type: !26)
!1345 = !DILocation(line: 715, column: 63, scope: !1334)
!1346 = !DILocation(line: 716, column: 67, scope: !1334)
!1347 = !DILocation(line: 717, column: 67, scope: !1334)
!1348 = !DILocation(line: 720, column: 5, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 720, column: 5)
!1350 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 720, column: 5)
!1351 = !DILocation(line: 720, column: 5, scope: !1350)
!1352 = !DILocation(line: 235, column: 59, scope: !303, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 720, column: 5, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 720, column: 5)
!1355 = !DILocation(line: 240, column: 40, scope: !303, inlinedAt: !1353)
!1356 = !DILocation(line: 240, column: 34, scope: !303, inlinedAt: !1353)
!1357 = !DILocation(line: 240, column: 26, scope: !303, inlinedAt: !1353)
!1358 = !DILocation(line: 240, column: 11, scope: !303, inlinedAt: !1353)
!1359 = !DILocation(line: 241, column: 47, scope: !303, inlinedAt: !1353)
!1360 = !DILocation(line: 241, column: 19, scope: !303, inlinedAt: !1353)
!1361 = !DILocation(line: 242, column: 29, scope: !316, inlinedAt: !1353)
!1362 = !DILocation(line: 242, column: 46, scope: !316, inlinedAt: !1353)
!1363 = !DILocation(line: 242, column: 70, scope: !316, inlinedAt: !1353)
!1364 = !DILocation(line: 242, column: 9, scope: !316, inlinedAt: !1353)
!1365 = !DILocation(line: 242, column: 74, scope: !316, inlinedAt: !1353)
!1366 = !DILocation(line: 242, column: 9, scope: !303, inlinedAt: !1353)
!1367 = !DILocation(line: 244, column: 9, scope: !323, inlinedAt: !1353)
!1368 = !DILocation(line: 245, column: 9, scope: !323, inlinedAt: !1353)
!1369 = !DILocation(line: 247, column: 5, scope: !303, inlinedAt: !1353)
!1370 = !DILocation(line: 248, column: 14, scope: !303, inlinedAt: !1353)
!1371 = !DILocation(line: 249, column: 20, scope: !303, inlinedAt: !1353)
!1372 = !DILocation(line: 250, column: 5, scope: !303, inlinedAt: !1353)
!1373 = !DILocation(line: 0, scope: !1354)
!1374 = !DILocation(line: 251, column: 1, scope: !303, inlinedAt: !1353)
!1375 = !DILocation(line: 720, column: 5, scope: !1354)
!1376 = !DILocation(line: 721, column: 5, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 721, column: 5)
!1378 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 721, column: 5)
!1379 = !DILocation(line: 721, column: 5, scope: !1378)
!1380 = !DILocation(line: 235, column: 59, scope: !303, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 721, column: 5, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 721, column: 5)
!1383 = !DILocation(line: 240, column: 40, scope: !303, inlinedAt: !1381)
!1384 = !DILocation(line: 240, column: 34, scope: !303, inlinedAt: !1381)
!1385 = !DILocation(line: 240, column: 26, scope: !303, inlinedAt: !1381)
!1386 = !DILocation(line: 240, column: 11, scope: !303, inlinedAt: !1381)
!1387 = !DILocation(line: 241, column: 47, scope: !303, inlinedAt: !1381)
!1388 = !DILocation(line: 241, column: 19, scope: !303, inlinedAt: !1381)
!1389 = !DILocation(line: 242, column: 29, scope: !316, inlinedAt: !1381)
!1390 = !DILocation(line: 242, column: 46, scope: !316, inlinedAt: !1381)
!1391 = !DILocation(line: 242, column: 70, scope: !316, inlinedAt: !1381)
!1392 = !DILocation(line: 242, column: 9, scope: !316, inlinedAt: !1381)
!1393 = !DILocation(line: 242, column: 74, scope: !316, inlinedAt: !1381)
!1394 = !DILocation(line: 242, column: 9, scope: !303, inlinedAt: !1381)
!1395 = !DILocation(line: 244, column: 9, scope: !323, inlinedAt: !1381)
!1396 = !DILocation(line: 245, column: 9, scope: !323, inlinedAt: !1381)
!1397 = !DILocation(line: 247, column: 5, scope: !303, inlinedAt: !1381)
!1398 = !DILocation(line: 248, column: 14, scope: !303, inlinedAt: !1381)
!1399 = !DILocation(line: 249, column: 20, scope: !303, inlinedAt: !1381)
!1400 = !DILocation(line: 250, column: 5, scope: !303, inlinedAt: !1381)
!1401 = !DILocation(line: 0, scope: !1382)
!1402 = !DILocation(line: 251, column: 1, scope: !303, inlinedAt: !1381)
!1403 = !DILocation(line: 721, column: 5, scope: !1382)
!1404 = !DILocation(line: 722, column: 27, scope: !1343)
!1405 = !DILocation(line: 722, column: 35, scope: !1343)
!1406 = !DILocation(line: 722, column: 10, scope: !1343)
!1407 = !DILocation(line: 722, column: 9, scope: !1334)
!1408 = !DILocation(line: 724, column: 24, scope: !1342)
!1409 = !DILocation(line: 724, column: 38, scope: !1342)
!1410 = !DILocation(line: 725, column: 17, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 725, column: 13)
!1412 = !DILocation(line: 725, column: 14, scope: !1411)
!1413 = !DILocation(line: 725, column: 13, scope: !1342)
!1414 = !DILocation(line: 728, column: 24, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 728, column: 20)
!1416 = !DILocation(line: 728, column: 21, scope: !1415)
!1417 = !DILocation(line: 728, column: 20, scope: !1411)
!1418 = !DILocation(line: 0, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 725, column: 21)
!1420 = !DILocation(line: 732, column: 40, scope: !1342)
!1421 = !DILocation(line: 732, column: 23, scope: !1342)
!1422 = !DILocation(line: 732, column: 15, scope: !1342)
!1423 = !DILocation(line: 732, column: 21, scope: !1342)
!1424 = !DILocation(line: 733, column: 9, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 733, column: 9)
!1426 = !DILocation(line: 735, column: 17, scope: !1342)
!1427 = !DILocation(line: 735, column: 23, scope: !1342)
!1428 = !DILocation(line: 736, column: 9, scope: !1342)
!1429 = !DILocation(line: 737, column: 9, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 737, column: 9)
!1431 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 737, column: 9)
!1432 = !DILocation(line: 737, column: 9, scope: !1431)
!1433 = !DILocation(line: 737, column: 9, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !3, line: 737, column: 9)
!1435 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 737, column: 9)
!1436 = !DILocation(line: 737, column: 9, scope: !1435)
!1437 = !DILocation(line: 737, column: 9, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 737, column: 9)
!1439 = !DILocation(line: 0, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 739, column: 12)
!1441 = !DILocation(line: 743, column: 1, scope: !1334)
!1442 = distinct !DISubprogram(name: "_quicklistMergeNodes", scope: !3, file: !3, line: 753, type: !1012, isLocal: false, isDefinition: true, scopeLine: 754, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1443)
!1443 = !{!1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451}
!1444 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1442, file: !3, line: 753, type: !21)
!1445 = !DILocalVariable(name: "center", arg: 2, scope: !1442, file: !3, line: 754, type: !26)
!1446 = !DILocalVariable(name: "fill", scope: !1442, file: !3, line: 755, type: !20)
!1447 = !DILocalVariable(name: "prev", scope: !1442, file: !3, line: 756, type: !26)
!1448 = !DILocalVariable(name: "prev_prev", scope: !1442, file: !3, line: 756, type: !26)
!1449 = !DILocalVariable(name: "next", scope: !1442, file: !3, line: 756, type: !26)
!1450 = !DILocalVariable(name: "next_next", scope: !1442, file: !3, line: 756, type: !26)
!1451 = !DILocalVariable(name: "target", scope: !1442, file: !3, line: 756, type: !26)
!1452 = !DILocation(line: 753, column: 51, scope: !1442)
!1453 = !DILocation(line: 754, column: 55, scope: !1442)
!1454 = !DILocation(line: 755, column: 27, scope: !1442)
!1455 = !DILocation(line: 755, column: 9, scope: !1442)
!1456 = !DILocation(line: 756, column: 58, scope: !1442)
!1457 = !DILocation(line: 756, column: 46, scope: !1442)
!1458 = !DILocation(line: 756, column: 39, scope: !1442)
!1459 = !DILocation(line: 756, column: 27, scope: !1442)
!1460 = !DILocation(line: 756, column: 20, scope: !1442)
!1461 = !DILocation(line: 759, column: 17, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 759, column: 9)
!1463 = !DILocation(line: 759, column: 9, scope: !1462)
!1464 = !DILocation(line: 759, column: 9, scope: !1442)
!1465 = !DILocation(line: 761, column: 27, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 761, column: 13)
!1467 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 759, column: 23)
!1468 = !DILocation(line: 761, column: 13, scope: !1466)
!1469 = !DILocation(line: 761, column: 13, scope: !1467)
!1470 = !DILocation(line: 762, column: 13, scope: !1466)
!1471 = !DILocation(line: 0, scope: !1442)
!1472 = !DILocation(line: 765, column: 17, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 765, column: 9)
!1474 = !DILocation(line: 765, column: 9, scope: !1473)
!1475 = !DILocation(line: 765, column: 9, scope: !1442)
!1476 = !DILocation(line: 767, column: 27, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 767, column: 13)
!1478 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 765, column: 23)
!1479 = !DILocation(line: 767, column: 13, scope: !1477)
!1480 = !DILocation(line: 767, column: 13, scope: !1478)
!1481 = !DILocation(line: 768, column: 13, scope: !1477)
!1482 = !DILocation(line: 472, column: 64, scope: !695, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 772, column: 9, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 772, column: 9)
!1485 = !DILocation(line: 473, column: 64, scope: !695, inlinedAt: !1483)
!1486 = !DILocation(line: 474, column: 53, scope: !695, inlinedAt: !1483)
!1487 = !DILocation(line: 475, column: 10, scope: !707, inlinedAt: !1483)
!1488 = !DILocation(line: 475, column: 16, scope: !707, inlinedAt: !1483)
!1489 = !DILocation(line: 475, column: 12, scope: !707, inlinedAt: !1483)
!1490 = !DILocation(line: 476, column: 9, scope: !707, inlinedAt: !1483)
!1491 = !DILocation(line: 489, column: 1, scope: !695, inlinedAt: !1483)
!1492 = !DILocation(line: 772, column: 9, scope: !1442)
!1493 = !DILocation(line: 480, column: 32, scope: !695, inlinedAt: !1483)
!1494 = !DILocation(line: 480, column: 40, scope: !695, inlinedAt: !1483)
!1495 = !DILocation(line: 480, column: 35, scope: !695, inlinedAt: !1483)
!1496 = !DILocation(line: 480, column: 43, scope: !695, inlinedAt: !1483)
!1497 = !DILocation(line: 480, column: 18, scope: !695, inlinedAt: !1483)
!1498 = !DILocation(line: 481, column: 9, scope: !716, inlinedAt: !1483)
!1499 = !DILocation(line: 421, column: 61, scope: !595, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 481, column: 9, scope: !716, inlinedAt: !1483)
!1501 = !DILocation(line: 422, column: 58, scope: !595, inlinedAt: !1500)
!1502 = !DILocation(line: 423, column: 14, scope: !606, inlinedAt: !1500)
!1503 = !DILocation(line: 423, column: 9, scope: !595, inlinedAt: !1500)
!1504 = !DILocation(line: 427, column: 16, scope: !609, inlinedAt: !1500)
!1505 = !DILocation(line: 427, column: 9, scope: !595, inlinedAt: !1500)
!1506 = !DILocation(line: 434, column: 9, scope: !624, inlinedAt: !1500)
!1507 = !DILocation(line: 481, column: 9, scope: !695, inlinedAt: !1483)
!1508 = !DILocation(line: 426, column: 29, scope: !595, inlinedAt: !1500)
!1509 = !DILocation(line: 426, column: 21, scope: !595, inlinedAt: !1500)
!1510 = !DILocation(line: 426, column: 12, scope: !595, inlinedAt: !1500)
!1511 = !DILocation(line: 428, column: 19, scope: !615, inlinedAt: !1500)
!1512 = !DILocation(line: 428, column: 16, scope: !615, inlinedAt: !1500)
!1513 = !DILocation(line: 428, column: 13, scope: !616, inlinedAt: !1500)
!1514 = !DILocation(line: 0, scope: !620, inlinedAt: !1500)
!1515 = !DILocation(line: 436, column: 1, scope: !595, inlinedAt: !1500)
!1516 = !DILocation(line: 482, column: 9, scope: !716, inlinedAt: !1483)
!1517 = !DILocation(line: 483, column: 15, scope: !736, inlinedAt: !1483)
!1518 = !DILocation(line: 483, column: 14, scope: !716, inlinedAt: !1483)
!1519 = !DILocation(line: 484, column: 9, scope: !736, inlinedAt: !1483)
!1520 = !DILocation(line: 485, column: 23, scope: !740, inlinedAt: !1483)
!1521 = !DILocation(line: 485, column: 34, scope: !740, inlinedAt: !1483)
!1522 = !DILocation(line: 485, column: 29, scope: !740, inlinedAt: !1483)
!1523 = !DILocation(line: 485, column: 41, scope: !740, inlinedAt: !1483)
!1524 = !DILocation(line: 485, column: 14, scope: !736, inlinedAt: !1483)
!1525 = !DILocation(line: 0, scope: !740, inlinedAt: !1483)
!1526 = !DILocation(line: 773, column: 9, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 772, column: 58)
!1528 = !DILocation(line: 775, column: 5, scope: !1527)
!1529 = !DILocation(line: 0, scope: !1527)
!1530 = !DILocation(line: 475, column: 10, scope: !707, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 778, column: 9, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 778, column: 9)
!1533 = !DILocation(line: 472, column: 64, scope: !695, inlinedAt: !1531)
!1534 = !DILocation(line: 473, column: 64, scope: !695, inlinedAt: !1531)
!1535 = !DILocation(line: 474, column: 53, scope: !695, inlinedAt: !1531)
!1536 = !DILocation(line: 475, column: 16, scope: !707, inlinedAt: !1531)
!1537 = !DILocation(line: 475, column: 12, scope: !707, inlinedAt: !1531)
!1538 = !DILocation(line: 476, column: 9, scope: !707, inlinedAt: !1531)
!1539 = !DILocation(line: 489, column: 1, scope: !695, inlinedAt: !1531)
!1540 = !DILocation(line: 778, column: 9, scope: !1442)
!1541 = !DILocation(line: 480, column: 32, scope: !695, inlinedAt: !1531)
!1542 = !DILocation(line: 480, column: 40, scope: !695, inlinedAt: !1531)
!1543 = !DILocation(line: 480, column: 35, scope: !695, inlinedAt: !1531)
!1544 = !DILocation(line: 480, column: 43, scope: !695, inlinedAt: !1531)
!1545 = !DILocation(line: 480, column: 18, scope: !695, inlinedAt: !1531)
!1546 = !DILocation(line: 481, column: 9, scope: !716, inlinedAt: !1531)
!1547 = !DILocation(line: 421, column: 61, scope: !595, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 481, column: 9, scope: !716, inlinedAt: !1531)
!1549 = !DILocation(line: 422, column: 58, scope: !595, inlinedAt: !1548)
!1550 = !DILocation(line: 423, column: 14, scope: !606, inlinedAt: !1548)
!1551 = !DILocation(line: 423, column: 9, scope: !595, inlinedAt: !1548)
!1552 = !DILocation(line: 427, column: 16, scope: !609, inlinedAt: !1548)
!1553 = !DILocation(line: 427, column: 9, scope: !595, inlinedAt: !1548)
!1554 = !DILocation(line: 434, column: 9, scope: !624, inlinedAt: !1548)
!1555 = !DILocation(line: 481, column: 9, scope: !695, inlinedAt: !1531)
!1556 = !DILocation(line: 426, column: 29, scope: !595, inlinedAt: !1548)
!1557 = !DILocation(line: 426, column: 21, scope: !595, inlinedAt: !1548)
!1558 = !DILocation(line: 426, column: 12, scope: !595, inlinedAt: !1548)
!1559 = !DILocation(line: 428, column: 19, scope: !615, inlinedAt: !1548)
!1560 = !DILocation(line: 428, column: 16, scope: !615, inlinedAt: !1548)
!1561 = !DILocation(line: 428, column: 13, scope: !616, inlinedAt: !1548)
!1562 = !DILocation(line: 0, scope: !620, inlinedAt: !1548)
!1563 = !DILocation(line: 436, column: 1, scope: !595, inlinedAt: !1548)
!1564 = !DILocation(line: 482, column: 9, scope: !716, inlinedAt: !1531)
!1565 = !DILocation(line: 483, column: 15, scope: !736, inlinedAt: !1531)
!1566 = !DILocation(line: 483, column: 14, scope: !716, inlinedAt: !1531)
!1567 = !DILocation(line: 484, column: 9, scope: !736, inlinedAt: !1531)
!1568 = !DILocation(line: 485, column: 23, scope: !740, inlinedAt: !1531)
!1569 = !DILocation(line: 485, column: 34, scope: !740, inlinedAt: !1531)
!1570 = !DILocation(line: 485, column: 29, scope: !740, inlinedAt: !1531)
!1571 = !DILocation(line: 485, column: 41, scope: !740, inlinedAt: !1531)
!1572 = !DILocation(line: 485, column: 14, scope: !736, inlinedAt: !1531)
!1573 = !DILocation(line: 0, scope: !740, inlinedAt: !1531)
!1574 = !DILocation(line: 779, column: 9, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 778, column: 58)
!1576 = !DILocation(line: 781, column: 5, scope: !1575)
!1577 = !DILocation(line: 0, scope: !1575)
!1578 = !DILocation(line: 784, column: 50, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 784, column: 9)
!1580 = !DILocation(line: 472, column: 64, scope: !695, inlinedAt: !1581)
!1581 = distinct !DILocation(line: 784, column: 9, scope: !1579)
!1582 = !DILocation(line: 473, column: 64, scope: !695, inlinedAt: !1581)
!1583 = !DILocation(line: 474, column: 53, scope: !695, inlinedAt: !1581)
!1584 = !DILocation(line: 475, column: 16, scope: !707, inlinedAt: !1581)
!1585 = !DILocation(line: 475, column: 12, scope: !707, inlinedAt: !1581)
!1586 = !DILocation(line: 480, column: 32, scope: !695, inlinedAt: !1581)
!1587 = !DILocation(line: 480, column: 40, scope: !695, inlinedAt: !1581)
!1588 = !DILocation(line: 480, column: 35, scope: !695, inlinedAt: !1581)
!1589 = !DILocation(line: 480, column: 43, scope: !695, inlinedAt: !1581)
!1590 = !DILocation(line: 480, column: 18, scope: !695, inlinedAt: !1581)
!1591 = !DILocation(line: 481, column: 9, scope: !716, inlinedAt: !1581)
!1592 = !DILocation(line: 421, column: 61, scope: !595, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 481, column: 9, scope: !716, inlinedAt: !1581)
!1594 = !DILocation(line: 422, column: 58, scope: !595, inlinedAt: !1593)
!1595 = !DILocation(line: 423, column: 14, scope: !606, inlinedAt: !1593)
!1596 = !DILocation(line: 423, column: 9, scope: !595, inlinedAt: !1593)
!1597 = !DILocation(line: 427, column: 16, scope: !609, inlinedAt: !1593)
!1598 = !DILocation(line: 427, column: 9, scope: !595, inlinedAt: !1593)
!1599 = !DILocation(line: 434, column: 9, scope: !624, inlinedAt: !1593)
!1600 = !DILocation(line: 481, column: 9, scope: !695, inlinedAt: !1581)
!1601 = !DILocation(line: 426, column: 29, scope: !595, inlinedAt: !1593)
!1602 = !DILocation(line: 426, column: 21, scope: !595, inlinedAt: !1593)
!1603 = !DILocation(line: 426, column: 12, scope: !595, inlinedAt: !1593)
!1604 = !DILocation(line: 428, column: 19, scope: !615, inlinedAt: !1593)
!1605 = !DILocation(line: 428, column: 16, scope: !615, inlinedAt: !1593)
!1606 = !DILocation(line: 428, column: 13, scope: !616, inlinedAt: !1593)
!1607 = !DILocation(line: 0, scope: !620, inlinedAt: !1593)
!1608 = !DILocation(line: 436, column: 1, scope: !595, inlinedAt: !1593)
!1609 = !DILocation(line: 482, column: 9, scope: !716, inlinedAt: !1581)
!1610 = !DILocation(line: 489, column: 1, scope: !695, inlinedAt: !1581)
!1611 = !DILocation(line: 784, column: 9, scope: !1442)
!1612 = !DILocation(line: 483, column: 15, scope: !736, inlinedAt: !1581)
!1613 = !DILocation(line: 483, column: 14, scope: !716, inlinedAt: !1581)
!1614 = !DILocation(line: 484, column: 9, scope: !736, inlinedAt: !1581)
!1615 = !DILocation(line: 485, column: 23, scope: !740, inlinedAt: !1581)
!1616 = !DILocation(line: 485, column: 34, scope: !740, inlinedAt: !1581)
!1617 = !DILocation(line: 485, column: 29, scope: !740, inlinedAt: !1581)
!1618 = !DILocation(line: 485, column: 41, scope: !740, inlinedAt: !1581)
!1619 = !DILocation(line: 485, column: 14, scope: !736, inlinedAt: !1581)
!1620 = !DILocation(line: 0, scope: !740, inlinedAt: !1581)
!1621 = !DILocation(line: 785, column: 18, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 784, column: 63)
!1623 = !DILocation(line: 787, column: 5, scope: !1622)
!1624 = !DILocation(line: 793, column: 50, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 793, column: 9)
!1626 = !DILocation(line: 0, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 787, column: 12)
!1628 = !DILocation(line: 472, column: 64, scope: !695, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 793, column: 9, scope: !1625)
!1630 = !DILocation(line: 473, column: 64, scope: !695, inlinedAt: !1629)
!1631 = !DILocation(line: 474, column: 53, scope: !695, inlinedAt: !1629)
!1632 = !DILocation(line: 475, column: 10, scope: !707, inlinedAt: !1629)
!1633 = !DILocation(line: 475, column: 16, scope: !707, inlinedAt: !1629)
!1634 = !DILocation(line: 475, column: 12, scope: !707, inlinedAt: !1629)
!1635 = !DILocation(line: 476, column: 9, scope: !707, inlinedAt: !1629)
!1636 = !DILocation(line: 489, column: 1, scope: !695, inlinedAt: !1629)
!1637 = !DILocation(line: 793, column: 9, scope: !1442)
!1638 = !DILocation(line: 480, column: 32, scope: !695, inlinedAt: !1629)
!1639 = !DILocation(line: 480, column: 40, scope: !695, inlinedAt: !1629)
!1640 = !DILocation(line: 480, column: 35, scope: !695, inlinedAt: !1629)
!1641 = !DILocation(line: 480, column: 43, scope: !695, inlinedAt: !1629)
!1642 = !DILocation(line: 480, column: 18, scope: !695, inlinedAt: !1629)
!1643 = !DILocation(line: 481, column: 9, scope: !716, inlinedAt: !1629)
!1644 = !DILocation(line: 421, column: 61, scope: !595, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 481, column: 9, scope: !716, inlinedAt: !1629)
!1646 = !DILocation(line: 422, column: 58, scope: !595, inlinedAt: !1645)
!1647 = !DILocation(line: 423, column: 14, scope: !606, inlinedAt: !1645)
!1648 = !DILocation(line: 423, column: 9, scope: !595, inlinedAt: !1645)
!1649 = !DILocation(line: 427, column: 16, scope: !609, inlinedAt: !1645)
!1650 = !DILocation(line: 427, column: 9, scope: !595, inlinedAt: !1645)
!1651 = !DILocation(line: 434, column: 9, scope: !624, inlinedAt: !1645)
!1652 = !DILocation(line: 481, column: 9, scope: !695, inlinedAt: !1629)
!1653 = !DILocation(line: 426, column: 29, scope: !595, inlinedAt: !1645)
!1654 = !DILocation(line: 426, column: 21, scope: !595, inlinedAt: !1645)
!1655 = !DILocation(line: 426, column: 12, scope: !595, inlinedAt: !1645)
!1656 = !DILocation(line: 428, column: 19, scope: !615, inlinedAt: !1645)
!1657 = !DILocation(line: 428, column: 16, scope: !615, inlinedAt: !1645)
!1658 = !DILocation(line: 428, column: 13, scope: !616, inlinedAt: !1645)
!1659 = !DILocation(line: 0, scope: !620, inlinedAt: !1645)
!1660 = !DILocation(line: 436, column: 1, scope: !595, inlinedAt: !1645)
!1661 = !DILocation(line: 482, column: 9, scope: !716, inlinedAt: !1629)
!1662 = !DILocation(line: 483, column: 15, scope: !736, inlinedAt: !1629)
!1663 = !DILocation(line: 483, column: 14, scope: !716, inlinedAt: !1629)
!1664 = !DILocation(line: 484, column: 9, scope: !736, inlinedAt: !1629)
!1665 = !DILocation(line: 485, column: 23, scope: !740, inlinedAt: !1629)
!1666 = !DILocation(line: 485, column: 34, scope: !740, inlinedAt: !1629)
!1667 = !DILocation(line: 485, column: 29, scope: !740, inlinedAt: !1629)
!1668 = !DILocation(line: 485, column: 41, scope: !740, inlinedAt: !1629)
!1669 = !DILocation(line: 485, column: 14, scope: !736, inlinedAt: !1629)
!1670 = !DILocation(line: 0, scope: !740, inlinedAt: !1629)
!1671 = !DILocation(line: 794, column: 9, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 793, column: 63)
!1673 = !DILocation(line: 795, column: 5, scope: !1672)
!1674 = !DILocation(line: 0, scope: !1672)
!1675 = !DILocation(line: 796, column: 1, scope: !1442)
!1676 = distinct !DISubprogram(name: "_quicklistSplitNode", scope: !3, file: !3, line: 817, type: !1677, isLocal: false, isDefinition: true, scopeLine: 818, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1679)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!26, !26, !20, !20}
!1679 = !{!1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688}
!1680 = !DILocalVariable(name: "node", arg: 1, scope: !1676, file: !3, line: 817, type: !26)
!1681 = !DILocalVariable(name: "offset", arg: 2, scope: !1676, file: !3, line: 817, type: !20)
!1682 = !DILocalVariable(name: "after", arg: 3, scope: !1676, file: !3, line: 818, type: !20)
!1683 = !DILocalVariable(name: "zl_sz", scope: !1676, file: !3, line: 819, type: !51)
!1684 = !DILocalVariable(name: "new_node", scope: !1676, file: !3, line: 821, type: !26)
!1685 = !DILocalVariable(name: "orig_start", scope: !1676, file: !3, line: 828, type: !20)
!1686 = !DILocalVariable(name: "orig_extent", scope: !1676, file: !3, line: 829, type: !20)
!1687 = !DILocalVariable(name: "new_start", scope: !1676, file: !3, line: 830, type: !20)
!1688 = !DILocalVariable(name: "new_extent", scope: !1676, file: !3, line: 831, type: !20)
!1689 = !DILocation(line: 817, column: 64, scope: !1676)
!1690 = !DILocation(line: 817, column: 74, scope: !1676)
!1691 = !DILocation(line: 818, column: 53, scope: !1676)
!1692 = !DILocation(line: 819, column: 26, scope: !1676)
!1693 = !DILocation(line: 819, column: 20, scope: !1676)
!1694 = !DILocation(line: 819, column: 12, scope: !1676)
!1695 = !DILocation(line: 160, column: 12, scope: !192, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 821, column: 31, scope: !1676)
!1697 = !DILocation(line: 159, column: 20, scope: !192, inlinedAt: !1696)
!1698 = !DILocation(line: 161, column: 11, scope: !192, inlinedAt: !1696)
!1699 = !DILocation(line: 161, column: 14, scope: !192, inlinedAt: !1696)
!1700 = !DILocation(line: 162, column: 11, scope: !192, inlinedAt: !1696)
!1701 = !DILocation(line: 162, column: 17, scope: !192, inlinedAt: !1696)
!1702 = !DILocation(line: 163, column: 11, scope: !192, inlinedAt: !1696)
!1703 = !DILocation(line: 163, column: 14, scope: !192, inlinedAt: !1696)
!1704 = !DILocation(line: 164, column: 29, scope: !192, inlinedAt: !1696)
!1705 = !DILocation(line: 167, column: 22, scope: !192, inlinedAt: !1696)
!1706 = !DILocation(line: 168, column: 5, scope: !192, inlinedAt: !1696)
!1707 = !DILocation(line: 821, column: 20, scope: !1676)
!1708 = !DILocation(line: 822, column: 20, scope: !1676)
!1709 = !DILocation(line: 822, column: 18, scope: !1676)
!1710 = !DILocation(line: 825, column: 32, scope: !1676)
!1711 = !DILocation(line: 825, column: 5, scope: !1676)
!1712 = !DILocation(line: 828, column: 22, scope: !1676)
!1713 = !DILocation(line: 828, column: 37, scope: !1676)
!1714 = !DILocation(line: 828, column: 9, scope: !1676)
!1715 = !DILocation(line: 829, column: 23, scope: !1676)
!1716 = !DILocation(line: 829, column: 9, scope: !1676)
!1717 = !DILocation(line: 830, column: 21, scope: !1676)
!1718 = !DILocation(line: 830, column: 9, scope: !1676)
!1719 = !DILocation(line: 831, column: 22, scope: !1676)
!1720 = !DILocation(line: 831, column: 9, scope: !1676)
!1721 = !DILocation(line: 836, column: 41, scope: !1676)
!1722 = !DILocation(line: 836, column: 16, scope: !1676)
!1723 = !DILocation(line: 836, column: 14, scope: !1676)
!1724 = !DILocation(line: 837, column: 19, scope: !1676)
!1725 = !DILocation(line: 837, column: 11, scope: !1676)
!1726 = !DILocation(line: 837, column: 17, scope: !1676)
!1727 = !DILocation(line: 838, column: 5, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 838, column: 5)
!1729 = !DILocation(line: 840, column: 49, scope: !1676)
!1730 = !DILocation(line: 840, column: 20, scope: !1676)
!1731 = !DILocation(line: 840, column: 18, scope: !1676)
!1732 = !DILocation(line: 841, column: 23, scope: !1676)
!1733 = !DILocation(line: 841, column: 21, scope: !1676)
!1734 = !DILocation(line: 842, column: 5, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 842, column: 5)
!1736 = !DILocation(line: 845, column: 5, scope: !1676)
!1737 = distinct !DISubprogram(name: "_quicklistInsert", scope: !3, file: !3, line: 852, type: !1738, isLocal: false, isDefinition: true, scopeLine: 853, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1740)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{null, !21, !1103, !47, !50, !20}
!1740 = !{!1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754}
!1741 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1737, file: !3, line: 852, type: !21)
!1742 = !DILocalVariable(name: "entry", arg: 2, scope: !1737, file: !3, line: 852, type: !1103)
!1743 = !DILocalVariable(name: "value", arg: 3, scope: !1737, file: !3, line: 853, type: !47)
!1744 = !DILocalVariable(name: "sz", arg: 4, scope: !1737, file: !3, line: 853, type: !50)
!1745 = !DILocalVariable(name: "after", arg: 5, scope: !1737, file: !3, line: 853, type: !20)
!1746 = !DILocalVariable(name: "full", scope: !1737, file: !3, line: 854, type: !20)
!1747 = !DILocalVariable(name: "at_tail", scope: !1737, file: !3, line: 854, type: !20)
!1748 = !DILocalVariable(name: "at_head", scope: !1737, file: !3, line: 854, type: !20)
!1749 = !DILocalVariable(name: "full_next", scope: !1737, file: !3, line: 854, type: !20)
!1750 = !DILocalVariable(name: "full_prev", scope: !1737, file: !3, line: 854, type: !20)
!1751 = !DILocalVariable(name: "fill", scope: !1737, file: !3, line: 855, type: !20)
!1752 = !DILocalVariable(name: "node", scope: !1737, file: !3, line: 856, type: !26)
!1753 = !DILocalVariable(name: "new_node", scope: !1737, file: !3, line: 857, type: !26)
!1754 = !DILocalVariable(name: "next", scope: !1755, file: !3, line: 899, type: !6)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 896, column: 25)
!1756 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 896, column: 9)
!1757 = !DILocation(line: 852, column: 47, scope: !1737)
!1758 = !DILocation(line: 852, column: 74, scope: !1737)
!1759 = !DILocation(line: 853, column: 42, scope: !1737)
!1760 = !DILocation(line: 853, column: 62, scope: !1737)
!1761 = !DILocation(line: 853, column: 70, scope: !1737)
!1762 = !DILocation(line: 854, column: 9, scope: !1737)
!1763 = !DILocation(line: 854, column: 19, scope: !1737)
!1764 = !DILocation(line: 854, column: 32, scope: !1737)
!1765 = !DILocation(line: 854, column: 45, scope: !1737)
!1766 = !DILocation(line: 854, column: 60, scope: !1737)
!1767 = !DILocation(line: 855, column: 27, scope: !1737)
!1768 = !DILocation(line: 855, column: 9, scope: !1737)
!1769 = !DILocation(line: 856, column: 34, scope: !1737)
!1770 = !DILocation(line: 856, column: 20, scope: !1737)
!1771 = !DILocation(line: 857, column: 20, scope: !1737)
!1772 = !DILocation(line: 859, column: 10, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 859, column: 9)
!1774 = !DILocation(line: 859, column: 9, scope: !1737)
!1775 = !DILocation(line: 160, column: 12, scope: !192, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 862, column: 20, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 859, column: 16)
!1778 = !DILocation(line: 159, column: 20, scope: !192, inlinedAt: !1776)
!1779 = !DILocation(line: 161, column: 11, scope: !192, inlinedAt: !1776)
!1780 = !DILocation(line: 161, column: 14, scope: !192, inlinedAt: !1776)
!1781 = !DILocation(line: 162, column: 11, scope: !192, inlinedAt: !1776)
!1782 = !DILocation(line: 162, column: 17, scope: !192, inlinedAt: !1776)
!1783 = !DILocation(line: 163, column: 11, scope: !192, inlinedAt: !1776)
!1784 = !DILocation(line: 163, column: 14, scope: !192, inlinedAt: !1776)
!1785 = !DILocation(line: 164, column: 29, scope: !192, inlinedAt: !1776)
!1786 = !DILocation(line: 167, column: 22, scope: !192, inlinedAt: !1776)
!1787 = !DILocation(line: 168, column: 5, scope: !192, inlinedAt: !1776)
!1788 = !DILocation(line: 863, column: 36, scope: !1777)
!1789 = !DILocation(line: 863, column: 57, scope: !1777)
!1790 = !DILocation(line: 863, column: 24, scope: !1777)
!1791 = !DILocation(line: 863, column: 22, scope: !1777)
!1792 = !DILocation(line: 372, column: 52, scope: !484, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 864, column: 9, scope: !1777)
!1794 = !DILocation(line: 373, column: 56, scope: !484, inlinedAt: !1793)
!1795 = !DILocation(line: 374, column: 56, scope: !484, inlinedAt: !1793)
!1796 = !DILocation(line: 374, column: 70, scope: !484, inlinedAt: !1793)
!1797 = !DILocation(line: 375, column: 9, scope: !497, inlinedAt: !1793)
!1798 = !DILocation(line: 375, column: 9, scope: !484, inlinedAt: !1793)
!1799 = !DILocation(line: 164, column: 24, scope: !192, inlinedAt: !1776)
!1800 = !DILocation(line: 376, column: 24, scope: !500, inlinedAt: !1793)
!1801 = !DILocation(line: 377, column: 13, scope: !500, inlinedAt: !1793)
!1802 = !DILocation(line: 383, column: 24, scope: !519, inlinedAt: !1793)
!1803 = !DILocation(line: 383, column: 29, scope: !519, inlinedAt: !1793)
!1804 = !DILocation(line: 383, column: 13, scope: !500, inlinedAt: !1793)
!1805 = !DILocation(line: 384, column: 29, scope: !519, inlinedAt: !1793)
!1806 = !DILocation(line: 384, column: 13, scope: !519, inlinedAt: !1793)
!1807 = !DILocation(line: 164, column: 11, scope: !192, inlinedAt: !1776)
!1808 = !DILocation(line: 386, column: 24, scope: !525, inlinedAt: !1793)
!1809 = !DILocation(line: 387, column: 13, scope: !525, inlinedAt: !1793)
!1810 = !DILocation(line: 393, column: 24, scope: !543, inlinedAt: !1793)
!1811 = !DILocation(line: 393, column: 29, scope: !543, inlinedAt: !1793)
!1812 = !DILocation(line: 393, column: 13, scope: !525, inlinedAt: !1793)
!1813 = !DILocation(line: 394, column: 29, scope: !543, inlinedAt: !1793)
!1814 = !DILocation(line: 394, column: 13, scope: !543, inlinedAt: !1793)
!1815 = !DILocation(line: 397, column: 20, scope: !549, inlinedAt: !1793)
!1816 = !DILocation(line: 397, column: 24, scope: !549, inlinedAt: !1793)
!1817 = !DILocation(line: 397, column: 9, scope: !484, inlinedAt: !1793)
!1818 = !DILocation(line: 398, column: 38, scope: !553, inlinedAt: !1793)
!1819 = !DILocation(line: 398, column: 43, scope: !553, inlinedAt: !1793)
!1820 = !DILocation(line: 398, column: 25, scope: !553, inlinedAt: !1793)
!1821 = !DILocation(line: 399, column: 5, scope: !553, inlinedAt: !1793)
!1822 = !DILocation(line: 401, column: 9, scope: !484, inlinedAt: !1793)
!1823 = !DILocation(line: 404, column: 19, scope: !484, inlinedAt: !1793)
!1824 = !DILocation(line: 405, column: 1, scope: !484, inlinedAt: !1793)
!1825 = !DILocation(line: 865, column: 24, scope: !1777)
!1826 = !DILocation(line: 867, column: 9, scope: !1777)
!1827 = !DILocation(line: 871, column: 10, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 871, column: 9)
!1829 = !DILocation(line: 871, column: 9, scope: !1737)
!1830 = !DILocation(line: 875, column: 5, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 871, column: 53)
!1832 = !DILocation(line: 0, scope: !1831)
!1833 = !DILocation(line: 877, column: 9, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 877, column: 9)
!1835 = !DILocation(line: 877, column: 15, scope: !1834)
!1836 = !DILocation(line: 877, column: 26, scope: !1834)
!1837 = !DILocation(line: 877, column: 42, scope: !1834)
!1838 = !DILocation(line: 877, column: 33, scope: !1834)
!1839 = !DILocation(line: 877, column: 9, scope: !1737)
!1840 = !DILocation(line: 880, column: 46, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 880, column: 13)
!1842 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 877, column: 50)
!1843 = !DILocation(line: 880, column: 14, scope: !1841)
!1844 = !DILocation(line: 880, column: 13, scope: !1842)
!1845 = !DILocation(line: 883, column: 9, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 880, column: 63)
!1847 = !DILocation(line: 886, column: 16, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 886, column: 9)
!1849 = !DILocation(line: 886, column: 27, scope: !1848)
!1850 = !DILocation(line: 886, column: 34, scope: !1848)
!1851 = !DILocation(line: 886, column: 9, scope: !1737)
!1852 = !DILocation(line: 889, column: 46, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 889, column: 13)
!1854 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 886, column: 41)
!1855 = !DILocation(line: 889, column: 14, scope: !1853)
!1856 = !DILocation(line: 889, column: 13, scope: !1854)
!1857 = !DILocation(line: 892, column: 9, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1853, file: !3, line: 889, column: 63)
!1859 = !DILocation(line: 896, column: 15, scope: !1756)
!1860 = !DILocation(line: 896, column: 10, scope: !1756)
!1861 = !DILocation(line: 898, column: 9, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 898, column: 9)
!1863 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 898, column: 9)
!1864 = !DILocation(line: 898, column: 9, scope: !1863)
!1865 = !DILocation(line: 899, column: 49, scope: !1755)
!1866 = !DILocation(line: 235, column: 59, scope: !303, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 898, column: 9, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 898, column: 9)
!1869 = !DILocation(line: 240, column: 40, scope: !303, inlinedAt: !1867)
!1870 = !DILocation(line: 240, column: 34, scope: !303, inlinedAt: !1867)
!1871 = !DILocation(line: 240, column: 26, scope: !303, inlinedAt: !1867)
!1872 = !DILocation(line: 240, column: 11, scope: !303, inlinedAt: !1867)
!1873 = !DILocation(line: 241, column: 47, scope: !303, inlinedAt: !1867)
!1874 = !DILocation(line: 241, column: 19, scope: !303, inlinedAt: !1867)
!1875 = !DILocation(line: 242, column: 29, scope: !316, inlinedAt: !1867)
!1876 = !DILocation(line: 242, column: 46, scope: !316, inlinedAt: !1867)
!1877 = !DILocation(line: 242, column: 70, scope: !316, inlinedAt: !1867)
!1878 = !DILocation(line: 242, column: 9, scope: !316, inlinedAt: !1867)
!1879 = !DILocation(line: 242, column: 74, scope: !316, inlinedAt: !1867)
!1880 = !DILocation(line: 242, column: 9, scope: !303, inlinedAt: !1867)
!1881 = !DILocation(line: 244, column: 9, scope: !323, inlinedAt: !1867)
!1882 = !DILocation(line: 245, column: 9, scope: !323, inlinedAt: !1867)
!1883 = !DILocation(line: 898, column: 9, scope: !1868)
!1884 = !DILocation(line: 247, column: 5, scope: !303, inlinedAt: !1867)
!1885 = !DILocation(line: 248, column: 14, scope: !303, inlinedAt: !1867)
!1886 = !DILocation(line: 249, column: 20, scope: !303, inlinedAt: !1867)
!1887 = !DILocation(line: 250, column: 5, scope: !303, inlinedAt: !1867)
!1888 = !DILocation(line: 251, column: 1, scope: !303, inlinedAt: !1867)
!1889 = !DILocation(line: 899, column: 60, scope: !1755)
!1890 = !DILocation(line: 899, column: 31, scope: !1755)
!1891 = !DILocation(line: 899, column: 24, scope: !1755)
!1892 = !DILocation(line: 900, column: 18, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 900, column: 13)
!1894 = !DILocation(line: 0, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 902, column: 16)
!1896 = !DILocation(line: 900, column: 13, scope: !1755)
!1897 = !DILocation(line: 901, column: 24, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 900, column: 27)
!1899 = !DILocation(line: 902, column: 9, scope: !1898)
!1900 = !DILocation(line: 903, column: 24, scope: !1895)
!1901 = !DILocation(line: 0, scope: !1898)
!1902 = !DILocation(line: 905, column: 20, scope: !1755)
!1903 = !DILocation(line: 906, column: 9, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 906, column: 9)
!1905 = !DILocation(line: 907, column: 9, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 907, column: 9)
!1907 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 907, column: 9)
!1908 = !DILocation(line: 907, column: 9, scope: !1907)
!1909 = !DILocation(line: 907, column: 9, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 907, column: 9)
!1911 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 907, column: 9)
!1912 = !DILocation(line: 907, column: 9, scope: !1911)
!1913 = !DILocation(line: 907, column: 9, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 907, column: 9)
!1915 = !DILocation(line: 908, column: 5, scope: !1755)
!1916 = !DILocation(line: 908, column: 17, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 908, column: 16)
!1918 = !DILocation(line: 908, column: 22, scope: !1917)
!1919 = !DILocation(line: 910, column: 9, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 910, column: 9)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 910, column: 9)
!1922 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 908, column: 33)
!1923 = !DILocation(line: 910, column: 9, scope: !1921)
!1924 = !DILocation(line: 911, column: 40, scope: !1922)
!1925 = !DILocation(line: 913, column: 9, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 913, column: 9)
!1927 = !DILocation(line: 235, column: 59, scope: !303, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 910, column: 9, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 910, column: 9)
!1930 = !DILocation(line: 240, column: 40, scope: !303, inlinedAt: !1928)
!1931 = !DILocation(line: 240, column: 34, scope: !303, inlinedAt: !1928)
!1932 = !DILocation(line: 240, column: 26, scope: !303, inlinedAt: !1928)
!1933 = !DILocation(line: 240, column: 11, scope: !303, inlinedAt: !1928)
!1934 = !DILocation(line: 241, column: 47, scope: !303, inlinedAt: !1928)
!1935 = !DILocation(line: 241, column: 19, scope: !303, inlinedAt: !1928)
!1936 = !DILocation(line: 242, column: 29, scope: !316, inlinedAt: !1928)
!1937 = !DILocation(line: 242, column: 46, scope: !316, inlinedAt: !1928)
!1938 = !DILocation(line: 242, column: 70, scope: !316, inlinedAt: !1928)
!1939 = !DILocation(line: 242, column: 9, scope: !316, inlinedAt: !1928)
!1940 = !DILocation(line: 242, column: 74, scope: !316, inlinedAt: !1928)
!1941 = !DILocation(line: 242, column: 9, scope: !303, inlinedAt: !1928)
!1942 = !DILocation(line: 244, column: 9, scope: !323, inlinedAt: !1928)
!1943 = !DILocation(line: 245, column: 9, scope: !323, inlinedAt: !1928)
!1944 = !DILocation(line: 910, column: 9, scope: !1929)
!1945 = !DILocation(line: 247, column: 5, scope: !303, inlinedAt: !1928)
!1946 = !DILocation(line: 248, column: 14, scope: !303, inlinedAt: !1928)
!1947 = !DILocation(line: 249, column: 20, scope: !303, inlinedAt: !1928)
!1948 = !DILocation(line: 250, column: 5, scope: !303, inlinedAt: !1928)
!1949 = !DILocation(line: 251, column: 1, scope: !303, inlinedAt: !1928)
!1950 = !DILocation(line: 911, column: 51, scope: !1922)
!1951 = !DILocation(line: 911, column: 62, scope: !1922)
!1952 = !DILocation(line: 911, column: 20, scope: !1922)
!1953 = !DILocation(line: 911, column: 18, scope: !1922)
!1954 = !DILocation(line: 912, column: 20, scope: !1922)
!1955 = !DILocation(line: 914, column: 9, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 914, column: 9)
!1957 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 914, column: 9)
!1958 = !DILocation(line: 914, column: 9, scope: !1957)
!1959 = !DILocation(line: 914, column: 9, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 914, column: 9)
!1961 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 914, column: 9)
!1962 = !DILocation(line: 914, column: 9, scope: !1961)
!1963 = !DILocation(line: 914, column: 9, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1960, file: !3, line: 914, column: 9)
!1965 = !DILocation(line: 915, column: 24, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 915, column: 16)
!1967 = !DILocation(line: 915, column: 21, scope: !1966)
!1968 = !DILocation(line: 915, column: 41, scope: !1966)
!1969 = !DILocation(line: 915, column: 35, scope: !1966)
!1970 = !DILocation(line: 915, column: 50, scope: !1966)
!1971 = !DILocation(line: 915, column: 46, scope: !1966)
!1972 = !DILocation(line: 920, column: 9, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 920, column: 9)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 920, column: 9)
!1975 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 915, column: 70)
!1976 = !DILocation(line: 920, column: 9, scope: !1974)
!1977 = !DILocation(line: 921, column: 46, scope: !1975)
!1978 = !DILocation(line: 923, column: 9, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 923, column: 9)
!1980 = !DILocation(line: 235, column: 59, scope: !303, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 920, column: 9, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 920, column: 9)
!1983 = !DILocation(line: 240, column: 40, scope: !303, inlinedAt: !1981)
!1984 = !DILocation(line: 240, column: 34, scope: !303, inlinedAt: !1981)
!1985 = !DILocation(line: 240, column: 26, scope: !303, inlinedAt: !1981)
!1986 = !DILocation(line: 240, column: 11, scope: !303, inlinedAt: !1981)
!1987 = !DILocation(line: 241, column: 47, scope: !303, inlinedAt: !1981)
!1988 = !DILocation(line: 241, column: 19, scope: !303, inlinedAt: !1981)
!1989 = !DILocation(line: 242, column: 29, scope: !316, inlinedAt: !1981)
!1990 = !DILocation(line: 242, column: 46, scope: !316, inlinedAt: !1981)
!1991 = !DILocation(line: 242, column: 70, scope: !316, inlinedAt: !1981)
!1992 = !DILocation(line: 242, column: 9, scope: !316, inlinedAt: !1981)
!1993 = !DILocation(line: 242, column: 74, scope: !316, inlinedAt: !1981)
!1994 = !DILocation(line: 242, column: 9, scope: !303, inlinedAt: !1981)
!1995 = !DILocation(line: 244, column: 9, scope: !323, inlinedAt: !1981)
!1996 = !DILocation(line: 245, column: 9, scope: !323, inlinedAt: !1981)
!1997 = !DILocation(line: 920, column: 9, scope: !1982)
!1998 = !DILocation(line: 247, column: 5, scope: !303, inlinedAt: !1981)
!1999 = !DILocation(line: 248, column: 14, scope: !303, inlinedAt: !1981)
!2000 = !DILocation(line: 249, column: 20, scope: !303, inlinedAt: !1981)
!2001 = !DILocation(line: 250, column: 5, scope: !303, inlinedAt: !1981)
!2002 = !DILocation(line: 251, column: 1, scope: !303, inlinedAt: !1981)
!2003 = !DILocation(line: 921, column: 57, scope: !1975)
!2004 = !DILocation(line: 921, column: 24, scope: !1975)
!2005 = !DILocation(line: 921, column: 22, scope: !1975)
!2006 = !DILocation(line: 922, column: 24, scope: !1975)
!2007 = !DILocation(line: 924, column: 9, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 924, column: 9)
!2009 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 924, column: 9)
!2010 = !DILocation(line: 924, column: 9, scope: !2009)
!2011 = !DILocation(line: 924, column: 9, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 924, column: 9)
!2013 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 924, column: 9)
!2014 = !DILocation(line: 924, column: 9, scope: !2013)
!2015 = !DILocation(line: 924, column: 9, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 924, column: 9)
!2017 = !DILocation(line: 925, column: 24, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 925, column: 16)
!2019 = !DILocation(line: 925, column: 21, scope: !2018)
!2020 = !DILocation(line: 925, column: 41, scope: !2018)
!2021 = !DILocation(line: 925, column: 35, scope: !2018)
!2022 = !DILocation(line: 925, column: 46, scope: !2018)
!2023 = !DILocation(line: 930, column: 9, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 930, column: 9)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 930, column: 9)
!2026 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 925, column: 71)
!2027 = !DILocation(line: 930, column: 9, scope: !2025)
!2028 = !DILocation(line: 931, column: 46, scope: !2026)
!2029 = !DILocation(line: 933, column: 9, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 933, column: 9)
!2031 = !DILocation(line: 235, column: 59, scope: !303, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 930, column: 9, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 930, column: 9)
!2034 = !DILocation(line: 240, column: 40, scope: !303, inlinedAt: !2032)
!2035 = !DILocation(line: 240, column: 34, scope: !303, inlinedAt: !2032)
!2036 = !DILocation(line: 240, column: 26, scope: !303, inlinedAt: !2032)
!2037 = !DILocation(line: 240, column: 11, scope: !303, inlinedAt: !2032)
!2038 = !DILocation(line: 241, column: 47, scope: !303, inlinedAt: !2032)
!2039 = !DILocation(line: 241, column: 19, scope: !303, inlinedAt: !2032)
!2040 = !DILocation(line: 242, column: 29, scope: !316, inlinedAt: !2032)
!2041 = !DILocation(line: 242, column: 46, scope: !316, inlinedAt: !2032)
!2042 = !DILocation(line: 242, column: 70, scope: !316, inlinedAt: !2032)
!2043 = !DILocation(line: 242, column: 9, scope: !316, inlinedAt: !2032)
!2044 = !DILocation(line: 242, column: 74, scope: !316, inlinedAt: !2032)
!2045 = !DILocation(line: 242, column: 9, scope: !303, inlinedAt: !2032)
!2046 = !DILocation(line: 244, column: 9, scope: !323, inlinedAt: !2032)
!2047 = !DILocation(line: 245, column: 9, scope: !323, inlinedAt: !2032)
!2048 = !DILocation(line: 930, column: 9, scope: !2033)
!2049 = !DILocation(line: 247, column: 5, scope: !303, inlinedAt: !2032)
!2050 = !DILocation(line: 248, column: 14, scope: !303, inlinedAt: !2032)
!2051 = !DILocation(line: 249, column: 20, scope: !303, inlinedAt: !2032)
!2052 = !DILocation(line: 250, column: 5, scope: !303, inlinedAt: !2032)
!2053 = !DILocation(line: 251, column: 1, scope: !303, inlinedAt: !2032)
!2054 = !DILocation(line: 931, column: 57, scope: !2026)
!2055 = !DILocation(line: 931, column: 24, scope: !2026)
!2056 = !DILocation(line: 931, column: 22, scope: !2026)
!2057 = !DILocation(line: 932, column: 24, scope: !2026)
!2058 = !DILocation(line: 934, column: 9, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 934, column: 9)
!2060 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 934, column: 9)
!2061 = !DILocation(line: 934, column: 9, scope: !2060)
!2062 = !DILocation(line: 934, column: 9, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 934, column: 9)
!2064 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 934, column: 9)
!2065 = !DILocation(line: 934, column: 9, scope: !2064)
!2066 = !DILocation(line: 934, column: 9, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 934, column: 9)
!2068 = !DILocation(line: 935, column: 21, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 935, column: 16)
!2070 = !DILocation(line: 0, scope: !2069)
!2071 = !DILocation(line: 935, column: 34, scope: !2069)
!2072 = !DILocation(line: 935, column: 43, scope: !2069)
!2073 = !DILocation(line: 935, column: 37, scope: !2069)
!2074 = !DILocation(line: 935, column: 51, scope: !2069)
!2075 = !DILocation(line: 935, column: 48, scope: !2069)
!2076 = !DILocation(line: 936, column: 34, scope: !2069)
!2077 = !DILocation(line: 936, column: 43, scope: !2069)
!2078 = !DILocation(line: 936, column: 37, scope: !2069)
!2079 = !DILocation(line: 936, column: 51, scope: !2069)
!2080 = !DILocation(line: 936, column: 48, scope: !2069)
!2081 = !DILocation(line: 160, column: 12, scope: !192, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 940, column: 20, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 936, column: 74)
!2084 = !DILocation(line: 159, column: 20, scope: !192, inlinedAt: !2082)
!2085 = !DILocation(line: 161, column: 11, scope: !192, inlinedAt: !2082)
!2086 = !DILocation(line: 161, column: 14, scope: !192, inlinedAt: !2082)
!2087 = !DILocation(line: 162, column: 11, scope: !192, inlinedAt: !2082)
!2088 = !DILocation(line: 162, column: 17, scope: !192, inlinedAt: !2082)
!2089 = !DILocation(line: 163, column: 11, scope: !192, inlinedAt: !2082)
!2090 = !DILocation(line: 163, column: 14, scope: !192, inlinedAt: !2082)
!2091 = !DILocation(line: 164, column: 29, scope: !192, inlinedAt: !2082)
!2092 = !DILocation(line: 167, column: 22, scope: !192, inlinedAt: !2082)
!2093 = !DILocation(line: 168, column: 5, scope: !192, inlinedAt: !2082)
!2094 = !DILocation(line: 941, column: 36, scope: !2083)
!2095 = !DILocation(line: 941, column: 57, scope: !2083)
!2096 = !DILocation(line: 941, column: 24, scope: !2083)
!2097 = !DILocation(line: 941, column: 22, scope: !2083)
!2098 = !DILocation(line: 942, column: 24, scope: !2083)
!2099 = !DILocation(line: 943, column: 9, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 943, column: 9)
!2101 = !DILocation(line: 944, column: 9, scope: !2083)
!2102 = !DILocation(line: 945, column: 5, scope: !2083)
!2103 = !DILocation(line: 945, column: 16, scope: !2069)
!2104 = !DILocation(line: 949, column: 9, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 949, column: 9)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 949, column: 9)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 945, column: 22)
!2108 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 945, column: 16)
!2109 = !DILocation(line: 949, column: 9, scope: !2106)
!2110 = !DILocation(line: 235, column: 59, scope: !303, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 949, column: 9, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 949, column: 9)
!2113 = !DILocation(line: 240, column: 40, scope: !303, inlinedAt: !2111)
!2114 = !DILocation(line: 240, column: 34, scope: !303, inlinedAt: !2111)
!2115 = !DILocation(line: 240, column: 26, scope: !303, inlinedAt: !2111)
!2116 = !DILocation(line: 240, column: 11, scope: !303, inlinedAt: !2111)
!2117 = !DILocation(line: 241, column: 47, scope: !303, inlinedAt: !2111)
!2118 = !DILocation(line: 241, column: 19, scope: !303, inlinedAt: !2111)
!2119 = !DILocation(line: 242, column: 29, scope: !316, inlinedAt: !2111)
!2120 = !DILocation(line: 242, column: 46, scope: !316, inlinedAt: !2111)
!2121 = !DILocation(line: 242, column: 70, scope: !316, inlinedAt: !2111)
!2122 = !DILocation(line: 242, column: 9, scope: !316, inlinedAt: !2111)
!2123 = !DILocation(line: 242, column: 74, scope: !316, inlinedAt: !2111)
!2124 = !DILocation(line: 242, column: 9, scope: !303, inlinedAt: !2111)
!2125 = !DILocation(line: 244, column: 9, scope: !323, inlinedAt: !2111)
!2126 = !DILocation(line: 245, column: 9, scope: !323, inlinedAt: !2111)
!2127 = !DILocation(line: 949, column: 9, scope: !2112)
!2128 = !DILocation(line: 247, column: 5, scope: !303, inlinedAt: !2111)
!2129 = !DILocation(line: 248, column: 14, scope: !303, inlinedAt: !2111)
!2130 = !DILocation(line: 249, column: 20, scope: !303, inlinedAt: !2111)
!2131 = !DILocation(line: 250, column: 5, scope: !303, inlinedAt: !2111)
!2132 = !DILocation(line: 251, column: 1, scope: !303, inlinedAt: !2111)
!2133 = !DILocation(line: 950, column: 53, scope: !2107)
!2134 = !DILocation(line: 950, column: 20, scope: !2107)
!2135 = !DILocation(line: 951, column: 46, scope: !2107)
!2136 = !DILocation(line: 951, column: 57, scope: !2107)
!2137 = !DILocation(line: 952, column: 36, scope: !2107)
!2138 = !DILocation(line: 951, column: 24, scope: !2107)
!2139 = !DILocation(line: 951, column: 22, scope: !2107)
!2140 = !DILocation(line: 953, column: 19, scope: !2107)
!2141 = !DILocation(line: 953, column: 24, scope: !2107)
!2142 = !DILocation(line: 954, column: 9, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 954, column: 9)
!2144 = !DILocation(line: 955, column: 9, scope: !2107)
!2145 = !DILocation(line: 956, column: 9, scope: !2107)
!2146 = !DILocation(line: 957, column: 5, scope: !2107)
!2147 = !DILocation(line: 0, scope: !1777)
!2148 = !DILocation(line: 960, column: 1, scope: !1737)
!2149 = distinct !DISubprogram(name: "quicklistInsertBefore", scope: !3, file: !3, line: 962, type: !2150, isLocal: false, isDefinition: true, scopeLine: 963, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2152)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{null, !21, !1103, !47, !50}
!2152 = !{!2153, !2154, !2155, !2156}
!2153 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2149, file: !3, line: 962, type: !21)
!2154 = !DILocalVariable(name: "entry", arg: 2, scope: !2149, file: !3, line: 962, type: !1103)
!2155 = !DILocalVariable(name: "value", arg: 3, scope: !2149, file: !3, line: 963, type: !47)
!2156 = !DILocalVariable(name: "sz", arg: 4, scope: !2149, file: !3, line: 963, type: !50)
!2157 = !DILocation(line: 962, column: 39, scope: !2149)
!2158 = !DILocation(line: 962, column: 66, scope: !2149)
!2159 = !DILocation(line: 963, column: 34, scope: !2149)
!2160 = !DILocation(line: 963, column: 54, scope: !2149)
!2161 = !DILocation(line: 964, column: 5, scope: !2149)
!2162 = !DILocation(line: 965, column: 1, scope: !2149)
!2163 = distinct !DISubprogram(name: "quicklistInsertAfter", scope: !3, file: !3, line: 967, type: !2150, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2164)
!2164 = !{!2165, !2166, !2167, !2168}
!2165 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2163, file: !3, line: 967, type: !21)
!2166 = !DILocalVariable(name: "entry", arg: 2, scope: !2163, file: !3, line: 967, type: !1103)
!2167 = !DILocalVariable(name: "value", arg: 3, scope: !2163, file: !3, line: 968, type: !47)
!2168 = !DILocalVariable(name: "sz", arg: 4, scope: !2163, file: !3, line: 968, type: !50)
!2169 = !DILocation(line: 967, column: 38, scope: !2163)
!2170 = !DILocation(line: 967, column: 65, scope: !2163)
!2171 = !DILocation(line: 968, column: 33, scope: !2163)
!2172 = !DILocation(line: 968, column: 53, scope: !2163)
!2173 = !DILocation(line: 969, column: 5, scope: !2163)
!2174 = !DILocation(line: 970, column: 1, scope: !2163)
!2175 = distinct !DISubprogram(name: "quicklistDelRange", scope: !3, file: !3, line: 978, type: !2176, isLocal: false, isDefinition: true, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2179)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!20, !21, !2178, !2178}
!2178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1101)
!2179 = !{!2180, !2181, !2182, !2183, !2184, !2185, !2186, !2188, !2189}
!2180 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2175, file: !3, line: 978, type: !21)
!2181 = !DILocalVariable(name: "start", arg: 2, scope: !2175, file: !3, line: 978, type: !2178)
!2182 = !DILocalVariable(name: "count", arg: 3, scope: !2175, file: !3, line: 979, type: !2178)
!2183 = !DILocalVariable(name: "extent", scope: !2175, file: !3, line: 983, type: !43)
!2184 = !DILocalVariable(name: "entry", scope: !2175, file: !3, line: 993, type: !1104)
!2185 = !DILocalVariable(name: "node", scope: !2175, file: !3, line: 999, type: !26)
!2186 = !DILocalVariable(name: "next", scope: !2187, file: !3, line: 1003, type: !26)
!2187 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 1002, column: 20)
!2188 = !DILocalVariable(name: "del", scope: !2187, file: !3, line: 1005, type: !43)
!2189 = !DILocalVariable(name: "delete_entire_node", scope: !2187, file: !3, line: 1006, type: !20)
!2190 = !DILocation(line: 978, column: 34, scope: !2175)
!2191 = !DILocation(line: 978, column: 56, scope: !2175)
!2192 = !DILocation(line: 979, column: 34, scope: !2175)
!2193 = !DILocation(line: 980, column: 15, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 980, column: 9)
!2195 = !DILocation(line: 980, column: 9, scope: !2175)
!2196 = !DILocation(line: 983, column: 19, scope: !2175)
!2197 = !DILocation(line: 985, column: 15, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 985, column: 9)
!2199 = !DILocation(line: 985, column: 20, scope: !2198)
!2200 = !DILocation(line: 985, column: 44, scope: !2198)
!2201 = !DILocation(line: 985, column: 50, scope: !2198)
!2202 = !DILocation(line: 985, column: 30, scope: !2198)
!2203 = !DILocation(line: 985, column: 9, scope: !2175)
!2204 = !DILocation(line: 0, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 988, column: 16)
!2206 = !DILocation(line: 988, column: 5, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 985, column: 60)
!2208 = !DILocation(line: 988, column: 26, scope: !2205)
!2209 = !DILocation(line: 988, column: 54, scope: !2205)
!2210 = !DILocation(line: 988, column: 36, scope: !2205)
!2211 = !DILocation(line: 988, column: 16, scope: !2198)
!2212 = !DILocation(line: 991, column: 5, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 988, column: 63)
!2214 = !DILocation(line: 0, scope: !2175)
!2215 = !DILocation(line: 993, column: 5, scope: !2175)
!2216 = !DILocation(line: 993, column: 20, scope: !2175)
!2217 = !DILocation(line: 994, column: 10, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2175, file: !3, line: 994, column: 9)
!2219 = !DILocation(line: 994, column: 9, scope: !2175)
!2220 = !DILocation(line: 999, column: 33, scope: !2175)
!2221 = !DILocation(line: 999, column: 20, scope: !2175)
!2222 = !DILocation(line: 1002, column: 5, scope: !2175)
!2223 = !DILocation(line: 1007, column: 19, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 1007, column: 13)
!2225 = !DILocation(line: 1003, column: 37, scope: !2187)
!2226 = !DILocation(line: 1003, column: 24, scope: !2187)
!2227 = !DILocation(line: 1006, column: 13, scope: !2187)
!2228 = !DILocation(line: 1007, column: 26, scope: !2224)
!2229 = !DILocation(line: 1007, column: 31, scope: !2224)
!2230 = !DILocation(line: 1007, column: 50, scope: !2224)
!2231 = !DILocation(line: 1007, column: 44, scope: !2224)
!2232 = !DILocation(line: 1007, column: 41, scope: !2224)
!2233 = !DILocation(line: 1007, column: 13, scope: !2187)
!2234 = !DILocation(line: 0, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 1007, column: 57)
!2236 = !DILocation(line: 1012, column: 33, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 1012, column: 20)
!2238 = !DILocation(line: 1012, column: 38, scope: !2237)
!2239 = !DILocation(line: 1012, column: 57, scope: !2237)
!2240 = !DILocation(line: 1012, column: 51, scope: !2237)
!2241 = !DILocation(line: 1012, column: 48, scope: !2237)
!2242 = !DILocation(line: 1012, column: 20, scope: !2224)
!2243 = !DILocation(line: 1015, column: 31, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 1012, column: 64)
!2245 = !DILocation(line: 1015, column: 19, scope: !2244)
!2246 = !DILocation(line: 1005, column: 23, scope: !2187)
!2247 = !DILocation(line: 1016, column: 9, scope: !2244)
!2248 = !DILocation(line: 1016, column: 20, scope: !2237)
!2249 = !DILocation(line: 1022, column: 19, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 1016, column: 38)
!2251 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 1016, column: 20)
!2252 = !DILocation(line: 1027, column: 21, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 1027, column: 17)
!2254 = !DILocation(line: 1027, column: 17, scope: !2250)
!2255 = !DILocation(line: 1039, column: 13, scope: !2187)
!2256 = !DILocation(line: 1040, column: 13, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !3, line: 1039, column: 33)
!2258 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 1039, column: 13)
!2259 = !DILocation(line: 1041, column: 9, scope: !2257)
!2260 = !DILocation(line: 1042, column: 13, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 1042, column: 13)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 1042, column: 13)
!2263 = distinct !DILexicalBlock(scope: !2258, file: !3, line: 1041, column: 16)
!2264 = !DILocation(line: 1042, column: 13, scope: !2262)
!2265 = !DILocation(line: 1043, column: 49, scope: !2263)
!2266 = !DILocation(line: 1044, column: 13, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 1044, column: 13)
!2268 = !DILocation(line: 235, column: 59, scope: !303, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 1042, column: 13, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2261, file: !3, line: 1042, column: 13)
!2271 = !DILocation(line: 240, column: 40, scope: !303, inlinedAt: !2269)
!2272 = !DILocation(line: 240, column: 34, scope: !303, inlinedAt: !2269)
!2273 = !DILocation(line: 240, column: 26, scope: !303, inlinedAt: !2269)
!2274 = !DILocation(line: 240, column: 11, scope: !303, inlinedAt: !2269)
!2275 = !DILocation(line: 241, column: 47, scope: !303, inlinedAt: !2269)
!2276 = !DILocation(line: 241, column: 19, scope: !303, inlinedAt: !2269)
!2277 = !DILocation(line: 242, column: 29, scope: !316, inlinedAt: !2269)
!2278 = !DILocation(line: 242, column: 46, scope: !316, inlinedAt: !2269)
!2279 = !DILocation(line: 242, column: 70, scope: !316, inlinedAt: !2269)
!2280 = !DILocation(line: 242, column: 9, scope: !316, inlinedAt: !2269)
!2281 = !DILocation(line: 242, column: 74, scope: !316, inlinedAt: !2269)
!2282 = !DILocation(line: 242, column: 9, scope: !303, inlinedAt: !2269)
!2283 = !DILocation(line: 244, column: 9, scope: !323, inlinedAt: !2269)
!2284 = !DILocation(line: 245, column: 9, scope: !323, inlinedAt: !2269)
!2285 = !DILocation(line: 1042, column: 13, scope: !2270)
!2286 = !DILocation(line: 247, column: 5, scope: !303, inlinedAt: !2269)
!2287 = !DILocation(line: 248, column: 14, scope: !303, inlinedAt: !2269)
!2288 = !DILocation(line: 249, column: 20, scope: !303, inlinedAt: !2269)
!2289 = !DILocation(line: 250, column: 5, scope: !303, inlinedAt: !2269)
!2290 = !DILocation(line: 251, column: 1, scope: !303, inlinedAt: !2269)
!2291 = !DILocation(line: 1043, column: 59, scope: !2263)
!2292 = !DILocation(line: 1043, column: 67, scope: !2263)
!2293 = !DILocation(line: 1043, column: 24, scope: !2263)
!2294 = !DILocation(line: 1043, column: 22, scope: !2263)
!2295 = !DILocation(line: 1045, column: 25, scope: !2263)
!2296 = !DILocation(line: 1046, column: 30, scope: !2263)
!2297 = !DILocation(line: 1047, column: 13, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 1047, column: 13)
!2299 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 1047, column: 13)
!2300 = !DILocation(line: 1047, column: 13, scope: !2299)
!2301 = !DILocation(line: 1047, column: 13, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 1047, column: 13)
!2303 = !DILocation(line: 1048, column: 17, scope: !2263)
!2304 = !DILocation(line: 1049, column: 17, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 1049, column: 17)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 1049, column: 17)
!2307 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 1048, column: 17)
!2308 = !DILocation(line: 1049, column: 17, scope: !2306)
!2309 = !DILocation(line: 1049, column: 17, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 1049, column: 17)
!2311 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 1049, column: 17)
!2312 = !DILocation(line: 1049, column: 17, scope: !2311)
!2313 = !DILocation(line: 1049, column: 17, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 1049, column: 17)
!2315 = !DILocation(line: 1052, column: 16, scope: !2187)
!2316 = !DILocation(line: 1056, column: 22, scope: !2187)
!2317 = distinct !{!2317, !2222, !2318}
!2318 = !DILocation(line: 1057, column: 5, scope: !2175)
!2319 = !DILocation(line: 0, scope: !2218)
!2320 = !DILocation(line: 1059, column: 1, scope: !2175)
!2321 = distinct !DISubprogram(name: "quicklistCompare", scope: !3, file: !3, line: 1062, type: !2322, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2324)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!20, !6, !6, !20}
!2324 = !{!2325, !2326, !2327}
!2325 = !DILocalVariable(name: "p1", arg: 1, scope: !2321, file: !3, line: 1062, type: !6)
!2326 = !DILocalVariable(name: "p2", arg: 2, scope: !2321, file: !3, line: 1062, type: !6)
!2327 = !DILocalVariable(name: "p2_len", arg: 3, scope: !2321, file: !3, line: 1062, type: !20)
!2328 = !DILocation(line: 1062, column: 37, scope: !2321)
!2329 = !DILocation(line: 1062, column: 56, scope: !2321)
!2330 = !DILocation(line: 1062, column: 64, scope: !2321)
!2331 = !DILocation(line: 1063, column: 12, scope: !2321)
!2332 = !DILocation(line: 1063, column: 5, scope: !2321)
!2333 = distinct !DISubprogram(name: "quicklistGetIterator", scope: !3, file: !3, line: 1068, type: !2334, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2336)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!1093, !215, !20}
!2336 = !{!2337, !2338, !2339}
!2337 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2333, file: !3, line: 1068, type: !215)
!2338 = !DILocalVariable(name: "direction", arg: 2, scope: !2333, file: !3, line: 1068, type: !20)
!2339 = !DILocalVariable(name: "iter", scope: !2333, file: !3, line: 1069, type: !1093)
!2340 = !DILocation(line: 1068, column: 54, scope: !2333)
!2341 = !DILocation(line: 1068, column: 69, scope: !2333)
!2342 = !DILocation(line: 1071, column: 12, scope: !2333)
!2343 = !DILocation(line: 1069, column: 20, scope: !2333)
!2344 = !DILocation(line: 1073, column: 19, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 1073, column: 9)
!2346 = !DILocation(line: 1073, column: 9, scope: !2333)
!2347 = !DILocation(line: 1074, column: 36, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 1073, column: 37)
!2349 = !DILocation(line: 1076, column: 5, scope: !2348)
!2350 = !DILocation(line: 1076, column: 26, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 1076, column: 16)
!2352 = !DILocation(line: 1076, column: 16, scope: !2345)
!2353 = !DILocation(line: 1077, column: 36, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 1076, column: 44)
!2355 = !DILocation(line: 1079, column: 5, scope: !2354)
!2356 = !DILocation(line: 0, scope: !2348)
!2357 = !DILocation(line: 1081, column: 11, scope: !2333)
!2358 = !DILocation(line: 1081, column: 21, scope: !2333)
!2359 = !DILocation(line: 1082, column: 11, scope: !2333)
!2360 = !DILocation(line: 1082, column: 21, scope: !2333)
!2361 = !{!1152, !71, i64 0}
!2362 = !DILocation(line: 1084, column: 11, scope: !2333)
!2363 = !DILocation(line: 1084, column: 14, scope: !2333)
!2364 = !DILocation(line: 1086, column: 5, scope: !2333)
!2365 = distinct !DISubprogram(name: "quicklistGetIteratorAtIdx", scope: !3, file: !3, line: 1091, type: !2366, isLocal: false, isDefinition: true, scopeLine: 1093, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2368)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!1093, !215, !598, !1232}
!2368 = !{!2369, !2370, !2371, !2372, !2373}
!2369 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2365, file: !3, line: 1091, type: !215)
!2370 = !DILocalVariable(name: "direction", arg: 2, scope: !2365, file: !3, line: 1092, type: !598)
!2371 = !DILocalVariable(name: "idx", arg: 3, scope: !2365, file: !3, line: 1093, type: !1232)
!2372 = !DILocalVariable(name: "entry", scope: !2365, file: !3, line: 1094, type: !1104)
!2373 = !DILocalVariable(name: "base", scope: !2374, file: !3, line: 1097, type: !1093)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 1096, column: 49)
!2375 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 1096, column: 9)
!2376 = !DILocation(line: 1091, column: 59, scope: !2365)
!2377 = !DILocation(line: 1092, column: 52, scope: !2365)
!2378 = !DILocation(line: 1093, column: 58, scope: !2365)
!2379 = !DILocation(line: 1094, column: 5, scope: !2365)
!2380 = !DILocation(line: 1094, column: 20, scope: !2365)
!2381 = !DILocation(line: 1096, column: 9, scope: !2375)
!2382 = !DILocation(line: 1096, column: 9, scope: !2365)
!2383 = !DILocation(line: 1068, column: 54, scope: !2333, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 1097, column: 31, scope: !2374)
!2385 = !DILocation(line: 1068, column: 69, scope: !2333, inlinedAt: !2384)
!2386 = !DILocation(line: 1071, column: 12, scope: !2333, inlinedAt: !2384)
!2387 = !DILocation(line: 1069, column: 20, scope: !2333, inlinedAt: !2384)
!2388 = !DILocation(line: 1073, column: 19, scope: !2345, inlinedAt: !2384)
!2389 = !DILocation(line: 1073, column: 9, scope: !2333, inlinedAt: !2384)
!2390 = !DILocation(line: 1074, column: 36, scope: !2348, inlinedAt: !2384)
!2391 = !DILocation(line: 1074, column: 15, scope: !2348, inlinedAt: !2384)
!2392 = !DILocation(line: 1074, column: 23, scope: !2348, inlinedAt: !2384)
!2393 = !DILocation(line: 1075, column: 15, scope: !2348, inlinedAt: !2384)
!2394 = !DILocation(line: 1075, column: 22, scope: !2348, inlinedAt: !2384)
!2395 = !DILocation(line: 1076, column: 5, scope: !2348, inlinedAt: !2384)
!2396 = !DILocation(line: 1076, column: 26, scope: !2351, inlinedAt: !2384)
!2397 = !DILocation(line: 1076, column: 16, scope: !2345, inlinedAt: !2384)
!2398 = !DILocation(line: 1099, column: 15, scope: !2374)
!2399 = !DILocation(line: 1099, column: 23, scope: !2374)
!2400 = !DILocation(line: 1100, column: 15, scope: !2374)
!2401 = !DILocation(line: 1077, column: 36, scope: !2354, inlinedAt: !2384)
!2402 = !DILocation(line: 1077, column: 15, scope: !2354, inlinedAt: !2384)
!2403 = !DILocation(line: 1077, column: 23, scope: !2354, inlinedAt: !2384)
!2404 = !DILocation(line: 1078, column: 15, scope: !2354, inlinedAt: !2384)
!2405 = !DILocation(line: 1078, column: 22, scope: !2354, inlinedAt: !2384)
!2406 = !DILocation(line: 1079, column: 5, scope: !2354, inlinedAt: !2384)
!2407 = !DILocation(line: 1081, column: 11, scope: !2333, inlinedAt: !2384)
!2408 = !DILocation(line: 1081, column: 21, scope: !2333, inlinedAt: !2384)
!2409 = !DILocation(line: 1082, column: 11, scope: !2333, inlinedAt: !2384)
!2410 = !DILocation(line: 1082, column: 21, scope: !2333, inlinedAt: !2384)
!2411 = !DILocation(line: 1084, column: 11, scope: !2333, inlinedAt: !2384)
!2412 = !DILocation(line: 1086, column: 5, scope: !2333, inlinedAt: !2384)
!2413 = !DILocation(line: 1097, column: 24, scope: !2374)
!2414 = !DILocation(line: 1098, column: 18, scope: !2374)
!2415 = !DILocation(line: 1099, column: 31, scope: !2374)
!2416 = !DILocation(line: 1100, column: 30, scope: !2374)
!2417 = !DILocation(line: 1100, column: 24, scope: !2374)
!2418 = !DILocation(line: 1100, column: 22, scope: !2374)
!2419 = !DILocation(line: 0, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 1102, column: 12)
!2421 = !DILocation(line: 1105, column: 1, scope: !2365)
!2422 = distinct !DISubprogram(name: "quicklistReleaseIterator", scope: !3, file: !3, line: 1109, type: !2423, isLocal: false, isDefinition: true, scopeLine: 1109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2425)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{null, !1093}
!2425 = !{!2426}
!2426 = !DILocalVariable(name: "iter", arg: 1, scope: !2422, file: !3, line: 1109, type: !1093)
!2427 = !DILocation(line: 1109, column: 46, scope: !2422)
!2428 = !DILocation(line: 1110, column: 15, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 1110, column: 9)
!2430 = !DILocation(line: 1110, column: 9, scope: !2429)
!2431 = !DILocation(line: 1110, column: 9, scope: !2422)
!2432 = !DILocation(line: 1111, column: 9, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 1111, column: 9)
!2434 = distinct !DILexicalBlock(scope: !2429, file: !3, line: 1111, column: 9)
!2435 = !DILocation(line: 1111, column: 9, scope: !2434)
!2436 = !DILocation(line: 1111, column: 9, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 1111, column: 9)
!2438 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 1111, column: 9)
!2439 = !DILocation(line: 1111, column: 9, scope: !2438)
!2440 = !DILocation(line: 1111, column: 9, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 1111, column: 9)
!2442 = !DILocation(line: 1113, column: 11, scope: !2422)
!2443 = !DILocation(line: 1113, column: 5, scope: !2422)
!2444 = !DILocation(line: 1114, column: 1, scope: !2422)
!2445 = distinct !DISubprogram(name: "quicklistNext", scope: !3, file: !3, line: 1137, type: !2446, isLocal: false, isDefinition: true, scopeLine: 1137, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2448)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!20, !1093, !1103}
!2448 = !{!2449, !2450, !2451, !2455}
!2449 = !DILocalVariable(name: "iter", arg: 1, scope: !2445, file: !3, line: 1137, type: !1093)
!2450 = !DILocalVariable(name: "entry", arg: 2, scope: !2445, file: !3, line: 1137, type: !1103)
!2451 = !DILocalVariable(name: "nextFn", scope: !2445, file: !3, line: 1153, type: !2452)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!6, !6, !6}
!2455 = !DILocalVariable(name: "offset_update", scope: !2445, file: !3, line: 1154, type: !20)
!2456 = !DILocation(line: 1137, column: 34, scope: !2445)
!2457 = !DILocation(line: 1137, column: 56, scope: !2445)
!2458 = !DILocation(line: 1138, column: 5, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 1138, column: 5)
!2460 = !DILocation(line: 1140, column: 10, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 1140, column: 9)
!2462 = !DILocation(line: 1140, column: 9, scope: !2445)
!2463 = !DILocation(line: 1145, column: 30, scope: !2445)
!2464 = !DILocation(line: 1146, column: 25, scope: !2445)
!2465 = !DILocation(line: 1145, column: 22, scope: !2445)
!2466 = !DILocation(line: 1148, column: 16, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 1148, column: 9)
!2468 = !DILocation(line: 1148, column: 10, scope: !2467)
!2469 = !DILocation(line: 1148, column: 9, scope: !2445)
!2470 = !DILocation(line: 1153, column: 22, scope: !2445)
!2471 = !DILocation(line: 1154, column: 9, scope: !2445)
!2472 = !DILocation(line: 1156, column: 16, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 1156, column: 9)
!2474 = !DILocation(line: 1156, column: 10, scope: !2473)
!2475 = !DILocation(line: 1156, column: 9, scope: !2445)
!2476 = !DILocation(line: 1158, column: 9, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 1158, column: 9)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 1158, column: 9)
!2479 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 1156, column: 20)
!2480 = !DILocation(line: 1158, column: 9, scope: !2478)
!2481 = !DILocation(line: 235, column: 59, scope: !303, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 1158, column: 9, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 1158, column: 9)
!2484 = !DILocation(line: 240, column: 40, scope: !303, inlinedAt: !2482)
!2485 = !DILocation(line: 240, column: 34, scope: !303, inlinedAt: !2482)
!2486 = !DILocation(line: 240, column: 26, scope: !303, inlinedAt: !2482)
!2487 = !DILocation(line: 240, column: 11, scope: !303, inlinedAt: !2482)
!2488 = !DILocation(line: 241, column: 47, scope: !303, inlinedAt: !2482)
!2489 = !DILocation(line: 241, column: 19, scope: !303, inlinedAt: !2482)
!2490 = !DILocation(line: 242, column: 29, scope: !316, inlinedAt: !2482)
!2491 = !DILocation(line: 242, column: 46, scope: !316, inlinedAt: !2482)
!2492 = !DILocation(line: 242, column: 70, scope: !316, inlinedAt: !2482)
!2493 = !DILocation(line: 242, column: 9, scope: !316, inlinedAt: !2482)
!2494 = !DILocation(line: 242, column: 74, scope: !316, inlinedAt: !2482)
!2495 = !DILocation(line: 242, column: 9, scope: !303, inlinedAt: !2482)
!2496 = !DILocation(line: 244, column: 9, scope: !323, inlinedAt: !2482)
!2497 = !DILocation(line: 245, column: 9, scope: !323, inlinedAt: !2482)
!2498 = !DILocation(line: 247, column: 5, scope: !303, inlinedAt: !2482)
!2499 = !DILocation(line: 248, column: 14, scope: !303, inlinedAt: !2482)
!2500 = !DILocation(line: 249, column: 20, scope: !303, inlinedAt: !2482)
!2501 = !DILocation(line: 250, column: 5, scope: !303, inlinedAt: !2482)
!2502 = !DILocation(line: 0, scope: !2483)
!2503 = !DILocation(line: 251, column: 1, scope: !303, inlinedAt: !2482)
!2504 = !DILocation(line: 1158, column: 9, scope: !2483)
!2505 = !DILocation(line: 1159, column: 39, scope: !2479)
!2506 = !DILocation(line: 1159, column: 48, scope: !2479)
!2507 = !DILocation(line: 1159, column: 58, scope: !2479)
!2508 = !DILocation(line: 1159, column: 52, scope: !2479)
!2509 = !DILocation(line: 1159, column: 20, scope: !2479)
!2510 = !DILocation(line: 1159, column: 18, scope: !2479)
!2511 = !DILocation(line: 1160, column: 5, scope: !2479)
!2512 = !DILocation(line: 1174, column: 27, scope: !2445)
!2513 = !DILocation(line: 1162, column: 19, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !3, line: 1162, column: 13)
!2515 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 1160, column: 12)
!2516 = !DILocation(line: 1162, column: 29, scope: !2514)
!2517 = !DILocation(line: 1162, column: 13, scope: !2515)
!2518 = !DILocation(line: 0, scope: !2514)
!2519 = !DILocation(line: 1168, column: 9, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 1165, column: 54)
!2521 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 1165, column: 20)
!2522 = !DILocation(line: 0, scope: !2445)
!2523 = !DILocation(line: 1169, column: 42, scope: !2515)
!2524 = !DILocation(line: 1169, column: 20, scope: !2515)
!2525 = !{i8* (i8*, i8*)* @ziplistNext, i8* (i8*, i8*)* @ziplistPrev}
!2526 = !DILocation(line: 1169, column: 18, scope: !2515)
!2527 = !DILocation(line: 1170, column: 15, scope: !2515)
!2528 = !DILocation(line: 1170, column: 22, scope: !2515)
!2529 = !DILocation(line: 1176, column: 15, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 1176, column: 9)
!2531 = !DILocation(line: 1173, column: 23, scope: !2445)
!2532 = !DILocation(line: 1173, column: 15, scope: !2445)
!2533 = !DILocation(line: 1174, column: 21, scope: !2445)
!2534 = !DILocation(line: 1174, column: 19, scope: !2445)
!2535 = !DILocation(line: 1176, column: 9, scope: !2530)
!2536 = !DILocation(line: 1176, column: 9, scope: !2445)
!2537 = !DILocation(line: 1178, column: 9, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 1176, column: 19)
!2539 = !DILocation(line: 1179, column: 9, scope: !2538)
!2540 = !DILocation(line: 1183, column: 9, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 1183, column: 9)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 1183, column: 9)
!2543 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 1180, column: 12)
!2544 = !DILocation(line: 1183, column: 9, scope: !2542)
!2545 = !DILocation(line: 1183, column: 9, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 1183, column: 9)
!2547 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 1183, column: 9)
!2548 = !DILocation(line: 1183, column: 9, scope: !2547)
!2549 = !DILocation(line: 1183, column: 9, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 1183, column: 9)
!2551 = !DILocation(line: 1184, column: 19, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 1184, column: 13)
!2553 = !DILocation(line: 1184, column: 29, scope: !2552)
!2554 = !DILocation(line: 1184, column: 13, scope: !2543)
!2555 = !DILocation(line: 1187, column: 35, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 1184, column: 47)
!2557 = !DILocation(line: 1187, column: 44, scope: !2556)
!2558 = !DILocation(line: 1189, column: 9, scope: !2556)
!2559 = !DILocation(line: 1189, column: 36, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 1189, column: 20)
!2561 = !DILocation(line: 1189, column: 20, scope: !2552)
!2562 = !DILocation(line: 1192, column: 35, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 1189, column: 54)
!2564 = !DILocation(line: 1194, column: 9, scope: !2563)
!2565 = !DILocation(line: 0, scope: !2556)
!2566 = !DILocation(line: 1195, column: 18, scope: !2543)
!2567 = !DILocation(line: 1196, column: 16, scope: !2543)
!2568 = !DILocation(line: 1196, column: 9, scope: !2543)
!2569 = !DILocation(line: 0, scope: !2543)
!2570 = !DILocation(line: 0, scope: !2538)
!2571 = !DILocation(line: 0, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 1140, column: 16)
!2573 = !DILocation(line: 1198, column: 1, scope: !2445)
!2574 = distinct !DISubprogram(name: "quicklistDup", scope: !3, file: !3, line: 1206, type: !2575, isLocal: false, isDefinition: true, scopeLine: 1206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2577)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!21, !21}
!2577 = !{!2578, !2579, !2580, !2582, !2585, !2588}
!2578 = !DILocalVariable(name: "orig", arg: 1, scope: !2574, file: !3, line: 1206, type: !21)
!2579 = !DILocalVariable(name: "copy", scope: !2574, file: !3, line: 1207, type: !21)
!2580 = !DILocalVariable(name: "current", scope: !2581, file: !3, line: 1211, type: !26)
!2581 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 1211, column: 5)
!2582 = !DILocalVariable(name: "node", scope: !2583, file: !3, line: 1213, type: !26)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 1212, column: 35)
!2584 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 1211, column: 5)
!2585 = !DILocalVariable(name: "lzf", scope: !2586, file: !3, line: 1216, type: !8)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 1215, column: 63)
!2587 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 1215, column: 13)
!2588 = !DILocalVariable(name: "lzf_sz", scope: !2586, file: !3, line: 1217, type: !51)
!2589 = !DILocation(line: 1206, column: 36, scope: !2574)
!2590 = !DILocation(line: 1209, column: 31, scope: !2574)
!2591 = !DILocation(line: 133, column: 25, scope: !81, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 148, column: 5, scope: !117, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 154, column: 5, scope: !148, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 1209, column: 12, scope: !2574)
!2595 = !DILocation(line: 152, column: 29, scope: !148, inlinedAt: !2594)
!2596 = !DILocation(line: 152, column: 39, scope: !148, inlinedAt: !2594)
!2597 = !DILocation(line: 117, column: 17, scope: !61, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 153, column: 28, scope: !148, inlinedAt: !2594)
!2599 = !DILocation(line: 115, column: 23, scope: !61, inlinedAt: !2598)
!2600 = !DILocation(line: 118, column: 34, scope: !61, inlinedAt: !2598)
!2601 = !DILocation(line: 118, column: 21, scope: !61, inlinedAt: !2598)
!2602 = !DILocation(line: 120, column: 16, scope: !61, inlinedAt: !2598)
!2603 = !DILocation(line: 120, column: 22, scope: !61, inlinedAt: !2598)
!2604 = !DILocation(line: 121, column: 16, scope: !61, inlinedAt: !2598)
!2605 = !DILocation(line: 122, column: 21, scope: !61, inlinedAt: !2598)
!2606 = !DILocation(line: 123, column: 5, scope: !61, inlinedAt: !2598)
!2607 = !DILocation(line: 153, column: 16, scope: !148, inlinedAt: !2594)
!2608 = !DILocation(line: 146, column: 37, scope: !117, inlinedAt: !2593)
!2609 = !DILocation(line: 146, column: 52, scope: !117, inlinedAt: !2593)
!2610 = !DILocation(line: 146, column: 62, scope: !117, inlinedAt: !2593)
!2611 = !DILocation(line: 137, column: 34, scope: !100, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 147, column: 5, scope: !117, inlinedAt: !2593)
!2613 = !DILocation(line: 137, column: 49, scope: !100, inlinedAt: !2612)
!2614 = !DILocation(line: 138, column: 9, scope: !100, inlinedAt: !2612)
!2615 = !DILocation(line: 140, column: 21, scope: !110, inlinedAt: !2612)
!2616 = !DILocation(line: 140, column: 16, scope: !107, inlinedAt: !2612)
!2617 = !DILocation(line: 142, column: 5, scope: !2618, inlinedAt: !2612)
!2618 = distinct !DILexicalBlock(scope: !110, file: !3, line: 140, column: 27)
!2619 = !DILocation(line: 143, column: 21, scope: !100, inlinedAt: !2612)
!2620 = !DILocation(line: 144, column: 1, scope: !100, inlinedAt: !2612)
!2621 = !DILocation(line: 127, column: 43, scope: !81, inlinedAt: !2592)
!2622 = !DILocation(line: 127, column: 58, scope: !81, inlinedAt: !2592)
!2623 = !DILocation(line: 128, column: 9, scope: !81, inlinedAt: !2592)
!2624 = !DILocation(line: 130, column: 16, scope: !90, inlinedAt: !2592)
!2625 = !DILocation(line: 134, column: 1, scope: !81, inlinedAt: !2592)
!2626 = !DILocation(line: 149, column: 1, scope: !117, inlinedAt: !2593)
!2627 = !DILocation(line: 155, column: 5, scope: !148, inlinedAt: !2594)
!2628 = !DILocation(line: 1207, column: 16, scope: !2574)
!2629 = !DILocation(line: 1211, column: 41, scope: !2581)
!2630 = !DILocation(line: 1211, column: 25, scope: !2581)
!2631 = !DILocation(line: 1211, column: 10, scope: !2581)
!2632 = !DILocation(line: 1211, column: 5, scope: !2581)
!2633 = !DILocation(line: 1234, column: 5, scope: !2574)
!2634 = !DILocation(line: 160, column: 12, scope: !192, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 1213, column: 31, scope: !2583)
!2636 = !DILocation(line: 159, column: 20, scope: !192, inlinedAt: !2635)
!2637 = !DILocation(line: 161, column: 11, scope: !192, inlinedAt: !2635)
!2638 = !DILocation(line: 161, column: 14, scope: !192, inlinedAt: !2635)
!2639 = !DILocation(line: 162, column: 11, scope: !192, inlinedAt: !2635)
!2640 = !DILocation(line: 162, column: 17, scope: !192, inlinedAt: !2635)
!2641 = !DILocation(line: 163, column: 11, scope: !192, inlinedAt: !2635)
!2642 = !DILocation(line: 163, column: 14, scope: !192, inlinedAt: !2635)
!2643 = !DILocation(line: 164, column: 29, scope: !192, inlinedAt: !2635)
!2644 = !DILocation(line: 167, column: 22, scope: !192, inlinedAt: !2635)
!2645 = !DILocation(line: 168, column: 5, scope: !192, inlinedAt: !2635)
!2646 = !DILocation(line: 1213, column: 24, scope: !2583)
!2647 = !DILocation(line: 1215, column: 22, scope: !2587)
!2648 = !DILocation(line: 1215, column: 31, scope: !2587)
!2649 = !DILocation(line: 1215, column: 13, scope: !2583)
!2650 = !DILocation(line: 1216, column: 58, scope: !2586)
!2651 = !DILocation(line: 1216, column: 27, scope: !2586)
!2652 = !DILocation(line: 1217, column: 49, scope: !2586)
!2653 = !DILocation(line: 1217, column: 44, scope: !2586)
!2654 = !DILocation(line: 1217, column: 42, scope: !2586)
!2655 = !DILocation(line: 1217, column: 20, scope: !2586)
!2656 = !DILocation(line: 1218, column: 24, scope: !2586)
!2657 = !DILocation(line: 1218, column: 22, scope: !2586)
!2658 = !DILocation(line: 1219, column: 39, scope: !2586)
!2659 = !DILocation(line: 1219, column: 13, scope: !2586)
!2660 = !DILocation(line: 1220, column: 9, scope: !2586)
!2661 = !DILocation(line: 1220, column: 38, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 1220, column: 20)
!2663 = !DILocation(line: 1220, column: 20, scope: !2587)
!2664 = !DILocation(line: 1221, column: 41, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 1220, column: 70)
!2666 = !DILocation(line: 1221, column: 32, scope: !2665)
!2667 = !DILocation(line: 1221, column: 24, scope: !2665)
!2668 = !DILocation(line: 1221, column: 22, scope: !2665)
!2669 = !DILocation(line: 1222, column: 39, scope: !2665)
!2670 = !DILocation(line: 1222, column: 52, scope: !2665)
!2671 = !DILocation(line: 1222, column: 43, scope: !2665)
!2672 = !DILocation(line: 1222, column: 13, scope: !2665)
!2673 = !DILocation(line: 1223, column: 9, scope: !2665)
!2674 = !DILocation(line: 0, scope: !2586)
!2675 = !DILocation(line: 1225, column: 32, scope: !2583)
!2676 = !DILocation(line: 1225, column: 21, scope: !2583)
!2677 = !DILocation(line: 1226, column: 24, scope: !2583)
!2678 = !DILocation(line: 1226, column: 21, scope: !2583)
!2679 = !DILocation(line: 1227, column: 29, scope: !2583)
!2680 = !DILocation(line: 1227, column: 18, scope: !2583)
!2681 = !DILocation(line: 1228, column: 35, scope: !2583)
!2682 = !DILocation(line: 1228, column: 24, scope: !2583)
!2683 = !DILocation(line: 1230, column: 47, scope: !2583)
!2684 = !DILocation(line: 414, column: 56, scope: !585, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 1230, column: 9, scope: !2583)
!2686 = !DILocation(line: 415, column: 60, scope: !585, inlinedAt: !2685)
!2687 = !DILocation(line: 416, column: 60, scope: !585, inlinedAt: !2685)
!2688 = !DILocation(line: 417, column: 5, scope: !585, inlinedAt: !2685)
!2689 = !DILocation(line: 418, column: 1, scope: !585, inlinedAt: !2685)
!2690 = !DILocation(line: 1212, column: 29, scope: !2584)
!2691 = !DILocation(line: 1211, column: 5, scope: !2584)
!2692 = distinct !{!2692, !2632, !2693}
!2693 = !DILocation(line: 1231, column: 5, scope: !2581)
!2694 = distinct !DISubprogram(name: "quicklistRotate", scope: !3, file: !3, line: 1302, type: !225, isLocal: false, isDefinition: true, scopeLine: 1302, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2695)
!2695 = !{!2696, !2697, !2698, !2699, !2700, !2701}
!2696 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2694, file: !3, line: 1302, type: !21)
!2697 = !DILocalVariable(name: "p", scope: !2694, file: !3, line: 1307, type: !6)
!2698 = !DILocalVariable(name: "value", scope: !2694, file: !3, line: 1308, type: !6)
!2699 = !DILocalVariable(name: "longval", scope: !2694, file: !3, line: 1309, type: !920)
!2700 = !DILocalVariable(name: "sz", scope: !2694, file: !3, line: 1310, type: !14)
!2701 = !DILocalVariable(name: "longstr", scope: !2694, file: !3, line: 1311, type: !922)
!2702 = !DILocation(line: 1302, column: 33, scope: !2694)
!2703 = !DILocation(line: 1303, column: 20, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 1303, column: 9)
!2705 = !DILocation(line: 1303, column: 26, scope: !2704)
!2706 = !DILocation(line: 1303, column: 9, scope: !2694)
!2707 = !DILocation(line: 1307, column: 5, scope: !2694)
!2708 = !DILocation(line: 1307, column: 48, scope: !2694)
!2709 = !DILocation(line: 1307, column: 54, scope: !2694)
!2710 = !DILocation(line: 1307, column: 24, scope: !2694)
!2711 = !DILocation(line: 1307, column: 20, scope: !2694)
!2712 = !DILocation(line: 1308, column: 5, scope: !2694)
!2713 = !DILocation(line: 1309, column: 5, scope: !2694)
!2714 = !DILocation(line: 1310, column: 5, scope: !2694)
!2715 = !DILocation(line: 1311, column: 5, scope: !2694)
!2716 = !DILocation(line: 1311, column: 10, scope: !2694)
!2717 = !DILocation(line: 1308, column: 20, scope: !2694)
!2718 = !DILocation(line: 1309, column: 15, scope: !2694)
!2719 = !DILocation(line: 1310, column: 18, scope: !2694)
!2720 = !DILocation(line: 1312, column: 5, scope: !2694)
!2721 = !DILocation(line: 1315, column: 10, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 1315, column: 9)
!2723 = !DILocation(line: 1315, column: 9, scope: !2694)
!2724 = !DILocation(line: 1322, column: 41, scope: !2694)
!2725 = !DILocation(line: 1317, column: 50, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 1315, column: 17)
!2727 = !DILocation(line: 1317, column: 14, scope: !2726)
!2728 = !DILocation(line: 1317, column: 12, scope: !2726)
!2729 = !DILocation(line: 1318, column: 15, scope: !2726)
!2730 = !DILocation(line: 1319, column: 5, scope: !2726)
!2731 = !DILocation(line: 1322, column: 34, scope: !2694)
!2732 = !DILocation(line: 1322, column: 5, scope: !2694)
!2733 = !DILocation(line: 1327, column: 20, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 1327, column: 9)
!2735 = !DILocation(line: 1327, column: 24, scope: !2734)
!2736 = !DILocation(line: 1327, column: 9, scope: !2694)
!2737 = !DILocation(line: 1328, column: 37, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 1327, column: 30)
!2739 = !DILocation(line: 1328, column: 43, scope: !2738)
!2740 = !DILocation(line: 1328, column: 13, scope: !2738)
!2741 = !DILocation(line: 1328, column: 11, scope: !2738)
!2742 = !DILocation(line: 1329, column: 5, scope: !2738)
!2743 = !DILocation(line: 1332, column: 45, scope: !2694)
!2744 = !DILocation(line: 633, column: 47, scope: !1060, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 1332, column: 5, scope: !2694)
!2746 = !DILocation(line: 633, column: 73, scope: !1060, inlinedAt: !2745)
!2747 = !DILocation(line: 634, column: 52, scope: !1060, inlinedAt: !2745)
!2748 = !DILocation(line: 635, column: 9, scope: !1060, inlinedAt: !2745)
!2749 = !DILocation(line: 637, column: 36, scope: !1060, inlinedAt: !2745)
!2750 = !DILocation(line: 637, column: 16, scope: !1060, inlinedAt: !2745)
!2751 = !DILocation(line: 637, column: 14, scope: !1060, inlinedAt: !2745)
!2752 = !DILocation(line: 638, column: 11, scope: !1060, inlinedAt: !2745)
!2753 = !DILocation(line: 638, column: 16, scope: !1060, inlinedAt: !2745)
!2754 = !DILocation(line: 639, column: 21, scope: !1079, inlinedAt: !2745)
!2755 = !DILocation(line: 639, column: 9, scope: !1060, inlinedAt: !2745)
!2756 = !DILocation(line: 641, column: 9, scope: !1082, inlinedAt: !2745)
!2757 = !DILocation(line: 642, column: 5, scope: !1082, inlinedAt: !2745)
!2758 = !DILocation(line: 643, column: 9, scope: !1085, inlinedAt: !2745)
!2759 = !DILocation(line: 645, column: 21, scope: !1060, inlinedAt: !2745)
!2760 = !DILocation(line: 647, column: 5, scope: !1060, inlinedAt: !2745)
!2761 = !DILocation(line: 1333, column: 1, scope: !2694)
!2762 = distinct !DISubprogram(name: "quicklistPopCustom", scope: !3, file: !3, line: 1344, type: !2763, isLocal: false, isDefinition: true, scopeLine: 1346, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2770)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!20, !21, !20, !1063, !2765, !2766, !2767}
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!47, !6, !14}
!2770 = !{!2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782}
!2771 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2762, file: !3, line: 1344, type: !21)
!2772 = !DILocalVariable(name: "where", arg: 2, scope: !2762, file: !3, line: 1344, type: !20)
!2773 = !DILocalVariable(name: "data", arg: 3, scope: !2762, file: !3, line: 1344, type: !1063)
!2774 = !DILocalVariable(name: "sz", arg: 4, scope: !2762, file: !3, line: 1345, type: !2765)
!2775 = !DILocalVariable(name: "sval", arg: 5, scope: !2762, file: !3, line: 1345, type: !2766)
!2776 = !DILocalVariable(name: "saver", arg: 6, scope: !2762, file: !3, line: 1346, type: !2767)
!2777 = !DILocalVariable(name: "p", scope: !2762, file: !3, line: 1347, type: !6)
!2778 = !DILocalVariable(name: "vstr", scope: !2762, file: !3, line: 1348, type: !6)
!2779 = !DILocalVariable(name: "vlen", scope: !2762, file: !3, line: 1349, type: !14)
!2780 = !DILocalVariable(name: "vlong", scope: !2762, file: !3, line: 1350, type: !920)
!2781 = !DILocalVariable(name: "pos", scope: !2762, file: !3, line: 1351, type: !20)
!2782 = !DILocalVariable(name: "node", scope: !2762, file: !3, line: 1363, type: !26)
!2783 = !DILocation(line: 1344, column: 35, scope: !2762)
!2784 = !DILocation(line: 1344, column: 50, scope: !2762)
!2785 = !DILocation(line: 1344, column: 73, scope: !2762)
!2786 = !DILocation(line: 1345, column: 38, scope: !2762)
!2787 = !DILocation(line: 1345, column: 53, scope: !2762)
!2788 = !DILocation(line: 1346, column: 32, scope: !2762)
!2789 = !DILocation(line: 1347, column: 5, scope: !2762)
!2790 = !DILocation(line: 1348, column: 5, scope: !2762)
!2791 = !DILocation(line: 1349, column: 5, scope: !2762)
!2792 = !DILocation(line: 1350, column: 5, scope: !2762)
!2793 = !DILocation(line: 1351, column: 22, scope: !2762)
!2794 = !DILocation(line: 1351, column: 15, scope: !2762)
!2795 = !DILocation(line: 1351, column: 9, scope: !2762)
!2796 = !DILocation(line: 1353, column: 20, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 1353, column: 9)
!2798 = !DILocation(line: 1353, column: 26, scope: !2797)
!2799 = !DILocation(line: 1353, column: 9, scope: !2762)
!2800 = !DILocation(line: 1356, column: 9, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 1356, column: 9)
!2802 = !DILocation(line: 1356, column: 9, scope: !2762)
!2803 = !DILocation(line: 1357, column: 15, scope: !2801)
!2804 = !DILocation(line: 1357, column: 9, scope: !2801)
!2805 = !DILocation(line: 1358, column: 9, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 1358, column: 9)
!2807 = !DILocation(line: 1358, column: 9, scope: !2762)
!2808 = !DILocation(line: 1359, column: 13, scope: !2806)
!2809 = !DILocation(line: 1359, column: 9, scope: !2806)
!2810 = !DILocation(line: 1360, column: 9, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 1360, column: 9)
!2812 = !DILocation(line: 1360, column: 9, scope: !2762)
!2813 = !DILocation(line: 1361, column: 15, scope: !2811)
!2814 = !DILocation(line: 1361, column: 9, scope: !2811)
!2815 = !DILocation(line: 1364, column: 33, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 1364, column: 9)
!2817 = !DILocation(line: 1364, column: 47, scope: !2816)
!2818 = !DILocation(line: 1364, column: 36, scope: !2816)
!2819 = !DILocation(line: 1364, column: 9, scope: !2762)
!2820 = !DILocation(line: 0, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 1364, column: 53)
!2822 = !DILocation(line: 1366, column: 22, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 1366, column: 16)
!2824 = !DILocation(line: 1366, column: 40, scope: !2823)
!2825 = !DILocation(line: 1366, column: 54, scope: !2823)
!2826 = !DILocation(line: 1366, column: 43, scope: !2823)
!2827 = !DILocation(line: 1366, column: 16, scope: !2816)
!2828 = !DILocation(line: 1363, column: 20, scope: !2762)
!2829 = !DILocation(line: 0, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 1366, column: 60)
!2831 = !DILocation(line: 1372, column: 28, scope: !2762)
!2832 = !DILocation(line: 1372, column: 9, scope: !2762)
!2833 = !DILocation(line: 1347, column: 20, scope: !2762)
!2834 = !DILocation(line: 1372, column: 7, scope: !2762)
!2835 = !DILocation(line: 1348, column: 20, scope: !2762)
!2836 = !DILocation(line: 1349, column: 18, scope: !2762)
!2837 = !DILocation(line: 1350, column: 15, scope: !2762)
!2838 = !DILocation(line: 1373, column: 9, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 1373, column: 9)
!2840 = !DILocation(line: 1373, column: 9, scope: !2762)
!2841 = !DILocation(line: 1374, column: 13, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !3, line: 1374, column: 13)
!2843 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 1373, column: 46)
!2844 = !DILocation(line: 1374, column: 13, scope: !2843)
!2845 = !DILocation(line: 0, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 1374, column: 19)
!2847 = !DILocation(line: 1375, column: 17, scope: !2846)
!2848 = !DILocation(line: 1376, column: 37, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 1375, column: 17)
!2850 = !DILocation(line: 1376, column: 25, scope: !2849)
!2851 = !DILocation(line: 1376, column: 23, scope: !2849)
!2852 = !DILocation(line: 1376, column: 17, scope: !2849)
!2853 = !DILocation(line: 1377, column: 17, scope: !2846)
!2854 = !DILocation(line: 1378, column: 23, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 1377, column: 17)
!2856 = !DILocation(line: 1378, column: 21, scope: !2855)
!2857 = !DILocation(line: 1378, column: 17, scope: !2855)
!2858 = !DILocation(line: 1380, column: 17, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2842, file: !3, line: 1379, column: 16)
!2860 = !DILocation(line: 1381, column: 23, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 1380, column: 17)
!2862 = !DILocation(line: 1381, column: 17, scope: !2861)
!2863 = !DILocation(line: 1382, column: 17, scope: !2859)
!2864 = !DILocation(line: 1383, column: 25, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 1382, column: 17)
!2866 = !DILocation(line: 1383, column: 23, scope: !2865)
!2867 = !DILocation(line: 1383, column: 17, scope: !2865)
!2868 = !DILocation(line: 633, column: 47, scope: !1060, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 1385, column: 9, scope: !2843)
!2870 = !DILocation(line: 633, column: 73, scope: !1060, inlinedAt: !2869)
!2871 = !DILocation(line: 634, column: 52, scope: !1060, inlinedAt: !2869)
!2872 = !DILocation(line: 635, column: 9, scope: !1060, inlinedAt: !2869)
!2873 = !DILocation(line: 637, column: 36, scope: !1060, inlinedAt: !2869)
!2874 = !DILocation(line: 637, column: 16, scope: !1060, inlinedAt: !2869)
!2875 = !DILocation(line: 637, column: 14, scope: !1060, inlinedAt: !2869)
!2876 = !DILocation(line: 638, column: 11, scope: !1060, inlinedAt: !2869)
!2877 = !DILocation(line: 638, column: 16, scope: !1060, inlinedAt: !2869)
!2878 = !DILocation(line: 639, column: 21, scope: !1079, inlinedAt: !2869)
!2879 = !DILocation(line: 639, column: 9, scope: !1060, inlinedAt: !2869)
!2880 = !DILocation(line: 641, column: 9, scope: !1082, inlinedAt: !2869)
!2881 = !DILocation(line: 642, column: 5, scope: !1082, inlinedAt: !2869)
!2882 = !DILocation(line: 643, column: 9, scope: !1085, inlinedAt: !2869)
!2883 = !DILocation(line: 645, column: 21, scope: !1060, inlinedAt: !2869)
!2884 = !DILocation(line: 647, column: 5, scope: !1060, inlinedAt: !2869)
!2885 = !DILocation(line: 1386, column: 9, scope: !2843)
!2886 = !DILocation(line: 0, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 1368, column: 12)
!2888 = !DILocation(line: 0, scope: !2843)
!2889 = !DILocation(line: 1389, column: 1, scope: !2762)
!2890 = distinct !DISubprogram(name: "_quicklistSaver", scope: !3, file: !3, line: 1392, type: !2768, isLocal: false, isDefinition: true, scopeLine: 1392, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2891)
!2891 = !{!2892, !2893, !2894}
!2892 = !DILocalVariable(name: "data", arg: 1, scope: !2890, file: !3, line: 1392, type: !6)
!2893 = !DILocalVariable(name: "sz", arg: 2, scope: !2890, file: !3, line: 1392, type: !14)
!2894 = !DILocalVariable(name: "vstr", scope: !2890, file: !3, line: 1393, type: !6)
!2895 = !DILocation(line: 1392, column: 51, scope: !2890)
!2896 = !DILocation(line: 1392, column: 70, scope: !2890)
!2897 = !DILocation(line: 1394, column: 9, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 1394, column: 9)
!2899 = !DILocation(line: 1394, column: 9, scope: !2890)
!2900 = !DILocation(line: 1395, column: 24, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 1394, column: 15)
!2902 = !DILocation(line: 1395, column: 16, scope: !2901)
!2903 = !DILocation(line: 1393, column: 20, scope: !2890)
!2904 = !DILocation(line: 1396, column: 9, scope: !2901)
!2905 = !DILocation(line: 1397, column: 9, scope: !2901)
!2906 = !DILocation(line: 0, scope: !2890)
!2907 = !DILocation(line: 0, scope: !2901)
!2908 = !DILocation(line: 1400, column: 1, scope: !2890)
!2909 = distinct !DISubprogram(name: "quicklistPop", scope: !3, file: !3, line: 1405, type: !2910, isLocal: false, isDefinition: true, scopeLine: 1406, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!20, !21, !20, !1063, !2765, !2766}
!2912 = !{!2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921}
!2913 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2909, file: !3, line: 1405, type: !21)
!2914 = !DILocalVariable(name: "where", arg: 2, scope: !2909, file: !3, line: 1405, type: !20)
!2915 = !DILocalVariable(name: "data", arg: 3, scope: !2909, file: !3, line: 1405, type: !1063)
!2916 = !DILocalVariable(name: "sz", arg: 4, scope: !2909, file: !3, line: 1406, type: !2765)
!2917 = !DILocalVariable(name: "slong", arg: 5, scope: !2909, file: !3, line: 1406, type: !2766)
!2918 = !DILocalVariable(name: "vstr", scope: !2909, file: !3, line: 1407, type: !6)
!2919 = !DILocalVariable(name: "vlen", scope: !2909, file: !3, line: 1408, type: !14)
!2920 = !DILocalVariable(name: "vlong", scope: !2909, file: !3, line: 1409, type: !920)
!2921 = !DILocalVariable(name: "ret", scope: !2909, file: !3, line: 1412, type: !20)
!2922 = !DILocation(line: 1405, column: 29, scope: !2909)
!2923 = !DILocation(line: 1405, column: 44, scope: !2909)
!2924 = !DILocation(line: 1405, column: 67, scope: !2909)
!2925 = !DILocation(line: 1406, column: 32, scope: !2909)
!2926 = !DILocation(line: 1406, column: 47, scope: !2909)
!2927 = !DILocation(line: 1407, column: 5, scope: !2909)
!2928 = !DILocation(line: 1408, column: 5, scope: !2909)
!2929 = !DILocation(line: 1409, column: 5, scope: !2909)
!2930 = !DILocation(line: 1410, column: 20, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 1410, column: 9)
!2932 = !DILocation(line: 1410, column: 26, scope: !2931)
!2933 = !DILocation(line: 1410, column: 9, scope: !2909)
!2934 = !DILocation(line: 1407, column: 20, scope: !2909)
!2935 = !DILocation(line: 1408, column: 18, scope: !2909)
!2936 = !DILocation(line: 1409, column: 15, scope: !2909)
!2937 = !DILocation(line: 1412, column: 15, scope: !2909)
!2938 = !DILocation(line: 1412, column: 9, scope: !2909)
!2939 = !DILocation(line: 1414, column: 9, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 1414, column: 9)
!2941 = !DILocation(line: 1414, column: 9, scope: !2909)
!2942 = !DILocation(line: 1415, column: 17, scope: !2940)
!2943 = !DILocation(line: 1415, column: 15, scope: !2940)
!2944 = !DILocation(line: 1415, column: 9, scope: !2940)
!2945 = !DILocation(line: 1416, column: 9, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 1416, column: 9)
!2947 = !DILocation(line: 1416, column: 9, scope: !2909)
!2948 = !DILocation(line: 1417, column: 18, scope: !2946)
!2949 = !DILocation(line: 1417, column: 16, scope: !2946)
!2950 = !DILocation(line: 1417, column: 9, scope: !2946)
!2951 = !DILocation(line: 1418, column: 9, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 1418, column: 9)
!2953 = !DILocation(line: 1418, column: 9, scope: !2909)
!2954 = !DILocation(line: 1419, column: 15, scope: !2952)
!2955 = !DILocation(line: 1419, column: 13, scope: !2952)
!2956 = !DILocation(line: 1419, column: 9, scope: !2952)
!2957 = !DILocation(line: 0, scope: !2909)
!2958 = !DILocation(line: 1421, column: 1, scope: !2909)
!2959 = distinct !DISubprogram(name: "quicklistPush", scope: !3, file: !3, line: 1424, type: !2960, isLocal: false, isDefinition: true, scopeLine: 1425, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2962)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{null, !21, !47, !50, !20}
!2962 = !{!2963, !2964, !2965, !2966}
!2963 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2959, file: !3, line: 1424, type: !21)
!2964 = !DILocalVariable(name: "value", arg: 2, scope: !2959, file: !3, line: 1424, type: !47)
!2965 = !DILocalVariable(name: "sz", arg: 3, scope: !2959, file: !3, line: 1424, type: !50)
!2966 = !DILocalVariable(name: "where", arg: 4, scope: !2959, file: !3, line: 1425, type: !20)
!2967 = !DILocation(line: 1424, column: 31, scope: !2959)
!2968 = !DILocation(line: 1424, column: 48, scope: !2959)
!2969 = !DILocation(line: 1424, column: 68, scope: !2959)
!2970 = !DILocation(line: 1425, column: 24, scope: !2959)
!2971 = !DILocation(line: 1426, column: 15, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 1426, column: 9)
!2973 = !DILocation(line: 1426, column: 9, scope: !2959)
!2974 = !DILocation(line: 1427, column: 9, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 1426, column: 34)
!2976 = !DILocation(line: 1428, column: 5, scope: !2975)
!2977 = !DILocation(line: 1428, column: 22, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2972, file: !3, line: 1428, column: 16)
!2979 = !DILocation(line: 1428, column: 16, scope: !2972)
!2980 = !DILocation(line: 1429, column: 9, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 1428, column: 41)
!2982 = !DILocation(line: 1430, column: 5, scope: !2981)
!2983 = !DILocation(line: 0, scope: !2975)
!2984 = !DILocation(line: 1431, column: 1, scope: !2959)
