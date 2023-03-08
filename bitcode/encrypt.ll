; ModuleID = '/root/.unikraft/libs/newlib/musl-imported/src/crypt/encrypt.c'
source_filename = "/root/.unikraft/libs/newlib/musl-imported/src/crypt/encrypt.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.expanded_key = type { [16 x i32], [16 x i32] }

@__encrypt_key = internal global %struct.expanded_key zeroinitializer, align 16, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @setkey(i8* nocapture readonly) local_unnamed_addr #0 !dbg !24 {
  %2 = alloca [8 x i8], align 1
  %3 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 0, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #4, !dbg !41
  br label %4, !dbg !44

; <label>:4:                                      ; preds = %4, %1
  %5 = phi i64 [ 0, %1 ], [ %45, %4 ]
  %6 = phi i8* [ %0, %1 ], [ %44, %4 ]
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 %5, !dbg !46
  store i8 0, i8* %7, align 1, !dbg !49, !tbaa !50
  %8 = load i8, i8* %6, align 1, !dbg !54, !tbaa !50
  %9 = shl i8 %8, 7, !dbg !57
  store i8 %9, i8* %7, align 1, !dbg !58, !tbaa !50
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !59
  %11 = load i8, i8* %10, align 1, !dbg !54, !tbaa !50
  %12 = shl i8 %11, 6, !dbg !57
  %13 = and i8 %12, 64, !dbg !57
  %14 = or i8 %9, %13, !dbg !58
  store i8 %14, i8* %7, align 1, !dbg !58, !tbaa !50
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !59
  %16 = load i8, i8* %15, align 1, !dbg !54, !tbaa !50
  %17 = shl i8 %16, 5, !dbg !57
  %18 = and i8 %17, 32, !dbg !57
  %19 = or i8 %14, %18, !dbg !58
  store i8 %19, i8* %7, align 1, !dbg !58, !tbaa !50
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !59
  %21 = load i8, i8* %20, align 1, !dbg !54, !tbaa !50
  %22 = shl i8 %21, 4, !dbg !57
  %23 = and i8 %22, 16, !dbg !57
  %24 = or i8 %19, %23, !dbg !58
  store i8 %24, i8* %7, align 1, !dbg !58, !tbaa !50
  %25 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !59
  %26 = load i8, i8* %25, align 1, !dbg !54, !tbaa !50
  %27 = shl i8 %26, 3, !dbg !57
  %28 = and i8 %27, 8, !dbg !57
  %29 = or i8 %24, %28, !dbg !58
  store i8 %29, i8* %7, align 1, !dbg !58, !tbaa !50
  %30 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !59
  %31 = load i8, i8* %30, align 1, !dbg !54, !tbaa !50
  %32 = shl i8 %31, 2, !dbg !57
  %33 = and i8 %32, 4, !dbg !57
  %34 = or i8 %29, %33, !dbg !58
  store i8 %34, i8* %7, align 1, !dbg !58, !tbaa !50
  %35 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !59
  %36 = load i8, i8* %35, align 1, !dbg !54, !tbaa !50
  %37 = shl i8 %36, 1, !dbg !57
  %38 = and i8 %37, 2, !dbg !57
  %39 = or i8 %34, %38, !dbg !58
  store i8 %39, i8* %7, align 1, !dbg !58, !tbaa !50
  %40 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !59
  %41 = load i8, i8* %40, align 1, !dbg !54, !tbaa !50
  %42 = and i8 %41, 1, !dbg !60
  %43 = or i8 %39, %42, !dbg !58
  store i8 %43, i8* %7, align 1, !dbg !58, !tbaa !50
  %44 = getelementptr i8, i8* %6, i64 8, !dbg !61
  %45 = add nuw nsw i64 %5, 1, !dbg !62
  %46 = icmp eq i64 %45, 8, !dbg !63
  br i1 %46, label %47, label %4, !dbg !44, !llvm.loop !64

