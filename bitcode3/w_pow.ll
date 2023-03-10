; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_pow.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_pow.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"pow\00", align 1

; Function Attrs: noredzone nounwind
define dso_local double @pow(double, double) local_unnamed_addr #0 !dbg !17 {
  %3 = alloca %struct.exception, align 8
  %4 = bitcast %struct.exception* %3 to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #4, !dbg !38
  %5 = tail call double @__ieee754_pow(double %0, double %1) #5, !dbg !39
  %6 = load i32, i32* @__fdlib_version, align 4, !dbg !41, !tbaa !43
  %7 = icmp eq i32 %6, -1, !dbg !46
  br i1 %7, label %208, label %8, !dbg !47

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @__fpclassifyd(double %1) #5, !dbg !48
  %10 = icmp eq i32 %9, 0, !dbg !48
  br i1 %10, label %208, label %11, !dbg !49

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @__fpclassifyd(double %0) #5, !dbg !50
  %13 = icmp eq i32 %12, 0, !dbg !50
  br i1 %13, label %14, label %37, !dbg !52

; <label>:14:                                     ; preds = %11
  %15 = fcmp oeq double %1, 0.000000e+00, !dbg !53
  br i1 %15, label %16, label %208, !dbg !56

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !57
  store i32 1, i32* %17, align 8, !dbg !59, !tbaa !60
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !65
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %18, align 8, !dbg !66, !tbaa !67
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !68
  store i32 0, i32* %19, align 8, !dbg !69, !tbaa !70
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !71
  store double %0, double* %20, align 8, !dbg !72, !tbaa !73
  %21 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !74
  store double %1, double* %21, align 8, !dbg !75, !tbaa !76
  %22 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !77
  store double 1.000000e+00, double* %22, align 8, !dbg !78, !tbaa !79
  %23 = load i32, i32* @__fdlib_version, align 4, !dbg !80, !tbaa !43
  switch i32 %23, label %25 [
    i32 -1, label %24
    i32 2, label %24
  ], !dbg !82

; <label>:24:                                     ; preds = %16, %16
  store double 1.000000e+00, double* %22, align 8, !dbg !83, !tbaa !79
  br label %30, !dbg !84

; <label>:25:                                     ; preds = %16
  %26 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !86
  %27 = icmp eq i32 %26, 0, !dbg !86
  br i1 %27, label %28, label %30, !dbg !88

; <label>:28:                                     ; preds = %25
  %29 = call i32* @__errno() #5, !dbg !89
  store i32 33, i32* %29, align 4, !dbg !91, !tbaa !92
  br label %30, !dbg !93

; <label>:30:                                     ; preds = %25, %28, %24
  %31 = load i32, i32* %19, align 8, !dbg !94, !tbaa !70
  %32 = icmp eq i32 %31, 0, !dbg !96
  br i1 %32, label %35, label %33, !dbg !97

; <label>:33:                                     ; preds = %30
  %34 = call i32* @__errno() #5, !dbg !98
  store i32 %31, i32* %34, align 4, !dbg !99, !tbaa !92
  br label %35, !dbg !98

; <label>:35:                                     ; preds = %30, %33
  %36 = load double, double* %22, align 8, !dbg !100, !tbaa !79
  br label %208, !dbg !101

; <label>:37:                                     ; preds = %11
  %38 = fcmp oeq double %0, 0.000000e+00, !dbg !102
  br i1 %38, label %39, label %95, !dbg !104

; <label>:39:                                     ; preds = %37
  %40 = fcmp oeq double %1, 0.000000e+00, !dbg !105
  br i1 %40, label %41, label %63, !dbg !108

; <label>:41:                                     ; preds = %39
  %42 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !109
  store i32 1, i32* %42, align 8, !dbg !111, !tbaa !60
  %43 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !112
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %43, align 8, !dbg !113, !tbaa !67
  %44 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !114
  store i32 0, i32* %44, align 8, !dbg !115, !tbaa !70
  %45 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !116
  store double %0, double* %45, align 8, !dbg !117, !tbaa !73
  %46 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !118
  store double %1, double* %46, align 8, !dbg !119, !tbaa !76
  %47 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !120
  store double 0.000000e+00, double* %47, align 8, !dbg !121, !tbaa !79
  %48 = load i32, i32* @__fdlib_version, align 4, !dbg !122, !tbaa !43
  %49 = icmp eq i32 %48, 0, !dbg !124
  br i1 %49, label %51, label %50, !dbg !125

; <label>:50:                                     ; preds = %41
  store double 1.000000e+00, double* %47, align 8, !dbg !126, !tbaa !79
  br label %56, !dbg !127

; <label>:51:                                     ; preds = %41
  %52 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !128
  %53 = icmp eq i32 %52, 0, !dbg !128
  br i1 %53, label %54, label %56, !dbg !130

; <label>:54:                                     ; preds = %51
  %55 = call i32* @__errno() #5, !dbg !131
  store i32 33, i32* %55, align 4, !dbg !133, !tbaa !92
  br label %56, !dbg !134

