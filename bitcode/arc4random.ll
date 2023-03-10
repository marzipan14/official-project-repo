; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/arc4random.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/arc4random.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._rs = type { i64, i64 }
%struct._rsx = type { %struct.chacha_ctx, [1024 x i8] }
%struct.chacha_ctx = type { [16 x i32] }
%struct.anon = type { %struct._rs, %struct._rsx }

@rs = internal unnamed_addr global %struct._rs* null, align 8, !dbg !0
@rsx = internal unnamed_addr global %struct._rsx* null, align 8, !dbg !59
@_arc4random_data = internal global %struct.anon zeroinitializer, align 8, !dbg !22
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @arc4random() local_unnamed_addr #0 !dbg !67 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5, !dbg !72
  tail call fastcc void @_rs_stir_if_needed(i64 4) #6, !dbg !83
  %3 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !84, !tbaa !86
  %4 = icmp ult i64 %3, 4, !dbg !91
  br i1 %4, label %5, label %7, !dbg !92

; <label>:5:                                      ; preds = %0
  tail call fastcc void @_rs_rekey(i8* null, i64 0) #6, !dbg !93
  %6 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !94, !tbaa !86
  br label %7, !dbg !93

; <label>:7:                                      ; preds = %0, %5
  %8 = phi i64 [ %6, %5 ], [ %3, %0 ], !dbg !94
  %9 = load %struct._rsx*, %struct._rsx** @rsx, align 8, !dbg !95, !tbaa !96
  %10 = getelementptr inbounds %struct._rsx, %struct._rsx* %9, i64 0, i32 1, i64 1024, !dbg !98
  %11 = sub i64 0, %8, !dbg !99
  %12 = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !99
  %13 = call i8* @memcpy(i8* nonnull %2, i8* nonnull %12, i64 4) #6, !dbg !101
  %14 = call i8* @memset(i8* nonnull %12, i32 0, i64 4) #6, !dbg !102
  %15 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !103, !tbaa !86
  %16 = add i64 %15, -4, !dbg !103
  store i64 %16, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !103, !tbaa !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  %17 = load i32, i32* %1, align 4, !dbg !105, !tbaa !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5, !dbg !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !109
  ret i32 %17, !dbg !109
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local void @arc4random_buf(i8*, i64) local_unnamed_addr #0 !dbg !110 {
  tail call fastcc void @_rs_stir_if_needed(i64 %1) #6, !dbg !129
  %3 = icmp eq i64 %1, 0, !dbg !130
  br i1 %3, label %30, label %4, !dbg !131

; <label>:4:                                      ; preds = %2, %26
  %5 = phi i64 [ %27, %26 ], [ %1, %2 ]
  %6 = phi i8* [ %28, %26 ], [ %0, %2 ]
  %7 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !132, !tbaa !86
  %8 = icmp eq i64 %7, 0, !dbg !135
  br i1 %8, label %23, label %9, !dbg !136

; <label>:9:                                      ; preds = %4
  %10 = icmp ult i64 %5, %7, !dbg !137
  %11 = select i1 %10, i64 %5, i64 %7, !dbg !137
  %12 = load %struct._rsx*, %struct._rsx** @rsx, align 8, !dbg !140, !tbaa !96
  %13 = getelementptr inbounds %struct._rsx, %struct._rsx* %12, i64 0, i32 1, i64 1024, !dbg !141
  %14 = sub i64 0, %7, !dbg !142
  %15 = getelementptr inbounds i8, i8* %13, i64 %14, !dbg !142
  %16 = tail call i8* @memcpy(i8* %6, i8* nonnull %15, i64 %11) #6, !dbg !144
  %17 = tail call i8* @memset(i8* nonnull %15, i32 0, i64 %11) #6, !dbg !145
  %18 = getelementptr inbounds i8, i8* %6, i64 %11, !dbg !146
  %19 = sub i64 %5, %11, !dbg !147
  %20 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !148, !tbaa !86
  %21 = sub i64 %20, %11, !dbg !148
  store i64 %21, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !148, !tbaa !86
  %22 = icmp eq i64 %21, 0, !dbg !149
  br i1 %22, label %23, label %26, !dbg !151

; <label>:23:                                     ; preds = %9, %4
  %24 = phi i64 [ %19, %9 ], [ %5, %4 ]
  %25 = phi i8* [ %18, %9 ], [ %6, %4 ]
  tail call fastcc void @_rs_rekey(i8* null, i64 0) #6, !dbg !152
  br label %26, !dbg !152

; <label>:26:                                     ; preds = %23, %9
  %27 = phi i64 [ %24, %23 ], [ %19, %9 ]
  %28 = phi i8* [ %25, %23 ], [ %18, %9 ]
  %29 = icmp eq i64 %27, 0, !dbg !130
  br i1 %29, label %30, label %4, !dbg !131, !llvm.loop !153

; <label>:30:                                     ; preds = %26, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  ret void, !dbg !157
}

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc void @_rs_stir_if_needed(i64) unnamed_addr #3 !dbg !158 {
  %2 = alloca [40 x i8], align 16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !175
  %3 = load %struct._rs*, %struct._rs** @rs, align 8, !dbg !178, !tbaa !96
  %4 = icmp eq %struct._rs* %3, null, !dbg !178
  br i1 %4, label %8, label %5, !dbg !179

; <label>:5:                                      ; preds = %1
  %6 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 1), align 8, !dbg !180, !tbaa !181
  %7 = icmp ugt i64 %6, %0, !dbg !182
  br i1 %7, label %24, label %8, !dbg !183

; <label>:8:                                      ; preds = %5, %1
  %9 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0, !dbg !184
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #5, !dbg !184
  %10 = call i32 @getentropy(i8* nonnull %9, i64 40) #6, !dbg !185
  %11 = icmp eq i32 %10, -1, !dbg !187
  br i1 %11, label %12, label %14, !dbg !188

; <label>:12:                                     ; preds = %8
  %13 = call i32 @raise(i32 9) #6, !dbg !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !192
  br label %14, !dbg !193

; <label>:14:                                     ; preds = %12, %8
  %15 = load %struct._rs*, %struct._rs** @rs, align 8, !dbg !194, !tbaa !96
  %16 = icmp eq %struct._rs* %15, null, !dbg !194
  br i1 %16, label %17, label %18, !dbg !196

; <label>:17:                                     ; preds = %14
  call fastcc void @_rs_init(i8* nonnull %9) #6, !dbg !197
  br label %19, !dbg !197

; <label>:18:                                     ; preds = %14
  call fastcc void @_rs_rekey(i8* nonnull %9, i64 40) #6, !dbg !198
  br label %19

; <label>:19:                                     ; preds = %17, %18
  call void @explicit_bzero(i8* nonnull %9, i64 40) #6, !dbg !199
  store i64 0, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !200, !tbaa !86
  %20 = load %struct._rsx*, %struct._rsx** @rsx, align 8, !dbg !201, !tbaa !96
  %21 = getelementptr inbounds %struct._rsx, %struct._rsx* %20, i64 0, i32 1, i64 0, !dbg !201
  %22 = call i8* @memset(i8* nonnull %21, i32 0, i64 1024) #6, !dbg !202
  %23 = load %struct._rs*, %struct._rs** @rs, align 8, !dbg !203, !tbaa !96
  store i64 1600000, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 1), align 8, !dbg !204, !tbaa !181
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #5, !dbg !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !205
  br label %24, !dbg !206

; <label>:24:                                     ; preds = %5, %19
  %25 = phi %struct._rs* [ %3, %5 ], [ %23, %19 ]
  %26 = phi i64 [ %6, %5 ], [ 1600000, %19 ], !dbg !207
  %27 = getelementptr inbounds %struct._rs, %struct._rs* %25, i64 0, i32 1, !dbg !207
  %28 = icmp ugt i64 %26, %0, !dbg !209
  %29 = select i1 %28, i64 %26, i64 %0, !dbg !209
  %30 = sub i64 %29, %0, !dbg !209
  store i64 %30, i64* %27, align 8, !dbg !210, !tbaa !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  ret void, !dbg !211
}

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc void @_rs_rekey(i8* readonly, i64) unnamed_addr #3 !dbg !212 {
  %3 = load %struct._rsx*, %struct._rsx** @rsx, align 8, !dbg !224, !tbaa !96
  %4 = getelementptr inbounds %struct._rsx, %struct._rsx* %3, i64 0, i32 1, i64 0, !dbg !225
  %5 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 0) to <4 x i32>*), align 8, !dbg !286, !tbaa !106
  %6 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 4) to <4 x i32>*), align 8, !dbg !291, !tbaa !106
  %7 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 8) to <4 x i32>*), align 8, !dbg !296, !tbaa !106
  %8 = shufflevector <4 x i32> %7, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>, !dbg !296
  %9 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 12), align 8, !dbg !298, !tbaa !106
  %10 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 13), align 4, !dbg !300, !tbaa !106
  %11 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 14), align 8, !dbg !302, !tbaa !106
  %12 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 15), align 4, !dbg !304, !tbaa !106
  %13 = insertelement <4 x i32> undef, i32 %12, i32 0
  %14 = extractelement <4 x i32> %5, i32 0, !dbg !306
  %15 = extractelement <4 x i32> %5, i32 1
  %16 = extractelement <4 x i32> %5, i32 2
  %17 = extractelement <4 x i32> %5, i32 3
  %18 = extractelement <4 x i32> %6, i32 0
  %19 = extractelement <4 x i32> %6, i32 1
  %20 = extractelement <4 x i32> %6, i32 2
  %21 = extractelement <4 x i32> %6, i32 3
  %22 = extractelement <4 x i32> %7, i32 0
  %23 = extractelement <4 x i32> %7, i32 1
  %24 = extractelement <4 x i32> %7, i32 2
  %25 = extractelement <4 x i32> %7, i32 3
  br label %26, !dbg !310

; <label>:26:                                     ; preds = %303, %2
  %27 = phi i32 [ 1024, %2 ], [ %304, %303 ]
  %28 = phi i32 [ %9, %2 ], [ %123, %303 ], !dbg !311
  %29 = phi i32 [ %10, %2 ], [ %126, %303 ], !dbg !312
  %30 = phi i8* [ %4, %2 ], [ %305, %303 ]
  %31 = insertelement <4 x i32> %13, i32 %28, i32 1
  %32 = insertelement <4 x i32> %31, i32 %29, i32 2
  %33 = insertelement <4 x i32> %32, i32 %11, i32 3
  br label %34, !dbg !330

