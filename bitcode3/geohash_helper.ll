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

; Function Attrs: noredzone nounwind readnone
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
  ret i8 %32, !dbg !59
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @geohashBoundingBox(double, double, double, double*) local_unnamed_addr #3 !dbg !60 {
  %5 = icmp eq double* %3, null, !dbg !73
  br i1 %5, label %26, label %6, !dbg !75

; <label>:6:                                      ; preds = %4
  %7 = fdiv double %2, 0x41584F6F63E51090, !dbg !76
  %8 = fmul double %1, 0x3F91DF46A2529D39, !dbg !84
  %9 = tail call double @cos(double %8) #5, !dbg !85
  %10 = fdiv double %7, %9, !dbg !86
  %11 = fdiv double %10, 0x3F91DF46A2529D39, !dbg !92
  %12 = fsub double %0, %11, !dbg !93
  store double %12, double* %3, align 8, !dbg !94, !tbaa !95
  %13 = tail call double @cos(double %8) #5, !dbg !101
  %14 = fdiv double %7, %13, !dbg !102
  %15 = getelementptr inbounds double, double* %3, i64 2, !dbg !105
  %16 = insertelement <2 x double> undef, double %14, i32 0, !dbg !108
  %17 = insertelement <2 x double> %16, double %7, i32 1, !dbg !108
  %18 = fdiv <2 x double> %17, <double 0x3F91DF46A2529D39, double 0x3F91DF46A2529D39>, !dbg !108
  %19 = extractelement <2 x double> %18, i32 1, !dbg !109
  %20 = fsub double %1, %19, !dbg !109
  %21 = getelementptr inbounds double, double* %3, i64 1, !dbg !110
  store double %20, double* %21, align 8, !dbg !111, !tbaa !95
  %22 = insertelement <2 x double> undef, double %0, i32 0, !dbg !114
  %23 = insertelement <2 x double> %22, double %1, i32 1, !dbg !114
  %24 = fadd <2 x double> %23, %18, !dbg !114
  %25 = bitcast double* %15 to <2 x double>*, !dbg !115
  store <2 x double> %24, <2 x double>* %25, align 8, !dbg !115, !tbaa !95
  br label %26, !dbg !116

; <label>:26:                                     ; preds = %4, %6
  %27 = phi i32 [ 1, %6 ], [ 0, %4 ], !dbg !117
  ret i32 %27, !dbg !118
}

; Function Attrs: noredzone
declare dso_local double @cos(double) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @geohashGetAreasByRadius(%struct.GeoHashRadius* noalias nocapture sret, double, double, double) local_unnamed_addr #3 !dbg !119 {
  %5 = alloca %struct.GeoHashRange, align 8
  %6 = alloca %struct.GeoHashRange, align 8
  %7 = alloca %struct.GeoHashBits, align 8
  %8 = alloca %struct.GeoHashNeighbors, align 8
  %9 = alloca %struct.GeoHashArea, align 8
  %10 = alloca %struct.GeoHashArea, align 8
  %11 = alloca %struct.GeoHashArea, align 8
  %12 = alloca %struct.GeoHashArea, align 8
  %13 = alloca %struct.GeoHashArea, align 8
  %14 = bitcast %struct.GeoHashRange* %5 to i8*, !dbg !188
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %14) #6, !dbg !188
  %15 = bitcast %struct.GeoHashRange* %6 to i8*, !dbg !188
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #6, !dbg !188
  %16 = bitcast %struct.GeoHashBits* %7 to i8*, !dbg !190
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #6, !dbg !190
  %17 = bitcast %struct.GeoHashNeighbors* %8 to i8*, !dbg !191
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %17) #6, !dbg !191
  %18 = bitcast %struct.GeoHashArea* %9 to i8*, !dbg !192
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %18) #6, !dbg !192
  %19 = fdiv double %3, 0x41584F6F63E51090, !dbg !198
  %20 = fmul double %2, 0x3F91DF46A2529D39, !dbg !201
  %21 = tail call double @cos(double %20) #5, !dbg !202
  %22 = fdiv double %19, %21, !dbg !203
  %23 = fdiv double %22, 0x3F91DF46A2529D39, !dbg !206
  %24 = fsub double %1, %23, !dbg !207
  %25 = tail call double @cos(double %20) #5, !dbg !211
  %26 = fdiv double %19, %25, !dbg !212
  %27 = fdiv double %26, 0x3F91DF46A2529D39, !dbg !215
  %28 = fadd double %27, %1, !dbg !216
  %29 = fdiv double %19, 0x3F91DF46A2529D39, !dbg !219
  %30 = fsub double %2, %29, !dbg !220
  %31 = fadd double %29, %2, !dbg !223
  %32 = fcmp oeq double %3, 0.000000e+00, !dbg !231
  br i1 %32, label %60, label %33, !dbg !232

; <label>:33:                                     ; preds = %4
  %34 = fcmp olt double %3, 0x41731C05E5EB851F, !dbg !234
  br i1 %34, label %35, label %41, !dbg !235

; <label>:35:                                     ; preds = %33, %35
  %36 = phi i32 [ %39, %35 ], [ 1, %33 ]
  %37 = phi double [ %38, %35 ], [ %3, %33 ]
  %38 = fmul double %37, 2.000000e+00, !dbg !236
  %39 = add nuw nsw i32 %36, 1, !dbg !237
  %40 = fcmp olt double %38, 0x41731C05E5EB851F, !dbg !234
  br i1 %40, label %35, label %41, !dbg !235, !llvm.loop !42

; <label>:41:                                     ; preds = %35, %33
  %42 = phi i32 [ 1, %33 ], [ %39, %35 ], !dbg !238
  %43 = add nsw i32 %42, -2, !dbg !239
  %44 = fcmp ogt double %2, 6.600000e+01, !dbg !240
  %45 = fcmp olt double %2, -6.600000e+01, !dbg !241
  %46 = or i1 %44, %45, !dbg !242
  br i1 %46, label %47, label %53, !dbg !242

; <label>:47:                                     ; preds = %41
  %48 = fcmp ogt double %2, 8.000000e+01, !dbg !243
  %49 = fcmp olt double %2, -8.000000e+01, !dbg !244
  %50 = or i1 %48, %49, !dbg !245
  %51 = select i1 %50, i32 -4, i32 -3, !dbg !245
  %52 = add nsw i32 %42, %51, !dbg !245
  br label %53, !dbg !245

; <label>:53:                                     ; preds = %47, %41
  %54 = phi i32 [ %43, %41 ], [ %52, %47 ], !dbg !246
  %55 = icmp sgt i32 %54, 1, !dbg !247
  %56 = select i1 %55, i32 %54, i32 1, !dbg !247
  %57 = icmp slt i32 %56, 26, !dbg !248
  %58 = select i1 %57, i32 %56, i32 26, !dbg !248
  %59 = trunc i32 %58 to i8, !dbg !249
  br label %60

