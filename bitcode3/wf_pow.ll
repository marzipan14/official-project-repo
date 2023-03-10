; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_pow.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_pow.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"powf\00", align 1

; Function Attrs: noredzone nounwind
define dso_local float @powf(float, float) local_unnamed_addr #0 !dbg !18 {
  %3 = alloca %struct.exception, align 8
  %4 = bitcast %struct.exception* %3 to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #4, !dbg !38
  %5 = tail call float @__ieee754_powf(float %0, float %1) #5, !dbg !39
  %6 = load i32, i32* @__fdlib_version, align 4, !dbg !41, !tbaa !43
  %7 = icmp eq i32 %6, -1, !dbg !46
  br i1 %7, label %234, label %8, !dbg !47

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @__fpclassifyf(float %1) #5, !dbg !48
  %10 = icmp eq i32 %9, 0, !dbg !48
  br i1 %10, label %234, label %11, !dbg !49

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @__fpclassifyf(float %0) #5, !dbg !50
  %13 = icmp eq i32 %12, 0, !dbg !50
  br i1 %13, label %14, label %41, !dbg !52

; <label>:14:                                     ; preds = %11
  %15 = fcmp oeq float %1, 0.000000e+00, !dbg !53
  br i1 %15, label %16, label %234, !dbg !56

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
  br i1 %30, label %31, label %33, !dbg !86

; <label>:31:                                     ; preds = %28
  %32 = call i32* @__errno() #5, !dbg !87
  store i32 33, i32* %32, align 4, !dbg !89, !tbaa !90
  br label %33, !dbg !91

; <label>:33:                                     ; preds = %28, %31, %27
  %34 = load i32, i32* %19, align 8, !dbg !92, !tbaa !70
  %35 = icmp eq i32 %34, 0, !dbg !94
  br i1 %35, label %38, label %36, !dbg !95

; <label>:36:                                     ; preds = %33
  %37 = call i32* @__errno() #5, !dbg !96
  store i32 %34, i32* %37, align 4, !dbg !97, !tbaa !90
  br label %38, !dbg !96

; <label>:38:                                     ; preds = %33, %36
  %39 = load double, double* %25, align 8, !dbg !98, !tbaa !77
  %40 = fptrunc double %39 to float, !dbg !99
  br label %234, !dbg !100

; <label>:41:                                     ; preds = %11
  %42 = fcmp oeq float %0, 0.000000e+00, !dbg !101
  br i1 %42, label %43, label %107, !dbg !103

; <label>:43:                                     ; preds = %41
  %44 = fcmp oeq float %1, 0.000000e+00, !dbg !104
  br i1 %44, label %45, label %71, !dbg !107

; <label>:45:                                     ; preds = %43
  %46 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !108
  store i32 1, i32* %46, align 8, !dbg !110, !tbaa !60
  %47 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !111
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %47, align 8, !dbg !112, !tbaa !67
  %48 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !113
  store i32 0, i32* %48, align 8, !dbg !114, !tbaa !70
  %49 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !115
  %50 = insertelement <2 x float> undef, float %0, i32 0, !dbg !116
  %51 = insertelement <2 x float> %50, float %1, i32 1, !dbg !116
  %52 = fpext <2 x float> %51 to <2 x double>, !dbg !116
  %53 = bitcast double* %49 to <2 x double>*, !dbg !117
  store <2 x double> %52, <2 x double>* %53, align 8, !dbg !117, !tbaa !74
  %54 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !118
  store double 0.000000e+00, double* %54, align 8, !dbg !119, !tbaa !77
  %55 = load i32, i32* @__fdlib_version, align 4, !dbg !120, !tbaa !43
  %56 = icmp eq i32 %55, 0, !dbg !122
  br i1 %56, label %58, label %57, !dbg !123

; <label>:57:                                     ; preds = %45
  store double 1.000000e+00, double* %54, align 8, !dbg !124, !tbaa !77
  br label %63, !dbg !125

; <label>:58:                                     ; preds = %45
  %59 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !126
  %60 = icmp eq i32 %59, 0, !dbg !126
  br i1 %60, label %61, label %63, !dbg !128

; <label>:61:                                     ; preds = %58
  %62 = call i32* @__errno() #5, !dbg !129
  store i32 33, i32* %62, align 4, !dbg !131, !tbaa !90
  br label %63, !dbg !132

; <label>:63:                                     ; preds = %58, %61, %57
  %64 = load i32, i32* %48, align 8, !dbg !133, !tbaa !70
  %65 = icmp eq i32 %64, 0, !dbg !135
  br i1 %65, label %68, label %66, !dbg !136

