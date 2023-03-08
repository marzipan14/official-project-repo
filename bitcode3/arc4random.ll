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

; Function Attrs: noredzone nounwind
define dso_local i32 @arc4random() local_unnamed_addr #0 !dbg !67 {
  %1 = alloca [40 x i8], align 16
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #5, !dbg !97
  %4 = load %struct._rs*, %struct._rs** @rs, align 8, !dbg !101, !tbaa !102
  %5 = icmp eq %struct._rs* %4, null, !dbg !101
  br i1 %5, label %9, label %6, !dbg !106

; <label>:6:                                      ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 1), align 8, !dbg !107, !tbaa !108
  %8 = icmp ugt i64 %7, 4, !dbg !111
  br i1 %8, label %25, label %9, !dbg !112

; <label>:9:                                      ; preds = %6, %0
  %10 = getelementptr inbounds [40 x i8], [40 x i8]* %1, i64 0, i64 0, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #5, !dbg !113
  %11 = call i32 @getentropy(i8* nonnull %10, i64 40) #6, !dbg !114
  %12 = icmp eq i32 %11, -1, !dbg !116
  br i1 %12, label %13, label %15, !dbg !117

; <label>:13:                                     ; preds = %9
  %14 = call i32 @raise(i32 9) #6, !dbg !118
  br label %15, !dbg !121

; <label>:15:                                     ; preds = %13, %9
  %16 = load %struct._rs*, %struct._rs** @rs, align 8, !dbg !122, !tbaa !102
  %17 = icmp eq %struct._rs* %16, null, !dbg !122
  br i1 %17, label %18, label %19, !dbg !124

; <label>:18:                                     ; preds = %15
  call fastcc void @_rs_init(i8* nonnull %10) #6, !dbg !125
  br label %20, !dbg !125

; <label>:19:                                     ; preds = %15
  call fastcc void @_rs_rekey(i8* nonnull %10, i64 40) #6, !dbg !126
  br label %20

; <label>:20:                                     ; preds = %19, %18
  call void @explicit_bzero(i8* nonnull %10, i64 40) #6, !dbg !127
  store i64 0, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !128, !tbaa !129
  %21 = load %struct._rsx*, %struct._rsx** @rsx, align 8, !dbg !130, !tbaa !102
  %22 = getelementptr inbounds %struct._rsx, %struct._rsx* %21, i64 0, i32 1, i64 0, !dbg !130
  %23 = call i8* @memset(i8* nonnull %22, i32 0, i64 1024) #6, !dbg !131
  %24 = load %struct._rs*, %struct._rs** @rs, align 8, !dbg !132, !tbaa !102
  store i64 1600000, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 1), align 8, !dbg !133, !tbaa !108
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #5, !dbg !134
  br label %25, !dbg !135

; <label>:25:                                     ; preds = %20, %6
  %26 = phi %struct._rs* [ %4, %6 ], [ %24, %20 ], !dbg !136
  %27 = phi i64 [ %7, %6 ], [ 1600000, %20 ]
  %28 = getelementptr inbounds %struct._rs, %struct._rs* %26, i64 0, i32 1, !dbg !138
  %29 = add i64 %27, -4, !dbg !140
  store i64 %29, i64* %28, align 8, !dbg !141, !tbaa !108
  %30 = getelementptr inbounds %struct._rs, %struct._rs* %26, i64 0, i32 0, !dbg !142
  %31 = load i64, i64* %30, align 8, !dbg !142, !tbaa !129
  %32 = icmp ult i64 %31, 4, !dbg !143
  br i1 %32, label %33, label %35, !dbg !144

; <label>:33:                                     ; preds = %25
  call fastcc void @_rs_rekey(i8* null, i64 0) #6, !dbg !145
  %34 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !146, !tbaa !129
  br label %35, !dbg !145

; <label>:35:                                     ; preds = %25, %33
  %36 = phi i64 [ %34, %33 ], [ %31, %25 ], !dbg !146
  %37 = load %struct._rsx*, %struct._rsx** @rsx, align 8, !dbg !147, !tbaa !102
  %38 = getelementptr inbounds %struct._rsx, %struct._rsx* %37, i64 0, i32 1, i64 1024, !dbg !148
  %39 = sub i64 0, %36, !dbg !149
  %40 = getelementptr inbounds i8, i8* %38, i64 %39, !dbg !149
  %41 = call i8* @memcpy(i8* nonnull %3, i8* nonnull %40, i64 4) #6, !dbg !151
  %42 = call i8* @memset(i8* nonnull %40, i32 0, i64 4) #6, !dbg !152
  %43 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !153, !tbaa !129
  %44 = add i64 %43, -4, !dbg !153
  store i64 %44, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !153, !tbaa !129
  %45 = load i32, i32* %2, align 4, !dbg !154, !tbaa !155
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5, !dbg !157
  ret i32 %45, !dbg !158
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local void @arc4random_buf(i8*, i64) local_unnamed_addr #0 !dbg !159 {
  %3 = alloca [40 x i8], align 16
  %4 = load %struct._rs*, %struct._rs** @rs, align 8, !dbg !182, !tbaa !102
  %5 = icmp eq %struct._rs* %4, null, !dbg !182
  br i1 %5, label %9, label %6, !dbg !183

; <label>:6:                                      ; preds = %2
  %7 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 1), align 8, !dbg !184, !tbaa !108
  %8 = icmp ugt i64 %7, %1, !dbg !185
  br i1 %8, label %25, label %9, !dbg !186

; <label>:9:                                      ; preds = %6, %2
  %10 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0, !dbg !187
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %10) #5, !dbg !187
  %11 = call i32 @getentropy(i8* nonnull %10, i64 40) #6, !dbg !188
  %12 = icmp eq i32 %11, -1, !dbg !189
  br i1 %12, label %13, label %15, !dbg !190

; <label>:13:                                     ; preds = %9
  %14 = call i32 @raise(i32 9) #6, !dbg !191
  br label %15, !dbg !193

; <label>:15:                                     ; preds = %13, %9
  %16 = load %struct._rs*, %struct._rs** @rs, align 8, !dbg !194, !tbaa !102
  %17 = icmp eq %struct._rs* %16, null, !dbg !194
  br i1 %17, label %18, label %19, !dbg !195

; <label>:18:                                     ; preds = %15
  call fastcc void @_rs_init(i8* nonnull %10) #6, !dbg !196
  br label %20, !dbg !196

; <label>:19:                                     ; preds = %15
  call fastcc void @_rs_rekey(i8* nonnull %10, i64 40) #6, !dbg !197
  br label %20

; <label>:20:                                     ; preds = %19, %18
  call void @explicit_bzero(i8* nonnull %10, i64 40) #6, !dbg !198
  store i64 0, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !199, !tbaa !129
  %21 = load %struct._rsx*, %struct._rsx** @rsx, align 8, !dbg !200, !tbaa !102
  %22 = getelementptr inbounds %struct._rsx, %struct._rsx* %21, i64 0, i32 1, i64 0, !dbg !200
  %23 = call i8* @memset(i8* nonnull %22, i32 0, i64 1024) #6, !dbg !201
  %24 = load %struct._rs*, %struct._rs** @rs, align 8, !dbg !202, !tbaa !102
  store i64 1600000, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 1), align 8, !dbg !203, !tbaa !108
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %10) #5, !dbg !204
  br label %25, !dbg !205

; <label>:25:                                     ; preds = %20, %6
  %26 = phi %struct._rs* [ %4, %6 ], [ %24, %20 ]
  %27 = phi i64 [ %7, %6 ], [ 1600000, %20 ], !dbg !206
  %28 = getelementptr inbounds %struct._rs, %struct._rs* %26, i64 0, i32 1, !dbg !206
  %29 = icmp ugt i64 %27, %1, !dbg !207
  %30 = select i1 %29, i64 %27, i64 %1, !dbg !207
  %31 = sub i64 %30, %1, !dbg !207
  store i64 %31, i64* %28, align 8, !dbg !208, !tbaa !108
  %32 = icmp eq i64 %1, 0, !dbg !209
  br i1 %32, label %63, label %33, !dbg !210

; <label>:33:                                     ; preds = %25, %61
  %34 = phi %struct._rs* [ %62, %61 ], [ %26, %25 ], !dbg !211
  %35 = phi i64 [ %58, %61 ], [ %1, %25 ]
  %36 = phi i8* [ %59, %61 ], [ %0, %25 ]
  %37 = getelementptr inbounds %struct._rs, %struct._rs* %34, i64 0, i32 0, !dbg !214
  %38 = load i64, i64* %37, align 8, !dbg !214, !tbaa !129
  %39 = icmp eq i64 %38, 0, !dbg !215
  br i1 %39, label %54, label %40, !dbg !216

; <label>:40:                                     ; preds = %33
  %41 = icmp ult i64 %35, %38, !dbg !217
  %42 = select i1 %41, i64 %35, i64 %38, !dbg !217
  %43 = load %struct._rsx*, %struct._rsx** @rsx, align 8, !dbg !220, !tbaa !102
  %44 = getelementptr inbounds %struct._rsx, %struct._rsx* %43, i64 0, i32 1, i64 1024, !dbg !221
  %45 = sub i64 0, %38, !dbg !222
  %46 = getelementptr inbounds i8, i8* %44, i64 %45, !dbg !222
  %47 = call i8* @memcpy(i8* %36, i8* nonnull %46, i64 %42) #6, !dbg !224
  %48 = call i8* @memset(i8* nonnull %46, i32 0, i64 %42) #6, !dbg !225
  %49 = getelementptr inbounds i8, i8* %36, i64 %42, !dbg !226
  %50 = sub i64 %35, %42, !dbg !227
  %51 = load i64, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !228, !tbaa !129
  %52 = sub i64 %51, %42, !dbg !228
  store i64 %52, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !228, !tbaa !129
  %53 = icmp eq i64 %52, 0, !dbg !229
  br i1 %53, label %54, label %57, !dbg !231

; <label>:54:                                     ; preds = %40, %33
  %55 = phi i64 [ %50, %40 ], [ %35, %33 ]
  %56 = phi i8* [ %49, %40 ], [ %36, %33 ]
  call fastcc void @_rs_rekey(i8* null, i64 0) #6, !dbg !232
  br label %57, !dbg !232

; <label>:57:                                     ; preds = %54, %40
  %58 = phi i64 [ %55, %54 ], [ %50, %40 ]
  %59 = phi i8* [ %56, %54 ], [ %49, %40 ]
  %60 = icmp eq i64 %58, 0, !dbg !209
  br i1 %60, label %63, label %61, !dbg !210, !llvm.loop !233

; <label>:61:                                     ; preds = %57
  %62 = load %struct._rs*, %struct._rs** @rs, align 8, !dbg !211, !tbaa !102
  br label %33, !dbg !210

; <label>:63:                                     ; preds = %57, %25
  ret void, !dbg !236
}

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc void @_rs_rekey(i8* readonly, i64) unnamed_addr #3 !dbg !237 {
  %3 = load %struct._rsx*, %struct._rsx** @rsx, align 8, !dbg !249, !tbaa !102
  %4 = getelementptr inbounds %struct._rsx, %struct._rsx* %3, i64 0, i32 1, i64 0, !dbg !250
  %5 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 0) to <4 x i32>*), align 8, !dbg !311, !tbaa !155
  %6 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 4) to <4 x i32>*), align 8, !dbg !316, !tbaa !155
  %7 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 8) to <4 x i32>*), align 8, !dbg !321, !tbaa !155
  %8 = shufflevector <4 x i32> %7, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>, !dbg !321
  %9 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 12), align 8, !dbg !323, !tbaa !155
  %10 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 13), align 4, !dbg !325, !tbaa !155
  %11 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 14), align 8, !dbg !327, !tbaa !155
  %12 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 15), align 4, !dbg !329, !tbaa !155
  %13 = insertelement <4 x i32> undef, i32 %12, i32 0
  %14 = extractelement <4 x i32> %5, i32 0, !dbg !331
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
  br label %26, !dbg !335

; <label>:26:                                     ; preds = %303, %2
  %27 = phi i32 [ 1024, %2 ], [ %304, %303 ]
  %28 = phi i32 [ %9, %2 ], [ %123, %303 ], !dbg !336
  %29 = phi i32 [ %10, %2 ], [ %126, %303 ], !dbg !337
  %30 = phi i8* [ %4, %2 ], [ %305, %303 ]
  %31 = insertelement <4 x i32> %13, i32 %28, i32 1
  %32 = insertelement <4 x i32> %31, i32 %29, i32 2
  %33 = insertelement <4 x i32> %32, i32 %11, i32 3
  br label %34, !dbg !355