; <label>:47:                                     ; preds = %4
  call void @__des_setkey(i8* nonnull %3, %struct.expanded_key* nonnull @__encrypt_key) #5, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #4, !dbg !67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  ret void, !dbg !67
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @__des_setkey(i8*, %struct.expanded_key*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local void @encrypt(i8* nocapture, i32) local_unnamed_addr #0 !dbg !68 {
  %3 = alloca %struct.expanded_key, align 16
  %4 = alloca [2 x i32], align 4
  %5 = bitcast [2 x i32]* %4 to i8*
  %6 = bitcast %struct.expanded_key* %3 to i8*, !dbg !87
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #4, !dbg !87
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #4, !dbg !88
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0, !dbg !92
  store i32 0, i32* %7, align 4, !dbg !96, !tbaa !97
  br label %8, !dbg !100

; <label>:8:                                      ; preds = %8, %2
  %9 = phi i32 [ 0, %2 ], [ %23, %8 ], !dbg !102
  %10 = phi i8* [ %0, %2 ], [ %25, %8 ]
  %11 = phi i32 [ 31, %2 ], [ %24, %8 ]
  %12 = load i8, i8* %10, align 1, !dbg !104, !tbaa !50
  %13 = and i8 %12, 1, !dbg !105
  %14 = zext i8 %13 to i32, !dbg !105
  %15 = shl i32 %14, %11, !dbg !106
  %16 = or i32 %15, %9, !dbg !102
  store i32 %16, i32* %7, align 4, !dbg !102, !tbaa !97
  %17 = add nsw i32 %11, -1, !dbg !107
  %18 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !108
  %19 = load i8, i8* %18, align 1, !dbg !104, !tbaa !50
  %20 = and i8 %19, 1, !dbg !105
  %21 = zext i8 %20 to i32, !dbg !105
  %22 = shl i32 %21, %17, !dbg !106
  %23 = or i32 %22, %16, !dbg !102
  store i32 %23, i32* %7, align 4, !dbg !102, !tbaa !97
  %24 = add nsw i32 %11, -2, !dbg !107
  %25 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !108
  %26 = icmp eq i32 %17, 0, !dbg !109
  br i1 %26, label %27, label %8, !dbg !100, !llvm.loop !110

; <label>:27:                                     ; preds = %8
  %28 = getelementptr i8, i8* %0, i64 32, !dbg !100
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1, !dbg !92
  store i32 0, i32* %29, align 4, !dbg !96, !tbaa !97
  br label %392, !dbg !100

; <label>:30:                                     ; preds = %411
  %31 = getelementptr inbounds %struct.expanded_key, %struct.expanded_key* %3, i64 0, i32 1, i64 0, !dbg !112
  %32 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.expanded_key, %struct.expanded_key* @__encrypt_key, i64 0, i32 0, i64 12) to <4 x i32>*), align 16, !dbg !118, !tbaa !97
  %33 = shufflevector <4 x i32> %32, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !118
  %34 = bitcast %struct.expanded_key* %3 to <4 x i32>*, !dbg !119
  store <4 x i32> %33, <4 x i32>* %34, align 16, !dbg !119, !tbaa !97
  %35 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.expanded_key, %struct.expanded_key* @__encrypt_key, i64 0, i32 1, i64 12) to <4 x i32>*), align 16, !dbg !120, !tbaa !97
  %36 = shufflevector <4 x i32> %35, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !120
  %37 = bitcast i32* %31 to <4 x i32>*, !dbg !121
  store <4 x i32> %36, <4 x i32>* %37, align 16, !dbg !121, !tbaa !97
  %38 = getelementptr inbounds %struct.expanded_key, %struct.expanded_key* %3, i64 0, i32 0, i64 4, !dbg !122
  %39 = getelementptr inbounds %struct.expanded_key, %struct.expanded_key* %3, i64 0, i32 1, i64 4, !dbg !112
  %40 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.expanded_key, %struct.expanded_key* @__encrypt_key, i64 0, i32 0, i64 8) to <4 x i32>*), align 16, !dbg !118, !tbaa !97
  %41 = shufflevector <4 x i32> %40, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !118
  %42 = bitcast i32* %38 to <4 x i32>*, !dbg !119
  store <4 x i32> %41, <4 x i32>* %42, align 16, !dbg !119, !tbaa !97
  %43 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.expanded_key, %struct.expanded_key* @__encrypt_key, i64 0, i32 1, i64 8) to <4 x i32>*), align 16, !dbg !120, !tbaa !97
  %44 = shufflevector <4 x i32> %43, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !120
  %45 = bitcast i32* %39 to <4 x i32>*, !dbg !121
  store <4 x i32> %44, <4 x i32>* %45, align 16, !dbg !121, !tbaa !97
  %46 = getelementptr inbounds %struct.expanded_key, %struct.expanded_key* %3, i64 0, i32 0, i64 8, !dbg !122
  %47 = getelementptr inbounds %struct.expanded_key, %struct.expanded_key* %3, i64 0, i32 1, i64 8, !dbg !112
  %48 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.expanded_key, %struct.expanded_key* @__encrypt_key, i64 0, i32 0, i64 4) to <4 x i32>*), align 16, !dbg !118, !tbaa !97
  %49 = shufflevector <4 x i32> %48, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !118
  %50 = bitcast i32* %46 to <4 x i32>*, !dbg !119
  store <4 x i32> %49, <4 x i32>* %50, align 16, !dbg !119, !tbaa !97
  %51 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.expanded_key, %struct.expanded_key* @__encrypt_key, i64 0, i32 1, i64 4) to <4 x i32>*), align 16, !dbg !120, !tbaa !97
  %52 = shufflevector <4 x i32> %51, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !120
  %53 = bitcast i32* %47 to <4 x i32>*, !dbg !121
  store <4 x i32> %52, <4 x i32>* %53, align 16, !dbg !121, !tbaa !97
  %54 = getelementptr inbounds %struct.expanded_key, %struct.expanded_key* %3, i64 0, i32 0, i64 12, !dbg !122
  %55 = getelementptr inbounds %struct.expanded_key, %struct.expanded_key* %3, i64 0, i32 1, i64 12, !dbg !112
  %56 = load <4 x i32>, <4 x i32>* bitcast (%struct.expanded_key* @__encrypt_key to <4 x i32>*), align 16, !dbg !118, !tbaa !97
  %57 = shufflevector <4 x i32> %56, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !118
  %58 = bitcast i32* %54 to <4 x i32>*, !dbg !119
  store <4 x i32> %57, <4 x i32>* %58, align 16, !dbg !119, !tbaa !97
  %59 = load <4 x i32>, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.expanded_key, %struct.expanded_key* @__encrypt_key, i64 0, i32 1, i64 0) to <4 x i32>*), align 16, !dbg !120, !tbaa !97
  %60 = shufflevector <4 x i32> %59, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !120
  %61 = bitcast i32* %55 to <4 x i32>*, !dbg !121
  store <4 x i32> %60, <4 x i32>* %61, align 16, !dbg !121, !tbaa !97
  br label %62, !dbg !123

; <label>:62:                                     ; preds = %30, %411
  %63 = phi %struct.expanded_key* [ @__encrypt_key, %411 ], [ %3, %30 ], !dbg !124
  call void @__do_des(i32 %23, i32 %407, i32* nonnull %7, i32* nonnull %29, i32 1, i32 0, %struct.expanded_key* nonnull %63) #5, !dbg !126
  %64 = getelementptr i8, i8* %0, i64 32, !dbg !127
  %65 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !127
  %66 = bitcast [2 x i32]* %4 to i8*, !dbg !127
  %67 = icmp ugt i8* %65, %0, !dbg !127
  %68 = icmp ugt i8* %64, %66, !dbg !127
  %69 = and i1 %67, %68, !dbg !127
  br i1 %69, label %198, label %70, !dbg !127

