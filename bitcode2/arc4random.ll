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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  br i1 %4, label %5, label %7, !dbg !92

; <label>:5:                                      ; preds = %0
  tail call fastcc void @_rs_rekey(i8* null, i64 0) #6, !dbg !93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
  %3 = icmp eq i64 %1, 0, !dbg !131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
  br i1 %3, label %31, label %4, !dbg !130

; <label>:4:                                      ; preds = %2, %27
  %5 = phi i64 [ %28, %27 ], [ %1, %2 ]
  %6 = phi i8* [ %29, %27 ], [ %0, %2 ]
  %7 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !132, !tbaa !86
  %8 = icmp eq i64 %7, 0, !dbg !135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  br i1 %8, label %9, label %10, !dbg !136

; <label>:9:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !137
  br label %24, !dbg !137

; <label>:10:                                     ; preds = %4
  %11 = icmp ult i64 %5, %7, !dbg !138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !138
  %12 = select i1 %11, i64 %5, i64 %7, !dbg !138
  %13 = load %struct._rsx*, %struct._rsx** @rsx, align 8, !dbg !141, !tbaa !96
  %14 = getelementptr inbounds %struct._rsx, %struct._rsx* %13, i64 0, i32 1, i64 1024, !dbg !142
  %15 = sub i64 0, %7, !dbg !143
  %16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !143
  %17 = tail call i8* @memcpy(i8* %6, i8* nonnull %16, i64 %12) #6, !dbg !145
  %18 = tail call i8* @memset(i8* nonnull %16, i32 0, i64 %12) #6, !dbg !146
  %19 = getelementptr inbounds i8, i8* %6, i64 %12, !dbg !147
  %20 = sub i64 %5, %12, !dbg !148
  %21 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !149, !tbaa !86
  %22 = sub i64 %21, %12, !dbg !149
  store i64 %22, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !149, !tbaa !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !150
  %23 = icmp eq i64 %22, 0, !dbg !151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !137
  br i1 %23, label %24, label %27, !dbg !137

; <label>:24:                                     ; preds = %10, %9
  %25 = phi i64 [ %5, %9 ], [ %20, %10 ]
  %26 = phi i8* [ %6, %9 ], [ %19, %10 ]
  tail call fastcc void @_rs_rekey(i8* null, i64 0) #6, !dbg !153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  br label %27, !dbg !153

; <label>:27:                                     ; preds = %24, %10
  %28 = phi i64 [ %25, %24 ], [ %20, %10 ]
  %29 = phi i8* [ %26, %24 ], [ %19, %10 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
  %30 = icmp eq i64 %28, 0, !dbg !131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
  br i1 %30, label %31, label %4, !dbg !130, !llvm.loop !154

; <label>:31:                                     ; preds = %27, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !158
  ret void, !dbg !158
}

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc void @_rs_stir_if_needed(i64) unnamed_addr #3 !dbg !159 {
  %2 = alloca [40 x i8], align 16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !176
  %3 = load %struct._rs*, %struct._rs** @rs, align 8, !dbg !179, !tbaa !96
  %4 = icmp eq %struct._rs* %3, null, !dbg !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !180
  br i1 %4, label %8, label %5, !dbg !180

; <label>:5:                                      ; preds = %1
  %6 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 1), align 8, !dbg !181, !tbaa !182
  %7 = icmp ugt i64 %6, %0, !dbg !183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  br i1 %7, label %24, label %8, !dbg !184

; <label>:8:                                      ; preds = %5, %1
  %9 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0, !dbg !185
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %9) #5, !dbg !185
  %10 = call i32 @getentropy(i8* nonnull %9, i64 40) #6, !dbg !186
  %11 = icmp eq i32 %10, -1, !dbg !188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !189
  br i1 %11, label %12, label %14, !dbg !189

; <label>:12:                                     ; preds = %8
  %13 = call i32 @raise(i32 9) #6, !dbg !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !194
  br label %14, !dbg !194

; <label>:14:                                     ; preds = %12, %8
  %15 = load %struct._rs*, %struct._rs** @rs, align 8, !dbg !195, !tbaa !96
  %16 = icmp eq %struct._rs* %15, null, !dbg !195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !197
  br i1 %16, label %17, label %18, !dbg !197

; <label>:17:                                     ; preds = %14
  call fastcc void @_rs_init(i8* nonnull %9) #6, !dbg !198
  br label %19, !dbg !198

; <label>:18:                                     ; preds = %14
  call fastcc void @_rs_rekey(i8* nonnull %9, i64 40) #6, !dbg !199
  br label %19

; <label>:19:                                     ; preds = %17, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @explicit_bzero(i8* nonnull %9, i64 40) #6, !dbg !200
  store i64 0, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !201, !tbaa !86
  %20 = load %struct._rsx*, %struct._rsx** @rsx, align 8, !dbg !202, !tbaa !96
  %21 = getelementptr inbounds %struct._rsx, %struct._rsx* %20, i64 0, i32 1, i64 0, !dbg !202
  %22 = call i8* @memset(i8* nonnull %21, i32 0, i64 1024) #6, !dbg !203
  %23 = load %struct._rs*, %struct._rs** @rs, align 8, !dbg !204, !tbaa !96
  store i64 1600000, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 1), align 8, !dbg !205, !tbaa !182
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %9) #5, !dbg !206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !207
  br label %24, !dbg !207

; <label>:24:                                     ; preds = %5, %19
  %25 = phi %struct._rs* [ %3, %5 ], [ %23, %19 ]
  %26 = phi i64 [ %6, %5 ], [ 1600000, %19 ], !dbg !208
  %27 = getelementptr inbounds %struct._rs, %struct._rs* %25, i64 0, i32 1, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !210
  %28 = icmp ugt i64 %26, %0, !dbg !210
  %29 = select i1 %28, i64 %26, i64 %0, !dbg !210
  %30 = sub i64 %29, %0, !dbg !210
  store i64 %30, i64* %27, align 8, !dbg !211, !tbaa !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !212
  ret void, !dbg !212
}

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc void @_rs_rekey(i8* readonly, i64) unnamed_addr #3 !dbg !213 {
  %3 = load %struct._rsx*, %struct._rsx** @rsx, align 8, !dbg !225, !tbaa !96
  %4 = getelementptr inbounds %struct._rsx, %struct._rsx* %3, i64 0, i32 1, i64 0, !dbg !226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  %5 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 0) to <4 x i32>*), align 8, !dbg !288, !tbaa !106
  %6 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 4) to <4 x i32>*), align 8, !dbg !293, !tbaa !106
  %7 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 8) to <4 x i32>*), align 8, !dbg !298, !tbaa !106
  %8 = shufflevector <4 x i32> %7, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>, !dbg !298
  %9 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 12), align 8, !dbg !300, !tbaa !106
  %10 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 13), align 4, !dbg !302, !tbaa !106
  %11 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 14), align 8, !dbg !304, !tbaa !106
  %12 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 15), align 4, !dbg !306, !tbaa !106
  %13 = insertelement <4 x i32> undef, i32 %12, i32 0
  %14 = extractelement <4 x i32> %5, i32 0
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
  br label %26, !dbg !308

