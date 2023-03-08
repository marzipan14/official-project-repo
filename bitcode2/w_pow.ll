; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_pow.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_pow.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @pow(double, double) local_unnamed_addr #0 !dbg !17 {
  %3 = alloca %struct.exception, align 8
  %4 = bitcast %struct.exception* %3 to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #4, !dbg !38
  %5 = tail call double @__ieee754_pow(double %0, double %1) #5, !dbg !39
  %6 = load i32, i32* @__fdlib_version, align 4, !dbg !41, !tbaa !43
  %7 = icmp eq i32 %6, -1, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %7, label %212, label %8, !dbg !47

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @__fpclassifyd(double %1) #5, !dbg !48
  %10 = icmp eq i32 %9, 0, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br i1 %10, label %212, label %11, !dbg !49

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @__fpclassifyd(double %0) #5, !dbg !50
  %13 = icmp eq i32 %12, 0, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  br i1 %13, label %14, label %38, !dbg !52

; <label>:14:                                     ; preds = %11
  %15 = fcmp oeq double %1, 0.000000e+00, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  br i1 %15, label %16, label %212, !dbg !56

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  br i1 %27, label %28, label %31, !dbg !88

; <label>:28:                                     ; preds = %25
  %29 = call i32* @__errno() #5, !dbg !89
  store i32 33, i32* %29, align 4, !dbg !91, !tbaa !92
  br label %30, !dbg !93

; <label>:30:                                     ; preds = %24, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  br label %31, !dbg !95

; <label>:31:                                     ; preds = %30, %25
  %32 = load i32, i32* %19, align 8, !dbg !95, !tbaa !70
  %33 = icmp eq i32 %32, 0, !dbg !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  br i1 %33, label %36, label %34, !dbg !98

; <label>:34:                                     ; preds = %31
  %35 = call i32* @__errno() #5, !dbg !99
  store i32 %32, i32* %35, align 4, !dbg !100, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  br label %36, !dbg !99

; <label>:36:                                     ; preds = %31, %34
  %37 = load double, double* %22, align 8, !dbg !101, !tbaa !79
  br label %212, !dbg !102

; <label>:38:                                     ; preds = %11
  %39 = fcmp oeq double %0, 0.000000e+00, !dbg !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !105
  br i1 %39, label %40, label %98, !dbg !105

; <label>:40:                                     ; preds = %38
  %41 = fcmp oeq double %1, 0.000000e+00, !dbg !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !109
  br i1 %41, label %42, label %65, !dbg !109

; <label>:42:                                     ; preds = %40
  %43 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !110
  store i32 1, i32* %43, align 8, !dbg !112, !tbaa !60
  %44 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !113
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %44, align 8, !dbg !114, !tbaa !67
  %45 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !115
  store i32 0, i32* %45, align 8, !dbg !116, !tbaa !70
  %46 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !117
  store double %0, double* %46, align 8, !dbg !118, !tbaa !73
  %47 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !119
  store double %1, double* %47, align 8, !dbg !120, !tbaa !76
  %48 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !121
  store double 0.000000e+00, double* %48, align 8, !dbg !122, !tbaa !79
  %49 = load i32, i32* @__fdlib_version, align 4, !dbg !123, !tbaa !43
  %50 = icmp eq i32 %49, 0, !dbg !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !126
  br i1 %50, label %52, label %51, !dbg !126

; <label>:51:                                     ; preds = %42
  store double 1.000000e+00, double* %48, align 8, !dbg !127, !tbaa !79
  br label %57, !dbg !128

; <label>:52:                                     ; preds = %42
  %53 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !129
  %54 = icmp eq i32 %53, 0, !dbg !129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !131
  br i1 %54, label %55, label %58, !dbg !131

; <label>:55:                                     ; preds = %52
  %56 = call i32* @__errno() #5, !dbg !132
  store i32 33, i32* %56, align 4, !dbg !134, !tbaa !92
  br label %57, !dbg !135

; <label>:57:                                     ; preds = %51, %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  br label %58, !dbg !137

; <label>:58:                                     ; preds = %57, %52
  %59 = load i32, i32* %45, align 8, !dbg !137, !tbaa !70
  %60 = icmp eq i32 %59, 0, !dbg !139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !140
  br i1 %60, label %63, label %61, !dbg !140

