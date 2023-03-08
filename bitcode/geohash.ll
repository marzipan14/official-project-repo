; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geohash.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geohash.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GeoHashRange = type { double, double }
%struct.GeoHashBits = type { i64, i8 }
%struct.GeoHashArea = type { %struct.GeoHashBits, %struct.GeoHashRange, %struct.GeoHashRange }
%struct.GeoHashNeighbors = type { %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits, %struct.GeoHashBits }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @geohashGetCoordRange(%struct.GeoHashRange* nocapture, %struct.GeoHashRange* nocapture) local_unnamed_addr #0 !dbg !51 {
  %3 = bitcast %struct.GeoHashRange* %0 to <2 x double>*, !dbg !67
  store <2 x double> <double -1.800000e+02, double 1.800000e+02>, <2 x double>* %3, align 8, !dbg !67, !tbaa !68
  %4 = bitcast %struct.GeoHashRange* %1 to <2 x double>*, !dbg !72
  store <2 x double> <double 0xC0554345B1A57F00, double 0x40554345B1A57F00>, <2 x double>* %4, align 8, !dbg !72, !tbaa !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  ret void, !dbg !73
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone nounwind
define dso_local i32 @geohashEncode(%struct.GeoHashRange* readonly, %struct.GeoHashRange* readonly, double, double, i8 zeroext, %struct.GeoHashBits*) local_unnamed_addr #0 !dbg !74 {
  %7 = icmp eq %struct.GeoHashBits* %5, null, !dbg !104
  %8 = icmp ugt i8 %4, 32, !dbg !106
  %9 = or i1 %8, %7, !dbg !107
  br i1 %9, label %104, label %10, !dbg !107

; <label>:10:                                     ; preds = %6
  %11 = icmp eq i8 %4, 0, !dbg !108
  %12 = icmp eq %struct.GeoHashRange* %1, null, !dbg !109
  %13 = or i1 %12, %11, !dbg !110
  br i1 %13, label %104, label %14, !dbg !110

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %1, i64 0, i32 1, !dbg !109
  %16 = load double, double* %15, align 8, !dbg !109, !tbaa !111
  %17 = fcmp une double %16, 0.000000e+00, !dbg !109
  br i1 %17, label %24, label %18, !dbg !109

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %1, i64 0, i32 0, !dbg !109
  %20 = load double, double* %19, align 8, !dbg !109, !tbaa !113
  %21 = fcmp oeq double %20, 0.000000e+00, !dbg !109
  %22 = icmp eq %struct.GeoHashRange* %0, null, !dbg !114
  %23 = or i1 %22, %21, !dbg !115
  br i1 %23, label %104, label %26, !dbg !115

; <label>:24:                                     ; preds = %14
  %25 = icmp eq %struct.GeoHashRange* %0, null, !dbg !114
  br i1 %25, label %104, label %26, !dbg !114

; <label>:26:                                     ; preds = %18, %24
  %27 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %0, i64 0, i32 1, !dbg !114
  %28 = load double, double* %27, align 8, !dbg !114, !tbaa !111
  %29 = fcmp une double %28, 0.000000e+00, !dbg !114
  br i1 %29, label %34, label %30, !dbg !114

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %0, i64 0, i32 0, !dbg !114
  %32 = load double, double* %31, align 8, !dbg !114, !tbaa !113
  %33 = fcmp une double %32, 0.000000e+00, !dbg !114
  br i1 %33, label %34, label %104, !dbg !116

; <label>:34:                                     ; preds = %30, %26
  %35 = fcmp ogt double %2, 1.800000e+02, !dbg !117
  %36 = fcmp olt double %2, -1.800000e+02, !dbg !119
  %37 = or i1 %35, %36, !dbg !120
  %38 = fcmp ogt double %3, 0x40554345B1A57F00, !dbg !121
  %39 = or i1 %37, %38, !dbg !120
  %40 = fcmp olt double %3, 0xC0554345B1A57F00, !dbg !122
  %41 = or i1 %40, %39, !dbg !120
  br i1 %41, label %104, label %42, !dbg !120

; <label>:42:                                     ; preds = %34
  %43 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %5, i64 0, i32 0, !dbg !123
  store i64 0, i64* %43, align 8, !dbg !124, !tbaa !125
  %44 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %5, i64 0, i32 1, !dbg !128
  store i8 %4, i8* %44, align 8, !dbg !129, !tbaa !130
  %45 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %1, i64 0, i32 0, !dbg !131
  %46 = load double, double* %45, align 8, !dbg !131, !tbaa !113
  %47 = fcmp ogt double %46, %3, !dbg !133
  %48 = fcmp olt double %16, %3, !dbg !134
  %49 = or i1 %48, %47, !dbg !135
  br i1 %49, label %104, label %50, !dbg !135

; <label>:50:                                     ; preds = %42
  %51 = getelementptr inbounds %struct.GeoHashRange, %struct.GeoHashRange* %0, i64 0, i32 0, !dbg !136
  %52 = load double, double* %51, align 8, !dbg !136, !tbaa !113
  %53 = fcmp ogt double %52, %2, !dbg !137
  %54 = fcmp olt double %28, %2, !dbg !138
  %55 = or i1 %54, %53, !dbg !139
  br i1 %55, label %104, label %56, !dbg !139

; <label>:56:                                     ; preds = %50
  %57 = fsub double %3, %46, !dbg !140
  %58 = fsub double %16, %46, !dbg !141
  %59 = fdiv double %57, %58, !dbg !142
  %60 = fsub double %2, %52, !dbg !144
  %61 = fsub double %28, %52, !dbg !145
  %62 = fdiv double %60, %61, !dbg !146
  %63 = zext i8 %4 to i64, !dbg !148
  %64 = shl i64 1, %63, !dbg !148
  %65 = uitofp i64 %64 to double, !dbg !149
  %66 = fmul double %59, %65, !dbg !150
  %67 = fmul double %62, %65, !dbg !151
  %68 = fptoui double %66 to i32, !dbg !152
  %69 = fptoui double %67 to i32, !dbg !153
  %70 = zext i32 %68 to i64, !dbg !157
  %71 = zext i32 %69 to i64, !dbg !159
  %72 = shl nuw nsw i64 %70, 16, !dbg !161
  %73 = or i64 %72, %70, !dbg !162
  %74 = and i64 %73, 281470681808895, !dbg !163
  %75 = shl nuw nsw i64 %71, 16, !dbg !164
  %76 = or i64 %75, %71, !dbg !165
  %77 = and i64 %76, 281470681808895, !dbg !166
  %78 = shl nuw nsw i64 %74, 8, !dbg !167
  %79 = or i64 %78, %74, !dbg !168
  %80 = and i64 %79, 71777214294589695, !dbg !169
  %81 = shl nuw nsw i64 %77, 8, !dbg !170
  %82 = or i64 %81, %77, !dbg !171
  %83 = and i64 %82, 71777214294589695, !dbg !172
  %84 = shl nuw nsw i64 %80, 4, !dbg !173
  %85 = or i64 %84, %80, !dbg !174
  %86 = and i64 %85, 1085102592571150095, !dbg !175
  %87 = shl nuw nsw i64 %83, 4, !dbg !176
  %88 = or i64 %87, %83, !dbg !177
  %89 = and i64 %88, 1085102592571150095, !dbg !178
  %90 = shl nuw nsw i64 %86, 2, !dbg !179
  %91 = or i64 %90, %86, !dbg !180
  %92 = and i64 %91, 3689348814741910323, !dbg !181
  %93 = shl nuw nsw i64 %89, 2, !dbg !182
  %94 = or i64 %93, %89, !dbg !183
  %95 = and i64 %94, 3689348814741910323, !dbg !184
  %96 = shl nuw nsw i64 %92, 1, !dbg !185
  %97 = or i64 %96, %92, !dbg !186
  %98 = and i64 %97, 6148914691236517205, !dbg !187
  %99 = shl nuw nsw i64 %95, 1, !dbg !188
  %100 = or i64 %99, %95, !dbg !189
  %101 = shl nuw i64 %100, 1, !dbg !190
  %102 = and i64 %101, -6148914691236517206, !dbg !190
  %103 = or i64 %102, %98, !dbg !191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !192
  store i64 %103, i64* %43, align 8, !dbg !193, !tbaa !125
  br label %104

; <label>:104:                                    ; preds = %42, %50, %34, %6, %10, %24, %30, %18, %56
  %105 = phi i32 [ 1, %56 ], [ 0, %18 ], [ 0, %30 ], [ 0, %24 ], [ 0, %10 ], [ 0, %6 ], [ 0, %34 ], [ 0, %50 ], [ 0, %42 ], !dbg !194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !195
  ret i32 %105, !dbg !195
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @geohashEncodeType(double, double, i8 zeroext, %struct.GeoHashBits*) local_unnamed_addr #0 !dbg !196 {
  %5 = alloca [2 x %struct.GeoHashRange], align 16
  %6 = bitcast [2 x %struct.GeoHashRange]* %5 to i8*, !dbg !212
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #3, !dbg !212
  %7 = getelementptr inbounds [2 x %struct.GeoHashRange], [2 x %struct.GeoHashRange]* %5, i64 0, i64 0, !dbg !214
  %8 = getelementptr inbounds [2 x %struct.GeoHashRange], [2 x %struct.GeoHashRange]* %5, i64 0, i64 1, !dbg !215
  %9 = bitcast [2 x %struct.GeoHashRange]* %5 to <2 x double>*, !dbg !219
  store <2 x double> <double -1.800000e+02, double 1.800000e+02>, <2 x double>* %9, align 16, !dbg !219, !tbaa !68
  %10 = bitcast %struct.GeoHashRange* %8 to <2 x double>*, !dbg !220
  store <2 x double> <double 0xC0554345B1A57F00, double 0x40554345B1A57F00>, <2 x double>* %10, align 16, !dbg !220, !tbaa !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  %11 = call i32 @geohashEncode(%struct.GeoHashRange* nonnull %7, %struct.GeoHashRange* nonnull %8, double %0, double %1, i8 zeroext %2, %struct.GeoHashBits* %3) #4, !dbg !222
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #3, !dbg !223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !224
  ret i32 %11, !dbg !224
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @geohashEncodeWGS84(double, double, i8 zeroext, %struct.GeoHashBits*) local_unnamed_addr #0 !dbg !225 {
  %5 = alloca [2 x %struct.GeoHashRange], align 16
  %6 = bitcast [2 x %struct.GeoHashRange]* %5 to i8*, !dbg !241
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #3, !dbg !241
  %7 = getelementptr inbounds [2 x %struct.GeoHashRange], [2 x %struct.GeoHashRange]* %5, i64 0, i64 0, !dbg !242
  %8 = getelementptr inbounds [2 x %struct.GeoHashRange], [2 x %struct.GeoHashRange]* %5, i64 0, i64 1, !dbg !243
  %9 = bitcast [2 x %struct.GeoHashRange]* %5 to <2 x double>*, !dbg !247
  store <2 x double> <double -1.800000e+02, double 1.800000e+02>, <2 x double>* %9, align 16, !dbg !247, !tbaa !68
  %10 = bitcast %struct.GeoHashRange* %8 to <2 x double>*, !dbg !248
  store <2 x double> <double 0xC0554345B1A57F00, double 0x40554345B1A57F00>, <2 x double>* %10, align 16, !dbg !248, !tbaa !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  %11 = call i32 @geohashEncode(%struct.GeoHashRange* nonnull %7, %struct.GeoHashRange* nonnull %8, double %0, double %1, i8 zeroext %2, %struct.GeoHashBits* %3) #5, !dbg !250
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #3, !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !253
  ret i32 %11, !dbg !253
}

; Function Attrs: noredzone nounwind
define dso_local i32 @geohashDecode(double, double, double, double, i64, i8, %struct.GeoHashArea*) local_unnamed_addr #0 !dbg !254 {
  %8 = alloca [7 x i8], align 1
  %9 = icmp eq i64 %4, 0, !dbg !280
  br i1 %9, label %10, label %14, !dbg !280

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8 %5, 0, !dbg !280
  %12 = icmp eq %struct.GeoHashArea* %6, null, !dbg !282
  %13 = or i1 %11, %12, !dbg !283
  br i1 %13, label %92, label %16, !dbg !283

; <label>:14:                                     ; preds = %7
  %15 = icmp eq %struct.GeoHashArea* %6, null, !dbg !282
  br i1 %15, label %92, label %16, !dbg !284

