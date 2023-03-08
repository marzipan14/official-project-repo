; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_pow.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_pow.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"powf\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @powf(float, float) local_unnamed_addr #0 !dbg !18 {
  %3 = alloca %struct.exception, align 8
  %4 = bitcast %struct.exception* %3 to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #4, !dbg !38
  %5 = tail call float @__ieee754_powf(float %0, float %1) #5, !dbg !39
  %6 = load i32, i32* @__fdlib_version, align 4, !dbg !41, !tbaa !43
  %7 = icmp eq i32 %6, -1, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %7, label %238, label %8, !dbg !47

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @__fpclassifyf(float %1) #5, !dbg !48
  %10 = icmp eq i32 %9, 0, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br i1 %10, label %238, label %11, !dbg !49

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @__fpclassifyf(float %0) #5, !dbg !50
  %13 = icmp eq i32 %12, 0, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  br i1 %13, label %14, label %42, !dbg !52

; <label>:14:                                     ; preds = %11
  %15 = fcmp oeq float %1, 0.000000e+00, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  br i1 %15, label %16, label %238, !dbg !56

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !57
  store i32 1, i32* %17, align 8, !dbg !59, !tbaa !60
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !65
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %18, align 8, !dbg !66, !tbaa !67
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !68
  store i32 0, i32* %19, align 8, !dbg !69, !tbaa !70
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !71
  %21 = insertelement <2 x float> undef, float %0, i32 0, !dbg !72
  %22 = insertelement <2 x float> %21, float %1, i32 1, !dbg !72
  %23 = fpext <2 x float> %22 to <2 x double>, !dbg !72
  %24 = bitcast double* %20 to <2 x double>*, !dbg !73
  store <2 x double> %23, <2 x double>* %24, align 8, !dbg !73, !tbaa !74
  %25 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !75
  store double 1.000000e+00, double* %25, align 8, !dbg !76, !tbaa !77
  %26 = load i32, i32* @__fdlib_version, align 4, !dbg !78, !tbaa !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  switch i32 %26, label %28 [
    i32 -1, label %27
    i32 2, label %27
  ], !dbg !80

; <label>:27:                                     ; preds = %16, %16
  store double 1.000000e+00, double* %25, align 8, !dbg !81, !tbaa !77
  br label %33, !dbg !82

; <label>:28:                                     ; preds = %16
  %29 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !84
  %30 = icmp eq i32 %29, 0, !dbg !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  br i1 %30, label %31, label %34, !dbg !86

; <label>:31:                                     ; preds = %28
  %32 = call i32* @__errno() #5, !dbg !87
  store i32 33, i32* %32, align 4, !dbg !89, !tbaa !90
  br label %33, !dbg !91

; <label>:33:                                     ; preds = %27, %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  br label %34, !dbg !93

; <label>:34:                                     ; preds = %33, %28
  %35 = load i32, i32* %19, align 8, !dbg !93, !tbaa !70
  %36 = icmp eq i32 %35, 0, !dbg !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br i1 %36, label %39, label %37, !dbg !96

; <label>:37:                                     ; preds = %34
  %38 = call i32* @__errno() #5, !dbg !97
  store i32 %35, i32* %38, align 4, !dbg !98, !tbaa !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  br label %39, !dbg !97

; <label>:39:                                     ; preds = %34, %37
  %40 = load double, double* %25, align 8, !dbg !99, !tbaa !77
  %41 = fptrunc double %40 to float, !dbg !100
  br label %238, !dbg !101

; <label>:42:                                     ; preds = %11
  %43 = fcmp oeq float %0, 0.000000e+00, !dbg !102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  br i1 %43, label %44, label %110, !dbg !104

; <label>:44:                                     ; preds = %42
  %45 = fcmp oeq float %1, 0.000000e+00, !dbg !105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  br i1 %45, label %46, label %73, !dbg !108

; <label>:46:                                     ; preds = %44
  %47 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !109
  store i32 1, i32* %47, align 8, !dbg !111, !tbaa !60
  %48 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !112
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %48, align 8, !dbg !113, !tbaa !67
  %49 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !114
  store i32 0, i32* %49, align 8, !dbg !115, !tbaa !70
  %50 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !116
  %51 = insertelement <2 x float> undef, float %0, i32 0, !dbg !117
  %52 = insertelement <2 x float> %51, float %1, i32 1, !dbg !117
  %53 = fpext <2 x float> %52 to <2 x double>, !dbg !117
  %54 = bitcast double* %50 to <2 x double>*, !dbg !118
  store <2 x double> %53, <2 x double>* %54, align 8, !dbg !118, !tbaa !74
  %55 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !119
  store double 0.000000e+00, double* %55, align 8, !dbg !120, !tbaa !77
  %56 = load i32, i32* @__fdlib_version, align 4, !dbg !121, !tbaa !43
  %57 = icmp eq i32 %56, 0, !dbg !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  br i1 %57, label %59, label %58, !dbg !124

; <label>:58:                                     ; preds = %46
  store double 1.000000e+00, double* %55, align 8, !dbg !125, !tbaa !77
  br label %64, !dbg !126

; <label>:59:                                     ; preds = %46
  %60 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !127
  %61 = icmp eq i32 %60, 0, !dbg !127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !129
  br i1 %61, label %62, label %65, !dbg !129