; <label>:34:                                     ; preds = %34, %26
  %35 = phi i32 [ 20, %26 ], [ %88, %34 ]
  %36 = phi <4 x i32> [ %5, %26 ], [ %77, %34 ]
  %37 = phi <4 x i32> [ %8, %26 ], [ %82, %34 ]
  %38 = phi <4 x i32> [ %6, %26 ], [ %87, %34 ]
  %39 = phi <4 x i32> [ %33, %26 ], [ %81, %34 ]
  %40 = add <4 x i32> %38, %36, !dbg !332
  %41 = shufflevector <4 x i32> %40, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !335
  %42 = xor <4 x i32> %39, %41, !dbg !335
  %43 = shl <4 x i32> %42, <i32 16, i32 16, i32 16, i32 16>, !dbg !335
  %44 = lshr <4 x i32> %42, <i32 16, i32 16, i32 16, i32 16>, !dbg !335
  %45 = or <4 x i32> %43, %44, !dbg !335
  %46 = shufflevector <4 x i32> %45, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !336
  %47 = add <4 x i32> %46, %37, !dbg !336
  %48 = shufflevector <4 x i32> %47, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>, !dbg !332
  %49 = xor <4 x i32> %48, %38, !dbg !332
  %50 = shl <4 x i32> %49, <i32 12, i32 12, i32 12, i32 12>, !dbg !332
  %51 = lshr <4 x i32> %49, <i32 20, i32 20, i32 20, i32 20>, !dbg !332
  %52 = or <4 x i32> %50, %51, !dbg !332
  %53 = add <4 x i32> %52, %40, !dbg !332
  %54 = shufflevector <4 x i32> %53, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !335
  %55 = xor <4 x i32> %54, %45, !dbg !335
  %56 = shl <4 x i32> %55, <i32 8, i32 8, i32 8, i32 8>, !dbg !335
  %57 = lshr <4 x i32> %55, <i32 24, i32 24, i32 24, i32 24>, !dbg !335
  %58 = or <4 x i32> %56, %57, !dbg !335
  %59 = shufflevector <4 x i32> %58, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !336
  %60 = add <4 x i32> %59, %47, !dbg !336
  %61 = shufflevector <4 x i32> %52, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>, !dbg !337
  %62 = shufflevector <4 x i32> %60, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !337
  %63 = xor <4 x i32> %62, %61, !dbg !337
  %64 = shl <4 x i32> %63, <i32 7, i32 7, i32 7, i32 7>, !dbg !337
  %65 = lshr <4 x i32> %63, <i32 25, i32 25, i32 25, i32 25>, !dbg !337
  %66 = or <4 x i32> %64, %65, !dbg !337
  %67 = add <4 x i32> %66, %53, !dbg !338
  %68 = xor <4 x i32> %67, %58, !dbg !338
  %69 = shl <4 x i32> %68, <i32 16, i32 16, i32 16, i32 16>, !dbg !338
  %70 = lshr <4 x i32> %68, <i32 16, i32 16, i32 16, i32 16>, !dbg !338
  %71 = or <4 x i32> %69, %70, !dbg !338
  %72 = add <4 x i32> %71, %60, !dbg !338
  %73 = xor <4 x i32> %72, %66, !dbg !338
  %74 = shl <4 x i32> %73, <i32 12, i32 12, i32 12, i32 12>, !dbg !338
  %75 = lshr <4 x i32> %73, <i32 20, i32 20, i32 20, i32 20>, !dbg !338
  %76 = or <4 x i32> %74, %75, !dbg !338
  %77 = add <4 x i32> %76, %67, !dbg !338
  %78 = xor <4 x i32> %77, %71, !dbg !338
  %79 = shl <4 x i32> %78, <i32 8, i32 8, i32 8, i32 8>, !dbg !338
  %80 = lshr <4 x i32> %78, <i32 24, i32 24, i32 24, i32 24>, !dbg !338
  %81 = or <4 x i32> %79, %80, !dbg !338
  %82 = add <4 x i32> %81, %72, !dbg !338
  %83 = xor <4 x i32> %82, %76, !dbg !339
  %84 = shufflevector <4 x i32> %83, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !339
  %85 = shl <4 x i32> %84, <i32 7, i32 7, i32 7, i32 7>, !dbg !339
  %86 = lshr <4 x i32> %84, <i32 25, i32 25, i32 25, i32 25>, !dbg !339
  %87 = or <4 x i32> %85, %86, !dbg !339
  %88 = add nsw i32 %35, -2, !dbg !340
  %89 = icmp eq i32 %88, 0, !dbg !341
  br i1 %89, label %90, label %34, !dbg !330, !llvm.loop !342

; <label>:90:                                     ; preds = %34
  %91 = extractelement <4 x i32> %77, i32 0, !dbg !306
  %92 = add i32 %91, %14, !dbg !306
  %93 = extractelement <4 x i32> %77, i32 1, !dbg !345
  %94 = add i32 %93, %15, !dbg !345
  %95 = extractelement <4 x i32> %77, i32 2, !dbg !346
  %96 = add i32 %95, %16, !dbg !346
  %97 = extractelement <4 x i32> %77, i32 3, !dbg !347
  %98 = add i32 %97, %17, !dbg !347
  %99 = extractelement <4 x i32> %87, i32 0, !dbg !348
  %100 = add i32 %99, %18, !dbg !348
  %101 = extractelement <4 x i32> %87, i32 1, !dbg !349
  %102 = add i32 %101, %19, !dbg !349
  %103 = extractelement <4 x i32> %87, i32 2, !dbg !350
  %104 = add i32 %103, %20, !dbg !350
  %105 = extractelement <4 x i32> %87, i32 3, !dbg !351
  %106 = add i32 %105, %21, !dbg !351
  %107 = extractelement <4 x i32> %82, i32 2, !dbg !352
  %108 = add i32 %107, %22, !dbg !352
  %109 = extractelement <4 x i32> %82, i32 3, !dbg !353
  %110 = add i32 %109, %23, !dbg !353
  %111 = extractelement <4 x i32> %82, i32 0, !dbg !354
  %112 = add i32 %111, %24, !dbg !354
  %113 = extractelement <4 x i32> %82, i32 1, !dbg !355
  %114 = add i32 %113, %25, !dbg !355
  %115 = extractelement <4 x i32> %81, i32 1, !dbg !356
  %116 = add i32 %115, %28, !dbg !356
  %117 = extractelement <4 x i32> %81, i32 2, !dbg !357
  %118 = add i32 %117, %29, !dbg !357
  %119 = extractelement <4 x i32> %81, i32 3, !dbg !358
  %120 = add i32 %119, %11, !dbg !358
  %121 = extractelement <4 x i32> %81, i32 0, !dbg !359
  %122 = add i32 %121, %12, !dbg !359
  %123 = add i32 %28, 1, !dbg !360
  %124 = icmp eq i32 %123, 0, !dbg !361
  %125 = zext i1 %124 to i32, !dbg !363
  %126 = add i32 %29, %125, !dbg !363
  %127 = trunc i32 %92 to i8, !dbg !364
  store i8 %127, i8* %30, align 1, !dbg !364, !tbaa !366
  %128 = lshr i32 %92, 8, !dbg !364
  %129 = trunc i32 %128 to i8, !dbg !364
  %130 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !364
  store i8 %129, i8* %130, align 1, !dbg !364, !tbaa !366
  %131 = lshr i32 %92, 16, !dbg !364
  %132 = trunc i32 %131 to i8, !dbg !364
  %133 = getelementptr inbounds i8, i8* %30, i64 2, !dbg !364
  store i8 %132, i8* %133, align 1, !dbg !364, !tbaa !366
  %134 = lshr i32 %92, 24, !dbg !364
  %135 = trunc i32 %134 to i8, !dbg !364
  %136 = getelementptr inbounds i8, i8* %30, i64 3, !dbg !364
  store i8 %135, i8* %136, align 1, !dbg !364, !tbaa !366
  %137 = trunc i32 %94 to i8, !dbg !367
  %138 = getelementptr inbounds i8, i8* %30, i64 4, !dbg !367
  store i8 %137, i8* %138, align 1, !dbg !367, !tbaa !366
  %139 = lshr i32 %94, 8, !dbg !367
  %140 = trunc i32 %139 to i8, !dbg !367
  %141 = getelementptr inbounds i8, i8* %30, i64 5, !dbg !367
  store i8 %140, i8* %141, align 1, !dbg !367, !tbaa !366
  %142 = lshr i32 %94, 16, !dbg !367
  %143 = trunc i32 %142 to i8, !dbg !367
  %144 = getelementptr inbounds i8, i8* %30, i64 6, !dbg !367
  store i8 %143, i8* %144, align 1, !dbg !367, !tbaa !366
  %145 = lshr i32 %94, 24, !dbg !367
  %146 = trunc i32 %145 to i8, !dbg !367
  %147 = getelementptr inbounds i8, i8* %30, i64 7, !dbg !367
  store i8 %146, i8* %147, align 1, !dbg !367, !tbaa !366
  %148 = trunc i32 %96 to i8, !dbg !369
  %149 = getelementptr inbounds i8, i8* %30, i64 8, !dbg !369
  store i8 %148, i8* %149, align 1, !dbg !369, !tbaa !366
  %150 = lshr i32 %96, 8, !dbg !369
  %151 = trunc i32 %150 to i8, !dbg !369
  %152 = getelementptr inbounds i8, i8* %30, i64 9, !dbg !369
  store i8 %151, i8* %152, align 1, !dbg !369, !tbaa !366
  %153 = lshr i32 %96, 16, !dbg !369
  %154 = trunc i32 %153 to i8, !dbg !369
  %155 = getelementptr inbounds i8, i8* %30, i64 10, !dbg !369
  store i8 %154, i8* %155, align 1, !dbg !369, !tbaa !366
  %156 = lshr i32 %96, 24, !dbg !369
  %157 = trunc i32 %156 to i8, !dbg !369
  %158 = getelementptr inbounds i8, i8* %30, i64 11, !dbg !369
  store i8 %157, i8* %158, align 1, !dbg !369, !tbaa !366
  %159 = trunc i32 %98 to i8, !dbg !371
  %160 = getelementptr inbounds i8, i8* %30, i64 12, !dbg !371
  store i8 %159, i8* %160, align 1, !dbg !371, !tbaa !366
  %161 = lshr i32 %98, 8, !dbg !371
  %162 = trunc i32 %161 to i8, !dbg !371
  %163 = getelementptr inbounds i8, i8* %30, i64 13, !dbg !371
  store i8 %162, i8* %163, align 1, !dbg !371, !tbaa !366
  %164 = lshr i32 %98, 16, !dbg !371
  %165 = trunc i32 %164 to i8, !dbg !371
  %166 = getelementptr inbounds i8, i8* %30, i64 14, !dbg !371
  store i8 %165, i8* %166, align 1, !dbg !371, !tbaa !366
  %167 = lshr i32 %98, 24, !dbg !371
  %168 = trunc i32 %167 to i8, !dbg !371
  %169 = getelementptr inbounds i8, i8* %30, i64 15, !dbg !371
  store i8 %168, i8* %169, align 1, !dbg !371, !tbaa !366
  %170 = trunc i32 %100 to i8, !dbg !373
  %171 = getelementptr inbounds i8, i8* %30, i64 16, !dbg !373
  store i8 %170, i8* %171, align 1, !dbg !373, !tbaa !366
  %172 = lshr i32 %100, 8, !dbg !373
  %173 = trunc i32 %172 to i8, !dbg !373
  %174 = getelementptr inbounds i8, i8* %30, i64 17, !dbg !373
  store i8 %173, i8* %174, align 1, !dbg !373, !tbaa !366
  %175 = lshr i32 %100, 16, !dbg !373
  %176 = trunc i32 %175 to i8, !dbg !373
  %177 = getelementptr inbounds i8, i8* %30, i64 18, !dbg !373
  store i8 %176, i8* %177, align 1, !dbg !373, !tbaa !366
  %178 = lshr i32 %100, 24, !dbg !373
  %179 = trunc i32 %178 to i8, !dbg !373
  %180 = getelementptr inbounds i8, i8* %30, i64 19, !dbg !373
  store i8 %179, i8* %180, align 1, !dbg !373, !tbaa !366
  %181 = trunc i32 %102 to i8, !dbg !375
  %182 = getelementptr inbounds i8, i8* %30, i64 20, !dbg !375
  store i8 %181, i8* %182, align 1, !dbg !375, !tbaa !366
  %183 = lshr i32 %102, 8, !dbg !375
  %184 = trunc i32 %183 to i8, !dbg !375
  %185 = getelementptr inbounds i8, i8* %30, i64 21, !dbg !375
  store i8 %184, i8* %185, align 1, !dbg !375, !tbaa !366
  %186 = lshr i32 %102, 16, !dbg !375
  %187 = trunc i32 %186 to i8, !dbg !375
  %188 = getelementptr inbounds i8, i8* %30, i64 22, !dbg !375
  store i8 %187, i8* %188, align 1, !dbg !375, !tbaa !366
  %189 = lshr i32 %102, 24, !dbg !375
  %190 = trunc i32 %189 to i8, !dbg !375
  %191 = getelementptr inbounds i8, i8* %30, i64 23, !dbg !375
  store i8 %190, i8* %191, align 1, !dbg !375, !tbaa !366
  %192 = trunc i32 %104 to i8, !dbg !377
  %193 = getelementptr inbounds i8, i8* %30, i64 24, !dbg !377
  store i8 %192, i8* %193, align 1, !dbg !377, !tbaa !366
  %194 = lshr i32 %104, 8, !dbg !377
  %195 = trunc i32 %194 to i8, !dbg !377
  %196 = getelementptr inbounds i8, i8* %30, i64 25, !dbg !377
  store i8 %195, i8* %196, align 1, !dbg !377, !tbaa !366
  %197 = lshr i32 %104, 16, !dbg !377
  %198 = trunc i32 %197 to i8, !dbg !377
  %199 = getelementptr inbounds i8, i8* %30, i64 26, !dbg !377
  store i8 %198, i8* %199, align 1, !dbg !377, !tbaa !366
  %200 = lshr i32 %104, 24, !dbg !377
  %201 = trunc i32 %200 to i8, !dbg !377
  %202 = getelementptr inbounds i8, i8* %30, i64 27, !dbg !377
  store i8 %201, i8* %202, align 1, !dbg !377, !tbaa !366
  %203 = trunc i32 %106 to i8, !dbg !379
  %204 = getelementptr inbounds i8, i8* %30, i64 28, !dbg !379
  store i8 %203, i8* %204, align 1, !dbg !379, !tbaa !366
  %205 = lshr i32 %106, 8, !dbg !379
  %206 = trunc i32 %205 to i8, !dbg !379
  %207 = getelementptr inbounds i8, i8* %30, i64 29, !dbg !379
  store i8 %206, i8* %207, align 1, !dbg !379, !tbaa !366
  %208 = lshr i32 %106, 16, !dbg !379
  %209 = trunc i32 %208 to i8, !dbg !379
  %210 = getelementptr inbounds i8, i8* %30, i64 30, !dbg !379
  store i8 %209, i8* %210, align 1, !dbg !379, !tbaa !366
  %211 = lshr i32 %106, 24, !dbg !379
  %212 = trunc i32 %211 to i8, !dbg !379
  %213 = getelementptr inbounds i8, i8* %30, i64 31, !dbg !379
  store i8 %212, i8* %213, align 1, !dbg !379, !tbaa !366
  %214 = trunc i32 %108 to i8, !dbg !381
  %215 = getelementptr inbounds i8, i8* %30, i64 32, !dbg !381
  store i8 %214, i8* %215, align 1, !dbg !381, !tbaa !366
  %216 = lshr i32 %108, 8, !dbg !381
  %217 = trunc i32 %216 to i8, !dbg !381
  %218 = getelementptr inbounds i8, i8* %30, i64 33, !dbg !381
  store i8 %217, i8* %218, align 1, !dbg !381, !tbaa !366
  %219 = lshr i32 %108, 16, !dbg !381
  %220 = trunc i32 %219 to i8, !dbg !381
  %221 = getelementptr inbounds i8, i8* %30, i64 34, !dbg !381
  store i8 %220, i8* %221, align 1, !dbg !381, !tbaa !366
  %222 = lshr i32 %108, 24, !dbg !381
  %223 = trunc i32 %222 to i8, !dbg !381
  %224 = getelementptr inbounds i8, i8* %30, i64 35, !dbg !381
  store i8 %223, i8* %224, align 1, !dbg !381, !tbaa !366
  %225 = trunc i32 %110 to i8, !dbg !383
  %226 = getelementptr inbounds i8, i8* %30, i64 36, !dbg !383
  store i8 %225, i8* %226, align 1, !dbg !383, !tbaa !366
  %227 = lshr i32 %110, 8, !dbg !383
  %228 = trunc i32 %227 to i8, !dbg !383
  %229 = getelementptr inbounds i8, i8* %30, i64 37, !dbg !383
  store i8 %228, i8* %229, align 1, !dbg !383, !tbaa !366
  %230 = lshr i32 %110, 16, !dbg !383
  %231 = trunc i32 %230 to i8, !dbg !383
  %232 = getelementptr inbounds i8, i8* %30, i64 38, !dbg !383
  store i8 %231, i8* %232, align 1, !dbg !383, !tbaa !366
  %233 = lshr i32 %110, 24, !dbg !383
  %234 = trunc i32 %233 to i8, !dbg !383
  %235 = getelementptr inbounds i8, i8* %30, i64 39, !dbg !383
  store i8 %234, i8* %235, align 1, !dbg !383, !tbaa !366
  %236 = trunc i32 %112 to i8, !dbg !385
  %237 = getelementptr inbounds i8, i8* %30, i64 40, !dbg !385
  store i8 %236, i8* %237, align 1, !dbg !385, !tbaa !366
  %238 = lshr i32 %112, 8, !dbg !385
  %239 = trunc i32 %238 to i8, !dbg !385
  %240 = getelementptr inbounds i8, i8* %30, i64 41, !dbg !385
  store i8 %239, i8* %240, align 1, !dbg !385, !tbaa !366
  %241 = lshr i32 %112, 16, !dbg !385
  %242 = trunc i32 %241 to i8, !dbg !385
  %243 = getelementptr inbounds i8, i8* %30, i64 42, !dbg !385
  store i8 %242, i8* %243, align 1, !dbg !385, !tbaa !366
  %244 = lshr i32 %112, 24, !dbg !385
  %245 = trunc i32 %244 to i8, !dbg !385
  %246 = getelementptr inbounds i8, i8* %30, i64 43, !dbg !385
  store i8 %245, i8* %246, align 1, !dbg !385, !tbaa !366
  %247 = trunc i32 %114 to i8, !dbg !387
  %248 = getelementptr inbounds i8, i8* %30, i64 44, !dbg !387
  store i8 %247, i8* %248, align 1, !dbg !387, !tbaa !366
  %249 = lshr i32 %114, 8, !dbg !387
  %250 = trunc i32 %249 to i8, !dbg !387
  %251 = getelementptr inbounds i8, i8* %30, i64 45, !dbg !387
  store i8 %250, i8* %251, align 1, !dbg !387, !tbaa !366
  %252 = lshr i32 %114, 16, !dbg !387
  %253 = trunc i32 %252 to i8, !dbg !387
  %254 = getelementptr inbounds i8, i8* %30, i64 46, !dbg !387
  store i8 %253, i8* %254, align 1, !dbg !387, !tbaa !366
  %255 = lshr i32 %114, 24, !dbg !387
  %256 = trunc i32 %255 to i8, !dbg !387
  %257 = getelementptr inbounds i8, i8* %30, i64 47, !dbg !387
  store i8 %256, i8* %257, align 1, !dbg !387, !tbaa !366
  %258 = trunc i32 %116 to i8, !dbg !389
  %259 = getelementptr inbounds i8, i8* %30, i64 48, !dbg !389
  store i8 %258, i8* %259, align 1, !dbg !389, !tbaa !366
  %260 = lshr i32 %116, 8, !dbg !389
  %261 = trunc i32 %260 to i8, !dbg !389
  %262 = getelementptr inbounds i8, i8* %30, i64 49, !dbg !389
  store i8 %261, i8* %262, align 1, !dbg !389, !tbaa !366
  %263 = lshr i32 %116, 16, !dbg !389
  %264 = trunc i32 %263 to i8, !dbg !389
  %265 = getelementptr inbounds i8, i8* %30, i64 50, !dbg !389
  store i8 %264, i8* %265, align 1, !dbg !389, !tbaa !366
  %266 = lshr i32 %116, 24, !dbg !389
  %267 = trunc i32 %266 to i8, !dbg !389
  %268 = getelementptr inbounds i8, i8* %30, i64 51, !dbg !389
  store i8 %267, i8* %268, align 1, !dbg !389, !tbaa !366
  %269 = trunc i32 %118 to i8, !dbg !391
  %270 = getelementptr inbounds i8, i8* %30, i64 52, !dbg !391
  store i8 %269, i8* %270, align 1, !dbg !391, !tbaa !366
  %271 = lshr i32 %118, 8, !dbg !391
  %272 = trunc i32 %271 to i8, !dbg !391
  %273 = getelementptr inbounds i8, i8* %30, i64 53, !dbg !391
  store i8 %272, i8* %273, align 1, !dbg !391, !tbaa !366
  %274 = lshr i32 %118, 16, !dbg !391
  %275 = trunc i32 %274 to i8, !dbg !391
  %276 = getelementptr inbounds i8, i8* %30, i64 54, !dbg !391
  store i8 %275, i8* %276, align 1, !dbg !391, !tbaa !366
  %277 = lshr i32 %118, 24, !dbg !391
  %278 = trunc i32 %277 to i8, !dbg !391
  %279 = getelementptr inbounds i8, i8* %30, i64 55, !dbg !391
  store i8 %278, i8* %279, align 1, !dbg !391, !tbaa !366
  %280 = trunc i32 %120 to i8, !dbg !393
  %281 = getelementptr inbounds i8, i8* %30, i64 56, !dbg !393
  store i8 %280, i8* %281, align 1, !dbg !393, !tbaa !366
  %282 = lshr i32 %120, 8, !dbg !393
  %283 = trunc i32 %282 to i8, !dbg !393
  %284 = getelementptr inbounds i8, i8* %30, i64 57, !dbg !393
  store i8 %283, i8* %284, align 1, !dbg !393, !tbaa !366
  %285 = lshr i32 %120, 16, !dbg !393
  %286 = trunc i32 %285 to i8, !dbg !393
  %287 = getelementptr inbounds i8, i8* %30, i64 58, !dbg !393
  store i8 %286, i8* %287, align 1, !dbg !393, !tbaa !366
  %288 = lshr i32 %120, 24, !dbg !393
  %289 = trunc i32 %288 to i8, !dbg !393
  %290 = getelementptr inbounds i8, i8* %30, i64 59, !dbg !393
  store i8 %289, i8* %290, align 1, !dbg !393, !tbaa !366
  %291 = trunc i32 %122 to i8, !dbg !395
  %292 = getelementptr inbounds i8, i8* %30, i64 60, !dbg !395
  store i8 %291, i8* %292, align 1, !dbg !395, !tbaa !366
  %293 = lshr i32 %122, 8, !dbg !395
  %294 = trunc i32 %293 to i8, !dbg !395
  %295 = getelementptr inbounds i8, i8* %30, i64 61, !dbg !395
  store i8 %294, i8* %295, align 1, !dbg !395, !tbaa !366
  %296 = lshr i32 %122, 16, !dbg !395
  %297 = trunc i32 %296 to i8, !dbg !395
  %298 = getelementptr inbounds i8, i8* %30, i64 62, !dbg !395
  store i8 %297, i8* %298, align 1, !dbg !395, !tbaa !366
  %299 = lshr i32 %122, 24, !dbg !395
  %300 = trunc i32 %299 to i8, !dbg !395
  %301 = getelementptr inbounds i8, i8* %30, i64 63, !dbg !395
  store i8 %300, i8* %301, align 1, !dbg !395, !tbaa !366
  %302 = icmp ult i32 %27, 65, !dbg !397
  br i1 %302, label %306, label %303, !dbg !399