; <label>:61:                                     ; preds = %58
  %62 = call i32* @__errno() #5, !dbg !141
  store i32 %59, i32* %62, align 4, !dbg !142, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !141
  br label %63, !dbg !141

; <label>:63:                                     ; preds = %58, %61
  %64 = load double, double* %48, align 8, !dbg !143, !tbaa !79
  br label %212, !dbg !144

; <label>:65:                                     ; preds = %40
  %66 = tail call i32 @finite(double %1) #5, !dbg !145
  %67 = icmp ne i32 %66, 0, !dbg !145
  %68 = fcmp olt double %1, 0.000000e+00, !dbg !147
  %69 = and i1 %68, %67, !dbg !148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !148
  br i1 %69, label %70, label %212, !dbg !148

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !149
  store i32 1, i32* %71, align 8, !dbg !151, !tbaa !60
  %72 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !152
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %72, align 8, !dbg !153, !tbaa !67
  %73 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !154
  store i32 0, i32* %73, align 8, !dbg !155, !tbaa !70
  %74 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !156
  store double %0, double* %74, align 8, !dbg !157, !tbaa !73
  %75 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !158
  store double %1, double* %75, align 8, !dbg !159, !tbaa !76
  %76 = load i32, i32* @__fdlib_version, align 4, !dbg !160, !tbaa !43
  %77 = icmp eq i32 %76, 0, !dbg !162
  %78 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !164
  br i1 %77, label %79, label %80, !dbg !164

; <label>:79:                                     ; preds = %70
  store double 0.000000e+00, double* %78, align 8, !dbg !165, !tbaa !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !167
  br label %84, !dbg !167

; <label>:80:                                     ; preds = %70
  store double 0xFFF0000000000000, double* %78, align 8, !dbg !168, !tbaa !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %81 = icmp eq i32 %76, 2, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !167
  br i1 %81, label %82, label %84, !dbg !167

; <label>:82:                                     ; preds = %80
  %83 = tail call i32* @__errno() #5, !dbg !171
  br label %89, !dbg !171

; <label>:84:                                     ; preds = %79, %80
  %85 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !172
  %86 = icmp eq i32 %85, 0, !dbg !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !174
  br i1 %86, label %87, label %91, !dbg !174

; <label>:87:                                     ; preds = %84
  %88 = call i32* @__errno() #5, !dbg !175
  br label %89, !dbg !177

; <label>:89:                                     ; preds = %82, %87
  %90 = phi i32* [ %88, %87 ], [ %83, %82 ]
  store i32 33, i32* %90, align 4, !dbg !178, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !178
  br label %91, !dbg !179

; <label>:91:                                     ; preds = %89, %84
  %92 = load i32, i32* %73, align 8, !dbg !179, !tbaa !70
  %93 = icmp eq i32 %92, 0, !dbg !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !182
  br i1 %93, label %96, label %94, !dbg !182

; <label>:94:                                     ; preds = %91
  %95 = call i32* @__errno() #5, !dbg !183
  store i32 %92, i32* %95, align 4, !dbg !184, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !183
  br label %96, !dbg !183

; <label>:96:                                     ; preds = %91, %94
  %97 = load double, double* %78, align 8, !dbg !185, !tbaa !79
  br label %212, !dbg !186

; <label>:98:                                     ; preds = %38
  %99 = tail call i32 @finite(double %5) #5, !dbg !187
  %100 = icmp eq i32 %99, 0, !dbg !187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !189
  br i1 %100, label %101, label %179, !dbg !189

; <label>:101:                                    ; preds = %98
  %102 = tail call i32 @finite(double %0) #5, !dbg !190
  %103 = icmp eq i32 %102, 0, !dbg !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !193
  br i1 %103, label %179, label %104, !dbg !193

; <label>:104:                                    ; preds = %101
  %105 = tail call i32 @finite(double %1) #5, !dbg !194
  %106 = icmp eq i32 %105, 0, !dbg !194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !195
  br i1 %106, label %179, label %107, !dbg !195

; <label>:107:                                    ; preds = %104
  %108 = tail call i32 @__fpclassifyd(double %5) #5, !dbg !196
  %109 = icmp eq i32 %108, 0, !dbg !196
  %110 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  br i1 %109, label %111, label %138, !dbg !201