; <label>:60:                                     ; preds = %4, %53
  %61 = phi i8 [ %59, %53 ], [ 26, %4 ], !dbg !246
  %62 = zext i8 %61 to i32, !dbg !250
  call void @geohashGetCoordRange(%struct.GeoHashRange* nonnull %5, %struct.GeoHashRange* nonnull %6) #5, !dbg !254
  %63 = call i32 @geohashEncode(%struct.GeoHashRange* nonnull %5, %struct.GeoHashRange* nonnull %6, double %1, double %2, i8 zeroext %61, %struct.GeoHashBits* nonnull %7) #5, !dbg !256
  call void @geohashNeighbors(%struct.GeoHashBits* nonnull %7, %struct.GeoHashNeighbors* nonnull %8) #5, !dbg !258
  %64 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %5, i64 0, i32 0, !dbg !259
  %65 = load double, double* %64, align 8, !dbg !259
  %66 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %5, i64 0, i32 1, !dbg !259
  %67 = load double, double* %66, align 8, !dbg !259
  %68 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %6, i64 0, i32 0, !dbg !259
  %69 = load double, double* %68, align 8, !dbg !259
  %70 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %6, i64 0, i32 1, !dbg !259
  %71 = load double, double* %70, align 8, !dbg !259
  %72 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %7, i64 0, i32 0, !dbg !259
  %73 = load i64, i64* %72, align 8, !dbg !259
  %74 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %7, i64 0, i32 1, !dbg !259
  %75 = load i8, i8* %74, align 8, !dbg !259
  %76 = call i32 @geohashDecode(double %65, double %67, double %69, double %71, i64 %73, i8 %75, %struct.GeoHashArea* nonnull %9) #5, !dbg !259
  %77 = bitcast %struct.GeoHashArea* %10 to i8*, !dbg !262
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %77) #6, !dbg !262
  %78 = bitcast %struct.GeoHashArea* %11 to i8*, !dbg !262
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %78) #6, !dbg !262
  %79 = bitcast %struct.GeoHashArea* %12 to i8*, !dbg !262
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %79) #6, !dbg !262
  %80 = bitcast %struct.GeoHashArea* %13 to i8*, !dbg !262
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %80) #6, !dbg !262
  %81 = load double, double* %64, align 8, !dbg !263
  %82 = load double, double* %66, align 8, !dbg !263
  %83 = load double, double* %68, align 8, !dbg !263
  %84 = load double, double* %70, align 8, !dbg !263
  %85 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 0, i32 0, !dbg !263
  %86 = load i64, i64* %85, align 8, !dbg !263
  %87 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 0, i32 1, !dbg !263
  %88 = load i8, i8* %87, align 8, !dbg !263
  %89 = call i32 @geohashDecode(double %81, double %82, double %83, double %84, i64 %86, i8 %88, %struct.GeoHashArea* nonnull %10) #5, !dbg !263
  %90 = load double, double* %64, align 8, !dbg !265
  %91 = load double, double* %66, align 8, !dbg !265
  %92 = load double, double* %68, align 8, !dbg !265
  %93 = load double, double* %70, align 8, !dbg !265
  %94 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 3, i32 0, !dbg !265
  %95 = load i64, i64* %94, align 8, !dbg !265
  %96 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 3, i32 1, !dbg !265
  %97 = load i8, i8* %96, align 8, !dbg !265
  %98 = call i32 @geohashDecode(double %90, double %91, double %92, double %93, i64 %95, i8 %97, %struct.GeoHashArea* nonnull %11) #5, !dbg !265
  %99 = load double, double* %64, align 8, !dbg !267
  %100 = load double, double* %66, align 8, !dbg !267
  %101 = load double, double* %68, align 8, !dbg !267
  %102 = load double, double* %70, align 8, !dbg !267
  %103 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 1, i32 0, !dbg !267
  %104 = load i64, i64* %103, align 8, !dbg !267
  %105 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 1, i32 1, !dbg !267
  %106 = load i8, i8* %105, align 8, !dbg !267
  %107 = call i32 @geohashDecode(double %99, double %100, double %101, double %102, i64 %104, i8 %106, %struct.GeoHashArea* nonnull %12) #5, !dbg !267
  %108 = load double, double* %64, align 8, !dbg !269
  %109 = load double, double* %66, align 8, !dbg !269
  %110 = load double, double* %68, align 8, !dbg !269
  %111 = load double, double* %70, align 8, !dbg !269
  %112 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 2, i32 0, !dbg !269
  %113 = load i64, i64* %112, align 8, !dbg !269
  %114 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 2, i32 1, !dbg !269
  %115 = load i8, i8* %114, align 8, !dbg !269
  %116 = call i32 @geohashDecode(double %108, double %109, double %110, double %111, i64 %113, i8 %115, %struct.GeoHashArea* nonnull %13) #5, !dbg !269
  %117 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %10, i64 0, i32 2, i32 1, !dbg !271
  %118 = load double, double* %117, align 8, !dbg !271, !tbaa !273
  %119 = fmul double %1, 0x3F91DF46A2529D39, !dbg !302
  %120 = fmul double %118, 0x3F91DF46A2529D39, !dbg !306
  %121 = fsub double %120, %20, !dbg !311
  %122 = fmul double %121, 5.000000e-01, !dbg !312
  %123 = call double @sin(double %122) #5, !dbg !313
  %124 = fsub double %119, %119, !dbg !315
  %125 = fmul double %124, 5.000000e-01, !dbg !316
  %126 = call double @sin(double %125) #5, !dbg !317
  %127 = fmul double %123, %123, !dbg !319
  %128 = call double @cos(double %20) #5, !dbg !320
  %129 = call double @cos(double %120) #5, !dbg !321
  %130 = fmul double %128, %129, !dbg !322
  %131 = fmul double %126, %130, !dbg !323
  %132 = fmul double %126, %131, !dbg !324
  %133 = fadd double %127, %132, !dbg !325
  %134 = call double @sqrt(double %133) #5, !dbg !326
  %135 = call double @asin(double %134) #5, !dbg !327
  %136 = fmul double %135, 0x41684F6F63E51090, !dbg !328
  %137 = fcmp olt double %136, %3, !dbg !329
  %138 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %11, i64 0, i32 2, i32 0, !dbg !330
  %139 = load double, double* %138, align 8, !dbg !330, !tbaa !332
  %140 = fmul double %139, 0x3F91DF46A2529D39, !dbg !346
  %141 = fsub double %140, %20, !dbg !351
  %142 = fmul double %141, 5.000000e-01, !dbg !352
  %143 = call double @sin(double %142) #5, !dbg !353
  %144 = call double @sin(double %125) #5, !dbg !355
  %145 = fmul double %143, %143, !dbg !357
  %146 = call double @cos(double %20) #5, !dbg !358
  %147 = call double @cos(double %140) #5, !dbg !359
  %148 = fmul double %146, %147, !dbg !360
  %149 = fmul double %144, %148, !dbg !361
  %150 = fmul double %144, %149, !dbg !362
  %151 = fadd double %145, %150, !dbg !363
  %152 = call double @sqrt(double %151) #5, !dbg !364
  %153 = call double @asin(double %152) #5, !dbg !365
  %154 = fmul double %153, 0x41684F6F63E51090, !dbg !366
  %155 = fcmp olt double %154, %3, !dbg !367
  %156 = or i1 %137, %155, !dbg !368
  %157 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %12, i64 0, i32 1, i32 1, !dbg !369
  %158 = load double, double* %157, align 8, !dbg !369, !tbaa !371
  %159 = fmul double %158, 0x3F91DF46A2529D39, !dbg !388
  %160 = fsub double %20, %20, !dbg !390
  %161 = fmul double %160, 5.000000e-01, !dbg !391
  %162 = call double @sin(double %161) #5, !dbg !392
  %163 = fsub double %159, %119, !dbg !394
  %164 = fmul double %163, 5.000000e-01, !dbg !395
  %165 = call double @sin(double %164) #5, !dbg !396
  %166 = fmul double %162, %162, !dbg !398
  %167 = call double @cos(double %20) #5, !dbg !399
  %168 = call double @cos(double %20) #5, !dbg !400
  %169 = fmul double %167, %168, !dbg !401
  %170 = fmul double %165, %169, !dbg !402
  %171 = fmul double %165, %170, !dbg !403
  %172 = fadd double %166, %171, !dbg !404
  %173 = call double @sqrt(double %172) #5, !dbg !405
  %174 = call double @asin(double %173) #5, !dbg !406
  %175 = fmul double %174, 0x41684F6F63E51090, !dbg !407
  %176 = fcmp olt double %175, %3, !dbg !408
  %177 = or i1 %156, %176, !dbg !409
  %178 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %13, i64 0, i32 1, i32 0, !dbg !410
  %179 = load double, double* %178, align 8, !dbg !410, !tbaa !412
  %180 = fmul double %179, 0x3F91DF46A2529D39, !dbg !429
  %181 = call double @sin(double %161) #5, !dbg !431
  %182 = fsub double %180, %119, !dbg !433
  %183 = fmul double %182, 5.000000e-01, !dbg !434
  %184 = call double @sin(double %183) #5, !dbg !435
  %185 = fmul double %181, %181, !dbg !437
  %186 = call double @cos(double %20) #5, !dbg !438
  %187 = call double @cos(double %20) #5, !dbg !439
  %188 = fmul double %186, %187, !dbg !440
  %189 = fmul double %184, %188, !dbg !441
  %190 = fmul double %184, %189, !dbg !442
  %191 = fadd double %185, %190, !dbg !443
  %192 = call double @sqrt(double %191) #5, !dbg !444
  %193 = call double @asin(double %192) #5, !dbg !445
  %194 = fmul double %193, 0x41684F6F63E51090, !dbg !446
  %195 = fcmp olt double %194, %3, !dbg !447
  %196 = or i1 %177, %195, !dbg !448
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %80) #6, !dbg !449
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %79) #6, !dbg !449
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %78) #6, !dbg !449
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %77) #6, !dbg !449
  %197 = icmp ugt i8 %61, 1, !dbg !450
  %198 = and i1 %197, %196, !dbg !452
  br i1 %198, label %199, label %210, !dbg !452

; <label>:199:                                    ; preds = %60
  %200 = add nsw i32 %62, -1, !dbg !453
  %201 = trunc i32 %200 to i8, !dbg !455
  %202 = call i32 @geohashEncode(%struct.GeoHashRange* nonnull %5, %struct.GeoHashRange* nonnull %6, double %1, double %2, i8 zeroext %201, %struct.GeoHashBits* nonnull %7) #5, !dbg !456
  call void @geohashNeighbors(%struct.GeoHashBits* nonnull %7, %struct.GeoHashNeighbors* nonnull %8) #5, !dbg !457
  %203 = load double, double* %64, align 8, !dbg !458
  %204 = load double, double* %66, align 8, !dbg !458
  %205 = load double, double* %68, align 8, !dbg !458
  %206 = load double, double* %70, align 8, !dbg !458
  %207 = load i64, i64* %72, align 8, !dbg !458
  %208 = load i8, i8* %74, align 8, !dbg !458
  %209 = call i32 @geohashDecode(double %203, double %204, double %205, double %206, i64 %207, i8 %208, %struct.GeoHashArea* nonnull %9) #5, !dbg !458
  br label %210, !dbg !459

; <label>:210:                                    ; preds = %199, %60
  %211 = phi i32 [ %200, %199 ], [ %62, %60 ], !dbg !460
  %212 = icmp sgt i32 %211, 1, !dbg !461
  br i1 %212, label %213, label %249, !dbg !463

; <label>:213:                                    ; preds = %210
  %214 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %9, i64 0, i32 2, i32 0, !dbg !464
  %215 = load double, double* %214, align 8, !dbg !464, !tbaa !332
  %216 = fcmp olt double %215, %30, !dbg !467
  br i1 %216, label %217, label %222, !dbg !468

; <label>:217:                                    ; preds = %213
  store i8 0, i8* %96, align 8, !dbg !469, !tbaa !471
  store i64 0, i64* %94, align 8, !dbg !469, !tbaa !473
  %218 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 7, i32 1, !dbg !474
  store i8 0, i8* %218, align 8, !dbg !474, !tbaa !475
  %219 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 7, i32 0, !dbg !474
  store i64 0, i64* %219, align 8, !dbg !474, !tbaa !476
  %220 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 5, i32 1, !dbg !477
  store i8 0, i8* %220, align 8, !dbg !477, !tbaa !478
  %221 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 5, i32 0, !dbg !477
  store i64 0, i64* %221, align 8, !dbg !477, !tbaa !479
  br label %222, !dbg !480

; <label>:222:                                    ; preds = %217, %213
  %223 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %9, i64 0, i32 2, i32 1, !dbg !481
  %224 = load double, double* %223, align 8, !dbg !481, !tbaa !273
  %225 = fcmp ogt double %224, %31, !dbg !483
  br i1 %225, label %226, label %231, !dbg !484

