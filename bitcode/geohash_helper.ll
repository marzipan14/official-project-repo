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
  br i1 %3, label %31, label %4, !dbg !35

; <label>:4:                                      ; preds = %2
  %5 = fcmp olt double %0, 0x41731C05E5EB851F, !dbg !37
  br i1 %5, label %6, label %12, !dbg !38

; <label>:6:                                      ; preds = %4, %6
  %7 = phi i32 [ %10, %6 ], [ 1, %4 ]
  %8 = phi double [ %9, %6 ], [ %0, %4 ]
  %9 = fmul double %8, 2.000000e+00, !dbg !39
  %10 = add nuw nsw i32 %7, 1, !dbg !41
  %11 = fcmp olt double %9, 0x41731C05E5EB851F, !dbg !37
  br i1 %11, label %6, label %12, !dbg !38, !llvm.loop !42

; <label>:12:                                     ; preds = %6, %4
  %13 = phi i32 [ 1, %4 ], [ %10, %6 ], !dbg !44
  %14 = add nsw i32 %13, -2, !dbg !45
  %15 = fcmp ogt double %1, 6.600000e+01, !dbg !46
  %16 = fcmp olt double %1, -6.600000e+01, !dbg !48
  %17 = or i1 %15, %16, !dbg !49
  br i1 %17, label %18, label %24, !dbg !49

; <label>:18:                                     ; preds = %12
  %19 = fcmp ogt double %1, 8.000000e+01, !dbg !50
  %20 = fcmp olt double %1, -8.000000e+01, !dbg !53
  %21 = or i1 %19, %20, !dbg !54
  %22 = select i1 %21, i32 -4, i32 -3, !dbg !54
  %23 = add nsw i32 %13, %22, !dbg !54
  br label %24, !dbg !54

; <label>:24:                                     ; preds = %18, %12
  %25 = phi i32 [ %14, %12 ], [ %23, %18 ], !dbg !55
  %26 = icmp sgt i32 %25, 1, !dbg !56
  %27 = select i1 %26, i32 %25, i32 1, !dbg !56
  %28 = icmp slt i32 %27, 26, !dbg !57
  %29 = select i1 %28, i32 %27, i32 26, !dbg !57
  %30 = trunc i32 %29 to i8, !dbg !58
  br label %31

; <label>:31:                                     ; preds = %2, %24
  %32 = phi i8 [ %30, %24 ], [ 26, %2 ], !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  ret i8 %32, !dbg !59
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @geohashBoundingBox(double, double, double, double*) local_unnamed_addr #0 !dbg !60 {
  %5 = icmp eq double* %3, null, !dbg !73
  br i1 %5, label %23, label %6, !dbg !75

; <label>:6:                                      ; preds = %4
  %7 = fdiv double %2, 0x41584F6F63E51090, !dbg !76
  %8 = fmul double %1, 0x3F91DF46A2529D39, !dbg !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  %9 = tail call double @cos(double %8) #4, !dbg !86
  %10 = fdiv double %7, %9, !dbg !87
  %11 = fdiv double %10, 0x3F91DF46A2529D39, !dbg !93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  %12 = fsub double %0, %11, !dbg !95
  store double %12, double* %3, align 8, !dbg !96, !tbaa !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  %13 = tail call double @cos(double %8) #4, !dbg !104
  %14 = fdiv double %7, %13, !dbg !105
  %15 = fdiv double %14, 0x3F91DF46A2529D39, !dbg !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !109
  %16 = fadd double %15, %0, !dbg !110
  %17 = getelementptr inbounds double, double* %3, i64 2, !dbg !111
  store double %16, double* %17, align 8, !dbg !112, !tbaa !97
  %18 = fdiv double %7, 0x3F91DF46A2529D39, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  %19 = fsub double %1, %18, !dbg !117
  %20 = getelementptr inbounds double, double* %3, i64 1, !dbg !118
  store double %19, double* %20, align 8, !dbg !119, !tbaa !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  %21 = fadd double %18, %1, !dbg !123
  %22 = getelementptr inbounds double, double* %3, i64 3, !dbg !124
  store double %21, double* %22, align 8, !dbg !125, !tbaa !97
  br label %23, !dbg !126

; <label>:23:                                     ; preds = %4, %6
  %24 = phi i32 [ 1, %6 ], [ 0, %4 ], !dbg !127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  ret i32 %24, !dbg !128
}

; Function Attrs: noredzone
declare dso_local double @cos(double) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @geohashGetAreasByRadius(%struct.GeoHashRadius* noalias nocapture sret, double, double, double) local_unnamed_addr #0 !dbg !129 {
  %5 = alloca %struct.GeoHashRange, align 8
  %6 = alloca %struct.GeoHashRange, align 8
  %7 = alloca %struct.GeoHashBits, align 8
  %8 = alloca %struct.GeoHashNeighbors, align 8
  %9 = alloca %struct.GeoHashArea, align 8
  %10 = alloca %struct.GeoHashArea, align 8
  %11 = alloca %struct.GeoHashArea, align 8
  %12 = alloca %struct.GeoHashArea, align 8
  %13 = alloca %struct.GeoHashArea, align 8
  %14 = bitcast %struct.GeoHashRange* %5 to i8*, !dbg !198
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #5, !dbg !198
  %15 = bitcast %struct.GeoHashRange* %6 to i8*, !dbg !198
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #5, !dbg !198
  %16 = bitcast %struct.GeoHashBits* %7 to i8*, !dbg !200
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #5, !dbg !200
  %17 = bitcast %struct.GeoHashNeighbors* %8 to i8*, !dbg !201
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %17) #5, !dbg !201
  %18 = bitcast %struct.GeoHashArea* %9 to i8*, !dbg !202
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %18) #5, !dbg !202
  %19 = fdiv double %3, 0x41584F6F63E51090, !dbg !208
  %20 = fmul double %2, 0x3F91DF46A2529D39, !dbg !211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !212
  %21 = tail call double @cos(double %20) #4, !dbg !213
  %22 = fdiv double %19, %21, !dbg !214
  %23 = fdiv double %22, 0x3F91DF46A2529D39, !dbg !217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  %24 = fsub double %1, %23, !dbg !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !223
  %25 = tail call double @cos(double %20) #4, !dbg !224
  %26 = fdiv double %19, %25, !dbg !225
  %27 = fdiv double %26, 0x3F91DF46A2529D39, !dbg !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !229
  %28 = fadd double %27, %1, !dbg !230
  %29 = fdiv double %19, 0x3F91DF46A2529D39, !dbg !233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  %30 = fsub double %2, %29, !dbg !235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !238
  %31 = fadd double %29, %2, !dbg !239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  %32 = fcmp oeq double %3, 0.000000e+00, !dbg !248
  br i1 %32, label %60, label %33, !dbg !249

; <label>:33:                                     ; preds = %4
  %34 = fcmp olt double %3, 0x41731C05E5EB851F, !dbg !251
  br i1 %34, label %35, label %41, !dbg !252

; <label>:35:                                     ; preds = %33, %35
  %36 = phi i32 [ %39, %35 ], [ 1, %33 ]
  %37 = phi double [ %38, %35 ], [ %3, %33 ]
  %38 = fmul double %37, 2.000000e+00, !dbg !253
  %39 = add nuw nsw i32 %36, 1, !dbg !254
  %40 = fcmp olt double %38, 0x41731C05E5EB851F, !dbg !251
  br i1 %40, label %35, label %41, !dbg !252, !llvm.loop !42

; <label>:41:                                     ; preds = %35, %33
  %42 = phi i32 [ 1, %33 ], [ %39, %35 ], !dbg !255
  %43 = add nsw i32 %42, -2, !dbg !256
  %44 = fcmp ogt double %2, 6.600000e+01, !dbg !257
  %45 = fcmp olt double %2, -6.600000e+01, !dbg !258
  %46 = or i1 %44, %45, !dbg !259
  br i1 %46, label %47, label %53, !dbg !259

; <label>:47:                                     ; preds = %41
  %48 = fcmp ogt double %2, 8.000000e+01, !dbg !260
  %49 = fcmp olt double %2, -8.000000e+01, !dbg !261
  %50 = or i1 %48, %49, !dbg !262
  %51 = select i1 %50, i32 -4, i32 -3, !dbg !262
  %52 = add nsw i32 %42, %51, !dbg !262
  br label %53, !dbg !262

; <label>:53:                                     ; preds = %47, %41
  %54 = phi i32 [ %43, %41 ], [ %52, %47 ], !dbg !263
  %55 = icmp sgt i32 %54, 1, !dbg !264
  %56 = select i1 %55, i32 %54, i32 1, !dbg !264
  %57 = icmp slt i32 %56, 26, !dbg !265
  %58 = select i1 %57, i32 %56, i32 26, !dbg !265
  %59 = trunc i32 %58 to i8, !dbg !266
  br label %60