; <label>:303:                                    ; preds = %90
  %304 = add nsw i32 %27, -64, !dbg !400
  %305 = getelementptr inbounds i8, i8* %30, i64 64, !dbg !401
  br label %26, !dbg !402, !llvm.loop !403

; <label>:306:                                    ; preds = %90
  %307 = add i32 %9, 16, !dbg !310
  store i32 %307, i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 12), align 8, !dbg !406, !tbaa !106
  store i32 %126, i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 13), align 4, !dbg !408, !tbaa !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  %308 = icmp eq i8* %0, null, !dbg !410
  br i1 %308, label %409, label %309, !dbg !411

; <label>:309:                                    ; preds = %306
  %310 = icmp ult i64 %1, 40, !dbg !412
  %311 = select i1 %310, i64 %1, i64 40, !dbg !412
  %312 = icmp eq i64 %311, 0, !dbg !415
  br i1 %312, label %409, label %313, !dbg !418

; <label>:313:                                    ; preds = %309
  %314 = icmp ult i64 %311, 32, !dbg !419
  br i1 %314, label %398, label %315, !dbg !419

; <label>:315:                                    ; preds = %313
  %316 = getelementptr %struct._rsx, %struct._rsx* %3, i64 0, i32 1, i64 0, !dbg !419
  %317 = getelementptr %struct._rsx, %struct._rsx* %3, i64 0, i32 0, i32 0, i64 15, !dbg !419
  %318 = bitcast i32* %317 to i8*
  %319 = xor i64 %1, -1, !dbg !419
  %320 = icmp ugt i64 %319, -41, !dbg !419
  %321 = select i1 %320, i64 %319, i64 -41, !dbg !419
  %322 = sub nsw i64 3, %321, !dbg !419
  %323 = getelementptr i8, i8* %318, i64 %322, !dbg !419
  %324 = getelementptr i8, i8* %0, i64 %311, !dbg !419
  %325 = icmp ult i8* %316, %324, !dbg !419
  %326 = icmp ugt i8* %323, %0, !dbg !419
  %327 = and i1 %325, %326, !dbg !419
  br i1 %327, label %398, label %328, !dbg !419

; <label>:328:                                    ; preds = %315
  %329 = and i64 %311, 32, !dbg !419
  %330 = add nsw i64 %329, -32, !dbg !419
  %331 = lshr exact i64 %330, 5, !dbg !419
  %332 = add nuw nsw i64 %331, 1, !dbg !419
  %333 = and i64 %332, 1, !dbg !419
  %334 = icmp eq i64 %330, 0, !dbg !419
  br i1 %334, label %376, label %335, !dbg !419

; <label>:335:                                    ; preds = %328
  %336 = sub nsw i64 %332, %333, !dbg !419
  br label %337, !dbg !419