; <label>:66:                                     ; preds = %63
  %67 = call i32* @__errno() #5, !dbg !137
  store i32 %64, i32* %67, align 4, !dbg !138, !tbaa !90
  br label %68, !dbg !137

; <label>:68:                                     ; preds = %63, %66
  %69 = load double, double* %54, align 8, !dbg !139, !tbaa !77
  %70 = fptrunc double %69 to float, !dbg !140
  br label %234, !dbg !141

; <label>:71:                                     ; preds = %43
  %72 = tail call i32 @finitef(float %1) #5, !dbg !142
  %73 = icmp ne i32 %72, 0, !dbg !142
  %74 = fcmp olt float %1, 0.000000e+00, !dbg !144
  %75 = and i1 %74, %73, !dbg !145
  br i1 %75, label %76, label %234, !dbg !145

; <label>:76:                                     ; preds = %71
  %77 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !146
  store i32 1, i32* %77, align 8, !dbg !148, !tbaa !60
  %78 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !149
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %78, align 8, !dbg !150, !tbaa !67
  %79 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !151
  store i32 0, i32* %79, align 8, !dbg !152, !tbaa !70
  %80 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !153
  %81 = insertelement <2 x float> undef, float %0, i32 0, !dbg !154
  %82 = insertelement <2 x float> %81, float %1, i32 1, !dbg !154
  %83 = fpext <2 x float> %82 to <2 x double>, !dbg !154
  %84 = bitcast double* %80 to <2 x double>*, !dbg !155
  store <2 x double> %83, <2 x double>* %84, align 8, !dbg !155, !tbaa !74
  %85 = load i32, i32* @__fdlib_version, align 4, !dbg !156, !tbaa !43
  %86 = icmp eq i32 %85, 0, !dbg !158
  %87 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !159
  %88 = select i1 %86, double 0.000000e+00, double 0xFFF0000000000000, !dbg !160
  store double %88, double* %87, align 8, !dbg !159, !tbaa !77
  %89 = icmp eq i32 %85, 2, !dbg !161
  br i1 %89, label %90, label %92, !dbg !163

; <label>:90:                                     ; preds = %76
  %91 = tail call i32* @__errno() #5, !dbg !164
  br label %97, !dbg !164

; <label>:92:                                     ; preds = %76
  %93 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !165
  %94 = icmp eq i32 %93, 0, !dbg !165
  br i1 %94, label %95, label %99, !dbg !167

; <label>:95:                                     ; preds = %92
  %96 = call i32* @__errno() #5, !dbg !168
  br label %97, !dbg !170

; <label>:97:                                     ; preds = %90, %95
  %98 = phi i32* [ %96, %95 ], [ %91, %90 ]
  store i32 33, i32* %98, align 4, !dbg !171, !tbaa !90
  br label %99, !dbg !172

; <label>:99:                                     ; preds = %97, %92
  %100 = load i32, i32* %79, align 8, !dbg !172, !tbaa !70
  %101 = icmp eq i32 %100, 0, !dbg !174
  br i1 %101, label %104, label %102, !dbg !175

; <label>:102:                                    ; preds = %99
  %103 = call i32* @__errno() #5, !dbg !176
  store i32 %100, i32* %103, align 4, !dbg !177, !tbaa !90
  br label %104, !dbg !176

; <label>:104:                                    ; preds = %99, %102
  %105 = load double, double* %87, align 8, !dbg !178, !tbaa !77
  %106 = fptrunc double %105 to float, !dbg !179
  br label %234, !dbg !180

; <label>:107:                                    ; preds = %41
  %108 = tail call i32 @finitef(float %5) #5, !dbg !181
  %109 = icmp eq i32 %108, 0, !dbg !181
  br i1 %109, label %110, label %197, !dbg !183

; <label>:110:                                    ; preds = %107
  %111 = tail call i32 @finitef(float %0) #5, !dbg !184
  %112 = icmp eq i32 %111, 0, !dbg !184
  br i1 %112, label %197, label %113, !dbg !187

; <label>:113:                                    ; preds = %110
  %114 = tail call i32 @finitef(float %1) #5, !dbg !188
  %115 = icmp eq i32 %114, 0, !dbg !188
  br i1 %115, label %197, label %116, !dbg !189

; <label>:116:                                    ; preds = %113
  %117 = tail call i32 @__fpclassifyf(float %5) #5, !dbg !190
  %118 = icmp eq i32 %117, 0, !dbg !190
  %119 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !193
  br i1 %118, label %120, label %150, !dbg !195

