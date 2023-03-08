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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  br i1 %4, label %10, label %5, !dbg !70

; <label>:5:                                      ; preds = %3
  %6 = load i8, i8* %2, align 1, !dbg !71, !tbaa !72
  %7 = icmp eq i8 %6, 0, !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  br i1 %7, label %10, label %8, !dbg !74

; <label>:8:                                      ; preds = %5
  %9 = tail call i8* @zstrdup(i8* nonnull %2) #3, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  br label %10, !dbg !74

; <label>:10:                                     ; preds = %3, %5, %8
  %11 = phi i8* [ %9, %8 ], [ null, %5 ], [ null, %3 ], !dbg !74
  %12 = getelementptr inbounds %struct.sequence, %struct.sequence* %0, i64 0, i32 0, !dbg !76
  %13 = load i32, i32* %12, align 8, !dbg !76, !tbaa !48
  %14 = icmp eq i32 %13, 0, !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  br i1 %21, label %26, label %22, !dbg !91

; <label>:22:                                     ; preds = %18
  %23 = getelementptr inbounds %struct.sequence, %struct.sequence* %0, i64 0, i32 4, !dbg !92
  %24 = load double, double* %23, align 8, !dbg !92, !tbaa !83
  %25 = fcmp olt double %24, %1, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  br i1 %25, label %26, label %28, !dbg !95

; <label>:26:                                     ; preds = %22, %18, %15
  %27 = phi double* [ %17, %15 ], [ %19, %18 ], [ %23, %22 ]
  store double %1, double* %27, align 8, !dbg !96, !tbaa !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  br i1 %42, label %47, label %43, !dbg !116

; <label>:43:                                     ; preds = %28
  %44 = getelementptr inbounds %struct.sequence, %struct.sequence* %0, i64 0, i32 1, !dbg !117
  %45 = load i32, i32* %44, align 4, !dbg !118, !tbaa !119
  %46 = add nsw i32 %45, 1, !dbg !118
  store i32 %46, i32* %44, align 4, !dbg !118, !tbaa !119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
  %2 = getelementptr inbounds %struct.sequence, %struct.sequence* %0, i64 0, i32 0, !dbg !132
  %3 = load i32, i32* %2, align 8, !dbg !132, !tbaa !48
  %4 = icmp sgt i32 %3, 0, !dbg !134
  %5 = getelementptr inbounds %struct.sequence, %struct.sequence* %0, i64 0, i32 2, !dbg !135
  %6 = load %struct.sample*, %struct.sample** %5, align 8, !dbg !135, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  br i1 %4, label %7, label %17, !dbg !136

; <label>:7:                                      ; preds = %1, %7
  %8 = phi i64 [ %12, %7 ], [ 0, %1 ]
  %9 = phi %struct.sample* [ %16, %7 ], [ %6, %1 ]
  %10 = getelementptr inbounds %struct.sample, %struct.sample* %9, i64 %8, i32 1, !dbg !137
  %11 = load i8*, i8** %10, align 8, !dbg !137, !tbaa !112
  tail call void @zfree(i8* %11) #3, !dbg !138
  %12 = add nuw nsw i64 %8, 1, !dbg !139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !140
  %13 = load i32, i32* %2, align 8, !dbg !132, !tbaa !48
  %14 = sext i32 %13 to i64, !dbg !134
  %15 = icmp slt i64 %12, %14, !dbg !134
  %16 = load %struct.sample*, %struct.sample** %5, align 8, !dbg !135, !tbaa !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  br i1 %15, label %7, label %17, !dbg !136, !llvm.loop !141