; <label>:70:                                     ; preds = %62
  %71 = load i32, i32* %7, align 4, !dbg !131, !tbaa !97, !alias.scope !133
  %72 = insertelement <2 x i32> undef, i32 %71, i32 0
  %73 = shufflevector <2 x i32> %72, <2 x i32> undef, <2 x i32> zeroinitializer
  %74 = lshr <2 x i32> %73, <i32 31, i32 30>
  %75 = trunc <2 x i32> %74 to <2 x i8>, !dbg !131
  %76 = and <2 x i8> %75, <i8 1, i8 1>, !dbg !131
  %77 = bitcast i8* %0 to <2 x i8>*, !dbg !136
  store <2 x i8> %76, <2 x i8>* %77, align 1, !dbg !136, !tbaa !50, !alias.scope !137, !noalias !133
  %78 = getelementptr i8, i8* %0, i64 2
  %79 = load i32, i32* %7, align 4, !dbg !131, !tbaa !97, !alias.scope !133
  %80 = insertelement <2 x i32> undef, i32 %79, i32 0
  %81 = shufflevector <2 x i32> %80, <2 x i32> undef, <2 x i32> zeroinitializer
  %82 = lshr <2 x i32> %81, <i32 29, i32 28>
  %83 = trunc <2 x i32> %82 to <2 x i8>, !dbg !131
  %84 = and <2 x i8> %83, <i8 1, i8 1>, !dbg !131
  %85 = bitcast i8* %78 to <2 x i8>*, !dbg !136
  store <2 x i8> %84, <2 x i8>* %85, align 1, !dbg !136, !tbaa !50, !alias.scope !137, !noalias !133
  %86 = getelementptr i8, i8* %0, i64 4
  %87 = load i32, i32* %7, align 4, !dbg !131, !tbaa !97, !alias.scope !133
  %88 = insertelement <2 x i32> undef, i32 %87, i32 0
  %89 = shufflevector <2 x i32> %88, <2 x i32> undef, <2 x i32> zeroinitializer
  %90 = lshr <2 x i32> %89, <i32 27, i32 26>
  %91 = trunc <2 x i32> %90 to <2 x i8>, !dbg !131
  %92 = and <2 x i8> %91, <i8 1, i8 1>, !dbg !131
  %93 = bitcast i8* %86 to <2 x i8>*, !dbg !136
  store <2 x i8> %92, <2 x i8>* %93, align 1, !dbg !136, !tbaa !50, !alias.scope !137, !noalias !133
  %94 = getelementptr i8, i8* %0, i64 6
  %95 = load i32, i32* %7, align 4, !dbg !131, !tbaa !97, !alias.scope !133
  %96 = insertelement <2 x i32> undef, i32 %95, i32 0
  %97 = shufflevector <2 x i32> %96, <2 x i32> undef, <2 x i32> zeroinitializer
  %98 = lshr <2 x i32> %97, <i32 25, i32 24>
  %99 = trunc <2 x i32> %98 to <2 x i8>, !dbg !131
  %100 = and <2 x i8> %99, <i8 1, i8 1>, !dbg !131
  %101 = bitcast i8* %94 to <2 x i8>*, !dbg !136
  store <2 x i8> %100, <2 x i8>* %101, align 1, !dbg !136, !tbaa !50, !alias.scope !137, !noalias !133
  %102 = getelementptr i8, i8* %0, i64 8
  %103 = load i32, i32* %7, align 4, !dbg !131, !tbaa !97, !alias.scope !133
  %104 = insertelement <2 x i32> undef, i32 %103, i32 0
  %105 = shufflevector <2 x i32> %104, <2 x i32> undef, <2 x i32> zeroinitializer
  %106 = lshr <2 x i32> %105, <i32 23, i32 22>
  %107 = trunc <2 x i32> %106 to <2 x i8>, !dbg !131
  %108 = and <2 x i8> %107, <i8 1, i8 1>, !dbg !131
  %109 = bitcast i8* %102 to <2 x i8>*, !dbg !136
  store <2 x i8> %108, <2 x i8>* %109, align 1, !dbg !136, !tbaa !50, !alias.scope !137, !noalias !133
  %110 = getelementptr i8, i8* %0, i64 10
  %111 = load i32, i32* %7, align 4, !dbg !131, !tbaa !97, !alias.scope !133
  %112 = insertelement <2 x i32> undef, i32 %111, i32 0
  %113 = shufflevector <2 x i32> %112, <2 x i32> undef, <2 x i32> zeroinitializer
  %114 = lshr <2 x i32> %113, <i32 21, i32 20>
  %115 = trunc <2 x i32> %114 to <2 x i8>, !dbg !131
  %116 = and <2 x i8> %115, <i8 1, i8 1>, !dbg !131
  %117 = bitcast i8* %110 to <2 x i8>*, !dbg !136
  store <2 x i8> %116, <2 x i8>* %117, align 1, !dbg !136, !tbaa !50, !alias.scope !137, !noalias !133
  %118 = getelementptr i8, i8* %0, i64 12
  %119 = load i32, i32* %7, align 4, !dbg !131, !tbaa !97, !alias.scope !133
  %120 = insertelement <2 x i32> undef, i32 %119, i32 0
  %121 = shufflevector <2 x i32> %120, <2 x i32> undef, <2 x i32> zeroinitializer
  %122 = lshr <2 x i32> %121, <i32 19, i32 18>
  %123 = trunc <2 x i32> %122 to <2 x i8>, !dbg !131
  %124 = and <2 x i8> %123, <i8 1, i8 1>, !dbg !131
  %125 = bitcast i8* %118 to <2 x i8>*, !dbg !136
  store <2 x i8> %124, <2 x i8>* %125, align 1, !dbg !136, !tbaa !50, !alias.scope !137, !noalias !133
  %126 = getelementptr i8, i8* %0, i64 14
  %127 = load i32, i32* %7, align 4, !dbg !131, !tbaa !97, !alias.scope !133
  %128 = insertelement <2 x i32> undef, i32 %127, i32 0
  %129 = shufflevector <2 x i32> %128, <2 x i32> undef, <2 x i32> zeroinitializer
  %130 = lshr <2 x i32> %129, <i32 17, i32 16>
  %131 = trunc <2 x i32> %130 to <2 x i8>, !dbg !131
  %132 = and <2 x i8> %131, <i8 1, i8 1>, !dbg !131
  %133 = bitcast i8* %126 to <2 x i8>*, !dbg !136
  store <2 x i8> %132, <2 x i8>* %133, align 1, !dbg !136, !tbaa !50, !alias.scope !137, !noalias !133
  %134 = getelementptr i8, i8* %0, i64 16
  %135 = load i32, i32* %7, align 4, !dbg !131, !tbaa !97, !alias.scope !133
  %136 = insertelement <2 x i32> undef, i32 %135, i32 0
  %137 = shufflevector <2 x i32> %136, <2 x i32> undef, <2 x i32> zeroinitializer
  %138 = lshr <2 x i32> %137, <i32 15, i32 14>
  %139 = trunc <2 x i32> %138 to <2 x i8>, !dbg !131
  %140 = and <2 x i8> %139, <i8 1, i8 1>, !dbg !131
  %141 = bitcast i8* %134 to <2 x i8>*, !dbg !136
  store <2 x i8> %140, <2 x i8>* %141, align 1, !dbg !136, !tbaa !50, !alias.scope !137, !noalias !133
  %142 = getelementptr i8, i8* %0, i64 18
  %143 = load i32, i32* %7, align 4, !dbg !131, !tbaa !97, !alias.scope !133
  %144 = insertelement <2 x i32> undef, i32 %143, i32 0
  %145 = shufflevector <2 x i32> %144, <2 x i32> undef, <2 x i32> zeroinitializer
  %146 = lshr <2 x i32> %145, <i32 13, i32 12>
  %147 = trunc <2 x i32> %146 to <2 x i8>, !dbg !131
  %148 = and <2 x i8> %147, <i8 1, i8 1>, !dbg !131
  %149 = bitcast i8* %142 to <2 x i8>*, !dbg !136
  store <2 x i8> %148, <2 x i8>* %149, align 1, !dbg !136, !tbaa !50, !alias.scope !137, !noalias !133
  %150 = getelementptr i8, i8* %0, i64 20
  %151 = load i32, i32* %7, align 4, !dbg !131, !tbaa !97, !alias.scope !133
  %152 = insertelement <2 x i32> undef, i32 %151, i32 0
  %153 = shufflevector <2 x i32> %152, <2 x i32> undef, <2 x i32> zeroinitializer
  %154 = lshr <2 x i32> %153, <i32 11, i32 10>
  %155 = trunc <2 x i32> %154 to <2 x i8>, !dbg !131
  %156 = and <2 x i8> %155, <i8 1, i8 1>, !dbg !131
  %157 = bitcast i8* %150 to <2 x i8>*, !dbg !136
  store <2 x i8> %156, <2 x i8>* %157, align 1, !dbg !136, !tbaa !50, !alias.scope !137, !noalias !133
  %158 = getelementptr i8, i8* %0, i64 22
  %159 = load i32, i32* %7, align 4, !dbg !131, !tbaa !97, !alias.scope !133
  %160 = insertelement <2 x i32> undef, i32 %159, i32 0
  %161 = shufflevector <2 x i32> %160, <2 x i32> undef, <2 x i32> zeroinitializer
  %162 = lshr <2 x i32> %161, <i32 9, i32 8>
  %163 = trunc <2 x i32> %162 to <2 x i8>, !dbg !131
  %164 = and <2 x i8> %163, <i8 1, i8 1>, !dbg !131
  %165 = bitcast i8* %158 to <2 x i8>*, !dbg !136
  store <2 x i8> %164, <2 x i8>* %165, align 1, !dbg !136, !tbaa !50, !alias.scope !137, !noalias !133
  %166 = getelementptr i8, i8* %0, i64 24
  %167 = load i32, i32* %7, align 4, !dbg !131, !tbaa !97, !alias.scope !133
  %168 = insertelement <2 x i32> undef, i32 %167, i32 0
  %169 = shufflevector <2 x i32> %168, <2 x i32> undef, <2 x i32> zeroinitializer
  %170 = lshr <2 x i32> %169, <i32 7, i32 6>
  %171 = trunc <2 x i32> %170 to <2 x i8>, !dbg !131
  %172 = and <2 x i8> %171, <i8 1, i8 1>, !dbg !131
  %173 = bitcast i8* %166 to <2 x i8>*, !dbg !136
  store <2 x i8> %172, <2 x i8>* %173, align 1, !dbg !136, !tbaa !50, !alias.scope !137, !noalias !133
  %174 = getelementptr i8, i8* %0, i64 26
  %175 = load i32, i32* %7, align 4, !dbg !131, !tbaa !97, !alias.scope !133
  %176 = insertelement <2 x i32> undef, i32 %175, i32 0
  %177 = shufflevector <2 x i32> %176, <2 x i32> undef, <2 x i32> zeroinitializer
  %178 = lshr <2 x i32> %177, <i32 5, i32 4>
  %179 = trunc <2 x i32> %178 to <2 x i8>, !dbg !131
  %180 = and <2 x i8> %179, <i8 1, i8 1>, !dbg !131
  %181 = bitcast i8* %174 to <2 x i8>*, !dbg !136
  store <2 x i8> %180, <2 x i8>* %181, align 1, !dbg !136, !tbaa !50, !alias.scope !137, !noalias !133
  %182 = getelementptr i8, i8* %0, i64 28
  %183 = load i32, i32* %7, align 4, !dbg !131, !tbaa !97, !alias.scope !133
  %184 = insertelement <2 x i32> undef, i32 %183, i32 0
  %185 = shufflevector <2 x i32> %184, <2 x i32> undef, <2 x i32> zeroinitializer
  %186 = lshr <2 x i32> %185, <i32 3, i32 2>
  %187 = trunc <2 x i32> %186 to <2 x i8>, !dbg !131
  %188 = and <2 x i8> %187, <i8 1, i8 1>, !dbg !131
  %189 = bitcast i8* %182 to <2 x i8>*, !dbg !136
  store <2 x i8> %188, <2 x i8>* %189, align 1, !dbg !136, !tbaa !50, !alias.scope !137, !noalias !133
  %190 = getelementptr i8, i8* %0, i64 30
  %191 = load i32, i32* %7, align 4, !dbg !131, !tbaa !97, !alias.scope !133
  %192 = insertelement <2 x i32> undef, i32 %191, i32 0
  %193 = shufflevector <2 x i32> %192, <2 x i32> undef, <2 x i32> zeroinitializer
  %194 = lshr <2 x i32> %193, <i32 1, i32 0>
  %195 = trunc <2 x i32> %194 to <2 x i8>, !dbg !131
  %196 = and <2 x i8> %195, <i8 1, i8 1>, !dbg !131
  %197 = bitcast i8* %190 to <2 x i8>*, !dbg !136
  store <2 x i8> %196, <2 x i8>* %197, align 1, !dbg !136, !tbaa !50, !alias.scope !137, !noalias !133
  br label %226, !dbg !131