; <label>:337:                                    ; preds = %337, %335
  %338 = phi i64 [ 0, %335 ], [ %373, %337 ], !dbg !420
  %339 = phi i64 [ %336, %335 ], [ %374, %337 ]
  %340 = getelementptr inbounds i8, i8* %0, i64 %338, !dbg !419
  %341 = bitcast i8* %340 to <16 x i8>*, !dbg !419
  %342 = load <16 x i8>, <16 x i8>* %341, align 1, !dbg !419, !tbaa !366, !alias.scope !421
  %343 = getelementptr inbounds i8, i8* %340, i64 16, !dbg !419
  %344 = bitcast i8* %343 to <16 x i8>*, !dbg !419
  %345 = load <16 x i8>, <16 x i8>* %344, align 1, !dbg !419, !tbaa !366, !alias.scope !421
  %346 = getelementptr inbounds %struct._rsx, %struct._rsx* %3, i64 0, i32 1, i64 %338, !dbg !424
  %347 = bitcast i8* %346 to <16 x i8>*, !dbg !425
  %348 = load <16 x i8>, <16 x i8>* %347, align 1, !dbg !425, !tbaa !366, !alias.scope !426, !noalias !421
  %349 = getelementptr inbounds i8, i8* %346, i64 16, !dbg !425
  %350 = bitcast i8* %349 to <16 x i8>*, !dbg !425
  %351 = load <16 x i8>, <16 x i8>* %350, align 1, !dbg !425, !tbaa !366, !alias.scope !426, !noalias !421
  %352 = xor <16 x i8> %348, %342, !dbg !425
  %353 = xor <16 x i8> %351, %345, !dbg !425
  %354 = bitcast i8* %346 to <16 x i8>*, !dbg !425
  store <16 x i8> %352, <16 x i8>* %354, align 1, !dbg !425, !tbaa !366, !alias.scope !426, !noalias !421
  %355 = bitcast i8* %349 to <16 x i8>*, !dbg !425
  store <16 x i8> %353, <16 x i8>* %355, align 1, !dbg !425, !tbaa !366, !alias.scope !426, !noalias !421
  %356 = or i64 %338, 32, !dbg !420
  %357 = getelementptr inbounds i8, i8* %0, i64 %356, !dbg !419
  %358 = bitcast i8* %357 to <16 x i8>*, !dbg !419
  %359 = load <16 x i8>, <16 x i8>* %358, align 1, !dbg !419, !tbaa !366, !alias.scope !421
  %360 = getelementptr inbounds i8, i8* %357, i64 16, !dbg !419
  %361 = bitcast i8* %360 to <16 x i8>*, !dbg !419
  %362 = load <16 x i8>, <16 x i8>* %361, align 1, !dbg !419, !tbaa !366, !alias.scope !421
  %363 = getelementptr inbounds %struct._rsx, %struct._rsx* %3, i64 0, i32 1, i64 %356, !dbg !424
  %364 = bitcast i8* %363 to <16 x i8>*, !dbg !425
  %365 = load <16 x i8>, <16 x i8>* %364, align 1, !dbg !425, !tbaa !366, !alias.scope !426, !noalias !421
  %366 = getelementptr inbounds i8, i8* %363, i64 16, !dbg !425
  %367 = bitcast i8* %366 to <16 x i8>*, !dbg !425
  %368 = load <16 x i8>, <16 x i8>* %367, align 1, !dbg !425, !tbaa !366, !alias.scope !426, !noalias !421
  %369 = xor <16 x i8> %365, %359, !dbg !425
  %370 = xor <16 x i8> %368, %362, !dbg !425
  %371 = bitcast i8* %363 to <16 x i8>*, !dbg !425
  store <16 x i8> %369, <16 x i8>* %371, align 1, !dbg !425, !tbaa !366, !alias.scope !426, !noalias !421
  %372 = bitcast i8* %366 to <16 x i8>*, !dbg !425
  store <16 x i8> %370, <16 x i8>* %372, align 1, !dbg !425, !tbaa !366, !alias.scope !426, !noalias !421
  %373 = add i64 %338, 64, !dbg !420
  %374 = add i64 %339, -2, !dbg !420
  %375 = icmp eq i64 %374, 0, !dbg !420
  br i1 %375, label %376, label %337, !dbg !420, !llvm.loop !428

; <label>:376:                                    ; preds = %337, %328
  %377 = phi i64 [ 0, %328 ], [ %373, %337 ]
  %378 = icmp eq i64 %333, 0, !dbg !420
  br i1 %378, label %396, label %379, !dbg !420

; <label>:379:                                    ; preds = %376
  %380 = getelementptr inbounds i8, i8* %0, i64 %377, !dbg !419
  %381 = bitcast i8* %380 to <16 x i8>*, !dbg !419
  %382 = load <16 x i8>, <16 x i8>* %381, align 1, !dbg !419, !tbaa !366, !alias.scope !421
  %383 = getelementptr inbounds i8, i8* %380, i64 16, !dbg !419
  %384 = bitcast i8* %383 to <16 x i8>*, !dbg !419
  %385 = load <16 x i8>, <16 x i8>* %384, align 1, !dbg !419, !tbaa !366, !alias.scope !421
  %386 = getelementptr inbounds %struct._rsx, %struct._rsx* %3, i64 0, i32 1, i64 %377, !dbg !424
  %387 = bitcast i8* %386 to <16 x i8>*, !dbg !425
  %388 = load <16 x i8>, <16 x i8>* %387, align 1, !dbg !425, !tbaa !366, !alias.scope !426, !noalias !421
  %389 = getelementptr inbounds i8, i8* %386, i64 16, !dbg !425
  %390 = bitcast i8* %389 to <16 x i8>*, !dbg !425
  %391 = load <16 x i8>, <16 x i8>* %390, align 1, !dbg !425, !tbaa !366, !alias.scope !426, !noalias !421
  %392 = xor <16 x i8> %388, %382, !dbg !425
  %393 = xor <16 x i8> %391, %385, !dbg !425
  %394 = bitcast i8* %386 to <16 x i8>*, !dbg !425
  store <16 x i8> %392, <16 x i8>* %394, align 1, !dbg !425, !tbaa !366, !alias.scope !426, !noalias !421
  %395 = bitcast i8* %389 to <16 x i8>*, !dbg !425
  store <16 x i8> %393, <16 x i8>* %395, align 1, !dbg !425, !tbaa !366, !alias.scope !426, !noalias !421
  br label %396

; <label>:396:                                    ; preds = %376, %379
  %397 = icmp eq i64 %311, %329
  br i1 %397, label %409, label %398, !dbg !419

; <label>:398:                                    ; preds = %396, %315, %313
  %399 = phi i64 [ 0, %315 ], [ 0, %313 ], [ %329, %396 ]
  br label %400, !dbg !419

; <label>:400:                                    ; preds = %398, %400
  %401 = phi i64 [ %407, %400 ], [ %399, %398 ]
  %402 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !419
  %403 = load i8, i8* %402, align 1, !dbg !419, !tbaa !366
  %404 = getelementptr inbounds %struct._rsx, %struct._rsx* %3, i64 0, i32 1, i64 %401, !dbg !424
  %405 = load i8, i8* %404, align 1, !dbg !425, !tbaa !366
  %406 = xor i8 %405, %403, !dbg !425
  store i8 %406, i8* %404, align 1, !dbg !425, !tbaa !366
  %407 = add nuw nsw i64 %401, 1, !dbg !420
  %408 = icmp ult i64 %407, %311, !dbg !415
  br i1 %408, label %400, label %409, !dbg !418, !llvm.loop !431

; <label>:409:                                    ; preds = %400, %396, %309, %306
  tail call fastcc void @_rs_init(i8* nonnull %4) #7, !dbg !432
  %410 = load %struct._rsx*, %struct._rsx** @rsx, align 8, !dbg !433, !tbaa !96
  %411 = getelementptr inbounds %struct._rsx, %struct._rsx* %410, i64 0, i32 1, i64 0, !dbg !433
  %412 = tail call i8* @memset(i8* nonnull %411, i32 0, i64 40) #6, !dbg !434
  store i64 984, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !435, !tbaa !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !436
  ret void, !dbg !436
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @getentropy(i8*, i64) local_unnamed_addr #4

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc void @_rs_init(i8* readonly) unnamed_addr #3 !dbg !437 {
  %2 = load %struct._rs*, %struct._rs** @rs, align 8, !dbg !443, !tbaa !96
  %3 = icmp eq %struct._rs* %2, null, !dbg !445
  br i1 %3, label %6, label %4, !dbg !446

; <label>:4:                                      ; preds = %1
  %5 = load %struct._rsx*, %struct._rsx** @rsx, align 8, !dbg !447, !tbaa !96
  br label %7, !dbg !446

; <label>:6:                                      ; preds = %1
  store %struct._rs* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0), %struct._rs** @rs, align 8, !dbg !462, !tbaa !96
  store %struct._rsx* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1), %struct._rsx** @rsx, align 8, !dbg !463, !tbaa !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  br label %7, !dbg !465