; <label>:17:                                     ; preds = %7, %1
  %18 = phi %struct.sample* [ %6, %1 ], [ %16, %7 ], !dbg !135
  %19 = bitcast %struct.sample* %18 to i8*, !dbg !143
  tail call void @zfree(i8* %19) #3, !dbg !144
  %20 = bitcast %struct.sequence* %0 to i8*, !dbg !145
  tail call void @zfree(i8* %20) #3, !dbg !146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !147
  ret void, !dbg !147
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @sparklineRenderRange(i8*, %struct.sequence* nocapture readonly, i32, i32, i32, i32) local_unnamed_addr #0 !dbg !148 {
  %7 = getelementptr inbounds %struct.sequence, %struct.sequence* %1, i64 0, i32 4, !dbg !189
  %8 = load double, double* %7, align 8, !dbg !189, !tbaa !83
  %9 = getelementptr inbounds %struct.sequence, %struct.sequence* %1, i64 0, i32 3, !dbg !190
  %10 = load double, double* %9, align 8, !dbg !190, !tbaa !89
  %11 = fsub double %8, %10, !dbg !191
  %12 = mul nsw i32 %2, 3, !dbg !193
  %13 = sext i32 %4 to i64, !dbg !196
  %14 = tail call i8* @zmalloc(i64 %13) #3, !dbg !197
  %15 = and i32 %5, 1, !dbg !200
  %16 = and i32 %5, 2, !dbg !202
  %17 = icmp ne i32 %16, 0, !dbg !204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !206
  br i1 %17, label %18, label %21, !dbg !206

; <label>:18:                                     ; preds = %6
  %19 = fadd double %11, 1.000000e+00, !dbg !207
  %20 = tail call double @log(double %19) #3, !dbg !209
  br label %23, !dbg !210

; <label>:21:                                     ; preds = %6
  %22 = fcmp oeq double %11, 0.000000e+00, !dbg !211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !213
  br i1 %22, label %23, label %25, !dbg !213