; <label>:226:                                    ; preds = %222
  store i8 0, i8* %87, align 8, !dbg !485, !tbaa !487
  store i64 0, i64* %85, align 8, !dbg !485, !tbaa !488
  %227 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 4, i32 1, !dbg !489
  store i8 0, i8* %227, align 8, !dbg !489, !tbaa !490
  %228 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 4, i32 0, !dbg !489
  store i64 0, i64* %228, align 8, !dbg !489, !tbaa !491
  %229 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 6, i32 1, !dbg !492
  store i8 0, i8* %229, align 8, !dbg !492, !tbaa !493
  %230 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 6, i32 0, !dbg !492
  store i64 0, i64* %230, align 8, !dbg !492, !tbaa !494
  br label %231, !dbg !495

; <label>:231:                                    ; preds = %226, %222
  %232 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %9, i64 0, i32 1, i32 0, !dbg !496
  %233 = load double, double* %232, align 8, !dbg !496, !tbaa !412
  %234 = fcmp olt double %233, %24, !dbg !498
  br i1 %234, label %235, label %240, !dbg !499

; <label>:235:                                    ; preds = %231
  store i8 0, i8* %114, align 8, !dbg !500, !tbaa !502
  store i64 0, i64* %112, align 8, !dbg !500, !tbaa !503
  %236 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 7, i32 1, !dbg !504
  store i8 0, i8* %236, align 8, !dbg !504, !tbaa !475
  %237 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 7, i32 0, !dbg !504
  store i64 0, i64* %237, align 8, !dbg !504, !tbaa !476
  %238 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 6, i32 1, !dbg !505
  store i8 0, i8* %238, align 8, !dbg !505, !tbaa !493
  %239 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 6, i32 0, !dbg !505
  store i64 0, i64* %239, align 8, !dbg !505, !tbaa !494
  br label %240, !dbg !506

; <label>:240:                                    ; preds = %235, %231
  %241 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %9, i64 0, i32 1, i32 1, !dbg !507
  %242 = load double, double* %241, align 8, !dbg !507, !tbaa !371
  %243 = fcmp ogt double %242, %28, !dbg !509
  br i1 %243, label %244, label %249, !dbg !510

; <label>:244:                                    ; preds = %240
  store i8 0, i8* %105, align 8, !dbg !511, !tbaa !513
  store i64 0, i64* %103, align 8, !dbg !511, !tbaa !514
  %245 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 5, i32 1, !dbg !515
  store i8 0, i8* %245, align 8, !dbg !515, !tbaa !478
  %246 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 5, i32 0, !dbg !515
  store i64 0, i64* %246, align 8, !dbg !515, !tbaa !479
  %247 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 4, i32 1, !dbg !516
  store i8 0, i8* %247, align 8, !dbg !516, !tbaa !490
  %248 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %8, i64 0, i32 4, i32 0, !dbg !516
  store i64 0, i64* %248, align 8, !dbg !516, !tbaa !491
  br label %249, !dbg !517

; <label>:249:                                    ; preds = %240, %244, %210
  %250 = bitcast %struct.GeoHashRadius* %0 to i8*, !dbg !518
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %250, i8* nonnull align 8 %16, i64 16, i1 false), !dbg !518, !tbaa.struct !519
  %251 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %0, i64 0, i32 2, !dbg !522
  %252 = bitcast %struct.GeoHashNeighbors* %251 to i8*, !dbg !523
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %252, i8* nonnull align 8 %17, i64 128, i1 false), !dbg !523, !tbaa.struct !524
  %253 = getelementptr inbounds %struct.GeoHashRadius, %struct.GeoHashRadius* %0, i64 0, i32 1, !dbg !525
  %254 = bitcast %struct.GeoHashArea* %253 to i8*, !dbg !526
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %254, i8* nonnull align 8 %18, i64 48, i1 false), !dbg !526, !tbaa.struct !527
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %18) #6, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %17) #6, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #6, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #6, !dbg !528
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %14) #6, !dbg !528
  ret void, !dbg !528
}