; <label>:198:                                    ; preds = %62, %198
  %199 = phi i8* [ %223, %198 ], [ %0, %62 ]
  %200 = phi i32 [ %224, %198 ], [ 31, %62 ]
  %201 = load i32, i32* %7, align 4, !dbg !131, !tbaa !97
  %202 = lshr i32 %201, %200, !dbg !139
  %203 = trunc i32 %202 to i8, !dbg !131
  %204 = and i8 %203, 1, !dbg !131
  %205 = getelementptr inbounds i8, i8* %199, i64 1, !dbg !140
  store i8 %204, i8* %199, align 1, !dbg !136, !tbaa !50
  %206 = add nsw i32 %200, -1, !dbg !141
  %207 = load i32, i32* %7, align 4, !dbg !131, !tbaa !97
  %208 = lshr i32 %207, %206, !dbg !139
  %209 = trunc i32 %208 to i8, !dbg !131
  %210 = and i8 %209, 1, !dbg !131
  %211 = getelementptr inbounds i8, i8* %199, i64 2, !dbg !140
  store i8 %210, i8* %205, align 1, !dbg !136, !tbaa !50
  %212 = add nsw i32 %200, -2, !dbg !141
  %213 = load i32, i32* %7, align 4, !dbg !131, !tbaa !97
  %214 = lshr i32 %213, %212, !dbg !139
  %215 = trunc i32 %214 to i8, !dbg !131
  %216 = and i8 %215, 1, !dbg !131
  %217 = getelementptr inbounds i8, i8* %199, i64 3, !dbg !140
  store i8 %216, i8* %211, align 1, !dbg !136, !tbaa !50
  %218 = add nsw i32 %200, -3, !dbg !141
  %219 = load i32, i32* %7, align 4, !dbg !131, !tbaa !97
  %220 = lshr i32 %219, %218, !dbg !139
  %221 = trunc i32 %220 to i8, !dbg !131
  %222 = and i8 %221, 1, !dbg !131
  %223 = getelementptr inbounds i8, i8* %199, i64 4, !dbg !140
  store i8 %222, i8* %217, align 1, !dbg !136, !tbaa !50
  %224 = add nsw i32 %200, -4, !dbg !141
  %225 = icmp eq i32 %218, 0, !dbg !142
  br i1 %225, label %226, label %198, !dbg !127, !llvm.loop !143