; <label>:23:                                     ; preds = %21, %18
  %24 = phi double [ %20, %18 ], [ 1.000000e+00, %21 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  br label %25, !dbg !215

; <label>:25:                                     ; preds = %23, %21
  %26 = phi double [ %11, %21 ], [ %24, %23 ], !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  %27 = icmp sgt i32 %4, 0
  %28 = getelementptr inbounds %struct.sequence, %struct.sequence* %1, i64 0, i32 2
  %29 = sitofp i32 %12 to double
  %30 = add nsw i32 %12, -1
  %31 = getelementptr inbounds %struct.sequence, %struct.sequence* %1, i64 0, i32 1
  %32 = icmp eq i32 %15, 0
  %33 = xor i32 %2, -1
  %34 = sext i32 %3 to i64, !dbg !215
  %35 = tail call i8* @memset(i8* %14, i32 32, i64 %13) #3, !dbg !217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  br i1 %27, label %36, label %38, !dbg !220

; <label>:36:                                     ; preds = %25
  %37 = select i1 %32, [4 x i8]* @charset, [4 x i8]* @charset_fill
  br label %40

; <label>:38:                                     ; preds = %116, %25
  %39 = phi i8* [ %0, %25 ], [ %119, %116 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  br label %121, !dbg !221

; <label>:40:                                     ; preds = %36, %116
  %41 = phi i32 [ %117, %116 ], [ 0, %36 ]
  %42 = phi i8* [ %119, %116 ], [ %0, %36 ]
  %43 = icmp slt i32 %41, %2
  %44 = xor i32 %41, -1
  %45 = add i32 %44, %2
  %46 = mul i32 %45, -3
  %47 = icmp sgt i32 %41, %2
  %48 = add i32 %41, %33
  %49 = sext i32 %48 to i64
  br label %50, !dbg !220

; <label>:50:                                     ; preds = %40, %110
  %51 = phi i64 [ 0, %40 ], [ %112, %110 ]
  %52 = phi i32 [ 0, %40 ], [ %111, %110 ]
  %53 = load %struct.sample*, %struct.sample** %28, align 8, !dbg !222, !tbaa !57
  %54 = add nsw i64 %51, %34, !dbg !223
  %55 = getelementptr inbounds %struct.sample, %struct.sample* %53, i64 %54, i32 0, !dbg !224
  %56 = load double, double* %55, align 8, !dbg !224, !tbaa !108
  %57 = load double, double* %9, align 8, !dbg !225, !tbaa !89
  %58 = fsub double %56, %57, !dbg !226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !228
  br i1 %17, label %59, label %62, !dbg !228

; <label>:59:                                     ; preds = %50
  %60 = fadd double %58, 1.000000e+00, !dbg !229
  %61 = tail call double @log(double %60) #3, !dbg !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  br label %62, !dbg !232

; <label>:62:                                     ; preds = %59, %50
  %63 = phi double [ %61, %59 ], [ %58, %50 ], !dbg !233
  %64 = fmul double %63, %29, !dbg !234
  %65 = fptosi double %64 to i32, !dbg !235
  %66 = sitofp i32 %65 to double, !dbg !235
  %67 = fdiv double %66, %26, !dbg !236
  %68 = fptosi double %67 to i32, !dbg !235
  %69 = icmp sgt i32 %68, 0, !dbg !238
  %70 = select i1 %69, i32 %68, i32 0, !dbg !238
  %71 = icmp slt i32 %70, %12, !dbg !239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !241
  br i1 %71, label %73, label %72, !dbg !241

; <label>:72:                                     ; preds = %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !242
  br label %73, !dbg !242

; <label>:73:                                     ; preds = %62, %72
  %74 = phi i32 [ %30, %72 ], [ %70, %62 ], !dbg !243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  br i1 %43, label %75, label %90, !dbg !245

; <label>:75:                                     ; preds = %73
  %76 = add i32 %74, %46, !dbg !246
  %77 = icmp sgt i32 %76, -1, !dbg !248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  br i1 %77, label %78, label %85, !dbg !250

; <label>:78:                                     ; preds = %75
  %79 = icmp slt i32 %76, 3, !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !252
  br i1 %79, label %80, label %85, !dbg !252

; <label>:80:                                     ; preds = %78
  %81 = sext i32 %76 to i64, !dbg !253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  %82 = getelementptr inbounds [4 x i8], [4 x i8]* %37, i64 0, i64 %81, !dbg !253
  %83 = load i8, i8* %82, align 1, !dbg !253, !tbaa !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  %84 = getelementptr inbounds i8, i8* %14, i64 %51, !dbg !256
  store i8 %83, i8* %84, align 1, !dbg !257, !tbaa !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !258
  br label %108, !dbg !258

; <label>:85:                                     ; preds = %78, %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  br i1 %32, label %108, label %86, !dbg !259

; <label>:86:                                     ; preds = %85
  %87 = icmp sgt i32 %76, 2, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br i1 %87, label %88, label %108, !dbg !262

; <label>:88:                                     ; preds = %86
  %89 = getelementptr inbounds i8, i8* %14, i64 %51, !dbg !263
  store i8 124, i8* %89, align 1, !dbg !265, !tbaa !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  br label %108, !dbg !266

; <label>:90:                                     ; preds = %73
  %91 = load i32, i32* %31, align 4, !dbg !267, !tbaa !119
  %92 = icmp eq i32 %91, 0, !dbg !269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  br i1 %92, label %94, label %93, !dbg !270

; <label>:93:                                     ; preds = %90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  br i1 %47, label %94, label %107, !dbg !271

; <label>:94:                                     ; preds = %93, %90
  %95 = getelementptr inbounds %struct.sample, %struct.sample* %53, i64 %54, i32 1, !dbg !272
  %96 = load i8*, i8** %95, align 8, !dbg !272, !tbaa !112
  %97 = icmp eq i8* %96, null, !dbg !273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !274
  br i1 %97, label %110, label %98, !dbg !274

; <label>:98:                                     ; preds = %94
  %99 = tail call i64 @strlen(i8* nonnull %96) #3, !dbg !275
  %100 = trunc i64 %99 to i32, !dbg !275
  %101 = icmp slt i32 %48, %100, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  br i1 %101, label %102, label %108, !dbg !280

; <label>:102:                                    ; preds = %98
  %103 = load i8*, i8** %95, align 8, !dbg !281, !tbaa !112
  %104 = getelementptr inbounds i8, i8* %103, i64 %49, !dbg !283
  %105 = load i8, i8* %104, align 1, !dbg !283, !tbaa !72
  %106 = getelementptr inbounds i8, i8* %14, i64 %51, !dbg !284
  store i8 %105, i8* %106, align 1, !dbg !285, !tbaa !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  br label %108, !dbg !286

; <label>:107:                                    ; preds = %93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  br label %116, !dbg !221

; <label>:108:                                    ; preds = %98, %102, %80, %88, %86, %85
  %109 = phi i32 [ 1, %85 ], [ 1, %86 ], [ 1, %88 ], [ 1, %80 ], [ 1, %102 ], [ %52, %98 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  br label %110, !dbg !290

; <label>:110:                                    ; preds = %108, %94
  %111 = phi i32 [ %52, %94 ], [ %109, %108 ], !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %112 = add nuw nsw i64 %51, 1, !dbg !292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  %113 = icmp slt i64 %112, %13, !dbg !294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  br i1 %113, label %50, label %114, !dbg !220, !llvm.loop !295

; <label>:114:                                    ; preds = %110
  %115 = icmp eq i32 %111, 0, !dbg !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  br i1 %115, label %121, label %116, !dbg !221

; <label>:116:                                    ; preds = %114, %107
  %117 = add nuw nsw i32 %41, 1, !dbg !299
  %118 = tail call i8* @sdscatlen(i8* %42, i8* %14, i64 %13) #3, !dbg !301
  %119 = tail call i8* @sdscatlen(i8* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1) #3, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  %120 = tail call i8* @memset(i8* %14, i32 32, i64 %13) #3, !dbg !217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  br i1 %27, label %40, label %38, !dbg !220

; <label>:121:                                    ; preds = %114, %38
  %122 = phi i8* [ %39, %38 ], [ %42, %114 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  tail call void @zfree(i8* %14) #3, !dbg !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  ret i8* %122, !dbg !305
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
define dso_local i8* @sparklineRender(i8*, %struct.sequence* nocapture readonly, i32, i32, i32) local_unnamed_addr #0 !dbg !306 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  %6 = getelementptr inbounds %struct.sequence, %struct.sequence* %1, i64 0, i32 0, !dbg !327
  %7 = load i32, i32* %6, align 8, !dbg !327, !tbaa !48
  %8 = icmp sgt i32 %7, 0, !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  br i1 %8, label %9, label %25, !dbg !329

; <label>:9:                                      ; preds = %5, %19
  %10 = phi i32 [ %23, %19 ], [ %7, %5 ]
  %11 = phi i8* [ %21, %19 ], [ %0, %5 ]
  %12 = phi i32 [ %22, %19 ], [ 0, %5 ]
  %13 = sub nsw i32 %10, %12, !dbg !330
  %14 = icmp slt i32 %13, %2, !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  %15 = select i1 %14, i32 %13, i32 %2, !dbg !332
  %16 = icmp eq i32 %12, 0, !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  br i1 %16, label %19, label %17, !dbg !336

; <label>:17:                                     ; preds = %9
  %18 = tail call i8* @sdscatlen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1) #3, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  br label %19, !dbg !338

; <label>:19:                                     ; preds = %9, %17
  %20 = phi i8* [ %18, %17 ], [ %11, %9 ]
  %21 = tail call i8* @sparklineRenderRange(i8* %20, %struct.sequence* nonnull %1, i32 %3, i32 %12, i32 %15, i32 %4) #4, !dbg !339
  %22 = add nsw i32 %12, %2, !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !341
  %23 = load i32, i32* %6, align 8, !dbg !327, !tbaa !48
  %24 = icmp sgt i32 %23, %22, !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  br i1 %24, label %9, label %25, !dbg !329, !llvm.loop !342

; <label>:25:                                     ; preds = %19, %5
  %26 = phi i8* [ %0, %5 ], [ %21, %19 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  ret i8* %26, !dbg !344
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
!130 = !DILocation(line: 84, column: 10, scope: !131)
!131 = distinct !DILexicalBlock(scope: !122, file: !3, line: 84, column: 5)
!132 = !DILocation(line: 84, column: 26, scope: !133)
!133 = distinct !DILexicalBlock(scope: !131, file: !3, line: 84, column: 5)
!134 = !DILocation(line: 84, column: 19, scope: !133)
!135 = !DILocation(line: 0, scope: !122)
!136 = !DILocation(line: 84, column: 5, scope: !131)
!137 = !DILocation(line: 85, column: 31, scope: !133)
!138 = !DILocation(line: 85, column: 9, scope: !133)
!139 = !DILocation(line: 84, column: 35, scope: !133)
!140 = !DILocation(line: 84, column: 5, scope: !133)
!141 = distinct !{!141, !136, !142}
!142 = !DILocation(line: 85, column: 36, scope: !131)
!143 = !DILocation(line: 86, column: 11, scope: !122)
!144 = !DILocation(line: 86, column: 5, scope: !122)
!145 = !DILocation(line: 87, column: 11, scope: !122)
!146 = !DILocation(line: 87, column: 5, scope: !122)
!147 = !DILocation(line: 88, column: 1, scope: !122)
!148 = distinct !DISubprogram(name: "sparklineRenderRange", scope: !3, file: !3, line: 97, type: !149, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !153)
!149 = !DISubroutineType(types: !150)
!150 = !{!151, !151, !26, !7, !7, !7, !7}
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !152, line: 43, baseType: !39)
!152 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !173, !174, !175, !178, !182}
!154 = !DILocalVariable(name: "output", arg: 1, scope: !148, file: !3, line: 97, type: !151)
!155 = !DILocalVariable(name: "seq", arg: 2, scope: !148, file: !3, line: 97, type: !26)
!156 = !DILocalVariable(name: "rows", arg: 3, scope: !148, file: !3, line: 97, type: !7)
!157 = !DILocalVariable(name: "offset", arg: 4, scope: !148, file: !3, line: 97, type: !7)
!158 = !DILocalVariable(name: "len", arg: 5, scope: !148, file: !3, line: 97, type: !7)
!159 = !DILocalVariable(name: "flags", arg: 6, scope: !148, file: !3, line: 97, type: !7)
!160 = !DILocalVariable(name: "j", scope: !148, file: !3, line: 98, type: !7)
!161 = !DILocalVariable(name: "relmax", scope: !148, file: !3, line: 99, type: !37)
!162 = !DILocalVariable(name: "steps", scope: !148, file: !3, line: 100, type: !7)
!163 = !DILocalVariable(name: "row", scope: !148, file: !3, line: 101, type: !7)
!164 = !DILocalVariable(name: "chars", scope: !148, file: !3, line: 102, type: !39)
!165 = !DILocalVariable(name: "loop", scope: !148, file: !3, line: 103, type: !7)
!166 = !DILocalVariable(name: "opt_fill", scope: !148, file: !3, line: 104, type: !7)
!167 = !DILocalVariable(name: "opt_log", scope: !148, file: !3, line: 105, type: !7)
!168 = !DILocalVariable(name: "s", scope: !169, file: !3, line: 117, type: !33)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 116, column: 35)
!170 = distinct !DILexicalBlock(scope: !171, file: !3, line: 116, column: 9)
!171 = distinct !DILexicalBlock(scope: !172, file: !3, line: 116, column: 9)
!172 = distinct !DILexicalBlock(scope: !148, file: !3, line: 113, column: 17)
!173 = !DILocalVariable(name: "relval", scope: !169, file: !3, line: 118, type: !37)
!174 = !DILocalVariable(name: "step", scope: !169, file: !3, line: 119, type: !7)
!175 = !DILocalVariable(name: "charidx", scope: !176, file: !3, line: 128, type: !7)
!176 = distinct !DILexicalBlock(scope: !177, file: !3, line: 126, column: 29)
!177 = distinct !DILexicalBlock(scope: !169, file: !3, line: 126, column: 17)
!178 = !DILocalVariable(name: "label_len", scope: !179, file: !3, line: 144, type: !7)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 143, column: 31)
!180 = distinct !DILexicalBlock(scope: !181, file: !3, line: 143, column: 21)
!181 = distinct !DILexicalBlock(scope: !177, file: !3, line: 136, column: 20)
!182 = !DILocalVariable(name: "label_char", scope: !179, file: !3, line: 145, type: !7)
!183 = !DILocation(line: 97, column: 30, scope: !148)
!184 = !DILocation(line: 97, column: 55, scope: !148)
!185 = !DILocation(line: 97, column: 64, scope: !148)
!186 = !DILocation(line: 97, column: 74, scope: !148)
!187 = !DILocation(line: 97, column: 86, scope: !148)
!188 = !DILocation(line: 97, column: 95, scope: !148)
!189 = !DILocation(line: 99, column: 26, scope: !148)
!190 = !DILocation(line: 99, column: 37, scope: !148)
!191 = !DILocation(line: 99, column: 30, scope: !148)
!192 = !DILocation(line: 99, column: 12, scope: !148)
!193 = !DILocation(line: 100, column: 28, scope: !148)
!194 = !DILocation(line: 100, column: 9, scope: !148)
!195 = !DILocation(line: 101, column: 9, scope: !148)
!196 = !DILocation(line: 102, column: 27, scope: !148)
!197 = !DILocation(line: 102, column: 19, scope: !148)
!198 = !DILocation(line: 102, column: 11, scope: !148)
!199 = !DILocation(line: 103, column: 9, scope: !148)
!200 = !DILocation(line: 104, column: 26, scope: !148)
!201 = !DILocation(line: 104, column: 9, scope: !148)
!202 = !DILocation(line: 105, column: 25, scope: !148)
!203 = !DILocation(line: 105, column: 9, scope: !148)
!204 = !DILocation(line: 107, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !148, file: !3, line: 107, column: 9)
!206 = !DILocation(line: 107, column: 9, scope: !148)
!207 = !DILocation(line: 108, column: 28, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !3, line: 107, column: 18)
!209 = !DILocation(line: 108, column: 18, scope: !208)
!210 = !DILocation(line: 109, column: 5, scope: !208)
!211 = !DILocation(line: 109, column: 23, scope: !212)
!212 = distinct !DILexicalBlock(scope: !205, file: !3, line: 109, column: 16)
!213 = !DILocation(line: 109, column: 16, scope: !205)
!214 = !DILocation(line: 0, scope: !208)
!215 = !DILocation(line: 113, column: 5, scope: !148)
!216 = !DILocation(line: 0, scope: !148)
!217 = !DILocation(line: 115, column: 9, scope: !172)
!218 = !DILocation(line: 98, column: 9, scope: !148)
!219 = !DILocation(line: 116, column: 14, scope: !171)
!220 = !DILocation(line: 116, column: 9, scope: !171)
!221 = !DILocation(line: 154, column: 13, scope: !172)
!222 = !DILocation(line: 117, column: 38, scope: !169)
!223 = !DILocation(line: 117, column: 47, scope: !169)
!224 = !DILocation(line: 118, column: 32, scope: !169)
!225 = !DILocation(line: 118, column: 45, scope: !169)
!226 = !DILocation(line: 118, column: 38, scope: !169)
!227 = !DILocation(line: 118, column: 20, scope: !169)
!228 = !DILocation(line: 121, column: 17, scope: !169)
!229 = !DILocation(line: 121, column: 45, scope: !230)
!230 = distinct !DILexicalBlock(scope: !169, file: !3, line: 121, column: 17)
!231 = !DILocation(line: 121, column: 35, scope: !230)
!232 = !DILocation(line: 121, column: 26, scope: !230)
!233 = !DILocation(line: 0, scope: !169)
!234 = !DILocation(line: 122, column: 33, scope: !169)
!235 = !DILocation(line: 122, column: 20, scope: !169)
!236 = !DILocation(line: 122, column: 40, scope: !169)
!237 = !DILocation(line: 119, column: 17, scope: !169)
!238 = !DILocation(line: 123, column: 17, scope: !169)
!239 = !DILocation(line: 124, column: 22, scope: !240)
!240 = distinct !DILexicalBlock(scope: !169, file: !3, line: 124, column: 17)
!241 = !DILocation(line: 124, column: 17, scope: !169)
!242 = !DILocation(line: 124, column: 32, scope: !240)
!243 = !DILocation(line: 0, scope: !244)
!244 = distinct !DILexicalBlock(scope: !169, file: !3, line: 123, column: 17)
!245 = !DILocation(line: 126, column: 17, scope: !169)
!246 = !DILocation(line: 128, column: 35, scope: !176)
!247 = !DILocation(line: 128, column: 21, scope: !176)
!248 = !DILocation(line: 130, column: 29, scope: !249)
!249 = distinct !DILexicalBlock(scope: !176, file: !3, line: 130, column: 21)
!250 = !DILocation(line: 130, column: 34, scope: !249)
!251 = !DILocation(line: 130, column: 45, scope: !249)
!252 = !DILocation(line: 130, column: 21, scope: !176)
!253 = !DILocation(line: 0, scope: !254)
!254 = distinct !DILexicalBlock(scope: !249, file: !3, line: 130, column: 60)
!255 = !DILocation(line: 131, column: 32, scope: !254)
!256 = !DILocation(line: 131, column: 21, scope: !254)
!257 = !DILocation(line: 131, column: 30, scope: !254)
!258 = !DILocation(line: 133, column: 17, scope: !254)
!259 = !DILocation(line: 133, column: 36, scope: !260)
!260 = distinct !DILexicalBlock(scope: !249, file: !3, line: 133, column: 27)
!261 = !DILocation(line: 133, column: 47, scope: !260)
!262 = !DILocation(line: 133, column: 27, scope: !249)
!263 = !DILocation(line: 134, column: 21, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !3, line: 133, column: 63)
!265 = !DILocation(line: 134, column: 30, scope: !264)
!266 = !DILocation(line: 135, column: 17, scope: !264)
!267 = !DILocation(line: 138, column: 26, scope: !268)
!268 = distinct !DILexicalBlock(scope: !181, file: !3, line: 138, column: 21)
!269 = !DILocation(line: 138, column: 21, scope: !268)
!270 = !DILocation(line: 138, column: 33, scope: !268)
!271 = !DILocation(line: 138, column: 21, scope: !181)
!272 = !DILocation(line: 143, column: 24, scope: !180)
!273 = !DILocation(line: 143, column: 21, scope: !180)
!274 = !DILocation(line: 143, column: 21, scope: !181)
!275 = !DILocation(line: 144, column: 37, scope: !179)
!276 = !DILocation(line: 144, column: 25, scope: !179)
!277 = !DILocation(line: 145, column: 25, scope: !179)
!278 = !DILocation(line: 147, column: 35, scope: !279)
!279 = distinct !DILexicalBlock(scope: !179, file: !3, line: 147, column: 25)
!280 = !DILocation(line: 147, column: 25, scope: !179)
!281 = !DILocation(line: 149, column: 39, scope: !282)
!282 = distinct !DILexicalBlock(scope: !279, file: !3, line: 147, column: 49)
!283 = !DILocation(line: 149, column: 36, scope: !282)
!284 = !DILocation(line: 149, column: 25, scope: !282)
!285 = !DILocation(line: 149, column: 34, scope: !282)
!286 = !DILocation(line: 150, column: 21, scope: !282)
!287 = !DILocation(line: 140, column: 21, scope: !288)
!288 = distinct !DILexicalBlock(scope: !268, file: !3, line: 138, column: 65)
!289 = !DILocation(line: 0, scope: !179)
!290 = !DILocation(line: 153, column: 9, scope: !170)
!291 = !DILocation(line: 0, scope: !172)
!292 = !DILocation(line: 116, column: 31, scope: !170)
!293 = !DILocation(line: 116, column: 9, scope: !170)
!294 = !DILocation(line: 116, column: 23, scope: !170)
!295 = distinct !{!295, !220, !296}
!296 = !DILocation(line: 153, column: 9, scope: !171)
!297 = !DILocation(line: 154, column: 13, scope: !298)
!298 = distinct !DILexicalBlock(scope: !172, file: !3, line: 154, column: 13)
!299 = !DILocation(line: 155, column: 16, scope: !300)
!300 = distinct !DILexicalBlock(scope: !298, file: !3, line: 154, column: 19)
!301 = !DILocation(line: 156, column: 22, scope: !300)
!302 = !DILocation(line: 157, column: 22, scope: !300)
!303 = !DILocation(line: 158, column: 9, scope: !300)
!304 = !DILocation(line: 160, column: 5, scope: !148)
!305 = !DILocation(line: 161, column: 5, scope: !148)
!306 = distinct !DISubprogram(name: "sparklineRender", scope: !3, file: !3, line: 165, type: !307, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{!151, !151, !26, !7, !7, !7}
!309 = !{!310, !311, !312, !313, !314, !315, !316}
!310 = !DILocalVariable(name: "output", arg: 1, scope: !306, file: !3, line: 165, type: !151)
!311 = !DILocalVariable(name: "seq", arg: 2, scope: !306, file: !3, line: 165, type: !26)
!312 = !DILocalVariable(name: "columns", arg: 3, scope: !306, file: !3, line: 165, type: !7)
!313 = !DILocalVariable(name: "rows", arg: 4, scope: !306, file: !3, line: 165, type: !7)
!314 = !DILocalVariable(name: "flags", arg: 5, scope: !306, file: !3, line: 165, type: !7)
!315 = !DILocalVariable(name: "j", scope: !306, file: !3, line: 166, type: !7)
!316 = !DILocalVariable(name: "sublen", scope: !317, file: !3, line: 169, type: !7)
!317 = distinct !DILexicalBlock(scope: !318, file: !3, line: 168, column: 48)
!318 = distinct !DILexicalBlock(scope: !319, file: !3, line: 168, column: 5)
!319 = distinct !DILexicalBlock(scope: !306, file: !3, line: 168, column: 5)
!320 = !DILocation(line: 165, column: 25, scope: !306)
!321 = !DILocation(line: 165, column: 50, scope: !306)
!322 = !DILocation(line: 165, column: 59, scope: !306)
!323 = !DILocation(line: 165, column: 72, scope: !306)
!324 = !DILocation(line: 165, column: 82, scope: !306)
!325 = !DILocation(line: 166, column: 9, scope: !306)
!326 = !DILocation(line: 168, column: 10, scope: !319)
!327 = !DILocation(line: 168, column: 26, scope: !318)
!328 = !DILocation(line: 168, column: 19, scope: !318)
!329 = !DILocation(line: 168, column: 5, scope: !319)
!330 = !DILocation(line: 169, column: 34, scope: !317)
!331 = !DILocation(line: 169, column: 38, scope: !317)
!332 = !DILocation(line: 169, column: 22, scope: !317)
!333 = !DILocation(line: 169, column: 13, scope: !317)
!334 = !DILocation(line: 171, column: 15, scope: !335)
!335 = distinct !DILexicalBlock(scope: !317, file: !3, line: 171, column: 13)
!336 = !DILocation(line: 171, column: 13, scope: !317)
!337 = !DILocation(line: 171, column: 30, scope: !335)
!338 = !DILocation(line: 171, column: 21, scope: !335)
!339 = !DILocation(line: 172, column: 18, scope: !317)
!340 = !DILocation(line: 168, column: 36, scope: !318)
!341 = !DILocation(line: 168, column: 5, scope: !318)
!342 = distinct !{!342, !329, !343}
!343 = !DILocation(line: 173, column: 5, scope: !319)
!344 = !DILocation(line: 174, column: 5, scope: !306)
