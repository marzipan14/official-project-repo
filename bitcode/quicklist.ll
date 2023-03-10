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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  %10 = icmp sgt i32 %2, 0, !dbg !128
  %11 = select i1 %10, i32 %2, i32 0, !dbg !128
  %12 = icmp slt i32 %11, 65536, !dbg !129
  %13 = select i1 %12, i32 %11, i32 65536, !dbg !129
  %14 = shl i32 %13, 16, !dbg !130
  %15 = or i32 %14, %9, !dbg !130
  store i32 %15, i32* %8, align 8, !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  ret void, !dbg !132
}

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklist* @quicklistNew(i32, i32) local_unnamed_addr #0 !dbg !133 {
  %3 = tail call i8* @zmalloc(i64 40) #4, !dbg !142
  %4 = bitcast i8* %3 to %struct.quicklist*, !dbg !142
  %5 = bitcast i8* %3 to <2 x %struct.quicklistNode*>*, !dbg !145
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %5, align 8, !dbg !145, !tbaa !70
  %6 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !146
  %7 = bitcast i8* %6 to <2 x i64>*, !dbg !147
  store <2 x i64> zeroinitializer, <2 x i64>* %7, align 8, !dbg !147, !tbaa !76
  %8 = getelementptr inbounds i8, i8* %3, i64 32, !dbg !148
  %9 = bitcast i8* %8 to i32*, !dbg !148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  %10 = icmp sgt i32 %0, -5, !dbg !158
  %11 = select i1 %10, i32 %0, i32 -5, !dbg !158
  %12 = icmp slt i32 %11, 32768, !dbg !159
  %13 = select i1 %12, i32 %11, i32 32768, !dbg !159
  %14 = and i32 %13, 65535, !dbg !160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !161
  %15 = icmp sgt i32 %1, 0, !dbg !165
  %16 = select i1 %15, i32 %1, i32 0, !dbg !165
  %17 = icmp slt i32 %16, 65536, !dbg !166
  %18 = select i1 %17, i32 %16, i32 65536, !dbg !166
  %19 = shl i32 %18, 16, !dbg !167
  %20 = or i32 %19, %14, !dbg !167
  store i32 %20, i32* %9, align 8, !dbg !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  ret %struct.quicklist* %4, !dbg !170
}

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklistNode* @quicklistCreateNode() local_unnamed_addr #0 !dbg !171 {
  %1 = tail call i8* @zmalloc(i64 32) #4, !dbg !176
  %2 = bitcast i8* %1 to %struct.quicklistNode*, !dbg !176
  %3 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !178
  %4 = bitcast i8* %3 to i8**, !dbg !178
  store i8* null, i8** %4, align 8, !dbg !179, !tbaa !180
  %5 = getelementptr inbounds i8, i8* %1, i64 28, !dbg !183
  %6 = bitcast i8* %5 to i32*, !dbg !183
  %7 = load i32, i32* %6, align 4, !dbg !184
  %8 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !185
  %9 = bitcast i8* %8 to i32*, !dbg !185
  store i32 0, i32* %9, align 8, !dbg !186, !tbaa !187
  %10 = bitcast i8* %1 to <2 x %struct.quicklistNode*>*, !dbg !188
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %10, align 8, !dbg !188, !tbaa !70
  %11 = and i32 %7, -2097152, !dbg !189
  %12 = or i32 %11, 589824, !dbg !189
  store i32 %12, i32* %6, align 4, !dbg !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !190
  ret %struct.quicklistNode* %2, !dbg !190
}

; Function Attrs: noredzone nounwind
define dso_local i64 @quicklistCount(%struct.quicklist* nocapture readonly) local_unnamed_addr #0 !dbg !191 {
  %2 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !199
  %3 = load i64, i64* %2, align 8, !dbg !199, !tbaa !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  ret i64 %3, !dbg !202
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistRelease(%struct.quicklist*) local_unnamed_addr #0 !dbg !203 {
  %2 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !212
  %3 = load i64, i64* %2, align 8, !dbg !212, !tbaa !213
  %4 = icmp eq i64 %3, 0, !dbg !215
  br i1 %4, label %27, label %5, !dbg !215

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !216
  %7 = load %struct.quicklistNode*, %struct.quicklistNode** %6, align 8, !dbg !216, !tbaa !217
  %8 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2
  br label %9, !dbg !215

; <label>:9:                                      ; preds = %5, %9
  %10 = phi i64 [ %3, %5 ], [ %13, %9 ]
  %11 = phi %struct.quicklistNode* [ %7, %5 ], [ %15, %9 ]
  %12 = bitcast %struct.quicklistNode* %11 to i8*, !dbg !219
  %13 = add i64 %10, -1, !dbg !220
  %14 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 1, !dbg !221
  %15 = load %struct.quicklistNode*, %struct.quicklistNode** %14, align 8, !dbg !221, !tbaa !223
  %16 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !225
  %17 = load i8*, i8** %16, align 8, !dbg !225, !tbaa !180
  tail call void @zfree(i8* %17) #4, !dbg !226
  %18 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 4, !dbg !227
  %19 = load i32, i32* %18, align 4, !dbg !227
  %20 = and i32 %19, 65535, !dbg !227
  %21 = zext i32 %20 to i64, !dbg !228
  %22 = load i64, i64* %8, align 8, !dbg !229, !tbaa !200
  %23 = sub i64 %22, %21, !dbg !229
  store i64 %23, i64* %8, align 8, !dbg !229, !tbaa !200
  tail call void @zfree(i8* %12) #4, !dbg !230
  %24 = load i64, i64* %2, align 8, !dbg !231, !tbaa !213
  %25 = add i64 %24, -1, !dbg !231
  store i64 %25, i64* %2, align 8, !dbg !231, !tbaa !213
  %26 = icmp eq i64 %13, 0, !dbg !215
  br i1 %26, label %27, label %9, !dbg !215, !llvm.loop !232

; <label>:27:                                     ; preds = %9, %1
  %28 = bitcast %struct.quicklist* %0 to i8*, !dbg !234
  tail call void @zfree(i8* %28) #4, !dbg !235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !236
  ret void, !dbg !236
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @__quicklistCompressNode(%struct.quicklistNode* nocapture) local_unnamed_addr #0 !dbg !237 {
  %2 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 3, !dbg !244
  %3 = load i32, i32* %2, align 8, !dbg !244, !tbaa !187
  %4 = icmp ult i32 %3, 48, !dbg !246
  br i1 %4, label %30, label %5, !dbg !247

; <label>:5:                                      ; preds = %1
  %6 = zext i32 %3 to i64, !dbg !248
  %7 = add nuw nsw i64 %6, 4, !dbg !249
  %8 = tail call i8* @zmalloc(i64 %7) #4, !dbg !250
  %9 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 2, !dbg !252
  %10 = load i8*, i8** %9, align 8, !dbg !252, !tbaa !180
  %11 = load i32, i32* %2, align 8, !dbg !254, !tbaa !187
  %12 = getelementptr inbounds i8, i8* %8, i64 4, !dbg !255
  %13 = tail call i32 @lzf_compress(i8* %10, i32 %11, i8* nonnull %12, i32 %11) #4, !dbg !256
  %14 = bitcast i8* %8 to i32*, !dbg !257
  store i32 %13, i32* %14, align 4, !dbg !258, !tbaa !259
  %15 = icmp eq i32 %13, 0, !dbg !260
  br i1 %15, label %20, label %16, !dbg !261

; <label>:16:                                     ; preds = %5
  %17 = add i32 %13, 8, !dbg !262
  %18 = load i32, i32* %2, align 8, !dbg !263, !tbaa !187
  %19 = icmp ult i32 %17, %18, !dbg !264
  br i1 %19, label %21, label %20, !dbg !265

; <label>:20:                                     ; preds = %16, %5
  tail call void @zfree(i8* %8) #4, !dbg !266
  br label %30, !dbg !268

; <label>:21:                                     ; preds = %16
  %22 = zext i32 %13 to i64, !dbg !269
  %23 = add nuw nsw i64 %22, 4, !dbg !270
  %24 = tail call i8* @zrealloc(i8* %8, i64 %23) #4, !dbg !271
  %25 = load i8*, i8** %9, align 8, !dbg !272, !tbaa !180
  tail call void @zfree(i8* %25) #4, !dbg !273
  store i8* %24, i8** %9, align 8, !dbg !274, !tbaa !180
  %26 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 4, !dbg !275
  %27 = load i32, i32* %26, align 4, !dbg !276
  %28 = and i32 %27, -1245185, !dbg !276
  %29 = or i32 %28, 131072, !dbg !276
  store i32 %29, i32* %26, align 4, !dbg !277
  br label %30, !dbg !278

; <label>:30:                                     ; preds = %20, %21, %1
  %31 = phi i32 [ 0, %1 ], [ 0, %20 ], [ 1, %21 ], !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  ret i32 %31, !dbg !280
}

; Function Attrs: noredzone
declare dso_local i32 @lzf_compress(i8*, i32, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @__quicklistDecompressNode(%struct.quicklistNode* nocapture) local_unnamed_addr #0 !dbg !281 {
  %2 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 3, !dbg !287
  %3 = load i32, i32* %2, align 8, !dbg !287, !tbaa !187
  %4 = zext i32 %3 to i64, !dbg !288
  %5 = tail call i8* @zmalloc(i64 %4) #4, !dbg !289
  %6 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 2, !dbg !291
  %7 = load i8*, i8** %6, align 8, !dbg !291, !tbaa !180
  %8 = getelementptr inbounds i8, i8* %7, i64 4, !dbg !293
  %9 = bitcast i8* %7 to i32*, !dbg !295
  %10 = load i32, i32* %9, align 4, !dbg !295, !tbaa !259
  %11 = load i32, i32* %2, align 8, !dbg !296, !tbaa !187
  %12 = tail call i32 @lzf_decompress(i8* nonnull %8, i32 %10, i8* %5, i32 %11) #4, !dbg !297
  %13 = icmp eq i32 %12, 0, !dbg !298
  br i1 %13, label %14, label %15, !dbg !299

; <label>:14:                                     ; preds = %1
  tail call void @zfree(i8* %5) #4, !dbg !300
  br label %20, !dbg !302

; <label>:15:                                     ; preds = %1
  tail call void @zfree(i8* %7) #4, !dbg !303
  store i8* %5, i8** %6, align 8, !dbg !304, !tbaa !180
  %16 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 4, !dbg !305
  %17 = load i32, i32* %16, align 4, !dbg !306
  %18 = and i32 %17, -196609, !dbg !306
  %19 = or i32 %18, 65536, !dbg !306
  store i32 %19, i32* %16, align 4, !dbg !306
  br label %20, !dbg !307

; <label>:20:                                     ; preds = %15, %14
  %21 = phi i32 [ 0, %14 ], [ 1, %15 ], !dbg !308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  ret i32 %21, !dbg !309
}

; Function Attrs: noredzone
declare dso_local i32 @lzf_decompress(i8*, i32, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @quicklistGetLzf(%struct.quicklistNode* nocapture readonly, i8** nocapture) local_unnamed_addr #0 !dbg !310 {
  %3 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 2, !dbg !322
  %4 = bitcast i8** %3 to %struct.quicklistLZF**, !dbg !322
  %5 = load %struct.quicklistLZF*, %struct.quicklistLZF** %4, align 8, !dbg !322, !tbaa !180
  %6 = getelementptr inbounds %struct.quicklistLZF, %struct.quicklistLZF* %5, i64 0, i32 1, i64 0, !dbg !324
  store i8* %6, i8** %1, align 8, !dbg !325, !tbaa !70
  %7 = getelementptr inbounds %struct.quicklistLZF, %struct.quicklistLZF* %5, i64 0, i32 0, !dbg !326
  %8 = load i32, i32* %7, align 4, !dbg !326, !tbaa !259
  %9 = zext i32 %8 to i64, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  ret i64 %9, !dbg !328
}

; Function Attrs: noredzone nounwind
define dso_local void @__quicklistCompress(%struct.quicklist* nocapture readonly, %struct.quicklistNode*) local_unnamed_addr #0 !dbg !329 {
  %3 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !341
  %4 = load i32, i32* %3, align 8, !dbg !341
  %5 = lshr i32 %4, 16, !dbg !341
  %6 = icmp eq i32 %5, 0, !dbg !341
  br i1 %6, label %126, label %7, !dbg !343

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !344
  %9 = load i64, i64* %8, align 8, !dbg !344, !tbaa !213
  %10 = shl nuw nsw i32 %5, 1, !dbg !345
  %11 = zext i32 %10 to i64, !dbg !346
  %12 = icmp ult i64 %9, %11, !dbg !347
  br i1 %12, label %126, label %13, !dbg !348

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !349
  %15 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !351
  %16 = load %struct.quicklistNode*, %struct.quicklistNode** %15, align 8, !dbg !355, !tbaa !70
  %17 = load %struct.quicklistNode*, %struct.quicklistNode** %14, align 8, !dbg !355, !tbaa !70
  %18 = icmp ugt i32 %4, 65535, !dbg !357
  br i1 %18, label %19, label %92, !dbg !358

; <label>:19:                                     ; preds = %13, %77
  %20 = phi i32 [ %86, %77 ], [ 1, %13 ]
  %21 = phi %struct.quicklistNode* [ %85, %77 ], [ %17, %13 ]
  %22 = phi %struct.quicklistNode* [ %84, %77 ], [ %16, %13 ]
  %23 = phi i32 [ %81, %77 ], [ 0, %13 ]
  %24 = icmp eq %struct.quicklistNode* %21, null, !dbg !359
  br i1 %24, label %49, label %25, !dbg !359

; <label>:25:                                     ; preds = %19
  %26 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %21, i64 0, i32 4, !dbg !359
  %27 = load i32, i32* %26, align 4, !dbg !359
  %28 = and i32 %27, 196608, !dbg !359
  %29 = icmp eq i32 %28, 131072, !dbg !359
  br i1 %29, label %30, label %49, !dbg !362

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %21, i64 0, i32 3, !dbg !366
  %32 = load i32, i32* %31, align 8, !dbg !366, !tbaa !187
  %33 = zext i32 %32 to i64, !dbg !367
  %34 = tail call i8* @zmalloc(i64 %33) #4, !dbg !368
  %35 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %21, i64 0, i32 2, !dbg !370
  %36 = load i8*, i8** %35, align 8, !dbg !370, !tbaa !180
  %37 = getelementptr inbounds i8, i8* %36, i64 4, !dbg !372
  %38 = bitcast i8* %36 to i32*, !dbg !373
  %39 = load i32, i32* %38, align 4, !dbg !373, !tbaa !259
  %40 = load i32, i32* %31, align 8, !dbg !374, !tbaa !187
  %41 = tail call i32 @lzf_decompress(i8* nonnull %37, i32 %39, i8* %34, i32 %40) #4, !dbg !375
  %42 = icmp eq i32 %41, 0, !dbg !376
  br i1 %42, label %43, label %44, !dbg !377

; <label>:43:                                     ; preds = %30
  tail call void @zfree(i8* %34) #4, !dbg !378
  br label %48, !dbg !379

; <label>:44:                                     ; preds = %30
  tail call void @zfree(i8* %36) #4, !dbg !380
  store i8* %34, i8** %35, align 8, !dbg !381, !tbaa !180
  %45 = load i32, i32* %26, align 4, !dbg !382
  %46 = and i32 %45, -196609, !dbg !382
  %47 = or i32 %46, 65536, !dbg !382
  store i32 %47, i32* %26, align 4, !dbg !382
  br label %48, !dbg !383

; <label>:48:                                     ; preds = %43, %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !384
  br label %49, !dbg !385

; <label>:49:                                     ; preds = %19, %25, %48
  %50 = icmp eq %struct.quicklistNode* %22, null, !dbg !386
  br i1 %50, label %75, label %51, !dbg !386

; <label>:51:                                     ; preds = %49
  %52 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %22, i64 0, i32 4, !dbg !386
  %53 = load i32, i32* %52, align 4, !dbg !386
  %54 = and i32 %53, 196608, !dbg !386
  %55 = icmp eq i32 %54, 131072, !dbg !386
  br i1 %55, label %56, label %75, !dbg !389

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %22, i64 0, i32 3, !dbg !393
  %58 = load i32, i32* %57, align 8, !dbg !393, !tbaa !187
  %59 = zext i32 %58 to i64, !dbg !394
  %60 = tail call i8* @zmalloc(i64 %59) #4, !dbg !395
  %61 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %22, i64 0, i32 2, !dbg !397
  %62 = load i8*, i8** %61, align 8, !dbg !397, !tbaa !180
  %63 = getelementptr inbounds i8, i8* %62, i64 4, !dbg !399
  %64 = bitcast i8* %62 to i32*, !dbg !400
  %65 = load i32, i32* %64, align 4, !dbg !400, !tbaa !259
  %66 = load i32, i32* %57, align 8, !dbg !401, !tbaa !187
  %67 = tail call i32 @lzf_decompress(i8* nonnull %63, i32 %65, i8* %60, i32 %66) #4, !dbg !402
  %68 = icmp eq i32 %67, 0, !dbg !403
  br i1 %68, label %69, label %70, !dbg !404

; <label>:69:                                     ; preds = %56
  tail call void @zfree(i8* %60) #4, !dbg !405
  br label %74, !dbg !406

; <label>:70:                                     ; preds = %56
  tail call void @zfree(i8* %62) #4, !dbg !407
  store i8* %60, i8** %61, align 8, !dbg !408, !tbaa !180
  %71 = load i32, i32* %52, align 4, !dbg !409
  %72 = and i32 %71, -196609, !dbg !409
  %73 = or i32 %72, 65536, !dbg !409
  store i32 %73, i32* %52, align 4, !dbg !409
  br label %74, !dbg !410

; <label>:74:                                     ; preds = %69, %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  br label %75, !dbg !412

; <label>:75:                                     ; preds = %49, %74, %51
  %76 = icmp eq %struct.quicklistNode* %21, %22, !dbg !413
  br i1 %76, label %126, label %77, !dbg !415

; <label>:77:                                     ; preds = %75
  %78 = icmp eq %struct.quicklistNode* %21, %1, !dbg !416
  %79 = icmp eq %struct.quicklistNode* %22, %1, !dbg !418
  %80 = or i1 %79, %78, !dbg !419
  %81 = select i1 %80, i32 1, i32 %23, !dbg !419
  %82 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %21, i64 0, i32 1, !dbg !420
  %83 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %22, i64 0, i32 0, !dbg !421
  %84 = load %struct.quicklistNode*, %struct.quicklistNode** %83, align 8, !dbg !355, !tbaa !70
  %85 = load %struct.quicklistNode*, %struct.quicklistNode** %82, align 8, !dbg !355, !tbaa !70
  %86 = add nuw nsw i32 %20, 1, !dbg !422
  %87 = load i32, i32* %3, align 8, !dbg !423
  %88 = lshr i32 %87, 16, !dbg !423
  %89 = icmp ult i32 %20, %88, !dbg !357
  br i1 %89, label %19, label %90, !dbg !358, !llvm.loop !424

; <label>:90:                                     ; preds = %77
  %91 = icmp eq i32 %81, 0, !dbg !426
  br label %92, !dbg !426

; <label>:92:                                     ; preds = %90, %13
  %93 = phi i32 [ 0, %13 ], [ %20, %90 ], !dbg !428
  %94 = phi i1 [ true, %13 ], [ %91, %90 ]
  %95 = phi %struct.quicklistNode* [ %16, %13 ], [ %84, %90 ], !dbg !355
  %96 = phi %struct.quicklistNode* [ %17, %13 ], [ %85, %90 ], !dbg !355
  %97 = icmp ne %struct.quicklistNode* %1, null, !dbg !429
  %98 = and i1 %97, %94, !dbg !432
  br i1 %98, label %99, label %106, !dbg !432

; <label>:99:                                     ; preds = %92
  %100 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !429
  %101 = load i32, i32* %100, align 4, !dbg !429
  %102 = and i32 %101, 196608, !dbg !429
  %103 = icmp eq i32 %102, 65536, !dbg !429
  br i1 %103, label %104, label %106, !dbg !433

; <label>:104:                                    ; preds = %99
  %105 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %1) #6, !dbg !434
  br label %106, !dbg !434

; <label>:106:                                    ; preds = %92, %99, %104
  %107 = icmp ugt i32 %93, 1, !dbg !436
  br i1 %107, label %108, label %126, !dbg !438

; <label>:108:                                    ; preds = %106
  %109 = icmp eq %struct.quicklistNode* %96, null, !dbg !439
  br i1 %109, label %117, label %110, !dbg !439

; <label>:110:                                    ; preds = %108
  %111 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %96, i64 0, i32 4, !dbg !439
  %112 = load i32, i32* %111, align 4, !dbg !439
  %113 = and i32 %112, 196608, !dbg !439
  %114 = icmp eq i32 %113, 65536, !dbg !439
  br i1 %114, label %115, label %117, !dbg !443

; <label>:115:                                    ; preds = %110
  %116 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %96) #6, !dbg !444
  br label %117, !dbg !444

; <label>:117:                                    ; preds = %108, %110, %115
  %118 = icmp eq %struct.quicklistNode* %95, null, !dbg !446
  br i1 %118, label %126, label %119, !dbg !446

; <label>:119:                                    ; preds = %117
  %120 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %95, i64 0, i32 4, !dbg !446
  %121 = load i32, i32* %120, align 4, !dbg !446
  %122 = and i32 %121, 196608, !dbg !446
  %123 = icmp eq i32 %122, 65536, !dbg !446
  br i1 %123, label %124, label %126, !dbg !449

; <label>:124:                                    ; preds = %119
  %125 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %95) #6, !dbg !450
  br label %126, !dbg !450

; <label>:126:                                    ; preds = %75, %117, %119, %124, %106, %2, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  ret void, !dbg !452
}

; Function Attrs: noredzone nounwind
define dso_local void @__quicklistInsertNode(%struct.quicklist* nocapture, %struct.quicklistNode*, %struct.quicklistNode*, i32) local_unnamed_addr #0 !dbg !453 {
  %5 = icmp eq i32 %3, 0, !dbg !465
  br i1 %5, label %25, label %6, !dbg !467

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 0, !dbg !468
  store %struct.quicklistNode* %1, %struct.quicklistNode** %7, align 8, !dbg !470, !tbaa !471
  %8 = icmp eq %struct.quicklistNode* %1, null, !dbg !472
  br i1 %8, label %20, label %9, !dbg !474

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 1, !dbg !475
  %11 = bitcast %struct.quicklistNode** %10 to i64*, !dbg !475
  %12 = load i64, i64* %11, align 8, !dbg !475, !tbaa !223
  %13 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 1, !dbg !477
  %14 = bitcast %struct.quicklistNode** %13 to i64*, !dbg !478
  store i64 %12, i64* %14, align 8, !dbg !478, !tbaa !223
  %15 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !479, !tbaa !223
  %16 = icmp eq %struct.quicklistNode* %15, null, !dbg !481
  br i1 %16, label %19, label %17, !dbg !482

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %15, i64 0, i32 0, !dbg !483
  store %struct.quicklistNode* %2, %struct.quicklistNode** %18, align 8, !dbg !484, !tbaa !471
  br label %19, !dbg !485

; <label>:19:                                     ; preds = %9, %17
  store %struct.quicklistNode* %2, %struct.quicklistNode** %10, align 8, !dbg !486, !tbaa !223
  br label %20, !dbg !487

; <label>:20:                                     ; preds = %6, %19
  %21 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !488
  %22 = load %struct.quicklistNode*, %struct.quicklistNode** %21, align 8, !dbg !488, !tbaa !490
  %23 = icmp eq %struct.quicklistNode* %22, %1, !dbg !491
  br i1 %23, label %24, label %43, !dbg !492

; <label>:24:                                     ; preds = %20
  store %struct.quicklistNode* %2, %struct.quicklistNode** %21, align 8, !dbg !493, !tbaa !490
  br label %43, !dbg !494

; <label>:25:                                     ; preds = %4
  %26 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 1, !dbg !495
  store %struct.quicklistNode* %1, %struct.quicklistNode** %26, align 8, !dbg !497, !tbaa !223
  %27 = icmp eq %struct.quicklistNode* %1, null, !dbg !498
  br i1 %27, label %38, label %28, !dbg !500

; <label>:28:                                     ; preds = %25
  %29 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 0, !dbg !501
  %30 = bitcast %struct.quicklistNode* %1 to i64*, !dbg !501
  %31 = load i64, i64* %30, align 8, !dbg !501, !tbaa !471
  %32 = bitcast %struct.quicklistNode* %2 to i64*, !dbg !503
  store i64 %31, i64* %32, align 8, !dbg !503, !tbaa !471
  %33 = load %struct.quicklistNode*, %struct.quicklistNode** %29, align 8, !dbg !504, !tbaa !471
  %34 = icmp eq %struct.quicklistNode* %33, null, !dbg !506
  br i1 %34, label %37, label %35, !dbg !507

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %33, i64 0, i32 1, !dbg !508
  store %struct.quicklistNode* %2, %struct.quicklistNode** %36, align 8, !dbg !509, !tbaa !223
  br label %37, !dbg !510

; <label>:37:                                     ; preds = %28, %35
  store %struct.quicklistNode* %2, %struct.quicklistNode** %29, align 8, !dbg !511, !tbaa !471
  br label %38, !dbg !512

; <label>:38:                                     ; preds = %25, %37
  %39 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !513
  %40 = load %struct.quicklistNode*, %struct.quicklistNode** %39, align 8, !dbg !513, !tbaa !217
  %41 = icmp eq %struct.quicklistNode* %40, %1, !dbg !515
  br i1 %41, label %42, label %43, !dbg !516

; <label>:42:                                     ; preds = %38
  store %struct.quicklistNode* %2, %struct.quicklistNode** %39, align 8, !dbg !517, !tbaa !217
  br label %43, !dbg !518

; <label>:43:                                     ; preds = %38, %42, %20, %24
  %44 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !519
  %45 = load i64, i64* %44, align 8, !dbg !519, !tbaa !213
  %46 = icmp eq i64 %45, 0, !dbg !521
  br i1 %46, label %47, label %50, !dbg !522

; <label>:47:                                     ; preds = %43
  %48 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !523
  store %struct.quicklistNode* %2, %struct.quicklistNode** %48, align 8, !dbg !525, !tbaa !490
  %49 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !526
  store %struct.quicklistNode* %2, %struct.quicklistNode** %49, align 8, !dbg !527, !tbaa !217
  br label %50, !dbg !528

; <label>:50:                                     ; preds = %47, %43
  %51 = icmp eq %struct.quicklistNode* %1, null, !dbg !529
  br i1 %51, label %63, label %52, !dbg !531

; <label>:52:                                     ; preds = %50
  %53 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !532
  %54 = load i32, i32* %53, align 4, !dbg !532
  %55 = and i32 %54, 1048576, !dbg !532
  %56 = icmp eq i32 %55, 0, !dbg !532
  br i1 %56, label %62, label %57, !dbg !535

; <label>:57:                                     ; preds = %52
  %58 = and i32 %54, 196608, !dbg !536
  %59 = icmp eq i32 %58, 65536, !dbg !536
  br i1 %59, label %60, label %63, !dbg !539

; <label>:60:                                     ; preds = %57
  %61 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %1) #6, !dbg !540
  br label %63, !dbg !540

; <label>:62:                                     ; preds = %52
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %1) #6, !dbg !532
  br label %63

; <label>:63:                                     ; preds = %50, %60, %57, %62
  %64 = load i64, i64* %44, align 8, !dbg !542, !tbaa !213
  %65 = add i64 %64, 1, !dbg !542
  store i64 %65, i64* %44, align 8, !dbg !542, !tbaa !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  ret void, !dbg !543
}

; Function Attrs: noredzone nounwind
define dso_local void @_quicklistInsertNodeBefore(%struct.quicklist* nocapture, %struct.quicklistNode*, %struct.quicklistNode*) local_unnamed_addr #0 !dbg !544 {
  %4 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 1, !dbg !559
  store %struct.quicklistNode* %1, %struct.quicklistNode** %4, align 8, !dbg !560, !tbaa !223
  %5 = icmp eq %struct.quicklistNode* %1, null, !dbg !561
  br i1 %5, label %16, label %6, !dbg !562

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 0, !dbg !563
  %8 = bitcast %struct.quicklistNode* %1 to i64*, !dbg !563
  %9 = load i64, i64* %8, align 8, !dbg !563, !tbaa !471
  %10 = bitcast %struct.quicklistNode* %2 to i64*, !dbg !564
  store i64 %9, i64* %10, align 8, !dbg !564, !tbaa !471
  %11 = load %struct.quicklistNode*, %struct.quicklistNode** %7, align 8, !dbg !565, !tbaa !471
  %12 = icmp eq %struct.quicklistNode* %11, null, !dbg !566
  br i1 %12, label %15, label %13, !dbg !567

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 1, !dbg !568
  store %struct.quicklistNode* %2, %struct.quicklistNode** %14, align 8, !dbg !569, !tbaa !223
  br label %15, !dbg !570

; <label>:15:                                     ; preds = %13, %6
  store %struct.quicklistNode* %2, %struct.quicklistNode** %7, align 8, !dbg !571, !tbaa !471
  br label %16, !dbg !572

; <label>:16:                                     ; preds = %15, %3
  %17 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !573
  %18 = load %struct.quicklistNode*, %struct.quicklistNode** %17, align 8, !dbg !573, !tbaa !217
  %19 = icmp eq %struct.quicklistNode* %18, %1, !dbg !574
  br i1 %19, label %20, label %21, !dbg !575

; <label>:20:                                     ; preds = %16
  store %struct.quicklistNode* %2, %struct.quicklistNode** %17, align 8, !dbg !576, !tbaa !217
  br label %21, !dbg !577

; <label>:21:                                     ; preds = %20, %16
  %22 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !578
  %23 = load i64, i64* %22, align 8, !dbg !578, !tbaa !213
  %24 = icmp eq i64 %23, 0, !dbg !579
  br i1 %24, label %25, label %27, !dbg !580

; <label>:25:                                     ; preds = %21
  %26 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !581
  store %struct.quicklistNode* %2, %struct.quicklistNode** %26, align 8, !dbg !582, !tbaa !490
  store %struct.quicklistNode* %2, %struct.quicklistNode** %17, align 8, !dbg !583, !tbaa !217
  br label %27, !dbg !584

; <label>:27:                                     ; preds = %25, %21
  br i1 %5, label %39, label %28, !dbg !585

; <label>:28:                                     ; preds = %27
  %29 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !586
  %30 = load i32, i32* %29, align 4, !dbg !586
  %31 = and i32 %30, 1048576, !dbg !586
  %32 = icmp eq i32 %31, 0, !dbg !586
  br i1 %32, label %38, label %33, !dbg !587

; <label>:33:                                     ; preds = %28
  %34 = and i32 %30, 196608, !dbg !588
  %35 = icmp eq i32 %34, 65536, !dbg !588
  br i1 %35, label %36, label %39, !dbg !589

; <label>:36:                                     ; preds = %33
  %37 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %1) #4, !dbg !590
  br label %39, !dbg !590

; <label>:38:                                     ; preds = %28
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %1) #4, !dbg !586
  br label %39

; <label>:39:                                     ; preds = %27, %33, %36, %38
  %40 = load i64, i64* %22, align 8, !dbg !591, !tbaa !213
  %41 = add i64 %40, 1, !dbg !591
  store i64 %41, i64* %22, align 8, !dbg !591, !tbaa !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  ret void, !dbg !593
}

; Function Attrs: noredzone nounwind
define dso_local void @_quicklistInsertNodeAfter(%struct.quicklist* nocapture, %struct.quicklistNode*, %struct.quicklistNode*) local_unnamed_addr #0 !dbg !594 {
  %4 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 0, !dbg !607
  store %struct.quicklistNode* %1, %struct.quicklistNode** %4, align 8, !dbg !608, !tbaa !471
  %5 = icmp eq %struct.quicklistNode* %1, null, !dbg !609
  br i1 %5, label %17, label %6, !dbg !610

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 1, !dbg !611
  %8 = bitcast %struct.quicklistNode** %7 to i64*, !dbg !611
  %9 = load i64, i64* %8, align 8, !dbg !611, !tbaa !223
  %10 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 1, !dbg !612
  %11 = bitcast %struct.quicklistNode** %10 to i64*, !dbg !613
  store i64 %9, i64* %11, align 8, !dbg !613, !tbaa !223
  %12 = load %struct.quicklistNode*, %struct.quicklistNode** %7, align 8, !dbg !614, !tbaa !223
  %13 = icmp eq %struct.quicklistNode* %12, null, !dbg !615
  br i1 %13, label %16, label %14, !dbg !616

; <label>:14:                                     ; preds = %6
  %15 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %12, i64 0, i32 0, !dbg !617
  store %struct.quicklistNode* %2, %struct.quicklistNode** %15, align 8, !dbg !618, !tbaa !471
  br label %16, !dbg !619

; <label>:16:                                     ; preds = %14, %6
  store %struct.quicklistNode* %2, %struct.quicklistNode** %7, align 8, !dbg !620, !tbaa !223
  br label %17, !dbg !621

; <label>:17:                                     ; preds = %16, %3
  %18 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !622
  %19 = load %struct.quicklistNode*, %struct.quicklistNode** %18, align 8, !dbg !622, !tbaa !490
  %20 = icmp eq %struct.quicklistNode* %19, %1, !dbg !623
  br i1 %20, label %21, label %22, !dbg !624

; <label>:21:                                     ; preds = %17
  store %struct.quicklistNode* %2, %struct.quicklistNode** %18, align 8, !dbg !625, !tbaa !490
  br label %22, !dbg !626

; <label>:22:                                     ; preds = %21, %17
  %23 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !627
  %24 = load i64, i64* %23, align 8, !dbg !627, !tbaa !213
  %25 = icmp eq i64 %24, 0, !dbg !628
  br i1 %25, label %26, label %28, !dbg !629

; <label>:26:                                     ; preds = %22
  store %struct.quicklistNode* %2, %struct.quicklistNode** %18, align 8, !dbg !630, !tbaa !490
  %27 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !631
  store %struct.quicklistNode* %2, %struct.quicklistNode** %27, align 8, !dbg !632, !tbaa !217
  br label %28, !dbg !633

; <label>:28:                                     ; preds = %26, %22
  br i1 %5, label %40, label %29, !dbg !634

; <label>:29:                                     ; preds = %28
  %30 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !635
  %31 = load i32, i32* %30, align 4, !dbg !635
  %32 = and i32 %31, 1048576, !dbg !635
  %33 = icmp eq i32 %32, 0, !dbg !635
  br i1 %33, label %39, label %34, !dbg !636

; <label>:34:                                     ; preds = %29
  %35 = and i32 %31, 196608, !dbg !637
  %36 = icmp eq i32 %35, 65536, !dbg !637
  br i1 %36, label %37, label %40, !dbg !638

; <label>:37:                                     ; preds = %34
  %38 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %1) #4, !dbg !639
  br label %40, !dbg !639

; <label>:39:                                     ; preds = %29
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %1) #4, !dbg !635
  br label %40

; <label>:40:                                     ; preds = %28, %34, %37, %39
  %41 = load i64, i64* %23, align 8, !dbg !640, !tbaa !213
  %42 = add i64 %41, 1, !dbg !640
  store i64 %42, i64* %23, align 8, !dbg !640, !tbaa !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  ret void, !dbg !642
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_quicklistNodeSizeMeetsOptimizationRequirement(i64, i32) local_unnamed_addr #0 !dbg !643 {
  %3 = icmp ugt i32 %1, -6, !dbg !653
  br i1 %3, label %4, label %11, !dbg !655

; <label>:4:                                      ; preds = %2
  %5 = xor i32 %1, -1, !dbg !656
  %6 = sext i32 %5 to i64, !dbg !657
  %7 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %6, !dbg !659
  %8 = load i64, i64* %7, align 8, !dbg !659, !tbaa !76
  %9 = icmp uge i64 %8, %0, !dbg !662
  %10 = zext i1 %9 to i32, !dbg !663
  br label %11, !dbg !663

; <label>:11:                                     ; preds = %2, %4
  %12 = phi i32 [ 0, %2 ], [ %10, %4 ], !dbg !665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  ret i32 %12, !dbg !667
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_quicklistNodeAllowInsert(%struct.quicklistNode* readonly, i32, i64) local_unnamed_addr #0 !dbg !668 {
  %4 = icmp eq %struct.quicklistNode* %0, null, !dbg !680
  br i1 %4, label %41, label %5, !dbg !682, !prof !683

; <label>:5:                                      ; preds = %3
  %6 = icmp ult i64 %2, 254, !dbg !684
  %7 = select i1 %6, i32 1, i32 5, !dbg !686
  %8 = icmp ult i64 %2, 64, !dbg !688
  br i1 %8, label %9, label %11, !dbg !690

; <label>:9:                                      ; preds = %5
  %10 = add nuw nsw i32 %7, 1, !dbg !691
  br label %17, !dbg !692

; <label>:11:                                     ; preds = %5
  %12 = icmp ult i64 %2, 16384, !dbg !693
  br i1 %12, label %13, label %15, !dbg !695, !prof !696

; <label>:13:                                     ; preds = %11
  %14 = or i32 %7, 2, !dbg !697
  br label %17, !dbg !698

; <label>:15:                                     ; preds = %11
  %16 = add nuw nsw i32 %7, 5, !dbg !699
  br label %17

; <label>:17:                                     ; preds = %13, %15, %9
  %18 = phi i32 [ %10, %9 ], [ %14, %13 ], [ %16, %15 ], !dbg !700
  %19 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 3, !dbg !701
  %20 = load i32, i32* %19, align 8, !dbg !701, !tbaa !187
  %21 = trunc i64 %2 to i32, !dbg !702
  %22 = add i32 %18, %21, !dbg !702
  %23 = add i32 %22, %20, !dbg !702
  %24 = icmp ugt i32 %1, -6, !dbg !707
  br i1 %24, label %26, label %25, !dbg !708

; <label>:25:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !709
  br label %33, !dbg !710

; <label>:26:                                     ; preds = %17
  %27 = zext i32 %23 to i64, !dbg !711
  %28 = xor i32 %1, -1, !dbg !713
  %29 = sext i32 %28 to i64, !dbg !714
  %30 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %29, !dbg !716
  %31 = load i64, i64* %30, align 8, !dbg !716, !tbaa !76
  %32 = icmp ult i64 %31, %27, !dbg !717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !709
  br i1 %32, label %33, label %41, !dbg !710, !prof !683

; <label>:33:                                     ; preds = %25, %26
  %34 = icmp ult i32 %23, 8193, !dbg !718
  br i1 %34, label %35, label %41, !dbg !720

; <label>:35:                                     ; preds = %33
  %36 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 4, !dbg !721
  %37 = load i32, i32* %36, align 4, !dbg !721
  %38 = and i32 %37, 65535, !dbg !721
  %39 = icmp slt i32 %38, %1, !dbg !723
  %40 = zext i1 %39 to i32, !dbg !724
  br label %41, !dbg !724

; <label>:41:                                     ; preds = %26, %33, %35, %3
  %42 = phi i32 [ 0, %3 ], [ 1, %26 ], [ 0, %33 ], [ %40, %35 ], !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  ret i32 %42, !dbg !726
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_quicklistNodeAllowMerge(%struct.quicklistNode* readonly, %struct.quicklistNode* readonly, i32) local_unnamed_addr #0 !dbg !727 {
  %4 = icmp ne %struct.quicklistNode* %0, null, !dbg !738
  %5 = icmp ne %struct.quicklistNode* %1, null, !dbg !740
  %6 = and i1 %4, %5, !dbg !741
  br i1 %6, label %7, label %35, !dbg !741

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 3, !dbg !742
  %9 = load i32, i32* %8, align 8, !dbg !742, !tbaa !187
  %10 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 3, !dbg !743
  %11 = load i32, i32* %10, align 8, !dbg !743, !tbaa !187
  %12 = add i32 %9, -11, !dbg !744
  %13 = add i32 %12, %11, !dbg !745
  %14 = icmp ugt i32 %2, -6, !dbg !750
  br i1 %14, label %16, label %15, !dbg !751

; <label>:15:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  br label %23, !dbg !753

; <label>:16:                                     ; preds = %7
  %17 = zext i32 %13 to i64, !dbg !754
  %18 = xor i32 %2, -1, !dbg !756
  %19 = sext i32 %18 to i64, !dbg !757
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %19, !dbg !759
  %21 = load i64, i64* %20, align 8, !dbg !759, !tbaa !76
  %22 = icmp ult i64 %21, %17, !dbg !760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  br i1 %22, label %23, label %35, !dbg !753, !prof !683

; <label>:23:                                     ; preds = %15, %16
  %24 = icmp ult i32 %13, 8193, !dbg !761
  br i1 %24, label %25, label %35, !dbg !763

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 4, !dbg !764
  %27 = load i32, i32* %26, align 4, !dbg !764
  %28 = and i32 %27, 65535, !dbg !764
  %29 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !766
  %30 = load i32, i32* %29, align 4, !dbg !766
  %31 = and i32 %30, 65535, !dbg !766
  %32 = add nuw nsw i32 %31, %28, !dbg !767
  %33 = icmp sle i32 %32, %2, !dbg !768
  %34 = zext i1 %33 to i32, !dbg !769
  br label %35, !dbg !769

; <label>:35:                                     ; preds = %16, %23, %25, %3
  %36 = phi i32 [ 0, %3 ], [ 1, %16 ], [ 0, %23 ], [ %34, %25 ], !dbg !770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !771
  ret i32 %36, !dbg !771
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistPushHead(%struct.quicklist* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !772 {
  %4 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !786
  %5 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !786, !tbaa !217
  %6 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !788
  %7 = load i32, i32* %6, align 8, !dbg !788
  %8 = shl i32 %7, 16, !dbg !788
  %9 = ashr exact i32 %8, 16, !dbg !788
  %10 = icmp eq %struct.quicklistNode* %5, null, !dbg !793
  br i1 %10, label %11, label %13, !dbg !794, !prof !683

; <label>:11:                                     ; preds = %3
  %12 = trunc i64 %2 to i32, !dbg !795
  br label %44, !dbg !794

; <label>:13:                                     ; preds = %3
  %14 = icmp ult i64 %2, 254, !dbg !796
  %15 = select i1 %14, i32 1, i32 5, !dbg !797
  %16 = icmp ult i64 %2, 64, !dbg !799
  br i1 %16, label %17, label %19, !dbg !800

; <label>:17:                                     ; preds = %13
  %18 = add nuw nsw i32 %15, 1, !dbg !801
  br label %25, !dbg !802

; <label>:19:                                     ; preds = %13
  %20 = icmp ult i64 %2, 16384, !dbg !803
  br i1 %20, label %21, label %23, !dbg !804, !prof !696

; <label>:21:                                     ; preds = %19
  %22 = or i32 %15, 2, !dbg !805
  br label %25, !dbg !806

; <label>:23:                                     ; preds = %19
  %24 = add nuw nsw i32 %15, 5, !dbg !807
  br label %25

; <label>:25:                                     ; preds = %23, %21, %17
  %26 = phi i32 [ %18, %17 ], [ %22, %21 ], [ %24, %23 ], !dbg !808
  %27 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %5, i64 0, i32 3, !dbg !809
  %28 = load i32, i32* %27, align 8, !dbg !809, !tbaa !187
  %29 = trunc i64 %2 to i32, !dbg !810
  %30 = add i32 %26, %29, !dbg !810
  %31 = add i32 %30, %28, !dbg !810
  %32 = icmp ugt i32 %9, -6, !dbg !814
  br i1 %32, label %34, label %33, !dbg !815

; <label>:33:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  br label %42, !dbg !817

; <label>:34:                                     ; preds = %25
  %35 = zext i32 %31 to i64, !dbg !818
  %36 = xor i32 %9, -1, !dbg !820
  %37 = sext i32 %36 to i64, !dbg !821
  %38 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %37, !dbg !823
  %39 = load i64, i64* %38, align 8, !dbg !823, !tbaa !76
  %40 = icmp ult i64 %39, %35, !dbg !824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  br i1 %40, label %42, label %41, !dbg !817, !prof !683

; <label>:41:                                     ; preds = %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !825
  br label %51, !dbg !826

; <label>:42:                                     ; preds = %34, %33
  %43 = icmp ult i32 %31, 8193, !dbg !827
  br i1 %43, label %46, label %44, !dbg !828

; <label>:44:                                     ; preds = %11, %42
  %45 = phi i32 [ %12, %11 ], [ %29, %42 ], !dbg !795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !825
  br label %61, !dbg !826

; <label>:46:                                     ; preds = %42
  %47 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %5, i64 0, i32 4, !dbg !829
  %48 = load i32, i32* %47, align 4, !dbg !829
  %49 = and i32 %48, 65535, !dbg !829
  %50 = icmp slt i32 %49, %9, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !825
  br i1 %50, label %51, label %61, !dbg !826, !prof !696

; <label>:51:                                     ; preds = %46, %41
  %52 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %5, i64 0, i32 2, !dbg !831
  %53 = load i8*, i8** %52, align 8, !dbg !831, !tbaa !180
  %54 = tail call i8* @ziplistPush(i8* %53, i8* %1, i32 %29, i32 0) #4, !dbg !833
  %55 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !834, !tbaa !217
  %56 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %55, i64 0, i32 2, !dbg !835
  store i8* %54, i8** %56, align 8, !dbg !836, !tbaa !180
  %57 = tail call i64 @ziplistBlobLen(i8* %54) #4, !dbg !837
  %58 = trunc i64 %57 to i32, !dbg !837
  %59 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !837, !tbaa !217
  %60 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %59, i64 0, i32 3, !dbg !837
  store i32 %58, i32* %60, align 8, !dbg !837, !tbaa !187
  br label %118, !dbg !839

; <label>:61:                                     ; preds = %46, %44
  %62 = phi i32 [ %29, %46 ], [ %45, %44 ], !dbg !795
  %63 = tail call i8* @zmalloc(i64 32) #4, !dbg !840
  %64 = getelementptr inbounds i8, i8* %63, i64 16, !dbg !843
  %65 = bitcast i8* %64 to i8**, !dbg !843
  store i8* null, i8** %65, align 8, !dbg !844, !tbaa !180
  %66 = getelementptr inbounds i8, i8* %63, i64 28, !dbg !845
  %67 = bitcast i8* %66 to i32*, !dbg !845
  %68 = load i32, i32* %67, align 4, !dbg !846
  %69 = getelementptr inbounds i8, i8* %63, i64 24, !dbg !847
  %70 = bitcast i8* %69 to i32*, !dbg !847
  store i32 0, i32* %70, align 8, !dbg !848, !tbaa !187
  %71 = getelementptr inbounds i8, i8* %63, i64 8, !dbg !849
  %72 = bitcast i8* %71 to %struct.quicklistNode**, !dbg !849
  %73 = bitcast i8* %63 to <2 x %struct.quicklistNode*>*, !dbg !850
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %73, align 8, !dbg !850, !tbaa !70
  %74 = and i32 %68, -2097152, !dbg !851
  %75 = or i32 %74, 589824, !dbg !851
  store i32 %75, i32* %67, align 4, !dbg !851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  %76 = tail call i8* @ziplistNew() #4, !dbg !854
  %77 = tail call i8* @ziplistPush(i8* %76, i8* %1, i32 %62, i32 0) #4, !dbg !855
  store i8* %77, i8** %65, align 8, !dbg !856, !tbaa !180
  %78 = tail call i64 @ziplistBlobLen(i8* %77) #4, !dbg !857
  %79 = trunc i64 %78 to i32, !dbg !857
  store i32 %79, i32* %70, align 8, !dbg !857, !tbaa !187
  %80 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !859, !tbaa !217
  store %struct.quicklistNode* %80, %struct.quicklistNode** %72, align 8, !dbg !869, !tbaa !223
  %81 = icmp eq %struct.quicklistNode* %80, null, !dbg !870
  br i1 %81, label %94, label %82, !dbg !871

; <label>:82:                                     ; preds = %61
  %83 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %80, i64 0, i32 0, !dbg !872
  %84 = bitcast %struct.quicklistNode* %80 to i64*, !dbg !872
  %85 = load i64, i64* %84, align 8, !dbg !872, !tbaa !471
  %86 = bitcast i8* %63 to i64*, !dbg !873
  store i64 %85, i64* %86, align 8, !dbg !873, !tbaa !471
  %87 = load %struct.quicklistNode*, %struct.quicklistNode** %83, align 8, !dbg !874, !tbaa !471
  %88 = icmp eq %struct.quicklistNode* %87, null, !dbg !875
  br i1 %88, label %92, label %89, !dbg !876

; <label>:89:                                     ; preds = %82
  %90 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %87, i64 0, i32 1, !dbg !877
  %91 = bitcast %struct.quicklistNode** %90 to i8**, !dbg !878
  store i8* %63, i8** %91, align 8, !dbg !878, !tbaa !223
  br label %92, !dbg !879

; <label>:92:                                     ; preds = %89, %82
  %93 = bitcast %struct.quicklistNode* %80 to i8**, !dbg !880
  store i8* %63, i8** %93, align 8, !dbg !880, !tbaa !471
  br label %94, !dbg !881

; <label>:94:                                     ; preds = %92, %61
  %95 = bitcast %struct.quicklist* %0 to i8**, !dbg !882
  store i8* %63, i8** %95, align 8, !dbg !882, !tbaa !217
  %96 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !883
  %97 = load i64, i64* %96, align 8, !dbg !883, !tbaa !213
  %98 = icmp eq i64 %97, 0, !dbg !884
  br i1 %98, label %99, label %102, !dbg !885

; <label>:99:                                     ; preds = %94
  %100 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !886
  %101 = bitcast %struct.quicklistNode** %100 to i8**, !dbg !887
  store i8* %63, i8** %101, align 8, !dbg !887, !tbaa !490
  store i8* %63, i8** %95, align 8, !dbg !888, !tbaa !217
  br label %102, !dbg !889

; <label>:102:                                    ; preds = %99, %94
  br i1 %81, label %114, label %103, !dbg !890

; <label>:103:                                    ; preds = %102
  %104 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %80, i64 0, i32 4, !dbg !891
  %105 = load i32, i32* %104, align 4, !dbg !891
  %106 = and i32 %105, 1048576, !dbg !891
  %107 = icmp eq i32 %106, 0, !dbg !891
  br i1 %107, label %113, label %108, !dbg !892

; <label>:108:                                    ; preds = %103
  %109 = and i32 %105, 196608, !dbg !893
  %110 = icmp eq i32 %109, 65536, !dbg !893
  br i1 %110, label %111, label %114, !dbg !894

; <label>:111:                                    ; preds = %108
  %112 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %80) #4, !dbg !895
  br label %114, !dbg !895

; <label>:113:                                    ; preds = %103
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %80) #4, !dbg !891
  br label %114

; <label>:114:                                    ; preds = %102, %108, %111, %113
  %115 = load i64, i64* %96, align 8, !dbg !896, !tbaa !213
  %116 = add i64 %115, 1, !dbg !896
  store i64 %116, i64* %96, align 8, !dbg !896, !tbaa !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !898
  %117 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !899, !tbaa !217
  br label %118

; <label>:118:                                    ; preds = %114, %51
  %119 = phi %struct.quicklistNode* [ %117, %114 ], [ %59, %51 ], !dbg !899
  %120 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !900
  %121 = load i64, i64* %120, align 8, !dbg !901, !tbaa !200
  %122 = add i64 %121, 1, !dbg !901
  store i64 %122, i64* %120, align 8, !dbg !901, !tbaa !200
  %123 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %119, i64 0, i32 4, !dbg !902
  %124 = load i32, i32* %123, align 4, !dbg !903
  %125 = add i32 %124, 1, !dbg !903
  %126 = and i32 %125, 65535, !dbg !903
  %127 = and i32 %124, -65536, !dbg !903
  %128 = or i32 %126, %127, !dbg !903
  store i32 %128, i32* %123, align 4, !dbg !903
  %129 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !904, !tbaa !217
  %130 = icmp ne %struct.quicklistNode* %5, %129, !dbg !905
  %131 = zext i1 %130 to i32, !dbg !905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  ret i32 %131, !dbg !906
}

; Function Attrs: noredzone
declare dso_local i8* @ziplistPush(i8*, i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @ziplistBlobLen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @ziplistNew() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistPushTail(%struct.quicklist* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !907 {
  %4 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !919
  %5 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !919, !tbaa !490
  %6 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !921
  %7 = load i32, i32* %6, align 8, !dbg !921
  %8 = shl i32 %7, 16, !dbg !921
  %9 = ashr exact i32 %8, 16, !dbg !921
  %10 = icmp eq %struct.quicklistNode* %5, null, !dbg !926
  br i1 %10, label %11, label %13, !dbg !927, !prof !683

; <label>:11:                                     ; preds = %3
  %12 = trunc i64 %2 to i32, !dbg !928
  br label %44, !dbg !927

; <label>:13:                                     ; preds = %3
  %14 = icmp ult i64 %2, 254, !dbg !929
  %15 = select i1 %14, i32 1, i32 5, !dbg !930
  %16 = icmp ult i64 %2, 64, !dbg !932
  br i1 %16, label %17, label %19, !dbg !933

; <label>:17:                                     ; preds = %13
  %18 = add nuw nsw i32 %15, 1, !dbg !934
  br label %25, !dbg !935

; <label>:19:                                     ; preds = %13
  %20 = icmp ult i64 %2, 16384, !dbg !936
  br i1 %20, label %21, label %23, !dbg !937, !prof !696

; <label>:21:                                     ; preds = %19
  %22 = or i32 %15, 2, !dbg !938
  br label %25, !dbg !939

; <label>:23:                                     ; preds = %19
  %24 = add nuw nsw i32 %15, 5, !dbg !940
  br label %25

; <label>:25:                                     ; preds = %23, %21, %17
  %26 = phi i32 [ %18, %17 ], [ %22, %21 ], [ %24, %23 ], !dbg !941
  %27 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %5, i64 0, i32 3, !dbg !942
  %28 = load i32, i32* %27, align 8, !dbg !942, !tbaa !187
  %29 = trunc i64 %2 to i32, !dbg !943
  %30 = add i32 %26, %29, !dbg !943
  %31 = add i32 %30, %28, !dbg !943
  %32 = icmp ugt i32 %9, -6, !dbg !947
  br i1 %32, label %34, label %33, !dbg !948

; <label>:33:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !949
  br label %42, !dbg !950

; <label>:34:                                     ; preds = %25
  %35 = zext i32 %31 to i64, !dbg !951
  %36 = xor i32 %9, -1, !dbg !953
  %37 = sext i32 %36 to i64, !dbg !954
  %38 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %37, !dbg !956
  %39 = load i64, i64* %38, align 8, !dbg !956, !tbaa !76
  %40 = icmp ult i64 %39, %35, !dbg !957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !949
  br i1 %40, label %42, label %41, !dbg !950, !prof !683

; <label>:41:                                     ; preds = %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  br label %51, !dbg !959

; <label>:42:                                     ; preds = %34, %33
  %43 = icmp ult i32 %31, 8193, !dbg !960
  br i1 %43, label %46, label %44, !dbg !961

; <label>:44:                                     ; preds = %11, %42
  %45 = phi i32 [ %12, %11 ], [ %29, %42 ], !dbg !928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  br label %61, !dbg !959

; <label>:46:                                     ; preds = %42
  %47 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %5, i64 0, i32 4, !dbg !962
  %48 = load i32, i32* %47, align 4, !dbg !962
  %49 = and i32 %48, 65535, !dbg !962
  %50 = icmp slt i32 %49, %9, !dbg !963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  br i1 %50, label %51, label %61, !dbg !959, !prof !696

; <label>:51:                                     ; preds = %46, %41
  %52 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %5, i64 0, i32 2, !dbg !964
  %53 = load i8*, i8** %52, align 8, !dbg !964, !tbaa !180
  %54 = tail call i8* @ziplistPush(i8* %53, i8* %1, i32 %29, i32 1) #4, !dbg !966
  %55 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !967, !tbaa !490
  %56 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %55, i64 0, i32 2, !dbg !968
  store i8* %54, i8** %56, align 8, !dbg !969, !tbaa !180
  %57 = tail call i64 @ziplistBlobLen(i8* %54) #4, !dbg !970
  %58 = trunc i64 %57 to i32, !dbg !970
  %59 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !970, !tbaa !490
  %60 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %59, i64 0, i32 3, !dbg !970
  store i32 %58, i32* %60, align 8, !dbg !970, !tbaa !187
  br label %116, !dbg !972

; <label>:61:                                     ; preds = %46, %44
  %62 = phi i32 [ %29, %46 ], [ %45, %44 ], !dbg !928
  %63 = tail call i8* @zmalloc(i64 32) #4, !dbg !973
  %64 = getelementptr inbounds i8, i8* %63, i64 16, !dbg !976
  %65 = bitcast i8* %64 to i8**, !dbg !976
  store i8* null, i8** %65, align 8, !dbg !977, !tbaa !180
  %66 = getelementptr inbounds i8, i8* %63, i64 28, !dbg !978
  %67 = bitcast i8* %66 to i32*, !dbg !978
  %68 = load i32, i32* %67, align 4, !dbg !979
  %69 = getelementptr inbounds i8, i8* %63, i64 24, !dbg !980
  %70 = bitcast i8* %69 to i32*, !dbg !980
  store i32 0, i32* %70, align 8, !dbg !981, !tbaa !187
  %71 = bitcast i8* %63 to %struct.quicklistNode**, !dbg !982
  %72 = bitcast i8* %63 to <2 x %struct.quicklistNode*>*, !dbg !983
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %72, align 8, !dbg !983, !tbaa !70
  %73 = and i32 %68, -2097152, !dbg !984
  %74 = or i32 %73, 589824, !dbg !984
  store i32 %74, i32* %67, align 4, !dbg !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !985
  %75 = tail call i8* @ziplistNew() #4, !dbg !987
  %76 = tail call i8* @ziplistPush(i8* %75, i8* %1, i32 %62, i32 1) #4, !dbg !988
  store i8* %76, i8** %65, align 8, !dbg !989, !tbaa !180
  %77 = tail call i64 @ziplistBlobLen(i8* %76) #4, !dbg !990
  %78 = trunc i64 %77 to i32, !dbg !990
  store i32 %78, i32* %70, align 8, !dbg !990, !tbaa !187
  %79 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !992, !tbaa !490
  store %struct.quicklistNode* %79, %struct.quicklistNode** %71, align 8, !dbg !1002, !tbaa !471
  %80 = icmp eq %struct.quicklistNode* %79, null, !dbg !1003
  br i1 %80, label %93, label %81, !dbg !1004

; <label>:81:                                     ; preds = %61
  %82 = getelementptr inbounds i8, i8* %63, i64 8, !dbg !1005
  %83 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %79, i64 0, i32 1, !dbg !1006
  %84 = bitcast %struct.quicklistNode** %83 to i64*, !dbg !1006
  %85 = load i64, i64* %84, align 8, !dbg !1006, !tbaa !223
  %86 = bitcast i8* %82 to i64*, !dbg !1007
  store i64 %85, i64* %86, align 8, !dbg !1007, !tbaa !223
  %87 = load %struct.quicklistNode*, %struct.quicklistNode** %83, align 8, !dbg !1008, !tbaa !223
  %88 = icmp eq %struct.quicklistNode* %87, null, !dbg !1009
  br i1 %88, label %91, label %89, !dbg !1010

; <label>:89:                                     ; preds = %81
  %90 = bitcast %struct.quicklistNode* %87 to i8**, !dbg !1011
  store i8* %63, i8** %90, align 8, !dbg !1011, !tbaa !471
  br label %91, !dbg !1012

; <label>:91:                                     ; preds = %89, %81
  %92 = bitcast %struct.quicklistNode** %83 to i8**, !dbg !1013
  store i8* %63, i8** %92, align 8, !dbg !1013, !tbaa !223
  br label %93, !dbg !1014

; <label>:93:                                     ; preds = %91, %61
  %94 = bitcast %struct.quicklistNode** %4 to i8**, !dbg !1015
  store i8* %63, i8** %94, align 8, !dbg !1015, !tbaa !490
  %95 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !1016
  %96 = load i64, i64* %95, align 8, !dbg !1016, !tbaa !213
  %97 = icmp eq i64 %96, 0, !dbg !1017
  br i1 %97, label %98, label %100, !dbg !1018

; <label>:98:                                     ; preds = %93
  store i8* %63, i8** %94, align 8, !dbg !1019, !tbaa !490
  %99 = bitcast %struct.quicklist* %0 to i8**, !dbg !1020
  store i8* %63, i8** %99, align 8, !dbg !1020, !tbaa !217
  br label %100, !dbg !1021

; <label>:100:                                    ; preds = %98, %93
  br i1 %80, label %112, label %101, !dbg !1022

; <label>:101:                                    ; preds = %100
  %102 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %79, i64 0, i32 4, !dbg !1023
  %103 = load i32, i32* %102, align 4, !dbg !1023
  %104 = and i32 %103, 1048576, !dbg !1023
  %105 = icmp eq i32 %104, 0, !dbg !1023
  br i1 %105, label %111, label %106, !dbg !1024

; <label>:106:                                    ; preds = %101
  %107 = and i32 %103, 196608, !dbg !1025
  %108 = icmp eq i32 %107, 65536, !dbg !1025
  br i1 %108, label %109, label %112, !dbg !1026

; <label>:109:                                    ; preds = %106
  %110 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %79) #4, !dbg !1027
  br label %112, !dbg !1027

; <label>:111:                                    ; preds = %101
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %79) #4, !dbg !1023
  br label %112

; <label>:112:                                    ; preds = %100, %106, %109, %111
  %113 = load i64, i64* %95, align 8, !dbg !1028, !tbaa !213
  %114 = add i64 %113, 1, !dbg !1028
  store i64 %114, i64* %95, align 8, !dbg !1028, !tbaa !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  %115 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !1031, !tbaa !490
  br label %116

; <label>:116:                                    ; preds = %112, %51
  %117 = phi %struct.quicklistNode* [ %115, %112 ], [ %59, %51 ], !dbg !1031
  %118 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !1032
  %119 = load i64, i64* %118, align 8, !dbg !1033, !tbaa !200
  %120 = add i64 %119, 1, !dbg !1033
  store i64 %120, i64* %118, align 8, !dbg !1033, !tbaa !200
  %121 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %117, i64 0, i32 4, !dbg !1034
  %122 = load i32, i32* %121, align 4, !dbg !1035
  %123 = add i32 %122, 1, !dbg !1035
  %124 = and i32 %123, 65535, !dbg !1035
  %125 = and i32 %122, -65536, !dbg !1035
  %126 = or i32 %124, %125, !dbg !1035
  store i32 %126, i32* %121, align 4, !dbg !1035
  %127 = load %struct.quicklistNode*, %struct.quicklistNode** %4, align 8, !dbg !1036, !tbaa !490
  %128 = icmp ne %struct.quicklistNode* %5, %127, !dbg !1037
  %129 = zext i1 %128 to i32, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  ret i32 %129, !dbg !1038
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistAppendZiplist(%struct.quicklist* nocapture, i8*) local_unnamed_addr #0 !dbg !1039 {
  %3 = tail call i8* @zmalloc(i64 32) #4, !dbg !1048
  %4 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !1051
  %5 = bitcast i8* %4 to i8**, !dbg !1051
  %6 = getelementptr inbounds i8, i8* %3, i64 28, !dbg !1052
  %7 = bitcast i8* %6 to i32*, !dbg !1052
  %8 = load i32, i32* %7, align 4, !dbg !1053
  %9 = getelementptr inbounds i8, i8* %3, i64 24, !dbg !1054
  %10 = bitcast i8* %9 to i32*, !dbg !1054
  store i32 0, i32* %10, align 8, !dbg !1055, !tbaa !187
  %11 = bitcast i8* %3 to %struct.quicklistNode**, !dbg !1056
  %12 = bitcast i8* %3 to <2 x %struct.quicklistNode*>*, !dbg !1057
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %12, align 8, !dbg !1057, !tbaa !70
  %13 = and i32 %8, -2097152, !dbg !1058
  %14 = or i32 %13, 589824, !dbg !1058
  store i32 %14, i32* %7, align 4, !dbg !1058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  store i8* %1, i8** %5, align 8, !dbg !1061, !tbaa !180
  %15 = tail call i32 @ziplistLen(i8* %1) #4, !dbg !1062
  %16 = load i32, i32* %7, align 4, !dbg !1063
  %17 = and i32 %15, 65535, !dbg !1063
  %18 = and i32 %16, -65536, !dbg !1063
  %19 = or i32 %18, %17, !dbg !1063
  store i32 %19, i32* %7, align 4, !dbg !1063
  %20 = tail call i64 @ziplistBlobLen(i8* %1) #4, !dbg !1064
  %21 = trunc i64 %20 to i32, !dbg !1064
  store i32 %21, i32* %10, align 8, !dbg !1065, !tbaa !187
  %22 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !1066
  %23 = load %struct.quicklistNode*, %struct.quicklistNode** %22, align 8, !dbg !1066, !tbaa !490
  store %struct.quicklistNode* %23, %struct.quicklistNode** %11, align 8, !dbg !1076, !tbaa !471
  %24 = icmp eq %struct.quicklistNode* %23, null, !dbg !1077
  br i1 %24, label %37, label %25, !dbg !1078

; <label>:25:                                     ; preds = %2
  %26 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !1079
  %27 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %23, i64 0, i32 1, !dbg !1080
  %28 = bitcast %struct.quicklistNode** %27 to i64*, !dbg !1080
  %29 = load i64, i64* %28, align 8, !dbg !1080, !tbaa !223
  %30 = bitcast i8* %26 to i64*, !dbg !1081
  store i64 %29, i64* %30, align 8, !dbg !1081, !tbaa !223
  %31 = load %struct.quicklistNode*, %struct.quicklistNode** %27, align 8, !dbg !1082, !tbaa !223
  %32 = icmp eq %struct.quicklistNode* %31, null, !dbg !1083
  br i1 %32, label %35, label %33, !dbg !1084

; <label>:33:                                     ; preds = %25
  %34 = bitcast %struct.quicklistNode* %31 to i8**, !dbg !1085
  store i8* %3, i8** %34, align 8, !dbg !1085, !tbaa !471
  br label %35, !dbg !1086

; <label>:35:                                     ; preds = %33, %25
  %36 = bitcast %struct.quicklistNode** %27 to i8**, !dbg !1087
  store i8* %3, i8** %36, align 8, !dbg !1087, !tbaa !223
  br label %37, !dbg !1088

; <label>:37:                                     ; preds = %35, %2
  %38 = bitcast %struct.quicklistNode** %22 to i8**, !dbg !1089
  store i8* %3, i8** %38, align 8, !dbg !1089, !tbaa !490
  %39 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !1090
  %40 = load i64, i64* %39, align 8, !dbg !1090, !tbaa !213
  %41 = icmp eq i64 %40, 0, !dbg !1091
  br i1 %41, label %42, label %44, !dbg !1092

; <label>:42:                                     ; preds = %37
  store i8* %3, i8** %38, align 8, !dbg !1093, !tbaa !490
  %43 = bitcast %struct.quicklist* %0 to i8**, !dbg !1094
  store i8* %3, i8** %43, align 8, !dbg !1094, !tbaa !217
  br label %44, !dbg !1095

; <label>:44:                                     ; preds = %42, %37
  br i1 %24, label %56, label %45, !dbg !1096

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %23, i64 0, i32 4, !dbg !1097
  %47 = load i32, i32* %46, align 4, !dbg !1097
  %48 = and i32 %47, 1048576, !dbg !1097
  %49 = icmp eq i32 %48, 0, !dbg !1097
  br i1 %49, label %55, label %50, !dbg !1098

; <label>:50:                                     ; preds = %45
  %51 = and i32 %47, 196608, !dbg !1099
  %52 = icmp eq i32 %51, 65536, !dbg !1099
  br i1 %52, label %53, label %56, !dbg !1100

; <label>:53:                                     ; preds = %50
  %54 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %23) #4, !dbg !1101
  br label %56, !dbg !1101

; <label>:55:                                     ; preds = %45
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %23) #4, !dbg !1097
  br label %56

; <label>:56:                                     ; preds = %44, %50, %53, %55
  %57 = load i64, i64* %39, align 8, !dbg !1102, !tbaa !213
  %58 = add i64 %57, 1, !dbg !1102
  store i64 %58, i64* %39, align 8, !dbg !1102, !tbaa !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  %59 = load i32, i32* %7, align 4, !dbg !1105
  %60 = and i32 %59, 65535, !dbg !1105
  %61 = zext i32 %60 to i64, !dbg !1106
  %62 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !1107
  %63 = load i64, i64* %62, align 8, !dbg !1108, !tbaa !200
  %64 = add i64 %63, %61, !dbg !1108
  store i64 %64, i64* %62, align 8, !dbg !1108, !tbaa !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1109
  ret void, !dbg !1109
}

; Function Attrs: noredzone
declare dso_local i32 @ziplistLen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklist* @quicklistAppendValuesFromZiplist(%struct.quicklist* returned, i8*) local_unnamed_addr #0 !dbg !1110 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [32 x i8], align 16
  %7 = bitcast i8** %3 to i8*, !dbg !1127
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !1127
  %8 = bitcast i32* %4 to i8*, !dbg !1128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #5, !dbg !1128
  %9 = bitcast i64* %5 to i8*, !dbg !1129
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #5, !dbg !1129
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !1130
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %10) #5, !dbg !1130
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 32, i1 false), !dbg !1131
  %11 = tail call i8* @ziplistIndex(i8* %1, i32 0) #4, !dbg !1132
  %12 = call i32 @ziplistGet(i8* %11, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #4, !dbg !1137
  %13 = icmp eq i32 %12, 0, !dbg !1138
  br i1 %13, label %31, label %14, !dbg !1138

; <label>:14:                                     ; preds = %2, %23
  %15 = phi i8* [ %28, %23 ], [ %11, %2 ]
  %16 = load i8*, i8** %3, align 8, !dbg !1139, !tbaa !70
  %17 = icmp eq i8* %16, null, !dbg !1139
  br i1 %17, label %20, label %18, !dbg !1142

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %4, align 4, !dbg !1143, !tbaa !259
  br label %23, !dbg !1142

; <label>:20:                                     ; preds = %14
  %21 = load i64, i64* %5, align 8, !dbg !1144, !tbaa !1146
  %22 = call i32 @ll2string(i8* nonnull %10, i64 32, i64 %21) #4, !dbg !1148
  store i32 %22, i32* %4, align 4, !dbg !1149, !tbaa !259
  store i8* %10, i8** %3, align 8, !dbg !1150, !tbaa !70
  br label %23, !dbg !1151

; <label>:23:                                     ; preds = %18, %20
  %24 = phi i32 [ %19, %18 ], [ %22, %20 ], !dbg !1143
  %25 = phi i8* [ %16, %18 ], [ %10, %20 ], !dbg !1152
  %26 = zext i32 %24 to i64, !dbg !1143
  %27 = call i32 @quicklistPushTail(%struct.quicklist* %0, i8* %25, i64 %26) #6, !dbg !1153
  %28 = call i8* @ziplistNext(i8* %1, i8* %15) #4, !dbg !1154
  %29 = call i32 @ziplistGet(i8* %28, i8** nonnull %3, i32* nonnull %4, i64* nonnull %5) #4, !dbg !1137
  %30 = icmp eq i32 %29, 0, !dbg !1138
  br i1 %30, label %31, label %14, !dbg !1138, !llvm.loop !1155

; <label>:31:                                     ; preds = %23, %2
  call void @zfree(i8* %1) #4, !dbg !1157
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #5, !dbg !1158
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #5, !dbg !1158
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #5, !dbg !1158
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !1158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1159
  ret %struct.quicklist* %0, !dbg !1159
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
define dso_local %struct.quicklist* @quicklistCreateFromZiplist(i32, i32, i8*) local_unnamed_addr #0 !dbg !1160 {
  %4 = tail call i8* @zmalloc(i64 40) #4, !dbg !1173
  %5 = bitcast i8* %4 to %struct.quicklist*, !dbg !1173
  %6 = bitcast i8* %4 to <2 x %struct.quicklistNode*>*, !dbg !1176
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %6, align 8, !dbg !1176, !tbaa !70
  %7 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !1177
  %8 = bitcast i8* %7 to <2 x i64>*, !dbg !1178
  store <2 x i64> zeroinitializer, <2 x i64>* %8, align 8, !dbg !1178, !tbaa !76
  %9 = getelementptr inbounds i8, i8* %4, i64 32, !dbg !1179
  %10 = bitcast i8* %9 to i32*, !dbg !1179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1180
  %11 = icmp sgt i32 %0, -5, !dbg !1189
  %12 = select i1 %11, i32 %0, i32 -5, !dbg !1189
  %13 = icmp slt i32 %12, 32768, !dbg !1190
  %14 = select i1 %13, i32 %12, i32 32768, !dbg !1190
  %15 = and i32 %14, 65535, !dbg !1191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1192
  %16 = icmp sgt i32 %1, 0, !dbg !1196
  %17 = select i1 %16, i32 %1, i32 0, !dbg !1196
  %18 = icmp slt i32 %17, 65536, !dbg !1197
  %19 = select i1 %18, i32 %17, i32 65536, !dbg !1197
  %20 = shl i32 %19, 16, !dbg !1198
  %21 = or i32 %20, %15, !dbg !1198
  store i32 %21, i32* %10, align 8, !dbg !1198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1201
  %22 = tail call %struct.quicklist* @quicklistAppendValuesFromZiplist(%struct.quicklist* %5, i8* %2) #6, !dbg !1202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1203
  ret %struct.quicklist* %22, !dbg !1203
}

; Function Attrs: noredzone nounwind
define dso_local void @__quicklistDelNode(%struct.quicklist* nocapture, %struct.quicklistNode*) local_unnamed_addr #0 !dbg !1204 {
  %3 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 1, !dbg !1212
  %4 = load %struct.quicklistNode*, %struct.quicklistNode** %3, align 8, !dbg !1212, !tbaa !223
  %5 = icmp eq %struct.quicklistNode* %4, null, !dbg !1214
  %6 = ptrtoint %struct.quicklistNode* %4 to i64, !dbg !1215
  br i1 %5, label %11, label %7, !dbg !1215

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.quicklistNode* %1 to i64*, !dbg !1216
  %9 = load i64, i64* %8, align 8, !dbg !1216, !tbaa !471
  %10 = bitcast %struct.quicklistNode* %4 to i64*, !dbg !1217
  store i64 %9, i64* %10, align 8, !dbg !1217, !tbaa !471
  br label %11, !dbg !1218

; <label>:11:                                     ; preds = %2, %7
  %12 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 0, !dbg !1219
  %13 = load %struct.quicklistNode*, %struct.quicklistNode** %12, align 8, !dbg !1219, !tbaa !471
  %14 = icmp eq %struct.quicklistNode* %13, null, !dbg !1221
  %15 = ptrtoint %struct.quicklistNode* %13 to i64, !dbg !1222
  br i1 %14, label %19, label %16, !dbg !1222

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %13, i64 0, i32 1, !dbg !1223
  %18 = bitcast %struct.quicklistNode** %17 to i64*, !dbg !1224
  store i64 %6, i64* %18, align 8, !dbg !1224, !tbaa !223
  br label %19, !dbg !1225

; <label>:19:                                     ; preds = %11, %16
  %20 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !1226
  %21 = load %struct.quicklistNode*, %struct.quicklistNode** %20, align 8, !dbg !1226, !tbaa !490
  %22 = icmp eq %struct.quicklistNode* %21, %1, !dbg !1228
  br i1 %22, label %23, label %25, !dbg !1229

; <label>:23:                                     ; preds = %19
  %24 = bitcast %struct.quicklistNode** %20 to i64*, !dbg !1230
  store i64 %15, i64* %24, align 8, !dbg !1230, !tbaa !490
  br label %25, !dbg !1232

; <label>:25:                                     ; preds = %23, %19
  %26 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !1233
  %27 = load %struct.quicklistNode*, %struct.quicklistNode** %26, align 8, !dbg !1233, !tbaa !217
  %28 = icmp eq %struct.quicklistNode* %27, %1, !dbg !1235
  br i1 %28, label %29, label %33, !dbg !1236

; <label>:29:                                     ; preds = %25
  %30 = bitcast %struct.quicklistNode** %3 to i64*, !dbg !1237
  %31 = load i64, i64* %30, align 8, !dbg !1237, !tbaa !223
  %32 = bitcast %struct.quicklist* %0 to i64*, !dbg !1239
  store i64 %31, i64* %32, align 8, !dbg !1239, !tbaa !217
  br label %33, !dbg !1240

; <label>:33:                                     ; preds = %29, %25
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* null) #6, !dbg !1241
  %34 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !1242
  %35 = load i32, i32* %34, align 4, !dbg !1242
  %36 = and i32 %35, 65535, !dbg !1242
  %37 = zext i32 %36 to i64, !dbg !1243
  %38 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !1244
  %39 = load i64, i64* %38, align 8, !dbg !1245, !tbaa !200
  %40 = sub i64 %39, %37, !dbg !1245
  store i64 %40, i64* %38, align 8, !dbg !1245, !tbaa !200
  %41 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 2, !dbg !1246
  %42 = load i8*, i8** %41, align 8, !dbg !1246, !tbaa !180
  tail call void @zfree(i8* %42) #4, !dbg !1247
  %43 = bitcast %struct.quicklistNode* %1 to i8*, !dbg !1248
  tail call void @zfree(i8* %43) #4, !dbg !1249
  %44 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !1250
  %45 = load i64, i64* %44, align 8, !dbg !1251, !tbaa !213
  %46 = add i64 %45, -1, !dbg !1251
  store i64 %46, i64* %44, align 8, !dbg !1251, !tbaa !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1252
  ret void, !dbg !1252
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistDelIndex(%struct.quicklist* nocapture, %struct.quicklistNode*, i8**) local_unnamed_addr #0 !dbg !1253 {
  %4 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 2, !dbg !1266
  %5 = load i8*, i8** %4, align 8, !dbg !1266, !tbaa !180
  %6 = tail call i8* @ziplistDelete(i8* %5, i8** %2) #4, !dbg !1267
  store i8* %6, i8** %4, align 8, !dbg !1268, !tbaa !180
  %7 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !1269
  %8 = load i32, i32* %7, align 4, !dbg !1270
  %9 = add i32 %8, 65535, !dbg !1270
  %10 = and i32 %9, 65535, !dbg !1270
  %11 = and i32 %8, -65536, !dbg !1270
  %12 = or i32 %10, %11, !dbg !1270
  store i32 %12, i32* %7, align 4, !dbg !1270
  %13 = icmp eq i32 %10, 0, !dbg !1271
  br i1 %13, label %14, label %57, !dbg !1273

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 1, !dbg !1278
  %16 = load %struct.quicklistNode*, %struct.quicklistNode** %15, align 8, !dbg !1278, !tbaa !223
  %17 = icmp eq %struct.quicklistNode* %16, null, !dbg !1279
  %18 = ptrtoint %struct.quicklistNode* %16 to i64, !dbg !1280
  br i1 %17, label %23, label %19, !dbg !1280

; <label>:19:                                     ; preds = %14
  %20 = bitcast %struct.quicklistNode* %1 to i64*, !dbg !1281
  %21 = load i64, i64* %20, align 8, !dbg !1281, !tbaa !471
  %22 = bitcast %struct.quicklistNode* %16 to i64*, !dbg !1282
  store i64 %21, i64* %22, align 8, !dbg !1282, !tbaa !471
  br label %23, !dbg !1283

; <label>:23:                                     ; preds = %19, %14
  %24 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 0, !dbg !1284
  %25 = load %struct.quicklistNode*, %struct.quicklistNode** %24, align 8, !dbg !1284, !tbaa !471
  %26 = icmp eq %struct.quicklistNode* %25, null, !dbg !1285
  %27 = ptrtoint %struct.quicklistNode* %25 to i64, !dbg !1286
  br i1 %26, label %31, label %28, !dbg !1286

; <label>:28:                                     ; preds = %23
  %29 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %25, i64 0, i32 1, !dbg !1287
  %30 = bitcast %struct.quicklistNode** %29 to i64*, !dbg !1288
  store i64 %18, i64* %30, align 8, !dbg !1288, !tbaa !223
  br label %31, !dbg !1289

; <label>:31:                                     ; preds = %28, %23
  %32 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !1290
  %33 = load %struct.quicklistNode*, %struct.quicklistNode** %32, align 8, !dbg !1290, !tbaa !490
  %34 = icmp eq %struct.quicklistNode* %33, %1, !dbg !1291
  br i1 %34, label %35, label %37, !dbg !1292

; <label>:35:                                     ; preds = %31
  %36 = bitcast %struct.quicklistNode** %32 to i64*, !dbg !1293
  store i64 %27, i64* %36, align 8, !dbg !1293, !tbaa !490
  br label %37, !dbg !1294

; <label>:37:                                     ; preds = %35, %31
  %38 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !1295
  %39 = load %struct.quicklistNode*, %struct.quicklistNode** %38, align 8, !dbg !1295, !tbaa !217
  %40 = icmp eq %struct.quicklistNode* %39, %1, !dbg !1296
  br i1 %40, label %41, label %45, !dbg !1297

; <label>:41:                                     ; preds = %37
  %42 = bitcast %struct.quicklistNode** %15 to i64*, !dbg !1298
  %43 = load i64, i64* %42, align 8, !dbg !1298, !tbaa !223
  %44 = bitcast %struct.quicklist* %0 to i64*, !dbg !1299
  store i64 %43, i64* %44, align 8, !dbg !1299, !tbaa !217
  br label %45, !dbg !1300

; <label>:45:                                     ; preds = %37, %41
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* null) #4, !dbg !1301
  %46 = load i32, i32* %7, align 4, !dbg !1302
  %47 = and i32 %46, 65535, !dbg !1302
  %48 = zext i32 %47 to i64, !dbg !1303
  %49 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !1304
  %50 = load i64, i64* %49, align 8, !dbg !1305, !tbaa !200
  %51 = sub i64 %50, %48, !dbg !1305
  store i64 %51, i64* %49, align 8, !dbg !1305, !tbaa !200
  %52 = load i8*, i8** %4, align 8, !dbg !1306, !tbaa !180
  tail call void @zfree(i8* %52) #4, !dbg !1307
  %53 = bitcast %struct.quicklistNode* %1 to i8*, !dbg !1308
  tail call void @zfree(i8* %53) #4, !dbg !1309
  %54 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !1310
  %55 = load i64, i64* %54, align 8, !dbg !1311, !tbaa !213
  %56 = add i64 %55, -1, !dbg !1311
  store i64 %56, i64* %54, align 8, !dbg !1311, !tbaa !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1312
  br label %62, !dbg !1313

; <label>:57:                                     ; preds = %3
  %58 = tail call i64 @ziplistBlobLen(i8* %6) #4, !dbg !1314
  %59 = trunc i64 %58 to i32, !dbg !1314
  %60 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 3, !dbg !1314
  store i32 %59, i32* %60, align 8, !dbg !1314, !tbaa !187
  %61 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !1317
  br label %62

; <label>:62:                                     ; preds = %57, %45
  %63 = phi i64* [ %61, %57 ], [ %49, %45 ], !dbg !1317
  %64 = phi i32 [ 0, %57 ], [ 1, %45 ]
  %65 = load i64, i64* %63, align 8, !dbg !1318, !tbaa !200
  %66 = add i64 %65, -1, !dbg !1318
  store i64 %66, i64* %63, align 8, !dbg !1318, !tbaa !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1319
  ret i32 %64, !dbg !1319
}

; Function Attrs: noredzone
declare dso_local i8* @ziplistDelete(i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @quicklistDelEntry(%struct.quicklistIter* nocapture, %struct.quicklistEntry*) local_unnamed_addr #0 !dbg !1320 {
  %3 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 1, !dbg !1352
  %4 = load %struct.quicklistNode*, %struct.quicklistNode** %3, align 8, !dbg !1352, !tbaa !1353
  %5 = bitcast %struct.quicklistNode* %4 to i64*, !dbg !1355
  %6 = load i64, i64* %5, align 8, !dbg !1355, !tbaa !471
  %7 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %4, i64 0, i32 1, !dbg !1357
  %8 = bitcast %struct.quicklistNode** %7 to i64*, !dbg !1357
  %9 = load i64, i64* %8, align 8, !dbg !1357, !tbaa !223
  %10 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 0, !dbg !1359
  %11 = load %struct.quicklist*, %struct.quicklist** %10, align 8, !dbg !1359, !tbaa !1360
  %12 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 2, !dbg !1361
  %13 = tail call i32 @quicklistDelIndex(%struct.quicklist* %11, %struct.quicklistNode* %4, i8** nonnull %12) #6, !dbg !1362
  %14 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 2, !dbg !1364
  store i8* null, i8** %14, align 8, !dbg !1365, !tbaa !1366
  %15 = icmp eq i32 %13, 0, !dbg !1368
  br i1 %15, label %27, label %16, !dbg !1370

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 4, !dbg !1371
  %18 = load i32, i32* %17, align 8, !dbg !1371, !tbaa !1374
  switch i32 %18, label %27 [
    i32 0, label %19
    i32 1, label %23
  ], !dbg !1375

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 1, !dbg !1376
  %21 = bitcast %struct.quicklistNode** %20 to i64*, !dbg !1378
  store i64 %9, i64* %21, align 8, !dbg !1378, !tbaa !1379
  %22 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 3, !dbg !1380
  store i64 0, i64* %22, align 8, !dbg !1381, !tbaa !1382
  br label %27, !dbg !1383

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 1, !dbg !1384
  %25 = bitcast %struct.quicklistNode** %24 to i64*, !dbg !1387
  store i64 %6, i64* %25, align 8, !dbg !1387, !tbaa !1379
  %26 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 3, !dbg !1388
  store i64 -1, i64* %26, align 8, !dbg !1389, !tbaa !1382
  br label %27, !dbg !1390

; <label>:27:                                     ; preds = %16, %2, %19, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1391
  ret void, !dbg !1391
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistReplaceAtIndex(%struct.quicklist*, i64, i8*, i32) local_unnamed_addr #0 !dbg !1392 {
  %5 = alloca %struct.quicklistEntry, align 8
  %6 = bitcast %struct.quicklistEntry* %5 to i8*, !dbg !1405
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %6) #5, !dbg !1405
  %7 = call i32 @quicklistIndex(%struct.quicklist* %0, i64 %1, %struct.quicklistEntry* nonnull %5) #6, !dbg !1407
  %8 = icmp eq i32 %7, 0, !dbg !1407
  br i1 %8, label %38, label %9, !dbg !1409, !prof !683

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %5, i64 0, i32 1, !dbg !1410
  %11 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !1410, !tbaa !1353
  %12 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !1412
  %13 = load i8*, i8** %12, align 8, !dbg !1412, !tbaa !180
  %14 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %5, i64 0, i32 2, !dbg !1413
  %15 = call i8* @ziplistDelete(i8* %13, i8** nonnull %14) #4, !dbg !1414
  %16 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !1415, !tbaa !1353
  %17 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %16, i64 0, i32 2, !dbg !1416
  store i8* %15, i8** %17, align 8, !dbg !1417, !tbaa !180
  %18 = load i8*, i8** %14, align 8, !dbg !1418, !tbaa !1419
  %19 = call i8* @ziplistInsert(i8* %15, i8* %18, i8* %2, i32 %3) #4, !dbg !1420
  %20 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !1421, !tbaa !1353
  %21 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %20, i64 0, i32 2, !dbg !1422
  store i8* %19, i8** %21, align 8, !dbg !1423, !tbaa !180
  %22 = call i64 @ziplistBlobLen(i8* %19) #4, !dbg !1424
  %23 = trunc i64 %22 to i32, !dbg !1424
  %24 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !1424, !tbaa !1353
  %25 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %24, i64 0, i32 3, !dbg !1424
  store i32 %23, i32* %25, align 8, !dbg !1424, !tbaa !187
  %26 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %24, i64 0, i32 4, !dbg !1426
  %27 = load i32, i32* %26, align 4, !dbg !1426
  %28 = and i32 %27, 1048576, !dbg !1426
  %29 = icmp eq i32 %28, 0, !dbg !1426
  br i1 %29, label %37, label %30, !dbg !1429

; <label>:30:                                     ; preds = %9
  %31 = icmp ne %struct.quicklistNode* %24, null, !dbg !1430
  %32 = and i32 %27, 196608, !dbg !1430
  %33 = icmp eq i32 %32, 65536, !dbg !1430
  %34 = and i1 %31, %33, !dbg !1430
  br i1 %34, label %35, label %38, !dbg !1430

; <label>:35:                                     ; preds = %30
  %36 = call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %24) #6, !dbg !1433
  br label %38, !dbg !1433

; <label>:37:                                     ; preds = %9
  call void @__quicklistCompress(%struct.quicklist* %0, %struct.quicklistNode* %24) #6, !dbg !1426
  br label %38

; <label>:38:                                     ; preds = %4, %37, %35, %30
  %39 = phi i32 [ 1, %30 ], [ 1, %35 ], [ 1, %37 ], [ 0, %4 ], !dbg !1435
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %6) #5, !dbg !1437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  ret i32 %39, !dbg !1437
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistIndex(%struct.quicklist*, i64, %struct.quicklistEntry*) local_unnamed_addr #0 !dbg !1438 {
  %4 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 3, !dbg !1455
  %5 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 2, !dbg !1455
  %6 = bitcast i8** %5 to <2 x i8*>*, !dbg !1455
  store <2 x i8*> zeroinitializer, <2 x i8*>* %6, align 8, !dbg !1455, !tbaa !70
  %7 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 4, !dbg !1455
  store i64 -123456789, i64* %7, align 8, !dbg !1455, !tbaa !1457
  %8 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 0, !dbg !1455
  %9 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 1, !dbg !1455
  store %struct.quicklistNode* null, %struct.quicklistNode** %9, align 8, !dbg !1455, !tbaa !1353
  %10 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 6, !dbg !1455
  store i32 123456789, i32* %10, align 4, !dbg !1455, !tbaa !1458
  %11 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %2, i64 0, i32 5, !dbg !1455
  store i32 0, i32* %11, align 8, !dbg !1455, !tbaa !1459
  store %struct.quicklist* %0, %struct.quicklist** %8, align 8, !dbg !1460, !tbaa !1360
  %12 = icmp sgt i64 %1, -1, !dbg !1461
  %13 = xor i1 %12, true, !dbg !1464
  %14 = sext i1 %13 to i64, !dbg !1464
  %15 = xor i64 %14, %1, !dbg !1464
  %16 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !1465
  %17 = load i64, i64* %16, align 8, !dbg !1465, !tbaa !200
  %18 = icmp ult i64 %15, %17, !dbg !1467
  br i1 %18, label %19, label %82, !dbg !1468

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !1469
  %21 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !1472
  %22 = select i1 %12, %struct.quicklistNode** %20, %struct.quicklistNode** %21, !dbg !1464
  %23 = load %struct.quicklistNode*, %struct.quicklistNode** %22, align 8, !dbg !1474, !tbaa !70
  %24 = icmp eq %struct.quicklistNode* %23, null, !dbg !1478
  br i1 %24, label %82, label %25, !dbg !1479, !prof !683

; <label>:25:                                     ; preds = %19, %34
  %26 = phi %struct.quicklistNode* [ %38, %34 ], [ %23, %19 ]
  %27 = phi i64 [ %32, %34 ], [ 0, %19 ]
  %28 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %26, i64 0, i32 4, !dbg !1480
  %29 = load i32, i32* %28, align 4, !dbg !1480
  %30 = and i32 %29, 65535, !dbg !1480
  %31 = zext i32 %30 to i64, !dbg !1481
  %32 = add i64 %27, %31, !dbg !1482
  %33 = icmp ugt i64 %32, %15, !dbg !1483
  br i1 %33, label %40, label %34, !dbg !1484

; <label>:34:                                     ; preds = %25
  %35 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %26, i64 0, i32 1, !dbg !1485
  %36 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %26, i64 0, i32 0, !dbg !1486
  %37 = select i1 %12, %struct.quicklistNode** %35, %struct.quicklistNode** %36, !dbg !1487
  %38 = load %struct.quicklistNode*, %struct.quicklistNode** %37, align 8, !dbg !1474, !tbaa !70
  %39 = icmp eq %struct.quicklistNode* %38, null, !dbg !1478
  br i1 %39, label %82, label %25, !dbg !1479, !prof !683, !llvm.loop !1488

; <label>:40:                                     ; preds = %25
  %41 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %26, i64 0, i32 4, !dbg !1480
  store %struct.quicklistNode* %26, %struct.quicklistNode** %9, align 8, !dbg !1490, !tbaa !1353
  %42 = xor i64 %15, 4294967295, !dbg !1491
  %43 = add i64 %27, %42, !dbg !1494
  %44 = sub i64 %15, %27, !dbg !1495
  %45 = select i1 %12, i64 %44, i64 %43, !dbg !1497
  %46 = trunc i64 %45 to i32, !dbg !1498
  store i32 %46, i32* %10, align 4, !dbg !1498, !tbaa !1458
  %47 = load i32, i32* %41, align 4, !dbg !1499
  %48 = and i32 %47, 196608, !dbg !1499
  %49 = icmp eq i32 %48, 131072, !dbg !1499
  br i1 %49, label %50, label %75, !dbg !1502

; <label>:50:                                     ; preds = %40
  %51 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %26, i64 0, i32 3, !dbg !1506
  %52 = load i32, i32* %51, align 8, !dbg !1506, !tbaa !187
  %53 = zext i32 %52 to i64, !dbg !1507
  %54 = tail call i8* @zmalloc(i64 %53) #4, !dbg !1508
  %55 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %26, i64 0, i32 2, !dbg !1510
  %56 = load i8*, i8** %55, align 8, !dbg !1510, !tbaa !180
  %57 = getelementptr inbounds i8, i8* %56, i64 4, !dbg !1512
  %58 = bitcast i8* %56 to i32*, !dbg !1513
  %59 = load i32, i32* %58, align 4, !dbg !1513, !tbaa !259
  %60 = load i32, i32* %51, align 8, !dbg !1514, !tbaa !187
  %61 = tail call i32 @lzf_decompress(i8* nonnull %57, i32 %59, i8* %54, i32 %60) #4, !dbg !1515
  %62 = icmp eq i32 %61, 0, !dbg !1516
  br i1 %62, label %63, label %64, !dbg !1517

; <label>:63:                                     ; preds = %50
  tail call void @zfree(i8* %54) #4, !dbg !1518
  br label %68, !dbg !1519

; <label>:64:                                     ; preds = %50
  tail call void @zfree(i8* %56) #4, !dbg !1520
  store i8* %54, i8** %55, align 8, !dbg !1521, !tbaa !180
  %65 = load i32, i32* %41, align 4, !dbg !1522
  %66 = and i32 %65, -196609, !dbg !1522
  %67 = or i32 %66, 65536, !dbg !1522
  store i32 %67, i32* %41, align 4, !dbg !1522
  br label %68, !dbg !1523

; <label>:68:                                     ; preds = %63, %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1524
  %69 = load %struct.quicklistNode*, %struct.quicklistNode** %9, align 8, !dbg !1525, !tbaa !1353
  %70 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %69, i64 0, i32 4, !dbg !1525
  %71 = load i32, i32* %70, align 4, !dbg !1525
  %72 = or i32 %71, 1048576, !dbg !1525
  store i32 %72, i32* %70, align 4, !dbg !1525
  %73 = load %struct.quicklistNode*, %struct.quicklistNode** %9, align 8, !dbg !1526, !tbaa !1353
  %74 = load i32, i32* %10, align 4, !dbg !1527, !tbaa !1458
  br label %75, !dbg !1525

; <label>:75:                                     ; preds = %68, %40
  %76 = phi i32 [ %74, %68 ], [ %46, %40 ], !dbg !1527
  %77 = phi %struct.quicklistNode* [ %73, %68 ], [ %26, %40 ], !dbg !1526
  %78 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %77, i64 0, i32 2, !dbg !1528
  %79 = load i8*, i8** %78, align 8, !dbg !1528, !tbaa !180
  %80 = tail call i8* @ziplistIndex(i8* %79, i32 %76) #4, !dbg !1529
  store i8* %80, i8** %5, align 8, !dbg !1530, !tbaa !1419
  %81 = tail call i32 @ziplistGet(i8* %80, i8** nonnull %4, i32* nonnull %11, i64* nonnull %7) #4, !dbg !1531
  br label %82, !dbg !1532

; <label>:82:                                     ; preds = %34, %19, %3, %75
  %83 = phi i32 [ 1, %75 ], [ 0, %3 ], [ 0, %19 ], [ 0, %34 ], !dbg !1533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1535
  ret i32 %83, !dbg !1535
}

; Function Attrs: noredzone
declare dso_local i8* @ziplistInsert(i8*, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklistNode* @_quicklistZiplistMerge(%struct.quicklist* nocapture, %struct.quicklistNode*, %struct.quicklistNode*) local_unnamed_addr #0 !dbg !1536 {
  %4 = icmp eq %struct.quicklistNode* %1, null, !dbg !1550
  br i1 %4, label %29, label %5, !dbg !1550

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !1550
  %7 = load i32, i32* %6, align 4, !dbg !1550
  %8 = and i32 %7, 196608, !dbg !1550
  %9 = icmp eq i32 %8, 131072, !dbg !1550
  br i1 %9, label %10, label %29, !dbg !1553

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 3, !dbg !1557
  %12 = load i32, i32* %11, align 8, !dbg !1557, !tbaa !187
  %13 = zext i32 %12 to i64, !dbg !1558
  %14 = tail call i8* @zmalloc(i64 %13) #4, !dbg !1559
  %15 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 2, !dbg !1561
  %16 = load i8*, i8** %15, align 8, !dbg !1561, !tbaa !180
  %17 = getelementptr inbounds i8, i8* %16, i64 4, !dbg !1563
  %18 = bitcast i8* %16 to i32*, !dbg !1564
  %19 = load i32, i32* %18, align 4, !dbg !1564, !tbaa !259
  %20 = load i32, i32* %11, align 8, !dbg !1565, !tbaa !187
  %21 = tail call i32 @lzf_decompress(i8* nonnull %17, i32 %19, i8* %14, i32 %20) #4, !dbg !1566
  %22 = icmp eq i32 %21, 0, !dbg !1567
  br i1 %22, label %23, label %24, !dbg !1568

; <label>:23:                                     ; preds = %10
  tail call void @zfree(i8* %14) #4, !dbg !1569
  br label %28, !dbg !1570

; <label>:24:                                     ; preds = %10
  tail call void @zfree(i8* %16) #4, !dbg !1571
  store i8* %14, i8** %15, align 8, !dbg !1572, !tbaa !180
  %25 = load i32, i32* %6, align 4, !dbg !1573
  %26 = and i32 %25, -196609, !dbg !1573
  %27 = or i32 %26, 65536, !dbg !1573
  store i32 %27, i32* %6, align 4, !dbg !1573
  br label %28, !dbg !1574

; <label>:28:                                     ; preds = %23, %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1575
  br label %29, !dbg !1576

; <label>:29:                                     ; preds = %3, %28, %5
  %30 = icmp eq %struct.quicklistNode* %2, null, !dbg !1577
  br i1 %30, label %55, label %31, !dbg !1577

; <label>:31:                                     ; preds = %29
  %32 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 4, !dbg !1577
  %33 = load i32, i32* %32, align 4, !dbg !1577
  %34 = and i32 %33, 196608, !dbg !1577
  %35 = icmp eq i32 %34, 131072, !dbg !1577
  br i1 %35, label %36, label %55, !dbg !1580

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 3, !dbg !1584
  %38 = load i32, i32* %37, align 8, !dbg !1584, !tbaa !187
  %39 = zext i32 %38 to i64, !dbg !1585
  %40 = tail call i8* @zmalloc(i64 %39) #4, !dbg !1586
  %41 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 2, !dbg !1588
  %42 = load i8*, i8** %41, align 8, !dbg !1588, !tbaa !180
  %43 = getelementptr inbounds i8, i8* %42, i64 4, !dbg !1590
  %44 = bitcast i8* %42 to i32*, !dbg !1591
  %45 = load i32, i32* %44, align 4, !dbg !1591, !tbaa !259
  %46 = load i32, i32* %37, align 8, !dbg !1592, !tbaa !187
  %47 = tail call i32 @lzf_decompress(i8* nonnull %43, i32 %45, i8* %40, i32 %46) #4, !dbg !1593
  %48 = icmp eq i32 %47, 0, !dbg !1594
  br i1 %48, label %49, label %50, !dbg !1595

; <label>:49:                                     ; preds = %36
  tail call void @zfree(i8* %40) #4, !dbg !1596
  br label %54, !dbg !1597

; <label>:50:                                     ; preds = %36
  tail call void @zfree(i8* %42) #4, !dbg !1598
  store i8* %40, i8** %41, align 8, !dbg !1599, !tbaa !180
  %51 = load i32, i32* %32, align 4, !dbg !1600
  %52 = and i32 %51, -196609, !dbg !1600
  %53 = or i32 %52, 65536, !dbg !1600
  store i32 %53, i32* %32, align 4, !dbg !1600
  br label %54, !dbg !1601

; <label>:54:                                     ; preds = %49, %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1602
  br label %55, !dbg !1603

; <label>:55:                                     ; preds = %29, %31, %54
  %56 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 2, !dbg !1604
  %57 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %2, i64 0, i32 2, !dbg !1605
  %58 = tail call i8* @ziplistMerge(i8** nonnull %56, i8** nonnull %57) #4, !dbg !1606
  %59 = icmp eq i8* %58, null, !dbg !1606
  br i1 %59, label %139, label %60, !dbg !1607

; <label>:60:                                     ; preds = %55
  %61 = load i8*, i8** %56, align 8, !dbg !1610, !tbaa !180
  %62 = icmp eq i8* %61, null, !dbg !1612
  br i1 %62, label %69, label %63, !dbg !1613

; <label>:63:                                     ; preds = %60
  %64 = load i8*, i8** %57, align 8, !dbg !1614, !tbaa !180
  %65 = icmp eq i8* %64, null, !dbg !1616
  %66 = select i1 %65, %struct.quicklistNode* %1, %struct.quicklistNode* null, !dbg !1617
  %67 = select i1 %65, %struct.quicklistNode* %2, %struct.quicklistNode* null, !dbg !1617
  %68 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %66, i64 0, i32 2, !dbg !1618
  br label %69, !dbg !1617

; <label>:69:                                     ; preds = %63, %60
  %70 = phi i8** [ %68, %63 ], [ %57, %60 ], !dbg !1618
  %71 = phi %struct.quicklistNode* [ %66, %63 ], [ %2, %60 ], !dbg !1619
  %72 = phi %struct.quicklistNode* [ %67, %63 ], [ %1, %60 ], !dbg !1619
  %73 = load i8*, i8** %70, align 8, !dbg !1618, !tbaa !180
  %74 = tail call i32 @ziplistLen(i8* %73) #4, !dbg !1621
  %75 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %71, i64 0, i32 4, !dbg !1622
  %76 = load i32, i32* %75, align 4, !dbg !1623
  %77 = and i32 %74, 65535, !dbg !1623
  %78 = and i32 %76, -65536, !dbg !1623
  %79 = or i32 %78, %77, !dbg !1623
  store i32 %79, i32* %75, align 4, !dbg !1623
  %80 = load i8*, i8** %70, align 8, !dbg !1624, !tbaa !180
  %81 = tail call i64 @ziplistBlobLen(i8* %80) #4, !dbg !1624
  %82 = trunc i64 %81 to i32, !dbg !1624
  %83 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %71, i64 0, i32 3, !dbg !1624
  store i32 %82, i32* %83, align 8, !dbg !1624, !tbaa !187
  %84 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %72, i64 0, i32 4, !dbg !1626
  %85 = load i32, i32* %84, align 4, !dbg !1627
  %86 = and i32 %85, -65536, !dbg !1627
  store i32 %86, i32* %84, align 4, !dbg !1627
  %87 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %72, i64 0, i32 1, !dbg !1631
  %88 = load %struct.quicklistNode*, %struct.quicklistNode** %87, align 8, !dbg !1631, !tbaa !223
  %89 = icmp eq %struct.quicklistNode* %88, null, !dbg !1632
  %90 = ptrtoint %struct.quicklistNode* %88 to i64, !dbg !1633
  br i1 %89, label %95, label %91, !dbg !1633

; <label>:91:                                     ; preds = %69
  %92 = bitcast %struct.quicklistNode* %72 to i64*, !dbg !1634
  %93 = load i64, i64* %92, align 8, !dbg !1634, !tbaa !471
  %94 = bitcast %struct.quicklistNode* %88 to i64*, !dbg !1635
  store i64 %93, i64* %94, align 8, !dbg !1635, !tbaa !471
  br label %95, !dbg !1636

; <label>:95:                                     ; preds = %91, %69
  %96 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %72, i64 0, i32 0, !dbg !1637
  %97 = load %struct.quicklistNode*, %struct.quicklistNode** %96, align 8, !dbg !1637, !tbaa !471
  %98 = icmp eq %struct.quicklistNode* %97, null, !dbg !1638
  %99 = ptrtoint %struct.quicklistNode* %97 to i64, !dbg !1639
  br i1 %98, label %103, label %100, !dbg !1639

; <label>:100:                                    ; preds = %95
  %101 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %97, i64 0, i32 1, !dbg !1640
  %102 = bitcast %struct.quicklistNode** %101 to i64*, !dbg !1641
  store i64 %90, i64* %102, align 8, !dbg !1641, !tbaa !223
  br label %103, !dbg !1642

; <label>:103:                                    ; preds = %100, %95
  %104 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !1643
  %105 = load %struct.quicklistNode*, %struct.quicklistNode** %104, align 8, !dbg !1643, !tbaa !490
  %106 = icmp eq %struct.quicklistNode* %105, %72, !dbg !1644
  br i1 %106, label %107, label %109, !dbg !1645

; <label>:107:                                    ; preds = %103
  %108 = bitcast %struct.quicklistNode** %104 to i64*, !dbg !1646
  store i64 %99, i64* %108, align 8, !dbg !1646, !tbaa !490
  br label %109, !dbg !1647

; <label>:109:                                    ; preds = %107, %103
  %110 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !1648
  %111 = load %struct.quicklistNode*, %struct.quicklistNode** %110, align 8, !dbg !1648, !tbaa !217
  %112 = icmp eq %struct.quicklistNode* %111, %72, !dbg !1649
  br i1 %112, label %113, label %117, !dbg !1650

; <label>:113:                                    ; preds = %109
  %114 = bitcast %struct.quicklistNode** %87 to i64*, !dbg !1651
  %115 = load i64, i64* %114, align 8, !dbg !1651, !tbaa !223
  %116 = bitcast %struct.quicklist* %0 to i64*, !dbg !1652
  store i64 %115, i64* %116, align 8, !dbg !1652, !tbaa !217
  br label %117, !dbg !1653

; <label>:117:                                    ; preds = %109, %113
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* null) #4, !dbg !1654
  %118 = load i32, i32* %84, align 4, !dbg !1655
  %119 = and i32 %118, 65535, !dbg !1655
  %120 = zext i32 %119 to i64, !dbg !1656
  %121 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !1657
  %122 = load i64, i64* %121, align 8, !dbg !1658, !tbaa !200
  %123 = sub i64 %122, %120, !dbg !1658
  store i64 %123, i64* %121, align 8, !dbg !1658, !tbaa !200
  %124 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %72, i64 0, i32 2, !dbg !1659
  %125 = load i8*, i8** %124, align 8, !dbg !1659, !tbaa !180
  tail call void @zfree(i8* %125) #4, !dbg !1660
  %126 = bitcast %struct.quicklistNode* %72 to i8*, !dbg !1661
  tail call void @zfree(i8* %126) #4, !dbg !1662
  %127 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !1663
  %128 = load i64, i64* %127, align 8, !dbg !1664, !tbaa !213
  %129 = add i64 %128, -1, !dbg !1664
  store i64 %129, i64* %127, align 8, !dbg !1664, !tbaa !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1665
  %130 = load i32, i32* %75, align 4, !dbg !1666
  %131 = and i32 %130, 1048576, !dbg !1666
  %132 = icmp eq i32 %131, 0, !dbg !1666
  br i1 %132, label %138, label %133, !dbg !1669

; <label>:133:                                    ; preds = %117
  %134 = and i32 %130, 196608, !dbg !1670
  %135 = icmp eq i32 %134, 65536, !dbg !1670
  br i1 %135, label %136, label %139, !dbg !1670

; <label>:136:                                    ; preds = %133
  %137 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %71) #6, !dbg !1673
  br label %139, !dbg !1673

; <label>:138:                                    ; preds = %117
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %71) #6, !dbg !1666
  br label %139

; <label>:139:                                    ; preds = %55, %138, %136, %133
  %140 = phi %struct.quicklistNode* [ %71, %133 ], [ %71, %136 ], [ %71, %138 ], [ null, %55 ], !dbg !1675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1677
  ret %struct.quicklistNode* %140, !dbg !1677
}

; Function Attrs: noredzone
declare dso_local i8* @ziplistMerge(i8**, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @_quicklistMergeNodes(%struct.quicklist* nocapture, %struct.quicklistNode*) local_unnamed_addr #0 !dbg !1678 {
  %3 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !1690
  %4 = load i32, i32* %3, align 8, !dbg !1690
  %5 = shl i32 %4, 16, !dbg !1690
  %6 = ashr exact i32 %5, 16, !dbg !1690
  %7 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 0, !dbg !1697
  %8 = load %struct.quicklistNode*, %struct.quicklistNode** %7, align 8, !dbg !1697, !tbaa !471
  %9 = icmp eq %struct.quicklistNode* %8, null, !dbg !1699
  br i1 %9, label %13, label %10, !dbg !1700

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %8, i64 0, i32 0, !dbg !1701
  %12 = load %struct.quicklistNode*, %struct.quicklistNode** %11, align 8, !dbg !1701, !tbaa !471
  br label %13, !dbg !1704

; <label>:13:                                     ; preds = %10, %2
  %14 = phi %struct.quicklistNode* [ null, %2 ], [ %12, %10 ], !dbg !1705
  %15 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 1, !dbg !1706
  %16 = load %struct.quicklistNode*, %struct.quicklistNode** %15, align 8, !dbg !1706, !tbaa !223
  %17 = icmp eq %struct.quicklistNode* %16, null, !dbg !1708
  br i1 %17, label %21, label %18, !dbg !1709

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %16, i64 0, i32 1, !dbg !1710
  %20 = load %struct.quicklistNode*, %struct.quicklistNode** %19, align 8, !dbg !1710, !tbaa !223
  br label %21, !dbg !1713

; <label>:21:                                     ; preds = %18, %13
  %22 = phi %struct.quicklistNode* [ null, %13 ], [ %20, %18 ], !dbg !1705
  %23 = icmp ne %struct.quicklistNode* %8, null, !dbg !1719
  %24 = icmp ne %struct.quicklistNode* %14, null, !dbg !1720
  %25 = and i1 %23, %24, !dbg !1721
  br i1 %25, label %26, label %45, !dbg !1721

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %8, i64 0, i32 3, !dbg !1722
  %28 = load i32, i32* %27, align 8, !dbg !1722, !tbaa !187
  %29 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %14, i64 0, i32 3, !dbg !1723
  %30 = load i32, i32* %29, align 8, !dbg !1723, !tbaa !187
  %31 = add i32 %28, -11, !dbg !1724
  %32 = add i32 %31, %30, !dbg !1725
  %33 = icmp ugt i32 %6, -6, !dbg !1729
  br i1 %33, label %35, label %34, !dbg !1730

; <label>:34:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1731
  br label %43, !dbg !1732

; <label>:35:                                     ; preds = %26
  %36 = zext i32 %32 to i64, !dbg !1733
  %37 = xor i32 %6, -1, !dbg !1735
  %38 = sext i32 %37 to i64, !dbg !1736
  %39 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %38, !dbg !1738
  %40 = load i64, i64* %39, align 8, !dbg !1738, !tbaa !76
  %41 = icmp ult i64 %40, %36, !dbg !1739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1731
  br i1 %41, label %43, label %42, !dbg !1732, !prof !683

; <label>:42:                                     ; preds = %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1740
  br label %55, !dbg !1741

; <label>:43:                                     ; preds = %35, %34
  %44 = icmp ult i32 %32, 8193, !dbg !1742
  br i1 %44, label %46, label %45, !dbg !1743

; <label>:45:                                     ; preds = %21, %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1740
  br label %57, !dbg !1741

; <label>:46:                                     ; preds = %43
  %47 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %8, i64 0, i32 4, !dbg !1744
  %48 = load i32, i32* %47, align 4, !dbg !1744
  %49 = and i32 %48, 65535, !dbg !1744
  %50 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %14, i64 0, i32 4, !dbg !1745
  %51 = load i32, i32* %50, align 4, !dbg !1745
  %52 = and i32 %51, 65535, !dbg !1745
  %53 = add nuw nsw i32 %52, %49, !dbg !1746
  %54 = icmp sgt i32 %53, %6, !dbg !1747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1740
  br i1 %54, label %57, label %55, !dbg !1741

; <label>:55:                                     ; preds = %42, %46
  %56 = tail call %struct.quicklistNode* @_quicklistZiplistMerge(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %14, %struct.quicklistNode* nonnull %8) #6, !dbg !1748
  br label %57, !dbg !1750

; <label>:57:                                     ; preds = %45, %46, %55
  %58 = icmp ne %struct.quicklistNode* %16, null, !dbg !1756
  %59 = icmp ne %struct.quicklistNode* %22, null, !dbg !1757
  %60 = and i1 %58, %59, !dbg !1758
  br i1 %60, label %61, label %80, !dbg !1758

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %16, i64 0, i32 3, !dbg !1759
  %63 = load i32, i32* %62, align 8, !dbg !1759, !tbaa !187
  %64 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %22, i64 0, i32 3, !dbg !1760
  %65 = load i32, i32* %64, align 8, !dbg !1760, !tbaa !187
  %66 = add i32 %63, -11, !dbg !1761
  %67 = add i32 %66, %65, !dbg !1762
  %68 = icmp ugt i32 %6, -6, !dbg !1766
  br i1 %68, label %70, label %69, !dbg !1767

; <label>:69:                                     ; preds = %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1768
  br label %78, !dbg !1769

; <label>:70:                                     ; preds = %61
  %71 = zext i32 %67 to i64, !dbg !1770
  %72 = xor i32 %6, -1, !dbg !1772
  %73 = sext i32 %72 to i64, !dbg !1773
  %74 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %73, !dbg !1775
  %75 = load i64, i64* %74, align 8, !dbg !1775, !tbaa !76
  %76 = icmp ult i64 %75, %71, !dbg !1776
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1768
  br i1 %76, label %78, label %77, !dbg !1769, !prof !683

; <label>:77:                                     ; preds = %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1777
  br label %90, !dbg !1778

; <label>:78:                                     ; preds = %70, %69
  %79 = icmp ult i32 %67, 8193, !dbg !1779
  br i1 %79, label %81, label %80, !dbg !1780

; <label>:80:                                     ; preds = %57, %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1777
  br label %92, !dbg !1778

; <label>:81:                                     ; preds = %78
  %82 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %16, i64 0, i32 4, !dbg !1781
  %83 = load i32, i32* %82, align 4, !dbg !1781
  %84 = and i32 %83, 65535, !dbg !1781
  %85 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %22, i64 0, i32 4, !dbg !1782
  %86 = load i32, i32* %85, align 4, !dbg !1782
  %87 = and i32 %86, 65535, !dbg !1782
  %88 = add nuw nsw i32 %87, %84, !dbg !1783
  %89 = icmp sgt i32 %88, %6, !dbg !1784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1777
  br i1 %89, label %92, label %90, !dbg !1778

; <label>:90:                                     ; preds = %77, %81
  %91 = tail call %struct.quicklistNode* @_quicklistZiplistMerge(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %16, %struct.quicklistNode* nonnull %22) #6, !dbg !1785
  br label %92, !dbg !1787

; <label>:92:                                     ; preds = %80, %81, %90
  %93 = load %struct.quicklistNode*, %struct.quicklistNode** %7, align 8, !dbg !1788, !tbaa !471
  %94 = icmp eq %struct.quicklistNode* %93, null, !dbg !1794
  br i1 %94, label %114, label %95, !dbg !1795

; <label>:95:                                     ; preds = %92
  %96 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 3, !dbg !1796
  %97 = load i32, i32* %96, align 8, !dbg !1796, !tbaa !187
  %98 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %93, i64 0, i32 3, !dbg !1797
  %99 = load i32, i32* %98, align 8, !dbg !1797, !tbaa !187
  %100 = add i32 %97, -11, !dbg !1798
  %101 = add i32 %100, %99, !dbg !1799
  %102 = icmp ugt i32 %6, -6, !dbg !1803
  br i1 %102, label %104, label %103, !dbg !1804

; <label>:103:                                    ; preds = %95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1805
  br label %112, !dbg !1806

; <label>:104:                                    ; preds = %95
  %105 = zext i32 %101 to i64, !dbg !1807
  %106 = xor i32 %6, -1, !dbg !1809
  %107 = sext i32 %106 to i64, !dbg !1810
  %108 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %107, !dbg !1812
  %109 = load i64, i64* %108, align 8, !dbg !1812, !tbaa !76
  %110 = icmp ult i64 %109, %105, !dbg !1813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1805
  br i1 %110, label %112, label %111, !dbg !1806, !prof !683

; <label>:111:                                    ; preds = %104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1814
  br label %124, !dbg !1815

; <label>:112:                                    ; preds = %104, %103
  %113 = icmp ult i32 %101, 8193, !dbg !1816
  br i1 %113, label %115, label %114, !dbg !1817

; <label>:114:                                    ; preds = %92, %112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1814
  br label %127, !dbg !1815

; <label>:115:                                    ; preds = %112
  %116 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %1, i64 0, i32 4, !dbg !1818
  %117 = load i32, i32* %116, align 4, !dbg !1818
  %118 = and i32 %117, 65535, !dbg !1818
  %119 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %93, i64 0, i32 4, !dbg !1819
  %120 = load i32, i32* %119, align 4, !dbg !1819
  %121 = and i32 %120, 65535, !dbg !1819
  %122 = add nuw nsw i32 %121, %118, !dbg !1820
  %123 = icmp sgt i32 %122, %6, !dbg !1821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1814
  br i1 %123, label %127, label %124, !dbg !1815

; <label>:124:                                    ; preds = %111, %115
  %125 = tail call %struct.quicklistNode* @_quicklistZiplistMerge(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %93, %struct.quicklistNode* nonnull %1) #6, !dbg !1822
  %126 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %125, i64 0, i32 1, !dbg !1824
  br label %127, !dbg !1826

; <label>:127:                                    ; preds = %114, %115, %124
  %128 = phi %struct.quicklistNode** [ %15, %114 ], [ %15, %115 ], [ %126, %124 ], !dbg !1824
  %129 = phi %struct.quicklistNode* [ %1, %114 ], [ %1, %115 ], [ %125, %124 ], !dbg !1827
  %130 = load %struct.quicklistNode*, %struct.quicklistNode** %128, align 8, !dbg !1824, !tbaa !223
  %131 = icmp ne %struct.quicklistNode* %129, null, !dbg !1833
  %132 = icmp ne %struct.quicklistNode* %130, null, !dbg !1834
  %133 = and i1 %131, %132, !dbg !1835
  br i1 %133, label %134, label %153, !dbg !1835

; <label>:134:                                    ; preds = %127
  %135 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %129, i64 0, i32 3, !dbg !1836
  %136 = load i32, i32* %135, align 8, !dbg !1836, !tbaa !187
  %137 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %130, i64 0, i32 3, !dbg !1837
  %138 = load i32, i32* %137, align 8, !dbg !1837, !tbaa !187
  %139 = add i32 %136, -11, !dbg !1838
  %140 = add i32 %139, %138, !dbg !1839
  %141 = icmp ugt i32 %6, -6, !dbg !1843
  br i1 %141, label %143, label %142, !dbg !1844

; <label>:142:                                    ; preds = %134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1845
  br label %151, !dbg !1846

; <label>:143:                                    ; preds = %134
  %144 = zext i32 %140 to i64, !dbg !1847
  %145 = xor i32 %6, -1, !dbg !1849
  %146 = sext i32 %145 to i64, !dbg !1850
  %147 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %146, !dbg !1852
  %148 = load i64, i64* %147, align 8, !dbg !1852, !tbaa !76
  %149 = icmp ult i64 %148, %144, !dbg !1853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1845
  br i1 %149, label %151, label %150, !dbg !1846, !prof !683

; <label>:150:                                    ; preds = %143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1854
  br label %163, !dbg !1855

; <label>:151:                                    ; preds = %143, %142
  %152 = icmp ult i32 %140, 8193, !dbg !1856
  br i1 %152, label %154, label %153, !dbg !1857

; <label>:153:                                    ; preds = %127, %151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1854
  br label %165, !dbg !1855

; <label>:154:                                    ; preds = %151
  %155 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %129, i64 0, i32 4, !dbg !1858
  %156 = load i32, i32* %155, align 4, !dbg !1858
  %157 = and i32 %156, 65535, !dbg !1858
  %158 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %130, i64 0, i32 4, !dbg !1859
  %159 = load i32, i32* %158, align 4, !dbg !1859
  %160 = and i32 %159, 65535, !dbg !1859
  %161 = add nuw nsw i32 %160, %157, !dbg !1860
  %162 = icmp sgt i32 %161, %6, !dbg !1861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1854
  br i1 %162, label %165, label %163, !dbg !1855

; <label>:163:                                    ; preds = %150, %154
  %164 = tail call %struct.quicklistNode* @_quicklistZiplistMerge(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %129, %struct.quicklistNode* nonnull %130) #6, !dbg !1862
  br label %165, !dbg !1864

; <label>:165:                                    ; preds = %153, %154, %163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1865
  ret void, !dbg !1865
}

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklistNode* @_quicklistSplitNode(%struct.quicklistNode* nocapture, i32, i32) local_unnamed_addr #0 !dbg !1866 {
  %4 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 3, !dbg !1882
  %5 = load i32, i32* %4, align 8, !dbg !1882, !tbaa !187
  %6 = zext i32 %5 to i64, !dbg !1883
  %7 = tail call i8* @zmalloc(i64 32) #4, !dbg !1885
  %8 = bitcast i8* %7 to %struct.quicklistNode*, !dbg !1885
  %9 = getelementptr inbounds i8, i8* %7, i64 16, !dbg !1888
  %10 = bitcast i8* %9 to i8**, !dbg !1888
  store i8* null, i8** %10, align 8, !dbg !1889, !tbaa !180
  %11 = getelementptr inbounds i8, i8* %7, i64 28, !dbg !1890
  %12 = bitcast i8* %11 to i32*, !dbg !1890
  %13 = load i32, i32* %12, align 4, !dbg !1891
  %14 = getelementptr inbounds i8, i8* %7, i64 24, !dbg !1892
  %15 = bitcast i8* %14 to i32*, !dbg !1892
  store i32 0, i32* %15, align 8, !dbg !1893, !tbaa !187
  %16 = bitcast i8* %7 to <2 x %struct.quicklistNode*>*, !dbg !1894
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %16, align 8, !dbg !1894, !tbaa !70
  %17 = and i32 %13, -2097152, !dbg !1895
  %18 = or i32 %17, 589824, !dbg !1895
  store i32 %18, i32* %12, align 4, !dbg !1895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1896
  %19 = tail call i8* @zmalloc(i64 %6) #4, !dbg !1898
  store i8* %19, i8** %10, align 8, !dbg !1899, !tbaa !180
  %20 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 2, !dbg !1900
  %21 = load i8*, i8** %20, align 8, !dbg !1900, !tbaa !180
  %22 = tail call i8* @memcpy(i8* %19, i8* %21, i64 %6) #4, !dbg !1901
  %23 = icmp ne i32 %2, 0, !dbg !1902
  %24 = add nsw i32 %1, 1, !dbg !1903
  %25 = select i1 %23, i32 %24, i32 0, !dbg !1902
  %26 = select i1 %23, i32 -1, i32 %1, !dbg !1905
  %27 = select i1 %23, i32 0, i32 %1, !dbg !1907
  %28 = select i1 %23, i32 %24, i32 -1, !dbg !1909
  %29 = load i8*, i8** %20, align 8, !dbg !1911, !tbaa !180
  %30 = tail call i8* @ziplistDeleteRange(i8* %29, i32 %25, i32 %26) #4, !dbg !1912
  store i8* %30, i8** %20, align 8, !dbg !1913, !tbaa !180
  %31 = tail call i32 @ziplistLen(i8* %30) #4, !dbg !1914
  %32 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %0, i64 0, i32 4, !dbg !1915
  %33 = load i32, i32* %32, align 4, !dbg !1916
  %34 = and i32 %31, 65535, !dbg !1916
  %35 = and i32 %33, -65536, !dbg !1916
  %36 = or i32 %35, %34, !dbg !1916
  store i32 %36, i32* %32, align 4, !dbg !1916
  %37 = load i8*, i8** %20, align 8, !dbg !1917, !tbaa !180
  %38 = tail call i64 @ziplistBlobLen(i8* %37) #4, !dbg !1917
  %39 = trunc i64 %38 to i32, !dbg !1917
  store i32 %39, i32* %4, align 8, !dbg !1917, !tbaa !187
  %40 = load i8*, i8** %10, align 8, !dbg !1919, !tbaa !180
  %41 = tail call i8* @ziplistDeleteRange(i8* %40, i32 %27, i32 %28) #4, !dbg !1920
  store i8* %41, i8** %10, align 8, !dbg !1921, !tbaa !180
  %42 = tail call i32 @ziplistLen(i8* %41) #4, !dbg !1922
  %43 = load i32, i32* %12, align 4, !dbg !1923
  %44 = and i32 %42, 65535, !dbg !1923
  %45 = and i32 %43, -65536, !dbg !1923
  %46 = or i32 %45, %44, !dbg !1923
  store i32 %46, i32* %12, align 4, !dbg !1923
  %47 = load i8*, i8** %10, align 8, !dbg !1924, !tbaa !180
  %48 = tail call i64 @ziplistBlobLen(i8* %47) #4, !dbg !1924
  %49 = trunc i64 %48 to i32, !dbg !1924
  store i32 %49, i32* %15, align 8, !dbg !1924, !tbaa !187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1926
  ret %struct.quicklistNode* %8, !dbg !1926
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @ziplistDeleteRange(i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @_quicklistInsert(%struct.quicklist* nocapture, %struct.quicklistEntry* nocapture readonly, i8*, i64, i32) local_unnamed_addr #0 !dbg !1927 {
  %6 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !1957
  %7 = load i32, i32* %6, align 8, !dbg !1957
  %8 = shl i32 %7, 16, !dbg !1957
  %9 = ashr exact i32 %8, 16, !dbg !1957
  %10 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 1, !dbg !1959
  %11 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !1959, !tbaa !1353
  %12 = icmp eq %struct.quicklistNode* %11, null, !dbg !1962
  br i1 %12, label %13, label %59, !dbg !1964

; <label>:13:                                     ; preds = %5
  %14 = tail call i8* @zmalloc(i64 32) #4, !dbg !1965
  %15 = getelementptr inbounds i8, i8* %14, i64 16, !dbg !1969
  %16 = bitcast i8* %15 to i8**, !dbg !1969
  store i8* null, i8** %16, align 8, !dbg !1970, !tbaa !180
  %17 = getelementptr inbounds i8, i8* %14, i64 28, !dbg !1971
  %18 = bitcast i8* %17 to i32*, !dbg !1971
  %19 = load i32, i32* %18, align 4, !dbg !1972
  %20 = getelementptr inbounds i8, i8* %14, i64 24, !dbg !1973
  %21 = bitcast i8* %20 to i32*, !dbg !1973
  store i32 0, i32* %21, align 8, !dbg !1974, !tbaa !187
  %22 = bitcast i8* %14 to <2 x %struct.quicklistNode*>*, !dbg !1975
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %22, align 8, !dbg !1975, !tbaa !70
  %23 = and i32 %19, -2097152, !dbg !1976
  %24 = or i32 %23, 589824, !dbg !1976
  store i32 %24, i32* %18, align 4, !dbg !1976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1977
  %25 = tail call i8* @ziplistNew() #4, !dbg !1978
  %26 = trunc i64 %3 to i32, !dbg !1979
  %27 = tail call i8* @ziplistPush(i8* %25, i8* %2, i32 %26, i32 0) #4, !dbg !1980
  store i8* %27, i8** %16, align 8, !dbg !1981, !tbaa !180
  %28 = icmp eq i32 %4, 0, !dbg !1987
  br i1 %28, label %36, label %29, !dbg !1988

; <label>:29:                                     ; preds = %13
  %30 = bitcast i8* %14 to %struct.quicklistNode**, !dbg !1989
  store %struct.quicklistNode* null, %struct.quicklistNode** %30, align 8, !dbg !1990, !tbaa !471
  %31 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !1991
  %32 = load %struct.quicklistNode*, %struct.quicklistNode** %31, align 8, !dbg !1991, !tbaa !490
  %33 = icmp eq %struct.quicklistNode* %32, null, !dbg !1992
  br i1 %33, label %34, label %44, !dbg !1993

; <label>:34:                                     ; preds = %29
  %35 = bitcast %struct.quicklistNode** %31 to i8**, !dbg !1994
  store i8* %14, i8** %35, align 8, !dbg !1994, !tbaa !490
  br label %44, !dbg !1995

; <label>:36:                                     ; preds = %13
  %37 = getelementptr inbounds i8, i8* %14, i64 8, !dbg !1996
  %38 = bitcast i8* %37 to %struct.quicklistNode**, !dbg !1996
  store %struct.quicklistNode* null, %struct.quicklistNode** %38, align 8, !dbg !1997, !tbaa !223
  %39 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !1998
  %40 = load %struct.quicklistNode*, %struct.quicklistNode** %39, align 8, !dbg !1998, !tbaa !217
  %41 = icmp eq %struct.quicklistNode* %40, null, !dbg !1999
  br i1 %41, label %42, label %44, !dbg !2000

; <label>:42:                                     ; preds = %36
  %43 = bitcast %struct.quicklist* %0 to i8**, !dbg !2001
  store i8* %14, i8** %43, align 8, !dbg !2001, !tbaa !217
  br label %44, !dbg !2002

; <label>:44:                                     ; preds = %42, %36, %34, %29
  %45 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !2003
  %46 = load i64, i64* %45, align 8, !dbg !2003, !tbaa !213
  %47 = icmp eq i64 %46, 0, !dbg !2004
  br i1 %47, label %48, label %52, !dbg !2005

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !2006
  %50 = bitcast %struct.quicklistNode** %49 to i8**, !dbg !2007
  store i8* %14, i8** %50, align 8, !dbg !2007, !tbaa !490
  %51 = bitcast %struct.quicklist* %0 to i8**, !dbg !2008
  store i8* %14, i8** %51, align 8, !dbg !2008, !tbaa !217
  br label %52, !dbg !2009

; <label>:52:                                     ; preds = %44, %48
  %53 = add i64 %46, 1, !dbg !2010
  store i64 %53, i64* %45, align 8, !dbg !2010, !tbaa !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2011
  %54 = load i32, i32* %18, align 4, !dbg !2012
  %55 = add i32 %54, 1, !dbg !2012
  %56 = and i32 %55, 65535, !dbg !2012
  %57 = and i32 %54, -65536, !dbg !2012
  %58 = or i32 %56, %57, !dbg !2012
  store i32 %58, i32* %18, align 4, !dbg !2012
  br label %486, !dbg !2013

; <label>:59:                                     ; preds = %5
  %60 = icmp ult i64 %3, 254, !dbg !2019
  %61 = select i1 %60, i32 1, i32 5, !dbg !2020
  %62 = icmp ult i64 %3, 64, !dbg !2022
  br i1 %62, label %63, label %65, !dbg !2023

; <label>:63:                                     ; preds = %59
  %64 = add nuw nsw i32 %61, 1, !dbg !2024
  br label %71, !dbg !2025

; <label>:65:                                     ; preds = %59
  %66 = icmp ult i64 %3, 16384, !dbg !2026
  br i1 %66, label %67, label %69, !dbg !2027, !prof !696

; <label>:67:                                     ; preds = %65
  %68 = or i32 %61, 2, !dbg !2028
  br label %71, !dbg !2029

; <label>:69:                                     ; preds = %65
  %70 = add nuw nsw i32 %61, 5, !dbg !2030
  br label %71

; <label>:71:                                     ; preds = %69, %67, %63
  %72 = phi i32 [ %64, %63 ], [ %68, %67 ], [ %70, %69 ], !dbg !2031
  %73 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 3, !dbg !2032
  %74 = load i32, i32* %73, align 8, !dbg !2032, !tbaa !187
  %75 = trunc i64 %3 to i32, !dbg !2033
  %76 = add i32 %72, %75, !dbg !2033
  %77 = add i32 %76, %74, !dbg !2033
  %78 = icmp ugt i32 %9, -6, !dbg !2037
  br i1 %78, label %80, label %79, !dbg !2038

; <label>:79:                                     ; preds = %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2039
  br label %87, !dbg !2040

; <label>:80:                                     ; preds = %71
  %81 = zext i32 %77 to i64, !dbg !2041
  %82 = xor i32 %9, -1, !dbg !2043
  %83 = sext i32 %82 to i64, !dbg !2044
  %84 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %83, !dbg !2046
  %85 = load i64, i64* %84, align 8, !dbg !2046, !tbaa !76
  %86 = icmp ult i64 %85, %81, !dbg !2047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2039
  br i1 %86, label %87, label %95, !dbg !2040, !prof !683

; <label>:87:                                     ; preds = %80, %79
  %88 = icmp ult i32 %77, 8193, !dbg !2048
  br i1 %88, label %89, label %95, !dbg !2049

; <label>:89:                                     ; preds = %87
  %90 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 4, !dbg !2050
  %91 = load i32, i32* %90, align 4, !dbg !2050
  %92 = and i32 %91, 65535, !dbg !2050
  %93 = icmp slt i32 %92, %9, !dbg !2051
  %94 = zext i1 %93 to i32, !dbg !2052
  br label %95, !dbg !2052

; <label>:95:                                     ; preds = %80, %87, %89
  %96 = phi i32 [ 1, %80 ], [ 0, %87 ], [ %94, %89 ], !dbg !2053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2054
  %97 = icmp eq i32 %96, 0, !dbg !2055
  %98 = xor i32 %96, 1, !dbg !2056
  %99 = icmp ne i32 %4, 0, !dbg !2057
  %100 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 6, !dbg !2059
  %101 = load i32, i32* %100, align 4, !dbg !2059, !tbaa !1458
  br i1 %99, label %102, label %144, !dbg !2061

; <label>:102:                                    ; preds = %95
  %103 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 4, !dbg !2062
  %104 = load i32, i32* %103, align 4, !dbg !2062
  %105 = and i32 %104, 65535, !dbg !2062
  %106 = icmp eq i32 %101, %105, !dbg !2063
  br i1 %106, label %107, label %183, !dbg !2064

; <label>:107:                                    ; preds = %102
  %108 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 1, !dbg !2065
  %109 = load %struct.quicklistNode*, %struct.quicklistNode** %108, align 8, !dbg !2065, !tbaa !223
  %110 = icmp eq %struct.quicklistNode* %109, null, !dbg !2072
  br i1 %110, label %137, label %111, !dbg !2073, !prof !683

; <label>:111:                                    ; preds = %107
  br i1 %62, label %112, label %114, !dbg !2075

; <label>:112:                                    ; preds = %111
  %113 = add nuw nsw i32 %61, 1, !dbg !2076
  br label %120, !dbg !2077

; <label>:114:                                    ; preds = %111
  %115 = icmp ult i64 %3, 16384, !dbg !2078
  br i1 %115, label %116, label %118, !dbg !2079, !prof !696

; <label>:116:                                    ; preds = %114
  %117 = or i32 %61, 2, !dbg !2080
  br label %120, !dbg !2081

; <label>:118:                                    ; preds = %114
  %119 = add nuw nsw i32 %61, 5, !dbg !2082
  br label %120

; <label>:120:                                    ; preds = %118, %116, %112
  %121 = phi i32 [ %113, %112 ], [ %117, %116 ], [ %119, %118 ], !dbg !2083
  %122 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %109, i64 0, i32 3, !dbg !2084
  %123 = load i32, i32* %122, align 8, !dbg !2084, !tbaa !187
  %124 = add i32 %121, %75, !dbg !2085
  %125 = add i32 %124, %123, !dbg !2085
  br i1 %78, label %127, label %126, !dbg !2089

; <label>:126:                                    ; preds = %120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2090
  br label %135, !dbg !2091

; <label>:127:                                    ; preds = %120
  %128 = zext i32 %125 to i64, !dbg !2092
  %129 = xor i32 %9, -1, !dbg !2094
  %130 = sext i32 %129 to i64, !dbg !2095
  %131 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %130, !dbg !2097
  %132 = load i64, i64* %131, align 8, !dbg !2097, !tbaa !76
  %133 = icmp ult i64 %132, %128, !dbg !2098
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2090
  br i1 %133, label %135, label %134, !dbg !2091, !prof !683

; <label>:134:                                    ; preds = %127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2099
  br label %183, !dbg !2100

; <label>:135:                                    ; preds = %127, %126
  %136 = icmp ult i32 %125, 8193, !dbg !2101
  br i1 %136, label %138, label %137, !dbg !2102

; <label>:137:                                    ; preds = %107, %135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2099
  br label %143, !dbg !2100

; <label>:138:                                    ; preds = %135
  %139 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %109, i64 0, i32 4, !dbg !2103
  %140 = load i32, i32* %139, align 4, !dbg !2103
  %141 = and i32 %140, 65535, !dbg !2103
  %142 = icmp slt i32 %141, %9, !dbg !2104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2099
  br i1 %142, label %183, label %143, !dbg !2100

; <label>:143:                                    ; preds = %138, %137
  br label %183, !dbg !2100

; <label>:144:                                    ; preds = %95
  %145 = icmp eq i32 %101, 0, !dbg !2105
  br i1 %145, label %146, label %238, !dbg !2106

; <label>:146:                                    ; preds = %144
  %147 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 0, !dbg !2107
  %148 = load %struct.quicklistNode*, %struct.quicklistNode** %147, align 8, !dbg !2107, !tbaa !471
  %149 = icmp eq %struct.quicklistNode* %148, null, !dbg !2114
  br i1 %149, label %176, label %150, !dbg !2115, !prof !683

; <label>:150:                                    ; preds = %146
  br i1 %62, label %151, label %153, !dbg !2117

; <label>:151:                                    ; preds = %150
  %152 = add nuw nsw i32 %61, 1, !dbg !2118
  br label %159, !dbg !2119

; <label>:153:                                    ; preds = %150
  %154 = icmp ult i64 %3, 16384, !dbg !2120
  br i1 %154, label %155, label %157, !dbg !2121, !prof !696

; <label>:155:                                    ; preds = %153
  %156 = or i32 %61, 2, !dbg !2122
  br label %159, !dbg !2123

; <label>:157:                                    ; preds = %153
  %158 = add nuw nsw i32 %61, 5, !dbg !2124
  br label %159

; <label>:159:                                    ; preds = %157, %155, %151
  %160 = phi i32 [ %152, %151 ], [ %156, %155 ], [ %158, %157 ], !dbg !2125
  %161 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %148, i64 0, i32 3, !dbg !2126
  %162 = load i32, i32* %161, align 8, !dbg !2126, !tbaa !187
  %163 = add i32 %160, %75, !dbg !2127
  %164 = add i32 %163, %162, !dbg !2127
  br i1 %78, label %166, label %165, !dbg !2131

; <label>:165:                                    ; preds = %159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2132
  br label %174, !dbg !2133

; <label>:166:                                    ; preds = %159
  %167 = zext i32 %164 to i64, !dbg !2134
  %168 = xor i32 %9, -1, !dbg !2136
  %169 = sext i32 %168 to i64, !dbg !2137
  %170 = getelementptr inbounds [5 x i64], [5 x i64]* @optimization_level, i64 0, i64 %169, !dbg !2139
  %171 = load i64, i64* %170, align 8, !dbg !2139, !tbaa !76
  %172 = icmp ult i64 %171, %167, !dbg !2140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2132
  br i1 %172, label %174, label %173, !dbg !2133, !prof !683

; <label>:173:                                    ; preds = %166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2141
  br label %238, !dbg !2142

; <label>:174:                                    ; preds = %166, %165
  %175 = icmp ult i32 %164, 8193, !dbg !2143
  br i1 %175, label %177, label %176, !dbg !2144

; <label>:176:                                    ; preds = %146, %174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2141
  br label %182, !dbg !2142

; <label>:177:                                    ; preds = %174
  %178 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %148, i64 0, i32 4, !dbg !2145
  %179 = load i32, i32* %178, align 4, !dbg !2145
  %180 = and i32 %179, 65535, !dbg !2145
  %181 = icmp slt i32 %180, %9, !dbg !2146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2141
  br i1 %181, label %238, label %182, !dbg !2142

; <label>:182:                                    ; preds = %177, %176
  br label %238, !dbg !2142

; <label>:183:                                    ; preds = %138, %143, %134, %102
  %184 = phi i32 [ 0, %134 ], [ 0, %138 ], [ 1, %143 ], [ 0, %102 ]
  %185 = phi i32 [ 1, %134 ], [ 1, %138 ], [ 1, %143 ], [ 0, %102 ]
  %186 = icmp eq i32 %98, 0, !dbg !2147
  br i1 %186, label %187, label %238, !dbg !2148

; <label>:187:                                    ; preds = %183
  %188 = and i32 %104, 196608, !dbg !2149
  %189 = icmp eq i32 %188, 131072, !dbg !2149
  br i1 %189, label %192, label %190, !dbg !2152

; <label>:190:                                    ; preds = %187
  %191 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !2153
  br label %212, !dbg !2152

; <label>:192:                                    ; preds = %187
  %193 = zext i32 %74 to i64, !dbg !2157
  %194 = tail call i8* @zmalloc(i64 %193) #4, !dbg !2158
  %195 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !2160
  %196 = load i8*, i8** %195, align 8, !dbg !2160, !tbaa !180
  %197 = getelementptr inbounds i8, i8* %196, i64 4, !dbg !2162
  %198 = bitcast i8* %196 to i32*, !dbg !2163
  %199 = load i32, i32* %198, align 4, !dbg !2163, !tbaa !259
  %200 = load i32, i32* %73, align 8, !dbg !2164, !tbaa !187
  %201 = tail call i32 @lzf_decompress(i8* nonnull %197, i32 %199, i8* %194, i32 %200) #4, !dbg !2165
  %202 = icmp eq i32 %201, 0, !dbg !2166
  br i1 %202, label %203, label %205, !dbg !2167

; <label>:203:                                    ; preds = %192
  tail call void @zfree(i8* %194) #4, !dbg !2168
  %204 = load i32, i32* %103, align 4, !dbg !2169
  br label %209, !dbg !2170

; <label>:205:                                    ; preds = %192
  tail call void @zfree(i8* %196) #4, !dbg !2171
  store i8* %194, i8** %195, align 8, !dbg !2172, !tbaa !180
  %206 = load i32, i32* %103, align 4, !dbg !2173
  %207 = and i32 %206, -196609, !dbg !2173
  %208 = or i32 %207, 65536, !dbg !2173
  store i32 %208, i32* %103, align 4, !dbg !2173
  br label %209, !dbg !2174

; <label>:209:                                    ; preds = %203, %205
  %210 = phi i32 [ %204, %203 ], [ %208, %205 ], !dbg !2169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2175
  %211 = or i32 %210, 1048576, !dbg !2169
  store i32 %211, i32* %103, align 4, !dbg !2169
  br label %212, !dbg !2169

; <label>:212:                                    ; preds = %190, %209
  %213 = phi i8** [ %191, %190 ], [ %195, %209 ], !dbg !2153
  %214 = load i8*, i8** %213, align 8, !dbg !2153, !tbaa !180
  %215 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 2, !dbg !2176
  %216 = load i8*, i8** %215, align 8, !dbg !2176, !tbaa !1419
  %217 = tail call i8* @ziplistNext(i8* %214, i8* %216) #4, !dbg !2177
  %218 = icmp eq i8* %217, null, !dbg !2179
  %219 = load i8*, i8** %213, align 8, !dbg !2181, !tbaa !180
  br i1 %218, label %220, label %222, !dbg !2183

; <label>:220:                                    ; preds = %212
  %221 = tail call i8* @ziplistPush(i8* %219, i8* %2, i32 %75, i32 1) #4, !dbg !2184
  br label %224, !dbg !2186

; <label>:222:                                    ; preds = %212
  %223 = tail call i8* @ziplistInsert(i8* %219, i8* nonnull %217, i8* %2, i32 %75) #4, !dbg !2187
  br label %224

; <label>:224:                                    ; preds = %222, %220
  %225 = phi i8* [ %223, %222 ], [ %221, %220 ]
  store i8* %225, i8** %213, align 8, !dbg !2188, !tbaa !180
  %226 = load i32, i32* %103, align 4, !dbg !2189
  %227 = add i32 %226, 1, !dbg !2189
  %228 = and i32 %227, 65535, !dbg !2189
  %229 = and i32 %226, -65536, !dbg !2189
  %230 = or i32 %228, %229, !dbg !2189
  store i32 %230, i32* %103, align 4, !dbg !2189
  %231 = tail call i64 @ziplistBlobLen(i8* %225) #4, !dbg !2190
  %232 = trunc i64 %231 to i32, !dbg !2190
  store i32 %232, i32* %73, align 8, !dbg !2190, !tbaa !187
  %233 = load i32, i32* %103, align 4, !dbg !2192
  %234 = and i32 %233, 1245184, !dbg !2195
  %235 = icmp eq i32 %234, 1114112, !dbg !2195
  br i1 %235, label %236, label %486, !dbg !2195

; <label>:236:                                    ; preds = %224
  %237 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %11) #6, !dbg !2196
  br label %486, !dbg !2196

; <label>:238:                                    ; preds = %177, %144, %173, %182, %183
  %239 = phi i32 [ 0, %183 ], [ 1, %182 ], [ 1, %177 ], [ 1, %173 ], [ 0, %144 ]
  %240 = phi i32 [ 0, %183 ], [ 1, %182 ], [ 0, %177 ], [ 0, %173 ], [ 0, %144 ]
  %241 = phi i32 [ %184, %183 ], [ 0, %182 ], [ 0, %177 ], [ 0, %173 ], [ 0, %144 ]
  %242 = phi i32 [ %185, %183 ], [ 0, %182 ], [ 0, %177 ], [ 0, %173 ], [ 0, %144 ]
  %243 = or i32 %98, %4, !dbg !2200
  %244 = icmp eq i32 %243, 0, !dbg !2200
  br i1 %244, label %245, label %290, !dbg !2200

; <label>:245:                                    ; preds = %238
  %246 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 4, !dbg !2202
  %247 = load i32, i32* %246, align 4, !dbg !2202
  %248 = and i32 %247, 196608, !dbg !2202
  %249 = icmp eq i32 %248, 131072, !dbg !2202
  br i1 %249, label %252, label %250, !dbg !2206

; <label>:250:                                    ; preds = %245
  %251 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !2207
  br label %272, !dbg !2206

; <label>:252:                                    ; preds = %245
  %253 = zext i32 %74 to i64, !dbg !2211
  %254 = tail call i8* @zmalloc(i64 %253) #4, !dbg !2212
  %255 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !2214
  %256 = load i8*, i8** %255, align 8, !dbg !2214, !tbaa !180
  %257 = getelementptr inbounds i8, i8* %256, i64 4, !dbg !2216
  %258 = bitcast i8* %256 to i32*, !dbg !2217
  %259 = load i32, i32* %258, align 4, !dbg !2217, !tbaa !259
  %260 = load i32, i32* %73, align 8, !dbg !2218, !tbaa !187
  %261 = tail call i32 @lzf_decompress(i8* nonnull %257, i32 %259, i8* %254, i32 %260) #4, !dbg !2219
  %262 = icmp eq i32 %261, 0, !dbg !2220
  br i1 %262, label %263, label %265, !dbg !2221

; <label>:263:                                    ; preds = %252
  tail call void @zfree(i8* %254) #4, !dbg !2222
  %264 = load i32, i32* %246, align 4, !dbg !2223
  br label %269, !dbg !2224

; <label>:265:                                    ; preds = %252
  tail call void @zfree(i8* %256) #4, !dbg !2225
  store i8* %254, i8** %255, align 8, !dbg !2226, !tbaa !180
  %266 = load i32, i32* %246, align 4, !dbg !2227
  %267 = and i32 %266, -196609, !dbg !2227
  %268 = or i32 %267, 65536, !dbg !2227
  store i32 %268, i32* %246, align 4, !dbg !2227
  br label %269, !dbg !2228

; <label>:269:                                    ; preds = %263, %265
  %270 = phi i32 [ %264, %263 ], [ %268, %265 ], !dbg !2223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2229
  %271 = or i32 %270, 1048576, !dbg !2223
  store i32 %271, i32* %246, align 4, !dbg !2223
  br label %272, !dbg !2223

; <label>:272:                                    ; preds = %250, %269
  %273 = phi i8** [ %251, %250 ], [ %255, %269 ], !dbg !2207
  %274 = load i8*, i8** %273, align 8, !dbg !2207, !tbaa !180
  %275 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 2, !dbg !2230
  %276 = load i8*, i8** %275, align 8, !dbg !2230, !tbaa !1419
  %277 = tail call i8* @ziplistInsert(i8* %274, i8* %276, i8* %2, i32 %75) #4, !dbg !2231
  store i8* %277, i8** %273, align 8, !dbg !2232, !tbaa !180
  %278 = load i32, i32* %246, align 4, !dbg !2233
  %279 = add i32 %278, 1, !dbg !2233
  %280 = and i32 %279, 65535, !dbg !2233
  %281 = and i32 %278, -65536, !dbg !2233
  %282 = or i32 %280, %281, !dbg !2233
  store i32 %282, i32* %246, align 4, !dbg !2233
  %283 = tail call i64 @ziplistBlobLen(i8* %277) #4, !dbg !2234
  %284 = trunc i64 %283 to i32, !dbg !2234
  store i32 %284, i32* %73, align 8, !dbg !2234, !tbaa !187
  %285 = load i32, i32* %246, align 4, !dbg !2236
  %286 = and i32 %285, 1245184, !dbg !2239
  %287 = icmp eq i32 %286, 1114112, !dbg !2239
  br i1 %287, label %288, label %486, !dbg !2239

; <label>:288:                                    ; preds = %272
  %289 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %11) #6, !dbg !2240
  br label %486, !dbg !2240

; <label>:290:                                    ; preds = %238
  %291 = icmp ne i32 %242, 0, !dbg !2244
  %292 = and i1 %97, %291, !dbg !2246
  br i1 %292, label %293, label %347, !dbg !2246

; <label>:293:                                    ; preds = %290
  %294 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 1, !dbg !2247
  %295 = load %struct.quicklistNode*, %struct.quicklistNode** %294, align 8, !dbg !2247, !tbaa !223
  %296 = icmp ne %struct.quicklistNode* %295, null, !dbg !2248
  %297 = icmp eq i32 %241, 0, !dbg !2249
  %298 = and i1 %297, %296, !dbg !2250
  %299 = and i1 %99, %298, !dbg !2250
  br i1 %299, label %300, label %347, !dbg !2250

; <label>:300:                                    ; preds = %293
  %301 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %295, i64 0, i32 4, !dbg !2251
  %302 = load i32, i32* %301, align 4, !dbg !2251
  %303 = and i32 %302, 196608, !dbg !2251
  %304 = icmp eq i32 %303, 131072, !dbg !2251
  br i1 %304, label %308, label %305, !dbg !2255

; <label>:305:                                    ; preds = %300
  %306 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %295, i64 0, i32 2, !dbg !2256
  %307 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %295, i64 0, i32 3, !dbg !2257
  br label %330, !dbg !2255

; <label>:308:                                    ; preds = %300
  %309 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %295, i64 0, i32 3, !dbg !2262
  %310 = load i32, i32* %309, align 8, !dbg !2262, !tbaa !187
  %311 = zext i32 %310 to i64, !dbg !2263
  %312 = tail call i8* @zmalloc(i64 %311) #4, !dbg !2264
  %313 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %295, i64 0, i32 2, !dbg !2266
  %314 = load i8*, i8** %313, align 8, !dbg !2266, !tbaa !180
  %315 = getelementptr inbounds i8, i8* %314, i64 4, !dbg !2268
  %316 = bitcast i8* %314 to i32*, !dbg !2269
  %317 = load i32, i32* %316, align 4, !dbg !2269, !tbaa !259
  %318 = load i32, i32* %309, align 8, !dbg !2270, !tbaa !187
  %319 = tail call i32 @lzf_decompress(i8* nonnull %315, i32 %317, i8* %312, i32 %318) #4, !dbg !2271
  %320 = icmp eq i32 %319, 0, !dbg !2272
  br i1 %320, label %321, label %323, !dbg !2273

; <label>:321:                                    ; preds = %308
  tail call void @zfree(i8* %312) #4, !dbg !2274
  %322 = load i32, i32* %301, align 4, !dbg !2275
  br label %327, !dbg !2276

; <label>:323:                                    ; preds = %308
  tail call void @zfree(i8* %314) #4, !dbg !2277
  store i8* %312, i8** %313, align 8, !dbg !2278, !tbaa !180
  %324 = load i32, i32* %301, align 4, !dbg !2279
  %325 = and i32 %324, -196609, !dbg !2279
  %326 = or i32 %325, 65536, !dbg !2279
  store i32 %326, i32* %301, align 4, !dbg !2279
  br label %327, !dbg !2280

; <label>:327:                                    ; preds = %321, %323
  %328 = phi i32 [ %322, %321 ], [ %326, %323 ], !dbg !2275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2281
  %329 = or i32 %328, 1048576, !dbg !2275
  store i32 %329, i32* %301, align 4, !dbg !2275
  br label %330, !dbg !2275

; <label>:330:                                    ; preds = %305, %327
  %331 = phi i32* [ %307, %305 ], [ %309, %327 ], !dbg !2257
  %332 = phi i8** [ %306, %305 ], [ %313, %327 ], !dbg !2256
  %333 = load i8*, i8** %332, align 8, !dbg !2256, !tbaa !180
  %334 = tail call i8* @ziplistPush(i8* %333, i8* %2, i32 %75, i32 0) #4, !dbg !2282
  store i8* %334, i8** %332, align 8, !dbg !2283, !tbaa !180
  %335 = load i32, i32* %301, align 4, !dbg !2284
  %336 = add i32 %335, 1, !dbg !2284
  %337 = and i32 %336, 65535, !dbg !2284
  %338 = and i32 %335, -65536, !dbg !2284
  %339 = or i32 %337, %338, !dbg !2284
  store i32 %339, i32* %301, align 4, !dbg !2284
  %340 = tail call i64 @ziplistBlobLen(i8* %334) #4, !dbg !2257
  %341 = trunc i64 %340 to i32, !dbg !2257
  store i32 %341, i32* %331, align 8, !dbg !2257, !tbaa !187
  %342 = load i32, i32* %301, align 4, !dbg !2285
  %343 = and i32 %342, 1245184, !dbg !2288
  %344 = icmp eq i32 %343, 1114112, !dbg !2288
  br i1 %344, label %345, label %486, !dbg !2288

; <label>:345:                                    ; preds = %330
  %346 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %295) #6, !dbg !2289
  br label %486, !dbg !2289

; <label>:347:                                    ; preds = %293, %290
  %348 = icmp ne i32 %239, 0, !dbg !2293
  %349 = and i1 %97, %348, !dbg !2295
  br i1 %349, label %350, label %404, !dbg !2295

; <label>:350:                                    ; preds = %347
  %351 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 0, !dbg !2296
  %352 = load %struct.quicklistNode*, %struct.quicklistNode** %351, align 8, !dbg !2296, !tbaa !471
  %353 = icmp eq %struct.quicklistNode* %352, null, !dbg !2297
  %354 = or i32 %240, %4, !dbg !2298
  %355 = icmp ne i32 %354, 0, !dbg !2298
  %356 = or i1 %355, %353, !dbg !2298
  br i1 %356, label %404, label %357, !dbg !2298

; <label>:357:                                    ; preds = %350
  %358 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %352, i64 0, i32 4, !dbg !2299
  %359 = load i32, i32* %358, align 4, !dbg !2299
  %360 = and i32 %359, 196608, !dbg !2299
  %361 = icmp eq i32 %360, 131072, !dbg !2299
  br i1 %361, label %365, label %362, !dbg !2303

; <label>:362:                                    ; preds = %357
  %363 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %352, i64 0, i32 2, !dbg !2304
  %364 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %352, i64 0, i32 3, !dbg !2305
  br label %387, !dbg !2303

; <label>:365:                                    ; preds = %357
  %366 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %352, i64 0, i32 3, !dbg !2310
  %367 = load i32, i32* %366, align 8, !dbg !2310, !tbaa !187
  %368 = zext i32 %367 to i64, !dbg !2311
  %369 = tail call i8* @zmalloc(i64 %368) #4, !dbg !2312
  %370 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %352, i64 0, i32 2, !dbg !2314
  %371 = load i8*, i8** %370, align 8, !dbg !2314, !tbaa !180
  %372 = getelementptr inbounds i8, i8* %371, i64 4, !dbg !2316
  %373 = bitcast i8* %371 to i32*, !dbg !2317
  %374 = load i32, i32* %373, align 4, !dbg !2317, !tbaa !259
  %375 = load i32, i32* %366, align 8, !dbg !2318, !tbaa !187
  %376 = tail call i32 @lzf_decompress(i8* nonnull %372, i32 %374, i8* %369, i32 %375) #4, !dbg !2319
  %377 = icmp eq i32 %376, 0, !dbg !2320
  br i1 %377, label %378, label %380, !dbg !2321

; <label>:378:                                    ; preds = %365
  tail call void @zfree(i8* %369) #4, !dbg !2322
  %379 = load i32, i32* %358, align 4, !dbg !2323
  br label %384, !dbg !2324

; <label>:380:                                    ; preds = %365
  tail call void @zfree(i8* %371) #4, !dbg !2325
  store i8* %369, i8** %370, align 8, !dbg !2326, !tbaa !180
  %381 = load i32, i32* %358, align 4, !dbg !2327
  %382 = and i32 %381, -196609, !dbg !2327
  %383 = or i32 %382, 65536, !dbg !2327
  store i32 %383, i32* %358, align 4, !dbg !2327
  br label %384, !dbg !2328

; <label>:384:                                    ; preds = %378, %380
  %385 = phi i32 [ %379, %378 ], [ %383, %380 ], !dbg !2323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2329
  %386 = or i32 %385, 1048576, !dbg !2323
  store i32 %386, i32* %358, align 4, !dbg !2323
  br label %387, !dbg !2323

; <label>:387:                                    ; preds = %362, %384
  %388 = phi i32* [ %364, %362 ], [ %366, %384 ], !dbg !2305
  %389 = phi i8** [ %363, %362 ], [ %370, %384 ], !dbg !2304
  %390 = load i8*, i8** %389, align 8, !dbg !2304, !tbaa !180
  %391 = tail call i8* @ziplistPush(i8* %390, i8* %2, i32 %75, i32 1) #4, !dbg !2330
  store i8* %391, i8** %389, align 8, !dbg !2331, !tbaa !180
  %392 = load i32, i32* %358, align 4, !dbg !2332
  %393 = add i32 %392, 1, !dbg !2332
  %394 = and i32 %393, 65535, !dbg !2332
  %395 = and i32 %392, -65536, !dbg !2332
  %396 = or i32 %394, %395, !dbg !2332
  store i32 %396, i32* %358, align 4, !dbg !2332
  %397 = tail call i64 @ziplistBlobLen(i8* %391) #4, !dbg !2305
  %398 = trunc i64 %397 to i32, !dbg !2305
  store i32 %398, i32* %388, align 8, !dbg !2305, !tbaa !187
  %399 = load i32, i32* %358, align 4, !dbg !2333
  %400 = and i32 %399, 1245184, !dbg !2336
  %401 = icmp eq i32 %400, 1114112, !dbg !2336
  br i1 %401, label %402, label %486, !dbg !2336

; <label>:402:                                    ; preds = %387
  %403 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %352) #6, !dbg !2337
  br label %486, !dbg !2337

; <label>:404:                                    ; preds = %350, %347
  br i1 %97, label %405, label %486, !dbg !2341

; <label>:405:                                    ; preds = %404
  br i1 %291, label %406, label %413, !dbg !2343

; <label>:406:                                    ; preds = %405
  %407 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 1, !dbg !2344
  %408 = load %struct.quicklistNode*, %struct.quicklistNode** %407, align 8, !dbg !2344, !tbaa !223
  %409 = icmp ne %struct.quicklistNode* %408, null, !dbg !2345
  %410 = icmp ne i32 %241, 0, !dbg !2346
  %411 = and i1 %410, %409, !dbg !2347
  %412 = and i1 %99, %411, !dbg !2347
  br i1 %412, label %421, label %413, !dbg !2347

; <label>:413:                                    ; preds = %406, %405
  br i1 %348, label %414, label %443, !dbg !2348

; <label>:414:                                    ; preds = %413
  %415 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 0, !dbg !2349
  %416 = load %struct.quicklistNode*, %struct.quicklistNode** %415, align 8, !dbg !2349, !tbaa !471
  %417 = icmp eq %struct.quicklistNode* %416, null, !dbg !2350
  %418 = icmp eq i32 %240, 0, !dbg !2351
  %419 = or i1 %418, %417, !dbg !2352
  %420 = or i1 %99, %419, !dbg !2352
  br i1 %420, label %443, label %421, !dbg !2352

; <label>:421:                                    ; preds = %414, %406
  %422 = tail call i8* @zmalloc(i64 32) #4, !dbg !2353
  %423 = bitcast i8* %422 to %struct.quicklistNode*, !dbg !2353
  %424 = getelementptr inbounds i8, i8* %422, i64 16, !dbg !2357
  %425 = bitcast i8* %424 to i8**, !dbg !2357
  store i8* null, i8** %425, align 8, !dbg !2358, !tbaa !180
  %426 = getelementptr inbounds i8, i8* %422, i64 28, !dbg !2359
  %427 = bitcast i8* %426 to i32*, !dbg !2359
  %428 = load i32, i32* %427, align 4, !dbg !2360
  %429 = getelementptr inbounds i8, i8* %422, i64 24, !dbg !2361
  %430 = bitcast i8* %429 to i32*, !dbg !2361
  store i32 0, i32* %430, align 8, !dbg !2362, !tbaa !187
  %431 = bitcast i8* %422 to <2 x %struct.quicklistNode*>*, !dbg !2363
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %431, align 8, !dbg !2363, !tbaa !70
  %432 = and i32 %428, -2097152, !dbg !2364
  %433 = or i32 %432, 589824, !dbg !2364
  store i32 %433, i32* %427, align 4, !dbg !2364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2365
  %434 = tail call i8* @ziplistNew() #4, !dbg !2366
  %435 = tail call i8* @ziplistPush(i8* %434, i8* %2, i32 %75, i32 0) #4, !dbg !2367
  store i8* %435, i8** %425, align 8, !dbg !2368, !tbaa !180
  %436 = load i32, i32* %427, align 4, !dbg !2369
  %437 = add i32 %436, 1, !dbg !2369
  %438 = and i32 %437, 65535, !dbg !2369
  %439 = and i32 %436, -65536, !dbg !2369
  %440 = or i32 %438, %439, !dbg !2369
  store i32 %440, i32* %427, align 4, !dbg !2369
  %441 = tail call i64 @ziplistBlobLen(i8* %435) #4, !dbg !2370
  %442 = trunc i64 %441 to i32, !dbg !2370
  store i32 %442, i32* %430, align 8, !dbg !2370, !tbaa !187
  tail call void @__quicklistInsertNode(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %11, %struct.quicklistNode* %423, i32 %4) #6, !dbg !2372
  br label %486, !dbg !2373

; <label>:443:                                    ; preds = %413, %414
  %444 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 4, !dbg !2374
  %445 = load i32, i32* %444, align 4, !dbg !2374
  %446 = and i32 %445, 196608, !dbg !2374
  %447 = icmp eq i32 %446, 131072, !dbg !2374
  br i1 %447, label %448, label %469, !dbg !2379

; <label>:448:                                    ; preds = %443
  %449 = zext i32 %74 to i64, !dbg !2383
  %450 = tail call i8* @zmalloc(i64 %449) #4, !dbg !2384
  %451 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %11, i64 0, i32 2, !dbg !2386
  %452 = load i8*, i8** %451, align 8, !dbg !2386, !tbaa !180
  %453 = getelementptr inbounds i8, i8* %452, i64 4, !dbg !2388
  %454 = bitcast i8* %452 to i32*, !dbg !2389
  %455 = load i32, i32* %454, align 4, !dbg !2389, !tbaa !259
  %456 = load i32, i32* %73, align 8, !dbg !2390, !tbaa !187
  %457 = tail call i32 @lzf_decompress(i8* nonnull %453, i32 %455, i8* %450, i32 %456) #4, !dbg !2391
  %458 = icmp eq i32 %457, 0, !dbg !2392
  br i1 %458, label %459, label %461, !dbg !2393

; <label>:459:                                    ; preds = %448
  tail call void @zfree(i8* %450) #4, !dbg !2394
  %460 = load i32, i32* %444, align 4, !dbg !2395
  br label %465, !dbg !2396

; <label>:461:                                    ; preds = %448
  tail call void @zfree(i8* %452) #4, !dbg !2397
  store i8* %450, i8** %451, align 8, !dbg !2398, !tbaa !180
  %462 = load i32, i32* %444, align 4, !dbg !2399
  %463 = and i32 %462, -196609, !dbg !2399
  %464 = or i32 %463, 65536, !dbg !2399
  store i32 %464, i32* %444, align 4, !dbg !2399
  br label %465, !dbg !2400

; <label>:465:                                    ; preds = %459, %461
  %466 = phi i32 [ %460, %459 ], [ %464, %461 ], !dbg !2395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2401
  %467 = or i32 %466, 1048576, !dbg !2395
  store i32 %467, i32* %444, align 4, !dbg !2395
  %468 = load i32, i32* %100, align 4, !dbg !2402, !tbaa !1458
  br label %469, !dbg !2395

; <label>:469:                                    ; preds = %465, %443
  %470 = phi i32 [ %468, %465 ], [ %101, %443 ], !dbg !2402
  %471 = tail call %struct.quicklistNode* @_quicklistSplitNode(%struct.quicklistNode* nonnull %11, i32 %470, i32 %4) #6, !dbg !2403
  %472 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %471, i64 0, i32 2, !dbg !2404
  %473 = load i8*, i8** %472, align 8, !dbg !2404, !tbaa !180
  %474 = xor i1 %99, true, !dbg !2405
  %475 = zext i1 %474 to i32, !dbg !2405
  %476 = tail call i8* @ziplistPush(i8* %473, i8* %2, i32 %75, i32 %475) #4, !dbg !2406
  store i8* %476, i8** %472, align 8, !dbg !2407, !tbaa !180
  %477 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %471, i64 0, i32 4, !dbg !2408
  %478 = load i32, i32* %477, align 4, !dbg !2409
  %479 = add i32 %478, 1, !dbg !2409
  %480 = and i32 %479, 65535, !dbg !2409
  %481 = and i32 %478, -65536, !dbg !2409
  %482 = or i32 %480, %481, !dbg !2409
  store i32 %482, i32* %477, align 4, !dbg !2409
  %483 = tail call i64 @ziplistBlobLen(i8* %476) #4, !dbg !2410
  %484 = trunc i64 %483 to i32, !dbg !2410
  %485 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %471, i64 0, i32 3, !dbg !2410
  store i32 %484, i32* %485, align 8, !dbg !2410, !tbaa !187
  tail call void @__quicklistInsertNode(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %11, %struct.quicklistNode* %471, i32 %4) #6, !dbg !2412
  tail call void @_quicklistMergeNodes(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %11) #6, !dbg !2413
  br label %486, !dbg !2414

; <label>:486:                                    ; preds = %345, %330, %421, %469, %387, %402, %288, %224, %236, %272, %404, %52
  %487 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !2415
  %488 = load i64, i64* %487, align 8, !dbg !2415, !tbaa !200
  %489 = add i64 %488, 1, !dbg !2415
  store i64 %489, i64* %487, align 8, !dbg !2415, !tbaa !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2416
  ret void, !dbg !2416
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistInsertBefore(%struct.quicklist* nocapture, %struct.quicklistEntry* nocapture readonly, i8*, i64) local_unnamed_addr #0 !dbg !2417 {
  tail call void @_quicklistInsert(%struct.quicklist* %0, %struct.quicklistEntry* %1, i8* %2, i64 %3, i32 0) #6, !dbg !2429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2430
  ret void, !dbg !2430
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistInsertAfter(%struct.quicklist* nocapture, %struct.quicklistEntry* nocapture readonly, i8*, i64) local_unnamed_addr #0 !dbg !2431 {
  tail call void @_quicklistInsert(%struct.quicklist* %0, %struct.quicklistEntry* %1, i8* %2, i64 %3, i32 1) #6, !dbg !2441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2442
  ret void, !dbg !2442
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistDelRange(%struct.quicklist*, i64, i64) local_unnamed_addr #0 !dbg !2443 {
  %4 = alloca %struct.quicklistEntry, align 8
  %5 = icmp slt i64 %2, 1, !dbg !2461
  br i1 %5, label %202, label %6, !dbg !2463

; <label>:6:                                      ; preds = %3
  %7 = icmp sgt i64 %1, -1, !dbg !2465
  br i1 %7, label %8, label %11, !dbg !2467

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !2468
  %10 = load i64, i64* %9, align 8, !dbg !2468, !tbaa !200
  br label %11, !dbg !2469

; <label>:11:                                     ; preds = %6, %8
  %12 = phi i64 [ %10, %8 ], [ 0, %6 ]
  %13 = sub i64 %12, %1, !dbg !2470
  %14 = icmp ult i64 %13, %2, !dbg !2470
  %15 = select i1 %14, i64 %13, i64 %2, !dbg !2472
  %16 = bitcast %struct.quicklistEntry* %4 to i8*, !dbg !2473
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %16) #5, !dbg !2473
  %17 = call i32 @quicklistIndex(%struct.quicklist* %0, i64 %1, %struct.quicklistEntry* nonnull %4) #6, !dbg !2475
  %18 = icmp eq i32 %17, 0, !dbg !2475
  br i1 %18, label %200, label %19, !dbg !2477

; <label>:19:                                     ; preds = %11
  %20 = icmp eq i64 %15, 0, !dbg !2478
  br i1 %20, label %200, label %21, !dbg !2478

; <label>:21:                                     ; preds = %19
  %22 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 1, !dbg !2479
  %23 = load %struct.quicklistNode*, %struct.quicklistNode** %22, align 8, !dbg !2479, !tbaa !1353
  %24 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 6
  %25 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2
  %26 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1
  %27 = bitcast %struct.quicklistNode** %26 to i64*
  %28 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0
  %29 = bitcast %struct.quicklist* %0 to i64*
  %30 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3
  %31 = load i32, i32* %24, align 4, !dbg !2481, !tbaa !1458
  br label %32, !dbg !2478

; <label>:32:                                     ; preds = %21, %196
  %33 = phi i32 [ %31, %21 ], [ 0, %196 ], !dbg !2481
  %34 = phi %struct.quicklistNode* [ %23, %21 ], [ %37, %196 ]
  %35 = phi i64 [ %15, %21 ], [ %198, %196 ]
  %36 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 1, !dbg !2483
  %37 = load %struct.quicklistNode*, %struct.quicklistNode** %36, align 8, !dbg !2483, !tbaa !223
  %38 = icmp eq i32 %33, 0, !dbg !2486
  br i1 %38, label %39, label %45, !dbg !2487

; <label>:39:                                     ; preds = %32
  %40 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 4, !dbg !2488
  %41 = load i32, i32* %40, align 4, !dbg !2488
  %42 = and i32 %41, 65535, !dbg !2488
  %43 = zext i32 %42 to i64, !dbg !2489
  %44 = icmp ult i64 %35, %43, !dbg !2490
  br i1 %44, label %52, label %68, !dbg !2491

; <label>:45:                                     ; preds = %32
  %46 = icmp sgt i32 %33, -1, !dbg !2492
  br i1 %46, label %47, label %61, !dbg !2494

; <label>:47:                                     ; preds = %45
  %48 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 4
  %49 = load i32, i32* %48, align 4, !dbg !2495
  %50 = and i32 %49, 65535, !dbg !2495
  %51 = zext i32 %50 to i64, !dbg !2496
  br label %52, !dbg !2494

; <label>:52:                                     ; preds = %47, %39
  %53 = phi i64 [ %51, %47 ], [ %43, %39 ], !dbg !2496
  %54 = phi i32 [ %50, %47 ], [ %42, %39 ], !dbg !2495
  %55 = phi i32* [ %48, %47 ], [ %40, %39 ], !dbg !2495
  %56 = phi i32 [ %49, %47 ], [ %41, %39 ], !dbg !2495
  %57 = icmp ult i64 %35, %53, !dbg !2497
  br i1 %57, label %104, label %58, !dbg !2498

; <label>:58:                                     ; preds = %52
  %59 = sub nsw i32 %54, %33, !dbg !2499
  %60 = sext i32 %59 to i64, !dbg !2501
  br label %104, !dbg !2503

; <label>:61:                                     ; preds = %45
  %62 = sub nsw i32 0, %33, !dbg !2504
  %63 = sext i32 %62 to i64, !dbg !2504
  %64 = icmp ult i64 %35, %63, !dbg !2507
  %65 = select i1 %64, i64 %35, i64 %63, !dbg !2509
  %66 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 4
  %67 = load i32, i32* %66, align 4, !dbg !2510
  br label %104, !dbg !2509

; <label>:68:                                     ; preds = %39
  %69 = icmp eq %struct.quicklistNode* %37, null, !dbg !2519
  %70 = ptrtoint %struct.quicklistNode* %37 to i64, !dbg !2520
  br i1 %69, label %75, label %71, !dbg !2520

; <label>:71:                                     ; preds = %68
  %72 = bitcast %struct.quicklistNode* %34 to i64*, !dbg !2521
  %73 = load i64, i64* %72, align 8, !dbg !2521, !tbaa !471
  %74 = bitcast %struct.quicklistNode* %37 to i64*, !dbg !2522
  store i64 %73, i64* %74, align 8, !dbg !2522, !tbaa !471
  br label %75, !dbg !2523

; <label>:75:                                     ; preds = %71, %68
  %76 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 0, !dbg !2524
  %77 = load %struct.quicklistNode*, %struct.quicklistNode** %76, align 8, !dbg !2524, !tbaa !471
  %78 = icmp eq %struct.quicklistNode* %77, null, !dbg !2525
  %79 = ptrtoint %struct.quicklistNode* %77 to i64, !dbg !2526
  br i1 %78, label %83, label %80, !dbg !2526

; <label>:80:                                     ; preds = %75
  %81 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %77, i64 0, i32 1, !dbg !2527
  %82 = bitcast %struct.quicklistNode** %81 to i64*, !dbg !2528
  store i64 %70, i64* %82, align 8, !dbg !2528, !tbaa !223
  br label %83, !dbg !2529

; <label>:83:                                     ; preds = %80, %75
  %84 = load %struct.quicklistNode*, %struct.quicklistNode** %26, align 8, !dbg !2530, !tbaa !490
  %85 = icmp eq %struct.quicklistNode* %84, %34, !dbg !2531
  br i1 %85, label %86, label %87, !dbg !2532

; <label>:86:                                     ; preds = %83
  store i64 %79, i64* %27, align 8, !dbg !2533, !tbaa !490
  br label %87, !dbg !2534

; <label>:87:                                     ; preds = %86, %83
  %88 = load %struct.quicklistNode*, %struct.quicklistNode** %28, align 8, !dbg !2535, !tbaa !217
  %89 = icmp eq %struct.quicklistNode* %88, %34, !dbg !2536
  br i1 %89, label %90, label %93, !dbg !2537

; <label>:90:                                     ; preds = %87
  %91 = bitcast %struct.quicklistNode** %36 to i64*, !dbg !2538
  %92 = load i64, i64* %91, align 8, !dbg !2538, !tbaa !223
  store i64 %92, i64* %29, align 8, !dbg !2539, !tbaa !217
  br label %93, !dbg !2540

; <label>:93:                                     ; preds = %87, %90
  call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* null) #4, !dbg !2541
  %94 = load i32, i32* %40, align 4, !dbg !2542
  %95 = and i32 %94, 65535, !dbg !2542
  %96 = zext i32 %95 to i64, !dbg !2543
  %97 = load i64, i64* %25, align 8, !dbg !2544, !tbaa !200
  %98 = sub i64 %97, %96, !dbg !2544
  store i64 %98, i64* %25, align 8, !dbg !2544, !tbaa !200
  %99 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 2, !dbg !2545
  %100 = load i8*, i8** %99, align 8, !dbg !2545, !tbaa !180
  call void @zfree(i8* %100) #4, !dbg !2546
  %101 = bitcast %struct.quicklistNode* %34 to i8*, !dbg !2547
  call void @zfree(i8* %101) #4, !dbg !2548
  %102 = load i64, i64* %30, align 8, !dbg !2549, !tbaa !213
  %103 = add i64 %102, -1, !dbg !2549
  store i64 %103, i64* %30, align 8, !dbg !2549, !tbaa !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2550
  br label %196, !dbg !2551

; <label>:104:                                    ; preds = %52, %61, %58
  %105 = phi i32* [ %55, %52 ], [ %66, %61 ], [ %55, %58 ], !dbg !2510
  %106 = phi i32 [ %56, %52 ], [ %67, %61 ], [ %56, %58 ], !dbg !2510
  %107 = phi i64 [ %35, %52 ], [ %65, %61 ], [ %60, %58 ]
  %108 = and i32 %106, 196608, !dbg !2510
  %109 = icmp eq i32 %108, 131072, !dbg !2510
  br i1 %109, label %113, label %110, !dbg !2552

; <label>:110:                                    ; preds = %104
  %111 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 2, !dbg !2553
  %112 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 3, !dbg !2554
  br label %136, !dbg !2552

; <label>:113:                                    ; preds = %104
  %114 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 3, !dbg !2559
  %115 = load i32, i32* %114, align 8, !dbg !2559, !tbaa !187
  %116 = zext i32 %115 to i64, !dbg !2560
  %117 = call i8* @zmalloc(i64 %116) #4, !dbg !2561
  %118 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 2, !dbg !2563
  %119 = load i8*, i8** %118, align 8, !dbg !2563, !tbaa !180
  %120 = getelementptr inbounds i8, i8* %119, i64 4, !dbg !2565
  %121 = bitcast i8* %119 to i32*, !dbg !2566
  %122 = load i32, i32* %121, align 4, !dbg !2566, !tbaa !259
  %123 = load i32, i32* %114, align 8, !dbg !2567, !tbaa !187
  %124 = call i32 @lzf_decompress(i8* nonnull %120, i32 %122, i8* %117, i32 %123) #4, !dbg !2568
  %125 = icmp eq i32 %124, 0, !dbg !2569
  br i1 %125, label %126, label %128, !dbg !2570

; <label>:126:                                    ; preds = %113
  call void @zfree(i8* %117) #4, !dbg !2571
  %127 = load i32, i32* %105, align 4, !dbg !2572
  br label %132, !dbg !2573

; <label>:128:                                    ; preds = %113
  call void @zfree(i8* %119) #4, !dbg !2574
  store i8* %117, i8** %118, align 8, !dbg !2575, !tbaa !180
  %129 = load i32, i32* %105, align 4, !dbg !2576
  %130 = and i32 %129, -196609, !dbg !2576
  %131 = or i32 %130, 65536, !dbg !2576
  store i32 %131, i32* %105, align 4, !dbg !2576
  br label %132, !dbg !2577

; <label>:132:                                    ; preds = %126, %128
  %133 = phi i32 [ %127, %126 ], [ %131, %128 ], !dbg !2572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2578
  %134 = or i32 %133, 1048576, !dbg !2572
  store i32 %134, i32* %105, align 4, !dbg !2572
  %135 = load i32, i32* %24, align 4, !dbg !2579, !tbaa !1458
  br label %136, !dbg !2572

; <label>:136:                                    ; preds = %110, %132
  %137 = phi i32* [ %112, %110 ], [ %114, %132 ], !dbg !2554
  %138 = phi i8** [ %111, %110 ], [ %118, %132 ], !dbg !2553
  %139 = phi i32 [ %33, %110 ], [ %135, %132 ], !dbg !2579
  %140 = load i8*, i8** %138, align 8, !dbg !2553, !tbaa !180
  %141 = trunc i64 %107 to i32, !dbg !2580
  %142 = call i8* @ziplistDeleteRange(i8* %140, i32 %139, i32 %141) #4, !dbg !2581
  store i8* %142, i8** %138, align 8, !dbg !2582, !tbaa !180
  %143 = call i64 @ziplistBlobLen(i8* %142) #4, !dbg !2554
  %144 = trunc i64 %143 to i32, !dbg !2554
  store i32 %144, i32* %137, align 8, !dbg !2554, !tbaa !187
  %145 = load i32, i32* %105, align 4, !dbg !2583
  %146 = sub i32 %145, %141, !dbg !2583
  %147 = and i32 %146, 65535, !dbg !2583
  %148 = and i32 %145, -65536, !dbg !2583
  %149 = or i32 %147, %148, !dbg !2583
  store i32 %149, i32* %105, align 4, !dbg !2583
  %150 = load i64, i64* %25, align 8, !dbg !2584, !tbaa !200
  %151 = sub i64 %150, %107, !dbg !2584
  store i64 %151, i64* %25, align 8, !dbg !2584, !tbaa !200
  %152 = load i32, i32* %105, align 4, !dbg !2585
  %153 = and i32 %152, 65535, !dbg !2585
  %154 = icmp eq i32 %153, 0, !dbg !2585
  br i1 %154, label %155, label %191, !dbg !2588

; <label>:155:                                    ; preds = %136
  %156 = load %struct.quicklistNode*, %struct.quicklistNode** %36, align 8, !dbg !2593, !tbaa !223
  %157 = icmp eq %struct.quicklistNode* %156, null, !dbg !2594
  %158 = ptrtoint %struct.quicklistNode* %156 to i64, !dbg !2595
  br i1 %157, label %163, label %159, !dbg !2595

; <label>:159:                                    ; preds = %155
  %160 = bitcast %struct.quicklistNode* %34 to i64*, !dbg !2596
  %161 = load i64, i64* %160, align 8, !dbg !2596, !tbaa !471
  %162 = bitcast %struct.quicklistNode* %156 to i64*, !dbg !2597
  store i64 %161, i64* %162, align 8, !dbg !2597, !tbaa !471
  br label %163, !dbg !2598

; <label>:163:                                    ; preds = %159, %155
  %164 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %34, i64 0, i32 0, !dbg !2599
  %165 = load %struct.quicklistNode*, %struct.quicklistNode** %164, align 8, !dbg !2599, !tbaa !471
  %166 = icmp eq %struct.quicklistNode* %165, null, !dbg !2600
  %167 = ptrtoint %struct.quicklistNode* %165 to i64, !dbg !2601
  br i1 %166, label %171, label %168, !dbg !2601

; <label>:168:                                    ; preds = %163
  %169 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %165, i64 0, i32 1, !dbg !2602
  %170 = bitcast %struct.quicklistNode** %169 to i64*, !dbg !2603
  store i64 %158, i64* %170, align 8, !dbg !2603, !tbaa !223
  br label %171, !dbg !2604

; <label>:171:                                    ; preds = %168, %163
  %172 = load %struct.quicklistNode*, %struct.quicklistNode** %26, align 8, !dbg !2605, !tbaa !490
  %173 = icmp eq %struct.quicklistNode* %172, %34, !dbg !2606
  br i1 %173, label %174, label %175, !dbg !2607

; <label>:174:                                    ; preds = %171
  store i64 %167, i64* %27, align 8, !dbg !2608, !tbaa !490
  br label %175, !dbg !2609

; <label>:175:                                    ; preds = %174, %171
  %176 = load %struct.quicklistNode*, %struct.quicklistNode** %28, align 8, !dbg !2610, !tbaa !217
  %177 = icmp eq %struct.quicklistNode* %176, %34, !dbg !2611
  br i1 %177, label %178, label %181, !dbg !2612

; <label>:178:                                    ; preds = %175
  %179 = bitcast %struct.quicklistNode** %36 to i64*, !dbg !2613
  %180 = load i64, i64* %179, align 8, !dbg !2613, !tbaa !223
  store i64 %180, i64* %29, align 8, !dbg !2614, !tbaa !217
  br label %181, !dbg !2615

; <label>:181:                                    ; preds = %178, %175
  call void @__quicklistCompress(%struct.quicklist* nonnull %0, %struct.quicklistNode* null) #4, !dbg !2616
  %182 = load i32, i32* %105, align 4, !dbg !2617
  %183 = and i32 %182, 65535, !dbg !2617
  %184 = zext i32 %183 to i64, !dbg !2618
  %185 = load i64, i64* %25, align 8, !dbg !2619, !tbaa !200
  %186 = sub i64 %185, %184, !dbg !2619
  store i64 %186, i64* %25, align 8, !dbg !2619, !tbaa !200
  %187 = load i8*, i8** %138, align 8, !dbg !2620, !tbaa !180
  call void @zfree(i8* %187) #4, !dbg !2621
  %188 = bitcast %struct.quicklistNode* %34 to i8*, !dbg !2622
  call void @zfree(i8* %188) #4, !dbg !2623
  %189 = load i64, i64* %30, align 8, !dbg !2624, !tbaa !213
  %190 = add i64 %189, -1, !dbg !2624
  store i64 %190, i64* %30, align 8, !dbg !2624, !tbaa !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2625
  br label %196, !dbg !2626

; <label>:191:                                    ; preds = %136
  %192 = and i32 %152, 1245184, !dbg !2627
  %193 = icmp eq i32 %192, 1114112, !dbg !2627
  br i1 %193, label %194, label %196, !dbg !2627

; <label>:194:                                    ; preds = %191
  %195 = call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %34) #6, !dbg !2630
  br label %196, !dbg !2630

; <label>:196:                                    ; preds = %181, %191, %194, %93
  %197 = phi i64 [ %107, %191 ], [ %107, %194 ], [ %43, %93 ], [ %107, %181 ]
  %198 = sub i64 %35, %197, !dbg !2635
  store i32 0, i32* %24, align 4, !dbg !2636, !tbaa !1458
  %199 = icmp eq i64 %198, 0, !dbg !2478
  br i1 %199, label %200, label %32, !dbg !2478, !llvm.loop !2637

; <label>:200:                                    ; preds = %196, %19, %11
  %201 = phi i32 [ 0, %11 ], [ 1, %19 ], [ 1, %196 ], !dbg !2639
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %16) #5, !dbg !2640
  br label %202

; <label>:202:                                    ; preds = %3, %200
  %203 = phi i32 [ %201, %200 ], [ 0, %3 ], !dbg !2641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2640
  ret i32 %203, !dbg !2640
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistCompare(i8*, i8*, i32) local_unnamed_addr #0 !dbg !2642 {
  %4 = tail call i32 @ziplistCompare(i8* %0, i8* %1, i32 %2) #4, !dbg !2652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2653
  ret i32 %4, !dbg !2653
}

; Function Attrs: noredzone
declare dso_local i32 @ziplistCompare(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklistIter* @quicklistGetIterator(%struct.quicklist*, i32) local_unnamed_addr #0 !dbg !2654 {
  %3 = tail call i8* @zmalloc(i64 40) #4, !dbg !2663
  %4 = bitcast i8* %3 to %struct.quicklistIter*, !dbg !2663
  switch i32 %1, label %18 [
    i32 0, label %5
    i32 1, label %7
  ], !dbg !2665

; <label>:5:                                      ; preds = %2
  %6 = bitcast %struct.quicklist* %0 to i64*, !dbg !2666
  br label %10, !dbg !2669

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !2670
  %9 = bitcast %struct.quicklistNode** %8 to i64*, !dbg !2670
  br label %10, !dbg !2673

; <label>:10:                                     ; preds = %5, %7
  %11 = phi i64* [ %9, %7 ], [ %6, %5 ]
  %12 = phi i64 [ -1, %7 ], [ 0, %5 ]
  %13 = load i64, i64* %11, align 8, !dbg !2674, !tbaa !70
  %14 = getelementptr inbounds i8, i8* %3, i64 8, !dbg !2674
  %15 = bitcast i8* %14 to i64*, !dbg !2674
  store i64 %13, i64* %15, align 8, !dbg !2674, !tbaa !1379
  %16 = getelementptr inbounds i8, i8* %3, i64 24, !dbg !2674
  %17 = bitcast i8* %16 to i64*, !dbg !2674
  store i64 %12, i64* %17, align 8, !dbg !2674, !tbaa !1382
  br label %18, !dbg !2675

; <label>:18:                                     ; preds = %10, %2
  %19 = getelementptr inbounds i8, i8* %3, i64 32, !dbg !2675
  %20 = bitcast i8* %19 to i32*, !dbg !2675
  store i32 %1, i32* %20, align 8, !dbg !2676, !tbaa !1374
  %21 = bitcast i8* %3 to %struct.quicklist**, !dbg !2677
  store %struct.quicklist* %0, %struct.quicklist** %21, align 8, !dbg !2678, !tbaa !2679
  %22 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !2680
  %23 = bitcast i8* %22 to i8**, !dbg !2680
  store i8* null, i8** %23, align 8, !dbg !2681, !tbaa !1366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2682
  ret %struct.quicklistIter* %4, !dbg !2682
}

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklistIter* @quicklistGetIteratorAtIdx(%struct.quicklist*, i32, i64) local_unnamed_addr #0 !dbg !2683 {
  %4 = alloca %struct.quicklistEntry, align 8
  %5 = bitcast %struct.quicklistEntry* %4 to i8*, !dbg !2697
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #5, !dbg !2697
  %6 = call i32 @quicklistIndex(%struct.quicklist* %0, i64 %2, %struct.quicklistEntry* nonnull %4) #6, !dbg !2699
  %7 = icmp eq i32 %6, 0, !dbg !2699
  br i1 %7, label %45, label %8, !dbg !2700

; <label>:8:                                      ; preds = %3
  %9 = call i8* @zmalloc(i64 40) #4, !dbg !2704
  %10 = bitcast i8* %9 to %struct.quicklistIter*, !dbg !2704
  switch i32 %1, label %11 [
    i32 0, label %16
    i32 1, label %23
  ], !dbg !2706

; <label>:11:                                     ; preds = %8
  %12 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !2707
  %13 = bitcast i8* %12 to i64*, !dbg !2708
  %14 = getelementptr inbounds i8, i8* %9, i64 24, !dbg !2709
  %15 = bitcast i8* %14 to i64*, !dbg !2709
  br label %31, !dbg !2706

; <label>:16:                                     ; preds = %8
  %17 = bitcast %struct.quicklist* %0 to i64*, !dbg !2710
  %18 = load i64, i64* %17, align 8, !dbg !2710, !tbaa !217
  %19 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !2711
  %20 = bitcast i8* %19 to i64*, !dbg !2712
  store i64 %18, i64* %20, align 8, !dbg !2712, !tbaa !1379
  %21 = getelementptr inbounds i8, i8* %9, i64 24, !dbg !2713
  %22 = bitcast i8* %21 to i64*, !dbg !2713
  store i64 0, i64* %22, align 8, !dbg !2714, !tbaa !1382
  br label %31, !dbg !2715

; <label>:23:                                     ; preds = %8
  %24 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !2716
  %25 = bitcast %struct.quicklistNode** %24 to i64*, !dbg !2716
  %26 = load i64, i64* %25, align 8, !dbg !2716, !tbaa !490
  %27 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !2717
  %28 = bitcast i8* %27 to i64*, !dbg !2718
  store i64 %26, i64* %28, align 8, !dbg !2718, !tbaa !1379
  %29 = getelementptr inbounds i8, i8* %9, i64 24, !dbg !2719
  %30 = bitcast i8* %29 to i64*, !dbg !2719
  store i64 -1, i64* %30, align 8, !dbg !2720, !tbaa !1382
  br label %31, !dbg !2721

; <label>:31:                                     ; preds = %11, %16, %23
  %32 = phi i64* [ %15, %11 ], [ %22, %16 ], [ %30, %23 ], !dbg !2709
  %33 = phi i64* [ %13, %11 ], [ %20, %16 ], [ %28, %23 ], !dbg !2708
  %34 = getelementptr inbounds i8, i8* %9, i64 32, !dbg !2722
  %35 = bitcast i8* %34 to i32*, !dbg !2722
  store i32 %1, i32* %35, align 8, !dbg !2723, !tbaa !1374
  %36 = bitcast i8* %9 to %struct.quicklist**, !dbg !2724
  store %struct.quicklist* %0, %struct.quicklist** %36, align 8, !dbg !2725, !tbaa !2679
  %37 = getelementptr inbounds i8, i8* %9, i64 16, !dbg !2726
  %38 = bitcast i8* %37 to i8**, !dbg !2726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2727
  store i8* null, i8** %38, align 8, !dbg !2729, !tbaa !1366
  %39 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 1, !dbg !2730
  %40 = bitcast %struct.quicklistNode** %39 to i64*, !dbg !2730
  %41 = load i64, i64* %40, align 8, !dbg !2730, !tbaa !1353
  store i64 %41, i64* %33, align 8, !dbg !2708, !tbaa !1379
  %42 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %4, i64 0, i32 6, !dbg !2731
  %43 = load i32, i32* %42, align 4, !dbg !2731, !tbaa !1458
  %44 = sext i32 %43 to i64, !dbg !2732
  store i64 %44, i64* %32, align 8, !dbg !2733, !tbaa !1382
  br label %45

; <label>:45:                                     ; preds = %3, %31
  %46 = phi %struct.quicklistIter* [ %10, %31 ], [ null, %3 ], !dbg !2734
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #5, !dbg !2736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2736
  ret %struct.quicklistIter* %46, !dbg !2736
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistReleaseIterator(%struct.quicklistIter*) local_unnamed_addr #0 !dbg !2737 {
  %2 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 1, !dbg !2743
  %3 = load %struct.quicklistNode*, %struct.quicklistNode** %2, align 8, !dbg !2743, !tbaa !1379
  %4 = icmp eq %struct.quicklistNode* %3, null, !dbg !2745
  br i1 %4, label %18, label %5, !dbg !2746

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %3, i64 0, i32 4, !dbg !2747
  %7 = load i32, i32* %6, align 4, !dbg !2747
  %8 = and i32 %7, 1048576, !dbg !2747
  %9 = icmp eq i32 %8, 0, !dbg !2747
  br i1 %9, label %15, label %10, !dbg !2750

; <label>:10:                                     ; preds = %5
  %11 = and i32 %7, 196608, !dbg !2751
  %12 = icmp eq i32 %11, 65536, !dbg !2751
  br i1 %12, label %13, label %18, !dbg !2754

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %3) #6, !dbg !2755
  br label %18, !dbg !2755

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 0, !dbg !2747
  %17 = load %struct.quicklist*, %struct.quicklist** %16, align 8, !dbg !2747, !tbaa !2679
  tail call void @__quicklistCompress(%struct.quicklist* %17, %struct.quicklistNode* nonnull %3) #6, !dbg !2747
  br label %18

; <label>:18:                                     ; preds = %1, %13, %10, %15
  %19 = bitcast %struct.quicklistIter* %0 to i8*, !dbg !2757
  tail call void @zfree(i8* %19) #4, !dbg !2758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2759
  ret void, !dbg !2759
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistNext(%struct.quicklistIter*, %struct.quicklistEntry*) local_unnamed_addr #0 !dbg !2760 {
  %3 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 3, !dbg !2773
  %4 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 2, !dbg !2773
  %5 = bitcast i8** %4 to <2 x i8*>*, !dbg !2773
  store <2 x i8*> zeroinitializer, <2 x i8*>* %5, align 8, !dbg !2773, !tbaa !70
  %6 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 4, !dbg !2773
  store i64 -123456789, i64* %6, align 8, !dbg !2773, !tbaa !1457
  %7 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 0, !dbg !2773
  store %struct.quicklist* null, %struct.quicklist** %7, align 8, !dbg !2773, !tbaa !1360
  %8 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 1, !dbg !2773
  store %struct.quicklistNode* null, %struct.quicklistNode** %8, align 8, !dbg !2773, !tbaa !1353
  %9 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 6, !dbg !2773
  store i32 123456789, i32* %9, align 4, !dbg !2773, !tbaa !1458
  %10 = getelementptr inbounds %struct.quicklistEntry, %struct.quicklistEntry* %1, i64 0, i32 5, !dbg !2773
  store i32 0, i32* %10, align 8, !dbg !2773, !tbaa !1459
  %11 = icmp eq %struct.quicklistIter* %0, null, !dbg !2775
  br i1 %11, label %117, label %12, !dbg !2777

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 0, !dbg !2778
  %14 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 1, !dbg !2779
  %15 = bitcast %struct.quicklistNode** %14 to i64*, !dbg !2779
  %16 = bitcast %struct.quicklistIter* %0 to <2 x i64>*, !dbg !2778
  %17 = load <2 x i64>, <2 x i64>* %16, align 8, !dbg !2778, !tbaa !70
  %18 = bitcast %struct.quicklistEntry* %1 to <2 x i64>*, !dbg !2780
  store <2 x i64> %17, <2 x i64>* %18, align 8, !dbg !2780, !tbaa !70
  %19 = extractelement <2 x i64> %17, i32 1, !dbg !2781
  %20 = inttoptr i64 %19 to %struct.quicklistNode*, !dbg !2781
  %21 = icmp eq i64 %19, 0, !dbg !2783
  br i1 %21, label %117, label %22, !dbg !2784

; <label>:22:                                     ; preds = %12
  %23 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 2, !dbg !2787
  %24 = load i8*, i8** %23, align 8, !dbg !2787, !tbaa !1366
  %25 = icmp eq i8* %24, null, !dbg !2789
  br i1 %25, label %26, label %64, !dbg !2790

; <label>:26:                                     ; preds = %22
  %27 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %20, i64 0, i32 4, !dbg !2791
  %28 = load i32, i32* %27, align 4, !dbg !2791
  %29 = and i32 %28, 196608, !dbg !2791
  %30 = icmp eq i32 %29, 131072, !dbg !2791
  br i1 %30, label %31, label %55, !dbg !2795

; <label>:31:                                     ; preds = %26
  %32 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %20, i64 0, i32 3, !dbg !2799
  %33 = load i32, i32* %32, align 8, !dbg !2799, !tbaa !187
  %34 = zext i32 %33 to i64, !dbg !2800
  %35 = tail call i8* @zmalloc(i64 %34) #4, !dbg !2801
  %36 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %20, i64 0, i32 2, !dbg !2803
  %37 = load i8*, i8** %36, align 8, !dbg !2803, !tbaa !180
  %38 = getelementptr inbounds i8, i8* %37, i64 4, !dbg !2805
  %39 = bitcast i8* %37 to i32*, !dbg !2806
  %40 = load i32, i32* %39, align 4, !dbg !2806, !tbaa !259
  %41 = load i32, i32* %32, align 8, !dbg !2807, !tbaa !187
  %42 = tail call i32 @lzf_decompress(i8* nonnull %38, i32 %40, i8* %35, i32 %41) #4, !dbg !2808
  %43 = icmp eq i32 %42, 0, !dbg !2809
  br i1 %43, label %44, label %45, !dbg !2810

; <label>:44:                                     ; preds = %31
  tail call void @zfree(i8* %35) #4, !dbg !2811
  br label %49, !dbg !2812

; <label>:45:                                     ; preds = %31
  tail call void @zfree(i8* %37) #4, !dbg !2813
  store i8* %35, i8** %36, align 8, !dbg !2814, !tbaa !180
  %46 = load i32, i32* %27, align 4, !dbg !2815
  %47 = and i32 %46, -196609, !dbg !2815
  %48 = or i32 %47, 65536, !dbg !2815
  store i32 %48, i32* %27, align 4, !dbg !2815
  br label %49, !dbg !2816

; <label>:49:                                     ; preds = %44, %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2817
  %50 = load %struct.quicklistNode*, %struct.quicklistNode** %14, align 8, !dbg !2818, !tbaa !1379
  %51 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %50, i64 0, i32 4, !dbg !2818
  %52 = load i32, i32* %51, align 4, !dbg !2818
  %53 = or i32 %52, 1048576, !dbg !2818
  store i32 %53, i32* %51, align 4, !dbg !2818
  %54 = load %struct.quicklistNode*, %struct.quicklistNode** %14, align 8, !dbg !2819, !tbaa !1379
  br label %55, !dbg !2818

; <label>:55:                                     ; preds = %49, %26
  %56 = phi %struct.quicklistNode* [ %54, %49 ], [ %20, %26 ], !dbg !2819
  %57 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %56, i64 0, i32 2, !dbg !2820
  %58 = load i8*, i8** %57, align 8, !dbg !2820, !tbaa !180
  %59 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 3, !dbg !2821
  %60 = load i64, i64* %59, align 8, !dbg !2821, !tbaa !1382
  %61 = trunc i64 %60 to i32, !dbg !2822
  %62 = tail call i8* @ziplistIndex(i8* %58, i32 %61) #4, !dbg !2823
  store i8* %62, i8** %23, align 8, !dbg !2824, !tbaa !1366
  %63 = load i64, i64* %59, align 8, !dbg !2825, !tbaa !1382
  br label %76, !dbg !2826

; <label>:64:                                     ; preds = %22
  %65 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 4, !dbg !2827
  %66 = load i32, i32* %65, align 8, !dbg !2827, !tbaa !1374
  %67 = icmp eq i32 %66, 0, !dbg !2830
  %68 = select i1 %67, i8* (i8*, i8*)* @ziplistNext, i8* (i8*, i8*)* @ziplistPrev, !dbg !2830
  %69 = select i1 %67, i64 1, i64 -1, !dbg !2830
  %70 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %20, i64 0, i32 2, !dbg !2831
  %71 = load i8*, i8** %70, align 8, !dbg !2831, !tbaa !180
  %72 = tail call i8* %68(i8* %71, i8* nonnull %24) #4, !dbg !2832, !callees !2833
  store i8* %72, i8** %23, align 8, !dbg !2834, !tbaa !1366
  %73 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 3, !dbg !2835
  %74 = load i64, i64* %73, align 8, !dbg !2836, !tbaa !1382
  %75 = add nsw i64 %74, %69, !dbg !2836
  store i64 %75, i64* %73, align 8, !dbg !2836, !tbaa !1382
  br label %76

; <label>:76:                                     ; preds = %64, %55
  %77 = phi i64* [ %73, %64 ], [ %59, %55 ], !dbg !2825
  %78 = phi i8* [ %72, %64 ], [ %62, %55 ], !dbg !2837
  %79 = phi i64 [ %75, %64 ], [ %63, %55 ], !dbg !2825
  %80 = ptrtoint i8* %78 to i64, !dbg !2839
  %81 = bitcast i8** %4 to i64*, !dbg !2840
  store i64 %80, i64* %81, align 8, !dbg !2840, !tbaa !1419
  %82 = trunc i64 %79 to i32, !dbg !2841
  store i32 %82, i32* %9, align 4, !dbg !2842, !tbaa !1458
  %83 = icmp eq i8* %78, null, !dbg !2843
  br i1 %83, label %86, label %84, !dbg !2844

; <label>:84:                                     ; preds = %76
  %85 = tail call i32 @ziplistGet(i8* nonnull %78, i8** nonnull %3, i32* nonnull %10, i64* nonnull %6) #4, !dbg !2845
  br label %117, !dbg !2847

; <label>:86:                                     ; preds = %76
  %87 = load %struct.quicklistNode*, %struct.quicklistNode** %14, align 8, !dbg !2848, !tbaa !1379
  %88 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %87, i64 0, i32 4, !dbg !2848
  %89 = load i32, i32* %88, align 4, !dbg !2848
  %90 = and i32 %89, 1048576, !dbg !2848
  %91 = icmp eq i32 %90, 0, !dbg !2848
  br i1 %91, label %99, label %92, !dbg !2852

; <label>:92:                                     ; preds = %86
  %93 = icmp ne %struct.quicklistNode* %87, null, !dbg !2853
  %94 = and i32 %89, 196608, !dbg !2853
  %95 = icmp eq i32 %94, 65536, !dbg !2853
  %96 = and i1 %93, %95, !dbg !2853
  br i1 %96, label %97, label %101, !dbg !2853

; <label>:97:                                     ; preds = %92
  %98 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %87) #6, !dbg !2856
  br label %101, !dbg !2856

; <label>:99:                                     ; preds = %86
  %100 = load %struct.quicklist*, %struct.quicklist** %13, align 8, !dbg !2848, !tbaa !2679
  tail call void @__quicklistCompress(%struct.quicklist* %100, %struct.quicklistNode* %87) #6, !dbg !2848
  br label %101

; <label>:101:                                    ; preds = %92, %97, %99
  %102 = getelementptr inbounds %struct.quicklistIter, %struct.quicklistIter* %0, i64 0, i32 4, !dbg !2858
  %103 = load i32, i32* %102, align 8, !dbg !2858, !tbaa !1374
  switch i32 %103, label %115 [
    i32 0, label %104
    i32 1, label %108
  ], !dbg !2860

; <label>:104:                                    ; preds = %101
  %105 = load %struct.quicklistNode*, %struct.quicklistNode** %14, align 8, !dbg !2861, !tbaa !1379
  %106 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %105, i64 0, i32 1, !dbg !2863
  %107 = bitcast %struct.quicklistNode** %106 to i64*, !dbg !2863
  br label %111, !dbg !2864

; <label>:108:                                    ; preds = %101
  %109 = bitcast %struct.quicklistNode** %14 to i64**, !dbg !2865
  %110 = load i64*, i64** %109, align 8, !dbg !2865, !tbaa !1379
  br label %111, !dbg !2868

; <label>:111:                                    ; preds = %104, %108
  %112 = phi i64* [ %110, %108 ], [ %107, %104 ]
  %113 = phi i64 [ -1, %108 ], [ 0, %104 ]
  %114 = load i64, i64* %112, align 8, !dbg !2869, !tbaa !70
  store i64 %114, i64* %15, align 8, !dbg !2869, !tbaa !1379
  store i64 %113, i64* %77, align 8, !dbg !2869, !tbaa !1382
  br label %115, !dbg !2870

; <label>:115:                                    ; preds = %111, %101
  store i8* null, i8** %23, align 8, !dbg !2870, !tbaa !1366
  %116 = tail call i32 @quicklistNext(%struct.quicklistIter* nonnull %0, %struct.quicklistEntry* nonnull %1) #6, !dbg !2871
  br label %117, !dbg !2872

; <label>:117:                                    ; preds = %84, %115, %12, %2
  %118 = phi i32 [ 0, %2 ], [ 0, %12 ], [ 1, %84 ], [ %116, %115 ], !dbg !2873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2875
  ret i32 %118, !dbg !2875
}

; Function Attrs: noredzone
declare dso_local i8* @ziplistPrev(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.quicklist* @quicklistDup(%struct.quicklist* nocapture readonly) local_unnamed_addr #0 !dbg !2876 {
  %2 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 4, !dbg !2892
  %3 = load i32, i32* %2, align 8, !dbg !2892
  %4 = shl i32 %3, 16, !dbg !2892
  %5 = ashr exact i32 %4, 16, !dbg !2892
  %6 = and i32 %3, -65536, !dbg !2893
  %7 = tail call i8* @zmalloc(i64 40) #4, !dbg !2899
  %8 = bitcast i8* %7 to %struct.quicklist*, !dbg !2899
  %9 = getelementptr inbounds i8, i8* %7, i64 8, !dbg !2902
  %10 = bitcast i8* %9 to %struct.quicklistNode**, !dbg !2902
  %11 = bitcast i8* %7 to <2 x %struct.quicklistNode*>*, !dbg !2903
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %11, align 8, !dbg !2903, !tbaa !70
  %12 = getelementptr inbounds i8, i8* %7, i64 24, !dbg !2904
  %13 = bitcast i8* %12 to i64*, !dbg !2904
  %14 = getelementptr inbounds i8, i8* %7, i64 16, !dbg !2905
  %15 = bitcast i8* %14 to i64*, !dbg !2905
  %16 = bitcast i8* %14 to <2 x i64>*, !dbg !2906
  store <2 x i64> zeroinitializer, <2 x i64>* %16, align 8, !dbg !2906, !tbaa !76
  %17 = getelementptr inbounds i8, i8* %7, i64 32, !dbg !2907
  %18 = bitcast i8* %17 to i32*, !dbg !2907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2908
  %19 = icmp sgt i32 %5, -5, !dbg !2916
  %20 = select i1 %19, i32 %5, i32 -5, !dbg !2916
  %21 = and i32 %20, 65535, !dbg !2917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2918
  %22 = or i32 %21, %6, !dbg !2893
  store i32 %22, i32* %18, align 8, !dbg !2893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2921
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2923
  %23 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !2925
  %24 = load %struct.quicklistNode*, %struct.quicklistNode** %23, align 8, !dbg !2927, !tbaa !70
  %25 = icmp eq %struct.quicklistNode* %24, null, !dbg !2928
  br i1 %25, label %29, label %26, !dbg !2928

; <label>:26:                                     ; preds = %1
  %27 = bitcast i8* %9 to i8**
  %28 = bitcast i8* %7 to i8**
  br label %30, !dbg !2928

; <label>:29:                                     ; preds = %115, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2929
  ret %struct.quicklist* %8, !dbg !2929

; <label>:30:                                     ; preds = %26, %115
  %31 = phi %struct.quicklistNode* [ %24, %26 ], [ %119, %115 ]
  %32 = tail call i8* @zmalloc(i64 32) #4, !dbg !2930
  %33 = getelementptr inbounds i8, i8* %32, i64 16, !dbg !2932
  %34 = bitcast i8* %33 to i8**, !dbg !2932
  store i8* null, i8** %34, align 8, !dbg !2933, !tbaa !180
  %35 = getelementptr inbounds i8, i8* %32, i64 28, !dbg !2934
  %36 = bitcast i8* %35 to i32*, !dbg !2934
  %37 = load i32, i32* %36, align 4, !dbg !2935
  %38 = getelementptr inbounds i8, i8* %32, i64 24, !dbg !2936
  %39 = bitcast i8* %38 to i32*, !dbg !2936
  store i32 0, i32* %39, align 8, !dbg !2937, !tbaa !187
  %40 = bitcast i8* %32 to %struct.quicklistNode**, !dbg !2938
  %41 = getelementptr inbounds i8, i8* %32, i64 8, !dbg !2939
  %42 = bitcast i8* %32 to <2 x %struct.quicklistNode*>*, !dbg !2940
  store <2 x %struct.quicklistNode*> zeroinitializer, <2 x %struct.quicklistNode*>* %42, align 8, !dbg !2940, !tbaa !70
  %43 = and i32 %37, -2097152, !dbg !2941
  %44 = or i32 %43, 589824, !dbg !2941
  store i32 %44, i32* %36, align 4, !dbg !2941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2942
  %45 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %31, i64 0, i32 4, !dbg !2943
  %46 = load i32, i32* %45, align 4, !dbg !2943
  %47 = lshr i32 %46, 16, !dbg !2943
  %48 = trunc i32 %47 to i2, !dbg !2944
  switch i2 %48, label %70 [
    i2 -2, label %49
    i2 1, label %60
  ], !dbg !2944

; <label>:49:                                     ; preds = %30
  %50 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %31, i64 0, i32 2, !dbg !2947
  %51 = bitcast i8** %50 to %struct.quicklistLZF**, !dbg !2947
  %52 = load %struct.quicklistLZF*, %struct.quicklistLZF** %51, align 8, !dbg !2947, !tbaa !180
  %53 = getelementptr inbounds %struct.quicklistLZF, %struct.quicklistLZF* %52, i64 0, i32 0, !dbg !2949
  %54 = load i32, i32* %53, align 4, !dbg !2949, !tbaa !259
  %55 = zext i32 %54 to i64, !dbg !2950
  %56 = add nuw nsw i64 %55, 4, !dbg !2951
  %57 = tail call i8* @zmalloc(i64 %56) #4, !dbg !2953
  store i8* %57, i8** %34, align 8, !dbg !2954, !tbaa !180
  %58 = load i8*, i8** %50, align 8, !dbg !2955, !tbaa !180
  %59 = tail call i8* @memcpy(i8* %57, i8* %58, i64 %56) #4, !dbg !2956
  br label %70, !dbg !2957

; <label>:60:                                     ; preds = %30
  %61 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %31, i64 0, i32 3, !dbg !2958
  %62 = load i32, i32* %61, align 8, !dbg !2958, !tbaa !187
  %63 = zext i32 %62 to i64, !dbg !2961
  %64 = tail call i8* @zmalloc(i64 %63) #4, !dbg !2962
  store i8* %64, i8** %34, align 8, !dbg !2963, !tbaa !180
  %65 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %31, i64 0, i32 2, !dbg !2964
  %66 = load i8*, i8** %65, align 8, !dbg !2964, !tbaa !180
  %67 = load i32, i32* %61, align 8, !dbg !2965, !tbaa !187
  %68 = zext i32 %67 to i64, !dbg !2966
  %69 = tail call i8* @memcpy(i8* %64, i8* %66, i64 %68) #4, !dbg !2967
  br label %70, !dbg !2968

; <label>:70:                                     ; preds = %30, %60, %49
  %71 = load i32, i32* %45, align 4, !dbg !2969
  %72 = and i32 %71, 65535, !dbg !2969
  %73 = load i32, i32* %36, align 4, !dbg !2970
  %74 = and i32 %73, -65536, !dbg !2970
  %75 = or i32 %74, %72, !dbg !2970
  store i32 %75, i32* %36, align 4, !dbg !2970
  %76 = zext i32 %72 to i64, !dbg !2971
  %77 = load i64, i64* %15, align 8, !dbg !2972, !tbaa !200
  %78 = add i64 %77, %76, !dbg !2972
  store i64 %78, i64* %15, align 8, !dbg !2972, !tbaa !200
  %79 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %31, i64 0, i32 3, !dbg !2973
  %80 = load i32, i32* %79, align 8, !dbg !2973, !tbaa !187
  store i32 %80, i32* %39, align 8, !dbg !2974, !tbaa !187
  %81 = load i32, i32* %45, align 4, !dbg !2975
  %82 = and i32 %81, 196608, !dbg !2975
  %83 = load i32, i32* %36, align 4, !dbg !2976
  %84 = and i32 %83, -196609, !dbg !2976
  %85 = or i32 %84, %82, !dbg !2976
  store i32 %85, i32* %36, align 4, !dbg !2976
  %86 = load %struct.quicklistNode*, %struct.quicklistNode** %10, align 8, !dbg !2977, !tbaa !490
  store %struct.quicklistNode* %86, %struct.quicklistNode** %40, align 8, !dbg !2987, !tbaa !471
  %87 = icmp eq %struct.quicklistNode* %86, null, !dbg !2988
  br i1 %87, label %99, label %88, !dbg !2989

; <label>:88:                                     ; preds = %70
  %89 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %86, i64 0, i32 1, !dbg !2990
  %90 = bitcast %struct.quicklistNode** %89 to i64*, !dbg !2990
  %91 = load i64, i64* %90, align 8, !dbg !2990, !tbaa !223
  %92 = bitcast i8* %41 to i64*, !dbg !2991
  store i64 %91, i64* %92, align 8, !dbg !2991, !tbaa !223
  %93 = load %struct.quicklistNode*, %struct.quicklistNode** %89, align 8, !dbg !2992, !tbaa !223
  %94 = icmp eq %struct.quicklistNode* %93, null, !dbg !2993
  br i1 %94, label %97, label %95, !dbg !2994

; <label>:95:                                     ; preds = %88
  %96 = bitcast %struct.quicklistNode* %93 to i8**, !dbg !2995
  store i8* %32, i8** %96, align 8, !dbg !2995, !tbaa !471
  br label %97, !dbg !2996

; <label>:97:                                     ; preds = %95, %88
  %98 = bitcast %struct.quicklistNode** %89 to i8**, !dbg !2997
  store i8* %32, i8** %98, align 8, !dbg !2997, !tbaa !223
  br label %99, !dbg !2998

; <label>:99:                                     ; preds = %97, %70
  store i8* %32, i8** %27, align 8, !dbg !2999, !tbaa !490
  %100 = load i64, i64* %13, align 8, !dbg !3000, !tbaa !213
  %101 = icmp eq i64 %100, 0, !dbg !3001
  br i1 %101, label %102, label %103, !dbg !3002

; <label>:102:                                    ; preds = %99
  store i8* %32, i8** %27, align 8, !dbg !3003, !tbaa !490
  store i8* %32, i8** %28, align 8, !dbg !3004, !tbaa !217
  br label %103, !dbg !3005

; <label>:103:                                    ; preds = %102, %99
  br i1 %87, label %115, label %104, !dbg !3006

; <label>:104:                                    ; preds = %103
  %105 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %86, i64 0, i32 4, !dbg !3007
  %106 = load i32, i32* %105, align 4, !dbg !3007
  %107 = and i32 %106, 1048576, !dbg !3007
  %108 = icmp eq i32 %107, 0, !dbg !3007
  br i1 %108, label %114, label %109, !dbg !3008

; <label>:109:                                    ; preds = %104
  %110 = and i32 %106, 196608, !dbg !3009
  %111 = icmp eq i32 %110, 65536, !dbg !3009
  br i1 %111, label %112, label %115, !dbg !3010

; <label>:112:                                    ; preds = %109
  %113 = tail call i32 @__quicklistCompressNode(%struct.quicklistNode* nonnull %86) #4, !dbg !3011
  br label %115, !dbg !3011

; <label>:114:                                    ; preds = %104
  tail call void @__quicklistCompress(%struct.quicklist* nonnull %8, %struct.quicklistNode* nonnull %86) #4, !dbg !3007
  br label %115

; <label>:115:                                    ; preds = %103, %109, %112, %114
  %116 = load i64, i64* %13, align 8, !dbg !3012, !tbaa !213
  %117 = add i64 %116, 1, !dbg !3012
  store i64 %117, i64* %13, align 8, !dbg !3012, !tbaa !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3014
  %118 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %31, i64 0, i32 1, !dbg !3015
  %119 = load %struct.quicklistNode*, %struct.quicklistNode** %118, align 8, !dbg !2927, !tbaa !70
  %120 = icmp eq %struct.quicklistNode* %119, null, !dbg !2928
  br i1 %120, label %29, label %30, !dbg !2928, !llvm.loop !3016
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistRotate(%struct.quicklist* nocapture) local_unnamed_addr #0 !dbg !3018 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  %7 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !3027
  %8 = load i64, i64* %7, align 8, !dbg !3027, !tbaa !200
  %9 = icmp ult i64 %8, 2, !dbg !3029
  br i1 %9, label %45, label %10, !dbg !3030

; <label>:10:                                     ; preds = %1
  %11 = bitcast i8** %2 to i8*, !dbg !3031
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5, !dbg !3031
  %12 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !3032
  %13 = load %struct.quicklistNode*, %struct.quicklistNode** %12, align 8, !dbg !3032, !tbaa !490
  %14 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %13, i64 0, i32 2, !dbg !3033
  %15 = load i8*, i8** %14, align 8, !dbg !3033, !tbaa !180
  %16 = tail call i8* @ziplistIndex(i8* %15, i32 -1) #4, !dbg !3034
  store i8* %16, i8** %2, align 8, !dbg !3035, !tbaa !70
  %17 = bitcast i8** %3 to i8*, !dbg !3036
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #5, !dbg !3036
  %18 = bitcast i64* %4 to i8*, !dbg !3037
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #5, !dbg !3037
  %19 = bitcast i32* %5 to i8*, !dbg !3038
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #5, !dbg !3038
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0, !dbg !3039
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %20) #5, !dbg !3039
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %20, i8 0, i64 32, i1 false), !dbg !3040
  %21 = call i32 @ziplistGet(i8* %16, i8** nonnull %3, i32* nonnull %5, i64* nonnull %4) #4, !dbg !3044
  %22 = load i8*, i8** %3, align 8, !dbg !3045, !tbaa !70
  %23 = icmp eq i8* %22, null, !dbg !3045
  br i1 %23, label %26, label %24, !dbg !3047

; <label>:24:                                     ; preds = %10
  %25 = load i32, i32* %5, align 4, !dbg !3048, !tbaa !259
  br label %29, !dbg !3047

; <label>:26:                                     ; preds = %10
  %27 = load i64, i64* %4, align 8, !dbg !3049, !tbaa !1146
  %28 = call i32 @ll2string(i8* nonnull %20, i64 32, i64 %27) #4, !dbg !3051
  store i32 %28, i32* %5, align 4, !dbg !3052, !tbaa !259
  store i8* %20, i8** %3, align 8, !dbg !3053, !tbaa !70
  br label %29, !dbg !3054

; <label>:29:                                     ; preds = %24, %26
  %30 = phi i32 [ %25, %24 ], [ %28, %26 ], !dbg !3048
  %31 = phi i8* [ %22, %24 ], [ %20, %26 ], !dbg !3055
  %32 = zext i32 %30 to i64, !dbg !3048
  %33 = call i32 @quicklistPushHead(%struct.quicklist* nonnull %0, i8* nonnull %31, i64 %32) #6, !dbg !3056
  %34 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 3, !dbg !3057
  %35 = load i64, i64* %34, align 8, !dbg !3057, !tbaa !213
  %36 = icmp eq i64 %35, 1, !dbg !3059
  br i1 %36, label %37, label %42, !dbg !3060

; <label>:37:                                     ; preds = %29
  %38 = load %struct.quicklistNode*, %struct.quicklistNode** %12, align 8, !dbg !3061, !tbaa !490
  %39 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %38, i64 0, i32 2, !dbg !3063
  %40 = load i8*, i8** %39, align 8, !dbg !3063, !tbaa !180
  %41 = call i8* @ziplistIndex(i8* %40, i32 -1) #4, !dbg !3064
  store i8* %41, i8** %2, align 8, !dbg !3065, !tbaa !70
  br label %42, !dbg !3066

; <label>:42:                                     ; preds = %37, %29
  %43 = load %struct.quicklistNode*, %struct.quicklistNode** %12, align 8, !dbg !3067, !tbaa !490
  %44 = call i32 @quicklistDelIndex(%struct.quicklist* nonnull %0, %struct.quicklistNode* %43, i8** nonnull %2) #6, !dbg !3068
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %20) #5, !dbg !3069
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #5, !dbg !3069
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #5, !dbg !3069
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #5, !dbg !3069
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5, !dbg !3069
  br label %45, !dbg !3069

; <label>:45:                                     ; preds = %1, %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3069
  ret void, !dbg !3069
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistPopCustom(%struct.quicklist* nocapture, i32, i8**, i32*, i64*, i8* (i8*, i32)* nocapture) local_unnamed_addr #0 !dbg !3070 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = bitcast i8** %7 to i8*, !dbg !3097
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #5, !dbg !3097
  %12 = bitcast i8** %8 to i8*, !dbg !3098
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5, !dbg !3098
  %13 = bitcast i32* %9 to i8*, !dbg !3099
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5, !dbg !3099
  %14 = bitcast i64* %10 to i8*, !dbg !3100
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #5, !dbg !3100
  %15 = icmp eq i32 %1, 0, !dbg !3101
  %16 = xor i1 %15, true, !dbg !3102
  %17 = sext i1 %16 to i32, !dbg !3102
  %18 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !3104
  %19 = load i64, i64* %18, align 8, !dbg !3104, !tbaa !200
  %20 = icmp eq i64 %19, 0, !dbg !3106
  br i1 %20, label %65, label %21, !dbg !3107

; <label>:21:                                     ; preds = %6
  %22 = icmp ne i8** %2, null, !dbg !3108
  br i1 %22, label %23, label %24, !dbg !3110

; <label>:23:                                     ; preds = %21
  store i8* null, i8** %2, align 8, !dbg !3111, !tbaa !70
  br label %24, !dbg !3112

; <label>:24:                                     ; preds = %23, %21
  %25 = icmp ne i32* %3, null, !dbg !3113
  br i1 %25, label %26, label %27, !dbg !3115

; <label>:26:                                     ; preds = %24
  store i32 0, i32* %3, align 4, !dbg !3116, !tbaa !259
  br label %27, !dbg !3117

; <label>:27:                                     ; preds = %26, %24
  %28 = icmp ne i64* %4, null, !dbg !3118
  br i1 %28, label %29, label %30, !dbg !3120

; <label>:29:                                     ; preds = %27
  store i64 -123456789, i64* %4, align 8, !dbg !3121, !tbaa !1146
  br label %30, !dbg !3122

; <label>:30:                                     ; preds = %29, %27
  br i1 %15, label %31, label %35, !dbg !3123

; <label>:31:                                     ; preds = %30
  %32 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !3125
  %33 = load %struct.quicklistNode*, %struct.quicklistNode** %32, align 8, !dbg !3125, !tbaa !217
  %34 = icmp eq %struct.quicklistNode* %33, null, !dbg !3126
  br i1 %34, label %65, label %41, !dbg !3127

; <label>:35:                                     ; preds = %30
  %36 = icmp eq i32 %1, -1, !dbg !3128
  br i1 %36, label %37, label %65, !dbg !3130

; <label>:37:                                     ; preds = %35
  %38 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !3131
  %39 = load %struct.quicklistNode*, %struct.quicklistNode** %38, align 8, !dbg !3131, !tbaa !490
  %40 = icmp eq %struct.quicklistNode* %39, null, !dbg !3132
  br i1 %40, label %65, label %41, !dbg !3133

; <label>:41:                                     ; preds = %37, %31
  %42 = phi %struct.quicklistNode* [ %33, %31 ], [ %39, %37 ], !dbg !3134
  %43 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %42, i64 0, i32 2, !dbg !3137
  %44 = load i8*, i8** %43, align 8, !dbg !3137, !tbaa !180
  %45 = tail call i8* @ziplistIndex(i8* %44, i32 %17) #4, !dbg !3138
  store i8* %45, i8** %7, align 8, !dbg !3140, !tbaa !70
  %46 = call i32 @ziplistGet(i8* %45, i8** nonnull %8, i32* nonnull %9, i64* nonnull %10) #4, !dbg !3144
  %47 = icmp eq i32 %46, 0, !dbg !3144
  br i1 %47, label %65, label %48, !dbg !3146

; <label>:48:                                     ; preds = %41
  %49 = load i8*, i8** %8, align 8, !dbg !3147, !tbaa !70
  %50 = icmp eq i8* %49, null, !dbg !3147
  br i1 %50, label %58, label %51, !dbg !3150

; <label>:51:                                     ; preds = %48
  br i1 %22, label %52, label %55, !dbg !3151

; <label>:52:                                     ; preds = %51
  %53 = load i32, i32* %9, align 4, !dbg !3153, !tbaa !259
  %54 = call i8* %5(i8* nonnull %49, i32 %53) #4, !dbg !3155
  store i8* %54, i8** %2, align 8, !dbg !3156, !tbaa !70
  br label %55, !dbg !3157

; <label>:55:                                     ; preds = %52, %51
  br i1 %25, label %56, label %63, !dbg !3158

; <label>:56:                                     ; preds = %55
  %57 = load i32, i32* %9, align 4, !dbg !3159, !tbaa !259
  store i32 %57, i32* %3, align 4, !dbg !3161, !tbaa !259
  br label %63, !dbg !3162

; <label>:58:                                     ; preds = %48
  br i1 %22, label %59, label %60, !dbg !3163

; <label>:59:                                     ; preds = %58
  store i8* null, i8** %2, align 8, !dbg !3165, !tbaa !70
  br label %60, !dbg !3167

; <label>:60:                                     ; preds = %59, %58
  br i1 %28, label %61, label %63, !dbg !3168

; <label>:61:                                     ; preds = %60
  %62 = load i64, i64* %10, align 8, !dbg !3169, !tbaa !1146
  store i64 %62, i64* %4, align 8, !dbg !3171, !tbaa !1146
  br label %63, !dbg !3172

; <label>:63:                                     ; preds = %60, %61, %55, %56
  %64 = call i32 @quicklistDelIndex(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %42, i8** nonnull %7) #6, !dbg !3173
  br label %65, !dbg !3174

; <label>:65:                                     ; preds = %31, %63, %37, %35, %41, %6
  %66 = phi i32 [ 0, %6 ], [ 1, %63 ], [ 0, %37 ], [ 0, %35 ], [ 0, %41 ], [ 0, %31 ], !dbg !3175
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #5, !dbg !3176
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !3176
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5, !dbg !3176
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #5, !dbg !3176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3176
  ret i32 %66, !dbg !3176
}

; Function Attrs: noredzone nounwind
define dso_local i8* @_quicklistSaver(i8*, i32) local_unnamed_addr #0 !dbg !3177 {
  %3 = icmp eq i8* %0, null, !dbg !3184
  br i1 %3, label %8, label %4, !dbg !3186

; <label>:4:                                      ; preds = %2
  %5 = zext i32 %1 to i64, !dbg !3187
  %6 = tail call i8* @zmalloc(i64 %5) #4, !dbg !3189
  %7 = tail call i8* @memcpy(i8* %6, i8* nonnull %0, i64 %5) #4, !dbg !3191
  br label %8, !dbg !3192

; <label>:8:                                      ; preds = %2, %4
  %9 = phi i8* [ %6, %4 ], [ null, %2 ], !dbg !3193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3194
  ret i8* %9, !dbg !3194
}

; Function Attrs: noredzone nounwind
define dso_local i32 @quicklistPop(%struct.quicklist* nocapture, i32, i8**, i32*, i64*) local_unnamed_addr #0 !dbg !3195 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 2, !dbg !3213
  %11 = load i64, i64* %10, align 8, !dbg !3213, !tbaa !200
  %12 = icmp eq i64 %11, 0, !dbg !3215
  br i1 %12, label %69, label %13, !dbg !3216

; <label>:13:                                     ; preds = %5
  %14 = bitcast i8** %6 to i8*, !dbg !3223
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #5, !dbg !3223
  %15 = bitcast i8** %7 to i8*, !dbg !3224
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #5, !dbg !3224
  %16 = bitcast i32* %8 to i8*, !dbg !3225
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #5, !dbg !3225
  %17 = bitcast i64* %9 to i8*, !dbg !3226
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #5, !dbg !3226
  %18 = icmp eq i32 %1, 0, !dbg !3227
  %19 = xor i1 %18, true, !dbg !3228
  %20 = sext i1 %19 to i32, !dbg !3228
  br i1 %18, label %21, label %25, !dbg !3230

; <label>:21:                                     ; preds = %13
  %22 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 0, !dbg !3231
  %23 = load %struct.quicklistNode*, %struct.quicklistNode** %22, align 8, !dbg !3231, !tbaa !217
  %24 = icmp eq %struct.quicklistNode* %23, null, !dbg !3232
  br i1 %24, label %55, label %31, !dbg !3233

; <label>:25:                                     ; preds = %13
  %26 = icmp eq i32 %1, -1, !dbg !3234
  br i1 %26, label %27, label %55, !dbg !3235

; <label>:27:                                     ; preds = %25
  %28 = getelementptr inbounds %struct.quicklist, %struct.quicklist* %0, i64 0, i32 1, !dbg !3236
  %29 = load %struct.quicklistNode*, %struct.quicklistNode** %28, align 8, !dbg !3236, !tbaa !490
  %30 = icmp eq %struct.quicklistNode* %29, null, !dbg !3237
  br i1 %30, label %55, label %31, !dbg !3238

; <label>:31:                                     ; preds = %27, %21
  %32 = phi %struct.quicklistNode* [ %23, %21 ], [ %29, %27 ], !dbg !3239
  %33 = getelementptr inbounds %struct.quicklistNode, %struct.quicklistNode* %32, i64 0, i32 2, !dbg !3241
  %34 = load i8*, i8** %33, align 8, !dbg !3241, !tbaa !180
  %35 = tail call i8* @ziplistIndex(i8* %34, i32 %20) #4, !dbg !3242
  store i8* %35, i8** %6, align 8, !dbg !3244, !tbaa !70
  %36 = call i32 @ziplistGet(i8* %35, i8** nonnull %7, i32* nonnull %8, i64* nonnull %9) #4, !dbg !3248
  %37 = icmp eq i32 %36, 0, !dbg !3248
  br i1 %37, label %55, label %38, !dbg !3249

; <label>:38:                                     ; preds = %31
  %39 = load i8*, i8** %7, align 8, !dbg !3250, !tbaa !70
  %40 = icmp eq i8* %39, null, !dbg !3250
  br i1 %40, label %48, label %41, !dbg !3251

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %8, align 4, !dbg !3252, !tbaa !259
  %43 = zext i32 %42 to i64, !dbg !3256
  %44 = call i8* @zmalloc(i64 %43) #4, !dbg !3257
  %45 = call i8* @memcpy(i8* %44, i8* nonnull %39, i64 %43) #4, !dbg !3259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3260
  %46 = ptrtoint i8* %44 to i64, !dbg !3261
  %47 = load i32, i32* %8, align 4, !dbg !3262, !tbaa !259
  br label %50, !dbg !3263

; <label>:48:                                     ; preds = %38
  %49 = load i64, i64* %9, align 8, !dbg !3264, !tbaa !1146
  br label %50, !dbg !3265

; <label>:50:                                     ; preds = %48, %41
  %51 = phi i64 [ 0, %48 ], [ %46, %41 ], !dbg !3266
  %52 = phi i32 [ 0, %48 ], [ %47, %41 ], !dbg !3266
  %53 = phi i64 [ %49, %48 ], [ -123456789, %41 ], !dbg !3266
  %54 = call i32 @quicklistDelIndex(%struct.quicklist* nonnull %0, %struct.quicklistNode* nonnull %32, i8** nonnull %6) #4, !dbg !3267
  br label %55, !dbg !3268

; <label>:55:                                     ; preds = %21, %25, %27, %31, %50
  %56 = phi i64 [ 0, %21 ], [ 0, %31 ], [ %51, %50 ], [ 0, %27 ], [ 0, %25 ]
  %57 = phi i32 [ 0, %21 ], [ 0, %31 ], [ %52, %50 ], [ 0, %27 ], [ 0, %25 ]
  %58 = phi i64 [ -123456789, %21 ], [ -123456789, %31 ], [ %53, %50 ], [ -123456789, %27 ], [ -123456789, %25 ]
  %59 = phi i32 [ 0, %21 ], [ 0, %31 ], [ 1, %50 ], [ 0, %27 ], [ 0, %25 ], !dbg !3269
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #5, !dbg !3270
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #5, !dbg !3270
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #5, !dbg !3270
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #5, !dbg !3270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3270
  %60 = icmp eq i8** %2, null, !dbg !3272
  br i1 %60, label %63, label %61, !dbg !3274

; <label>:61:                                     ; preds = %55
  %62 = bitcast i8** %2 to i64*, !dbg !3275
  store i64 %56, i64* %62, align 8, !dbg !3275, !tbaa !70
  br label %63, !dbg !3276

; <label>:63:                                     ; preds = %55, %61
  %64 = icmp eq i64* %4, null, !dbg !3277
  br i1 %64, label %66, label %65, !dbg !3279

; <label>:65:                                     ; preds = %63
  store i64 %58, i64* %4, align 8, !dbg !3281, !tbaa !1146
  br label %66, !dbg !3282

; <label>:66:                                     ; preds = %63, %65
  %67 = icmp eq i32* %3, null, !dbg !3283
  br i1 %67, label %69, label %68, !dbg !3285

; <label>:68:                                     ; preds = %66
  store i32 %57, i32* %3, align 4, !dbg !3287, !tbaa !259
  br label %69, !dbg !3288

; <label>:69:                                     ; preds = %68, %66, %5
  %70 = phi i32 [ 0, %5 ], [ %59, %66 ], [ %59, %68 ], !dbg !3266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3289
  ret i32 %70, !dbg !3289
}

; Function Attrs: noredzone nounwind
define dso_local void @quicklistPush(%struct.quicklist* nocapture, i8*, i64, i32) local_unnamed_addr #0 !dbg !3290 {
  switch i32 %3, label %9 [
    i32 0, label %5
    i32 -1, label %7
  ], !dbg !3302

; <label>:5:                                      ; preds = %4
  %6 = tail call i32 @quicklistPushHead(%struct.quicklist* %0, i8* %1, i64 %2) #6, !dbg !3303
  br label %9, !dbg !3306

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @quicklistPushTail(%struct.quicklist* %0, i8* %1, i64 %2) #6, !dbg !3307
  br label %9, !dbg !3310

; <label>:9:                                      ; preds = %4, %7, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3311
  ret void, !dbg !3311
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
!124 = !DILocation(line: 144, column: 1, scope: !95, inlinedAt: !118)
!125 = !DILocation(line: 127, column: 43, scope: !81, inlinedAt: !126)
!126 = distinct !DILocation(line: 148, column: 5, scope: !107)
!127 = !DILocation(line: 127, column: 58, scope: !81, inlinedAt: !126)
!128 = !DILocation(line: 130, column: 16, scope: !90, inlinedAt: !126)
!129 = !DILocation(line: 128, column: 9, scope: !81, inlinedAt: !126)
!130 = !DILocation(line: 133, column: 25, scope: !81, inlinedAt: !126)
!131 = !DILocation(line: 134, column: 1, scope: !81, inlinedAt: !126)
!132 = !DILocation(line: 149, column: 1, scope: !107)
!133 = distinct !DISubprogram(name: "quicklistNew", scope: !3, file: !3, line: 152, type: !134, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !136)
!134 = !DISubroutineType(types: !135)
!135 = !{!21, !20, !20}
!136 = !{!137, !138, !139}
!137 = !DILocalVariable(name: "fill", arg: 1, scope: !133, file: !3, line: 152, type: !20)
!138 = !DILocalVariable(name: "compress", arg: 2, scope: !133, file: !3, line: 152, type: !20)
!139 = !DILocalVariable(name: "quicklist", scope: !133, file: !3, line: 153, type: !21)
!140 = !DILocation(line: 152, column: 29, scope: !133)
!141 = !DILocation(line: 152, column: 39, scope: !133)
!142 = !DILocation(line: 117, column: 17, scope: !61, inlinedAt: !143)
!143 = distinct !DILocation(line: 153, column: 28, scope: !133)
!144 = !DILocation(line: 115, column: 23, scope: !61, inlinedAt: !143)
!145 = !DILocation(line: 118, column: 21, scope: !61, inlinedAt: !143)
!146 = !DILocation(line: 120, column: 16, scope: !61, inlinedAt: !143)
!147 = !DILocation(line: 120, column: 22, scope: !61, inlinedAt: !143)
!148 = !DILocation(line: 121, column: 16, scope: !61, inlinedAt: !143)
!149 = !DILocation(line: 123, column: 5, scope: !61, inlinedAt: !143)
!150 = !DILocation(line: 153, column: 16, scope: !133)
!151 = !DILocation(line: 146, column: 37, scope: !107, inlinedAt: !152)
!152 = distinct !DILocation(line: 154, column: 5, scope: !133)
!153 = !DILocation(line: 146, column: 52, scope: !107, inlinedAt: !152)
!154 = !DILocation(line: 146, column: 62, scope: !107, inlinedAt: !152)
!155 = !DILocation(line: 137, column: 34, scope: !95, inlinedAt: !156)
!156 = distinct !DILocation(line: 147, column: 5, scope: !107, inlinedAt: !152)
!157 = !DILocation(line: 137, column: 49, scope: !95, inlinedAt: !156)
!158 = !DILocation(line: 140, column: 16, scope: !102, inlinedAt: !156)
!159 = !DILocation(line: 138, column: 9, scope: !95, inlinedAt: !156)
!160 = !DILocation(line: 143, column: 21, scope: !95, inlinedAt: !156)
!161 = !DILocation(line: 144, column: 1, scope: !95, inlinedAt: !156)
!162 = !DILocation(line: 127, column: 43, scope: !81, inlinedAt: !163)
!163 = distinct !DILocation(line: 148, column: 5, scope: !107, inlinedAt: !152)
!164 = !DILocation(line: 127, column: 58, scope: !81, inlinedAt: !163)
!165 = !DILocation(line: 130, column: 16, scope: !90, inlinedAt: !163)
!166 = !DILocation(line: 128, column: 9, scope: !81, inlinedAt: !163)
!167 = !DILocation(line: 133, column: 25, scope: !81, inlinedAt: !163)
!168 = !DILocation(line: 134, column: 1, scope: !81, inlinedAt: !163)
!169 = !DILocation(line: 149, column: 1, scope: !107, inlinedAt: !152)
!170 = !DILocation(line: 155, column: 5, scope: !133)
!171 = distinct !DISubprogram(name: "quicklistCreateNode", scope: !3, file: !3, line: 158, type: !172, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !174)
!172 = !DISubroutineType(types: !173)
!173 = !{!26}
!174 = !{!175}
!175 = !DILocalVariable(name: "node", scope: !171, file: !3, line: 159, type: !26)
!176 = !DILocation(line: 160, column: 12, scope: !171)
!177 = !DILocation(line: 159, column: 20, scope: !171)
!178 = !DILocation(line: 161, column: 11, scope: !171)
!179 = !DILocation(line: 161, column: 14, scope: !171)
!180 = !{!181, !71, i64 16}
!181 = !{!"quicklistNode", !71, i64 0, !71, i64 8, !71, i64 16, !182, i64 24, !182, i64 28, !182, i64 30, !182, i64 30, !182, i64 30, !182, i64 30, !182, i64 30}
!182 = !{!"int", !72, i64 0}
!183 = !DILocation(line: 162, column: 11, scope: !171)
!184 = !DILocation(line: 162, column: 17, scope: !171)
!185 = !DILocation(line: 163, column: 11, scope: !171)
!186 = !DILocation(line: 163, column: 14, scope: !171)
!187 = !{!181, !182, i64 24}
!188 = !DILocation(line: 164, column: 29, scope: !171)
!189 = !DILocation(line: 167, column: 22, scope: !171)
!190 = !DILocation(line: 168, column: 5, scope: !171)
!191 = distinct !DISubprogram(name: "quicklistCount", scope: !3, file: !3, line: 172, type: !192, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !196)
!192 = !DISubroutineType(types: !193)
!193 = !{!43, !194}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!196 = !{!197}
!197 = !DILocalVariable(name: "ql", arg: 1, scope: !191, file: !3, line: 172, type: !194)
!198 = !DILocation(line: 172, column: 47, scope: !191)
!199 = !DILocation(line: 172, column: 64, scope: !191)
!200 = !{!201, !77, i64 16}
!201 = !{!"quicklist", !71, i64 0, !71, i64 8, !77, i64 16, !77, i64 24, !182, i64 32, !182, i64 34}
!202 = !DILocation(line: 172, column: 53, scope: !191)
!203 = distinct !DISubprogram(name: "quicklistRelease", scope: !3, file: !3, line: 175, type: !204, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !206)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !21}
!206 = !{!207, !208, !209, !210}
!207 = !DILocalVariable(name: "quicklist", arg: 1, scope: !203, file: !3, line: 175, type: !21)
!208 = !DILocalVariable(name: "len", scope: !203, file: !3, line: 176, type: !43)
!209 = !DILocalVariable(name: "current", scope: !203, file: !3, line: 177, type: !26)
!210 = !DILocalVariable(name: "next", scope: !203, file: !3, line: 177, type: !26)
!211 = !DILocation(line: 175, column: 34, scope: !203)
!212 = !DILocation(line: 180, column: 22, scope: !203)
!213 = !{!201, !77, i64 24}
!214 = !DILocation(line: 176, column: 19, scope: !203)
!215 = !DILocation(line: 181, column: 5, scope: !203)
!216 = !DILocation(line: 179, column: 26, scope: !203)
!217 = !{!201, !71, i64 0}
!218 = !DILocation(line: 177, column: 20, scope: !203)
!219 = !DILocation(line: 0, scope: !203)
!220 = !DILocation(line: 181, column: 15, scope: !203)
!221 = !DILocation(line: 182, column: 25, scope: !222)
!222 = distinct !DILexicalBlock(scope: !203, file: !3, line: 181, column: 19)
!223 = !{!181, !71, i64 8}
!224 = !DILocation(line: 177, column: 30, scope: !203)
!225 = !DILocation(line: 184, column: 24, scope: !222)
!226 = !DILocation(line: 184, column: 9, scope: !222)
!227 = !DILocation(line: 185, column: 38, scope: !222)
!228 = !DILocation(line: 185, column: 29, scope: !222)
!229 = !DILocation(line: 185, column: 26, scope: !222)
!230 = !DILocation(line: 187, column: 9, scope: !222)
!231 = !DILocation(line: 189, column: 23, scope: !222)
!232 = distinct !{!232, !215, !233}
!233 = !DILocation(line: 191, column: 5, scope: !203)
!234 = !DILocation(line: 192, column: 11, scope: !203)
!235 = !DILocation(line: 192, column: 5, scope: !203)
!236 = !DILocation(line: 193, column: 1, scope: !203)
!237 = distinct !DISubprogram(name: "__quicklistCompressNode", scope: !3, file: !3, line: 198, type: !238, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{!20, !26}
!240 = !{!241, !242}
!241 = !DILocalVariable(name: "node", arg: 1, scope: !237, file: !3, line: 198, type: !26)
!242 = !DILocalVariable(name: "lzf", scope: !237, file: !3, line: 207, type: !8)
!243 = !DILocation(line: 198, column: 57, scope: !237)
!244 = !DILocation(line: 204, column: 15, scope: !245)
!245 = distinct !DILexicalBlock(scope: !237, file: !3, line: 204, column: 9)
!246 = !DILocation(line: 204, column: 18, scope: !245)
!247 = !DILocation(line: 204, column: 9, scope: !237)
!248 = !DILocation(line: 207, column: 48, scope: !237)
!249 = !DILocation(line: 207, column: 46, scope: !237)
!250 = !DILocation(line: 207, column: 25, scope: !237)
!251 = !DILocation(line: 207, column: 19, scope: !237)
!252 = !DILocation(line: 210, column: 40, scope: !253)
!253 = distinct !DILexicalBlock(scope: !237, file: !3, line: 210, column: 9)
!254 = !DILocation(line: 210, column: 50, scope: !253)
!255 = !DILocation(line: 210, column: 59, scope: !253)
!256 = !DILocation(line: 210, column: 21, scope: !253)
!257 = !DILocation(line: 210, column: 16, scope: !253)
!258 = !DILocation(line: 210, column: 19, scope: !253)
!259 = !{!182, !182, i64 0}
!260 = !DILocation(line: 211, column: 45, scope: !253)
!261 = !DILocation(line: 211, column: 51, scope: !253)
!262 = !DILocation(line: 212, column: 17, scope: !253)
!263 = !DILocation(line: 212, column: 49, scope: !253)
!264 = !DILocation(line: 212, column: 40, scope: !253)
!265 = !DILocation(line: 210, column: 9, scope: !237)
!266 = !DILocation(line: 214, column: 9, scope: !267)
!267 = distinct !DILexicalBlock(scope: !253, file: !3, line: 212, column: 53)
!268 = !DILocation(line: 215, column: 9, scope: !267)
!269 = !DILocation(line: 217, column: 40, scope: !237)
!270 = !DILocation(line: 217, column: 38, scope: !237)
!271 = !DILocation(line: 217, column: 11, scope: !237)
!272 = !DILocation(line: 218, column: 17, scope: !237)
!273 = !DILocation(line: 218, column: 5, scope: !237)
!274 = !DILocation(line: 219, column: 14, scope: !237)
!275 = !DILocation(line: 220, column: 11, scope: !237)
!276 = !DILocation(line: 220, column: 20, scope: !237)
!277 = !DILocation(line: 221, column: 22, scope: !237)
!278 = !DILocation(line: 222, column: 5, scope: !237)
!279 = !DILocation(line: 0, scope: !267)
!280 = !DILocation(line: 223, column: 1, scope: !237)
!281 = distinct !DISubprogram(name: "__quicklistDecompressNode", scope: !3, file: !3, line: 235, type: !238, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !282)
!282 = !{!283, !284, !285}
!283 = !DILocalVariable(name: "node", arg: 1, scope: !281, file: !3, line: 235, type: !26)
!284 = !DILocalVariable(name: "decompressed", scope: !281, file: !3, line: 240, type: !47)
!285 = !DILocalVariable(name: "lzf", scope: !281, file: !3, line: 241, type: !8)
!286 = !DILocation(line: 235, column: 59, scope: !281)
!287 = !DILocation(line: 240, column: 40, scope: !281)
!288 = !DILocation(line: 240, column: 34, scope: !281)
!289 = !DILocation(line: 240, column: 26, scope: !281)
!290 = !DILocation(line: 240, column: 11, scope: !281)
!291 = !DILocation(line: 241, column: 47, scope: !281)
!292 = !DILocation(line: 241, column: 19, scope: !281)
!293 = !DILocation(line: 242, column: 29, scope: !294)
!294 = distinct !DILexicalBlock(scope: !281, file: !3, line: 242, column: 9)
!295 = !DILocation(line: 242, column: 46, scope: !294)
!296 = !DILocation(line: 242, column: 70, scope: !294)
!297 = !DILocation(line: 242, column: 9, scope: !294)
!298 = !DILocation(line: 242, column: 74, scope: !294)
!299 = !DILocation(line: 242, column: 9, scope: !281)
!300 = !DILocation(line: 244, column: 9, scope: !301)
!301 = distinct !DILexicalBlock(scope: !294, file: !3, line: 242, column: 80)
!302 = !DILocation(line: 245, column: 9, scope: !301)
!303 = !DILocation(line: 247, column: 5, scope: !281)
!304 = !DILocation(line: 248, column: 14, scope: !281)
!305 = !DILocation(line: 249, column: 11, scope: !281)
!306 = !DILocation(line: 249, column: 20, scope: !281)
!307 = !DILocation(line: 250, column: 5, scope: !281)
!308 = !DILocation(line: 0, scope: !281)
!309 = !DILocation(line: 251, column: 1, scope: !281)
!310 = distinct !DISubprogram(name: "quicklistGetLzf", scope: !3, file: !3, line: 273, type: !311, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !316)
!311 = !DISubroutineType(types: !312)
!312 = !{!51, !313, !315}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!316 = !{!317, !318, !319}
!317 = !DILocalVariable(name: "node", arg: 1, scope: !310, file: !3, line: 273, type: !313)
!318 = !DILocalVariable(name: "data", arg: 2, scope: !310, file: !3, line: 273, type: !315)
!319 = !DILocalVariable(name: "lzf", scope: !310, file: !3, line: 274, type: !8)
!320 = !DILocation(line: 273, column: 45, scope: !310)
!321 = !DILocation(line: 273, column: 58, scope: !310)
!322 = !DILocation(line: 274, column: 47, scope: !310)
!323 = !DILocation(line: 274, column: 19, scope: !310)
!324 = !DILocation(line: 275, column: 13, scope: !310)
!325 = !DILocation(line: 275, column: 11, scope: !310)
!326 = !DILocation(line: 276, column: 17, scope: !310)
!327 = !DILocation(line: 276, column: 12, scope: !310)
!328 = !DILocation(line: 276, column: 5, scope: !310)
!329 = distinct !DISubprogram(name: "__quicklistCompress", scope: !3, file: !3, line: 285, type: !330, isLocal: false, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !332)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !194, !26}
!332 = !{!333, !334, !335, !336, !337, !338}
!333 = !DILocalVariable(name: "quicklist", arg: 1, scope: !329, file: !3, line: 285, type: !194)
!334 = !DILocalVariable(name: "node", arg: 2, scope: !329, file: !3, line: 286, type: !26)
!335 = !DILocalVariable(name: "forward", scope: !329, file: !3, line: 325, type: !26)
!336 = !DILocalVariable(name: "reverse", scope: !329, file: !3, line: 326, type: !26)
!337 = !DILocalVariable(name: "depth", scope: !329, file: !3, line: 327, type: !20)
!338 = !DILocalVariable(name: "in_depth", scope: !329, file: !3, line: 328, type: !20)
!339 = !DILocation(line: 285, column: 56, scope: !329)
!340 = !DILocation(line: 286, column: 54, scope: !329)
!341 = !DILocation(line: 289, column: 10, scope: !342)
!342 = distinct !DILexicalBlock(scope: !329, file: !3, line: 289, column: 9)
!343 = !DILocation(line: 289, column: 48, scope: !342)
!344 = !DILocation(line: 290, column: 20, scope: !342)
!345 = !DILocation(line: 290, column: 61, scope: !342)
!346 = !DILocation(line: 290, column: 26, scope: !342)
!347 = !DILocation(line: 290, column: 24, scope: !342)
!348 = !DILocation(line: 289, column: 9, scope: !329)
!349 = !DILocation(line: 325, column: 41, scope: !329)
!350 = !DILocation(line: 325, column: 20, scope: !329)
!351 = !DILocation(line: 326, column: 41, scope: !329)
!352 = !DILocation(line: 326, column: 20, scope: !329)
!353 = !DILocation(line: 327, column: 9, scope: !329)
!354 = !DILocation(line: 328, column: 9, scope: !329)
!355 = !DILocation(line: 0, scope: !356)
!356 = distinct !DILexicalBlock(scope: !329, file: !3, line: 329, column: 43)
!357 = !DILocation(line: 329, column: 20, scope: !329)
!358 = !DILocation(line: 329, column: 5, scope: !329)
!359 = !DILocation(line: 330, column: 9, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !3, line: 330, column: 9)
!361 = distinct !DILexicalBlock(scope: !356, file: !3, line: 330, column: 9)
!362 = !DILocation(line: 330, column: 9, scope: !361)
!363 = !DILocation(line: 235, column: 59, scope: !281, inlinedAt: !364)
!364 = distinct !DILocation(line: 330, column: 9, scope: !365)
!365 = distinct !DILexicalBlock(scope: !360, file: !3, line: 330, column: 9)
!366 = !DILocation(line: 240, column: 40, scope: !281, inlinedAt: !364)
!367 = !DILocation(line: 240, column: 34, scope: !281, inlinedAt: !364)
!368 = !DILocation(line: 240, column: 26, scope: !281, inlinedAt: !364)
!369 = !DILocation(line: 240, column: 11, scope: !281, inlinedAt: !364)
!370 = !DILocation(line: 241, column: 47, scope: !281, inlinedAt: !364)
!371 = !DILocation(line: 241, column: 19, scope: !281, inlinedAt: !364)
!372 = !DILocation(line: 242, column: 29, scope: !294, inlinedAt: !364)
!373 = !DILocation(line: 242, column: 46, scope: !294, inlinedAt: !364)
!374 = !DILocation(line: 242, column: 70, scope: !294, inlinedAt: !364)
!375 = !DILocation(line: 242, column: 9, scope: !294, inlinedAt: !364)
!376 = !DILocation(line: 242, column: 74, scope: !294, inlinedAt: !364)
!377 = !DILocation(line: 242, column: 9, scope: !281, inlinedAt: !364)
!378 = !DILocation(line: 244, column: 9, scope: !301, inlinedAt: !364)
!379 = !DILocation(line: 245, column: 9, scope: !301, inlinedAt: !364)
!380 = !DILocation(line: 247, column: 5, scope: !281, inlinedAt: !364)
!381 = !DILocation(line: 248, column: 14, scope: !281, inlinedAt: !364)
!382 = !DILocation(line: 249, column: 20, scope: !281, inlinedAt: !364)
!383 = !DILocation(line: 250, column: 5, scope: !281, inlinedAt: !364)
!384 = !DILocation(line: 251, column: 1, scope: !281, inlinedAt: !364)
!385 = !DILocation(line: 330, column: 9, scope: !365)
!386 = !DILocation(line: 331, column: 9, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !3, line: 331, column: 9)
!388 = distinct !DILexicalBlock(scope: !356, file: !3, line: 331, column: 9)
!389 = !DILocation(line: 331, column: 9, scope: !388)
!390 = !DILocation(line: 235, column: 59, scope: !281, inlinedAt: !391)
!391 = distinct !DILocation(line: 331, column: 9, scope: !392)
!392 = distinct !DILexicalBlock(scope: !387, file: !3, line: 331, column: 9)
!393 = !DILocation(line: 240, column: 40, scope: !281, inlinedAt: !391)
!394 = !DILocation(line: 240, column: 34, scope: !281, inlinedAt: !391)
!395 = !DILocation(line: 240, column: 26, scope: !281, inlinedAt: !391)
!396 = !DILocation(line: 240, column: 11, scope: !281, inlinedAt: !391)
!397 = !DILocation(line: 241, column: 47, scope: !281, inlinedAt: !391)
!398 = !DILocation(line: 241, column: 19, scope: !281, inlinedAt: !391)
!399 = !DILocation(line: 242, column: 29, scope: !294, inlinedAt: !391)
!400 = !DILocation(line: 242, column: 46, scope: !294, inlinedAt: !391)
!401 = !DILocation(line: 242, column: 70, scope: !294, inlinedAt: !391)
!402 = !DILocation(line: 242, column: 9, scope: !294, inlinedAt: !391)
!403 = !DILocation(line: 242, column: 74, scope: !294, inlinedAt: !391)
!404 = !DILocation(line: 242, column: 9, scope: !281, inlinedAt: !391)
!405 = !DILocation(line: 244, column: 9, scope: !301, inlinedAt: !391)
!406 = !DILocation(line: 245, column: 9, scope: !301, inlinedAt: !391)
!407 = !DILocation(line: 247, column: 5, scope: !281, inlinedAt: !391)
!408 = !DILocation(line: 248, column: 14, scope: !281, inlinedAt: !391)
!409 = !DILocation(line: 249, column: 20, scope: !281, inlinedAt: !391)
!410 = !DILocation(line: 250, column: 5, scope: !281, inlinedAt: !391)
!411 = !DILocation(line: 251, column: 1, scope: !281, inlinedAt: !391)
!412 = !DILocation(line: 331, column: 9, scope: !392)
!413 = !DILocation(line: 336, column: 21, scope: !414)
!414 = distinct !DILexicalBlock(scope: !356, file: !3, line: 336, column: 13)
!415 = !DILocation(line: 336, column: 13, scope: !356)
!416 = !DILocation(line: 333, column: 21, scope: !417)
!417 = distinct !DILexicalBlock(scope: !356, file: !3, line: 333, column: 13)
!418 = !DILocation(line: 333, column: 40, scope: !417)
!419 = !DILocation(line: 333, column: 29, scope: !417)
!420 = !DILocation(line: 339, column: 28, scope: !356)
!421 = !DILocation(line: 340, column: 28, scope: !356)
!422 = !DILocation(line: 329, column: 17, scope: !329)
!423 = !DILocation(line: 329, column: 33, scope: !329)
!424 = distinct !{!424, !358, !425}
!425 = !DILocation(line: 341, column: 5, scope: !329)
!426 = !DILocation(line: 343, column: 10, scope: !427)
!427 = distinct !DILexicalBlock(scope: !329, file: !3, line: 343, column: 9)
!428 = !DILocation(line: 0, scope: !329)
!429 = !DILocation(line: 344, column: 9, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !3, line: 344, column: 9)
!431 = distinct !DILexicalBlock(scope: !427, file: !3, line: 344, column: 9)
!432 = !DILocation(line: 343, column: 9, scope: !329)
!433 = !DILocation(line: 344, column: 9, scope: !431)
!434 = !DILocation(line: 344, column: 9, scope: !435)
!435 = distinct !DILexicalBlock(scope: !430, file: !3, line: 344, column: 9)
!436 = !DILocation(line: 346, column: 15, scope: !437)
!437 = distinct !DILexicalBlock(scope: !329, file: !3, line: 346, column: 9)
!438 = !DILocation(line: 346, column: 9, scope: !329)
!439 = !DILocation(line: 348, column: 9, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 348, column: 9)
!441 = distinct !DILexicalBlock(scope: !442, file: !3, line: 348, column: 9)
!442 = distinct !DILexicalBlock(scope: !437, file: !3, line: 346, column: 20)
!443 = !DILocation(line: 348, column: 9, scope: !441)
!444 = !DILocation(line: 348, column: 9, scope: !445)
!445 = distinct !DILexicalBlock(scope: !440, file: !3, line: 348, column: 9)
!446 = !DILocation(line: 349, column: 9, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !3, line: 349, column: 9)
!448 = distinct !DILexicalBlock(scope: !442, file: !3, line: 349, column: 9)
!449 = !DILocation(line: 349, column: 9, scope: !448)
!450 = !DILocation(line: 349, column: 9, scope: !451)
!451 = distinct !DILexicalBlock(scope: !447, file: !3, line: 349, column: 9)
!452 = !DILocation(line: 351, column: 1, scope: !329)
!453 = distinct !DISubprogram(name: "__quicklistInsertNode", scope: !3, file: !3, line: 372, type: !454, isLocal: false, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !21, !26, !26, !20}
!456 = !{!457, !458, !459, !460}
!457 = !DILocalVariable(name: "quicklist", arg: 1, scope: !453, file: !3, line: 372, type: !21)
!458 = !DILocalVariable(name: "old_node", arg: 2, scope: !453, file: !3, line: 373, type: !26)
!459 = !DILocalVariable(name: "new_node", arg: 3, scope: !453, file: !3, line: 374, type: !26)
!460 = !DILocalVariable(name: "after", arg: 4, scope: !453, file: !3, line: 374, type: !20)
!461 = !DILocation(line: 372, column: 52, scope: !453)
!462 = !DILocation(line: 373, column: 56, scope: !453)
!463 = !DILocation(line: 374, column: 56, scope: !453)
!464 = !DILocation(line: 374, column: 70, scope: !453)
!465 = !DILocation(line: 375, column: 9, scope: !466)
!466 = distinct !DILexicalBlock(scope: !453, file: !3, line: 375, column: 9)
!467 = !DILocation(line: 375, column: 9, scope: !453)
!468 = !DILocation(line: 376, column: 19, scope: !469)
!469 = distinct !DILexicalBlock(scope: !466, file: !3, line: 375, column: 16)
!470 = !DILocation(line: 376, column: 24, scope: !469)
!471 = !{!181, !71, i64 0}
!472 = !DILocation(line: 377, column: 13, scope: !473)
!473 = distinct !DILexicalBlock(scope: !469, file: !3, line: 377, column: 13)
!474 = !DILocation(line: 377, column: 13, scope: !469)
!475 = !DILocation(line: 378, column: 40, scope: !476)
!476 = distinct !DILexicalBlock(scope: !473, file: !3, line: 377, column: 23)
!477 = !DILocation(line: 378, column: 23, scope: !476)
!478 = !DILocation(line: 378, column: 28, scope: !476)
!479 = !DILocation(line: 379, column: 27, scope: !480)
!480 = distinct !DILexicalBlock(scope: !476, file: !3, line: 379, column: 17)
!481 = !DILocation(line: 379, column: 17, scope: !480)
!482 = !DILocation(line: 379, column: 17, scope: !476)
!483 = !DILocation(line: 380, column: 33, scope: !480)
!484 = !DILocation(line: 380, column: 38, scope: !480)
!485 = !DILocation(line: 380, column: 17, scope: !480)
!486 = !DILocation(line: 381, column: 28, scope: !476)
!487 = !DILocation(line: 382, column: 9, scope: !476)
!488 = !DILocation(line: 383, column: 24, scope: !489)
!489 = distinct !DILexicalBlock(scope: !469, file: !3, line: 383, column: 13)
!490 = !{!201, !71, i64 8}
!491 = !DILocation(line: 383, column: 29, scope: !489)
!492 = !DILocation(line: 383, column: 13, scope: !469)
!493 = !DILocation(line: 384, column: 29, scope: !489)
!494 = !DILocation(line: 384, column: 13, scope: !489)
!495 = !DILocation(line: 386, column: 19, scope: !496)
!496 = distinct !DILexicalBlock(scope: !466, file: !3, line: 385, column: 12)
!497 = !DILocation(line: 386, column: 24, scope: !496)
!498 = !DILocation(line: 387, column: 13, scope: !499)
!499 = distinct !DILexicalBlock(scope: !496, file: !3, line: 387, column: 13)
!500 = !DILocation(line: 387, column: 13, scope: !496)
!501 = !DILocation(line: 388, column: 40, scope: !502)
!502 = distinct !DILexicalBlock(scope: !499, file: !3, line: 387, column: 23)
!503 = !DILocation(line: 388, column: 28, scope: !502)
!504 = !DILocation(line: 389, column: 27, scope: !505)
!505 = distinct !DILexicalBlock(scope: !502, file: !3, line: 389, column: 17)
!506 = !DILocation(line: 389, column: 17, scope: !505)
!507 = !DILocation(line: 389, column: 17, scope: !502)
!508 = !DILocation(line: 390, column: 33, scope: !505)
!509 = !DILocation(line: 390, column: 38, scope: !505)
!510 = !DILocation(line: 390, column: 17, scope: !505)
!511 = !DILocation(line: 391, column: 28, scope: !502)
!512 = !DILocation(line: 392, column: 9, scope: !502)
!513 = !DILocation(line: 393, column: 24, scope: !514)
!514 = distinct !DILexicalBlock(scope: !496, file: !3, line: 393, column: 13)
!515 = !DILocation(line: 393, column: 29, scope: !514)
!516 = !DILocation(line: 393, column: 13, scope: !496)
!517 = !DILocation(line: 394, column: 29, scope: !514)
!518 = !DILocation(line: 394, column: 13, scope: !514)
!519 = !DILocation(line: 397, column: 20, scope: !520)
!520 = distinct !DILexicalBlock(scope: !453, file: !3, line: 397, column: 9)
!521 = !DILocation(line: 397, column: 24, scope: !520)
!522 = !DILocation(line: 397, column: 9, scope: !453)
!523 = !DILocation(line: 398, column: 38, scope: !524)
!524 = distinct !DILexicalBlock(scope: !520, file: !3, line: 397, column: 30)
!525 = !DILocation(line: 398, column: 43, scope: !524)
!526 = !DILocation(line: 398, column: 20, scope: !524)
!527 = !DILocation(line: 398, column: 25, scope: !524)
!528 = !DILocation(line: 399, column: 5, scope: !524)
!529 = !DILocation(line: 401, column: 9, scope: !530)
!530 = distinct !DILexicalBlock(scope: !453, file: !3, line: 401, column: 9)
!531 = !DILocation(line: 401, column: 9, scope: !453)
!532 = !DILocation(line: 402, column: 9, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !3, line: 402, column: 9)
!534 = distinct !DILexicalBlock(scope: !530, file: !3, line: 402, column: 9)
!535 = !DILocation(line: 402, column: 9, scope: !534)
!536 = !DILocation(line: 402, column: 9, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !3, line: 402, column: 9)
!538 = distinct !DILexicalBlock(scope: !533, file: !3, line: 402, column: 9)
!539 = !DILocation(line: 402, column: 9, scope: !538)
!540 = !DILocation(line: 402, column: 9, scope: !541)
!541 = distinct !DILexicalBlock(scope: !537, file: !3, line: 402, column: 9)
!542 = !DILocation(line: 404, column: 19, scope: !453)
!543 = !DILocation(line: 405, column: 1, scope: !453)
!544 = distinct !DISubprogram(name: "_quicklistInsertNodeBefore", scope: !3, file: !3, line: 408, type: !545, isLocal: false, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !547)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !21, !26, !26}
!547 = !{!548, !549, !550}
!548 = !DILocalVariable(name: "quicklist", arg: 1, scope: !544, file: !3, line: 408, type: !21)
!549 = !DILocalVariable(name: "old_node", arg: 2, scope: !544, file: !3, line: 409, type: !26)
!550 = !DILocalVariable(name: "new_node", arg: 3, scope: !544, file: !3, line: 410, type: !26)
!551 = !DILocation(line: 408, column: 57, scope: !544)
!552 = !DILocation(line: 409, column: 61, scope: !544)
!553 = !DILocation(line: 410, column: 61, scope: !544)
!554 = !DILocation(line: 372, column: 52, scope: !453, inlinedAt: !555)
!555 = distinct !DILocation(line: 411, column: 5, scope: !544)
!556 = !DILocation(line: 373, column: 56, scope: !453, inlinedAt: !555)
!557 = !DILocation(line: 374, column: 56, scope: !453, inlinedAt: !555)
!558 = !DILocation(line: 374, column: 70, scope: !453, inlinedAt: !555)
!559 = !DILocation(line: 386, column: 19, scope: !496, inlinedAt: !555)
!560 = !DILocation(line: 386, column: 24, scope: !496, inlinedAt: !555)
!561 = !DILocation(line: 387, column: 13, scope: !499, inlinedAt: !555)
!562 = !DILocation(line: 387, column: 13, scope: !496, inlinedAt: !555)
!563 = !DILocation(line: 388, column: 40, scope: !502, inlinedAt: !555)
!564 = !DILocation(line: 388, column: 28, scope: !502, inlinedAt: !555)
!565 = !DILocation(line: 389, column: 27, scope: !505, inlinedAt: !555)
!566 = !DILocation(line: 389, column: 17, scope: !505, inlinedAt: !555)
!567 = !DILocation(line: 389, column: 17, scope: !502, inlinedAt: !555)
!568 = !DILocation(line: 390, column: 33, scope: !505, inlinedAt: !555)
!569 = !DILocation(line: 390, column: 38, scope: !505, inlinedAt: !555)
!570 = !DILocation(line: 390, column: 17, scope: !505, inlinedAt: !555)
!571 = !DILocation(line: 391, column: 28, scope: !502, inlinedAt: !555)
!572 = !DILocation(line: 392, column: 9, scope: !502, inlinedAt: !555)
!573 = !DILocation(line: 393, column: 24, scope: !514, inlinedAt: !555)
!574 = !DILocation(line: 393, column: 29, scope: !514, inlinedAt: !555)
!575 = !DILocation(line: 393, column: 13, scope: !496, inlinedAt: !555)
!576 = !DILocation(line: 394, column: 29, scope: !514, inlinedAt: !555)
!577 = !DILocation(line: 394, column: 13, scope: !514, inlinedAt: !555)
!578 = !DILocation(line: 397, column: 20, scope: !520, inlinedAt: !555)
!579 = !DILocation(line: 397, column: 24, scope: !520, inlinedAt: !555)
!580 = !DILocation(line: 397, column: 9, scope: !453, inlinedAt: !555)
!581 = !DILocation(line: 398, column: 38, scope: !524, inlinedAt: !555)
!582 = !DILocation(line: 398, column: 43, scope: !524, inlinedAt: !555)
!583 = !DILocation(line: 398, column: 25, scope: !524, inlinedAt: !555)
!584 = !DILocation(line: 399, column: 5, scope: !524, inlinedAt: !555)
!585 = !DILocation(line: 401, column: 9, scope: !453, inlinedAt: !555)
!586 = !DILocation(line: 402, column: 9, scope: !533, inlinedAt: !555)
!587 = !DILocation(line: 402, column: 9, scope: !534, inlinedAt: !555)
!588 = !DILocation(line: 402, column: 9, scope: !537, inlinedAt: !555)
!589 = !DILocation(line: 402, column: 9, scope: !538, inlinedAt: !555)
!590 = !DILocation(line: 402, column: 9, scope: !541, inlinedAt: !555)
!591 = !DILocation(line: 404, column: 19, scope: !453, inlinedAt: !555)
!592 = !DILocation(line: 405, column: 1, scope: !453, inlinedAt: !555)
!593 = !DILocation(line: 412, column: 1, scope: !544)
!594 = distinct !DISubprogram(name: "_quicklistInsertNodeAfter", scope: !3, file: !3, line: 414, type: !545, isLocal: false, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !595)
!595 = !{!596, !597, !598}
!596 = !DILocalVariable(name: "quicklist", arg: 1, scope: !594, file: !3, line: 414, type: !21)
!597 = !DILocalVariable(name: "old_node", arg: 2, scope: !594, file: !3, line: 415, type: !26)
!598 = !DILocalVariable(name: "new_node", arg: 3, scope: !594, file: !3, line: 416, type: !26)
!599 = !DILocation(line: 414, column: 56, scope: !594)
!600 = !DILocation(line: 415, column: 60, scope: !594)
!601 = !DILocation(line: 416, column: 60, scope: !594)
!602 = !DILocation(line: 372, column: 52, scope: !453, inlinedAt: !603)
!603 = distinct !DILocation(line: 417, column: 5, scope: !594)
!604 = !DILocation(line: 373, column: 56, scope: !453, inlinedAt: !603)
!605 = !DILocation(line: 374, column: 56, scope: !453, inlinedAt: !603)
!606 = !DILocation(line: 374, column: 70, scope: !453, inlinedAt: !603)
!607 = !DILocation(line: 376, column: 19, scope: !469, inlinedAt: !603)
!608 = !DILocation(line: 376, column: 24, scope: !469, inlinedAt: !603)
!609 = !DILocation(line: 377, column: 13, scope: !473, inlinedAt: !603)
!610 = !DILocation(line: 377, column: 13, scope: !469, inlinedAt: !603)
!611 = !DILocation(line: 378, column: 40, scope: !476, inlinedAt: !603)
!612 = !DILocation(line: 378, column: 23, scope: !476, inlinedAt: !603)
!613 = !DILocation(line: 378, column: 28, scope: !476, inlinedAt: !603)
!614 = !DILocation(line: 379, column: 27, scope: !480, inlinedAt: !603)
!615 = !DILocation(line: 379, column: 17, scope: !480, inlinedAt: !603)
!616 = !DILocation(line: 379, column: 17, scope: !476, inlinedAt: !603)
!617 = !DILocation(line: 380, column: 33, scope: !480, inlinedAt: !603)
!618 = !DILocation(line: 380, column: 38, scope: !480, inlinedAt: !603)
!619 = !DILocation(line: 380, column: 17, scope: !480, inlinedAt: !603)
!620 = !DILocation(line: 381, column: 28, scope: !476, inlinedAt: !603)
!621 = !DILocation(line: 382, column: 9, scope: !476, inlinedAt: !603)
!622 = !DILocation(line: 383, column: 24, scope: !489, inlinedAt: !603)
!623 = !DILocation(line: 383, column: 29, scope: !489, inlinedAt: !603)
!624 = !DILocation(line: 383, column: 13, scope: !469, inlinedAt: !603)
!625 = !DILocation(line: 384, column: 29, scope: !489, inlinedAt: !603)
!626 = !DILocation(line: 384, column: 13, scope: !489, inlinedAt: !603)
!627 = !DILocation(line: 397, column: 20, scope: !520, inlinedAt: !603)
!628 = !DILocation(line: 397, column: 24, scope: !520, inlinedAt: !603)
!629 = !DILocation(line: 397, column: 9, scope: !453, inlinedAt: !603)
!630 = !DILocation(line: 398, column: 43, scope: !524, inlinedAt: !603)
!631 = !DILocation(line: 398, column: 20, scope: !524, inlinedAt: !603)
!632 = !DILocation(line: 398, column: 25, scope: !524, inlinedAt: !603)
!633 = !DILocation(line: 399, column: 5, scope: !524, inlinedAt: !603)
!634 = !DILocation(line: 401, column: 9, scope: !453, inlinedAt: !603)
!635 = !DILocation(line: 402, column: 9, scope: !533, inlinedAt: !603)
!636 = !DILocation(line: 402, column: 9, scope: !534, inlinedAt: !603)
!637 = !DILocation(line: 402, column: 9, scope: !537, inlinedAt: !603)
!638 = !DILocation(line: 402, column: 9, scope: !538, inlinedAt: !603)
!639 = !DILocation(line: 402, column: 9, scope: !541, inlinedAt: !603)
!640 = !DILocation(line: 404, column: 19, scope: !453, inlinedAt: !603)
!641 = !DILocation(line: 405, column: 1, scope: !453, inlinedAt: !603)
!642 = !DILocation(line: 418, column: 1, scope: !594)
!643 = distinct !DISubprogram(name: "_quicklistNodeSizeMeetsOptimizationRequirement", scope: !3, file: !3, line: 421, type: !644, isLocal: false, isDefinition: true, scopeLine: 422, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !647)
!644 = !DISubroutineType(types: !645)
!645 = !{!20, !50, !646}
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!647 = !{!648, !649, !650}
!648 = !DILocalVariable(name: "sz", arg: 1, scope: !643, file: !3, line: 421, type: !50)
!649 = !DILocalVariable(name: "fill", arg: 2, scope: !643, file: !3, line: 422, type: !646)
!650 = !DILocalVariable(name: "offset", scope: !643, file: !3, line: 426, type: !51)
!651 = !DILocation(line: 421, column: 61, scope: !643)
!652 = !DILocation(line: 422, column: 58, scope: !643)
!653 = !DILocation(line: 427, column: 16, scope: !654)
!654 = distinct !DILexicalBlock(scope: !643, file: !3, line: 427, column: 9)
!655 = !DILocation(line: 423, column: 9, scope: !643)
!656 = !DILocation(line: 426, column: 29, scope: !643)
!657 = !DILocation(line: 426, column: 21, scope: !643)
!658 = !DILocation(line: 426, column: 12, scope: !643)
!659 = !DILocation(line: 428, column: 19, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 428, column: 13)
!661 = distinct !DILexicalBlock(scope: !654, file: !3, line: 427, column: 78)
!662 = !DILocation(line: 428, column: 16, scope: !660)
!663 = !DILocation(line: 431, column: 13, scope: !664)
!664 = distinct !DILexicalBlock(scope: !660, file: !3, line: 430, column: 16)
!665 = !DILocation(line: 0, scope: !666)
!666 = distinct !DILexicalBlock(scope: !660, file: !3, line: 428, column: 47)
!667 = !DILocation(line: 436, column: 1, scope: !643)
!668 = distinct !DISubprogram(name: "_quicklistNodeAllowInsert", scope: !3, file: !3, line: 440, type: !669, isLocal: false, isDefinition: true, scopeLine: 441, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !671)
!669 = !DISubroutineType(types: !670)
!670 = !{!20, !313, !646, !50}
!671 = !{!672, !673, !674, !675, !676}
!672 = !DILocalVariable(name: "node", arg: 1, scope: !668, file: !3, line: 440, type: !313)
!673 = !DILocalVariable(name: "fill", arg: 2, scope: !668, file: !3, line: 441, type: !646)
!674 = !DILocalVariable(name: "sz", arg: 3, scope: !668, file: !3, line: 441, type: !50)
!675 = !DILocalVariable(name: "ziplist_overhead", scope: !668, file: !3, line: 445, type: !20)
!676 = !DILocalVariable(name: "new_sz", scope: !668, file: !3, line: 461, type: !14)
!677 = !DILocation(line: 440, column: 65, scope: !668)
!678 = !DILocation(line: 441, column: 54, scope: !668)
!679 = !DILocation(line: 441, column: 73, scope: !668)
!680 = !DILocation(line: 442, column: 9, scope: !681)
!681 = distinct !DILexicalBlock(scope: !668, file: !3, line: 442, column: 9)
!682 = !DILocation(line: 442, column: 9, scope: !668)
!683 = !{!"branch_weights", i32 1, i32 2000}
!684 = !DILocation(line: 447, column: 12, scope: !685)
!685 = distinct !DILexicalBlock(scope: !668, file: !3, line: 447, column: 9)
!686 = !DILocation(line: 448, column: 9, scope: !685)
!687 = !DILocation(line: 445, column: 9, scope: !668)
!688 = !DILocation(line: 453, column: 12, scope: !689)
!689 = distinct !DILexicalBlock(scope: !668, file: !3, line: 453, column: 9)
!690 = !DILocation(line: 453, column: 9, scope: !668)
!691 = !DILocation(line: 454, column: 26, scope: !689)
!692 = !DILocation(line: 454, column: 9, scope: !689)
!693 = !DILocation(line: 455, column: 14, scope: !694)
!694 = distinct !DILexicalBlock(scope: !689, file: !3, line: 455, column: 14)
!695 = !DILocation(line: 455, column: 14, scope: !689)
!696 = !{!"branch_weights", i32 2000, i32 1}
!697 = !DILocation(line: 456, column: 26, scope: !694)
!698 = !DILocation(line: 456, column: 9, scope: !694)
!699 = !DILocation(line: 458, column: 26, scope: !694)
!700 = !DILocation(line: 0, scope: !694)
!701 = !DILocation(line: 461, column: 33, scope: !668)
!702 = !DILocation(line: 461, column: 27, scope: !668)
!703 = !DILocation(line: 461, column: 18, scope: !668)
!704 = !DILocation(line: 422, column: 58, scope: !643, inlinedAt: !705)
!705 = distinct !DILocation(line: 462, column: 9, scope: !706)
!706 = distinct !DILexicalBlock(scope: !668, file: !3, line: 462, column: 9)
!707 = !DILocation(line: 427, column: 16, scope: !654, inlinedAt: !705)
!708 = !DILocation(line: 423, column: 9, scope: !643, inlinedAt: !705)
!709 = !DILocation(line: 436, column: 1, scope: !643, inlinedAt: !705)
!710 = !DILocation(line: 462, column: 9, scope: !668)
!711 = !DILocation(line: 462, column: 9, scope: !706)
!712 = !DILocation(line: 421, column: 61, scope: !643, inlinedAt: !705)
!713 = !DILocation(line: 426, column: 29, scope: !643, inlinedAt: !705)
!714 = !DILocation(line: 426, column: 21, scope: !643, inlinedAt: !705)
!715 = !DILocation(line: 426, column: 12, scope: !643, inlinedAt: !705)
!716 = !DILocation(line: 428, column: 19, scope: !660, inlinedAt: !705)
!717 = !DILocation(line: 428, column: 16, scope: !660, inlinedAt: !705)
!718 = !DILocation(line: 464, column: 15, scope: !719)
!719 = distinct !DILexicalBlock(scope: !706, file: !3, line: 464, column: 14)
!720 = !DILocation(line: 464, column: 14, scope: !706)
!721 = !DILocation(line: 466, column: 25, scope: !722)
!722 = distinct !DILexicalBlock(scope: !719, file: !3, line: 466, column: 14)
!723 = !DILocation(line: 466, column: 31, scope: !722)
!724 = !DILocation(line: 467, column: 9, scope: !722)
!725 = !DILocation(line: 0, scope: !706)
!726 = !DILocation(line: 470, column: 1, scope: !668)
!727 = distinct !DISubprogram(name: "_quicklistNodeAllowMerge", scope: !3, file: !3, line: 472, type: !728, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !730)
!728 = !DISubroutineType(types: !729)
!729 = !{!20, !313, !313, !646}
!730 = !{!731, !732, !733, !734}
!731 = !DILocalVariable(name: "a", arg: 1, scope: !727, file: !3, line: 472, type: !313)
!732 = !DILocalVariable(name: "b", arg: 2, scope: !727, file: !3, line: 473, type: !313)
!733 = !DILocalVariable(name: "fill", arg: 3, scope: !727, file: !3, line: 474, type: !646)
!734 = !DILocalVariable(name: "merge_sz", scope: !727, file: !3, line: 480, type: !14)
!735 = !DILocation(line: 472, column: 64, scope: !727)
!736 = !DILocation(line: 473, column: 64, scope: !727)
!737 = !DILocation(line: 474, column: 53, scope: !727)
!738 = !DILocation(line: 475, column: 10, scope: !739)
!739 = distinct !DILexicalBlock(scope: !727, file: !3, line: 475, column: 9)
!740 = !DILocation(line: 475, column: 16, scope: !739)
!741 = !DILocation(line: 475, column: 12, scope: !739)
!742 = !DILocation(line: 480, column: 32, scope: !727)
!743 = !DILocation(line: 480, column: 40, scope: !727)
!744 = !DILocation(line: 480, column: 35, scope: !727)
!745 = !DILocation(line: 480, column: 43, scope: !727)
!746 = !DILocation(line: 480, column: 18, scope: !727)
!747 = !DILocation(line: 422, column: 58, scope: !643, inlinedAt: !748)
!748 = distinct !DILocation(line: 481, column: 9, scope: !749)
!749 = distinct !DILexicalBlock(scope: !727, file: !3, line: 481, column: 9)
!750 = !DILocation(line: 427, column: 16, scope: !654, inlinedAt: !748)
!751 = !DILocation(line: 423, column: 9, scope: !643, inlinedAt: !748)
!752 = !DILocation(line: 436, column: 1, scope: !643, inlinedAt: !748)
!753 = !DILocation(line: 481, column: 9, scope: !727)
!754 = !DILocation(line: 481, column: 9, scope: !749)
!755 = !DILocation(line: 421, column: 61, scope: !643, inlinedAt: !748)
!756 = !DILocation(line: 426, column: 29, scope: !643, inlinedAt: !748)
!757 = !DILocation(line: 426, column: 21, scope: !643, inlinedAt: !748)
!758 = !DILocation(line: 426, column: 12, scope: !643, inlinedAt: !748)
!759 = !DILocation(line: 428, column: 19, scope: !660, inlinedAt: !748)
!760 = !DILocation(line: 428, column: 16, scope: !660, inlinedAt: !748)
!761 = !DILocation(line: 483, column: 15, scope: !762)
!762 = distinct !DILexicalBlock(scope: !749, file: !3, line: 483, column: 14)
!763 = !DILocation(line: 483, column: 14, scope: !749)
!764 = !DILocation(line: 485, column: 23, scope: !765)
!765 = distinct !DILexicalBlock(scope: !762, file: !3, line: 485, column: 14)
!766 = !DILocation(line: 485, column: 34, scope: !765)
!767 = !DILocation(line: 485, column: 29, scope: !765)
!768 = !DILocation(line: 485, column: 41, scope: !765)
!769 = !DILocation(line: 488, column: 9, scope: !765)
!770 = !DILocation(line: 0, scope: !739)
!771 = !DILocation(line: 489, column: 1, scope: !727)
!772 = distinct !DISubprogram(name: "quicklistPushHead", scope: !3, file: !3, line: 500, type: !773, isLocal: false, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !775)
!773 = !DISubroutineType(types: !774)
!774 = !{!20, !21, !47, !51}
!775 = !{!776, !777, !778, !779, !780}
!776 = !DILocalVariable(name: "quicklist", arg: 1, scope: !772, file: !3, line: 500, type: !21)
!777 = !DILocalVariable(name: "value", arg: 2, scope: !772, file: !3, line: 500, type: !47)
!778 = !DILocalVariable(name: "sz", arg: 3, scope: !772, file: !3, line: 500, type: !51)
!779 = !DILocalVariable(name: "orig_head", scope: !772, file: !3, line: 501, type: !26)
!780 = !DILocalVariable(name: "node", scope: !781, file: !3, line: 508, type: !26)
!781 = distinct !DILexicalBlock(scope: !782, file: !3, line: 507, column: 12)
!782 = distinct !DILexicalBlock(scope: !772, file: !3, line: 502, column: 9)
!783 = !DILocation(line: 500, column: 34, scope: !772)
!784 = !DILocation(line: 500, column: 51, scope: !772)
!785 = !DILocation(line: 500, column: 65, scope: !772)
!786 = !DILocation(line: 501, column: 43, scope: !772)
!787 = !DILocation(line: 501, column: 20, scope: !772)
!788 = !DILocation(line: 502, column: 9, scope: !782)
!789 = !DILocation(line: 440, column: 65, scope: !668, inlinedAt: !790)
!790 = distinct !DILocation(line: 502, column: 9, scope: !782)
!791 = !DILocation(line: 441, column: 54, scope: !668, inlinedAt: !790)
!792 = !DILocation(line: 441, column: 73, scope: !668, inlinedAt: !790)
!793 = !DILocation(line: 442, column: 9, scope: !681, inlinedAt: !790)
!794 = !DILocation(line: 442, column: 9, scope: !668, inlinedAt: !790)
!795 = !DILocation(line: 509, column: 53, scope: !781)
!796 = !DILocation(line: 447, column: 12, scope: !685, inlinedAt: !790)
!797 = !DILocation(line: 448, column: 9, scope: !685, inlinedAt: !790)
!798 = !DILocation(line: 445, column: 9, scope: !668, inlinedAt: !790)
!799 = !DILocation(line: 453, column: 12, scope: !689, inlinedAt: !790)
!800 = !DILocation(line: 453, column: 9, scope: !668, inlinedAt: !790)
!801 = !DILocation(line: 454, column: 26, scope: !689, inlinedAt: !790)
!802 = !DILocation(line: 454, column: 9, scope: !689, inlinedAt: !790)
!803 = !DILocation(line: 455, column: 14, scope: !694, inlinedAt: !790)
!804 = !DILocation(line: 455, column: 14, scope: !689, inlinedAt: !790)
!805 = !DILocation(line: 456, column: 26, scope: !694, inlinedAt: !790)
!806 = !DILocation(line: 456, column: 9, scope: !694, inlinedAt: !790)
!807 = !DILocation(line: 458, column: 26, scope: !694, inlinedAt: !790)
!808 = !DILocation(line: 0, scope: !694, inlinedAt: !790)
!809 = !DILocation(line: 461, column: 33, scope: !668, inlinedAt: !790)
!810 = !DILocation(line: 461, column: 27, scope: !668, inlinedAt: !790)
!811 = !DILocation(line: 461, column: 18, scope: !668, inlinedAt: !790)
!812 = !DILocation(line: 422, column: 58, scope: !643, inlinedAt: !813)
!813 = distinct !DILocation(line: 462, column: 9, scope: !706, inlinedAt: !790)
!814 = !DILocation(line: 427, column: 16, scope: !654, inlinedAt: !813)
!815 = !DILocation(line: 423, column: 9, scope: !643, inlinedAt: !813)
!816 = !DILocation(line: 436, column: 1, scope: !643, inlinedAt: !813)
!817 = !DILocation(line: 462, column: 9, scope: !668, inlinedAt: !790)
!818 = !DILocation(line: 462, column: 9, scope: !706, inlinedAt: !790)
!819 = !DILocation(line: 421, column: 61, scope: !643, inlinedAt: !813)
!820 = !DILocation(line: 426, column: 29, scope: !643, inlinedAt: !813)
!821 = !DILocation(line: 426, column: 21, scope: !643, inlinedAt: !813)
!822 = !DILocation(line: 426, column: 12, scope: !643, inlinedAt: !813)
!823 = !DILocation(line: 428, column: 19, scope: !660, inlinedAt: !813)
!824 = !DILocation(line: 428, column: 16, scope: !660, inlinedAt: !813)
!825 = !DILocation(line: 470, column: 1, scope: !668, inlinedAt: !790)
!826 = !DILocation(line: 502, column: 9, scope: !772)
!827 = !DILocation(line: 464, column: 15, scope: !719, inlinedAt: !790)
!828 = !DILocation(line: 464, column: 14, scope: !706, inlinedAt: !790)
!829 = !DILocation(line: 466, column: 25, scope: !722, inlinedAt: !790)
!830 = !DILocation(line: 466, column: 31, scope: !722, inlinedAt: !790)
!831 = !DILocation(line: 505, column: 42, scope: !832)
!832 = distinct !DILexicalBlock(scope: !782, file: !3, line: 503, column: 79)
!833 = !DILocation(line: 505, column: 13, scope: !832)
!834 = !DILocation(line: 504, column: 20, scope: !832)
!835 = !DILocation(line: 504, column: 26, scope: !832)
!836 = !DILocation(line: 504, column: 29, scope: !832)
!837 = !DILocation(line: 506, column: 9, scope: !838)
!838 = distinct !DILexicalBlock(scope: !832, file: !3, line: 506, column: 9)
!839 = !DILocation(line: 507, column: 5, scope: !832)
!840 = !DILocation(line: 160, column: 12, scope: !171, inlinedAt: !841)
!841 = distinct !DILocation(line: 508, column: 31, scope: !781)
!842 = !DILocation(line: 159, column: 20, scope: !171, inlinedAt: !841)
!843 = !DILocation(line: 161, column: 11, scope: !171, inlinedAt: !841)
!844 = !DILocation(line: 161, column: 14, scope: !171, inlinedAt: !841)
!845 = !DILocation(line: 162, column: 11, scope: !171, inlinedAt: !841)
!846 = !DILocation(line: 162, column: 17, scope: !171, inlinedAt: !841)
!847 = !DILocation(line: 163, column: 11, scope: !171, inlinedAt: !841)
!848 = !DILocation(line: 163, column: 14, scope: !171, inlinedAt: !841)
!849 = !DILocation(line: 164, column: 11, scope: !171, inlinedAt: !841)
!850 = !DILocation(line: 164, column: 29, scope: !171, inlinedAt: !841)
!851 = !DILocation(line: 167, column: 22, scope: !171, inlinedAt: !841)
!852 = !DILocation(line: 168, column: 5, scope: !171, inlinedAt: !841)
!853 = !DILocation(line: 508, column: 24, scope: !781)
!854 = !DILocation(line: 509, column: 32, scope: !781)
!855 = !DILocation(line: 509, column: 20, scope: !781)
!856 = !DILocation(line: 509, column: 18, scope: !781)
!857 = !DILocation(line: 511, column: 9, scope: !858)
!858 = distinct !DILexicalBlock(scope: !781, file: !3, line: 511, column: 9)
!859 = !DILocation(line: 512, column: 58, scope: !781)
!860 = !DILocation(line: 408, column: 57, scope: !544, inlinedAt: !861)
!861 = distinct !DILocation(line: 512, column: 9, scope: !781)
!862 = !DILocation(line: 409, column: 61, scope: !544, inlinedAt: !861)
!863 = !DILocation(line: 410, column: 61, scope: !544, inlinedAt: !861)
!864 = !DILocation(line: 372, column: 52, scope: !453, inlinedAt: !865)
!865 = distinct !DILocation(line: 411, column: 5, scope: !544, inlinedAt: !861)
!866 = !DILocation(line: 373, column: 56, scope: !453, inlinedAt: !865)
!867 = !DILocation(line: 374, column: 56, scope: !453, inlinedAt: !865)
!868 = !DILocation(line: 374, column: 70, scope: !453, inlinedAt: !865)
!869 = !DILocation(line: 386, column: 24, scope: !496, inlinedAt: !865)
!870 = !DILocation(line: 387, column: 13, scope: !499, inlinedAt: !865)
!871 = !DILocation(line: 387, column: 13, scope: !496, inlinedAt: !865)
!872 = !DILocation(line: 388, column: 40, scope: !502, inlinedAt: !865)
!873 = !DILocation(line: 388, column: 28, scope: !502, inlinedAt: !865)
!874 = !DILocation(line: 389, column: 27, scope: !505, inlinedAt: !865)
!875 = !DILocation(line: 389, column: 17, scope: !505, inlinedAt: !865)
!876 = !DILocation(line: 389, column: 17, scope: !502, inlinedAt: !865)
!877 = !DILocation(line: 390, column: 33, scope: !505, inlinedAt: !865)
!878 = !DILocation(line: 390, column: 38, scope: !505, inlinedAt: !865)
!879 = !DILocation(line: 390, column: 17, scope: !505, inlinedAt: !865)
!880 = !DILocation(line: 391, column: 28, scope: !502, inlinedAt: !865)
!881 = !DILocation(line: 392, column: 9, scope: !502, inlinedAt: !865)
!882 = !DILocation(line: 394, column: 29, scope: !514, inlinedAt: !865)
!883 = !DILocation(line: 397, column: 20, scope: !520, inlinedAt: !865)
!884 = !DILocation(line: 397, column: 24, scope: !520, inlinedAt: !865)
!885 = !DILocation(line: 397, column: 9, scope: !453, inlinedAt: !865)
!886 = !DILocation(line: 398, column: 38, scope: !524, inlinedAt: !865)
!887 = !DILocation(line: 398, column: 43, scope: !524, inlinedAt: !865)
!888 = !DILocation(line: 398, column: 25, scope: !524, inlinedAt: !865)
!889 = !DILocation(line: 399, column: 5, scope: !524, inlinedAt: !865)
!890 = !DILocation(line: 401, column: 9, scope: !453, inlinedAt: !865)
!891 = !DILocation(line: 402, column: 9, scope: !533, inlinedAt: !865)
!892 = !DILocation(line: 402, column: 9, scope: !534, inlinedAt: !865)
!893 = !DILocation(line: 402, column: 9, scope: !537, inlinedAt: !865)
!894 = !DILocation(line: 402, column: 9, scope: !538, inlinedAt: !865)
!895 = !DILocation(line: 402, column: 9, scope: !541, inlinedAt: !865)
!896 = !DILocation(line: 404, column: 19, scope: !453, inlinedAt: !865)
!897 = !DILocation(line: 405, column: 1, scope: !453, inlinedAt: !865)
!898 = !DILocation(line: 412, column: 1, scope: !544, inlinedAt: !861)
!899 = !DILocation(line: 515, column: 16, scope: !772)
!900 = !DILocation(line: 514, column: 16, scope: !772)
!901 = !DILocation(line: 514, column: 21, scope: !772)
!902 = !DILocation(line: 515, column: 22, scope: !772)
!903 = !DILocation(line: 515, column: 27, scope: !772)
!904 = !DILocation(line: 516, column: 37, scope: !772)
!905 = !DILocation(line: 516, column: 23, scope: !772)
!906 = !DILocation(line: 516, column: 5, scope: !772)
!907 = distinct !DISubprogram(name: "quicklistPushTail", scope: !3, file: !3, line: 523, type: !773, isLocal: false, isDefinition: true, scopeLine: 523, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !908)
!908 = !{!909, !910, !911, !912, !913}
!909 = !DILocalVariable(name: "quicklist", arg: 1, scope: !907, file: !3, line: 523, type: !21)
!910 = !DILocalVariable(name: "value", arg: 2, scope: !907, file: !3, line: 523, type: !47)
!911 = !DILocalVariable(name: "sz", arg: 3, scope: !907, file: !3, line: 523, type: !51)
!912 = !DILocalVariable(name: "orig_tail", scope: !907, file: !3, line: 524, type: !26)
!913 = !DILocalVariable(name: "node", scope: !914, file: !3, line: 531, type: !26)
!914 = distinct !DILexicalBlock(scope: !915, file: !3, line: 530, column: 12)
!915 = distinct !DILexicalBlock(scope: !907, file: !3, line: 525, column: 9)
!916 = !DILocation(line: 523, column: 34, scope: !907)
!917 = !DILocation(line: 523, column: 51, scope: !907)
!918 = !DILocation(line: 523, column: 65, scope: !907)
!919 = !DILocation(line: 524, column: 43, scope: !907)
!920 = !DILocation(line: 524, column: 20, scope: !907)
!921 = !DILocation(line: 525, column: 9, scope: !915)
!922 = !DILocation(line: 440, column: 65, scope: !668, inlinedAt: !923)
!923 = distinct !DILocation(line: 525, column: 9, scope: !915)
!924 = !DILocation(line: 441, column: 54, scope: !668, inlinedAt: !923)
!925 = !DILocation(line: 441, column: 73, scope: !668, inlinedAt: !923)
!926 = !DILocation(line: 442, column: 9, scope: !681, inlinedAt: !923)
!927 = !DILocation(line: 442, column: 9, scope: !668, inlinedAt: !923)
!928 = !DILocation(line: 532, column: 53, scope: !914)
!929 = !DILocation(line: 447, column: 12, scope: !685, inlinedAt: !923)
!930 = !DILocation(line: 448, column: 9, scope: !685, inlinedAt: !923)
!931 = !DILocation(line: 445, column: 9, scope: !668, inlinedAt: !923)
!932 = !DILocation(line: 453, column: 12, scope: !689, inlinedAt: !923)
!933 = !DILocation(line: 453, column: 9, scope: !668, inlinedAt: !923)
!934 = !DILocation(line: 454, column: 26, scope: !689, inlinedAt: !923)
!935 = !DILocation(line: 454, column: 9, scope: !689, inlinedAt: !923)
!936 = !DILocation(line: 455, column: 14, scope: !694, inlinedAt: !923)
!937 = !DILocation(line: 455, column: 14, scope: !689, inlinedAt: !923)
!938 = !DILocation(line: 456, column: 26, scope: !694, inlinedAt: !923)
!939 = !DILocation(line: 456, column: 9, scope: !694, inlinedAt: !923)
!940 = !DILocation(line: 458, column: 26, scope: !694, inlinedAt: !923)
!941 = !DILocation(line: 0, scope: !694, inlinedAt: !923)
!942 = !DILocation(line: 461, column: 33, scope: !668, inlinedAt: !923)
!943 = !DILocation(line: 461, column: 27, scope: !668, inlinedAt: !923)
!944 = !DILocation(line: 461, column: 18, scope: !668, inlinedAt: !923)
!945 = !DILocation(line: 422, column: 58, scope: !643, inlinedAt: !946)
!946 = distinct !DILocation(line: 462, column: 9, scope: !706, inlinedAt: !923)
!947 = !DILocation(line: 427, column: 16, scope: !654, inlinedAt: !946)
!948 = !DILocation(line: 423, column: 9, scope: !643, inlinedAt: !946)
!949 = !DILocation(line: 436, column: 1, scope: !643, inlinedAt: !946)
!950 = !DILocation(line: 462, column: 9, scope: !668, inlinedAt: !923)
!951 = !DILocation(line: 462, column: 9, scope: !706, inlinedAt: !923)
!952 = !DILocation(line: 421, column: 61, scope: !643, inlinedAt: !946)
!953 = !DILocation(line: 426, column: 29, scope: !643, inlinedAt: !946)
!954 = !DILocation(line: 426, column: 21, scope: !643, inlinedAt: !946)
!955 = !DILocation(line: 426, column: 12, scope: !643, inlinedAt: !946)
!956 = !DILocation(line: 428, column: 19, scope: !660, inlinedAt: !946)
!957 = !DILocation(line: 428, column: 16, scope: !660, inlinedAt: !946)
!958 = !DILocation(line: 470, column: 1, scope: !668, inlinedAt: !923)
!959 = !DILocation(line: 525, column: 9, scope: !907)
!960 = !DILocation(line: 464, column: 15, scope: !719, inlinedAt: !923)
!961 = !DILocation(line: 464, column: 14, scope: !706, inlinedAt: !923)
!962 = !DILocation(line: 466, column: 25, scope: !722, inlinedAt: !923)
!963 = !DILocation(line: 466, column: 31, scope: !722, inlinedAt: !923)
!964 = !DILocation(line: 528, column: 42, scope: !965)
!965 = distinct !DILexicalBlock(scope: !915, file: !3, line: 526, column: 79)
!966 = !DILocation(line: 528, column: 13, scope: !965)
!967 = !DILocation(line: 527, column: 20, scope: !965)
!968 = !DILocation(line: 527, column: 26, scope: !965)
!969 = !DILocation(line: 527, column: 29, scope: !965)
!970 = !DILocation(line: 529, column: 9, scope: !971)
!971 = distinct !DILexicalBlock(scope: !965, file: !3, line: 529, column: 9)
!972 = !DILocation(line: 530, column: 5, scope: !965)
!973 = !DILocation(line: 160, column: 12, scope: !171, inlinedAt: !974)
!974 = distinct !DILocation(line: 531, column: 31, scope: !914)
!975 = !DILocation(line: 159, column: 20, scope: !171, inlinedAt: !974)
!976 = !DILocation(line: 161, column: 11, scope: !171, inlinedAt: !974)
!977 = !DILocation(line: 161, column: 14, scope: !171, inlinedAt: !974)
!978 = !DILocation(line: 162, column: 11, scope: !171, inlinedAt: !974)
!979 = !DILocation(line: 162, column: 17, scope: !171, inlinedAt: !974)
!980 = !DILocation(line: 163, column: 11, scope: !171, inlinedAt: !974)
!981 = !DILocation(line: 163, column: 14, scope: !171, inlinedAt: !974)
!982 = !DILocation(line: 164, column: 24, scope: !171, inlinedAt: !974)
!983 = !DILocation(line: 164, column: 29, scope: !171, inlinedAt: !974)
!984 = !DILocation(line: 167, column: 22, scope: !171, inlinedAt: !974)
!985 = !DILocation(line: 168, column: 5, scope: !171, inlinedAt: !974)
!986 = !DILocation(line: 531, column: 24, scope: !914)
!987 = !DILocation(line: 532, column: 32, scope: !914)
!988 = !DILocation(line: 532, column: 20, scope: !914)
!989 = !DILocation(line: 532, column: 18, scope: !914)
!990 = !DILocation(line: 534, column: 9, scope: !991)
!991 = distinct !DILexicalBlock(scope: !914, file: !3, line: 534, column: 9)
!992 = !DILocation(line: 535, column: 57, scope: !914)
!993 = !DILocation(line: 414, column: 56, scope: !594, inlinedAt: !994)
!994 = distinct !DILocation(line: 535, column: 9, scope: !914)
!995 = !DILocation(line: 415, column: 60, scope: !594, inlinedAt: !994)
!996 = !DILocation(line: 416, column: 60, scope: !594, inlinedAt: !994)
!997 = !DILocation(line: 372, column: 52, scope: !453, inlinedAt: !998)
!998 = distinct !DILocation(line: 417, column: 5, scope: !594, inlinedAt: !994)
!999 = !DILocation(line: 373, column: 56, scope: !453, inlinedAt: !998)
!1000 = !DILocation(line: 374, column: 56, scope: !453, inlinedAt: !998)
!1001 = !DILocation(line: 374, column: 70, scope: !453, inlinedAt: !998)
!1002 = !DILocation(line: 376, column: 24, scope: !469, inlinedAt: !998)
!1003 = !DILocation(line: 377, column: 13, scope: !473, inlinedAt: !998)
!1004 = !DILocation(line: 377, column: 13, scope: !469, inlinedAt: !998)
!1005 = !DILocation(line: 164, column: 11, scope: !171, inlinedAt: !974)
!1006 = !DILocation(line: 378, column: 40, scope: !476, inlinedAt: !998)
!1007 = !DILocation(line: 378, column: 28, scope: !476, inlinedAt: !998)
!1008 = !DILocation(line: 379, column: 27, scope: !480, inlinedAt: !998)
!1009 = !DILocation(line: 379, column: 17, scope: !480, inlinedAt: !998)
!1010 = !DILocation(line: 379, column: 17, scope: !476, inlinedAt: !998)
!1011 = !DILocation(line: 380, column: 38, scope: !480, inlinedAt: !998)
!1012 = !DILocation(line: 380, column: 17, scope: !480, inlinedAt: !998)
!1013 = !DILocation(line: 381, column: 28, scope: !476, inlinedAt: !998)
!1014 = !DILocation(line: 382, column: 9, scope: !476, inlinedAt: !998)
!1015 = !DILocation(line: 384, column: 29, scope: !489, inlinedAt: !998)
!1016 = !DILocation(line: 397, column: 20, scope: !520, inlinedAt: !998)
!1017 = !DILocation(line: 397, column: 24, scope: !520, inlinedAt: !998)
!1018 = !DILocation(line: 397, column: 9, scope: !453, inlinedAt: !998)
!1019 = !DILocation(line: 398, column: 43, scope: !524, inlinedAt: !998)
!1020 = !DILocation(line: 398, column: 25, scope: !524, inlinedAt: !998)
!1021 = !DILocation(line: 399, column: 5, scope: !524, inlinedAt: !998)
!1022 = !DILocation(line: 401, column: 9, scope: !453, inlinedAt: !998)
!1023 = !DILocation(line: 402, column: 9, scope: !533, inlinedAt: !998)
!1024 = !DILocation(line: 402, column: 9, scope: !534, inlinedAt: !998)
!1025 = !DILocation(line: 402, column: 9, scope: !537, inlinedAt: !998)
!1026 = !DILocation(line: 402, column: 9, scope: !538, inlinedAt: !998)
!1027 = !DILocation(line: 402, column: 9, scope: !541, inlinedAt: !998)
!1028 = !DILocation(line: 404, column: 19, scope: !453, inlinedAt: !998)
!1029 = !DILocation(line: 405, column: 1, scope: !453, inlinedAt: !998)
!1030 = !DILocation(line: 418, column: 1, scope: !594, inlinedAt: !994)
!1031 = !DILocation(line: 538, column: 16, scope: !907)
!1032 = !DILocation(line: 537, column: 16, scope: !907)
!1033 = !DILocation(line: 537, column: 21, scope: !907)
!1034 = !DILocation(line: 538, column: 22, scope: !907)
!1035 = !DILocation(line: 538, column: 27, scope: !907)
!1036 = !DILocation(line: 539, column: 37, scope: !907)
!1037 = !DILocation(line: 539, column: 23, scope: !907)
!1038 = !DILocation(line: 539, column: 5, scope: !907)
!1039 = distinct !DISubprogram(name: "quicklistAppendZiplist", scope: !3, file: !3, line: 545, type: !1040, isLocal: false, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1042)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !21, !6}
!1042 = !{!1043, !1044, !1045}
!1043 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1039, file: !3, line: 545, type: !21)
!1044 = !DILocalVariable(name: "zl", arg: 2, scope: !1039, file: !3, line: 545, type: !6)
!1045 = !DILocalVariable(name: "node", scope: !1039, file: !3, line: 546, type: !26)
!1046 = !DILocation(line: 545, column: 40, scope: !1039)
!1047 = !DILocation(line: 545, column: 66, scope: !1039)
!1048 = !DILocation(line: 160, column: 12, scope: !171, inlinedAt: !1049)
!1049 = distinct !DILocation(line: 546, column: 27, scope: !1039)
!1050 = !DILocation(line: 159, column: 20, scope: !171, inlinedAt: !1049)
!1051 = !DILocation(line: 161, column: 11, scope: !171, inlinedAt: !1049)
!1052 = !DILocation(line: 162, column: 11, scope: !171, inlinedAt: !1049)
!1053 = !DILocation(line: 162, column: 17, scope: !171, inlinedAt: !1049)
!1054 = !DILocation(line: 163, column: 11, scope: !171, inlinedAt: !1049)
!1055 = !DILocation(line: 163, column: 14, scope: !171, inlinedAt: !1049)
!1056 = !DILocation(line: 164, column: 24, scope: !171, inlinedAt: !1049)
!1057 = !DILocation(line: 164, column: 29, scope: !171, inlinedAt: !1049)
!1058 = !DILocation(line: 167, column: 22, scope: !171, inlinedAt: !1049)
!1059 = !DILocation(line: 168, column: 5, scope: !171, inlinedAt: !1049)
!1060 = !DILocation(line: 546, column: 20, scope: !1039)
!1061 = !DILocation(line: 548, column: 14, scope: !1039)
!1062 = !DILocation(line: 549, column: 19, scope: !1039)
!1063 = !DILocation(line: 549, column: 17, scope: !1039)
!1064 = !DILocation(line: 550, column: 16, scope: !1039)
!1065 = !DILocation(line: 550, column: 14, scope: !1039)
!1066 = !DILocation(line: 552, column: 53, scope: !1039)
!1067 = !DILocation(line: 414, column: 56, scope: !594, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 552, column: 5, scope: !1039)
!1069 = !DILocation(line: 415, column: 60, scope: !594, inlinedAt: !1068)
!1070 = !DILocation(line: 416, column: 60, scope: !594, inlinedAt: !1068)
!1071 = !DILocation(line: 372, column: 52, scope: !453, inlinedAt: !1072)
!1072 = distinct !DILocation(line: 417, column: 5, scope: !594, inlinedAt: !1068)
!1073 = !DILocation(line: 373, column: 56, scope: !453, inlinedAt: !1072)
!1074 = !DILocation(line: 374, column: 56, scope: !453, inlinedAt: !1072)
!1075 = !DILocation(line: 374, column: 70, scope: !453, inlinedAt: !1072)
!1076 = !DILocation(line: 376, column: 24, scope: !469, inlinedAt: !1072)
!1077 = !DILocation(line: 377, column: 13, scope: !473, inlinedAt: !1072)
!1078 = !DILocation(line: 377, column: 13, scope: !469, inlinedAt: !1072)
!1079 = !DILocation(line: 164, column: 11, scope: !171, inlinedAt: !1049)
!1080 = !DILocation(line: 378, column: 40, scope: !476, inlinedAt: !1072)
!1081 = !DILocation(line: 378, column: 28, scope: !476, inlinedAt: !1072)
!1082 = !DILocation(line: 379, column: 27, scope: !480, inlinedAt: !1072)
!1083 = !DILocation(line: 379, column: 17, scope: !480, inlinedAt: !1072)
!1084 = !DILocation(line: 379, column: 17, scope: !476, inlinedAt: !1072)
!1085 = !DILocation(line: 380, column: 38, scope: !480, inlinedAt: !1072)
!1086 = !DILocation(line: 380, column: 17, scope: !480, inlinedAt: !1072)
!1087 = !DILocation(line: 381, column: 28, scope: !476, inlinedAt: !1072)
!1088 = !DILocation(line: 382, column: 9, scope: !476, inlinedAt: !1072)
!1089 = !DILocation(line: 384, column: 29, scope: !489, inlinedAt: !1072)
!1090 = !DILocation(line: 397, column: 20, scope: !520, inlinedAt: !1072)
!1091 = !DILocation(line: 397, column: 24, scope: !520, inlinedAt: !1072)
!1092 = !DILocation(line: 397, column: 9, scope: !453, inlinedAt: !1072)
!1093 = !DILocation(line: 398, column: 43, scope: !524, inlinedAt: !1072)
!1094 = !DILocation(line: 398, column: 25, scope: !524, inlinedAt: !1072)
!1095 = !DILocation(line: 399, column: 5, scope: !524, inlinedAt: !1072)
!1096 = !DILocation(line: 401, column: 9, scope: !453, inlinedAt: !1072)
!1097 = !DILocation(line: 402, column: 9, scope: !533, inlinedAt: !1072)
!1098 = !DILocation(line: 402, column: 9, scope: !534, inlinedAt: !1072)
!1099 = !DILocation(line: 402, column: 9, scope: !537, inlinedAt: !1072)
!1100 = !DILocation(line: 402, column: 9, scope: !538, inlinedAt: !1072)
!1101 = !DILocation(line: 402, column: 9, scope: !541, inlinedAt: !1072)
!1102 = !DILocation(line: 404, column: 19, scope: !453, inlinedAt: !1072)
!1103 = !DILocation(line: 405, column: 1, scope: !453, inlinedAt: !1072)
!1104 = !DILocation(line: 418, column: 1, scope: !594, inlinedAt: !1068)
!1105 = !DILocation(line: 553, column: 31, scope: !1039)
!1106 = !DILocation(line: 553, column: 25, scope: !1039)
!1107 = !DILocation(line: 553, column: 16, scope: !1039)
!1108 = !DILocation(line: 553, column: 22, scope: !1039)
!1109 = !DILocation(line: 554, column: 1, scope: !1039)
!1110 = distinct !DISubprogram(name: "quicklistAppendValuesFromZiplist", scope: !3, file: !3, line: 562, type: !1111, isLocal: false, isDefinition: true, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1113)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!21, !21, !6}
!1113 = !{!1114, !1115, !1116, !1117, !1118, !1120, !1124}
!1114 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1110, file: !3, line: 562, type: !21)
!1115 = !DILocalVariable(name: "zl", arg: 2, scope: !1110, file: !3, line: 563, type: !6)
!1116 = !DILocalVariable(name: "value", scope: !1110, file: !3, line: 564, type: !6)
!1117 = !DILocalVariable(name: "sz", scope: !1110, file: !3, line: 565, type: !14)
!1118 = !DILocalVariable(name: "longval", scope: !1110, file: !3, line: 566, type: !1119)
!1119 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1120 = !DILocalVariable(name: "longstr", scope: !1110, file: !3, line: 567, type: !1121)
!1121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 256, elements: !1122)
!1122 = !{!1123}
!1123 = !DISubrange(count: 32)
!1124 = !DILocalVariable(name: "p", scope: !1110, file: !3, line: 569, type: !6)
!1125 = !DILocation(line: 562, column: 56, scope: !1110)
!1126 = !DILocation(line: 563, column: 60, scope: !1110)
!1127 = !DILocation(line: 564, column: 5, scope: !1110)
!1128 = !DILocation(line: 565, column: 5, scope: !1110)
!1129 = !DILocation(line: 566, column: 5, scope: !1110)
!1130 = !DILocation(line: 567, column: 5, scope: !1110)
!1131 = !DILocation(line: 567, column: 10, scope: !1110)
!1132 = !DILocation(line: 569, column: 24, scope: !1110)
!1133 = !DILocation(line: 569, column: 20, scope: !1110)
!1134 = !DILocation(line: 564, column: 20, scope: !1110)
!1135 = !DILocation(line: 565, column: 18, scope: !1110)
!1136 = !DILocation(line: 566, column: 15, scope: !1110)
!1137 = !DILocation(line: 570, column: 12, scope: !1110)
!1138 = !DILocation(line: 570, column: 5, scope: !1110)
!1139 = !DILocation(line: 571, column: 14, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 571, column: 13)
!1141 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 570, column: 50)
!1142 = !DILocation(line: 571, column: 13, scope: !1141)
!1143 = !DILocation(line: 576, column: 45, scope: !1141)
!1144 = !DILocation(line: 573, column: 54, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 571, column: 21)
!1146 = !{!1147, !1147, i64 0}
!1147 = !{!"long long", !72, i64 0}
!1148 = !DILocation(line: 573, column: 18, scope: !1145)
!1149 = !DILocation(line: 573, column: 16, scope: !1145)
!1150 = !DILocation(line: 574, column: 19, scope: !1145)
!1151 = !DILocation(line: 575, column: 9, scope: !1145)
!1152 = !DILocation(line: 576, column: 38, scope: !1141)
!1153 = !DILocation(line: 576, column: 9, scope: !1141)
!1154 = !DILocation(line: 577, column: 13, scope: !1141)
!1155 = distinct !{!1155, !1138, !1156}
!1156 = !DILocation(line: 578, column: 5, scope: !1110)
!1157 = !DILocation(line: 579, column: 5, scope: !1110)
!1158 = !DILocation(line: 581, column: 1, scope: !1110)
!1159 = !DILocation(line: 580, column: 5, scope: !1110)
!1160 = distinct !DISubprogram(name: "quicklistCreateFromZiplist", scope: !3, file: !3, line: 586, type: !1161, isLocal: false, isDefinition: true, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1163)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!21, !20, !20, !6}
!1163 = !{!1164, !1165, !1166}
!1164 = !DILocalVariable(name: "fill", arg: 1, scope: !1160, file: !3, line: 586, type: !20)
!1165 = !DILocalVariable(name: "compress", arg: 2, scope: !1160, file: !3, line: 586, type: !20)
!1166 = !DILocalVariable(name: "zl", arg: 3, scope: !1160, file: !3, line: 587, type: !6)
!1167 = !DILocation(line: 586, column: 43, scope: !1160)
!1168 = !DILocation(line: 586, column: 53, scope: !1160)
!1169 = !DILocation(line: 587, column: 54, scope: !1160)
!1170 = !DILocation(line: 152, column: 29, scope: !133, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 588, column: 45, scope: !1160)
!1172 = !DILocation(line: 152, column: 39, scope: !133, inlinedAt: !1171)
!1173 = !DILocation(line: 117, column: 17, scope: !61, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 153, column: 28, scope: !133, inlinedAt: !1171)
!1175 = !DILocation(line: 115, column: 23, scope: !61, inlinedAt: !1174)
!1176 = !DILocation(line: 118, column: 21, scope: !61, inlinedAt: !1174)
!1177 = !DILocation(line: 120, column: 16, scope: !61, inlinedAt: !1174)
!1178 = !DILocation(line: 120, column: 22, scope: !61, inlinedAt: !1174)
!1179 = !DILocation(line: 121, column: 16, scope: !61, inlinedAt: !1174)
!1180 = !DILocation(line: 123, column: 5, scope: !61, inlinedAt: !1174)
!1181 = !DILocation(line: 153, column: 16, scope: !133, inlinedAt: !1171)
!1182 = !DILocation(line: 146, column: 37, scope: !107, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 154, column: 5, scope: !133, inlinedAt: !1171)
!1184 = !DILocation(line: 146, column: 52, scope: !107, inlinedAt: !1183)
!1185 = !DILocation(line: 146, column: 62, scope: !107, inlinedAt: !1183)
!1186 = !DILocation(line: 137, column: 34, scope: !95, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 147, column: 5, scope: !107, inlinedAt: !1183)
!1188 = !DILocation(line: 137, column: 49, scope: !95, inlinedAt: !1187)
!1189 = !DILocation(line: 140, column: 16, scope: !102, inlinedAt: !1187)
!1190 = !DILocation(line: 138, column: 9, scope: !95, inlinedAt: !1187)
!1191 = !DILocation(line: 143, column: 21, scope: !95, inlinedAt: !1187)
!1192 = !DILocation(line: 144, column: 1, scope: !95, inlinedAt: !1187)
!1193 = !DILocation(line: 127, column: 43, scope: !81, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 148, column: 5, scope: !107, inlinedAt: !1183)
!1195 = !DILocation(line: 127, column: 58, scope: !81, inlinedAt: !1194)
!1196 = !DILocation(line: 130, column: 16, scope: !90, inlinedAt: !1194)
!1197 = !DILocation(line: 128, column: 9, scope: !81, inlinedAt: !1194)
!1198 = !DILocation(line: 133, column: 25, scope: !81, inlinedAt: !1194)
!1199 = !DILocation(line: 134, column: 1, scope: !81, inlinedAt: !1194)
!1200 = !DILocation(line: 149, column: 1, scope: !107, inlinedAt: !1183)
!1201 = !DILocation(line: 155, column: 5, scope: !133, inlinedAt: !1171)
!1202 = !DILocation(line: 588, column: 12, scope: !1160)
!1203 = !DILocation(line: 588, column: 5, scope: !1160)
!1204 = distinct !DISubprogram(name: "__quicklistDelNode", scope: !3, file: !3, line: 599, type: !1205, isLocal: false, isDefinition: true, scopeLine: 600, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1207)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{null, !21, !26}
!1207 = !{!1208, !1209}
!1208 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1204, file: !3, line: 599, type: !21)
!1209 = !DILocalVariable(name: "node", arg: 2, scope: !1204, file: !3, line: 600, type: !26)
!1210 = !DILocation(line: 599, column: 49, scope: !1204)
!1211 = !DILocation(line: 600, column: 53, scope: !1204)
!1212 = !DILocation(line: 601, column: 15, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 601, column: 9)
!1214 = !DILocation(line: 601, column: 9, scope: !1213)
!1215 = !DILocation(line: 601, column: 9, scope: !1204)
!1216 = !DILocation(line: 602, column: 34, scope: !1213)
!1217 = !DILocation(line: 602, column: 26, scope: !1213)
!1218 = !DILocation(line: 602, column: 9, scope: !1213)
!1219 = !DILocation(line: 603, column: 15, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 603, column: 9)
!1221 = !DILocation(line: 603, column: 9, scope: !1220)
!1222 = !DILocation(line: 603, column: 9, scope: !1204)
!1223 = !DILocation(line: 604, column: 21, scope: !1220)
!1224 = !DILocation(line: 604, column: 26, scope: !1220)
!1225 = !DILocation(line: 604, column: 9, scope: !1220)
!1226 = !DILocation(line: 606, column: 28, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 606, column: 9)
!1228 = !DILocation(line: 606, column: 14, scope: !1227)
!1229 = !DILocation(line: 606, column: 9, scope: !1204)
!1230 = !DILocation(line: 607, column: 25, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 606, column: 34)
!1232 = !DILocation(line: 608, column: 5, scope: !1231)
!1233 = !DILocation(line: 610, column: 28, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 610, column: 9)
!1235 = !DILocation(line: 610, column: 14, scope: !1234)
!1236 = !DILocation(line: 610, column: 9, scope: !1204)
!1237 = !DILocation(line: 611, column: 33, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 610, column: 34)
!1239 = !DILocation(line: 611, column: 25, scope: !1238)
!1240 = !DILocation(line: 612, column: 5, scope: !1238)
!1241 = !DILocation(line: 616, column: 5, scope: !1204)
!1242 = !DILocation(line: 618, column: 31, scope: !1204)
!1243 = !DILocation(line: 618, column: 25, scope: !1204)
!1244 = !DILocation(line: 618, column: 16, scope: !1204)
!1245 = !DILocation(line: 618, column: 22, scope: !1204)
!1246 = !DILocation(line: 620, column: 17, scope: !1204)
!1247 = !DILocation(line: 620, column: 5, scope: !1204)
!1248 = !DILocation(line: 621, column: 11, scope: !1204)
!1249 = !DILocation(line: 621, column: 5, scope: !1204)
!1250 = !DILocation(line: 622, column: 16, scope: !1204)
!1251 = !DILocation(line: 622, column: 19, scope: !1204)
!1252 = !DILocation(line: 623, column: 1, scope: !1204)
!1253 = distinct !DISubprogram(name: "quicklistDelIndex", scope: !3, file: !3, line: 633, type: !1254, isLocal: false, isDefinition: true, scopeLine: 634, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1257)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!20, !21, !26, !1256}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1257 = !{!1258, !1259, !1260, !1261}
!1258 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1253, file: !3, line: 633, type: !21)
!1259 = !DILocalVariable(name: "node", arg: 2, scope: !1253, file: !3, line: 633, type: !26)
!1260 = !DILocalVariable(name: "p", arg: 3, scope: !1253, file: !3, line: 634, type: !1256)
!1261 = !DILocalVariable(name: "gone", scope: !1253, file: !3, line: 635, type: !20)
!1262 = !DILocation(line: 633, column: 47, scope: !1253)
!1263 = !DILocation(line: 633, column: 73, scope: !1253)
!1264 = !DILocation(line: 634, column: 52, scope: !1253)
!1265 = !DILocation(line: 635, column: 9, scope: !1253)
!1266 = !DILocation(line: 637, column: 36, scope: !1253)
!1267 = !DILocation(line: 637, column: 16, scope: !1253)
!1268 = !DILocation(line: 637, column: 14, scope: !1253)
!1269 = !DILocation(line: 638, column: 11, scope: !1253)
!1270 = !DILocation(line: 638, column: 16, scope: !1253)
!1271 = !DILocation(line: 639, column: 21, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 639, column: 9)
!1273 = !DILocation(line: 639, column: 9, scope: !1253)
!1274 = !DILocation(line: 599, column: 49, scope: !1204, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 641, column: 9, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 639, column: 27)
!1277 = !DILocation(line: 600, column: 53, scope: !1204, inlinedAt: !1275)
!1278 = !DILocation(line: 601, column: 15, scope: !1213, inlinedAt: !1275)
!1279 = !DILocation(line: 601, column: 9, scope: !1213, inlinedAt: !1275)
!1280 = !DILocation(line: 601, column: 9, scope: !1204, inlinedAt: !1275)
!1281 = !DILocation(line: 602, column: 34, scope: !1213, inlinedAt: !1275)
!1282 = !DILocation(line: 602, column: 26, scope: !1213, inlinedAt: !1275)
!1283 = !DILocation(line: 602, column: 9, scope: !1213, inlinedAt: !1275)
!1284 = !DILocation(line: 603, column: 15, scope: !1220, inlinedAt: !1275)
!1285 = !DILocation(line: 603, column: 9, scope: !1220, inlinedAt: !1275)
!1286 = !DILocation(line: 603, column: 9, scope: !1204, inlinedAt: !1275)
!1287 = !DILocation(line: 604, column: 21, scope: !1220, inlinedAt: !1275)
!1288 = !DILocation(line: 604, column: 26, scope: !1220, inlinedAt: !1275)
!1289 = !DILocation(line: 604, column: 9, scope: !1220, inlinedAt: !1275)
!1290 = !DILocation(line: 606, column: 28, scope: !1227, inlinedAt: !1275)
!1291 = !DILocation(line: 606, column: 14, scope: !1227, inlinedAt: !1275)
!1292 = !DILocation(line: 606, column: 9, scope: !1204, inlinedAt: !1275)
!1293 = !DILocation(line: 607, column: 25, scope: !1231, inlinedAt: !1275)
!1294 = !DILocation(line: 608, column: 5, scope: !1231, inlinedAt: !1275)
!1295 = !DILocation(line: 610, column: 28, scope: !1234, inlinedAt: !1275)
!1296 = !DILocation(line: 610, column: 14, scope: !1234, inlinedAt: !1275)
!1297 = !DILocation(line: 610, column: 9, scope: !1204, inlinedAt: !1275)
!1298 = !DILocation(line: 611, column: 33, scope: !1238, inlinedAt: !1275)
!1299 = !DILocation(line: 611, column: 25, scope: !1238, inlinedAt: !1275)
!1300 = !DILocation(line: 612, column: 5, scope: !1238, inlinedAt: !1275)
!1301 = !DILocation(line: 616, column: 5, scope: !1204, inlinedAt: !1275)
!1302 = !DILocation(line: 618, column: 31, scope: !1204, inlinedAt: !1275)
!1303 = !DILocation(line: 618, column: 25, scope: !1204, inlinedAt: !1275)
!1304 = !DILocation(line: 618, column: 16, scope: !1204, inlinedAt: !1275)
!1305 = !DILocation(line: 618, column: 22, scope: !1204, inlinedAt: !1275)
!1306 = !DILocation(line: 620, column: 17, scope: !1204, inlinedAt: !1275)
!1307 = !DILocation(line: 620, column: 5, scope: !1204, inlinedAt: !1275)
!1308 = !DILocation(line: 621, column: 11, scope: !1204, inlinedAt: !1275)
!1309 = !DILocation(line: 621, column: 5, scope: !1204, inlinedAt: !1275)
!1310 = !DILocation(line: 622, column: 16, scope: !1204, inlinedAt: !1275)
!1311 = !DILocation(line: 622, column: 19, scope: !1204, inlinedAt: !1275)
!1312 = !DILocation(line: 623, column: 1, scope: !1204, inlinedAt: !1275)
!1313 = !DILocation(line: 642, column: 5, scope: !1276)
!1314 = !DILocation(line: 643, column: 9, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 643, column: 9)
!1316 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 642, column: 12)
!1317 = !DILocation(line: 645, column: 16, scope: !1253)
!1318 = !DILocation(line: 645, column: 21, scope: !1253)
!1319 = !DILocation(line: 647, column: 5, scope: !1253)
!1320 = distinct !DISubprogram(name: "quicklistDelEntry", scope: !3, file: !3, line: 654, type: !1321, isLocal: false, isDefinition: true, scopeLine: 654, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1344)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !1323, !1333}
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistIter", file: !10, line: 88, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistIter", file: !10, line: 82, size: 320, elements: !1326)
!1326 = !{!1327, !1328, !1329, !1330, !1332}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !1325, file: !10, line: 83, baseType: !194, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1325, file: !10, line: 84, baseType: !26, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !1325, file: !10, line: 85, baseType: !6, size: 64, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1325, file: !10, line: 86, baseType: !1331, size: 64, offset: 192)
!1331 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !1325, file: !10, line: 87, baseType: !20, size: 32, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "quicklistEntry", file: !10, line: 98, baseType: !1335)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quicklistEntry", file: !10, line: 90, size: 384, elements: !1336)
!1336 = !{!1337, !1338, !1339, !1340, !1341, !1342, !1343}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "quicklist", scope: !1335, file: !10, line: 91, baseType: !194, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1335, file: !10, line: 92, baseType: !26, size: 64, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "zi", scope: !1335, file: !10, line: 93, baseType: !6, size: 64, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1335, file: !10, line: 94, baseType: !6, size: 64, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "longval", scope: !1335, file: !10, line: 95, baseType: !1119, size: 64, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !1335, file: !10, line: 96, baseType: !14, size: 32, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1335, file: !10, line: 97, baseType: !20, size: 32, offset: 352)
!1344 = !{!1345, !1346, !1347, !1348, !1349}
!1345 = !DILocalVariable(name: "iter", arg: 1, scope: !1320, file: !3, line: 654, type: !1323)
!1346 = !DILocalVariable(name: "entry", arg: 2, scope: !1320, file: !3, line: 654, type: !1333)
!1347 = !DILocalVariable(name: "prev", scope: !1320, file: !3, line: 655, type: !26)
!1348 = !DILocalVariable(name: "next", scope: !1320, file: !3, line: 656, type: !26)
!1349 = !DILocalVariable(name: "deleted_node", scope: !1320, file: !3, line: 657, type: !20)
!1350 = !DILocation(line: 654, column: 39, scope: !1320)
!1351 = !DILocation(line: 654, column: 61, scope: !1320)
!1352 = !DILocation(line: 655, column: 34, scope: !1320)
!1353 = !{!1354, !71, i64 8}
!1354 = !{!"quicklistEntry", !71, i64 0, !71, i64 8, !71, i64 16, !71, i64 24, !1147, i64 32, !182, i64 40, !182, i64 44}
!1355 = !DILocation(line: 655, column: 40, scope: !1320)
!1356 = !DILocation(line: 655, column: 20, scope: !1320)
!1357 = !DILocation(line: 656, column: 40, scope: !1320)
!1358 = !DILocation(line: 656, column: 20, scope: !1320)
!1359 = !DILocation(line: 657, column: 62, scope: !1320)
!1360 = !{!1354, !71, i64 0}
!1361 = !DILocation(line: 658, column: 63, scope: !1320)
!1362 = !DILocation(line: 657, column: 24, scope: !1320)
!1363 = !DILocation(line: 657, column: 9, scope: !1320)
!1364 = !DILocation(line: 661, column: 11, scope: !1320)
!1365 = !DILocation(line: 661, column: 14, scope: !1320)
!1366 = !{!1367, !71, i64 16}
!1367 = !{!"quicklistIter", !71, i64 0, !71, i64 8, !71, i64 16, !77, i64 24, !182, i64 32}
!1368 = !DILocation(line: 664, column: 9, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 664, column: 9)
!1370 = !DILocation(line: 664, column: 9, scope: !1320)
!1371 = !DILocation(line: 665, column: 19, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 665, column: 13)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 664, column: 23)
!1374 = !{!1367, !182, i64 32}
!1375 = !DILocation(line: 665, column: 13, scope: !1373)
!1376 = !DILocation(line: 666, column: 19, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 665, column: 47)
!1378 = !DILocation(line: 666, column: 27, scope: !1377)
!1379 = !{!1367, !71, i64 8}
!1380 = !DILocation(line: 667, column: 19, scope: !1377)
!1381 = !DILocation(line: 667, column: 26, scope: !1377)
!1382 = !{!1367, !77, i64 24}
!1383 = !DILocation(line: 668, column: 9, scope: !1377)
!1384 = !DILocation(line: 669, column: 19, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 668, column: 54)
!1386 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 668, column: 20)
!1387 = !DILocation(line: 669, column: 27, scope: !1385)
!1388 = !DILocation(line: 670, column: 19, scope: !1385)
!1389 = !DILocation(line: 670, column: 26, scope: !1385)
!1390 = !DILocation(line: 671, column: 9, scope: !1385)
!1391 = !DILocation(line: 681, column: 1, scope: !1320)
!1392 = distinct !DISubprogram(name: "quicklistReplaceAtIndex", scope: !3, file: !3, line: 687, type: !1393, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1395)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!20, !21, !1331, !47, !20}
!1395 = !{!1396, !1397, !1398, !1399, !1400}
!1396 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1392, file: !3, line: 687, type: !21)
!1397 = !DILocalVariable(name: "index", arg: 2, scope: !1392, file: !3, line: 687, type: !1331)
!1398 = !DILocalVariable(name: "data", arg: 3, scope: !1392, file: !3, line: 687, type: !47)
!1399 = !DILocalVariable(name: "sz", arg: 4, scope: !1392, file: !3, line: 688, type: !20)
!1400 = !DILocalVariable(name: "entry", scope: !1392, file: !3, line: 689, type: !1334)
!1401 = !DILocation(line: 687, column: 40, scope: !1392)
!1402 = !DILocation(line: 687, column: 56, scope: !1392)
!1403 = !DILocation(line: 687, column: 69, scope: !1392)
!1404 = !DILocation(line: 688, column: 33, scope: !1392)
!1405 = !DILocation(line: 689, column: 5, scope: !1392)
!1406 = !DILocation(line: 689, column: 20, scope: !1392)
!1407 = !DILocation(line: 690, column: 9, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 690, column: 9)
!1409 = !DILocation(line: 690, column: 9, scope: !1392)
!1410 = !DILocation(line: 692, column: 46, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 690, column: 59)
!1412 = !DILocation(line: 692, column: 52, scope: !1411)
!1413 = !DILocation(line: 692, column: 63, scope: !1411)
!1414 = !DILocation(line: 692, column: 26, scope: !1411)
!1415 = !DILocation(line: 692, column: 15, scope: !1411)
!1416 = !DILocation(line: 692, column: 21, scope: !1411)
!1417 = !DILocation(line: 692, column: 24, scope: !1411)
!1418 = !DILocation(line: 693, column: 62, scope: !1411)
!1419 = !{!1354, !71, i64 16}
!1420 = !DILocation(line: 693, column: 26, scope: !1411)
!1421 = !DILocation(line: 693, column: 15, scope: !1411)
!1422 = !DILocation(line: 693, column: 21, scope: !1411)
!1423 = !DILocation(line: 693, column: 24, scope: !1411)
!1424 = !DILocation(line: 694, column: 9, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 694, column: 9)
!1426 = !DILocation(line: 695, column: 9, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 695, column: 9)
!1428 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 695, column: 9)
!1429 = !DILocation(line: 695, column: 9, scope: !1428)
!1430 = !DILocation(line: 695, column: 9, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 695, column: 9)
!1432 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 695, column: 9)
!1433 = !DILocation(line: 695, column: 9, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 695, column: 9)
!1435 = !DILocation(line: 0, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 697, column: 12)
!1437 = !DILocation(line: 700, column: 1, scope: !1392)
!1438 = distinct !DISubprogram(name: "quicklistIndex", scope: !3, file: !3, line: 1245, type: !1439, isLocal: false, isDefinition: true, scopeLine: 1246, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1442)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!20, !194, !1441, !1333}
!1441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1119)
!1442 = !{!1443, !1444, !1445, !1446, !1447, !1449, !1450}
!1443 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1438, file: !3, line: 1245, type: !194)
!1444 = !DILocalVariable(name: "idx", arg: 2, scope: !1438, file: !3, line: 1245, type: !1441)
!1445 = !DILocalVariable(name: "entry", arg: 3, scope: !1438, file: !3, line: 1246, type: !1333)
!1446 = !DILocalVariable(name: "n", scope: !1438, file: !3, line: 1247, type: !26)
!1447 = !DILocalVariable(name: "accum", scope: !1438, file: !3, line: 1248, type: !1448)
!1448 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1449 = !DILocalVariable(name: "index", scope: !1438, file: !3, line: 1249, type: !1448)
!1450 = !DILocalVariable(name: "forward", scope: !1438, file: !3, line: 1250, type: !20)
!1451 = !DILocation(line: 1245, column: 37, scope: !1438)
!1452 = !DILocation(line: 1245, column: 64, scope: !1438)
!1453 = !DILocation(line: 1246, column: 36, scope: !1438)
!1454 = !DILocation(line: 1248, column: 24, scope: !1438)
!1455 = !DILocation(line: 1252, column: 5, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 1252, column: 5)
!1457 = !{!1354, !1147, i64 32}
!1458 = !{!1354, !182, i64 44}
!1459 = !{!1354, !182, i64 40}
!1460 = !DILocation(line: 1253, column: 22, scope: !1438)
!1461 = !DILocation(line: 1255, column: 10, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 1255, column: 9)
!1463 = !DILocation(line: 1249, column: 24, scope: !1438)
!1464 = !DILocation(line: 1255, column: 9, scope: !1438)
!1465 = !DILocation(line: 1263, column: 29, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 1263, column: 9)
!1467 = !DILocation(line: 1263, column: 15, scope: !1466)
!1468 = !DILocation(line: 1263, column: 9, scope: !1438)
!1469 = !DILocation(line: 1260, column: 24, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 1258, column: 12)
!1471 = !DILocation(line: 1247, column: 20, scope: !1438)
!1472 = !DILocation(line: 1257, column: 24, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 1255, column: 19)
!1474 = !DILocation(line: 0, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 1269, column: 16)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 1267, column: 13)
!1477 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 1266, column: 23)
!1478 = !DILocation(line: 1266, column: 12, scope: !1438)
!1479 = !DILocation(line: 1266, column: 5, scope: !1438)
!1480 = !DILocation(line: 1267, column: 25, scope: !1476)
!1481 = !DILocation(line: 1267, column: 22, scope: !1476)
!1482 = !DILocation(line: 1267, column: 20, scope: !1476)
!1483 = !DILocation(line: 1267, column: 32, scope: !1476)
!1484 = !DILocation(line: 1267, column: 13, scope: !1477)
!1485 = !DILocation(line: 1273, column: 30, scope: !1475)
!1486 = !DILocation(line: 1273, column: 40, scope: !1475)
!1487 = !DILocation(line: 1273, column: 17, scope: !1475)
!1488 = distinct !{!1488, !1479, !1489}
!1489 = !DILocation(line: 1275, column: 5, scope: !1438)
!1490 = !DILocation(line: 1283, column: 17, scope: !1438)
!1491 = !DILocation(line: 1290, column: 34, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 1287, column: 12)
!1493 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 1284, column: 9)
!1494 = !DILocation(line: 1290, column: 38, scope: !1492)
!1495 = !DILocation(line: 1286, column: 31, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 1284, column: 18)
!1497 = !DILocation(line: 1284, column: 9, scope: !1438)
!1498 = !DILocation(line: 0, scope: !1496)
!1499 = !DILocation(line: 1293, column: 5, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 1293, column: 5)
!1501 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 1293, column: 5)
!1502 = !DILocation(line: 1293, column: 5, scope: !1501)
!1503 = !DILocation(line: 235, column: 59, scope: !281, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 1293, column: 5, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 1293, column: 5)
!1506 = !DILocation(line: 240, column: 40, scope: !281, inlinedAt: !1504)
!1507 = !DILocation(line: 240, column: 34, scope: !281, inlinedAt: !1504)
!1508 = !DILocation(line: 240, column: 26, scope: !281, inlinedAt: !1504)
!1509 = !DILocation(line: 240, column: 11, scope: !281, inlinedAt: !1504)
!1510 = !DILocation(line: 241, column: 47, scope: !281, inlinedAt: !1504)
!1511 = !DILocation(line: 241, column: 19, scope: !281, inlinedAt: !1504)
!1512 = !DILocation(line: 242, column: 29, scope: !294, inlinedAt: !1504)
!1513 = !DILocation(line: 242, column: 46, scope: !294, inlinedAt: !1504)
!1514 = !DILocation(line: 242, column: 70, scope: !294, inlinedAt: !1504)
!1515 = !DILocation(line: 242, column: 9, scope: !294, inlinedAt: !1504)
!1516 = !DILocation(line: 242, column: 74, scope: !294, inlinedAt: !1504)
!1517 = !DILocation(line: 242, column: 9, scope: !281, inlinedAt: !1504)
!1518 = !DILocation(line: 244, column: 9, scope: !301, inlinedAt: !1504)
!1519 = !DILocation(line: 245, column: 9, scope: !301, inlinedAt: !1504)
!1520 = !DILocation(line: 247, column: 5, scope: !281, inlinedAt: !1504)
!1521 = !DILocation(line: 248, column: 14, scope: !281, inlinedAt: !1504)
!1522 = !DILocation(line: 249, column: 20, scope: !281, inlinedAt: !1504)
!1523 = !DILocation(line: 250, column: 5, scope: !281, inlinedAt: !1504)
!1524 = !DILocation(line: 251, column: 1, scope: !281, inlinedAt: !1504)
!1525 = !DILocation(line: 1293, column: 5, scope: !1505)
!1526 = !DILocation(line: 1294, column: 37, scope: !1438)
!1527 = !DILocation(line: 1294, column: 54, scope: !1438)
!1528 = !DILocation(line: 1294, column: 43, scope: !1438)
!1529 = !DILocation(line: 1294, column: 17, scope: !1438)
!1530 = !DILocation(line: 1294, column: 15, scope: !1438)
!1531 = !DILocation(line: 1295, column: 5, scope: !1438)
!1532 = !DILocation(line: 1298, column: 5, scope: !1438)
!1533 = !DILocation(line: 0, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 1277, column: 9)
!1535 = !DILocation(line: 1299, column: 1, scope: !1438)
!1536 = distinct !DISubprogram(name: "_quicklistZiplistMerge", scope: !3, file: !3, line: 715, type: !1537, isLocal: false, isDefinition: true, scopeLine: 717, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1539)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!26, !21, !26, !26}
!1539 = !{!1540, !1541, !1542, !1543, !1546}
!1540 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1536, file: !3, line: 715, type: !21)
!1541 = !DILocalVariable(name: "a", arg: 2, scope: !1536, file: !3, line: 716, type: !26)
!1542 = !DILocalVariable(name: "b", arg: 3, scope: !1536, file: !3, line: 717, type: !26)
!1543 = !DILocalVariable(name: "keep", scope: !1544, file: !3, line: 724, type: !26)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 722, column: 41)
!1545 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 722, column: 9)
!1546 = !DILocalVariable(name: "nokeep", scope: !1544, file: !3, line: 724, type: !26)
!1547 = !DILocation(line: 715, column: 63, scope: !1536)
!1548 = !DILocation(line: 716, column: 67, scope: !1536)
!1549 = !DILocation(line: 717, column: 67, scope: !1536)
!1550 = !DILocation(line: 720, column: 5, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 720, column: 5)
!1552 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 720, column: 5)
!1553 = !DILocation(line: 720, column: 5, scope: !1552)
!1554 = !DILocation(line: 235, column: 59, scope: !281, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 720, column: 5, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 720, column: 5)
!1557 = !DILocation(line: 240, column: 40, scope: !281, inlinedAt: !1555)
!1558 = !DILocation(line: 240, column: 34, scope: !281, inlinedAt: !1555)
!1559 = !DILocation(line: 240, column: 26, scope: !281, inlinedAt: !1555)
!1560 = !DILocation(line: 240, column: 11, scope: !281, inlinedAt: !1555)
!1561 = !DILocation(line: 241, column: 47, scope: !281, inlinedAt: !1555)
!1562 = !DILocation(line: 241, column: 19, scope: !281, inlinedAt: !1555)
!1563 = !DILocation(line: 242, column: 29, scope: !294, inlinedAt: !1555)
!1564 = !DILocation(line: 242, column: 46, scope: !294, inlinedAt: !1555)
!1565 = !DILocation(line: 242, column: 70, scope: !294, inlinedAt: !1555)
!1566 = !DILocation(line: 242, column: 9, scope: !294, inlinedAt: !1555)
!1567 = !DILocation(line: 242, column: 74, scope: !294, inlinedAt: !1555)
!1568 = !DILocation(line: 242, column: 9, scope: !281, inlinedAt: !1555)
!1569 = !DILocation(line: 244, column: 9, scope: !301, inlinedAt: !1555)
!1570 = !DILocation(line: 245, column: 9, scope: !301, inlinedAt: !1555)
!1571 = !DILocation(line: 247, column: 5, scope: !281, inlinedAt: !1555)
!1572 = !DILocation(line: 248, column: 14, scope: !281, inlinedAt: !1555)
!1573 = !DILocation(line: 249, column: 20, scope: !281, inlinedAt: !1555)
!1574 = !DILocation(line: 250, column: 5, scope: !281, inlinedAt: !1555)
!1575 = !DILocation(line: 251, column: 1, scope: !281, inlinedAt: !1555)
!1576 = !DILocation(line: 720, column: 5, scope: !1556)
!1577 = !DILocation(line: 721, column: 5, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 721, column: 5)
!1579 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 721, column: 5)
!1580 = !DILocation(line: 721, column: 5, scope: !1579)
!1581 = !DILocation(line: 235, column: 59, scope: !281, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 721, column: 5, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 721, column: 5)
!1584 = !DILocation(line: 240, column: 40, scope: !281, inlinedAt: !1582)
!1585 = !DILocation(line: 240, column: 34, scope: !281, inlinedAt: !1582)
!1586 = !DILocation(line: 240, column: 26, scope: !281, inlinedAt: !1582)
!1587 = !DILocation(line: 240, column: 11, scope: !281, inlinedAt: !1582)
!1588 = !DILocation(line: 241, column: 47, scope: !281, inlinedAt: !1582)
!1589 = !DILocation(line: 241, column: 19, scope: !281, inlinedAt: !1582)
!1590 = !DILocation(line: 242, column: 29, scope: !294, inlinedAt: !1582)
!1591 = !DILocation(line: 242, column: 46, scope: !294, inlinedAt: !1582)
!1592 = !DILocation(line: 242, column: 70, scope: !294, inlinedAt: !1582)
!1593 = !DILocation(line: 242, column: 9, scope: !294, inlinedAt: !1582)
!1594 = !DILocation(line: 242, column: 74, scope: !294, inlinedAt: !1582)
!1595 = !DILocation(line: 242, column: 9, scope: !281, inlinedAt: !1582)
!1596 = !DILocation(line: 244, column: 9, scope: !301, inlinedAt: !1582)
!1597 = !DILocation(line: 245, column: 9, scope: !301, inlinedAt: !1582)
!1598 = !DILocation(line: 247, column: 5, scope: !281, inlinedAt: !1582)
!1599 = !DILocation(line: 248, column: 14, scope: !281, inlinedAt: !1582)
!1600 = !DILocation(line: 249, column: 20, scope: !281, inlinedAt: !1582)
!1601 = !DILocation(line: 250, column: 5, scope: !281, inlinedAt: !1582)
!1602 = !DILocation(line: 251, column: 1, scope: !281, inlinedAt: !1582)
!1603 = !DILocation(line: 721, column: 5, scope: !1583)
!1604 = !DILocation(line: 722, column: 27, scope: !1545)
!1605 = !DILocation(line: 722, column: 35, scope: !1545)
!1606 = !DILocation(line: 722, column: 10, scope: !1545)
!1607 = !DILocation(line: 722, column: 9, scope: !1536)
!1608 = !DILocation(line: 724, column: 24, scope: !1544)
!1609 = !DILocation(line: 724, column: 38, scope: !1544)
!1610 = !DILocation(line: 725, column: 17, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 725, column: 13)
!1612 = !DILocation(line: 725, column: 14, scope: !1611)
!1613 = !DILocation(line: 725, column: 13, scope: !1544)
!1614 = !DILocation(line: 728, column: 24, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 728, column: 20)
!1616 = !DILocation(line: 728, column: 21, scope: !1615)
!1617 = !DILocation(line: 728, column: 20, scope: !1611)
!1618 = !DILocation(line: 732, column: 40, scope: !1544)
!1619 = !DILocation(line: 0, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 725, column: 21)
!1621 = !DILocation(line: 732, column: 23, scope: !1544)
!1622 = !DILocation(line: 732, column: 15, scope: !1544)
!1623 = !DILocation(line: 732, column: 21, scope: !1544)
!1624 = !DILocation(line: 733, column: 9, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 733, column: 9)
!1626 = !DILocation(line: 735, column: 17, scope: !1544)
!1627 = !DILocation(line: 735, column: 23, scope: !1544)
!1628 = !DILocation(line: 599, column: 49, scope: !1204, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 736, column: 9, scope: !1544)
!1630 = !DILocation(line: 600, column: 53, scope: !1204, inlinedAt: !1629)
!1631 = !DILocation(line: 601, column: 15, scope: !1213, inlinedAt: !1629)
!1632 = !DILocation(line: 601, column: 9, scope: !1213, inlinedAt: !1629)
!1633 = !DILocation(line: 601, column: 9, scope: !1204, inlinedAt: !1629)
!1634 = !DILocation(line: 602, column: 34, scope: !1213, inlinedAt: !1629)
!1635 = !DILocation(line: 602, column: 26, scope: !1213, inlinedAt: !1629)
!1636 = !DILocation(line: 602, column: 9, scope: !1213, inlinedAt: !1629)
!1637 = !DILocation(line: 603, column: 15, scope: !1220, inlinedAt: !1629)
!1638 = !DILocation(line: 603, column: 9, scope: !1220, inlinedAt: !1629)
!1639 = !DILocation(line: 603, column: 9, scope: !1204, inlinedAt: !1629)
!1640 = !DILocation(line: 604, column: 21, scope: !1220, inlinedAt: !1629)
!1641 = !DILocation(line: 604, column: 26, scope: !1220, inlinedAt: !1629)
!1642 = !DILocation(line: 604, column: 9, scope: !1220, inlinedAt: !1629)
!1643 = !DILocation(line: 606, column: 28, scope: !1227, inlinedAt: !1629)
!1644 = !DILocation(line: 606, column: 14, scope: !1227, inlinedAt: !1629)
!1645 = !DILocation(line: 606, column: 9, scope: !1204, inlinedAt: !1629)
!1646 = !DILocation(line: 607, column: 25, scope: !1231, inlinedAt: !1629)
!1647 = !DILocation(line: 608, column: 5, scope: !1231, inlinedAt: !1629)
!1648 = !DILocation(line: 610, column: 28, scope: !1234, inlinedAt: !1629)
!1649 = !DILocation(line: 610, column: 14, scope: !1234, inlinedAt: !1629)
!1650 = !DILocation(line: 610, column: 9, scope: !1204, inlinedAt: !1629)
!1651 = !DILocation(line: 611, column: 33, scope: !1238, inlinedAt: !1629)
!1652 = !DILocation(line: 611, column: 25, scope: !1238, inlinedAt: !1629)
!1653 = !DILocation(line: 612, column: 5, scope: !1238, inlinedAt: !1629)
!1654 = !DILocation(line: 616, column: 5, scope: !1204, inlinedAt: !1629)
!1655 = !DILocation(line: 618, column: 31, scope: !1204, inlinedAt: !1629)
!1656 = !DILocation(line: 618, column: 25, scope: !1204, inlinedAt: !1629)
!1657 = !DILocation(line: 618, column: 16, scope: !1204, inlinedAt: !1629)
!1658 = !DILocation(line: 618, column: 22, scope: !1204, inlinedAt: !1629)
!1659 = !DILocation(line: 620, column: 17, scope: !1204, inlinedAt: !1629)
!1660 = !DILocation(line: 620, column: 5, scope: !1204, inlinedAt: !1629)
!1661 = !DILocation(line: 621, column: 11, scope: !1204, inlinedAt: !1629)
!1662 = !DILocation(line: 621, column: 5, scope: !1204, inlinedAt: !1629)
!1663 = !DILocation(line: 622, column: 16, scope: !1204, inlinedAt: !1629)
!1664 = !DILocation(line: 622, column: 19, scope: !1204, inlinedAt: !1629)
!1665 = !DILocation(line: 623, column: 1, scope: !1204, inlinedAt: !1629)
!1666 = !DILocation(line: 737, column: 9, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 737, column: 9)
!1668 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 737, column: 9)
!1669 = !DILocation(line: 737, column: 9, scope: !1668)
!1670 = !DILocation(line: 737, column: 9, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 737, column: 9)
!1672 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 737, column: 9)
!1673 = !DILocation(line: 737, column: 9, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 737, column: 9)
!1675 = !DILocation(line: 0, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 739, column: 12)
!1677 = !DILocation(line: 743, column: 1, scope: !1536)
!1678 = distinct !DISubprogram(name: "_quicklistMergeNodes", scope: !3, file: !3, line: 753, type: !1205, isLocal: false, isDefinition: true, scopeLine: 754, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1679)
!1679 = !{!1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687}
!1680 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1678, file: !3, line: 753, type: !21)
!1681 = !DILocalVariable(name: "center", arg: 2, scope: !1678, file: !3, line: 754, type: !26)
!1682 = !DILocalVariable(name: "fill", scope: !1678, file: !3, line: 755, type: !20)
!1683 = !DILocalVariable(name: "prev", scope: !1678, file: !3, line: 756, type: !26)
!1684 = !DILocalVariable(name: "prev_prev", scope: !1678, file: !3, line: 756, type: !26)
!1685 = !DILocalVariable(name: "next", scope: !1678, file: !3, line: 756, type: !26)
!1686 = !DILocalVariable(name: "next_next", scope: !1678, file: !3, line: 756, type: !26)
!1687 = !DILocalVariable(name: "target", scope: !1678, file: !3, line: 756, type: !26)
!1688 = !DILocation(line: 753, column: 51, scope: !1678)
!1689 = !DILocation(line: 754, column: 55, scope: !1678)
!1690 = !DILocation(line: 755, column: 27, scope: !1678)
!1691 = !DILocation(line: 755, column: 9, scope: !1678)
!1692 = !DILocation(line: 756, column: 58, scope: !1678)
!1693 = !DILocation(line: 756, column: 46, scope: !1678)
!1694 = !DILocation(line: 756, column: 39, scope: !1678)
!1695 = !DILocation(line: 756, column: 27, scope: !1678)
!1696 = !DILocation(line: 756, column: 20, scope: !1678)
!1697 = !DILocation(line: 759, column: 17, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 759, column: 9)
!1699 = !DILocation(line: 759, column: 9, scope: !1698)
!1700 = !DILocation(line: 759, column: 9, scope: !1678)
!1701 = !DILocation(line: 761, column: 27, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 761, column: 13)
!1703 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 759, column: 23)
!1704 = !DILocation(line: 761, column: 13, scope: !1703)
!1705 = !DILocation(line: 0, scope: !1678)
!1706 = !DILocation(line: 765, column: 17, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 765, column: 9)
!1708 = !DILocation(line: 765, column: 9, scope: !1707)
!1709 = !DILocation(line: 765, column: 9, scope: !1678)
!1710 = !DILocation(line: 767, column: 27, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 767, column: 13)
!1712 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 765, column: 23)
!1713 = !DILocation(line: 767, column: 13, scope: !1712)
!1714 = !DILocation(line: 472, column: 64, scope: !727, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 772, column: 9, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 772, column: 9)
!1717 = !DILocation(line: 473, column: 64, scope: !727, inlinedAt: !1715)
!1718 = !DILocation(line: 474, column: 53, scope: !727, inlinedAt: !1715)
!1719 = !DILocation(line: 475, column: 10, scope: !739, inlinedAt: !1715)
!1720 = !DILocation(line: 475, column: 16, scope: !739, inlinedAt: !1715)
!1721 = !DILocation(line: 475, column: 12, scope: !739, inlinedAt: !1715)
!1722 = !DILocation(line: 480, column: 32, scope: !727, inlinedAt: !1715)
!1723 = !DILocation(line: 480, column: 40, scope: !727, inlinedAt: !1715)
!1724 = !DILocation(line: 480, column: 35, scope: !727, inlinedAt: !1715)
!1725 = !DILocation(line: 480, column: 43, scope: !727, inlinedAt: !1715)
!1726 = !DILocation(line: 480, column: 18, scope: !727, inlinedAt: !1715)
!1727 = !DILocation(line: 422, column: 58, scope: !643, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 481, column: 9, scope: !749, inlinedAt: !1715)
!1729 = !DILocation(line: 427, column: 16, scope: !654, inlinedAt: !1728)
!1730 = !DILocation(line: 423, column: 9, scope: !643, inlinedAt: !1728)
!1731 = !DILocation(line: 436, column: 1, scope: !643, inlinedAt: !1728)
!1732 = !DILocation(line: 481, column: 9, scope: !727, inlinedAt: !1715)
!1733 = !DILocation(line: 481, column: 9, scope: !749, inlinedAt: !1715)
!1734 = !DILocation(line: 421, column: 61, scope: !643, inlinedAt: !1728)
!1735 = !DILocation(line: 426, column: 29, scope: !643, inlinedAt: !1728)
!1736 = !DILocation(line: 426, column: 21, scope: !643, inlinedAt: !1728)
!1737 = !DILocation(line: 426, column: 12, scope: !643, inlinedAt: !1728)
!1738 = !DILocation(line: 428, column: 19, scope: !660, inlinedAt: !1728)
!1739 = !DILocation(line: 428, column: 16, scope: !660, inlinedAt: !1728)
!1740 = !DILocation(line: 489, column: 1, scope: !727, inlinedAt: !1715)
!1741 = !DILocation(line: 772, column: 9, scope: !1678)
!1742 = !DILocation(line: 483, column: 15, scope: !762, inlinedAt: !1715)
!1743 = !DILocation(line: 483, column: 14, scope: !749, inlinedAt: !1715)
!1744 = !DILocation(line: 485, column: 23, scope: !765, inlinedAt: !1715)
!1745 = !DILocation(line: 485, column: 34, scope: !765, inlinedAt: !1715)
!1746 = !DILocation(line: 485, column: 29, scope: !765, inlinedAt: !1715)
!1747 = !DILocation(line: 485, column: 41, scope: !765, inlinedAt: !1715)
!1748 = !DILocation(line: 773, column: 9, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 772, column: 58)
!1750 = !DILocation(line: 775, column: 5, scope: !1749)
!1751 = !DILocation(line: 472, column: 64, scope: !727, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 778, column: 9, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 778, column: 9)
!1754 = !DILocation(line: 473, column: 64, scope: !727, inlinedAt: !1752)
!1755 = !DILocation(line: 474, column: 53, scope: !727, inlinedAt: !1752)
!1756 = !DILocation(line: 475, column: 10, scope: !739, inlinedAt: !1752)
!1757 = !DILocation(line: 475, column: 16, scope: !739, inlinedAt: !1752)
!1758 = !DILocation(line: 475, column: 12, scope: !739, inlinedAt: !1752)
!1759 = !DILocation(line: 480, column: 32, scope: !727, inlinedAt: !1752)
!1760 = !DILocation(line: 480, column: 40, scope: !727, inlinedAt: !1752)
!1761 = !DILocation(line: 480, column: 35, scope: !727, inlinedAt: !1752)
!1762 = !DILocation(line: 480, column: 43, scope: !727, inlinedAt: !1752)
!1763 = !DILocation(line: 480, column: 18, scope: !727, inlinedAt: !1752)
!1764 = !DILocation(line: 422, column: 58, scope: !643, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 481, column: 9, scope: !749, inlinedAt: !1752)
!1766 = !DILocation(line: 427, column: 16, scope: !654, inlinedAt: !1765)
!1767 = !DILocation(line: 423, column: 9, scope: !643, inlinedAt: !1765)
!1768 = !DILocation(line: 436, column: 1, scope: !643, inlinedAt: !1765)
!1769 = !DILocation(line: 481, column: 9, scope: !727, inlinedAt: !1752)
!1770 = !DILocation(line: 481, column: 9, scope: !749, inlinedAt: !1752)
!1771 = !DILocation(line: 421, column: 61, scope: !643, inlinedAt: !1765)
!1772 = !DILocation(line: 426, column: 29, scope: !643, inlinedAt: !1765)
!1773 = !DILocation(line: 426, column: 21, scope: !643, inlinedAt: !1765)
!1774 = !DILocation(line: 426, column: 12, scope: !643, inlinedAt: !1765)
!1775 = !DILocation(line: 428, column: 19, scope: !660, inlinedAt: !1765)
!1776 = !DILocation(line: 428, column: 16, scope: !660, inlinedAt: !1765)
!1777 = !DILocation(line: 489, column: 1, scope: !727, inlinedAt: !1752)
!1778 = !DILocation(line: 778, column: 9, scope: !1678)
!1779 = !DILocation(line: 483, column: 15, scope: !762, inlinedAt: !1752)
!1780 = !DILocation(line: 483, column: 14, scope: !749, inlinedAt: !1752)
!1781 = !DILocation(line: 485, column: 23, scope: !765, inlinedAt: !1752)
!1782 = !DILocation(line: 485, column: 34, scope: !765, inlinedAt: !1752)
!1783 = !DILocation(line: 485, column: 29, scope: !765, inlinedAt: !1752)
!1784 = !DILocation(line: 485, column: 41, scope: !765, inlinedAt: !1752)
!1785 = !DILocation(line: 779, column: 9, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 778, column: 58)
!1787 = !DILocation(line: 781, column: 5, scope: !1786)
!1788 = !DILocation(line: 784, column: 50, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 784, column: 9)
!1790 = !DILocation(line: 472, column: 64, scope: !727, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 784, column: 9, scope: !1789)
!1792 = !DILocation(line: 473, column: 64, scope: !727, inlinedAt: !1791)
!1793 = !DILocation(line: 474, column: 53, scope: !727, inlinedAt: !1791)
!1794 = !DILocation(line: 475, column: 16, scope: !739, inlinedAt: !1791)
!1795 = !DILocation(line: 475, column: 12, scope: !739, inlinedAt: !1791)
!1796 = !DILocation(line: 480, column: 32, scope: !727, inlinedAt: !1791)
!1797 = !DILocation(line: 480, column: 40, scope: !727, inlinedAt: !1791)
!1798 = !DILocation(line: 480, column: 35, scope: !727, inlinedAt: !1791)
!1799 = !DILocation(line: 480, column: 43, scope: !727, inlinedAt: !1791)
!1800 = !DILocation(line: 480, column: 18, scope: !727, inlinedAt: !1791)
!1801 = !DILocation(line: 422, column: 58, scope: !643, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 481, column: 9, scope: !749, inlinedAt: !1791)
!1803 = !DILocation(line: 427, column: 16, scope: !654, inlinedAt: !1802)
!1804 = !DILocation(line: 423, column: 9, scope: !643, inlinedAt: !1802)
!1805 = !DILocation(line: 436, column: 1, scope: !643, inlinedAt: !1802)
!1806 = !DILocation(line: 481, column: 9, scope: !727, inlinedAt: !1791)
!1807 = !DILocation(line: 481, column: 9, scope: !749, inlinedAt: !1791)
!1808 = !DILocation(line: 421, column: 61, scope: !643, inlinedAt: !1802)
!1809 = !DILocation(line: 426, column: 29, scope: !643, inlinedAt: !1802)
!1810 = !DILocation(line: 426, column: 21, scope: !643, inlinedAt: !1802)
!1811 = !DILocation(line: 426, column: 12, scope: !643, inlinedAt: !1802)
!1812 = !DILocation(line: 428, column: 19, scope: !660, inlinedAt: !1802)
!1813 = !DILocation(line: 428, column: 16, scope: !660, inlinedAt: !1802)
!1814 = !DILocation(line: 489, column: 1, scope: !727, inlinedAt: !1791)
!1815 = !DILocation(line: 784, column: 9, scope: !1678)
!1816 = !DILocation(line: 483, column: 15, scope: !762, inlinedAt: !1791)
!1817 = !DILocation(line: 483, column: 14, scope: !749, inlinedAt: !1791)
!1818 = !DILocation(line: 485, column: 23, scope: !765, inlinedAt: !1791)
!1819 = !DILocation(line: 485, column: 34, scope: !765, inlinedAt: !1791)
!1820 = !DILocation(line: 485, column: 29, scope: !765, inlinedAt: !1791)
!1821 = !DILocation(line: 485, column: 41, scope: !765, inlinedAt: !1791)
!1822 = !DILocation(line: 785, column: 18, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 784, column: 63)
!1824 = !DILocation(line: 793, column: 50, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 793, column: 9)
!1826 = !DILocation(line: 787, column: 5, scope: !1823)
!1827 = !DILocation(line: 0, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 787, column: 12)
!1829 = !DILocation(line: 472, column: 64, scope: !727, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 793, column: 9, scope: !1825)
!1831 = !DILocation(line: 473, column: 64, scope: !727, inlinedAt: !1830)
!1832 = !DILocation(line: 474, column: 53, scope: !727, inlinedAt: !1830)
!1833 = !DILocation(line: 475, column: 10, scope: !739, inlinedAt: !1830)
!1834 = !DILocation(line: 475, column: 16, scope: !739, inlinedAt: !1830)
!1835 = !DILocation(line: 475, column: 12, scope: !739, inlinedAt: !1830)
!1836 = !DILocation(line: 480, column: 32, scope: !727, inlinedAt: !1830)
!1837 = !DILocation(line: 480, column: 40, scope: !727, inlinedAt: !1830)
!1838 = !DILocation(line: 480, column: 35, scope: !727, inlinedAt: !1830)
!1839 = !DILocation(line: 480, column: 43, scope: !727, inlinedAt: !1830)
!1840 = !DILocation(line: 480, column: 18, scope: !727, inlinedAt: !1830)
!1841 = !DILocation(line: 422, column: 58, scope: !643, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 481, column: 9, scope: !749, inlinedAt: !1830)
!1843 = !DILocation(line: 427, column: 16, scope: !654, inlinedAt: !1842)
!1844 = !DILocation(line: 423, column: 9, scope: !643, inlinedAt: !1842)
!1845 = !DILocation(line: 436, column: 1, scope: !643, inlinedAt: !1842)
!1846 = !DILocation(line: 481, column: 9, scope: !727, inlinedAt: !1830)
!1847 = !DILocation(line: 481, column: 9, scope: !749, inlinedAt: !1830)
!1848 = !DILocation(line: 421, column: 61, scope: !643, inlinedAt: !1842)
!1849 = !DILocation(line: 426, column: 29, scope: !643, inlinedAt: !1842)
!1850 = !DILocation(line: 426, column: 21, scope: !643, inlinedAt: !1842)
!1851 = !DILocation(line: 426, column: 12, scope: !643, inlinedAt: !1842)
!1852 = !DILocation(line: 428, column: 19, scope: !660, inlinedAt: !1842)
!1853 = !DILocation(line: 428, column: 16, scope: !660, inlinedAt: !1842)
!1854 = !DILocation(line: 489, column: 1, scope: !727, inlinedAt: !1830)
!1855 = !DILocation(line: 793, column: 9, scope: !1678)
!1856 = !DILocation(line: 483, column: 15, scope: !762, inlinedAt: !1830)
!1857 = !DILocation(line: 483, column: 14, scope: !749, inlinedAt: !1830)
!1858 = !DILocation(line: 485, column: 23, scope: !765, inlinedAt: !1830)
!1859 = !DILocation(line: 485, column: 34, scope: !765, inlinedAt: !1830)
!1860 = !DILocation(line: 485, column: 29, scope: !765, inlinedAt: !1830)
!1861 = !DILocation(line: 485, column: 41, scope: !765, inlinedAt: !1830)
!1862 = !DILocation(line: 794, column: 9, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 793, column: 63)
!1864 = !DILocation(line: 795, column: 5, scope: !1863)
!1865 = !DILocation(line: 796, column: 1, scope: !1678)
!1866 = distinct !DISubprogram(name: "_quicklistSplitNode", scope: !3, file: !3, line: 817, type: !1867, isLocal: false, isDefinition: true, scopeLine: 818, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1869)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!26, !26, !20, !20}
!1869 = !{!1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878}
!1870 = !DILocalVariable(name: "node", arg: 1, scope: !1866, file: !3, line: 817, type: !26)
!1871 = !DILocalVariable(name: "offset", arg: 2, scope: !1866, file: !3, line: 817, type: !20)
!1872 = !DILocalVariable(name: "after", arg: 3, scope: !1866, file: !3, line: 818, type: !20)
!1873 = !DILocalVariable(name: "zl_sz", scope: !1866, file: !3, line: 819, type: !51)
!1874 = !DILocalVariable(name: "new_node", scope: !1866, file: !3, line: 821, type: !26)
!1875 = !DILocalVariable(name: "orig_start", scope: !1866, file: !3, line: 828, type: !20)
!1876 = !DILocalVariable(name: "orig_extent", scope: !1866, file: !3, line: 829, type: !20)
!1877 = !DILocalVariable(name: "new_start", scope: !1866, file: !3, line: 830, type: !20)
!1878 = !DILocalVariable(name: "new_extent", scope: !1866, file: !3, line: 831, type: !20)
!1879 = !DILocation(line: 817, column: 64, scope: !1866)
!1880 = !DILocation(line: 817, column: 74, scope: !1866)
!1881 = !DILocation(line: 818, column: 53, scope: !1866)
!1882 = !DILocation(line: 819, column: 26, scope: !1866)
!1883 = !DILocation(line: 819, column: 20, scope: !1866)
!1884 = !DILocation(line: 819, column: 12, scope: !1866)
!1885 = !DILocation(line: 160, column: 12, scope: !171, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 821, column: 31, scope: !1866)
!1887 = !DILocation(line: 159, column: 20, scope: !171, inlinedAt: !1886)
!1888 = !DILocation(line: 161, column: 11, scope: !171, inlinedAt: !1886)
!1889 = !DILocation(line: 161, column: 14, scope: !171, inlinedAt: !1886)
!1890 = !DILocation(line: 162, column: 11, scope: !171, inlinedAt: !1886)
!1891 = !DILocation(line: 162, column: 17, scope: !171, inlinedAt: !1886)
!1892 = !DILocation(line: 163, column: 11, scope: !171, inlinedAt: !1886)
!1893 = !DILocation(line: 163, column: 14, scope: !171, inlinedAt: !1886)
!1894 = !DILocation(line: 164, column: 29, scope: !171, inlinedAt: !1886)
!1895 = !DILocation(line: 167, column: 22, scope: !171, inlinedAt: !1886)
!1896 = !DILocation(line: 168, column: 5, scope: !171, inlinedAt: !1886)
!1897 = !DILocation(line: 821, column: 20, scope: !1866)
!1898 = !DILocation(line: 822, column: 20, scope: !1866)
!1899 = !DILocation(line: 822, column: 18, scope: !1866)
!1900 = !DILocation(line: 825, column: 32, scope: !1866)
!1901 = !DILocation(line: 825, column: 5, scope: !1866)
!1902 = !DILocation(line: 828, column: 22, scope: !1866)
!1903 = !DILocation(line: 828, column: 37, scope: !1866)
!1904 = !DILocation(line: 828, column: 9, scope: !1866)
!1905 = !DILocation(line: 829, column: 23, scope: !1866)
!1906 = !DILocation(line: 829, column: 9, scope: !1866)
!1907 = !DILocation(line: 830, column: 21, scope: !1866)
!1908 = !DILocation(line: 830, column: 9, scope: !1866)
!1909 = !DILocation(line: 831, column: 22, scope: !1866)
!1910 = !DILocation(line: 831, column: 9, scope: !1866)
!1911 = !DILocation(line: 836, column: 41, scope: !1866)
!1912 = !DILocation(line: 836, column: 16, scope: !1866)
!1913 = !DILocation(line: 836, column: 14, scope: !1866)
!1914 = !DILocation(line: 837, column: 19, scope: !1866)
!1915 = !DILocation(line: 837, column: 11, scope: !1866)
!1916 = !DILocation(line: 837, column: 17, scope: !1866)
!1917 = !DILocation(line: 838, column: 5, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 838, column: 5)
!1919 = !DILocation(line: 840, column: 49, scope: !1866)
!1920 = !DILocation(line: 840, column: 20, scope: !1866)
!1921 = !DILocation(line: 840, column: 18, scope: !1866)
!1922 = !DILocation(line: 841, column: 23, scope: !1866)
!1923 = !DILocation(line: 841, column: 21, scope: !1866)
!1924 = !DILocation(line: 842, column: 5, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 842, column: 5)
!1926 = !DILocation(line: 845, column: 5, scope: !1866)
!1927 = distinct !DISubprogram(name: "_quicklistInsert", scope: !3, file: !3, line: 852, type: !1928, isLocal: false, isDefinition: true, scopeLine: 853, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1930)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{null, !21, !1333, !47, !50, !20}
!1930 = !{!1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944}
!1931 = !DILocalVariable(name: "quicklist", arg: 1, scope: !1927, file: !3, line: 852, type: !21)
!1932 = !DILocalVariable(name: "entry", arg: 2, scope: !1927, file: !3, line: 852, type: !1333)
!1933 = !DILocalVariable(name: "value", arg: 3, scope: !1927, file: !3, line: 853, type: !47)
!1934 = !DILocalVariable(name: "sz", arg: 4, scope: !1927, file: !3, line: 853, type: !50)
!1935 = !DILocalVariable(name: "after", arg: 5, scope: !1927, file: !3, line: 853, type: !20)
!1936 = !DILocalVariable(name: "full", scope: !1927, file: !3, line: 854, type: !20)
!1937 = !DILocalVariable(name: "at_tail", scope: !1927, file: !3, line: 854, type: !20)
!1938 = !DILocalVariable(name: "at_head", scope: !1927, file: !3, line: 854, type: !20)
!1939 = !DILocalVariable(name: "full_next", scope: !1927, file: !3, line: 854, type: !20)
!1940 = !DILocalVariable(name: "full_prev", scope: !1927, file: !3, line: 854, type: !20)
!1941 = !DILocalVariable(name: "fill", scope: !1927, file: !3, line: 855, type: !20)
!1942 = !DILocalVariable(name: "node", scope: !1927, file: !3, line: 856, type: !26)
!1943 = !DILocalVariable(name: "new_node", scope: !1927, file: !3, line: 857, type: !26)
!1944 = !DILocalVariable(name: "next", scope: !1945, file: !3, line: 899, type: !6)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 896, column: 25)
!1946 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 896, column: 9)
!1947 = !DILocation(line: 852, column: 47, scope: !1927)
!1948 = !DILocation(line: 852, column: 74, scope: !1927)
!1949 = !DILocation(line: 853, column: 42, scope: !1927)
!1950 = !DILocation(line: 853, column: 62, scope: !1927)
!1951 = !DILocation(line: 853, column: 70, scope: !1927)
!1952 = !DILocation(line: 854, column: 9, scope: !1927)
!1953 = !DILocation(line: 854, column: 19, scope: !1927)
!1954 = !DILocation(line: 854, column: 32, scope: !1927)
!1955 = !DILocation(line: 854, column: 45, scope: !1927)
!1956 = !DILocation(line: 854, column: 60, scope: !1927)
!1957 = !DILocation(line: 855, column: 27, scope: !1927)
!1958 = !DILocation(line: 855, column: 9, scope: !1927)
!1959 = !DILocation(line: 856, column: 34, scope: !1927)
!1960 = !DILocation(line: 856, column: 20, scope: !1927)
!1961 = !DILocation(line: 857, column: 20, scope: !1927)
!1962 = !DILocation(line: 859, column: 10, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 859, column: 9)
!1964 = !DILocation(line: 859, column: 9, scope: !1927)
!1965 = !DILocation(line: 160, column: 12, scope: !171, inlinedAt: !1966)
!1966 = distinct !DILocation(line: 862, column: 20, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1963, file: !3, line: 859, column: 16)
!1968 = !DILocation(line: 159, column: 20, scope: !171, inlinedAt: !1966)
!1969 = !DILocation(line: 161, column: 11, scope: !171, inlinedAt: !1966)
!1970 = !DILocation(line: 161, column: 14, scope: !171, inlinedAt: !1966)
!1971 = !DILocation(line: 162, column: 11, scope: !171, inlinedAt: !1966)
!1972 = !DILocation(line: 162, column: 17, scope: !171, inlinedAt: !1966)
!1973 = !DILocation(line: 163, column: 11, scope: !171, inlinedAt: !1966)
!1974 = !DILocation(line: 163, column: 14, scope: !171, inlinedAt: !1966)
!1975 = !DILocation(line: 164, column: 29, scope: !171, inlinedAt: !1966)
!1976 = !DILocation(line: 167, column: 22, scope: !171, inlinedAt: !1966)
!1977 = !DILocation(line: 168, column: 5, scope: !171, inlinedAt: !1966)
!1978 = !DILocation(line: 863, column: 36, scope: !1967)
!1979 = !DILocation(line: 863, column: 57, scope: !1967)
!1980 = !DILocation(line: 863, column: 24, scope: !1967)
!1981 = !DILocation(line: 863, column: 22, scope: !1967)
!1982 = !DILocation(line: 372, column: 52, scope: !453, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 864, column: 9, scope: !1967)
!1984 = !DILocation(line: 373, column: 56, scope: !453, inlinedAt: !1983)
!1985 = !DILocation(line: 374, column: 56, scope: !453, inlinedAt: !1983)
!1986 = !DILocation(line: 374, column: 70, scope: !453, inlinedAt: !1983)
!1987 = !DILocation(line: 375, column: 9, scope: !466, inlinedAt: !1983)
!1988 = !DILocation(line: 375, column: 9, scope: !453, inlinedAt: !1983)
!1989 = !DILocation(line: 164, column: 24, scope: !171, inlinedAt: !1966)
!1990 = !DILocation(line: 376, column: 24, scope: !469, inlinedAt: !1983)
!1991 = !DILocation(line: 383, column: 24, scope: !489, inlinedAt: !1983)
!1992 = !DILocation(line: 383, column: 29, scope: !489, inlinedAt: !1983)
!1993 = !DILocation(line: 383, column: 13, scope: !469, inlinedAt: !1983)
!1994 = !DILocation(line: 384, column: 29, scope: !489, inlinedAt: !1983)
!1995 = !DILocation(line: 384, column: 13, scope: !489, inlinedAt: !1983)
!1996 = !DILocation(line: 164, column: 11, scope: !171, inlinedAt: !1966)
!1997 = !DILocation(line: 386, column: 24, scope: !496, inlinedAt: !1983)
!1998 = !DILocation(line: 393, column: 24, scope: !514, inlinedAt: !1983)
!1999 = !DILocation(line: 393, column: 29, scope: !514, inlinedAt: !1983)
!2000 = !DILocation(line: 393, column: 13, scope: !496, inlinedAt: !1983)
!2001 = !DILocation(line: 394, column: 29, scope: !514, inlinedAt: !1983)
!2002 = !DILocation(line: 394, column: 13, scope: !514, inlinedAt: !1983)
!2003 = !DILocation(line: 397, column: 20, scope: !520, inlinedAt: !1983)
!2004 = !DILocation(line: 397, column: 24, scope: !520, inlinedAt: !1983)
!2005 = !DILocation(line: 397, column: 9, scope: !453, inlinedAt: !1983)
!2006 = !DILocation(line: 398, column: 38, scope: !524, inlinedAt: !1983)
!2007 = !DILocation(line: 398, column: 43, scope: !524, inlinedAt: !1983)
!2008 = !DILocation(line: 398, column: 25, scope: !524, inlinedAt: !1983)
!2009 = !DILocation(line: 399, column: 5, scope: !524, inlinedAt: !1983)
!2010 = !DILocation(line: 404, column: 19, scope: !453, inlinedAt: !1983)
!2011 = !DILocation(line: 405, column: 1, scope: !453, inlinedAt: !1983)
!2012 = !DILocation(line: 865, column: 24, scope: !1967)
!2013 = !DILocation(line: 867, column: 9, scope: !1967)
!2014 = !DILocation(line: 440, column: 65, scope: !668, inlinedAt: !2015)
!2015 = distinct !DILocation(line: 871, column: 10, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 871, column: 9)
!2017 = !DILocation(line: 441, column: 54, scope: !668, inlinedAt: !2015)
!2018 = !DILocation(line: 441, column: 73, scope: !668, inlinedAt: !2015)
!2019 = !DILocation(line: 447, column: 12, scope: !685, inlinedAt: !2015)
!2020 = !DILocation(line: 448, column: 9, scope: !685, inlinedAt: !2015)
!2021 = !DILocation(line: 445, column: 9, scope: !668, inlinedAt: !2015)
!2022 = !DILocation(line: 453, column: 12, scope: !689, inlinedAt: !2015)
!2023 = !DILocation(line: 453, column: 9, scope: !668, inlinedAt: !2015)
!2024 = !DILocation(line: 454, column: 26, scope: !689, inlinedAt: !2015)
!2025 = !DILocation(line: 454, column: 9, scope: !689, inlinedAt: !2015)
!2026 = !DILocation(line: 455, column: 14, scope: !694, inlinedAt: !2015)
!2027 = !DILocation(line: 455, column: 14, scope: !689, inlinedAt: !2015)
!2028 = !DILocation(line: 456, column: 26, scope: !694, inlinedAt: !2015)
!2029 = !DILocation(line: 456, column: 9, scope: !694, inlinedAt: !2015)
!2030 = !DILocation(line: 458, column: 26, scope: !694, inlinedAt: !2015)
!2031 = !DILocation(line: 0, scope: !694, inlinedAt: !2015)
!2032 = !DILocation(line: 461, column: 33, scope: !668, inlinedAt: !2015)
!2033 = !DILocation(line: 461, column: 27, scope: !668, inlinedAt: !2015)
!2034 = !DILocation(line: 461, column: 18, scope: !668, inlinedAt: !2015)
!2035 = !DILocation(line: 422, column: 58, scope: !643, inlinedAt: !2036)
!2036 = distinct !DILocation(line: 462, column: 9, scope: !706, inlinedAt: !2015)
!2037 = !DILocation(line: 427, column: 16, scope: !654, inlinedAt: !2036)
!2038 = !DILocation(line: 423, column: 9, scope: !643, inlinedAt: !2036)
!2039 = !DILocation(line: 436, column: 1, scope: !643, inlinedAt: !2036)
!2040 = !DILocation(line: 462, column: 9, scope: !668, inlinedAt: !2015)
!2041 = !DILocation(line: 462, column: 9, scope: !706, inlinedAt: !2015)
!2042 = !DILocation(line: 421, column: 61, scope: !643, inlinedAt: !2036)
!2043 = !DILocation(line: 426, column: 29, scope: !643, inlinedAt: !2036)
!2044 = !DILocation(line: 426, column: 21, scope: !643, inlinedAt: !2036)
!2045 = !DILocation(line: 426, column: 12, scope: !643, inlinedAt: !2036)
!2046 = !DILocation(line: 428, column: 19, scope: !660, inlinedAt: !2036)
!2047 = !DILocation(line: 428, column: 16, scope: !660, inlinedAt: !2036)
!2048 = !DILocation(line: 464, column: 15, scope: !719, inlinedAt: !2015)
!2049 = !DILocation(line: 464, column: 14, scope: !706, inlinedAt: !2015)
!2050 = !DILocation(line: 466, column: 25, scope: !722, inlinedAt: !2015)
!2051 = !DILocation(line: 466, column: 31, scope: !722, inlinedAt: !2015)
!2052 = !DILocation(line: 467, column: 9, scope: !722, inlinedAt: !2015)
!2053 = !DILocation(line: 0, scope: !706, inlinedAt: !2015)
!2054 = !DILocation(line: 470, column: 1, scope: !668, inlinedAt: !2015)
!2055 = !DILocation(line: 871, column: 10, scope: !2016)
!2056 = !DILocation(line: 871, column: 9, scope: !1927)
!2057 = !DILocation(line: 877, column: 9, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 877, column: 9)
!2059 = !DILocation(line: 0, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 886, column: 9)
!2061 = !DILocation(line: 877, column: 15, scope: !2058)
!2062 = !DILocation(line: 877, column: 42, scope: !2058)
!2063 = !DILocation(line: 877, column: 33, scope: !2058)
!2064 = !DILocation(line: 877, column: 9, scope: !1927)
!2065 = !DILocation(line: 880, column: 46, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !3, line: 880, column: 13)
!2067 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 877, column: 50)
!2068 = !DILocation(line: 440, column: 65, scope: !668, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 880, column: 14, scope: !2066)
!2070 = !DILocation(line: 441, column: 54, scope: !668, inlinedAt: !2069)
!2071 = !DILocation(line: 441, column: 73, scope: !668, inlinedAt: !2069)
!2072 = !DILocation(line: 442, column: 9, scope: !681, inlinedAt: !2069)
!2073 = !DILocation(line: 442, column: 9, scope: !668, inlinedAt: !2069)
!2074 = !DILocation(line: 445, column: 9, scope: !668, inlinedAt: !2069)
!2075 = !DILocation(line: 453, column: 9, scope: !668, inlinedAt: !2069)
!2076 = !DILocation(line: 454, column: 26, scope: !689, inlinedAt: !2069)
!2077 = !DILocation(line: 454, column: 9, scope: !689, inlinedAt: !2069)
!2078 = !DILocation(line: 455, column: 14, scope: !694, inlinedAt: !2069)
!2079 = !DILocation(line: 455, column: 14, scope: !689, inlinedAt: !2069)
!2080 = !DILocation(line: 456, column: 26, scope: !694, inlinedAt: !2069)
!2081 = !DILocation(line: 456, column: 9, scope: !694, inlinedAt: !2069)
!2082 = !DILocation(line: 458, column: 26, scope: !694, inlinedAt: !2069)
!2083 = !DILocation(line: 0, scope: !694, inlinedAt: !2069)
!2084 = !DILocation(line: 461, column: 33, scope: !668, inlinedAt: !2069)
!2085 = !DILocation(line: 461, column: 27, scope: !668, inlinedAt: !2069)
!2086 = !DILocation(line: 461, column: 18, scope: !668, inlinedAt: !2069)
!2087 = !DILocation(line: 422, column: 58, scope: !643, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 462, column: 9, scope: !706, inlinedAt: !2069)
!2089 = !DILocation(line: 423, column: 9, scope: !643, inlinedAt: !2088)
!2090 = !DILocation(line: 436, column: 1, scope: !643, inlinedAt: !2088)
!2091 = !DILocation(line: 462, column: 9, scope: !668, inlinedAt: !2069)
!2092 = !DILocation(line: 462, column: 9, scope: !706, inlinedAt: !2069)
!2093 = !DILocation(line: 421, column: 61, scope: !643, inlinedAt: !2088)
!2094 = !DILocation(line: 426, column: 29, scope: !643, inlinedAt: !2088)
!2095 = !DILocation(line: 426, column: 21, scope: !643, inlinedAt: !2088)
!2096 = !DILocation(line: 426, column: 12, scope: !643, inlinedAt: !2088)
!2097 = !DILocation(line: 428, column: 19, scope: !660, inlinedAt: !2088)
!2098 = !DILocation(line: 428, column: 16, scope: !660, inlinedAt: !2088)
!2099 = !DILocation(line: 470, column: 1, scope: !668, inlinedAt: !2069)
!2100 = !DILocation(line: 880, column: 13, scope: !2067)
!2101 = !DILocation(line: 464, column: 15, scope: !719, inlinedAt: !2069)
!2102 = !DILocation(line: 464, column: 14, scope: !706, inlinedAt: !2069)
!2103 = !DILocation(line: 466, column: 25, scope: !722, inlinedAt: !2069)
!2104 = !DILocation(line: 466, column: 31, scope: !722, inlinedAt: !2069)
!2105 = !DILocation(line: 886, column: 34, scope: !2060)
!2106 = !DILocation(line: 886, column: 9, scope: !1927)
!2107 = !DILocation(line: 889, column: 46, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 889, column: 13)
!2109 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 886, column: 41)
!2110 = !DILocation(line: 440, column: 65, scope: !668, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 889, column: 14, scope: !2108)
!2112 = !DILocation(line: 441, column: 54, scope: !668, inlinedAt: !2111)
!2113 = !DILocation(line: 441, column: 73, scope: !668, inlinedAt: !2111)
!2114 = !DILocation(line: 442, column: 9, scope: !681, inlinedAt: !2111)
!2115 = !DILocation(line: 442, column: 9, scope: !668, inlinedAt: !2111)
!2116 = !DILocation(line: 445, column: 9, scope: !668, inlinedAt: !2111)
!2117 = !DILocation(line: 453, column: 9, scope: !668, inlinedAt: !2111)
!2118 = !DILocation(line: 454, column: 26, scope: !689, inlinedAt: !2111)
!2119 = !DILocation(line: 454, column: 9, scope: !689, inlinedAt: !2111)
!2120 = !DILocation(line: 455, column: 14, scope: !694, inlinedAt: !2111)
!2121 = !DILocation(line: 455, column: 14, scope: !689, inlinedAt: !2111)
!2122 = !DILocation(line: 456, column: 26, scope: !694, inlinedAt: !2111)
!2123 = !DILocation(line: 456, column: 9, scope: !694, inlinedAt: !2111)
!2124 = !DILocation(line: 458, column: 26, scope: !694, inlinedAt: !2111)
!2125 = !DILocation(line: 0, scope: !694, inlinedAt: !2111)
!2126 = !DILocation(line: 461, column: 33, scope: !668, inlinedAt: !2111)
!2127 = !DILocation(line: 461, column: 27, scope: !668, inlinedAt: !2111)
!2128 = !DILocation(line: 461, column: 18, scope: !668, inlinedAt: !2111)
!2129 = !DILocation(line: 422, column: 58, scope: !643, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 462, column: 9, scope: !706, inlinedAt: !2111)
!2131 = !DILocation(line: 423, column: 9, scope: !643, inlinedAt: !2130)
!2132 = !DILocation(line: 436, column: 1, scope: !643, inlinedAt: !2130)
!2133 = !DILocation(line: 462, column: 9, scope: !668, inlinedAt: !2111)
!2134 = !DILocation(line: 462, column: 9, scope: !706, inlinedAt: !2111)
!2135 = !DILocation(line: 421, column: 61, scope: !643, inlinedAt: !2130)
!2136 = !DILocation(line: 426, column: 29, scope: !643, inlinedAt: !2130)
!2137 = !DILocation(line: 426, column: 21, scope: !643, inlinedAt: !2130)
!2138 = !DILocation(line: 426, column: 12, scope: !643, inlinedAt: !2130)
!2139 = !DILocation(line: 428, column: 19, scope: !660, inlinedAt: !2130)
!2140 = !DILocation(line: 428, column: 16, scope: !660, inlinedAt: !2130)
!2141 = !DILocation(line: 470, column: 1, scope: !668, inlinedAt: !2111)
!2142 = !DILocation(line: 889, column: 13, scope: !2109)
!2143 = !DILocation(line: 464, column: 15, scope: !719, inlinedAt: !2111)
!2144 = !DILocation(line: 464, column: 14, scope: !706, inlinedAt: !2111)
!2145 = !DILocation(line: 466, column: 25, scope: !722, inlinedAt: !2111)
!2146 = !DILocation(line: 466, column: 31, scope: !722, inlinedAt: !2111)
!2147 = !DILocation(line: 896, column: 10, scope: !1946)
!2148 = !DILocation(line: 896, column: 15, scope: !1946)
!2149 = !DILocation(line: 898, column: 9, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !3, line: 898, column: 9)
!2151 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 898, column: 9)
!2152 = !DILocation(line: 898, column: 9, scope: !2151)
!2153 = !DILocation(line: 899, column: 49, scope: !1945)
!2154 = !DILocation(line: 235, column: 59, scope: !281, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 898, column: 9, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 898, column: 9)
!2157 = !DILocation(line: 240, column: 34, scope: !281, inlinedAt: !2155)
!2158 = !DILocation(line: 240, column: 26, scope: !281, inlinedAt: !2155)
!2159 = !DILocation(line: 240, column: 11, scope: !281, inlinedAt: !2155)
!2160 = !DILocation(line: 241, column: 47, scope: !281, inlinedAt: !2155)
!2161 = !DILocation(line: 241, column: 19, scope: !281, inlinedAt: !2155)
!2162 = !DILocation(line: 242, column: 29, scope: !294, inlinedAt: !2155)
!2163 = !DILocation(line: 242, column: 46, scope: !294, inlinedAt: !2155)
!2164 = !DILocation(line: 242, column: 70, scope: !294, inlinedAt: !2155)
!2165 = !DILocation(line: 242, column: 9, scope: !294, inlinedAt: !2155)
!2166 = !DILocation(line: 242, column: 74, scope: !294, inlinedAt: !2155)
!2167 = !DILocation(line: 242, column: 9, scope: !281, inlinedAt: !2155)
!2168 = !DILocation(line: 244, column: 9, scope: !301, inlinedAt: !2155)
!2169 = !DILocation(line: 898, column: 9, scope: !2156)
!2170 = !DILocation(line: 245, column: 9, scope: !301, inlinedAt: !2155)
!2171 = !DILocation(line: 247, column: 5, scope: !281, inlinedAt: !2155)
!2172 = !DILocation(line: 248, column: 14, scope: !281, inlinedAt: !2155)
!2173 = !DILocation(line: 249, column: 20, scope: !281, inlinedAt: !2155)
!2174 = !DILocation(line: 250, column: 5, scope: !281, inlinedAt: !2155)
!2175 = !DILocation(line: 251, column: 1, scope: !281, inlinedAt: !2155)
!2176 = !DILocation(line: 899, column: 60, scope: !1945)
!2177 = !DILocation(line: 899, column: 31, scope: !1945)
!2178 = !DILocation(line: 899, column: 24, scope: !1945)
!2179 = !DILocation(line: 900, column: 18, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 900, column: 13)
!2181 = !DILocation(line: 0, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 902, column: 16)
!2183 = !DILocation(line: 900, column: 13, scope: !1945)
!2184 = !DILocation(line: 901, column: 24, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 900, column: 27)
!2186 = !DILocation(line: 902, column: 9, scope: !2185)
!2187 = !DILocation(line: 903, column: 24, scope: !2182)
!2188 = !DILocation(line: 0, scope: !2185)
!2189 = !DILocation(line: 905, column: 20, scope: !1945)
!2190 = !DILocation(line: 906, column: 9, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 906, column: 9)
!2192 = !DILocation(line: 907, column: 9, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 907, column: 9)
!2194 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 907, column: 9)
!2195 = !DILocation(line: 907, column: 9, scope: !2194)
!2196 = !DILocation(line: 907, column: 9, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 907, column: 9)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 907, column: 9)
!2199 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 907, column: 9)
!2200 = !DILocation(line: 908, column: 22, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 908, column: 16)
!2202 = !DILocation(line: 910, column: 9, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 910, column: 9)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 910, column: 9)
!2205 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 908, column: 33)
!2206 = !DILocation(line: 910, column: 9, scope: !2204)
!2207 = !DILocation(line: 911, column: 40, scope: !2205)
!2208 = !DILocation(line: 235, column: 59, scope: !281, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 910, column: 9, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2203, file: !3, line: 910, column: 9)
!2211 = !DILocation(line: 240, column: 34, scope: !281, inlinedAt: !2209)
!2212 = !DILocation(line: 240, column: 26, scope: !281, inlinedAt: !2209)
!2213 = !DILocation(line: 240, column: 11, scope: !281, inlinedAt: !2209)
!2214 = !DILocation(line: 241, column: 47, scope: !281, inlinedAt: !2209)
!2215 = !DILocation(line: 241, column: 19, scope: !281, inlinedAt: !2209)
!2216 = !DILocation(line: 242, column: 29, scope: !294, inlinedAt: !2209)
!2217 = !DILocation(line: 242, column: 46, scope: !294, inlinedAt: !2209)
!2218 = !DILocation(line: 242, column: 70, scope: !294, inlinedAt: !2209)
!2219 = !DILocation(line: 242, column: 9, scope: !294, inlinedAt: !2209)
!2220 = !DILocation(line: 242, column: 74, scope: !294, inlinedAt: !2209)
!2221 = !DILocation(line: 242, column: 9, scope: !281, inlinedAt: !2209)
!2222 = !DILocation(line: 244, column: 9, scope: !301, inlinedAt: !2209)
!2223 = !DILocation(line: 910, column: 9, scope: !2210)
!2224 = !DILocation(line: 245, column: 9, scope: !301, inlinedAt: !2209)
!2225 = !DILocation(line: 247, column: 5, scope: !281, inlinedAt: !2209)
!2226 = !DILocation(line: 248, column: 14, scope: !281, inlinedAt: !2209)
!2227 = !DILocation(line: 249, column: 20, scope: !281, inlinedAt: !2209)
!2228 = !DILocation(line: 250, column: 5, scope: !281, inlinedAt: !2209)
!2229 = !DILocation(line: 251, column: 1, scope: !281, inlinedAt: !2209)
!2230 = !DILocation(line: 911, column: 51, scope: !2205)
!2231 = !DILocation(line: 911, column: 20, scope: !2205)
!2232 = !DILocation(line: 911, column: 18, scope: !2205)
!2233 = !DILocation(line: 912, column: 20, scope: !2205)
!2234 = !DILocation(line: 913, column: 9, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 913, column: 9)
!2236 = !DILocation(line: 914, column: 9, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 914, column: 9)
!2238 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 914, column: 9)
!2239 = !DILocation(line: 914, column: 9, scope: !2238)
!2240 = !DILocation(line: 914, column: 9, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 914, column: 9)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 914, column: 9)
!2243 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 914, column: 9)
!2244 = !DILocation(line: 915, column: 24, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2201, file: !3, line: 915, column: 16)
!2246 = !DILocation(line: 915, column: 21, scope: !2245)
!2247 = !DILocation(line: 915, column: 41, scope: !2245)
!2248 = !DILocation(line: 915, column: 35, scope: !2245)
!2249 = !DILocation(line: 915, column: 50, scope: !2245)
!2250 = !DILocation(line: 915, column: 46, scope: !2245)
!2251 = !DILocation(line: 920, column: 9, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 920, column: 9)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 920, column: 9)
!2254 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 915, column: 70)
!2255 = !DILocation(line: 920, column: 9, scope: !2253)
!2256 = !DILocation(line: 921, column: 46, scope: !2254)
!2257 = !DILocation(line: 923, column: 9, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 923, column: 9)
!2259 = !DILocation(line: 235, column: 59, scope: !281, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 920, column: 9, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 920, column: 9)
!2262 = !DILocation(line: 240, column: 40, scope: !281, inlinedAt: !2260)
!2263 = !DILocation(line: 240, column: 34, scope: !281, inlinedAt: !2260)
!2264 = !DILocation(line: 240, column: 26, scope: !281, inlinedAt: !2260)
!2265 = !DILocation(line: 240, column: 11, scope: !281, inlinedAt: !2260)
!2266 = !DILocation(line: 241, column: 47, scope: !281, inlinedAt: !2260)
!2267 = !DILocation(line: 241, column: 19, scope: !281, inlinedAt: !2260)
!2268 = !DILocation(line: 242, column: 29, scope: !294, inlinedAt: !2260)
!2269 = !DILocation(line: 242, column: 46, scope: !294, inlinedAt: !2260)
!2270 = !DILocation(line: 242, column: 70, scope: !294, inlinedAt: !2260)
!2271 = !DILocation(line: 242, column: 9, scope: !294, inlinedAt: !2260)
!2272 = !DILocation(line: 242, column: 74, scope: !294, inlinedAt: !2260)
!2273 = !DILocation(line: 242, column: 9, scope: !281, inlinedAt: !2260)
!2274 = !DILocation(line: 244, column: 9, scope: !301, inlinedAt: !2260)
!2275 = !DILocation(line: 920, column: 9, scope: !2261)
!2276 = !DILocation(line: 245, column: 9, scope: !301, inlinedAt: !2260)
!2277 = !DILocation(line: 247, column: 5, scope: !281, inlinedAt: !2260)
!2278 = !DILocation(line: 248, column: 14, scope: !281, inlinedAt: !2260)
!2279 = !DILocation(line: 249, column: 20, scope: !281, inlinedAt: !2260)
!2280 = !DILocation(line: 250, column: 5, scope: !281, inlinedAt: !2260)
!2281 = !DILocation(line: 251, column: 1, scope: !281, inlinedAt: !2260)
!2282 = !DILocation(line: 921, column: 24, scope: !2254)
!2283 = !DILocation(line: 921, column: 22, scope: !2254)
!2284 = !DILocation(line: 922, column: 24, scope: !2254)
!2285 = !DILocation(line: 924, column: 9, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !3, line: 924, column: 9)
!2287 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 924, column: 9)
!2288 = !DILocation(line: 924, column: 9, scope: !2287)
!2289 = !DILocation(line: 924, column: 9, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 924, column: 9)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 924, column: 9)
!2292 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 924, column: 9)
!2293 = !DILocation(line: 925, column: 24, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 925, column: 16)
!2295 = !DILocation(line: 925, column: 21, scope: !2294)
!2296 = !DILocation(line: 925, column: 41, scope: !2294)
!2297 = !DILocation(line: 925, column: 35, scope: !2294)
!2298 = !DILocation(line: 925, column: 46, scope: !2294)
!2299 = !DILocation(line: 930, column: 9, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 930, column: 9)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 930, column: 9)
!2302 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 925, column: 71)
!2303 = !DILocation(line: 930, column: 9, scope: !2301)
!2304 = !DILocation(line: 931, column: 46, scope: !2302)
!2305 = !DILocation(line: 933, column: 9, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 933, column: 9)
!2307 = !DILocation(line: 235, column: 59, scope: !281, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 930, column: 9, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 930, column: 9)
!2310 = !DILocation(line: 240, column: 40, scope: !281, inlinedAt: !2308)
!2311 = !DILocation(line: 240, column: 34, scope: !281, inlinedAt: !2308)
!2312 = !DILocation(line: 240, column: 26, scope: !281, inlinedAt: !2308)
!2313 = !DILocation(line: 240, column: 11, scope: !281, inlinedAt: !2308)
!2314 = !DILocation(line: 241, column: 47, scope: !281, inlinedAt: !2308)
!2315 = !DILocation(line: 241, column: 19, scope: !281, inlinedAt: !2308)
!2316 = !DILocation(line: 242, column: 29, scope: !294, inlinedAt: !2308)
!2317 = !DILocation(line: 242, column: 46, scope: !294, inlinedAt: !2308)
!2318 = !DILocation(line: 242, column: 70, scope: !294, inlinedAt: !2308)
!2319 = !DILocation(line: 242, column: 9, scope: !294, inlinedAt: !2308)
!2320 = !DILocation(line: 242, column: 74, scope: !294, inlinedAt: !2308)
!2321 = !DILocation(line: 242, column: 9, scope: !281, inlinedAt: !2308)
!2322 = !DILocation(line: 244, column: 9, scope: !301, inlinedAt: !2308)
!2323 = !DILocation(line: 930, column: 9, scope: !2309)
!2324 = !DILocation(line: 245, column: 9, scope: !301, inlinedAt: !2308)
!2325 = !DILocation(line: 247, column: 5, scope: !281, inlinedAt: !2308)
!2326 = !DILocation(line: 248, column: 14, scope: !281, inlinedAt: !2308)
!2327 = !DILocation(line: 249, column: 20, scope: !281, inlinedAt: !2308)
!2328 = !DILocation(line: 250, column: 5, scope: !281, inlinedAt: !2308)
!2329 = !DILocation(line: 251, column: 1, scope: !281, inlinedAt: !2308)
!2330 = !DILocation(line: 931, column: 24, scope: !2302)
!2331 = !DILocation(line: 931, column: 22, scope: !2302)
!2332 = !DILocation(line: 932, column: 24, scope: !2302)
!2333 = !DILocation(line: 934, column: 9, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 934, column: 9)
!2335 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 934, column: 9)
!2336 = !DILocation(line: 934, column: 9, scope: !2335)
!2337 = !DILocation(line: 934, column: 9, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 934, column: 9)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 934, column: 9)
!2340 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 934, column: 9)
!2341 = !DILocation(line: 935, column: 21, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 935, column: 16)
!2343 = !DILocation(line: 935, column: 34, scope: !2342)
!2344 = !DILocation(line: 935, column: 43, scope: !2342)
!2345 = !DILocation(line: 935, column: 37, scope: !2342)
!2346 = !DILocation(line: 935, column: 51, scope: !2342)
!2347 = !DILocation(line: 935, column: 48, scope: !2342)
!2348 = !DILocation(line: 936, column: 34, scope: !2342)
!2349 = !DILocation(line: 936, column: 43, scope: !2342)
!2350 = !DILocation(line: 936, column: 37, scope: !2342)
!2351 = !DILocation(line: 936, column: 51, scope: !2342)
!2352 = !DILocation(line: 936, column: 48, scope: !2342)
!2353 = !DILocation(line: 160, column: 12, scope: !171, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 940, column: 20, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 936, column: 74)
!2356 = !DILocation(line: 159, column: 20, scope: !171, inlinedAt: !2354)
!2357 = !DILocation(line: 161, column: 11, scope: !171, inlinedAt: !2354)
!2358 = !DILocation(line: 161, column: 14, scope: !171, inlinedAt: !2354)
!2359 = !DILocation(line: 162, column: 11, scope: !171, inlinedAt: !2354)
!2360 = !DILocation(line: 162, column: 17, scope: !171, inlinedAt: !2354)
!2361 = !DILocation(line: 163, column: 11, scope: !171, inlinedAt: !2354)
!2362 = !DILocation(line: 163, column: 14, scope: !171, inlinedAt: !2354)
!2363 = !DILocation(line: 164, column: 29, scope: !171, inlinedAt: !2354)
!2364 = !DILocation(line: 167, column: 22, scope: !171, inlinedAt: !2354)
!2365 = !DILocation(line: 168, column: 5, scope: !171, inlinedAt: !2354)
!2366 = !DILocation(line: 941, column: 36, scope: !2355)
!2367 = !DILocation(line: 941, column: 24, scope: !2355)
!2368 = !DILocation(line: 941, column: 22, scope: !2355)
!2369 = !DILocation(line: 942, column: 24, scope: !2355)
!2370 = !DILocation(line: 943, column: 9, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2355, file: !3, line: 943, column: 9)
!2372 = !DILocation(line: 944, column: 9, scope: !2355)
!2373 = !DILocation(line: 945, column: 5, scope: !2355)
!2374 = !DILocation(line: 949, column: 9, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 949, column: 9)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 949, column: 9)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 945, column: 22)
!2378 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 945, column: 16)
!2379 = !DILocation(line: 949, column: 9, scope: !2376)
!2380 = !DILocation(line: 235, column: 59, scope: !281, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 949, column: 9, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 949, column: 9)
!2383 = !DILocation(line: 240, column: 34, scope: !281, inlinedAt: !2381)
!2384 = !DILocation(line: 240, column: 26, scope: !281, inlinedAt: !2381)
!2385 = !DILocation(line: 240, column: 11, scope: !281, inlinedAt: !2381)
!2386 = !DILocation(line: 241, column: 47, scope: !281, inlinedAt: !2381)
!2387 = !DILocation(line: 241, column: 19, scope: !281, inlinedAt: !2381)
!2388 = !DILocation(line: 242, column: 29, scope: !294, inlinedAt: !2381)
!2389 = !DILocation(line: 242, column: 46, scope: !294, inlinedAt: !2381)
!2390 = !DILocation(line: 242, column: 70, scope: !294, inlinedAt: !2381)
!2391 = !DILocation(line: 242, column: 9, scope: !294, inlinedAt: !2381)
!2392 = !DILocation(line: 242, column: 74, scope: !294, inlinedAt: !2381)
!2393 = !DILocation(line: 242, column: 9, scope: !281, inlinedAt: !2381)
!2394 = !DILocation(line: 244, column: 9, scope: !301, inlinedAt: !2381)
!2395 = !DILocation(line: 949, column: 9, scope: !2382)
!2396 = !DILocation(line: 245, column: 9, scope: !301, inlinedAt: !2381)
!2397 = !DILocation(line: 247, column: 5, scope: !281, inlinedAt: !2381)
!2398 = !DILocation(line: 248, column: 14, scope: !281, inlinedAt: !2381)
!2399 = !DILocation(line: 249, column: 20, scope: !281, inlinedAt: !2381)
!2400 = !DILocation(line: 250, column: 5, scope: !281, inlinedAt: !2381)
!2401 = !DILocation(line: 251, column: 1, scope: !281, inlinedAt: !2381)
!2402 = !DILocation(line: 950, column: 53, scope: !2377)
!2403 = !DILocation(line: 950, column: 20, scope: !2377)
!2404 = !DILocation(line: 951, column: 46, scope: !2377)
!2405 = !DILocation(line: 952, column: 36, scope: !2377)
!2406 = !DILocation(line: 951, column: 24, scope: !2377)
!2407 = !DILocation(line: 951, column: 22, scope: !2377)
!2408 = !DILocation(line: 953, column: 19, scope: !2377)
!2409 = !DILocation(line: 953, column: 24, scope: !2377)
!2410 = !DILocation(line: 954, column: 9, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 954, column: 9)
!2412 = !DILocation(line: 955, column: 9, scope: !2377)
!2413 = !DILocation(line: 956, column: 9, scope: !2377)
!2414 = !DILocation(line: 957, column: 5, scope: !2377)
!2415 = !DILocation(line: 0, scope: !1967)
!2416 = !DILocation(line: 960, column: 1, scope: !1927)
!2417 = distinct !DISubprogram(name: "quicklistInsertBefore", scope: !3, file: !3, line: 962, type: !2418, isLocal: false, isDefinition: true, scopeLine: 963, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2420)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{null, !21, !1333, !47, !50}
!2420 = !{!2421, !2422, !2423, !2424}
!2421 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2417, file: !3, line: 962, type: !21)
!2422 = !DILocalVariable(name: "entry", arg: 2, scope: !2417, file: !3, line: 962, type: !1333)
!2423 = !DILocalVariable(name: "value", arg: 3, scope: !2417, file: !3, line: 963, type: !47)
!2424 = !DILocalVariable(name: "sz", arg: 4, scope: !2417, file: !3, line: 963, type: !50)
!2425 = !DILocation(line: 962, column: 39, scope: !2417)
!2426 = !DILocation(line: 962, column: 66, scope: !2417)
!2427 = !DILocation(line: 963, column: 34, scope: !2417)
!2428 = !DILocation(line: 963, column: 54, scope: !2417)
!2429 = !DILocation(line: 964, column: 5, scope: !2417)
!2430 = !DILocation(line: 965, column: 1, scope: !2417)
!2431 = distinct !DISubprogram(name: "quicklistInsertAfter", scope: !3, file: !3, line: 967, type: !2418, isLocal: false, isDefinition: true, scopeLine: 968, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2432)
!2432 = !{!2433, !2434, !2435, !2436}
!2433 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2431, file: !3, line: 967, type: !21)
!2434 = !DILocalVariable(name: "entry", arg: 2, scope: !2431, file: !3, line: 967, type: !1333)
!2435 = !DILocalVariable(name: "value", arg: 3, scope: !2431, file: !3, line: 968, type: !47)
!2436 = !DILocalVariable(name: "sz", arg: 4, scope: !2431, file: !3, line: 968, type: !50)
!2437 = !DILocation(line: 967, column: 38, scope: !2431)
!2438 = !DILocation(line: 967, column: 65, scope: !2431)
!2439 = !DILocation(line: 968, column: 33, scope: !2431)
!2440 = !DILocation(line: 968, column: 53, scope: !2431)
!2441 = !DILocation(line: 969, column: 5, scope: !2431)
!2442 = !DILocation(line: 970, column: 1, scope: !2431)
!2443 = distinct !DISubprogram(name: "quicklistDelRange", scope: !3, file: !3, line: 978, type: !2444, isLocal: false, isDefinition: true, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2447)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!20, !21, !2446, !2446}
!2446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1331)
!2447 = !{!2448, !2449, !2450, !2451, !2452, !2453, !2454, !2456, !2457}
!2448 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2443, file: !3, line: 978, type: !21)
!2449 = !DILocalVariable(name: "start", arg: 2, scope: !2443, file: !3, line: 978, type: !2446)
!2450 = !DILocalVariable(name: "count", arg: 3, scope: !2443, file: !3, line: 979, type: !2446)
!2451 = !DILocalVariable(name: "extent", scope: !2443, file: !3, line: 983, type: !43)
!2452 = !DILocalVariable(name: "entry", scope: !2443, file: !3, line: 993, type: !1334)
!2453 = !DILocalVariable(name: "node", scope: !2443, file: !3, line: 999, type: !26)
!2454 = !DILocalVariable(name: "next", scope: !2455, file: !3, line: 1003, type: !26)
!2455 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 1002, column: 20)
!2456 = !DILocalVariable(name: "del", scope: !2455, file: !3, line: 1005, type: !43)
!2457 = !DILocalVariable(name: "delete_entire_node", scope: !2455, file: !3, line: 1006, type: !20)
!2458 = !DILocation(line: 978, column: 34, scope: !2443)
!2459 = !DILocation(line: 978, column: 56, scope: !2443)
!2460 = !DILocation(line: 979, column: 34, scope: !2443)
!2461 = !DILocation(line: 980, column: 15, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 980, column: 9)
!2463 = !DILocation(line: 980, column: 9, scope: !2443)
!2464 = !DILocation(line: 983, column: 19, scope: !2443)
!2465 = !DILocation(line: 985, column: 15, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 985, column: 9)
!2467 = !DILocation(line: 985, column: 20, scope: !2466)
!2468 = !DILocation(line: 985, column: 44, scope: !2466)
!2469 = !DILocation(line: 985, column: 9, scope: !2443)
!2470 = !DILocation(line: 0, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 988, column: 16)
!2472 = !DILocation(line: 0, scope: !2466)
!2473 = !DILocation(line: 993, column: 5, scope: !2443)
!2474 = !DILocation(line: 993, column: 20, scope: !2443)
!2475 = !DILocation(line: 994, column: 10, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 994, column: 9)
!2477 = !DILocation(line: 994, column: 9, scope: !2443)
!2478 = !DILocation(line: 1002, column: 5, scope: !2443)
!2479 = !DILocation(line: 999, column: 33, scope: !2443)
!2480 = !DILocation(line: 999, column: 20, scope: !2443)
!2481 = !DILocation(line: 1007, column: 19, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 1007, column: 13)
!2483 = !DILocation(line: 1003, column: 37, scope: !2455)
!2484 = !DILocation(line: 1003, column: 24, scope: !2455)
!2485 = !DILocation(line: 1006, column: 13, scope: !2455)
!2486 = !DILocation(line: 1007, column: 26, scope: !2482)
!2487 = !DILocation(line: 1007, column: 31, scope: !2482)
!2488 = !DILocation(line: 1007, column: 50, scope: !2482)
!2489 = !DILocation(line: 1007, column: 44, scope: !2482)
!2490 = !DILocation(line: 1007, column: 41, scope: !2482)
!2491 = !DILocation(line: 1007, column: 13, scope: !2455)
!2492 = !DILocation(line: 1012, column: 33, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1012, column: 20)
!2494 = !DILocation(line: 1012, column: 38, scope: !2493)
!2495 = !DILocation(line: 1012, column: 57, scope: !2493)
!2496 = !DILocation(line: 1012, column: 51, scope: !2493)
!2497 = !DILocation(line: 1012, column: 48, scope: !2493)
!2498 = !DILocation(line: 1012, column: 20, scope: !2482)
!2499 = !DILocation(line: 1015, column: 31, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 1012, column: 64)
!2501 = !DILocation(line: 1015, column: 19, scope: !2500)
!2502 = !DILocation(line: 1005, column: 23, scope: !2455)
!2503 = !DILocation(line: 1016, column: 9, scope: !2500)
!2504 = !DILocation(line: 1022, column: 19, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 1016, column: 38)
!2506 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 1016, column: 20)
!2507 = !DILocation(line: 1027, column: 21, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 1027, column: 17)
!2509 = !DILocation(line: 1027, column: 17, scope: !2505)
!2510 = !DILocation(line: 1042, column: 13, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 1042, column: 13)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 1042, column: 13)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 1041, column: 16)
!2514 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 1039, column: 13)
!2515 = !DILocation(line: 599, column: 49, scope: !1204, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 1040, column: 13, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 1039, column: 33)
!2518 = !DILocation(line: 600, column: 53, scope: !1204, inlinedAt: !2516)
!2519 = !DILocation(line: 601, column: 9, scope: !1213, inlinedAt: !2516)
!2520 = !DILocation(line: 601, column: 9, scope: !1204, inlinedAt: !2516)
!2521 = !DILocation(line: 602, column: 34, scope: !1213, inlinedAt: !2516)
!2522 = !DILocation(line: 602, column: 26, scope: !1213, inlinedAt: !2516)
!2523 = !DILocation(line: 602, column: 9, scope: !1213, inlinedAt: !2516)
!2524 = !DILocation(line: 603, column: 15, scope: !1220, inlinedAt: !2516)
!2525 = !DILocation(line: 603, column: 9, scope: !1220, inlinedAt: !2516)
!2526 = !DILocation(line: 603, column: 9, scope: !1204, inlinedAt: !2516)
!2527 = !DILocation(line: 604, column: 21, scope: !1220, inlinedAt: !2516)
!2528 = !DILocation(line: 604, column: 26, scope: !1220, inlinedAt: !2516)
!2529 = !DILocation(line: 604, column: 9, scope: !1220, inlinedAt: !2516)
!2530 = !DILocation(line: 606, column: 28, scope: !1227, inlinedAt: !2516)
!2531 = !DILocation(line: 606, column: 14, scope: !1227, inlinedAt: !2516)
!2532 = !DILocation(line: 606, column: 9, scope: !1204, inlinedAt: !2516)
!2533 = !DILocation(line: 607, column: 25, scope: !1231, inlinedAt: !2516)
!2534 = !DILocation(line: 608, column: 5, scope: !1231, inlinedAt: !2516)
!2535 = !DILocation(line: 610, column: 28, scope: !1234, inlinedAt: !2516)
!2536 = !DILocation(line: 610, column: 14, scope: !1234, inlinedAt: !2516)
!2537 = !DILocation(line: 610, column: 9, scope: !1204, inlinedAt: !2516)
!2538 = !DILocation(line: 611, column: 33, scope: !1238, inlinedAt: !2516)
!2539 = !DILocation(line: 611, column: 25, scope: !1238, inlinedAt: !2516)
!2540 = !DILocation(line: 612, column: 5, scope: !1238, inlinedAt: !2516)
!2541 = !DILocation(line: 616, column: 5, scope: !1204, inlinedAt: !2516)
!2542 = !DILocation(line: 618, column: 31, scope: !1204, inlinedAt: !2516)
!2543 = !DILocation(line: 618, column: 25, scope: !1204, inlinedAt: !2516)
!2544 = !DILocation(line: 618, column: 22, scope: !1204, inlinedAt: !2516)
!2545 = !DILocation(line: 620, column: 17, scope: !1204, inlinedAt: !2516)
!2546 = !DILocation(line: 620, column: 5, scope: !1204, inlinedAt: !2516)
!2547 = !DILocation(line: 621, column: 11, scope: !1204, inlinedAt: !2516)
!2548 = !DILocation(line: 621, column: 5, scope: !1204, inlinedAt: !2516)
!2549 = !DILocation(line: 622, column: 19, scope: !1204, inlinedAt: !2516)
!2550 = !DILocation(line: 623, column: 1, scope: !1204, inlinedAt: !2516)
!2551 = !DILocation(line: 1041, column: 9, scope: !2517)
!2552 = !DILocation(line: 1042, column: 13, scope: !2512)
!2553 = !DILocation(line: 1043, column: 49, scope: !2513)
!2554 = !DILocation(line: 1044, column: 13, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 1044, column: 13)
!2556 = !DILocation(line: 235, column: 59, scope: !281, inlinedAt: !2557)
!2557 = distinct !DILocation(line: 1042, column: 13, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 1042, column: 13)
!2559 = !DILocation(line: 240, column: 40, scope: !281, inlinedAt: !2557)
!2560 = !DILocation(line: 240, column: 34, scope: !281, inlinedAt: !2557)
!2561 = !DILocation(line: 240, column: 26, scope: !281, inlinedAt: !2557)
!2562 = !DILocation(line: 240, column: 11, scope: !281, inlinedAt: !2557)
!2563 = !DILocation(line: 241, column: 47, scope: !281, inlinedAt: !2557)
!2564 = !DILocation(line: 241, column: 19, scope: !281, inlinedAt: !2557)
!2565 = !DILocation(line: 242, column: 29, scope: !294, inlinedAt: !2557)
!2566 = !DILocation(line: 242, column: 46, scope: !294, inlinedAt: !2557)
!2567 = !DILocation(line: 242, column: 70, scope: !294, inlinedAt: !2557)
!2568 = !DILocation(line: 242, column: 9, scope: !294, inlinedAt: !2557)
!2569 = !DILocation(line: 242, column: 74, scope: !294, inlinedAt: !2557)
!2570 = !DILocation(line: 242, column: 9, scope: !281, inlinedAt: !2557)
!2571 = !DILocation(line: 244, column: 9, scope: !301, inlinedAt: !2557)
!2572 = !DILocation(line: 1042, column: 13, scope: !2558)
!2573 = !DILocation(line: 245, column: 9, scope: !301, inlinedAt: !2557)
!2574 = !DILocation(line: 247, column: 5, scope: !281, inlinedAt: !2557)
!2575 = !DILocation(line: 248, column: 14, scope: !281, inlinedAt: !2557)
!2576 = !DILocation(line: 249, column: 20, scope: !281, inlinedAt: !2557)
!2577 = !DILocation(line: 250, column: 5, scope: !281, inlinedAt: !2557)
!2578 = !DILocation(line: 251, column: 1, scope: !281, inlinedAt: !2557)
!2579 = !DILocation(line: 1043, column: 59, scope: !2513)
!2580 = !DILocation(line: 1043, column: 67, scope: !2513)
!2581 = !DILocation(line: 1043, column: 24, scope: !2513)
!2582 = !DILocation(line: 1043, column: 22, scope: !2513)
!2583 = !DILocation(line: 1045, column: 25, scope: !2513)
!2584 = !DILocation(line: 1046, column: 30, scope: !2513)
!2585 = !DILocation(line: 1047, column: 13, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !3, line: 1047, column: 13)
!2587 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 1047, column: 13)
!2588 = !DILocation(line: 1047, column: 13, scope: !2587)
!2589 = !DILocation(line: 599, column: 49, scope: !1204, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 1047, column: 13, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 1047, column: 13)
!2592 = !DILocation(line: 600, column: 53, scope: !1204, inlinedAt: !2590)
!2593 = !DILocation(line: 601, column: 15, scope: !1213, inlinedAt: !2590)
!2594 = !DILocation(line: 601, column: 9, scope: !1213, inlinedAt: !2590)
!2595 = !DILocation(line: 601, column: 9, scope: !1204, inlinedAt: !2590)
!2596 = !DILocation(line: 602, column: 34, scope: !1213, inlinedAt: !2590)
!2597 = !DILocation(line: 602, column: 26, scope: !1213, inlinedAt: !2590)
!2598 = !DILocation(line: 602, column: 9, scope: !1213, inlinedAt: !2590)
!2599 = !DILocation(line: 603, column: 15, scope: !1220, inlinedAt: !2590)
!2600 = !DILocation(line: 603, column: 9, scope: !1220, inlinedAt: !2590)
!2601 = !DILocation(line: 603, column: 9, scope: !1204, inlinedAt: !2590)
!2602 = !DILocation(line: 604, column: 21, scope: !1220, inlinedAt: !2590)
!2603 = !DILocation(line: 604, column: 26, scope: !1220, inlinedAt: !2590)
!2604 = !DILocation(line: 604, column: 9, scope: !1220, inlinedAt: !2590)
!2605 = !DILocation(line: 606, column: 28, scope: !1227, inlinedAt: !2590)
!2606 = !DILocation(line: 606, column: 14, scope: !1227, inlinedAt: !2590)
!2607 = !DILocation(line: 606, column: 9, scope: !1204, inlinedAt: !2590)
!2608 = !DILocation(line: 607, column: 25, scope: !1231, inlinedAt: !2590)
!2609 = !DILocation(line: 608, column: 5, scope: !1231, inlinedAt: !2590)
!2610 = !DILocation(line: 610, column: 28, scope: !1234, inlinedAt: !2590)
!2611 = !DILocation(line: 610, column: 14, scope: !1234, inlinedAt: !2590)
!2612 = !DILocation(line: 610, column: 9, scope: !1204, inlinedAt: !2590)
!2613 = !DILocation(line: 611, column: 33, scope: !1238, inlinedAt: !2590)
!2614 = !DILocation(line: 611, column: 25, scope: !1238, inlinedAt: !2590)
!2615 = !DILocation(line: 612, column: 5, scope: !1238, inlinedAt: !2590)
!2616 = !DILocation(line: 616, column: 5, scope: !1204, inlinedAt: !2590)
!2617 = !DILocation(line: 618, column: 31, scope: !1204, inlinedAt: !2590)
!2618 = !DILocation(line: 618, column: 25, scope: !1204, inlinedAt: !2590)
!2619 = !DILocation(line: 618, column: 22, scope: !1204, inlinedAt: !2590)
!2620 = !DILocation(line: 620, column: 17, scope: !1204, inlinedAt: !2590)
!2621 = !DILocation(line: 620, column: 5, scope: !1204, inlinedAt: !2590)
!2622 = !DILocation(line: 621, column: 11, scope: !1204, inlinedAt: !2590)
!2623 = !DILocation(line: 621, column: 5, scope: !1204, inlinedAt: !2590)
!2624 = !DILocation(line: 622, column: 19, scope: !1204, inlinedAt: !2590)
!2625 = !DILocation(line: 623, column: 1, scope: !1204, inlinedAt: !2590)
!2626 = !DILocation(line: 1048, column: 17, scope: !2513)
!2627 = !DILocation(line: 1049, column: 17, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 1049, column: 17)
!2629 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 1048, column: 17)
!2630 = !DILocation(line: 1049, column: 17, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !3, line: 1049, column: 17)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 1049, column: 17)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 1049, column: 17)
!2634 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 1049, column: 17)
!2635 = !DILocation(line: 1052, column: 16, scope: !2455)
!2636 = !DILocation(line: 1056, column: 22, scope: !2455)
!2637 = distinct !{!2637, !2478, !2638}
!2638 = !DILocation(line: 1057, column: 5, scope: !2443)
!2639 = !DILocation(line: 0, scope: !2476)
!2640 = !DILocation(line: 1059, column: 1, scope: !2443)
!2641 = !DILocation(line: 0, scope: !2443)
!2642 = distinct !DISubprogram(name: "quicklistCompare", scope: !3, file: !3, line: 1062, type: !2643, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2645)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!20, !6, !6, !20}
!2645 = !{!2646, !2647, !2648}
!2646 = !DILocalVariable(name: "p1", arg: 1, scope: !2642, file: !3, line: 1062, type: !6)
!2647 = !DILocalVariable(name: "p2", arg: 2, scope: !2642, file: !3, line: 1062, type: !6)
!2648 = !DILocalVariable(name: "p2_len", arg: 3, scope: !2642, file: !3, line: 1062, type: !20)
!2649 = !DILocation(line: 1062, column: 37, scope: !2642)
!2650 = !DILocation(line: 1062, column: 56, scope: !2642)
!2651 = !DILocation(line: 1062, column: 64, scope: !2642)
!2652 = !DILocation(line: 1063, column: 12, scope: !2642)
!2653 = !DILocation(line: 1063, column: 5, scope: !2642)
!2654 = distinct !DISubprogram(name: "quicklistGetIterator", scope: !3, file: !3, line: 1068, type: !2655, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2657)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!1323, !194, !20}
!2657 = !{!2658, !2659, !2660}
!2658 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2654, file: !3, line: 1068, type: !194)
!2659 = !DILocalVariable(name: "direction", arg: 2, scope: !2654, file: !3, line: 1068, type: !20)
!2660 = !DILocalVariable(name: "iter", scope: !2654, file: !3, line: 1069, type: !1323)
!2661 = !DILocation(line: 1068, column: 54, scope: !2654)
!2662 = !DILocation(line: 1068, column: 69, scope: !2654)
!2663 = !DILocation(line: 1071, column: 12, scope: !2654)
!2664 = !DILocation(line: 1069, column: 20, scope: !2654)
!2665 = !DILocation(line: 1073, column: 9, scope: !2654)
!2666 = !DILocation(line: 1074, column: 36, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 1073, column: 37)
!2668 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 1073, column: 9)
!2669 = !DILocation(line: 1076, column: 5, scope: !2667)
!2670 = !DILocation(line: 1077, column: 36, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 1076, column: 44)
!2672 = distinct !DILexicalBlock(scope: !2668, file: !3, line: 1076, column: 16)
!2673 = !DILocation(line: 1079, column: 5, scope: !2671)
!2674 = !DILocation(line: 0, scope: !2667)
!2675 = !DILocation(line: 1081, column: 11, scope: !2654)
!2676 = !DILocation(line: 1081, column: 21, scope: !2654)
!2677 = !DILocation(line: 1082, column: 11, scope: !2654)
!2678 = !DILocation(line: 1082, column: 21, scope: !2654)
!2679 = !{!1367, !71, i64 0}
!2680 = !DILocation(line: 1084, column: 11, scope: !2654)
!2681 = !DILocation(line: 1084, column: 14, scope: !2654)
!2682 = !DILocation(line: 1086, column: 5, scope: !2654)
!2683 = distinct !DISubprogram(name: "quicklistGetIteratorAtIdx", scope: !3, file: !3, line: 1091, type: !2684, isLocal: false, isDefinition: true, scopeLine: 1093, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2686)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!1323, !194, !646, !1441}
!2686 = !{!2687, !2688, !2689, !2690, !2691}
!2687 = !DILocalVariable(name: "quicklist", arg: 1, scope: !2683, file: !3, line: 1091, type: !194)
!2688 = !DILocalVariable(name: "direction", arg: 2, scope: !2683, file: !3, line: 1092, type: !646)
!2689 = !DILocalVariable(name: "idx", arg: 3, scope: !2683, file: !3, line: 1093, type: !1441)
!2690 = !DILocalVariable(name: "entry", scope: !2683, file: !3, line: 1094, type: !1334)
!2691 = !DILocalVariable(name: "base", scope: !2692, file: !3, line: 1097, type: !1323)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 1096, column: 49)
!2693 = distinct !DILexicalBlock(scope: !2683, file: !3, line: 1096, column: 9)
!2694 = !DILocation(line: 1091, column: 59, scope: !2683)
!2695 = !DILocation(line: 1092, column: 52, scope: !2683)
!2696 = !DILocation(line: 1093, column: 58, scope: !2683)
!2697 = !DILocation(line: 1094, column: 5, scope: !2683)
!2698 = !DILocation(line: 1094, column: 20, scope: !2683)
!2699 = !DILocation(line: 1096, column: 9, scope: !2693)
!2700 = !DILocation(line: 1096, column: 9, scope: !2683)
!2701 = !DILocation(line: 1068, column: 54, scope: !2654, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 1097, column: 31, scope: !2692)
!2703 = !DILocation(line: 1068, column: 69, scope: !2654, inlinedAt: !2702)
!2704 = !DILocation(line: 1071, column: 12, scope: !2654, inlinedAt: !2702)
!2705 = !DILocation(line: 1069, column: 20, scope: !2654, inlinedAt: !2702)
!2706 = !DILocation(line: 1073, column: 9, scope: !2654, inlinedAt: !2702)
!2707 = !DILocation(line: 1099, column: 15, scope: !2692)
!2708 = !DILocation(line: 1099, column: 23, scope: !2692)
!2709 = !DILocation(line: 1100, column: 15, scope: !2692)
!2710 = !DILocation(line: 1074, column: 36, scope: !2667, inlinedAt: !2702)
!2711 = !DILocation(line: 1074, column: 15, scope: !2667, inlinedAt: !2702)
!2712 = !DILocation(line: 1074, column: 23, scope: !2667, inlinedAt: !2702)
!2713 = !DILocation(line: 1075, column: 15, scope: !2667, inlinedAt: !2702)
!2714 = !DILocation(line: 1075, column: 22, scope: !2667, inlinedAt: !2702)
!2715 = !DILocation(line: 1076, column: 5, scope: !2667, inlinedAt: !2702)
!2716 = !DILocation(line: 1077, column: 36, scope: !2671, inlinedAt: !2702)
!2717 = !DILocation(line: 1077, column: 15, scope: !2671, inlinedAt: !2702)
!2718 = !DILocation(line: 1077, column: 23, scope: !2671, inlinedAt: !2702)
!2719 = !DILocation(line: 1078, column: 15, scope: !2671, inlinedAt: !2702)
!2720 = !DILocation(line: 1078, column: 22, scope: !2671, inlinedAt: !2702)
!2721 = !DILocation(line: 1079, column: 5, scope: !2671, inlinedAt: !2702)
!2722 = !DILocation(line: 1081, column: 11, scope: !2654, inlinedAt: !2702)
!2723 = !DILocation(line: 1081, column: 21, scope: !2654, inlinedAt: !2702)
!2724 = !DILocation(line: 1082, column: 11, scope: !2654, inlinedAt: !2702)
!2725 = !DILocation(line: 1082, column: 21, scope: !2654, inlinedAt: !2702)
!2726 = !DILocation(line: 1084, column: 11, scope: !2654, inlinedAt: !2702)
!2727 = !DILocation(line: 1086, column: 5, scope: !2654, inlinedAt: !2702)
!2728 = !DILocation(line: 1097, column: 24, scope: !2692)
!2729 = !DILocation(line: 1098, column: 18, scope: !2692)
!2730 = !DILocation(line: 1099, column: 31, scope: !2692)
!2731 = !DILocation(line: 1100, column: 30, scope: !2692)
!2732 = !DILocation(line: 1100, column: 24, scope: !2692)
!2733 = !DILocation(line: 1100, column: 22, scope: !2692)
!2734 = !DILocation(line: 0, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 1102, column: 12)
!2736 = !DILocation(line: 1105, column: 1, scope: !2683)
!2737 = distinct !DISubprogram(name: "quicklistReleaseIterator", scope: !3, file: !3, line: 1109, type: !2738, isLocal: false, isDefinition: true, scopeLine: 1109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{null, !1323}
!2740 = !{!2741}
!2741 = !DILocalVariable(name: "iter", arg: 1, scope: !2737, file: !3, line: 1109, type: !1323)
!2742 = !DILocation(line: 1109, column: 46, scope: !2737)
!2743 = !DILocation(line: 1110, column: 15, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2737, file: !3, line: 1110, column: 9)
!2745 = !DILocation(line: 1110, column: 9, scope: !2744)
!2746 = !DILocation(line: 1110, column: 9, scope: !2737)
!2747 = !DILocation(line: 1111, column: 9, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 1111, column: 9)
!2749 = distinct !DILexicalBlock(scope: !2744, file: !3, line: 1111, column: 9)
!2750 = !DILocation(line: 1111, column: 9, scope: !2749)
!2751 = !DILocation(line: 1111, column: 9, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 1111, column: 9)
!2753 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 1111, column: 9)
!2754 = !DILocation(line: 1111, column: 9, scope: !2753)
!2755 = !DILocation(line: 1111, column: 9, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 1111, column: 9)
!2757 = !DILocation(line: 1113, column: 11, scope: !2737)
!2758 = !DILocation(line: 1113, column: 5, scope: !2737)
!2759 = !DILocation(line: 1114, column: 1, scope: !2737)
!2760 = distinct !DISubprogram(name: "quicklistNext", scope: !3, file: !3, line: 1137, type: !2761, isLocal: false, isDefinition: true, scopeLine: 1137, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2763)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!20, !1323, !1333}
!2763 = !{!2764, !2765, !2766, !2770}
!2764 = !DILocalVariable(name: "iter", arg: 1, scope: !2760, file: !3, line: 1137, type: !1323)
!2765 = !DILocalVariable(name: "entry", arg: 2, scope: !2760, file: !3, line: 1137, type: !1333)
!2766 = !DILocalVariable(name: "nextFn", scope: !2760, file: !3, line: 1153, type: !2767)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!6, !6, !6}
!2770 = !DILocalVariable(name: "offset_update", scope: !2760, file: !3, line: 1154, type: !20)
!2771 = !DILocation(line: 1137, column: 34, scope: !2760)
!2772 = !DILocation(line: 1137, column: 56, scope: !2760)
!2773 = !DILocation(line: 1138, column: 5, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 1138, column: 5)
!2775 = !DILocation(line: 1140, column: 10, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 1140, column: 9)
!2777 = !DILocation(line: 1140, column: 9, scope: !2760)
!2778 = !DILocation(line: 1145, column: 30, scope: !2760)
!2779 = !DILocation(line: 1146, column: 25, scope: !2760)
!2780 = !DILocation(line: 1145, column: 22, scope: !2760)
!2781 = !DILocation(line: 1148, column: 16, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 1148, column: 9)
!2783 = !DILocation(line: 1148, column: 10, scope: !2782)
!2784 = !DILocation(line: 1148, column: 9, scope: !2760)
!2785 = !DILocation(line: 1153, column: 22, scope: !2760)
!2786 = !DILocation(line: 1154, column: 9, scope: !2760)
!2787 = !DILocation(line: 1156, column: 16, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 1156, column: 9)
!2789 = !DILocation(line: 1156, column: 10, scope: !2788)
!2790 = !DILocation(line: 1156, column: 9, scope: !2760)
!2791 = !DILocation(line: 1158, column: 9, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 1158, column: 9)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 1158, column: 9)
!2794 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 1156, column: 20)
!2795 = !DILocation(line: 1158, column: 9, scope: !2793)
!2796 = !DILocation(line: 235, column: 59, scope: !281, inlinedAt: !2797)
!2797 = distinct !DILocation(line: 1158, column: 9, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 1158, column: 9)
!2799 = !DILocation(line: 240, column: 40, scope: !281, inlinedAt: !2797)
!2800 = !DILocation(line: 240, column: 34, scope: !281, inlinedAt: !2797)
!2801 = !DILocation(line: 240, column: 26, scope: !281, inlinedAt: !2797)
!2802 = !DILocation(line: 240, column: 11, scope: !281, inlinedAt: !2797)
!2803 = !DILocation(line: 241, column: 47, scope: !281, inlinedAt: !2797)
!2804 = !DILocation(line: 241, column: 19, scope: !281, inlinedAt: !2797)
!2805 = !DILocation(line: 242, column: 29, scope: !294, inlinedAt: !2797)
!2806 = !DILocation(line: 242, column: 46, scope: !294, inlinedAt: !2797)
!2807 = !DILocation(line: 242, column: 70, scope: !294, inlinedAt: !2797)
!2808 = !DILocation(line: 242, column: 9, scope: !294, inlinedAt: !2797)
!2809 = !DILocation(line: 242, column: 74, scope: !294, inlinedAt: !2797)
!2810 = !DILocation(line: 242, column: 9, scope: !281, inlinedAt: !2797)
!2811 = !DILocation(line: 244, column: 9, scope: !301, inlinedAt: !2797)
!2812 = !DILocation(line: 245, column: 9, scope: !301, inlinedAt: !2797)
!2813 = !DILocation(line: 247, column: 5, scope: !281, inlinedAt: !2797)
!2814 = !DILocation(line: 248, column: 14, scope: !281, inlinedAt: !2797)
!2815 = !DILocation(line: 249, column: 20, scope: !281, inlinedAt: !2797)
!2816 = !DILocation(line: 250, column: 5, scope: !281, inlinedAt: !2797)
!2817 = !DILocation(line: 251, column: 1, scope: !281, inlinedAt: !2797)
!2818 = !DILocation(line: 1158, column: 9, scope: !2798)
!2819 = !DILocation(line: 1159, column: 39, scope: !2794)
!2820 = !DILocation(line: 1159, column: 48, scope: !2794)
!2821 = !DILocation(line: 1159, column: 58, scope: !2794)
!2822 = !DILocation(line: 1159, column: 52, scope: !2794)
!2823 = !DILocation(line: 1159, column: 20, scope: !2794)
!2824 = !DILocation(line: 1159, column: 18, scope: !2794)
!2825 = !DILocation(line: 1174, column: 27, scope: !2760)
!2826 = !DILocation(line: 1160, column: 5, scope: !2794)
!2827 = !DILocation(line: 1162, column: 19, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 1162, column: 13)
!2829 = distinct !DILexicalBlock(scope: !2788, file: !3, line: 1160, column: 12)
!2830 = !DILocation(line: 1162, column: 13, scope: !2829)
!2831 = !DILocation(line: 1169, column: 42, scope: !2829)
!2832 = !DILocation(line: 1169, column: 20, scope: !2829)
!2833 = !{i8* (i8*, i8*)* @ziplistNext, i8* (i8*, i8*)* @ziplistPrev}
!2834 = !DILocation(line: 1169, column: 18, scope: !2829)
!2835 = !DILocation(line: 1170, column: 15, scope: !2829)
!2836 = !DILocation(line: 1170, column: 22, scope: !2829)
!2837 = !DILocation(line: 1176, column: 15, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2760, file: !3, line: 1176, column: 9)
!2839 = !DILocation(line: 1173, column: 23, scope: !2760)
!2840 = !DILocation(line: 1173, column: 15, scope: !2760)
!2841 = !DILocation(line: 1174, column: 21, scope: !2760)
!2842 = !DILocation(line: 1174, column: 19, scope: !2760)
!2843 = !DILocation(line: 1176, column: 9, scope: !2838)
!2844 = !DILocation(line: 1176, column: 9, scope: !2760)
!2845 = !DILocation(line: 1178, column: 9, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 1176, column: 19)
!2847 = !DILocation(line: 1179, column: 9, scope: !2846)
!2848 = !DILocation(line: 1183, column: 9, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 1183, column: 9)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 1183, column: 9)
!2851 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 1180, column: 12)
!2852 = !DILocation(line: 1183, column: 9, scope: !2850)
!2853 = !DILocation(line: 1183, column: 9, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 1183, column: 9)
!2855 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 1183, column: 9)
!2856 = !DILocation(line: 1183, column: 9, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 1183, column: 9)
!2858 = !DILocation(line: 1184, column: 19, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 1184, column: 13)
!2860 = !DILocation(line: 1184, column: 13, scope: !2851)
!2861 = !DILocation(line: 1187, column: 35, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 1184, column: 47)
!2863 = !DILocation(line: 1187, column: 44, scope: !2862)
!2864 = !DILocation(line: 1189, column: 9, scope: !2862)
!2865 = !DILocation(line: 1192, column: 35, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 1189, column: 54)
!2867 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 1189, column: 20)
!2868 = !DILocation(line: 1194, column: 9, scope: !2866)
!2869 = !DILocation(line: 0, scope: !2862)
!2870 = !DILocation(line: 1195, column: 18, scope: !2851)
!2871 = !DILocation(line: 1196, column: 16, scope: !2851)
!2872 = !DILocation(line: 1196, column: 9, scope: !2851)
!2873 = !DILocation(line: 0, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 1140, column: 16)
!2875 = !DILocation(line: 1198, column: 1, scope: !2760)
!2876 = distinct !DISubprogram(name: "quicklistDup", scope: !3, file: !3, line: 1206, type: !2877, isLocal: false, isDefinition: true, scopeLine: 1206, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2879)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!21, !21}
!2879 = !{!2880, !2881, !2882, !2884, !2887, !2890}
!2880 = !DILocalVariable(name: "orig", arg: 1, scope: !2876, file: !3, line: 1206, type: !21)
!2881 = !DILocalVariable(name: "copy", scope: !2876, file: !3, line: 1207, type: !21)
!2882 = !DILocalVariable(name: "current", scope: !2883, file: !3, line: 1211, type: !26)
!2883 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 1211, column: 5)
!2884 = !DILocalVariable(name: "node", scope: !2885, file: !3, line: 1213, type: !26)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 1212, column: 35)
!2886 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 1211, column: 5)
!2887 = !DILocalVariable(name: "lzf", scope: !2888, file: !3, line: 1216, type: !8)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 1215, column: 63)
!2889 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 1215, column: 13)
!2890 = !DILocalVariable(name: "lzf_sz", scope: !2888, file: !3, line: 1217, type: !51)
!2891 = !DILocation(line: 1206, column: 36, scope: !2876)
!2892 = !DILocation(line: 1209, column: 31, scope: !2876)
!2893 = !DILocation(line: 133, column: 25, scope: !81, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 148, column: 5, scope: !107, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 154, column: 5, scope: !133, inlinedAt: !2896)
!2896 = distinct !DILocation(line: 1209, column: 12, scope: !2876)
!2897 = !DILocation(line: 152, column: 29, scope: !133, inlinedAt: !2896)
!2898 = !DILocation(line: 152, column: 39, scope: !133, inlinedAt: !2896)
!2899 = !DILocation(line: 117, column: 17, scope: !61, inlinedAt: !2900)
!2900 = distinct !DILocation(line: 153, column: 28, scope: !133, inlinedAt: !2896)
!2901 = !DILocation(line: 115, column: 23, scope: !61, inlinedAt: !2900)
!2902 = !DILocation(line: 118, column: 34, scope: !61, inlinedAt: !2900)
!2903 = !DILocation(line: 118, column: 21, scope: !61, inlinedAt: !2900)
!2904 = !DILocation(line: 119, column: 16, scope: !61, inlinedAt: !2900)
!2905 = !DILocation(line: 120, column: 16, scope: !61, inlinedAt: !2900)
!2906 = !DILocation(line: 120, column: 22, scope: !61, inlinedAt: !2900)
!2907 = !DILocation(line: 121, column: 16, scope: !61, inlinedAt: !2900)
!2908 = !DILocation(line: 123, column: 5, scope: !61, inlinedAt: !2900)
!2909 = !DILocation(line: 153, column: 16, scope: !133, inlinedAt: !2896)
!2910 = !DILocation(line: 146, column: 37, scope: !107, inlinedAt: !2895)
!2911 = !DILocation(line: 146, column: 52, scope: !107, inlinedAt: !2895)
!2912 = !DILocation(line: 146, column: 62, scope: !107, inlinedAt: !2895)
!2913 = !DILocation(line: 137, column: 34, scope: !95, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 147, column: 5, scope: !107, inlinedAt: !2895)
!2915 = !DILocation(line: 137, column: 49, scope: !95, inlinedAt: !2914)
!2916 = !DILocation(line: 140, column: 16, scope: !102, inlinedAt: !2914)
!2917 = !DILocation(line: 143, column: 21, scope: !95, inlinedAt: !2914)
!2918 = !DILocation(line: 144, column: 1, scope: !95, inlinedAt: !2914)
!2919 = !DILocation(line: 127, column: 43, scope: !81, inlinedAt: !2894)
!2920 = !DILocation(line: 127, column: 58, scope: !81, inlinedAt: !2894)
!2921 = !DILocation(line: 134, column: 1, scope: !81, inlinedAt: !2894)
!2922 = !DILocation(line: 149, column: 1, scope: !107, inlinedAt: !2895)
!2923 = !DILocation(line: 155, column: 5, scope: !133, inlinedAt: !2896)
!2924 = !DILocation(line: 1207, column: 16, scope: !2876)
!2925 = !DILocation(line: 1211, column: 41, scope: !2883)
!2926 = !DILocation(line: 1211, column: 25, scope: !2883)
!2927 = !DILocation(line: 0, scope: !2886)
!2928 = !DILocation(line: 1211, column: 5, scope: !2883)
!2929 = !DILocation(line: 1234, column: 5, scope: !2876)
!2930 = !DILocation(line: 160, column: 12, scope: !171, inlinedAt: !2931)
!2931 = distinct !DILocation(line: 1213, column: 31, scope: !2885)
!2932 = !DILocation(line: 161, column: 11, scope: !171, inlinedAt: !2931)
!2933 = !DILocation(line: 161, column: 14, scope: !171, inlinedAt: !2931)
!2934 = !DILocation(line: 162, column: 11, scope: !171, inlinedAt: !2931)
!2935 = !DILocation(line: 162, column: 17, scope: !171, inlinedAt: !2931)
!2936 = !DILocation(line: 163, column: 11, scope: !171, inlinedAt: !2931)
!2937 = !DILocation(line: 163, column: 14, scope: !171, inlinedAt: !2931)
!2938 = !DILocation(line: 164, column: 24, scope: !171, inlinedAt: !2931)
!2939 = !DILocation(line: 164, column: 11, scope: !171, inlinedAt: !2931)
!2940 = !DILocation(line: 164, column: 29, scope: !171, inlinedAt: !2931)
!2941 = !DILocation(line: 167, column: 22, scope: !171, inlinedAt: !2931)
!2942 = !DILocation(line: 168, column: 5, scope: !171, inlinedAt: !2931)
!2943 = !DILocation(line: 1215, column: 22, scope: !2889)
!2944 = !DILocation(line: 1215, column: 13, scope: !2885)
!2945 = !DILocation(line: 1213, column: 24, scope: !2885)
!2946 = !DILocation(line: 159, column: 20, scope: !171, inlinedAt: !2931)
!2947 = !DILocation(line: 1216, column: 58, scope: !2888)
!2948 = !DILocation(line: 1216, column: 27, scope: !2888)
!2949 = !DILocation(line: 1217, column: 49, scope: !2888)
!2950 = !DILocation(line: 1217, column: 44, scope: !2888)
!2951 = !DILocation(line: 1217, column: 42, scope: !2888)
!2952 = !DILocation(line: 1217, column: 20, scope: !2888)
!2953 = !DILocation(line: 1218, column: 24, scope: !2888)
!2954 = !DILocation(line: 1218, column: 22, scope: !2888)
!2955 = !DILocation(line: 1219, column: 39, scope: !2888)
!2956 = !DILocation(line: 1219, column: 13, scope: !2888)
!2957 = !DILocation(line: 1220, column: 9, scope: !2888)
!2958 = !DILocation(line: 1221, column: 41, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 1220, column: 70)
!2960 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 1220, column: 20)
!2961 = !DILocation(line: 1221, column: 32, scope: !2959)
!2962 = !DILocation(line: 1221, column: 24, scope: !2959)
!2963 = !DILocation(line: 1221, column: 22, scope: !2959)
!2964 = !DILocation(line: 1222, column: 39, scope: !2959)
!2965 = !DILocation(line: 1222, column: 52, scope: !2959)
!2966 = !DILocation(line: 1222, column: 43, scope: !2959)
!2967 = !DILocation(line: 1222, column: 13, scope: !2959)
!2968 = !DILocation(line: 1223, column: 9, scope: !2959)
!2969 = !DILocation(line: 1225, column: 32, scope: !2885)
!2970 = !DILocation(line: 1225, column: 21, scope: !2885)
!2971 = !DILocation(line: 1226, column: 24, scope: !2885)
!2972 = !DILocation(line: 1226, column: 21, scope: !2885)
!2973 = !DILocation(line: 1227, column: 29, scope: !2885)
!2974 = !DILocation(line: 1227, column: 18, scope: !2885)
!2975 = !DILocation(line: 1228, column: 35, scope: !2885)
!2976 = !DILocation(line: 1228, column: 24, scope: !2885)
!2977 = !DILocation(line: 1230, column: 47, scope: !2885)
!2978 = !DILocation(line: 414, column: 56, scope: !594, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 1230, column: 9, scope: !2885)
!2980 = !DILocation(line: 415, column: 60, scope: !594, inlinedAt: !2979)
!2981 = !DILocation(line: 416, column: 60, scope: !594, inlinedAt: !2979)
!2982 = !DILocation(line: 372, column: 52, scope: !453, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 417, column: 5, scope: !594, inlinedAt: !2979)
!2984 = !DILocation(line: 373, column: 56, scope: !453, inlinedAt: !2983)
!2985 = !DILocation(line: 374, column: 56, scope: !453, inlinedAt: !2983)
!2986 = !DILocation(line: 374, column: 70, scope: !453, inlinedAt: !2983)
!2987 = !DILocation(line: 376, column: 24, scope: !469, inlinedAt: !2983)
!2988 = !DILocation(line: 377, column: 13, scope: !473, inlinedAt: !2983)
!2989 = !DILocation(line: 377, column: 13, scope: !469, inlinedAt: !2983)
!2990 = !DILocation(line: 378, column: 40, scope: !476, inlinedAt: !2983)
!2991 = !DILocation(line: 378, column: 28, scope: !476, inlinedAt: !2983)
!2992 = !DILocation(line: 379, column: 27, scope: !480, inlinedAt: !2983)
!2993 = !DILocation(line: 379, column: 17, scope: !480, inlinedAt: !2983)
!2994 = !DILocation(line: 379, column: 17, scope: !476, inlinedAt: !2983)
!2995 = !DILocation(line: 380, column: 38, scope: !480, inlinedAt: !2983)
!2996 = !DILocation(line: 380, column: 17, scope: !480, inlinedAt: !2983)
!2997 = !DILocation(line: 381, column: 28, scope: !476, inlinedAt: !2983)
!2998 = !DILocation(line: 382, column: 9, scope: !476, inlinedAt: !2983)
!2999 = !DILocation(line: 384, column: 29, scope: !489, inlinedAt: !2983)
!3000 = !DILocation(line: 397, column: 20, scope: !520, inlinedAt: !2983)
!3001 = !DILocation(line: 397, column: 24, scope: !520, inlinedAt: !2983)
!3002 = !DILocation(line: 397, column: 9, scope: !453, inlinedAt: !2983)
!3003 = !DILocation(line: 398, column: 43, scope: !524, inlinedAt: !2983)
!3004 = !DILocation(line: 398, column: 25, scope: !524, inlinedAt: !2983)
!3005 = !DILocation(line: 399, column: 5, scope: !524, inlinedAt: !2983)
!3006 = !DILocation(line: 401, column: 9, scope: !453, inlinedAt: !2983)
!3007 = !DILocation(line: 402, column: 9, scope: !533, inlinedAt: !2983)
!3008 = !DILocation(line: 402, column: 9, scope: !534, inlinedAt: !2983)
!3009 = !DILocation(line: 402, column: 9, scope: !537, inlinedAt: !2983)
!3010 = !DILocation(line: 402, column: 9, scope: !538, inlinedAt: !2983)
!3011 = !DILocation(line: 402, column: 9, scope: !541, inlinedAt: !2983)
!3012 = !DILocation(line: 404, column: 19, scope: !453, inlinedAt: !2983)
!3013 = !DILocation(line: 405, column: 1, scope: !453, inlinedAt: !2983)
!3014 = !DILocation(line: 418, column: 1, scope: !594, inlinedAt: !2979)
!3015 = !DILocation(line: 1212, column: 29, scope: !2886)
!3016 = distinct !{!3016, !2928, !3017}
!3017 = !DILocation(line: 1231, column: 5, scope: !2883)
!3018 = distinct !DISubprogram(name: "quicklistRotate", scope: !3, file: !3, line: 1302, type: !204, isLocal: false, isDefinition: true, scopeLine: 1302, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3019)
!3019 = !{!3020, !3021, !3022, !3023, !3024, !3025}
!3020 = !DILocalVariable(name: "quicklist", arg: 1, scope: !3018, file: !3, line: 1302, type: !21)
!3021 = !DILocalVariable(name: "p", scope: !3018, file: !3, line: 1307, type: !6)
!3022 = !DILocalVariable(name: "value", scope: !3018, file: !3, line: 1308, type: !6)
!3023 = !DILocalVariable(name: "longval", scope: !3018, file: !3, line: 1309, type: !1119)
!3024 = !DILocalVariable(name: "sz", scope: !3018, file: !3, line: 1310, type: !14)
!3025 = !DILocalVariable(name: "longstr", scope: !3018, file: !3, line: 1311, type: !1121)
!3026 = !DILocation(line: 1302, column: 33, scope: !3018)
!3027 = !DILocation(line: 1303, column: 20, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 1303, column: 9)
!3029 = !DILocation(line: 1303, column: 26, scope: !3028)
!3030 = !DILocation(line: 1303, column: 9, scope: !3018)
!3031 = !DILocation(line: 1307, column: 5, scope: !3018)
!3032 = !DILocation(line: 1307, column: 48, scope: !3018)
!3033 = !DILocation(line: 1307, column: 54, scope: !3018)
!3034 = !DILocation(line: 1307, column: 24, scope: !3018)
!3035 = !DILocation(line: 1307, column: 20, scope: !3018)
!3036 = !DILocation(line: 1308, column: 5, scope: !3018)
!3037 = !DILocation(line: 1309, column: 5, scope: !3018)
!3038 = !DILocation(line: 1310, column: 5, scope: !3018)
!3039 = !DILocation(line: 1311, column: 5, scope: !3018)
!3040 = !DILocation(line: 1311, column: 10, scope: !3018)
!3041 = !DILocation(line: 1308, column: 20, scope: !3018)
!3042 = !DILocation(line: 1309, column: 15, scope: !3018)
!3043 = !DILocation(line: 1310, column: 18, scope: !3018)
!3044 = !DILocation(line: 1312, column: 5, scope: !3018)
!3045 = !DILocation(line: 1315, column: 10, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 1315, column: 9)
!3047 = !DILocation(line: 1315, column: 9, scope: !3018)
!3048 = !DILocation(line: 1322, column: 41, scope: !3018)
!3049 = !DILocation(line: 1317, column: 50, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3046, file: !3, line: 1315, column: 17)
!3051 = !DILocation(line: 1317, column: 14, scope: !3050)
!3052 = !DILocation(line: 1317, column: 12, scope: !3050)
!3053 = !DILocation(line: 1318, column: 15, scope: !3050)
!3054 = !DILocation(line: 1319, column: 5, scope: !3050)
!3055 = !DILocation(line: 1322, column: 34, scope: !3018)
!3056 = !DILocation(line: 1322, column: 5, scope: !3018)
!3057 = !DILocation(line: 1327, column: 20, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 1327, column: 9)
!3059 = !DILocation(line: 1327, column: 24, scope: !3058)
!3060 = !DILocation(line: 1327, column: 9, scope: !3018)
!3061 = !DILocation(line: 1328, column: 37, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 1327, column: 30)
!3063 = !DILocation(line: 1328, column: 43, scope: !3062)
!3064 = !DILocation(line: 1328, column: 13, scope: !3062)
!3065 = !DILocation(line: 1328, column: 11, scope: !3062)
!3066 = !DILocation(line: 1329, column: 5, scope: !3062)
!3067 = !DILocation(line: 1332, column: 45, scope: !3018)
!3068 = !DILocation(line: 1332, column: 5, scope: !3018)
!3069 = !DILocation(line: 1333, column: 1, scope: !3018)
!3070 = distinct !DISubprogram(name: "quicklistPopCustom", scope: !3, file: !3, line: 1344, type: !3071, isLocal: false, isDefinition: true, scopeLine: 1346, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3078)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!20, !21, !20, !1256, !3073, !3074, !3075}
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!47, !6, !14}
!3078 = !{!3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090}
!3079 = !DILocalVariable(name: "quicklist", arg: 1, scope: !3070, file: !3, line: 1344, type: !21)
!3080 = !DILocalVariable(name: "where", arg: 2, scope: !3070, file: !3, line: 1344, type: !20)
!3081 = !DILocalVariable(name: "data", arg: 3, scope: !3070, file: !3, line: 1344, type: !1256)
!3082 = !DILocalVariable(name: "sz", arg: 4, scope: !3070, file: !3, line: 1345, type: !3073)
!3083 = !DILocalVariable(name: "sval", arg: 5, scope: !3070, file: !3, line: 1345, type: !3074)
!3084 = !DILocalVariable(name: "saver", arg: 6, scope: !3070, file: !3, line: 1346, type: !3075)
!3085 = !DILocalVariable(name: "p", scope: !3070, file: !3, line: 1347, type: !6)
!3086 = !DILocalVariable(name: "vstr", scope: !3070, file: !3, line: 1348, type: !6)
!3087 = !DILocalVariable(name: "vlen", scope: !3070, file: !3, line: 1349, type: !14)
!3088 = !DILocalVariable(name: "vlong", scope: !3070, file: !3, line: 1350, type: !1119)
!3089 = !DILocalVariable(name: "pos", scope: !3070, file: !3, line: 1351, type: !20)
!3090 = !DILocalVariable(name: "node", scope: !3070, file: !3, line: 1363, type: !26)
!3091 = !DILocation(line: 1344, column: 35, scope: !3070)
!3092 = !DILocation(line: 1344, column: 50, scope: !3070)
!3093 = !DILocation(line: 1344, column: 73, scope: !3070)
!3094 = !DILocation(line: 1345, column: 38, scope: !3070)
!3095 = !DILocation(line: 1345, column: 53, scope: !3070)
!3096 = !DILocation(line: 1346, column: 32, scope: !3070)
!3097 = !DILocation(line: 1347, column: 5, scope: !3070)
!3098 = !DILocation(line: 1348, column: 5, scope: !3070)
!3099 = !DILocation(line: 1349, column: 5, scope: !3070)
!3100 = !DILocation(line: 1350, column: 5, scope: !3070)
!3101 = !DILocation(line: 1351, column: 22, scope: !3070)
!3102 = !DILocation(line: 1351, column: 15, scope: !3070)
!3103 = !DILocation(line: 1351, column: 9, scope: !3070)
!3104 = !DILocation(line: 1353, column: 20, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 1353, column: 9)
!3106 = !DILocation(line: 1353, column: 26, scope: !3105)
!3107 = !DILocation(line: 1353, column: 9, scope: !3070)
!3108 = !DILocation(line: 1356, column: 9, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 1356, column: 9)
!3110 = !DILocation(line: 1356, column: 9, scope: !3070)
!3111 = !DILocation(line: 1357, column: 15, scope: !3109)
!3112 = !DILocation(line: 1357, column: 9, scope: !3109)
!3113 = !DILocation(line: 1358, column: 9, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 1358, column: 9)
!3115 = !DILocation(line: 1358, column: 9, scope: !3070)
!3116 = !DILocation(line: 1359, column: 13, scope: !3114)
!3117 = !DILocation(line: 1359, column: 9, scope: !3114)
!3118 = !DILocation(line: 1360, column: 9, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 1360, column: 9)
!3120 = !DILocation(line: 1360, column: 9, scope: !3070)
!3121 = !DILocation(line: 1361, column: 15, scope: !3119)
!3122 = !DILocation(line: 1361, column: 9, scope: !3119)
!3123 = !DILocation(line: 1364, column: 33, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 1364, column: 9)
!3125 = !DILocation(line: 1364, column: 47, scope: !3124)
!3126 = !DILocation(line: 1364, column: 36, scope: !3124)
!3127 = !DILocation(line: 1364, column: 9, scope: !3070)
!3128 = !DILocation(line: 1366, column: 22, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3124, file: !3, line: 1366, column: 16)
!3130 = !DILocation(line: 1366, column: 40, scope: !3129)
!3131 = !DILocation(line: 1366, column: 54, scope: !3129)
!3132 = !DILocation(line: 1366, column: 43, scope: !3129)
!3133 = !DILocation(line: 1366, column: 16, scope: !3124)
!3134 = !DILocation(line: 0, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 1366, column: 60)
!3136 = !DILocation(line: 1363, column: 20, scope: !3070)
!3137 = !DILocation(line: 1372, column: 28, scope: !3070)
!3138 = !DILocation(line: 1372, column: 9, scope: !3070)
!3139 = !DILocation(line: 1347, column: 20, scope: !3070)
!3140 = !DILocation(line: 1372, column: 7, scope: !3070)
!3141 = !DILocation(line: 1348, column: 20, scope: !3070)
!3142 = !DILocation(line: 1349, column: 18, scope: !3070)
!3143 = !DILocation(line: 1350, column: 15, scope: !3070)
!3144 = !DILocation(line: 1373, column: 9, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 1373, column: 9)
!3146 = !DILocation(line: 1373, column: 9, scope: !3070)
!3147 = !DILocation(line: 1374, column: 13, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 1374, column: 13)
!3149 = distinct !DILexicalBlock(scope: !3145, file: !3, line: 1373, column: 46)
!3150 = !DILocation(line: 1374, column: 13, scope: !3149)
!3151 = !DILocation(line: 1375, column: 17, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 1374, column: 19)
!3153 = !DILocation(line: 1376, column: 37, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3152, file: !3, line: 1375, column: 17)
!3155 = !DILocation(line: 1376, column: 25, scope: !3154)
!3156 = !DILocation(line: 1376, column: 23, scope: !3154)
!3157 = !DILocation(line: 1376, column: 17, scope: !3154)
!3158 = !DILocation(line: 1377, column: 17, scope: !3152)
!3159 = !DILocation(line: 1378, column: 23, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3152, file: !3, line: 1377, column: 17)
!3161 = !DILocation(line: 1378, column: 21, scope: !3160)
!3162 = !DILocation(line: 1378, column: 17, scope: !3160)
!3163 = !DILocation(line: 1380, column: 17, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 1379, column: 16)
!3165 = !DILocation(line: 1381, column: 23, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3164, file: !3, line: 1380, column: 17)
!3167 = !DILocation(line: 1381, column: 17, scope: !3166)
!3168 = !DILocation(line: 1382, column: 17, scope: !3164)
!3169 = !DILocation(line: 1383, column: 25, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3164, file: !3, line: 1382, column: 17)
!3171 = !DILocation(line: 1383, column: 23, scope: !3170)
!3172 = !DILocation(line: 1383, column: 17, scope: !3170)
!3173 = !DILocation(line: 1385, column: 9, scope: !3149)
!3174 = !DILocation(line: 1386, column: 9, scope: !3149)
!3175 = !DILocation(line: 0, scope: !3149)
!3176 = !DILocation(line: 1389, column: 1, scope: !3070)
!3177 = distinct !DISubprogram(name: "_quicklistSaver", scope: !3, file: !3, line: 1392, type: !3076, isLocal: false, isDefinition: true, scopeLine: 1392, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3178)
!3178 = !{!3179, !3180, !3181}
!3179 = !DILocalVariable(name: "data", arg: 1, scope: !3177, file: !3, line: 1392, type: !6)
!3180 = !DILocalVariable(name: "sz", arg: 2, scope: !3177, file: !3, line: 1392, type: !14)
!3181 = !DILocalVariable(name: "vstr", scope: !3177, file: !3, line: 1393, type: !6)
!3182 = !DILocation(line: 1392, column: 51, scope: !3177)
!3183 = !DILocation(line: 1392, column: 70, scope: !3177)
!3184 = !DILocation(line: 1394, column: 9, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 1394, column: 9)
!3186 = !DILocation(line: 1394, column: 9, scope: !3177)
!3187 = !DILocation(line: 1395, column: 24, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 1394, column: 15)
!3189 = !DILocation(line: 1395, column: 16, scope: !3188)
!3190 = !DILocation(line: 1393, column: 20, scope: !3177)
!3191 = !DILocation(line: 1396, column: 9, scope: !3188)
!3192 = !DILocation(line: 1397, column: 9, scope: !3188)
!3193 = !DILocation(line: 0, scope: !3177)
!3194 = !DILocation(line: 1400, column: 1, scope: !3177)
!3195 = distinct !DISubprogram(name: "quicklistPop", scope: !3, file: !3, line: 1405, type: !3196, isLocal: false, isDefinition: true, scopeLine: 1406, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3198)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!20, !21, !20, !1256, !3073, !3074}
!3198 = !{!3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207}
!3199 = !DILocalVariable(name: "quicklist", arg: 1, scope: !3195, file: !3, line: 1405, type: !21)
!3200 = !DILocalVariable(name: "where", arg: 2, scope: !3195, file: !3, line: 1405, type: !20)
!3201 = !DILocalVariable(name: "data", arg: 3, scope: !3195, file: !3, line: 1405, type: !1256)
!3202 = !DILocalVariable(name: "sz", arg: 4, scope: !3195, file: !3, line: 1406, type: !3073)
!3203 = !DILocalVariable(name: "slong", arg: 5, scope: !3195, file: !3, line: 1406, type: !3074)
!3204 = !DILocalVariable(name: "vstr", scope: !3195, file: !3, line: 1407, type: !6)
!3205 = !DILocalVariable(name: "vlen", scope: !3195, file: !3, line: 1408, type: !14)
!3206 = !DILocalVariable(name: "vlong", scope: !3195, file: !3, line: 1409, type: !1119)
!3207 = !DILocalVariable(name: "ret", scope: !3195, file: !3, line: 1412, type: !20)
!3208 = !DILocation(line: 1405, column: 29, scope: !3195)
!3209 = !DILocation(line: 1405, column: 44, scope: !3195)
!3210 = !DILocation(line: 1405, column: 67, scope: !3195)
!3211 = !DILocation(line: 1406, column: 32, scope: !3195)
!3212 = !DILocation(line: 1406, column: 47, scope: !3195)
!3213 = !DILocation(line: 1410, column: 20, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 1410, column: 9)
!3215 = !DILocation(line: 1410, column: 26, scope: !3214)
!3216 = !DILocation(line: 1410, column: 9, scope: !3195)
!3217 = !DILocation(line: 1407, column: 20, scope: !3195)
!3218 = !DILocation(line: 1344, column: 35, scope: !3070, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 1412, column: 15, scope: !3195)
!3220 = !DILocation(line: 1344, column: 50, scope: !3070, inlinedAt: !3219)
!3221 = !DILocation(line: 1344, column: 73, scope: !3070, inlinedAt: !3219)
!3222 = !DILocation(line: 1346, column: 32, scope: !3070, inlinedAt: !3219)
!3223 = !DILocation(line: 1347, column: 5, scope: !3070, inlinedAt: !3219)
!3224 = !DILocation(line: 1348, column: 5, scope: !3070, inlinedAt: !3219)
!3225 = !DILocation(line: 1349, column: 5, scope: !3070, inlinedAt: !3219)
!3226 = !DILocation(line: 1350, column: 5, scope: !3070, inlinedAt: !3219)
!3227 = !DILocation(line: 1351, column: 22, scope: !3070, inlinedAt: !3219)
!3228 = !DILocation(line: 1351, column: 15, scope: !3070, inlinedAt: !3219)
!3229 = !DILocation(line: 1351, column: 9, scope: !3070, inlinedAt: !3219)
!3230 = !DILocation(line: 1364, column: 33, scope: !3124, inlinedAt: !3219)
!3231 = !DILocation(line: 1364, column: 47, scope: !3124, inlinedAt: !3219)
!3232 = !DILocation(line: 1364, column: 36, scope: !3124, inlinedAt: !3219)
!3233 = !DILocation(line: 1364, column: 9, scope: !3070, inlinedAt: !3219)
!3234 = !DILocation(line: 1366, column: 22, scope: !3129, inlinedAt: !3219)
!3235 = !DILocation(line: 1366, column: 40, scope: !3129, inlinedAt: !3219)
!3236 = !DILocation(line: 1366, column: 54, scope: !3129, inlinedAt: !3219)
!3237 = !DILocation(line: 1366, column: 43, scope: !3129, inlinedAt: !3219)
!3238 = !DILocation(line: 1366, column: 16, scope: !3124, inlinedAt: !3219)
!3239 = !DILocation(line: 0, scope: !3135, inlinedAt: !3219)
!3240 = !DILocation(line: 1363, column: 20, scope: !3070, inlinedAt: !3219)
!3241 = !DILocation(line: 1372, column: 28, scope: !3070, inlinedAt: !3219)
!3242 = !DILocation(line: 1372, column: 9, scope: !3070, inlinedAt: !3219)
!3243 = !DILocation(line: 1347, column: 20, scope: !3070, inlinedAt: !3219)
!3244 = !DILocation(line: 1372, column: 7, scope: !3070, inlinedAt: !3219)
!3245 = !DILocation(line: 1348, column: 20, scope: !3070, inlinedAt: !3219)
!3246 = !DILocation(line: 1349, column: 18, scope: !3070, inlinedAt: !3219)
!3247 = !DILocation(line: 1350, column: 15, scope: !3070, inlinedAt: !3219)
!3248 = !DILocation(line: 1373, column: 9, scope: !3145, inlinedAt: !3219)
!3249 = !DILocation(line: 1373, column: 9, scope: !3070, inlinedAt: !3219)
!3250 = !DILocation(line: 1374, column: 13, scope: !3148, inlinedAt: !3219)
!3251 = !DILocation(line: 1374, column: 13, scope: !3149, inlinedAt: !3219)
!3252 = !DILocation(line: 1376, column: 37, scope: !3154, inlinedAt: !3219)
!3253 = !DILocation(line: 1392, column: 51, scope: !3177, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 1376, column: 25, scope: !3154, inlinedAt: !3219)
!3255 = !DILocation(line: 1392, column: 70, scope: !3177, inlinedAt: !3254)
!3256 = !DILocation(line: 1395, column: 24, scope: !3188, inlinedAt: !3254)
!3257 = !DILocation(line: 1395, column: 16, scope: !3188, inlinedAt: !3254)
!3258 = !DILocation(line: 1393, column: 20, scope: !3177, inlinedAt: !3254)
!3259 = !DILocation(line: 1396, column: 9, scope: !3188, inlinedAt: !3254)
!3260 = !DILocation(line: 1400, column: 1, scope: !3177, inlinedAt: !3254)
!3261 = !DILocation(line: 1376, column: 23, scope: !3154, inlinedAt: !3219)
!3262 = !DILocation(line: 1378, column: 23, scope: !3160, inlinedAt: !3219)
!3263 = !DILocation(line: 1378, column: 17, scope: !3160, inlinedAt: !3219)
!3264 = !DILocation(line: 1383, column: 25, scope: !3170, inlinedAt: !3219)
!3265 = !DILocation(line: 1383, column: 17, scope: !3170, inlinedAt: !3219)
!3266 = !DILocation(line: 0, scope: !3195)
!3267 = !DILocation(line: 1385, column: 9, scope: !3149, inlinedAt: !3219)
!3268 = !DILocation(line: 1386, column: 9, scope: !3149, inlinedAt: !3219)
!3269 = !DILocation(line: 0, scope: !3149, inlinedAt: !3219)
!3270 = !DILocation(line: 1389, column: 1, scope: !3070, inlinedAt: !3219)
!3271 = !DILocation(line: 1412, column: 9, scope: !3195)
!3272 = !DILocation(line: 1414, column: 9, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 1414, column: 9)
!3274 = !DILocation(line: 1414, column: 9, scope: !3195)
!3275 = !DILocation(line: 1415, column: 15, scope: !3273)
!3276 = !DILocation(line: 1415, column: 9, scope: !3273)
!3277 = !DILocation(line: 1416, column: 9, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 1416, column: 9)
!3279 = !DILocation(line: 1416, column: 9, scope: !3195)
!3280 = !DILocation(line: 1409, column: 15, scope: !3195)
!3281 = !DILocation(line: 1417, column: 16, scope: !3278)
!3282 = !DILocation(line: 1417, column: 9, scope: !3278)
!3283 = !DILocation(line: 1418, column: 9, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 1418, column: 9)
!3285 = !DILocation(line: 1418, column: 9, scope: !3195)
!3286 = !DILocation(line: 1408, column: 18, scope: !3195)
!3287 = !DILocation(line: 1419, column: 13, scope: !3284)
!3288 = !DILocation(line: 1419, column: 9, scope: !3284)
!3289 = !DILocation(line: 1421, column: 1, scope: !3195)
!3290 = distinct !DISubprogram(name: "quicklistPush", scope: !3, file: !3, line: 1424, type: !3291, isLocal: false, isDefinition: true, scopeLine: 1425, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3293)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{null, !21, !47, !50, !20}
!3293 = !{!3294, !3295, !3296, !3297}
!3294 = !DILocalVariable(name: "quicklist", arg: 1, scope: !3290, file: !3, line: 1424, type: !21)
!3295 = !DILocalVariable(name: "value", arg: 2, scope: !3290, file: !3, line: 1424, type: !47)
!3296 = !DILocalVariable(name: "sz", arg: 3, scope: !3290, file: !3, line: 1424, type: !50)
!3297 = !DILocalVariable(name: "where", arg: 4, scope: !3290, file: !3, line: 1425, type: !20)
!3298 = !DILocation(line: 1424, column: 31, scope: !3290)
!3299 = !DILocation(line: 1424, column: 48, scope: !3290)
!3300 = !DILocation(line: 1424, column: 68, scope: !3290)
!3301 = !DILocation(line: 1425, column: 24, scope: !3290)
!3302 = !DILocation(line: 1426, column: 9, scope: !3290)
!3303 = !DILocation(line: 1427, column: 9, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 1426, column: 34)
!3305 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 1426, column: 9)
!3306 = !DILocation(line: 1428, column: 5, scope: !3304)
!3307 = !DILocation(line: 1429, column: 9, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3309, file: !3, line: 1428, column: 41)
!3309 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 1428, column: 16)
!3310 = !DILocation(line: 1430, column: 5, scope: !3308)
!3311 = !DILocation(line: 1431, column: 1, scope: !3290)