; <label>:7:                                      ; preds = %4, %6
  %8 = phi %struct._rsx* [ %5, %4 ], [ getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1), %6 ], !dbg !447
  %9 = load i8, i8* %0, align 1, !dbg !481, !tbaa !366
  %10 = zext i8 %9 to i32, !dbg !481
  %11 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !481
  %12 = load i8, i8* %11, align 1, !dbg !481, !tbaa !366
  %13 = zext i8 %12 to i32, !dbg !481
  %14 = shl nuw nsw i32 %13, 8, !dbg !481
  %15 = or i32 %14, %10, !dbg !481
  %16 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !481
  %17 = load i8, i8* %16, align 1, !dbg !481, !tbaa !366
  %18 = zext i8 %17 to i32, !dbg !481
  %19 = shl nuw nsw i32 %18, 16, !dbg !481
  %20 = or i32 %15, %19, !dbg !481
  %21 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !481
  %22 = load i8, i8* %21, align 1, !dbg !481, !tbaa !366
  %23 = zext i8 %22 to i32, !dbg !481
  %24 = shl nuw i32 %23, 24, !dbg !481
  %25 = or i32 %20, %24, !dbg !481
  %26 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 4, !dbg !482
  store i32 %25, i32* %26, align 4, !dbg !483, !tbaa !106
  %27 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !484
  %28 = load i8, i8* %27, align 1, !dbg !484, !tbaa !366
  %29 = zext i8 %28 to i32, !dbg !484
  %30 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !484
  %31 = load i8, i8* %30, align 1, !dbg !484, !tbaa !366
  %32 = zext i8 %31 to i32, !dbg !484
  %33 = shl nuw nsw i32 %32, 8, !dbg !484
  %34 = or i32 %33, %29, !dbg !484
  %35 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !484
  %36 = load i8, i8* %35, align 1, !dbg !484, !tbaa !366
  %37 = zext i8 %36 to i32, !dbg !484
  %38 = shl nuw nsw i32 %37, 16, !dbg !484
  %39 = or i32 %34, %38, !dbg !484
  %40 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !484
  %41 = load i8, i8* %40, align 1, !dbg !484, !tbaa !366
  %42 = zext i8 %41 to i32, !dbg !484
  %43 = shl nuw i32 %42, 24, !dbg !484
  %44 = or i32 %39, %43, !dbg !484
  %45 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 5, !dbg !485
  store i32 %44, i32* %45, align 4, !dbg !486, !tbaa !106
  %46 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !487
  %47 = load i8, i8* %46, align 1, !dbg !487, !tbaa !366
  %48 = zext i8 %47 to i32, !dbg !487
  %49 = getelementptr inbounds i8, i8* %0, i64 9, !dbg !487
  %50 = load i8, i8* %49, align 1, !dbg !487, !tbaa !366
  %51 = zext i8 %50 to i32, !dbg !487
  %52 = shl nuw nsw i32 %51, 8, !dbg !487
  %53 = or i32 %52, %48, !dbg !487
  %54 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !487
  %55 = load i8, i8* %54, align 1, !dbg !487, !tbaa !366
  %56 = zext i8 %55 to i32, !dbg !487
  %57 = shl nuw nsw i32 %56, 16, !dbg !487
  %58 = or i32 %53, %57, !dbg !487
  %59 = getelementptr inbounds i8, i8* %0, i64 11, !dbg !487
  %60 = load i8, i8* %59, align 1, !dbg !487, !tbaa !366
  %61 = zext i8 %60 to i32, !dbg !487
  %62 = shl nuw i32 %61, 24, !dbg !487
  %63 = or i32 %58, %62, !dbg !487
  %64 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 6, !dbg !488
  store i32 %63, i32* %64, align 4, !dbg !489, !tbaa !106
  %65 = getelementptr inbounds i8, i8* %0, i64 12, !dbg !490
  %66 = load i8, i8* %65, align 1, !dbg !490, !tbaa !366
  %67 = zext i8 %66 to i32, !dbg !490
  %68 = getelementptr inbounds i8, i8* %0, i64 13, !dbg !490
  %69 = load i8, i8* %68, align 1, !dbg !490, !tbaa !366
  %70 = zext i8 %69 to i32, !dbg !490
  %71 = shl nuw nsw i32 %70, 8, !dbg !490
  %72 = or i32 %71, %67, !dbg !490
  %73 = getelementptr inbounds i8, i8* %0, i64 14, !dbg !490
  %74 = load i8, i8* %73, align 1, !dbg !490, !tbaa !366
  %75 = zext i8 %74 to i32, !dbg !490
  %76 = shl nuw nsw i32 %75, 16, !dbg !490
  %77 = or i32 %72, %76, !dbg !490
  %78 = getelementptr inbounds i8, i8* %0, i64 15, !dbg !490
  %79 = load i8, i8* %78, align 1, !dbg !490, !tbaa !366
  %80 = zext i8 %79 to i32, !dbg !490
  %81 = shl nuw i32 %80, 24, !dbg !490
  %82 = or i32 %77, %81, !dbg !490
  %83 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 7, !dbg !491
  store i32 %82, i32* %83, align 4, !dbg !492, !tbaa !106
  %84 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !493
  %85 = load i8, i8* %84, align 1, !dbg !496, !tbaa !366
  %86 = zext i8 %85 to i32, !dbg !496
  %87 = getelementptr inbounds i8, i8* %0, i64 17, !dbg !496
  %88 = load i8, i8* %87, align 1, !dbg !496, !tbaa !366
  %89 = zext i8 %88 to i32, !dbg !496
  %90 = shl nuw nsw i32 %89, 8, !dbg !496
  %91 = or i32 %90, %86, !dbg !496
  %92 = getelementptr inbounds i8, i8* %0, i64 18, !dbg !496
  %93 = load i8, i8* %92, align 1, !dbg !496, !tbaa !366
  %94 = zext i8 %93 to i32, !dbg !496
  %95 = shl nuw nsw i32 %94, 16, !dbg !496
  %96 = or i32 %91, %95, !dbg !496
  %97 = getelementptr inbounds i8, i8* %0, i64 19, !dbg !496
  %98 = load i8, i8* %97, align 1, !dbg !496, !tbaa !366
  %99 = zext i8 %98 to i32, !dbg !496
  %100 = shl nuw i32 %99, 24, !dbg !496
  %101 = or i32 %96, %100, !dbg !496
  %102 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 8, !dbg !497
  store i32 %101, i32* %102, align 4, !dbg !498, !tbaa !106
  %103 = getelementptr inbounds i8, i8* %0, i64 20, !dbg !499
  %104 = load i8, i8* %103, align 1, !dbg !499, !tbaa !366
  %105 = zext i8 %104 to i32, !dbg !499
  %106 = getelementptr inbounds i8, i8* %0, i64 21, !dbg !499
  %107 = load i8, i8* %106, align 1, !dbg !499, !tbaa !366
  %108 = zext i8 %107 to i32, !dbg !499
  %109 = shl nuw nsw i32 %108, 8, !dbg !499
  %110 = or i32 %109, %105, !dbg !499
  %111 = getelementptr inbounds i8, i8* %0, i64 22, !dbg !499
  %112 = load i8, i8* %111, align 1, !dbg !499, !tbaa !366
  %113 = zext i8 %112 to i32, !dbg !499
  %114 = shl nuw nsw i32 %113, 16, !dbg !499
  %115 = or i32 %110, %114, !dbg !499
  %116 = getelementptr inbounds i8, i8* %0, i64 23, !dbg !499
  %117 = load i8, i8* %116, align 1, !dbg !499, !tbaa !366
  %118 = zext i8 %117 to i32, !dbg !499
  %119 = shl nuw i32 %118, 24, !dbg !499
  %120 = or i32 %115, %119, !dbg !499
  %121 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 9, !dbg !500
  store i32 %120, i32* %121, align 4, !dbg !501, !tbaa !106
  %122 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !502
  %123 = load i8, i8* %122, align 1, !dbg !502, !tbaa !366
  %124 = zext i8 %123 to i32, !dbg !502
  %125 = getelementptr inbounds i8, i8* %0, i64 25, !dbg !502
  %126 = load i8, i8* %125, align 1, !dbg !502, !tbaa !366
  %127 = zext i8 %126 to i32, !dbg !502
  %128 = shl nuw nsw i32 %127, 8, !dbg !502
  %129 = or i32 %128, %124, !dbg !502
  %130 = getelementptr inbounds i8, i8* %0, i64 26, !dbg !502
  %131 = load i8, i8* %130, align 1, !dbg !502, !tbaa !366
  %132 = zext i8 %131 to i32, !dbg !502
  %133 = shl nuw nsw i32 %132, 16, !dbg !502
  %134 = or i32 %129, %133, !dbg !502
  %135 = getelementptr inbounds i8, i8* %0, i64 27, !dbg !502
  %136 = load i8, i8* %135, align 1, !dbg !502, !tbaa !366
  %137 = zext i8 %136 to i32, !dbg !502
  %138 = shl nuw i32 %137, 24, !dbg !502
  %139 = or i32 %134, %138, !dbg !502
  %140 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 10, !dbg !503
  store i32 %139, i32* %140, align 4, !dbg !504, !tbaa !106
  %141 = getelementptr inbounds i8, i8* %0, i64 28, !dbg !505
  %142 = load i8, i8* %141, align 1, !dbg !505, !tbaa !366
  %143 = zext i8 %142 to i32, !dbg !505
  %144 = getelementptr inbounds i8, i8* %0, i64 29, !dbg !505
  %145 = load i8, i8* %144, align 1, !dbg !505, !tbaa !366
  %146 = zext i8 %145 to i32, !dbg !505
  %147 = shl nuw nsw i32 %146, 8, !dbg !505
  %148 = or i32 %147, %143, !dbg !505
  %149 = getelementptr inbounds i8, i8* %0, i64 30, !dbg !505
  %150 = load i8, i8* %149, align 1, !dbg !505, !tbaa !366
  %151 = zext i8 %150 to i32, !dbg !505
  %152 = shl nuw nsw i32 %151, 16, !dbg !505
  %153 = or i32 %148, %152, !dbg !505
  %154 = getelementptr inbounds i8, i8* %0, i64 31, !dbg !505
  %155 = load i8, i8* %154, align 1, !dbg !505, !tbaa !366
  %156 = zext i8 %155 to i32, !dbg !505
  %157 = shl nuw i32 %156, 24, !dbg !505
  %158 = or i32 %153, %157, !dbg !505
  %159 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 11, !dbg !506
  store i32 %158, i32* %159, align 4, !dbg !507, !tbaa !106
  %160 = bitcast %struct._rsx* %8 to <4 x i32>*, !dbg !508
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, <4 x i32>* %160, align 4, !dbg !508, !tbaa !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  %161 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !510
  %162 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 12, !dbg !520
  store i32 0, i32* %162, align 4, !dbg !521, !tbaa !106
  %163 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 13, !dbg !522
  store i32 0, i32* %163, align 4, !dbg !523, !tbaa !106
  %164 = load i8, i8* %161, align 1, !dbg !524, !tbaa !366
  %165 = zext i8 %164 to i32, !dbg !524
  %166 = getelementptr inbounds i8, i8* %0, i64 33, !dbg !524
  %167 = load i8, i8* %166, align 1, !dbg !524, !tbaa !366
  %168 = zext i8 %167 to i32, !dbg !524
  %169 = shl nuw nsw i32 %168, 8, !dbg !524
  %170 = or i32 %169, %165, !dbg !524
  %171 = getelementptr inbounds i8, i8* %0, i64 34, !dbg !524
  %172 = load i8, i8* %171, align 1, !dbg !524, !tbaa !366
  %173 = zext i8 %172 to i32, !dbg !524
  %174 = shl nuw nsw i32 %173, 16, !dbg !524
  %175 = or i32 %170, %174, !dbg !524
  %176 = getelementptr inbounds i8, i8* %0, i64 35, !dbg !524
  %177 = load i8, i8* %176, align 1, !dbg !524, !tbaa !366
  %178 = zext i8 %177 to i32, !dbg !524
  %179 = shl nuw i32 %178, 24, !dbg !524
  %180 = or i32 %175, %179, !dbg !524
  %181 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 14, !dbg !525
  store i32 %180, i32* %181, align 4, !dbg !526, !tbaa !106
  %182 = getelementptr inbounds i8, i8* %0, i64 36, !dbg !527
  %183 = load i8, i8* %182, align 1, !dbg !527, !tbaa !366
  %184 = zext i8 %183 to i32, !dbg !527
  %185 = getelementptr inbounds i8, i8* %0, i64 37, !dbg !527
  %186 = load i8, i8* %185, align 1, !dbg !527, !tbaa !366
  %187 = zext i8 %186 to i32, !dbg !527
  %188 = shl nuw nsw i32 %187, 8, !dbg !527
  %189 = or i32 %188, %184, !dbg !527
  %190 = getelementptr inbounds i8, i8* %0, i64 38, !dbg !527
  %191 = load i8, i8* %190, align 1, !dbg !527, !tbaa !366
  %192 = zext i8 %191 to i32, !dbg !527
  %193 = shl nuw nsw i32 %192, 16, !dbg !527
  %194 = or i32 %189, %193, !dbg !527
  %195 = getelementptr inbounds i8, i8* %0, i64 39, !dbg !527
  %196 = load i8, i8* %195, align 1, !dbg !527, !tbaa !366
  %197 = zext i8 %196 to i32, !dbg !527
  %198 = shl nuw i32 %197, 24, !dbg !527
  %199 = or i32 %194, %198, !dbg !527
  %200 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 15, !dbg !528
  store i32 %199, i32* %200, align 4, !dbg !529, !tbaa !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !531
  ret void, !dbg !531
}

; Function Attrs: noredzone
declare dso_local void @explicit_bzero(i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @raise(i32) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nobuiltin noredzone }

