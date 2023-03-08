; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geohash_helper.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geohash_helper.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GeoHashRadius = type { %struct.GeoHashBits, %struct.GeoHashArea, %struct.GeoHashNeighbors }
%struct.GeoHashBits = type { i64, i8 }
%struct.GeoHashArea = type { %struct.GeoHashBits, %struct.GeoHashRange, %struct.GeoHashRange }
%struct.GeoHashRange = type { double, double }
%struct.GeoHashNeighbors = type { %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits }

@DEG_TO_RAD = dso_local local_unnamed_addr constant double 0x3F91DF46A2529D39, align 8, !dbg !0
@EARTH_RADIUS_IN_METERS = dso_local local_unnamed_addr constant double 0x41584F6F63E51090, align 8, !dbg !6
@MERCATOR_MAX = dso_local local_unnamed_addr constant double 0x41731C05E5EB851F, align 8, !dbg !10
@MERCATOR_MIN = dso_local local_unnamed_addr constant double 0xC1731C05E5EB851F, align 8, !dbg !12
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @geohashEstimateStepsByRadius(double, double) local_unnamed_addr #0 !dbg !18 {
  %3 = fcmp oeq double %0, 0.000000e+00, !dbg !33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !36
  br i1 %3, label %36, label %4, !dbg !35

; <label>:4:                                      ; preds = %2
  %5 = fcmp olt double %0, 0x41731C05E5EB851F, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  br i1 %5, label %6, label %12, !dbg !39

; <label>:6:                                      ; preds = %4, %6
  %7 = phi i32 [ %10, %6 ], [ 1, %4 ]
  %8 = phi double [ %9, %6 ], [ %0, %4 ]
  %9 = fmul double %8, 2.000000e+00, !dbg !40
  %10 = add nuw nsw i32 %7, 1, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  %11 = fcmp olt double %9, 0x41731C05E5EB851F, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  br i1 %11, label %6, label %12, !dbg !39, !llvm.loop !43

; <label>:12:                                     ; preds = %6, %4
  %13 = phi i32 [ 1, %4 ], [ %10, %6 ], !dbg !45
  %14 = add nsw i32 %13, -2, !dbg !46
  %15 = fcmp ogt double %1, 6.600000e+01, !dbg !47
  %16 = fcmp olt double %1, -6.600000e+01, !dbg !49
  %17 = or i1 %15, %16, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !50
  br i1 %17, label %18, label %25, !dbg !50

; <label>:18:                                     ; preds = %12
  %19 = add nsw i32 %13, -3, !dbg !51
  %20 = fcmp ogt double %1, 8.000000e+01, !dbg !53
  %21 = fcmp olt double %1, -8.000000e+01, !dbg !55
  %22 = or i1 %20, %21, !dbg !56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  br i1 %22, label %23, label %25, !dbg !56

; <label>:23:                                     ; preds = %18
  %24 = add nsw i32 %13, -4, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  br label %25, !dbg !58

; <label>:25:                                     ; preds = %23, %18, %12
  %26 = phi i32 [ %24, %23 ], [ %19, %18 ], [ %14, %12 ], !dbg !36
  %27 = icmp slt i32 %26, 1, !dbg !59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br i1 %27, label %28, label %29, !dbg !61

; <label>:28:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !62
  br label %31, !dbg !63

; <label>:29:                                     ; preds = %25
  %30 = icmp sgt i32 %26, 26, !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  br i1 %30, label %31, label %33, !dbg !63

; <label>:31:                                     ; preds = %29, %28
  %32 = phi i32 [ 1, %28 ], [ 26, %29 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  br label %33, !dbg !67

; <label>:33:                                     ; preds = %31, %29
  %34 = phi i32 [ %26, %29 ], [ %32, %31 ], !dbg !68
  %35 = trunc i32 %34 to i8, !dbg !67
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %36

; <label>:36:                                     ; preds = %2, %33
  %37 = phi i8 [ %35, %33 ], [ 26, %2 ], !dbg !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  ret i8 %37, !dbg !69
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @geohashBoundingBox(double, double, double, double*) local_unnamed_addr #0 !dbg !70 {
  %5 = icmp eq double* %3, null, !dbg !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  br i1 %5, label %23, label %6, !dbg !85

; <label>:6:                                      ; preds = %4
  %7 = fdiv double %2, 0x41584F6F63E51090, !dbg !86
  %8 = fmul double %1, 0x3F91DF46A2529D39, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  %9 = tail call double @cos(double %8) #4, !dbg !96
  %10 = fdiv double %7, %9, !dbg !97
  %11 = fdiv double %10, 0x3F91DF46A2529D39, !dbg !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  %12 = fsub double %0, %11, !dbg !105
  store double %12, double* %3, align 8, !dbg !106, !tbaa !107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !113
  %13 = tail call double @cos(double %8) #4, !dbg !114
  %14 = fdiv double %7, %13, !dbg !115
  %15 = fdiv double %14, 0x3F91DF46A2529D39, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  %16 = fadd double %15, %0, !dbg !120
  %17 = getelementptr inbounds double, double* %3, i64 2, !dbg !121
  store double %16, double* %17, align 8, !dbg !122, !tbaa !107
  %18 = fdiv double %7, 0x3F91DF46A2529D39, !dbg !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !126
  %19 = fsub double %1, %18, !dbg !127
  %20 = getelementptr inbounds double, double* %3, i64 1, !dbg !128
  store double %19, double* %20, align 8, !dbg !129, !tbaa !107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  %21 = fadd double %18, %1, !dbg !133
  %22 = getelementptr inbounds double, double* %3, i64 3, !dbg !134
  store double %21, double* %22, align 8, !dbg !135, !tbaa !107
  br label %23, !dbg !136

; <label>:23:                                     ; preds = %4, %6
  %24 = phi i32 [ 1, %6 ], [ 0, %4 ], !dbg !137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !138
  ret i32 %24, !dbg !138
}

; Function Attrs: noredzone
declare dso_local double @cos(double) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @geohashGetAreasByRadius(%struct.GeoHashRadius* noalias nocapture sret, double, double, double) local_unnamed_addr #0 !dbg !139 {
  %5 = alloca %struct.GeoHashRange, align 8
  %6 = alloca %struct.GeoHashRange, align 8
  %7 = alloca %struct.GeoHashBits, align 8
  %8 = alloca %struct.GeoHashNeighbors, align 8
  %9 = alloca %struct.GeoHashArea, align 8
  %10 = alloca %struct.GeoHashArea, align 8
  %11 = alloca %struct.GeoHashArea, align 8
  %12 = alloca %struct.GeoHashArea, align 8
  %13 = alloca %struct.GeoHashArea, align 8
  %14 = bitcast %struct.GeoHashRange* %5 to i8*, !dbg !208
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #5, !dbg !208
  %15 = bitcast %struct.GeoHashRange* %6 to i8*, !dbg !208
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #5, !dbg !208
  %16 = bitcast %struct.GeoHashBits* %7 to i8*, !dbg !210
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #5, !dbg !210
  %17 = bitcast %struct.GeoHashNeighbors* %8 to i8*, !dbg !211
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %17) #5, !dbg !211
  %18 = bitcast %struct.GeoHashArea* %9 to i8*, !dbg !212
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %18) #5, !dbg !212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  %19 = fdiv double %3, 0x41584F6F63E51090, !dbg !219
  %20 = fmul double %2, 0x3F91DF46A2529D39, !dbg !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !223
  %21 = tail call double @cos(double %20) #4, !dbg !224
  %22 = fdiv double %19, %21, !dbg !225
  %23 = fdiv double %22, 0x3F91DF46A2529D39, !dbg !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !229
  %24 = fsub double %1, %23, !dbg !230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  %25 = tail call double @cos(double %20) #4, !dbg !235
  %26 = fdiv double %19, %25, !dbg !236
  %27 = fdiv double %26, 0x3F91DF46A2529D39, !dbg !239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  %28 = fadd double %27, %1, !dbg !241
  %29 = fdiv double %19, 0x3F91DF46A2529D39, !dbg !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  %30 = fsub double %2, %29, !dbg !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  %31 = fadd double %29, %2, !dbg !250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !252
  %32 = fcmp oeq double %3, 0.000000e+00, !dbg !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br i1 %32, label %65, label %33, !dbg !261

; <label>:33:                                     ; preds = %4
  %34 = fcmp olt double %3, 0x41731C05E5EB851F, !dbg !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  br i1 %34, label %35, label %41, !dbg !265

; <label>:35:                                     ; preds = %33, %35
  %36 = phi i32 [ %39, %35 ], [ 1, %33 ]
  %37 = phi double [ %38, %35 ], [ %3, %33 ]
  %38 = fmul double %37, 2.000000e+00, !dbg !266
  %39 = add nuw nsw i32 %36, 1, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  %40 = fcmp olt double %38, 0x41731C05E5EB851F, !dbg !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  br i1 %40, label %35, label %41, !dbg !265, !llvm.loop !43

; <label>:41:                                     ; preds = %35, %33
  %42 = phi i32 [ 1, %33 ], [ %39, %35 ], !dbg !268
  %43 = add nsw i32 %42, -2, !dbg !269
  %44 = fcmp ogt double %2, 6.600000e+01, !dbg !270
  %45 = fcmp olt double %2, -6.600000e+01, !dbg !271
  %46 = or i1 %44, %45, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  br i1 %46, label %47, label %54, !dbg !272

; <label>:47:                                     ; preds = %41
  %48 = add nsw i32 %42, -3, !dbg !273
  %49 = fcmp ogt double %2, 8.000000e+01, !dbg !274
  %50 = fcmp olt double %2, -8.000000e+01, !dbg !275
  %51 = or i1 %49, %50, !dbg !276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !276
  br i1 %51, label %52, label %54, !dbg !276

; <label>:52:                                     ; preds = %47
  %53 = add nsw i32 %42, -4, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  br label %54, !dbg !278

; <label>:54:                                     ; preds = %52, %47, %41
  %55 = phi i32 [ %53, %52 ], [ %48, %47 ], [ %43, %41 ], !dbg !262
  %56 = icmp slt i32 %55, 1, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  br i1 %56, label %57, label %58, !dbg !280

; <label>:57:                                     ; preds = %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !281
  br label %60, !dbg !282

; <label>:58:                                     ; preds = %54
  %59 = icmp sgt i32 %55, 26, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  br i1 %59, label %60, label %62, !dbg !282