; <label>:56:                                     ; preds = %51, %54, %50
  %57 = load i32, i32* %44, align 8, !dbg !135, !tbaa !70
  %58 = icmp eq i32 %57, 0, !dbg !137
  br i1 %58, label %61, label %59, !dbg !138

; <label>:59:                                     ; preds = %56
  %60 = call i32* @__errno() #5, !dbg !139
  store i32 %57, i32* %60, align 4, !dbg !140, !tbaa !92
  br label %61, !dbg !139

; <label>:61:                                     ; preds = %56, %59
  %62 = load double, double* %47, align 8, !dbg !141, !tbaa !79
  br label %208, !dbg !142

; <label>:63:                                     ; preds = %39
  %64 = tail call i32 @finite(double %1) #5, !dbg !143
  %65 = icmp ne i32 %64, 0, !dbg !143
  %66 = fcmp olt double %1, 0.000000e+00, !dbg !145
  %67 = and i1 %66, %65, !dbg !146
  br i1 %67, label %68, label %208, !dbg !146

; <label>:68:                                     ; preds = %63
  %69 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !147
  store i32 1, i32* %69, align 8, !dbg !149, !tbaa !60
  %70 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !150
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %70, align 8, !dbg !151, !tbaa !67
  %71 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !152
  store i32 0, i32* %71, align 8, !dbg !153, !tbaa !70
  %72 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !154
  store double %0, double* %72, align 8, !dbg !155, !tbaa !73
  %73 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !156
  store double %1, double* %73, align 8, !dbg !157, !tbaa !76
  %74 = load i32, i32* @__fdlib_version, align 4, !dbg !158, !tbaa !43
  %75 = icmp eq i32 %74, 0, !dbg !160
  %76 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !161
  %77 = select i1 %75, double 0.000000e+00, double 0xFFF0000000000000, !dbg !162
  store double %77, double* %76, align 8, !dbg !161, !tbaa !79
  %78 = icmp eq i32 %74, 2, !dbg !163
  br i1 %78, label %79, label %81, !dbg !165

; <label>:79:                                     ; preds = %68
  %80 = tail call i32* @__errno() #5, !dbg !166
  br label %86, !dbg !166

; <label>:81:                                     ; preds = %68
  %82 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !167
  %83 = icmp eq i32 %82, 0, !dbg !167
  br i1 %83, label %84, label %88, !dbg !169

; <label>:84:                                     ; preds = %81
  %85 = call i32* @__errno() #5, !dbg !170
  br label %86, !dbg !172

; <label>:86:                                     ; preds = %79, %84
  %87 = phi i32* [ %85, %84 ], [ %80, %79 ]
  store i32 33, i32* %87, align 4, !dbg !173, !tbaa !92
  br label %88, !dbg !174

; <label>:88:                                     ; preds = %86, %81
  %89 = load i32, i32* %71, align 8, !dbg !174, !tbaa !70
  %90 = icmp eq i32 %89, 0, !dbg !176
  br i1 %90, label %93, label %91, !dbg !177

; <label>:91:                                     ; preds = %88
  %92 = call i32* @__errno() #5, !dbg !178
  store i32 %89, i32* %92, align 4, !dbg !179, !tbaa !92
  br label %93, !dbg !178

; <label>:93:                                     ; preds = %88, %91
  %94 = load double, double* %76, align 8, !dbg !180, !tbaa !79
  br label %208, !dbg !181

; <label>:95:                                     ; preds = %37
  %96 = tail call i32 @finite(double %5) #5, !dbg !182
  %97 = icmp eq i32 %96, 0, !dbg !182
  br i1 %97, label %98, label %175, !dbg !184

; <label>:98:                                     ; preds = %95
  %99 = tail call i32 @finite(double %0) #5, !dbg !185
  %100 = icmp eq i32 %99, 0, !dbg !185
  br i1 %100, label %175, label %101, !dbg !188

; <label>:101:                                    ; preds = %98
  %102 = tail call i32 @finite(double %1) #5, !dbg !189
  %103 = icmp eq i32 %102, 0, !dbg !189
  br i1 %103, label %175, label %104, !dbg !190

; <label>:104:                                    ; preds = %101
  %105 = tail call i32 @__fpclassifyd(double %5) #5, !dbg !191
  %106 = icmp eq i32 %105, 0, !dbg !191
  %107 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !194
  br i1 %106, label %108, label %134, !dbg !196

; <label>:108:                                    ; preds = %104
  store i32 1, i32* %107, align 8, !dbg !197, !tbaa !60
  %109 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !199
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %109, align 8, !dbg !200, !tbaa !67
  %110 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !201
  store i32 0, i32* %110, align 8, !dbg !202, !tbaa !70
  %111 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !203
  store double %0, double* %111, align 8, !dbg !204, !tbaa !73
  %112 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !205
  store double %1, double* %112, align 8, !dbg !206, !tbaa !76
  %113 = load i32, i32* @__fdlib_version, align 4, !dbg !207, !tbaa !43
  %114 = icmp eq i32 %113, 0, !dbg !209
  %115 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !210
  %116 = select i1 %114, double 0.000000e+00, double 0x7FF8000000000000, !dbg !211
  store double %116, double* %115, align 8, !dbg !210, !tbaa !79
  %117 = icmp eq i32 %113, 2, !dbg !212
  br i1 %117, label %118, label %120, !dbg !214