; <label>:60:                                     ; preds = %4, %53
  %61 = phi i8 [ %59, %53 ], [ 26, %4 ], !dbg !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  %62 = zext i8 %61 to i32, !dbg !268
  call void @geohashGetCoordRange(%struct.GeoHashRange* nonnull %5, %struct.GeoHashRange* nonnull %6) #4, !dbg !272
  %63 = call i32 @geohashEncode(%struct.GeoHashRange* nonnull %5, %struct.GeoHashRange* nonnull %6, double %1, double %2, i8 zeroext %61, %struct.GeoHashBits* nonnull %7) #4, !dbg !274
  call void @geohashNeighbors(%struct.GeoHashBits* nonnull %7, %struct.GeoHashNeighbors* nonnull %8) #4, !dbg !276
  %64 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %5, i64 0, i32 0, !dbg !277
  %65 = load double, double* %64, align 8, !dbg !277
  %66 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %5, i64 0, i32 1, !dbg !277
  %67 = load double, double* %66, align 8, !dbg !277
  %68 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %6, i64 0, i32 0, !dbg !277
  %69 = load double, double* %68, align 8, !dbg !277
  %70 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %6, i64 0, i32 1, !dbg !277
  %71 = load double, double* %70, align 8, !dbg !277
  %72 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %7, i64 0, i32 0, !dbg !277
  %73 = load i64, i64* %72, align 8, !dbg !277
  %74 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %7, i64 0, i32 1, !dbg !277
  %75 = load i8, i8* %74, align 8, !dbg !277
  %76 = call i32 @geohashDecode(double %65, double %67, double %69, double %71, i64 %73, i8 %75, %struct.GeoHashArea* nonnull %9) #4, !dbg !277
  %77 = bitcast %struct.GeoHashArea* %10 to i8*, !dbg !280
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %77) #5, !dbg !280
  %78 = bitcast %struct.GeoHashArea* %11 to i8*, !dbg !280
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %78) #5, !dbg !280
  %79 = bitcast %struct.GeoHashArea* %12 to i8*, !dbg !280
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %79) #5, !dbg !280
  %80 = bitcast %struct.GeoHashArea* %13 to i8*, !dbg !280
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %80) #5, !dbg !280
  %81 = load double, double* %64, align 8, !dbg !281
  %82 = load double, double* %66, align 8, !dbg !281
  %83 = load double, double* %68, align 8, !dbg !281
  %84 = load double, double* %70, align 8, !dbg !281
  %85 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 0, i32 0, !dbg !281
  %86 = load i64, i64* %85, align 8, !dbg !281
  %87 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 0, i32 1, !dbg !281
  %88 = load i8, i8* %87, align 8, !dbg !281
  %89 = call i32 @geohashDecode(double %81, double %82, double %83, double %84, i64 %86, i8 %88, %struct.GeoHashArea* nonnull %10) #4, !dbg !281
  %90 = load double, double* %64, align 8, !dbg !283
  %91 = load double, double* %66, align 8, !dbg !283
  %92 = load double, double* %68, align 8, !dbg !283
  %93 = load double, double* %70, align 8, !dbg !283
  %94 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 3, i32 0, !dbg !283
  %95 = load i64, i64* %94, align 8, !dbg !283
  %96 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 3, i32 1, !dbg !283
  %97 = load i8, i8* %96, align 8, !dbg !283
  %98 = call i32 @geohashDecode(double %90, double %91, double %92, double %93, i64 %95, i8 %97, %struct.GeoHashArea* nonnull %11) #4, !dbg !283
  %99 = load double, double* %64, align 8, !dbg !285
  %100 = load double, double* %66, align 8, !dbg !285
  %101 = load double, double* %68, align 8, !dbg !285
  %102 = load double, double* %70, align 8, !dbg !285
  %103 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 1, i32 0, !dbg !285
  %104 = load i64, i64* %103, align 8, !dbg !285
  %105 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 1, i32 1, !dbg !285
  %106 = load i8, i8* %105, align 8, !dbg !285
  %107 = call i32 @geohashDecode(double %99, double %100, double %101, double %102, i64 %104, i8 %106, %struct.GeoHashArea* nonnull %12) #4, !dbg !285
  %108 = load double, double* %64, align 8, !dbg !287
  %109 = load double, double* %66, align 8, !dbg !287
  %110 = load double, double* %68, align 8, !dbg !287
  %111 = load double, double* %70, align 8, !dbg !287
  %112 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 2, i32 0, !dbg !287
  %113 = load i64, i64* %112, align 8, !dbg !287
  %114 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 2, i32 1, !dbg !287
  %115 = load i8, i8* %114, align 8, !dbg !287
  %116 = call i32 @geohashDecode(double %108, double %109, double %110, double %111, i64 %113, i8 %115, %struct.GeoHashArea* nonnull %13) #4, !dbg !287
  %117 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %10, i64 0, i32 2, i32 1, !dbg !289
  %118 = load double, double* %117, align 8, !dbg !289, !tbaa !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  %119 = fmul double %1, 0x3F91DF46A2529D39, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  %120 = fmul double %118, 0x3F91DF46A2529D39, !dbg !326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  %121 = fsub double %120, %20, !dbg !333
  %122 = fmul double %121, 5.000000e-01, !dbg !334
  %123 = call double @sin(double %122) #4, !dbg !335
  %124 = fsub double %119, %119, !dbg !337
  %125 = fmul double %124, 5.000000e-01, !dbg !338
  %126 = call double @sin(double %125) #4, !dbg !339
  %127 = fmul double %123, %123, !dbg !341
  %128 = call double @cos(double %20) #4, !dbg !342
  %129 = call double @cos(double %120) #4, !dbg !343
  %130 = fmul double %128, %129, !dbg !344
  %131 = fmul double %126, %130, !dbg !345
  %132 = fmul double %126, %131, !dbg !346
  %133 = fadd double %127, %132, !dbg !347
  %134 = call double @sqrt(double %133) #4, !dbg !348
  %135 = call double @asin(double %134) #4, !dbg !349
  %136 = fmul double %135, 0x41684F6F63E51090, !dbg !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  %137 = fcmp olt double %136, %3, !dbg !352
  %138 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %11, i64 0, i32 2, i32 0, !dbg !353
  %139 = load double, double* %138, align 8, !dbg !353, !tbaa !355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  %140 = fmul double %139, 0x3F91DF46A2529D39, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  %141 = fsub double %140, %20, !dbg !378
  %142 = fmul double %141, 5.000000e-01, !dbg !379
  %143 = call double @sin(double %142) #4, !dbg !380
  %144 = call double @sin(double %125) #4, !dbg !382
  %145 = fmul double %143, %143, !dbg !384
  %146 = call double @cos(double %20) #4, !dbg !385
  %147 = call double @cos(double %140) #4, !dbg !386
  %148 = fmul double %146, %147, !dbg !387
  %149 = fmul double %144, %148, !dbg !388
  %150 = fmul double %144, %149, !dbg !389
  %151 = fadd double %145, %150, !dbg !390
  %152 = call double @sqrt(double %151) #4, !dbg !391
  %153 = call double @asin(double %152) #4, !dbg !392
  %154 = fmul double %153, 0x41684F6F63E51090, !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  %155 = fcmp olt double %154, %3, !dbg !395
  %156 = or i1 %137, %155, !dbg !396
  %157 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %12, i64 0, i32 1, i32 1, !dbg !397
  %158 = load double, double* %157, align 8, !dbg !397, !tbaa !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  %159 = fmul double %158, 0x3F91DF46A2529D39, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  %160 = fsub double %20, %20, !dbg !422
  %161 = fmul double %160, 5.000000e-01, !dbg !423
  %162 = call double @sin(double %161) #4, !dbg !424
  %163 = fsub double %159, %119, !dbg !426
  %164 = fmul double %163, 5.000000e-01, !dbg !427
  %165 = call double @sin(double %164) #4, !dbg !428
  %166 = fmul double %162, %162, !dbg !430
  %167 = call double @cos(double %20) #4, !dbg !431
  %168 = call double @cos(double %20) #4, !dbg !432
  %169 = fmul double %167, %168, !dbg !433
  %170 = fmul double %165, %169, !dbg !434
  %171 = fmul double %165, %170, !dbg !435
  %172 = fadd double %166, %171, !dbg !436
  %173 = call double @sqrt(double %172) #4, !dbg !437
  %174 = call double @asin(double %173) #4, !dbg !438
  %175 = fmul double %174, 0x41684F6F63E51090, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  %176 = fcmp olt double %175, %3, !dbg !441
  %177 = or i1 %156, %176, !dbg !442
  %178 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %13, i64 0, i32 1, i32 0, !dbg !443
  %179 = load double, double* %178, align 8, !dbg !443, !tbaa !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  %180 = fmul double %179, 0x3F91DF46A2529D39, !dbg !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !466
  %181 = call double @sin(double %161) #4, !dbg !468
  %182 = fsub double %180, %119, !dbg !470
  %183 = fmul double %182, 5.000000e-01, !dbg !471
  %184 = call double @sin(double %183) #4, !dbg !472
  %185 = fmul double %181, %181, !dbg !474
  %186 = call double @cos(double %20) #4, !dbg !475
  %187 = call double @cos(double %20) #4, !dbg !476
  %188 = fmul double %186, %187, !dbg !477
  %189 = fmul double %184, %188, !dbg !478
  %190 = fmul double %184, %189, !dbg !479
  %191 = fadd double %185, %190, !dbg !480
  %192 = call double @sqrt(double %191) #4, !dbg !481
  %193 = call double @asin(double %192) #4, !dbg !482
  %194 = fmul double %193, 0x41684F6F63E51090, !dbg !483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  %195 = fcmp olt double %194, %3, !dbg !485
  %196 = or i1 %177, %195, !dbg !486
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %80) #5, !dbg !487
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %79) #5, !dbg !487
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %78) #5, !dbg !487
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %77) #5, !dbg !487
  %197 = icmp ugt i8 %61, 1, !dbg !488
  %198 = and i1 %197, %196, !dbg !490
  br i1 %198, label %199, label %210, !dbg !490

; <label>:199:                                    ; preds = %60
  %200 = add nsw i32 %62, -1, !dbg !491
  %201 = trunc i32 %200 to i8, !dbg !493
  %202 = call i32 @geohashEncode(%struct.GeoHashRange* nonnull %5, %struct.GeoHashRange* nonnull %6, double %1, double %2, i8 zeroext %201, %struct.GeoHashBits* nonnull %7) #4, !dbg !494
  call void @geohashNeighbors(%struct.GeoHashBits* nonnull %7, %struct.GeoHashNeighbors* nonnull %8) #4, !dbg !495
  %203 = load double, double* %64, align 8, !dbg !496
  %204 = load double, double* %66, align 8, !dbg !496
  %205 = load double, double* %68, align 8, !dbg !496
  %206 = load double, double* %70, align 8, !dbg !496
  %207 = load i64, i64* %72, align 8, !dbg !496
  %208 = load i8, i8* %74, align 8, !dbg !496
  %209 = call i32 @geohashDecode(double %203, double %204, double %205, double %206, i64 %207, i8 %208, %struct.GeoHashArea* nonnull %9) #4, !dbg !496
  br label %210, !dbg !497

; <label>:210:                                    ; preds = %199, %60
  %211 = phi i32 [ %200, %199 ], [ %62, %60 ], !dbg !498
  %212 = icmp sgt i32 %211, 1, !dbg !499
  br i1 %212, label %213, label %249, !dbg !501

; <label>:213:                                    ; preds = %210
  %214 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %9, i64 0, i32 2, i32 0, !dbg !502
  %215 = load double, double* %214, align 8, !dbg !502, !tbaa !355
  %216 = fcmp olt double %215, %30, !dbg !505
  br i1 %216, label %217, label %222, !dbg !506

; <label>:217:                                    ; preds = %213
  store i8 0, i8* %96, align 8, !dbg !507, !tbaa !509
  store i64 0, i64* %94, align 8, !dbg !507, !tbaa !511
  %218 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 7, i32 1, !dbg !512
  store i8 0, i8* %218, align 8, !dbg !512, !tbaa !513
  %219 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 7, i32 0, !dbg !512
  store i64 0, i64* %219, align 8, !dbg !512, !tbaa !514
  %220 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 5, i32 1, !dbg !515
  store i8 0, i8* %220, align 8, !dbg !515, !tbaa !516
  %221 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 5, i32 0, !dbg !515
  store i64 0, i64* %221, align 8, !dbg !515, !tbaa !517
  br label %222, !dbg !518