; <label>:16:                                     ; preds = %10, %14
  %17 = fcmp une double %3, 0.000000e+00, !dbg !285
  %18 = fcmp une double %2, 0.000000e+00, !dbg !285
  %19 = or i1 %18, %17, !dbg !285
  br i1 %19, label %20, label %92, !dbg !285

; <label>:20:                                     ; preds = %16
  %21 = fcmp une double %1, 0.000000e+00, !dbg !286
  %22 = fcmp une double %0, 0.000000e+00, !dbg !286
  %23 = or i1 %22, %21, !dbg !286
  br i1 %23, label %24, label %92, !dbg !286

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %6, i64 0, i32 0, i32 0, !dbg !287
  store i64 %4, i64* %25, align 8, !dbg !287
  %26 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %6, i64 0, i32 0, i32 1, !dbg !287
  store i8 %5, i8* %26, align 8, !dbg !287
  %27 = bitcast %struct.GeoHashArea* %6 to i8*, !dbg !287
  %28 = getelementptr inbounds i8, i8* %27, i64 9, !dbg !287
  %29 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0, !dbg !287
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %28, i8* nonnull align 1 %29, i64 7, i1 false), !dbg !287
  %30 = lshr i64 %4, 1, !dbg !292
  %31 = and i64 %4, 6148914691236517205, !dbg !294
  %32 = and i64 %30, 6148914691236517205, !dbg !295
  %33 = lshr i64 %31, 1, !dbg !296
  %34 = or i64 %33, %31, !dbg !297
  %35 = and i64 %34, 3689348814741910323, !dbg !298
  %36 = lshr i64 %32, 1, !dbg !299
  %37 = or i64 %36, %32, !dbg !300
  %38 = and i64 %37, 3689348814741910323, !dbg !301
  %39 = lshr i64 %35, 2, !dbg !302
  %40 = or i64 %39, %35, !dbg !303
  %41 = and i64 %40, 1085102592571150095, !dbg !304
  %42 = lshr i64 %38, 2, !dbg !305
  %43 = or i64 %42, %38, !dbg !306
  %44 = and i64 %43, 1085102592571150095, !dbg !307
  %45 = lshr i64 %41, 4, !dbg !308
  %46 = or i64 %45, %41, !dbg !309
  %47 = and i64 %46, 71777214294589695, !dbg !310
  %48 = lshr i64 %44, 4, !dbg !311
  %49 = or i64 %48, %44, !dbg !312
  %50 = and i64 %49, 71777214294589695, !dbg !313
  %51 = lshr i64 %47, 8, !dbg !314
  %52 = or i64 %51, %47, !dbg !315
  %53 = lshr i64 %50, 8, !dbg !316
  %54 = or i64 %53, %50, !dbg !317
  %55 = lshr i64 %52, 16, !dbg !318
  %56 = and i64 %55, 4294901760, !dbg !318
  %57 = and i64 %52, 65535, !dbg !319
  %58 = or i64 %56, %57, !dbg !319
  %59 = lshr i64 %54, 16, !dbg !320
  %60 = and i64 %59, 4294901760, !dbg !320
  %61 = and i64 %54, 65535, !dbg !321
  %62 = or i64 %60, %61, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  %63 = fsub double %3, %2, !dbg !324
  %64 = fsub double %1, %0, !dbg !326
  %65 = trunc i64 %58 to i32, !dbg !328
  %66 = trunc i64 %62 to i32, !dbg !330
  %67 = uitofp i32 %65 to double, !dbg !332
  %68 = zext i8 %5 to i64, !dbg !333
  %69 = shl i64 1, %68, !dbg !333
  %70 = uitofp i64 %69 to double, !dbg !334
  %71 = fdiv double %67, %70, !dbg !335
  %72 = fmul double %63, %71, !dbg !336
  %73 = fadd double %72, %2, !dbg !337
  %74 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %6, i64 0, i32 2, i32 0, !dbg !338
  store double %73, double* %74, align 8, !dbg !339, !tbaa !340
  %75 = add i32 %65, 1, !dbg !342
  %76 = uitofp i32 %75 to double, !dbg !343
  %77 = fdiv double %76, %70, !dbg !344
  %78 = fmul double %63, %77, !dbg !345
  %79 = fadd double %78, %2, !dbg !346
  %80 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %6, i64 0, i32 2, i32 1, !dbg !347
  store double %79, double* %80, align 8, !dbg !348, !tbaa !349
  %81 = uitofp i32 %66 to double, !dbg !350
  %82 = fdiv double %81, %70, !dbg !351
  %83 = fmul double %64, %82, !dbg !352
  %84 = fadd double %83, %0, !dbg !353
  %85 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %6, i64 0, i32 1, i32 0, !dbg !354
  store double %84, double* %85, align 8, !dbg !355, !tbaa !356
  %86 = add i32 %66, 1, !dbg !357
  %87 = uitofp i32 %86 to double, !dbg !358
  %88 = fdiv double %87, %70, !dbg !359
  %89 = fmul double %64, %88, !dbg !360
  %90 = fadd double %89, %0, !dbg !361
  %91 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %6, i64 0, i32 1, i32 1, !dbg !362
  store double %90, double* %91, align 8, !dbg !363, !tbaa !364
  br label %92

; <label>:92:                                     ; preds = %14, %10, %16, %20, %24
  %93 = phi i32 [ 1, %24 ], [ 0, %20 ], [ 0, %16 ], [ 0, %10 ], [ 0, %14 ], !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  ret i32 %93, !dbg !366
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @geohashDecodeType(i64, i8, %struct.GeoHashArea*) local_unnamed_addr #0 !dbg !367 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !380
  %4 = tail call i32 @geohashDecode(double -1.800000e+02, double 1.800000e+02, double 0xC0554345B1A57F00, double 0x40554345B1A57F00, i64 %0, i8 %1, %struct.GeoHashArea* %2) #4, !dbg !381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !382
  ret i32 %4, !dbg !382
}

; Function Attrs: noredzone nounwind
define dso_local i32 @geohashDecodeWGS84(i64, i8, %struct.GeoHashArea*) local_unnamed_addr #0 !dbg !383 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  %4 = tail call i32 @geohashDecode(double -1.800000e+02, double 1.800000e+02, double 0xC0554345B1A57F00, double 0x40554345B1A57F00, i64 %0, i8 %1, %struct.GeoHashArea* %2) #5, !dbg !397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !399
  ret i32 %4, !dbg !399
}

; Function Attrs: noredzone nounwind
define dso_local i32 @geohashDecodeAreaToLongLat(%struct.GeoHashArea* nocapture readonly, double*) local_unnamed_addr #0 !dbg !400 {
  %3 = icmp eq double* %1, null, !dbg !411
  br i1 %3, label %18, label %4, !dbg !413

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %0, i64 0, i32 1, i32 0, !dbg !414
  %6 = load double, double* %5, align 8, !dbg !414, !tbaa !356
  %7 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %0, i64 0, i32 1, i32 1, !dbg !415
  %8 = load double, double* %7, align 8, !dbg !415, !tbaa !364
  %9 = fadd double %6, %8, !dbg !416
  %10 = fmul double %9, 5.000000e-01, !dbg !417
  store double %10, double* %1, align 8, !dbg !418, !tbaa !68
  %11 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %0, i64 0, i32 2, i32 0, !dbg !419
  %12 = load double, double* %11, align 8, !dbg !419, !tbaa !340
  %13 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %0, i64 0, i32 2, i32 1, !dbg !420
  %14 = load double, double* %13, align 8, !dbg !420, !tbaa !349
  %15 = fadd double %12, %14, !dbg !421
  %16 = fmul double %15, 5.000000e-01, !dbg !422
  %17 = getelementptr inbounds double, double* %1, i64 1, !dbg !423
  store double %16, double* %17, align 8, !dbg !424, !tbaa !68
  br label %18, !dbg !425

; <label>:18:                                     ; preds = %2, %4
  %19 = phi i32 [ 1, %4 ], [ 0, %2 ], !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  ret i32 %19, !dbg !427
}

; Function Attrs: noredzone nounwind
define dso_local i32 @geohashDecodeToLongLatType(i64, i8, double*) local_unnamed_addr #0 !dbg !428 {
  %4 = alloca %struct.GeoHashArea, align 8
  %5 = bitcast %struct.GeoHashArea* %4 to i8*, !dbg !437
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #3, !dbg !437
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 48, i1 false), !dbg !438
  %6 = icmp eq double* %2, null, !dbg !439
  br i1 %6, label %23, label %7, !dbg !441

; <label>:7:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  %8 = call i32 @geohashDecode(double -1.800000e+02, double 1.800000e+02, double 0xC0554345B1A57F00, double 0x40554345B1A57F00, i64 %0, i8 %1, %struct.GeoHashArea* nonnull %4) #5, !dbg !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  %9 = icmp eq i32 %8, 0, !dbg !452
  br i1 %9, label %23, label %10, !dbg !453

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %4, i64 0, i32 1, i32 0, !dbg !457
  %12 = load double, double* %11, align 8, !dbg !457, !tbaa !356
  %13 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %4, i64 0, i32 1, i32 1, !dbg !458
  %14 = bitcast double* %13 to <2 x double>*, !dbg !458
  %15 = load <2 x double>, <2 x double>* %14, align 8, !dbg !458, !tbaa !68
  %16 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %4, i64 0, i32 2, i32 1, !dbg !459
  %17 = load double, double* %16, align 8, !dbg !459, !tbaa !349
  %18 = insertelement <2 x double> undef, double %12, i32 0, !dbg !460
  %19 = insertelement <2 x double> %18, double %17, i32 1, !dbg !460
  %20 = fadd <2 x double> %19, %15, !dbg !460
  %21 = fmul <2 x double> %20, <double 5.000000e-01, double 5.000000e-01>, !dbg !461
  %22 = bitcast double* %2 to <2 x double>*, !dbg !462
  store <2 x double> %21, <2 x double>* %22, align 8, !dbg !462, !tbaa !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  br label %23, !dbg !464

; <label>:23:                                     ; preds = %3, %7, %10
  %24 = phi i32 [ 1, %10 ], [ 0, %7 ], [ 0, %3 ], !dbg !465
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #3, !dbg !466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !466
  ret i32 %24, !dbg !466
}

; Function Attrs: noredzone nounwind
define dso_local i32 @geohashDecodeToLongLatWGS84(i64, i8, double*) local_unnamed_addr #0 !dbg !467 {
  %4 = alloca %struct.GeoHashArea, align 8
  %5 = bitcast %struct.GeoHashArea* %4 to i8*, !dbg !476
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %5) #3, !dbg !476
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 48, i1 false) #3, !dbg !477
  %6 = icmp eq double* %2, null, !dbg !478
  br i1 %6, label %23, label %7, !dbg !479

; <label>:7:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  %8 = call i32 @geohashDecode(double -1.800000e+02, double 1.800000e+02, double 0xC0554345B1A57F00, double 0x40554345B1A57F00, i64 %0, i8 %1, %struct.GeoHashArea* nonnull %4) #5, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  %9 = icmp eq i32 %8, 0, !dbg !490
  br i1 %9, label %23, label %10, !dbg !491

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %4, i64 0, i32 1, i32 0, !dbg !495
  %12 = load double, double* %11, align 8, !dbg !495, !tbaa !356
  %13 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %4, i64 0, i32 1, i32 1, !dbg !496
  %14 = bitcast double* %13 to <2 x double>*, !dbg !496
  %15 = load <2 x double>, <2 x double>* %14, align 8, !dbg !496, !tbaa !68
  %16 = getelementptr inbounds %struct.GeoHashArea, %struct.GeoHashArea* %4, i64 0, i32 2, i32 1, !dbg !497
  %17 = load double, double* %16, align 8, !dbg !497, !tbaa !349
  %18 = insertelement <2 x double> undef, double %12, i32 0, !dbg !498
  %19 = insertelement <2 x double> %18, double %17, i32 1, !dbg !498
  %20 = fadd <2 x double> %19, %15, !dbg !498
  %21 = fmul <2 x double> %20, <double 5.000000e-01, double 5.000000e-01>, !dbg !499
  %22 = bitcast double* %2 to <2 x double>*, !dbg !500
  store <2 x double> %21, <2 x double>* %22, align 8, !dbg !500, !tbaa !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  br label %23, !dbg !502

; <label>:23:                                     ; preds = %3, %7, %10
  %24 = phi i32 [ 1, %10 ], [ 0, %7 ], [ 0, %3 ], !dbg !503
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %5) #3, !dbg !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !505
  ret i32 %24, !dbg !505
}