; <label>:226:                                    ; preds = %198, %70
  %227 = getelementptr i8, i8* %0, i64 64, !dbg !131
  %228 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1, !dbg !131
  %229 = bitcast i32* %228 to i8*
  %230 = getelementptr inbounds i8, i8* %229, i64 1, !dbg !131
  %231 = bitcast i32* %29 to i8*, !dbg !131
  %232 = icmp ult i8* %28, %230, !dbg !131
  %233 = icmp ugt i8* %227, %231, !dbg !131
  %234 = and i1 %232, %233, !dbg !131
  br i1 %234, label %363, label %235, !dbg !131

; <label>:235:                                    ; preds = %226
  %236 = load i32, i32* %29, align 4, !dbg !131, !tbaa !97, !alias.scope !146
  %237 = insertelement <2 x i32> undef, i32 %236, i32 0
  %238 = shufflevector <2 x i32> %237, <2 x i32> undef, <2 x i32> zeroinitializer
  %239 = lshr <2 x i32> %238, <i32 31, i32 30>
  %240 = trunc <2 x i32> %239 to <2 x i8>, !dbg !131
  %241 = and <2 x i8> %240, <i8 1, i8 1>, !dbg !131
  %242 = bitcast i8* %28 to <2 x i8>*, !dbg !136
  store <2 x i8> %241, <2 x i8>* %242, align 1, !dbg !136, !tbaa !50, !alias.scope !149, !noalias !146
  %243 = getelementptr i8, i8* %0, i64 34
  %244 = load i32, i32* %29, align 4, !dbg !131, !tbaa !97, !alias.scope !146
  %245 = insertelement <2 x i32> undef, i32 %244, i32 0
  %246 = shufflevector <2 x i32> %245, <2 x i32> undef, <2 x i32> zeroinitializer
  %247 = lshr <2 x i32> %246, <i32 29, i32 28>
  %248 = trunc <2 x i32> %247 to <2 x i8>, !dbg !131
  %249 = and <2 x i8> %248, <i8 1, i8 1>, !dbg !131
  %250 = bitcast i8* %243 to <2 x i8>*, !dbg !136
  store <2 x i8> %249, <2 x i8>* %250, align 1, !dbg !136, !tbaa !50, !alias.scope !149, !noalias !146
  %251 = getelementptr i8, i8* %0, i64 36
  %252 = load i32, i32* %29, align 4, !dbg !131, !tbaa !97, !alias.scope !146
  %253 = insertelement <2 x i32> undef, i32 %252, i32 0
  %254 = shufflevector <2 x i32> %253, <2 x i32> undef, <2 x i32> zeroinitializer
  %255 = lshr <2 x i32> %254, <i32 27, i32 26>
  %256 = trunc <2 x i32> %255 to <2 x i8>, !dbg !131
  %257 = and <2 x i8> %256, <i8 1, i8 1>, !dbg !131
  %258 = bitcast i8* %251 to <2 x i8>*, !dbg !136
  store <2 x i8> %257, <2 x i8>* %258, align 1, !dbg !136, !tbaa !50, !alias.scope !149, !noalias !146
  %259 = getelementptr i8, i8* %0, i64 38
  %260 = load i32, i32* %29, align 4, !dbg !131, !tbaa !97, !alias.scope !146
  %261 = insertelement <2 x i32> undef, i32 %260, i32 0
  %262 = shufflevector <2 x i32> %261, <2 x i32> undef, <2 x i32> zeroinitializer
  %263 = lshr <2 x i32> %262, <i32 25, i32 24>
  %264 = trunc <2 x i32> %263 to <2 x i8>, !dbg !131
  %265 = and <2 x i8> %264, <i8 1, i8 1>, !dbg !131
  %266 = bitcast i8* %259 to <2 x i8>*, !dbg !136
  store <2 x i8> %265, <2 x i8>* %266, align 1, !dbg !136, !tbaa !50, !alias.scope !149, !noalias !146
  %267 = getelementptr i8, i8* %0, i64 40
  %268 = load i32, i32* %29, align 4, !dbg !131, !tbaa !97, !alias.scope !146
  %269 = insertelement <2 x i32> undef, i32 %268, i32 0
  %270 = shufflevector <2 x i32> %269, <2 x i32> undef, <2 x i32> zeroinitializer
  %271 = lshr <2 x i32> %270, <i32 23, i32 22>
  %272 = trunc <2 x i32> %271 to <2 x i8>, !dbg !131
  %273 = and <2 x i8> %272, <i8 1, i8 1>, !dbg !131
  %274 = bitcast i8* %267 to <2 x i8>*, !dbg !136
  store <2 x i8> %273, <2 x i8>* %274, align 1, !dbg !136, !tbaa !50, !alias.scope !149, !noalias !146
  %275 = getelementptr i8, i8* %0, i64 42
  %276 = load i32, i32* %29, align 4, !dbg !131, !tbaa !97, !alias.scope !146
  %277 = insertelement <2 x i32> undef, i32 %276, i32 0
  %278 = shufflevector <2 x i32> %277, <2 x i32> undef, <2 x i32> zeroinitializer
  %279 = lshr <2 x i32> %278, <i32 21, i32 20>
  %280 = trunc <2 x i32> %279 to <2 x i8>, !dbg !131
  %281 = and <2 x i8> %280, <i8 1, i8 1>, !dbg !131
  %282 = bitcast i8* %275 to <2 x i8>*, !dbg !136
  store <2 x i8> %281, <2 x i8>* %282, align 1, !dbg !136, !tbaa !50, !alias.scope !149, !noalias !146
  %283 = getelementptr i8, i8* %0, i64 44
  %284 = load i32, i32* %29, align 4, !dbg !131, !tbaa !97, !alias.scope !146
  %285 = insertelement <2 x i32> undef, i32 %284, i32 0
  %286 = shufflevector <2 x i32> %285, <2 x i32> undef, <2 x i32> zeroinitializer
  %287 = lshr <2 x i32> %286, <i32 19, i32 18>
  %288 = trunc <2 x i32> %287 to <2 x i8>, !dbg !131
  %289 = and <2 x i8> %288, <i8 1, i8 1>, !dbg !131
  %290 = bitcast i8* %283 to <2 x i8>*, !dbg !136
  store <2 x i8> %289, <2 x i8>* %290, align 1, !dbg !136, !tbaa !50, !alias.scope !149, !noalias !146
  %291 = getelementptr i8, i8* %0, i64 46
  %292 = load i32, i32* %29, align 4, !dbg !131, !tbaa !97, !alias.scope !146
  %293 = insertelement <2 x i32> undef, i32 %292, i32 0
  %294 = shufflevector <2 x i32> %293, <2 x i32> undef, <2 x i32> zeroinitializer
  %295 = lshr <2 x i32> %294, <i32 17, i32 16>
  %296 = trunc <2 x i32> %295 to <2 x i8>, !dbg !131
  %297 = and <2 x i8> %296, <i8 1, i8 1>, !dbg !131
  %298 = bitcast i8* %291 to <2 x i8>*, !dbg !136
  store <2 x i8> %297, <2 x i8>* %298, align 1, !dbg !136, !tbaa !50, !alias.scope !149, !noalias !146
  %299 = getelementptr i8, i8* %0, i64 48
  %300 = load i32, i32* %29, align 4, !dbg !131, !tbaa !97, !alias.scope !146
  %301 = insertelement <2 x i32> undef, i32 %300, i32 0
  %302 = shufflevector <2 x i32> %301, <2 x i32> undef, <2 x i32> zeroinitializer
  %303 = lshr <2 x i32> %302, <i32 15, i32 14>
  %304 = trunc <2 x i32> %303 to <2 x i8>, !dbg !131
  %305 = and <2 x i8> %304, <i8 1, i8 1>, !dbg !131
  %306 = bitcast i8* %299 to <2 x i8>*, !dbg !136
  store <2 x i8> %305, <2 x i8>* %306, align 1, !dbg !136, !tbaa !50, !alias.scope !149, !noalias !146
  %307 = getelementptr i8, i8* %0, i64 50
  %308 = load i32, i32* %29, align 4, !dbg !131, !tbaa !97, !alias.scope !146
  %309 = insertelement <2 x i32> undef, i32 %308, i32 0
  %310 = shufflevector <2 x i32> %309, <2 x i32> undef, <2 x i32> zeroinitializer
  %311 = lshr <2 x i32> %310, <i32 13, i32 12>
  %312 = trunc <2 x i32> %311 to <2 x i8>, !dbg !131
  %313 = and <2 x i8> %312, <i8 1, i8 1>, !dbg !131
  %314 = bitcast i8* %307 to <2 x i8>*, !dbg !136
  store <2 x i8> %313, <2 x i8>* %314, align 1, !dbg !136, !tbaa !50, !alias.scope !149, !noalias !146
  %315 = getelementptr i8, i8* %0, i64 52
  %316 = load i32, i32* %29, align 4, !dbg !131, !tbaa !97, !alias.scope !146
  %317 = insertelement <2 x i32> undef, i32 %316, i32 0
  %318 = shufflevector <2 x i32> %317, <2 x i32> undef, <2 x i32> zeroinitializer
  %319 = lshr <2 x i32> %318, <i32 11, i32 10>
  %320 = trunc <2 x i32> %319 to <2 x i8>, !dbg !131
  %321 = and <2 x i8> %320, <i8 1, i8 1>, !dbg !131
  %322 = bitcast i8* %315 to <2 x i8>*, !dbg !136
  store <2 x i8> %321, <2 x i8>* %322, align 1, !dbg !136, !tbaa !50, !alias.scope !149, !noalias !146
  %323 = getelementptr i8, i8* %0, i64 54
  %324 = load i32, i32* %29, align 4, !dbg !131, !tbaa !97, !alias.scope !146
  %325 = insertelement <2 x i32> undef, i32 %324, i32 0
  %326 = shufflevector <2 x i32> %325, <2 x i32> undef, <2 x i32> zeroinitializer
  %327 = lshr <2 x i32> %326, <i32 9, i32 8>
  %328 = trunc <2 x i32> %327 to <2 x i8>, !dbg !131
  %329 = and <2 x i8> %328, <i8 1, i8 1>, !dbg !131
  %330 = bitcast i8* %323 to <2 x i8>*, !dbg !136
  store <2 x i8> %329, <2 x i8>* %330, align 1, !dbg !136, !tbaa !50, !alias.scope !149, !noalias !146
  %331 = getelementptr i8, i8* %0, i64 56
  %332 = load i32, i32* %29, align 4, !dbg !131, !tbaa !97, !alias.scope !146
  %333 = insertelement <2 x i32> undef, i32 %332, i32 0
  %334 = shufflevector <2 x i32> %333, <2 x i32> undef, <2 x i32> zeroinitializer
  %335 = lshr <2 x i32> %334, <i32 7, i32 6>
  %336 = trunc <2 x i32> %335 to <2 x i8>, !dbg !131
  %337 = and <2 x i8> %336, <i8 1, i8 1>, !dbg !131
  %338 = bitcast i8* %331 to <2 x i8>*, !dbg !136
  store <2 x i8> %337, <2 x i8>* %338, align 1, !dbg !136, !tbaa !50, !alias.scope !149, !noalias !146
  %339 = getelementptr i8, i8* %0, i64 58
  %340 = load i32, i32* %29, align 4, !dbg !131, !tbaa !97, !alias.scope !146
  %341 = insertelement <2 x i32> undef, i32 %340, i32 0
  %342 = shufflevector <2 x i32> %341, <2 x i32> undef, <2 x i32> zeroinitializer
  %343 = lshr <2 x i32> %342, <i32 5, i32 4>
  %344 = trunc <2 x i32> %343 to <2 x i8>, !dbg !131
  %345 = and <2 x i8> %344, <i8 1, i8 1>, !dbg !131
  %346 = bitcast i8* %339 to <2 x i8>*, !dbg !136
  store <2 x i8> %345, <2 x i8>* %346, align 1, !dbg !136, !tbaa !50, !alias.scope !149, !noalias !146
  %347 = getelementptr i8, i8* %0, i64 60
  %348 = load i32, i32* %29, align 4, !dbg !131, !tbaa !97, !alias.scope !146
  %349 = insertelement <2 x i32> undef, i32 %348, i32 0
  %350 = shufflevector <2 x i32> %349, <2 x i32> undef, <2 x i32> zeroinitializer
  %351 = lshr <2 x i32> %350, <i32 3, i32 2>
  %352 = trunc <2 x i32> %351 to <2 x i8>, !dbg !131
  %353 = and <2 x i8> %352, <i8 1, i8 1>, !dbg !131
  %354 = bitcast i8* %347 to <2 x i8>*, !dbg !136
  store <2 x i8> %353, <2 x i8>* %354, align 1, !dbg !136, !tbaa !50, !alias.scope !149, !noalias !146
  %355 = getelementptr i8, i8* %0, i64 62
  %356 = load i32, i32* %29, align 4, !dbg !131, !tbaa !97, !alias.scope !146
  %357 = insertelement <2 x i32> undef, i32 %356, i32 0
  %358 = shufflevector <2 x i32> %357, <2 x i32> undef, <2 x i32> zeroinitializer
  %359 = lshr <2 x i32> %358, <i32 1, i32 0>
  %360 = trunc <2 x i32> %359 to <2 x i8>, !dbg !131
  %361 = and <2 x i8> %360, <i8 1, i8 1>, !dbg !131
  %362 = bitcast i8* %355 to <2 x i8>*, !dbg !136
  store <2 x i8> %361, <2 x i8>* %362, align 1, !dbg !136, !tbaa !50, !alias.scope !149, !noalias !146
  br label %391, !dbg !151