; <label>:26:                                     ; preds = %305, %2
  %27 = phi i32 [ 1024, %2 ], [ %306, %305 ]
  %28 = phi i32 [ %9, %2 ], [ %123, %305 ], !dbg !309
  %29 = phi i32 [ %10, %2 ], [ %128, %305 ], !dbg !313
  %30 = phi i8* [ %4, %2 ], [ %307, %305 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  %31 = insertelement <4 x i32> %13, i32 %28, i32 1
  %32 = insertelement <4 x i32> %31, i32 %29, i32 2
  %33 = insertelement <4 x i32> %32, i32 %11, i32 3
  br label %34, !dbg !335

; <label>:34:                                     ; preds = %34, %26
  %35 = phi i32 [ 20, %26 ], [ %88, %34 ]
  %36 = phi <4 x i32> [ %5, %26 ], [ %77, %34 ]
  %37 = phi <4 x i32> [ %8, %26 ], [ %82, %34 ]
  %38 = phi <4 x i32> [ %6, %26 ], [ %87, %34 ]
  %39 = phi <4 x i32> [ %33, %26 ], [ %81, %34 ]
  %40 = add <4 x i32> %38, %36, !dbg !336
  %41 = shufflevector <4 x i32> %40, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !339
  %42 = xor <4 x i32> %39, %41, !dbg !339
  %43 = shl <4 x i32> %42, <i32 16, i32 16, i32 16, i32 16>, !dbg !339
  %44 = lshr <4 x i32> %42, <i32 16, i32 16, i32 16, i32 16>, !dbg !339
  %45 = or <4 x i32> %43, %44, !dbg !339
  %46 = shufflevector <4 x i32> %45, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !340
  %47 = add <4 x i32> %46, %37, !dbg !340
  %48 = shufflevector <4 x i32> %47, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>, !dbg !336
  %49 = xor <4 x i32> %48, %38, !dbg !336
  %50 = shl <4 x i32> %49, <i32 12, i32 12, i32 12, i32 12>, !dbg !336
  %51 = lshr <4 x i32> %49, <i32 20, i32 20, i32 20, i32 20>, !dbg !336
  %52 = or <4 x i32> %50, %51, !dbg !336
  %53 = add <4 x i32> %52, %40, !dbg !336
  %54 = shufflevector <4 x i32> %53, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !339
  %55 = xor <4 x i32> %54, %45, !dbg !339
  %56 = shl <4 x i32> %55, <i32 8, i32 8, i32 8, i32 8>, !dbg !339
  %57 = lshr <4 x i32> %55, <i32 24, i32 24, i32 24, i32 24>, !dbg !339
  %58 = or <4 x i32> %56, %57, !dbg !339
  %59 = shufflevector <4 x i32> %58, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !340
  %60 = add <4 x i32> %59, %47, !dbg !340
  %61 = shufflevector <4 x i32> %52, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>, !dbg !341
  %62 = shufflevector <4 x i32> %60, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !341
  %63 = xor <4 x i32> %62, %61, !dbg !341
  %64 = shl <4 x i32> %63, <i32 7, i32 7, i32 7, i32 7>, !dbg !341
  %65 = lshr <4 x i32> %63, <i32 25, i32 25, i32 25, i32 25>, !dbg !341
  %66 = or <4 x i32> %64, %65, !dbg !341
  %67 = add <4 x i32> %66, %53, !dbg !342
  %68 = xor <4 x i32> %67, %58, !dbg !342
  %69 = shl <4 x i32> %68, <i32 16, i32 16, i32 16, i32 16>, !dbg !342
  %70 = lshr <4 x i32> %68, <i32 16, i32 16, i32 16, i32 16>, !dbg !342
  %71 = or <4 x i32> %69, %70, !dbg !342
  %72 = add <4 x i32> %71, %60, !dbg !342
  %73 = xor <4 x i32> %72, %66, !dbg !342
  %74 = shl <4 x i32> %73, <i32 12, i32 12, i32 12, i32 12>, !dbg !342
  %75 = lshr <4 x i32> %73, <i32 20, i32 20, i32 20, i32 20>, !dbg !342
  %76 = or <4 x i32> %74, %75, !dbg !342
  %77 = add <4 x i32> %76, %67, !dbg !342
  %78 = xor <4 x i32> %77, %71, !dbg !342
  %79 = shl <4 x i32> %78, <i32 8, i32 8, i32 8, i32 8>, !dbg !342
  %80 = lshr <4 x i32> %78, <i32 24, i32 24, i32 24, i32 24>, !dbg !342
  %81 = or <4 x i32> %79, %80, !dbg !342
  %82 = add <4 x i32> %81, %72, !dbg !342
  %83 = xor <4 x i32> %82, %76, !dbg !343
  %84 = shufflevector <4 x i32> %83, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !343
  %85 = shl <4 x i32> %84, <i32 7, i32 7, i32 7, i32 7>, !dbg !343
  %86 = lshr <4 x i32> %84, <i32 25, i32 25, i32 25, i32 25>, !dbg !343
  %87 = or <4 x i32> %85, %86, !dbg !343
  %88 = add nsw i32 %35, -2, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  %89 = icmp eq i32 %88, 0, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  br i1 %89, label %90, label %34, !dbg !335, !llvm.loop !347

; <label>:90:                                     ; preds = %34
  %91 = extractelement <4 x i32> %77, i32 0, !dbg !350
  %92 = add i32 %91, %14, !dbg !350
  %93 = extractelement <4 x i32> %77, i32 1, !dbg !351
  %94 = add i32 %93, %15, !dbg !351
  %95 = extractelement <4 x i32> %77, i32 2, !dbg !352
  %96 = add i32 %95, %16, !dbg !352
  %97 = extractelement <4 x i32> %77, i32 3, !dbg !353
  %98 = add i32 %97, %17, !dbg !353
  %99 = extractelement <4 x i32> %87, i32 0, !dbg !354
  %100 = add i32 %99, %18, !dbg !354
  %101 = extractelement <4 x i32> %87, i32 1, !dbg !355
  %102 = add i32 %101, %19, !dbg !355
  %103 = extractelement <4 x i32> %87, i32 2, !dbg !356
  %104 = add i32 %103, %20, !dbg !356
  %105 = extractelement <4 x i32> %87, i32 3, !dbg !357
  %106 = add i32 %105, %21, !dbg !357
  %107 = extractelement <4 x i32> %82, i32 2, !dbg !358
  %108 = add i32 %107, %22, !dbg !358
  %109 = extractelement <4 x i32> %82, i32 3, !dbg !359
  %110 = add i32 %109, %23, !dbg !359
  %111 = extractelement <4 x i32> %82, i32 0, !dbg !360
  %112 = add i32 %111, %24, !dbg !360
  %113 = extractelement <4 x i32> %82, i32 1, !dbg !361
  %114 = add i32 %113, %25, !dbg !361
  %115 = extractelement <4 x i32> %81, i32 1, !dbg !362
  %116 = add i32 %115, %28, !dbg !362
  %117 = extractelement <4 x i32> %81, i32 2, !dbg !363
  %118 = add i32 %117, %29, !dbg !363
  %119 = extractelement <4 x i32> %81, i32 3, !dbg !364
  %120 = add i32 %119, %11, !dbg !364
  %121 = extractelement <4 x i32> %81, i32 0, !dbg !365
  %122 = add i32 %121, %12, !dbg !365
  %123 = add i32 %28, 1, !dbg !366
  %124 = icmp eq i32 %123, 0, !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br i1 %124, label %125, label %127, !dbg !369

; <label>:125:                                    ; preds = %90
  %126 = add i32 %29, 1, !dbg !370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  br label %127, !dbg !372

; <label>:127:                                    ; preds = %125, %90
  %128 = phi i32 [ %29, %90 ], [ %126, %125 ], !dbg !373
  %129 = trunc i32 %92 to i8, !dbg !374
  store i8 %129, i8* %30, align 1, !dbg !374, !tbaa !376
  %130 = lshr i32 %92, 8, !dbg !374
  %131 = trunc i32 %130 to i8, !dbg !374
  %132 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !374
  store i8 %131, i8* %132, align 1, !dbg !374, !tbaa !376
  %133 = lshr i32 %92, 16, !dbg !374
  %134 = trunc i32 %133 to i8, !dbg !374
  %135 = getelementptr inbounds i8, i8* %30, i64 2, !dbg !374
  store i8 %134, i8* %135, align 1, !dbg !374, !tbaa !376
  %136 = lshr i32 %92, 24, !dbg !374
  %137 = trunc i32 %136 to i8, !dbg !374
  %138 = getelementptr inbounds i8, i8* %30, i64 3, !dbg !374
  store i8 %137, i8* %138, align 1, !dbg !374, !tbaa !376
  %139 = trunc i32 %94 to i8, !dbg !377
  %140 = getelementptr inbounds i8, i8* %30, i64 4, !dbg !377
  store i8 %139, i8* %140, align 1, !dbg !377, !tbaa !376
  %141 = lshr i32 %94, 8, !dbg !377
  %142 = trunc i32 %141 to i8, !dbg !377
  %143 = getelementptr inbounds i8, i8* %30, i64 5, !dbg !377
  store i8 %142, i8* %143, align 1, !dbg !377, !tbaa !376
  %144 = lshr i32 %94, 16, !dbg !377
  %145 = trunc i32 %144 to i8, !dbg !377
  %146 = getelementptr inbounds i8, i8* %30, i64 6, !dbg !377
  store i8 %145, i8* %146, align 1, !dbg !377, !tbaa !376
  %147 = lshr i32 %94, 24, !dbg !377
  %148 = trunc i32 %147 to i8, !dbg !377
  %149 = getelementptr inbounds i8, i8* %30, i64 7, !dbg !377
  store i8 %148, i8* %149, align 1, !dbg !377, !tbaa !376
  %150 = trunc i32 %96 to i8, !dbg !379
  %151 = getelementptr inbounds i8, i8* %30, i64 8, !dbg !379
  store i8 %150, i8* %151, align 1, !dbg !379, !tbaa !376
  %152 = lshr i32 %96, 8, !dbg !379
  %153 = trunc i32 %152 to i8, !dbg !379
  %154 = getelementptr inbounds i8, i8* %30, i64 9, !dbg !379
  store i8 %153, i8* %154, align 1, !dbg !379, !tbaa !376
  %155 = lshr i32 %96, 16, !dbg !379
  %156 = trunc i32 %155 to i8, !dbg !379
  %157 = getelementptr inbounds i8, i8* %30, i64 10, !dbg !379
  store i8 %156, i8* %157, align 1, !dbg !379, !tbaa !376
  %158 = lshr i32 %96, 24, !dbg !379
  %159 = trunc i32 %158 to i8, !dbg !379
  %160 = getelementptr inbounds i8, i8* %30, i64 11, !dbg !379
  store i8 %159, i8* %160, align 1, !dbg !379, !tbaa !376
  %161 = trunc i32 %98 to i8, !dbg !381
  %162 = getelementptr inbounds i8, i8* %30, i64 12, !dbg !381
  store i8 %161, i8* %162, align 1, !dbg !381, !tbaa !376
  %163 = lshr i32 %98, 8, !dbg !381
  %164 = trunc i32 %163 to i8, !dbg !381
  %165 = getelementptr inbounds i8, i8* %30, i64 13, !dbg !381
  store i8 %164, i8* %165, align 1, !dbg !381, !tbaa !376
  %166 = lshr i32 %98, 16, !dbg !381
  %167 = trunc i32 %166 to i8, !dbg !381
  %168 = getelementptr inbounds i8, i8* %30, i64 14, !dbg !381
  store i8 %167, i8* %168, align 1, !dbg !381, !tbaa !376
  %169 = lshr i32 %98, 24, !dbg !381
  %170 = trunc i32 %169 to i8, !dbg !381
  %171 = getelementptr inbounds i8, i8* %30, i64 15, !dbg !381
  store i8 %170, i8* %171, align 1, !dbg !381, !tbaa !376
  %172 = trunc i32 %100 to i8, !dbg !383
  %173 = getelementptr inbounds i8, i8* %30, i64 16, !dbg !383
  store i8 %172, i8* %173, align 1, !dbg !383, !tbaa !376
  %174 = lshr i32 %100, 8, !dbg !383
  %175 = trunc i32 %174 to i8, !dbg !383
  %176 = getelementptr inbounds i8, i8* %30, i64 17, !dbg !383
  store i8 %175, i8* %176, align 1, !dbg !383, !tbaa !376
  %177 = lshr i32 %100, 16, !dbg !383
  %178 = trunc i32 %177 to i8, !dbg !383
  %179 = getelementptr inbounds i8, i8* %30, i64 18, !dbg !383
  store i8 %178, i8* %179, align 1, !dbg !383, !tbaa !376
  %180 = lshr i32 %100, 24, !dbg !383
  %181 = trunc i32 %180 to i8, !dbg !383
  %182 = getelementptr inbounds i8, i8* %30, i64 19, !dbg !383
  store i8 %181, i8* %182, align 1, !dbg !383, !tbaa !376
  %183 = trunc i32 %102 to i8, !dbg !385
  %184 = getelementptr inbounds i8, i8* %30, i64 20, !dbg !385
  store i8 %183, i8* %184, align 1, !dbg !385, !tbaa !376
  %185 = lshr i32 %102, 8, !dbg !385
  %186 = trunc i32 %185 to i8, !dbg !385
  %187 = getelementptr inbounds i8, i8* %30, i64 21, !dbg !385
  store i8 %186, i8* %187, align 1, !dbg !385, !tbaa !376
  %188 = lshr i32 %102, 16, !dbg !385
  %189 = trunc i32 %188 to i8, !dbg !385
  %190 = getelementptr inbounds i8, i8* %30, i64 22, !dbg !385
  store i8 %189, i8* %190, align 1, !dbg !385, !tbaa !376
  %191 = lshr i32 %102, 24, !dbg !385
  %192 = trunc i32 %191 to i8, !dbg !385
  %193 = getelementptr inbounds i8, i8* %30, i64 23, !dbg !385
  store i8 %192, i8* %193, align 1, !dbg !385, !tbaa !376
  %194 = trunc i32 %104 to i8, !dbg !387
  %195 = getelementptr inbounds i8, i8* %30, i64 24, !dbg !387
  store i8 %194, i8* %195, align 1, !dbg !387, !tbaa !376
  %196 = lshr i32 %104, 8, !dbg !387
  %197 = trunc i32 %196 to i8, !dbg !387
  %198 = getelementptr inbounds i8, i8* %30, i64 25, !dbg !387
  store i8 %197, i8* %198, align 1, !dbg !387, !tbaa !376
  %199 = lshr i32 %104, 16, !dbg !387
  %200 = trunc i32 %199 to i8, !dbg !387
  %201 = getelementptr inbounds i8, i8* %30, i64 26, !dbg !387
  store i8 %200, i8* %201, align 1, !dbg !387, !tbaa !376
  %202 = lshr i32 %104, 24, !dbg !387
  %203 = trunc i32 %202 to i8, !dbg !387
  %204 = getelementptr inbounds i8, i8* %30, i64 27, !dbg !387
  store i8 %203, i8* %204, align 1, !dbg !387, !tbaa !376
  %205 = trunc i32 %106 to i8, !dbg !389
  %206 = getelementptr inbounds i8, i8* %30, i64 28, !dbg !389
  store i8 %205, i8* %206, align 1, !dbg !389, !tbaa !376
  %207 = lshr i32 %106, 8, !dbg !389
  %208 = trunc i32 %207 to i8, !dbg !389
  %209 = getelementptr inbounds i8, i8* %30, i64 29, !dbg !389
  store i8 %208, i8* %209, align 1, !dbg !389, !tbaa !376
  %210 = lshr i32 %106, 16, !dbg !389
  %211 = trunc i32 %210 to i8, !dbg !389
  %212 = getelementptr inbounds i8, i8* %30, i64 30, !dbg !389
  store i8 %211, i8* %212, align 1, !dbg !389, !tbaa !376
  %213 = lshr i32 %106, 24, !dbg !389
  %214 = trunc i32 %213 to i8, !dbg !389
  %215 = getelementptr inbounds i8, i8* %30, i64 31, !dbg !389
  store i8 %214, i8* %215, align 1, !dbg !389, !tbaa !376
  %216 = trunc i32 %108 to i8, !dbg !391
  %217 = getelementptr inbounds i8, i8* %30, i64 32, !dbg !391
  store i8 %216, i8* %217, align 1, !dbg !391, !tbaa !376
  %218 = lshr i32 %108, 8, !dbg !391
  %219 = trunc i32 %218 to i8, !dbg !391
  %220 = getelementptr inbounds i8, i8* %30, i64 33, !dbg !391
  store i8 %219, i8* %220, align 1, !dbg !391, !tbaa !376
  %221 = lshr i32 %108, 16, !dbg !391
  %222 = trunc i32 %221 to i8, !dbg !391
  %223 = getelementptr inbounds i8, i8* %30, i64 34, !dbg !391
  store i8 %222, i8* %223, align 1, !dbg !391, !tbaa !376
  %224 = lshr i32 %108, 24, !dbg !391
  %225 = trunc i32 %224 to i8, !dbg !391
  %226 = getelementptr inbounds i8, i8* %30, i64 35, !dbg !391
  store i8 %225, i8* %226, align 1, !dbg !391, !tbaa !376
  %227 = trunc i32 %110 to i8, !dbg !393
  %228 = getelementptr inbounds i8, i8* %30, i64 36, !dbg !393
  store i8 %227, i8* %228, align 1, !dbg !393, !tbaa !376
  %229 = lshr i32 %110, 8, !dbg !393
  %230 = trunc i32 %229 to i8, !dbg !393
  %231 = getelementptr inbounds i8, i8* %30, i64 37, !dbg !393
  store i8 %230, i8* %231, align 1, !dbg !393, !tbaa !376
  %232 = lshr i32 %110, 16, !dbg !393
  %233 = trunc i32 %232 to i8, !dbg !393
  %234 = getelementptr inbounds i8, i8* %30, i64 38, !dbg !393
  store i8 %233, i8* %234, align 1, !dbg !393, !tbaa !376
  %235 = lshr i32 %110, 24, !dbg !393
  %236 = trunc i32 %235 to i8, !dbg !393
  %237 = getelementptr inbounds i8, i8* %30, i64 39, !dbg !393
  store i8 %236, i8* %237, align 1, !dbg !393, !tbaa !376
  %238 = trunc i32 %112 to i8, !dbg !395
  %239 = getelementptr inbounds i8, i8* %30, i64 40, !dbg !395
  store i8 %238, i8* %239, align 1, !dbg !395, !tbaa !376
  %240 = lshr i32 %112, 8, !dbg !395
  %241 = trunc i32 %240 to i8, !dbg !395
  %242 = getelementptr inbounds i8, i8* %30, i64 41, !dbg !395
  store i8 %241, i8* %242, align 1, !dbg !395, !tbaa !376
  %243 = lshr i32 %112, 16, !dbg !395
  %244 = trunc i32 %243 to i8, !dbg !395
  %245 = getelementptr inbounds i8, i8* %30, i64 42, !dbg !395
  store i8 %244, i8* %245, align 1, !dbg !395, !tbaa !376
  %246 = lshr i32 %112, 24, !dbg !395
  %247 = trunc i32 %246 to i8, !dbg !395
  %248 = getelementptr inbounds i8, i8* %30, i64 43, !dbg !395
  store i8 %247, i8* %248, align 1, !dbg !395, !tbaa !376
  %249 = trunc i32 %114 to i8, !dbg !397
  %250 = getelementptr inbounds i8, i8* %30, i64 44, !dbg !397
  store i8 %249, i8* %250, align 1, !dbg !397, !tbaa !376
  %251 = lshr i32 %114, 8, !dbg !397
  %252 = trunc i32 %251 to i8, !dbg !397
  %253 = getelementptr inbounds i8, i8* %30, i64 45, !dbg !397
  store i8 %252, i8* %253, align 1, !dbg !397, !tbaa !376
  %254 = lshr i32 %114, 16, !dbg !397
  %255 = trunc i32 %254 to i8, !dbg !397
  %256 = getelementptr inbounds i8, i8* %30, i64 46, !dbg !397
  store i8 %255, i8* %256, align 1, !dbg !397, !tbaa !376
  %257 = lshr i32 %114, 24, !dbg !397
  %258 = trunc i32 %257 to i8, !dbg !397
  %259 = getelementptr inbounds i8, i8* %30, i64 47, !dbg !397
  store i8 %258, i8* %259, align 1, !dbg !397, !tbaa !376
  %260 = trunc i32 %116 to i8, !dbg !399
  %261 = getelementptr inbounds i8, i8* %30, i64 48, !dbg !399
  store i8 %260, i8* %261, align 1, !dbg !399, !tbaa !376
  %262 = lshr i32 %116, 8, !dbg !399
  %263 = trunc i32 %262 to i8, !dbg !399
  %264 = getelementptr inbounds i8, i8* %30, i64 49, !dbg !399
  store i8 %263, i8* %264, align 1, !dbg !399, !tbaa !376
  %265 = lshr i32 %116, 16, !dbg !399
  %266 = trunc i32 %265 to i8, !dbg !399
  %267 = getelementptr inbounds i8, i8* %30, i64 50, !dbg !399
  store i8 %266, i8* %267, align 1, !dbg !399, !tbaa !376
  %268 = lshr i32 %116, 24, !dbg !399
  %269 = trunc i32 %268 to i8, !dbg !399
  %270 = getelementptr inbounds i8, i8* %30, i64 51, !dbg !399
  store i8 %269, i8* %270, align 1, !dbg !399, !tbaa !376
  %271 = trunc i32 %118 to i8, !dbg !401
  %272 = getelementptr inbounds i8, i8* %30, i64 52, !dbg !401
  store i8 %271, i8* %272, align 1, !dbg !401, !tbaa !376
  %273 = lshr i32 %118, 8, !dbg !401
  %274 = trunc i32 %273 to i8, !dbg !401
  %275 = getelementptr inbounds i8, i8* %30, i64 53, !dbg !401
  store i8 %274, i8* %275, align 1, !dbg !401, !tbaa !376
  %276 = lshr i32 %118, 16, !dbg !401
  %277 = trunc i32 %276 to i8, !dbg !401
  %278 = getelementptr inbounds i8, i8* %30, i64 54, !dbg !401
  store i8 %277, i8* %278, align 1, !dbg !401, !tbaa !376
  %279 = lshr i32 %118, 24, !dbg !401
  %280 = trunc i32 %279 to i8, !dbg !401
  %281 = getelementptr inbounds i8, i8* %30, i64 55, !dbg !401
  store i8 %280, i8* %281, align 1, !dbg !401, !tbaa !376
  %282 = trunc i32 %120 to i8, !dbg !403
  %283 = getelementptr inbounds i8, i8* %30, i64 56, !dbg !403
  store i8 %282, i8* %283, align 1, !dbg !403, !tbaa !376
  %284 = lshr i32 %120, 8, !dbg !403
  %285 = trunc i32 %284 to i8, !dbg !403
  %286 = getelementptr inbounds i8, i8* %30, i64 57, !dbg !403
  store i8 %285, i8* %286, align 1, !dbg !403, !tbaa !376
  %287 = lshr i32 %120, 16, !dbg !403
  %288 = trunc i32 %287 to i8, !dbg !403
  %289 = getelementptr inbounds i8, i8* %30, i64 58, !dbg !403
  store i8 %288, i8* %289, align 1, !dbg !403, !tbaa !376
  %290 = lshr i32 %120, 24, !dbg !403
  %291 = trunc i32 %290 to i8, !dbg !403
  %292 = getelementptr inbounds i8, i8* %30, i64 59, !dbg !403
  store i8 %291, i8* %292, align 1, !dbg !403, !tbaa !376
  %293 = trunc i32 %122 to i8, !dbg !405
  %294 = getelementptr inbounds i8, i8* %30, i64 60, !dbg !405
  store i8 %293, i8* %294, align 1, !dbg !405, !tbaa !376
  %295 = lshr i32 %122, 8, !dbg !405
  %296 = trunc i32 %295 to i8, !dbg !405
  %297 = getelementptr inbounds i8, i8* %30, i64 61, !dbg !405
  store i8 %296, i8* %297, align 1, !dbg !405, !tbaa !376
  %298 = lshr i32 %122, 16, !dbg !405
  %299 = trunc i32 %298 to i8, !dbg !405
  %300 = getelementptr inbounds i8, i8* %30, i64 62, !dbg !405
  store i8 %299, i8* %300, align 1, !dbg !405, !tbaa !376
  %301 = lshr i32 %122, 24, !dbg !405
  %302 = trunc i32 %301 to i8, !dbg !405
  %303 = getelementptr inbounds i8, i8* %30, i64 63, !dbg !405
  store i8 %302, i8* %303, align 1, !dbg !405, !tbaa !376
  %304 = icmp ult i32 %27, 65, !dbg !407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  br i1 %304, label %308, label %305, !dbg !409

; <label>:305:                                    ; preds = %127
  %306 = add nsw i32 %27, -64, !dbg !410
  %307 = getelementptr inbounds i8, i8* %30, i64 64, !dbg !411
  br label %26, !dbg !314, !llvm.loop !412

; <label>:308:                                    ; preds = %127
  %309 = add i32 %9, 16, !dbg !308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  store i32 %309, i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 12), align 8, !dbg !417, !tbaa !106
  store i32 %128, i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 13), align 4, !dbg !418, !tbaa !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  %310 = icmp eq i8* %0, null, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br i1 %310, label %347, label %311, !dbg !422