; <label>:111:                                    ; preds = %107
  store i32 1, i32* %110, align 8, !dbg !202, !tbaa !60
  %112 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !204
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %112, align 8, !dbg !205, !tbaa !67
  %113 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !206
  store i32 0, i32* %113, align 8, !dbg !207, !tbaa !70
  %114 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !208
  store double %0, double* %114, align 8, !dbg !209, !tbaa !73
  %115 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !210
  store double %1, double* %115, align 8, !dbg !211, !tbaa !76
  %116 = load i32, i32* @__fdlib_version, align 4, !dbg !212, !tbaa !43
  %117 = icmp eq i32 %116, 0, !dbg !214
  %118 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !216
  br i1 %117, label %119, label %120, !dbg !216

; <label>:119:                                    ; preds = %111
  store double 0.000000e+00, double* %118, align 8, !dbg !217, !tbaa !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !219
  br label %124, !dbg !219

; <label>:120:                                    ; preds = %111
  store double 0x7FF8000000000000, double* %118, align 8, !dbg !220, !tbaa !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %121 = icmp eq i32 %116, 2, !dbg !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !219
  br i1 %121, label %122, label %124, !dbg !219

; <label>:122:                                    ; preds = %120
  %123 = tail call i32* @__errno() #5, !dbg !223
  br label %129, !dbg !223

; <label>:124:                                    ; preds = %119, %120
  %125 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !224
  %126 = icmp eq i32 %125, 0, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !226
  br i1 %126, label %127, label %131, !dbg !226

; <label>:127:                                    ; preds = %124
  %128 = call i32* @__errno() #5, !dbg !227
  br label %129, !dbg !229

; <label>:129:                                    ; preds = %122, %127
  %130 = phi i32* [ %128, %127 ], [ %123, %122 ]
  store i32 33, i32* %130, align 4, !dbg !230, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !230
  br label %131, !dbg !231

; <label>:131:                                    ; preds = %129, %124
  %132 = load i32, i32* %113, align 8, !dbg !231, !tbaa !70
  %133 = icmp eq i32 %132, 0, !dbg !233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  br i1 %133, label %136, label %134, !dbg !234

; <label>:134:                                    ; preds = %131
  %135 = call i32* @__errno() #5, !dbg !235
  store i32 %132, i32* %135, align 4, !dbg !236, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !235
  br label %136, !dbg !235

; <label>:136:                                    ; preds = %131, %134
  %137 = load double, double* %118, align 8, !dbg !237, !tbaa !79
  br label %212, !dbg !238

; <label>:138:                                    ; preds = %107
  store i32 3, i32* %110, align 8, !dbg !239, !tbaa !60
  %139 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !240
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %139, align 8, !dbg !241, !tbaa !67
  %140 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !242
  store i32 0, i32* %140, align 8, !dbg !243, !tbaa !70
  %141 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !244
  store double %0, double* %141, align 8, !dbg !245, !tbaa !73
  %142 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !246
  store double %1, double* %142, align 8, !dbg !247, !tbaa !76
  %143 = load i32, i32* @__fdlib_version, align 4, !dbg !248, !tbaa !43
  %144 = icmp eq i32 %143, 0, !dbg !250
  %145 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !253
  br i1 %144, label %146, label %153, !dbg !253

; <label>:146:                                    ; preds = %138
  store double 0x47EFFFFFE0000000, double* %145, align 8, !dbg !254, !tbaa !79
  %147 = fmul double %1, 5.000000e-01, !dbg !256
  %148 = fcmp olt double %0, 0.000000e+00, !dbg !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  br i1 %148, label %149, label %160, !dbg !259

; <label>:149:                                    ; preds = %146
  %150 = tail call double @rint(double %147) #5, !dbg !260
  %151 = fcmp une double %150, %147, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br i1 %151, label %152, label %160, !dbg !262

; <label>:152:                                    ; preds = %149
  store double 0xC7EFFFFFE0000000, double* %145, align 8, !dbg !263, !tbaa !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  br label %160, !dbg !264

; <label>:153:                                    ; preds = %138
  store double 0x7FF0000000000000, double* %145, align 8, !dbg !265, !tbaa !79
  %154 = fmul double %1, 5.000000e-01, !dbg !266
  %155 = fcmp olt double %0, 0.000000e+00, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  br i1 %155, label %156, label %160, !dbg !269

; <label>:156:                                    ; preds = %153
  %157 = tail call double @rint(double %154) #5, !dbg !270
  %158 = fcmp une double %157, %154, !dbg !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  br i1 %158, label %159, label %160, !dbg !272