; <label>:34:                                     ; preds = %34, %26
  %35 = phi i32 [ 20, %26 ], [ %88, %34 ]
  %36 = phi <4 x i32> [ %5, %26 ], [ %77, %34 ]
  %37 = phi <4 x i32> [ %8, %26 ], [ %82, %34 ]
  %38 = phi <4 x i32> [ %6, %26 ], [ %87, %34 ]
  %39 = phi <4 x i32> [ %33, %26 ], [ %81, %34 ]
  %40 = add <4 x i32> %38, %36, !dbg !357
  %41 = shufflevector <4 x i32> %40, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !360
  %42 = xor <4 x i32> %39, %41, !dbg !360
  %43 = shl <4 x i32> %42, <i32 16, i32 16, i32 16, i32 16>, !dbg !360
  %44 = lshr <4 x i32> %42, <i32 16, i32 16, i32 16, i32 16>, !dbg !360
  %45 = or <4 x i32> %43, %44, !dbg !360
  %46 = shufflevector <4 x i32> %45, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !361
  %47 = add <4 x i32> %46, %37, !dbg !361
  %48 = shufflevector <4 x i32> %47, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 0, i32 1>, !dbg !357
  %49 = xor <4 x i32> %48, %38, !dbg !357
  %50 = shl <4 x i32> %49, <i32 12, i32 12, i32 12, i32 12>, !dbg !357
  %51 = lshr <4 x i32> %49, <i32 20, i32 20, i32 20, i32 20>, !dbg !357
  %52 = or <4 x i32> %50, %51, !dbg !357
  %53 = add <4 x i32> %52, %40, !dbg !357
  %54 = shufflevector <4 x i32> %53, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !360
  %55 = xor <4 x i32> %54, %45, !dbg !360
  %56 = shl <4 x i32> %55, <i32 8, i32 8, i32 8, i32 8>, !dbg !360
  %57 = lshr <4 x i32> %55, <i32 24, i32 24, i32 24, i32 24>, !dbg !360
  %58 = or <4 x i32> %56, %57, !dbg !360
  %59 = shufflevector <4 x i32> %58, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !361
  %60 = add <4 x i32> %59, %47, !dbg !361
  %61 = shufflevector <4 x i32> %52, <4 x i32> undef, <4 x i32> <i32 1, i32 2, i32 3, i32 0>, !dbg !362
  %62 = shufflevector <4 x i32> %60, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !362
  %63 = xor <4 x i32> %62, %61, !dbg !362
  %64 = shl <4 x i32> %63, <i32 7, i32 7, i32 7, i32 7>, !dbg !362
  %65 = lshr <4 x i32> %63, <i32 25, i32 25, i32 25, i32 25>, !dbg !362
  %66 = or <4 x i32> %64, %65, !dbg !362
  %67 = add <4 x i32> %66, %53, !dbg !363
  %68 = xor <4 x i32> %67, %58, !dbg !363
  %69 = shl <4 x i32> %68, <i32 16, i32 16, i32 16, i32 16>, !dbg !363
  %70 = lshr <4 x i32> %68, <i32 16, i32 16, i32 16, i32 16>, !dbg !363
  %71 = or <4 x i32> %69, %70, !dbg !363
  %72 = add <4 x i32> %71, %60, !dbg !363
  %73 = xor <4 x i32> %72, %66, !dbg !363
  %74 = shl <4 x i32> %73, <i32 12, i32 12, i32 12, i32 12>, !dbg !363
  %75 = lshr <4 x i32> %73, <i32 20, i32 20, i32 20, i32 20>, !dbg !363
  %76 = or <4 x i32> %74, %75, !dbg !363
  %77 = add <4 x i32> %76, %67, !dbg !363
  %78 = xor <4 x i32> %77, %71, !dbg !363
  %79 = shl <4 x i32> %78, <i32 8, i32 8, i32 8, i32 8>, !dbg !363
  %80 = lshr <4 x i32> %78, <i32 24, i32 24, i32 24, i32 24>, !dbg !363
  %81 = or <4 x i32> %79, %80, !dbg !363
  %82 = add <4 x i32> %81, %72, !dbg !363
  %83 = xor <4 x i32> %82, %76, !dbg !364
  %84 = shufflevector <4 x i32> %83, <4 x i32> undef, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !364
  %85 = shl <4 x i32> %84, <i32 7, i32 7, i32 7, i32 7>, !dbg !364
  %86 = lshr <4 x i32> %84, <i32 25, i32 25, i32 25, i32 25>, !dbg !364
  %87 = or <4 x i32> %85, %86, !dbg !364
  %88 = add nsw i32 %35, -2, !dbg !365
  %89 = icmp eq i32 %88, 0, !dbg !366
  br i1 %89, label %90, label %34, !dbg !355, !llvm.loop !367