; <label>:311:                                    ; preds = %308
  %312 = icmp ult i64 %1, 40, !dbg !423
  %313 = select i1 %312, i64 %1, i64 40, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  %314 = icmp eq i64 %313, 0, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  br i1 %314, label %346, label %315, !dbg !430

; <label>:315:                                    ; preds = %311
  %316 = and i64 %313, 1, !dbg !431
  %317 = icmp eq i64 %1, 1, !dbg !431
  br i1 %317, label %337, label %318, !dbg !431

; <label>:318:                                    ; preds = %315
  %319 = sub nsw i64 %313, %316, !dbg !431
  br label %320, !dbg !431

; <label>:320:                                    ; preds = %320, %318
  %321 = phi i64 [ 0, %318 ], [ %334, %320 ]
  %322 = phi i64 [ %319, %318 ], [ %335, %320 ]
  %323 = getelementptr inbounds i8, i8* %0, i64 %321, !dbg !431
  %324 = load i8, i8* %323, align 1, !dbg !431, !tbaa !376
  %325 = getelementptr inbounds %struct._rsx, %struct._rsx* %3, i64 0, i32 1, i64 %321, !dbg !432
  %326 = load i8, i8* %325, align 1, !dbg !433, !tbaa !376
  %327 = xor i8 %326, %324, !dbg !433
  store i8 %327, i8* %325, align 1, !dbg !433, !tbaa !376
  %328 = or i64 %321, 1, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  %329 = getelementptr inbounds i8, i8* %0, i64 %328, !dbg !431
  %330 = load i8, i8* %329, align 1, !dbg !431, !tbaa !376
  %331 = getelementptr inbounds %struct._rsx, %struct._rsx* %3, i64 0, i32 1, i64 %328, !dbg !432
  %332 = load i8, i8* %331, align 1, !dbg !433, !tbaa !376
  %333 = xor i8 %332, %330, !dbg !433
  store i8 %333, i8* %331, align 1, !dbg !433, !tbaa !376
  %334 = add nuw nsw i64 %321, 2, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  %335 = add i64 %322, -2, !dbg !430
  %336 = icmp eq i64 %335, 0, !dbg !430
  br i1 %336, label %337, label %320, !dbg !430, !llvm.loop !436