; <label>:222:                                    ; preds = %217, %213
  %223 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %9, i64 0, i32 2, i32 1, !dbg !519
  %224 = load double, double* %223, align 8, !dbg !519, !tbaa !291
  %225 = fcmp ogt double %224, %31, !dbg !521
  br i1 %225, label %226, label %231, !dbg !522

; <label>:226:                                    ; preds = %222
  store i8 0, i8* %87, align 8, !dbg !523, !tbaa !525
  store i64 0, i64* %85, align 8, !dbg !523, !tbaa !526
  %227 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 4, i32 1, !dbg !527
  store i8 0, i8* %227, align 8, !dbg !527, !tbaa !528
  %228 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 4, i32 0, !dbg !527
  store i64 0, i64* %228, align 8, !dbg !527, !tbaa !529
  %229 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 6, i32 1, !dbg !530
  store i8 0, i8* %229, align 8, !dbg !530, !tbaa !531
  %230 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 6, i32 0, !dbg !530
  store i64 0, i64* %230, align 8, !dbg !530, !tbaa !532
  br label %231, !dbg !533

; <label>:231:                                    ; preds = %226, %222
  %232 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %9, i64 0, i32 1, i32 0, !dbg !534
  %233 = load double, double* %232, align 8, !dbg !534, !tbaa !445
  %234 = fcmp olt double %233, %24, !dbg !536
  br i1 %234, label %235, label %240, !dbg !537

; <label>:235:                                    ; preds = %231
  store i8 0, i8* %114, align 8, !dbg !538, !tbaa !540
  store i64 0, i64* %112, align 8, !dbg !538, !tbaa !541
  %236 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 7, i32 1, !dbg !542
  store i8 0, i8* %236, align 8, !dbg !542, !tbaa !513
  %237 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 7, i32 0, !dbg !542
  store i64 0, i64* %237, align 8, !dbg !542, !tbaa !514
  %238 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 6, i32 1, !dbg !543
  store i8 0, i8* %238, align 8, !dbg !543, !tbaa !531
  %239 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 6, i32 0, !dbg !543
  store i64 0, i64* %239, align 8, !dbg !543, !tbaa !532
  br label %240, !dbg !544

; <label>:240:                                    ; preds = %235, %231
  %241 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %9, i64 0, i32 1, i32 1, !dbg !545
  %242 = load double, double* %241, align 8, !dbg !545, !tbaa !399
  %243 = fcmp ogt double %242, %28, !dbg !547
  br i1 %243, label %244, label %249, !dbg !548

; <label>:244:                                    ; preds = %240
  store i8 0, i8* %105, align 8, !dbg !549, !tbaa !551
  store i64 0, i64* %103, align 8, !dbg !549, !tbaa !552
  %245 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 5, i32 1, !dbg !553
  store i8 0, i8* %245, align 8, !dbg !553, !tbaa !516
  %246 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 5, i32 0, !dbg !553
  store i64 0, i64* %246, align 8, !dbg !553, !tbaa !517
  %247 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 4, i32 1, !dbg !554
  store i8 0, i8* %247, align 8, !dbg !554, !tbaa !528
  %248 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 4, i32 0, !dbg !554
  store i64 0, i64* %248, align 8, !dbg !554, !tbaa !529
  br label %249, !dbg !555

; <label>:249:                                    ; preds = %240, %244, %210
  %250 = bitcast %struct.GeoHashRadius* %0 to i8*, !dbg !556
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %250, i8* nonnull align 8 %16, i64 16, i1 false), !dbg !556, !tbaa.struct !557
  %251 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %0, i64 0, i32 2, !dbg !560
  %252 = bitcast %struct.GeoHashNeighbors* %251 to i8*, !dbg !561
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %252, i8* nonnull align 8 %17, i64 128, i1 false), !dbg !561, !tbaa.struct !562
  %253 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %0, i64 0, i32 1, !dbg !563
  %254 = bitcast %struct.GeoHashArea* %253 to i8*, !dbg !564
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %254, i8* nonnull align 8 %18, i64 48, i1 false), !dbg !564, !tbaa.struct !565
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %18) #5, !dbg !566
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %17) #5, !dbg !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #5, !dbg !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #5, !dbg !566
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #5, !dbg !566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  ret void, !dbg !566
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
define dso_local double @geohashGetDistance(double, double, double, double) local_unnamed_addr #0 !dbg !297 {
  %5 = fmul double %1, 0x3F91DF46A2529D39, !dbg !573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  %6 = fmul double %0, 0x3F91DF46A2529D39, !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  %7 = fmul double %3, 0x3F91DF46A2529D39, !dbg !583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  %8 = fmul double %2, 0x3F91DF46A2529D39, !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  %9 = fsub double %7, %5, !dbg !591
  %10 = fmul double %9, 5.000000e-01, !dbg !592
  %11 = tail call double @sin(double %10) #4, !dbg !593
  %12 = fsub double %8, %6, !dbg !595
  %13 = fmul double %12, 5.000000e-01, !dbg !596
  %14 = tail call double @sin(double %13) #4, !dbg !597
  %15 = fmul double %11, %11, !dbg !599
  %16 = tail call double @cos(double %5) #4, !dbg !600
  %17 = tail call double @cos(double %7) #4, !dbg !601
  %18 = fmul double %16, %17, !dbg !602
  %19 = fmul double %14, %18, !dbg !603
  %20 = fmul double %14, %19, !dbg !604
  %21 = fadd double %15, %20, !dbg !605
  %22 = tail call double @sqrt(double %21) #4, !dbg !606
  %23 = tail call double @asin(double %22) #4, !dbg !607
  %24 = fmul double %23, 0x41684F6F63E51090, !dbg !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  ret double %24, !dbg !609
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone nounwind
define dso_local void @geohashGetAreasByRadiusWGS84(%struct.GeoHashRadius* noalias nocapture sret, double, double, double) local_unnamed_addr #0 !dbg !610 {
  tail call void @geohashGetAreasByRadius(%struct.GeoHashRadius* sret %0, double %1, double %2, double %3) #6, !dbg !618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  ret void, !dbg !619
}

; Function Attrs: noredzone nounwind
define dso_local i64 @geohashAlign52Bits(i64, i8) local_unnamed_addr #0 !dbg !620 {
  %3 = zext i8 %1 to i64, !dbg !630
  %4 = shl nuw nsw i64 %3, 1, !dbg !631
  %5 = sub nsw i64 52, %4, !dbg !632
  %6 = and i64 %5, 4294967294, !dbg !633
  %7 = shl i64 %0, %6, !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  ret i64 %7, !dbg !634
}