; <label>:159:                                    ; preds = %156
  store double 0xFFF0000000000000, double* %145, align 8, !dbg !273, !tbaa !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !274
  br label %160, !dbg !274

; <label>:160:                                    ; preds = %153, %156, %159, %146, %149, %152
  %161 = load i32, i32* @__fdlib_version, align 4, !dbg !275, !tbaa !43
  %162 = icmp eq i32 %161, 2, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  br i1 %162, label %163, label %165, !dbg !278

; <label>:163:                                    ; preds = %160
  %164 = tail call i32* @__errno() #5, !dbg !279
  br label %170, !dbg !279

; <label>:165:                                    ; preds = %160
  %166 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !280
  %167 = icmp eq i32 %166, 0, !dbg !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  br i1 %167, label %168, label %172, !dbg !282

; <label>:168:                                    ; preds = %165
  %169 = call i32* @__errno() #5, !dbg !283
  br label %170, !dbg !285

; <label>:170:                                    ; preds = %163, %168
  %171 = phi i32* [ %169, %168 ], [ %164, %163 ]
  store i32 34, i32* %171, align 4, !dbg !286, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  br label %172, !dbg !287

; <label>:172:                                    ; preds = %170, %165
  %173 = load i32, i32* %140, align 8, !dbg !287, !tbaa !70
  %174 = icmp eq i32 %173, 0, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  br i1 %174, label %177, label %175, !dbg !290

; <label>:175:                                    ; preds = %172
  %176 = call i32* @__errno() #5, !dbg !291
  store i32 %173, i32* %176, align 4, !dbg !292, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  br label %177, !dbg !291

; <label>:177:                                    ; preds = %172, %175
  %178 = load double, double* %145, align 8, !dbg !293, !tbaa !79
  br label %212, !dbg !294

; <label>:179:                                    ; preds = %104, %101, %98
  %180 = fcmp oeq double %5, 0.000000e+00, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !297
  br i1 %180, label %181, label %212, !dbg !297

; <label>:181:                                    ; preds = %179
  %182 = tail call i32 @finite(double %0) #5, !dbg !298
  %183 = icmp eq i32 %182, 0, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  br i1 %183, label %212, label %184, !dbg !299

; <label>:184:                                    ; preds = %181
  %185 = tail call i32 @finite(double %1) #5, !dbg !300
  %186 = icmp eq i32 %185, 0, !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br i1 %186, label %212, label %187, !dbg !301

; <label>:187:                                    ; preds = %184
  %188 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !302
  store i32 4, i32* %188, align 8, !dbg !304, !tbaa !60
  %189 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !305
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %189, align 8, !dbg !306, !tbaa !67
  %190 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !307
  store i32 0, i32* %190, align 8, !dbg !308, !tbaa !70
  %191 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !309
  store double %0, double* %191, align 8, !dbg !310, !tbaa !73
  %192 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !311
  store double %1, double* %192, align 8, !dbg !312, !tbaa !76
  %193 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !313
  store double 0.000000e+00, double* %193, align 8, !dbg !314, !tbaa !79
  %194 = load i32, i32* @__fdlib_version, align 4, !dbg !315, !tbaa !43
  %195 = icmp eq i32 %194, 2, !dbg !317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  br i1 %195, label %196, label %198, !dbg !318

; <label>:196:                                    ; preds = %187
  %197 = tail call i32* @__errno() #5, !dbg !319
  br label %203, !dbg !319

; <label>:198:                                    ; preds = %187
  %199 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !320
  %200 = icmp eq i32 %199, 0, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  br i1 %200, label %201, label %205, !dbg !322

; <label>:201:                                    ; preds = %198
  %202 = call i32* @__errno() #5, !dbg !323
  br label %203, !dbg !325

; <label>:203:                                    ; preds = %196, %201
  %204 = phi i32* [ %202, %201 ], [ %197, %196 ]
  store i32 34, i32* %204, align 4, !dbg !326, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  br label %205, !dbg !327

; <label>:205:                                    ; preds = %203, %198
  %206 = load i32, i32* %190, align 8, !dbg !327, !tbaa !70
  %207 = icmp eq i32 %206, 0, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  br i1 %207, label %210, label %208, !dbg !330

; <label>:208:                                    ; preds = %205
  %209 = call i32* @__errno() #5, !dbg !331
  store i32 %206, i32* %209, align 4, !dbg !332, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  br label %210, !dbg !331