; <label>:60:                                     ; preds = %58, %57
  %61 = phi i32 [ 1, %57 ], [ 26, %58 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  br label %62, !dbg !285

; <label>:62:                                     ; preds = %60, %58
  %63 = phi i32 [ %55, %58 ], [ %61, %60 ], !dbg !286
  %64 = trunc i32 %63 to i8, !dbg !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %65

; <label>:65:                                     ; preds = %4, %62
  %66 = phi i8 [ %64, %62 ], [ 26, %4 ], !dbg !262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  %67 = zext i8 %66 to i32, !dbg !288
  call void @geohashGetCoordRange(%struct.GeoHashRange* nonnull %5, %struct.GeoHashRange* nonnull %6) #4, !dbg !292
  %68 = call i32 @geohashEncode(%struct.GeoHashRange* nonnull %5, %struct.GeoHashRange* nonnull %6, double %1, double %2, i8 zeroext %66, %struct.GeoHashBits* nonnull %7) #4, !dbg !294
  call void @geohashNeighbors(%struct.GeoHashBits* nonnull %7, %struct.GeoHashNeighbors* nonnull %8) #4, !dbg !296
  %69 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %5, i64 0, i32 0, !dbg !297
  %70 = load double, double* %69, align 8, !dbg !297
  %71 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %5, i64 0, i32 1, !dbg !297
  %72 = load double, double* %71, align 8, !dbg !297
  %73 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %6, i64 0, i32 0, !dbg !297
  %74 = load double, double* %73, align 8, !dbg !297
  %75 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %6, i64 0, i32 1, !dbg !297
  %76 = load double, double* %75, align 8, !dbg !297
  %77 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %7, i64 0, i32 0, !dbg !297
  %78 = load i64, i64* %77, align 8, !dbg !297
  %79 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %7, i64 0, i32 1, !dbg !297
  %80 = load i8, i8* %79, align 8, !dbg !297
  %81 = call i32 @geohashDecode(double %70, double %72, double %74, double %76, i64 %78, i8 %80, %struct.GeoHashArea* nonnull %9) #4, !dbg !297
  %82 = bitcast %struct.GeoHashArea* %10 to i8*, !dbg !300
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %82) #5, !dbg !300
  %83 = bitcast %struct.GeoHashArea* %11 to i8*, !dbg !300
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %83) #5, !dbg !300
  %84 = bitcast %struct.GeoHashArea* %12 to i8*, !dbg !300
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %84) #5, !dbg !300
  %85 = bitcast %struct.GeoHashArea* %13 to i8*, !dbg !300
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %85) #5, !dbg !300
  %86 = load double, double* %69, align 8, !dbg !301
  %87 = load double, double* %71, align 8, !dbg !301
  %88 = load double, double* %73, align 8, !dbg !301
  %89 = load double, double* %75, align 8, !dbg !301
  %90 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 0, i32 0, !dbg !301
  %91 = load i64, i64* %90, align 8, !dbg !301
  %92 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 0, i32 1, !dbg !301
  %93 = load i8, i8* %92, align 8, !dbg !301
  %94 = call i32 @geohashDecode(double %86, double %87, double %88, double %89, i64 %91, i8 %93, %struct.GeoHashArea* nonnull %10) #4, !dbg !301
  %95 = load double, double* %69, align 8, !dbg !303
  %96 = load double, double* %71, align 8, !dbg !303
  %97 = load double, double* %73, align 8, !dbg !303
  %98 = load double, double* %75, align 8, !dbg !303
  %99 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 3, i32 0, !dbg !303
  %100 = load i64, i64* %99, align 8, !dbg !303
  %101 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 3, i32 1, !dbg !303
  %102 = load i8, i8* %101, align 8, !dbg !303
  %103 = call i32 @geohashDecode(double %95, double %96, double %97, double %98, i64 %100, i8 %102, %struct.GeoHashArea* nonnull %11) #4, !dbg !303
  %104 = load double, double* %69, align 8, !dbg !305
  %105 = load double, double* %71, align 8, !dbg !305
  %106 = load double, double* %73, align 8, !dbg !305
  %107 = load double, double* %75, align 8, !dbg !305
  %108 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 1, i32 0, !dbg !305
  %109 = load i64, i64* %108, align 8, !dbg !305
  %110 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 1, i32 1, !dbg !305
  %111 = load i8, i8* %110, align 8, !dbg !305
  %112 = call i32 @geohashDecode(double %104, double %105, double %106, double %107, i64 %109, i8 %111, %struct.GeoHashArea* nonnull %12) #4, !dbg !305
  %113 = load double, double* %69, align 8, !dbg !307
  %114 = load double, double* %71, align 8, !dbg !307
  %115 = load double, double* %73, align 8, !dbg !307
  %116 = load double, double* %75, align 8, !dbg !307
  %117 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 2, i32 0, !dbg !307
  %118 = load i64, i64* %117, align 8, !dbg !307
  %119 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 2, i32 1, !dbg !307
  %120 = load i8, i8* %119, align 8, !dbg !307
  %121 = call i32 @geohashDecode(double %113, double %114, double %115, double %116, i64 %118, i8 %120, %struct.GeoHashArea* nonnull %13) #4, !dbg !307
  %122 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %10, i64 0, i32 2, i32 1, !dbg !309
  %123 = load double, double* %122, align 8, !dbg !309, !tbaa !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  %124 = fmul double %1, 0x3F91DF46A2529D39, !dbg !341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  %125 = fmul double %123, 0x3F91DF46A2529D39, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  %126 = fsub double %125, %20, !dbg !353
  %127 = fmul double %126, 5.000000e-01, !dbg !354
  %128 = call double @sin(double %127) #4, !dbg !355
  %129 = fsub double %124, %124, !dbg !357
  %130 = fmul double %129, 5.000000e-01, !dbg !358
  %131 = call double @sin(double %130) #4, !dbg !359
  %132 = fmul double %128, %128, !dbg !361
  %133 = call double @cos(double %20) #4, !dbg !362
  %134 = call double @cos(double %125) #4, !dbg !363
  %135 = fmul double %133, %134, !dbg !364
  %136 = fmul double %131, %135, !dbg !365
  %137 = fmul double %131, %136, !dbg !366
  %138 = fadd double %132, %137, !dbg !367
  %139 = call double @sqrt(double %138) #4, !dbg !368
  %140 = call double @asin(double %139) #4, !dbg !369
  %141 = fmul double %140, 0x41684F6F63E51090, !dbg !370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  %142 = fcmp olt double %141, %3, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br i1 %142, label %143, label %144, !dbg !373

; <label>:143:                                    ; preds = %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  br label %144, !dbg !374

; <label>:144:                                    ; preds = %143, %65
  %145 = phi i32 [ 1, %143 ], [ 0, %65 ], !dbg !284
  %146 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %11, i64 0, i32 2, i32 0, !dbg !375
  %147 = load double, double* %146, align 8, !dbg !375, !tbaa !377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  %148 = fmul double %147, 0x3F91DF46A2529D39, !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  %149 = fsub double %148, %20, !dbg !400
  %150 = fmul double %149, 5.000000e-01, !dbg !401
  %151 = call double @sin(double %150) #4, !dbg !402
  %152 = call double @sin(double %130) #4, !dbg !404
  %153 = fmul double %151, %151, !dbg !406
  %154 = call double @cos(double %20) #4, !dbg !407
  %155 = call double @cos(double %148) #4, !dbg !408
  %156 = fmul double %154, %155, !dbg !409
  %157 = fmul double %152, %156, !dbg !410
  %158 = fmul double %152, %157, !dbg !411
  %159 = fadd double %153, %158, !dbg !412
  %160 = call double @sqrt(double %159) #4, !dbg !413
  %161 = call double @asin(double %160) #4, !dbg !414
  %162 = fmul double %161, 0x41684F6F63E51090, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  %163 = fcmp olt double %162, %3, !dbg !417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  br i1 %163, label %164, label %165, !dbg !418

; <label>:164:                                    ; preds = %144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  br label %165, !dbg !419

; <label>:165:                                    ; preds = %164, %144
  %166 = phi i32 [ 1, %164 ], [ %145, %144 ], !dbg !420
  %167 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %12, i64 0, i32 1, i32 1, !dbg !421
  %168 = load double, double* %167, align 8, !dbg !421, !tbaa !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  %169 = fmul double %168, 0x3F91DF46A2529D39, !dbg !443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !444
  %170 = fsub double %20, %20, !dbg !446
  %171 = fmul double %170, 5.000000e-01, !dbg !447
  %172 = call double @sin(double %171) #4, !dbg !448
  %173 = fsub double %169, %124, !dbg !450
  %174 = fmul double %173, 5.000000e-01, !dbg !451
  %175 = call double @sin(double %174) #4, !dbg !452
  %176 = fmul double %172, %172, !dbg !454
  %177 = call double @cos(double %20) #4, !dbg !455
  %178 = call double @cos(double %20) #4, !dbg !456
  %179 = fmul double %177, %178, !dbg !457
  %180 = fmul double %175, %179, !dbg !458
  %181 = fmul double %175, %180, !dbg !459
  %182 = fadd double %176, %181, !dbg !460
  %183 = call double @sqrt(double %182) #4, !dbg !461
  %184 = call double @asin(double %183) #4, !dbg !462
  %185 = fmul double %184, 0x41684F6F63E51090, !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  %186 = fcmp olt double %185, %3, !dbg !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !466
  br i1 %186, label %187, label %188, !dbg !466

; <label>:187:                                    ; preds = %165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  br label %188, !dbg !467

; <label>:188:                                    ; preds = %187, %165
  %189 = phi i32 [ 1, %187 ], [ %166, %165 ], !dbg !468
  %190 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %13, i64 0, i32 1, i32 0, !dbg !469
  %191 = load double, double* %190, align 8, !dbg !469, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  %192 = fmul double %191, 0x3F91DF46A2529D39, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  %193 = call double @sin(double %171) #4, !dbg !494
  %194 = fsub double %192, %124, !dbg !496
  %195 = fmul double %194, 5.000000e-01, !dbg !497
  %196 = call double @sin(double %195) #4, !dbg !498
  %197 = fmul double %193, %193, !dbg !500
  %198 = call double @cos(double %20) #4, !dbg !501
  %199 = call double @cos(double %20) #4, !dbg !502
  %200 = fmul double %198, %199, !dbg !503
  %201 = fmul double %196, %200, !dbg !504
  %202 = fmul double %196, %201, !dbg !505
  %203 = fadd double %197, %202, !dbg !506
  %204 = call double @sqrt(double %203) #4, !dbg !507
  %205 = call double @asin(double %204) #4, !dbg !508
  %206 = fmul double %205, 0x41684F6F63E51090, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  %207 = fcmp olt double %206, %3, !dbg !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  br i1 %207, label %208, label %209, !dbg !512

; <label>:208:                                    ; preds = %188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !513
  br label %209, !dbg !513

; <label>:209:                                    ; preds = %208, %188
  %210 = phi i32 [ 1, %208 ], [ %189, %188 ], !dbg !514
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %85) #5, !dbg !515
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %84) #5, !dbg !515
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %83) #5, !dbg !515
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %82) #5, !dbg !515
  %211 = icmp ugt i8 %66, 1, !dbg !516
  %212 = icmp ne i32 %210, 0, !dbg !518
  %213 = and i1 %211, %212, !dbg !519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !519
  br i1 %213, label %214, label %225, !dbg !519

; <label>:214:                                    ; preds = %209
  %215 = add nsw i32 %67, -1, !dbg !520
  %216 = trunc i32 %215 to i8, !dbg !522
  %217 = call i32 @geohashEncode(%struct.GeoHashRange* nonnull %5, %struct.GeoHashRange* nonnull %6, double %1, double %2, i8 zeroext %216, %struct.GeoHashBits* nonnull %7) #4, !dbg !523
  call void @geohashNeighbors(%struct.GeoHashBits* nonnull %7, %struct.GeoHashNeighbors* nonnull %8) #4, !dbg !524
  %218 = load double, double* %69, align 8, !dbg !525
  %219 = load double, double* %71, align 8, !dbg !525
  %220 = load double, double* %73, align 8, !dbg !525
  %221 = load double, double* %75, align 8, !dbg !525
  %222 = load i64, i64* %77, align 8, !dbg !525
  %223 = load i8, i8* %79, align 8, !dbg !525
  %224 = call i32 @geohashDecode(double %218, double %219, double %220, double %221, i64 %222, i8 %223, %struct.GeoHashArea* nonnull %9) #4, !dbg !525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !526
  br label %225, !dbg !526

; <label>:225:                                    ; preds = %214, %209
  %226 = phi i32 [ %215, %214 ], [ %67, %209 ], !dbg !284
  %227 = icmp sgt i32 %226, 1, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  br i1 %227, label %228, label %264, !dbg !529

; <label>:228:                                    ; preds = %225
  %229 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %9, i64 0, i32 2, i32 0, !dbg !530
  %230 = load double, double* %229, align 8, !dbg !530, !tbaa !377
  %231 = fcmp olt double %230, %30, !dbg !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !534
  br i1 %231, label %232, label %237, !dbg !534