; Function Attrs: noredzone nounwind
define dso_local void @geohashNeighbors(%struct.GeoHashBits* nocapture readonly, %struct.GeoHashNeighbors* nocapture) local_unnamed_addr #0 !dbg !506 {
  %3 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %1, i64 0, i32 1, !dbg !527
  %4 = bitcast %struct.GeoHashBits* %3 to i8*, !dbg !528
  %5 = bitcast %struct.GeoHashBits* %0 to i8*, !dbg !528
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 %5, i64 16, i1 false), !dbg !528, !tbaa.struct !529
  %6 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %1, i64 0, i32 2, !dbg !532
  %7 = bitcast %struct.GeoHashBits* %6 to i8*, !dbg !533
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 %5, i64 16, i1 false), !dbg !533, !tbaa.struct !529
  %8 = bitcast %struct.GeoHashNeighbors* %1 to i8*, !dbg !534
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %5, i64 16, i1 false), !dbg !534, !tbaa.struct !529
  %9 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %1, i64 0, i32 3, !dbg !535
  %10 = bitcast %struct.GeoHashBits* %9 to i8*, !dbg !536
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %10, i8* align 8 %5, i64 16, i1 false), !dbg !536, !tbaa.struct !529
  %11 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %1, i64 0, i32 5, !dbg !537
  %12 = bitcast %struct.GeoHashBits* %11 to i8*, !dbg !538
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %12, i8* align 8 %5, i64 16, i1 false), !dbg !538, !tbaa.struct !529
  %13 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %1, i64 0, i32 7, !dbg !539
  %14 = bitcast %struct.GeoHashBits* %13 to i8*, !dbg !540
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %14, i8* align 8 %5, i64 16, i1 false), !dbg !540, !tbaa.struct !529
  %15 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %1, i64 0, i32 4, !dbg !541
  %16 = bitcast %struct.GeoHashBits* %15 to i8*, !dbg !542
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %16, i8* align 8 %5, i64 16, i1 false), !dbg !542, !tbaa.struct !529
  %17 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %1, i64 0, i32 6, !dbg !543
  %18 = bitcast %struct.GeoHashBits* %17 to i8*, !dbg !544
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %18, i8* align 8 %5, i64 16, i1 false), !dbg !544, !tbaa.struct !529
  %19 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %3, i64 0, i32 0, !dbg !560
  %20 = load i64, i64* %19, align 8, !dbg !560, !tbaa !125
  %21 = and i64 %20, -6148914691236517206, !dbg !561
  %22 = and i64 %20, 6148914691236517205, !dbg !563
  %23 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %1, i64 0, i32 1, i32 1, !dbg !565
  %24 = load i8, i8* %23, align 8, !dbg !565, !tbaa !130
  %25 = zext i8 %24 to i64, !dbg !566
  %26 = shl nuw nsw i64 %25, 1, !dbg !567
  %27 = sub nsw i64 64, %26, !dbg !568
  %28 = and i64 %27, 4294967294, !dbg !569
  %29 = lshr i64 6148914691236517205, %28, !dbg !569
  %30 = or i64 %21, 1, !dbg !571
  %31 = add i64 %29, %30, !dbg !574
  %32 = lshr i64 -6148914691236517206, %28, !dbg !575
  %33 = and i64 %31, %32, !dbg !576
  %34 = or i64 %33, %22, !dbg !577
  store i64 %34, i64* %19, align 8, !dbg !578, !tbaa !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  %35 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %6, i64 0, i32 0, !dbg !594
  %36 = load i64, i64* %35, align 8, !dbg !594, !tbaa !125
  %37 = and i64 %36, -6148914691236517206, !dbg !595
  %38 = and i64 %36, 6148914691236517205, !dbg !597
  %39 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %1, i64 0, i32 2, i32 1, !dbg !599
  %40 = load i8, i8* %39, align 8, !dbg !599, !tbaa !130
  %41 = zext i8 %40 to i64, !dbg !600
  %42 = shl nuw nsw i64 %41, 1, !dbg !601
  %43 = sub nsw i64 64, %42, !dbg !602
  %44 = and i64 %43, 4294967294, !dbg !603
  %45 = lshr i64 6148914691236517205, %44, !dbg !603
  %46 = or i64 %45, %37, !dbg !605
  %47 = ashr i64 -6148914691236517206, %44, !dbg !607
  %48 = add i64 %46, %47, !dbg !607
  %49 = lshr i64 -6148914691236517206, %44, !dbg !608
  %50 = and i64 %48, %49, !dbg !609
  %51 = or i64 %50, %38, !dbg !610
  store i64 %51, i64* %35, align 8, !dbg !611, !tbaa !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  %52 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %9, i64 0, i32 0, !dbg !624
  %53 = load i64, i64* %52, align 8, !dbg !624, !tbaa !125
  %54 = and i64 %53, -6148914691236517206, !dbg !625
  %55 = and i64 %53, 6148914691236517205, !dbg !627
  %56 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %1, i64 0, i32 3, i32 1, !dbg !629
  %57 = load i8, i8* %56, align 8, !dbg !629, !tbaa !130
  %58 = zext i8 %57 to i64, !dbg !630
  %59 = shl nuw nsw i64 %58, 1, !dbg !631
  %60 = sub nsw i64 64, %59, !dbg !632
  %61 = and i64 %60, 4294967294, !dbg !633
  %62 = lshr i64 -6148914691236517206, %61, !dbg !633
  %63 = or i64 %62, %55, !dbg !635
  %64 = xor i64 %62, -1, !dbg !638
  %65 = add i64 %63, %64, !dbg !638
  %66 = lshr i64 6148914691236517205, %61, !dbg !639
  %67 = and i64 %65, %66, !dbg !640
  %68 = or i64 %67, %54, !dbg !641
  store i64 %68, i64* %52, align 8, !dbg !642, !tbaa !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  %69 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %1, i64 0, i32 0, i32 0, !dbg !651
  %70 = load i64, i64* %69, align 8, !dbg !651, !tbaa !125
  %71 = and i64 %70, -6148914691236517206, !dbg !652
  %72 = and i64 %70, 6148914691236517205, !dbg !654
  %73 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %1, i64 0, i32 0, i32 1, !dbg !656
  %74 = load i8, i8* %73, align 8, !dbg !656, !tbaa !130
  %75 = zext i8 %74 to i64, !dbg !657
  %76 = shl nuw nsw i64 %75, 1, !dbg !658
  %77 = sub nsw i64 64, %76, !dbg !659
  %78 = and i64 %77, 4294967294, !dbg !660
  %79 = lshr i64 -6148914691236517206, %78, !dbg !660
  %80 = add nuw nsw i64 %72, 1, !dbg !662
  %81 = add i64 %80, %79, !dbg !664
  %82 = lshr i64 6148914691236517205, %78, !dbg !665
  %83 = and i64 %81, %82, !dbg !666
  %84 = or i64 %83, %71, !dbg !667
  store i64 %84, i64* %69, align 8, !dbg !668, !tbaa !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !669
  %85 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %17, i64 0, i32 0, !dbg !673
  %86 = load i64, i64* %85, align 8, !dbg !673, !tbaa !125
  %87 = and i64 %86, -6148914691236517206, !dbg !674
  %88 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %1, i64 0, i32 6, i32 1, !dbg !677
  %89 = load i8, i8* %88, align 8, !dbg !677, !tbaa !130
  %90 = zext i8 %89 to i64, !dbg !678
  %91 = shl nuw nsw i64 %90, 1, !dbg !679
  %92 = sub nsw i64 64, %91, !dbg !680
  %93 = and i64 %92, 4294967294, !dbg !681
  %94 = lshr i64 6148914691236517205, %93, !dbg !681
  %95 = or i64 %94, %87, !dbg !683
  %96 = ashr i64 -6148914691236517206, %93, !dbg !684
  %97 = add i64 %95, %96, !dbg !684
  %98 = lshr i64 -6148914691236517206, %93, !dbg !685
  %99 = and i64 %97, %98, !dbg !686
  %100 = or i64 %99, %86, !dbg !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  %101 = and i64 %99, -6148914691236517206, !dbg !692
  %102 = and i64 %100, 6148914691236517205, !dbg !694
  %103 = add i64 %98, 1, !dbg !697
  %104 = add i64 %103, %102, !dbg !698
  %105 = and i64 %104, %94, !dbg !699
  %106 = or i64 %105, %101, !dbg !700
  store i64 %106, i64* %85, align 8, !dbg !701, !tbaa !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  %107 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %15, i64 0, i32 0, !dbg !706
  %108 = load i64, i64* %107, align 8, !dbg !706, !tbaa !125
  %109 = and i64 %108, -6148914691236517206, !dbg !707
  %110 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %1, i64 0, i32 4, i32 1, !dbg !710
  %111 = load i8, i8* %110, align 8, !dbg !710, !tbaa !130
  %112 = zext i8 %111 to i64, !dbg !711
  %113 = shl nuw nsw i64 %112, 1, !dbg !712
  %114 = sub nsw i64 64, %113, !dbg !713
  %115 = and i64 %114, 4294967294, !dbg !714
  %116 = lshr i64 6148914691236517205, %115, !dbg !714
  %117 = or i64 %109, 1, !dbg !716
  %118 = add i64 %116, %117, !dbg !717
  %119 = lshr i64 -6148914691236517206, %115, !dbg !718
  %120 = and i64 %118, %119, !dbg !719
  %121 = or i64 %120, %108, !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  %122 = and i64 %120, -6148914691236517206, !dbg !725
  %123 = and i64 %121, 6148914691236517205, !dbg !727
  %124 = add i64 %119, 1, !dbg !730
  %125 = add i64 %124, %123, !dbg !731
  %126 = and i64 %125, %116, !dbg !732
  %127 = or i64 %126, %122, !dbg !733
  store i64 %127, i64* %107, align 8, !dbg !734, !tbaa !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  %128 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %11, i64 0, i32 0, !dbg !739
  %129 = load i64, i64* %128, align 8, !dbg !739, !tbaa !125
  %130 = and i64 %129, -6148914691236517206, !dbg !740
  %131 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %1, i64 0, i32 5, i32 1, !dbg !743
  %132 = load i8, i8* %131, align 8, !dbg !743, !tbaa !130
  %133 = zext i8 %132 to i64, !dbg !744
  %134 = shl nuw nsw i64 %133, 1, !dbg !745
  %135 = sub nsw i64 64, %134, !dbg !746
  %136 = and i64 %135, 4294967294, !dbg !747
  %137 = lshr i64 6148914691236517205, %136, !dbg !747
  %138 = or i64 %130, 1, !dbg !749
  %139 = add i64 %137, %138, !dbg !750
  %140 = lshr i64 -6148914691236517206, %136, !dbg !751
  %141 = and i64 %139, %140, !dbg !752
  %142 = or i64 %141, %129, !dbg !753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !754
  %143 = and i64 %141, -6148914691236517206, !dbg !758
  %144 = and i64 %142, 6148914691236517205, !dbg !760
  %145 = or i64 %144, %140, !dbg !763
  %146 = xor i64 %140, -1, !dbg !764
  %147 = add i64 %145, %146, !dbg !764
  %148 = and i64 %147, %137, !dbg !765
  %149 = or i64 %148, %143, !dbg !766
  store i64 %149, i64* %128, align 8, !dbg !767, !tbaa !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !768
  %150 = getelementptr inbounds %struct.GeoHashBits, %struct.GeoHashBits* %13, i64 0, i32 0, !dbg !772
  %151 = load i64, i64* %150, align 8, !dbg !772, !tbaa !125
  %152 = and i64 %151, -6148914691236517206, !dbg !773
  %153 = getelementptr inbounds %struct.GeoHashNeighbors, %struct.GeoHashNeighbors* %1, i64 0, i32 7, i32 1, !dbg !776
  %154 = load i8, i8* %153, align 8, !dbg !776, !tbaa !130
  %155 = zext i8 %154 to i64, !dbg !777
  %156 = shl nuw nsw i64 %155, 1, !dbg !778
  %157 = sub nsw i64 64, %156, !dbg !779
  %158 = and i64 %157, 4294967294, !dbg !780
  %159 = lshr i64 6148914691236517205, %158, !dbg !780
  %160 = or i64 %159, %152, !dbg !782
  %161 = ashr i64 -6148914691236517206, %158, !dbg !783
  %162 = add i64 %160, %161, !dbg !783
  %163 = lshr i64 -6148914691236517206, %158, !dbg !784
  %164 = and i64 %162, %163, !dbg !785
  %165 = or i64 %164, %151, !dbg !786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !787
  %166 = and i64 %164, -6148914691236517206, !dbg !791
  %167 = and i64 %165, 6148914691236517205, !dbg !793
  %168 = or i64 %167, %163, !dbg !796
  %169 = xor i64 %163, -1, !dbg !797
  %170 = add i64 %168, %169, !dbg !797
  %171 = and i64 %170, %159, !dbg !798
  %172 = or i64 %171, %166, !dbg !799
  store i64 %172, i64* %150, align 8, !dbg !800, !tbaa !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !802
  ret void, !dbg !802
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin noredzone }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!47, !48, !49}
!llvm.ident = !{!50}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geohash.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{!6, !28, !32, !44}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "B", scope: !8, file: !1, line: 53, type: !24, isLocal: true, isDefinition: true)
!8 = distinct !DISubprogram(name: "interleave64", scope: !1, file: !1, line: 52, type: !9, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !16, !16}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !12, line: 60, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !14, line: 105, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !12, line: 48, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !14, line: 79, baseType: !18)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22, !23}
!20 = !DILocalVariable(name: "xlo", arg: 1, scope: !8, file: !1, line: 52, type: !16)
!21 = !DILocalVariable(name: "ylo", arg: 2, scope: !8, file: !1, line: 52, type: !16)
!22 = !DILocalVariable(name: "x", scope: !8, file: !1, line: 58, type: !11)
!23 = !DILocalVariable(name: "y", scope: !8, file: !1, line: 59, type: !11)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 320, elements: !26)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!26 = !{!27}
!27 = !DISubrange(count: 5)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "S", scope: !8, file: !1, line: 56, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, elements: !26)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "B", scope: !34, file: !1, line: 83, type: !41, isLocal: true, isDefinition: true)
!34 = distinct !DISubprogram(name: "deinterleave64", scope: !1, file: !1, line: 82, type: !35, isLocal: true, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{!11, !11}
!37 = !{!38, !39, !40}
!38 = !DILocalVariable(name: "interleaved", arg: 1, scope: !34, file: !1, line: 82, type: !11)
!39 = !DILocalVariable(name: "x", scope: !34, file: !1, line: 88, type: !11)
!40 = !DILocalVariable(name: "y", scope: !34, file: !1, line: 89, type: !11)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 384, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 6)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "S", scope: !34, file: !1, line: 86, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 192, elements: !42)
!47 = !{i32 2, !"Dwarf Version", i32 4}
!48 = !{i32 2, !"Debug Info Version", i32 3}
!49 = !{i32 1, !"wchar_size", i32 4}
!50 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!51 = distinct !DISubprogram(name: "geohashGetCoordRange", scope: !1, file: !1, line: 112, type: !52, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !62)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !54, !54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashRange", file: !56, line: 74, baseType: !57)
!56 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/geohash.h", directory: "/root/.unikraft/apps/redis/build")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 71, size: 128, elements: !58)
!58 = !{!59, !61}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !57, file: !56, line: 72, baseType: !60, size: 64)
!60 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !57, file: !56, line: 73, baseType: !60, size: 64, offset: 64)
!62 = !{!63, !64}
!63 = !DILocalVariable(name: "long_range", arg: 1, scope: !51, file: !1, line: 112, type: !54)
!64 = !DILocalVariable(name: "lat_range", arg: 2, scope: !51, file: !1, line: 112, type: !54)
!65 = !DILocation(line: 112, column: 41, scope: !51)
!66 = !DILocation(line: 112, column: 67, scope: !51)
!67 = !DILocation(line: 116, column: 21, scope: !51)
!68 = !{!69, !69, i64 0}
!69 = !{!"double", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C/C++ TBAA"}
!72 = !DILocation(line: 118, column: 20, scope: !51)
!73 = !DILocation(line: 119, column: 1, scope: !51)
!74 = distinct !DISubprogram(name: "geohashEncode", scope: !1, file: !1, line: 121, type: !75, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !89)
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !78, !78, !60, !60, !80, !83}
!77 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !12, line: 24, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !14, line: 43, baseType: !82)
!82 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashBits", file: !56, line: 69, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 66, size: 128, elements: !86)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !85, file: !56, line: 67, baseType: !11, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !85, file: !56, line: 68, baseType: !80, size: 8, offset: 64)
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97}
!90 = !DILocalVariable(name: "long_range", arg: 1, scope: !74, file: !1, line: 121, type: !78)
!91 = !DILocalVariable(name: "lat_range", arg: 2, scope: !74, file: !1, line: 121, type: !78)
!92 = !DILocalVariable(name: "longitude", arg: 3, scope: !74, file: !1, line: 122, type: !60)
!93 = !DILocalVariable(name: "latitude", arg: 4, scope: !74, file: !1, line: 122, type: !60)
!94 = !DILocalVariable(name: "step", arg: 5, scope: !74, file: !1, line: 122, type: !80)
!95 = !DILocalVariable(name: "hash", arg: 6, scope: !74, file: !1, line: 123, type: !83)
!96 = !DILocalVariable(name: "lat_offset", scope: !74, file: !1, line: 141, type: !60)
!97 = !DILocalVariable(name: "long_offset", scope: !74, file: !1, line: 143, type: !60)
!98 = !DILocation(line: 121, column: 39, scope: !74)
!99 = !DILocation(line: 121, column: 71, scope: !74)
!100 = !DILocation(line: 122, column: 26, scope: !74)
!101 = !DILocation(line: 122, column: 44, scope: !74)
!102 = !DILocation(line: 122, column: 62, scope: !74)
!103 = !DILocation(line: 123, column: 32, scope: !74)
!104 = !DILocation(line: 125, column: 14, scope: !105)
!105 = distinct !DILexicalBlock(scope: !74, file: !1, line: 125, column: 9)
!106 = !DILocation(line: 125, column: 30, scope: !105)
!107 = !DILocation(line: 125, column: 22, scope: !105)
!108 = !DILocation(line: 125, column: 43, scope: !105)
!109 = !DILocation(line: 126, column: 9, scope: !105)
!110 = !DILocation(line: 125, column: 48, scope: !105)
!111 = !{!112, !69, i64 8}
!112 = !{!"", !69, i64 0, !69, i64 8}
!113 = !{!112, !69, i64 0}
!114 = !DILocation(line: 126, column: 36, scope: !105)
!115 = !DILocation(line: 126, column: 33, scope: !105)
!116 = !DILocation(line: 125, column: 9, scope: !74)
!117 = !DILocation(line: 130, column: 19, scope: !118)
!118 = distinct !DILexicalBlock(scope: !74, file: !1, line: 130, column: 9)
!119 = !DILocation(line: 130, column: 47, scope: !118)
!120 = !DILocation(line: 130, column: 34, scope: !118)
!121 = !DILocation(line: 131, column: 18, scope: !118)
!122 = !DILocation(line: 131, column: 44, scope: !118)
!123 = !DILocation(line: 133, column: 11, scope: !74)
!124 = !DILocation(line: 133, column: 16, scope: !74)
!125 = !{!126, !127, i64 0}
!126 = !{!"", !127, i64 0, !70, i64 8}
!127 = !{!"long", !70, i64 0}
!128 = !DILocation(line: 134, column: 11, scope: !74)
!129 = !DILocation(line: 134, column: 16, scope: !74)
!130 = !{!126, !70, i64 8}
!131 = !DILocation(line: 136, column: 31, scope: !132)
!132 = distinct !DILexicalBlock(scope: !74, file: !1, line: 136, column: 9)
!133 = !DILocation(line: 136, column: 18, scope: !132)
!134 = !DILocation(line: 136, column: 47, scope: !132)
!135 = !DILocation(line: 136, column: 35, scope: !132)
!136 = !DILocation(line: 137, column: 33, scope: !132)
!137 = !DILocation(line: 137, column: 19, scope: !132)
!138 = !DILocation(line: 137, column: 50, scope: !132)
!139 = !DILocation(line: 137, column: 37, scope: !132)
!140 = !DILocation(line: 142, column: 19, scope: !74)
!141 = !DILocation(line: 142, column: 55, scope: !74)
!142 = !DILocation(line: 142, column: 37, scope: !74)
!143 = !DILocation(line: 141, column: 12, scope: !74)
!144 = !DILocation(line: 144, column: 20, scope: !74)
!145 = !DILocation(line: 144, column: 58, scope: !74)
!146 = !DILocation(line: 144, column: 39, scope: !74)
!147 = !DILocation(line: 143, column: 12, scope: !74)
!148 = !DILocation(line: 147, column: 25, scope: !74)
!149 = !DILocation(line: 147, column: 19, scope: !74)
!150 = !DILocation(line: 147, column: 16, scope: !74)
!151 = !DILocation(line: 148, column: 17, scope: !74)
!152 = !DILocation(line: 149, column: 31, scope: !74)
!153 = !DILocation(line: 149, column: 43, scope: !74)
!154 = !DILocation(line: 52, column: 46, scope: !8, inlinedAt: !155)
!155 = distinct !DILocation(line: 149, column: 18, scope: !74)
!156 = !DILocation(line: 52, column: 60, scope: !8, inlinedAt: !155)
!157 = !DILocation(line: 58, column: 18, scope: !8, inlinedAt: !155)
!158 = !DILocation(line: 58, column: 14, scope: !8, inlinedAt: !155)
!159 = !DILocation(line: 59, column: 18, scope: !8, inlinedAt: !155)
!160 = !DILocation(line: 59, column: 14, scope: !8, inlinedAt: !155)
!161 = !DILocation(line: 61, column: 17, scope: !8, inlinedAt: !155)
!162 = !DILocation(line: 61, column: 12, scope: !8, inlinedAt: !155)
!163 = !DILocation(line: 61, column: 27, scope: !8, inlinedAt: !155)
!164 = !DILocation(line: 62, column: 17, scope: !8, inlinedAt: !155)
!165 = !DILocation(line: 62, column: 12, scope: !8, inlinedAt: !155)
!166 = !DILocation(line: 62, column: 27, scope: !8, inlinedAt: !155)
!167 = !DILocation(line: 64, column: 17, scope: !8, inlinedAt: !155)
!168 = !DILocation(line: 64, column: 12, scope: !8, inlinedAt: !155)
!169 = !DILocation(line: 64, column: 27, scope: !8, inlinedAt: !155)
!170 = !DILocation(line: 65, column: 17, scope: !8, inlinedAt: !155)
!171 = !DILocation(line: 65, column: 12, scope: !8, inlinedAt: !155)
!172 = !DILocation(line: 65, column: 27, scope: !8, inlinedAt: !155)
!173 = !DILocation(line: 67, column: 17, scope: !8, inlinedAt: !155)
!174 = !DILocation(line: 67, column: 12, scope: !8, inlinedAt: !155)
!175 = !DILocation(line: 67, column: 27, scope: !8, inlinedAt: !155)
!176 = !DILocation(line: 68, column: 17, scope: !8, inlinedAt: !155)
!177 = !DILocation(line: 68, column: 12, scope: !8, inlinedAt: !155)
!178 = !DILocation(line: 68, column: 27, scope: !8, inlinedAt: !155)
!179 = !DILocation(line: 70, column: 17, scope: !8, inlinedAt: !155)
!180 = !DILocation(line: 70, column: 12, scope: !8, inlinedAt: !155)
!181 = !DILocation(line: 70, column: 27, scope: !8, inlinedAt: !155)
!182 = !DILocation(line: 71, column: 17, scope: !8, inlinedAt: !155)
!183 = !DILocation(line: 71, column: 12, scope: !8, inlinedAt: !155)
!184 = !DILocation(line: 71, column: 27, scope: !8, inlinedAt: !155)
!185 = !DILocation(line: 73, column: 17, scope: !8, inlinedAt: !155)
!186 = !DILocation(line: 73, column: 12, scope: !8, inlinedAt: !155)
!187 = !DILocation(line: 73, column: 27, scope: !8, inlinedAt: !155)
!188 = !DILocation(line: 74, column: 17, scope: !8, inlinedAt: !155)
!189 = !DILocation(line: 74, column: 12, scope: !8, inlinedAt: !155)
!190 = !DILocation(line: 76, column: 19, scope: !8, inlinedAt: !155)
!191 = !DILocation(line: 76, column: 14, scope: !8, inlinedAt: !155)
!192 = !DILocation(line: 76, column: 5, scope: !8, inlinedAt: !155)
!193 = !DILocation(line: 149, column: 16, scope: !74)
!194 = !DILocation(line: 0, scope: !74)
!195 = !DILocation(line: 151, column: 1, scope: !74)
!196 = distinct !DISubprogram(name: "geohashEncodeType", scope: !1, file: !1, line: 153, type: !197, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !199)
!197 = !DISubroutineType(types: !198)
!198 = !{!77, !60, !60, !80, !83}
!199 = !{!200, !201, !202, !203, !204}
!200 = !DILocalVariable(name: "longitude", arg: 1, scope: !196, file: !1, line: 153, type: !60)
!201 = !DILocalVariable(name: "latitude", arg: 2, scope: !196, file: !1, line: 153, type: !60)
!202 = !DILocalVariable(name: "step", arg: 3, scope: !196, file: !1, line: 153, type: !80)
!203 = !DILocalVariable(name: "hash", arg: 4, scope: !196, file: !1, line: 153, type: !83)
!204 = !DILocalVariable(name: "r", scope: !196, file: !1, line: 154, type: !205)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 256, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 2)
!208 = !DILocation(line: 153, column: 30, scope: !196)
!209 = !DILocation(line: 153, column: 48, scope: !196)
!210 = !DILocation(line: 153, column: 66, scope: !196)
!211 = !DILocation(line: 153, column: 85, scope: !196)
!212 = !DILocation(line: 154, column: 5, scope: !196)
!213 = !DILocation(line: 154, column: 18, scope: !196)
!214 = !DILocation(line: 155, column: 27, scope: !196)
!215 = !DILocation(line: 155, column: 34, scope: !196)
!216 = !DILocation(line: 112, column: 41, scope: !51, inlinedAt: !217)
!217 = distinct !DILocation(line: 155, column: 5, scope: !196)
!218 = !DILocation(line: 112, column: 67, scope: !51, inlinedAt: !217)
!219 = !DILocation(line: 116, column: 21, scope: !51, inlinedAt: !217)
!220 = !DILocation(line: 118, column: 20, scope: !51, inlinedAt: !217)
!221 = !DILocation(line: 119, column: 1, scope: !51, inlinedAt: !217)
!222 = !DILocation(line: 156, column: 12, scope: !196)
!223 = !DILocation(line: 157, column: 1, scope: !196)
!224 = !DILocation(line: 156, column: 5, scope: !196)
!225 = distinct !DISubprogram(name: "geohashEncodeWGS84", scope: !1, file: !1, line: 159, type: !197, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !226)
!226 = !{!227, !228, !229, !230}
!227 = !DILocalVariable(name: "longitude", arg: 1, scope: !225, file: !1, line: 159, type: !60)
!228 = !DILocalVariable(name: "latitude", arg: 2, scope: !225, file: !1, line: 159, type: !60)
!229 = !DILocalVariable(name: "step", arg: 3, scope: !225, file: !1, line: 159, type: !80)
!230 = !DILocalVariable(name: "hash", arg: 4, scope: !225, file: !1, line: 160, type: !83)
!231 = !DILocation(line: 154, column: 18, scope: !196, inlinedAt: !232)
!232 = distinct !DILocation(line: 161, column: 12, scope: !225)
!233 = !DILocation(line: 159, column: 31, scope: !225)
!234 = !DILocation(line: 159, column: 49, scope: !225)
!235 = !DILocation(line: 159, column: 67, scope: !225)
!236 = !DILocation(line: 160, column: 37, scope: !225)
!237 = !DILocation(line: 153, column: 30, scope: !196, inlinedAt: !232)
!238 = !DILocation(line: 153, column: 48, scope: !196, inlinedAt: !232)
!239 = !DILocation(line: 153, column: 66, scope: !196, inlinedAt: !232)
!240 = !DILocation(line: 153, column: 85, scope: !196, inlinedAt: !232)
!241 = !DILocation(line: 154, column: 5, scope: !196, inlinedAt: !232)
!242 = !DILocation(line: 155, column: 27, scope: !196, inlinedAt: !232)
!243 = !DILocation(line: 155, column: 34, scope: !196, inlinedAt: !232)
!244 = !DILocation(line: 112, column: 41, scope: !51, inlinedAt: !245)
!245 = distinct !DILocation(line: 155, column: 5, scope: !196, inlinedAt: !232)
!246 = !DILocation(line: 112, column: 67, scope: !51, inlinedAt: !245)
!247 = !DILocation(line: 116, column: 21, scope: !51, inlinedAt: !245)
!248 = !DILocation(line: 118, column: 20, scope: !51, inlinedAt: !245)
!249 = !DILocation(line: 119, column: 1, scope: !51, inlinedAt: !245)
!250 = !DILocation(line: 156, column: 12, scope: !196, inlinedAt: !232)
!251 = !DILocation(line: 157, column: 1, scope: !196, inlinedAt: !232)
!252 = !DILocation(line: 156, column: 5, scope: !196, inlinedAt: !232)
!253 = !DILocation(line: 161, column: 5, scope: !225)
!254 = distinct !DISubprogram(name: "geohashDecode", scope: !1, file: !1, line: 164, type: !255, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !265)
!255 = !DISubroutineType(types: !256)
!256 = !{!77, !79, !79, !257, !258}
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashArea", file: !56, line: 80, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 76, size: 384, elements: !261)
!261 = !{!262, !263, !264}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !260, file: !56, line: 77, baseType: !84, size: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "longitude", scope: !260, file: !56, line: 78, baseType: !55, size: 128, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "latitude", scope: !260, file: !56, line: 79, baseType: !55, size: 128, offset: 256)
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274, !275}
!266 = !DILocalVariable(name: "long_range", arg: 1, scope: !254, file: !1, line: 164, type: !79)
!267 = !DILocalVariable(name: "lat_range", arg: 2, scope: !254, file: !1, line: 164, type: !79)
!268 = !DILocalVariable(name: "hash", arg: 3, scope: !254, file: !1, line: 165, type: !257)
!269 = !DILocalVariable(name: "area", arg: 4, scope: !254, file: !1, line: 165, type: !258)
!270 = !DILocalVariable(name: "step", scope: !254, file: !1, line: 172, type: !80)
!271 = !DILocalVariable(name: "hash_sep", scope: !254, file: !1, line: 173, type: !11)
!272 = !DILocalVariable(name: "lat_scale", scope: !254, file: !1, line: 175, type: !60)
!273 = !DILocalVariable(name: "long_scale", scope: !254, file: !1, line: 176, type: !60)
!274 = !DILocalVariable(name: "ilato", scope: !254, file: !1, line: 178, type: !16)
!275 = !DILocalVariable(name: "ilono", scope: !254, file: !1, line: 179, type: !16)
!276 = !DILocation(line: 165, column: 38, scope: !254)
!277 = !DILocation(line: 164, column: 38, scope: !254)
!278 = !DILocation(line: 164, column: 69, scope: !254)
!279 = !DILocation(line: 165, column: 57, scope: !254)
!280 = !DILocation(line: 166, column: 9, scope: !281)
!281 = distinct !DILexicalBlock(scope: !254, file: !1, line: 166, column: 9)
!282 = !DILocation(line: 166, column: 34, scope: !281)
!283 = !DILocation(line: 166, column: 26, scope: !281)
!284 = !DILocation(line: 166, column: 42, scope: !281)
!285 = !DILocation(line: 166, column: 45, scope: !281)
!286 = !DILocation(line: 167, column: 9, scope: !281)
!287 = !DILocation(line: 171, column: 18, scope: !254)
!288 = !DILocation(line: 172, column: 13, scope: !254)
!289 = !DILocation(line: 82, column: 48, scope: !34, inlinedAt: !290)
!290 = distinct !DILocation(line: 173, column: 25, scope: !254)
!291 = !DILocation(line: 88, column: 14, scope: !34, inlinedAt: !290)
!292 = !DILocation(line: 89, column: 30, scope: !34, inlinedAt: !290)
!293 = !DILocation(line: 89, column: 14, scope: !34, inlinedAt: !290)
!294 = !DILocation(line: 91, column: 27, scope: !34, inlinedAt: !290)
!295 = !DILocation(line: 92, column: 27, scope: !34, inlinedAt: !290)
!296 = !DILocation(line: 94, column: 17, scope: !34, inlinedAt: !290)
!297 = !DILocation(line: 94, column: 12, scope: !34, inlinedAt: !290)
!298 = !DILocation(line: 94, column: 27, scope: !34, inlinedAt: !290)
!299 = !DILocation(line: 95, column: 17, scope: !34, inlinedAt: !290)
!300 = !DILocation(line: 95, column: 12, scope: !34, inlinedAt: !290)
!301 = !DILocation(line: 95, column: 27, scope: !34, inlinedAt: !290)
!302 = !DILocation(line: 97, column: 17, scope: !34, inlinedAt: !290)
!303 = !DILocation(line: 97, column: 12, scope: !34, inlinedAt: !290)
!304 = !DILocation(line: 97, column: 27, scope: !34, inlinedAt: !290)
!305 = !DILocation(line: 98, column: 17, scope: !34, inlinedAt: !290)
!306 = !DILocation(line: 98, column: 12, scope: !34, inlinedAt: !290)
!307 = !DILocation(line: 98, column: 27, scope: !34, inlinedAt: !290)
!308 = !DILocation(line: 100, column: 17, scope: !34, inlinedAt: !290)
!309 = !DILocation(line: 100, column: 12, scope: !34, inlinedAt: !290)
!310 = !DILocation(line: 100, column: 27, scope: !34, inlinedAt: !290)
!311 = !DILocation(line: 101, column: 17, scope: !34, inlinedAt: !290)
!312 = !DILocation(line: 101, column: 12, scope: !34, inlinedAt: !290)
!313 = !DILocation(line: 101, column: 27, scope: !34, inlinedAt: !290)
!314 = !DILocation(line: 103, column: 17, scope: !34, inlinedAt: !290)
!315 = !DILocation(line: 103, column: 12, scope: !34, inlinedAt: !290)
!316 = !DILocation(line: 104, column: 17, scope: !34, inlinedAt: !290)
!317 = !DILocation(line: 104, column: 12, scope: !34, inlinedAt: !290)
!318 = !DILocation(line: 106, column: 17, scope: !34, inlinedAt: !290)
!319 = !DILocation(line: 106, column: 27, scope: !34, inlinedAt: !290)
!320 = !DILocation(line: 107, column: 17, scope: !34, inlinedAt: !290)
!321 = !DILocation(line: 107, column: 27, scope: !34, inlinedAt: !290)
!322 = !DILocation(line: 109, column: 5, scope: !34, inlinedAt: !290)
!323 = !DILocation(line: 173, column: 14, scope: !254)
!324 = !DILocation(line: 175, column: 38, scope: !254)
!325 = !DILocation(line: 175, column: 12, scope: !254)
!326 = !DILocation(line: 176, column: 40, scope: !254)
!327 = !DILocation(line: 176, column: 12, scope: !254)
!328 = !DILocation(line: 178, column: 22, scope: !254)
!329 = !DILocation(line: 178, column: 14, scope: !254)
!330 = !DILocation(line: 179, column: 22, scope: !254)
!331 = !DILocation(line: 179, column: 14, scope: !254)
!332 = !DILocation(line: 185, column: 26, scope: !254)
!333 = !DILocation(line: 185, column: 46, scope: !254)
!334 = !DILocation(line: 185, column: 40, scope: !254)
!335 = !DILocation(line: 185, column: 38, scope: !254)
!336 = !DILocation(line: 185, column: 56, scope: !254)
!337 = !DILocation(line: 185, column: 23, scope: !254)
!338 = !DILocation(line: 184, column: 20, scope: !254)
!339 = !DILocation(line: 184, column: 24, scope: !254)
!340 = !{!341, !69, i64 32}
!341 = !{!"", !126, i64 0, !112, i64 16, !112, i64 32}
!342 = !DILocation(line: 187, column: 33, scope: !254)
!343 = !DILocation(line: 187, column: 26, scope: !254)
!344 = !DILocation(line: 187, column: 44, scope: !254)
!345 = !DILocation(line: 187, column: 62, scope: !254)
!346 = !DILocation(line: 187, column: 23, scope: !254)
!347 = !DILocation(line: 186, column: 20, scope: !254)
!348 = !DILocation(line: 186, column: 24, scope: !254)
!349 = !{!341, !69, i64 40}
!350 = !DILocation(line: 189, column: 27, scope: !254)
!351 = !DILocation(line: 189, column: 39, scope: !254)
!352 = !DILocation(line: 189, column: 57, scope: !254)
!353 = !DILocation(line: 189, column: 24, scope: !254)
!354 = !DILocation(line: 188, column: 21, scope: !254)
!355 = !DILocation(line: 188, column: 25, scope: !254)
!356 = !{!341, !69, i64 16}
!357 = !DILocation(line: 191, column: 34, scope: !254)
!358 = !DILocation(line: 191, column: 27, scope: !254)
!359 = !DILocation(line: 191, column: 45, scope: !254)
!360 = !DILocation(line: 191, column: 63, scope: !254)
!361 = !DILocation(line: 191, column: 24, scope: !254)
!362 = !DILocation(line: 190, column: 21, scope: !254)
!363 = !DILocation(line: 190, column: 25, scope: !254)
!364 = !{!341, !69, i64 24}
!365 = !DILocation(line: 0, scope: !254)
!366 = !DILocation(line: 194, column: 1, scope: !254)
!367 = distinct !DISubprogram(name: "geohashDecodeType", scope: !1, file: !1, line: 196, type: !368, isLocal: false, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !370)
!368 = !DISubroutineType(types: !369)
!369 = !{!77, !257, !258}
!370 = !{!371, !372, !373}
!371 = !DILocalVariable(name: "hash", arg: 1, scope: !367, file: !1, line: 196, type: !257)
!372 = !DILocalVariable(name: "area", arg: 2, scope: !367, file: !1, line: 196, type: !258)
!373 = !DILocalVariable(name: "r", scope: !367, file: !1, line: 197, type: !205)
!374 = !DILocation(line: 196, column: 41, scope: !367)
!375 = !DILocation(line: 196, column: 60, scope: !367)
!376 = !DILocation(line: 197, column: 18, scope: !367)
!377 = !DILocation(line: 112, column: 41, scope: !51, inlinedAt: !378)
!378 = distinct !DILocation(line: 198, column: 5, scope: !367)
!379 = !DILocation(line: 112, column: 67, scope: !51, inlinedAt: !378)
!380 = !DILocation(line: 119, column: 1, scope: !51, inlinedAt: !378)
!381 = !DILocation(line: 199, column: 12, scope: !367)
!382 = !DILocation(line: 199, column: 5, scope: !367)
!383 = distinct !DISubprogram(name: "geohashDecodeWGS84", scope: !1, file: !1, line: 202, type: !368, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !384)
!384 = !{!385, !386}
!385 = !DILocalVariable(name: "hash", arg: 1, scope: !383, file: !1, line: 202, type: !257)
!386 = !DILocalVariable(name: "area", arg: 2, scope: !383, file: !1, line: 202, type: !258)
!387 = !DILocation(line: 202, column: 42, scope: !383)
!388 = !DILocation(line: 202, column: 61, scope: !383)
!389 = !DILocation(line: 196, column: 41, scope: !367, inlinedAt: !390)
!390 = distinct !DILocation(line: 203, column: 12, scope: !383)
!391 = !DILocation(line: 196, column: 60, scope: !367, inlinedAt: !390)
!392 = !DILocation(line: 197, column: 18, scope: !367, inlinedAt: !390)
!393 = !DILocation(line: 112, column: 41, scope: !51, inlinedAt: !394)
!394 = distinct !DILocation(line: 198, column: 5, scope: !367, inlinedAt: !390)
!395 = !DILocation(line: 112, column: 67, scope: !51, inlinedAt: !394)
!396 = !DILocation(line: 119, column: 1, scope: !51, inlinedAt: !394)
!397 = !DILocation(line: 199, column: 12, scope: !367, inlinedAt: !390)
!398 = !DILocation(line: 199, column: 5, scope: !367, inlinedAt: !390)
!399 = !DILocation(line: 203, column: 5, scope: !383)
!400 = distinct !DISubprogram(name: "geohashDecodeAreaToLongLat", scope: !1, file: !1, line: 206, type: !401, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !406)
!401 = !DISubroutineType(types: !402)
!402 = !{!77, !403, !405}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!406 = !{!407, !408}
!407 = !DILocalVariable(name: "area", arg: 1, scope: !400, file: !1, line: 206, type: !403)
!408 = !DILocalVariable(name: "xy", arg: 2, scope: !400, file: !1, line: 206, type: !405)
!409 = !DILocation(line: 206, column: 51, scope: !400)
!410 = !DILocation(line: 206, column: 65, scope: !400)
!411 = !DILocation(line: 207, column: 10, scope: !412)
!412 = distinct !DILexicalBlock(scope: !400, file: !1, line: 207, column: 9)
!413 = !DILocation(line: 207, column: 9, scope: !400)
!414 = !DILocation(line: 208, column: 30, scope: !400)
!415 = !DILocation(line: 208, column: 52, scope: !400)
!416 = !DILocation(line: 208, column: 34, scope: !400)
!417 = !DILocation(line: 208, column: 57, scope: !400)
!418 = !DILocation(line: 208, column: 11, scope: !400)
!419 = !DILocation(line: 209, column: 29, scope: !400)
!420 = !DILocation(line: 209, column: 50, scope: !400)
!421 = !DILocation(line: 209, column: 33, scope: !400)
!422 = !DILocation(line: 209, column: 55, scope: !400)
!423 = !DILocation(line: 209, column: 5, scope: !400)
!424 = !DILocation(line: 209, column: 11, scope: !400)
!425 = !DILocation(line: 210, column: 5, scope: !400)
!426 = !DILocation(line: 0, scope: !412)
!427 = !DILocation(line: 211, column: 1, scope: !400)
!428 = distinct !DISubprogram(name: "geohashDecodeToLongLatType", scope: !1, file: !1, line: 213, type: !429, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{!77, !257, !405}
!431 = !{!432, !433, !434}
!432 = !DILocalVariable(name: "hash", arg: 1, scope: !428, file: !1, line: 213, type: !257)
!433 = !DILocalVariable(name: "xy", arg: 2, scope: !428, file: !1, line: 213, type: !405)
!434 = !DILocalVariable(name: "area", scope: !428, file: !1, line: 214, type: !259)
!435 = !DILocation(line: 213, column: 50, scope: !428)
!436 = !DILocation(line: 213, column: 64, scope: !428)
!437 = !DILocation(line: 214, column: 5, scope: !428)
!438 = !DILocation(line: 214, column: 17, scope: !428)
!439 = !DILocation(line: 215, column: 10, scope: !440)
!440 = distinct !DILexicalBlock(scope: !428, file: !1, line: 215, column: 9)
!441 = !DILocation(line: 215, column: 13, scope: !440)
!442 = !DILocation(line: 196, column: 41, scope: !367, inlinedAt: !443)
!443 = distinct !DILocation(line: 215, column: 17, scope: !440)
!444 = !DILocation(line: 196, column: 60, scope: !367, inlinedAt: !443)
!445 = !DILocation(line: 197, column: 18, scope: !367, inlinedAt: !443)
!446 = !DILocation(line: 112, column: 41, scope: !51, inlinedAt: !447)
!447 = distinct !DILocation(line: 198, column: 5, scope: !367, inlinedAt: !443)
!448 = !DILocation(line: 112, column: 67, scope: !51, inlinedAt: !447)
!449 = !DILocation(line: 119, column: 1, scope: !51, inlinedAt: !447)
!450 = !DILocation(line: 199, column: 12, scope: !367, inlinedAt: !443)
!451 = !DILocation(line: 199, column: 5, scope: !367, inlinedAt: !443)
!452 = !DILocation(line: 215, column: 17, scope: !440)
!453 = !DILocation(line: 215, column: 9, scope: !428)
!454 = !DILocation(line: 206, column: 51, scope: !400, inlinedAt: !455)
!455 = distinct !DILocation(line: 217, column: 12, scope: !428)
!456 = !DILocation(line: 206, column: 65, scope: !400, inlinedAt: !455)
!457 = !DILocation(line: 208, column: 30, scope: !400, inlinedAt: !455)
!458 = !DILocation(line: 208, column: 52, scope: !400, inlinedAt: !455)
!459 = !DILocation(line: 209, column: 50, scope: !400, inlinedAt: !455)
!460 = !DILocation(line: 208, column: 34, scope: !400, inlinedAt: !455)
!461 = !DILocation(line: 208, column: 57, scope: !400, inlinedAt: !455)
!462 = !DILocation(line: 208, column: 11, scope: !400, inlinedAt: !455)
!463 = !DILocation(line: 211, column: 1, scope: !400, inlinedAt: !455)
!464 = !DILocation(line: 217, column: 5, scope: !428)
!465 = !DILocation(line: 0, scope: !440)
!466 = !DILocation(line: 218, column: 1, scope: !428)
!467 = distinct !DISubprogram(name: "geohashDecodeToLongLatWGS84", scope: !1, file: !1, line: 220, type: !429, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !468)
!468 = !{!469, !470}
!469 = !DILocalVariable(name: "hash", arg: 1, scope: !467, file: !1, line: 220, type: !257)
!470 = !DILocalVariable(name: "xy", arg: 2, scope: !467, file: !1, line: 220, type: !405)
!471 = !DILocation(line: 220, column: 51, scope: !467)
!472 = !DILocation(line: 220, column: 65, scope: !467)
!473 = !DILocation(line: 213, column: 50, scope: !428, inlinedAt: !474)
!474 = distinct !DILocation(line: 221, column: 12, scope: !467)
!475 = !DILocation(line: 213, column: 64, scope: !428, inlinedAt: !474)
!476 = !DILocation(line: 214, column: 5, scope: !428, inlinedAt: !474)
!477 = !DILocation(line: 214, column: 17, scope: !428, inlinedAt: !474)
!478 = !DILocation(line: 215, column: 10, scope: !440, inlinedAt: !474)
!479 = !DILocation(line: 215, column: 13, scope: !440, inlinedAt: !474)
!480 = !DILocation(line: 196, column: 41, scope: !367, inlinedAt: !481)
!481 = distinct !DILocation(line: 215, column: 17, scope: !440, inlinedAt: !474)
!482 = !DILocation(line: 196, column: 60, scope: !367, inlinedAt: !481)
!483 = !DILocation(line: 197, column: 18, scope: !367, inlinedAt: !481)
!484 = !DILocation(line: 112, column: 41, scope: !51, inlinedAt: !485)
!485 = distinct !DILocation(line: 198, column: 5, scope: !367, inlinedAt: !481)
!486 = !DILocation(line: 112, column: 67, scope: !51, inlinedAt: !485)
!487 = !DILocation(line: 119, column: 1, scope: !51, inlinedAt: !485)
!488 = !DILocation(line: 199, column: 12, scope: !367, inlinedAt: !481)
!489 = !DILocation(line: 199, column: 5, scope: !367, inlinedAt: !481)
!490 = !DILocation(line: 215, column: 17, scope: !440, inlinedAt: !474)
!491 = !DILocation(line: 215, column: 9, scope: !428, inlinedAt: !474)
!492 = !DILocation(line: 206, column: 51, scope: !400, inlinedAt: !493)
!493 = distinct !DILocation(line: 217, column: 12, scope: !428, inlinedAt: !474)
!494 = !DILocation(line: 206, column: 65, scope: !400, inlinedAt: !493)
!495 = !DILocation(line: 208, column: 30, scope: !400, inlinedAt: !493)
!496 = !DILocation(line: 208, column: 52, scope: !400, inlinedAt: !493)
!497 = !DILocation(line: 209, column: 50, scope: !400, inlinedAt: !493)
!498 = !DILocation(line: 208, column: 34, scope: !400, inlinedAt: !493)
!499 = !DILocation(line: 208, column: 57, scope: !400, inlinedAt: !493)
!500 = !DILocation(line: 208, column: 11, scope: !400, inlinedAt: !493)
!501 = !DILocation(line: 211, column: 1, scope: !400, inlinedAt: !493)
!502 = !DILocation(line: 217, column: 5, scope: !428, inlinedAt: !474)
!503 = !DILocation(line: 0, scope: !440, inlinedAt: !474)
!504 = !DILocation(line: 218, column: 1, scope: !428, inlinedAt: !474)
!505 = !DILocation(line: 221, column: 5, scope: !467)
!506 = distinct !DISubprogram(name: "geohashNeighbors", scope: !1, file: !1, line: 262, type: !507, isLocal: false, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !522)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !509, !510}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeoHashNeighbors", file: !56, line: 91, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 82, size: 1024, elements: !513)
!513 = !{!514, !515, !516, !517, !518, !519, !520, !521}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "north", scope: !512, file: !56, line: 83, baseType: !84, size: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "east", scope: !512, file: !56, line: 84, baseType: !84, size: 128, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "west", scope: !512, file: !56, line: 85, baseType: !84, size: 128, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "south", scope: !512, file: !56, line: 86, baseType: !84, size: 128, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "north_east", scope: !512, file: !56, line: 87, baseType: !84, size: 128, offset: 512)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "south_east", scope: !512, file: !56, line: 88, baseType: !84, size: 128, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "north_west", scope: !512, file: !56, line: 89, baseType: !84, size: 128, offset: 768)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "south_west", scope: !512, file: !56, line: 90, baseType: !84, size: 128, offset: 896)
!522 = !{!523, !524}
!523 = !DILocalVariable(name: "hash", arg: 1, scope: !506, file: !1, line: 262, type: !509)
!524 = !DILocalVariable(name: "neighbors", arg: 2, scope: !506, file: !1, line: 262, type: !510)
!525 = !DILocation(line: 262, column: 42, scope: !506)
!526 = !DILocation(line: 262, column: 66, scope: !506)
!527 = !DILocation(line: 263, column: 16, scope: !506)
!528 = !DILocation(line: 263, column: 23, scope: !506)
!529 = !{i64 0, i64 8, !530, i64 8, i64 1, !531}
!530 = !{!127, !127, i64 0}
!531 = !{!70, !70, i64 0}
!532 = !DILocation(line: 264, column: 16, scope: !506)
!533 = !DILocation(line: 264, column: 23, scope: !506)
!534 = !DILocation(line: 265, column: 24, scope: !506)
!535 = !DILocation(line: 266, column: 16, scope: !506)
!536 = !DILocation(line: 266, column: 24, scope: !506)
!537 = !DILocation(line: 267, column: 16, scope: !506)
!538 = !DILocation(line: 267, column: 29, scope: !506)
!539 = !DILocation(line: 268, column: 16, scope: !506)
!540 = !DILocation(line: 268, column: 29, scope: !506)
!541 = !DILocation(line: 269, column: 16, scope: !506)
!542 = !DILocation(line: 269, column: 29, scope: !506)
!543 = !DILocation(line: 270, column: 16, scope: !506)
!544 = !DILocation(line: 270, column: 29, scope: !506)
!545 = !DILocalVariable(name: "hash", arg: 1, scope: !546, file: !1, line: 224, type: !83)
!546 = distinct !DISubprogram(name: "geohash_move_x", scope: !1, file: !1, line: 224, type: !547, isLocal: true, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !552)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !83, !549}
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !12, line: 20, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !14, line: 41, baseType: !551)
!551 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!552 = !{!545, !553, !554, !555, !556}
!553 = !DILocalVariable(name: "d", arg: 2, scope: !546, file: !1, line: 224, type: !549)
!554 = !DILocalVariable(name: "x", scope: !546, file: !1, line: 228, type: !11)
!555 = !DILocalVariable(name: "y", scope: !546, file: !1, line: 229, type: !11)
!556 = !DILocalVariable(name: "zz", scope: !546, file: !1, line: 231, type: !11)
!557 = !DILocation(line: 224, column: 41, scope: !546, inlinedAt: !558)
!558 = distinct !DILocation(line: 272, column: 5, scope: !506)
!559 = !DILocation(line: 224, column: 54, scope: !546, inlinedAt: !558)
!560 = !DILocation(line: 228, column: 24, scope: !546, inlinedAt: !558)
!561 = !DILocation(line: 228, column: 29, scope: !546, inlinedAt: !558)
!562 = !DILocation(line: 228, column: 14, scope: !546, inlinedAt: !558)
!563 = !DILocation(line: 229, column: 29, scope: !546, inlinedAt: !558)
!564 = !DILocation(line: 229, column: 14, scope: !546, inlinedAt: !558)
!565 = !DILocation(line: 231, column: 56, scope: !546, inlinedAt: !558)
!566 = !DILocation(line: 231, column: 50, scope: !546, inlinedAt: !558)
!567 = !DILocation(line: 231, column: 61, scope: !546, inlinedAt: !558)
!568 = !DILocation(line: 231, column: 48, scope: !546, inlinedAt: !558)
!569 = !DILocation(line: 231, column: 41, scope: !546, inlinedAt: !558)
!570 = !DILocation(line: 231, column: 14, scope: !546, inlinedAt: !558)
!571 = !DILocation(line: 234, column: 21, scope: !572, inlinedAt: !558)
!572 = distinct !DILexicalBlock(scope: !573, file: !1, line: 233, column: 16)
!573 = distinct !DILexicalBlock(scope: !546, file: !1, line: 233, column: 9)
!574 = !DILocation(line: 234, column: 15, scope: !572, inlinedAt: !558)
!575 = !DILocation(line: 240, column: 33, scope: !546, inlinedAt: !558)
!576 = !DILocation(line: 240, column: 7, scope: !546, inlinedAt: !558)
!577 = !DILocation(line: 241, column: 21, scope: !546, inlinedAt: !558)
!578 = !DILocation(line: 241, column: 16, scope: !546, inlinedAt: !558)
!579 = !DILocation(line: 242, column: 1, scope: !546, inlinedAt: !558)
!580 = !DILocalVariable(name: "hash", arg: 1, scope: !581, file: !1, line: 244, type: !83)
!581 = distinct !DISubprogram(name: "geohash_move_y", scope: !1, file: !1, line: 244, type: !547, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !582)
!582 = !{!580, !583, !584, !585, !586}
!583 = !DILocalVariable(name: "d", arg: 2, scope: !581, file: !1, line: 244, type: !549)
!584 = !DILocalVariable(name: "x", scope: !581, file: !1, line: 248, type: !11)
!585 = !DILocalVariable(name: "y", scope: !581, file: !1, line: 249, type: !11)
!586 = !DILocalVariable(name: "zz", scope: !581, file: !1, line: 251, type: !11)
!587 = !DILocation(line: 244, column: 41, scope: !581, inlinedAt: !588)
!588 = distinct !DILocation(line: 273, column: 5, scope: !506)
!589 = !DILocation(line: 244, column: 54, scope: !581, inlinedAt: !588)
!590 = !DILocation(line: 260, column: 1, scope: !581, inlinedAt: !588)
!591 = !DILocation(line: 224, column: 41, scope: !546, inlinedAt: !592)
!592 = distinct !DILocation(line: 275, column: 5, scope: !506)
!593 = !DILocation(line: 224, column: 54, scope: !546, inlinedAt: !592)
!594 = !DILocation(line: 228, column: 24, scope: !546, inlinedAt: !592)
!595 = !DILocation(line: 228, column: 29, scope: !546, inlinedAt: !592)
!596 = !DILocation(line: 228, column: 14, scope: !546, inlinedAt: !592)
!597 = !DILocation(line: 229, column: 29, scope: !546, inlinedAt: !592)
!598 = !DILocation(line: 229, column: 14, scope: !546, inlinedAt: !592)
!599 = !DILocation(line: 231, column: 56, scope: !546, inlinedAt: !592)
!600 = !DILocation(line: 231, column: 50, scope: !546, inlinedAt: !592)
!601 = !DILocation(line: 231, column: 61, scope: !546, inlinedAt: !592)
!602 = !DILocation(line: 231, column: 48, scope: !546, inlinedAt: !592)
!603 = !DILocation(line: 231, column: 41, scope: !546, inlinedAt: !592)
!604 = !DILocation(line: 231, column: 14, scope: !546, inlinedAt: !592)
!605 = !DILocation(line: 236, column: 15, scope: !606, inlinedAt: !592)
!606 = distinct !DILexicalBlock(scope: !573, file: !1, line: 235, column: 12)
!607 = !DILocation(line: 237, column: 15, scope: !606, inlinedAt: !592)
!608 = !DILocation(line: 240, column: 33, scope: !546, inlinedAt: !592)
!609 = !DILocation(line: 240, column: 7, scope: !546, inlinedAt: !592)
!610 = !DILocation(line: 241, column: 21, scope: !546, inlinedAt: !592)
!611 = !DILocation(line: 241, column: 16, scope: !546, inlinedAt: !592)
!612 = !DILocation(line: 242, column: 1, scope: !546, inlinedAt: !592)
!613 = !DILocation(line: 244, column: 41, scope: !581, inlinedAt: !614)
!614 = distinct !DILocation(line: 276, column: 5, scope: !506)
!615 = !DILocation(line: 244, column: 54, scope: !581, inlinedAt: !614)
!616 = !DILocation(line: 260, column: 1, scope: !581, inlinedAt: !614)
!617 = !DILocation(line: 224, column: 41, scope: !546, inlinedAt: !618)
!618 = distinct !DILocation(line: 278, column: 5, scope: !506)
!619 = !DILocation(line: 224, column: 54, scope: !546, inlinedAt: !618)
!620 = !DILocation(line: 242, column: 1, scope: !546, inlinedAt: !618)
!621 = !DILocation(line: 244, column: 41, scope: !581, inlinedAt: !622)
!622 = distinct !DILocation(line: 279, column: 5, scope: !506)
!623 = !DILocation(line: 244, column: 54, scope: !581, inlinedAt: !622)
!624 = !DILocation(line: 248, column: 24, scope: !581, inlinedAt: !622)
!625 = !DILocation(line: 248, column: 29, scope: !581, inlinedAt: !622)
!626 = !DILocation(line: 248, column: 14, scope: !581, inlinedAt: !622)
!627 = !DILocation(line: 249, column: 29, scope: !581, inlinedAt: !622)
!628 = !DILocation(line: 249, column: 14, scope: !581, inlinedAt: !622)
!629 = !DILocation(line: 251, column: 56, scope: !581, inlinedAt: !622)
!630 = !DILocation(line: 251, column: 50, scope: !581, inlinedAt: !622)
!631 = !DILocation(line: 251, column: 61, scope: !581, inlinedAt: !622)
!632 = !DILocation(line: 251, column: 48, scope: !581, inlinedAt: !622)
!633 = !DILocation(line: 251, column: 41, scope: !581, inlinedAt: !622)
!634 = !DILocation(line: 251, column: 14, scope: !581, inlinedAt: !622)
!635 = !DILocation(line: 255, column: 15, scope: !636, inlinedAt: !622)
!636 = distinct !DILexicalBlock(scope: !637, file: !1, line: 254, column: 12)
!637 = distinct !DILexicalBlock(scope: !581, file: !1, line: 252, column: 9)
!638 = !DILocation(line: 256, column: 15, scope: !636, inlinedAt: !622)
!639 = !DILocation(line: 258, column: 33, scope: !581, inlinedAt: !622)
!640 = !DILocation(line: 258, column: 7, scope: !581, inlinedAt: !622)
!641 = !DILocation(line: 259, column: 21, scope: !581, inlinedAt: !622)
!642 = !DILocation(line: 259, column: 16, scope: !581, inlinedAt: !622)
!643 = !DILocation(line: 260, column: 1, scope: !581, inlinedAt: !622)
!644 = !DILocation(line: 224, column: 41, scope: !546, inlinedAt: !645)
!645 = distinct !DILocation(line: 281, column: 5, scope: !506)
!646 = !DILocation(line: 224, column: 54, scope: !546, inlinedAt: !645)
!647 = !DILocation(line: 242, column: 1, scope: !546, inlinedAt: !645)
!648 = !DILocation(line: 244, column: 41, scope: !581, inlinedAt: !649)
!649 = distinct !DILocation(line: 282, column: 5, scope: !506)
!650 = !DILocation(line: 244, column: 54, scope: !581, inlinedAt: !649)
!651 = !DILocation(line: 248, column: 24, scope: !581, inlinedAt: !649)
!652 = !DILocation(line: 248, column: 29, scope: !581, inlinedAt: !649)
!653 = !DILocation(line: 248, column: 14, scope: !581, inlinedAt: !649)
!654 = !DILocation(line: 249, column: 29, scope: !581, inlinedAt: !649)
!655 = !DILocation(line: 249, column: 14, scope: !581, inlinedAt: !649)
!656 = !DILocation(line: 251, column: 56, scope: !581, inlinedAt: !649)
!657 = !DILocation(line: 251, column: 50, scope: !581, inlinedAt: !649)
!658 = !DILocation(line: 251, column: 61, scope: !581, inlinedAt: !649)
!659 = !DILocation(line: 251, column: 48, scope: !581, inlinedAt: !649)
!660 = !DILocation(line: 251, column: 41, scope: !581, inlinedAt: !649)
!661 = !DILocation(line: 251, column: 14, scope: !581, inlinedAt: !649)
!662 = !DILocation(line: 253, column: 21, scope: !663, inlinedAt: !649)
!663 = distinct !DILexicalBlock(scope: !637, file: !1, line: 252, column: 16)
!664 = !DILocation(line: 253, column: 15, scope: !663, inlinedAt: !649)
!665 = !DILocation(line: 258, column: 33, scope: !581, inlinedAt: !649)
!666 = !DILocation(line: 258, column: 7, scope: !581, inlinedAt: !649)
!667 = !DILocation(line: 259, column: 21, scope: !581, inlinedAt: !649)
!668 = !DILocation(line: 259, column: 16, scope: !581, inlinedAt: !649)
!669 = !DILocation(line: 260, column: 1, scope: !581, inlinedAt: !649)
!670 = !DILocation(line: 224, column: 41, scope: !546, inlinedAt: !671)
!671 = distinct !DILocation(line: 284, column: 5, scope: !506)
!672 = !DILocation(line: 224, column: 54, scope: !546, inlinedAt: !671)
!673 = !DILocation(line: 228, column: 24, scope: !546, inlinedAt: !671)
!674 = !DILocation(line: 228, column: 29, scope: !546, inlinedAt: !671)
!675 = !DILocation(line: 228, column: 14, scope: !546, inlinedAt: !671)
!676 = !DILocation(line: 229, column: 14, scope: !546, inlinedAt: !671)
!677 = !DILocation(line: 231, column: 56, scope: !546, inlinedAt: !671)
!678 = !DILocation(line: 231, column: 50, scope: !546, inlinedAt: !671)
!679 = !DILocation(line: 231, column: 61, scope: !546, inlinedAt: !671)
!680 = !DILocation(line: 231, column: 48, scope: !546, inlinedAt: !671)
!681 = !DILocation(line: 231, column: 41, scope: !546, inlinedAt: !671)
!682 = !DILocation(line: 231, column: 14, scope: !546, inlinedAt: !671)
!683 = !DILocation(line: 236, column: 15, scope: !606, inlinedAt: !671)
!684 = !DILocation(line: 237, column: 15, scope: !606, inlinedAt: !671)
!685 = !DILocation(line: 240, column: 33, scope: !546, inlinedAt: !671)
!686 = !DILocation(line: 240, column: 7, scope: !546, inlinedAt: !671)
!687 = !DILocation(line: 241, column: 21, scope: !546, inlinedAt: !671)
!688 = !DILocation(line: 242, column: 1, scope: !546, inlinedAt: !671)
!689 = !DILocation(line: 244, column: 41, scope: !581, inlinedAt: !690)
!690 = distinct !DILocation(line: 285, column: 5, scope: !506)
!691 = !DILocation(line: 244, column: 54, scope: !581, inlinedAt: !690)
!692 = !DILocation(line: 248, column: 29, scope: !581, inlinedAt: !690)
!693 = !DILocation(line: 248, column: 14, scope: !581, inlinedAt: !690)
!694 = !DILocation(line: 249, column: 29, scope: !581, inlinedAt: !690)
!695 = !DILocation(line: 249, column: 14, scope: !581, inlinedAt: !690)
!696 = !DILocation(line: 251, column: 14, scope: !581, inlinedAt: !690)
!697 = !DILocation(line: 253, column: 21, scope: !663, inlinedAt: !690)
!698 = !DILocation(line: 253, column: 15, scope: !663, inlinedAt: !690)
!699 = !DILocation(line: 258, column: 7, scope: !581, inlinedAt: !690)
!700 = !DILocation(line: 259, column: 21, scope: !581, inlinedAt: !690)
!701 = !DILocation(line: 259, column: 16, scope: !581, inlinedAt: !690)
!702 = !DILocation(line: 260, column: 1, scope: !581, inlinedAt: !690)
!703 = !DILocation(line: 224, column: 41, scope: !546, inlinedAt: !704)
!704 = distinct !DILocation(line: 287, column: 5, scope: !506)
!705 = !DILocation(line: 224, column: 54, scope: !546, inlinedAt: !704)
!706 = !DILocation(line: 228, column: 24, scope: !546, inlinedAt: !704)
!707 = !DILocation(line: 228, column: 29, scope: !546, inlinedAt: !704)
!708 = !DILocation(line: 228, column: 14, scope: !546, inlinedAt: !704)
!709 = !DILocation(line: 229, column: 14, scope: !546, inlinedAt: !704)
!710 = !DILocation(line: 231, column: 56, scope: !546, inlinedAt: !704)
!711 = !DILocation(line: 231, column: 50, scope: !546, inlinedAt: !704)
!712 = !DILocation(line: 231, column: 61, scope: !546, inlinedAt: !704)
!713 = !DILocation(line: 231, column: 48, scope: !546, inlinedAt: !704)
!714 = !DILocation(line: 231, column: 41, scope: !546, inlinedAt: !704)
!715 = !DILocation(line: 231, column: 14, scope: !546, inlinedAt: !704)
!716 = !DILocation(line: 234, column: 21, scope: !572, inlinedAt: !704)
!717 = !DILocation(line: 234, column: 15, scope: !572, inlinedAt: !704)
!718 = !DILocation(line: 240, column: 33, scope: !546, inlinedAt: !704)
!719 = !DILocation(line: 240, column: 7, scope: !546, inlinedAt: !704)
!720 = !DILocation(line: 241, column: 21, scope: !546, inlinedAt: !704)
!721 = !DILocation(line: 242, column: 1, scope: !546, inlinedAt: !704)
!722 = !DILocation(line: 244, column: 41, scope: !581, inlinedAt: !723)
!723 = distinct !DILocation(line: 288, column: 5, scope: !506)
!724 = !DILocation(line: 244, column: 54, scope: !581, inlinedAt: !723)
!725 = !DILocation(line: 248, column: 29, scope: !581, inlinedAt: !723)
!726 = !DILocation(line: 248, column: 14, scope: !581, inlinedAt: !723)
!727 = !DILocation(line: 249, column: 29, scope: !581, inlinedAt: !723)
!728 = !DILocation(line: 249, column: 14, scope: !581, inlinedAt: !723)
!729 = !DILocation(line: 251, column: 14, scope: !581, inlinedAt: !723)
!730 = !DILocation(line: 253, column: 21, scope: !663, inlinedAt: !723)
!731 = !DILocation(line: 253, column: 15, scope: !663, inlinedAt: !723)
!732 = !DILocation(line: 258, column: 7, scope: !581, inlinedAt: !723)
!733 = !DILocation(line: 259, column: 21, scope: !581, inlinedAt: !723)
!734 = !DILocation(line: 259, column: 16, scope: !581, inlinedAt: !723)
!735 = !DILocation(line: 260, column: 1, scope: !581, inlinedAt: !723)
!736 = !DILocation(line: 224, column: 41, scope: !546, inlinedAt: !737)
!737 = distinct !DILocation(line: 290, column: 5, scope: !506)
!738 = !DILocation(line: 224, column: 54, scope: !546, inlinedAt: !737)
!739 = !DILocation(line: 228, column: 24, scope: !546, inlinedAt: !737)
!740 = !DILocation(line: 228, column: 29, scope: !546, inlinedAt: !737)
!741 = !DILocation(line: 228, column: 14, scope: !546, inlinedAt: !737)
!742 = !DILocation(line: 229, column: 14, scope: !546, inlinedAt: !737)
!743 = !DILocation(line: 231, column: 56, scope: !546, inlinedAt: !737)
!744 = !DILocation(line: 231, column: 50, scope: !546, inlinedAt: !737)
!745 = !DILocation(line: 231, column: 61, scope: !546, inlinedAt: !737)
!746 = !DILocation(line: 231, column: 48, scope: !546, inlinedAt: !737)
!747 = !DILocation(line: 231, column: 41, scope: !546, inlinedAt: !737)
!748 = !DILocation(line: 231, column: 14, scope: !546, inlinedAt: !737)
!749 = !DILocation(line: 234, column: 21, scope: !572, inlinedAt: !737)
!750 = !DILocation(line: 234, column: 15, scope: !572, inlinedAt: !737)
!751 = !DILocation(line: 240, column: 33, scope: !546, inlinedAt: !737)
!752 = !DILocation(line: 240, column: 7, scope: !546, inlinedAt: !737)
!753 = !DILocation(line: 241, column: 21, scope: !546, inlinedAt: !737)
!754 = !DILocation(line: 242, column: 1, scope: !546, inlinedAt: !737)
!755 = !DILocation(line: 244, column: 41, scope: !581, inlinedAt: !756)
!756 = distinct !DILocation(line: 291, column: 5, scope: !506)
!757 = !DILocation(line: 244, column: 54, scope: !581, inlinedAt: !756)
!758 = !DILocation(line: 248, column: 29, scope: !581, inlinedAt: !756)
!759 = !DILocation(line: 248, column: 14, scope: !581, inlinedAt: !756)
!760 = !DILocation(line: 249, column: 29, scope: !581, inlinedAt: !756)
!761 = !DILocation(line: 249, column: 14, scope: !581, inlinedAt: !756)
!762 = !DILocation(line: 251, column: 14, scope: !581, inlinedAt: !756)
!763 = !DILocation(line: 255, column: 15, scope: !636, inlinedAt: !756)
!764 = !DILocation(line: 256, column: 15, scope: !636, inlinedAt: !756)
!765 = !DILocation(line: 258, column: 7, scope: !581, inlinedAt: !756)
!766 = !DILocation(line: 259, column: 21, scope: !581, inlinedAt: !756)
!767 = !DILocation(line: 259, column: 16, scope: !581, inlinedAt: !756)
!768 = !DILocation(line: 260, column: 1, scope: !581, inlinedAt: !756)
!769 = !DILocation(line: 224, column: 41, scope: !546, inlinedAt: !770)
!770 = distinct !DILocation(line: 293, column: 5, scope: !506)
!771 = !DILocation(line: 224, column: 54, scope: !546, inlinedAt: !770)
!772 = !DILocation(line: 228, column: 24, scope: !546, inlinedAt: !770)
!773 = !DILocation(line: 228, column: 29, scope: !546, inlinedAt: !770)
!774 = !DILocation(line: 228, column: 14, scope: !546, inlinedAt: !770)
!775 = !DILocation(line: 229, column: 14, scope: !546, inlinedAt: !770)
!776 = !DILocation(line: 231, column: 56, scope: !546, inlinedAt: !770)
!777 = !DILocation(line: 231, column: 50, scope: !546, inlinedAt: !770)
!778 = !DILocation(line: 231, column: 61, scope: !546, inlinedAt: !770)
!779 = !DILocation(line: 231, column: 48, scope: !546, inlinedAt: !770)
!780 = !DILocation(line: 231, column: 41, scope: !546, inlinedAt: !770)
!781 = !DILocation(line: 231, column: 14, scope: !546, inlinedAt: !770)
!782 = !DILocation(line: 236, column: 15, scope: !606, inlinedAt: !770)
!783 = !DILocation(line: 237, column: 15, scope: !606, inlinedAt: !770)
!784 = !DILocation(line: 240, column: 33, scope: !546, inlinedAt: !770)
!785 = !DILocation(line: 240, column: 7, scope: !546, inlinedAt: !770)
!786 = !DILocation(line: 241, column: 21, scope: !546, inlinedAt: !770)
!787 = !DILocation(line: 242, column: 1, scope: !546, inlinedAt: !770)
!788 = !DILocation(line: 244, column: 41, scope: !581, inlinedAt: !789)
!789 = distinct !DILocation(line: 294, column: 5, scope: !506)
!790 = !DILocation(line: 244, column: 54, scope: !581, inlinedAt: !789)
!791 = !DILocation(line: 248, column: 29, scope: !581, inlinedAt: !789)
!792 = !DILocation(line: 248, column: 14, scope: !581, inlinedAt: !789)
!793 = !DILocation(line: 249, column: 29, scope: !581, inlinedAt: !789)
!794 = !DILocation(line: 249, column: 14, scope: !581, inlinedAt: !789)
!795 = !DILocation(line: 251, column: 14, scope: !581, inlinedAt: !789)
!796 = !DILocation(line: 255, column: 15, scope: !636, inlinedAt: !789)
!797 = !DILocation(line: 256, column: 15, scope: !636, inlinedAt: !789)
!798 = !DILocation(line: 258, column: 7, scope: !581, inlinedAt: !789)
!799 = !DILocation(line: 259, column: 21, scope: !581, inlinedAt: !789)
!800 = !DILocation(line: 259, column: 16, scope: !581, inlinedAt: !789)
!801 = !DILocation(line: 260, column: 1, scope: !581, inlinedAt: !789)
!802 = !DILocation(line: 295, column: 1, scope: !506)