; <label>:62:                                     ; preds = %59
  %63 = call i32* @__errno() #5, !dbg !130
  store i32 33, i32* %63, align 4, !dbg !132, !tbaa !90
  br label %64, !dbg !133

; <label>:64:                                     ; preds = %58, %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !134
  br label %65, !dbg !135

; <label>:65:                                     ; preds = %64, %59
  %66 = load i32, i32* %49, align 8, !dbg !135, !tbaa !70
  %67 = icmp eq i32 %66, 0, !dbg !137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !138
  br i1 %67, label %70, label %68, !dbg !138

; <label>:68:                                     ; preds = %65
  %69 = call i32* @__errno() #5, !dbg !139
  store i32 %66, i32* %69, align 4, !dbg !140, !tbaa !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  br label %70, !dbg !139

; <label>:70:                                     ; preds = %65, %68
  %71 = load double, double* %55, align 8, !dbg !141, !tbaa !77
  %72 = fptrunc double %71 to float, !dbg !142
  br label %238, !dbg !143

; <label>:73:                                     ; preds = %44
  %74 = tail call i32 @finitef(float %1) #5, !dbg !144
  %75 = icmp ne i32 %74, 0, !dbg !144
  %76 = fcmp olt float %1, 0.000000e+00, !dbg !146
  %77 = and i1 %76, %75, !dbg !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !147
  br i1 %77, label %78, label %238, !dbg !147

; <label>:78:                                     ; preds = %73
  %79 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !148
  store i32 1, i32* %79, align 8, !dbg !150, !tbaa !60
  %80 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !151
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %80, align 8, !dbg !152, !tbaa !67
  %81 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !153
  store i32 0, i32* %81, align 8, !dbg !154, !tbaa !70
  %82 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !155
  %83 = insertelement <2 x float> undef, float %0, i32 0, !dbg !156
  %84 = insertelement <2 x float> %83, float %1, i32 1, !dbg !156
  %85 = fpext <2 x float> %84 to <2 x double>, !dbg !156
  %86 = bitcast double* %82 to <2 x double>*, !dbg !157
  store <2 x double> %85, <2 x double>* %86, align 8, !dbg !157, !tbaa !74
  %87 = load i32, i32* @__fdlib_version, align 4, !dbg !158, !tbaa !43
  %88 = icmp eq i32 %87, 0, !dbg !160
  %89 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !162
  br i1 %88, label %90, label %91, !dbg !162

; <label>:90:                                     ; preds = %78
  store double 0.000000e+00, double* %89, align 8, !dbg !163, !tbaa !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !165
  br label %95, !dbg !165

; <label>:91:                                     ; preds = %78
  store double 0xFFF0000000000000, double* %89, align 8, !dbg !166, !tbaa !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %92 = icmp eq i32 %87, 2, !dbg !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !165
  br i1 %92, label %93, label %95, !dbg !165

; <label>:93:                                     ; preds = %91
  %94 = tail call i32* @__errno() #5, !dbg !169
  br label %100, !dbg !169

; <label>:95:                                     ; preds = %90, %91
  %96 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !170
  %97 = icmp eq i32 %96, 0, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !172
  br i1 %97, label %98, label %102, !dbg !172

; <label>:98:                                     ; preds = %95
  %99 = call i32* @__errno() #5, !dbg !173
  br label %100, !dbg !175

; <label>:100:                                    ; preds = %93, %98
  %101 = phi i32* [ %99, %98 ], [ %94, %93 ]
  store i32 33, i32* %101, align 4, !dbg !176, !tbaa !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !176
  br label %102, !dbg !177

; <label>:102:                                    ; preds = %100, %95
  %103 = load i32, i32* %81, align 8, !dbg !177, !tbaa !70
  %104 = icmp eq i32 %103, 0, !dbg !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !180
  br i1 %104, label %107, label %105, !dbg !180

; <label>:105:                                    ; preds = %102
  %106 = call i32* @__errno() #5, !dbg !181
  store i32 %103, i32* %106, align 4, !dbg !182, !tbaa !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  br label %107, !dbg !181

; <label>:107:                                    ; preds = %102, %105
  %108 = load double, double* %89, align 8, !dbg !183, !tbaa !77
  %109 = fptrunc double %108 to float, !dbg !184
  br label %238, !dbg !185

; <label>:110:                                    ; preds = %42
  %111 = tail call i32 @finitef(float %5) #5, !dbg !186
  %112 = icmp eq i32 %111, 0, !dbg !186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !188
  br i1 %112, label %113, label %201, !dbg !188

; <label>:113:                                    ; preds = %110
  %114 = tail call i32 @finitef(float %0) #5, !dbg !189
  %115 = icmp eq i32 %114, 0, !dbg !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !192
  br i1 %115, label %201, label %116, !dbg !192

; <label>:116:                                    ; preds = %113
  %117 = tail call i32 @finitef(float %1) #5, !dbg !193
  %118 = icmp eq i32 %117, 0, !dbg !193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !194
  br i1 %118, label %201, label %119, !dbg !194

; <label>:119:                                    ; preds = %116
  %120 = tail call i32 @__fpclassifyf(float %5) #5, !dbg !195
  %121 = icmp eq i32 %120, 0, !dbg !195
  %122 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  br i1 %121, label %123, label %154, !dbg !200