; <label>:210:                                    ; preds = %205, %208
  %211 = load double, double* %193, align 8, !dbg !333, !tbaa !79
  br label %212, !dbg !334

; <label>:212:                                    ; preds = %179, %181, %184, %65, %14, %2, %8, %210, %177, %136, %96, %63, %36
  %213 = phi double [ %37, %36 ], [ %64, %63 ], [ %97, %96 ], [ %211, %210 ], [ %137, %136 ], [ %178, %177 ], [ %5, %8 ], [ %5, %2 ], [ %5, %14 ], [ %5, %65 ], [ %5, %184 ], [ %5, %181 ], [ %5, %179 ], !dbg !199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  ret double %213, !dbg !336
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
!94 = !DILocation(line: 0, scope: !81)
!95 = !DILocation(line: 102, column: 18, scope: !96)
!96 = distinct !DILexicalBlock(scope: !58, file: !1, line: 102, column: 14)
!97 = !DILocation(line: 102, column: 22, scope: !96)
!98 = !DILocation(line: 102, column: 14, scope: !58)
!99 = !DILocation(line: 103, column: 13, scope: !96)
!100 = !DILocation(line: 103, column: 19, scope: !96)
!101 = !DILocation(line: 104, column: 28, scope: !58)
!102 = !DILocation(line: 104, column: 17, scope: !58)
!103 = !DILocation(line: 108, column: 6, scope: !104)
!104 = distinct !DILexicalBlock(scope: !17, file: !1, line: 108, column: 5)
!105 = !DILocation(line: 108, column: 5, scope: !17)
!106 = !DILocation(line: 109, column: 10, scope: !107)
!107 = distinct !DILexicalBlock(scope: !108, file: !1, line: 109, column: 9)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 108, column: 12)
!109 = !DILocation(line: 109, column: 9, scope: !108)
!110 = !DILocation(line: 112, column: 7, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !1, line: 109, column: 17)
!112 = !DILocation(line: 112, column: 12, scope: !111)
!113 = !DILocation(line: 113, column: 7, scope: !111)
!114 = !DILocation(line: 113, column: 12, scope: !111)
!115 = !DILocation(line: 114, column: 7, scope: !111)
!116 = !DILocation(line: 114, column: 11, scope: !111)
!117 = !DILocation(line: 115, column: 7, scope: !111)
!118 = !DILocation(line: 115, column: 12, scope: !111)
!119 = !DILocation(line: 116, column: 7, scope: !111)
!120 = !DILocation(line: 116, column: 12, scope: !111)
!121 = !DILocation(line: 117, column: 7, scope: !111)
!122 = !DILocation(line: 117, column: 14, scope: !111)
!123 = !DILocation(line: 118, column: 7, scope: !124)
!124 = distinct !DILexicalBlock(scope: !111, file: !1, line: 118, column: 7)
!125 = !DILocation(line: 118, column: 20, scope: !124)
!126 = !DILocation(line: 118, column: 7, scope: !111)
!127 = !DILocation(line: 118, column: 42, scope: !124)
!128 = !DILocation(line: 118, column: 31, scope: !124)
!129 = !DILocation(line: 119, column: 13, scope: !130)
!130 = distinct !DILexicalBlock(scope: !124, file: !1, line: 119, column: 12)
!131 = !DILocation(line: 119, column: 12, scope: !124)
!132 = !DILocation(line: 120, column: 4, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !1, line: 119, column: 28)
!134 = !DILocation(line: 120, column: 10, scope: !133)
!135 = !DILocation(line: 121, column: 3, scope: !133)
!136 = !DILocation(line: 0, scope: !124)
!137 = !DILocation(line: 122, column: 18, scope: !138)
!138 = distinct !DILexicalBlock(scope: !111, file: !1, line: 122, column: 14)
!139 = !DILocation(line: 122, column: 22, scope: !138)
!140 = !DILocation(line: 122, column: 14, scope: !111)
!141 = !DILocation(line: 123, column: 13, scope: !138)
!142 = !DILocation(line: 123, column: 19, scope: !138)
!143 = !DILocation(line: 124, column: 28, scope: !111)
!144 = !DILocation(line: 124, column: 17, scope: !111)
!145 = !DILocation(line: 126, column: 16, scope: !146)
!146 = distinct !DILexicalBlock(scope: !108, file: !1, line: 126, column: 16)
!147 = !DILocation(line: 126, column: 28, scope: !146)
!148 = !DILocation(line: 126, column: 25, scope: !146)
!149 = !DILocation(line: 128, column: 7, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !1, line: 126, column: 34)
!151 = !DILocation(line: 128, column: 12, scope: !150)
!152 = !DILocation(line: 129, column: 7, scope: !150)
!153 = !DILocation(line: 129, column: 12, scope: !150)
!154 = !DILocation(line: 130, column: 7, scope: !150)
!155 = !DILocation(line: 130, column: 11, scope: !150)
!156 = !DILocation(line: 131, column: 7, scope: !150)
!157 = !DILocation(line: 131, column: 12, scope: !150)
!158 = !DILocation(line: 132, column: 7, scope: !150)
!159 = !DILocation(line: 132, column: 12, scope: !150)
!160 = !DILocation(line: 133, column: 7, scope: !161)
!161 = distinct !DILexicalBlock(scope: !150, file: !1, line: 133, column: 7)
!162 = !DILocation(line: 133, column: 20, scope: !161)
!163 = !DILocation(line: 0, scope: !161)
!164 = !DILocation(line: 133, column: 7, scope: !150)
!165 = !DILocation(line: 134, column: 16, scope: !161)
!166 = !DILocation(line: 134, column: 5, scope: !161)
!167 = !DILocation(line: 137, column: 7, scope: !150)
!168 = !DILocation(line: 136, column: 16, scope: !161)
!169 = !DILocation(line: 137, column: 20, scope: !170)
!170 = distinct !DILexicalBlock(scope: !150, file: !1, line: 137, column: 7)
!171 = !DILocation(line: 138, column: 5, scope: !170)
!172 = !DILocation(line: 139, column: 13, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !1, line: 139, column: 12)
!174 = !DILocation(line: 139, column: 12, scope: !170)
!175 = !DILocation(line: 140, column: 5, scope: !176)
!176 = distinct !DILexicalBlock(scope: !173, file: !1, line: 139, column: 28)
!177 = !DILocation(line: 141, column: 3, scope: !176)
!178 = !DILocation(line: 0, scope: !170)
!179 = !DILocation(line: 142, column: 18, scope: !180)
!180 = distinct !DILexicalBlock(scope: !150, file: !1, line: 142, column: 14)
!181 = !DILocation(line: 142, column: 22, scope: !180)
!182 = !DILocation(line: 142, column: 14, scope: !150)
!183 = !DILocation(line: 143, column: 13, scope: !180)
!184 = !DILocation(line: 143, column: 19, scope: !180)
!185 = !DILocation(line: 144, column: 28, scope: !150)
!186 = !DILocation(line: 144, column: 17, scope: !150)
!187 = !DILocation(line: 148, column: 6, scope: !188)
!188 = distinct !DILexicalBlock(scope: !17, file: !1, line: 148, column: 5)
!189 = !DILocation(line: 148, column: 5, scope: !17)
!190 = !DILocation(line: 149, column: 9, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 149, column: 9)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 148, column: 17)
!193 = !DILocation(line: 149, column: 18, scope: !191)
!194 = !DILocation(line: 149, column: 20, scope: !191)
!195 = !DILocation(line: 149, column: 9, scope: !192)
!196 = !DILocation(line: 150, column: 13, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !1, line: 150, column: 13)
!198 = distinct !DILexicalBlock(scope: !191, file: !1, line: 149, column: 31)
!199 = !DILocation(line: 0, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !1, line: 169, column: 17)
!201 = !DILocation(line: 150, column: 13, scope: !198)
!202 = !DILocation(line: 152, column: 16, scope: !203)
!203 = distinct !DILexicalBlock(scope: !197, file: !1, line: 150, column: 23)
!204 = !DILocation(line: 153, column: 11, scope: !203)
!205 = !DILocation(line: 153, column: 16, scope: !203)
!206 = !DILocation(line: 154, column: 11, scope: !203)
!207 = !DILocation(line: 154, column: 15, scope: !203)
!208 = !DILocation(line: 155, column: 11, scope: !203)
!209 = !DILocation(line: 155, column: 16, scope: !203)
!210 = !DILocation(line: 156, column: 11, scope: !203)
!211 = !DILocation(line: 156, column: 16, scope: !203)
!212 = !DILocation(line: 157, column: 11, scope: !213)
!213 = distinct !DILexicalBlock(scope: !203, file: !1, line: 157, column: 11)
!214 = !DILocation(line: 157, column: 24, scope: !213)
!215 = !DILocation(line: 0, scope: !213)
!216 = !DILocation(line: 157, column: 11, scope: !203)
!217 = !DILocation(line: 158, column: 22, scope: !213)
!218 = !DILocation(line: 158, column: 11, scope: !213)
!219 = !DILocation(line: 161, column: 11, scope: !203)
!220 = !DILocation(line: 160, column: 22, scope: !213)
!221 = !DILocation(line: 161, column: 24, scope: !222)
!222 = distinct !DILexicalBlock(scope: !203, file: !1, line: 161, column: 11)
!223 = !DILocation(line: 162, column: 11, scope: !222)
!224 = !DILocation(line: 163, column: 17, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !1, line: 163, column: 16)
!226 = !DILocation(line: 163, column: 16, scope: !222)
!227 = !DILocation(line: 164, column: 11, scope: !228)
!228 = distinct !DILexicalBlock(scope: !225, file: !1, line: 163, column: 32)
!229 = !DILocation(line: 165, column: 7, scope: !228)
!230 = !DILocation(line: 0, scope: !222)
!231 = !DILocation(line: 166, column: 22, scope: !232)
!232 = distinct !DILexicalBlock(scope: !203, file: !1, line: 166, column: 18)
!233 = !DILocation(line: 166, column: 26, scope: !232)
!234 = !DILocation(line: 166, column: 18, scope: !203)
!235 = !DILocation(line: 167, column: 18, scope: !232)
!236 = !DILocation(line: 167, column: 24, scope: !232)
!237 = !DILocation(line: 168, column: 32, scope: !203)
!238 = !DILocation(line: 168, column: 21, scope: !203)
!239 = !DILocation(line: 171, column: 16, scope: !200)
!240 = !DILocation(line: 172, column: 11, scope: !200)
!241 = !DILocation(line: 172, column: 16, scope: !200)
!242 = !DILocation(line: 173, column: 11, scope: !200)
!243 = !DILocation(line: 173, column: 15, scope: !200)
!244 = !DILocation(line: 174, column: 11, scope: !200)
!245 = !DILocation(line: 174, column: 16, scope: !200)
!246 = !DILocation(line: 175, column: 11, scope: !200)
!247 = !DILocation(line: 175, column: 16, scope: !200)
!248 = !DILocation(line: 176, column: 11, scope: !249)
!249 = distinct !DILexicalBlock(scope: !200, file: !1, line: 176, column: 11)
!250 = !DILocation(line: 176, column: 24, scope: !249)
!251 = !DILocation(line: 0, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !1, line: 180, column: 14)
!253 = !DILocation(line: 176, column: 11, scope: !200)
!254 = !DILocation(line: 177, column: 21, scope: !255)
!255 = distinct !DILexicalBlock(scope: !249, file: !1, line: 176, column: 35)
!256 = !DILocation(line: 178, column: 12, scope: !255)
!257 = !DILocation(line: 179, column: 14, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !1, line: 179, column: 13)
!259 = !DILocation(line: 179, column: 18, scope: !258)
!260 = !DILocation(line: 179, column: 20, scope: !258)
!261 = !DILocation(line: 179, column: 27, scope: !258)
!262 = !DILocation(line: 179, column: 13, scope: !255)
!263 = !DILocation(line: 179, column: 43, scope: !258)
!264 = !DILocation(line: 179, column: 32, scope: !258)
!265 = !DILocation(line: 181, column: 21, scope: !252)
!266 = !DILocation(line: 182, column: 26, scope: !252)
!267 = !DILocation(line: 183, column: 14, scope: !268)
!268 = distinct !DILexicalBlock(scope: !252, file: !1, line: 183, column: 13)
!269 = !DILocation(line: 183, column: 18, scope: !268)
!270 = !DILocation(line: 183, column: 20, scope: !268)
!271 = !DILocation(line: 183, column: 27, scope: !268)
!272 = !DILocation(line: 183, column: 13, scope: !252)
!273 = !DILocation(line: 183, column: 43, scope: !268)
!274 = !DILocation(line: 183, column: 32, scope: !268)
!275 = !DILocation(line: 185, column: 11, scope: !276)
!276 = distinct !DILexicalBlock(scope: !200, file: !1, line: 185, column: 11)
!277 = !DILocation(line: 185, column: 24, scope: !276)
!278 = !DILocation(line: 185, column: 11, scope: !200)
!279 = !DILocation(line: 186, column: 11, scope: !276)
!280 = !DILocation(line: 187, column: 17, scope: !281)
!281 = distinct !DILexicalBlock(scope: !276, file: !1, line: 187, column: 16)
!282 = !DILocation(line: 187, column: 16, scope: !276)
!283 = !DILocation(line: 188, column: 4, scope: !284)
!284 = distinct !DILexicalBlock(scope: !281, file: !1, line: 187, column: 32)
!285 = !DILocation(line: 189, column: 7, scope: !284)
!286 = !DILocation(line: 0, scope: !276)
!287 = !DILocation(line: 190, column: 22, scope: !288)
!288 = distinct !DILexicalBlock(scope: !200, file: !1, line: 190, column: 18)
!289 = !DILocation(line: 190, column: 26, scope: !288)
!290 = !DILocation(line: 190, column: 18, scope: !200)
!291 = !DILocation(line: 191, column: 18, scope: !288)
!292 = !DILocation(line: 191, column: 24, scope: !288)
!293 = !DILocation(line: 192, column: 32, scope: !200)
!294 = !DILocation(line: 192, column: 21, scope: !200)
!295 = !DILocation(line: 196, column: 6, scope: !296)
!296 = distinct !DILexicalBlock(scope: !17, file: !1, line: 196, column: 5)
!297 = !DILocation(line: 196, column: 11, scope: !296)
!298 = !DILocation(line: 196, column: 13, scope: !296)
!299 = !DILocation(line: 196, column: 22, scope: !296)
!300 = !DILocation(line: 196, column: 24, scope: !296)
!301 = !DILocation(line: 196, column: 5, scope: !17)
!302 = !DILocation(line: 198, column: 10, scope: !303)
!303 = distinct !DILexicalBlock(scope: !296, file: !1, line: 196, column: 35)
!304 = !DILocation(line: 198, column: 15, scope: !303)
!305 = !DILocation(line: 199, column: 10, scope: !303)
!306 = !DILocation(line: 199, column: 15, scope: !303)
!307 = !DILocation(line: 200, column: 10, scope: !303)
!308 = !DILocation(line: 200, column: 14, scope: !303)
!309 = !DILocation(line: 201, column: 10, scope: !303)
!310 = !DILocation(line: 201, column: 15, scope: !303)
!311 = !DILocation(line: 202, column: 10, scope: !303)
!312 = !DILocation(line: 202, column: 15, scope: !303)
!313 = !DILocation(line: 203, column: 10, scope: !303)
!314 = !DILocation(line: 203, column: 17, scope: !303)
!315 = !DILocation(line: 204, column: 10, scope: !316)
!316 = distinct !DILexicalBlock(scope: !303, file: !1, line: 204, column: 10)
!317 = !DILocation(line: 204, column: 23, scope: !316)
!318 = !DILocation(line: 204, column: 10, scope: !303)
!319 = !DILocation(line: 205, column: 10, scope: !316)
!320 = !DILocation(line: 206, column: 16, scope: !321)
!321 = distinct !DILexicalBlock(scope: !316, file: !1, line: 206, column: 15)
!322 = !DILocation(line: 206, column: 15, scope: !316)
!323 = !DILocation(line: 207, column: 8, scope: !324)
!324 = distinct !DILexicalBlock(scope: !321, file: !1, line: 206, column: 31)
!325 = !DILocation(line: 208, column: 6, scope: !324)
!326 = !DILocation(line: 0, scope: !316)
!327 = !DILocation(line: 209, column: 14, scope: !328)
!328 = distinct !DILexicalBlock(scope: !303, file: !1, line: 209, column: 10)
!329 = !DILocation(line: 209, column: 18, scope: !328)
!330 = !DILocation(line: 209, column: 10, scope: !303)
!331 = !DILocation(line: 210, column: 10, scope: !328)
!332 = !DILocation(line: 210, column: 16, scope: !328)
!333 = !DILocation(line: 211, column: 24, scope: !303)
!334 = !DILocation(line: 211, column: 13, scope: !303)
!335 = !DILocation(line: 0, scope: !42)
!336 = !DILocation(line: 215, column: 1, scope: !17)