; <label>:90:                                     ; preds = %34
  %91 = extractelement <4 x i32> %77, i32 0, !dbg !331
  %92 = add i32 %91, %14, !dbg !331
  %93 = extractelement <4 x i32> %77, i32 1, !dbg !370
  %94 = add i32 %93, %15, !dbg !370
  %95 = extractelement <4 x i32> %77, i32 2, !dbg !371
  %96 = add i32 %95, %16, !dbg !371
  %97 = extractelement <4 x i32> %77, i32 3, !dbg !372
  %98 = add i32 %97, %17, !dbg !372
  %99 = extractelement <4 x i32> %87, i32 0, !dbg !373
  %100 = add i32 %99, %18, !dbg !373
  %101 = extractelement <4 x i32> %87, i32 1, !dbg !374
  %102 = add i32 %101, %19, !dbg !374
  %103 = extractelement <4 x i32> %87, i32 2, !dbg !375
  %104 = add i32 %103, %20, !dbg !375
  %105 = extractelement <4 x i32> %87, i32 3, !dbg !376
  %106 = add i32 %105, %21, !dbg !376
  %107 = extractelement <4 x i32> %82, i32 2, !dbg !377
  %108 = add i32 %107, %22, !dbg !377
  %109 = extractelement <4 x i32> %82, i32 3, !dbg !378
  %110 = add i32 %109, %23, !dbg !378
  %111 = extractelement <4 x i32> %82, i32 0, !dbg !379
  %112 = add i32 %111, %24, !dbg !379
  %113 = extractelement <4 x i32> %82, i32 1, !dbg !380
  %114 = add i32 %113, %25, !dbg !380
  %115 = extractelement <4 x i32> %81, i32 1, !dbg !381
  %116 = add i32 %115, %28, !dbg !381
  %117 = extractelement <4 x i32> %81, i32 2, !dbg !382
  %118 = add i32 %117, %29, !dbg !382
  %119 = extractelement <4 x i32> %81, i32 3, !dbg !383
  %120 = add i32 %119, %11, !dbg !383
  %121 = extractelement <4 x i32> %81, i32 0, !dbg !384
  %122 = add i32 %121, %12, !dbg !384
  %123 = add i32 %28, 1, !dbg !385
  %124 = icmp eq i32 %123, 0, !dbg !386
  %125 = zext i1 %124 to i32, !dbg !388
  %126 = add i32 %29, %125, !dbg !388
  %127 = trunc i32 %92 to i8, !dbg !389
  store i8 %127, i8* %30, align 1, !dbg !389, !tbaa !391
  %128 = lshr i32 %92, 8, !dbg !389
  %129 = trunc i32 %128 to i8, !dbg !389
  %130 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !389
  store i8 %129, i8* %130, align 1, !dbg !389, !tbaa !391
  %131 = lshr i32 %92, 16, !dbg !389
  %132 = trunc i32 %131 to i8, !dbg !389
  %133 = getelementptr inbounds i8, i8* %30, i64 2, !dbg !389
  store i8 %132, i8* %133, align 1, !dbg !389, !tbaa !391
  %134 = lshr i32 %92, 24, !dbg !389
  %135 = trunc i32 %134 to i8, !dbg !389
  %136 = getelementptr inbounds i8, i8* %30, i64 3, !dbg !389
  store i8 %135, i8* %136, align 1, !dbg !389, !tbaa !391
  %137 = trunc i32 %94 to i8, !dbg !392
  %138 = getelementptr inbounds i8, i8* %30, i64 4, !dbg !392
  store i8 %137, i8* %138, align 1, !dbg !392, !tbaa !391
  %139 = lshr i32 %94, 8, !dbg !392
  %140 = trunc i32 %139 to i8, !dbg !392
  %141 = getelementptr inbounds i8, i8* %30, i64 5, !dbg !392
  store i8 %140, i8* %141, align 1, !dbg !392, !tbaa !391
  %142 = lshr i32 %94, 16, !dbg !392
  %143 = trunc i32 %142 to i8, !dbg !392
  %144 = getelementptr inbounds i8, i8* %30, i64 6, !dbg !392
  store i8 %143, i8* %144, align 1, !dbg !392, !tbaa !391
  %145 = lshr i32 %94, 24, !dbg !392
  %146 = trunc i32 %145 to i8, !dbg !392
  %147 = getelementptr inbounds i8, i8* %30, i64 7, !dbg !392
  store i8 %146, i8* %147, align 1, !dbg !392, !tbaa !391
  %148 = trunc i32 %96 to i8, !dbg !394
  %149 = getelementptr inbounds i8, i8* %30, i64 8, !dbg !394
  store i8 %148, i8* %149, align 1, !dbg !394, !tbaa !391
  %150 = lshr i32 %96, 8, !dbg !394
  %151 = trunc i32 %150 to i8, !dbg !394
  %152 = getelementptr inbounds i8, i8* %30, i64 9, !dbg !394
  store i8 %151, i8* %152, align 1, !dbg !394, !tbaa !391
  %153 = lshr i32 %96, 16, !dbg !394
  %154 = trunc i32 %153 to i8, !dbg !394
  %155 = getelementptr inbounds i8, i8* %30, i64 10, !dbg !394
  store i8 %154, i8* %155, align 1, !dbg !394, !tbaa !391
  %156 = lshr i32 %96, 24, !dbg !394
  %157 = trunc i32 %156 to i8, !dbg !394
  %158 = getelementptr inbounds i8, i8* %30, i64 11, !dbg !394
  store i8 %157, i8* %158, align 1, !dbg !394, !tbaa !391
  %159 = trunc i32 %98 to i8, !dbg !396
  %160 = getelementptr inbounds i8, i8* %30, i64 12, !dbg !396
  store i8 %159, i8* %160, align 1, !dbg !396, !tbaa !391
  %161 = lshr i32 %98, 8, !dbg !396
  %162 = trunc i32 %161 to i8, !dbg !396
  %163 = getelementptr inbounds i8, i8* %30, i64 13, !dbg !396
  store i8 %162, i8* %163, align 1, !dbg !396, !tbaa !391
  %164 = lshr i32 %98, 16, !dbg !396
  %165 = trunc i32 %164 to i8, !dbg !396
  %166 = getelementptr inbounds i8, i8* %30, i64 14, !dbg !396
  store i8 %165, i8* %166, align 1, !dbg !396, !tbaa !391
  %167 = lshr i32 %98, 24, !dbg !396
  %168 = trunc i32 %167 to i8, !dbg !396
  %169 = getelementptr inbounds i8, i8* %30, i64 15, !dbg !396
  store i8 %168, i8* %169, align 1, !dbg !396, !tbaa !391
  %170 = trunc i32 %100 to i8, !dbg !398
  %171 = getelementptr inbounds i8, i8* %30, i64 16, !dbg !398
  store i8 %170, i8* %171, align 1, !dbg !398, !tbaa !391
  %172 = lshr i32 %100, 8, !dbg !398
  %173 = trunc i32 %172 to i8, !dbg !398
  %174 = getelementptr inbounds i8, i8* %30, i64 17, !dbg !398
  store i8 %173, i8* %174, align 1, !dbg !398, !tbaa !391
  %175 = lshr i32 %100, 16, !dbg !398
  %176 = trunc i32 %175 to i8, !dbg !398
  %177 = getelementptr inbounds i8, i8* %30, i64 18, !dbg !398
  store i8 %176, i8* %177, align 1, !dbg !398, !tbaa !391
  %178 = lshr i32 %100, 24, !dbg !398
  %179 = trunc i32 %178 to i8, !dbg !398
  %180 = getelementptr inbounds i8, i8* %30, i64 19, !dbg !398
  store i8 %179, i8* %180, align 1, !dbg !398, !tbaa !391
  %181 = trunc i32 %102 to i8, !dbg !400
  %182 = getelementptr inbounds i8, i8* %30, i64 20, !dbg !400
  store i8 %181, i8* %182, align 1, !dbg !400, !tbaa !391
  %183 = lshr i32 %102, 8, !dbg !400
  %184 = trunc i32 %183 to i8, !dbg !400
  %185 = getelementptr inbounds i8, i8* %30, i64 21, !dbg !400
  store i8 %184, i8* %185, align 1, !dbg !400, !tbaa !391
  %186 = lshr i32 %102, 16, !dbg !400
  %187 = trunc i32 %186 to i8, !dbg !400
  %188 = getelementptr inbounds i8, i8* %30, i64 22, !dbg !400
  store i8 %187, i8* %188, align 1, !dbg !400, !tbaa !391
  %189 = lshr i32 %102, 24, !dbg !400
  %190 = trunc i32 %189 to i8, !dbg !400
  %191 = getelementptr inbounds i8, i8* %30, i64 23, !dbg !400
  store i8 %190, i8* %191, align 1, !dbg !400, !tbaa !391
  %192 = trunc i32 %104 to i8, !dbg !402
  %193 = getelementptr inbounds i8, i8* %30, i64 24, !dbg !402
  store i8 %192, i8* %193, align 1, !dbg !402, !tbaa !391
  %194 = lshr i32 %104, 8, !dbg !402
  %195 = trunc i32 %194 to i8, !dbg !402
  %196 = getelementptr inbounds i8, i8* %30, i64 25, !dbg !402
  store i8 %195, i8* %196, align 1, !dbg !402, !tbaa !391
  %197 = lshr i32 %104, 16, !dbg !402
  %198 = trunc i32 %197 to i8, !dbg !402
  %199 = getelementptr inbounds i8, i8* %30, i64 26, !dbg !402
  store i8 %198, i8* %199, align 1, !dbg !402, !tbaa !391
  %200 = lshr i32 %104, 24, !dbg !402
  %201 = trunc i32 %200 to i8, !dbg !402
  %202 = getelementptr inbounds i8, i8* %30, i64 27, !dbg !402
  store i8 %201, i8* %202, align 1, !dbg !402, !tbaa !391
  %203 = trunc i32 %106 to i8, !dbg !404
  %204 = getelementptr inbounds i8, i8* %30, i64 28, !dbg !404
  store i8 %203, i8* %204, align 1, !dbg !404, !tbaa !391
  %205 = lshr i32 %106, 8, !dbg !404
  %206 = trunc i32 %205 to i8, !dbg !404
  %207 = getelementptr inbounds i8, i8* %30, i64 29, !dbg !404
  store i8 %206, i8* %207, align 1, !dbg !404, !tbaa !391
  %208 = lshr i32 %106, 16, !dbg !404
  %209 = trunc i32 %208 to i8, !dbg !404
  %210 = getelementptr inbounds i8, i8* %30, i64 30, !dbg !404
  store i8 %209, i8* %210, align 1, !dbg !404, !tbaa !391
  %211 = lshr i32 %106, 24, !dbg !404
  %212 = trunc i32 %211 to i8, !dbg !404
  %213 = getelementptr inbounds i8, i8* %30, i64 31, !dbg !404
  store i8 %212, i8* %213, align 1, !dbg !404, !tbaa !391
  %214 = trunc i32 %108 to i8, !dbg !406
  %215 = getelementptr inbounds i8, i8* %30, i64 32, !dbg !406
  store i8 %214, i8* %215, align 1, !dbg !406, !tbaa !391
  %216 = lshr i32 %108, 8, !dbg !406
  %217 = trunc i32 %216 to i8, !dbg !406
  %218 = getelementptr inbounds i8, i8* %30, i64 33, !dbg !406
  store i8 %217, i8* %218, align 1, !dbg !406, !tbaa !391
  %219 = lshr i32 %108, 16, !dbg !406
  %220 = trunc i32 %219 to i8, !dbg !406
  %221 = getelementptr inbounds i8, i8* %30, i64 34, !dbg !406
  store i8 %220, i8* %221, align 1, !dbg !406, !tbaa !391
  %222 = lshr i32 %108, 24, !dbg !406
  %223 = trunc i32 %222 to i8, !dbg !406
  %224 = getelementptr inbounds i8, i8* %30, i64 35, !dbg !406
  store i8 %223, i8* %224, align 1, !dbg !406, !tbaa !391
  %225 = trunc i32 %110 to i8, !dbg !408
  %226 = getelementptr inbounds i8, i8* %30, i64 36, !dbg !408
  store i8 %225, i8* %226, align 1, !dbg !408, !tbaa !391
  %227 = lshr i32 %110, 8, !dbg !408
  %228 = trunc i32 %227 to i8, !dbg !408
  %229 = getelementptr inbounds i8, i8* %30, i64 37, !dbg !408
  store i8 %228, i8* %229, align 1, !dbg !408, !tbaa !391
  %230 = lshr i32 %110, 16, !dbg !408
  %231 = trunc i32 %230 to i8, !dbg !408
  %232 = getelementptr inbounds i8, i8* %30, i64 38, !dbg !408
  store i8 %231, i8* %232, align 1, !dbg !408, !tbaa !391
  %233 = lshr i32 %110, 24, !dbg !408
  %234 = trunc i32 %233 to i8, !dbg !408
  %235 = getelementptr inbounds i8, i8* %30, i64 39, !dbg !408
  store i8 %234, i8* %235, align 1, !dbg !408, !tbaa !391
  %236 = trunc i32 %112 to i8, !dbg !410
  %237 = getelementptr inbounds i8, i8* %30, i64 40, !dbg !410
  store i8 %236, i8* %237, align 1, !dbg !410, !tbaa !391
  %238 = lshr i32 %112, 8, !dbg !410
  %239 = trunc i32 %238 to i8, !dbg !410
  %240 = getelementptr inbounds i8, i8* %30, i64 41, !dbg !410
  store i8 %239, i8* %240, align 1, !dbg !410, !tbaa !391
  %241 = lshr i32 %112, 16, !dbg !410
  %242 = trunc i32 %241 to i8, !dbg !410
  %243 = getelementptr inbounds i8, i8* %30, i64 42, !dbg !410
  store i8 %242, i8* %243, align 1, !dbg !410, !tbaa !391
  %244 = lshr i32 %112, 24, !dbg !410
  %245 = trunc i32 %244 to i8, !dbg !410
  %246 = getelementptr inbounds i8, i8* %30, i64 43, !dbg !410
  store i8 %245, i8* %246, align 1, !dbg !410, !tbaa !391
  %247 = trunc i32 %114 to i8, !dbg !412
  %248 = getelementptr inbounds i8, i8* %30, i64 44, !dbg !412
  store i8 %247, i8* %248, align 1, !dbg !412, !tbaa !391
  %249 = lshr i32 %114, 8, !dbg !412
  %250 = trunc i32 %249 to i8, !dbg !412
  %251 = getelementptr inbounds i8, i8* %30, i64 45, !dbg !412
  store i8 %250, i8* %251, align 1, !dbg !412, !tbaa !391
  %252 = lshr i32 %114, 16, !dbg !412
  %253 = trunc i32 %252 to i8, !dbg !412
  %254 = getelementptr inbounds i8, i8* %30, i64 46, !dbg !412
  store i8 %253, i8* %254, align 1, !dbg !412, !tbaa !391
  %255 = lshr i32 %114, 24, !dbg !412
  %256 = trunc i32 %255 to i8, !dbg !412
  %257 = getelementptr inbounds i8, i8* %30, i64 47, !dbg !412
  store i8 %256, i8* %257, align 1, !dbg !412, !tbaa !391
  %258 = trunc i32 %116 to i8, !dbg !414
  %259 = getelementptr inbounds i8, i8* %30, i64 48, !dbg !414
  store i8 %258, i8* %259, align 1, !dbg !414, !tbaa !391
  %260 = lshr i32 %116, 8, !dbg !414
  %261 = trunc i32 %260 to i8, !dbg !414
  %262 = getelementptr inbounds i8, i8* %30, i64 49, !dbg !414
  store i8 %261, i8* %262, align 1, !dbg !414, !tbaa !391
  %263 = lshr i32 %116, 16, !dbg !414
  %264 = trunc i32 %263 to i8, !dbg !414
  %265 = getelementptr inbounds i8, i8* %30, i64 50, !dbg !414
  store i8 %264, i8* %265, align 1, !dbg !414, !tbaa !391
  %266 = lshr i32 %116, 24, !dbg !414
  %267 = trunc i32 %266 to i8, !dbg !414
  %268 = getelementptr inbounds i8, i8* %30, i64 51, !dbg !414
  store i8 %267, i8* %268, align 1, !dbg !414, !tbaa !391
  %269 = trunc i32 %118 to i8, !dbg !416
  %270 = getelementptr inbounds i8, i8* %30, i64 52, !dbg !416
  store i8 %269, i8* %270, align 1, !dbg !416, !tbaa !391
  %271 = lshr i32 %118, 8, !dbg !416
  %272 = trunc i32 %271 to i8, !dbg !416
  %273 = getelementptr inbounds i8, i8* %30, i64 53, !dbg !416
  store i8 %272, i8* %273, align 1, !dbg !416, !tbaa !391
  %274 = lshr i32 %118, 16, !dbg !416
  %275 = trunc i32 %274 to i8, !dbg !416
  %276 = getelementptr inbounds i8, i8* %30, i64 54, !dbg !416
  store i8 %275, i8* %276, align 1, !dbg !416, !tbaa !391
  %277 = lshr i32 %118, 24, !dbg !416
  %278 = trunc i32 %277 to i8, !dbg !416
  %279 = getelementptr inbounds i8, i8* %30, i64 55, !dbg !416
  store i8 %278, i8* %279, align 1, !dbg !416, !tbaa !391
  %280 = trunc i32 %120 to i8, !dbg !418
  %281 = getelementptr inbounds i8, i8* %30, i64 56, !dbg !418
  store i8 %280, i8* %281, align 1, !dbg !418, !tbaa !391
  %282 = lshr i32 %120, 8, !dbg !418
  %283 = trunc i32 %282 to i8, !dbg !418
  %284 = getelementptr inbounds i8, i8* %30, i64 57, !dbg !418
  store i8 %283, i8* %284, align 1, !dbg !418, !tbaa !391
  %285 = lshr i32 %120, 16, !dbg !418
  %286 = trunc i32 %285 to i8, !dbg !418
  %287 = getelementptr inbounds i8, i8* %30, i64 58, !dbg !418
  store i8 %286, i8* %287, align 1, !dbg !418, !tbaa !391
  %288 = lshr i32 %120, 24, !dbg !418
  %289 = trunc i32 %288 to i8, !dbg !418
  %290 = getelementptr inbounds i8, i8* %30, i64 59, !dbg !418
  store i8 %289, i8* %290, align 1, !dbg !418, !tbaa !391
  %291 = trunc i32 %122 to i8, !dbg !420
  %292 = getelementptr inbounds i8, i8* %30, i64 60, !dbg !420
  store i8 %291, i8* %292, align 1, !dbg !420, !tbaa !391
  %293 = lshr i32 %122, 8, !dbg !420
  %294 = trunc i32 %293 to i8, !dbg !420
  %295 = getelementptr inbounds i8, i8* %30, i64 61, !dbg !420
  store i8 %294, i8* %295, align 1, !dbg !420, !tbaa !391
  %296 = lshr i32 %122, 16, !dbg !420
  %297 = trunc i32 %296 to i8, !dbg !420
  %298 = getelementptr inbounds i8, i8* %30, i64 62, !dbg !420
  store i8 %297, i8* %298, align 1, !dbg !420, !tbaa !391
  %299 = lshr i32 %122, 24, !dbg !420
  %300 = trunc i32 %299 to i8, !dbg !420
  %301 = getelementptr inbounds i8, i8* %30, i64 63, !dbg !420
  store i8 %300, i8* %301, align 1, !dbg !420, !tbaa !391
  %302 = icmp ult i32 %27, 65, !dbg !422
  br i1 %302, label %306, label %303, !dbg !424

; <label>:303:                                    ; preds = %90
  %304 = add nsw i32 %27, -64, !dbg !425
  %305 = getelementptr inbounds i8, i8* %30, i64 64, !dbg !426
  br label %26, !dbg !427, !llvm.loop !428

; <label>:306:                                    ; preds = %90
  %307 = add i32 %9, 16, !dbg !335
  store i32 %307, i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 12), align 8, !dbg !431, !tbaa !155
  store i32 %126, i32* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1, i32 0, i32 0, i64 13), align 4, !dbg !433, !tbaa !155
  %308 = icmp eq i8* %0, null, !dbg !434
  br i1 %308, label %409, label %309, !dbg !435

; <label>:309:                                    ; preds = %306
  %310 = icmp ult i64 %1, 40, !dbg !436
  %311 = select i1 %310, i64 %1, i64 40, !dbg !436
  %312 = icmp eq i64 %311, 0, !dbg !439
  br i1 %312, label %409, label %313, !dbg !442

; <label>:313:                                    ; preds = %309
  %314 = icmp ult i64 %311, 32, !dbg !443
  br i1 %314, label %398, label %315, !dbg !443