; <label>:123:                                    ; preds = %119
  store i32 1, i32* %122, align 8, !dbg !201, !tbaa !60
  %124 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !203
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %124, align 8, !dbg !204, !tbaa !67
  %125 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !205
  store i32 0, i32* %125, align 8, !dbg !206, !tbaa !70
  %126 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !207
  %127 = insertelement <2 x float> undef, float %0, i32 0, !dbg !208
  %128 = insertelement <2 x float> %127, float %1, i32 1, !dbg !208
  %129 = fpext <2 x float> %128 to <2 x double>, !dbg !208
  %130 = bitcast double* %126 to <2 x double>*, !dbg !209
  store <2 x double> %129, <2 x double>* %130, align 8, !dbg !209, !tbaa !74
  %131 = load i32, i32* @__fdlib_version, align 4, !dbg !210, !tbaa !43
  %132 = icmp eq i32 %131, 0, !dbg !212
  %133 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  br i1 %132, label %134, label %135, !dbg !214

; <label>:134:                                    ; preds = %123
  store double 0.000000e+00, double* %133, align 8, !dbg !215, !tbaa !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  br label %139, !dbg !217

; <label>:135:                                    ; preds = %123
  store double 0x7FF8000000000000, double* %133, align 8, !dbg !218, !tbaa !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %136 = icmp eq i32 %131, 2, !dbg !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  br i1 %136, label %137, label %139, !dbg !217

; <label>:137:                                    ; preds = %135
  %138 = tail call i32* @__errno() #5, !dbg !221
  br label %144, !dbg !221

; <label>:139:                                    ; preds = %134, %135
  %140 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !222
  %141 = icmp eq i32 %140, 0, !dbg !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !224
  br i1 %141, label %142, label %146, !dbg !224

; <label>:142:                                    ; preds = %139
  %143 = call i32* @__errno() #5, !dbg !225
  br label %144, !dbg !227

; <label>:144:                                    ; preds = %137, %142
  %145 = phi i32* [ %143, %142 ], [ %138, %137 ]
  store i32 33, i32* %145, align 4, !dbg !228, !tbaa !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !228
  br label %146, !dbg !229

; <label>:146:                                    ; preds = %144, %139
  %147 = load i32, i32* %125, align 8, !dbg !229, !tbaa !70
  %148 = icmp eq i32 %147, 0, !dbg !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  br i1 %148, label %151, label %149, !dbg !232

; <label>:149:                                    ; preds = %146
  %150 = call i32* @__errno() #5, !dbg !233
  store i32 %147, i32* %150, align 4, !dbg !234, !tbaa !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !233
  br label %151, !dbg !233

; <label>:151:                                    ; preds = %146, %149
  %152 = load double, double* %133, align 8, !dbg !235, !tbaa !77
  %153 = fptrunc double %152 to float, !dbg !236
  br label %238, !dbg !237

; <label>:154:                                    ; preds = %119
  store i32 3, i32* %122, align 8, !dbg !238, !tbaa !60
  %155 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !239
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %155, align 8, !dbg !240, !tbaa !67
  %156 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !241
  store i32 0, i32* %156, align 8, !dbg !242, !tbaa !70
  %157 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !243
  %158 = insertelement <2 x float> undef, float %0, i32 0, !dbg !244
  %159 = insertelement <2 x float> %158, float %1, i32 1, !dbg !244
  %160 = fpext <2 x float> %159 to <2 x double>, !dbg !244
  %161 = bitcast double* %157 to <2 x double>*, !dbg !245
  store <2 x double> %160, <2 x double>* %161, align 8, !dbg !245, !tbaa !74
  %162 = load i32, i32* @__fdlib_version, align 4, !dbg !246, !tbaa !43
  %163 = icmp eq i32 %162, 0, !dbg !248
  %164 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !251
  br i1 %163, label %165, label %173, !dbg !251

; <label>:165:                                    ; preds = %154
  store double 0x47EFFFFFE0000000, double* %164, align 8, !dbg !252, !tbaa !77
  %166 = fcmp olt float %0, 0.000000e+00, !dbg !254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !256
  br i1 %166, label %167, label %181, !dbg !256

; <label>:167:                                    ; preds = %165
  %168 = fmul float %1, 5.000000e-01, !dbg !257
  %169 = fpext float %168 to double, !dbg !258
  %170 = tail call double @rint(double %169) #5, !dbg !259
  %171 = fcmp une double %170, %169, !dbg !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  br i1 %171, label %172, label %181, !dbg !261

; <label>:172:                                    ; preds = %167
  store double 0xC7EFFFFFE0000000, double* %164, align 8, !dbg !262, !tbaa !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  br label %181, !dbg !263

; <label>:173:                                    ; preds = %154
  store double 0x7FF0000000000000, double* %164, align 8, !dbg !264, !tbaa !77
  %174 = fcmp olt float %0, 0.000000e+00, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  br i1 %174, label %175, label %181, !dbg !267

; <label>:175:                                    ; preds = %173
  %176 = fmul float %1, 5.000000e-01, !dbg !268
  %177 = fpext float %176 to double, !dbg !269
  %178 = tail call double @rint(double %177) #5, !dbg !270
  %179 = fcmp une double %178, %177, !dbg !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  br i1 %179, label %180, label %181, !dbg !272

; <label>:180:                                    ; preds = %175
  store double 0xFFF0000000000000, double* %164, align 8, !dbg !273, !tbaa !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !274
  br label %181, !dbg !274