; <label>:120:                                    ; preds = %116
  store i32 1, i32* %119, align 8, !dbg !196, !tbaa !60
  %121 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !198
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %121, align 8, !dbg !199, !tbaa !67
  %122 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !200
  store i32 0, i32* %122, align 8, !dbg !201, !tbaa !70
  %123 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !202
  %124 = insertelement <2 x float> undef, float %0, i32 0, !dbg !203
  %125 = insertelement <2 x float> %124, float %1, i32 1, !dbg !203
  %126 = fpext <2 x float> %125 to <2 x double>, !dbg !203
  %127 = bitcast double* %123 to <2 x double>*, !dbg !204
  store <2 x double> %126, <2 x double>* %127, align 8, !dbg !204, !tbaa !74
  %128 = load i32, i32* @__fdlib_version, align 4, !dbg !205, !tbaa !43
  %129 = icmp eq i32 %128, 0, !dbg !207
  %130 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !208
  %131 = select i1 %129, double 0.000000e+00, double 0x7FF8000000000000, !dbg !209
  store double %131, double* %130, align 8, !dbg !208, !tbaa !77
  %132 = icmp eq i32 %128, 2, !dbg !210
  br i1 %132, label %133, label %135, !dbg !212

; <label>:133:                                    ; preds = %120
  %134 = tail call i32* @__errno() #5, !dbg !213
  br label %140, !dbg !213

; <label>:135:                                    ; preds = %120
  %136 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !214
  %137 = icmp eq i32 %136, 0, !dbg !214
  br i1 %137, label %138, label %142, !dbg !216

; <label>:138:                                    ; preds = %135
  %139 = call i32* @__errno() #5, !dbg !217
  br label %140, !dbg !219

; <label>:140:                                    ; preds = %133, %138
  %141 = phi i32* [ %139, %138 ], [ %134, %133 ]
  store i32 33, i32* %141, align 4, !dbg !220, !tbaa !90
  br label %142, !dbg !221

; <label>:142:                                    ; preds = %140, %135
  %143 = load i32, i32* %122, align 8, !dbg !221, !tbaa !70
  %144 = icmp eq i32 %143, 0, !dbg !223
  br i1 %144, label %147, label %145, !dbg !224

; <label>:145:                                    ; preds = %142
  %146 = call i32* @__errno() #5, !dbg !225
  store i32 %143, i32* %146, align 4, !dbg !226, !tbaa !90
  br label %147, !dbg !225

; <label>:147:                                    ; preds = %142, %145
  %148 = load double, double* %130, align 8, !dbg !227, !tbaa !77
  %149 = fptrunc double %148 to float, !dbg !228
  br label %234, !dbg !229

; <label>:150:                                    ; preds = %116
  store i32 3, i32* %119, align 8, !dbg !230, !tbaa !60
  %151 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !231
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %151, align 8, !dbg !232, !tbaa !67
  %152 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !233
  store i32 0, i32* %152, align 8, !dbg !234, !tbaa !70
  %153 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !235
  %154 = insertelement <2 x float> undef, float %0, i32 0, !dbg !236
  %155 = insertelement <2 x float> %154, float %1, i32 1, !dbg !236
  %156 = fpext <2 x float> %155 to <2 x double>, !dbg !236
  %157 = bitcast double* %153 to <2 x double>*, !dbg !237
  store <2 x double> %156, <2 x double>* %157, align 8, !dbg !237, !tbaa !74
  %158 = load i32, i32* @__fdlib_version, align 4, !dbg !238, !tbaa !43
  %159 = icmp eq i32 %158, 0, !dbg !240
  %160 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !241
  br i1 %159, label %161, label %169, !dbg !243

; <label>:161:                                    ; preds = %150
  store double 0x47EFFFFFE0000000, double* %160, align 8, !dbg !244, !tbaa !77
  %162 = fcmp olt float %0, 0.000000e+00, !dbg !246
  br i1 %162, label %163, label %177, !dbg !248

; <label>:163:                                    ; preds = %161
  %164 = fmul float %1, 5.000000e-01, !dbg !249
  %165 = fpext float %164 to double, !dbg !250
  %166 = tail call double @rint(double %165) #5, !dbg !251
  %167 = fcmp une double %166, %165, !dbg !252
  br i1 %167, label %168, label %177, !dbg !253