; <label>:363:                                    ; preds = %226, %363
  %364 = phi i8* [ %388, %363 ], [ %28, %226 ]
  %365 = phi i32 [ %389, %363 ], [ 31, %226 ]
  %366 = load i32, i32* %29, align 4, !dbg !131, !tbaa !97
  %367 = lshr i32 %366, %365, !dbg !139
  %368 = trunc i32 %367 to i8, !dbg !131
  %369 = and i8 %368, 1, !dbg !131
  %370 = getelementptr inbounds i8, i8* %364, i64 1, !dbg !140
  store i8 %369, i8* %364, align 1, !dbg !136, !tbaa !50
  %371 = add nsw i32 %365, -1, !dbg !141
  %372 = load i32, i32* %29, align 4, !dbg !131, !tbaa !97
  %373 = lshr i32 %372, %371, !dbg !139
  %374 = trunc i32 %373 to i8, !dbg !131
  %375 = and i8 %374, 1, !dbg !131
  %376 = getelementptr inbounds i8, i8* %364, i64 2, !dbg !140
  store i8 %375, i8* %370, align 1, !dbg !136, !tbaa !50
  %377 = add nsw i32 %365, -2, !dbg !141
  %378 = load i32, i32* %29, align 4, !dbg !131, !tbaa !97
  %379 = lshr i32 %378, %377, !dbg !139
  %380 = trunc i32 %379 to i8, !dbg !131
  %381 = and i8 %380, 1, !dbg !131
  %382 = getelementptr inbounds i8, i8* %364, i64 3, !dbg !140
  store i8 %381, i8* %376, align 1, !dbg !136, !tbaa !50
  %383 = add nsw i32 %365, -3, !dbg !141
  %384 = load i32, i32* %29, align 4, !dbg !131, !tbaa !97
  %385 = lshr i32 %384, %383, !dbg !139
  %386 = trunc i32 %385 to i8, !dbg !131
  %387 = and i8 %386, 1, !dbg !131
  %388 = getelementptr inbounds i8, i8* %364, i64 4, !dbg !140
  store i8 %387, i8* %382, align 1, !dbg !136, !tbaa !50
  %389 = add nsw i32 %365, -4, !dbg !141
  %390 = icmp eq i32 %383, 0, !dbg !142
  br i1 %390, label %391, label %363, !dbg !127, !llvm.loop !152