; <label>:181:                                    ; preds = %173, %175, %180, %165, %167, %172
  %182 = load i32, i32* @__fdlib_version, align 4, !dbg !275, !tbaa !43
  %183 = icmp eq i32 %182, 2, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  br i1 %183, label %184, label %186, !dbg !278

; <label>:184:                                    ; preds = %181
  %185 = tail call i32* @__errno() #5, !dbg !279
  br label %191, !dbg !279

; <label>:186:                                    ; preds = %181
  %187 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !280
  %188 = icmp eq i32 %187, 0, !dbg !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  br i1 %188, label %189, label %193, !dbg !282

; <label>:189:                                    ; preds = %186
  %190 = call i32* @__errno() #5, !dbg !283
  br label %191, !dbg !285

; <label>:191:                                    ; preds = %184, %189
  %192 = phi i32* [ %190, %189 ], [ %185, %184 ]
  store i32 34, i32* %192, align 4, !dbg !286, !tbaa !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  br label %193, !dbg !287

; <label>:193:                                    ; preds = %191, %186
  %194 = load i32, i32* %156, align 8, !dbg !287, !tbaa !70
  %195 = icmp eq i32 %194, 0, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  br i1 %195, label %198, label %196, !dbg !290

; <label>:196:                                    ; preds = %193
  %197 = call i32* @__errno() #5, !dbg !291
  store i32 %194, i32* %197, align 4, !dbg !292, !tbaa !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  br label %198, !dbg !291

; <label>:198:                                    ; preds = %193, %196
  %199 = load double, double* %164, align 8, !dbg !293, !tbaa !77
  %200 = fptrunc double %199 to float, !dbg !294
  br label %238, !dbg !295

; <label>:201:                                    ; preds = %116, %113, %110
  %202 = fcmp oeq float %5, 0.000000e+00, !dbg !296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  br i1 %202, label %203, label %238, !dbg !298

; <label>:203:                                    ; preds = %201
  %204 = tail call i32 @finitef(float %0) #5, !dbg !299
  %205 = icmp eq i32 %204, 0, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  br i1 %205, label %238, label %206, !dbg !300

; <label>:206:                                    ; preds = %203
  %207 = tail call i32 @finitef(float %1) #5, !dbg !301
  %208 = icmp eq i32 %207, 0, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  br i1 %208, label %238, label %209, !dbg !302

; <label>:209:                                    ; preds = %206
  %210 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !303
  store i32 4, i32* %210, align 8, !dbg !305, !tbaa !60
  %211 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !306
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %211, align 8, !dbg !307, !tbaa !67
  %212 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !308
  store i32 0, i32* %212, align 8, !dbg !309, !tbaa !70
  %213 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !310
  %214 = insertelement <2 x float> undef, float %0, i32 0, !dbg !311
  %215 = insertelement <2 x float> %214, float %1, i32 1, !dbg !311
  %216 = fpext <2 x float> %215 to <2 x double>, !dbg !311
  %217 = bitcast double* %213 to <2 x double>*, !dbg !312
  store <2 x double> %216, <2 x double>* %217, align 8, !dbg !312, !tbaa !74
  %218 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !313
  store double 0.000000e+00, double* %218, align 8, !dbg !314, !tbaa !77
  %219 = load i32, i32* @__fdlib_version, align 4, !dbg !315, !tbaa !43
  %220 = icmp eq i32 %219, 2, !dbg !317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  br i1 %220, label %221, label %223, !dbg !318

; <label>:221:                                    ; preds = %209
  %222 = tail call i32* @__errno() #5, !dbg !319
  br label %228, !dbg !319

; <label>:223:                                    ; preds = %209
  %224 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !320
  %225 = icmp eq i32 %224, 0, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  br i1 %225, label %226, label %230, !dbg !322

; <label>:226:                                    ; preds = %223
  %227 = call i32* @__errno() #5, !dbg !323
  br label %228, !dbg !325

; <label>:228:                                    ; preds = %221, %226
  %229 = phi i32* [ %227, %226 ], [ %222, %221 ]
  store i32 34, i32* %229, align 4, !dbg !326, !tbaa !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  br label %230, !dbg !327

; <label>:230:                                    ; preds = %228, %223
  %231 = load i32, i32* %212, align 8, !dbg !327, !tbaa !70
  %232 = icmp eq i32 %231, 0, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  br i1 %232, label %235, label %233, !dbg !330

; <label>:233:                                    ; preds = %230
  %234 = call i32* @__errno() #5, !dbg !331
  store i32 %231, i32* %234, align 4, !dbg !332, !tbaa !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  br label %235, !dbg !331

; <label>:235:                                    ; preds = %230, %233
  %236 = load double, double* %218, align 8, !dbg !333, !tbaa !77
  %237 = fptrunc double %236 to float, !dbg !334
  br label %238, !dbg !335