; <label>:118:                                    ; preds = %108
  %119 = tail call i32* @__errno() #5, !dbg !215
  br label %125, !dbg !215

; <label>:120:                                    ; preds = %108
  %121 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !216
  %122 = icmp eq i32 %121, 0, !dbg !216
  br i1 %122, label %123, label %127, !dbg !218

; <label>:123:                                    ; preds = %120
  %124 = call i32* @__errno() #5, !dbg !219
  br label %125, !dbg !221

; <label>:125:                                    ; preds = %118, %123
  %126 = phi i32* [ %124, %123 ], [ %119, %118 ]
  store i32 33, i32* %126, align 4, !dbg !222, !tbaa !92
  br label %127, !dbg !223

; <label>:127:                                    ; preds = %125, %120
  %128 = load i32, i32* %110, align 8, !dbg !223, !tbaa !70
  %129 = icmp eq i32 %128, 0, !dbg !225
  br i1 %129, label %132, label %130, !dbg !226

; <label>:130:                                    ; preds = %127
  %131 = call i32* @__errno() #5, !dbg !227
  store i32 %128, i32* %131, align 4, !dbg !228, !tbaa !92
  br label %132, !dbg !227

; <label>:132:                                    ; preds = %127, %130
  %133 = load double, double* %115, align 8, !dbg !229, !tbaa !79
  br label %208, !dbg !230

; <label>:134:                                    ; preds = %104
  store i32 3, i32* %107, align 8, !dbg !231, !tbaa !60
  %135 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !232
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %135, align 8, !dbg !233, !tbaa !67
  %136 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !234
  store i32 0, i32* %136, align 8, !dbg !235, !tbaa !70
  %137 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !236
  store double %0, double* %137, align 8, !dbg !237, !tbaa !73
  %138 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !238
  store double %1, double* %138, align 8, !dbg !239, !tbaa !76
  %139 = load i32, i32* @__fdlib_version, align 4, !dbg !240, !tbaa !43
  %140 = icmp eq i32 %139, 0, !dbg !242
  %141 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !243
  br i1 %140, label %142, label %149, !dbg !245

; <label>:142:                                    ; preds = %134
  store double 0x47EFFFFFE0000000, double* %141, align 8, !dbg !246, !tbaa !79
  %143 = fmul double %1, 5.000000e-01, !dbg !248
  %144 = fcmp olt double %0, 0.000000e+00, !dbg !249
  br i1 %144, label %145, label %156, !dbg !251

; <label>:145:                                    ; preds = %142
  %146 = tail call double @rint(double %143) #5, !dbg !252
  %147 = fcmp une double %146, %143, !dbg !253
  br i1 %147, label %148, label %156, !dbg !254

; <label>:148:                                    ; preds = %145
  store double 0xC7EFFFFFE0000000, double* %141, align 8, !dbg !255, !tbaa !79
  br label %156, !dbg !256

; <label>:149:                                    ; preds = %134
  store double 0x7FF0000000000000, double* %141, align 8, !dbg !257, !tbaa !79
  %150 = fmul double %1, 5.000000e-01, !dbg !258
  %151 = fcmp olt double %0, 0.000000e+00, !dbg !259
  br i1 %151, label %152, label %156, !dbg !261

; <label>:152:                                    ; preds = %149
  %153 = tail call double @rint(double %150) #5, !dbg !262
  %154 = fcmp une double %153, %150, !dbg !263
  br i1 %154, label %155, label %156, !dbg !264

; <label>:155:                                    ; preds = %152
  store double 0xFFF0000000000000, double* %141, align 8, !dbg !265, !tbaa !79
  br label %156, !dbg !266

; <label>:156:                                    ; preds = %149, %152, %155, %142, %145, %148
  %157 = load i32, i32* @__fdlib_version, align 4, !dbg !267, !tbaa !43
  %158 = icmp eq i32 %157, 2, !dbg !269
  br i1 %158, label %159, label %161, !dbg !270

; <label>:159:                                    ; preds = %156
  %160 = tail call i32* @__errno() #5, !dbg !271
  br label %166, !dbg !271

; <label>:161:                                    ; preds = %156
  %162 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !272
  %163 = icmp eq i32 %162, 0, !dbg !272
  br i1 %163, label %164, label %168, !dbg !274

; <label>:164:                                    ; preds = %161
  %165 = call i32* @__errno() #5, !dbg !275
  br label %166, !dbg !277

; <label>:166:                                    ; preds = %159, %164
  %167 = phi i32* [ %165, %164 ], [ %160, %159 ]
  store i32 34, i32* %167, align 4, !dbg !278, !tbaa !92
  br label %168, !dbg !279