; Function Attrs: noredzone
declare dso_local double @sin(double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @asin(double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @sqrt(double) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @geohashGetDistanceIfInRadius(double, double, double, double, double, double* nocapture) local_unnamed_addr #0 !dbg !635 {
  %7 = fmul double %1, 0x3F91DF46A2529D39, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  %8 = fmul double %0, 0x3F91DF46A2529D39, !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !664
  %9 = fmul double %3, 0x3F91DF46A2529D39, !dbg !668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !669
  %10 = fmul double %2, 0x3F91DF46A2529D39, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  %11 = fsub double %9, %7, !dbg !676
  %12 = fmul double %11, 5.000000e-01, !dbg !677
  %13 = tail call double @sin(double %12) #4, !dbg !678
  %14 = fsub double %10, %8, !dbg !680
  %15 = fmul double %14, 5.000000e-01, !dbg !681
  %16 = tail call double @sin(double %15) #4, !dbg !682
  %17 = fmul double %13, %13, !dbg !684
  %18 = tail call double @cos(double %7) #4, !dbg !685
  %19 = tail call double @cos(double %9) #4, !dbg !686
  %20 = fmul double %18, %19, !dbg !687
  %21 = fmul double %16, %20, !dbg !688
  %22 = fmul double %16, %21, !dbg !689
  %23 = fadd double %17, %22, !dbg !690
  %24 = tail call double @sqrt(double %23) #4, !dbg !691
  %25 = tail call double @asin(double %24) #4, !dbg !692
  %26 = fmul double %25, 0x41684F6F63E51090, !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  store double %26, double* %5, align 8, !dbg !695, !tbaa !97
  %27 = fcmp ule double %26, %4, !dbg !696
  %28 = zext i1 %27 to i32, !dbg !698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  ret i32 %28, !dbg !699
}

; Function Attrs: noredzone nounwind
define dso_local i32 @geohashGetDistanceIfInRadiusWGS84(double, double, double, double, double, double* nocapture) local_unnamed_addr #0 !dbg !700 {
  %7 = fmul double %1, 0x3F91DF46A2529D39, !dbg !728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !729
  %8 = fmul double %0, 0x3F91DF46A2529D39, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !734
  %9 = fmul double %3, 0x3F91DF46A2529D39, !dbg !738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  %10 = fmul double %2, 0x3F91DF46A2529D39, !dbg !743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !744
  %11 = fsub double %9, %7, !dbg !746
  %12 = fmul double %11, 5.000000e-01, !dbg !747
  %13 = tail call double @sin(double %12) #4, !dbg !748
  %14 = fsub double %10, %8, !dbg !750
  %15 = fmul double %14, 5.000000e-01, !dbg !751
  %16 = tail call double @sin(double %15) #4, !dbg !752
  %17 = fmul double %13, %13, !dbg !754
  %18 = tail call double @cos(double %7) #4, !dbg !755
  %19 = tail call double @cos(double %9) #4, !dbg !756
  %20 = fmul double %18, %19, !dbg !757
  %21 = fmul double %16, %20, !dbg !758
  %22 = fmul double %16, %21, !dbg !759
  %23 = fadd double %17, %22, !dbg !760
  %24 = tail call double @sqrt(double %23) #4, !dbg !761
  %25 = tail call double @asin(double %24) #4, !dbg !762
  %26 = fmul double %25, 0x41684F6F63E51090, !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !764
  store double %26, double* %5, align 8, !dbg !765, !tbaa !97
  %27 = fcmp ule double %26, %4, !dbg !766
  %28 = zext i1 %27 to i32, !dbg !767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  ret i32 %28, !dbg !769
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
!36 = !DILocation(line: 64, column: 9, scope: !18)
!37 = !DILocation(line: 65, column: 25, scope: !18)
!38 = !DILocation(line: 65, column: 5, scope: !18)
!39 = !DILocation(line: 66, column: 22, scope: !40)
!40 = distinct !DILexicalBlock(scope: !18, file: !3, line: 65, column: 41)
!41 = !DILocation(line: 67, column: 13, scope: !40)
!42 = distinct !{!42, !38, !43}
!43 = !DILocation(line: 68, column: 5, scope: !18)
!44 = !DILocation(line: 0, scope: !40)
!45 = !DILocation(line: 69, column: 10, scope: !18)
!46 = !DILocation(line: 74, column: 13, scope: !47)
!47 = distinct !DILexicalBlock(scope: !18, file: !3, line: 74, column: 9)
!48 = !DILocation(line: 74, column: 25, scope: !47)
!49 = !DILocation(line: 74, column: 18, scope: !47)
!50 = !DILocation(line: 76, column: 17, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !3, line: 76, column: 13)
!52 = distinct !DILexicalBlock(scope: !47, file: !3, line: 74, column: 32)
!53 = !DILocation(line: 76, column: 29, scope: !51)
!54 = !DILocation(line: 76, column: 22, scope: !51)
!55 = !DILocation(line: 0, scope: !18)
!56 = !DILocation(line: 80, column: 9, scope: !18)
!57 = !DILocation(line: 81, column: 9, scope: !18)
!58 = !DILocation(line: 82, column: 12, scope: !18)
!59 = !DILocation(line: 83, column: 1, scope: !18)
!60 = distinct !DISubprogram(name: "geohashBoundingBox", scope: !3, file: !3, line: 103, type: !61, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !64)
!61 = !DISubroutineType(types: !62)
!62 = !{!30, !9, !9, !9, !63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!64 = !{!65, !66, !67, !68}
!65 = !DILocalVariable(name: "longitude", arg: 1, scope: !60, file: !3, line: 103, type: !9)
!66 = !DILocalVariable(name: "latitude", arg: 2, scope: !60, file: !3, line: 103, type: !9)
!67 = !DILocalVariable(name: "radius_meters", arg: 3, scope: !60, file: !3, line: 103, type: !9)
!68 = !DILocalVariable(name: "bounds", arg: 4, scope: !60, file: !3, line: 104, type: !63)
!69 = !DILocation(line: 103, column: 31, scope: !60)
!70 = !DILocation(line: 103, column: 49, scope: !60)
!71 = !DILocation(line: 103, column: 66, scope: !60)
!72 = !DILocation(line: 104, column: 32, scope: !60)
!73 = !DILocation(line: 105, column: 10, scope: !74)
!74 = distinct !DILexicalBlock(scope: !60, file: !3, line: 105, column: 9)
!75 = !DILocation(line: 105, column: 9, scope: !60)
!76 = !DILocation(line: 107, column: 50, scope: !60)
!77 = !DILocalVariable(name: "ang", arg: 1, scope: !78, file: !3, line: 57, type: !9)
!78 = distinct !DISubprogram(name: "deg_rad", scope: !3, file: !3, line: 57, type: !79, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !81)
!79 = !DISubroutineType(types: !80)
!80 = !{!9, !9}
!81 = !{!77}
!82 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !83)
!83 = distinct !DILocation(line: 107, column: 78, scope: !60)
!84 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !83)
!85 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !83)
!86 = !DILocation(line: 107, column: 74, scope: !60)
!87 = !DILocation(line: 107, column: 73, scope: !60)
!88 = !DILocalVariable(name: "ang", arg: 1, scope: !89, file: !3, line: 58, type: !9)
!89 = distinct !DISubprogram(name: "rad_deg", scope: !3, file: !3, line: 58, type: !79, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !90)
!90 = !{!88}
!91 = !DILocation(line: 58, column: 37, scope: !89, inlinedAt: !92)
!92 = distinct !DILocation(line: 107, column: 29, scope: !60)
!93 = !DILocation(line: 58, column: 55, scope: !89, inlinedAt: !92)
!94 = !DILocation(line: 58, column: 44, scope: !89, inlinedAt: !92)
!95 = !DILocation(line: 107, column: 27, scope: !60)
!96 = !DILocation(line: 107, column: 15, scope: !60)
!97 = !{!98, !98, i64 0}
!98 = !{!"double", !99, i64 0}
!99 = !{!"omnipotent char", !100, i64 0}
!100 = !{!"Simple C/C++ TBAA"}
!101 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !102)
!102 = distinct !DILocation(line: 108, column: 78, scope: !60)
!103 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !102)
!104 = !DILocation(line: 108, column: 74, scope: !60)
!105 = !DILocation(line: 108, column: 73, scope: !60)
!106 = !DILocation(line: 58, column: 37, scope: !89, inlinedAt: !107)
!107 = distinct !DILocation(line: 108, column: 29, scope: !60)
!108 = !DILocation(line: 58, column: 55, scope: !89, inlinedAt: !107)
!109 = !DILocation(line: 58, column: 44, scope: !89, inlinedAt: !107)
!110 = !DILocation(line: 108, column: 27, scope: !60)
!111 = !DILocation(line: 108, column: 5, scope: !60)
!112 = !DILocation(line: 108, column: 15, scope: !60)
!113 = !DILocation(line: 58, column: 37, scope: !89, inlinedAt: !114)
!114 = distinct !DILocation(line: 109, column: 28, scope: !60)
!115 = !DILocation(line: 58, column: 55, scope: !89, inlinedAt: !114)
!116 = !DILocation(line: 58, column: 44, scope: !89, inlinedAt: !114)
!117 = !DILocation(line: 109, column: 26, scope: !60)
!118 = !DILocation(line: 109, column: 5, scope: !60)
!119 = !DILocation(line: 109, column: 15, scope: !60)
!120 = !DILocation(line: 58, column: 37, scope: !89, inlinedAt: !121)
!121 = distinct !DILocation(line: 110, column: 28, scope: !60)
!122 = !DILocation(line: 58, column: 44, scope: !89, inlinedAt: !121)
!123 = !DILocation(line: 110, column: 26, scope: !60)
!124 = !DILocation(line: 110, column: 5, scope: !60)
!125 = !DILocation(line: 110, column: 15, scope: !60)
!126 = !DILocation(line: 111, column: 5, scope: !60)
!127 = !DILocation(line: 0, scope: !74)
!128 = !DILocation(line: 112, column: 1, scope: !60)
!129 = distinct !DISubprogram(name: "geohashGetAreasByRadius", scope: !3, file: !3, line: 116, type: !130, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !170)
!130 = !DISubroutineType(types: !131)
!131 = !{!132, !9, !9, !9}
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashRadius", file: !133, line: 48, baseType: !134)
!133 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geohash_helper.h", directory: "/root/.unikraft/apps/redis/build")
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !133, line: 44, size: 1536, elements: !135)
!135 = !{!136, !146, !158}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !134, file: !133, line: 45, baseType: !137, size: 128)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashBits", file: !138, line: 69, baseType: !139)
!138 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geohash.h", directory: "/root/.unikraft/apps/redis/build")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 66, size: 128, elements: !140)
!140 = !{!141, !145}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !139, file: !138, line: 67, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 60, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !24, line: 105, baseType: !144)
!144 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !139, file: !138, line: 68, baseType: !21, size: 8, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !134, file: !133, line: 46, baseType: !147, size: 384, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashArea", file: !138, line: 80, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 76, size: 384, elements: !149)
!149 = !{!150, !151, !157}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !148, file: !138, line: 77, baseType: !137, size: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "longitude", scope: !148, file: !138, line: 78, baseType: !152, size: 128, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashRange", file: !138, line: 74, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 71, size: 128, elements: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !153, file: !138, line: 72, baseType: !9, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !153, file: !138, line: 73, baseType: !9, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "latitude", scope: !148, file: !138, line: 79, baseType: !152, size: 128, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "neighbors", scope: !134, file: !133, line: 47, baseType: !159, size: 1024, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashNeighbors", file: !138, line: 91, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 82, size: 1024, elements: !161)
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "north", scope: !160, file: !138, line: 83, baseType: !137, size: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "east", scope: !160, file: !138, line: 84, baseType: !137, size: 128, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "west", scope: !160, file: !138, line: 85, baseType: !137, size: 128, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "south", scope: !160, file: !138, line: 86, baseType: !137, size: 128, offset: 384)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "north_east", scope: !160, file: !138, line: 87, baseType: !137, size: 128, offset: 512)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "south_east", scope: !160, file: !138, line: 88, baseType: !137, size: 128, offset: 640)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "north_west", scope: !160, file: !138, line: 89, baseType: !137, size: 128, offset: 768)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "south_west", scope: !160, file: !138, line: 90, baseType: !137, size: 128, offset: 896)
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !188, !189, !190, !192, !193, !194}
!171 = !DILocalVariable(name: "longitude", arg: 1, scope: !129, file: !3, line: 116, type: !9)
!172 = !DILocalVariable(name: "latitude", arg: 2, scope: !129, file: !3, line: 116, type: !9)
!173 = !DILocalVariable(name: "radius_meters", arg: 3, scope: !129, file: !3, line: 116, type: !9)
!174 = !DILocalVariable(name: "long_range", scope: !129, file: !3, line: 117, type: !152)
!175 = !DILocalVariable(name: "lat_range", scope: !129, file: !3, line: 117, type: !152)
!176 = !DILocalVariable(name: "radius", scope: !129, file: !3, line: 118, type: !132)
!177 = !DILocalVariable(name: "hash", scope: !129, file: !3, line: 119, type: !137)
!178 = !DILocalVariable(name: "neighbors", scope: !129, file: !3, line: 120, type: !159)
!179 = !DILocalVariable(name: "area", scope: !129, file: !3, line: 121, type: !147)
!180 = !DILocalVariable(name: "min_lon", scope: !129, file: !3, line: 122, type: !9)
!181 = !DILocalVariable(name: "max_lon", scope: !129, file: !3, line: 122, type: !9)
!182 = !DILocalVariable(name: "min_lat", scope: !129, file: !3, line: 122, type: !9)
!183 = !DILocalVariable(name: "max_lat", scope: !129, file: !3, line: 122, type: !9)
!184 = !DILocalVariable(name: "bounds", scope: !129, file: !3, line: 123, type: !185)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 4)
!188 = !DILocalVariable(name: "steps", scope: !129, file: !3, line: 124, type: !30)
!189 = !DILocalVariable(name: "decrease_step", scope: !129, file: !3, line: 144, type: !30)
!190 = !DILocalVariable(name: "north", scope: !191, file: !3, line: 146, type: !147)
!191 = distinct !DILexicalBlock(scope: !129, file: !3, line: 145, column: 5)
!192 = !DILocalVariable(name: "south", scope: !191, file: !3, line: 146, type: !147)
!193 = !DILocalVariable(name: "east", scope: !191, file: !3, line: 146, type: !147)
!194 = !DILocalVariable(name: "west", scope: !191, file: !3, line: 146, type: !147)
!195 = !DILocation(line: 116, column: 46, scope: !129)
!196 = !DILocation(line: 116, column: 64, scope: !129)
!197 = !DILocation(line: 116, column: 81, scope: !129)
!198 = !DILocation(line: 117, column: 5, scope: !129)
!199 = !DILocation(line: 118, column: 19, scope: !129)
!200 = !DILocation(line: 119, column: 5, scope: !129)
!201 = !DILocation(line: 120, column: 5, scope: !129)
!202 = !DILocation(line: 121, column: 5, scope: !129)
!203 = !DILocation(line: 103, column: 31, scope: !60, inlinedAt: !204)
!204 = distinct !DILocation(line: 126, column: 5, scope: !129)
!205 = !DILocation(line: 103, column: 49, scope: !60, inlinedAt: !204)
!206 = !DILocation(line: 103, column: 66, scope: !60, inlinedAt: !204)
!207 = !DILocation(line: 104, column: 32, scope: !60, inlinedAt: !204)
!208 = !DILocation(line: 107, column: 50, scope: !60, inlinedAt: !204)
!209 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !210)
!210 = distinct !DILocation(line: 107, column: 78, scope: !60, inlinedAt: !204)
!211 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !210)
!212 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !210)
!213 = !DILocation(line: 107, column: 74, scope: !60, inlinedAt: !204)
!214 = !DILocation(line: 107, column: 73, scope: !60, inlinedAt: !204)
!215 = !DILocation(line: 58, column: 37, scope: !89, inlinedAt: !216)
!216 = distinct !DILocation(line: 107, column: 29, scope: !60, inlinedAt: !204)
!217 = !DILocation(line: 58, column: 55, scope: !89, inlinedAt: !216)
!218 = !DILocation(line: 58, column: 44, scope: !89, inlinedAt: !216)
!219 = !DILocation(line: 107, column: 27, scope: !60, inlinedAt: !204)
!220 = !DILocation(line: 123, column: 12, scope: !129)
!221 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !222)
!222 = distinct !DILocation(line: 108, column: 78, scope: !60, inlinedAt: !204)
!223 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !222)
!224 = !DILocation(line: 108, column: 74, scope: !60, inlinedAt: !204)
!225 = !DILocation(line: 108, column: 73, scope: !60, inlinedAt: !204)
!226 = !DILocation(line: 58, column: 37, scope: !89, inlinedAt: !227)
!227 = distinct !DILocation(line: 108, column: 29, scope: !60, inlinedAt: !204)
!228 = !DILocation(line: 58, column: 55, scope: !89, inlinedAt: !227)
!229 = !DILocation(line: 58, column: 44, scope: !89, inlinedAt: !227)
!230 = !DILocation(line: 108, column: 27, scope: !60, inlinedAt: !204)
!231 = !DILocation(line: 58, column: 37, scope: !89, inlinedAt: !232)
!232 = distinct !DILocation(line: 109, column: 28, scope: !60, inlinedAt: !204)
!233 = !DILocation(line: 58, column: 55, scope: !89, inlinedAt: !232)
!234 = !DILocation(line: 58, column: 44, scope: !89, inlinedAt: !232)
!235 = !DILocation(line: 109, column: 26, scope: !60, inlinedAt: !204)
!236 = !DILocation(line: 58, column: 37, scope: !89, inlinedAt: !237)
!237 = distinct !DILocation(line: 110, column: 28, scope: !60, inlinedAt: !204)
!238 = !DILocation(line: 58, column: 44, scope: !89, inlinedAt: !237)
!239 = !DILocation(line: 110, column: 26, scope: !60, inlinedAt: !204)
!240 = !DILocation(line: 112, column: 1, scope: !60, inlinedAt: !204)
!241 = !DILocation(line: 122, column: 12, scope: !129)
!242 = !DILocation(line: 122, column: 30, scope: !129)
!243 = !DILocation(line: 122, column: 21, scope: !129)
!244 = !DILocation(line: 122, column: 39, scope: !129)
!245 = !DILocation(line: 62, column: 45, scope: !18, inlinedAt: !246)
!246 = distinct !DILocation(line: 132, column: 13, scope: !129)
!247 = !DILocation(line: 62, column: 66, scope: !18, inlinedAt: !246)
!248 = !DILocation(line: 63, column: 22, scope: !34, inlinedAt: !246)
!249 = !DILocation(line: 63, column: 9, scope: !18, inlinedAt: !246)
!250 = !DILocation(line: 64, column: 9, scope: !18, inlinedAt: !246)
!251 = !DILocation(line: 65, column: 25, scope: !18, inlinedAt: !246)
!252 = !DILocation(line: 65, column: 5, scope: !18, inlinedAt: !246)
!253 = !DILocation(line: 66, column: 22, scope: !40, inlinedAt: !246)
!254 = !DILocation(line: 67, column: 13, scope: !40, inlinedAt: !246)
!255 = !DILocation(line: 0, scope: !40, inlinedAt: !246)
!256 = !DILocation(line: 69, column: 10, scope: !18, inlinedAt: !246)
!257 = !DILocation(line: 74, column: 13, scope: !47, inlinedAt: !246)
!258 = !DILocation(line: 74, column: 25, scope: !47, inlinedAt: !246)
!259 = !DILocation(line: 74, column: 18, scope: !47, inlinedAt: !246)
!260 = !DILocation(line: 76, column: 17, scope: !51, inlinedAt: !246)
!261 = !DILocation(line: 76, column: 29, scope: !51, inlinedAt: !246)
!262 = !DILocation(line: 76, column: 22, scope: !51, inlinedAt: !246)
!263 = !DILocation(line: 0, scope: !18, inlinedAt: !246)
!264 = !DILocation(line: 80, column: 9, scope: !18, inlinedAt: !246)
!265 = !DILocation(line: 81, column: 9, scope: !18, inlinedAt: !246)
!266 = !DILocation(line: 82, column: 12, scope: !18, inlinedAt: !246)
!267 = !DILocation(line: 83, column: 1, scope: !18, inlinedAt: !246)
!268 = !DILocation(line: 132, column: 13, scope: !129)
!269 = !DILocation(line: 124, column: 9, scope: !129)
!270 = !DILocation(line: 117, column: 18, scope: !129)
!271 = !DILocation(line: 117, column: 30, scope: !129)
!272 = !DILocation(line: 134, column: 5, scope: !129)
!273 = !DILocation(line: 119, column: 17, scope: !129)
!274 = !DILocation(line: 135, column: 5, scope: !129)
!275 = !DILocation(line: 120, column: 22, scope: !129)
!276 = !DILocation(line: 136, column: 5, scope: !129)
!277 = !DILocation(line: 137, column: 5, scope: !129)
!278 = !DILocation(line: 121, column: 17, scope: !129)
!279 = !DILocation(line: 144, column: 9, scope: !129)
!280 = !DILocation(line: 146, column: 9, scope: !191)
!281 = !DILocation(line: 148, column: 9, scope: !191)
!282 = !DILocation(line: 146, column: 21, scope: !191)
!283 = !DILocation(line: 149, column: 9, scope: !191)
!284 = !DILocation(line: 146, column: 28, scope: !191)
!285 = !DILocation(line: 150, column: 9, scope: !191)
!286 = !DILocation(line: 146, column: 35, scope: !191)
!287 = !DILocation(line: 151, column: 9, scope: !191)
!288 = !DILocation(line: 146, column: 41, scope: !191)
!289 = !DILocation(line: 153, column: 76, scope: !290)
!290 = distinct !DILexicalBlock(scope: !191, file: !3, line: 153, column: 13)
!291 = !{!292, !98, i64 40}
!292 = !{!"", !293, i64 0, !295, i64 16, !295, i64 32}
!293 = !{!"", !294, i64 0, !99, i64 8}
!294 = !{!"long", !99, i64 0}
!295 = !{!"", !98, i64 0, !98, i64 8}
!296 = !DILocalVariable(name: "lon1d", arg: 1, scope: !297, file: !3, line: 211, type: !9)
!297 = distinct !DISubprogram(name: "geohashGetDistance", scope: !3, file: !3, line: 211, type: !298, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !300)
!298 = !DISubroutineType(types: !299)
!299 = !{!9, !9, !9, !9, !9}
!300 = !{!296, !301, !302, !303, !304, !305, !306, !307, !308, !309}
!301 = !DILocalVariable(name: "lat1d", arg: 2, scope: !297, file: !3, line: 211, type: !9)
!302 = !DILocalVariable(name: "lon2d", arg: 3, scope: !297, file: !3, line: 211, type: !9)
!303 = !DILocalVariable(name: "lat2d", arg: 4, scope: !297, file: !3, line: 211, type: !9)
!304 = !DILocalVariable(name: "lat1r", scope: !297, file: !3, line: 212, type: !9)
!305 = !DILocalVariable(name: "lon1r", scope: !297, file: !3, line: 212, type: !9)
!306 = !DILocalVariable(name: "lat2r", scope: !297, file: !3, line: 212, type: !9)
!307 = !DILocalVariable(name: "lon2r", scope: !297, file: !3, line: 212, type: !9)
!308 = !DILocalVariable(name: "u", scope: !297, file: !3, line: 212, type: !9)
!309 = !DILocalVariable(name: "v", scope: !297, file: !3, line: 212, type: !9)
!310 = !DILocation(line: 211, column: 34, scope: !297, inlinedAt: !311)
!311 = distinct !DILocation(line: 153, column: 13, scope: !290)
!312 = !DILocation(line: 211, column: 48, scope: !297, inlinedAt: !311)
!313 = !DILocation(line: 211, column: 62, scope: !297, inlinedAt: !311)
!314 = !DILocation(line: 211, column: 76, scope: !297, inlinedAt: !311)
!315 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !316)
!316 = distinct !DILocation(line: 213, column: 13, scope: !297, inlinedAt: !311)
!317 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !316)
!318 = !DILocation(line: 212, column: 12, scope: !297, inlinedAt: !311)
!319 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !320)
!320 = distinct !DILocation(line: 214, column: 13, scope: !297, inlinedAt: !311)
!321 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !320)
!322 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !320)
!323 = !DILocation(line: 212, column: 19, scope: !297, inlinedAt: !311)
!324 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !325)
!325 = distinct !DILocation(line: 215, column: 13, scope: !297, inlinedAt: !311)
!326 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !325)
!327 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !325)
!328 = !DILocation(line: 212, column: 26, scope: !297, inlinedAt: !311)
!329 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !330)
!330 = distinct !DILocation(line: 216, column: 13, scope: !297, inlinedAt: !311)
!331 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !330)
!332 = !DILocation(line: 212, column: 33, scope: !297, inlinedAt: !311)
!333 = !DILocation(line: 217, column: 20, scope: !297, inlinedAt: !311)
!334 = !DILocation(line: 217, column: 29, scope: !297, inlinedAt: !311)
!335 = !DILocation(line: 217, column: 9, scope: !297, inlinedAt: !311)
!336 = !DILocation(line: 212, column: 40, scope: !297, inlinedAt: !311)
!337 = !DILocation(line: 218, column: 20, scope: !297, inlinedAt: !311)
!338 = !DILocation(line: 218, column: 29, scope: !297, inlinedAt: !311)
!339 = !DILocation(line: 218, column: 9, scope: !297, inlinedAt: !311)
!340 = !DILocation(line: 212, column: 43, scope: !297, inlinedAt: !311)
!341 = !DILocation(line: 220, column: 24, scope: !297, inlinedAt: !311)
!342 = !DILocation(line: 220, column: 30, scope: !297, inlinedAt: !311)
!343 = !DILocation(line: 220, column: 43, scope: !297, inlinedAt: !311)
!344 = !DILocation(line: 220, column: 41, scope: !297, inlinedAt: !311)
!345 = !DILocation(line: 220, column: 54, scope: !297, inlinedAt: !311)
!346 = !DILocation(line: 220, column: 58, scope: !297, inlinedAt: !311)
!347 = !DILocation(line: 220, column: 28, scope: !297, inlinedAt: !311)
!348 = !DILocation(line: 220, column: 17, scope: !297, inlinedAt: !311)
!349 = !DILocation(line: 220, column: 12, scope: !297, inlinedAt: !311)
!350 = !DILocation(line: 219, column: 41, scope: !297, inlinedAt: !311)
!351 = !DILocation(line: 219, column: 5, scope: !297, inlinedAt: !311)
!352 = !DILocation(line: 154, column: 13, scope: !290)
!353 = !DILocation(line: 155, column: 76, scope: !354)
!354 = distinct !DILexicalBlock(scope: !191, file: !3, line: 155, column: 13)
!355 = !{!292, !98, i64 32}
!356 = !DILocation(line: 211, column: 34, scope: !297, inlinedAt: !357)
!357 = distinct !DILocation(line: 155, column: 13, scope: !354)
!358 = !DILocation(line: 211, column: 48, scope: !297, inlinedAt: !357)
!359 = !DILocation(line: 211, column: 62, scope: !297, inlinedAt: !357)
!360 = !DILocation(line: 211, column: 76, scope: !297, inlinedAt: !357)
!361 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !362)
!362 = distinct !DILocation(line: 213, column: 13, scope: !297, inlinedAt: !357)
!363 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !362)
!364 = !DILocation(line: 212, column: 12, scope: !297, inlinedAt: !357)
!365 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !366)
!366 = distinct !DILocation(line: 214, column: 13, scope: !297, inlinedAt: !357)
!367 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !366)
!368 = !DILocation(line: 212, column: 19, scope: !297, inlinedAt: !357)
!369 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !370)
!370 = distinct !DILocation(line: 215, column: 13, scope: !297, inlinedAt: !357)
!371 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !370)
!372 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !370)
!373 = !DILocation(line: 212, column: 26, scope: !297, inlinedAt: !357)
!374 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !375)
!375 = distinct !DILocation(line: 216, column: 13, scope: !297, inlinedAt: !357)
!376 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !375)
!377 = !DILocation(line: 212, column: 33, scope: !297, inlinedAt: !357)
!378 = !DILocation(line: 217, column: 20, scope: !297, inlinedAt: !357)
!379 = !DILocation(line: 217, column: 29, scope: !297, inlinedAt: !357)
!380 = !DILocation(line: 217, column: 9, scope: !297, inlinedAt: !357)
!381 = !DILocation(line: 212, column: 40, scope: !297, inlinedAt: !357)
!382 = !DILocation(line: 218, column: 9, scope: !297, inlinedAt: !357)
!383 = !DILocation(line: 212, column: 43, scope: !297, inlinedAt: !357)
!384 = !DILocation(line: 220, column: 24, scope: !297, inlinedAt: !357)
!385 = !DILocation(line: 220, column: 30, scope: !297, inlinedAt: !357)
!386 = !DILocation(line: 220, column: 43, scope: !297, inlinedAt: !357)
!387 = !DILocation(line: 220, column: 41, scope: !297, inlinedAt: !357)
!388 = !DILocation(line: 220, column: 54, scope: !297, inlinedAt: !357)
!389 = !DILocation(line: 220, column: 58, scope: !297, inlinedAt: !357)
!390 = !DILocation(line: 220, column: 28, scope: !297, inlinedAt: !357)
!391 = !DILocation(line: 220, column: 17, scope: !297, inlinedAt: !357)
!392 = !DILocation(line: 220, column: 12, scope: !297, inlinedAt: !357)
!393 = !DILocation(line: 219, column: 41, scope: !297, inlinedAt: !357)
!394 = !DILocation(line: 219, column: 5, scope: !297, inlinedAt: !357)
!395 = !DILocation(line: 156, column: 13, scope: !354)
!396 = !DILocation(line: 155, column: 13, scope: !191)
!397 = !DILocation(line: 157, column: 66, scope: !398)
!398 = distinct !DILexicalBlock(scope: !191, file: !3, line: 157, column: 13)
!399 = !{!292, !98, i64 24}
!400 = !DILocation(line: 211, column: 34, scope: !297, inlinedAt: !401)
!401 = distinct !DILocation(line: 157, column: 13, scope: !398)
!402 = !DILocation(line: 211, column: 48, scope: !297, inlinedAt: !401)
!403 = !DILocation(line: 211, column: 62, scope: !297, inlinedAt: !401)
!404 = !DILocation(line: 211, column: 76, scope: !297, inlinedAt: !401)
!405 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !406)
!406 = distinct !DILocation(line: 213, column: 13, scope: !297, inlinedAt: !401)
!407 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !406)
!408 = !DILocation(line: 212, column: 12, scope: !297, inlinedAt: !401)
!409 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !410)
!410 = distinct !DILocation(line: 214, column: 13, scope: !297, inlinedAt: !401)
!411 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !410)
!412 = !DILocation(line: 212, column: 19, scope: !297, inlinedAt: !401)
!413 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !414)
!414 = distinct !DILocation(line: 215, column: 13, scope: !297, inlinedAt: !401)
!415 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !414)
!416 = !DILocation(line: 212, column: 26, scope: !297, inlinedAt: !401)
!417 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !418)
!418 = distinct !DILocation(line: 216, column: 13, scope: !297, inlinedAt: !401)
!419 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !418)
!420 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !418)
!421 = !DILocation(line: 212, column: 33, scope: !297, inlinedAt: !401)
!422 = !DILocation(line: 217, column: 20, scope: !297, inlinedAt: !401)
!423 = !DILocation(line: 217, column: 29, scope: !297, inlinedAt: !401)
!424 = !DILocation(line: 217, column: 9, scope: !297, inlinedAt: !401)
!425 = !DILocation(line: 212, column: 40, scope: !297, inlinedAt: !401)
!426 = !DILocation(line: 218, column: 20, scope: !297, inlinedAt: !401)
!427 = !DILocation(line: 218, column: 29, scope: !297, inlinedAt: !401)
!428 = !DILocation(line: 218, column: 9, scope: !297, inlinedAt: !401)
!429 = !DILocation(line: 212, column: 43, scope: !297, inlinedAt: !401)
!430 = !DILocation(line: 220, column: 24, scope: !297, inlinedAt: !401)
!431 = !DILocation(line: 220, column: 30, scope: !297, inlinedAt: !401)
!432 = !DILocation(line: 220, column: 43, scope: !297, inlinedAt: !401)
!433 = !DILocation(line: 220, column: 41, scope: !297, inlinedAt: !401)
!434 = !DILocation(line: 220, column: 54, scope: !297, inlinedAt: !401)
!435 = !DILocation(line: 220, column: 58, scope: !297, inlinedAt: !401)
!436 = !DILocation(line: 220, column: 28, scope: !297, inlinedAt: !401)
!437 = !DILocation(line: 220, column: 17, scope: !297, inlinedAt: !401)
!438 = !DILocation(line: 220, column: 12, scope: !297, inlinedAt: !401)
!439 = !DILocation(line: 219, column: 41, scope: !297, inlinedAt: !401)
!440 = !DILocation(line: 219, column: 5, scope: !297, inlinedAt: !401)
!441 = !DILocation(line: 158, column: 13, scope: !398)
!442 = !DILocation(line: 157, column: 13, scope: !191)
!443 = !DILocation(line: 159, column: 66, scope: !444)
!444 = distinct !DILexicalBlock(scope: !191, file: !3, line: 159, column: 13)
!445 = !{!292, !98, i64 16}
!446 = !DILocation(line: 211, column: 34, scope: !297, inlinedAt: !447)
!447 = distinct !DILocation(line: 159, column: 13, scope: !444)
!448 = !DILocation(line: 211, column: 48, scope: !297, inlinedAt: !447)
!449 = !DILocation(line: 211, column: 62, scope: !297, inlinedAt: !447)
!450 = !DILocation(line: 211, column: 76, scope: !297, inlinedAt: !447)
!451 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !452)
!452 = distinct !DILocation(line: 213, column: 13, scope: !297, inlinedAt: !447)
!453 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !452)
!454 = !DILocation(line: 212, column: 12, scope: !297, inlinedAt: !447)
!455 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !456)
!456 = distinct !DILocation(line: 214, column: 13, scope: !297, inlinedAt: !447)
!457 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !456)
!458 = !DILocation(line: 212, column: 19, scope: !297, inlinedAt: !447)
!459 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !460)
!460 = distinct !DILocation(line: 215, column: 13, scope: !297, inlinedAt: !447)
!461 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !460)
!462 = !DILocation(line: 212, column: 26, scope: !297, inlinedAt: !447)
!463 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !464)
!464 = distinct !DILocation(line: 216, column: 13, scope: !297, inlinedAt: !447)
!465 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !464)
!466 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !464)
!467 = !DILocation(line: 212, column: 33, scope: !297, inlinedAt: !447)
!468 = !DILocation(line: 217, column: 9, scope: !297, inlinedAt: !447)
!469 = !DILocation(line: 212, column: 40, scope: !297, inlinedAt: !447)
!470 = !DILocation(line: 218, column: 20, scope: !297, inlinedAt: !447)
!471 = !DILocation(line: 218, column: 29, scope: !297, inlinedAt: !447)
!472 = !DILocation(line: 218, column: 9, scope: !297, inlinedAt: !447)
!473 = !DILocation(line: 212, column: 43, scope: !297, inlinedAt: !447)
!474 = !DILocation(line: 220, column: 24, scope: !297, inlinedAt: !447)
!475 = !DILocation(line: 220, column: 30, scope: !297, inlinedAt: !447)
!476 = !DILocation(line: 220, column: 43, scope: !297, inlinedAt: !447)
!477 = !DILocation(line: 220, column: 41, scope: !297, inlinedAt: !447)
!478 = !DILocation(line: 220, column: 54, scope: !297, inlinedAt: !447)
!479 = !DILocation(line: 220, column: 58, scope: !297, inlinedAt: !447)
!480 = !DILocation(line: 220, column: 28, scope: !297, inlinedAt: !447)
!481 = !DILocation(line: 220, column: 17, scope: !297, inlinedAt: !447)
!482 = !DILocation(line: 220, column: 12, scope: !297, inlinedAt: !447)
!483 = !DILocation(line: 219, column: 41, scope: !297, inlinedAt: !447)
!484 = !DILocation(line: 219, column: 5, scope: !297, inlinedAt: !447)
!485 = !DILocation(line: 160, column: 13, scope: !444)
!486 = !DILocation(line: 159, column: 13, scope: !191)
!487 = !DILocation(line: 161, column: 5, scope: !129)
!488 = !DILocation(line: 163, column: 15, scope: !489)
!489 = distinct !DILexicalBlock(scope: !129, file: !3, line: 163, column: 9)
!490 = !DILocation(line: 163, column: 19, scope: !489)
!491 = !DILocation(line: 164, column: 14, scope: !492)
!492 = distinct !DILexicalBlock(scope: !489, file: !3, line: 163, column: 37)
!493 = !DILocation(line: 165, column: 65, scope: !492)
!494 = !DILocation(line: 165, column: 9, scope: !492)
!495 = !DILocation(line: 166, column: 9, scope: !492)
!496 = !DILocation(line: 167, column: 9, scope: !492)
!497 = !DILocation(line: 168, column: 5, scope: !492)
!498 = !DILocation(line: 0, scope: !129)
!499 = !DILocation(line: 171, column: 15, scope: !500)
!500 = distinct !DILexicalBlock(scope: !129, file: !3, line: 171, column: 9)
!501 = !DILocation(line: 171, column: 9, scope: !129)
!502 = !DILocation(line: 172, column: 27, scope: !503)
!503 = distinct !DILexicalBlock(scope: !504, file: !3, line: 172, column: 13)
!504 = distinct !DILexicalBlock(scope: !500, file: !3, line: 171, column: 21)
!505 = !DILocation(line: 172, column: 31, scope: !503)
!506 = !DILocation(line: 172, column: 13, scope: !504)
!507 = !DILocation(line: 173, column: 13, scope: !508)
!508 = distinct !DILexicalBlock(scope: !503, file: !3, line: 172, column: 42)
!509 = !{!510, !99, i64 56}
!510 = !{!"", !293, i64 0, !293, i64 16, !293, i64 32, !293, i64 48, !293, i64 64, !293, i64 80, !293, i64 96, !293, i64 112}
!511 = !{!510, !294, i64 48}
!512 = !DILocation(line: 174, column: 13, scope: !508)
!513 = !{!510, !99, i64 120}
!514 = !{!510, !294, i64 112}
!515 = !DILocation(line: 175, column: 13, scope: !508)
!516 = !{!510, !99, i64 88}
!517 = !{!510, !294, i64 80}
!518 = !DILocation(line: 176, column: 9, scope: !508)
!519 = !DILocation(line: 177, column: 27, scope: !520)
!520 = distinct !DILexicalBlock(scope: !504, file: !3, line: 177, column: 13)
!521 = !DILocation(line: 177, column: 31, scope: !520)
!522 = !DILocation(line: 177, column: 13, scope: !504)
!523 = !DILocation(line: 178, column: 13, scope: !524)
!524 = distinct !DILexicalBlock(scope: !520, file: !3, line: 177, column: 42)
!525 = !{!510, !99, i64 8}
!526 = !{!510, !294, i64 0}
!527 = !DILocation(line: 179, column: 13, scope: !524)
!528 = !{!510, !99, i64 72}
!529 = !{!510, !294, i64 64}
!530 = !DILocation(line: 180, column: 13, scope: !524)
!531 = !{!510, !99, i64 104}
!532 = !{!510, !294, i64 96}
!533 = !DILocation(line: 181, column: 9, scope: !524)
!534 = !DILocation(line: 182, column: 28, scope: !535)
!535 = distinct !DILexicalBlock(scope: !504, file: !3, line: 182, column: 13)
!536 = !DILocation(line: 182, column: 32, scope: !535)
!537 = !DILocation(line: 182, column: 13, scope: !504)
!538 = !DILocation(line: 183, column: 13, scope: !539)
!539 = distinct !DILexicalBlock(scope: !535, file: !3, line: 182, column: 43)
!540 = !{!510, !99, i64 40}
!541 = !{!510, !294, i64 32}
!542 = !DILocation(line: 184, column: 13, scope: !539)
!543 = !DILocation(line: 185, column: 13, scope: !539)
!544 = !DILocation(line: 186, column: 9, scope: !539)
!545 = !DILocation(line: 187, column: 28, scope: !546)
!546 = distinct !DILexicalBlock(scope: !504, file: !3, line: 187, column: 13)
!547 = !DILocation(line: 187, column: 32, scope: !546)
!548 = !DILocation(line: 187, column: 13, scope: !504)
!549 = !DILocation(line: 188, column: 13, scope: !550)
!550 = distinct !DILexicalBlock(scope: !546, file: !3, line: 187, column: 43)
!551 = !{!510, !99, i64 24}
!552 = !{!510, !294, i64 16}
!553 = !DILocation(line: 189, column: 13, scope: !550)
!554 = !DILocation(line: 190, column: 13, scope: !550)
!555 = !DILocation(line: 191, column: 9, scope: !550)
!556 = !DILocation(line: 193, column: 19, scope: !129)
!557 = !{i64 0, i64 8, !558, i64 8, i64 1, !559}
!558 = !{!294, !294, i64 0}
!559 = !{!99, !99, i64 0}
!560 = !DILocation(line: 194, column: 12, scope: !129)
!561 = !DILocation(line: 194, column: 24, scope: !129)
!562 = !{i64 0, i64 8, !558, i64 8, i64 1, !559, i64 16, i64 8, !558, i64 24, i64 1, !559, i64 32, i64 8, !558, i64 40, i64 1, !559, i64 48, i64 8, !558, i64 56, i64 1, !559, i64 64, i64 8, !558, i64 72, i64 1, !559, i64 80, i64 8, !558, i64 88, i64 1, !559, i64 96, i64 8, !558, i64 104, i64 1, !559, i64 112, i64 8, !558, i64 120, i64 1, !559}
!563 = !DILocation(line: 195, column: 12, scope: !129)
!564 = !DILocation(line: 195, column: 19, scope: !129)
!565 = !{i64 0, i64 8, !558, i64 8, i64 1, !559, i64 16, i64 8, !97, i64 24, i64 8, !97, i64 32, i64 8, !97, i64 40, i64 8, !97}
!566 = !DILocation(line: 197, column: 1, scope: !129)
!567 = !DILocation(line: 211, column: 34, scope: !297)
!568 = !DILocation(line: 211, column: 48, scope: !297)
!569 = !DILocation(line: 211, column: 62, scope: !297)
!570 = !DILocation(line: 211, column: 76, scope: !297)
!571 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !572)
!572 = distinct !DILocation(line: 213, column: 13, scope: !297)
!573 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !572)
!574 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !572)
!575 = !DILocation(line: 212, column: 12, scope: !297)
!576 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !577)
!577 = distinct !DILocation(line: 214, column: 13, scope: !297)
!578 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !577)
!579 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !577)
!580 = !DILocation(line: 212, column: 19, scope: !297)
!581 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !582)
!582 = distinct !DILocation(line: 215, column: 13, scope: !297)
!583 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !582)
!584 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !582)
!585 = !DILocation(line: 212, column: 26, scope: !297)
!586 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !587)
!587 = distinct !DILocation(line: 216, column: 13, scope: !297)
!588 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !587)
!589 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !587)
!590 = !DILocation(line: 212, column: 33, scope: !297)
!591 = !DILocation(line: 217, column: 20, scope: !297)
!592 = !DILocation(line: 217, column: 29, scope: !297)
!593 = !DILocation(line: 217, column: 9, scope: !297)
!594 = !DILocation(line: 212, column: 40, scope: !297)
!595 = !DILocation(line: 218, column: 20, scope: !297)
!596 = !DILocation(line: 218, column: 29, scope: !297)
!597 = !DILocation(line: 218, column: 9, scope: !297)
!598 = !DILocation(line: 212, column: 43, scope: !297)
!599 = !DILocation(line: 220, column: 24, scope: !297)
!600 = !DILocation(line: 220, column: 30, scope: !297)
!601 = !DILocation(line: 220, column: 43, scope: !297)
!602 = !DILocation(line: 220, column: 41, scope: !297)
!603 = !DILocation(line: 220, column: 54, scope: !297)
!604 = !DILocation(line: 220, column: 58, scope: !297)
!605 = !DILocation(line: 220, column: 28, scope: !297)
!606 = !DILocation(line: 220, column: 17, scope: !297)
!607 = !DILocation(line: 220, column: 12, scope: !297)
!608 = !DILocation(line: 219, column: 41, scope: !297)
!609 = !DILocation(line: 219, column: 5, scope: !297)
!610 = distinct !DISubprogram(name: "geohashGetAreasByRadiusWGS84", scope: !3, file: !3, line: 199, type: !130, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !611)
!611 = !{!612, !613, !614}
!612 = !DILocalVariable(name: "longitude", arg: 1, scope: !610, file: !3, line: 199, type: !9)
!613 = !DILocalVariable(name: "latitude", arg: 2, scope: !610, file: !3, line: 199, type: !9)
!614 = !DILocalVariable(name: "radius_meters", arg: 3, scope: !610, file: !3, line: 200, type: !9)
!615 = !DILocation(line: 199, column: 51, scope: !610)
!616 = !DILocation(line: 199, column: 69, scope: !610)
!617 = !DILocation(line: 200, column: 51, scope: !610)
!618 = !DILocation(line: 201, column: 12, scope: !610)
!619 = !DILocation(line: 201, column: 5, scope: !610)
!620 = distinct !DISubprogram(name: "geohashAlign52Bits", scope: !3, file: !3, line: 204, type: !621, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !625)
!621 = !DISubroutineType(types: !622)
!622 = !{!623, !624}
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashFix52Bits", file: !133, line: 41, baseType: !142)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!625 = !{!626, !627}
!626 = !DILocalVariable(name: "hash", arg: 1, scope: !620, file: !3, line: 204, type: !624)
!627 = !DILocalVariable(name: "bits", scope: !620, file: !3, line: 205, type: !142)
!628 = !DILocation(line: 204, column: 55, scope: !620)
!629 = !DILocation(line: 205, column: 14, scope: !620)
!630 = !DILocation(line: 206, column: 20, scope: !620)
!631 = !DILocation(line: 206, column: 30, scope: !620)
!632 = !DILocation(line: 206, column: 18, scope: !620)
!633 = !DILocation(line: 206, column: 10, scope: !620)
!634 = !DILocation(line: 207, column: 5, scope: !620)
!635 = distinct !DISubprogram(name: "geohashGetDistanceIfInRadius", scope: !3, file: !3, line: 223, type: !636, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !638)
!636 = !DISubroutineType(types: !637)
!637 = !{!30, !9, !9, !9, !9, !9, !63}
!638 = !{!639, !640, !641, !642, !643, !644}
!639 = !DILocalVariable(name: "x1", arg: 1, scope: !635, file: !3, line: 223, type: !9)
!640 = !DILocalVariable(name: "y1", arg: 2, scope: !635, file: !3, line: 223, type: !9)
!641 = !DILocalVariable(name: "x2", arg: 3, scope: !635, file: !3, line: 224, type: !9)
!642 = !DILocalVariable(name: "y2", arg: 4, scope: !635, file: !3, line: 224, type: !9)
!643 = !DILocalVariable(name: "radius", arg: 5, scope: !635, file: !3, line: 224, type: !9)
!644 = !DILocalVariable(name: "distance", arg: 6, scope: !635, file: !3, line: 225, type: !63)
!645 = !DILocation(line: 223, column: 41, scope: !635)
!646 = !DILocation(line: 223, column: 52, scope: !635)
!647 = !DILocation(line: 224, column: 41, scope: !635)
!648 = !DILocation(line: 224, column: 52, scope: !635)
!649 = !DILocation(line: 224, column: 63, scope: !635)
!650 = !DILocation(line: 225, column: 42, scope: !635)
!651 = !DILocation(line: 211, column: 34, scope: !297, inlinedAt: !652)
!652 = distinct !DILocation(line: 226, column: 17, scope: !635)
!653 = !DILocation(line: 211, column: 48, scope: !297, inlinedAt: !652)
!654 = !DILocation(line: 211, column: 62, scope: !297, inlinedAt: !652)
!655 = !DILocation(line: 211, column: 76, scope: !297, inlinedAt: !652)
!656 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !657)
!657 = distinct !DILocation(line: 213, column: 13, scope: !297, inlinedAt: !652)
!658 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !657)
!659 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !657)
!660 = !DILocation(line: 212, column: 12, scope: !297, inlinedAt: !652)
!661 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !662)
!662 = distinct !DILocation(line: 214, column: 13, scope: !297, inlinedAt: !652)
!663 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !662)
!664 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !662)
!665 = !DILocation(line: 212, column: 19, scope: !297, inlinedAt: !652)
!666 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !667)
!667 = distinct !DILocation(line: 215, column: 13, scope: !297, inlinedAt: !652)
!668 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !667)
!669 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !667)
!670 = !DILocation(line: 212, column: 26, scope: !297, inlinedAt: !652)
!671 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !672)
!672 = distinct !DILocation(line: 216, column: 13, scope: !297, inlinedAt: !652)
!673 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !672)
!674 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !672)
!675 = !DILocation(line: 212, column: 33, scope: !297, inlinedAt: !652)
!676 = !DILocation(line: 217, column: 20, scope: !297, inlinedAt: !652)
!677 = !DILocation(line: 217, column: 29, scope: !297, inlinedAt: !652)
!678 = !DILocation(line: 217, column: 9, scope: !297, inlinedAt: !652)
!679 = !DILocation(line: 212, column: 40, scope: !297, inlinedAt: !652)
!680 = !DILocation(line: 218, column: 20, scope: !297, inlinedAt: !652)
!681 = !DILocation(line: 218, column: 29, scope: !297, inlinedAt: !652)
!682 = !DILocation(line: 218, column: 9, scope: !297, inlinedAt: !652)
!683 = !DILocation(line: 212, column: 43, scope: !297, inlinedAt: !652)
!684 = !DILocation(line: 220, column: 24, scope: !297, inlinedAt: !652)
!685 = !DILocation(line: 220, column: 30, scope: !297, inlinedAt: !652)
!686 = !DILocation(line: 220, column: 43, scope: !297, inlinedAt: !652)
!687 = !DILocation(line: 220, column: 41, scope: !297, inlinedAt: !652)
!688 = !DILocation(line: 220, column: 54, scope: !297, inlinedAt: !652)
!689 = !DILocation(line: 220, column: 58, scope: !297, inlinedAt: !652)
!690 = !DILocation(line: 220, column: 28, scope: !297, inlinedAt: !652)
!691 = !DILocation(line: 220, column: 17, scope: !297, inlinedAt: !652)
!692 = !DILocation(line: 220, column: 12, scope: !297, inlinedAt: !652)
!693 = !DILocation(line: 219, column: 41, scope: !297, inlinedAt: !652)
!694 = !DILocation(line: 219, column: 5, scope: !297, inlinedAt: !652)
!695 = !DILocation(line: 226, column: 15, scope: !635)
!696 = !DILocation(line: 227, column: 19, scope: !697)
!697 = distinct !DILexicalBlock(scope: !635, file: !3, line: 227, column: 9)
!698 = !DILocation(line: 227, column: 29, scope: !697)
!699 = !DILocation(line: 229, column: 1, scope: !635)
!700 = distinct !DISubprogram(name: "geohashGetDistanceIfInRadiusWGS84", scope: !3, file: !3, line: 231, type: !636, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !701)
!701 = !{!702, !703, !704, !705, !706, !707}
!702 = !DILocalVariable(name: "x1", arg: 1, scope: !700, file: !3, line: 231, type: !9)
!703 = !DILocalVariable(name: "y1", arg: 2, scope: !700, file: !3, line: 231, type: !9)
!704 = !DILocalVariable(name: "x2", arg: 3, scope: !700, file: !3, line: 231, type: !9)
!705 = !DILocalVariable(name: "y2", arg: 4, scope: !700, file: !3, line: 232, type: !9)
!706 = !DILocalVariable(name: "radius", arg: 5, scope: !700, file: !3, line: 232, type: !9)
!707 = !DILocalVariable(name: "distance", arg: 6, scope: !700, file: !3, line: 233, type: !63)
!708 = !DILocation(line: 231, column: 46, scope: !700)
!709 = !DILocation(line: 231, column: 57, scope: !700)
!710 = !DILocation(line: 231, column: 68, scope: !700)
!711 = !DILocation(line: 232, column: 46, scope: !700)
!712 = !DILocation(line: 232, column: 57, scope: !700)
!713 = !DILocation(line: 233, column: 47, scope: !700)
!714 = !DILocation(line: 223, column: 41, scope: !635, inlinedAt: !715)
!715 = distinct !DILocation(line: 234, column: 12, scope: !700)
!716 = !DILocation(line: 223, column: 52, scope: !635, inlinedAt: !715)
!717 = !DILocation(line: 224, column: 41, scope: !635, inlinedAt: !715)
!718 = !DILocation(line: 224, column: 52, scope: !635, inlinedAt: !715)
!719 = !DILocation(line: 224, column: 63, scope: !635, inlinedAt: !715)
!720 = !DILocation(line: 225, column: 42, scope: !635, inlinedAt: !715)
!721 = !DILocation(line: 211, column: 34, scope: !297, inlinedAt: !722)
!722 = distinct !DILocation(line: 226, column: 17, scope: !635, inlinedAt: !715)
!723 = !DILocation(line: 211, column: 48, scope: !297, inlinedAt: !722)
!724 = !DILocation(line: 211, column: 62, scope: !297, inlinedAt: !722)
!725 = !DILocation(line: 211, column: 76, scope: !297, inlinedAt: !722)
!726 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !727)
!727 = distinct !DILocation(line: 213, column: 13, scope: !297, inlinedAt: !722)
!728 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !727)
!729 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !727)
!730 = !DILocation(line: 212, column: 12, scope: !297, inlinedAt: !722)
!731 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !732)
!732 = distinct !DILocation(line: 214, column: 13, scope: !297, inlinedAt: !722)
!733 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !732)
!734 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !732)
!735 = !DILocation(line: 212, column: 19, scope: !297, inlinedAt: !722)
!736 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !737)
!737 = distinct !DILocation(line: 215, column: 13, scope: !297, inlinedAt: !722)
!738 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !737)
!739 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !737)
!740 = !DILocation(line: 212, column: 26, scope: !297, inlinedAt: !722)
!741 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !742)
!742 = distinct !DILocation(line: 216, column: 13, scope: !297, inlinedAt: !722)
!743 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !742)
!744 = !DILocation(line: 57, column: 44, scope: !78, inlinedAt: !742)
!745 = !DILocation(line: 212, column: 33, scope: !297, inlinedAt: !722)
!746 = !DILocation(line: 217, column: 20, scope: !297, inlinedAt: !722)
!747 = !DILocation(line: 217, column: 29, scope: !297, inlinedAt: !722)
!748 = !DILocation(line: 217, column: 9, scope: !297, inlinedAt: !722)
!749 = !DILocation(line: 212, column: 40, scope: !297, inlinedAt: !722)
!750 = !DILocation(line: 218, column: 20, scope: !297, inlinedAt: !722)
!751 = !DILocation(line: 218, column: 29, scope: !297, inlinedAt: !722)
!752 = !DILocation(line: 218, column: 9, scope: !297, inlinedAt: !722)
!753 = !DILocation(line: 212, column: 43, scope: !297, inlinedAt: !722)
!754 = !DILocation(line: 220, column: 24, scope: !297, inlinedAt: !722)
!755 = !DILocation(line: 220, column: 30, scope: !297, inlinedAt: !722)
!756 = !DILocation(line: 220, column: 43, scope: !297, inlinedAt: !722)
!757 = !DILocation(line: 220, column: 41, scope: !297, inlinedAt: !722)
!758 = !DILocation(line: 220, column: 54, scope: !297, inlinedAt: !722)
!759 = !DILocation(line: 220, column: 58, scope: !297, inlinedAt: !722)
!760 = !DILocation(line: 220, column: 28, scope: !297, inlinedAt: !722)
!761 = !DILocation(line: 220, column: 17, scope: !297, inlinedAt: !722)
!762 = !DILocation(line: 220, column: 12, scope: !297, inlinedAt: !722)
!763 = !DILocation(line: 219, column: 41, scope: !297, inlinedAt: !722)
!764 = !DILocation(line: 219, column: 5, scope: !297, inlinedAt: !722)
!765 = !DILocation(line: 226, column: 15, scope: !635, inlinedAt: !715)
!766 = !DILocation(line: 227, column: 19, scope: !697, inlinedAt: !715)
!767 = !DILocation(line: 227, column: 29, scope: !697, inlinedAt: !715)
!768 = !DILocation(line: 229, column: 1, scope: !635, inlinedAt: !715)
!769 = !DILocation(line: 234, column: 5, scope: !700)