; <label>:232:                                    ; preds = %228
  store i8 0, i8* %101, align 8, !dbg !535, !tbaa !537
  store i64 0, i64* %99, align 8, !dbg !535, !tbaa !539
  %233 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 7, i32 1, !dbg !540
  store i8 0, i8* %233, align 8, !dbg !540, !tbaa !541
  %234 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 7, i32 0, !dbg !540
  store i64 0, i64* %234, align 8, !dbg !540, !tbaa !542
  %235 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 5, i32 1, !dbg !543
  store i8 0, i8* %235, align 8, !dbg !543, !tbaa !544
  %236 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 5, i32 0, !dbg !543
  store i64 0, i64* %236, align 8, !dbg !543, !tbaa !545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  br label %237, !dbg !546

; <label>:237:                                    ; preds = %232, %228
  %238 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %9, i64 0, i32 2, i32 1, !dbg !547
  %239 = load double, double* %238, align 8, !dbg !547, !tbaa !311
  %240 = fcmp ogt double %239, %31, !dbg !549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  br i1 %240, label %241, label %246, !dbg !550

; <label>:241:                                    ; preds = %237
  store i8 0, i8* %92, align 8, !dbg !551, !tbaa !553
  store i64 0, i64* %90, align 8, !dbg !551, !tbaa !554
  %242 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 4, i32 1, !dbg !555
  store i8 0, i8* %242, align 8, !dbg !555, !tbaa !556
  %243 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 4, i32 0, !dbg !555
  store i64 0, i64* %243, align 8, !dbg !555, !tbaa !557
  %244 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 6, i32 1, !dbg !558
  store i8 0, i8* %244, align 8, !dbg !558, !tbaa !559
  %245 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 6, i32 0, !dbg !558
  store i64 0, i64* %245, align 8, !dbg !558, !tbaa !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  br label %246, !dbg !561

; <label>:246:                                    ; preds = %241, %237
  %247 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %9, i64 0, i32 1, i32 0, !dbg !562
  %248 = load double, double* %247, align 8, !dbg !562, !tbaa !471
  %249 = fcmp olt double %248, %24, !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  br i1 %249, label %250, label %255, !dbg !565

; <label>:250:                                    ; preds = %246
  store i8 0, i8* %119, align 8, !dbg !566, !tbaa !568
  store i64 0, i64* %117, align 8, !dbg !566, !tbaa !569
  %251 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 7, i32 1, !dbg !570
  store i8 0, i8* %251, align 8, !dbg !570, !tbaa !541
  %252 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 7, i32 0, !dbg !570
  store i64 0, i64* %252, align 8, !dbg !570, !tbaa !542
  %253 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 6, i32 1, !dbg !571
  store i8 0, i8* %253, align 8, !dbg !571, !tbaa !559
  %254 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 6, i32 0, !dbg !571
  store i64 0, i64* %254, align 8, !dbg !571, !tbaa !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  br label %255, !dbg !572

; <label>:255:                                    ; preds = %250, %246
  %256 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %9, i64 0, i32 1, i32 1, !dbg !573
  %257 = load double, double* %256, align 8, !dbg !573, !tbaa !423
  %258 = fcmp ogt double %257, %28, !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  br i1 %258, label %259, label %264, !dbg !576

; <label>:259:                                    ; preds = %255
  store i8 0, i8* %110, align 8, !dbg !577, !tbaa !579
  store i64 0, i64* %108, align 8, !dbg !577, !tbaa !580
  %260 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 5, i32 1, !dbg !581
  store i8 0, i8* %260, align 8, !dbg !581, !tbaa !544
  %261 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 5, i32 0, !dbg !581
  store i64 0, i64* %261, align 8, !dbg !581, !tbaa !545
  %262 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 4, i32 1, !dbg !582
  store i8 0, i8* %262, align 8, !dbg !582, !tbaa !556
  %263 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 4, i32 0, !dbg !582
  store i64 0, i64* %263, align 8, !dbg !582, !tbaa !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  br label %264, !dbg !583

; <label>:264:                                    ; preds = %255, %259, %225
  %265 = bitcast %struct.GeoHashRadius* %0 to i8*, !dbg !584
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %265, i8* nonnull align 8 %16, i64 16, i1 false), !dbg !584, !tbaa.struct !585
  %266 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %0, i64 0, i32 2, !dbg !588
  %267 = bitcast %struct.GeoHashNeighbors* %266 to i8*, !dbg !589
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %267, i8* nonnull align 8 %17, i64 128, i1 false), !dbg !589, !tbaa.struct !590
  %268 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %0, i64 0, i32 1, !dbg !591
  %269 = bitcast %struct.GeoHashArea* %268 to i8*, !dbg !592
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %269, i8* nonnull align 8 %18, i64 48, i1 false), !dbg !592, !tbaa.struct !593
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %18) #5, !dbg !594
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %17) #5, !dbg !594
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #5, !dbg !594
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #5, !dbg !594
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #5, !dbg !594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  ret void, !dbg !594
}