; <label>:337:                                    ; preds = %320, %315
  %338 = phi i64 [ 0, %315 ], [ %334, %320 ]
  %339 = icmp eq i64 %316, 0, !dbg !430
  br i1 %339, label %346, label %340, !dbg !430

; <label>:340:                                    ; preds = %337
  %341 = getelementptr inbounds i8, i8* %0, i64 %338, !dbg !431
  %342 = load i8, i8* %341, align 1, !dbg !431, !tbaa !376
  %343 = getelementptr inbounds %struct._rsx, %struct._rsx* %3, i64 0, i32 1, i64 %338, !dbg !432
  %344 = load i8, i8* %343, align 1, !dbg !433, !tbaa !376
  %345 = xor i8 %344, %342, !dbg !433
  store i8 %345, i8* %343, align 1, !dbg !433, !tbaa !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  br label %346, !dbg !438

; <label>:346:                                    ; preds = %340, %337, %311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  br label %347, !dbg !438

; <label>:347:                                    ; preds = %308, %346
  tail call fastcc void @_rs_init(i8* nonnull %4) #7, !dbg !439
  %348 = load %struct._rsx*, %struct._rsx** @rsx, align 8, !dbg !440, !tbaa !96
  %349 = getelementptr inbounds %struct._rsx, %struct._rsx* %348, i64 0, i32 1, i64 0, !dbg !440
  %350 = tail call i8* @memset(i8* nonnull %349, i32 0, i64 40) #6, !dbg !441
  store i64 984, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !442, !tbaa !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  ret void, !dbg !443
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @getentropy(i8*, i64) local_unnamed_addr #4

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc void @_rs_init(i8* readonly) unnamed_addr #3 !dbg !444 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  %2 = load %struct._rs*, %struct._rs** @rs, align 8, !dbg !451, !tbaa !96
  %3 = icmp eq %struct._rs* %2, null, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !454
  br i1 %3, label %6, label %4, !dbg !454

; <label>:4:                                      ; preds = %1
  %5 = load %struct._rsx*, %struct._rsx** @rsx, align 8, !dbg !455, !tbaa !96
  br label %7, !dbg !454

; <label>:6:                                      ; preds = %1
  store %struct._rs* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0), %struct._rs** @rs, align 8, !dbg !470, !tbaa !96
  store %struct._rsx* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1), %struct._rsx** @rsx, align 8, !dbg !471, !tbaa !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !473
  br label %7, !dbg !473