; <label>:168:                                    ; preds = %163
  store double 0xC7EFFFFFE0000000, double* %160, align 8, !dbg !254, !tbaa !77
  br label %177, !dbg !255

; <label>:169:                                    ; preds = %150
  store double 0x7FF0000000000000, double* %160, align 8, !dbg !256, !tbaa !77
  %170 = fcmp olt float %0, 0.000000e+00, !dbg !257
  br i1 %170, label %171, label %177, !dbg !259

; <label>:171:                                    ; preds = %169
  %172 = fmul float %1, 5.000000e-01, !dbg !260
  %173 = fpext float %172 to double, !dbg !261
  %174 = tail call double @rint(double %173) #5, !dbg !262
  %175 = fcmp une double %174, %173, !dbg !263
  br i1 %175, label %176, label %177, !dbg !264

; <label>:176:                                    ; preds = %171
  store double 0xFFF0000000000000, double* %160, align 8, !dbg !265, !tbaa !77
  br label %177, !dbg !266

; <label>:177:                                    ; preds = %169, %171, %176, %161, %163, %168
  %178 = load i32, i32* @__fdlib_version, align 4, !dbg !267, !tbaa !43
  %179 = icmp eq i32 %178, 2, !dbg !269
  br i1 %179, label %180, label %182, !dbg !270

; <label>:180:                                    ; preds = %177
  %181 = tail call i32* @__errno() #5, !dbg !271
  br label %187, !dbg !271

; <label>:182:                                    ; preds = %177
  %183 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !272
  %184 = icmp eq i32 %183, 0, !dbg !272
  br i1 %184, label %185, label %189, !dbg !274

; <label>:185:                                    ; preds = %182
  %186 = call i32* @__errno() #5, !dbg !275
  br label %187, !dbg !277

; <label>:187:                                    ; preds = %180, %185
  %188 = phi i32* [ %186, %185 ], [ %181, %180 ]
  store i32 34, i32* %188, align 4, !dbg !278, !tbaa !90
  br label %189, !dbg !279

; <label>:189:                                    ; preds = %187, %182
  %190 = load i32, i32* %152, align 8, !dbg !279, !tbaa !70
  %191 = icmp eq i32 %190, 0, !dbg !281
  br i1 %191, label %194, label %192, !dbg !282

; <label>:192:                                    ; preds = %189
  %193 = call i32* @__errno() #5, !dbg !283
  store i32 %190, i32* %193, align 4, !dbg !284, !tbaa !90
  br label %194, !dbg !283

; <label>:194:                                    ; preds = %189, %192
  %195 = load double, double* %160, align 8, !dbg !285, !tbaa !77
  %196 = fptrunc double %195 to float, !dbg !286
  br label %234, !dbg !287

; <label>:197:                                    ; preds = %113, %110, %107
  %198 = fcmp oeq float %5, 0.000000e+00, !dbg !288
  br i1 %198, label %199, label %234, !dbg !290

; <label>:199:                                    ; preds = %197
  %200 = tail call i32 @finitef(float %0) #5, !dbg !291
  %201 = icmp eq i32 %200, 0, !dbg !291
  br i1 %201, label %234, label %202, !dbg !292

; <label>:202:                                    ; preds = %199
  %203 = tail call i32 @finitef(float %1) #5, !dbg !293
  %204 = icmp eq i32 %203, 0, !dbg !293
  br i1 %204, label %234, label %205, !dbg !294

; <label>:205:                                    ; preds = %202
  %206 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !295
  store i32 4, i32* %206, align 8, !dbg !297, !tbaa !60
  %207 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !298
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %207, align 8, !dbg !299, !tbaa !67
  %208 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !300
  store i32 0, i32* %208, align 8, !dbg !301, !tbaa !70
  %209 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !302
  %210 = insertelement <2 x float> undef, float %0, i32 0, !dbg !303
  %211 = insertelement <2 x float> %210, float %1, i32 1, !dbg !303
  %212 = fpext <2 x float> %211 to <2 x double>, !dbg !303
  %213 = bitcast double* %209 to <2 x double>*, !dbg !304
  store <2 x double> %212, <2 x double>* %213, align 8, !dbg !304, !tbaa !74
  %214 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !305
  store double 0.000000e+00, double* %214, align 8, !dbg !306, !tbaa !77
  %215 = load i32, i32* @__fdlib_version, align 4, !dbg !307, !tbaa !43
  %216 = icmp eq i32 %215, 2, !dbg !309
  br i1 %216, label %217, label %219, !dbg !310