; <label>:168:                                    ; preds = %166, %161
  %169 = load i32, i32* %136, align 8, !dbg !279, !tbaa !70
  %170 = icmp eq i32 %169, 0, !dbg !281
  br i1 %170, label %173, label %171, !dbg !282

; <label>:171:                                    ; preds = %168
  %172 = call i32* @__errno() #5, !dbg !283
  store i32 %169, i32* %172, align 4, !dbg !284, !tbaa !92
  br label %173, !dbg !283

; <label>:173:                                    ; preds = %168, %171
  %174 = load double, double* %141, align 8, !dbg !285, !tbaa !79
  br label %208, !dbg !286

; <label>:175:                                    ; preds = %101, %98, %95
  %176 = fcmp oeq double %5, 0.000000e+00, !dbg !287
  br i1 %176, label %177, label %208, !dbg !289

; <label>:177:                                    ; preds = %175
  %178 = tail call i32 @finite(double %0) #5, !dbg !290
  %179 = icmp eq i32 %178, 0, !dbg !290
  br i1 %179, label %208, label %180, !dbg !291

; <label>:180:                                    ; preds = %177
  %181 = tail call i32 @finite(double %1) #5, !dbg !292
  %182 = icmp eq i32 %181, 0, !dbg !292
  br i1 %182, label %208, label %183, !dbg !293

; <label>:183:                                    ; preds = %180
  %184 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !294
  store i32 4, i32* %184, align 8, !dbg !296, !tbaa !60
  %185 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !297
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %185, align 8, !dbg !298, !tbaa !67
  %186 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !299
  store i32 0, i32* %186, align 8, !dbg !300, !tbaa !70
  %187 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !301
  store double %0, double* %187, align 8, !dbg !302, !tbaa !73
  %188 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !303
  store double %1, double* %188, align 8, !dbg !304, !tbaa !76
  %189 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !305
  store double 0.000000e+00, double* %189, align 8, !dbg !306, !tbaa !79
  %190 = load i32, i32* @__fdlib_version, align 4, !dbg !307, !tbaa !43
  %191 = icmp eq i32 %190, 2, !dbg !309
  br i1 %191, label %192, label %194, !dbg !310

; <label>:192:                                    ; preds = %183
  %193 = tail call i32* @__errno() #5, !dbg !311
  br label %199, !dbg !311

; <label>:194:                                    ; preds = %183
  %195 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !312
  %196 = icmp eq i32 %195, 0, !dbg !312
  br i1 %196, label %197, label %201, !dbg !314

; <label>:197:                                    ; preds = %194
  %198 = call i32* @__errno() #5, !dbg !315
  br label %199, !dbg !317

; <label>:199:                                    ; preds = %192, %197
  %200 = phi i32* [ %198, %197 ], [ %193, %192 ]
  store i32 34, i32* %200, align 4, !dbg !318, !tbaa !92
  br label %201, !dbg !319

; <label>:201:                                    ; preds = %199, %194
  %202 = load i32, i32* %186, align 8, !dbg !319, !tbaa !70
  %203 = icmp eq i32 %202, 0, !dbg !321
  br i1 %203, label %206, label %204, !dbg !322

; <label>:204:                                    ; preds = %201
  %205 = call i32* @__errno() #5, !dbg !323
  store i32 %202, i32* %205, align 4, !dbg !324, !tbaa !92
  br label %206, !dbg !323

; <label>:206:                                    ; preds = %201, %204
  %207 = load double, double* %189, align 8, !dbg !325, !tbaa !79
  br label %208, !dbg !326