; <label>:7:                                      ; preds = %4, %6
  %8 = phi %struct._rsx* [ %5, %4 ], [ getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1), %6 ], !dbg !455
  %9 = load i8, i8* %0, align 1, !dbg !489, !tbaa !376
  %10 = zext i8 %9 to i32, !dbg !489
  %11 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !489
  %12 = load i8, i8* %11, align 1, !dbg !489, !tbaa !376
  %13 = zext i8 %12 to i32, !dbg !489
  %14 = shl nuw nsw i32 %13, 8, !dbg !489
  %15 = or i32 %14, %10, !dbg !489
  %16 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !489
  %17 = load i8, i8* %16, align 1, !dbg !489, !tbaa !376
  %18 = zext i8 %17 to i32, !dbg !489
  %19 = shl nuw nsw i32 %18, 16, !dbg !489
  %20 = or i32 %15, %19, !dbg !489
  %21 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !489
  %22 = load i8, i8* %21, align 1, !dbg !489, !tbaa !376
  %23 = zext i8 %22 to i32, !dbg !489
  %24 = shl nuw i32 %23, 24, !dbg !489
  %25 = or i32 %20, %24, !dbg !489
  %26 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 4, !dbg !490
  store i32 %25, i32* %26, align 4, !dbg !491, !tbaa !106
  %27 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !492
  %28 = load i8, i8* %27, align 1, !dbg !492, !tbaa !376
  %29 = zext i8 %28 to i32, !dbg !492
  %30 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !492
  %31 = load i8, i8* %30, align 1, !dbg !492, !tbaa !376
  %32 = zext i8 %31 to i32, !dbg !492
  %33 = shl nuw nsw i32 %32, 8, !dbg !492
  %34 = or i32 %33, %29, !dbg !492
  %35 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !492
  %36 = load i8, i8* %35, align 1, !dbg !492, !tbaa !376
  %37 = zext i8 %36 to i32, !dbg !492
  %38 = shl nuw nsw i32 %37, 16, !dbg !492
  %39 = or i32 %34, %38, !dbg !492
  %40 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !492
  %41 = load i8, i8* %40, align 1, !dbg !492, !tbaa !376
  %42 = zext i8 %41 to i32, !dbg !492
  %43 = shl nuw i32 %42, 24, !dbg !492
  %44 = or i32 %39, %43, !dbg !492
  %45 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 5, !dbg !493
  store i32 %44, i32* %45, align 4, !dbg !494, !tbaa !106
  %46 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !495
  %47 = load i8, i8* %46, align 1, !dbg !495, !tbaa !376
  %48 = zext i8 %47 to i32, !dbg !495
  %49 = getelementptr inbounds i8, i8* %0, i64 9, !dbg !495
  %50 = load i8, i8* %49, align 1, !dbg !495, !tbaa !376
  %51 = zext i8 %50 to i32, !dbg !495
  %52 = shl nuw nsw i32 %51, 8, !dbg !495
  %53 = or i32 %52, %48, !dbg !495
  %54 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !495
  %55 = load i8, i8* %54, align 1, !dbg !495, !tbaa !376
  %56 = zext i8 %55 to i32, !dbg !495
  %57 = shl nuw nsw i32 %56, 16, !dbg !495
  %58 = or i32 %53, %57, !dbg !495
  %59 = getelementptr inbounds i8, i8* %0, i64 11, !dbg !495
  %60 = load i8, i8* %59, align 1, !dbg !495, !tbaa !376
  %61 = zext i8 %60 to i32, !dbg !495
  %62 = shl nuw i32 %61, 24, !dbg !495
  %63 = or i32 %58, %62, !dbg !495
  %64 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 6, !dbg !496
  store i32 %63, i32* %64, align 4, !dbg !497, !tbaa !106
  %65 = getelementptr inbounds i8, i8* %0, i64 12, !dbg !498
  %66 = load i8, i8* %65, align 1, !dbg !498, !tbaa !376
  %67 = zext i8 %66 to i32, !dbg !498
  %68 = getelementptr inbounds i8, i8* %0, i64 13, !dbg !498
  %69 = load i8, i8* %68, align 1, !dbg !498, !tbaa !376
  %70 = zext i8 %69 to i32, !dbg !498
  %71 = shl nuw nsw i32 %70, 8, !dbg !498
  %72 = or i32 %71, %67, !dbg !498
  %73 = getelementptr inbounds i8, i8* %0, i64 14, !dbg !498
  %74 = load i8, i8* %73, align 1, !dbg !498, !tbaa !376
  %75 = zext i8 %74 to i32, !dbg !498
  %76 = shl nuw nsw i32 %75, 16, !dbg !498
  %77 = or i32 %72, %76, !dbg !498
  %78 = getelementptr inbounds i8, i8* %0, i64 15, !dbg !498
  %79 = load i8, i8* %78, align 1, !dbg !498, !tbaa !376
  %80 = zext i8 %79 to i32, !dbg !498
  %81 = shl nuw i32 %80, 24, !dbg !498
  %82 = or i32 %77, %81, !dbg !498
  %83 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 7, !dbg !499
  store i32 %82, i32* %83, align 4, !dbg !500, !tbaa !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  %84 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !505
  %85 = load i8, i8* %84, align 1, !dbg !506, !tbaa !376
  %86 = zext i8 %85 to i32, !dbg !506
  %87 = getelementptr inbounds i8, i8* %0, i64 17, !dbg !506
  %88 = load i8, i8* %87, align 1, !dbg !506, !tbaa !376
  %89 = zext i8 %88 to i32, !dbg !506
  %90 = shl nuw nsw i32 %89, 8, !dbg !506
  %91 = or i32 %90, %86, !dbg !506
  %92 = getelementptr inbounds i8, i8* %0, i64 18, !dbg !506
  %93 = load i8, i8* %92, align 1, !dbg !506, !tbaa !376
  %94 = zext i8 %93 to i32, !dbg !506
  %95 = shl nuw nsw i32 %94, 16, !dbg !506
  %96 = or i32 %91, %95, !dbg !506
  %97 = getelementptr inbounds i8, i8* %0, i64 19, !dbg !506
  %98 = load i8, i8* %97, align 1, !dbg !506, !tbaa !376
  %99 = zext i8 %98 to i32, !dbg !506
  %100 = shl nuw i32 %99, 24, !dbg !506
  %101 = or i32 %96, %100, !dbg !506
  %102 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 8, !dbg !507
  store i32 %101, i32* %102, align 4, !dbg !508, !tbaa !106
  %103 = getelementptr inbounds i8, i8* %0, i64 20, !dbg !509
  %104 = load i8, i8* %103, align 1, !dbg !509, !tbaa !376
  %105 = zext i8 %104 to i32, !dbg !509
  %106 = getelementptr inbounds i8, i8* %0, i64 21, !dbg !509
  %107 = load i8, i8* %106, align 1, !dbg !509, !tbaa !376
  %108 = zext i8 %107 to i32, !dbg !509
  %109 = shl nuw nsw i32 %108, 8, !dbg !509
  %110 = or i32 %109, %105, !dbg !509
  %111 = getelementptr inbounds i8, i8* %0, i64 22, !dbg !509
  %112 = load i8, i8* %111, align 1, !dbg !509, !tbaa !376
  %113 = zext i8 %112 to i32, !dbg !509
  %114 = shl nuw nsw i32 %113, 16, !dbg !509
  %115 = or i32 %110, %114, !dbg !509
  %116 = getelementptr inbounds i8, i8* %0, i64 23, !dbg !509
  %117 = load i8, i8* %116, align 1, !dbg !509, !tbaa !376
  %118 = zext i8 %117 to i32, !dbg !509
  %119 = shl nuw i32 %118, 24, !dbg !509
  %120 = or i32 %115, %119, !dbg !509
  %121 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 9, !dbg !510
  store i32 %120, i32* %121, align 4, !dbg !511, !tbaa !106
  %122 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !512
  %123 = load i8, i8* %122, align 1, !dbg !512, !tbaa !376
  %124 = zext i8 %123 to i32, !dbg !512
  %125 = getelementptr inbounds i8, i8* %0, i64 25, !dbg !512
  %126 = load i8, i8* %125, align 1, !dbg !512, !tbaa !376
  %127 = zext i8 %126 to i32, !dbg !512
  %128 = shl nuw nsw i32 %127, 8, !dbg !512
  %129 = or i32 %128, %124, !dbg !512
  %130 = getelementptr inbounds i8, i8* %0, i64 26, !dbg !512
  %131 = load i8, i8* %130, align 1, !dbg !512, !tbaa !376
  %132 = zext i8 %131 to i32, !dbg !512
  %133 = shl nuw nsw i32 %132, 16, !dbg !512
  %134 = or i32 %129, %133, !dbg !512
  %135 = getelementptr inbounds i8, i8* %0, i64 27, !dbg !512
  %136 = load i8, i8* %135, align 1, !dbg !512, !tbaa !376
  %137 = zext i8 %136 to i32, !dbg !512
  %138 = shl nuw i32 %137, 24, !dbg !512
  %139 = or i32 %134, %138, !dbg !512
  %140 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 10, !dbg !513
  store i32 %139, i32* %140, align 4, !dbg !514, !tbaa !106
  %141 = getelementptr inbounds i8, i8* %0, i64 28, !dbg !515
  %142 = load i8, i8* %141, align 1, !dbg !515, !tbaa !376
  %143 = zext i8 %142 to i32, !dbg !515
  %144 = getelementptr inbounds i8, i8* %0, i64 29, !dbg !515
  %145 = load i8, i8* %144, align 1, !dbg !515, !tbaa !376
  %146 = zext i8 %145 to i32, !dbg !515
  %147 = shl nuw nsw i32 %146, 8, !dbg !515
  %148 = or i32 %147, %143, !dbg !515
  %149 = getelementptr inbounds i8, i8* %0, i64 30, !dbg !515
  %150 = load i8, i8* %149, align 1, !dbg !515, !tbaa !376
  %151 = zext i8 %150 to i32, !dbg !515
  %152 = shl nuw nsw i32 %151, 16, !dbg !515
  %153 = or i32 %148, %152, !dbg !515
  %154 = getelementptr inbounds i8, i8* %0, i64 31, !dbg !515
  %155 = load i8, i8* %154, align 1, !dbg !515, !tbaa !376
  %156 = zext i8 %155 to i32, !dbg !515
  %157 = shl nuw i32 %156, 24, !dbg !515
  %158 = or i32 %153, %157, !dbg !515
  %159 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 11, !dbg !516
  store i32 %158, i32* %159, align 4, !dbg !517, !tbaa !106
  %160 = bitcast %struct._rsx* %8 to <4 x i32>*, !dbg !518
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, <4 x i32>* %160, align 4, !dbg !518, !tbaa !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !519
  %161 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !520
  %162 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 12, !dbg !530
  store i32 0, i32* %162, align 4, !dbg !531, !tbaa !106
  %163 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 13, !dbg !532
  store i32 0, i32* %163, align 4, !dbg !533, !tbaa !106
  %164 = load i8, i8* %161, align 1, !dbg !534, !tbaa !376
  %165 = zext i8 %164 to i32, !dbg !534
  %166 = getelementptr inbounds i8, i8* %0, i64 33, !dbg !534
  %167 = load i8, i8* %166, align 1, !dbg !534, !tbaa !376
  %168 = zext i8 %167 to i32, !dbg !534
  %169 = shl nuw nsw i32 %168, 8, !dbg !534
  %170 = or i32 %169, %165, !dbg !534
  %171 = getelementptr inbounds i8, i8* %0, i64 34, !dbg !534
  %172 = load i8, i8* %171, align 1, !dbg !534, !tbaa !376
  %173 = zext i8 %172 to i32, !dbg !534
  %174 = shl nuw nsw i32 %173, 16, !dbg !534
  %175 = or i32 %170, %174, !dbg !534
  %176 = getelementptr inbounds i8, i8* %0, i64 35, !dbg !534
  %177 = load i8, i8* %176, align 1, !dbg !534, !tbaa !376
  %178 = zext i8 %177 to i32, !dbg !534
  %179 = shl nuw i32 %178, 24, !dbg !534
  %180 = or i32 %175, %179, !dbg !534
  %181 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 14, !dbg !535
  store i32 %180, i32* %181, align 4, !dbg !536, !tbaa !106
  %182 = getelementptr inbounds i8, i8* %0, i64 36, !dbg !537
  %183 = load i8, i8* %182, align 1, !dbg !537, !tbaa !376
  %184 = zext i8 %183 to i32, !dbg !537
  %185 = getelementptr inbounds i8, i8* %0, i64 37, !dbg !537
  %186 = load i8, i8* %185, align 1, !dbg !537, !tbaa !376
  %187 = zext i8 %186 to i32, !dbg !537
  %188 = shl nuw nsw i32 %187, 8, !dbg !537
  %189 = or i32 %188, %184, !dbg !537
  %190 = getelementptr inbounds i8, i8* %0, i64 38, !dbg !537
  %191 = load i8, i8* %190, align 1, !dbg !537, !tbaa !376
  %192 = zext i8 %191 to i32, !dbg !537
  %193 = shl nuw nsw i32 %192, 16, !dbg !537
  %194 = or i32 %189, %193, !dbg !537
  %195 = getelementptr inbounds i8, i8* %0, i64 39, !dbg !537
  %196 = load i8, i8* %195, align 1, !dbg !537, !tbaa !376
  %197 = zext i8 %196 to i32, !dbg !537
  %198 = shl nuw i32 %197, 24, !dbg !537
  %199 = or i32 %194, %198, !dbg !537
  %200 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 15, !dbg !538
  store i32 %199, i32* %200, align 4, !dbg !539, !tbaa !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  ret void, !dbg !541
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
!130 = !DILocation(line: 148, column: 2, scope: !119, inlinedAt: !126)
!131 = !DILocation(line: 148, column: 11, scope: !119, inlinedAt: !126)
!132 = !DILocation(line: 149, column: 11, scope: !133, inlinedAt: !126)
!133 = distinct !DILexicalBlock(scope: !134, file: !3, line: 149, column: 7)
!134 = distinct !DILexicalBlock(scope: !119, file: !3, line: 148, column: 16)
!135 = !DILocation(line: 149, column: 19, scope: !133, inlinedAt: !126)
!136 = !DILocation(line: 149, column: 7, scope: !134, inlinedAt: !126)
!137 = !DILocation(line: 159, column: 7, scope: !134, inlinedAt: !126)
!138 = !DILocation(line: 150, column: 8, scope: !139, inlinedAt: !126)
!139 = distinct !DILexicalBlock(scope: !133, file: !3, line: 149, column: 24)
!140 = !DILocation(line: 145, column: 9, scope: !119, inlinedAt: !126)
!141 = !DILocation(line: 151, column: 16, scope: !139, inlinedAt: !126)
!142 = !DILocation(line: 151, column: 28, scope: !139, inlinedAt: !126)
!143 = !DILocation(line: 152, column: 8, scope: !139, inlinedAt: !126)
!144 = !DILocation(line: 144, column: 10, scope: !119, inlinedAt: !126)
!145 = !DILocation(line: 153, column: 4, scope: !139, inlinedAt: !126)
!146 = !DILocation(line: 154, column: 4, scope: !139, inlinedAt: !126)
!147 = !DILocation(line: 155, column: 8, scope: !139, inlinedAt: !126)
!148 = !DILocation(line: 156, column: 6, scope: !139, inlinedAt: !126)
!149 = !DILocation(line: 157, column: 16, scope: !139, inlinedAt: !126)
!150 = !DILocation(line: 158, column: 3, scope: !139, inlinedAt: !126)
!151 = !DILocation(line: 159, column: 19, scope: !152, inlinedAt: !126)
!152 = distinct !DILexicalBlock(scope: !134, file: !3, line: 159, column: 7)
!153 = !DILocation(line: 160, column: 4, scope: !152, inlinedAt: !126)
!154 = distinct !{!154, !155, !156}
!155 = !DILocation(line: 148, column: 2, scope: !119)
!156 = !DILocation(line: 161, column: 2, scope: !119)
!157 = !DILocation(line: 162, column: 1, scope: !119, inlinedAt: !126)
!158 = !DILocation(line: 203, column: 1, scope: !110)
!159 = distinct !DISubprogram(name: "_rs_stir_if_needed", scope: !3, file: !3, line: 106, type: !160, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !162)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !31}
!162 = !{!163}
!163 = !DILocalVariable(name: "len", arg: 1, scope: !159, file: !3, line: 106, type: !31)
!164 = !DILocalVariable(name: "rnd", scope: !165, file: !3, line: 87, type: !169)
!165 = distinct !DISubprogram(name: "_rs_stir", scope: !3, file: !3, line: 85, type: !166, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !168)
!166 = !DISubroutineType(types: !167)
!167 = !{null}
!168 = !{!164}
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 320, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 40)
!172 = !DILocation(line: 87, column: 9, scope: !165, inlinedAt: !173)
!173 = distinct !DILocation(line: 110, column: 3, scope: !174)
!174 = distinct !DILexicalBlock(scope: !159, file: !3, line: 109, column: 6)
!175 = !DILocation(line: 106, column: 27, scope: !159)
!176 = !DILocation(line: 91, column: 1, scope: !177, inlinedAt: !178)
!177 = distinct !DISubprogram(name: "_rs_forkdetect", scope: !24, file: !24, line: 86, type: !166, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!178 = distinct !DILocation(line: 108, column: 2, scope: !159)
!179 = !DILocation(line: 109, column: 7, scope: !174)
!180 = !DILocation(line: 109, column: 10, scope: !174)
!181 = !DILocation(line: 109, column: 17, scope: !174)
!182 = !{!87, !88, i64 8}
!183 = !DILocation(line: 109, column: 26, scope: !174)
!184 = !DILocation(line: 109, column: 6, scope: !159)
!185 = !DILocation(line: 87, column: 2, scope: !165, inlinedAt: !173)
!186 = !DILocation(line: 89, column: 6, scope: !187, inlinedAt: !173)
!187 = distinct !DILexicalBlock(scope: !165, file: !3, line: 89, column: 6)
!188 = !DILocation(line: 89, column: 34, scope: !187, inlinedAt: !173)
!189 = !DILocation(line: 89, column: 6, scope: !165, inlinedAt: !173)
!190 = !DILocation(line: 69, column: 2, scope: !191, inlinedAt: !192)
!191 = distinct !DISubprogram(name: "_getentropy_fail", scope: !24, file: !24, line: 64, type: !166, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!192 = distinct !DILocation(line: 90, column: 3, scope: !187, inlinedAt: !173)
!193 = !DILocation(line: 71, column: 1, scope: !191, inlinedAt: !192)
!194 = !DILocation(line: 90, column: 3, scope: !187, inlinedAt: !173)
!195 = !DILocation(line: 92, column: 7, scope: !196, inlinedAt: !173)
!196 = distinct !DILexicalBlock(scope: !165, file: !3, line: 92, column: 6)
!197 = !DILocation(line: 92, column: 6, scope: !165, inlinedAt: !173)
!198 = !DILocation(line: 93, column: 3, scope: !196, inlinedAt: !173)
!199 = !DILocation(line: 95, column: 3, scope: !196, inlinedAt: !173)
!200 = !DILocation(line: 96, column: 2, scope: !165, inlinedAt: !173)
!201 = !DILocation(line: 99, column: 14, scope: !165, inlinedAt: !173)
!202 = !DILocation(line: 100, column: 9, scope: !165, inlinedAt: !173)
!203 = !DILocation(line: 100, column: 2, scope: !165, inlinedAt: !173)
!204 = !DILocation(line: 102, column: 2, scope: !165, inlinedAt: !173)
!205 = !DILocation(line: 102, column: 15, scope: !165, inlinedAt: !173)
!206 = !DILocation(line: 103, column: 1, scope: !165, inlinedAt: !173)
!207 = !DILocation(line: 110, column: 3, scope: !174)
!208 = !DILocation(line: 111, column: 10, scope: !209)
!209 = distinct !DILexicalBlock(scope: !159, file: !3, line: 111, column: 6)
!210 = !DILocation(line: 111, column: 6, scope: !159)
!211 = !DILocation(line: 0, scope: !209)
!212 = !DILocation(line: 115, column: 1, scope: !159)
!213 = distinct !DISubprogram(name: "_rs_rekey", scope: !3, file: !3, line: 118, type: !214, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !216)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !18, !31}
!216 = !{!217, !218, !219, !222}
!217 = !DILocalVariable(name: "dat", arg: 1, scope: !213, file: !3, line: 118, type: !18)
!218 = !DILocalVariable(name: "datlen", arg: 2, scope: !213, file: !3, line: 118, type: !31)
!219 = !DILocalVariable(name: "i", scope: !220, file: !3, line: 128, type: !31)
!220 = distinct !DILexicalBlock(scope: !221, file: !3, line: 127, column: 11)
!221 = distinct !DILexicalBlock(scope: !213, file: !3, line: 127, column: 6)
!222 = !DILocalVariable(name: "m", scope: !220, file: !3, line: 128, type: !31)
!223 = !DILocation(line: 118, column: 19, scope: !213)
!224 = !DILocation(line: 118, column: 31, scope: !213)
!225 = !DILocation(line: 124, column: 24, scope: !213)
!226 = !DILocation(line: 124, column: 40, scope: !213)
!227 = !DILocalVariable(name: "x", arg: 1, scope: !228, file: !8, line: 88, type: !231)
!228 = distinct !DISubprogram(name: "chacha_encrypt_bytes", scope: !8, file: !8, line: 88, type: !229, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !235)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !231, !232, !234, !7}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!235 = !{!227, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !276}
!236 = !DILocalVariable(name: "m", arg: 2, scope: !228, file: !8, line: 88, type: !232)
!237 = !DILocalVariable(name: "c", arg: 3, scope: !228, file: !8, line: 88, type: !234)
!238 = !DILocalVariable(name: "bytes", arg: 4, scope: !228, file: !8, line: 88, type: !7)
!239 = !DILocalVariable(name: "x0", scope: !228, file: !8, line: 90, type: !7)
!240 = !DILocalVariable(name: "x1", scope: !228, file: !8, line: 90, type: !7)
!241 = !DILocalVariable(name: "x2", scope: !228, file: !8, line: 90, type: !7)
!242 = !DILocalVariable(name: "x3", scope: !228, file: !8, line: 90, type: !7)
!243 = !DILocalVariable(name: "x4", scope: !228, file: !8, line: 90, type: !7)
!244 = !DILocalVariable(name: "x5", scope: !228, file: !8, line: 90, type: !7)
!245 = !DILocalVariable(name: "x6", scope: !228, file: !8, line: 90, type: !7)
!246 = !DILocalVariable(name: "x7", scope: !228, file: !8, line: 90, type: !7)
!247 = !DILocalVariable(name: "x8", scope: !228, file: !8, line: 90, type: !7)
!248 = !DILocalVariable(name: "x9", scope: !228, file: !8, line: 90, type: !7)
!249 = !DILocalVariable(name: "x10", scope: !228, file: !8, line: 90, type: !7)
!250 = !DILocalVariable(name: "x11", scope: !228, file: !8, line: 90, type: !7)
!251 = !DILocalVariable(name: "x12", scope: !228, file: !8, line: 90, type: !7)
!252 = !DILocalVariable(name: "x13", scope: !228, file: !8, line: 90, type: !7)
!253 = !DILocalVariable(name: "x14", scope: !228, file: !8, line: 90, type: !7)
!254 = !DILocalVariable(name: "x15", scope: !228, file: !8, line: 90, type: !7)
!255 = !DILocalVariable(name: "j0", scope: !228, file: !8, line: 91, type: !7)
!256 = !DILocalVariable(name: "j1", scope: !228, file: !8, line: 91, type: !7)
!257 = !DILocalVariable(name: "j2", scope: !228, file: !8, line: 91, type: !7)
!258 = !DILocalVariable(name: "j3", scope: !228, file: !8, line: 91, type: !7)
!259 = !DILocalVariable(name: "j4", scope: !228, file: !8, line: 91, type: !7)
!260 = !DILocalVariable(name: "j5", scope: !228, file: !8, line: 91, type: !7)
!261 = !DILocalVariable(name: "j6", scope: !228, file: !8, line: 91, type: !7)
!262 = !DILocalVariable(name: "j7", scope: !228, file: !8, line: 91, type: !7)
!263 = !DILocalVariable(name: "j8", scope: !228, file: !8, line: 91, type: !7)
!264 = !DILocalVariable(name: "j9", scope: !228, file: !8, line: 91, type: !7)
!265 = !DILocalVariable(name: "j10", scope: !228, file: !8, line: 91, type: !7)
!266 = !DILocalVariable(name: "j11", scope: !228, file: !8, line: 91, type: !7)
!267 = !DILocalVariable(name: "j12", scope: !228, file: !8, line: 91, type: !7)
!268 = !DILocalVariable(name: "j13", scope: !228, file: !8, line: 91, type: !7)
!269 = !DILocalVariable(name: "j14", scope: !228, file: !8, line: 91, type: !7)
!270 = !DILocalVariable(name: "j15", scope: !228, file: !8, line: 91, type: !7)
!271 = !DILocalVariable(name: "ctarget", scope: !228, file: !8, line: 92, type: !234)
!272 = !DILocalVariable(name: "tmp", scope: !228, file: !8, line: 93, type: !273)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 64)
!276 = !DILocalVariable(name: "i", scope: !228, file: !8, line: 94, type: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !20, line: 95, baseType: !13)
!278 = !DILocation(line: 88, column: 34, scope: !228, inlinedAt: !279)
!279 = distinct !DILocation(line: 124, column: 2, scope: !213)
!280 = !DILocation(line: 88, column: 46, scope: !228, inlinedAt: !279)
!281 = !DILocation(line: 88, column: 52, scope: !228, inlinedAt: !279)
!282 = !DILocation(line: 88, column: 58, scope: !228, inlinedAt: !279)
!283 = !DILocation(line: 92, column: 7, scope: !228, inlinedAt: !279)
!284 = !DILocation(line: 96, column: 7, scope: !228, inlinedAt: !279)
!285 = !DILocation(line: 91, column: 7, scope: !228, inlinedAt: !279)
!286 = !DILocation(line: 91, column: 11, scope: !228, inlinedAt: !279)
!287 = !DILocation(line: 91, column: 15, scope: !228, inlinedAt: !279)
!288 = !DILocation(line: 98, column: 8, scope: !228, inlinedAt: !279)
!289 = !DILocation(line: 91, column: 19, scope: !228, inlinedAt: !279)
!290 = !DILocation(line: 91, column: 23, scope: !228, inlinedAt: !279)
!291 = !DILocation(line: 91, column: 27, scope: !228, inlinedAt: !279)
!292 = !DILocation(line: 91, column: 31, scope: !228, inlinedAt: !279)
!293 = !DILocation(line: 102, column: 8, scope: !228, inlinedAt: !279)
!294 = !DILocation(line: 91, column: 35, scope: !228, inlinedAt: !279)
!295 = !DILocation(line: 91, column: 39, scope: !228, inlinedAt: !279)
!296 = !DILocation(line: 91, column: 43, scope: !228, inlinedAt: !279)
!297 = !DILocation(line: 91, column: 47, scope: !228, inlinedAt: !279)
!298 = !DILocation(line: 106, column: 8, scope: !228, inlinedAt: !279)
!299 = !DILocation(line: 91, column: 52, scope: !228, inlinedAt: !279)
!300 = !DILocation(line: 110, column: 9, scope: !228, inlinedAt: !279)
!301 = !DILocation(line: 91, column: 57, scope: !228, inlinedAt: !279)
!302 = !DILocation(line: 111, column: 9, scope: !228, inlinedAt: !279)
!303 = !DILocation(line: 91, column: 62, scope: !228, inlinedAt: !279)
!304 = !DILocation(line: 112, column: 9, scope: !228, inlinedAt: !279)
!305 = !DILocation(line: 91, column: 67, scope: !228, inlinedAt: !279)
!306 = !DILocation(line: 113, column: 9, scope: !228, inlinedAt: !279)
!307 = !DILocation(line: 91, column: 72, scope: !228, inlinedAt: !279)
!308 = !DILocation(line: 115, column: 3, scope: !228, inlinedAt: !279)
!309 = !DILocation(line: 0, scope: !310, inlinedAt: !279)
!310 = distinct !DILexicalBlock(scope: !311, file: !8, line: 115, column: 12)
!311 = distinct !DILexicalBlock(scope: !312, file: !8, line: 115, column: 3)
!312 = distinct !DILexicalBlock(scope: !228, file: !8, line: 115, column: 3)
!313 = !DILocation(line: 111, column: 7, scope: !228, inlinedAt: !279)
!314 = !DILocation(line: 115, column: 3, scope: !311, inlinedAt: !279)
!315 = !DILocation(line: 116, column: 9, scope: !310, inlinedAt: !279)
!316 = !DILocation(line: 90, column: 7, scope: !228, inlinedAt: !279)
!317 = !DILocation(line: 90, column: 11, scope: !228, inlinedAt: !279)
!318 = !DILocation(line: 90, column: 15, scope: !228, inlinedAt: !279)
!319 = !DILocation(line: 90, column: 19, scope: !228, inlinedAt: !279)
!320 = !DILocation(line: 90, column: 23, scope: !228, inlinedAt: !279)
!321 = !DILocation(line: 90, column: 27, scope: !228, inlinedAt: !279)
!322 = !DILocation(line: 90, column: 31, scope: !228, inlinedAt: !279)
!323 = !DILocation(line: 90, column: 35, scope: !228, inlinedAt: !279)
!324 = !DILocation(line: 90, column: 39, scope: !228, inlinedAt: !279)
!325 = !DILocation(line: 90, column: 43, scope: !228, inlinedAt: !279)
!326 = !DILocation(line: 90, column: 47, scope: !228, inlinedAt: !279)
!327 = !DILocation(line: 90, column: 52, scope: !228, inlinedAt: !279)
!328 = !DILocation(line: 90, column: 57, scope: !228, inlinedAt: !279)
!329 = !DILocation(line: 90, column: 62, scope: !228, inlinedAt: !279)
!330 = !DILocation(line: 90, column: 67, scope: !228, inlinedAt: !279)
!331 = !DILocation(line: 90, column: 72, scope: !228, inlinedAt: !279)
!332 = !DILocation(line: 94, column: 9, scope: !228, inlinedAt: !279)
!333 = !DILocation(line: 138, column: 10, scope: !334, inlinedAt: !279)
!334 = distinct !DILexicalBlock(scope: !310, file: !8, line: 138, column: 5)
!335 = !DILocation(line: 138, column: 5, scope: !334, inlinedAt: !279)
!336 = !DILocation(line: 139, column: 7, scope: !337, inlinedAt: !279)
!337 = distinct !DILexicalBlock(scope: !338, file: !8, line: 138, column: 31)
!338 = distinct !DILexicalBlock(scope: !334, file: !8, line: 138, column: 5)
!339 = !DILocation(line: 142, column: 7, scope: !337, inlinedAt: !279)
!340 = !DILocation(line: 141, column: 7, scope: !337, inlinedAt: !279)
!341 = !DILocation(line: 140, column: 7, scope: !337, inlinedAt: !279)
!342 = !DILocation(line: 143, column: 7, scope: !337, inlinedAt: !279)
!343 = !DILocation(line: 146, column: 7, scope: !337, inlinedAt: !279)
!344 = !DILocation(line: 138, column: 25, scope: !338, inlinedAt: !279)
!345 = !DILocation(line: 138, column: 5, scope: !338, inlinedAt: !279)
!346 = !DILocation(line: 138, column: 19, scope: !338, inlinedAt: !279)
!347 = distinct !{!347, !348, !349}
!348 = !DILocation(line: 138, column: 5, scope: !334)
!349 = !DILocation(line: 147, column: 5, scope: !334)
!350 = !DILocation(line: 148, column: 10, scope: !310, inlinedAt: !279)
!351 = !DILocation(line: 149, column: 10, scope: !310, inlinedAt: !279)
!352 = !DILocation(line: 150, column: 10, scope: !310, inlinedAt: !279)
!353 = !DILocation(line: 151, column: 10, scope: !310, inlinedAt: !279)
!354 = !DILocation(line: 152, column: 10, scope: !310, inlinedAt: !279)
!355 = !DILocation(line: 153, column: 10, scope: !310, inlinedAt: !279)
!356 = !DILocation(line: 154, column: 10, scope: !310, inlinedAt: !279)
!357 = !DILocation(line: 155, column: 10, scope: !310, inlinedAt: !279)
!358 = !DILocation(line: 156, column: 10, scope: !310, inlinedAt: !279)
!359 = !DILocation(line: 157, column: 10, scope: !310, inlinedAt: !279)
!360 = !DILocation(line: 158, column: 11, scope: !310, inlinedAt: !279)
!361 = !DILocation(line: 159, column: 11, scope: !310, inlinedAt: !279)
!362 = !DILocation(line: 160, column: 11, scope: !310, inlinedAt: !279)
!363 = !DILocation(line: 161, column: 11, scope: !310, inlinedAt: !279)
!364 = !DILocation(line: 162, column: 11, scope: !310, inlinedAt: !279)
!365 = !DILocation(line: 163, column: 11, scope: !310, inlinedAt: !279)
!366 = !DILocation(line: 184, column: 11, scope: !310, inlinedAt: !279)
!367 = !DILocation(line: 185, column: 10, scope: !368, inlinedAt: !279)
!368 = distinct !DILexicalBlock(scope: !310, file: !8, line: 185, column: 9)
!369 = !DILocation(line: 185, column: 9, scope: !310, inlinedAt: !279)
!370 = !DILocation(line: 186, column: 13, scope: !371, inlinedAt: !279)
!371 = distinct !DILexicalBlock(scope: !368, file: !8, line: 185, column: 15)
!372 = !DILocation(line: 188, column: 5, scope: !371, inlinedAt: !279)
!373 = !DILocation(line: 0, scope: !371, inlinedAt: !279)
!374 = !DILocation(line: 190, column: 5, scope: !375, inlinedAt: !279)
!375 = distinct !DILexicalBlock(scope: !310, file: !8, line: 190, column: 5)
!376 = !{!89, !89, i64 0}
!377 = !DILocation(line: 191, column: 5, scope: !378, inlinedAt: !279)
!378 = distinct !DILexicalBlock(scope: !310, file: !8, line: 191, column: 5)
!379 = !DILocation(line: 192, column: 5, scope: !380, inlinedAt: !279)
!380 = distinct !DILexicalBlock(scope: !310, file: !8, line: 192, column: 5)
!381 = !DILocation(line: 193, column: 5, scope: !382, inlinedAt: !279)
!382 = distinct !DILexicalBlock(scope: !310, file: !8, line: 193, column: 5)
!383 = !DILocation(line: 194, column: 5, scope: !384, inlinedAt: !279)
!384 = distinct !DILexicalBlock(scope: !310, file: !8, line: 194, column: 5)
!385 = !DILocation(line: 195, column: 5, scope: !386, inlinedAt: !279)
!386 = distinct !DILexicalBlock(scope: !310, file: !8, line: 195, column: 5)
!387 = !DILocation(line: 196, column: 5, scope: !388, inlinedAt: !279)
!388 = distinct !DILexicalBlock(scope: !310, file: !8, line: 196, column: 5)
!389 = !DILocation(line: 197, column: 5, scope: !390, inlinedAt: !279)
!390 = distinct !DILexicalBlock(scope: !310, file: !8, line: 197, column: 5)
!391 = !DILocation(line: 198, column: 5, scope: !392, inlinedAt: !279)
!392 = distinct !DILexicalBlock(scope: !310, file: !8, line: 198, column: 5)
!393 = !DILocation(line: 199, column: 5, scope: !394, inlinedAt: !279)
!394 = distinct !DILexicalBlock(scope: !310, file: !8, line: 199, column: 5)
!395 = !DILocation(line: 200, column: 5, scope: !396, inlinedAt: !279)
!396 = distinct !DILexicalBlock(scope: !310, file: !8, line: 200, column: 5)
!397 = !DILocation(line: 201, column: 5, scope: !398, inlinedAt: !279)
!398 = distinct !DILexicalBlock(scope: !310, file: !8, line: 201, column: 5)
!399 = !DILocation(line: 202, column: 5, scope: !400, inlinedAt: !279)
!400 = distinct !DILexicalBlock(scope: !310, file: !8, line: 202, column: 5)
!401 = !DILocation(line: 203, column: 5, scope: !402, inlinedAt: !279)
!402 = distinct !DILexicalBlock(scope: !310, file: !8, line: 203, column: 5)
!403 = !DILocation(line: 204, column: 5, scope: !404, inlinedAt: !279)
!404 = distinct !DILexicalBlock(scope: !310, file: !8, line: 204, column: 5)
!405 = !DILocation(line: 205, column: 5, scope: !406, inlinedAt: !279)
!406 = distinct !DILexicalBlock(scope: !310, file: !8, line: 205, column: 5)
!407 = !DILocation(line: 207, column: 15, scope: !408, inlinedAt: !279)
!408 = distinct !DILexicalBlock(scope: !310, file: !8, line: 207, column: 9)
!409 = !DILocation(line: 207, column: 9, scope: !310, inlinedAt: !279)
!410 = !DILocation(line: 215, column: 11, scope: !310, inlinedAt: !279)
!411 = !DILocation(line: 216, column: 7, scope: !310, inlinedAt: !279)
!412 = distinct !{!412, !413, !414}
!413 = !DILocation(line: 115, column: 3, scope: !312)
!414 = !DILocation(line: 220, column: 3, scope: !312)
!415 = !DILocation(line: 208, column: 11, scope: !416, inlinedAt: !279)
!416 = distinct !DILexicalBlock(scope: !408, file: !8, line: 207, column: 22)
!417 = !DILocation(line: 211, column: 20, scope: !416, inlinedAt: !279)
!418 = !DILocation(line: 212, column: 20, scope: !416, inlinedAt: !279)
!419 = !DILocation(line: 213, column: 7, scope: !416, inlinedAt: !279)
!420 = !DILocation(line: 221, column: 1, scope: !228, inlinedAt: !279)
!421 = !DILocation(line: 127, column: 6, scope: !221)
!422 = !DILocation(line: 127, column: 6, scope: !213)
!423 = !DILocation(line: 130, column: 7, scope: !220)
!424 = !DILocation(line: 128, column: 13, scope: !220)
!425 = !DILocation(line: 128, column: 10, scope: !220)
!426 = !DILocation(line: 131, column: 8, scope: !427)
!427 = distinct !DILexicalBlock(scope: !220, file: !3, line: 131, column: 3)
!428 = !DILocation(line: 131, column: 17, scope: !429)
!429 = distinct !DILexicalBlock(scope: !427, file: !3, line: 131, column: 3)
!430 = !DILocation(line: 131, column: 3, scope: !427)
!431 = !DILocation(line: 132, column: 22, scope: !429)
!432 = !DILocation(line: 132, column: 4, scope: !429)
!433 = !DILocation(line: 132, column: 19, scope: !429)
!434 = !DILocation(line: 131, column: 23, scope: !429)
!435 = !DILocation(line: 131, column: 3, scope: !429)
!436 = distinct !{!436, !430, !437}
!437 = !DILocation(line: 132, column: 27, scope: !427)
!438 = !DILocation(line: 133, column: 2, scope: !220)
!439 = !DILocation(line: 135, column: 2, scope: !213)
!440 = !DILocation(line: 136, column: 9, scope: !213)
!441 = !DILocation(line: 136, column: 2, scope: !213)
!442 = !DILocation(line: 137, column: 14, scope: !213)
!443 = !DILocation(line: 138, column: 1, scope: !213)
!444 = distinct !DISubprogram(name: "_rs_init", scope: !3, file: !3, line: 70, type: !214, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !445)
!445 = !{!446, !447}
!446 = !DILocalVariable(name: "buf", arg: 1, scope: !444, file: !3, line: 70, type: !18)
!447 = !DILocalVariable(name: "n", arg: 2, scope: !444, file: !3, line: 70, type: !31)
!448 = !DILocation(line: 70, column: 18, scope: !444)
!449 = !DILocation(line: 70, column: 30, scope: !444)
!450 = !DILocation(line: 72, column: 6, scope: !444)
!451 = !DILocation(line: 75, column: 6, scope: !452)
!452 = distinct !DILexicalBlock(scope: !444, file: !3, line: 75, column: 6)
!453 = !DILocation(line: 75, column: 9, scope: !452)
!454 = !DILocation(line: 75, column: 6, scope: !444)
!455 = !DILocation(line: 80, column: 19, scope: !444)
!456 = !DILocalVariable(name: "rsp", arg: 1, scope: !457, file: !24, line: 74, type: !461)
!457 = distinct !DISubprogram(name: "_rs_allocate", scope: !24, file: !24, line: 74, type: !458, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !463)
!458 = !DISubroutineType(types: !459)
!459 = !{!460, !461, !462}
!460 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!463 = !{!456, !464}
!464 = !DILocalVariable(name: "rsxp", arg: 2, scope: !457, file: !24, line: 74, type: !462)
!465 = !DILocation(line: 74, column: 27, scope: !457, inlinedAt: !466)
!466 = distinct !DILocation(line: 76, column: 7, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !3, line: 76, column: 7)
!468 = distinct !DILexicalBlock(scope: !452, file: !3, line: 75, column: 18)
!469 = !DILocation(line: 74, column: 46, scope: !457, inlinedAt: !466)
!470 = !DILocation(line: 79, column: 7, scope: !457, inlinedAt: !466)
!471 = !DILocation(line: 80, column: 8, scope: !457, inlinedAt: !466)
!472 = !DILocation(line: 81, column: 2, scope: !457, inlinedAt: !466)
!473 = !DILocation(line: 76, column: 7, scope: !468)
!474 = !DILocalVariable(name: "x", arg: 1, scope: !475, file: !8, line: 54, type: !231)
!475 = distinct !DISubprogram(name: "chacha_keysetup", scope: !8, file: !8, line: 54, type: !476, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !478)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !231, !232, !7, !7}
!478 = !{!474, !479, !480, !481, !482}
!479 = !DILocalVariable(name: "k", arg: 2, scope: !475, file: !8, line: 54, type: !232)
!480 = !DILocalVariable(name: "kbits", arg: 3, scope: !475, file: !8, line: 54, type: !7)
!481 = !DILocalVariable(name: "ivbits", arg: 4, scope: !475, file: !8, line: 54, type: !7)
!482 = !DILocalVariable(name: "constants", scope: !475, file: !8, line: 56, type: !483)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!484 = !DILocation(line: 54, column: 29, scope: !475, inlinedAt: !485)
!485 = distinct !DILocation(line: 80, column: 2, scope: !444)
!486 = !DILocation(line: 54, column: 41, scope: !475, inlinedAt: !485)
!487 = !DILocation(line: 54, column: 47, scope: !475, inlinedAt: !485)
!488 = !DILocation(line: 54, column: 57, scope: !475, inlinedAt: !485)
!489 = !DILocation(line: 58, column: 17, scope: !475, inlinedAt: !485)
!490 = !DILocation(line: 58, column: 3, scope: !475, inlinedAt: !485)
!491 = !DILocation(line: 58, column: 15, scope: !475, inlinedAt: !485)
!492 = !DILocation(line: 59, column: 17, scope: !475, inlinedAt: !485)
!493 = !DILocation(line: 59, column: 3, scope: !475, inlinedAt: !485)
!494 = !DILocation(line: 59, column: 15, scope: !475, inlinedAt: !485)
!495 = !DILocation(line: 60, column: 17, scope: !475, inlinedAt: !485)
!496 = !DILocation(line: 60, column: 3, scope: !475, inlinedAt: !485)
!497 = !DILocation(line: 60, column: 15, scope: !475, inlinedAt: !485)
!498 = !DILocation(line: 61, column: 17, scope: !475, inlinedAt: !485)
!499 = !DILocation(line: 61, column: 3, scope: !475, inlinedAt: !485)
!500 = !DILocation(line: 61, column: 15, scope: !475, inlinedAt: !485)
!501 = !DILocation(line: 62, column: 7, scope: !475, inlinedAt: !485)
!502 = !DILocation(line: 65, column: 3, scope: !503, inlinedAt: !485)
!503 = distinct !DILexicalBlock(scope: !504, file: !8, line: 62, column: 21)
!504 = distinct !DILexicalBlock(scope: !475, file: !8, line: 62, column: 7)
!505 = !DILocation(line: 63, column: 7, scope: !503, inlinedAt: !485)
!506 = !DILocation(line: 68, column: 17, scope: !475, inlinedAt: !485)
!507 = !DILocation(line: 68, column: 3, scope: !475, inlinedAt: !485)
!508 = !DILocation(line: 68, column: 15, scope: !475, inlinedAt: !485)
!509 = !DILocation(line: 69, column: 17, scope: !475, inlinedAt: !485)
!510 = !DILocation(line: 69, column: 3, scope: !475, inlinedAt: !485)
!511 = !DILocation(line: 69, column: 15, scope: !475, inlinedAt: !485)
!512 = !DILocation(line: 70, column: 18, scope: !475, inlinedAt: !485)
!513 = !DILocation(line: 70, column: 3, scope: !475, inlinedAt: !485)
!514 = !DILocation(line: 70, column: 16, scope: !475, inlinedAt: !485)
!515 = !DILocation(line: 71, column: 18, scope: !475, inlinedAt: !485)
!516 = !DILocation(line: 71, column: 3, scope: !475, inlinedAt: !485)
!517 = !DILocation(line: 71, column: 16, scope: !475, inlinedAt: !485)
!518 = !DILocation(line: 72, column: 15, scope: !475, inlinedAt: !485)
!519 = !DILocation(line: 76, column: 1, scope: !475, inlinedAt: !485)
!520 = !DILocation(line: 81, column: 38, scope: !444)
!521 = !DILocalVariable(name: "x", arg: 1, scope: !522, file: !8, line: 79, type: !231)
!522 = distinct !DISubprogram(name: "chacha_ivsetup", scope: !8, file: !8, line: 79, type: !523, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !525)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !231, !232}
!525 = !{!521, !526}
!526 = !DILocalVariable(name: "iv", arg: 2, scope: !522, file: !8, line: 79, type: !232)
!527 = !DILocation(line: 79, column: 28, scope: !522, inlinedAt: !528)
!528 = distinct !DILocation(line: 81, column: 2, scope: !444)
!529 = !DILocation(line: 79, column: 40, scope: !522, inlinedAt: !528)
!530 = !DILocation(line: 81, column: 3, scope: !522, inlinedAt: !528)
!531 = !DILocation(line: 81, column: 16, scope: !522, inlinedAt: !528)
!532 = !DILocation(line: 82, column: 3, scope: !522, inlinedAt: !528)
!533 = !DILocation(line: 82, column: 16, scope: !522, inlinedAt: !528)
!534 = !DILocation(line: 83, column: 18, scope: !522, inlinedAt: !528)
!535 = !DILocation(line: 83, column: 3, scope: !522, inlinedAt: !528)
!536 = !DILocation(line: 83, column: 16, scope: !522, inlinedAt: !528)
!537 = !DILocation(line: 84, column: 18, scope: !522, inlinedAt: !528)
!538 = !DILocation(line: 84, column: 3, scope: !522, inlinedAt: !528)
!539 = !DILocation(line: 84, column: 16, scope: !522, inlinedAt: !528)
!540 = !DILocation(line: 85, column: 1, scope: !522, inlinedAt: !528)
!541 = !DILocation(line: 82, column: 1, scope: !444)