; <label>:217:                                    ; preds = %205
  %218 = tail call i32* @__errno() #5, !dbg !311
  br label %224, !dbg !311

; <label>:219:                                    ; preds = %205
  %220 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !312
  %221 = icmp eq i32 %220, 0, !dbg !312
  br i1 %221, label %222, label %226, !dbg !314

; <label>:222:                                    ; preds = %219
  %223 = call i32* @__errno() #5, !dbg !315
  br label %224, !dbg !317

; <label>:224:                                    ; preds = %217, %222
  %225 = phi i32* [ %223, %222 ], [ %218, %217 ]
  store i32 34, i32* %225, align 4, !dbg !318, !tbaa !90
  br label %226, !dbg !319

; <label>:226:                                    ; preds = %224, %219
  %227 = load i32, i32* %208, align 8, !dbg !319, !tbaa !70
  %228 = icmp eq i32 %227, 0, !dbg !321
  br i1 %228, label %231, label %229, !dbg !322

; <label>:229:                                    ; preds = %226
  %230 = call i32* @__errno() #5, !dbg !323
  store i32 %227, i32* %230, align 4, !dbg !324, !tbaa !90
  br label %231, !dbg !323

; <label>:231:                                    ; preds = %226, %229
  %232 = load double, double* %214, align 8, !dbg !325, !tbaa !77
  %233 = fptrunc double %232 to float, !dbg !326
  br label %234, !dbg !327