; Function Attrs: noredzone
declare dso_local void @geohashGetCoordRange(%struct.GeoHashRange*, %struct.GeoHashRange*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @geohashEncode(%struct.GeoHashRange*, %struct.GeoHashRange*, double, double, i8 zeroext, %struct.GeoHashBits*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @geohashNeighbors(%struct.GeoHashBits*, %struct.GeoHashNeighbors*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @geohashDecode(double, double, double, double, i64, i8, %struct.GeoHashArea*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local double @geohashGetDistance(double, double, double, double) local_unnamed_addr #0 !dbg !317 {
  %5 = fmul double %1, 0x3F91DF46A2529D39, !dbg !601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  %6 = fmul double %0, 0x3F91DF46A2529D39, !dbg !606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  %7 = fmul double %3, 0x3F91DF46A2529D39, !dbg !611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  %8 = fmul double %2, 0x3F91DF46A2529D39, !dbg !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !617
  %9 = fsub double %7, %5, !dbg !619
  %10 = fmul double %9, 5.000000e-01, !dbg !620
  %11 = tail call double @sin(double %10) #4, !dbg !621
  %12 = fsub double %8, %6, !dbg !623
  %13 = fmul double %12, 5.000000e-01, !dbg !624
  %14 = tail call double @sin(double %13) #4, !dbg !625
  %15 = fmul double %11, %11, !dbg !627
  %16 = tail call double @cos(double %5) #4, !dbg !628
  %17 = tail call double @cos(double %7) #4, !dbg !629
  %18 = fmul double %16, %17, !dbg !630
  %19 = fmul double %14, %18, !dbg !631
  %20 = fmul double %14, %19, !dbg !632
  %21 = fadd double %15, %20, !dbg !633
  %22 = tail call double @sqrt(double %21) #4, !dbg !634
  %23 = tail call double @asin(double %22) #4, !dbg !635
  %24 = fmul double %23, 0x41684F6F63E51090, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  ret double %24, !dbg !637
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone nounwind
define dso_local void @geohashGetAreasByRadiusWGS84(%struct.GeoHashRadius* noalias nocapture sret, double, double, double) local_unnamed_addr #0 !dbg !638 {
  tail call void @geohashGetAreasByRadius(%struct.GeoHashRadius* sret %0, double %1, double %2, double %3) #6, !dbg !646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  ret void, !dbg !647
}

; Function Attrs: noredzone nounwind
define dso_local i64 @geohashAlign52Bits(i64, i8) local_unnamed_addr #0 !dbg !648 {
  %3 = zext i8 %1 to i64, !dbg !658
  %4 = shl nuw nsw i64 %3, 1, !dbg !659
  %5 = sub nsw i64 52, %4, !dbg !660
  %6 = and i64 %5, 4294967294, !dbg !661
  %7 = shl i64 %0, %6, !dbg !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  ret i64 %7, !dbg !662
}

; Function Attrs: noredzone
declare dso_local double @sin(double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @asin(double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @sqrt(double) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @geohashGetDistanceIfInRadius(double, double, double, double, double, double* nocapture) local_unnamed_addr #0 !dbg !663 {
  %7 = fmul double %1, 0x3F91DF46A2529D39, !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  %8 = fmul double %0, 0x3F91DF46A2529D39, !dbg !691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  %9 = fmul double %3, 0x3F91DF46A2529D39, !dbg !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  %10 = fmul double %2, 0x3F91DF46A2529D39, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  %11 = fsub double %9, %7, !dbg !704
  %12 = fmul double %11, 5.000000e-01, !dbg !705
  %13 = tail call double @sin(double %12) #4, !dbg !706
  %14 = fsub double %10, %8, !dbg !708
  %15 = fmul double %14, 5.000000e-01, !dbg !709
  %16 = tail call double @sin(double %15) #4, !dbg !710
  %17 = fmul double %13, %13, !dbg !712
  %18 = tail call double @cos(double %7) #4, !dbg !713
  %19 = tail call double @cos(double %9) #4, !dbg !714
  %20 = fmul double %18, %19, !dbg !715
  %21 = fmul double %16, %20, !dbg !716
  %22 = fmul double %16, %21, !dbg !717
  %23 = fadd double %17, %22, !dbg !718
  %24 = tail call double @sqrt(double %23) #4, !dbg !719
  %25 = tail call double @asin(double %24) #4, !dbg !720
  %26 = fmul double %25, 0x41684F6F63E51090, !dbg !721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  store double %26, double* %5, align 8, !dbg !723, !tbaa !107
  %27 = fcmp ule double %26, %4, !dbg !724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !727
  %28 = zext i1 %27 to i32, !dbg !728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !729
  ret i32 %28, !dbg !729
}

; Function Attrs: noredzone nounwind
define dso_local i32 @geohashGetDistanceIfInRadiusWGS84(double, double, double, double, double, double* nocapture) local_unnamed_addr #0 !dbg !730 {
  %7 = fmul double %1, 0x3F91DF46A2529D39, !dbg !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  %8 = fmul double %0, 0x3F91DF46A2529D39, !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !764
  %9 = fmul double %3, 0x3F91DF46A2529D39, !dbg !768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  %10 = fmul double %2, 0x3F91DF46A2529D39, !dbg !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !774
  %11 = fsub double %9, %7, !dbg !776
  %12 = fmul double %11, 5.000000e-01, !dbg !777
  %13 = tail call double @sin(double %12) #4, !dbg !778
  %14 = fsub double %10, %8, !dbg !780
  %15 = fmul double %14, 5.000000e-01, !dbg !781
  %16 = tail call double @sin(double %15) #4, !dbg !782
  %17 = fmul double %13, %13, !dbg !784
  %18 = tail call double @cos(double %7) #4, !dbg !785
  %19 = tail call double @cos(double %9) #4, !dbg !786
  %20 = fmul double %18, %19, !dbg !787
  %21 = fmul double %16, %20, !dbg !788
  %22 = fmul double %16, %21, !dbg !789
  %23 = fadd double %17, %22, !dbg !790
  %24 = tail call double @sqrt(double %23) #4, !dbg !791
  %25 = tail call double @asin(double %24) #4, !dbg !792
  %26 = fmul double %25, 0x41684F6F63E51090, !dbg !793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  store double %26, double* %5, align 8, !dbg !795, !tbaa !107
  %27 = fcmp ule double %26, %4, !dbg !796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !798
  %28 = zext i1 %27 to i32, !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  ret i32 %28, !dbg !801
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "DEG_TO_RAD", scope: !2, file: !3, line: 50, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geohash_helper.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!0, !6, !10, !12}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "EARTH_RADIUS_IN_METERS", scope: !2, file: !3, line: 52, type: !8, isLocal: false, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "MERCATOR_MAX", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "MERCATOR_MIN", scope: !2, file: !3, line: 55, type: !8, isLocal: false, isDefinition: true)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "geohashEstimateStepsByRadius", scope: !3, file: !3, line: 62, type: !19, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !26)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !9, !9}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !22, line: 24, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !24, line: 43, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !{!27, !28, !29}
!27 = !DILocalVariable(name: "range_meters", arg: 1, scope: !18, file: !3, line: 62, type: !9)
!28 = !DILocalVariable(name: "lat", arg: 2, scope: !18, file: !3, line: 62, type: !9)
!29 = !DILocalVariable(name: "step", scope: !18, file: !3, line: 64, type: !30)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DILocation(line: 62, column: 45, scope: !18)
!32 = !DILocation(line: 62, column: 66, scope: !18)
!33 = !DILocation(line: 63, column: 22, scope: !34)
!34 = distinct !DILexicalBlock(scope: !18, file: !3, line: 63, column: 9)
!35 = !DILocation(line: 63, column: 9, scope: !18)
!36 = !DILocation(line: 0, scope: !18)
!37 = !DILocation(line: 64, column: 9, scope: !18)
!38 = !DILocation(line: 65, column: 25, scope: !18)
!39 = !DILocation(line: 65, column: 5, scope: !18)
!40 = !DILocation(line: 66, column: 22, scope: !41)
!41 = distinct !DILexicalBlock(scope: !18, file: !3, line: 65, column: 41)
!42 = !DILocation(line: 67, column: 13, scope: !41)
!43 = distinct !{!43, !39, !44}
!44 = !DILocation(line: 68, column: 5, scope: !18)
!45 = !DILocation(line: 0, scope: !41)
!46 = !DILocation(line: 69, column: 10, scope: !18)
!47 = !DILocation(line: 74, column: 13, scope: !48)
!48 = distinct !DILexicalBlock(scope: !18, file: !3, line: 74, column: 9)
!49 = !DILocation(line: 74, column: 25, scope: !48)
!50 = !DILocation(line: 74, column: 18, scope: !48)
!51 = !DILocation(line: 75, column: 13, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !3, line: 74, column: 32)
!53 = !DILocation(line: 76, column: 17, scope: !54)
!54 = distinct !DILexicalBlock(scope: !52, file: !3, line: 76, column: 13)
!55 = !DILocation(line: 76, column: 29, scope: !54)
!56 = !DILocation(line: 76, column: 22, scope: !54)
!57 = !DILocation(line: 76, column: 40, scope: !54)
!58 = !DILocation(line: 76, column: 36, scope: !54)
!59 = !DILocation(line: 80, column: 14, scope: !60)
!60 = distinct !DILexicalBlock(scope: !18, file: !3, line: 80, column: 9)
!61 = !DILocation(line: 80, column: 9, scope: !18)
!62 = !DILocation(line: 80, column: 19, scope: !60)
!63 = !DILocation(line: 81, column: 9, scope: !18)
!64 = !DILocation(line: 81, column: 14, scope: !65)
!65 = distinct !DILexicalBlock(scope: !18, file: !3, line: 81, column: 9)
!66 = !DILocation(line: 0, scope: !65)
!67 = !DILocation(line: 82, column: 12, scope: !18)
!68 = !DILocation(line: 0, scope: !60)
!69 = !DILocation(line: 83, column: 1, scope: !18)
!70 = distinct !DISubprogram(name: "geohashBoundingBox", scope: !3, file: !3, line: 103, type: !71, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !74)
!71 = !DISubroutineType(types: !72)
!72 = !{!30, !9, !9, !9, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!74 = !{!75, !76, !77, !78}
!75 = !DILocalVariable(name: "longitude", arg: 1, scope: !70, file: !3, line: 103, type: !9)
!76 = !DILocalVariable(name: "latitude", arg: 2, scope: !70, file: !3, line: 103, type: !9)
!77 = !DILocalVariable(name: "radius_meters", arg: 3, scope: !70, file: !3, line: 103, type: !9)
!78 = !DILocalVariable(name: "bounds", arg: 4, scope: !70, file: !3, line: 104, type: !73)
!79 = !DILocation(line: 103, column: 31, scope: !70)
!80 = !DILocation(line: 103, column: 49, scope: !70)
!81 = !DILocation(line: 103, column: 66, scope: !70)
!82 = !DILocation(line: 104, column: 32, scope: !70)
!83 = !DILocation(line: 105, column: 10, scope: !84)
!84 = distinct !DILexicalBlock(scope: !70, file: !3, line: 105, column: 9)
!85 = !DILocation(line: 105, column: 9, scope: !70)
!86 = !DILocation(line: 107, column: 50, scope: !70)
!87 = !DILocalVariable(name: "ang", arg: 1, scope: !88, file: !3, line: 57, type: !9)
!88 = distinct !DISubprogram(name: "deg_rad", scope: !3, file: !3, line: 57, type: !89, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !91)
!89 = !DISubroutineType(types: !90)
!90 = !{!9, !9}
!91 = !{!87}
!92 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !93)
!93 = distinct !DILocation(line: 107, column: 78, scope: !70)
!94 = !DILocation(line: 57, column: 55, scope: !88, inlinedAt: !93)
!95 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !93)
!96 = !DILocation(line: 107, column: 74, scope: !70)
!97 = !DILocation(line: 107, column: 73, scope: !70)
!98 = !DILocalVariable(name: "ang", arg: 1, scope: !99, file: !3, line: 58, type: !9)
!99 = distinct !DISubprogram(name: "rad_deg", scope: !3, file: !3, line: 58, type: !89, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !100)
!100 = !{!98}
!101 = !DILocation(line: 58, column: 37, scope: !99, inlinedAt: !102)
!102 = distinct !DILocation(line: 107, column: 29, scope: !70)
!103 = !DILocation(line: 58, column: 55, scope: !99, inlinedAt: !102)
!104 = !DILocation(line: 58, column: 44, scope: !99, inlinedAt: !102)
!105 = !DILocation(line: 107, column: 27, scope: !70)
!106 = !DILocation(line: 107, column: 15, scope: !70)
!107 = !{!108, !108, i64 0}
!108 = !{!"double", !109, i64 0}
!109 = !{!"omnipotent char", !110, i64 0}
!110 = !{!"Simple C/C++ TBAA"}
!111 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !112)
!112 = distinct !DILocation(line: 108, column: 78, scope: !70)
!113 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !112)
!114 = !DILocation(line: 108, column: 74, scope: !70)
!115 = !DILocation(line: 108, column: 73, scope: !70)
!116 = !DILocation(line: 58, column: 37, scope: !99, inlinedAt: !117)
!117 = distinct !DILocation(line: 108, column: 29, scope: !70)
!118 = !DILocation(line: 58, column: 55, scope: !99, inlinedAt: !117)
!119 = !DILocation(line: 58, column: 44, scope: !99, inlinedAt: !117)
!120 = !DILocation(line: 108, column: 27, scope: !70)
!121 = !DILocation(line: 108, column: 5, scope: !70)
!122 = !DILocation(line: 108, column: 15, scope: !70)
!123 = !DILocation(line: 58, column: 37, scope: !99, inlinedAt: !124)
!124 = distinct !DILocation(line: 109, column: 28, scope: !70)
!125 = !DILocation(line: 58, column: 55, scope: !99, inlinedAt: !124)
!126 = !DILocation(line: 58, column: 44, scope: !99, inlinedAt: !124)
!127 = !DILocation(line: 109, column: 26, scope: !70)
!128 = !DILocation(line: 109, column: 5, scope: !70)
!129 = !DILocation(line: 109, column: 15, scope: !70)
!130 = !DILocation(line: 58, column: 37, scope: !99, inlinedAt: !131)
!131 = distinct !DILocation(line: 110, column: 28, scope: !70)
!132 = !DILocation(line: 58, column: 44, scope: !99, inlinedAt: !131)
!133 = !DILocation(line: 110, column: 26, scope: !70)
!134 = !DILocation(line: 110, column: 5, scope: !70)
!135 = !DILocation(line: 110, column: 15, scope: !70)
!136 = !DILocation(line: 111, column: 5, scope: !70)
!137 = !DILocation(line: 0, scope: !84)
!138 = !DILocation(line: 112, column: 1, scope: !70)
!139 = distinct !DISubprogram(name: "geohashGetAreasByRadius", scope: !3, file: !3, line: 116, type: !140, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !180)
!140 = !DISubroutineType(types: !141)
!141 = !{!142, !9, !9, !9}
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashRadius", file: !143, line: 48, baseType: !144)
!143 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geohash_helper.h", directory: "/root/.unikraft/apps/redis/build")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 44, size: 1536, elements: !145)
!145 = !{!146, !156, !168}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !144, file: !143, line: 45, baseType: !147, size: 128)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashBits", file: !148, line: 69, baseType: !149)
!148 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geohash.h", directory: "/root/.unikraft/apps/redis/build")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 66, size: 128, elements: !150)
!150 = !{!151, !155}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !149, file: !148, line: 67, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 60, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !24, line: 105, baseType: !154)
!154 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !149, file: !148, line: 68, baseType: !21, size: 8, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !144, file: !143, line: 46, baseType: !157, size: 384, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashArea", file: !148, line: 80, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 76, size: 384, elements: !159)
!159 = !{!160, !161, !167}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !158, file: !148, line: 77, baseType: !147, size: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "longitude", scope: !158, file: !148, line: 78, baseType: !162, size: 128, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashRange", file: !148, line: 74, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 71, size: 128, elements: !164)
!164 = !{!165, !166}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !163, file: !148, line: 72, baseType: !9, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !163, file: !148, line: 73, baseType: !9, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "latitude", scope: !158, file: !148, line: 79, baseType: !162, size: 128, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "neighbors", scope: !144, file: !143, line: 47, baseType: !169, size: 1024, offset: 512)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashNeighbors", file: !148, line: 91, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 82, size: 1024, elements: !171)
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "north", scope: !170, file: !148, line: 83, baseType: !147, size: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "east", scope: !170, file: !148, line: 84, baseType: !147, size: 128, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "west", scope: !170, file: !148, line: 85, baseType: !147, size: 128, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "south", scope: !170, file: !148, line: 86, baseType: !147, size: 128, offset: 384)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "north_east", scope: !170, file: !148, line: 87, baseType: !147, size: 128, offset: 512)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "south_east", scope: !170, file: !148, line: 88, baseType: !147, size: 128, offset: 640)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "north_west", scope: !170, file: !148, line: 89, baseType: !147, size: 128, offset: 768)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "south_west", scope: !170, file: !148, line: 90, baseType: !147, size: 128, offset: 896)
!180 = !{!181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !198, !199, !200, !202, !203, !204}
!181 = !DILocalVariable(name: "longitude", arg: 1, scope: !139, file: !3, line: 116, type: !9)
!182 = !DILocalVariable(name: "latitude", arg: 2, scope: !139, file: !3, line: 116, type: !9)
!183 = !DILocalVariable(name: "radius_meters", arg: 3, scope: !139, file: !3, line: 116, type: !9)
!184 = !DILocalVariable(name: "long_range", scope: !139, file: !3, line: 117, type: !162)
!185 = !DILocalVariable(name: "lat_range", scope: !139, file: !3, line: 117, type: !162)
!186 = !DILocalVariable(name: "radius", scope: !139, file: !3, line: 118, type: !142)
!187 = !DILocalVariable(name: "hash", scope: !139, file: !3, line: 119, type: !147)
!188 = !DILocalVariable(name: "neighbors", scope: !139, file: !3, line: 120, type: !169)
!189 = !DILocalVariable(name: "area", scope: !139, file: !3, line: 121, type: !157)
!190 = !DILocalVariable(name: "min_lon", scope: !139, file: !3, line: 122, type: !9)
!191 = !DILocalVariable(name: "max_lon", scope: !139, file: !3, line: 122, type: !9)
!192 = !DILocalVariable(name: "min_lat", scope: !139, file: !3, line: 122, type: !9)
!193 = !DILocalVariable(name: "max_lat", scope: !139, file: !3, line: 122, type: !9)
!194 = !DILocalVariable(name: "bounds", scope: !139, file: !3, line: 123, type: !195)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 4)
!198 = !DILocalVariable(name: "steps", scope: !139, file: !3, line: 124, type: !30)
!199 = !DILocalVariable(name: "decrease_step", scope: !139, file: !3, line: 144, type: !30)
!200 = !DILocalVariable(name: "north", scope: !201, file: !3, line: 146, type: !157)
!201 = distinct !DILexicalBlock(scope: !139, file: !3, line: 145, column: 5)
!202 = !DILocalVariable(name: "south", scope: !201, file: !3, line: 146, type: !157)
!203 = !DILocalVariable(name: "east", scope: !201, file: !3, line: 146, type: !157)
!204 = !DILocalVariable(name: "west", scope: !201, file: !3, line: 146, type: !157)
!205 = !DILocation(line: 116, column: 46, scope: !139)
!206 = !DILocation(line: 116, column: 64, scope: !139)
!207 = !DILocation(line: 116, column: 81, scope: !139)
!208 = !DILocation(line: 117, column: 5, scope: !139)
!209 = !DILocation(line: 118, column: 19, scope: !139)
!210 = !DILocation(line: 119, column: 5, scope: !139)
!211 = !DILocation(line: 120, column: 5, scope: !139)
!212 = !DILocation(line: 121, column: 5, scope: !139)
!213 = !DILocation(line: 103, column: 31, scope: !70, inlinedAt: !214)
!214 = distinct !DILocation(line: 126, column: 5, scope: !139)
!215 = !DILocation(line: 103, column: 49, scope: !70, inlinedAt: !214)
!216 = !DILocation(line: 103, column: 66, scope: !70, inlinedAt: !214)
!217 = !DILocation(line: 104, column: 32, scope: !70, inlinedAt: !214)
!218 = !DILocation(line: 105, column: 9, scope: !70, inlinedAt: !214)
!219 = !DILocation(line: 107, column: 50, scope: !70, inlinedAt: !214)
!220 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !221)
!221 = distinct !DILocation(line: 107, column: 78, scope: !70, inlinedAt: !214)
!222 = !DILocation(line: 57, column: 55, scope: !88, inlinedAt: !221)
!223 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !221)
!224 = !DILocation(line: 107, column: 74, scope: !70, inlinedAt: !214)
!225 = !DILocation(line: 107, column: 73, scope: !70, inlinedAt: !214)
!226 = !DILocation(line: 58, column: 37, scope: !99, inlinedAt: !227)
!227 = distinct !DILocation(line: 107, column: 29, scope: !70, inlinedAt: !214)
!228 = !DILocation(line: 58, column: 55, scope: !99, inlinedAt: !227)
!229 = !DILocation(line: 58, column: 44, scope: !99, inlinedAt: !227)
!230 = !DILocation(line: 107, column: 27, scope: !70, inlinedAt: !214)
!231 = !DILocation(line: 123, column: 12, scope: !139)
!232 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !233)
!233 = distinct !DILocation(line: 108, column: 78, scope: !70, inlinedAt: !214)
!234 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !233)
!235 = !DILocation(line: 108, column: 74, scope: !70, inlinedAt: !214)
!236 = !DILocation(line: 108, column: 73, scope: !70, inlinedAt: !214)
!237 = !DILocation(line: 58, column: 37, scope: !99, inlinedAt: !238)
!238 = distinct !DILocation(line: 108, column: 29, scope: !70, inlinedAt: !214)
!239 = !DILocation(line: 58, column: 55, scope: !99, inlinedAt: !238)
!240 = !DILocation(line: 58, column: 44, scope: !99, inlinedAt: !238)
!241 = !DILocation(line: 108, column: 27, scope: !70, inlinedAt: !214)
!242 = !DILocation(line: 58, column: 37, scope: !99, inlinedAt: !243)
!243 = distinct !DILocation(line: 109, column: 28, scope: !70, inlinedAt: !214)
!244 = !DILocation(line: 58, column: 55, scope: !99, inlinedAt: !243)
!245 = !DILocation(line: 58, column: 44, scope: !99, inlinedAt: !243)
!246 = !DILocation(line: 109, column: 26, scope: !70, inlinedAt: !214)
!247 = !DILocation(line: 58, column: 37, scope: !99, inlinedAt: !248)
!248 = distinct !DILocation(line: 110, column: 28, scope: !70, inlinedAt: !214)
!249 = !DILocation(line: 58, column: 44, scope: !99, inlinedAt: !248)
!250 = !DILocation(line: 110, column: 26, scope: !70, inlinedAt: !214)
!251 = !DILocation(line: 111, column: 5, scope: !70, inlinedAt: !214)
!252 = !DILocation(line: 112, column: 1, scope: !70, inlinedAt: !214)
!253 = !DILocation(line: 122, column: 12, scope: !139)
!254 = !DILocation(line: 122, column: 30, scope: !139)
!255 = !DILocation(line: 122, column: 21, scope: !139)
!256 = !DILocation(line: 122, column: 39, scope: !139)
!257 = !DILocation(line: 62, column: 45, scope: !18, inlinedAt: !258)
!258 = distinct !DILocation(line: 132, column: 13, scope: !139)
!259 = !DILocation(line: 62, column: 66, scope: !18, inlinedAt: !258)
!260 = !DILocation(line: 63, column: 22, scope: !34, inlinedAt: !258)
!261 = !DILocation(line: 63, column: 9, scope: !18, inlinedAt: !258)
!262 = !DILocation(line: 0, scope: !18, inlinedAt: !258)
!263 = !DILocation(line: 64, column: 9, scope: !18, inlinedAt: !258)
!264 = !DILocation(line: 65, column: 25, scope: !18, inlinedAt: !258)
!265 = !DILocation(line: 65, column: 5, scope: !18, inlinedAt: !258)
!266 = !DILocation(line: 66, column: 22, scope: !41, inlinedAt: !258)
!267 = !DILocation(line: 67, column: 13, scope: !41, inlinedAt: !258)
!268 = !DILocation(line: 0, scope: !41, inlinedAt: !258)
!269 = !DILocation(line: 69, column: 10, scope: !18, inlinedAt: !258)
!270 = !DILocation(line: 74, column: 13, scope: !48, inlinedAt: !258)
!271 = !DILocation(line: 74, column: 25, scope: !48, inlinedAt: !258)
!272 = !DILocation(line: 74, column: 18, scope: !48, inlinedAt: !258)
!273 = !DILocation(line: 75, column: 13, scope: !52, inlinedAt: !258)
!274 = !DILocation(line: 76, column: 17, scope: !54, inlinedAt: !258)
!275 = !DILocation(line: 76, column: 29, scope: !54, inlinedAt: !258)
!276 = !DILocation(line: 76, column: 22, scope: !54, inlinedAt: !258)
!277 = !DILocation(line: 76, column: 40, scope: !54, inlinedAt: !258)
!278 = !DILocation(line: 76, column: 36, scope: !54, inlinedAt: !258)
!279 = !DILocation(line: 80, column: 14, scope: !60, inlinedAt: !258)
!280 = !DILocation(line: 80, column: 9, scope: !18, inlinedAt: !258)
!281 = !DILocation(line: 80, column: 19, scope: !60, inlinedAt: !258)
!282 = !DILocation(line: 81, column: 9, scope: !18, inlinedAt: !258)
!283 = !DILocation(line: 81, column: 14, scope: !65, inlinedAt: !258)
!284 = !DILocation(line: 0, scope: !139)
!285 = !DILocation(line: 82, column: 12, scope: !18, inlinedAt: !258)
!286 = !DILocation(line: 0, scope: !60, inlinedAt: !258)
!287 = !DILocation(line: 83, column: 1, scope: !18, inlinedAt: !258)
!288 = !DILocation(line: 132, column: 13, scope: !139)
!289 = !DILocation(line: 124, column: 9, scope: !139)
!290 = !DILocation(line: 117, column: 18, scope: !139)
!291 = !DILocation(line: 117, column: 30, scope: !139)
!292 = !DILocation(line: 134, column: 5, scope: !139)
!293 = !DILocation(line: 119, column: 17, scope: !139)
!294 = !DILocation(line: 135, column: 5, scope: !139)
!295 = !DILocation(line: 120, column: 22, scope: !139)
!296 = !DILocation(line: 136, column: 5, scope: !139)
!297 = !DILocation(line: 137, column: 5, scope: !139)
!298 = !DILocation(line: 121, column: 17, scope: !139)
!299 = !DILocation(line: 144, column: 9, scope: !139)
!300 = !DILocation(line: 146, column: 9, scope: !201)
!301 = !DILocation(line: 148, column: 9, scope: !201)
!302 = !DILocation(line: 146, column: 21, scope: !201)
!303 = !DILocation(line: 149, column: 9, scope: !201)
!304 = !DILocation(line: 146, column: 28, scope: !201)
!305 = !DILocation(line: 150, column: 9, scope: !201)
!306 = !DILocation(line: 146, column: 35, scope: !201)
!307 = !DILocation(line: 151, column: 9, scope: !201)
!308 = !DILocation(line: 146, column: 41, scope: !201)
!309 = !DILocation(line: 153, column: 76, scope: !310)
!310 = distinct !DILexicalBlock(scope: !201, file: !3, line: 153, column: 13)
!311 = !{!312, !108, i64 40}
!312 = !{!"", !313, i64 0, !315, i64 16, !315, i64 32}
!313 = !{!"", !314, i64 0, !109, i64 8}
!314 = !{!"long", !109, i64 0}
!315 = !{!"", !108, i64 0, !108, i64 8}
!316 = !DILocalVariable(name: "lon1d", arg: 1, scope: !317, file: !3, line: 211, type: !9)
!317 = distinct !DISubprogram(name: "geohashGetDistance", scope: !3, file: !3, line: 211, type: !318, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !320)
!318 = !DISubroutineType(types: !319)
!319 = !{!9, !9, !9, !9, !9}
!320 = !{!316, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!321 = !DILocalVariable(name: "lat1d", arg: 2, scope: !317, file: !3, line: 211, type: !9)
!322 = !DILocalVariable(name: "lon2d", arg: 3, scope: !317, file: !3, line: 211, type: !9)
!323 = !DILocalVariable(name: "lat2d", arg: 4, scope: !317, file: !3, line: 211, type: !9)
!324 = !DILocalVariable(name: "lat1r", scope: !317, file: !3, line: 212, type: !9)
!325 = !DILocalVariable(name: "lon1r", scope: !317, file: !3, line: 212, type: !9)
!326 = !DILocalVariable(name: "lat2r", scope: !317, file: !3, line: 212, type: !9)
!327 = !DILocalVariable(name: "lon2r", scope: !317, file: !3, line: 212, type: !9)
!328 = !DILocalVariable(name: "u", scope: !317, file: !3, line: 212, type: !9)
!329 = !DILocalVariable(name: "v", scope: !317, file: !3, line: 212, type: !9)
!330 = !DILocation(line: 211, column: 34, scope: !317, inlinedAt: !331)
!331 = distinct !DILocation(line: 153, column: 13, scope: !310)
!332 = !DILocation(line: 211, column: 48, scope: !317, inlinedAt: !331)
!333 = !DILocation(line: 211, column: 62, scope: !317, inlinedAt: !331)
!334 = !DILocation(line: 211, column: 76, scope: !317, inlinedAt: !331)
!335 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !336)
!336 = distinct !DILocation(line: 213, column: 13, scope: !317, inlinedAt: !331)
!337 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !336)
!338 = !DILocation(line: 212, column: 12, scope: !317, inlinedAt: !331)
!339 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !340)
!340 = distinct !DILocation(line: 214, column: 13, scope: !317, inlinedAt: !331)
!341 = !DILocation(line: 57, column: 55, scope: !88, inlinedAt: !340)
!342 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !340)
!343 = !DILocation(line: 212, column: 19, scope: !317, inlinedAt: !331)
!344 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !345)
!345 = distinct !DILocation(line: 215, column: 13, scope: !317, inlinedAt: !331)
!346 = !DILocation(line: 57, column: 55, scope: !88, inlinedAt: !345)
!347 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !345)
!348 = !DILocation(line: 212, column: 26, scope: !317, inlinedAt: !331)
!349 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !350)
!350 = distinct !DILocation(line: 216, column: 13, scope: !317, inlinedAt: !331)
!351 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !350)
!352 = !DILocation(line: 212, column: 33, scope: !317, inlinedAt: !331)
!353 = !DILocation(line: 217, column: 20, scope: !317, inlinedAt: !331)
!354 = !DILocation(line: 217, column: 29, scope: !317, inlinedAt: !331)
!355 = !DILocation(line: 217, column: 9, scope: !317, inlinedAt: !331)
!356 = !DILocation(line: 212, column: 40, scope: !317, inlinedAt: !331)
!357 = !DILocation(line: 218, column: 20, scope: !317, inlinedAt: !331)
!358 = !DILocation(line: 218, column: 29, scope: !317, inlinedAt: !331)
!359 = !DILocation(line: 218, column: 9, scope: !317, inlinedAt: !331)
!360 = !DILocation(line: 212, column: 43, scope: !317, inlinedAt: !331)
!361 = !DILocation(line: 220, column: 24, scope: !317, inlinedAt: !331)
!362 = !DILocation(line: 220, column: 30, scope: !317, inlinedAt: !331)
!363 = !DILocation(line: 220, column: 43, scope: !317, inlinedAt: !331)
!364 = !DILocation(line: 220, column: 41, scope: !317, inlinedAt: !331)
!365 = !DILocation(line: 220, column: 54, scope: !317, inlinedAt: !331)
!366 = !DILocation(line: 220, column: 58, scope: !317, inlinedAt: !331)
!367 = !DILocation(line: 220, column: 28, scope: !317, inlinedAt: !331)
!368 = !DILocation(line: 220, column: 17, scope: !317, inlinedAt: !331)
!369 = !DILocation(line: 220, column: 12, scope: !317, inlinedAt: !331)
!370 = !DILocation(line: 219, column: 41, scope: !317, inlinedAt: !331)
!371 = !DILocation(line: 219, column: 5, scope: !317, inlinedAt: !331)
!372 = !DILocation(line: 154, column: 13, scope: !310)
!373 = !DILocation(line: 153, column: 13, scope: !201)
!374 = !DILocation(line: 154, column: 30, scope: !310)
!375 = !DILocation(line: 155, column: 76, scope: !376)
!376 = distinct !DILexicalBlock(scope: !201, file: !3, line: 155, column: 13)
!377 = !{!312, !108, i64 32}
!378 = !DILocation(line: 211, column: 34, scope: !317, inlinedAt: !379)
!379 = distinct !DILocation(line: 155, column: 13, scope: !376)
!380 = !DILocation(line: 211, column: 48, scope: !317, inlinedAt: !379)
!381 = !DILocation(line: 211, column: 62, scope: !317, inlinedAt: !379)
!382 = !DILocation(line: 211, column: 76, scope: !317, inlinedAt: !379)
!383 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !384)
!384 = distinct !DILocation(line: 213, column: 13, scope: !317, inlinedAt: !379)
!385 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !384)
!386 = !DILocation(line: 212, column: 12, scope: !317, inlinedAt: !379)
!387 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !388)
!388 = distinct !DILocation(line: 214, column: 13, scope: !317, inlinedAt: !379)
!389 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !388)
!390 = !DILocation(line: 212, column: 19, scope: !317, inlinedAt: !379)
!391 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !392)
!392 = distinct !DILocation(line: 215, column: 13, scope: !317, inlinedAt: !379)
!393 = !DILocation(line: 57, column: 55, scope: !88, inlinedAt: !392)
!394 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !392)
!395 = !DILocation(line: 212, column: 26, scope: !317, inlinedAt: !379)
!396 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !397)
!397 = distinct !DILocation(line: 216, column: 13, scope: !317, inlinedAt: !379)
!398 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !397)
!399 = !DILocation(line: 212, column: 33, scope: !317, inlinedAt: !379)
!400 = !DILocation(line: 217, column: 20, scope: !317, inlinedAt: !379)
!401 = !DILocation(line: 217, column: 29, scope: !317, inlinedAt: !379)
!402 = !DILocation(line: 217, column: 9, scope: !317, inlinedAt: !379)
!403 = !DILocation(line: 212, column: 40, scope: !317, inlinedAt: !379)
!404 = !DILocation(line: 218, column: 9, scope: !317, inlinedAt: !379)
!405 = !DILocation(line: 212, column: 43, scope: !317, inlinedAt: !379)
!406 = !DILocation(line: 220, column: 24, scope: !317, inlinedAt: !379)
!407 = !DILocation(line: 220, column: 30, scope: !317, inlinedAt: !379)
!408 = !DILocation(line: 220, column: 43, scope: !317, inlinedAt: !379)
!409 = !DILocation(line: 220, column: 41, scope: !317, inlinedAt: !379)
!410 = !DILocation(line: 220, column: 54, scope: !317, inlinedAt: !379)
!411 = !DILocation(line: 220, column: 58, scope: !317, inlinedAt: !379)
!412 = !DILocation(line: 220, column: 28, scope: !317, inlinedAt: !379)
!413 = !DILocation(line: 220, column: 17, scope: !317, inlinedAt: !379)
!414 = !DILocation(line: 220, column: 12, scope: !317, inlinedAt: !379)
!415 = !DILocation(line: 219, column: 41, scope: !317, inlinedAt: !379)
!416 = !DILocation(line: 219, column: 5, scope: !317, inlinedAt: !379)
!417 = !DILocation(line: 156, column: 13, scope: !376)
!418 = !DILocation(line: 155, column: 13, scope: !201)
!419 = !DILocation(line: 156, column: 30, scope: !376)
!420 = !DILocation(line: 0, scope: !310)
!421 = !DILocation(line: 157, column: 66, scope: !422)
!422 = distinct !DILexicalBlock(scope: !201, file: !3, line: 157, column: 13)
!423 = !{!312, !108, i64 24}
!424 = !DILocation(line: 211, column: 34, scope: !317, inlinedAt: !425)
!425 = distinct !DILocation(line: 157, column: 13, scope: !422)
!426 = !DILocation(line: 211, column: 48, scope: !317, inlinedAt: !425)
!427 = !DILocation(line: 211, column: 62, scope: !317, inlinedAt: !425)
!428 = !DILocation(line: 211, column: 76, scope: !317, inlinedAt: !425)
!429 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !430)
!430 = distinct !DILocation(line: 213, column: 13, scope: !317, inlinedAt: !425)
!431 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !430)
!432 = !DILocation(line: 212, column: 12, scope: !317, inlinedAt: !425)
!433 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !434)
!434 = distinct !DILocation(line: 214, column: 13, scope: !317, inlinedAt: !425)
!435 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !434)
!436 = !DILocation(line: 212, column: 19, scope: !317, inlinedAt: !425)
!437 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !438)
!438 = distinct !DILocation(line: 215, column: 13, scope: !317, inlinedAt: !425)
!439 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !438)
!440 = !DILocation(line: 212, column: 26, scope: !317, inlinedAt: !425)
!441 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !442)
!442 = distinct !DILocation(line: 216, column: 13, scope: !317, inlinedAt: !425)
!443 = !DILocation(line: 57, column: 55, scope: !88, inlinedAt: !442)
!444 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !442)
!445 = !DILocation(line: 212, column: 33, scope: !317, inlinedAt: !425)
!446 = !DILocation(line: 217, column: 20, scope: !317, inlinedAt: !425)
!447 = !DILocation(line: 217, column: 29, scope: !317, inlinedAt: !425)
!448 = !DILocation(line: 217, column: 9, scope: !317, inlinedAt: !425)
!449 = !DILocation(line: 212, column: 40, scope: !317, inlinedAt: !425)
!450 = !DILocation(line: 218, column: 20, scope: !317, inlinedAt: !425)
!451 = !DILocation(line: 218, column: 29, scope: !317, inlinedAt: !425)
!452 = !DILocation(line: 218, column: 9, scope: !317, inlinedAt: !425)
!453 = !DILocation(line: 212, column: 43, scope: !317, inlinedAt: !425)
!454 = !DILocation(line: 220, column: 24, scope: !317, inlinedAt: !425)
!455 = !DILocation(line: 220, column: 30, scope: !317, inlinedAt: !425)
!456 = !DILocation(line: 220, column: 43, scope: !317, inlinedAt: !425)
!457 = !DILocation(line: 220, column: 41, scope: !317, inlinedAt: !425)
!458 = !DILocation(line: 220, column: 54, scope: !317, inlinedAt: !425)
!459 = !DILocation(line: 220, column: 58, scope: !317, inlinedAt: !425)
!460 = !DILocation(line: 220, column: 28, scope: !317, inlinedAt: !425)
!461 = !DILocation(line: 220, column: 17, scope: !317, inlinedAt: !425)
!462 = !DILocation(line: 220, column: 12, scope: !317, inlinedAt: !425)
!463 = !DILocation(line: 219, column: 41, scope: !317, inlinedAt: !425)
!464 = !DILocation(line: 219, column: 5, scope: !317, inlinedAt: !425)
!465 = !DILocation(line: 158, column: 13, scope: !422)
!466 = !DILocation(line: 157, column: 13, scope: !201)
!467 = !DILocation(line: 158, column: 30, scope: !422)
!468 = !DILocation(line: 0, scope: !376)
!469 = !DILocation(line: 159, column: 66, scope: !470)
!470 = distinct !DILexicalBlock(scope: !201, file: !3, line: 159, column: 13)
!471 = !{!312, !108, i64 16}
!472 = !DILocation(line: 211, column: 34, scope: !317, inlinedAt: !473)
!473 = distinct !DILocation(line: 159, column: 13, scope: !470)
!474 = !DILocation(line: 211, column: 48, scope: !317, inlinedAt: !473)
!475 = !DILocation(line: 211, column: 62, scope: !317, inlinedAt: !473)
!476 = !DILocation(line: 211, column: 76, scope: !317, inlinedAt: !473)
!477 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !478)
!478 = distinct !DILocation(line: 213, column: 13, scope: !317, inlinedAt: !473)
!479 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !478)
!480 = !DILocation(line: 212, column: 12, scope: !317, inlinedAt: !473)
!481 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !482)
!482 = distinct !DILocation(line: 214, column: 13, scope: !317, inlinedAt: !473)
!483 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !482)
!484 = !DILocation(line: 212, column: 19, scope: !317, inlinedAt: !473)
!485 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !486)
!486 = distinct !DILocation(line: 215, column: 13, scope: !317, inlinedAt: !473)
!487 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !486)
!488 = !DILocation(line: 212, column: 26, scope: !317, inlinedAt: !473)
!489 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !490)
!490 = distinct !DILocation(line: 216, column: 13, scope: !317, inlinedAt: !473)
!491 = !DILocation(line: 57, column: 55, scope: !88, inlinedAt: !490)
!492 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !490)
!493 = !DILocation(line: 212, column: 33, scope: !317, inlinedAt: !473)
!494 = !DILocation(line: 217, column: 9, scope: !317, inlinedAt: !473)
!495 = !DILocation(line: 212, column: 40, scope: !317, inlinedAt: !473)
!496 = !DILocation(line: 218, column: 20, scope: !317, inlinedAt: !473)
!497 = !DILocation(line: 218, column: 29, scope: !317, inlinedAt: !473)
!498 = !DILocation(line: 218, column: 9, scope: !317, inlinedAt: !473)
!499 = !DILocation(line: 212, column: 43, scope: !317, inlinedAt: !473)
!500 = !DILocation(line: 220, column: 24, scope: !317, inlinedAt: !473)
!501 = !DILocation(line: 220, column: 30, scope: !317, inlinedAt: !473)
!502 = !DILocation(line: 220, column: 43, scope: !317, inlinedAt: !473)
!503 = !DILocation(line: 220, column: 41, scope: !317, inlinedAt: !473)
!504 = !DILocation(line: 220, column: 54, scope: !317, inlinedAt: !473)
!505 = !DILocation(line: 220, column: 58, scope: !317, inlinedAt: !473)
!506 = !DILocation(line: 220, column: 28, scope: !317, inlinedAt: !473)
!507 = !DILocation(line: 220, column: 17, scope: !317, inlinedAt: !473)
!508 = !DILocation(line: 220, column: 12, scope: !317, inlinedAt: !473)
!509 = !DILocation(line: 219, column: 41, scope: !317, inlinedAt: !473)
!510 = !DILocation(line: 219, column: 5, scope: !317, inlinedAt: !473)
!511 = !DILocation(line: 160, column: 13, scope: !470)
!512 = !DILocation(line: 159, column: 13, scope: !201)
!513 = !DILocation(line: 160, column: 30, scope: !470)
!514 = !DILocation(line: 0, scope: !422)
!515 = !DILocation(line: 161, column: 5, scope: !139)
!516 = !DILocation(line: 163, column: 15, scope: !517)
!517 = distinct !DILexicalBlock(scope: !139, file: !3, line: 163, column: 9)
!518 = !DILocation(line: 163, column: 22, scope: !517)
!519 = !DILocation(line: 163, column: 19, scope: !517)
!520 = !DILocation(line: 164, column: 14, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !3, line: 163, column: 37)
!522 = !DILocation(line: 165, column: 65, scope: !521)
!523 = !DILocation(line: 165, column: 9, scope: !521)
!524 = !DILocation(line: 166, column: 9, scope: !521)
!525 = !DILocation(line: 167, column: 9, scope: !521)
!526 = !DILocation(line: 168, column: 5, scope: !521)
!527 = !DILocation(line: 171, column: 15, scope: !528)
!528 = distinct !DILexicalBlock(scope: !139, file: !3, line: 171, column: 9)
!529 = !DILocation(line: 171, column: 9, scope: !139)
!530 = !DILocation(line: 172, column: 27, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !3, line: 172, column: 13)
!532 = distinct !DILexicalBlock(scope: !528, file: !3, line: 171, column: 21)
!533 = !DILocation(line: 172, column: 31, scope: !531)
!534 = !DILocation(line: 172, column: 13, scope: !532)
!535 = !DILocation(line: 173, column: 13, scope: !536)
!536 = distinct !DILexicalBlock(scope: !531, file: !3, line: 172, column: 42)
!537 = !{!538, !109, i64 56}
!538 = !{!"", !313, i64 0, !313, i64 16, !313, i64 32, !313, i64 48, !313, i64 64, !313, i64 80, !313, i64 96, !313, i64 112}
!539 = !{!538, !314, i64 48}
!540 = !DILocation(line: 174, column: 13, scope: !536)
!541 = !{!538, !109, i64 120}
!542 = !{!538, !314, i64 112}
!543 = !DILocation(line: 175, column: 13, scope: !536)
!544 = !{!538, !109, i64 88}
!545 = !{!538, !314, i64 80}
!546 = !DILocation(line: 176, column: 9, scope: !536)
!547 = !DILocation(line: 177, column: 27, scope: !548)
!548 = distinct !DILexicalBlock(scope: !532, file: !3, line: 177, column: 13)
!549 = !DILocation(line: 177, column: 31, scope: !548)
!550 = !DILocation(line: 177, column: 13, scope: !532)
!551 = !DILocation(line: 178, column: 13, scope: !552)
!552 = distinct !DILexicalBlock(scope: !548, file: !3, line: 177, column: 42)
!553 = !{!538, !109, i64 8}
!554 = !{!538, !314, i64 0}
!555 = !DILocation(line: 179, column: 13, scope: !552)
!556 = !{!538, !109, i64 72}
!557 = !{!538, !314, i64 64}
!558 = !DILocation(line: 180, column: 13, scope: !552)
!559 = !{!538, !109, i64 104}
!560 = !{!538, !314, i64 96}
!561 = !DILocation(line: 181, column: 9, scope: !552)
!562 = !DILocation(line: 182, column: 28, scope: !563)
!563 = distinct !DILexicalBlock(scope: !532, file: !3, line: 182, column: 13)
!564 = !DILocation(line: 182, column: 32, scope: !563)
!565 = !DILocation(line: 182, column: 13, scope: !532)
!566 = !DILocation(line: 183, column: 13, scope: !567)
!567 = distinct !DILexicalBlock(scope: !563, file: !3, line: 182, column: 43)
!568 = !{!538, !109, i64 40}
!569 = !{!538, !314, i64 32}
!570 = !DILocation(line: 184, column: 13, scope: !567)
!571 = !DILocation(line: 185, column: 13, scope: !567)
!572 = !DILocation(line: 186, column: 9, scope: !567)
!573 = !DILocation(line: 187, column: 28, scope: !574)
!574 = distinct !DILexicalBlock(scope: !532, file: !3, line: 187, column: 13)
!575 = !DILocation(line: 187, column: 32, scope: !574)
!576 = !DILocation(line: 187, column: 13, scope: !532)
!577 = !DILocation(line: 188, column: 13, scope: !578)
!578 = distinct !DILexicalBlock(scope: !574, file: !3, line: 187, column: 43)
!579 = !{!538, !109, i64 24}
!580 = !{!538, !314, i64 16}
!581 = !DILocation(line: 189, column: 13, scope: !578)
!582 = !DILocation(line: 190, column: 13, scope: !578)
!583 = !DILocation(line: 191, column: 9, scope: !578)
!584 = !DILocation(line: 193, column: 19, scope: !139)
!585 = !{i64 0, i64 8, !586, i64 8, i64 1, !587}
!586 = !{!314, !314, i64 0}
!587 = !{!109, !109, i64 0}
!588 = !DILocation(line: 194, column: 12, scope: !139)
!589 = !DILocation(line: 194, column: 24, scope: !139)
!590 = !{i64 0, i64 8, !586, i64 8, i64 1, !587, i64 16, i64 8, !586, i64 24, i64 1, !587, i64 32, i64 8, !586, i64 40, i64 1, !587, i64 48, i64 8, !586, i64 56, i64 1, !587, i64 64, i64 8, !586, i64 72, i64 1, !587, i64 80, i64 8, !586, i64 88, i64 1, !587, i64 96, i64 8, !586, i64 104, i64 1, !587, i64 112, i64 8, !586, i64 120, i64 1, !587}
!591 = !DILocation(line: 195, column: 12, scope: !139)
!592 = !DILocation(line: 195, column: 19, scope: !139)
!593 = !{i64 0, i64 8, !586, i64 8, i64 1, !587, i64 16, i64 8, !107, i64 24, i64 8, !107, i64 32, i64 8, !107, i64 40, i64 8, !107}
!594 = !DILocation(line: 197, column: 1, scope: !139)
!595 = !DILocation(line: 211, column: 34, scope: !317)
!596 = !DILocation(line: 211, column: 48, scope: !317)
!597 = !DILocation(line: 211, column: 62, scope: !317)
!598 = !DILocation(line: 211, column: 76, scope: !317)
!599 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !600)
!600 = distinct !DILocation(line: 213, column: 13, scope: !317)
!601 = !DILocation(line: 57, column: 55, scope: !88, inlinedAt: !600)
!602 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !600)
!603 = !DILocation(line: 212, column: 12, scope: !317)
!604 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !605)
!605 = distinct !DILocation(line: 214, column: 13, scope: !317)
!606 = !DILocation(line: 57, column: 55, scope: !88, inlinedAt: !605)
!607 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !605)
!608 = !DILocation(line: 212, column: 19, scope: !317)
!609 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !610)
!610 = distinct !DILocation(line: 215, column: 13, scope: !317)
!611 = !DILocation(line: 57, column: 55, scope: !88, inlinedAt: !610)
!612 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !610)
!613 = !DILocation(line: 212, column: 26, scope: !317)
!614 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !615)
!615 = distinct !DILocation(line: 216, column: 13, scope: !317)
!616 = !DILocation(line: 57, column: 55, scope: !88, inlinedAt: !615)
!617 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !615)
!618 = !DILocation(line: 212, column: 33, scope: !317)
!619 = !DILocation(line: 217, column: 20, scope: !317)
!620 = !DILocation(line: 217, column: 29, scope: !317)
!621 = !DILocation(line: 217, column: 9, scope: !317)
!622 = !DILocation(line: 212, column: 40, scope: !317)
!623 = !DILocation(line: 218, column: 20, scope: !317)
!624 = !DILocation(line: 218, column: 29, scope: !317)
!625 = !DILocation(line: 218, column: 9, scope: !317)
!626 = !DILocation(line: 212, column: 43, scope: !317)
!627 = !DILocation(line: 220, column: 24, scope: !317)
!628 = !DILocation(line: 220, column: 30, scope: !317)
!629 = !DILocation(line: 220, column: 43, scope: !317)
!630 = !DILocation(line: 220, column: 41, scope: !317)
!631 = !DILocation(line: 220, column: 54, scope: !317)
!632 = !DILocation(line: 220, column: 58, scope: !317)
!633 = !DILocation(line: 220, column: 28, scope: !317)
!634 = !DILocation(line: 220, column: 17, scope: !317)
!635 = !DILocation(line: 220, column: 12, scope: !317)
!636 = !DILocation(line: 219, column: 41, scope: !317)
!637 = !DILocation(line: 219, column: 5, scope: !317)
!638 = distinct !DISubprogram(name: "geohashGetAreasByRadiusWGS84", scope: !3, file: !3, line: 199, type: !140, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !639)
!639 = !{!640, !641, !642}
!640 = !DILocalVariable(name: "longitude", arg: 1, scope: !638, file: !3, line: 199, type: !9)
!641 = !DILocalVariable(name: "latitude", arg: 2, scope: !638, file: !3, line: 199, type: !9)
!642 = !DILocalVariable(name: "radius_meters", arg: 3, scope: !638, file: !3, line: 200, type: !9)
!643 = !DILocation(line: 199, column: 51, scope: !638)
!644 = !DILocation(line: 199, column: 69, scope: !638)
!645 = !DILocation(line: 200, column: 51, scope: !638)
!646 = !DILocation(line: 201, column: 12, scope: !638)
!647 = !DILocation(line: 201, column: 5, scope: !638)
!648 = distinct !DISubprogram(name: "geohashAlign52Bits", scope: !3, file: !3, line: 204, type: !649, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !653)
!649 = !DISubroutineType(types: !650)
!650 = !{!651, !652}
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashFix52Bits", file: !143, line: 41, baseType: !152)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!653 = !{!654, !655}
!654 = !DILocalVariable(name: "hash", arg: 1, scope: !648, file: !3, line: 204, type: !652)
!655 = !DILocalVariable(name: "bits", scope: !648, file: !3, line: 205, type: !152)
!656 = !DILocation(line: 204, column: 55, scope: !648)
!657 = !DILocation(line: 205, column: 14, scope: !648)
!658 = !DILocation(line: 206, column: 20, scope: !648)
!659 = !DILocation(line: 206, column: 30, scope: !648)
!660 = !DILocation(line: 206, column: 18, scope: !648)
!661 = !DILocation(line: 206, column: 10, scope: !648)
!662 = !DILocation(line: 207, column: 5, scope: !648)
!663 = distinct !DISubprogram(name: "geohashGetDistanceIfInRadius", scope: !3, file: !3, line: 223, type: !664, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !666)
!664 = !DISubroutineType(types: !665)
!665 = !{!30, !9, !9, !9, !9, !9, !73}
!666 = !{!667, !668, !669, !670, !671, !672}
!667 = !DILocalVariable(name: "x1", arg: 1, scope: !663, file: !3, line: 223, type: !9)
!668 = !DILocalVariable(name: "y1", arg: 2, scope: !663, file: !3, line: 223, type: !9)
!669 = !DILocalVariable(name: "x2", arg: 3, scope: !663, file: !3, line: 224, type: !9)
!670 = !DILocalVariable(name: "y2", arg: 4, scope: !663, file: !3, line: 224, type: !9)
!671 = !DILocalVariable(name: "radius", arg: 5, scope: !663, file: !3, line: 224, type: !9)
!672 = !DILocalVariable(name: "distance", arg: 6, scope: !663, file: !3, line: 225, type: !73)
!673 = !DILocation(line: 223, column: 41, scope: !663)
!674 = !DILocation(line: 223, column: 52, scope: !663)
!675 = !DILocation(line: 224, column: 41, scope: !663)
!676 = !DILocation(line: 224, column: 52, scope: !663)
!677 = !DILocation(line: 224, column: 63, scope: !663)
!678 = !DILocation(line: 225, column: 42, scope: !663)
!679 = !DILocation(line: 211, column: 34, scope: !317, inlinedAt: !680)
!680 = distinct !DILocation(line: 226, column: 17, scope: !663)
!681 = !DILocation(line: 211, column: 48, scope: !317, inlinedAt: !680)
!682 = !DILocation(line: 211, column: 62, scope: !317, inlinedAt: !680)
!683 = !DILocation(line: 211, column: 76, scope: !317, inlinedAt: !680)
!684 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !685)
!685 = distinct !DILocation(line: 213, column: 13, scope: !317, inlinedAt: !680)
!686 = !DILocation(line: 57, column: 55, scope: !88, inlinedAt: !685)
!687 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !685)
!688 = !DILocation(line: 212, column: 12, scope: !317, inlinedAt: !680)
!689 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !690)
!690 = distinct !DILocation(line: 214, column: 13, scope: !317, inlinedAt: !680)
!691 = !DILocation(line: 57, column: 55, scope: !88, inlinedAt: !690)
!692 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !690)
!693 = !DILocation(line: 212, column: 19, scope: !317, inlinedAt: !680)
!694 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !695)
!695 = distinct !DILocation(line: 215, column: 13, scope: !317, inlinedAt: !680)
!696 = !DILocation(line: 57, column: 55, scope: !88, inlinedAt: !695)
!697 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !695)
!698 = !DILocation(line: 212, column: 26, scope: !317, inlinedAt: !680)
!699 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !700)
!700 = distinct !DILocation(line: 216, column: 13, scope: !317, inlinedAt: !680)
!701 = !DILocation(line: 57, column: 55, scope: !88, inlinedAt: !700)
!702 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !700)
!703 = !DILocation(line: 212, column: 33, scope: !317, inlinedAt: !680)
!704 = !DILocation(line: 217, column: 20, scope: !317, inlinedAt: !680)
!705 = !DILocation(line: 217, column: 29, scope: !317, inlinedAt: !680)
!706 = !DILocation(line: 217, column: 9, scope: !317, inlinedAt: !680)
!707 = !DILocation(line: 212, column: 40, scope: !317, inlinedAt: !680)
!708 = !DILocation(line: 218, column: 20, scope: !317, inlinedAt: !680)
!709 = !DILocation(line: 218, column: 29, scope: !317, inlinedAt: !680)
!710 = !DILocation(line: 218, column: 9, scope: !317, inlinedAt: !680)
!711 = !DILocation(line: 212, column: 43, scope: !317, inlinedAt: !680)
!712 = !DILocation(line: 220, column: 24, scope: !317, inlinedAt: !680)
!713 = !DILocation(line: 220, column: 30, scope: !317, inlinedAt: !680)
!714 = !DILocation(line: 220, column: 43, scope: !317, inlinedAt: !680)
!715 = !DILocation(line: 220, column: 41, scope: !317, inlinedAt: !680)
!716 = !DILocation(line: 220, column: 54, scope: !317, inlinedAt: !680)
!717 = !DILocation(line: 220, column: 58, scope: !317, inlinedAt: !680)
!718 = !DILocation(line: 220, column: 28, scope: !317, inlinedAt: !680)
!719 = !DILocation(line: 220, column: 17, scope: !317, inlinedAt: !680)
!720 = !DILocation(line: 220, column: 12, scope: !317, inlinedAt: !680)
!721 = !DILocation(line: 219, column: 41, scope: !317, inlinedAt: !680)
!722 = !DILocation(line: 219, column: 5, scope: !317, inlinedAt: !680)
!723 = !DILocation(line: 226, column: 15, scope: !663)
!724 = !DILocation(line: 227, column: 19, scope: !725)
!725 = distinct !DILexicalBlock(scope: !663, file: !3, line: 227, column: 9)
!726 = !DILocation(line: 227, column: 9, scope: !663)
!727 = !DILocation(line: 0, scope: !663)
!728 = !DILocation(line: 227, column: 29, scope: !725)
!729 = !DILocation(line: 229, column: 1, scope: !663)
!730 = distinct !DISubprogram(name: "geohashGetDistanceIfInRadiusWGS84", scope: !3, file: !3, line: 231, type: !664, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !731)
!731 = !{!732, !733, !734, !735, !736, !737}
!732 = !DILocalVariable(name: "x1", arg: 1, scope: !730, file: !3, line: 231, type: !9)
!733 = !DILocalVariable(name: "y1", arg: 2, scope: !730, file: !3, line: 231, type: !9)
!734 = !DILocalVariable(name: "x2", arg: 3, scope: !730, file: !3, line: 231, type: !9)
!735 = !DILocalVariable(name: "y2", arg: 4, scope: !730, file: !3, line: 232, type: !9)
!736 = !DILocalVariable(name: "radius", arg: 5, scope: !730, file: !3, line: 232, type: !9)
!737 = !DILocalVariable(name: "distance", arg: 6, scope: !730, file: !3, line: 233, type: !73)
!738 = !DILocation(line: 231, column: 46, scope: !730)
!739 = !DILocation(line: 231, column: 57, scope: !730)
!740 = !DILocation(line: 231, column: 68, scope: !730)
!741 = !DILocation(line: 232, column: 46, scope: !730)
!742 = !DILocation(line: 232, column: 57, scope: !730)
!743 = !DILocation(line: 233, column: 47, scope: !730)
!744 = !DILocation(line: 223, column: 41, scope: !663, inlinedAt: !745)
!745 = distinct !DILocation(line: 234, column: 12, scope: !730)
!746 = !DILocation(line: 223, column: 52, scope: !663, inlinedAt: !745)
!747 = !DILocation(line: 224, column: 41, scope: !663, inlinedAt: !745)
!748 = !DILocation(line: 224, column: 52, scope: !663, inlinedAt: !745)
!749 = !DILocation(line: 224, column: 63, scope: !663, inlinedAt: !745)
!750 = !DILocation(line: 225, column: 42, scope: !663, inlinedAt: !745)
!751 = !DILocation(line: 211, column: 34, scope: !317, inlinedAt: !752)
!752 = distinct !DILocation(line: 226, column: 17, scope: !663, inlinedAt: !745)
!753 = !DILocation(line: 211, column: 48, scope: !317, inlinedAt: !752)
!754 = !DILocation(line: 211, column: 62, scope: !317, inlinedAt: !752)
!755 = !DILocation(line: 211, column: 76, scope: !317, inlinedAt: !752)
!756 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !757)
!757 = distinct !DILocation(line: 213, column: 13, scope: !317, inlinedAt: !752)
!758 = !DILocation(line: 57, column: 55, scope: !88, inlinedAt: !757)
!759 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !757)
!760 = !DILocation(line: 212, column: 12, scope: !317, inlinedAt: !752)
!761 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !762)
!762 = distinct !DILocation(line: 214, column: 13, scope: !317, inlinedAt: !752)
!763 = !DILocation(line: 57, column: 55, scope: !88, inlinedAt: !762)
!764 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !762)
!765 = !DILocation(line: 212, column: 19, scope: !317, inlinedAt: !752)
!766 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !767)
!767 = distinct !DILocation(line: 215, column: 13, scope: !317, inlinedAt: !752)
!768 = !DILocation(line: 57, column: 55, scope: !88, inlinedAt: !767)
!769 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !767)
!770 = !DILocation(line: 212, column: 26, scope: !317, inlinedAt: !752)
!771 = !DILocation(line: 57, column: 37, scope: !88, inlinedAt: !772)
!772 = distinct !DILocation(line: 216, column: 13, scope: !317, inlinedAt: !752)
!773 = !DILocation(line: 57, column: 55, scope: !88, inlinedAt: !772)
!774 = !DILocation(line: 57, column: 44, scope: !88, inlinedAt: !772)
!775 = !DILocation(line: 212, column: 33, scope: !317, inlinedAt: !752)
!776 = !DILocation(line: 217, column: 20, scope: !317, inlinedAt: !752)
!777 = !DILocation(line: 217, column: 29, scope: !317, inlinedAt: !752)
!778 = !DILocation(line: 217, column: 9, scope: !317, inlinedAt: !752)
!779 = !DILocation(line: 212, column: 40, scope: !317, inlinedAt: !752)
!780 = !DILocation(line: 218, column: 20, scope: !317, inlinedAt: !752)
!781 = !DILocation(line: 218, column: 29, scope: !317, inlinedAt: !752)
!782 = !DILocation(line: 218, column: 9, scope: !317, inlinedAt: !752)
!783 = !DILocation(line: 212, column: 43, scope: !317, inlinedAt: !752)
!784 = !DILocation(line: 220, column: 24, scope: !317, inlinedAt: !752)
!785 = !DILocation(line: 220, column: 30, scope: !317, inlinedAt: !752)
!786 = !DILocation(line: 220, column: 43, scope: !317, inlinedAt: !752)
!787 = !DILocation(line: 220, column: 41, scope: !317, inlinedAt: !752)
!788 = !DILocation(line: 220, column: 54, scope: !317, inlinedAt: !752)
!789 = !DILocation(line: 220, column: 58, scope: !317, inlinedAt: !752)
!790 = !DILocation(line: 220, column: 28, scope: !317, inlinedAt: !752)
!791 = !DILocation(line: 220, column: 17, scope: !317, inlinedAt: !752)
!792 = !DILocation(line: 220, column: 12, scope: !317, inlinedAt: !752)
!793 = !DILocation(line: 219, column: 41, scope: !317, inlinedAt: !752)
!794 = !DILocation(line: 219, column: 5, scope: !317, inlinedAt: !752)
!795 = !DILocation(line: 226, column: 15, scope: !663, inlinedAt: !745)
!796 = !DILocation(line: 227, column: 19, scope: !725, inlinedAt: !745)
!797 = !DILocation(line: 227, column: 9, scope: !663, inlinedAt: !745)
!798 = !DILocation(line: 0, scope: !663, inlinedAt: !745)
!799 = !DILocation(line: 227, column: 29, scope: !725, inlinedAt: !745)
!800 = !DILocation(line: 229, column: 1, scope: !663, inlinedAt: !745)
!801 = !DILocation(line: 234, column: 5, scope: !730)