; <label>:315:                                    ; preds = %313
  %316 = getelementptr %struct._rsx, %struct._rsx* %3, i64 0, i32 1, i64 0, !dbg !443
  %317 = getelementptr %struct._rsx, %struct._rsx* %3, i64 0, i32 0, i32 0, i64 15, !dbg !443
  %318 = bitcast i32* %317 to i8*
  %319 = xor i64 %1, -1, !dbg !443
  %320 = icmp ugt i64 %319, -41, !dbg !443
  %321 = select i1 %320, i64 %319, i64 -41, !dbg !443
  %322 = sub nsw i64 3, %321, !dbg !443
  %323 = getelementptr i8, i8* %318, i64 %322, !dbg !443
  %324 = getelementptr i8, i8* %0, i64 %311, !dbg !443
  %325 = icmp ult i8* %316, %324, !dbg !443
  %326 = icmp ugt i8* %323, %0, !dbg !443
  %327 = and i1 %325, %326, !dbg !443
  br i1 %327, label %398, label %328, !dbg !443

; <label>:328:                                    ; preds = %315
  %329 = and i64 %311, 32, !dbg !443
  %330 = add nsw i64 %329, -32, !dbg !443
  %331 = lshr exact i64 %330, 5, !dbg !443
  %332 = add nuw nsw i64 %331, 1, !dbg !443
  %333 = and i64 %332, 1, !dbg !443
  %334 = icmp eq i64 %330, 0, !dbg !443
  br i1 %334, label %376, label %335, !dbg !443

; <label>:335:                                    ; preds = %328
  %336 = sub nsw i64 %332, %333, !dbg !443
  br label %337, !dbg !443

; <label>:337:                                    ; preds = %337, %335
  %338 = phi i64 [ 0, %335 ], [ %373, %337 ], !dbg !444
  %339 = phi i64 [ %336, %335 ], [ %374, %337 ]
  %340 = getelementptr inbounds i8, i8* %0, i64 %338, !dbg !443
  %341 = bitcast i8* %340 to <16 x i8>*, !dbg !443
  %342 = load <16 x i8>, <16 x i8>* %341, align 1, !dbg !443, !tbaa !391, !alias.scope !445
  %343 = getelementptr inbounds i8, i8* %340, i64 16, !dbg !443
  %344 = bitcast i8* %343 to <16 x i8>*, !dbg !443
  %345 = load <16 x i8>, <16 x i8>* %344, align 1, !dbg !443, !tbaa !391, !alias.scope !445
  %346 = getelementptr inbounds %struct._rsx, %struct._rsx* %3, i64 0, i32 1, i64 %338, !dbg !448
  %347 = bitcast i8* %346 to <16 x i8>*, !dbg !449
  %348 = load <16 x i8>, <16 x i8>* %347, align 1, !dbg !449, !tbaa !391, !alias.scope !450, !noalias !445
  %349 = getelementptr inbounds i8, i8* %346, i64 16, !dbg !449
  %350 = bitcast i8* %349 to <16 x i8>*, !dbg !449
  %351 = load <16 x i8>, <16 x i8>* %350, align 1, !dbg !449, !tbaa !391, !alias.scope !450, !noalias !445
  %352 = xor <16 x i8> %348, %342, !dbg !449
  %353 = xor <16 x i8> %351, %345, !dbg !449
  %354 = bitcast i8* %346 to <16 x i8>*, !dbg !449
  store <16 x i8> %352, <16 x i8>* %354, align 1, !dbg !449, !tbaa !391, !alias.scope !450, !noalias !445
  %355 = bitcast i8* %349 to <16 x i8>*, !dbg !449
  store <16 x i8> %353, <16 x i8>* %355, align 1, !dbg !449, !tbaa !391, !alias.scope !450, !noalias !445
  %356 = or i64 %338, 32, !dbg !444
  %357 = getelementptr inbounds i8, i8* %0, i64 %356, !dbg !443
  %358 = bitcast i8* %357 to <16 x i8>*, !dbg !443
  %359 = load <16 x i8>, <16 x i8>* %358, align 1, !dbg !443, !tbaa !391, !alias.scope !445
  %360 = getelementptr inbounds i8, i8* %357, i64 16, !dbg !443
  %361 = bitcast i8* %360 to <16 x i8>*, !dbg !443
  %362 = load <16 x i8>, <16 x i8>* %361, align 1, !dbg !443, !tbaa !391, !alias.scope !445
  %363 = getelementptr inbounds %struct._rsx, %struct._rsx* %3, i64 0, i32 1, i64 %356, !dbg !448
  %364 = bitcast i8* %363 to <16 x i8>*, !dbg !449
  %365 = load <16 x i8>, <16 x i8>* %364, align 1, !dbg !449, !tbaa !391, !alias.scope !450, !noalias !445
  %366 = getelementptr inbounds i8, i8* %363, i64 16, !dbg !449
  %367 = bitcast i8* %366 to <16 x i8>*, !dbg !449
  %368 = load <16 x i8>, <16 x i8>* %367, align 1, !dbg !449, !tbaa !391, !alias.scope !450, !noalias !445
  %369 = xor <16 x i8> %365, %359, !dbg !449
  %370 = xor <16 x i8> %368, %362, !dbg !449
  %371 = bitcast i8* %363 to <16 x i8>*, !dbg !449
  store <16 x i8> %369, <16 x i8>* %371, align 1, !dbg !449, !tbaa !391, !alias.scope !450, !noalias !445
  %372 = bitcast i8* %366 to <16 x i8>*, !dbg !449
  store <16 x i8> %370, <16 x i8>* %372, align 1, !dbg !449, !tbaa !391, !alias.scope !450, !noalias !445
  %373 = add i64 %338, 64, !dbg !444
  %374 = add i64 %339, -2, !dbg !444
  %375 = icmp eq i64 %374, 0, !dbg !444
  br i1 %375, label %376, label %337, !dbg !444, !llvm.loop !452

; <label>:376:                                    ; preds = %337, %328
  %377 = phi i64 [ 0, %328 ], [ %373, %337 ]
  %378 = icmp eq i64 %333, 0, !dbg !444
  br i1 %378, label %396, label %379, !dbg !444

; <label>:379:                                    ; preds = %376
  %380 = getelementptr inbounds i8, i8* %0, i64 %377, !dbg !443
  %381 = bitcast i8* %380 to <16 x i8>*, !dbg !443
  %382 = load <16 x i8>, <16 x i8>* %381, align 1, !dbg !443, !tbaa !391, !alias.scope !445
  %383 = getelementptr inbounds i8, i8* %380, i64 16, !dbg !443
  %384 = bitcast i8* %383 to <16 x i8>*, !dbg !443
  %385 = load <16 x i8>, <16 x i8>* %384, align 1, !dbg !443, !tbaa !391, !alias.scope !445
  %386 = getelementptr inbounds %struct._rsx, %struct._rsx* %3, i64 0, i32 1, i64 %377, !dbg !448
  %387 = bitcast i8* %386 to <16 x i8>*, !dbg !449
  %388 = load <16 x i8>, <16 x i8>* %387, align 1, !dbg !449, !tbaa !391, !alias.scope !450, !noalias !445
  %389 = getelementptr inbounds i8, i8* %386, i64 16, !dbg !449
  %390 = bitcast i8* %389 to <16 x i8>*, !dbg !449
  %391 = load <16 x i8>, <16 x i8>* %390, align 1, !dbg !449, !tbaa !391, !alias.scope !450, !noalias !445
  %392 = xor <16 x i8> %388, %382, !dbg !449
  %393 = xor <16 x i8> %391, %385, !dbg !449
  %394 = bitcast i8* %386 to <16 x i8>*, !dbg !449
  store <16 x i8> %392, <16 x i8>* %394, align 1, !dbg !449, !tbaa !391, !alias.scope !450, !noalias !445
  %395 = bitcast i8* %389 to <16 x i8>*, !dbg !449
  store <16 x i8> %393, <16 x i8>* %395, align 1, !dbg !449, !tbaa !391, !alias.scope !450, !noalias !445
  br label %396

; <label>:396:                                    ; preds = %376, %379
  %397 = icmp eq i64 %311, %329
  br i1 %397, label %409, label %398, !dbg !443

; <label>:398:                                    ; preds = %396, %315, %313
  %399 = phi i64 [ 0, %315 ], [ 0, %313 ], [ %329, %396 ]
  br label %400, !dbg !443

; <label>:400:                                    ; preds = %398, %400
  %401 = phi i64 [ %407, %400 ], [ %399, %398 ]
  %402 = getelementptr inbounds i8, i8* %0, i64 %401, !dbg !443
  %403 = load i8, i8* %402, align 1, !dbg !443, !tbaa !391
  %404 = getelementptr inbounds %struct._rsx, %struct._rsx* %3, i64 0, i32 1, i64 %401, !dbg !448
  %405 = load i8, i8* %404, align 1, !dbg !449, !tbaa !391
  %406 = xor i8 %405, %403, !dbg !449
  store i8 %406, i8* %404, align 1, !dbg !449, !tbaa !391
  %407 = add nuw nsw i64 %401, 1, !dbg !444
  %408 = icmp ult i64 %407, %311, !dbg !439
  br i1 %408, label %400, label %409, !dbg !442, !llvm.loop !455

; <label>:409:                                    ; preds = %400, %396, %309, %306
  tail call fastcc void @_rs_init(i8* nonnull %4) #7, !dbg !456
  %410 = load %struct._rsx*, %struct._rsx** @rsx, align 8, !dbg !457, !tbaa !102
  %411 = getelementptr inbounds %struct._rsx, %struct._rsx* %410, i64 0, i32 1, i64 0, !dbg !457
  %412 = tail call i8* @memset(i8* nonnull %411, i32 0, i64 40) #6, !dbg !458
  store i64 984, i64* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0, i32 0), align 8, !dbg !459, !tbaa !129
  ret void, !dbg !460
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @getentropy(i8*, i64) local_unnamed_addr #4

; Function Attrs: inlinehint noredzone nounwind
define internal fastcc void @_rs_init(i8* readonly) unnamed_addr #3 !dbg !461 {
  %2 = load %struct._rs*, %struct._rs** @rs, align 8, !dbg !467, !tbaa !102
  %3 = icmp eq %struct._rs* %2, null, !dbg !469
  br i1 %3, label %6, label %4, !dbg !470

; <label>:4:                                      ; preds = %1
  %5 = load %struct._rsx*, %struct._rsx** @rsx, align 8, !dbg !471, !tbaa !102
  br label %7, !dbg !470

; <label>:6:                                      ; preds = %1
  store %struct._rs* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 0), %struct._rs** @rs, align 8, !dbg !486, !tbaa !102
  store %struct._rsx* getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1), %struct._rsx** @rsx, align 8, !dbg !487, !tbaa !102
  br label %7, !dbg !488