; <label>:391:                                    ; preds = %363, %235
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #4, !dbg !151
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #4, !dbg !151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  ret void, !dbg !151

; <label>:392:                                    ; preds = %392, %27
  %393 = phi i32 [ 0, %27 ], [ %407, %392 ], !dbg !102
  %394 = phi i8* [ %28, %27 ], [ %409, %392 ]
  %395 = phi i32 [ 31, %27 ], [ %408, %392 ]
  %396 = load i8, i8* %394, align 1, !dbg !104, !tbaa !50
  %397 = and i8 %396, 1, !dbg !105
  %398 = zext i8 %397 to i32, !dbg !105
  %399 = shl i32 %398, %395, !dbg !106
  %400 = or i32 %399, %393, !dbg !102
  store i32 %400, i32* %29, align 4, !dbg !102, !tbaa !97
  %401 = add nsw i32 %395, -1, !dbg !107
  %402 = getelementptr inbounds i8, i8* %394, i64 1, !dbg !108
  %403 = load i8, i8* %402, align 1, !dbg !104, !tbaa !50
  %404 = and i8 %403, 1, !dbg !105
  %405 = zext i8 %404 to i32, !dbg !105
  %406 = shl i32 %405, %401, !dbg !106
  %407 = or i32 %406, %400, !dbg !102
  store i32 %407, i32* %29, align 4, !dbg !102, !tbaa !97
  %408 = add nsw i32 %395, -2, !dbg !107
  %409 = getelementptr inbounds i8, i8* %394, i64 2, !dbg !108
  %410 = icmp eq i32 %401, 0, !dbg !109
  br i1 %410, label %411, label %392, !dbg !100, !llvm.loop !110

; <label>:411:                                    ; preds = %392
  %412 = icmp eq i32 %1, 0, !dbg !153
  br i1 %412, label %62, label %30, !dbg !154
}