!llvm.module.flags = !{!63, !64, !65}
!llvm.ident = !{!66}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "rs", scope: !2, file: !3, line: 55, type: !62, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !21)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/arc4random.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7, !14, !18}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 12, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/chacha_private.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !10, line: 48, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !12, line: 79, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 11, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !10, line: 24, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !12, line: 43, baseType: !17)
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !20, line: 87, baseType: !17)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !{!22, !52, !57, !0, !59}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "_arc4random_data", scope: !2, file: !24, line: 60, type: !25, isLocal: true, isDefinition: true)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/arc4random.h", directory: "/root/.unikraft/apps/redis/build")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 57, size: 8832, elements: !26)
!26 = !{!27, !37}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !25, file: !24, line: 58, baseType: !28, size: 128)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rs", file: !3, line: 52, size: 128, elements: !29)
!29 = !{!30, !36}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "rs_have", scope: !28, file: !3, line: 53, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 40, baseType: !33)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !34, line: 129, baseType: !35)
!34 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !28, file: !3, line: 54, baseType: !31, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "rsx", scope: !25, file: !24, line: 59, baseType: !38, size: 8704, offset: 128)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rsx", file: !3, line: 58, size: 8704, elements: !39)
!39 = !{!40, !48}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "rs_chacha", scope: !38, file: !3, line: 59, baseType: !41, size: 512)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "chacha_ctx", file: !8, line: 17, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 14, size: 512, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !42, file: !8, line: 16, baseType: !45, size: 512)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 16)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "rs_buf", scope: !38, file: !3, line: 60, baseType: !49, size: 8192, offset: 512)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8192, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 1024)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "sigma", scope: !2, file: !8, line: 50, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 128, elements: !46)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "tau", scope: !2, file: !8, line: 51, type: !54, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "rsx", scope: !2, file: !3, line: 61, type: !61, isLocal: true, isDefinition: true)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!63 = !{i32 2, !"Dwarf Version", i32 4}
!64 = !{i32 2, !"Debug Info Version", i32 3}
!65 = !{i32 1, !"wchar_size", i32 4}
!66 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!67 = distinct !DISubprogram(name: "arc4random", scope: !3, file: !3, line: 179, type: !68, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !70)
!68 = !DISubroutineType(types: !69)
!69 = !{!11}
!70 = !{!71}
!71 = !DILocalVariable(name: "val", scope: !67, file: !3, line: 181, type: !9)
!72 = !DILocation(line: 181, column: 2, scope: !67)
!73 = !DILocation(line: 181, column: 11, scope: !67)
!74 = !DILocalVariable(name: "val", arg: 1, scope: !75, file: !3, line: 165, type: !78)
!75 = distinct !DISubprogram(name: "_rs_random_u32", scope: !3, file: !3, line: 165, type: !76, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !79)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !78}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!79 = !{!74, !80}
!80 = !DILocalVariable(name: "keystream", scope: !75, file: !3, line: 167, type: !18)
!81 = !DILocation(line: 165, column: 26, scope: !75, inlinedAt: !82)
!82 = distinct !DILocation(line: 186, column: 2, scope: !67)
!83 = !DILocation(line: 169, column: 2, scope: !75, inlinedAt: !82)
!84 = !DILocation(line: 170, column: 10, scope: !85, inlinedAt: !82)
!85 = distinct !DILexicalBlock(scope: !75, file: !3, line: 170, column: 6)
!86 = !{!87, !88, i64 0}
!87 = !{!"_rs", !88, i64 0, !88, i64 8}
!88 = !{!"long", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C/C++ TBAA"}
!91 = !DILocation(line: 170, column: 18, scope: !85, inlinedAt: !82)
!92 = !DILocation(line: 170, column: 6, scope: !75, inlinedAt: !82)
!93 = !DILocation(line: 171, column: 3, scope: !85, inlinedAt: !82)
!94 = !DILocation(line: 172, column: 54, scope: !75, inlinedAt: !82)
!95 = !DILocation(line: 172, column: 14, scope: !75, inlinedAt: !82)
!96 = !{!97, !97, i64 0}
!97 = !{!"any pointer", !89, i64 0}
!98 = !DILocation(line: 172, column: 26, scope: !75, inlinedAt: !82)
!99 = !DILocation(line: 172, column: 48, scope: !75, inlinedAt: !82)
!100 = !DILocation(line: 167, column: 10, scope: !75, inlinedAt: !82)
!101 = !DILocation(line: 173, column: 2, scope: !75, inlinedAt: !82)
!102 = !DILocation(line: 174, column: 2, scope: !75, inlinedAt: !82)
!103 = !DILocation(line: 175, column: 14, scope: !75, inlinedAt: !82)
!104 = !DILocation(line: 176, column: 1, scope: !75, inlinedAt: !82)
!105 = !DILocation(line: 190, column: 9, scope: !67)
!106 = !{!107, !107, i64 0}
!107 = !{!"int", !89, i64 0}
!108 = !DILocation(line: 191, column: 1, scope: !67)
!109 = !DILocation(line: 190, column: 2, scope: !67)
!110 = distinct !DISubprogram(name: "arc4random_buf", scope: !3, file: !3, line: 194, type: !111, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !113)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !6, !31}
!113 = !{!114, !115}
!114 = !DILocalVariable(name: "buf", arg: 1, scope: !110, file: !3, line: 194, type: !6)
!115 = !DILocalVariable(name: "n", arg: 2, scope: !110, file: !3, line: 194, type: !31)
!116 = !DILocation(line: 194, column: 22, scope: !110)
!117 = !DILocation(line: 194, column: 34, scope: !110)
!118 = !DILocalVariable(name: "_buf", arg: 1, scope: !119, file: !3, line: 141, type: !6)
!119 = distinct !DISubprogram(name: "_rs_random_buf", scope: !3, file: !3, line: 141, type: !111, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !120)
!120 = !{!118, !121, !122, !123, !124}
!121 = !DILocalVariable(name: "n", arg: 2, scope: !119, file: !3, line: 141, type: !31)
!122 = !DILocalVariable(name: "buf", scope: !119, file: !3, line: 143, type: !18)
!123 = !DILocalVariable(name: "keystream", scope: !119, file: !3, line: 144, type: !18)
!124 = !DILocalVariable(name: "m", scope: !119, file: !3, line: 145, type: !31)
!125 = !DILocation(line: 141, column: 22, scope: !119, inlinedAt: !126)
!126 = distinct !DILocation(line: 199, column: 2, scope: !110)
!127 = !DILocation(line: 141, column: 35, scope: !119, inlinedAt: !126)
!128 = !DILocation(line: 143, column: 10, scope: !119, inlinedAt: !126)
!129 = !DILocation(line: 147, column: 2, scope: !119, inlinedAt: !126)
!130 = !DILocation(line: 148, column: 11, scope: !119, inlinedAt: !126)
!131 = !DILocation(line: 148, column: 2, scope: !119, inlinedAt: !126)
!132 = !DILocation(line: 149, column: 11, scope: !133, inlinedAt: !126)
!133 = distinct !DILexicalBlock(scope: !134, file: !3, line: 149, column: 7)
!134 = distinct !DILexicalBlock(scope: !119, file: !3, line: 148, column: 16)
!135 = !DILocation(line: 149, column: 19, scope: !133, inlinedAt: !126)
!136 = !DILocation(line: 149, column: 7, scope: !134, inlinedAt: !126)
!137 = !DILocation(line: 150, column: 8, scope: !138, inlinedAt: !126)
!138 = distinct !DILexicalBlock(scope: !133, file: !3, line: 149, column: 24)
!139 = !DILocation(line: 145, column: 9, scope: !119, inlinedAt: !126)
!140 = !DILocation(line: 151, column: 16, scope: !138, inlinedAt: !126)
!141 = !DILocation(line: 151, column: 28, scope: !138, inlinedAt: !126)
!142 = !DILocation(line: 152, column: 8, scope: !138, inlinedAt: !126)
!143 = !DILocation(line: 144, column: 10, scope: !119, inlinedAt: !126)
!144 = !DILocation(line: 153, column: 4, scope: !138, inlinedAt: !126)
!145 = !DILocation(line: 154, column: 4, scope: !138, inlinedAt: !126)
!146 = !DILocation(line: 155, column: 8, scope: !138, inlinedAt: !126)
!147 = !DILocation(line: 156, column: 6, scope: !138, inlinedAt: !126)
!148 = !DILocation(line: 157, column: 16, scope: !138, inlinedAt: !126)
!149 = !DILocation(line: 159, column: 19, scope: !150, inlinedAt: !126)
!150 = distinct !DILexicalBlock(scope: !134, file: !3, line: 159, column: 7)
!151 = !DILocation(line: 159, column: 7, scope: !134, inlinedAt: !126)
!152 = !DILocation(line: 160, column: 4, scope: !150, inlinedAt: !126)
!153 = distinct !{!153, !154, !155}
!154 = !DILocation(line: 148, column: 2, scope: !119)
!155 = !DILocation(line: 161, column: 2, scope: !119)
!156 = !DILocation(line: 162, column: 1, scope: !119, inlinedAt: !126)
!157 = !DILocation(line: 203, column: 1, scope: !110)
!158 = distinct !DISubprogram(name: "_rs_stir_if_needed", scope: !3, file: !3, line: 106, type: !159, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !161)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !31}
!161 = !{!162}
!162 = !DILocalVariable(name: "len", arg: 1, scope: !158, file: !3, line: 106, type: !31)
!163 = !DILocalVariable(name: "rnd", scope: !164, file: !3, line: 87, type: !168)
!164 = distinct !DISubprogram(name: "_rs_stir", scope: !3, file: !3, line: 85, type: !165, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !167)
!165 = !DISubroutineType(types: !166)
!166 = !{null}
!167 = !{!163}
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 320, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 40)
!171 = !DILocation(line: 87, column: 9, scope: !164, inlinedAt: !172)
!172 = distinct !DILocation(line: 110, column: 3, scope: !173)
!173 = distinct !DILexicalBlock(scope: !158, file: !3, line: 109, column: 6)
!174 = !DILocation(line: 106, column: 27, scope: !158)
!175 = !DILocation(line: 91, column: 1, scope: !176, inlinedAt: !177)
!176 = distinct !DISubprogram(name: "_rs_forkdetect", scope: !24, file: !24, line: 86, type: !165, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!177 = distinct !DILocation(line: 108, column: 2, scope: !158)
!178 = !DILocation(line: 109, column: 7, scope: !173)
!179 = !DILocation(line: 109, column: 10, scope: !173)
!180 = !DILocation(line: 109, column: 17, scope: !173)
!181 = !{!87, !88, i64 8}
!182 = !DILocation(line: 109, column: 26, scope: !173)
!183 = !DILocation(line: 109, column: 6, scope: !158)
!184 = !DILocation(line: 87, column: 2, scope: !164, inlinedAt: !172)
!185 = !DILocation(line: 89, column: 6, scope: !186, inlinedAt: !172)
!186 = distinct !DILexicalBlock(scope: !164, file: !3, line: 89, column: 6)
!187 = !DILocation(line: 89, column: 34, scope: !186, inlinedAt: !172)
!188 = !DILocation(line: 89, column: 6, scope: !164, inlinedAt: !172)
!189 = !DILocation(line: 69, column: 2, scope: !190, inlinedAt: !191)
!190 = distinct !DISubprogram(name: "_getentropy_fail", scope: !24, file: !24, line: 64, type: !165, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!191 = distinct !DILocation(line: 90, column: 3, scope: !186, inlinedAt: !172)
!192 = !DILocation(line: 71, column: 1, scope: !190, inlinedAt: !191)
!193 = !DILocation(line: 90, column: 3, scope: !186, inlinedAt: !172)
!194 = !DILocation(line: 92, column: 7, scope: !195, inlinedAt: !172)
!195 = distinct !DILexicalBlock(scope: !164, file: !3, line: 92, column: 6)
!196 = !DILocation(line: 92, column: 6, scope: !164, inlinedAt: !172)
!197 = !DILocation(line: 93, column: 3, scope: !195, inlinedAt: !172)
!198 = !DILocation(line: 95, column: 3, scope: !195, inlinedAt: !172)
!199 = !DILocation(line: 96, column: 2, scope: !164, inlinedAt: !172)
!200 = !DILocation(line: 99, column: 14, scope: !164, inlinedAt: !172)
!201 = !DILocation(line: 100, column: 9, scope: !164, inlinedAt: !172)
!202 = !DILocation(line: 100, column: 2, scope: !164, inlinedAt: !172)
!203 = !DILocation(line: 102, column: 2, scope: !164, inlinedAt: !172)
!204 = !DILocation(line: 102, column: 15, scope: !164, inlinedAt: !172)
!205 = !DILocation(line: 103, column: 1, scope: !164, inlinedAt: !172)
!206 = !DILocation(line: 110, column: 3, scope: !173)
!207 = !DILocation(line: 111, column: 10, scope: !208)
!208 = distinct !DILexicalBlock(scope: !158, file: !3, line: 111, column: 6)
!209 = !DILocation(line: 111, column: 6, scope: !158)
!210 = !DILocation(line: 0, scope: !208)
!211 = !DILocation(line: 115, column: 1, scope: !158)
!212 = distinct !DISubprogram(name: "_rs_rekey", scope: !3, file: !3, line: 118, type: !213, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !215)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !18, !31}
!215 = !{!216, !217, !218, !221}
!216 = !DILocalVariable(name: "dat", arg: 1, scope: !212, file: !3, line: 118, type: !18)
!217 = !DILocalVariable(name: "datlen", arg: 2, scope: !212, file: !3, line: 118, type: !31)
!218 = !DILocalVariable(name: "i", scope: !219, file: !3, line: 128, type: !31)
!219 = distinct !DILexicalBlock(scope: !220, file: !3, line: 127, column: 11)
!220 = distinct !DILexicalBlock(scope: !212, file: !3, line: 127, column: 6)
!221 = !DILocalVariable(name: "m", scope: !219, file: !3, line: 128, type: !31)
!222 = !DILocation(line: 118, column: 19, scope: !212)
!223 = !DILocation(line: 118, column: 31, scope: !212)
!224 = !DILocation(line: 124, column: 24, scope: !212)
!225 = !DILocation(line: 124, column: 40, scope: !212)
!226 = !DILocalVariable(name: "x", arg: 1, scope: !227, file: !8, line: 88, type: !230)
!227 = distinct !DISubprogram(name: "chacha_encrypt_bytes", scope: !8, file: !8, line: 88, type: !228, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !234)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !230, !231, !233, !7}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!234 = !{!226, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !275}
!235 = !DILocalVariable(name: "m", arg: 2, scope: !227, file: !8, line: 88, type: !231)
!236 = !DILocalVariable(name: "c", arg: 3, scope: !227, file: !8, line: 88, type: !233)
!237 = !DILocalVariable(name: "bytes", arg: 4, scope: !227, file: !8, line: 88, type: !7)
!238 = !DILocalVariable(name: "x0", scope: !227, file: !8, line: 90, type: !7)
!239 = !DILocalVariable(name: "x1", scope: !227, file: !8, line: 90, type: !7)
!240 = !DILocalVariable(name: "x2", scope: !227, file: !8, line: 90, type: !7)
!241 = !DILocalVariable(name: "x3", scope: !227, file: !8, line: 90, type: !7)
!242 = !DILocalVariable(name: "x4", scope: !227, file: !8, line: 90, type: !7)
!243 = !DILocalVariable(name: "x5", scope: !227, file: !8, line: 90, type: !7)
!244 = !DILocalVariable(name: "x6", scope: !227, file: !8, line: 90, type: !7)
!245 = !DILocalVariable(name: "x7", scope: !227, file: !8, line: 90, type: !7)
!246 = !DILocalVariable(name: "x8", scope: !227, file: !8, line: 90, type: !7)
!247 = !DILocalVariable(name: "x9", scope: !227, file: !8, line: 90, type: !7)
!248 = !DILocalVariable(name: "x10", scope: !227, file: !8, line: 90, type: !7)
!249 = !DILocalVariable(name: "x11", scope: !227, file: !8, line: 90, type: !7)
!250 = !DILocalVariable(name: "x12", scope: !227, file: !8, line: 90, type: !7)
!251 = !DILocalVariable(name: "x13", scope: !227, file: !8, line: 90, type: !7)
!252 = !DILocalVariable(name: "x14", scope: !227, file: !8, line: 90, type: !7)
!253 = !DILocalVariable(name: "x15", scope: !227, file: !8, line: 90, type: !7)
!254 = !DILocalVariable(name: "j0", scope: !227, file: !8, line: 91, type: !7)
!255 = !DILocalVariable(name: "j1", scope: !227, file: !8, line: 91, type: !7)
!256 = !DILocalVariable(name: "j2", scope: !227, file: !8, line: 91, type: !7)
!257 = !DILocalVariable(name: "j3", scope: !227, file: !8, line: 91, type: !7)
!258 = !DILocalVariable(name: "j4", scope: !227, file: !8, line: 91, type: !7)
!259 = !DILocalVariable(name: "j5", scope: !227, file: !8, line: 91, type: !7)
!260 = !DILocalVariable(name: "j6", scope: !227, file: !8, line: 91, type: !7)
!261 = !DILocalVariable(name: "j7", scope: !227, file: !8, line: 91, type: !7)
!262 = !DILocalVariable(name: "j8", scope: !227, file: !8, line: 91, type: !7)
!263 = !DILocalVariable(name: "j9", scope: !227, file: !8, line: 91, type: !7)
!264 = !DILocalVariable(name: "j10", scope: !227, file: !8, line: 91, type: !7)
!265 = !DILocalVariable(name: "j11", scope: !227, file: !8, line: 91, type: !7)
!266 = !DILocalVariable(name: "j12", scope: !227, file: !8, line: 91, type: !7)
!267 = !DILocalVariable(name: "j13", scope: !227, file: !8, line: 91, type: !7)
!268 = !DILocalVariable(name: "j14", scope: !227, file: !8, line: 91, type: !7)
!269 = !DILocalVariable(name: "j15", scope: !227, file: !8, line: 91, type: !7)
!270 = !DILocalVariable(name: "ctarget", scope: !227, file: !8, line: 92, type: !233)
!271 = !DILocalVariable(name: "tmp", scope: !227, file: !8, line: 93, type: !272)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 64)
!275 = !DILocalVariable(name: "i", scope: !227, file: !8, line: 94, type: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !20, line: 95, baseType: !13)
!277 = !DILocation(line: 88, column: 34, scope: !227, inlinedAt: !278)
!278 = distinct !DILocation(line: 124, column: 2, scope: !212)
!279 = !DILocation(line: 88, column: 46, scope: !227, inlinedAt: !278)
!280 = !DILocation(line: 88, column: 52, scope: !227, inlinedAt: !278)
!281 = !DILocation(line: 88, column: 58, scope: !227, inlinedAt: !278)
!282 = !DILocation(line: 92, column: 7, scope: !227, inlinedAt: !278)
!283 = !DILocation(line: 91, column: 7, scope: !227, inlinedAt: !278)
!284 = !DILocation(line: 91, column: 11, scope: !227, inlinedAt: !278)
!285 = !DILocation(line: 91, column: 15, scope: !227, inlinedAt: !278)
!286 = !DILocation(line: 98, column: 8, scope: !227, inlinedAt: !278)
!287 = !DILocation(line: 91, column: 19, scope: !227, inlinedAt: !278)
!288 = !DILocation(line: 91, column: 23, scope: !227, inlinedAt: !278)
!289 = !DILocation(line: 91, column: 27, scope: !227, inlinedAt: !278)
!290 = !DILocation(line: 91, column: 31, scope: !227, inlinedAt: !278)
!291 = !DILocation(line: 102, column: 8, scope: !227, inlinedAt: !278)
!292 = !DILocation(line: 91, column: 35, scope: !227, inlinedAt: !278)
!293 = !DILocation(line: 91, column: 39, scope: !227, inlinedAt: !278)
!294 = !DILocation(line: 91, column: 43, scope: !227, inlinedAt: !278)
!295 = !DILocation(line: 91, column: 47, scope: !227, inlinedAt: !278)
!296 = !DILocation(line: 106, column: 8, scope: !227, inlinedAt: !278)
!297 = !DILocation(line: 91, column: 52, scope: !227, inlinedAt: !278)
!298 = !DILocation(line: 110, column: 9, scope: !227, inlinedAt: !278)
!299 = !DILocation(line: 91, column: 57, scope: !227, inlinedAt: !278)
!300 = !DILocation(line: 111, column: 9, scope: !227, inlinedAt: !278)
!301 = !DILocation(line: 91, column: 62, scope: !227, inlinedAt: !278)
!302 = !DILocation(line: 112, column: 9, scope: !227, inlinedAt: !278)
!303 = !DILocation(line: 91, column: 67, scope: !227, inlinedAt: !278)
!304 = !DILocation(line: 113, column: 9, scope: !227, inlinedAt: !278)
!305 = !DILocation(line: 91, column: 72, scope: !227, inlinedAt: !278)
!306 = !DILocation(line: 148, column: 10, scope: !307, inlinedAt: !278)
!307 = distinct !DILexicalBlock(scope: !308, file: !8, line: 115, column: 12)
!308 = distinct !DILexicalBlock(scope: !309, file: !8, line: 115, column: 3)
!309 = distinct !DILexicalBlock(scope: !227, file: !8, line: 115, column: 3)
!310 = !DILocation(line: 115, column: 3, scope: !227, inlinedAt: !278)
!311 = !DILocation(line: 0, scope: !307, inlinedAt: !278)
!312 = !DILocation(line: 111, column: 7, scope: !227, inlinedAt: !278)
!313 = !DILocation(line: 90, column: 7, scope: !227, inlinedAt: !278)
!314 = !DILocation(line: 90, column: 11, scope: !227, inlinedAt: !278)
!315 = !DILocation(line: 90, column: 15, scope: !227, inlinedAt: !278)
!316 = !DILocation(line: 90, column: 19, scope: !227, inlinedAt: !278)
!317 = !DILocation(line: 90, column: 23, scope: !227, inlinedAt: !278)
!318 = !DILocation(line: 90, column: 27, scope: !227, inlinedAt: !278)
!319 = !DILocation(line: 90, column: 31, scope: !227, inlinedAt: !278)
!320 = !DILocation(line: 90, column: 35, scope: !227, inlinedAt: !278)
!321 = !DILocation(line: 90, column: 39, scope: !227, inlinedAt: !278)
!322 = !DILocation(line: 90, column: 43, scope: !227, inlinedAt: !278)
!323 = !DILocation(line: 90, column: 47, scope: !227, inlinedAt: !278)
!324 = !DILocation(line: 90, column: 52, scope: !227, inlinedAt: !278)
!325 = !DILocation(line: 90, column: 57, scope: !227, inlinedAt: !278)
!326 = !DILocation(line: 90, column: 62, scope: !227, inlinedAt: !278)
!327 = !DILocation(line: 90, column: 67, scope: !227, inlinedAt: !278)
!328 = !DILocation(line: 90, column: 72, scope: !227, inlinedAt: !278)
!329 = !DILocation(line: 94, column: 9, scope: !227, inlinedAt: !278)
!330 = !DILocation(line: 138, column: 5, scope: !331, inlinedAt: !278)
!331 = distinct !DILexicalBlock(scope: !307, file: !8, line: 138, column: 5)
!332 = !DILocation(line: 139, column: 7, scope: !333, inlinedAt: !278)
!333 = distinct !DILexicalBlock(scope: !334, file: !8, line: 138, column: 31)
!334 = distinct !DILexicalBlock(scope: !331, file: !8, line: 138, column: 5)
!335 = !DILocation(line: 142, column: 7, scope: !333, inlinedAt: !278)
!336 = !DILocation(line: 141, column: 7, scope: !333, inlinedAt: !278)
!337 = !DILocation(line: 140, column: 7, scope: !333, inlinedAt: !278)
!338 = !DILocation(line: 143, column: 7, scope: !333, inlinedAt: !278)
!339 = !DILocation(line: 146, column: 7, scope: !333, inlinedAt: !278)
!340 = !DILocation(line: 138, column: 25, scope: !334, inlinedAt: !278)
!341 = !DILocation(line: 138, column: 19, scope: !334, inlinedAt: !278)
!342 = distinct !{!342, !343, !344}
!343 = !DILocation(line: 138, column: 5, scope: !331)
!344 = !DILocation(line: 147, column: 5, scope: !331)
!345 = !DILocation(line: 149, column: 10, scope: !307, inlinedAt: !278)
!346 = !DILocation(line: 150, column: 10, scope: !307, inlinedAt: !278)
!347 = !DILocation(line: 151, column: 10, scope: !307, inlinedAt: !278)
!348 = !DILocation(line: 152, column: 10, scope: !307, inlinedAt: !278)
!349 = !DILocation(line: 153, column: 10, scope: !307, inlinedAt: !278)
!350 = !DILocation(line: 154, column: 10, scope: !307, inlinedAt: !278)
!351 = !DILocation(line: 155, column: 10, scope: !307, inlinedAt: !278)
!352 = !DILocation(line: 156, column: 10, scope: !307, inlinedAt: !278)
!353 = !DILocation(line: 157, column: 10, scope: !307, inlinedAt: !278)
!354 = !DILocation(line: 158, column: 11, scope: !307, inlinedAt: !278)
!355 = !DILocation(line: 159, column: 11, scope: !307, inlinedAt: !278)
!356 = !DILocation(line: 160, column: 11, scope: !307, inlinedAt: !278)
!357 = !DILocation(line: 161, column: 11, scope: !307, inlinedAt: !278)
!358 = !DILocation(line: 162, column: 11, scope: !307, inlinedAt: !278)
!359 = !DILocation(line: 163, column: 11, scope: !307, inlinedAt: !278)
!360 = !DILocation(line: 184, column: 11, scope: !307, inlinedAt: !278)
!361 = !DILocation(line: 185, column: 10, scope: !362, inlinedAt: !278)
!362 = distinct !DILexicalBlock(scope: !307, file: !8, line: 185, column: 9)
!363 = !DILocation(line: 185, column: 9, scope: !307, inlinedAt: !278)
!364 = !DILocation(line: 190, column: 5, scope: !365, inlinedAt: !278)
!365 = distinct !DILexicalBlock(scope: !307, file: !8, line: 190, column: 5)
!366 = !{!89, !89, i64 0}
!367 = !DILocation(line: 191, column: 5, scope: !368, inlinedAt: !278)
!368 = distinct !DILexicalBlock(scope: !307, file: !8, line: 191, column: 5)
!369 = !DILocation(line: 192, column: 5, scope: !370, inlinedAt: !278)
!370 = distinct !DILexicalBlock(scope: !307, file: !8, line: 192, column: 5)
!371 = !DILocation(line: 193, column: 5, scope: !372, inlinedAt: !278)
!372 = distinct !DILexicalBlock(scope: !307, file: !8, line: 193, column: 5)
!373 = !DILocation(line: 194, column: 5, scope: !374, inlinedAt: !278)
!374 = distinct !DILexicalBlock(scope: !307, file: !8, line: 194, column: 5)
!375 = !DILocation(line: 195, column: 5, scope: !376, inlinedAt: !278)
!376 = distinct !DILexicalBlock(scope: !307, file: !8, line: 195, column: 5)
!377 = !DILocation(line: 196, column: 5, scope: !378, inlinedAt: !278)
!378 = distinct !DILexicalBlock(scope: !307, file: !8, line: 196, column: 5)
!379 = !DILocation(line: 197, column: 5, scope: !380, inlinedAt: !278)
!380 = distinct !DILexicalBlock(scope: !307, file: !8, line: 197, column: 5)
!381 = !DILocation(line: 198, column: 5, scope: !382, inlinedAt: !278)
!382 = distinct !DILexicalBlock(scope: !307, file: !8, line: 198, column: 5)
!383 = !DILocation(line: 199, column: 5, scope: !384, inlinedAt: !278)
!384 = distinct !DILexicalBlock(scope: !307, file: !8, line: 199, column: 5)
!385 = !DILocation(line: 200, column: 5, scope: !386, inlinedAt: !278)
!386 = distinct !DILexicalBlock(scope: !307, file: !8, line: 200, column: 5)
!387 = !DILocation(line: 201, column: 5, scope: !388, inlinedAt: !278)
!388 = distinct !DILexicalBlock(scope: !307, file: !8, line: 201, column: 5)
!389 = !DILocation(line: 202, column: 5, scope: !390, inlinedAt: !278)
!390 = distinct !DILexicalBlock(scope: !307, file: !8, line: 202, column: 5)
!391 = !DILocation(line: 203, column: 5, scope: !392, inlinedAt: !278)
!392 = distinct !DILexicalBlock(scope: !307, file: !8, line: 203, column: 5)
!393 = !DILocation(line: 204, column: 5, scope: !394, inlinedAt: !278)
!394 = distinct !DILexicalBlock(scope: !307, file: !8, line: 204, column: 5)
!395 = !DILocation(line: 205, column: 5, scope: !396, inlinedAt: !278)
!396 = distinct !DILexicalBlock(scope: !307, file: !8, line: 205, column: 5)
!397 = !DILocation(line: 207, column: 15, scope: !398, inlinedAt: !278)
!398 = distinct !DILexicalBlock(scope: !307, file: !8, line: 207, column: 9)
!399 = !DILocation(line: 207, column: 9, scope: !307, inlinedAt: !278)
!400 = !DILocation(line: 215, column: 11, scope: !307, inlinedAt: !278)
!401 = !DILocation(line: 216, column: 7, scope: !307, inlinedAt: !278)
!402 = !DILocation(line: 115, column: 3, scope: !308, inlinedAt: !278)
!403 = distinct !{!403, !404, !405}
!404 = !DILocation(line: 115, column: 3, scope: !309)
!405 = !DILocation(line: 220, column: 3, scope: !309)
!406 = !DILocation(line: 211, column: 20, scope: !407, inlinedAt: !278)
!407 = distinct !DILexicalBlock(scope: !398, file: !8, line: 207, column: 22)
!408 = !DILocation(line: 212, column: 20, scope: !407, inlinedAt: !278)
!409 = !DILocation(line: 221, column: 1, scope: !227, inlinedAt: !278)
!410 = !DILocation(line: 127, column: 6, scope: !220)
!411 = !DILocation(line: 127, column: 6, scope: !212)
!412 = !DILocation(line: 130, column: 7, scope: !219)
!413 = !DILocation(line: 128, column: 13, scope: !219)
!414 = !DILocation(line: 128, column: 10, scope: !219)
!415 = !DILocation(line: 131, column: 17, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 131, column: 3)
!417 = distinct !DILexicalBlock(scope: !219, file: !3, line: 131, column: 3)
!418 = !DILocation(line: 131, column: 3, scope: !417)
!419 = !DILocation(line: 132, column: 22, scope: !416)
!420 = !DILocation(line: 131, column: 23, scope: !416)
!421 = !{!422}
!422 = distinct !{!422, !423}
!423 = distinct !{!423, !"LVerDomain"}
!424 = !DILocation(line: 132, column: 4, scope: !416)
!425 = !DILocation(line: 132, column: 19, scope: !416)
!426 = !{!427}
!427 = distinct !{!427, !423}
!428 = distinct !{!428, !418, !429, !430}
!429 = !DILocation(line: 132, column: 27, scope: !417)
!430 = !{!"llvm.loop.isvectorized", i32 1}
!431 = distinct !{!431, !418, !429, !430}
!432 = !DILocation(line: 135, column: 2, scope: !212)
!433 = !DILocation(line: 136, column: 9, scope: !212)
!434 = !DILocation(line: 136, column: 2, scope: !212)
!435 = !DILocation(line: 137, column: 14, scope: !212)
!436 = !DILocation(line: 138, column: 1, scope: !212)
!437 = distinct !DISubprogram(name: "_rs_init", scope: !3, file: !3, line: 70, type: !213, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !438)
!438 = !{!439, !440}
!439 = !DILocalVariable(name: "buf", arg: 1, scope: !437, file: !3, line: 70, type: !18)
!440 = !DILocalVariable(name: "n", arg: 2, scope: !437, file: !3, line: 70, type: !31)
!441 = !DILocation(line: 70, column: 18, scope: !437)
!442 = !DILocation(line: 70, column: 30, scope: !437)
!443 = !DILocation(line: 75, column: 6, scope: !444)
!444 = distinct !DILexicalBlock(scope: !437, file: !3, line: 75, column: 6)
!445 = !DILocation(line: 75, column: 9, scope: !444)
!446 = !DILocation(line: 75, column: 6, scope: !437)
!447 = !DILocation(line: 80, column: 19, scope: !437)
!448 = !DILocalVariable(name: "rsp", arg: 1, scope: !449, file: !24, line: 74, type: !453)
!449 = distinct !DISubprogram(name: "_rs_allocate", scope: !24, file: !24, line: 74, type: !450, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !455)
!450 = !DISubroutineType(types: !451)
!451 = !{!452, !453, !454}
!452 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!455 = !{!448, !456}
!456 = !DILocalVariable(name: "rsxp", arg: 2, scope: !449, file: !24, line: 74, type: !454)
!457 = !DILocation(line: 74, column: 27, scope: !449, inlinedAt: !458)
!458 = distinct !DILocation(line: 76, column: 7, scope: !459)
!459 = distinct !DILexicalBlock(scope: !460, file: !3, line: 76, column: 7)
!460 = distinct !DILexicalBlock(scope: !444, file: !3, line: 75, column: 18)
!461 = !DILocation(line: 74, column: 46, scope: !449, inlinedAt: !458)
!462 = !DILocation(line: 79, column: 7, scope: !449, inlinedAt: !458)
!463 = !DILocation(line: 80, column: 8, scope: !449, inlinedAt: !458)
!464 = !DILocation(line: 81, column: 2, scope: !449, inlinedAt: !458)
!465 = !DILocation(line: 76, column: 7, scope: !460)
!466 = !DILocalVariable(name: "x", arg: 1, scope: !467, file: !8, line: 54, type: !230)
!467 = distinct !DISubprogram(name: "chacha_keysetup", scope: !8, file: !8, line: 54, type: !468, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !470)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !230, !231, !7, !7}
!470 = !{!466, !471, !472, !473, !474}
!471 = !DILocalVariable(name: "k", arg: 2, scope: !467, file: !8, line: 54, type: !231)
!472 = !DILocalVariable(name: "kbits", arg: 3, scope: !467, file: !8, line: 54, type: !7)
!473 = !DILocalVariable(name: "ivbits", arg: 4, scope: !467, file: !8, line: 54, type: !7)
!474 = !DILocalVariable(name: "constants", scope: !467, file: !8, line: 56, type: !475)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!476 = !DILocation(line: 54, column: 29, scope: !467, inlinedAt: !477)
!477 = distinct !DILocation(line: 80, column: 2, scope: !437)
!478 = !DILocation(line: 54, column: 41, scope: !467, inlinedAt: !477)
!479 = !DILocation(line: 54, column: 47, scope: !467, inlinedAt: !477)
!480 = !DILocation(line: 54, column: 57, scope: !467, inlinedAt: !477)
!481 = !DILocation(line: 58, column: 17, scope: !467, inlinedAt: !477)
!482 = !DILocation(line: 58, column: 3, scope: !467, inlinedAt: !477)
!483 = !DILocation(line: 58, column: 15, scope: !467, inlinedAt: !477)
!484 = !DILocation(line: 59, column: 17, scope: !467, inlinedAt: !477)
!485 = !DILocation(line: 59, column: 3, scope: !467, inlinedAt: !477)
!486 = !DILocation(line: 59, column: 15, scope: !467, inlinedAt: !477)
!487 = !DILocation(line: 60, column: 17, scope: !467, inlinedAt: !477)
!488 = !DILocation(line: 60, column: 3, scope: !467, inlinedAt: !477)
!489 = !DILocation(line: 60, column: 15, scope: !467, inlinedAt: !477)
!490 = !DILocation(line: 61, column: 17, scope: !467, inlinedAt: !477)
!491 = !DILocation(line: 61, column: 3, scope: !467, inlinedAt: !477)
!492 = !DILocation(line: 61, column: 15, scope: !467, inlinedAt: !477)
!493 = !DILocation(line: 63, column: 7, scope: !494, inlinedAt: !477)
!494 = distinct !DILexicalBlock(scope: !495, file: !8, line: 62, column: 21)
!495 = distinct !DILexicalBlock(scope: !467, file: !8, line: 62, column: 7)
!496 = !DILocation(line: 68, column: 17, scope: !467, inlinedAt: !477)
!497 = !DILocation(line: 68, column: 3, scope: !467, inlinedAt: !477)
!498 = !DILocation(line: 68, column: 15, scope: !467, inlinedAt: !477)
!499 = !DILocation(line: 69, column: 17, scope: !467, inlinedAt: !477)
!500 = !DILocation(line: 69, column: 3, scope: !467, inlinedAt: !477)
!501 = !DILocation(line: 69, column: 15, scope: !467, inlinedAt: !477)
!502 = !DILocation(line: 70, column: 18, scope: !467, inlinedAt: !477)
!503 = !DILocation(line: 70, column: 3, scope: !467, inlinedAt: !477)
!504 = !DILocation(line: 70, column: 16, scope: !467, inlinedAt: !477)
!505 = !DILocation(line: 71, column: 18, scope: !467, inlinedAt: !477)
!506 = !DILocation(line: 71, column: 3, scope: !467, inlinedAt: !477)
!507 = !DILocation(line: 71, column: 16, scope: !467, inlinedAt: !477)
!508 = !DILocation(line: 72, column: 15, scope: !467, inlinedAt: !477)
!509 = !DILocation(line: 76, column: 1, scope: !467, inlinedAt: !477)
!510 = !DILocation(line: 81, column: 38, scope: !437)
!511 = !DILocalVariable(name: "x", arg: 1, scope: !512, file: !8, line: 79, type: !230)
!512 = distinct !DISubprogram(name: "chacha_ivsetup", scope: !8, file: !8, line: 79, type: !513, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !515)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !230, !231}
!515 = !{!511, !516}
!516 = !DILocalVariable(name: "iv", arg: 2, scope: !512, file: !8, line: 79, type: !231)
!517 = !DILocation(line: 79, column: 28, scope: !512, inlinedAt: !518)
!518 = distinct !DILocation(line: 81, column: 2, scope: !437)
!519 = !DILocation(line: 79, column: 40, scope: !512, inlinedAt: !518)
!520 = !DILocation(line: 81, column: 3, scope: !512, inlinedAt: !518)
!521 = !DILocation(line: 81, column: 16, scope: !512, inlinedAt: !518)
!522 = !DILocation(line: 82, column: 3, scope: !512, inlinedAt: !518)
!523 = !DILocation(line: 82, column: 16, scope: !512, inlinedAt: !518)
!524 = !DILocation(line: 83, column: 18, scope: !512, inlinedAt: !518)
!525 = !DILocation(line: 83, column: 3, scope: !512, inlinedAt: !518)
!526 = !DILocation(line: 83, column: 16, scope: !512, inlinedAt: !518)
!527 = !DILocation(line: 84, column: 18, scope: !512, inlinedAt: !518)
!528 = !DILocation(line: 84, column: 3, scope: !512, inlinedAt: !518)
!529 = !DILocation(line: 84, column: 16, scope: !512, inlinedAt: !518)
!530 = !DILocation(line: 85, column: 1, scope: !512, inlinedAt: !518)
!531 = !DILocation(line: 82, column: 1, scope: !437)