; <label>:238:                                    ; preds = %201, %203, %206, %73, %14, %2, %8, %235, %198, %151, %107, %70, %39
  %239 = phi float [ %41, %39 ], [ %72, %70 ], [ %109, %107 ], [ %237, %235 ], [ %153, %151 ], [ %200, %198 ], [ %5, %8 ], [ %5, %2 ], [ %5, %14 ], [ %5, %73 ], [ %5, %206 ], [ %5, %203 ], [ %5, %201 ], !dbg !198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  ret float %239, !dbg !337
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_powf(float, float) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyf(float) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @matherr(%struct.exception*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @finitef(float) local_unnamed_addr #2

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

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_pow.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__fdlibm_version", file: !4, line: 642, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/math.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "__fdlibm_ieee", value: -1)
!8 = !DIEnumerator(name: "__fdlibm_svid", value: 0)
!9 = !DIEnumerator(name: "__fdlibm_xopen", value: 1)
!10 = !DIEnumerator(name: "__fdlibm_posix", value: 2)
!11 = !{!12, !13}
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "powf", scope: !1, file: !1, line: 24, type: !19, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!12, !12, !12}
!21 = !{!22, !23, !24, !25}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 24, type: !12)
!23 = !DILocalVariable(name: "y", arg: 2, scope: !18, file: !1, line: 24, type: !12)
!24 = !DILocalVariable(name: "z", scope: !18, file: !1, line: 33, type: !12)
!25 = !DILocalVariable(name: "exc", scope: !18, file: !1, line: 34, type: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !27)
!27 = !{!28, !29, !32, !33, !34, !35}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !4, line: 581, baseType: !5, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !26, file: !4, line: 582, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !26, file: !4, line: 583, baseType: !13, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !26, file: !4, line: 584, baseType: !13, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !26, file: !4, line: 585, baseType: !13, size: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !26, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!36 = !DILocation(line: 24, column: 19, scope: !18)
!37 = !DILocation(line: 24, column: 28, scope: !18)
!38 = !DILocation(line: 34, column: 2, scope: !18)
!39 = !DILocation(line: 35, column: 4, scope: !18)
!40 = !DILocation(line: 33, column: 8, scope: !18)
!41 = !DILocation(line: 36, column: 5, scope: !42)
!42 = distinct !DILexicalBlock(scope: !18, file: !1, line: 36, column: 5)
!43 = !{!44, !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !DILocation(line: 36, column: 18, scope: !42)
!47 = !DILocation(line: 36, column: 27, scope: !42)
!48 = !DILocation(line: 36, column: 30, scope: !42)
!49 = !DILocation(line: 36, column: 5, scope: !18)
!50 = !DILocation(line: 37, column: 5, scope: !51)
!51 = distinct !DILexicalBlock(scope: !18, file: !1, line: 37, column: 5)
!52 = !DILocation(line: 37, column: 5, scope: !18)
!53 = !DILocation(line: 38, column: 10, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 38, column: 9)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 37, column: 15)
!56 = !DILocation(line: 38, column: 9, scope: !55)
!57 = !DILocation(line: 41, column: 7, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 38, column: 24)
!59 = !DILocation(line: 41, column: 12, scope: !58)
!60 = !{!61, !62, i64 0}
!61 = !{!"exception", !62, i64 0, !63, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !62, i64 40}
!62 = !{!"int", !44, i64 0}
!63 = !{!"any pointer", !44, i64 0}
!64 = !{!"double", !44, i64 0}
!65 = !DILocation(line: 42, column: 7, scope: !58)
!66 = !DILocation(line: 42, column: 12, scope: !58)
!67 = !{!61, !63, i64 8}
!68 = !DILocation(line: 43, column: 7, scope: !58)
!69 = !DILocation(line: 43, column: 11, scope: !58)
!70 = !{!61, !62, i64 40}
!71 = !DILocation(line: 44, column: 7, scope: !58)
!72 = !DILocation(line: 44, column: 14, scope: !58)
!73 = !DILocation(line: 44, column: 12, scope: !58)
!74 = !{!64, !64, i64 0}
!75 = !DILocation(line: 46, column: 7, scope: !58)
!76 = !DILocation(line: 46, column: 14, scope: !58)
!77 = !{!61, !64, i64 32}
!78 = !DILocation(line: 47, column: 7, scope: !79)
!79 = distinct !DILexicalBlock(scope: !58, file: !1, line: 47, column: 7)
!80 = !DILocation(line: 47, column: 30, scope: !79)
!81 = !DILocation(line: 48, column: 43, scope: !79)
!82 = !DILocation(line: 48, column: 32, scope: !79)
!83 = !DILocation(line: 34, column: 19, scope: !18)
!84 = !DILocation(line: 49, column: 13, scope: !85)
!85 = distinct !DILexicalBlock(scope: !79, file: !1, line: 49, column: 12)
!86 = !DILocation(line: 49, column: 12, scope: !79)
!87 = !DILocation(line: 50, column: 4, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !1, line: 49, column: 28)
!89 = !DILocation(line: 50, column: 10, scope: !88)
!90 = !{!62, !62, i64 0}
!91 = !DILocation(line: 51, column: 3, scope: !88)
!92 = !DILocation(line: 0, scope: !79)
!93 = !DILocation(line: 52, column: 18, scope: !94)
!94 = distinct !DILexicalBlock(scope: !58, file: !1, line: 52, column: 14)
!95 = !DILocation(line: 52, column: 22, scope: !94)
!96 = !DILocation(line: 52, column: 14, scope: !58)
!97 = !DILocation(line: 53, column: 13, scope: !94)
!98 = !DILocation(line: 53, column: 19, scope: !94)
!99 = !DILocation(line: 54, column: 35, scope: !58)
!100 = !DILocation(line: 54, column: 24, scope: !58)
!101 = !DILocation(line: 54, column: 17, scope: !58)
!102 = !DILocation(line: 58, column: 6, scope: !103)
!103 = distinct !DILexicalBlock(scope: !18, file: !1, line: 58, column: 5)
!104 = !DILocation(line: 58, column: 5, scope: !18)
!105 = !DILocation(line: 59, column: 10, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !1, line: 59, column: 9)
!107 = distinct !DILexicalBlock(scope: !103, file: !1, line: 58, column: 19)
!108 = !DILocation(line: 59, column: 9, scope: !107)
!109 = !DILocation(line: 62, column: 7, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !1, line: 59, column: 24)
!111 = !DILocation(line: 62, column: 12, scope: !110)
!112 = !DILocation(line: 63, column: 7, scope: !110)
!113 = !DILocation(line: 63, column: 12, scope: !110)
!114 = !DILocation(line: 64, column: 7, scope: !110)
!115 = !DILocation(line: 64, column: 11, scope: !110)
!116 = !DILocation(line: 65, column: 7, scope: !110)
!117 = !DILocation(line: 65, column: 14, scope: !110)
!118 = !DILocation(line: 65, column: 12, scope: !110)
!119 = !DILocation(line: 67, column: 7, scope: !110)
!120 = !DILocation(line: 67, column: 14, scope: !110)
!121 = !DILocation(line: 68, column: 7, scope: !122)
!122 = distinct !DILexicalBlock(scope: !110, file: !1, line: 68, column: 7)
!123 = !DILocation(line: 68, column: 20, scope: !122)
!124 = !DILocation(line: 68, column: 7, scope: !110)
!125 = !DILocation(line: 68, column: 42, scope: !122)
!126 = !DILocation(line: 68, column: 31, scope: !122)
!127 = !DILocation(line: 69, column: 13, scope: !128)
!128 = distinct !DILexicalBlock(scope: !122, file: !1, line: 69, column: 12)
!129 = !DILocation(line: 69, column: 12, scope: !122)
!130 = !DILocation(line: 70, column: 4, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !1, line: 69, column: 28)
!132 = !DILocation(line: 70, column: 10, scope: !131)
!133 = !DILocation(line: 71, column: 3, scope: !131)
!134 = !DILocation(line: 0, scope: !122)
!135 = !DILocation(line: 72, column: 18, scope: !136)
!136 = distinct !DILexicalBlock(scope: !110, file: !1, line: 72, column: 14)
!137 = !DILocation(line: 72, column: 22, scope: !136)
!138 = !DILocation(line: 72, column: 14, scope: !110)
!139 = !DILocation(line: 73, column: 13, scope: !136)
!140 = !DILocation(line: 73, column: 19, scope: !136)
!141 = !DILocation(line: 74, column: 35, scope: !110)
!142 = !DILocation(line: 74, column: 24, scope: !110)
!143 = !DILocation(line: 74, column: 17, scope: !110)
!144 = !DILocation(line: 76, column: 9, scope: !145)
!145 = distinct !DILexicalBlock(scope: !107, file: !1, line: 76, column: 9)
!146 = !DILocation(line: 76, column: 22, scope: !145)
!147 = !DILocation(line: 76, column: 19, scope: !145)
!148 = !DILocation(line: 78, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !1, line: 76, column: 35)
!150 = !DILocation(line: 78, column: 12, scope: !149)
!151 = !DILocation(line: 79, column: 7, scope: !149)
!152 = !DILocation(line: 79, column: 12, scope: !149)
!153 = !DILocation(line: 80, column: 7, scope: !149)
!154 = !DILocation(line: 80, column: 11, scope: !149)
!155 = !DILocation(line: 81, column: 7, scope: !149)
!156 = !DILocation(line: 81, column: 14, scope: !149)
!157 = !DILocation(line: 81, column: 12, scope: !149)
!158 = !DILocation(line: 83, column: 7, scope: !159)
!159 = distinct !DILexicalBlock(scope: !149, file: !1, line: 83, column: 7)
!160 = !DILocation(line: 83, column: 20, scope: !159)
!161 = !DILocation(line: 0, scope: !159)
!162 = !DILocation(line: 83, column: 7, scope: !149)
!163 = !DILocation(line: 84, column: 16, scope: !159)
!164 = !DILocation(line: 84, column: 5, scope: !159)
!165 = !DILocation(line: 87, column: 7, scope: !149)
!166 = !DILocation(line: 86, column: 16, scope: !159)
!167 = !DILocation(line: 87, column: 20, scope: !168)
!168 = distinct !DILexicalBlock(scope: !149, file: !1, line: 87, column: 7)
!169 = !DILocation(line: 88, column: 5, scope: !168)
!170 = !DILocation(line: 89, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !168, file: !1, line: 89, column: 12)
!172 = !DILocation(line: 89, column: 12, scope: !168)
!173 = !DILocation(line: 90, column: 5, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !1, line: 89, column: 28)
!175 = !DILocation(line: 91, column: 3, scope: !174)
!176 = !DILocation(line: 0, scope: !168)
!177 = !DILocation(line: 92, column: 18, scope: !178)
!178 = distinct !DILexicalBlock(scope: !149, file: !1, line: 92, column: 14)
!179 = !DILocation(line: 92, column: 22, scope: !178)
!180 = !DILocation(line: 92, column: 14, scope: !149)
!181 = !DILocation(line: 93, column: 13, scope: !178)
!182 = !DILocation(line: 93, column: 19, scope: !178)
!183 = !DILocation(line: 94, column: 35, scope: !149)
!184 = !DILocation(line: 94, column: 24, scope: !149)
!185 = !DILocation(line: 94, column: 17, scope: !149)
!186 = !DILocation(line: 98, column: 6, scope: !187)
!187 = distinct !DILexicalBlock(scope: !18, file: !1, line: 98, column: 5)
!188 = !DILocation(line: 98, column: 5, scope: !18)
!189 = !DILocation(line: 99, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !191, file: !1, line: 99, column: 9)
!191 = distinct !DILexicalBlock(scope: !187, file: !1, line: 98, column: 18)
!192 = !DILocation(line: 99, column: 19, scope: !190)
!193 = !DILocation(line: 99, column: 21, scope: !190)
!194 = !DILocation(line: 99, column: 9, scope: !191)
!195 = !DILocation(line: 100, column: 13, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !1, line: 100, column: 13)
!197 = distinct !DILexicalBlock(scope: !190, file: !1, line: 99, column: 33)
!198 = !DILocation(line: 0, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !1, line: 119, column: 17)
!200 = !DILocation(line: 100, column: 13, scope: !197)
!201 = !DILocation(line: 102, column: 16, scope: !202)
!202 = distinct !DILexicalBlock(scope: !196, file: !1, line: 100, column: 23)
!203 = !DILocation(line: 103, column: 11, scope: !202)
!204 = !DILocation(line: 103, column: 16, scope: !202)
!205 = !DILocation(line: 104, column: 11, scope: !202)
!206 = !DILocation(line: 104, column: 15, scope: !202)
!207 = !DILocation(line: 105, column: 11, scope: !202)
!208 = !DILocation(line: 105, column: 18, scope: !202)
!209 = !DILocation(line: 105, column: 16, scope: !202)
!210 = !DILocation(line: 107, column: 11, scope: !211)
!211 = distinct !DILexicalBlock(scope: !202, file: !1, line: 107, column: 11)
!212 = !DILocation(line: 107, column: 24, scope: !211)
!213 = !DILocation(line: 0, scope: !211)
!214 = !DILocation(line: 107, column: 11, scope: !202)
!215 = !DILocation(line: 108, column: 22, scope: !211)
!216 = !DILocation(line: 108, column: 11, scope: !211)
!217 = !DILocation(line: 111, column: 11, scope: !202)
!218 = !DILocation(line: 110, column: 22, scope: !211)
!219 = !DILocation(line: 111, column: 24, scope: !220)
!220 = distinct !DILexicalBlock(scope: !202, file: !1, line: 111, column: 11)
!221 = !DILocation(line: 112, column: 11, scope: !220)
!222 = !DILocation(line: 113, column: 17, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !1, line: 113, column: 16)
!224 = !DILocation(line: 113, column: 16, scope: !220)
!225 = !DILocation(line: 114, column: 11, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !1, line: 113, column: 32)
!227 = !DILocation(line: 115, column: 7, scope: !226)
!228 = !DILocation(line: 0, scope: !220)
!229 = !DILocation(line: 116, column: 22, scope: !230)
!230 = distinct !DILexicalBlock(scope: !202, file: !1, line: 116, column: 18)
!231 = !DILocation(line: 116, column: 26, scope: !230)
!232 = !DILocation(line: 116, column: 18, scope: !202)
!233 = !DILocation(line: 117, column: 18, scope: !230)
!234 = !DILocation(line: 117, column: 24, scope: !230)
!235 = !DILocation(line: 118, column: 39, scope: !202)
!236 = !DILocation(line: 118, column: 28, scope: !202)
!237 = !DILocation(line: 118, column: 21, scope: !202)
!238 = !DILocation(line: 121, column: 16, scope: !199)
!239 = !DILocation(line: 122, column: 11, scope: !199)
!240 = !DILocation(line: 122, column: 16, scope: !199)
!241 = !DILocation(line: 123, column: 11, scope: !199)
!242 = !DILocation(line: 123, column: 15, scope: !199)
!243 = !DILocation(line: 124, column: 11, scope: !199)
!244 = !DILocation(line: 124, column: 18, scope: !199)
!245 = !DILocation(line: 124, column: 16, scope: !199)
!246 = !DILocation(line: 126, column: 11, scope: !247)
!247 = distinct !DILexicalBlock(scope: !199, file: !1, line: 126, column: 11)
!248 = !DILocation(line: 126, column: 24, scope: !247)
!249 = !DILocation(line: 0, scope: !250)
!250 = distinct !DILexicalBlock(scope: !247, file: !1, line: 130, column: 14)
!251 = !DILocation(line: 126, column: 11, scope: !199)
!252 = !DILocation(line: 127, column: 21, scope: !253)
!253 = distinct !DILexicalBlock(scope: !247, file: !1, line: 126, column: 35)
!254 = !DILocation(line: 129, column: 14, scope: !255)
!255 = distinct !DILexicalBlock(scope: !253, file: !1, line: 129, column: 13)
!256 = !DILocation(line: 129, column: 18, scope: !255)
!257 = !DILocation(line: 128, column: 12, scope: !253)
!258 = !DILocation(line: 129, column: 25, scope: !255)
!259 = !DILocation(line: 129, column: 20, scope: !255)
!260 = !DILocation(line: 129, column: 27, scope: !255)
!261 = !DILocation(line: 129, column: 13, scope: !253)
!262 = !DILocation(line: 129, column: 43, scope: !255)
!263 = !DILocation(line: 129, column: 32, scope: !255)
!264 = !DILocation(line: 131, column: 21, scope: !250)
!265 = !DILocation(line: 133, column: 14, scope: !266)
!266 = distinct !DILexicalBlock(scope: !250, file: !1, line: 133, column: 13)
!267 = !DILocation(line: 133, column: 18, scope: !266)
!268 = !DILocation(line: 132, column: 26, scope: !250)
!269 = !DILocation(line: 133, column: 25, scope: !266)
!270 = !DILocation(line: 133, column: 20, scope: !266)
!271 = !DILocation(line: 133, column: 27, scope: !266)
!272 = !DILocation(line: 133, column: 13, scope: !250)
!273 = !DILocation(line: 133, column: 43, scope: !266)
!274 = !DILocation(line: 133, column: 32, scope: !266)
!275 = !DILocation(line: 135, column: 11, scope: !276)
!276 = distinct !DILexicalBlock(scope: !199, file: !1, line: 135, column: 11)
!277 = !DILocation(line: 135, column: 24, scope: !276)
!278 = !DILocation(line: 135, column: 11, scope: !199)
!279 = !DILocation(line: 136, column: 11, scope: !276)
!280 = !DILocation(line: 137, column: 17, scope: !281)
!281 = distinct !DILexicalBlock(scope: !276, file: !1, line: 137, column: 16)
!282 = !DILocation(line: 137, column: 16, scope: !276)
!283 = !DILocation(line: 138, column: 4, scope: !284)
!284 = distinct !DILexicalBlock(scope: !281, file: !1, line: 137, column: 32)
!285 = !DILocation(line: 139, column: 7, scope: !284)
!286 = !DILocation(line: 0, scope: !276)
!287 = !DILocation(line: 140, column: 22, scope: !288)
!288 = distinct !DILexicalBlock(scope: !199, file: !1, line: 140, column: 18)
!289 = !DILocation(line: 140, column: 26, scope: !288)
!290 = !DILocation(line: 140, column: 18, scope: !199)
!291 = !DILocation(line: 141, column: 18, scope: !288)
!292 = !DILocation(line: 141, column: 24, scope: !288)
!293 = !DILocation(line: 142, column: 39, scope: !199)
!294 = !DILocation(line: 142, column: 28, scope: !199)
!295 = !DILocation(line: 142, column: 21, scope: !199)
!296 = !DILocation(line: 146, column: 6, scope: !297)
!297 = distinct !DILexicalBlock(scope: !18, file: !1, line: 146, column: 5)
!298 = !DILocation(line: 146, column: 18, scope: !297)
!299 = !DILocation(line: 146, column: 20, scope: !297)
!300 = !DILocation(line: 146, column: 30, scope: !297)
!301 = !DILocation(line: 146, column: 32, scope: !297)
!302 = !DILocation(line: 146, column: 5, scope: !18)
!303 = !DILocation(line: 148, column: 10, scope: !304)
!304 = distinct !DILexicalBlock(scope: !297, file: !1, line: 146, column: 44)
!305 = !DILocation(line: 148, column: 15, scope: !304)
!306 = !DILocation(line: 149, column: 10, scope: !304)
!307 = !DILocation(line: 149, column: 15, scope: !304)
!308 = !DILocation(line: 150, column: 10, scope: !304)
!309 = !DILocation(line: 150, column: 14, scope: !304)
!310 = !DILocation(line: 151, column: 10, scope: !304)
!311 = !DILocation(line: 151, column: 17, scope: !304)
!312 = !DILocation(line: 151, column: 15, scope: !304)
!313 = !DILocation(line: 153, column: 10, scope: !304)
!314 = !DILocation(line: 153, column: 17, scope: !304)
!315 = !DILocation(line: 154, column: 10, scope: !316)
!316 = distinct !DILexicalBlock(scope: !304, file: !1, line: 154, column: 10)
!317 = !DILocation(line: 154, column: 23, scope: !316)
!318 = !DILocation(line: 154, column: 10, scope: !304)
!319 = !DILocation(line: 155, column: 10, scope: !316)
!320 = !DILocation(line: 156, column: 16, scope: !321)
!321 = distinct !DILexicalBlock(scope: !316, file: !1, line: 156, column: 15)
!322 = !DILocation(line: 156, column: 15, scope: !316)
!323 = !DILocation(line: 157, column: 8, scope: !324)
!324 = distinct !DILexicalBlock(scope: !321, file: !1, line: 156, column: 31)
!325 = !DILocation(line: 158, column: 6, scope: !324)
!326 = !DILocation(line: 0, scope: !316)
!327 = !DILocation(line: 159, column: 14, scope: !328)
!328 = distinct !DILexicalBlock(scope: !304, file: !1, line: 159, column: 10)
!329 = !DILocation(line: 159, column: 18, scope: !328)
!330 = !DILocation(line: 159, column: 10, scope: !304)
!331 = !DILocation(line: 160, column: 10, scope: !328)
!332 = !DILocation(line: 160, column: 16, scope: !328)
!333 = !DILocation(line: 161, column: 31, scope: !304)
!334 = !DILocation(line: 161, column: 20, scope: !304)
!335 = !DILocation(line: 161, column: 13, scope: !304)
!336 = !DILocation(line: 0, scope: !42)
!337 = !DILocation(line: 165, column: 1, scope: !18)