; <label>:234:                                    ; preds = %197, %199, %202, %71, %14, %2, %8, %231, %194, %147, %104, %68, %38
  %235 = phi float [ %40, %38 ], [ %70, %68 ], [ %106, %104 ], [ %233, %231 ], [ %149, %147 ], [ %196, %194 ], [ %5, %8 ], [ %5, %2 ], [ %5, %14 ], [ %5, %71 ], [ %5, %202 ], [ %5, %199 ], [ %5, %197 ], !dbg !193
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !328
  ret float %235, !dbg !328
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
!92 = !DILocation(line: 52, column: 18, scope: !93)
!93 = distinct !DILexicalBlock(scope: !58, file: !1, line: 52, column: 14)
!94 = !DILocation(line: 52, column: 22, scope: !93)
!95 = !DILocation(line: 52, column: 14, scope: !58)
!96 = !DILocation(line: 53, column: 13, scope: !93)
!97 = !DILocation(line: 53, column: 19, scope: !93)
!98 = !DILocation(line: 54, column: 35, scope: !58)
!99 = !DILocation(line: 54, column: 24, scope: !58)
!100 = !DILocation(line: 54, column: 17, scope: !58)
!101 = !DILocation(line: 58, column: 6, scope: !102)
!102 = distinct !DILexicalBlock(scope: !18, file: !1, line: 58, column: 5)
!103 = !DILocation(line: 58, column: 5, scope: !18)
!104 = !DILocation(line: 59, column: 10, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 59, column: 9)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 58, column: 19)
!107 = !DILocation(line: 59, column: 9, scope: !106)
!108 = !DILocation(line: 62, column: 7, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 59, column: 24)
!110 = !DILocation(line: 62, column: 12, scope: !109)
!111 = !DILocation(line: 63, column: 7, scope: !109)
!112 = !DILocation(line: 63, column: 12, scope: !109)
!113 = !DILocation(line: 64, column: 7, scope: !109)
!114 = !DILocation(line: 64, column: 11, scope: !109)
!115 = !DILocation(line: 65, column: 7, scope: !109)
!116 = !DILocation(line: 65, column: 14, scope: !109)
!117 = !DILocation(line: 65, column: 12, scope: !109)
!118 = !DILocation(line: 67, column: 7, scope: !109)
!119 = !DILocation(line: 67, column: 14, scope: !109)
!120 = !DILocation(line: 68, column: 7, scope: !121)
!121 = distinct !DILexicalBlock(scope: !109, file: !1, line: 68, column: 7)
!122 = !DILocation(line: 68, column: 20, scope: !121)
!123 = !DILocation(line: 68, column: 7, scope: !109)
!124 = !DILocation(line: 68, column: 42, scope: !121)
!125 = !DILocation(line: 68, column: 31, scope: !121)
!126 = !DILocation(line: 69, column: 13, scope: !127)
!127 = distinct !DILexicalBlock(scope: !121, file: !1, line: 69, column: 12)
!128 = !DILocation(line: 69, column: 12, scope: !121)
!129 = !DILocation(line: 70, column: 4, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !1, line: 69, column: 28)
!131 = !DILocation(line: 70, column: 10, scope: !130)
!132 = !DILocation(line: 71, column: 3, scope: !130)
!133 = !DILocation(line: 72, column: 18, scope: !134)
!134 = distinct !DILexicalBlock(scope: !109, file: !1, line: 72, column: 14)
!135 = !DILocation(line: 72, column: 22, scope: !134)
!136 = !DILocation(line: 72, column: 14, scope: !109)
!137 = !DILocation(line: 73, column: 13, scope: !134)
!138 = !DILocation(line: 73, column: 19, scope: !134)
!139 = !DILocation(line: 74, column: 35, scope: !109)
!140 = !DILocation(line: 74, column: 24, scope: !109)
!141 = !DILocation(line: 74, column: 17, scope: !109)
!142 = !DILocation(line: 76, column: 9, scope: !143)
!143 = distinct !DILexicalBlock(scope: !106, file: !1, line: 76, column: 9)
!144 = !DILocation(line: 76, column: 22, scope: !143)
!145 = !DILocation(line: 76, column: 19, scope: !143)
!146 = !DILocation(line: 78, column: 7, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !1, line: 76, column: 35)
!148 = !DILocation(line: 78, column: 12, scope: !147)
!149 = !DILocation(line: 79, column: 7, scope: !147)
!150 = !DILocation(line: 79, column: 12, scope: !147)
!151 = !DILocation(line: 80, column: 7, scope: !147)
!152 = !DILocation(line: 80, column: 11, scope: !147)
!153 = !DILocation(line: 81, column: 7, scope: !147)
!154 = !DILocation(line: 81, column: 14, scope: !147)
!155 = !DILocation(line: 81, column: 12, scope: !147)
!156 = !DILocation(line: 83, column: 7, scope: !157)
!157 = distinct !DILexicalBlock(scope: !147, file: !1, line: 83, column: 7)
!158 = !DILocation(line: 83, column: 20, scope: !157)
!159 = !DILocation(line: 0, scope: !157)
!160 = !DILocation(line: 84, column: 5, scope: !157)
!161 = !DILocation(line: 87, column: 20, scope: !162)
!162 = distinct !DILexicalBlock(scope: !147, file: !1, line: 87, column: 7)
!163 = !DILocation(line: 87, column: 7, scope: !147)
!164 = !DILocation(line: 88, column: 5, scope: !162)
!165 = !DILocation(line: 89, column: 13, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !1, line: 89, column: 12)
!167 = !DILocation(line: 89, column: 12, scope: !162)
!168 = !DILocation(line: 90, column: 5, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !1, line: 89, column: 28)
!170 = !DILocation(line: 91, column: 3, scope: !169)
!171 = !DILocation(line: 0, scope: !162)
!172 = !DILocation(line: 92, column: 18, scope: !173)
!173 = distinct !DILexicalBlock(scope: !147, file: !1, line: 92, column: 14)
!174 = !DILocation(line: 92, column: 22, scope: !173)
!175 = !DILocation(line: 92, column: 14, scope: !147)
!176 = !DILocation(line: 93, column: 13, scope: !173)
!177 = !DILocation(line: 93, column: 19, scope: !173)
!178 = !DILocation(line: 94, column: 35, scope: !147)
!179 = !DILocation(line: 94, column: 24, scope: !147)
!180 = !DILocation(line: 94, column: 17, scope: !147)
!181 = !DILocation(line: 98, column: 6, scope: !182)
!182 = distinct !DILexicalBlock(scope: !18, file: !1, line: 98, column: 5)
!183 = !DILocation(line: 98, column: 5, scope: !18)
!184 = !DILocation(line: 99, column: 9, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !1, line: 99, column: 9)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 98, column: 18)
!187 = !DILocation(line: 99, column: 19, scope: !185)
!188 = !DILocation(line: 99, column: 21, scope: !185)
!189 = !DILocation(line: 99, column: 9, scope: !186)
!190 = !DILocation(line: 100, column: 13, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 100, column: 13)
!192 = distinct !DILexicalBlock(scope: !185, file: !1, line: 99, column: 33)
!193 = !DILocation(line: 0, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !1, line: 119, column: 17)
!195 = !DILocation(line: 100, column: 13, scope: !192)
!196 = !DILocation(line: 102, column: 16, scope: !197)
!197 = distinct !DILexicalBlock(scope: !191, file: !1, line: 100, column: 23)
!198 = !DILocation(line: 103, column: 11, scope: !197)
!199 = !DILocation(line: 103, column: 16, scope: !197)
!200 = !DILocation(line: 104, column: 11, scope: !197)
!201 = !DILocation(line: 104, column: 15, scope: !197)
!202 = !DILocation(line: 105, column: 11, scope: !197)
!203 = !DILocation(line: 105, column: 18, scope: !197)
!204 = !DILocation(line: 105, column: 16, scope: !197)
!205 = !DILocation(line: 107, column: 11, scope: !206)
!206 = distinct !DILexicalBlock(scope: !197, file: !1, line: 107, column: 11)
!207 = !DILocation(line: 107, column: 24, scope: !206)
!208 = !DILocation(line: 0, scope: !206)
!209 = !DILocation(line: 108, column: 11, scope: !206)
!210 = !DILocation(line: 111, column: 24, scope: !211)
!211 = distinct !DILexicalBlock(scope: !197, file: !1, line: 111, column: 11)
!212 = !DILocation(line: 111, column: 11, scope: !197)
!213 = !DILocation(line: 112, column: 11, scope: !211)
!214 = !DILocation(line: 113, column: 17, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !1, line: 113, column: 16)
!216 = !DILocation(line: 113, column: 16, scope: !211)
!217 = !DILocation(line: 114, column: 11, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !1, line: 113, column: 32)
!219 = !DILocation(line: 115, column: 7, scope: !218)
!220 = !DILocation(line: 0, scope: !211)
!221 = !DILocation(line: 116, column: 22, scope: !222)
!222 = distinct !DILexicalBlock(scope: !197, file: !1, line: 116, column: 18)
!223 = !DILocation(line: 116, column: 26, scope: !222)
!224 = !DILocation(line: 116, column: 18, scope: !197)
!225 = !DILocation(line: 117, column: 18, scope: !222)
!226 = !DILocation(line: 117, column: 24, scope: !222)
!227 = !DILocation(line: 118, column: 39, scope: !197)
!228 = !DILocation(line: 118, column: 28, scope: !197)
!229 = !DILocation(line: 118, column: 21, scope: !197)
!230 = !DILocation(line: 121, column: 16, scope: !194)
!231 = !DILocation(line: 122, column: 11, scope: !194)
!232 = !DILocation(line: 122, column: 16, scope: !194)
!233 = !DILocation(line: 123, column: 11, scope: !194)
!234 = !DILocation(line: 123, column: 15, scope: !194)
!235 = !DILocation(line: 124, column: 11, scope: !194)
!236 = !DILocation(line: 124, column: 18, scope: !194)
!237 = !DILocation(line: 124, column: 16, scope: !194)
!238 = !DILocation(line: 126, column: 11, scope: !239)
!239 = distinct !DILexicalBlock(scope: !194, file: !1, line: 126, column: 11)
!240 = !DILocation(line: 126, column: 24, scope: !239)
!241 = !DILocation(line: 0, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !1, line: 130, column: 14)
!243 = !DILocation(line: 126, column: 11, scope: !194)
!244 = !DILocation(line: 127, column: 21, scope: !245)
!245 = distinct !DILexicalBlock(scope: !239, file: !1, line: 126, column: 35)
!246 = !DILocation(line: 129, column: 14, scope: !247)
!247 = distinct !DILexicalBlock(scope: !245, file: !1, line: 129, column: 13)
!248 = !DILocation(line: 129, column: 18, scope: !247)
!249 = !DILocation(line: 128, column: 12, scope: !245)
!250 = !DILocation(line: 129, column: 25, scope: !247)
!251 = !DILocation(line: 129, column: 20, scope: !247)
!252 = !DILocation(line: 129, column: 27, scope: !247)
!253 = !DILocation(line: 129, column: 13, scope: !245)
!254 = !DILocation(line: 129, column: 43, scope: !247)
!255 = !DILocation(line: 129, column: 32, scope: !247)
!256 = !DILocation(line: 131, column: 21, scope: !242)
!257 = !DILocation(line: 133, column: 14, scope: !258)
!258 = distinct !DILexicalBlock(scope: !242, file: !1, line: 133, column: 13)
!259 = !DILocation(line: 133, column: 18, scope: !258)
!260 = !DILocation(line: 132, column: 26, scope: !242)
!261 = !DILocation(line: 133, column: 25, scope: !258)
!262 = !DILocation(line: 133, column: 20, scope: !258)
!263 = !DILocation(line: 133, column: 27, scope: !258)
!264 = !DILocation(line: 133, column: 13, scope: !242)
!265 = !DILocation(line: 133, column: 43, scope: !258)
!266 = !DILocation(line: 133, column: 32, scope: !258)
!267 = !DILocation(line: 135, column: 11, scope: !268)
!268 = distinct !DILexicalBlock(scope: !194, file: !1, line: 135, column: 11)
!269 = !DILocation(line: 135, column: 24, scope: !268)
!270 = !DILocation(line: 135, column: 11, scope: !194)
!271 = !DILocation(line: 136, column: 11, scope: !268)
!272 = !DILocation(line: 137, column: 17, scope: !273)
!273 = distinct !DILexicalBlock(scope: !268, file: !1, line: 137, column: 16)
!274 = !DILocation(line: 137, column: 16, scope: !268)
!275 = !DILocation(line: 138, column: 4, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !1, line: 137, column: 32)
!277 = !DILocation(line: 139, column: 7, scope: !276)
!278 = !DILocation(line: 0, scope: !268)
!279 = !DILocation(line: 140, column: 22, scope: !280)
!280 = distinct !DILexicalBlock(scope: !194, file: !1, line: 140, column: 18)
!281 = !DILocation(line: 140, column: 26, scope: !280)
!282 = !DILocation(line: 140, column: 18, scope: !194)
!283 = !DILocation(line: 141, column: 18, scope: !280)
!284 = !DILocation(line: 141, column: 24, scope: !280)
!285 = !DILocation(line: 142, column: 39, scope: !194)
!286 = !DILocation(line: 142, column: 28, scope: !194)
!287 = !DILocation(line: 142, column: 21, scope: !194)
!288 = !DILocation(line: 146, column: 6, scope: !289)
!289 = distinct !DILexicalBlock(scope: !18, file: !1, line: 146, column: 5)
!290 = !DILocation(line: 146, column: 18, scope: !289)
!291 = !DILocation(line: 146, column: 20, scope: !289)
!292 = !DILocation(line: 146, column: 30, scope: !289)
!293 = !DILocation(line: 146, column: 32, scope: !289)
!294 = !DILocation(line: 146, column: 5, scope: !18)
!295 = !DILocation(line: 148, column: 10, scope: !296)
!296 = distinct !DILexicalBlock(scope: !289, file: !1, line: 146, column: 44)
!297 = !DILocation(line: 148, column: 15, scope: !296)
!298 = !DILocation(line: 149, column: 10, scope: !296)
!299 = !DILocation(line: 149, column: 15, scope: !296)
!300 = !DILocation(line: 150, column: 10, scope: !296)
!301 = !DILocation(line: 150, column: 14, scope: !296)
!302 = !DILocation(line: 151, column: 10, scope: !296)
!303 = !DILocation(line: 151, column: 17, scope: !296)
!304 = !DILocation(line: 151, column: 15, scope: !296)
!305 = !DILocation(line: 153, column: 10, scope: !296)
!306 = !DILocation(line: 153, column: 17, scope: !296)
!307 = !DILocation(line: 154, column: 10, scope: !308)
!308 = distinct !DILexicalBlock(scope: !296, file: !1, line: 154, column: 10)
!309 = !DILocation(line: 154, column: 23, scope: !308)
!310 = !DILocation(line: 154, column: 10, scope: !296)
!311 = !DILocation(line: 155, column: 10, scope: !308)
!312 = !DILocation(line: 156, column: 16, scope: !313)
!313 = distinct !DILexicalBlock(scope: !308, file: !1, line: 156, column: 15)
!314 = !DILocation(line: 156, column: 15, scope: !308)
!315 = !DILocation(line: 157, column: 8, scope: !316)
!316 = distinct !DILexicalBlock(scope: !313, file: !1, line: 156, column: 31)
!317 = !DILocation(line: 158, column: 6, scope: !316)
!318 = !DILocation(line: 0, scope: !308)
!319 = !DILocation(line: 159, column: 14, scope: !320)
!320 = distinct !DILexicalBlock(scope: !296, file: !1, line: 159, column: 10)
!321 = !DILocation(line: 159, column: 18, scope: !320)
!322 = !DILocation(line: 159, column: 10, scope: !296)
!323 = !DILocation(line: 160, column: 10, scope: !320)
!324 = !DILocation(line: 160, column: 16, scope: !320)
!325 = !DILocation(line: 161, column: 31, scope: !296)
!326 = !DILocation(line: 161, column: 20, scope: !296)
!327 = !DILocation(line: 161, column: 13, scope: !296)
!328 = !DILocation(line: 165, column: 1, scope: !18)