; <label>:7:                                      ; preds = %4, %6
  %8 = phi %struct._rsx* [ %5, %4 ], [ getelementptr inbounds (%struct.anon, %struct.anon* @_arc4random_data, i64 0, i32 1), %6 ], !dbg !471
  %9 = load i8, i8* %0, align 1, !dbg !504, !tbaa !391
  %10 = zext i8 %9 to i32, !dbg !504
  %11 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !504
  %12 = load i8, i8* %11, align 1, !dbg !504, !tbaa !391
  %13 = zext i8 %12 to i32, !dbg !504
  %14 = shl nuw nsw i32 %13, 8, !dbg !504
  %15 = or i32 %14, %10, !dbg !504
  %16 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !504
  %17 = load i8, i8* %16, align 1, !dbg !504, !tbaa !391
  %18 = zext i8 %17 to i32, !dbg !504
  %19 = shl nuw nsw i32 %18, 16, !dbg !504
  %20 = or i32 %15, %19, !dbg !504
  %21 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !504
  %22 = load i8, i8* %21, align 1, !dbg !504, !tbaa !391
  %23 = zext i8 %22 to i32, !dbg !504
  %24 = shl nuw i32 %23, 24, !dbg !504
  %25 = or i32 %20, %24, !dbg !504
  %26 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 4, !dbg !505
  store i32 %25, i32* %26, align 4, !dbg !506, !tbaa !155
  %27 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !507
  %28 = load i8, i8* %27, align 1, !dbg !507, !tbaa !391
  %29 = zext i8 %28 to i32, !dbg !507
  %30 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !507
  %31 = load i8, i8* %30, align 1, !dbg !507, !tbaa !391
  %32 = zext i8 %31 to i32, !dbg !507
  %33 = shl nuw nsw i32 %32, 8, !dbg !507
  %34 = or i32 %33, %29, !dbg !507
  %35 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !507
  %36 = load i8, i8* %35, align 1, !dbg !507, !tbaa !391
  %37 = zext i8 %36 to i32, !dbg !507
  %38 = shl nuw nsw i32 %37, 16, !dbg !507
  %39 = or i32 %34, %38, !dbg !507
  %40 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !507
  %41 = load i8, i8* %40, align 1, !dbg !507, !tbaa !391
  %42 = zext i8 %41 to i32, !dbg !507
  %43 = shl nuw i32 %42, 24, !dbg !507
  %44 = or i32 %39, %43, !dbg !507
  %45 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 5, !dbg !508
  store i32 %44, i32* %45, align 4, !dbg !509, !tbaa !155
  %46 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !510
  %47 = load i8, i8* %46, align 1, !dbg !510, !tbaa !391
  %48 = zext i8 %47 to i32, !dbg !510
  %49 = getelementptr inbounds i8, i8* %0, i64 9, !dbg !510
  %50 = load i8, i8* %49, align 1, !dbg !510, !tbaa !391
  %51 = zext i8 %50 to i32, !dbg !510
  %52 = shl nuw nsw i32 %51, 8, !dbg !510
  %53 = or i32 %52, %48, !dbg !510
  %54 = getelementptr inbounds i8, i8* %0, i64 10, !dbg !510
  %55 = load i8, i8* %54, align 1, !dbg !510, !tbaa !391
  %56 = zext i8 %55 to i32, !dbg !510
  %57 = shl nuw nsw i32 %56, 16, !dbg !510
  %58 = or i32 %53, %57, !dbg !510
  %59 = getelementptr inbounds i8, i8* %0, i64 11, !dbg !510
  %60 = load i8, i8* %59, align 1, !dbg !510, !tbaa !391
  %61 = zext i8 %60 to i32, !dbg !510
  %62 = shl nuw i32 %61, 24, !dbg !510
  %63 = or i32 %58, %62, !dbg !510
  %64 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 6, !dbg !511
  store i32 %63, i32* %64, align 4, !dbg !512, !tbaa !155
  %65 = getelementptr inbounds i8, i8* %0, i64 12, !dbg !513
  %66 = load i8, i8* %65, align 1, !dbg !513, !tbaa !391
  %67 = zext i8 %66 to i32, !dbg !513
  %68 = getelementptr inbounds i8, i8* %0, i64 13, !dbg !513
  %69 = load i8, i8* %68, align 1, !dbg !513, !tbaa !391
  %70 = zext i8 %69 to i32, !dbg !513
  %71 = shl nuw nsw i32 %70, 8, !dbg !513
  %72 = or i32 %71, %67, !dbg !513
  %73 = getelementptr inbounds i8, i8* %0, i64 14, !dbg !513
  %74 = load i8, i8* %73, align 1, !dbg !513, !tbaa !391
  %75 = zext i8 %74 to i32, !dbg !513
  %76 = shl nuw nsw i32 %75, 16, !dbg !513
  %77 = or i32 %72, %76, !dbg !513
  %78 = getelementptr inbounds i8, i8* %0, i64 15, !dbg !513
  %79 = load i8, i8* %78, align 1, !dbg !513, !tbaa !391
  %80 = zext i8 %79 to i32, !dbg !513
  %81 = shl nuw i32 %80, 24, !dbg !513
  %82 = or i32 %77, %81, !dbg !513
  %83 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 7, !dbg !514
  store i32 %82, i32* %83, align 4, !dbg !515, !tbaa !155
  %84 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !516
  %85 = load i8, i8* %84, align 1, !dbg !519, !tbaa !391
  %86 = zext i8 %85 to i32, !dbg !519
  %87 = getelementptr inbounds i8, i8* %0, i64 17, !dbg !519
  %88 = load i8, i8* %87, align 1, !dbg !519, !tbaa !391
  %89 = zext i8 %88 to i32, !dbg !519
  %90 = shl nuw nsw i32 %89, 8, !dbg !519
  %91 = or i32 %90, %86, !dbg !519
  %92 = getelementptr inbounds i8, i8* %0, i64 18, !dbg !519
  %93 = load i8, i8* %92, align 1, !dbg !519, !tbaa !391
  %94 = zext i8 %93 to i32, !dbg !519
  %95 = shl nuw nsw i32 %94, 16, !dbg !519
  %96 = or i32 %91, %95, !dbg !519
  %97 = getelementptr inbounds i8, i8* %0, i64 19, !dbg !519
  %98 = load i8, i8* %97, align 1, !dbg !519, !tbaa !391
  %99 = zext i8 %98 to i32, !dbg !519
  %100 = shl nuw i32 %99, 24, !dbg !519
  %101 = or i32 %96, %100, !dbg !519
  %102 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 8, !dbg !520
  store i32 %101, i32* %102, align 4, !dbg !521, !tbaa !155
  %103 = getelementptr inbounds i8, i8* %0, i64 20, !dbg !522
  %104 = load i8, i8* %103, align 1, !dbg !522, !tbaa !391
  %105 = zext i8 %104 to i32, !dbg !522
  %106 = getelementptr inbounds i8, i8* %0, i64 21, !dbg !522
  %107 = load i8, i8* %106, align 1, !dbg !522, !tbaa !391
  %108 = zext i8 %107 to i32, !dbg !522
  %109 = shl nuw nsw i32 %108, 8, !dbg !522
  %110 = or i32 %109, %105, !dbg !522
  %111 = getelementptr inbounds i8, i8* %0, i64 22, !dbg !522
  %112 = load i8, i8* %111, align 1, !dbg !522, !tbaa !391
  %113 = zext i8 %112 to i32, !dbg !522
  %114 = shl nuw nsw i32 %113, 16, !dbg !522
  %115 = or i32 %110, %114, !dbg !522
  %116 = getelementptr inbounds i8, i8* %0, i64 23, !dbg !522
  %117 = load i8, i8* %116, align 1, !dbg !522, !tbaa !391
  %118 = zext i8 %117 to i32, !dbg !522
  %119 = shl nuw i32 %118, 24, !dbg !522
  %120 = or i32 %115, %119, !dbg !522
  %121 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 9, !dbg !523
  store i32 %120, i32* %121, align 4, !dbg !524, !tbaa !155
  %122 = getelementptr inbounds i8, i8* %0, i64 24, !dbg !525
  %123 = load i8, i8* %122, align 1, !dbg !525, !tbaa !391
  %124 = zext i8 %123 to i32, !dbg !525
  %125 = getelementptr inbounds i8, i8* %0, i64 25, !dbg !525
  %126 = load i8, i8* %125, align 1, !dbg !525, !tbaa !391
  %127 = zext i8 %126 to i32, !dbg !525
  %128 = shl nuw nsw i32 %127, 8, !dbg !525
  %129 = or i32 %128, %124, !dbg !525
  %130 = getelementptr inbounds i8, i8* %0, i64 26, !dbg !525
  %131 = load i8, i8* %130, align 1, !dbg !525, !tbaa !391
  %132 = zext i8 %131 to i32, !dbg !525
  %133 = shl nuw nsw i32 %132, 16, !dbg !525
  %134 = or i32 %129, %133, !dbg !525
  %135 = getelementptr inbounds i8, i8* %0, i64 27, !dbg !525
  %136 = load i8, i8* %135, align 1, !dbg !525, !tbaa !391
  %137 = zext i8 %136 to i32, !dbg !525
  %138 = shl nuw i32 %137, 24, !dbg !525
  %139 = or i32 %134, %138, !dbg !525
  %140 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 10, !dbg !526
  store i32 %139, i32* %140, align 4, !dbg !527, !tbaa !155
  %141 = getelementptr inbounds i8, i8* %0, i64 28, !dbg !528
  %142 = load i8, i8* %141, align 1, !dbg !528, !tbaa !391
  %143 = zext i8 %142 to i32, !dbg !528
  %144 = getelementptr inbounds i8, i8* %0, i64 29, !dbg !528
  %145 = load i8, i8* %144, align 1, !dbg !528, !tbaa !391
  %146 = zext i8 %145 to i32, !dbg !528
  %147 = shl nuw nsw i32 %146, 8, !dbg !528
  %148 = or i32 %147, %143, !dbg !528
  %149 = getelementptr inbounds i8, i8* %0, i64 30, !dbg !528
  %150 = load i8, i8* %149, align 1, !dbg !528, !tbaa !391
  %151 = zext i8 %150 to i32, !dbg !528
  %152 = shl nuw nsw i32 %151, 16, !dbg !528
  %153 = or i32 %148, %152, !dbg !528
  %154 = getelementptr inbounds i8, i8* %0, i64 31, !dbg !528
  %155 = load i8, i8* %154, align 1, !dbg !528, !tbaa !391
  %156 = zext i8 %155 to i32, !dbg !528
  %157 = shl nuw i32 %156, 24, !dbg !528
  %158 = or i32 %153, %157, !dbg !528
  %159 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 11, !dbg !529
  store i32 %158, i32* %159, align 4, !dbg !530, !tbaa !155
  %160 = bitcast %struct._rsx* %8 to <4 x i32>*, !dbg !531
  store <4 x i32> <i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236>, <4 x i32>* %160, align 4, !dbg !531, !tbaa !155
  %161 = getelementptr inbounds i8, i8* %0, i64 32, !dbg !532
  %162 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 12, !dbg !542
  store i32 0, i32* %162, align 4, !dbg !543, !tbaa !155
  %163 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 13, !dbg !544
  store i32 0, i32* %163, align 4, !dbg !545, !tbaa !155
  %164 = load i8, i8* %161, align 1, !dbg !546, !tbaa !391
  %165 = zext i8 %164 to i32, !dbg !546
  %166 = getelementptr inbounds i8, i8* %0, i64 33, !dbg !546
  %167 = load i8, i8* %166, align 1, !dbg !546, !tbaa !391
  %168 = zext i8 %167 to i32, !dbg !546
  %169 = shl nuw nsw i32 %168, 8, !dbg !546
  %170 = or i32 %169, %165, !dbg !546
  %171 = getelementptr inbounds i8, i8* %0, i64 34, !dbg !546
  %172 = load i8, i8* %171, align 1, !dbg !546, !tbaa !391
  %173 = zext i8 %172 to i32, !dbg !546
  %174 = shl nuw nsw i32 %173, 16, !dbg !546
  %175 = or i32 %170, %174, !dbg !546
  %176 = getelementptr inbounds i8, i8* %0, i64 35, !dbg !546
  %177 = load i8, i8* %176, align 1, !dbg !546, !tbaa !391
  %178 = zext i8 %177 to i32, !dbg !546
  %179 = shl nuw i32 %178, 24, !dbg !546
  %180 = or i32 %175, %179, !dbg !546
  %181 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 14, !dbg !547
  store i32 %180, i32* %181, align 4, !dbg !548, !tbaa !155
  %182 = getelementptr inbounds i8, i8* %0, i64 36, !dbg !549
  %183 = load i8, i8* %182, align 1, !dbg !549, !tbaa !391
  %184 = zext i8 %183 to i32, !dbg !549
  %185 = getelementptr inbounds i8, i8* %0, i64 37, !dbg !549
  %186 = load i8, i8* %185, align 1, !dbg !549, !tbaa !391
  %187 = zext i8 %186 to i32, !dbg !549
  %188 = shl nuw nsw i32 %187, 8, !dbg !549
  %189 = or i32 %188, %184, !dbg !549
  %190 = getelementptr inbounds i8, i8* %0, i64 38, !dbg !549
  %191 = load i8, i8* %190, align 1, !dbg !549, !tbaa !391
  %192 = zext i8 %191 to i32, !dbg !549
  %193 = shl nuw nsw i32 %192, 16, !dbg !549
  %194 = or i32 %189, %193, !dbg !549
  %195 = getelementptr inbounds i8, i8* %0, i64 39, !dbg !549
  %196 = load i8, i8* %195, align 1, !dbg !549, !tbaa !391
  %197 = zext i8 %196 to i32, !dbg !549
  %198 = shl nuw i32 %197, 24, !dbg !549
  %199 = or i32 %194, %198, !dbg !549
  %200 = getelementptr inbounds %struct._rsx, %struct._rsx* %8, i64 0, i32 0, i32 0, i64 15, !dbg !550
  store i32 %199, i32* %200, align 4, !dbg !551, !tbaa !155
  ret void, !dbg !552
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
!72 = !DILocalVariable(name: "rnd", scope: !73, file: !3, line: 87, type: !77)
!73 = distinct !DISubprogram(name: "_rs_stir", scope: !3, file: !3, line: 85, type: !74, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !76)
!74 = !DISubroutineType(types: !75)
!75 = !{null}
!76 = !{!72}
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 320, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 40)
!80 = !DILocation(line: 87, column: 9, scope: !73, inlinedAt: !81)
!81 = distinct !DILocation(line: 110, column: 3, scope: !82, inlinedAt: !88)
!82 = distinct !DILexicalBlock(scope: !83, file: !3, line: 109, column: 6)
!83 = distinct !DISubprogram(name: "_rs_stir_if_needed", scope: !3, file: !3, line: 106, type: !84, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !86)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !31}
!86 = !{!87}
!87 = !DILocalVariable(name: "len", arg: 1, scope: !83, file: !3, line: 106, type: !31)
!88 = distinct !DILocation(line: 169, column: 2, scope: !89, inlinedAt: !96)
!89 = distinct !DISubprogram(name: "_rs_random_u32", scope: !3, file: !3, line: 165, type: !90, isLocal: true, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !93)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !92}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!93 = !{!94, !95}
!94 = !DILocalVariable(name: "val", arg: 1, scope: !89, file: !3, line: 165, type: !92)
!95 = !DILocalVariable(name: "keystream", scope: !89, file: !3, line: 167, type: !18)
!96 = distinct !DILocation(line: 186, column: 2, scope: !67)
!97 = !DILocation(line: 181, column: 2, scope: !67)
!98 = !DILocation(line: 181, column: 11, scope: !67)
!99 = !DILocation(line: 165, column: 26, scope: !89, inlinedAt: !96)
!100 = !DILocation(line: 106, column: 27, scope: !83, inlinedAt: !88)
!101 = !DILocation(line: 109, column: 7, scope: !82, inlinedAt: !88)
!102 = !{!103, !103, i64 0}
!103 = !{!"any pointer", !104, i64 0}
!104 = !{!"omnipotent char", !105, i64 0}
!105 = !{!"Simple C/C++ TBAA"}
!106 = !DILocation(line: 109, column: 10, scope: !82, inlinedAt: !88)
!107 = !DILocation(line: 109, column: 17, scope: !82, inlinedAt: !88)
!108 = !{!109, !110, i64 8}
!109 = !{!"_rs", !110, i64 0, !110, i64 8}
!110 = !{!"long", !104, i64 0}
!111 = !DILocation(line: 109, column: 26, scope: !82, inlinedAt: !88)
!112 = !DILocation(line: 109, column: 6, scope: !83, inlinedAt: !88)
!113 = !DILocation(line: 87, column: 2, scope: !73, inlinedAt: !81)
!114 = !DILocation(line: 89, column: 6, scope: !115, inlinedAt: !81)
!115 = distinct !DILexicalBlock(scope: !73, file: !3, line: 89, column: 6)
!116 = !DILocation(line: 89, column: 34, scope: !115, inlinedAt: !81)
!117 = !DILocation(line: 89, column: 6, scope: !73, inlinedAt: !81)
!118 = !DILocation(line: 69, column: 2, scope: !119, inlinedAt: !120)
!119 = distinct !DISubprogram(name: "_getentropy_fail", scope: !24, file: !24, line: 64, type: !74, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!120 = distinct !DILocation(line: 90, column: 3, scope: !115, inlinedAt: !81)
!121 = !DILocation(line: 90, column: 3, scope: !115, inlinedAt: !81)
!122 = !DILocation(line: 92, column: 7, scope: !123, inlinedAt: !81)
!123 = distinct !DILexicalBlock(scope: !73, file: !3, line: 92, column: 6)
!124 = !DILocation(line: 92, column: 6, scope: !73, inlinedAt: !81)
!125 = !DILocation(line: 93, column: 3, scope: !123, inlinedAt: !81)
!126 = !DILocation(line: 95, column: 3, scope: !123, inlinedAt: !81)
!127 = !DILocation(line: 96, column: 2, scope: !73, inlinedAt: !81)
!128 = !DILocation(line: 99, column: 14, scope: !73, inlinedAt: !81)
!129 = !{!109, !110, i64 0}
!130 = !DILocation(line: 100, column: 9, scope: !73, inlinedAt: !81)
!131 = !DILocation(line: 100, column: 2, scope: !73, inlinedAt: !81)
!132 = !DILocation(line: 102, column: 2, scope: !73, inlinedAt: !81)
!133 = !DILocation(line: 102, column: 15, scope: !73, inlinedAt: !81)
!134 = !DILocation(line: 103, column: 1, scope: !73, inlinedAt: !81)
!135 = !DILocation(line: 110, column: 3, scope: !82, inlinedAt: !88)
!136 = !DILocation(line: 170, column: 6, scope: !137, inlinedAt: !96)
!137 = distinct !DILexicalBlock(scope: !89, file: !3, line: 170, column: 6)
!138 = !DILocation(line: 111, column: 10, scope: !139, inlinedAt: !88)
!139 = distinct !DILexicalBlock(scope: !83, file: !3, line: 111, column: 6)
!140 = !DILocation(line: 111, column: 6, scope: !83, inlinedAt: !88)
!141 = !DILocation(line: 0, scope: !139, inlinedAt: !88)
!142 = !DILocation(line: 170, column: 10, scope: !137, inlinedAt: !96)
!143 = !DILocation(line: 170, column: 18, scope: !137, inlinedAt: !96)
!144 = !DILocation(line: 170, column: 6, scope: !89, inlinedAt: !96)
!145 = !DILocation(line: 171, column: 3, scope: !137, inlinedAt: !96)
!146 = !DILocation(line: 172, column: 54, scope: !89, inlinedAt: !96)
!147 = !DILocation(line: 172, column: 14, scope: !89, inlinedAt: !96)
!148 = !DILocation(line: 172, column: 26, scope: !89, inlinedAt: !96)
!149 = !DILocation(line: 172, column: 48, scope: !89, inlinedAt: !96)
!150 = !DILocation(line: 167, column: 10, scope: !89, inlinedAt: !96)
!151 = !DILocation(line: 173, column: 2, scope: !89, inlinedAt: !96)
!152 = !DILocation(line: 174, column: 2, scope: !89, inlinedAt: !96)
!153 = !DILocation(line: 175, column: 14, scope: !89, inlinedAt: !96)
!154 = !DILocation(line: 190, column: 9, scope: !67)
!155 = !{!156, !156, i64 0}
!156 = !{!"int", !104, i64 0}
!157 = !DILocation(line: 191, column: 1, scope: !67)
!158 = !DILocation(line: 190, column: 2, scope: !67)
!159 = distinct !DISubprogram(name: "arc4random_buf", scope: !3, file: !3, line: 194, type: !160, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !162)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !6, !31}
!162 = !{!163, !164}
!163 = !DILocalVariable(name: "buf", arg: 1, scope: !159, file: !3, line: 194, type: !6)
!164 = !DILocalVariable(name: "n", arg: 2, scope: !159, file: !3, line: 194, type: !31)
!165 = !DILocation(line: 87, column: 9, scope: !73, inlinedAt: !166)
!166 = distinct !DILocation(line: 110, column: 3, scope: !82, inlinedAt: !167)
!167 = distinct !DILocation(line: 147, column: 2, scope: !168, inlinedAt: !175)
!168 = distinct !DISubprogram(name: "_rs_random_buf", scope: !3, file: !3, line: 141, type: !160, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !169)
!169 = !{!170, !171, !172, !173, !174}
!170 = !DILocalVariable(name: "_buf", arg: 1, scope: !168, file: !3, line: 141, type: !6)
!171 = !DILocalVariable(name: "n", arg: 2, scope: !168, file: !3, line: 141, type: !31)
!172 = !DILocalVariable(name: "buf", scope: !168, file: !3, line: 143, type: !18)
!173 = !DILocalVariable(name: "keystream", scope: !168, file: !3, line: 144, type: !18)
!174 = !DILocalVariable(name: "m", scope: !168, file: !3, line: 145, type: !31)
!175 = distinct !DILocation(line: 199, column: 2, scope: !159)
!176 = !DILocation(line: 194, column: 22, scope: !159)
!177 = !DILocation(line: 194, column: 34, scope: !159)
!178 = !DILocation(line: 141, column: 22, scope: !168, inlinedAt: !175)
!179 = !DILocation(line: 141, column: 35, scope: !168, inlinedAt: !175)
!180 = !DILocation(line: 143, column: 10, scope: !168, inlinedAt: !175)
!181 = !DILocation(line: 106, column: 27, scope: !83, inlinedAt: !167)
!182 = !DILocation(line: 109, column: 7, scope: !82, inlinedAt: !167)
!183 = !DILocation(line: 109, column: 10, scope: !82, inlinedAt: !167)
!184 = !DILocation(line: 109, column: 17, scope: !82, inlinedAt: !167)
!185 = !DILocation(line: 109, column: 26, scope: !82, inlinedAt: !167)
!186 = !DILocation(line: 109, column: 6, scope: !83, inlinedAt: !167)
!187 = !DILocation(line: 87, column: 2, scope: !73, inlinedAt: !166)
!188 = !DILocation(line: 89, column: 6, scope: !115, inlinedAt: !166)
!189 = !DILocation(line: 89, column: 34, scope: !115, inlinedAt: !166)
!190 = !DILocation(line: 89, column: 6, scope: !73, inlinedAt: !166)
!191 = !DILocation(line: 69, column: 2, scope: !119, inlinedAt: !192)
!192 = distinct !DILocation(line: 90, column: 3, scope: !115, inlinedAt: !166)
!193 = !DILocation(line: 90, column: 3, scope: !115, inlinedAt: !166)
!194 = !DILocation(line: 92, column: 7, scope: !123, inlinedAt: !166)
!195 = !DILocation(line: 92, column: 6, scope: !73, inlinedAt: !166)
!196 = !DILocation(line: 93, column: 3, scope: !123, inlinedAt: !166)
!197 = !DILocation(line: 95, column: 3, scope: !123, inlinedAt: !166)
!198 = !DILocation(line: 96, column: 2, scope: !73, inlinedAt: !166)
!199 = !DILocation(line: 99, column: 14, scope: !73, inlinedAt: !166)
!200 = !DILocation(line: 100, column: 9, scope: !73, inlinedAt: !166)
!201 = !DILocation(line: 100, column: 2, scope: !73, inlinedAt: !166)
!202 = !DILocation(line: 102, column: 2, scope: !73, inlinedAt: !166)
!203 = !DILocation(line: 102, column: 15, scope: !73, inlinedAt: !166)
!204 = !DILocation(line: 103, column: 1, scope: !73, inlinedAt: !166)
!205 = !DILocation(line: 110, column: 3, scope: !82, inlinedAt: !167)
!206 = !DILocation(line: 111, column: 10, scope: !139, inlinedAt: !167)
!207 = !DILocation(line: 111, column: 6, scope: !83, inlinedAt: !167)
!208 = !DILocation(line: 0, scope: !139, inlinedAt: !167)
!209 = !DILocation(line: 148, column: 11, scope: !168, inlinedAt: !175)
!210 = !DILocation(line: 148, column: 2, scope: !168, inlinedAt: !175)
!211 = !DILocation(line: 149, column: 7, scope: !212, inlinedAt: !175)
!212 = distinct !DILexicalBlock(scope: !213, file: !3, line: 149, column: 7)
!213 = distinct !DILexicalBlock(scope: !168, file: !3, line: 148, column: 16)
!214 = !DILocation(line: 149, column: 11, scope: !212, inlinedAt: !175)
!215 = !DILocation(line: 149, column: 19, scope: !212, inlinedAt: !175)
!216 = !DILocation(line: 149, column: 7, scope: !213, inlinedAt: !175)
!217 = !DILocation(line: 150, column: 8, scope: !218, inlinedAt: !175)
!218 = distinct !DILexicalBlock(scope: !212, file: !3, line: 149, column: 24)
!219 = !DILocation(line: 145, column: 9, scope: !168, inlinedAt: !175)
!220 = !DILocation(line: 151, column: 16, scope: !218, inlinedAt: !175)
!221 = !DILocation(line: 151, column: 28, scope: !218, inlinedAt: !175)
!222 = !DILocation(line: 152, column: 8, scope: !218, inlinedAt: !175)
!223 = !DILocation(line: 144, column: 10, scope: !168, inlinedAt: !175)
!224 = !DILocation(line: 153, column: 4, scope: !218, inlinedAt: !175)
!225 = !DILocation(line: 154, column: 4, scope: !218, inlinedAt: !175)
!226 = !DILocation(line: 155, column: 8, scope: !218, inlinedAt: !175)
!227 = !DILocation(line: 156, column: 6, scope: !218, inlinedAt: !175)
!228 = !DILocation(line: 157, column: 16, scope: !218, inlinedAt: !175)
!229 = !DILocation(line: 159, column: 19, scope: !230, inlinedAt: !175)
!230 = distinct !DILexicalBlock(scope: !213, file: !3, line: 159, column: 7)
!231 = !DILocation(line: 159, column: 7, scope: !213, inlinedAt: !175)
!232 = !DILocation(line: 160, column: 4, scope: !230, inlinedAt: !175)
!233 = distinct !{!233, !234, !235}
!234 = !DILocation(line: 148, column: 2, scope: !168)
!235 = !DILocation(line: 161, column: 2, scope: !168)
!236 = !DILocation(line: 203, column: 1, scope: !159)
!237 = distinct !DISubprogram(name: "_rs_rekey", scope: !3, file: !3, line: 118, type: !238, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !18, !31}
!240 = !{!241, !242, !243, !246}
!241 = !DILocalVariable(name: "dat", arg: 1, scope: !237, file: !3, line: 118, type: !18)
!242 = !DILocalVariable(name: "datlen", arg: 2, scope: !237, file: !3, line: 118, type: !31)
!243 = !DILocalVariable(name: "i", scope: !244, file: !3, line: 128, type: !31)
!244 = distinct !DILexicalBlock(scope: !245, file: !3, line: 127, column: 11)
!245 = distinct !DILexicalBlock(scope: !237, file: !3, line: 127, column: 6)
!246 = !DILocalVariable(name: "m", scope: !244, file: !3, line: 128, type: !31)
!247 = !DILocation(line: 118, column: 19, scope: !237)
!248 = !DILocation(line: 118, column: 31, scope: !237)
!249 = !DILocation(line: 124, column: 24, scope: !237)
!250 = !DILocation(line: 124, column: 40, scope: !237)
!251 = !DILocalVariable(name: "x", arg: 1, scope: !252, file: !8, line: 88, type: !255)
!252 = distinct !DISubprogram(name: "chacha_encrypt_bytes", scope: !8, file: !8, line: 88, type: !253, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !259)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !255, !256, !258, !7}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!259 = !{!251, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !300}
!260 = !DILocalVariable(name: "m", arg: 2, scope: !252, file: !8, line: 88, type: !256)
!261 = !DILocalVariable(name: "c", arg: 3, scope: !252, file: !8, line: 88, type: !258)
!262 = !DILocalVariable(name: "bytes", arg: 4, scope: !252, file: !8, line: 88, type: !7)
!263 = !DILocalVariable(name: "x0", scope: !252, file: !8, line: 90, type: !7)
!264 = !DILocalVariable(name: "x1", scope: !252, file: !8, line: 90, type: !7)
!265 = !DILocalVariable(name: "x2", scope: !252, file: !8, line: 90, type: !7)
!266 = !DILocalVariable(name: "x3", scope: !252, file: !8, line: 90, type: !7)
!267 = !DILocalVariable(name: "x4", scope: !252, file: !8, line: 90, type: !7)
!268 = !DILocalVariable(name: "x5", scope: !252, file: !8, line: 90, type: !7)
!269 = !DILocalVariable(name: "x6", scope: !252, file: !8, line: 90, type: !7)
!270 = !DILocalVariable(name: "x7", scope: !252, file: !8, line: 90, type: !7)
!271 = !DILocalVariable(name: "x8", scope: !252, file: !8, line: 90, type: !7)
!272 = !DILocalVariable(name: "x9", scope: !252, file: !8, line: 90, type: !7)
!273 = !DILocalVariable(name: "x10", scope: !252, file: !8, line: 90, type: !7)
!274 = !DILocalVariable(name: "x11", scope: !252, file: !8, line: 90, type: !7)
!275 = !DILocalVariable(name: "x12", scope: !252, file: !8, line: 90, type: !7)
!276 = !DILocalVariable(name: "x13", scope: !252, file: !8, line: 90, type: !7)
!277 = !DILocalVariable(name: "x14", scope: !252, file: !8, line: 90, type: !7)
!278 = !DILocalVariable(name: "x15", scope: !252, file: !8, line: 90, type: !7)
!279 = !DILocalVariable(name: "j0", scope: !252, file: !8, line: 91, type: !7)
!280 = !DILocalVariable(name: "j1", scope: !252, file: !8, line: 91, type: !7)
!281 = !DILocalVariable(name: "j2", scope: !252, file: !8, line: 91, type: !7)
!282 = !DILocalVariable(name: "j3", scope: !252, file: !8, line: 91, type: !7)
!283 = !DILocalVariable(name: "j4", scope: !252, file: !8, line: 91, type: !7)
!284 = !DILocalVariable(name: "j5", scope: !252, file: !8, line: 91, type: !7)
!285 = !DILocalVariable(name: "j6", scope: !252, file: !8, line: 91, type: !7)
!286 = !DILocalVariable(name: "j7", scope: !252, file: !8, line: 91, type: !7)
!287 = !DILocalVariable(name: "j8", scope: !252, file: !8, line: 91, type: !7)
!288 = !DILocalVariable(name: "j9", scope: !252, file: !8, line: 91, type: !7)
!289 = !DILocalVariable(name: "j10", scope: !252, file: !8, line: 91, type: !7)
!290 = !DILocalVariable(name: "j11", scope: !252, file: !8, line: 91, type: !7)
!291 = !DILocalVariable(name: "j12", scope: !252, file: !8, line: 91, type: !7)
!292 = !DILocalVariable(name: "j13", scope: !252, file: !8, line: 91, type: !7)
!293 = !DILocalVariable(name: "j14", scope: !252, file: !8, line: 91, type: !7)
!294 = !DILocalVariable(name: "j15", scope: !252, file: !8, line: 91, type: !7)
!295 = !DILocalVariable(name: "ctarget", scope: !252, file: !8, line: 92, type: !258)
!296 = !DILocalVariable(name: "tmp", scope: !252, file: !8, line: 93, type: !297)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 64)
!300 = !DILocalVariable(name: "i", scope: !252, file: !8, line: 94, type: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !20, line: 95, baseType: !13)
!302 = !DILocation(line: 88, column: 34, scope: !252, inlinedAt: !303)
!303 = distinct !DILocation(line: 124, column: 2, scope: !237)
!304 = !DILocation(line: 88, column: 46, scope: !252, inlinedAt: !303)
!305 = !DILocation(line: 88, column: 52, scope: !252, inlinedAt: !303)
!306 = !DILocation(line: 88, column: 58, scope: !252, inlinedAt: !303)
!307 = !DILocation(line: 92, column: 7, scope: !252, inlinedAt: !303)
!308 = !DILocation(line: 91, column: 7, scope: !252, inlinedAt: !303)
!309 = !DILocation(line: 91, column: 11, scope: !252, inlinedAt: !303)
!310 = !DILocation(line: 91, column: 15, scope: !252, inlinedAt: !303)
!311 = !DILocation(line: 98, column: 8, scope: !252, inlinedAt: !303)
!312 = !DILocation(line: 91, column: 19, scope: !252, inlinedAt: !303)
!313 = !DILocation(line: 91, column: 23, scope: !252, inlinedAt: !303)
!314 = !DILocation(line: 91, column: 27, scope: !252, inlinedAt: !303)
!315 = !DILocation(line: 91, column: 31, scope: !252, inlinedAt: !303)
!316 = !DILocation(line: 102, column: 8, scope: !252, inlinedAt: !303)
!317 = !DILocation(line: 91, column: 35, scope: !252, inlinedAt: !303)
!318 = !DILocation(line: 91, column: 39, scope: !252, inlinedAt: !303)
!319 = !DILocation(line: 91, column: 43, scope: !252, inlinedAt: !303)
!320 = !DILocation(line: 91, column: 47, scope: !252, inlinedAt: !303)
!321 = !DILocation(line: 106, column: 8, scope: !252, inlinedAt: !303)
!322 = !DILocation(line: 91, column: 52, scope: !252, inlinedAt: !303)
!323 = !DILocation(line: 110, column: 9, scope: !252, inlinedAt: !303)
!324 = !DILocation(line: 91, column: 57, scope: !252, inlinedAt: !303)
!325 = !DILocation(line: 111, column: 9, scope: !252, inlinedAt: !303)
!326 = !DILocation(line: 91, column: 62, scope: !252, inlinedAt: !303)
!327 = !DILocation(line: 112, column: 9, scope: !252, inlinedAt: !303)
!328 = !DILocation(line: 91, column: 67, scope: !252, inlinedAt: !303)
!329 = !DILocation(line: 113, column: 9, scope: !252, inlinedAt: !303)
!330 = !DILocation(line: 91, column: 72, scope: !252, inlinedAt: !303)
!331 = !DILocation(line: 148, column: 10, scope: !332, inlinedAt: !303)
!332 = distinct !DILexicalBlock(scope: !333, file: !8, line: 115, column: 12)
!333 = distinct !DILexicalBlock(scope: !334, file: !8, line: 115, column: 3)
!334 = distinct !DILexicalBlock(scope: !252, file: !8, line: 115, column: 3)
!335 = !DILocation(line: 115, column: 3, scope: !252, inlinedAt: !303)
!336 = !DILocation(line: 0, scope: !332, inlinedAt: !303)
!337 = !DILocation(line: 111, column: 7, scope: !252, inlinedAt: !303)
!338 = !DILocation(line: 90, column: 7, scope: !252, inlinedAt: !303)
!339 = !DILocation(line: 90, column: 11, scope: !252, inlinedAt: !303)
!340 = !DILocation(line: 90, column: 15, scope: !252, inlinedAt: !303)
!341 = !DILocation(line: 90, column: 19, scope: !252, inlinedAt: !303)
!342 = !DILocation(line: 90, column: 23, scope: !252, inlinedAt: !303)
!343 = !DILocation(line: 90, column: 27, scope: !252, inlinedAt: !303)
!344 = !DILocation(line: 90, column: 31, scope: !252, inlinedAt: !303)
!345 = !DILocation(line: 90, column: 35, scope: !252, inlinedAt: !303)
!346 = !DILocation(line: 90, column: 39, scope: !252, inlinedAt: !303)
!347 = !DILocation(line: 90, column: 43, scope: !252, inlinedAt: !303)
!348 = !DILocation(line: 90, column: 47, scope: !252, inlinedAt: !303)
!349 = !DILocation(line: 90, column: 52, scope: !252, inlinedAt: !303)
!350 = !DILocation(line: 90, column: 57, scope: !252, inlinedAt: !303)
!351 = !DILocation(line: 90, column: 62, scope: !252, inlinedAt: !303)
!352 = !DILocation(line: 90, column: 67, scope: !252, inlinedAt: !303)
!353 = !DILocation(line: 90, column: 72, scope: !252, inlinedAt: !303)
!354 = !DILocation(line: 94, column: 9, scope: !252, inlinedAt: !303)
!355 = !DILocation(line: 138, column: 5, scope: !356, inlinedAt: !303)
!356 = distinct !DILexicalBlock(scope: !332, file: !8, line: 138, column: 5)
!357 = !DILocation(line: 139, column: 7, scope: !358, inlinedAt: !303)
!358 = distinct !DILexicalBlock(scope: !359, file: !8, line: 138, column: 31)
!359 = distinct !DILexicalBlock(scope: !356, file: !8, line: 138, column: 5)
!360 = !DILocation(line: 142, column: 7, scope: !358, inlinedAt: !303)
!361 = !DILocation(line: 141, column: 7, scope: !358, inlinedAt: !303)
!362 = !DILocation(line: 140, column: 7, scope: !358, inlinedAt: !303)
!363 = !DILocation(line: 143, column: 7, scope: !358, inlinedAt: !303)
!364 = !DILocation(line: 146, column: 7, scope: !358, inlinedAt: !303)
!365 = !DILocation(line: 138, column: 25, scope: !359, inlinedAt: !303)
!366 = !DILocation(line: 138, column: 19, scope: !359, inlinedAt: !303)
!367 = distinct !{!367, !368, !369}
!368 = !DILocation(line: 138, column: 5, scope: !356)
!369 = !DILocation(line: 147, column: 5, scope: !356)
!370 = !DILocation(line: 149, column: 10, scope: !332, inlinedAt: !303)
!371 = !DILocation(line: 150, column: 10, scope: !332, inlinedAt: !303)
!372 = !DILocation(line: 151, column: 10, scope: !332, inlinedAt: !303)
!373 = !DILocation(line: 152, column: 10, scope: !332, inlinedAt: !303)
!374 = !DILocation(line: 153, column: 10, scope: !332, inlinedAt: !303)
!375 = !DILocation(line: 154, column: 10, scope: !332, inlinedAt: !303)
!376 = !DILocation(line: 155, column: 10, scope: !332, inlinedAt: !303)
!377 = !DILocation(line: 156, column: 10, scope: !332, inlinedAt: !303)
!378 = !DILocation(line: 157, column: 10, scope: !332, inlinedAt: !303)
!379 = !DILocation(line: 158, column: 11, scope: !332, inlinedAt: !303)
!380 = !DILocation(line: 159, column: 11, scope: !332, inlinedAt: !303)
!381 = !DILocation(line: 160, column: 11, scope: !332, inlinedAt: !303)
!382 = !DILocation(line: 161, column: 11, scope: !332, inlinedAt: !303)
!383 = !DILocation(line: 162, column: 11, scope: !332, inlinedAt: !303)
!384 = !DILocation(line: 163, column: 11, scope: !332, inlinedAt: !303)
!385 = !DILocation(line: 184, column: 11, scope: !332, inlinedAt: !303)
!386 = !DILocation(line: 185, column: 10, scope: !387, inlinedAt: !303)
!387 = distinct !DILexicalBlock(scope: !332, file: !8, line: 185, column: 9)
!388 = !DILocation(line: 185, column: 9, scope: !332, inlinedAt: !303)
!389 = !DILocation(line: 190, column: 5, scope: !390, inlinedAt: !303)
!390 = distinct !DILexicalBlock(scope: !332, file: !8, line: 190, column: 5)
!391 = !{!104, !104, i64 0}
!392 = !DILocation(line: 191, column: 5, scope: !393, inlinedAt: !303)
!393 = distinct !DILexicalBlock(scope: !332, file: !8, line: 191, column: 5)
!394 = !DILocation(line: 192, column: 5, scope: !395, inlinedAt: !303)
!395 = distinct !DILexicalBlock(scope: !332, file: !8, line: 192, column: 5)
!396 = !DILocation(line: 193, column: 5, scope: !397, inlinedAt: !303)
!397 = distinct !DILexicalBlock(scope: !332, file: !8, line: 193, column: 5)
!398 = !DILocation(line: 194, column: 5, scope: !399, inlinedAt: !303)
!399 = distinct !DILexicalBlock(scope: !332, file: !8, line: 194, column: 5)
!400 = !DILocation(line: 195, column: 5, scope: !401, inlinedAt: !303)
!401 = distinct !DILexicalBlock(scope: !332, file: !8, line: 195, column: 5)
!402 = !DILocation(line: 196, column: 5, scope: !403, inlinedAt: !303)
!403 = distinct !DILexicalBlock(scope: !332, file: !8, line: 196, column: 5)
!404 = !DILocation(line: 197, column: 5, scope: !405, inlinedAt: !303)
!405 = distinct !DILexicalBlock(scope: !332, file: !8, line: 197, column: 5)
!406 = !DILocation(line: 198, column: 5, scope: !407, inlinedAt: !303)
!407 = distinct !DILexicalBlock(scope: !332, file: !8, line: 198, column: 5)
!408 = !DILocation(line: 199, column: 5, scope: !409, inlinedAt: !303)
!409 = distinct !DILexicalBlock(scope: !332, file: !8, line: 199, column: 5)
!410 = !DILocation(line: 200, column: 5, scope: !411, inlinedAt: !303)
!411 = distinct !DILexicalBlock(scope: !332, file: !8, line: 200, column: 5)
!412 = !DILocation(line: 201, column: 5, scope: !413, inlinedAt: !303)
!413 = distinct !DILexicalBlock(scope: !332, file: !8, line: 201, column: 5)
!414 = !DILocation(line: 202, column: 5, scope: !415, inlinedAt: !303)
!415 = distinct !DILexicalBlock(scope: !332, file: !8, line: 202, column: 5)
!416 = !DILocation(line: 203, column: 5, scope: !417, inlinedAt: !303)
!417 = distinct !DILexicalBlock(scope: !332, file: !8, line: 203, column: 5)
!418 = !DILocation(line: 204, column: 5, scope: !419, inlinedAt: !303)
!419 = distinct !DILexicalBlock(scope: !332, file: !8, line: 204, column: 5)
!420 = !DILocation(line: 205, column: 5, scope: !421, inlinedAt: !303)
!421 = distinct !DILexicalBlock(scope: !332, file: !8, line: 205, column: 5)
!422 = !DILocation(line: 207, column: 15, scope: !423, inlinedAt: !303)
!423 = distinct !DILexicalBlock(scope: !332, file: !8, line: 207, column: 9)
!424 = !DILocation(line: 207, column: 9, scope: !332, inlinedAt: !303)
!425 = !DILocation(line: 215, column: 11, scope: !332, inlinedAt: !303)
!426 = !DILocation(line: 216, column: 7, scope: !332, inlinedAt: !303)
!427 = !DILocation(line: 115, column: 3, scope: !333, inlinedAt: !303)
!428 = distinct !{!428, !429, !430}
!429 = !DILocation(line: 115, column: 3, scope: !334)
!430 = !DILocation(line: 220, column: 3, scope: !334)
!431 = !DILocation(line: 211, column: 20, scope: !432, inlinedAt: !303)
!432 = distinct !DILexicalBlock(scope: !423, file: !8, line: 207, column: 22)
!433 = !DILocation(line: 212, column: 20, scope: !432, inlinedAt: !303)
!434 = !DILocation(line: 127, column: 6, scope: !245)
!435 = !DILocation(line: 127, column: 6, scope: !237)
!436 = !DILocation(line: 130, column: 7, scope: !244)
!437 = !DILocation(line: 128, column: 13, scope: !244)
!438 = !DILocation(line: 128, column: 10, scope: !244)
!439 = !DILocation(line: 131, column: 17, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 131, column: 3)
!441 = distinct !DILexicalBlock(scope: !244, file: !3, line: 131, column: 3)
!442 = !DILocation(line: 131, column: 3, scope: !441)
!443 = !DILocation(line: 132, column: 22, scope: !440)
!444 = !DILocation(line: 131, column: 23, scope: !440)
!445 = !{!446}
!446 = distinct !{!446, !447}
!447 = distinct !{!447, !"LVerDomain"}
!448 = !DILocation(line: 132, column: 4, scope: !440)
!449 = !DILocation(line: 132, column: 19, scope: !440)
!450 = !{!451}
!451 = distinct !{!451, !447}
!452 = distinct !{!452, !442, !453, !454}
!453 = !DILocation(line: 132, column: 27, scope: !441)
!454 = !{!"llvm.loop.isvectorized", i32 1}
!455 = distinct !{!455, !442, !453, !454}
!456 = !DILocation(line: 135, column: 2, scope: !237)
!457 = !DILocation(line: 136, column: 9, scope: !237)
!458 = !DILocation(line: 136, column: 2, scope: !237)
!459 = !DILocation(line: 137, column: 14, scope: !237)
!460 = !DILocation(line: 138, column: 1, scope: !237)
!461 = distinct !DISubprogram(name: "_rs_init", scope: !3, file: !3, line: 70, type: !238, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !462)
!462 = !{!463, !464}
!463 = !DILocalVariable(name: "buf", arg: 1, scope: !461, file: !3, line: 70, type: !18)
!464 = !DILocalVariable(name: "n", arg: 2, scope: !461, file: !3, line: 70, type: !31)
!465 = !DILocation(line: 70, column: 18, scope: !461)
!466 = !DILocation(line: 70, column: 30, scope: !461)
!467 = !DILocation(line: 75, column: 6, scope: !468)
!468 = distinct !DILexicalBlock(scope: !461, file: !3, line: 75, column: 6)
!469 = !DILocation(line: 75, column: 9, scope: !468)
!470 = !DILocation(line: 75, column: 6, scope: !461)
!471 = !DILocation(line: 80, column: 19, scope: !461)
!472 = !DILocalVariable(name: "rsp", arg: 1, scope: !473, file: !24, line: 74, type: !477)
!473 = distinct !DISubprogram(name: "_rs_allocate", scope: !24, file: !24, line: 74, type: !474, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !479)
!474 = !DISubroutineType(types: !475)
!475 = !{!476, !477, !478}
!476 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!479 = !{!472, !480}
!480 = !DILocalVariable(name: "rsxp", arg: 2, scope: !473, file: !24, line: 74, type: !478)
!481 = !DILocation(line: 74, column: 27, scope: !473, inlinedAt: !482)
!482 = distinct !DILocation(line: 76, column: 7, scope: !483)
!483 = distinct !DILexicalBlock(scope: !484, file: !3, line: 76, column: 7)
!484 = distinct !DILexicalBlock(scope: !468, file: !3, line: 75, column: 18)
!485 = !DILocation(line: 74, column: 46, scope: !473, inlinedAt: !482)
!486 = !DILocation(line: 79, column: 7, scope: !473, inlinedAt: !482)
!487 = !DILocation(line: 80, column: 8, scope: !473, inlinedAt: !482)
!488 = !DILocation(line: 76, column: 7, scope: !484)
!489 = !DILocalVariable(name: "x", arg: 1, scope: !490, file: !8, line: 54, type: !255)
!490 = distinct !DISubprogram(name: "chacha_keysetup", scope: !8, file: !8, line: 54, type: !491, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !493)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !255, !256, !7, !7}
!493 = !{!489, !494, !495, !496, !497}
!494 = !DILocalVariable(name: "k", arg: 2, scope: !490, file: !8, line: 54, type: !256)
!495 = !DILocalVariable(name: "kbits", arg: 3, scope: !490, file: !8, line: 54, type: !7)
!496 = !DILocalVariable(name: "ivbits", arg: 4, scope: !490, file: !8, line: 54, type: !7)
!497 = !DILocalVariable(name: "constants", scope: !490, file: !8, line: 56, type: !498)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!499 = !DILocation(line: 54, column: 29, scope: !490, inlinedAt: !500)
!500 = distinct !DILocation(line: 80, column: 2, scope: !461)
!501 = !DILocation(line: 54, column: 41, scope: !490, inlinedAt: !500)
!502 = !DILocation(line: 54, column: 47, scope: !490, inlinedAt: !500)
!503 = !DILocation(line: 54, column: 57, scope: !490, inlinedAt: !500)
!504 = !DILocation(line: 58, column: 17, scope: !490, inlinedAt: !500)
!505 = !DILocation(line: 58, column: 3, scope: !490, inlinedAt: !500)
!506 = !DILocation(line: 58, column: 15, scope: !490, inlinedAt: !500)
!507 = !DILocation(line: 59, column: 17, scope: !490, inlinedAt: !500)
!508 = !DILocation(line: 59, column: 3, scope: !490, inlinedAt: !500)
!509 = !DILocation(line: 59, column: 15, scope: !490, inlinedAt: !500)
!510 = !DILocation(line: 60, column: 17, scope: !490, inlinedAt: !500)
!511 = !DILocation(line: 60, column: 3, scope: !490, inlinedAt: !500)
!512 = !DILocation(line: 60, column: 15, scope: !490, inlinedAt: !500)
!513 = !DILocation(line: 61, column: 17, scope: !490, inlinedAt: !500)
!514 = !DILocation(line: 61, column: 3, scope: !490, inlinedAt: !500)
!515 = !DILocation(line: 61, column: 15, scope: !490, inlinedAt: !500)
!516 = !DILocation(line: 63, column: 7, scope: !517, inlinedAt: !500)
!517 = distinct !DILexicalBlock(scope: !518, file: !8, line: 62, column: 21)
!518 = distinct !DILexicalBlock(scope: !490, file: !8, line: 62, column: 7)
!519 = !DILocation(line: 68, column: 17, scope: !490, inlinedAt: !500)
!520 = !DILocation(line: 68, column: 3, scope: !490, inlinedAt: !500)
!521 = !DILocation(line: 68, column: 15, scope: !490, inlinedAt: !500)
!522 = !DILocation(line: 69, column: 17, scope: !490, inlinedAt: !500)
!523 = !DILocation(line: 69, column: 3, scope: !490, inlinedAt: !500)
!524 = !DILocation(line: 69, column: 15, scope: !490, inlinedAt: !500)
!525 = !DILocation(line: 70, column: 18, scope: !490, inlinedAt: !500)
!526 = !DILocation(line: 70, column: 3, scope: !490, inlinedAt: !500)
!527 = !DILocation(line: 70, column: 16, scope: !490, inlinedAt: !500)
!528 = !DILocation(line: 71, column: 18, scope: !490, inlinedAt: !500)
!529 = !DILocation(line: 71, column: 3, scope: !490, inlinedAt: !500)
!530 = !DILocation(line: 71, column: 16, scope: !490, inlinedAt: !500)
!531 = !DILocation(line: 72, column: 15, scope: !490, inlinedAt: !500)
!532 = !DILocation(line: 81, column: 38, scope: !461)
!533 = !DILocalVariable(name: "x", arg: 1, scope: !534, file: !8, line: 79, type: !255)
!534 = distinct !DISubprogram(name: "chacha_ivsetup", scope: !8, file: !8, line: 79, type: !535, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !537)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !255, !256}
!537 = !{!533, !538}
!538 = !DILocalVariable(name: "iv", arg: 2, scope: !534, file: !8, line: 79, type: !256)
!539 = !DILocation(line: 79, column: 28, scope: !534, inlinedAt: !540)
!540 = distinct !DILocation(line: 81, column: 2, scope: !461)
!541 = !DILocation(line: 79, column: 40, scope: !534, inlinedAt: !540)
!542 = !DILocation(line: 81, column: 3, scope: !534, inlinedAt: !540)
!543 = !DILocation(line: 81, column: 16, scope: !534, inlinedAt: !540)
!544 = !DILocation(line: 82, column: 3, scope: !534, inlinedAt: !540)
!545 = !DILocation(line: 82, column: 16, scope: !534, inlinedAt: !540)
!546 = !DILocation(line: 83, column: 18, scope: !534, inlinedAt: !540)
!547 = !DILocation(line: 83, column: 3, scope: !534, inlinedAt: !540)
!548 = !DILocation(line: 83, column: 16, scope: !534, inlinedAt: !540)
!549 = !DILocation(line: 84, column: 18, scope: !534, inlinedAt: !540)
!550 = !DILocation(line: 84, column: 3, scope: !534, inlinedAt: !540)
!551 = !DILocation(line: 84, column: 16, scope: !534, inlinedAt: !540)
!552 = !DILocation(line: 82, column: 1, scope: !461)
