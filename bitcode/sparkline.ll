; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sparkline.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sparkline.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sequence = type { i32, i32, %struct.sample*, double, double }
%struct.sample = type { double, i8* }

@charset_fill = internal unnamed_addr constant [4 x i8] c"_o#\00", align 1, !dbg !0
@charset = internal unnamed_addr constant [4 x i8] c"_-`\00", align 1, !dbg !11
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.sequence* @createSparklineSequence() local_unnamed_addr #0 !dbg !23 {
  %1 = tail call i8* @zmalloc(i64 32) #3, !dbg !44
  %2 = bitcast i8* %1 to %struct.sequence*, !dbg !44
  %3 = bitcast i8* %1 to i32*, !dbg !46
  store i32 0, i32* %3, align 8, !dbg !47, !tbaa !48
  %4 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !55
  %5 = bitcast i8* %4 to %struct.sample**, !dbg !55
  store %struct.sample* null, %struct.sample** %5, align 8, !dbg !56, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  ret %struct.sequence* %2, !dbg !58
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @sparklineSequenceAddSample(%struct.sequence* nocapture, double, i8*) local_unnamed_addr #0 !dbg !59 {
  %4 = icmp eq i8* %2, null, !dbg !69
  br i1 %4, label %10, label %5, !dbg !70

; <label>:5:                                      ; preds = %3
  %6 = load i8, i8* %2, align 1, !dbg !71, !tbaa !72
  %7 = icmp eq i8 %6, 0, !dbg !73
  br i1 %7, label %10, label %8, !dbg !74

; <label>:8:                                      ; preds = %5
  %9 = tail call i8* @zstrdup(i8* nonnull %2) #3, !dbg !75
  br label %10, !dbg !74

; <label>:10:                                     ; preds = %3, %5, %8
  %11 = phi i8* [ %9, %8 ], [ null, %5 ], [ null, %3 ], !dbg !74
  %12 = getelementptr inbounds %struct.sequence, %struct.sequence* %0, i64 0, i32 0, !dbg !76
  %13 = load i32, i32* %12, align 8, !dbg !76, !tbaa !48
  %14 = icmp eq i32 %13, 0, !dbg !78
  br i1 %14, label %15, label %18, !dbg !79

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.sequence, %struct.sequence* %0, i64 0, i32 4, !dbg !80
  store double %1, double* %16, align 8, !dbg !82, !tbaa !83
  %17 = getelementptr inbounds %struct.sequence, %struct.sequence* %0, i64 0, i32 3, !dbg !84
  br label %26, !dbg !85

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.sequence, %struct.sequence* %0, i64 0, i32 3, !dbg !86
  %20 = load double, double* %19, align 8, !dbg !86, !tbaa !89
  %21 = fcmp ogt double %20, %1, !dbg !90
  br i1 %21, label %26, label %22, !dbg !91

; <label>:22:                                     ; preds = %18
  %23 = getelementptr inbounds %struct.sequence, %struct.sequence* %0, i64 0, i32 4, !dbg !92
  %24 = load double, double* %23, align 8, !dbg !92, !tbaa !83
  %25 = fcmp olt double %24, %1, !dbg !94
  br i1 %25, label %26, label %28, !dbg !95

; <label>:26:                                     ; preds = %22, %18, %15
  %27 = phi double* [ %17, %15 ], [ %19, %18 ], [ %23, %22 ]
  store double %1, double* %27, align 8, !dbg !96, !tbaa !97
  br label %28, !dbg !98

; <label>:28:                                     ; preds = %26, %22
  %29 = getelementptr inbounds %struct.sequence, %struct.sequence* %0, i64 0, i32 2, !dbg !98
  %30 = bitcast %struct.sample** %29 to i8**, !dbg !98
  %31 = load i8*, i8** %30, align 8, !dbg !98, !tbaa !57
  %32 = add nsw i32 %13, 1, !dbg !99
  %33 = sext i32 %32 to i64, !dbg !100
  %34 = shl nsw i64 %33, 4, !dbg !101
  %35 = tail call i8* @zrealloc(i8* %31, i64 %34) #3, !dbg !102
  %36 = bitcast i8* %35 to %struct.sample*, !dbg !102
  store i8* %35, i8** %30, align 8, !dbg !103, !tbaa !57
  %37 = load i32, i32* %12, align 8, !dbg !104, !tbaa !48
  %38 = sext i32 %37 to i64, !dbg !105
  %39 = getelementptr inbounds %struct.sample, %struct.sample* %36, i64 %38, i32 0, !dbg !106
  store double %1, double* %39, align 8, !dbg !107, !tbaa !108
  %40 = getelementptr inbounds %struct.sample, %struct.sample* %36, i64 %38, i32 1, !dbg !110
  store i8* %11, i8** %40, align 8, !dbg !111, !tbaa !112
  %41 = add nsw i32 %37, 1, !dbg !113
  store i32 %41, i32* %12, align 8, !dbg !113, !tbaa !48
  %42 = icmp eq i8* %11, null, !dbg !114
  br i1 %42, label %47, label %43, !dbg !116