; Function Attrs: noredzone
declare dso_local void @geohashGetCoordRange(%struct.GeoHashRange*, %struct.GeoHashRange*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @geohashEncode(%struct.GeoHashRange*, %struct.GeoHashRange*, double, double, i8 zeroext, %struct.GeoHashBits*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @geohashNeighbors(%struct.GeoHashBits*, %struct.GeoHashNeighbors*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @geohashDecode(double, double, double, double, i64, i8, %struct.GeoHashArea*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local double @geohashGetDistance(double, double, double, double) local_unnamed_addr #3 !dbg !279 {
  %5 = fmul double %1, 0x3F91DF46A2529D39, !dbg !535
  %6 = fmul double %0, 0x3F91DF46A2529D39, !dbg !539
  %7 = fmul double %3, 0x3F91DF46A2529D39, !dbg !543
  %8 = fmul double %2, 0x3F91DF46A2529D39, !dbg !547
  %9 = fsub double %7, %5, !dbg !549
  %10 = fmul double %9, 5.000000e-01, !dbg !550
  %11 = tail call double @sin(double %10) #5, !dbg !551
  %12 = fsub double %8, %6, !dbg !553
  %13 = fmul double %12, 5.000000e-01, !dbg !554
  %14 = tail call double @sin(double %13) #5, !dbg !555
  %15 = fmul double %11, %11, !dbg !557
  %16 = tail call double @cos(double %5) #5, !dbg !558
  %17 = tail call double @cos(double %7) #5, !dbg !559
  %18 = fmul double %16, %17, !dbg !560
  %19 = fmul double %14, %18, !dbg !561
  %20 = fmul double %14, %19, !dbg !562
  %21 = fadd double %15, %20, !dbg !563
  %22 = tail call double @sqrt(double %21) #5, !dbg !564
  %23 = tail call double @asin(double %22) #5, !dbg !565
  %24 = fmul double %23, 0x41684F6F63E51090, !dbg !566
  ret double %24, !dbg !567
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone nounwind
define dso_local void @geohashGetAreasByRadiusWGS84(%struct.GeoHashRadius* noalias nocapture sret, double, double, double) local_unnamed_addr #3 !dbg !568 {
  tail call void @geohashGetAreasByRadius(%struct.GeoHashRadius* sret %0, double %1, double %2, double %3) #7, !dbg !576
  ret void, !dbg !577
}

; Function Attrs: noredzone nounwind readnone
define dso_local i64 @geohashAlign52Bits(i64, i8) local_unnamed_addr #0 !dbg !578 {
  %3 = zext i8 %1 to i64, !dbg !588
  %4 = shl nuw nsw i64 %3, 1, !dbg !589
  %5 = sub nsw i64 52, %4, !dbg !590
  %6 = and i64 %5, 4294967294, !dbg !591
  %7 = shl i64 %0, %6, !dbg !591
  ret i64 %7, !dbg !592
}

; Function Attrs: noredzone
declare dso_local double @sin(double) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local double @asin(double) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local double @sqrt(double) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i32 @geohashGetDistanceIfInRadius(double, double, double, double, double, double* nocapture) local_unnamed_addr #3 !dbg !593 {
  %7 = fmul double %1, 0x3F91DF46A2529D39, !dbg !616
  %8 = fmul double %0, 0x3F91DF46A2529D39, !dbg !620
  %9 = fmul double %3, 0x3F91DF46A2529D39, !dbg !624
  %10 = fmul double %2, 0x3F91DF46A2529D39, !dbg !628
  %11 = fsub double %9, %7, !dbg !630
  %12 = fmul double %11, 5.000000e-01, !dbg !631
  %13 = tail call double @sin(double %12) #5, !dbg !632
  %14 = fsub double %10, %8, !dbg !634
  %15 = fmul double %14, 5.000000e-01, !dbg !635
  %16 = tail call double @sin(double %15) #5, !dbg !636
  %17 = fmul double %13, %13, !dbg !638
  %18 = tail call double @cos(double %7) #5, !dbg !639
  %19 = tail call double @cos(double %9) #5, !dbg !640
  %20 = fmul double %18, %19, !dbg !641
  %21 = fmul double %16, %20, !dbg !642
  %22 = fmul double %16, %21, !dbg !643
  %23 = fadd double %17, %22, !dbg !644
  %24 = tail call double @sqrt(double %23) #5, !dbg !645
  %25 = tail call double @asin(double %24) #5, !dbg !646
  %26 = fmul double %25, 0x41684F6F63E51090, !dbg !647
  store double %26, double* %5, align 8, !dbg !648, !tbaa !95
  %27 = fcmp ule double %26, %4, !dbg !649
  %28 = zext i1 %27 to i32, !dbg !651
  ret i32 %28, !dbg !652
}

; Function Attrs: noredzone nounwind
define dso_local i32 @geohashGetDistanceIfInRadiusWGS84(double, double, double, double, double, double* nocapture) local_unnamed_addr #3 !dbg !653 {
  %7 = fmul double %1, 0x3F91DF46A2529D39, !dbg !681
  %8 = fmul double %0, 0x3F91DF46A2529D39, !dbg !685
  %9 = fmul double %3, 0x3F91DF46A2529D39, !dbg !689
  %10 = fmul double %2, 0x3F91DF46A2529D39, !dbg !693
  %11 = fsub double %9, %7, !dbg !695
  %12 = fmul double %11, 5.000000e-01, !dbg !696
  %13 = tail call double @sin(double %12) #5, !dbg !697
  %14 = fsub double %10, %8, !dbg !699
  %15 = fmul double %14, 5.000000e-01, !dbg !700
  %16 = tail call double @sin(double %15) #5, !dbg !701
  %17 = fmul double %13, %13, !dbg !703
  %18 = tail call double @cos(double %7) #5, !dbg !704
  %19 = tail call double @cos(double %9) #5, !dbg !705
  %20 = fmul double %18, %19, !dbg !706
  %21 = fmul double %16, %20, !dbg !707
  %22 = fmul double %16, %21, !dbg !708
  %23 = fadd double %17, %22, !dbg !709
  %24 = tail call double @sqrt(double %23) #5, !dbg !710
  %25 = tail call double @asin(double %24) #5, !dbg !711
  %26 = fmul double %25, 0x41684F6F63E51090, !dbg !712
  store double %26, double* %5, align 8, !dbg !713, !tbaa !95
  %27 = fcmp ule double %26, %4, !dbg !714
  %28 = zext i1 %27 to i32, !dbg !715
  ret i32 %28, !dbg !716
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone }

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
!85 = !DILocation(line: 107, column: 74, scope: !60)
!86 = !DILocation(line: 107, column: 73, scope: !60)
!87 = !DILocalVariable(name: "ang", arg: 1, scope: !88, file: !3, line: 58, type: !9)
!88 = distinct !DISubprogram(name: "rad_deg", scope: !3, file: !3, line: 58, type: !79, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !89)
!89 = !{!87}
!90 = !DILocation(line: 58, column: 37, scope: !88, inlinedAt: !91)
!91 = distinct !DILocation(line: 107, column: 29, scope: !60)
!92 = !DILocation(line: 58, column: 55, scope: !88, inlinedAt: !91)
!93 = !DILocation(line: 107, column: 27, scope: !60)
!94 = !DILocation(line: 107, column: 15, scope: !60)
!95 = !{!96, !96, i64 0}
!96 = !{!"double", !97, i64 0}
!97 = !{!"omnipotent char", !98, i64 0}
!98 = !{!"Simple C/C++ TBAA"}
!99 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !100)
!100 = distinct !DILocation(line: 108, column: 78, scope: !60)
!101 = !DILocation(line: 108, column: 74, scope: !60)
!102 = !DILocation(line: 108, column: 73, scope: !60)
!103 = !DILocation(line: 58, column: 37, scope: !88, inlinedAt: !104)
!104 = distinct !DILocation(line: 108, column: 29, scope: !60)
!105 = !DILocation(line: 108, column: 5, scope: !60)
!106 = !DILocation(line: 58, column: 37, scope: !88, inlinedAt: !107)
!107 = distinct !DILocation(line: 109, column: 28, scope: !60)
!108 = !DILocation(line: 58, column: 55, scope: !88, inlinedAt: !104)
!109 = !DILocation(line: 109, column: 26, scope: !60)
!110 = !DILocation(line: 109, column: 5, scope: !60)
!111 = !DILocation(line: 109, column: 15, scope: !60)
!112 = !DILocation(line: 58, column: 37, scope: !88, inlinedAt: !113)
!113 = distinct !DILocation(line: 110, column: 28, scope: !60)
!114 = !DILocation(line: 108, column: 27, scope: !60)
!115 = !DILocation(line: 108, column: 15, scope: !60)
!116 = !DILocation(line: 111, column: 5, scope: !60)
!117 = !DILocation(line: 0, scope: !74)
!118 = !DILocation(line: 112, column: 1, scope: !60)
!119 = distinct !DISubprogram(name: "geohashGetAreasByRadius", scope: !3, file: !3, line: 116, type: !120, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !160)
!120 = !DISubroutineType(types: !121)
!121 = !{!122, !9, !9, !9}
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashRadius", file: !123, line: 48, baseType: !124)
!123 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geohash_helper.h", directory: "/root/.unikraft/apps/redis/build")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 44, size: 1536, elements: !125)
!125 = !{!126, !136, !148}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !124, file: !123, line: 45, baseType: !127, size: 128)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashBits", file: !128, line: 69, baseType: !129)
!128 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geohash.h", directory: "/root/.unikraft/apps/redis/build")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 66, size: 128, elements: !130)
!130 = !{!131, !135}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !129, file: !128, line: 67, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 60, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !24, line: 105, baseType: !134)
!134 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !129, file: !128, line: 68, baseType: !21, size: 8, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !124, file: !123, line: 46, baseType: !137, size: 384, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashArea", file: !128, line: 80, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 76, size: 384, elements: !139)
!139 = !{!140, !141, !147}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !138, file: !128, line: 77, baseType: !127, size: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "longitude", scope: !138, file: !128, line: 78, baseType: !142, size: 128, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashRange", file: !128, line: 74, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 71, size: 128, elements: !144)
!144 = !{!145, !146}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !143, file: !128, line: 72, baseType: !9, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !143, file: !128, line: 73, baseType: !9, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "latitude", scope: !138, file: !128, line: 79, baseType: !142, size: 128, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "neighbors", scope: !124, file: !123, line: 47, baseType: !149, size: 1024, offset: 512)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashNeighbors", file: !128, line: 91, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 82, size: 1024, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "north", scope: !150, file: !128, line: 83, baseType: !127, size: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "east", scope: !150, file: !128, line: 84, baseType: !127, size: 128, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "west", scope: !150, file: !128, line: 85, baseType: !127, size: 128, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "south", scope: !150, file: !128, line: 86, baseType: !127, size: 128, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "north_east", scope: !150, file: !128, line: 87, baseType: !127, size: 128, offset: 512)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "south_east", scope: !150, file: !128, line: 88, baseType: !127, size: 128, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "north_west", scope: !150, file: !128, line: 89, baseType: !127, size: 128, offset: 768)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "south_west", scope: !150, file: !128, line: 90, baseType: !127, size: 128, offset: 896)
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !178, !179, !180, !182, !183, !184}
!161 = !DILocalVariable(name: "longitude", arg: 1, scope: !119, file: !3, line: 116, type: !9)
!162 = !DILocalVariable(name: "latitude", arg: 2, scope: !119, file: !3, line: 116, type: !9)
!163 = !DILocalVariable(name: "radius_meters", arg: 3, scope: !119, file: !3, line: 116, type: !9)
!164 = !DILocalVariable(name: "long_range", scope: !119, file: !3, line: 117, type: !142)
!165 = !DILocalVariable(name: "lat_range", scope: !119, file: !3, line: 117, type: !142)
!166 = !DILocalVariable(name: "radius", scope: !119, file: !3, line: 118, type: !122)
!167 = !DILocalVariable(name: "hash", scope: !119, file: !3, line: 119, type: !127)
!168 = !DILocalVariable(name: "neighbors", scope: !119, file: !3, line: 120, type: !149)
!169 = !DILocalVariable(name: "area", scope: !119, file: !3, line: 121, type: !137)
!170 = !DILocalVariable(name: "min_lon", scope: !119, file: !3, line: 122, type: !9)
!171 = !DILocalVariable(name: "max_lon", scope: !119, file: !3, line: 122, type: !9)
!172 = !DILocalVariable(name: "min_lat", scope: !119, file: !3, line: 122, type: !9)
!173 = !DILocalVariable(name: "max_lat", scope: !119, file: !3, line: 122, type: !9)
!174 = !DILocalVariable(name: "bounds", scope: !119, file: !3, line: 123, type: !175)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 4)
!178 = !DILocalVariable(name: "steps", scope: !119, file: !3, line: 124, type: !30)
!179 = !DILocalVariable(name: "decrease_step", scope: !119, file: !3, line: 144, type: !30)
!180 = !DILocalVariable(name: "north", scope: !181, file: !3, line: 146, type: !137)
!181 = distinct !DILexicalBlock(scope: !119, file: !3, line: 145, column: 5)
!182 = !DILocalVariable(name: "south", scope: !181, file: !3, line: 146, type: !137)
!183 = !DILocalVariable(name: "east", scope: !181, file: !3, line: 146, type: !137)
!184 = !DILocalVariable(name: "west", scope: !181, file: !3, line: 146, type: !137)
!185 = !DILocation(line: 116, column: 46, scope: !119)
!186 = !DILocation(line: 116, column: 64, scope: !119)
!187 = !DILocation(line: 116, column: 81, scope: !119)
!188 = !DILocation(line: 117, column: 5, scope: !119)
!189 = !DILocation(line: 118, column: 19, scope: !119)
!190 = !DILocation(line: 119, column: 5, scope: !119)
!191 = !DILocation(line: 120, column: 5, scope: !119)
!192 = !DILocation(line: 121, column: 5, scope: !119)
!193 = !DILocation(line: 103, column: 31, scope: !60, inlinedAt: !194)
!194 = distinct !DILocation(line: 126, column: 5, scope: !119)
!195 = !DILocation(line: 103, column: 49, scope: !60, inlinedAt: !194)
!196 = !DILocation(line: 103, column: 66, scope: !60, inlinedAt: !194)
!197 = !DILocation(line: 104, column: 32, scope: !60, inlinedAt: !194)
!198 = !DILocation(line: 107, column: 50, scope: !60, inlinedAt: !194)
!199 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !200)
!200 = distinct !DILocation(line: 107, column: 78, scope: !60, inlinedAt: !194)
!201 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !200)
!202 = !DILocation(line: 107, column: 74, scope: !60, inlinedAt: !194)
!203 = !DILocation(line: 107, column: 73, scope: !60, inlinedAt: !194)
!204 = !DILocation(line: 58, column: 37, scope: !88, inlinedAt: !205)
!205 = distinct !DILocation(line: 107, column: 29, scope: !60, inlinedAt: !194)
!206 = !DILocation(line: 58, column: 55, scope: !88, inlinedAt: !205)
!207 = !DILocation(line: 107, column: 27, scope: !60, inlinedAt: !194)
!208 = !DILocation(line: 123, column: 12, scope: !119)
!209 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !210)
!210 = distinct !DILocation(line: 108, column: 78, scope: !60, inlinedAt: !194)
!211 = !DILocation(line: 108, column: 74, scope: !60, inlinedAt: !194)
!212 = !DILocation(line: 108, column: 73, scope: !60, inlinedAt: !194)
!213 = !DILocation(line: 58, column: 37, scope: !88, inlinedAt: !214)
!214 = distinct !DILocation(line: 108, column: 29, scope: !60, inlinedAt: !194)
!215 = !DILocation(line: 58, column: 55, scope: !88, inlinedAt: !214)
!216 = !DILocation(line: 108, column: 27, scope: !60, inlinedAt: !194)
!217 = !DILocation(line: 58, column: 37, scope: !88, inlinedAt: !218)
!218 = distinct !DILocation(line: 109, column: 28, scope: !60, inlinedAt: !194)
!219 = !DILocation(line: 58, column: 55, scope: !88, inlinedAt: !218)
!220 = !DILocation(line: 109, column: 26, scope: !60, inlinedAt: !194)
!221 = !DILocation(line: 58, column: 37, scope: !88, inlinedAt: !222)
!222 = distinct !DILocation(line: 110, column: 28, scope: !60, inlinedAt: !194)
!223 = !DILocation(line: 110, column: 26, scope: !60, inlinedAt: !194)
!224 = !DILocation(line: 122, column: 12, scope: !119)
!225 = !DILocation(line: 122, column: 30, scope: !119)
!226 = !DILocation(line: 122, column: 21, scope: !119)
!227 = !DILocation(line: 122, column: 39, scope: !119)
!228 = !DILocation(line: 62, column: 45, scope: !18, inlinedAt: !229)
!229 = distinct !DILocation(line: 132, column: 13, scope: !119)
!230 = !DILocation(line: 62, column: 66, scope: !18, inlinedAt: !229)
!231 = !DILocation(line: 63, column: 22, scope: !34, inlinedAt: !229)
!232 = !DILocation(line: 63, column: 9, scope: !18, inlinedAt: !229)
!233 = !DILocation(line: 64, column: 9, scope: !18, inlinedAt: !229)
!234 = !DILocation(line: 65, column: 25, scope: !18, inlinedAt: !229)
!235 = !DILocation(line: 65, column: 5, scope: !18, inlinedAt: !229)
!236 = !DILocation(line: 66, column: 22, scope: !40, inlinedAt: !229)
!237 = !DILocation(line: 67, column: 13, scope: !40, inlinedAt: !229)
!238 = !DILocation(line: 0, scope: !40, inlinedAt: !229)
!239 = !DILocation(line: 69, column: 10, scope: !18, inlinedAt: !229)
!240 = !DILocation(line: 74, column: 13, scope: !47, inlinedAt: !229)
!241 = !DILocation(line: 74, column: 25, scope: !47, inlinedAt: !229)
!242 = !DILocation(line: 74, column: 18, scope: !47, inlinedAt: !229)
!243 = !DILocation(line: 76, column: 17, scope: !51, inlinedAt: !229)
!244 = !DILocation(line: 76, column: 29, scope: !51, inlinedAt: !229)
!245 = !DILocation(line: 76, column: 22, scope: !51, inlinedAt: !229)
!246 = !DILocation(line: 0, scope: !18, inlinedAt: !229)
!247 = !DILocation(line: 80, column: 9, scope: !18, inlinedAt: !229)
!248 = !DILocation(line: 81, column: 9, scope: !18, inlinedAt: !229)
!249 = !DILocation(line: 82, column: 12, scope: !18, inlinedAt: !229)
!250 = !DILocation(line: 132, column: 13, scope: !119)
!251 = !DILocation(line: 124, column: 9, scope: !119)
!252 = !DILocation(line: 117, column: 18, scope: !119)
!253 = !DILocation(line: 117, column: 30, scope: !119)
!254 = !DILocation(line: 134, column: 5, scope: !119)
!255 = !DILocation(line: 119, column: 17, scope: !119)
!256 = !DILocation(line: 135, column: 5, scope: !119)
!257 = !DILocation(line: 120, column: 22, scope: !119)
!258 = !DILocation(line: 136, column: 5, scope: !119)
!259 = !DILocation(line: 137, column: 5, scope: !119)
!260 = !DILocation(line: 121, column: 17, scope: !119)
!261 = !DILocation(line: 144, column: 9, scope: !119)
!262 = !DILocation(line: 146, column: 9, scope: !181)
!263 = !DILocation(line: 148, column: 9, scope: !181)
!264 = !DILocation(line: 146, column: 21, scope: !181)
!265 = !DILocation(line: 149, column: 9, scope: !181)
!266 = !DILocation(line: 146, column: 28, scope: !181)
!267 = !DILocation(line: 150, column: 9, scope: !181)
!268 = !DILocation(line: 146, column: 35, scope: !181)
!269 = !DILocation(line: 151, column: 9, scope: !181)
!270 = !DILocation(line: 146, column: 41, scope: !181)
!271 = !DILocation(line: 153, column: 76, scope: !272)
!272 = distinct !DILexicalBlock(scope: !181, file: !3, line: 153, column: 13)
!273 = !{!274, !96, i64 40}
!274 = !{!"", !275, i64 0, !277, i64 16, !277, i64 32}
!275 = !{!"", !276, i64 0, !97, i64 8}
!276 = !{!"long", !97, i64 0}
!277 = !{!"", !96, i64 0, !96, i64 8}
!278 = !DILocalVariable(name: "lon1d", arg: 1, scope: !279, file: !3, line: 211, type: !9)
!279 = distinct !DISubprogram(name: "geohashGetDistance", scope: !3, file: !3, line: 211, type: !280, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !282)
!280 = !DISubroutineType(types: !281)
!281 = !{!9, !9, !9, !9, !9}
!282 = !{!278, !283, !284, !285, !286, !287, !288, !289, !290, !291}
!283 = !DILocalVariable(name: "lat1d", arg: 2, scope: !279, file: !3, line: 211, type: !9)
!284 = !DILocalVariable(name: "lon2d", arg: 3, scope: !279, file: !3, line: 211, type: !9)
!285 = !DILocalVariable(name: "lat2d", arg: 4, scope: !279, file: !3, line: 211, type: !9)
!286 = !DILocalVariable(name: "lat1r", scope: !279, file: !3, line: 212, type: !9)
!287 = !DILocalVariable(name: "lon1r", scope: !279, file: !3, line: 212, type: !9)
!288 = !DILocalVariable(name: "lat2r", scope: !279, file: !3, line: 212, type: !9)
!289 = !DILocalVariable(name: "lon2r", scope: !279, file: !3, line: 212, type: !9)
!290 = !DILocalVariable(name: "u", scope: !279, file: !3, line: 212, type: !9)
!291 = !DILocalVariable(name: "v", scope: !279, file: !3, line: 212, type: !9)
!292 = !DILocation(line: 211, column: 34, scope: !279, inlinedAt: !293)
!293 = distinct !DILocation(line: 153, column: 13, scope: !272)
!294 = !DILocation(line: 211, column: 48, scope: !279, inlinedAt: !293)
!295 = !DILocation(line: 211, column: 62, scope: !279, inlinedAt: !293)
!296 = !DILocation(line: 211, column: 76, scope: !279, inlinedAt: !293)
!297 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !298)
!298 = distinct !DILocation(line: 213, column: 13, scope: !279, inlinedAt: !293)
!299 = !DILocation(line: 212, column: 12, scope: !279, inlinedAt: !293)
!300 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !301)
!301 = distinct !DILocation(line: 214, column: 13, scope: !279, inlinedAt: !293)
!302 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !301)
!303 = !DILocation(line: 212, column: 19, scope: !279, inlinedAt: !293)
!304 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !305)
!305 = distinct !DILocation(line: 215, column: 13, scope: !279, inlinedAt: !293)
!306 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !305)
!307 = !DILocation(line: 212, column: 26, scope: !279, inlinedAt: !293)
!308 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !309)
!309 = distinct !DILocation(line: 216, column: 13, scope: !279, inlinedAt: !293)
!310 = !DILocation(line: 212, column: 33, scope: !279, inlinedAt: !293)
!311 = !DILocation(line: 217, column: 20, scope: !279, inlinedAt: !293)
!312 = !DILocation(line: 217, column: 29, scope: !279, inlinedAt: !293)
!313 = !DILocation(line: 217, column: 9, scope: !279, inlinedAt: !293)
!314 = !DILocation(line: 212, column: 40, scope: !279, inlinedAt: !293)
!315 = !DILocation(line: 218, column: 20, scope: !279, inlinedAt: !293)
!316 = !DILocation(line: 218, column: 29, scope: !279, inlinedAt: !293)
!317 = !DILocation(line: 218, column: 9, scope: !279, inlinedAt: !293)
!318 = !DILocation(line: 212, column: 43, scope: !279, inlinedAt: !293)
!319 = !DILocation(line: 220, column: 24, scope: !279, inlinedAt: !293)
!320 = !DILocation(line: 220, column: 30, scope: !279, inlinedAt: !293)
!321 = !DILocation(line: 220, column: 43, scope: !279, inlinedAt: !293)
!322 = !DILocation(line: 220, column: 41, scope: !279, inlinedAt: !293)
!323 = !DILocation(line: 220, column: 54, scope: !279, inlinedAt: !293)
!324 = !DILocation(line: 220, column: 58, scope: !279, inlinedAt: !293)
!325 = !DILocation(line: 220, column: 28, scope: !279, inlinedAt: !293)
!326 = !DILocation(line: 220, column: 17, scope: !279, inlinedAt: !293)
!327 = !DILocation(line: 220, column: 12, scope: !279, inlinedAt: !293)
!328 = !DILocation(line: 219, column: 41, scope: !279, inlinedAt: !293)
!329 = !DILocation(line: 154, column: 13, scope: !272)
!330 = !DILocation(line: 155, column: 76, scope: !331)
!331 = distinct !DILexicalBlock(scope: !181, file: !3, line: 155, column: 13)
!332 = !{!274, !96, i64 32}
!333 = !DILocation(line: 211, column: 34, scope: !279, inlinedAt: !334)
!334 = distinct !DILocation(line: 155, column: 13, scope: !331)
!335 = !DILocation(line: 211, column: 48, scope: !279, inlinedAt: !334)
!336 = !DILocation(line: 211, column: 62, scope: !279, inlinedAt: !334)
!337 = !DILocation(line: 211, column: 76, scope: !279, inlinedAt: !334)
!338 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !339)
!339 = distinct !DILocation(line: 213, column: 13, scope: !279, inlinedAt: !334)
!340 = !DILocation(line: 212, column: 12, scope: !279, inlinedAt: !334)
!341 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !342)
!342 = distinct !DILocation(line: 214, column: 13, scope: !279, inlinedAt: !334)
!343 = !DILocation(line: 212, column: 19, scope: !279, inlinedAt: !334)
!344 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !345)
!345 = distinct !DILocation(line: 215, column: 13, scope: !279, inlinedAt: !334)
!346 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !345)
!347 = !DILocation(line: 212, column: 26, scope: !279, inlinedAt: !334)
!348 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !349)
!349 = distinct !DILocation(line: 216, column: 13, scope: !279, inlinedAt: !334)
!350 = !DILocation(line: 212, column: 33, scope: !279, inlinedAt: !334)
!351 = !DILocation(line: 217, column: 20, scope: !279, inlinedAt: !334)
!352 = !DILocation(line: 217, column: 29, scope: !279, inlinedAt: !334)
!353 = !DILocation(line: 217, column: 9, scope: !279, inlinedAt: !334)
!354 = !DILocation(line: 212, column: 40, scope: !279, inlinedAt: !334)
!355 = !DILocation(line: 218, column: 9, scope: !279, inlinedAt: !334)
!356 = !DILocation(line: 212, column: 43, scope: !279, inlinedAt: !334)
!357 = !DILocation(line: 220, column: 24, scope: !279, inlinedAt: !334)
!358 = !DILocation(line: 220, column: 30, scope: !279, inlinedAt: !334)
!359 = !DILocation(line: 220, column: 43, scope: !279, inlinedAt: !334)
!360 = !DILocation(line: 220, column: 41, scope: !279, inlinedAt: !334)
!361 = !DILocation(line: 220, column: 54, scope: !279, inlinedAt: !334)
!362 = !DILocation(line: 220, column: 58, scope: !279, inlinedAt: !334)
!363 = !DILocation(line: 220, column: 28, scope: !279, inlinedAt: !334)
!364 = !DILocation(line: 220, column: 17, scope: !279, inlinedAt: !334)
!365 = !DILocation(line: 220, column: 12, scope: !279, inlinedAt: !334)
!366 = !DILocation(line: 219, column: 41, scope: !279, inlinedAt: !334)
!367 = !DILocation(line: 156, column: 13, scope: !331)
!368 = !DILocation(line: 155, column: 13, scope: !181)
!369 = !DILocation(line: 157, column: 66, scope: !370)
!370 = distinct !DILexicalBlock(scope: !181, file: !3, line: 157, column: 13)
!371 = !{!274, !96, i64 24}
!372 = !DILocation(line: 211, column: 34, scope: !279, inlinedAt: !373)
!373 = distinct !DILocation(line: 157, column: 13, scope: !370)
!374 = !DILocation(line: 211, column: 48, scope: !279, inlinedAt: !373)
!375 = !DILocation(line: 211, column: 62, scope: !279, inlinedAt: !373)
!376 = !DILocation(line: 211, column: 76, scope: !279, inlinedAt: !373)
!377 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !378)
!378 = distinct !DILocation(line: 213, column: 13, scope: !279, inlinedAt: !373)
!379 = !DILocation(line: 212, column: 12, scope: !279, inlinedAt: !373)
!380 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !381)
!381 = distinct !DILocation(line: 214, column: 13, scope: !279, inlinedAt: !373)
!382 = !DILocation(line: 212, column: 19, scope: !279, inlinedAt: !373)
!383 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !384)
!384 = distinct !DILocation(line: 215, column: 13, scope: !279, inlinedAt: !373)
!385 = !DILocation(line: 212, column: 26, scope: !279, inlinedAt: !373)
!386 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !387)
!387 = distinct !DILocation(line: 216, column: 13, scope: !279, inlinedAt: !373)
!388 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !387)
!389 = !DILocation(line: 212, column: 33, scope: !279, inlinedAt: !373)
!390 = !DILocation(line: 217, column: 20, scope: !279, inlinedAt: !373)
!391 = !DILocation(line: 217, column: 29, scope: !279, inlinedAt: !373)
!392 = !DILocation(line: 217, column: 9, scope: !279, inlinedAt: !373)
!393 = !DILocation(line: 212, column: 40, scope: !279, inlinedAt: !373)
!394 = !DILocation(line: 218, column: 20, scope: !279, inlinedAt: !373)
!395 = !DILocation(line: 218, column: 29, scope: !279, inlinedAt: !373)
!396 = !DILocation(line: 218, column: 9, scope: !279, inlinedAt: !373)
!397 = !DILocation(line: 212, column: 43, scope: !279, inlinedAt: !373)
!398 = !DILocation(line: 220, column: 24, scope: !279, inlinedAt: !373)
!399 = !DILocation(line: 220, column: 30, scope: !279, inlinedAt: !373)
!400 = !DILocation(line: 220, column: 43, scope: !279, inlinedAt: !373)
!401 = !DILocation(line: 220, column: 41, scope: !279, inlinedAt: !373)
!402 = !DILocation(line: 220, column: 54, scope: !279, inlinedAt: !373)
!403 = !DILocation(line: 220, column: 58, scope: !279, inlinedAt: !373)
!404 = !DILocation(line: 220, column: 28, scope: !279, inlinedAt: !373)
!405 = !DILocation(line: 220, column: 17, scope: !279, inlinedAt: !373)
!406 = !DILocation(line: 220, column: 12, scope: !279, inlinedAt: !373)
!407 = !DILocation(line: 219, column: 41, scope: !279, inlinedAt: !373)
!408 = !DILocation(line: 158, column: 13, scope: !370)
!409 = !DILocation(line: 157, column: 13, scope: !181)
!410 = !DILocation(line: 159, column: 66, scope: !411)
!411 = distinct !DILexicalBlock(scope: !181, file: !3, line: 159, column: 13)
!412 = !{!274, !96, i64 16}
!413 = !DILocation(line: 211, column: 34, scope: !279, inlinedAt: !414)
!414 = distinct !DILocation(line: 159, column: 13, scope: !411)
!415 = !DILocation(line: 211, column: 48, scope: !279, inlinedAt: !414)
!416 = !DILocation(line: 211, column: 62, scope: !279, inlinedAt: !414)
!417 = !DILocation(line: 211, column: 76, scope: !279, inlinedAt: !414)
!418 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !419)
!419 = distinct !DILocation(line: 213, column: 13, scope: !279, inlinedAt: !414)
!420 = !DILocation(line: 212, column: 12, scope: !279, inlinedAt: !414)
!421 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !422)
!422 = distinct !DILocation(line: 214, column: 13, scope: !279, inlinedAt: !414)
!423 = !DILocation(line: 212, column: 19, scope: !279, inlinedAt: !414)
!424 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !425)
!425 = distinct !DILocation(line: 215, column: 13, scope: !279, inlinedAt: !414)
!426 = !DILocation(line: 212, column: 26, scope: !279, inlinedAt: !414)
!427 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !428)
!428 = distinct !DILocation(line: 216, column: 13, scope: !279, inlinedAt: !414)
!429 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !428)
!430 = !DILocation(line: 212, column: 33, scope: !279, inlinedAt: !414)
!431 = !DILocation(line: 217, column: 9, scope: !279, inlinedAt: !414)
!432 = !DILocation(line: 212, column: 40, scope: !279, inlinedAt: !414)
!433 = !DILocation(line: 218, column: 20, scope: !279, inlinedAt: !414)
!434 = !DILocation(line: 218, column: 29, scope: !279, inlinedAt: !414)
!435 = !DILocation(line: 218, column: 9, scope: !279, inlinedAt: !414)
!436 = !DILocation(line: 212, column: 43, scope: !279, inlinedAt: !414)
!437 = !DILocation(line: 220, column: 24, scope: !279, inlinedAt: !414)
!438 = !DILocation(line: 220, column: 30, scope: !279, inlinedAt: !414)
!439 = !DILocation(line: 220, column: 43, scope: !279, inlinedAt: !414)
!440 = !DILocation(line: 220, column: 41, scope: !279, inlinedAt: !414)
!441 = !DILocation(line: 220, column: 54, scope: !279, inlinedAt: !414)
!442 = !DILocation(line: 220, column: 58, scope: !279, inlinedAt: !414)
!443 = !DILocation(line: 220, column: 28, scope: !279, inlinedAt: !414)
!444 = !DILocation(line: 220, column: 17, scope: !279, inlinedAt: !414)
!445 = !DILocation(line: 220, column: 12, scope: !279, inlinedAt: !414)
!446 = !DILocation(line: 219, column: 41, scope: !279, inlinedAt: !414)
!447 = !DILocation(line: 160, column: 13, scope: !411)
!448 = !DILocation(line: 159, column: 13, scope: !181)
!449 = !DILocation(line: 161, column: 5, scope: !119)
!450 = !DILocation(line: 163, column: 15, scope: !451)
!451 = distinct !DILexicalBlock(scope: !119, file: !3, line: 163, column: 9)
!452 = !DILocation(line: 163, column: 19, scope: !451)
!453 = !DILocation(line: 164, column: 14, scope: !454)
!454 = distinct !DILexicalBlock(scope: !451, file: !3, line: 163, column: 37)
!455 = !DILocation(line: 165, column: 65, scope: !454)
!456 = !DILocation(line: 165, column: 9, scope: !454)
!457 = !DILocation(line: 166, column: 9, scope: !454)
!458 = !DILocation(line: 167, column: 9, scope: !454)
!459 = !DILocation(line: 168, column: 5, scope: !454)
!460 = !DILocation(line: 0, scope: !119)
!461 = !DILocation(line: 171, column: 15, scope: !462)
!462 = distinct !DILexicalBlock(scope: !119, file: !3, line: 171, column: 9)
!463 = !DILocation(line: 171, column: 9, scope: !119)
!464 = !DILocation(line: 172, column: 27, scope: !465)
!465 = distinct !DILexicalBlock(scope: !466, file: !3, line: 172, column: 13)
!466 = distinct !DILexicalBlock(scope: !462, file: !3, line: 171, column: 21)
!467 = !DILocation(line: 172, column: 31, scope: !465)
!468 = !DILocation(line: 172, column: 13, scope: !466)
!469 = !DILocation(line: 173, column: 13, scope: !470)
!470 = distinct !DILexicalBlock(scope: !465, file: !3, line: 172, column: 42)
!471 = !{!472, !97, i64 56}
!472 = !{!"", !275, i64 0, !275, i64 16, !275, i64 32, !275, i64 48, !275, i64 64, !275, i64 80, !275, i64 96, !275, i64 112}
!473 = !{!472, !276, i64 48}
!474 = !DILocation(line: 174, column: 13, scope: !470)
!475 = !{!472, !97, i64 120}
!476 = !{!472, !276, i64 112}
!477 = !DILocation(line: 175, column: 13, scope: !470)
!478 = !{!472, !97, i64 88}
!479 = !{!472, !276, i64 80}
!480 = !DILocation(line: 176, column: 9, scope: !470)
!481 = !DILocation(line: 177, column: 27, scope: !482)
!482 = distinct !DILexicalBlock(scope: !466, file: !3, line: 177, column: 13)
!483 = !DILocation(line: 177, column: 31, scope: !482)
!484 = !DILocation(line: 177, column: 13, scope: !466)
!485 = !DILocation(line: 178, column: 13, scope: !486)
!486 = distinct !DILexicalBlock(scope: !482, file: !3, line: 177, column: 42)
!487 = !{!472, !97, i64 8}
!488 = !{!472, !276, i64 0}
!489 = !DILocation(line: 179, column: 13, scope: !486)
!490 = !{!472, !97, i64 72}
!491 = !{!472, !276, i64 64}
!492 = !DILocation(line: 180, column: 13, scope: !486)
!493 = !{!472, !97, i64 104}
!494 = !{!472, !276, i64 96}
!495 = !DILocation(line: 181, column: 9, scope: !486)
!496 = !DILocation(line: 182, column: 28, scope: !497)
!497 = distinct !DILexicalBlock(scope: !466, file: !3, line: 182, column: 13)
!498 = !DILocation(line: 182, column: 32, scope: !497)
!499 = !DILocation(line: 182, column: 13, scope: !466)
!500 = !DILocation(line: 183, column: 13, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !3, line: 182, column: 43)
!502 = !{!472, !97, i64 40}
!503 = !{!472, !276, i64 32}
!504 = !DILocation(line: 184, column: 13, scope: !501)
!505 = !DILocation(line: 185, column: 13, scope: !501)
!506 = !DILocation(line: 186, column: 9, scope: !501)
!507 = !DILocation(line: 187, column: 28, scope: !508)
!508 = distinct !DILexicalBlock(scope: !466, file: !3, line: 187, column: 13)
!509 = !DILocation(line: 187, column: 32, scope: !508)
!510 = !DILocation(line: 187, column: 13, scope: !466)
!511 = !DILocation(line: 188, column: 13, scope: !512)
!512 = distinct !DILexicalBlock(scope: !508, file: !3, line: 187, column: 43)
!513 = !{!472, !97, i64 24}
!514 = !{!472, !276, i64 16}
!515 = !DILocation(line: 189, column: 13, scope: !512)
!516 = !DILocation(line: 190, column: 13, scope: !512)
!517 = !DILocation(line: 191, column: 9, scope: !512)
!518 = !DILocation(line: 193, column: 19, scope: !119)
!519 = !{i64 0, i64 8, !520, i64 8, i64 1, !521}
!520 = !{!276, !276, i64 0}
!521 = !{!97, !97, i64 0}
!522 = !DILocation(line: 194, column: 12, scope: !119)
!523 = !DILocation(line: 194, column: 24, scope: !119)
!524 = !{i64 0, i64 8, !520, i64 8, i64 1, !521, i64 16, i64 8, !520, i64 24, i64 1, !521, i64 32, i64 8, !520, i64 40, i64 1, !521, i64 48, i64 8, !520, i64 56, i64 1, !521, i64 64, i64 8, !520, i64 72, i64 1, !521, i64 80, i64 8, !520, i64 88, i64 1, !521, i64 96, i64 8, !520, i64 104, i64 1, !521, i64 112, i64 8, !520, i64 120, i64 1, !521}
!525 = !DILocation(line: 195, column: 12, scope: !119)
!526 = !DILocation(line: 195, column: 19, scope: !119)
!527 = !{i64 0, i64 8, !520, i64 8, i64 1, !521, i64 16, i64 8, !95, i64 24, i64 8, !95, i64 32, i64 8, !95, i64 40, i64 8, !95}
!528 = !DILocation(line: 197, column: 1, scope: !119)
!529 = !DILocation(line: 211, column: 34, scope: !279)
!530 = !DILocation(line: 211, column: 48, scope: !279)
!531 = !DILocation(line: 211, column: 62, scope: !279)
!532 = !DILocation(line: 211, column: 76, scope: !279)
!533 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !534)
!534 = distinct !DILocation(line: 213, column: 13, scope: !279)
!535 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !534)
!536 = !DILocation(line: 212, column: 12, scope: !279)
!537 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !538)
!538 = distinct !DILocation(line: 214, column: 13, scope: !279)
!539 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !538)
!540 = !DILocation(line: 212, column: 19, scope: !279)
!541 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !542)
!542 = distinct !DILocation(line: 215, column: 13, scope: !279)
!543 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !542)
!544 = !DILocation(line: 212, column: 26, scope: !279)
!545 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !546)
!546 = distinct !DILocation(line: 216, column: 13, scope: !279)
!547 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !546)
!548 = !DILocation(line: 212, column: 33, scope: !279)
!549 = !DILocation(line: 217, column: 20, scope: !279)
!550 = !DILocation(line: 217, column: 29, scope: !279)
!551 = !DILocation(line: 217, column: 9, scope: !279)
!552 = !DILocation(line: 212, column: 40, scope: !279)
!553 = !DILocation(line: 218, column: 20, scope: !279)
!554 = !DILocation(line: 218, column: 29, scope: !279)
!555 = !DILocation(line: 218, column: 9, scope: !279)
!556 = !DILocation(line: 212, column: 43, scope: !279)
!557 = !DILocation(line: 220, column: 24, scope: !279)
!558 = !DILocation(line: 220, column: 30, scope: !279)
!559 = !DILocation(line: 220, column: 43, scope: !279)
!560 = !DILocation(line: 220, column: 41, scope: !279)
!561 = !DILocation(line: 220, column: 54, scope: !279)
!562 = !DILocation(line: 220, column: 58, scope: !279)
!563 = !DILocation(line: 220, column: 28, scope: !279)
!564 = !DILocation(line: 220, column: 17, scope: !279)
!565 = !DILocation(line: 220, column: 12, scope: !279)
!566 = !DILocation(line: 219, column: 41, scope: !279)
!567 = !DILocation(line: 219, column: 5, scope: !279)
!568 = distinct !DISubprogram(name: "geohashGetAreasByRadiusWGS84", scope: !3, file: !3, line: 199, type: !120, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !569)
!569 = !{!570, !571, !572}
!570 = !DILocalVariable(name: "longitude", arg: 1, scope: !568, file: !3, line: 199, type: !9)
!571 = !DILocalVariable(name: "latitude", arg: 2, scope: !568, file: !3, line: 199, type: !9)
!572 = !DILocalVariable(name: "radius_meters", arg: 3, scope: !568, file: !3, line: 200, type: !9)
!573 = !DILocation(line: 199, column: 51, scope: !568)
!574 = !DILocation(line: 199, column: 69, scope: !568)
!575 = !DILocation(line: 200, column: 51, scope: !568)
!576 = !DILocation(line: 201, column: 12, scope: !568)
!577 = !DILocation(line: 201, column: 5, scope: !568)
!578 = distinct !DISubprogram(name: "geohashAlign52Bits", scope: !3, file: !3, line: 204, type: !579, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !583)
!579 = !DISubroutineType(types: !580)
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashFix52Bits", file: !123, line: 41, baseType: !132)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!583 = !{!584, !585}
!584 = !DILocalVariable(name: "hash", arg: 1, scope: !578, file: !3, line: 204, type: !582)
!585 = !DILocalVariable(name: "bits", scope: !578, file: !3, line: 205, type: !132)
!586 = !DILocation(line: 204, column: 55, scope: !578)
!587 = !DILocation(line: 205, column: 14, scope: !578)
!588 = !DILocation(line: 206, column: 20, scope: !578)
!589 = !DILocation(line: 206, column: 30, scope: !578)
!590 = !DILocation(line: 206, column: 18, scope: !578)
!591 = !DILocation(line: 206, column: 10, scope: !578)
!592 = !DILocation(line: 207, column: 5, scope: !578)
!593 = distinct !DISubprogram(name: "geohashGetDistanceIfInRadius", scope: !3, file: !3, line: 223, type: !594, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !596)
!594 = !DISubroutineType(types: !595)
!595 = !{!30, !9, !9, !9, !9, !9, !63}
!596 = !{!597, !598, !599, !600, !601, !602}
!597 = !DILocalVariable(name: "x1", arg: 1, scope: !593, file: !3, line: 223, type: !9)
!598 = !DILocalVariable(name: "y1", arg: 2, scope: !593, file: !3, line: 223, type: !9)
!599 = !DILocalVariable(name: "x2", arg: 3, scope: !593, file: !3, line: 224, type: !9)
!600 = !DILocalVariable(name: "y2", arg: 4, scope: !593, file: !3, line: 224, type: !9)
!601 = !DILocalVariable(name: "radius", arg: 5, scope: !593, file: !3, line: 224, type: !9)
!602 = !DILocalVariable(name: "distance", arg: 6, scope: !593, file: !3, line: 225, type: !63)
!603 = !DILocation(line: 223, column: 41, scope: !593)
!604 = !DILocation(line: 223, column: 52, scope: !593)
!605 = !DILocation(line: 224, column: 41, scope: !593)
!606 = !DILocation(line: 224, column: 52, scope: !593)
!607 = !DILocation(line: 224, column: 63, scope: !593)
!608 = !DILocation(line: 225, column: 42, scope: !593)
!609 = !DILocation(line: 211, column: 34, scope: !279, inlinedAt: !610)
!610 = distinct !DILocation(line: 226, column: 17, scope: !593)
!611 = !DILocation(line: 211, column: 48, scope: !279, inlinedAt: !610)
!612 = !DILocation(line: 211, column: 62, scope: !279, inlinedAt: !610)
!613 = !DILocation(line: 211, column: 76, scope: !279, inlinedAt: !610)
!614 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !615)
!615 = distinct !DILocation(line: 213, column: 13, scope: !279, inlinedAt: !610)
!616 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !615)
!617 = !DILocation(line: 212, column: 12, scope: !279, inlinedAt: !610)
!618 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !619)
!619 = distinct !DILocation(line: 214, column: 13, scope: !279, inlinedAt: !610)
!620 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !619)
!621 = !DILocation(line: 212, column: 19, scope: !279, inlinedAt: !610)
!622 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !623)
!623 = distinct !DILocation(line: 215, column: 13, scope: !279, inlinedAt: !610)
!624 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !623)
!625 = !DILocation(line: 212, column: 26, scope: !279, inlinedAt: !610)
!626 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !627)
!627 = distinct !DILocation(line: 216, column: 13, scope: !279, inlinedAt: !610)
!628 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !627)
!629 = !DILocation(line: 212, column: 33, scope: !279, inlinedAt: !610)
!630 = !DILocation(line: 217, column: 20, scope: !279, inlinedAt: !610)
!631 = !DILocation(line: 217, column: 29, scope: !279, inlinedAt: !610)
!632 = !DILocation(line: 217, column: 9, scope: !279, inlinedAt: !610)
!633 = !DILocation(line: 212, column: 40, scope: !279, inlinedAt: !610)
!634 = !DILocation(line: 218, column: 20, scope: !279, inlinedAt: !610)
!635 = !DILocation(line: 218, column: 29, scope: !279, inlinedAt: !610)
!636 = !DILocation(line: 218, column: 9, scope: !279, inlinedAt: !610)
!637 = !DILocation(line: 212, column: 43, scope: !279, inlinedAt: !610)
!638 = !DILocation(line: 220, column: 24, scope: !279, inlinedAt: !610)
!639 = !DILocation(line: 220, column: 30, scope: !279, inlinedAt: !610)
!640 = !DILocation(line: 220, column: 43, scope: !279, inlinedAt: !610)
!641 = !DILocation(line: 220, column: 41, scope: !279, inlinedAt: !610)
!642 = !DILocation(line: 220, column: 54, scope: !279, inlinedAt: !610)
!643 = !DILocation(line: 220, column: 58, scope: !279, inlinedAt: !610)
!644 = !DILocation(line: 220, column: 28, scope: !279, inlinedAt: !610)
!645 = !DILocation(line: 220, column: 17, scope: !279, inlinedAt: !610)
!646 = !DILocation(line: 220, column: 12, scope: !279, inlinedAt: !610)
!647 = !DILocation(line: 219, column: 41, scope: !279, inlinedAt: !610)
!648 = !DILocation(line: 226, column: 15, scope: !593)
!649 = !DILocation(line: 227, column: 19, scope: !650)
!650 = distinct !DILexicalBlock(scope: !593, file: !3, line: 227, column: 9)
!651 = !DILocation(line: 227, column: 29, scope: !650)
!652 = !DILocation(line: 229, column: 1, scope: !593)
!653 = distinct !DISubprogram(name: "geohashGetDistanceIfInRadiusWGS84", scope: !3, file: !3, line: 231, type: !594, isLocal: false, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !654)
!654 = !{!655, !656, !657, !658, !659, !660}
!655 = !DILocalVariable(name: "x1", arg: 1, scope: !653, file: !3, line: 231, type: !9)
!656 = !DILocalVariable(name: "y1", arg: 2, scope: !653, file: !3, line: 231, type: !9)
!657 = !DILocalVariable(name: "x2", arg: 3, scope: !653, file: !3, line: 231, type: !9)
!658 = !DILocalVariable(name: "y2", arg: 4, scope: !653, file: !3, line: 232, type: !9)
!659 = !DILocalVariable(name: "radius", arg: 5, scope: !653, file: !3, line: 232, type: !9)
!660 = !DILocalVariable(name: "distance", arg: 6, scope: !653, file: !3, line: 233, type: !63)
!661 = !DILocation(line: 231, column: 46, scope: !653)
!662 = !DILocation(line: 231, column: 57, scope: !653)
!663 = !DILocation(line: 231, column: 68, scope: !653)
!664 = !DILocation(line: 232, column: 46, scope: !653)
!665 = !DILocation(line: 232, column: 57, scope: !653)
!666 = !DILocation(line: 233, column: 47, scope: !653)
!667 = !DILocation(line: 223, column: 41, scope: !593, inlinedAt: !668)
!668 = distinct !DILocation(line: 234, column: 12, scope: !653)
!669 = !DILocation(line: 223, column: 52, scope: !593, inlinedAt: !668)
!670 = !DILocation(line: 224, column: 41, scope: !593, inlinedAt: !668)
!671 = !DILocation(line: 224, column: 52, scope: !593, inlinedAt: !668)
!672 = !DILocation(line: 224, column: 63, scope: !593, inlinedAt: !668)
!673 = !DILocation(line: 225, column: 42, scope: !593, inlinedAt: !668)
!674 = !DILocation(line: 211, column: 34, scope: !279, inlinedAt: !675)
!675 = distinct !DILocation(line: 226, column: 17, scope: !593, inlinedAt: !668)
!676 = !DILocation(line: 211, column: 48, scope: !279, inlinedAt: !675)
!677 = !DILocation(line: 211, column: 62, scope: !279, inlinedAt: !675)
!678 = !DILocation(line: 211, column: 76, scope: !279, inlinedAt: !675)
!679 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !680)
!680 = distinct !DILocation(line: 213, column: 13, scope: !279, inlinedAt: !675)
!681 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !680)
!682 = !DILocation(line: 212, column: 12, scope: !279, inlinedAt: !675)
!683 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !684)
!684 = distinct !DILocation(line: 214, column: 13, scope: !279, inlinedAt: !675)
!685 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !684)
!686 = !DILocation(line: 212, column: 19, scope: !279, inlinedAt: !675)
!687 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !688)
!688 = distinct !DILocation(line: 215, column: 13, scope: !279, inlinedAt: !675)
!689 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !688)
!690 = !DILocation(line: 212, column: 26, scope: !279, inlinedAt: !675)
!691 = !DILocation(line: 57, column: 37, scope: !78, inlinedAt: !692)
!692 = distinct !DILocation(line: 216, column: 13, scope: !279, inlinedAt: !675)
!693 = !DILocation(line: 57, column: 55, scope: !78, inlinedAt: !692)
!694 = !DILocation(line: 212, column: 33, scope: !279, inlinedAt: !675)
!695 = !DILocation(line: 217, column: 20, scope: !279, inlinedAt: !675)
!696 = !DILocation(line: 217, column: 29, scope: !279, inlinedAt: !675)
!697 = !DILocation(line: 217, column: 9, scope: !279, inlinedAt: !675)
!698 = !DILocation(line: 212, column: 40, scope: !279, inlinedAt: !675)
!699 = !DILocation(line: 218, column: 20, scope: !279, inlinedAt: !675)
!700 = !DILocation(line: 218, column: 29, scope: !279, inlinedAt: !675)
!701 = !DILocation(line: 218, column: 9, scope: !279, inlinedAt: !675)
!702 = !DILocation(line: 212, column: 43, scope: !279, inlinedAt: !675)
!703 = !DILocation(line: 220, column: 24, scope: !279, inlinedAt: !675)
!704 = !DILocation(line: 220, column: 30, scope: !279, inlinedAt: !675)
!705 = !DILocation(line: 220, column: 43, scope: !279, inlinedAt: !675)
!706 = !DILocation(line: 220, column: 41, scope: !279, inlinedAt: !675)
!707 = !DILocation(line: 220, column: 54, scope: !279, inlinedAt: !675)
!708 = !DILocation(line: 220, column: 58, scope: !279, inlinedAt: !675)
!709 = !DILocation(line: 220, column: 28, scope: !279, inlinedAt: !675)
!710 = !DILocation(line: 220, column: 17, scope: !279, inlinedAt: !675)
!711 = !DILocation(line: 220, column: 12, scope: !279, inlinedAt: !675)
!712 = !DILocation(line: 219, column: 41, scope: !279, inlinedAt: !675)
!713 = !DILocation(line: 226, column: 15, scope: !593, inlinedAt: !668)
!714 = !DILocation(line: 227, column: 19, scope: !650, inlinedAt: !668)
!715 = !DILocation(line: 227, column: 29, scope: !650, inlinedAt: !668)
!716 = !DILocation(line: 234, column: 5, scope: !653)