; <label>:208:                                    ; preds = %175, %177, %180, %63, %14, %2, %8, %206, %173, %132, %93, %61, %35
  %209 = phi double [ %36, %35 ], [ %62, %61 ], [ %94, %93 ], [ %207, %206 ], [ %133, %132 ], [ %174, %173 ], [ %5, %8 ], [ %5, %2 ], [ %5, %14 ], [ %5, %63 ], [ %5, %180 ], [ %5, %177 ], [ %5, %175 ], !dbg !194
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !327
  ret double %209, !dbg !327
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_pow(double, double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @matherr(%struct.exception*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @finite(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @rint(double) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_pow.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__fdlibm_version", file: !4, line: 642, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/math.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "__fdlibm_ieee", value: -1)
!8 = !DIEnumerator(name: "__fdlibm_svid", value: 0)
!9 = !DIEnumerator(name: "__fdlibm_xopen", value: 1)
!10 = !DIEnumerator(name: "__fdlibm_posix", value: 2)
!11 = !{!12}
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!17 = distinct !DISubprogram(name: "pow", scope: !1, file: !1, line: 68, type: !18, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !20, !20}
!20 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!21 = !{!22, !23, !24, !25}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !17, file: !1, line: 68, type: !20)
!23 = !DILocalVariable(name: "y", arg: 2, scope: !17, file: !1, line: 68, type: !20)
!24 = !DILocalVariable(name: "z", scope: !17, file: !1, line: 77, type: !20)
!25 = !DILocalVariable(name: "exc", scope: !17, file: !1, line: 84, type: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !27)
!27 = !{!28, !29, !32, !33, !34, !35}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !4, line: 581, baseType: !5, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !26, file: !4, line: 582, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !26, file: !4, line: 583, baseType: !20, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !26, file: !4, line: 584, baseType: !20, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !26, file: !4, line: 585, baseType: !20, size: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !26, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!36 = !DILocation(line: 68, column: 20, scope: !17)
!37 = !DILocation(line: 68, column: 30, scope: !17)
!38 = !DILocation(line: 84, column: 2, scope: !17)
!39 = !DILocation(line: 85, column: 4, scope: !17)
!40 = !DILocation(line: 77, column: 9, scope: !17)
!41 = !DILocation(line: 86, column: 5, scope: !42)
!42 = distinct !DILexicalBlock(scope: !17, file: !1, line: 86, column: 5)
!43 = !{!44, !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !DILocation(line: 86, column: 18, scope: !42)
!47 = !DILocation(line: 86, column: 27, scope: !42)
!48 = !DILocation(line: 86, column: 30, scope: !42)
!49 = !DILocation(line: 86, column: 5, scope: !17)
!50 = !DILocation(line: 87, column: 5, scope: !51)
!51 = distinct !DILexicalBlock(scope: !17, file: !1, line: 87, column: 5)
!52 = !DILocation(line: 87, column: 5, scope: !17)
!53 = !DILocation(line: 88, column: 10, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 88, column: 9)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 87, column: 15)
!56 = !DILocation(line: 88, column: 9, scope: !55)
!57 = !DILocation(line: 91, column: 7, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 88, column: 17)
!59 = !DILocation(line: 91, column: 12, scope: !58)
!60 = !{!61, !62, i64 0}
!61 = !{!"exception", !62, i64 0, !63, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !62, i64 40}
!62 = !{!"int", !44, i64 0}
!63 = !{!"any pointer", !44, i64 0}
!64 = !{!"double", !44, i64 0}
!65 = !DILocation(line: 92, column: 7, scope: !58)
!66 = !DILocation(line: 92, column: 12, scope: !58)
!67 = !{!61, !63, i64 8}
!68 = !DILocation(line: 93, column: 7, scope: !58)
!69 = !DILocation(line: 93, column: 11, scope: !58)
!70 = !{!61, !62, i64 40}
!71 = !DILocation(line: 94, column: 7, scope: !58)
!72 = !DILocation(line: 94, column: 12, scope: !58)
!73 = !{!61, !64, i64 16}
!74 = !DILocation(line: 95, column: 7, scope: !58)
!75 = !DILocation(line: 95, column: 12, scope: !58)
!76 = !{!61, !64, i64 24}
!77 = !DILocation(line: 96, column: 7, scope: !58)
!78 = !DILocation(line: 96, column: 14, scope: !58)
!79 = !{!61, !64, i64 32}
!80 = !DILocation(line: 97, column: 7, scope: !81)
!81 = distinct !DILexicalBlock(scope: !58, file: !1, line: 97, column: 7)
!82 = !DILocation(line: 97, column: 30, scope: !81)
!83 = !DILocation(line: 98, column: 43, scope: !81)
!84 = !DILocation(line: 98, column: 32, scope: !81)
!85 = !DILocation(line: 84, column: 19, scope: !17)
!86 = !DILocation(line: 99, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !81, file: !1, line: 99, column: 12)
!88 = !DILocation(line: 99, column: 12, scope: !81)
!89 = !DILocation(line: 100, column: 4, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !1, line: 99, column: 28)
!91 = !DILocation(line: 100, column: 10, scope: !90)
!92 = !{!62, !62, i64 0}
!93 = !DILocation(line: 101, column: 3, scope: !90)
!94 = !DILocation(line: 102, column: 18, scope: !95)
!95 = distinct !DILexicalBlock(scope: !58, file: !1, line: 102, column: 14)
!96 = !DILocation(line: 102, column: 22, scope: !95)
!97 = !DILocation(line: 102, column: 14, scope: !58)
!98 = !DILocation(line: 103, column: 13, scope: !95)
!99 = !DILocation(line: 103, column: 19, scope: !95)
!100 = !DILocation(line: 104, column: 28, scope: !58)
!101 = !DILocation(line: 104, column: 17, scope: !58)
!102 = !DILocation(line: 108, column: 6, scope: !103)
!103 = distinct !DILexicalBlock(scope: !17, file: !1, line: 108, column: 5)
!104 = !DILocation(line: 108, column: 5, scope: !17)
!105 = !DILocation(line: 109, column: 10, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !1, line: 109, column: 9)
!107 = distinct !DILexicalBlock(scope: !103, file: !1, line: 108, column: 12)
!108 = !DILocation(line: 109, column: 9, scope: !107)
!109 = !DILocation(line: 112, column: 7, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !1, line: 109, column: 17)
!111 = !DILocation(line: 112, column: 12, scope: !110)
!112 = !DILocation(line: 113, column: 7, scope: !110)
!113 = !DILocation(line: 113, column: 12, scope: !110)
!114 = !DILocation(line: 114, column: 7, scope: !110)
!115 = !DILocation(line: 114, column: 11, scope: !110)
!116 = !DILocation(line: 115, column: 7, scope: !110)
!117 = !DILocation(line: 115, column: 12, scope: !110)
!118 = !DILocation(line: 116, column: 7, scope: !110)
!119 = !DILocation(line: 116, column: 12, scope: !110)
!120 = !DILocation(line: 117, column: 7, scope: !110)
!121 = !DILocation(line: 117, column: 14, scope: !110)
!122 = !DILocation(line: 118, column: 7, scope: !123)
!123 = distinct !DILexicalBlock(scope: !110, file: !1, line: 118, column: 7)
!124 = !DILocation(line: 118, column: 20, scope: !123)
!125 = !DILocation(line: 118, column: 7, scope: !110)
!126 = !DILocation(line: 118, column: 42, scope: !123)
!127 = !DILocation(line: 118, column: 31, scope: !123)
!128 = !DILocation(line: 119, column: 13, scope: !129)
!129 = distinct !DILexicalBlock(scope: !123, file: !1, line: 119, column: 12)
!130 = !DILocation(line: 119, column: 12, scope: !123)
!131 = !DILocation(line: 120, column: 4, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !1, line: 119, column: 28)
!133 = !DILocation(line: 120, column: 10, scope: !132)
!134 = !DILocation(line: 121, column: 3, scope: !132)
!135 = !DILocation(line: 122, column: 18, scope: !136)
!136 = distinct !DILexicalBlock(scope: !110, file: !1, line: 122, column: 14)
!137 = !DILocation(line: 122, column: 22, scope: !136)
!138 = !DILocation(line: 122, column: 14, scope: !110)
!139 = !DILocation(line: 123, column: 13, scope: !136)
!140 = !DILocation(line: 123, column: 19, scope: !136)
!141 = !DILocation(line: 124, column: 28, scope: !110)
!142 = !DILocation(line: 124, column: 17, scope: !110)
!143 = !DILocation(line: 126, column: 16, scope: !144)
!144 = distinct !DILexicalBlock(scope: !107, file: !1, line: 126, column: 16)
!145 = !DILocation(line: 126, column: 28, scope: !144)
!146 = !DILocation(line: 126, column: 25, scope: !144)
!147 = !DILocation(line: 128, column: 7, scope: !148)
!148 = distinct !DILexicalBlock(scope: !144, file: !1, line: 126, column: 34)
!149 = !DILocation(line: 128, column: 12, scope: !148)
!150 = !DILocation(line: 129, column: 7, scope: !148)
!151 = !DILocation(line: 129, column: 12, scope: !148)
!152 = !DILocation(line: 130, column: 7, scope: !148)
!153 = !DILocation(line: 130, column: 11, scope: !148)
!154 = !DILocation(line: 131, column: 7, scope: !148)
!155 = !DILocation(line: 131, column: 12, scope: !148)
!156 = !DILocation(line: 132, column: 7, scope: !148)
!157 = !DILocation(line: 132, column: 12, scope: !148)
!158 = !DILocation(line: 133, column: 7, scope: !159)
!159 = distinct !DILexicalBlock(scope: !148, file: !1, line: 133, column: 7)
!160 = !DILocation(line: 133, column: 20, scope: !159)
!161 = !DILocation(line: 0, scope: !159)
!162 = !DILocation(line: 134, column: 5, scope: !159)
!163 = !DILocation(line: 137, column: 20, scope: !164)
!164 = distinct !DILexicalBlock(scope: !148, file: !1, line: 137, column: 7)
!165 = !DILocation(line: 137, column: 7, scope: !148)
!166 = !DILocation(line: 138, column: 5, scope: !164)
!167 = !DILocation(line: 139, column: 13, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !1, line: 139, column: 12)
!169 = !DILocation(line: 139, column: 12, scope: !164)
!170 = !DILocation(line: 140, column: 5, scope: !171)
!171 = distinct !DILexicalBlock(scope: !168, file: !1, line: 139, column: 28)
!172 = !DILocation(line: 141, column: 3, scope: !171)
!173 = !DILocation(line: 0, scope: !164)
!174 = !DILocation(line: 142, column: 18, scope: !175)
!175 = distinct !DILexicalBlock(scope: !148, file: !1, line: 142, column: 14)
!176 = !DILocation(line: 142, column: 22, scope: !175)
!177 = !DILocation(line: 142, column: 14, scope: !148)
!178 = !DILocation(line: 143, column: 13, scope: !175)
!179 = !DILocation(line: 143, column: 19, scope: !175)
!180 = !DILocation(line: 144, column: 28, scope: !148)
!181 = !DILocation(line: 144, column: 17, scope: !148)
!182 = !DILocation(line: 148, column: 6, scope: !183)
!183 = distinct !DILexicalBlock(scope: !17, file: !1, line: 148, column: 5)
!184 = !DILocation(line: 148, column: 5, scope: !17)
!185 = !DILocation(line: 149, column: 9, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 149, column: 9)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 148, column: 17)
!188 = !DILocation(line: 149, column: 18, scope: !186)
!189 = !DILocation(line: 149, column: 20, scope: !186)
!190 = !DILocation(line: 149, column: 9, scope: !187)
!191 = !DILocation(line: 150, column: 13, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !1, line: 150, column: 13)
!193 = distinct !DILexicalBlock(scope: !186, file: !1, line: 149, column: 31)
!194 = !DILocation(line: 0, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !1, line: 169, column: 17)
!196 = !DILocation(line: 150, column: 13, scope: !193)
!197 = !DILocation(line: 152, column: 16, scope: !198)
!198 = distinct !DILexicalBlock(scope: !192, file: !1, line: 150, column: 23)
!199 = !DILocation(line: 153, column: 11, scope: !198)
!200 = !DILocation(line: 153, column: 16, scope: !198)
!201 = !DILocation(line: 154, column: 11, scope: !198)
!202 = !DILocation(line: 154, column: 15, scope: !198)
!203 = !DILocation(line: 155, column: 11, scope: !198)
!204 = !DILocation(line: 155, column: 16, scope: !198)
!205 = !DILocation(line: 156, column: 11, scope: !198)
!206 = !DILocation(line: 156, column: 16, scope: !198)
!207 = !DILocation(line: 157, column: 11, scope: !208)
!208 = distinct !DILexicalBlock(scope: !198, file: !1, line: 157, column: 11)
!209 = !DILocation(line: 157, column: 24, scope: !208)
!210 = !DILocation(line: 0, scope: !208)
!211 = !DILocation(line: 158, column: 11, scope: !208)
!212 = !DILocation(line: 161, column: 24, scope: !213)
!213 = distinct !DILexicalBlock(scope: !198, file: !1, line: 161, column: 11)
!214 = !DILocation(line: 161, column: 11, scope: !198)
!215 = !DILocation(line: 162, column: 11, scope: !213)
!216 = !DILocation(line: 163, column: 17, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !1, line: 163, column: 16)
!218 = !DILocation(line: 163, column: 16, scope: !213)
!219 = !DILocation(line: 164, column: 11, scope: !220)
!220 = distinct !DILexicalBlock(scope: !217, file: !1, line: 163, column: 32)
!221 = !DILocation(line: 165, column: 7, scope: !220)
!222 = !DILocation(line: 0, scope: !213)
!223 = !DILocation(line: 166, column: 22, scope: !224)
!224 = distinct !DILexicalBlock(scope: !198, file: !1, line: 166, column: 18)
!225 = !DILocation(line: 166, column: 26, scope: !224)
!226 = !DILocation(line: 166, column: 18, scope: !198)
!227 = !DILocation(line: 167, column: 18, scope: !224)
!228 = !DILocation(line: 167, column: 24, scope: !224)
!229 = !DILocation(line: 168, column: 32, scope: !198)
!230 = !DILocation(line: 168, column: 21, scope: !198)
!231 = !DILocation(line: 171, column: 16, scope: !195)
!232 = !DILocation(line: 172, column: 11, scope: !195)
!233 = !DILocation(line: 172, column: 16, scope: !195)
!234 = !DILocation(line: 173, column: 11, scope: !195)
!235 = !DILocation(line: 173, column: 15, scope: !195)
!236 = !DILocation(line: 174, column: 11, scope: !195)
!237 = !DILocation(line: 174, column: 16, scope: !195)
!238 = !DILocation(line: 175, column: 11, scope: !195)
!239 = !DILocation(line: 175, column: 16, scope: !195)
!240 = !DILocation(line: 176, column: 11, scope: !241)
!241 = distinct !DILexicalBlock(scope: !195, file: !1, line: 176, column: 11)
!242 = !DILocation(line: 176, column: 24, scope: !241)
!243 = !DILocation(line: 0, scope: !244)
!244 = distinct !DILexicalBlock(scope: !241, file: !1, line: 180, column: 14)
!245 = !DILocation(line: 176, column: 11, scope: !195)
!246 = !DILocation(line: 177, column: 21, scope: !247)
!247 = distinct !DILexicalBlock(scope: !241, file: !1, line: 176, column: 35)
!248 = !DILocation(line: 178, column: 12, scope: !247)
!249 = !DILocation(line: 179, column: 14, scope: !250)
!250 = distinct !DILexicalBlock(scope: !247, file: !1, line: 179, column: 13)
!251 = !DILocation(line: 179, column: 18, scope: !250)
!252 = !DILocation(line: 179, column: 20, scope: !250)
!253 = !DILocation(line: 179, column: 27, scope: !250)
!254 = !DILocation(line: 179, column: 13, scope: !247)
!255 = !DILocation(line: 179, column: 43, scope: !250)
!256 = !DILocation(line: 179, column: 32, scope: !250)
!257 = !DILocation(line: 181, column: 21, scope: !244)
!258 = !DILocation(line: 182, column: 26, scope: !244)
!259 = !DILocation(line: 183, column: 14, scope: !260)
!260 = distinct !DILexicalBlock(scope: !244, file: !1, line: 183, column: 13)
!261 = !DILocation(line: 183, column: 18, scope: !260)
!262 = !DILocation(line: 183, column: 20, scope: !260)
!263 = !DILocation(line: 183, column: 27, scope: !260)
!264 = !DILocation(line: 183, column: 13, scope: !244)
!265 = !DILocation(line: 183, column: 43, scope: !260)
!266 = !DILocation(line: 183, column: 32, scope: !260)
!267 = !DILocation(line: 185, column: 11, scope: !268)
!268 = distinct !DILexicalBlock(scope: !195, file: !1, line: 185, column: 11)
!269 = !DILocation(line: 185, column: 24, scope: !268)
!270 = !DILocation(line: 185, column: 11, scope: !195)
!271 = !DILocation(line: 186, column: 11, scope: !268)
!272 = !DILocation(line: 187, column: 17, scope: !273)
!273 = distinct !DILexicalBlock(scope: !268, file: !1, line: 187, column: 16)
!274 = !DILocation(line: 187, column: 16, scope: !268)
!275 = !DILocation(line: 188, column: 4, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !1, line: 187, column: 32)
!277 = !DILocation(line: 189, column: 7, scope: !276)
!278 = !DILocation(line: 0, scope: !268)
!279 = !DILocation(line: 190, column: 22, scope: !280)
!280 = distinct !DILexicalBlock(scope: !195, file: !1, line: 190, column: 18)
!281 = !DILocation(line: 190, column: 26, scope: !280)
!282 = !DILocation(line: 190, column: 18, scope: !195)
!283 = !DILocation(line: 191, column: 18, scope: !280)
!284 = !DILocation(line: 191, column: 24, scope: !280)
!285 = !DILocation(line: 192, column: 32, scope: !195)
!286 = !DILocation(line: 192, column: 21, scope: !195)
!287 = !DILocation(line: 196, column: 6, scope: !288)
!288 = distinct !DILexicalBlock(scope: !17, file: !1, line: 196, column: 5)
!289 = !DILocation(line: 196, column: 11, scope: !288)
!290 = !DILocation(line: 196, column: 13, scope: !288)
!291 = !DILocation(line: 196, column: 22, scope: !288)
!292 = !DILocation(line: 196, column: 24, scope: !288)
!293 = !DILocation(line: 196, column: 5, scope: !17)
!294 = !DILocation(line: 198, column: 10, scope: !295)
!295 = distinct !DILexicalBlock(scope: !288, file: !1, line: 196, column: 35)
!296 = !DILocation(line: 198, column: 15, scope: !295)
!297 = !DILocation(line: 199, column: 10, scope: !295)
!298 = !DILocation(line: 199, column: 15, scope: !295)
!299 = !DILocation(line: 200, column: 10, scope: !295)
!300 = !DILocation(line: 200, column: 14, scope: !295)
!301 = !DILocation(line: 201, column: 10, scope: !295)
!302 = !DILocation(line: 201, column: 15, scope: !295)
!303 = !DILocation(line: 202, column: 10, scope: !295)
!304 = !DILocation(line: 202, column: 15, scope: !295)
!305 = !DILocation(line: 203, column: 10, scope: !295)
!306 = !DILocation(line: 203, column: 17, scope: !295)
!307 = !DILocation(line: 204, column: 10, scope: !308)
!308 = distinct !DILexicalBlock(scope: !295, file: !1, line: 204, column: 10)
!309 = !DILocation(line: 204, column: 23, scope: !308)
!310 = !DILocation(line: 204, column: 10, scope: !295)
!311 = !DILocation(line: 205, column: 10, scope: !308)
!312 = !DILocation(line: 206, column: 16, scope: !313)
!313 = distinct !DILexicalBlock(scope: !308, file: !1, line: 206, column: 15)
!314 = !DILocation(line: 206, column: 15, scope: !308)
!315 = !DILocation(line: 207, column: 8, scope: !316)
!316 = distinct !DILexicalBlock(scope: !313, file: !1, line: 206, column: 31)
!317 = !DILocation(line: 208, column: 6, scope: !316)
!318 = !DILocation(line: 0, scope: !308)
!319 = !DILocation(line: 209, column: 14, scope: !320)
!320 = distinct !DILexicalBlock(scope: !295, file: !1, line: 209, column: 10)
!321 = !DILocation(line: 209, column: 18, scope: !320)
!322 = !DILocation(line: 209, column: 10, scope: !295)
!323 = !DILocation(line: 210, column: 10, scope: !320)
!324 = !DILocation(line: 210, column: 16, scope: !320)
!325 = !DILocation(line: 211, column: 24, scope: !295)
!326 = !DILocation(line: 211, column: 13, scope: !295)
!327 = !DILocation(line: 215, column: 1, scope: !17)