; <label>:43:                                     ; preds = %28
  %44 = getelementptr inbounds %struct.sequence, %struct.sequence* %0, i64 0, i32 1, !dbg !117
  %45 = load i32, i32* %44, align 4, !dbg !118, !tbaa !119
  %46 = add nsw i32 %45, 1, !dbg !118
  store i32 %46, i32* %44, align 4, !dbg !118, !tbaa !119
  br label %47, !dbg !120

; <label>:47:                                     ; preds = %28, %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !121
  ret void, !dbg !121
}

; Function Attrs: noredzone
declare dso_local i8* @zstrdup(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @freeSparklineSequence(%struct.sequence*) local_unnamed_addr #0 !dbg !122 {
  %2 = getelementptr inbounds %struct.sequence, %struct.sequence* %0, i64 0, i32 0, !dbg !130
  %3 = load i32, i32* %2, align 8, !dbg !130, !tbaa !48
  %4 = icmp sgt i32 %3, 0, !dbg !133
  %5 = getelementptr inbounds %struct.sequence, %struct.sequence* %0, i64 0, i32 2, !dbg !134
  %6 = load %struct.sample*, %struct.sample** %5, align 8, !dbg !134, !tbaa !57
  br i1 %4, label %7, label %17, !dbg !135

; <label>:7:                                      ; preds = %1, %7
  %8 = phi i64 [ %12, %7 ], [ 0, %1 ]
  %9 = phi %struct.sample* [ %16, %7 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.sample, %struct.sample* %9, i64 %8, i32 1, !dbg !136
  %11 = load i8*, i8** %10, align 8, !dbg !136, !tbaa !112
  tail call void @zfree(i8* %11) #3, !dbg !137
  %12 = add nuw nsw i64 %8, 1, !dbg !138
  %13 = load i32, i32* %2, align 8, !dbg !130, !tbaa !48
  %14 = sext i32 %13 to i64, !dbg !133
  %15 = icmp slt i64 %12, %14, !dbg !133
  %16 = load %struct.sample*, %struct.sample** %5, align 8, !dbg !134, !tbaa !57
  br i1 %15, label %7, label %17, !dbg !135, !llvm.loop !139

; <label>:17:                                     ; preds = %7, %1
  %18 = phi %struct.sample* [ %6, %1 ], [ %16, %7 ], !dbg !134
  %19 = bitcast %struct.sample* %18 to i8*, !dbg !141
  tail call void @zfree(i8* %19) #3, !dbg !142
  %20 = bitcast %struct.sequence* %0 to i8*, !dbg !143
  tail call void @zfree(i8* %20) #3, !dbg !144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !145
  ret void, !dbg !145
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @sparklineRenderRange(i8*, %struct.sequence* nocapture readonly, i32, i32, i32, i32) local_unnamed_addr #0 !dbg !146 {
  %7 = getelementptr inbounds %struct.sequence, %struct.sequence* %1, i64 0, i32 4, !dbg !187
  %8 = load double, double* %7, align 8, !dbg !187, !tbaa !83
  %9 = getelementptr inbounds %struct.sequence, %struct.sequence* %1, i64 0, i32 3, !dbg !188
  %10 = load double, double* %9, align 8, !dbg !188, !tbaa !89
  %11 = fsub double %8, %10, !dbg !189
  %12 = mul nsw i32 %2, 3, !dbg !191
  %13 = sext i32 %4 to i64, !dbg !194
  %14 = tail call i8* @zmalloc(i64 %13) #3, !dbg !195
  %15 = and i32 %5, 1, !dbg !198
  %16 = and i32 %5, 2, !dbg !200
  %17 = icmp ne i32 %16, 0, !dbg !202
  br i1 %17, label %18, label %21, !dbg !204

; <label>:18:                                     ; preds = %6
  %19 = fadd double %11, 1.000000e+00, !dbg !205
  %20 = tail call double @log(double %19) #3, !dbg !207
  br label %24, !dbg !208

; <label>:21:                                     ; preds = %6
  %22 = fcmp oeq double %11, 0.000000e+00, !dbg !209
  br i1 %22, label %23, label %24, !dbg !211

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !212

; <label>:24:                                     ; preds = %21, %23, %18
  %25 = phi double [ %20, %18 ], [ 1.000000e+00, %23 ], [ %11, %21 ], !dbg !214
  %26 = icmp sgt i32 %4, 0
  %27 = getelementptr inbounds %struct.sequence, %struct.sequence* %1, i64 0, i32 2
  %28 = sitofp i32 %12 to double
  %29 = add nsw i32 %12, -1
  %30 = getelementptr inbounds %struct.sequence, %struct.sequence* %1, i64 0, i32 1
  %31 = icmp eq i32 %15, 0
  %32 = select i1 %31, [4 x i8]* @charset, [4 x i8]* @charset_fill
  %33 = icmp ne i32 %15, 0
  %34 = xor i32 %2, -1
  %35 = sext i32 %3 to i64, !dbg !215
  %36 = tail call i8* @memset(i8* %14, i32 32, i64 %13) #3, !dbg !216
  br i1 %26, label %37, label %111, !dbg !218

; <label>:37:                                     ; preds = %24, %106
  %38 = phi i32 [ %107, %106 ], [ 0, %24 ]
  %39 = phi i8* [ %109, %106 ], [ %0, %24 ]
  %40 = icmp slt i32 %38, %2
  %41 = xor i32 %38, -1
  %42 = add i32 %41, %2
  %43 = mul i32 %42, -3
  %44 = icmp sgt i32 %38, %2
  %45 = add i32 %38, %34
  %46 = sext i32 %45 to i64
  br label %47, !dbg !218

; <label>:47:                                     ; preds = %37, %100
  %48 = phi i64 [ 0, %37 ], [ %102, %100 ]
  %49 = phi i32 [ 0, %37 ], [ %101, %100 ]
  %50 = load %struct.sample*, %struct.sample** %27, align 8, !dbg !219, !tbaa !57
  %51 = add nsw i64 %48, %35, !dbg !220
  %52 = getelementptr inbounds %struct.sample, %struct.sample* %50, i64 %51, i32 0, !dbg !221
  %53 = load double, double* %52, align 8, !dbg !221, !tbaa !108
  %54 = load double, double* %9, align 8, !dbg !222, !tbaa !89
  %55 = fsub double %53, %54, !dbg !223
  br i1 %17, label %56, label %59, !dbg !225

; <label>:56:                                     ; preds = %47
  %57 = fadd double %55, 1.000000e+00, !dbg !226
  %58 = tail call double @log(double %57) #3, !dbg !228
  br label %59, !dbg !229

; <label>:59:                                     ; preds = %56, %47
  %60 = phi double [ %58, %56 ], [ %55, %47 ], !dbg !230
  %61 = fmul double %60, %28, !dbg !231
  %62 = fptosi double %61 to i32, !dbg !232
  %63 = sitofp i32 %62 to double, !dbg !232
  %64 = fdiv double %63, %25, !dbg !233
  %65 = fptosi double %64 to i32, !dbg !232
  %66 = icmp sgt i32 %65, 0, !dbg !235
  %67 = select i1 %66, i32 %65, i32 0, !dbg !235
  br i1 %40, label %68, label %83, !dbg !236

; <label>:68:                                     ; preds = %59
  %69 = icmp slt i32 %67, %12, !dbg !237
  %70 = select i1 %69, i32 %67, i32 %29, !dbg !239
  %71 = add i32 %70, %43, !dbg !240
  %72 = icmp ult i32 %71, 3, !dbg !242
  br i1 %72, label %73, label %78, !dbg !242

; <label>:73:                                     ; preds = %68
  %74 = sext i32 %71 to i64, !dbg !244
  %75 = getelementptr inbounds [4 x i8], [4 x i8]* %32, i64 0, i64 %74, !dbg !244
  %76 = load i8, i8* %75, align 1, !dbg !244, !tbaa !72
  %77 = getelementptr inbounds i8, i8* %14, i64 %48, !dbg !246
  store i8 %76, i8* %77, align 1, !dbg !247, !tbaa !72
  br label %100, !dbg !248

; <label>:78:                                     ; preds = %68
  %79 = icmp sgt i32 %71, 2, !dbg !249
  %80 = and i1 %33, %79, !dbg !251
  br i1 %80, label %81, label %100, !dbg !251

; <label>:81:                                     ; preds = %78
  %82 = getelementptr inbounds i8, i8* %14, i64 %48, !dbg !252
  store i8 124, i8* %82, align 1, !dbg !254, !tbaa !72
  br label %100, !dbg !255

; <label>:83:                                     ; preds = %59
  %84 = load i32, i32* %30, align 4, !dbg !256, !tbaa !119
  %85 = icmp eq i32 %84, 0, !dbg !258
  %86 = or i1 %44, %85, !dbg !259
  br i1 %86, label %87, label %106, !dbg !259

; <label>:87:                                     ; preds = %83
  %88 = getelementptr inbounds %struct.sample, %struct.sample* %50, i64 %51, i32 1, !dbg !260
  %89 = load i8*, i8** %88, align 8, !dbg !260, !tbaa !112
  %90 = icmp eq i8* %89, null, !dbg !261
  br i1 %90, label %100, label %91, !dbg !262

; <label>:91:                                     ; preds = %87
  %92 = tail call i64 @strlen(i8* nonnull %89) #3, !dbg !263
  %93 = trunc i64 %92 to i32, !dbg !263
  %94 = icmp slt i32 %45, %93, !dbg !266
  br i1 %94, label %95, label %100, !dbg !268

; <label>:95:                                     ; preds = %91
  %96 = load i8*, i8** %88, align 8, !dbg !269, !tbaa !112
  %97 = getelementptr inbounds i8, i8* %96, i64 %46, !dbg !271
  %98 = load i8, i8* %97, align 1, !dbg !271, !tbaa !72
  %99 = getelementptr inbounds i8, i8* %14, i64 %48, !dbg !272
  store i8 %98, i8* %99, align 1, !dbg !273, !tbaa !72
  br label %100, !dbg !274

; <label>:100:                                    ; preds = %91, %95, %73, %81, %78, %87
  %101 = phi i32 [ %49, %91 ], [ 1, %95 ], [ 1, %73 ], [ 1, %81 ], [ 1, %78 ], [ %49, %87 ]
  %102 = add nuw nsw i64 %48, 1, !dbg !275
  %103 = icmp slt i64 %102, %13, !dbg !276
  br i1 %103, label %47, label %104, !dbg !218, !llvm.loop !277

; <label>:104:                                    ; preds = %100
  %105 = icmp eq i32 %101, 0, !dbg !279
  br i1 %105, label %111, label %106, !dbg !281

; <label>:106:                                    ; preds = %83, %104
  %107 = add nuw nsw i32 %38, 1, !dbg !282
  %108 = tail call i8* @sdscatlen(i8* %39, i8* %14, i64 %13) #3, !dbg !284
  %109 = tail call i8* @sdscatlen(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1) #3, !dbg !285
  %110 = tail call i8* @memset(i8* %14, i32 32, i64 %13) #3, !dbg !216
  br i1 %26, label %37, label %111, !dbg !218

; <label>:111:                                    ; preds = %104, %106, %24
  %112 = phi i8* [ %0, %24 ], [ %39, %104 ], [ %109, %106 ]
  tail call void @zfree(i8* %14) #3, !dbg !286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  ret i8* %112, !dbg !287
}

; Function Attrs: noredzone
declare dso_local double @log(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @sparklineRender(i8*, %struct.sequence* nocapture readonly, i32, i32, i32) local_unnamed_addr #0 !dbg !288 {
  %6 = getelementptr inbounds %struct.sequence, %struct.sequence* %1, i64 0, i32 0, !dbg !308
  %7 = load i32, i32* %6, align 8, !dbg !308, !tbaa !48
  %8 = icmp sgt i32 %7, 0, !dbg !309
  br i1 %8, label %9, label %25, !dbg !310

; <label>:9:                                      ; preds = %5, %19
  %10 = phi i32 [ %23, %19 ], [ %7, %5 ]
  %11 = phi i8* [ %21, %19 ], [ %0, %5 ]
  %12 = phi i32 [ %22, %19 ], [ 0, %5 ]
  %13 = sub nsw i32 %10, %12, !dbg !311
  %14 = icmp slt i32 %13, %2, !dbg !312
  %15 = select i1 %14, i32 %13, i32 %2, !dbg !313
  %16 = icmp eq i32 %12, 0, !dbg !315
  br i1 %16, label %19, label %17, !dbg !317

; <label>:17:                                     ; preds = %9
  %18 = tail call i8* @sdscatlen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1) #3, !dbg !318
  br label %19, !dbg !319

; <label>:19:                                     ; preds = %9, %17
  %20 = phi i8* [ %18, %17 ], [ %11, %9 ]
  %21 = tail call i8* @sparklineRenderRange(i8* %20, %struct.sequence* nonnull %1, i32 %3, i32 %12, i32 %15, i32 %4) #4, !dbg !320
  %22 = add nsw i32 %12, %2, !dbg !321
  %23 = load i32, i32* %6, align 8, !dbg !308, !tbaa !48
  %24 = icmp sgt i32 %23, %22, !dbg !309
  br i1 %24, label %9, label %25, !dbg !310, !llvm.loop !322

; <label>:25:                                     ; preds = %19, %5
  %26 = phi i8* [ %0, %5 ], [ %21, %19 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  ret i8* %26, !dbg !324
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nobuiltin noredzone }

!llvm.module.flags = !{!19, !20, !21}
!llvm.ident = !{!22}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "charset_fill", scope: !2, file: !3, line: 40, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sparkline.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !0, !11, !17}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "charset_len", scope: !2, file: !3, line: 41, type: !7, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "charset", scope: !2, file: !3, line: 39, type: !13, isLocal: true, isDefinition: true)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 32, elements: !15)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{!16}
!16 = !DISubrange(count: 4)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "label_margin_top", scope: !2, file: !3, line: 42, type: !7, isLocal: true, isDefinition: true)
!19 = !{i32 2, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!23 = distinct !DISubprogram(name: "createSparklineSequence", scope: !3, file: !3, line: 57, type: !24, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !42)
!24 = !DISubroutineType(types: !25)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sequence", file: !28, line: 39, size: 256, elements: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sparkline.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !{!30, !31, !32, !40, !41}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !27, file: !28, line: 40, baseType: !7, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "labels", scope: !27, file: !28, line: 41, baseType: !7, size: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "samples", scope: !27, file: !28, line: 42, baseType: !33, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sample", file: !28, line: 34, size: 128, elements: !35)
!35 = !{!36, !38}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !34, file: !28, line: 35, baseType: !37, size: 64)
!37 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !34, file: !28, line: 36, baseType: !39, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !27, file: !28, line: 43, baseType: !37, size: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !27, file: !28, line: 43, baseType: !37, size: 64, offset: 192)
!42 = !{!43}
!43 = !DILocalVariable(name: "seq", scope: !23, file: !3, line: 58, type: !26)
!44 = !DILocation(line: 58, column: 28, scope: !23)
!45 = !DILocation(line: 58, column: 22, scope: !23)
!46 = !DILocation(line: 59, column: 10, scope: !23)
!47 = !DILocation(line: 59, column: 17, scope: !23)
!48 = !{!49, !50, i64 0}
!49 = !{!"sequence", !50, i64 0, !50, i64 4, !53, i64 8, !54, i64 16, !54, i64 24}
!50 = !{!"int", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !{!"any pointer", !51, i64 0}
!54 = !{!"double", !51, i64 0}
!55 = !DILocation(line: 60, column: 10, scope: !23)
!56 = !DILocation(line: 60, column: 18, scope: !23)
!57 = !{!49, !53, i64 8}
!58 = !DILocation(line: 61, column: 5, scope: !23)
!59 = distinct !DISubprogram(name: "sparklineSequenceAddSample", scope: !3, file: !3, line: 65, type: !60, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !62)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !26, !37, !39}
!62 = !{!63, !64, !65}
!63 = !DILocalVariable(name: "seq", arg: 1, scope: !59, file: !3, line: 65, type: !26)
!64 = !DILocalVariable(name: "value", arg: 2, scope: !59, file: !3, line: 65, type: !37)
!65 = !DILocalVariable(name: "label", arg: 3, scope: !59, file: !3, line: 65, type: !39)
!66 = !DILocation(line: 65, column: 50, scope: !59)
!67 = !DILocation(line: 65, column: 62, scope: !59)
!68 = !DILocation(line: 65, column: 75, scope: !59)
!69 = !DILocation(line: 66, column: 20, scope: !59)
!70 = !DILocation(line: 66, column: 28, scope: !59)
!71 = !DILocation(line: 66, column: 31, scope: !59)
!72 = !{!51, !51, i64 0}
!73 = !DILocation(line: 66, column: 40, scope: !59)
!74 = !DILocation(line: 66, column: 13, scope: !59)
!75 = !DILocation(line: 66, column: 58, scope: !59)
!76 = !DILocation(line: 67, column: 14, scope: !77)
!77 = distinct !DILexicalBlock(scope: !59, file: !3, line: 67, column: 9)
!78 = !DILocation(line: 67, column: 21, scope: !77)
!79 = !DILocation(line: 67, column: 9, scope: !59)
!80 = !DILocation(line: 68, column: 25, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !3, line: 67, column: 27)
!82 = !DILocation(line: 68, column: 29, scope: !81)
!83 = !{!49, !54, i64 24}
!84 = !DILocation(line: 68, column: 14, scope: !81)
!85 = !DILocation(line: 69, column: 5, scope: !81)
!86 = !DILocation(line: 70, column: 26, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 70, column: 13)
!88 = distinct !DILexicalBlock(scope: !77, file: !3, line: 69, column: 12)
!89 = !{!49, !54, i64 16}
!90 = !DILocation(line: 70, column: 19, scope: !87)
!91 = !DILocation(line: 70, column: 13, scope: !88)
!92 = !DILocation(line: 71, column: 31, scope: !93)
!93 = distinct !DILexicalBlock(scope: !87, file: !3, line: 71, column: 18)
!94 = !DILocation(line: 71, column: 24, scope: !93)
!95 = !DILocation(line: 71, column: 18, scope: !87)
!96 = !DILocation(line: 0, scope: !81)
!97 = !{!54, !54, i64 0}
!98 = !DILocation(line: 73, column: 34, scope: !59)
!99 = !DILocation(line: 73, column: 76, scope: !59)
!100 = !DILocation(line: 73, column: 64, scope: !59)
!101 = !DILocation(line: 73, column: 63, scope: !59)
!102 = !DILocation(line: 73, column: 20, scope: !59)
!103 = !DILocation(line: 73, column: 18, scope: !59)
!104 = !DILocation(line: 74, column: 23, scope: !59)
!105 = !DILocation(line: 74, column: 5, scope: !59)
!106 = !DILocation(line: 74, column: 31, scope: !59)
!107 = !DILocation(line: 74, column: 37, scope: !59)
!108 = !{!109, !54, i64 0}
!109 = !{!"sample", !54, i64 0, !53, i64 8}
!110 = !DILocation(line: 75, column: 31, scope: !59)
!111 = !DILocation(line: 75, column: 37, scope: !59)
!112 = !{!109, !53, i64 8}
!113 = !DILocation(line: 76, column: 16, scope: !59)
!114 = !DILocation(line: 77, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !59, file: !3, line: 77, column: 9)
!116 = !DILocation(line: 77, column: 9, scope: !59)
!117 = !DILocation(line: 77, column: 21, scope: !115)
!118 = !DILocation(line: 77, column: 27, scope: !115)
!119 = !{!49, !50, i64 4}
!120 = !DILocation(line: 77, column: 16, scope: !115)
!121 = !DILocation(line: 78, column: 1, scope: !59)
!122 = distinct !DISubprogram(name: "freeSparklineSequence", scope: !3, file: !3, line: 81, type: !123, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !125)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !26}
!125 = !{!126, !127}
!126 = !DILocalVariable(name: "seq", arg: 1, scope: !122, file: !3, line: 81, type: !26)
!127 = !DILocalVariable(name: "j", scope: !122, file: !3, line: 82, type: !7)
!128 = !DILocation(line: 81, column: 45, scope: !122)
!129 = !DILocation(line: 82, column: 9, scope: !122)
!130 = !DILocation(line: 84, column: 26, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !3, line: 84, column: 5)
!132 = distinct !DILexicalBlock(scope: !122, file: !3, line: 84, column: 5)
!133 = !DILocation(line: 84, column: 19, scope: !131)
!134 = !DILocation(line: 0, scope: !122)
!135 = !DILocation(line: 84, column: 5, scope: !132)
!136 = !DILocation(line: 85, column: 31, scope: !131)
!137 = !DILocation(line: 85, column: 9, scope: !131)
!138 = !DILocation(line: 84, column: 35, scope: !131)
!139 = distinct !{!139, !135, !140}
!140 = !DILocation(line: 85, column: 36, scope: !132)
!141 = !DILocation(line: 86, column: 11, scope: !122)
!142 = !DILocation(line: 86, column: 5, scope: !122)
!143 = !DILocation(line: 87, column: 11, scope: !122)
!144 = !DILocation(line: 87, column: 5, scope: !122)
!145 = !DILocation(line: 88, column: 1, scope: !122)
!146 = distinct !DISubprogram(name: "sparklineRenderRange", scope: !3, file: !3, line: 97, type: !147, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !151)
!147 = !DISubroutineType(types: !148)
!148 = !{!149, !149, !26, !7, !7, !7, !7}
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !150, line: 43, baseType: !39)
!150 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !171, !172, !173, !176, !180}
!152 = !DILocalVariable(name: "output", arg: 1, scope: !146, file: !3, line: 97, type: !149)
!153 = !DILocalVariable(name: "seq", arg: 2, scope: !146, file: !3, line: 97, type: !26)
!154 = !DILocalVariable(name: "rows", arg: 3, scope: !146, file: !3, line: 97, type: !7)
!155 = !DILocalVariable(name: "offset", arg: 4, scope: !146, file: !3, line: 97, type: !7)
!156 = !DILocalVariable(name: "len", arg: 5, scope: !146, file: !3, line: 97, type: !7)
!157 = !DILocalVariable(name: "flags", arg: 6, scope: !146, file: !3, line: 97, type: !7)
!158 = !DILocalVariable(name: "j", scope: !146, file: !3, line: 98, type: !7)
!159 = !DILocalVariable(name: "relmax", scope: !146, file: !3, line: 99, type: !37)
!160 = !DILocalVariable(name: "steps", scope: !146, file: !3, line: 100, type: !7)
!161 = !DILocalVariable(name: "row", scope: !146, file: !3, line: 101, type: !7)
!162 = !DILocalVariable(name: "chars", scope: !146, file: !3, line: 102, type: !39)
!163 = !DILocalVariable(name: "loop", scope: !146, file: !3, line: 103, type: !7)
!164 = !DILocalVariable(name: "opt_fill", scope: !146, file: !3, line: 104, type: !7)
!165 = !DILocalVariable(name: "opt_log", scope: !146, file: !3, line: 105, type: !7)
!166 = !DILocalVariable(name: "s", scope: !167, file: !3, line: 117, type: !33)
!167 = distinct !DILexicalBlock(scope: !168, file: !3, line: 116, column: 35)
!168 = distinct !DILexicalBlock(scope: !169, file: !3, line: 116, column: 9)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 116, column: 9)
!170 = distinct !DILexicalBlock(scope: !146, file: !3, line: 113, column: 17)
!171 = !DILocalVariable(name: "relval", scope: !167, file: !3, line: 118, type: !37)
!172 = !DILocalVariable(name: "step", scope: !167, file: !3, line: 119, type: !7)
!173 = !DILocalVariable(name: "charidx", scope: !174, file: !3, line: 128, type: !7)
!174 = distinct !DILexicalBlock(scope: !175, file: !3, line: 126, column: 29)
!175 = distinct !DILexicalBlock(scope: !167, file: !3, line: 126, column: 17)
!176 = !DILocalVariable(name: "label_len", scope: !177, file: !3, line: 144, type: !7)
!177 = distinct !DILexicalBlock(scope: !178, file: !3, line: 143, column: 31)
!178 = distinct !DILexicalBlock(scope: !179, file: !3, line: 143, column: 21)
!179 = distinct !DILexicalBlock(scope: !175, file: !3, line: 136, column: 20)
!180 = !DILocalVariable(name: "label_char", scope: !177, file: !3, line: 145, type: !7)
!181 = !DILocation(line: 97, column: 30, scope: !146)
!182 = !DILocation(line: 97, column: 55, scope: !146)
!183 = !DILocation(line: 97, column: 64, scope: !146)
!184 = !DILocation(line: 97, column: 74, scope: !146)
!185 = !DILocation(line: 97, column: 86, scope: !146)
!186 = !DILocation(line: 97, column: 95, scope: !146)
!187 = !DILocation(line: 99, column: 26, scope: !146)
!188 = !DILocation(line: 99, column: 37, scope: !146)
!189 = !DILocation(line: 99, column: 30, scope: !146)
!190 = !DILocation(line: 99, column: 12, scope: !146)
!191 = !DILocation(line: 100, column: 28, scope: !146)
!192 = !DILocation(line: 100, column: 9, scope: !146)
!193 = !DILocation(line: 101, column: 9, scope: !146)
!194 = !DILocation(line: 102, column: 27, scope: !146)
!195 = !DILocation(line: 102, column: 19, scope: !146)
!196 = !DILocation(line: 102, column: 11, scope: !146)
!197 = !DILocation(line: 103, column: 9, scope: !146)
!198 = !DILocation(line: 104, column: 26, scope: !146)
!199 = !DILocation(line: 104, column: 9, scope: !146)
!200 = !DILocation(line: 105, column: 25, scope: !146)
!201 = !DILocation(line: 105, column: 9, scope: !146)
!202 = !DILocation(line: 107, column: 9, scope: !203)
!203 = distinct !DILexicalBlock(scope: !146, file: !3, line: 107, column: 9)
!204 = !DILocation(line: 107, column: 9, scope: !146)
!205 = !DILocation(line: 108, column: 28, scope: !206)
!206 = distinct !DILexicalBlock(scope: !203, file: !3, line: 107, column: 18)
!207 = !DILocation(line: 108, column: 18, scope: !206)
!208 = !DILocation(line: 109, column: 5, scope: !206)
!209 = !DILocation(line: 109, column: 23, scope: !210)
!210 = distinct !DILexicalBlock(scope: !203, file: !3, line: 109, column: 16)
!211 = !DILocation(line: 109, column: 16, scope: !203)
!212 = !DILocation(line: 111, column: 5, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !3, line: 109, column: 29)
!214 = !DILocation(line: 0, scope: !146)
!215 = !DILocation(line: 113, column: 5, scope: !146)
!216 = !DILocation(line: 115, column: 9, scope: !170)
!217 = !DILocation(line: 98, column: 9, scope: !146)
!218 = !DILocation(line: 116, column: 9, scope: !169)
!219 = !DILocation(line: 117, column: 38, scope: !167)
!220 = !DILocation(line: 117, column: 47, scope: !167)
!221 = !DILocation(line: 118, column: 32, scope: !167)
!222 = !DILocation(line: 118, column: 45, scope: !167)
!223 = !DILocation(line: 118, column: 38, scope: !167)
!224 = !DILocation(line: 118, column: 20, scope: !167)
!225 = !DILocation(line: 121, column: 17, scope: !167)
!226 = !DILocation(line: 121, column: 45, scope: !227)
!227 = distinct !DILexicalBlock(scope: !167, file: !3, line: 121, column: 17)
!228 = !DILocation(line: 121, column: 35, scope: !227)
!229 = !DILocation(line: 121, column: 26, scope: !227)
!230 = !DILocation(line: 0, scope: !167)
!231 = !DILocation(line: 122, column: 33, scope: !167)
!232 = !DILocation(line: 122, column: 20, scope: !167)
!233 = !DILocation(line: 122, column: 40, scope: !167)
!234 = !DILocation(line: 119, column: 17, scope: !167)
!235 = !DILocation(line: 123, column: 17, scope: !167)
!236 = !DILocation(line: 126, column: 17, scope: !167)
!237 = !DILocation(line: 124, column: 22, scope: !238)
!238 = distinct !DILexicalBlock(scope: !167, file: !3, line: 124, column: 17)
!239 = !DILocation(line: 124, column: 17, scope: !167)
!240 = !DILocation(line: 128, column: 35, scope: !174)
!241 = !DILocation(line: 128, column: 21, scope: !174)
!242 = !DILocation(line: 130, column: 34, scope: !243)
!243 = distinct !DILexicalBlock(scope: !174, file: !3, line: 130, column: 21)
!244 = !DILocation(line: 0, scope: !245)
!245 = distinct !DILexicalBlock(scope: !243, file: !3, line: 130, column: 60)
!246 = !DILocation(line: 131, column: 21, scope: !245)
!247 = !DILocation(line: 131, column: 30, scope: !245)
!248 = !DILocation(line: 133, column: 17, scope: !245)
!249 = !DILocation(line: 133, column: 47, scope: !250)
!250 = distinct !DILexicalBlock(scope: !243, file: !3, line: 133, column: 27)
!251 = !DILocation(line: 133, column: 36, scope: !250)
!252 = !DILocation(line: 134, column: 21, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !3, line: 133, column: 63)
!254 = !DILocation(line: 134, column: 30, scope: !253)
!255 = !DILocation(line: 135, column: 17, scope: !253)
!256 = !DILocation(line: 138, column: 26, scope: !257)
!257 = distinct !DILexicalBlock(scope: !179, file: !3, line: 138, column: 21)
!258 = !DILocation(line: 138, column: 21, scope: !257)
!259 = !DILocation(line: 138, column: 33, scope: !257)
!260 = !DILocation(line: 143, column: 24, scope: !178)
!261 = !DILocation(line: 143, column: 21, scope: !178)
!262 = !DILocation(line: 143, column: 21, scope: !179)
!263 = !DILocation(line: 144, column: 37, scope: !177)
!264 = !DILocation(line: 144, column: 25, scope: !177)
!265 = !DILocation(line: 145, column: 25, scope: !177)
!266 = !DILocation(line: 147, column: 35, scope: !267)
!267 = distinct !DILexicalBlock(scope: !177, file: !3, line: 147, column: 25)
!268 = !DILocation(line: 147, column: 25, scope: !177)
!269 = !DILocation(line: 149, column: 39, scope: !270)
!270 = distinct !DILexicalBlock(scope: !267, file: !3, line: 147, column: 49)
!271 = !DILocation(line: 149, column: 36, scope: !270)
!272 = !DILocation(line: 149, column: 25, scope: !270)
!273 = !DILocation(line: 149, column: 34, scope: !270)
!274 = !DILocation(line: 150, column: 21, scope: !270)
!275 = !DILocation(line: 116, column: 31, scope: !168)
!276 = !DILocation(line: 116, column: 23, scope: !168)
!277 = distinct !{!277, !218, !278}
!278 = !DILocation(line: 153, column: 9, scope: !169)
!279 = !DILocation(line: 154, column: 13, scope: !280)
!280 = distinct !DILexicalBlock(scope: !170, file: !3, line: 154, column: 13)
!281 = !DILocation(line: 154, column: 13, scope: !170)
!282 = !DILocation(line: 155, column: 16, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !3, line: 154, column: 19)
!284 = !DILocation(line: 156, column: 22, scope: !283)
!285 = !DILocation(line: 157, column: 22, scope: !283)
!286 = !DILocation(line: 160, column: 5, scope: !146)
!287 = !DILocation(line: 161, column: 5, scope: !146)
!288 = distinct !DISubprogram(name: "sparklineRender", scope: !3, file: !3, line: 165, type: !289, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !291)
!289 = !DISubroutineType(types: !290)
!290 = !{!149, !149, !26, !7, !7, !7}
!291 = !{!292, !293, !294, !295, !296, !297, !298}
!292 = !DILocalVariable(name: "output", arg: 1, scope: !288, file: !3, line: 165, type: !149)
!293 = !DILocalVariable(name: "seq", arg: 2, scope: !288, file: !3, line: 165, type: !26)
!294 = !DILocalVariable(name: "columns", arg: 3, scope: !288, file: !3, line: 165, type: !7)
!295 = !DILocalVariable(name: "rows", arg: 4, scope: !288, file: !3, line: 165, type: !7)
!296 = !DILocalVariable(name: "flags", arg: 5, scope: !288, file: !3, line: 165, type: !7)
!297 = !DILocalVariable(name: "j", scope: !288, file: !3, line: 166, type: !7)
!298 = !DILocalVariable(name: "sublen", scope: !299, file: !3, line: 169, type: !7)
!299 = distinct !DILexicalBlock(scope: !300, file: !3, line: 168, column: 48)
!300 = distinct !DILexicalBlock(scope: !301, file: !3, line: 168, column: 5)
!301 = distinct !DILexicalBlock(scope: !288, file: !3, line: 168, column: 5)
!302 = !DILocation(line: 165, column: 25, scope: !288)
!303 = !DILocation(line: 165, column: 50, scope: !288)
!304 = !DILocation(line: 165, column: 59, scope: !288)
!305 = !DILocation(line: 165, column: 72, scope: !288)
!306 = !DILocation(line: 165, column: 82, scope: !288)
!307 = !DILocation(line: 166, column: 9, scope: !288)
!308 = !DILocation(line: 168, column: 26, scope: !300)
!309 = !DILocation(line: 168, column: 19, scope: !300)
!310 = !DILocation(line: 168, column: 5, scope: !301)
!311 = !DILocation(line: 169, column: 34, scope: !299)
!312 = !DILocation(line: 169, column: 38, scope: !299)
!313 = !DILocation(line: 169, column: 22, scope: !299)
!314 = !DILocation(line: 169, column: 13, scope: !299)
!315 = !DILocation(line: 171, column: 15, scope: !316)
!316 = distinct !DILexicalBlock(scope: !299, file: !3, line: 171, column: 13)
!317 = !DILocation(line: 171, column: 13, scope: !299)
!318 = !DILocation(line: 171, column: 30, scope: !316)
!319 = !DILocation(line: 171, column: 21, scope: !316)
!320 = !DILocation(line: 172, column: 18, scope: !299)
!321 = !DILocation(line: 168, column: 36, scope: !300)
!322 = distinct !{!322, !310, !323}
!323 = !DILocation(line: 173, column: 5, scope: !301)
!324 = !DILocation(line: 174, column: 5, scope: !288)