; Function Attrs: noredzone
declare dso_local void @__do_des(i32, i32, i32*, i32*, i32, i32, %struct.expanded_key*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__encrypt_key", scope: !2, file: !3, line: 7, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11)
!3 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/src/crypt/encrypt.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 48, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !9, line: 79, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!0}
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "expanded_key", file: !13, line: 6, size: 1024, elements: !14)
!13 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/src/crypt/crypt_des.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !{!15, !19}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !12, file: !13, line: 7, baseType: !16, size: 512)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 16)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !12, file: !13, line: 7, baseType: !16, size: 512, offset: 512)
!20 = !{i32 2, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!24 = distinct !DISubprogram(name: "setkey", scope: !3, file: !3, line: 9, type: !25, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !30)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !27}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !{!31, !32, !37, !39}
!31 = !DILocalVariable(name: "key", arg: 1, scope: !24, file: !3, line: 9, type: !27)
!32 = !DILocalVariable(name: "bkey", scope: !24, file: !3, line: 11, type: !33)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 64, elements: !35)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !{!36}
!36 = !DISubrange(count: 8)
!37 = !DILocalVariable(name: "i", scope: !24, file: !3, line: 12, type: !38)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DILocalVariable(name: "j", scope: !24, file: !3, line: 12, type: !38)
!40 = !DILocation(line: 9, column: 25, scope: !24)
!41 = !DILocation(line: 11, column: 2, scope: !24)
!42 = !DILocation(line: 11, column: 16, scope: !24)
!43 = !DILocation(line: 12, column: 6, scope: !24)
!44 = !DILocation(line: 14, column: 2, scope: !45)
!45 = distinct !DILexicalBlock(scope: !24, file: !3, line: 14, column: 2)
!46 = !DILocation(line: 15, column: 3, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !3, line: 14, column: 26)
!48 = distinct !DILexicalBlock(scope: !45, file: !3, line: 14, column: 2)
!49 = !DILocation(line: 15, column: 11, scope: !47)
!50 = !{!51, !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !DILocation(line: 12, column: 9, scope: !24)
!54 = !DILocation(line: 17, column: 26, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !3, line: 16, column: 3)
!56 = distinct !DILexicalBlock(scope: !47, file: !3, line: 16, column: 3)
!57 = !DILocation(line: 17, column: 36, scope: !55)
!58 = !DILocation(line: 17, column: 12, scope: !55)
!59 = !DILocation(line: 16, column: 31, scope: !55)
!60 = !DILocation(line: 17, column: 31, scope: !55)
!61 = !DILocation(line: 16, column: 3, scope: !56)
!62 = !DILocation(line: 14, column: 22, scope: !48)
!63 = !DILocation(line: 14, column: 16, scope: !48)
!64 = distinct !{!64, !44, !65}
!65 = !DILocation(line: 18, column: 2, scope: !45)
!66 = !DILocation(line: 20, column: 2, scope: !24)
!67 = !DILocation(line: 21, column: 1, scope: !24)
!68 = distinct !DISubprogram(name: "encrypt", scope: !3, file: !3, line: 23, type: !69, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !72)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !38}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!72 = !{!73, !74, !75, !76, !78, !82, !83, !84}
!73 = !DILocalVariable(name: "block", arg: 1, scope: !68, file: !3, line: 23, type: !71)
!74 = !DILocalVariable(name: "edflag", arg: 2, scope: !68, file: !3, line: 23, type: !38)
!75 = !DILocalVariable(name: "decrypt_key", scope: !68, file: !3, line: 25, type: !12)
!76 = !DILocalVariable(name: "key", scope: !68, file: !3, line: 25, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!78 = !DILocalVariable(name: "b", scope: !68, file: !3, line: 26, type: !79)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 2)
!82 = !DILocalVariable(name: "i", scope: !68, file: !3, line: 27, type: !38)
!83 = !DILocalVariable(name: "j", scope: !68, file: !3, line: 27, type: !38)
!84 = !DILocalVariable(name: "p", scope: !68, file: !3, line: 28, type: !71)
!85 = !DILocation(line: 23, column: 20, scope: !68)
!86 = !DILocation(line: 23, column: 31, scope: !68)
!87 = !DILocation(line: 25, column: 2, scope: !68)
!88 = !DILocation(line: 26, column: 2, scope: !68)
!89 = !DILocation(line: 26, column: 11, scope: !68)
!90 = !DILocation(line: 28, column: 8, scope: !68)
!91 = !DILocation(line: 27, column: 6, scope: !68)
!92 = !DILocation(line: 32, column: 3, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !3, line: 31, column: 26)
!94 = distinct !DILexicalBlock(scope: !95, file: !3, line: 31, column: 2)
!95 = distinct !DILexicalBlock(scope: !68, file: !3, line: 31, column: 2)
!96 = !DILocation(line: 32, column: 8, scope: !93)
!97 = !{!98, !98, i64 0}
!98 = !{!"int", !51, i64 0}
!99 = !DILocation(line: 27, column: 9, scope: !68)
!100 = !DILocation(line: 33, column: 3, scope: !101)
!101 = distinct !DILexicalBlock(scope: !93, file: !3, line: 33, column: 3)
!102 = !DILocation(line: 34, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !101, file: !3, line: 33, column: 3)
!104 = !DILocation(line: 34, column: 23, scope: !103)
!105 = !DILocation(line: 34, column: 26, scope: !103)
!106 = !DILocation(line: 34, column: 31, scope: !103)
!107 = !DILocation(line: 33, column: 25, scope: !103)
!108 = !DILocation(line: 33, column: 30, scope: !103)
!109 = !DILocation(line: 33, column: 18, scope: !103)
!110 = distinct !{!110, !100, !111}
!111 = !DILocation(line: 34, column: 34, scope: !101)
!112 = !DILocation(line: 42, column: 4, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !3, line: 40, column: 28)
!114 = distinct !DILexicalBlock(scope: !115, file: !3, line: 40, column: 3)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 40, column: 3)
!116 = distinct !DILexicalBlock(scope: !117, file: !3, line: 38, column: 14)
!117 = distinct !DILexicalBlock(scope: !68, file: !3, line: 38, column: 6)
!118 = !DILocation(line: 41, column: 23, scope: !113)
!119 = !DILocation(line: 41, column: 21, scope: !113)
!120 = !DILocation(line: 42, column: 23, scope: !113)
!121 = !DILocation(line: 42, column: 21, scope: !113)
!122 = !DILocation(line: 41, column: 4, scope: !113)
!123 = !DILocation(line: 46, column: 11, scope: !68)
!124 = !DILocation(line: 0, scope: !68)
!125 = !DILocation(line: 25, column: 36, scope: !68)
!126 = !DILocation(line: 46, column: 2, scope: !68)
!127 = !DILocation(line: 50, column: 3, scope: !128)
!128 = distinct !DILexicalBlock(scope: !129, file: !3, line: 50, column: 3)
!129 = distinct !DILexicalBlock(scope: !130, file: !3, line: 49, column: 2)
!130 = distinct !DILexicalBlock(scope: !68, file: !3, line: 49, column: 2)
!131 = !DILocation(line: 51, column: 11, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !3, line: 50, column: 3)
!133 = !{!134}
!134 = distinct !{!134, !135}
!135 = distinct !{!135, !"LVerDomain"}
!136 = !DILocation(line: 51, column: 9, scope: !132)
!137 = !{!138}
!138 = distinct !{!138, !135}
!139 = !DILocation(line: 51, column: 15, scope: !132)
!140 = !DILocation(line: 51, column: 6, scope: !132)
!141 = !DILocation(line: 50, column: 25, scope: !132)
!142 = !DILocation(line: 50, column: 18, scope: !132)
!143 = distinct !{!143, !127, !144, !145}
!144 = !DILocation(line: 51, column: 21, scope: !128)
!145 = !{!"llvm.loop.isvectorized", i32 1}
!146 = !{!147}
!147 = distinct !{!147, !148}
!148 = distinct !{!148, !"LVerDomain"}
!149 = !{!150}
!150 = distinct !{!150, !148}
!151 = !DILocation(line: 52, column: 1, scope: !68)
!152 = distinct !{!152, !127, !144, !145}
!153 = !DILocation(line: 38, column: 6, scope: !117)
!154 = !DILocation(line: 38, column: 6, scope: !68)
