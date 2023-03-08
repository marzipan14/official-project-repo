; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_jn.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_jn.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @__ieee754_jnf(i32, float) local_unnamed_addr #0 !dbg !17 {
  %3 = bitcast float %1 to i32, !dbg !61
  %4 = and i32 %3, 2147483647, !dbg !63
  %5 = icmp ugt i32 %4, 2139095040, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  br i1 %5, label %6, label %8, !dbg !67

; <label>:6:                                      ; preds = %2
  %7 = fadd float %1, %1, !dbg !68
  br label %247, !dbg !69

; <label>:8:                                      ; preds = %2
  %9 = icmp slt i32 %0, 0, !dbg !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  br i1 %9, label %10, label %14, !dbg !72

; <label>:10:                                     ; preds = %8
  %11 = sub nsw i32 0, %0, !dbg !73
  %12 = fsub float -0.000000e+00, %1, !dbg !75
  %13 = xor i32 %3, -2147483648, !dbg !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br label %14, !dbg !77

; <label>:14:                                     ; preds = %10, %8
  %15 = phi i32 [ %13, %10 ], [ %3, %8 ], !dbg !78
  %16 = phi float [ %12, %10 ], [ %1, %8 ]
  %17 = phi i32 [ %11, %10 ], [ %0, %8 ]
  %18 = icmp eq i32 %17, 0, !dbg !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !81
  br i1 %18, label %19, label %21, !dbg !81

; <label>:19:                                     ; preds = %14
  %20 = tail call float @__ieee754_j0f(float %16) #3, !dbg !82
  br label %247, !dbg !83

; <label>:21:                                     ; preds = %14
  %22 = icmp eq i32 %17, 1, !dbg !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  br i1 %22, label %23, label %25, !dbg !86

; <label>:23:                                     ; preds = %21
  %24 = tail call float @__ieee754_j1f(float %16) #3, !dbg !87
  br label %247, !dbg !88

; <label>:25:                                     ; preds = %21
  %26 = lshr i32 %15, 31, !dbg !89
  %27 = and i32 %26, %17, !dbg !90
  %28 = tail call float @fabsf(float %16) #3, !dbg !92
  %29 = icmp eq i32 %4, 0, !dbg !93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  br i1 %29, label %32, label %30, !dbg !94

; <label>:30:                                     ; preds = %25
  %31 = icmp eq i32 %4, 2139095040, !dbg !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br i1 %31, label %32, label %33, !dbg !96

; <label>:32:                                     ; preds = %30, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  br label %242, !dbg !98

; <label>:33:                                     ; preds = %30
  %34 = sitofp i32 %17 to float, !dbg !99
  %35 = fcmp ult float %28, %34, !dbg !100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  br i1 %35, label %65, label %36, !dbg !101

; <label>:36:                                     ; preds = %33
  %37 = tail call float @__ieee754_j0f(float %28) #3, !dbg !102
  %38 = tail call float @__ieee754_j1f(float %28) #3, !dbg !105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  %39 = icmp sgt i32 %17, 1, !dbg !109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !111
  br i1 %39, label %40, label %242, !dbg !111

; <label>:40:                                     ; preds = %36
  %41 = add i32 %17, -1, !dbg !112
  %42 = and i32 %41, 1, !dbg !112
  %43 = icmp eq i32 %17, 2, !dbg !112
  br i1 %43, label %232, label %44, !dbg !112

; <label>:44:                                     ; preds = %40
  %45 = sub i32 %41, %42, !dbg !112
  br label %46, !dbg !112

; <label>:46:                                     ; preds = %46, %44
  %47 = phi i32 [ 1, %44 ], [ %62, %46 ]
  %48 = phi float [ %38, %44 ], [ %61, %46 ]
  %49 = phi float [ %37, %44 ], [ %55, %46 ]
  %50 = phi i32 [ %45, %44 ], [ %63, %46 ]
  %51 = shl nuw nsw i32 %47, 1, !dbg !112
  %52 = sitofp i32 %51 to float, !dbg !115
  %53 = fdiv float %52, %28, !dbg !116
  %54 = fmul float %48, %53, !dbg !117
  %55 = fsub float %54, %49, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !111
  %56 = shl nuw i32 %47, 1, !dbg !112
  %57 = add i32 %56, 2, !dbg !112
  %58 = sitofp i32 %57 to float, !dbg !115
  %59 = fdiv float %58, %28, !dbg !116
  %60 = fmul float %55, %59, !dbg !117
  %61 = fsub float %60, %48, !dbg !118
  %62 = add nuw nsw i32 %47, 2, !dbg !120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !111
  %63 = add i32 %50, -2, !dbg !111
  %64 = icmp eq i32 %63, 0, !dbg !111
  br i1 %64, label %229, label %46, !dbg !111, !llvm.loop !121

; <label>:65:                                     ; preds = %33
  %66 = icmp ult i32 %4, 813694976, !dbg !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  br i1 %66, label %67, label %125, !dbg !124

; <label>:67:                                     ; preds = %65
  %68 = icmp sgt i32 %17, 33, !dbg !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  br i1 %68, label %69, label %70, !dbg !128

; <label>:69:                                     ; preds = %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !129
  br label %242, !dbg !129

; <label>:70:                                     ; preds = %67
  %71 = fmul float %28, 5.000000e-01, !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  %72 = icmp slt i32 %17, 2, !dbg !134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  br i1 %72, label %121, label %73, !dbg !136

; <label>:73:                                     ; preds = %70
  %74 = add i32 %17, -1, !dbg !137
  %75 = add i32 %17, -2, !dbg !137
  %76 = and i32 %74, 3, !dbg !137
  %77 = icmp ult i32 %75, 3, !dbg !137
  br i1 %77, label %103, label %78, !dbg !137

; <label>:78:                                     ; preds = %73
  %79 = sub i32 %74, %76, !dbg !137
  br label %80, !dbg !137

; <label>:80:                                     ; preds = %80, %78
  %81 = phi i32 [ 2, %78 ], [ %100, %80 ]
  %82 = phi float [ %71, %78 ], [ %99, %80 ]
  %83 = phi float [ 1.000000e+00, %78 ], [ %98, %80 ]
  %84 = phi i32 [ %79, %78 ], [ %101, %80 ]
  %85 = sitofp i32 %81 to float, !dbg !137
  %86 = fmul float %83, %85, !dbg !139
  %87 = fmul float %71, %82, !dbg !140
  %88 = or i32 %81, 1, !dbg !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  %89 = sitofp i32 %88 to float, !dbg !137
  %90 = fmul float %86, %89, !dbg !139
  %91 = fmul float %71, %87, !dbg !140
  %92 = add nuw nsw i32 %81, 2, !dbg !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  %93 = sitofp i32 %92 to float, !dbg !137
  %94 = fmul float %90, %93, !dbg !139
  %95 = fmul float %71, %91, !dbg !140
  %96 = add nuw nsw i32 %81, 3, !dbg !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  %97 = sitofp i32 %96 to float, !dbg !137
  %98 = fmul float %94, %97, !dbg !139
  %99 = fmul float %71, %95, !dbg !140
  %100 = add nuw nsw i32 %81, 4, !dbg !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  %101 = add i32 %84, -4, !dbg !136
  %102 = icmp eq i32 %101, 0, !dbg !136
  br i1 %102, label %103, label %80, !dbg !136, !llvm.loop !143

; <label>:103:                                    ; preds = %80, %73
  %104 = phi float [ undef, %73 ], [ %98, %80 ]
  %105 = phi float [ undef, %73 ], [ %99, %80 ]
  %106 = phi i32 [ 2, %73 ], [ %100, %80 ]
  %107 = phi float [ %71, %73 ], [ %99, %80 ]
  %108 = phi float [ 1.000000e+00, %73 ], [ %98, %80 ]
  %109 = icmp eq i32 %76, 0, !dbg !136
  br i1 %109, label %121, label %110, !dbg !136

; <label>:110:                                    ; preds = %103, %110
  %111 = phi i32 [ %118, %110 ], [ %106, %103 ]
  %112 = phi float [ %117, %110 ], [ %107, %103 ]
  %113 = phi float [ %116, %110 ], [ %108, %103 ]
  %114 = phi i32 [ %119, %110 ], [ %76, %103 ]
  %115 = sitofp i32 %111 to float, !dbg !137
  %116 = fmul float %113, %115, !dbg !139
  %117 = fmul float %71, %112, !dbg !140
  %118 = add nuw nsw i32 %111, 1, !dbg !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  %119 = add i32 %114, -1, !dbg !136
  %120 = icmp eq i32 %119, 0, !dbg !136
  br i1 %120, label %121, label %110, !dbg !136, !llvm.loop !145

; <label>:121:                                    ; preds = %103, %110, %70
  %122 = phi float [ 1.000000e+00, %70 ], [ %104, %103 ], [ %116, %110 ], !dbg !147
  %123 = phi float [ %71, %70 ], [ %105, %103 ], [ %117, %110 ], !dbg !147
  %124 = fdiv float %123, %122, !dbg !148
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %242

; <label>:125:                                    ; preds = %65
  %126 = shl nsw i32 %17, 1, !dbg !149
  %127 = sitofp i32 %126 to float, !dbg !150
  %128 = insertelement <2 x float> <float undef, float 2.000000e+00>, float %127, i32 0, !dbg !152
  %129 = insertelement <2 x float> undef, float %28, i32 0, !dbg !152
  %130 = shufflevector <2 x float> %129, <2 x float> undef, <2 x i32> zeroinitializer, !dbg !152
  %131 = fdiv <2 x float> %128, %130, !dbg !152
  %132 = extractelement <2 x float> %131, i32 0, !dbg !155
  %133 = extractelement <2 x float> %131, i32 1, !dbg !155
  %134 = fadd float %132, %133, !dbg !155
  %135 = fmul float %132, %134, !dbg !157
  %136 = fadd float %135, -1.000000e+00, !dbg !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !161
  %137 = fcmp olt float %136, 1.000000e+09, !dbg !162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !161
  br i1 %137, label %138, label %148, !dbg !161

; <label>:138:                                    ; preds = %125, %138
  %139 = phi i32 [ %143, %138 ], [ 1, %125 ]
  %140 = phi float [ %146, %138 ], [ %136, %125 ]
  %141 = phi float [ %140, %138 ], [ %132, %125 ]
  %142 = phi float [ %144, %138 ], [ %134, %125 ]
  %143 = add nuw nsw i32 %139, 1, !dbg !163
  %144 = fadd float %133, %142, !dbg !165
  %145 = fmul float %144, %140, !dbg !166
  %146 = fsub float %145, %141, !dbg !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !161
  %147 = fcmp olt float %146, 1.000000e+09, !dbg !162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !161
  br i1 %147, label %138, label %148, !dbg !161, !llvm.loop !169

; <label>:148:                                    ; preds = %138, %125
  %149 = phi i32 [ 1, %125 ], [ %143, %138 ], !dbg !171
  %150 = add nsw i32 %149, %17, !dbg !174
  %151 = shl nsw i32 %150, 1, !dbg !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !178
  br label %152, !dbg !178

; <label>:152:                                    ; preds = %148, %152
  %153 = phi float [ 0.000000e+00, %148 ], [ %158, %152 ]
  %154 = phi i32 [ %151, %148 ], [ %159, %152 ]
  %155 = sitofp i32 %154 to float, !dbg !179
  %156 = fdiv float %155, %28, !dbg !181
  %157 = fsub float %156, %153, !dbg !182
  %158 = fdiv float 1.000000e+00, %157, !dbg !183
  %159 = add nsw i32 %154, -2, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !185
  %160 = icmp slt i32 %159, %126, !dbg !186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !178
  br i1 %160, label %161, label %152, !dbg !178, !llvm.loop !187

; <label>:161:                                    ; preds = %152
  %162 = fmul float %133, %34, !dbg !190
  %163 = tail call float @fabsf(float %162) #3, !dbg !191
  %164 = tail call float @__ieee754_logf(float %163) #3, !dbg !192
  %165 = fmul float %164, %34, !dbg !193
  %166 = fcmp olt float %165, 0x40562E3000000000, !dbg !194
  %167 = add nsw i32 %17, -1, !dbg !196
  %168 = shl nsw i32 %167, 1, !dbg !196
  %169 = sitofp i32 %168 to float, !dbg !196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  %170 = icmp sgt i32 %17, 1, !dbg !201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  br i1 %166, label %172, label %171, !dbg !200

; <label>:171:                                    ; preds = %161
  br i1 %170, label %203, label %223, !dbg !203

; <label>:172:                                    ; preds = %161
  br i1 %170, label %173, label %223, !dbg !204

; <label>:173:                                    ; preds = %172
  %174 = and i32 %17, 1, !dbg !207
  %175 = icmp eq i32 %174, 0, !dbg !207
  br i1 %175, label %176, label %181, !dbg !207

; <label>:176:                                    ; preds = %173
  %177 = fdiv float %169, %28, !dbg !210
  %178 = fsub float %177, %158, !dbg !211
  %179 = fadd float %169, -2.000000e+00, !dbg !212
  %180 = add nsw i32 %17, -2, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !204
  br label %181, !dbg !204

; <label>:181:                                    ; preds = %176, %173
  %182 = phi i32 [ %167, %173 ], [ %180, %176 ]
  %183 = phi float [ %169, %173 ], [ %179, %176 ]
  %184 = phi float [ 1.000000e+00, %173 ], [ %178, %176 ]
  %185 = phi float [ %158, %173 ], [ 1.000000e+00, %176 ]
  %186 = phi float [ undef, %173 ], [ %178, %176 ]
  %187 = icmp eq i32 %17, 2, !dbg !207
  br i1 %187, label %223, label %188, !dbg !207

; <label>:188:                                    ; preds = %181, %188
  %189 = phi i32 [ %201, %188 ], [ %182, %181 ]
  %190 = phi float [ %200, %188 ], [ %183, %181 ]
  %191 = phi float [ %199, %188 ], [ %184, %181 ]
  %192 = phi float [ %195, %188 ], [ %185, %181 ]
  %193 = fmul float %191, %190, !dbg !207
  %194 = fdiv float %193, %28, !dbg !210
  %195 = fsub float %194, %192, !dbg !211
  %196 = fadd float %190, -2.000000e+00, !dbg !212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !204
  %197 = fmul float %195, %196, !dbg !207
  %198 = fdiv float %197, %28, !dbg !210
  %199 = fsub float %198, %191, !dbg !211
  %200 = fadd float %196, -2.000000e+00, !dbg !212
  %201 = add nsw i32 %189, -2, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  %202 = icmp sgt i32 %189, 2, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !204
  br i1 %202, label %188, label %223, !dbg !204, !llvm.loop !216

; <label>:203:                                    ; preds = %171, %217
  %204 = phi float [ %220, %217 ], [ %158, %171 ]
  %205 = phi i32 [ %221, %217 ], [ %167, %171 ]
  %206 = phi float [ %212, %217 ], [ %169, %171 ]
  %207 = phi float [ %219, %217 ], [ 1.000000e+00, %171 ]
  %208 = phi float [ %218, %217 ], [ %158, %171 ]
  %209 = fmul float %207, %206, !dbg !218
  %210 = fdiv float %209, %28, !dbg !220
  %211 = fsub float %210, %208, !dbg !221
  %212 = fadd float %206, -2.000000e+00, !dbg !222
  %213 = fcmp ogt float %211, 1.000000e+10, !dbg !223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  br i1 %213, label %214, label %217, !dbg !225

; <label>:214:                                    ; preds = %203
  %215 = fdiv float %207, %211, !dbg !226
  %216 = fdiv float %204, %211, !dbg !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !229
  br label %217, !dbg !229

; <label>:217:                                    ; preds = %203, %214
  %218 = phi float [ %215, %214 ], [ %207, %203 ], !dbg !230
  %219 = phi float [ 1.000000e+00, %214 ], [ %211, %203 ], !dbg !230
  %220 = phi float [ %216, %214 ], [ %204, %203 ], !dbg !231
  %221 = add nsw i32 %205, -1, !dbg !232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !233
  %222 = icmp sgt i32 %205, 1, !dbg !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !203
  br i1 %222, label %203, label %223, !dbg !203, !llvm.loop !235

; <label>:223:                                    ; preds = %217, %181, %188, %171, %172
  %224 = phi float [ 1.000000e+00, %172 ], [ 1.000000e+00, %171 ], [ %186, %181 ], [ %199, %188 ], [ %219, %217 ], !dbg !237
  %225 = phi float [ %158, %172 ], [ %158, %171 ], [ %158, %188 ], [ %158, %181 ], [ %220, %217 ], !dbg !238
  %226 = tail call float @__ieee754_j0f(float %28) #3, !dbg !239
  %227 = fmul float %225, %226, !dbg !240
  %228 = fdiv float %227, %224, !dbg !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %242

; <label>:229:                                    ; preds = %46
  %230 = shl nuw i32 %62, 1, !dbg !111
  %231 = sitofp i32 %230 to float, !dbg !111
  br label %232, !dbg !111

; <label>:232:                                    ; preds = %229, %40
  %233 = phi float [ undef, %40 ], [ %61, %229 ]
  %234 = phi float [ 2.000000e+00, %40 ], [ %231, %229 ]
  %235 = phi float [ %38, %40 ], [ %61, %229 ]
  %236 = phi float [ %37, %40 ], [ %55, %229 ]
  %237 = icmp eq i32 %42, 0, !dbg !111
  br i1 %237, label %242, label %238, !dbg !111

; <label>:238:                                    ; preds = %232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !111
  %239 = fdiv float %234, %28, !dbg !116
  %240 = fmul float %235, %239, !dbg !117
  %241 = fsub float %240, %236, !dbg !118
  br label %242, !dbg !242

; <label>:242:                                    ; preds = %238, %232, %36, %69, %121, %223, %32
  %243 = phi float [ 0.000000e+00, %32 ], [ 0.000000e+00, %69 ], [ %124, %121 ], [ %228, %223 ], [ %38, %36 ], [ %233, %232 ], [ %241, %238 ], !dbg !244
  %244 = icmp eq i32 %27, 1, !dbg !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  %245 = fsub float -0.000000e+00, %243, !dbg !246
  %246 = select i1 %244, float %245, float %243, !dbg !245
  br label %247, !dbg !245

; <label>:247:                                    ; preds = %242, %23, %19, %6
  %248 = phi float [ %7, %6 ], [ %20, %19 ], [ %24, %23 ], [ %246, %242 ], !dbg !247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  ret float %248, !dbg !249
}

; Function Attrs: noredzone
declare dso_local float @__ieee754_j0f(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_j1f(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @fabsf(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_logf(float) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local float @__ieee754_ynf(i32, float) local_unnamed_addr #0 !dbg !250 {
  %3 = bitcast float %1 to i32, !dbg !273
  %4 = and i32 %3, 2147483647, !dbg !275
  %5 = icmp ugt i32 %4, 2139095040, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  br i1 %5, label %6, label %8, !dbg !279

; <label>:6:                                      ; preds = %2
  %7 = fadd float %1, %1, !dbg !280
  br label %59, !dbg !281

; <label>:8:                                      ; preds = %2
  %9 = icmp eq i32 %4, 0, !dbg !282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  br i1 %9, label %59, label %10, !dbg !284

; <label>:10:                                     ; preds = %8
  %11 = icmp slt i32 %3, 0, !dbg !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  br i1 %11, label %59, label %12, !dbg !287

; <label>:12:                                     ; preds = %10
  %13 = icmp slt i32 %0, 0, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  br i1 %13, label %14, label %19, !dbg !291

; <label>:14:                                     ; preds = %12
  %15 = sub nsw i32 0, %0, !dbg !292
  %16 = shl i32 %15, 1, !dbg !294
  %17 = and i32 %16, 2, !dbg !294
  %18 = sub nsw i32 1, %17, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !296
  br label %19, !dbg !296

; <label>:19:                                     ; preds = %14, %12
  %20 = phi i32 [ %18, %14 ], [ 1, %12 ], !dbg !297
  %21 = phi i32 [ %15, %14 ], [ %0, %12 ]
  %22 = icmp eq i32 %21, 0, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  br i1 %22, label %23, label %25, !dbg !300

; <label>:23:                                     ; preds = %19
  %24 = tail call float @__ieee754_y0f(float %1) #3, !dbg !301
  br label %59, !dbg !302

; <label>:25:                                     ; preds = %19
  %26 = icmp eq i32 %21, 1, !dbg !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  br i1 %26, label %27, label %31, !dbg !305

; <label>:27:                                     ; preds = %25
  %28 = sitofp i32 %20 to float, !dbg !306
  %29 = tail call float @__ieee754_y1f(float %1) #3, !dbg !307
  %30 = fmul float %29, %28, !dbg !308
  br label %59, !dbg !309

; <label>:31:                                     ; preds = %25
  %32 = icmp eq i32 %4, 2139095040, !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br i1 %32, label %59, label %33, !dbg !312

; <label>:33:                                     ; preds = %31
  %34 = tail call float @__ieee754_y0f(float %1) #3, !dbg !313
  %35 = tail call float @__ieee754_y1f(float %1) #3, !dbg !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  %36 = bitcast float %35 to i32, !dbg !320
  %37 = icmp sgt i32 %21, 1, !dbg !321
  %38 = icmp ne i32 %36, -8388608, !dbg !322
  %39 = and i1 %37, %38, !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  br i1 %39, label %40, label %54, !dbg !324

; <label>:40:                                     ; preds = %33, %40
  %41 = phi i32 [ %49, %40 ], [ 1, %33 ]
  %42 = phi float [ %48, %40 ], [ %35, %33 ]
  %43 = phi float [ %42, %40 ], [ %34, %33 ]
  %44 = shl nuw nsw i32 %41, 1, !dbg !326
  %45 = sitofp i32 %44 to float, !dbg !327
  %46 = fdiv float %45, %1, !dbg !328
  %47 = fmul float %42, %46, !dbg !329
  %48 = fsub float %47, %43, !dbg !330
  %49 = add nuw nsw i32 %41, 1, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  %50 = bitcast float %48 to i32, !dbg !320
  %51 = icmp slt i32 %49, %21, !dbg !321
  %52 = icmp ne i32 %50, -8388608, !dbg !322
  %53 = and i1 %51, %52, !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  br i1 %53, label %40, label %54, !dbg !324, !llvm.loop !334

; <label>:54:                                     ; preds = %40, %33
  %55 = phi float [ %35, %33 ], [ %48, %40 ], !dbg !336
  %56 = icmp sgt i32 %20, 0, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
  %57 = fsub float -0.000000e+00, %55, !dbg !340
  %58 = select i1 %56, float %55, float %57, !dbg !339
  br label %59, !dbg !339

; <label>:59:                                     ; preds = %54, %31, %10, %8, %27, %23, %6
  %60 = phi float [ %7, %6 ], [ %24, %23 ], [ %30, %27 ], [ 0xFFF0000000000000, %8 ], [ 0x7FF8000000000000, %10 ], [ 0.000000e+00, %31 ], [ %58, %54 ], !dbg !341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  ret float %60, !dbg !343
}

; Function Attrs: noredzone
declare dso_local float @__ieee754_y0f(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_y1f(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_jn.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{!6, !9, !11}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!7 = distinct !DIGlobalVariable(name: "zero", scope: !0, file: !1, line: 28, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 1065353216, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 25, type: !8, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression(DW_OP_constu, 1073741824, DW_OP_stack_value))
!12 = distinct !DIGlobalVariable(name: "two", scope: !0, file: !1, line: 24, type: !8, isLocal: true, isDefinition: true)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!17 = distinct !DISubprogram(name: "__ieee754_jnf", scope: !1, file: !1, line: 34, type: !18, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!4, !20, !4}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{!22, !23, !24, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !46, !52, !53, !54, !55, !56, !57, !58}
!22 = !DILocalVariable(name: "n", arg: 1, scope: !17, file: !1, line: 34, type: !20)
!23 = !DILocalVariable(name: "x", arg: 2, scope: !17, file: !1, line: 34, type: !4)
!24 = !DILocalVariable(name: "i", scope: !17, file: !1, line: 40, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !26, line: 77, baseType: !20)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !DILocalVariable(name: "hx", scope: !17, file: !1, line: 40, type: !25)
!28 = !DILocalVariable(name: "ix", scope: !17, file: !1, line: 40, type: !25)
!29 = !DILocalVariable(name: "sgn", scope: !17, file: !1, line: 40, type: !25)
!30 = !DILocalVariable(name: "a", scope: !17, file: !1, line: 41, type: !4)
!31 = !DILocalVariable(name: "b", scope: !17, file: !1, line: 41, type: !4)
!32 = !DILocalVariable(name: "temp", scope: !17, file: !1, line: 41, type: !4)
!33 = !DILocalVariable(name: "di", scope: !17, file: !1, line: 41, type: !4)
!34 = !DILocalVariable(name: "z", scope: !17, file: !1, line: 42, type: !4)
!35 = !DILocalVariable(name: "w", scope: !17, file: !1, line: 42, type: !4)
!36 = !DILocalVariable(name: "gf_u", scope: !37, file: !1, line: 47, type: !38)
!37 = distinct !DILexicalBlock(scope: !17, file: !1, line: 47, column: 2)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !39, line: 347, baseType: !40)
!39 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!40 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !39, line: 343, size: 32, elements: !41)
!41 = !{!42, !43}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !40, file: !39, line: 345, baseType: !4, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !40, file: !39, line: 346, baseType: !44, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !26, line: 79, baseType: !45)
!45 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!46 = !DILocalVariable(name: "t", scope: !47, file: !1, line: 116, type: !4)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 86, column: 13)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 72, column: 9)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 71, column: 9)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 62, column: 10)
!51 = distinct !DILexicalBlock(scope: !17, file: !1, line: 60, column: 5)
!52 = !DILocalVariable(name: "v", scope: !47, file: !1, line: 116, type: !4)
!53 = !DILocalVariable(name: "q0", scope: !47, file: !1, line: 117, type: !4)
!54 = !DILocalVariable(name: "q1", scope: !47, file: !1, line: 117, type: !4)
!55 = !DILocalVariable(name: "h", scope: !47, file: !1, line: 117, type: !4)
!56 = !DILocalVariable(name: "tmp", scope: !47, file: !1, line: 117, type: !4)
!57 = !DILocalVariable(name: "k", scope: !47, file: !1, line: 117, type: !25)
!58 = !DILocalVariable(name: "m", scope: !47, file: !1, line: 117, type: !25)
!59 = !DILocation(line: 34, column: 26, scope: !17)
!60 = !DILocation(line: 34, column: 35, scope: !17)
!61 = !DILocation(line: 47, column: 2, scope: !37)
!62 = !DILocation(line: 40, column: 14, scope: !17)
!63 = !DILocation(line: 48, column: 17, scope: !17)
!64 = !DILocation(line: 40, column: 17, scope: !17)
!65 = !DILocation(line: 50, column: 5, scope: !66)
!66 = distinct !DILexicalBlock(scope: !17, file: !1, line: 50, column: 5)
!67 = !DILocation(line: 50, column: 5, scope: !17)
!68 = !DILocation(line: 50, column: 35, scope: !66)
!69 = !DILocation(line: 50, column: 27, scope: !66)
!70 = !DILocation(line: 51, column: 6, scope: !71)
!71 = distinct !DILexicalBlock(scope: !17, file: !1, line: 51, column: 5)
!72 = !DILocation(line: 51, column: 5, scope: !17)
!73 = !DILocation(line: 52, column: 7, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !1, line: 51, column: 9)
!75 = !DILocation(line: 53, column: 7, scope: !74)
!76 = !DILocation(line: 54, column: 6, scope: !74)
!77 = !DILocation(line: 55, column: 2, scope: !74)
!78 = !DILocation(line: 0, scope: !37)
!79 = !DILocation(line: 56, column: 6, scope: !80)
!80 = distinct !DILexicalBlock(scope: !17, file: !1, line: 56, column: 5)
!81 = !DILocation(line: 56, column: 5, scope: !17)
!82 = !DILocation(line: 56, column: 18, scope: !80)
!83 = !DILocation(line: 56, column: 11, scope: !80)
!84 = !DILocation(line: 57, column: 6, scope: !85)
!85 = distinct !DILexicalBlock(scope: !17, file: !1, line: 57, column: 5)
!86 = !DILocation(line: 57, column: 5, scope: !17)
!87 = !DILocation(line: 57, column: 18, scope: !85)
!88 = !DILocation(line: 57, column: 11, scope: !85)
!89 = !DILocation(line: 58, column: 17, scope: !17)
!90 = !DILocation(line: 58, column: 13, scope: !17)
!91 = !DILocation(line: 40, column: 21, scope: !17)
!92 = !DILocation(line: 59, column: 6, scope: !17)
!93 = !DILocation(line: 60, column: 5, scope: !51)
!94 = !DILocation(line: 60, column: 26, scope: !51)
!95 = !DILocation(line: 60, column: 28, scope: !51)
!96 = !DILocation(line: 60, column: 5, scope: !17)
!97 = !DILocation(line: 41, column: 11, scope: !17)
!98 = !DILocation(line: 61, column: 6, scope: !51)
!99 = !DILocation(line: 62, column: 10, scope: !50)
!100 = !DILocation(line: 62, column: 18, scope: !50)
!101 = !DILocation(line: 62, column: 10, scope: !51)
!102 = !DILocation(line: 64, column: 10, scope: !103)
!103 = distinct !DILexicalBlock(scope: !50, file: !1, line: 62, column: 23)
!104 = !DILocation(line: 41, column: 8, scope: !17)
!105 = !DILocation(line: 65, column: 10, scope: !103)
!106 = !DILocation(line: 40, column: 12, scope: !17)
!107 = !DILocation(line: 66, column: 10, scope: !108)
!108 = distinct !DILexicalBlock(scope: !103, file: !1, line: 66, column: 6)
!109 = !DILocation(line: 66, column: 15, scope: !110)
!110 = distinct !DILexicalBlock(scope: !108, file: !1, line: 66, column: 6)
!111 = !DILocation(line: 66, column: 6, scope: !108)
!112 = !DILocation(line: 68, column: 19, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !1, line: 66, column: 22)
!114 = !DILocation(line: 41, column: 14, scope: !17)
!115 = !DILocation(line: 68, column: 10, scope: !113)
!116 = !DILocation(line: 68, column: 22, scope: !113)
!117 = !DILocation(line: 68, column: 8, scope: !113)
!118 = !DILocation(line: 68, column: 26, scope: !113)
!119 = !DILocation(line: 66, column: 6, scope: !110)
!120 = !DILocation(line: 66, column: 19, scope: !110)
!121 = distinct !{!121, !111, !122}
!122 = !DILocation(line: 70, column: 6, scope: !108)
!123 = !DILocation(line: 72, column: 11, scope: !48)
!124 = !DILocation(line: 72, column: 9, scope: !49)
!125 = !DILocation(line: 76, column: 7, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !1, line: 76, column: 6)
!127 = distinct !DILexicalBlock(scope: !48, file: !1, line: 72, column: 24)
!128 = !DILocation(line: 76, column: 6, scope: !127)
!129 = !DILocation(line: 77, column: 7, scope: !126)
!130 = !DILocation(line: 79, column: 15, scope: !131)
!131 = distinct !DILexicalBlock(scope: !126, file: !1, line: 78, column: 8)
!132 = !DILocation(line: 80, column: 12, scope: !133)
!133 = distinct !DILexicalBlock(scope: !131, file: !1, line: 80, column: 7)
!134 = !DILocation(line: 80, column: 23, scope: !135)
!135 = distinct !DILexicalBlock(scope: !133, file: !1, line: 80, column: 7)
!136 = !DILocation(line: 80, column: 7, scope: !133)
!137 = !DILocation(line: 81, column: 9, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !1, line: 80, column: 32)
!139 = !DILocation(line: 81, column: 6, scope: !138)
!140 = !DILocation(line: 82, column: 6, scope: !138)
!141 = !DILocation(line: 80, column: 28, scope: !135)
!142 = !DILocation(line: 80, column: 7, scope: !135)
!143 = distinct !{!143, !136, !144}
!144 = !DILocation(line: 83, column: 7, scope: !133)
!145 = distinct !{!145, !146}
!146 = !{!"llvm.loop.unroll.disable"}
!147 = !DILocation(line: 0, scope: !138)
!148 = !DILocation(line: 84, column: 12, scope: !131)
!149 = !DILocation(line: 118, column: 10, scope: !47)
!150 = !DILocation(line: 118, column: 8, scope: !47)
!151 = !DILocation(line: 42, column: 11, scope: !17)
!152 = !DILocation(line: 118, column: 13, scope: !47)
!153 = !DILocation(line: 117, column: 15, scope: !47)
!154 = !DILocation(line: 117, column: 9, scope: !47)
!155 = !DILocation(line: 119, column: 17, scope: !47)
!156 = !DILocation(line: 42, column: 8, scope: !17)
!157 = !DILocation(line: 119, column: 27, scope: !47)
!158 = !DILocation(line: 119, column: 30, scope: !47)
!159 = !DILocation(line: 117, column: 12, scope: !47)
!160 = !DILocation(line: 117, column: 32, scope: !47)
!161 = !DILocation(line: 120, column: 3, scope: !47)
!162 = !DILocation(line: 120, column: 11, scope: !47)
!163 = !DILocation(line: 121, column: 6, scope: !164)
!164 = distinct !DILexicalBlock(scope: !47, file: !1, line: 120, column: 26)
!165 = !DILocation(line: 121, column: 14, scope: !164)
!166 = !DILocation(line: 122, column: 11, scope: !164)
!167 = !DILocation(line: 122, column: 15, scope: !164)
!168 = !DILocation(line: 117, column: 17, scope: !47)
!169 = distinct !{!169, !161, !170}
!170 = !DILocation(line: 125, column: 3, scope: !47)
!171 = !DILocation(line: 0, scope: !164)
!172 = !DILocation(line: 117, column: 34, scope: !47)
!173 = !DILocation(line: 116, column: 9, scope: !47)
!174 = !DILocation(line: 127, column: 23, scope: !175)
!175 = distinct !DILexicalBlock(scope: !47, file: !1, line: 127, column: 3)
!176 = !DILocation(line: 127, column: 20, scope: !175)
!177 = !DILocation(line: 127, column: 7, scope: !175)
!178 = !DILocation(line: 127, column: 3, scope: !175)
!179 = !DILocation(line: 127, column: 51, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !1, line: 127, column: 3)
!181 = !DILocation(line: 127, column: 52, scope: !180)
!182 = !DILocation(line: 127, column: 54, scope: !180)
!183 = !DILocation(line: 127, column: 49, scope: !180)
!184 = !DILocation(line: 127, column: 36, scope: !180)
!185 = !DILocation(line: 127, column: 3, scope: !180)
!186 = !DILocation(line: 127, column: 29, scope: !180)
!187 = distinct !{!187, !178, !188}
!188 = !DILocation(line: 127, column: 56, scope: !175)
!189 = !DILocation(line: 116, column: 11, scope: !47)
!190 = !DILocation(line: 140, column: 35, scope: !47)
!191 = !DILocation(line: 140, column: 28, scope: !47)
!192 = !DILocation(line: 140, column: 13, scope: !47)
!193 = !DILocation(line: 140, column: 12, scope: !47)
!194 = !DILocation(line: 141, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !47, file: !1, line: 141, column: 6)
!196 = !DILocation(line: 0, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !1, line: 150, column: 11)
!198 = distinct !DILexicalBlock(scope: !195, file: !1, line: 149, column: 10)
!199 = !DILocation(line: 41, column: 20, scope: !17)
!200 = !DILocation(line: 141, column: 6, scope: !47)
!201 = !DILocation(line: 0, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !1, line: 150, column: 11)
!203 = !DILocation(line: 150, column: 11, scope: !197)
!204 = !DILocation(line: 142, column: 11, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 142, column: 11)
!206 = distinct !DILexicalBlock(scope: !195, file: !1, line: 141, column: 35)
!207 = !DILocation(line: 144, column: 6, scope: !208)
!208 = distinct !DILexicalBlock(scope: !209, file: !1, line: 142, column: 45)
!209 = distinct !DILexicalBlock(scope: !205, file: !1, line: 142, column: 11)
!210 = !DILocation(line: 145, column: 10, scope: !208)
!211 = !DILocation(line: 145, column: 13, scope: !208)
!212 = !DILocation(line: 147, column: 7, scope: !208)
!213 = !DILocation(line: 142, column: 42, scope: !209)
!214 = !DILocation(line: 142, column: 11, scope: !209)
!215 = !DILocation(line: 142, column: 38, scope: !209)
!216 = distinct !{!216, !204, !217}
!217 = !DILocation(line: 148, column: 12, scope: !205)
!218 = !DILocation(line: 152, column: 6, scope: !219)
!219 = distinct !DILexicalBlock(scope: !202, file: !1, line: 150, column: 45)
!220 = !DILocation(line: 153, column: 10, scope: !219)
!221 = !DILocation(line: 153, column: 13, scope: !219)
!222 = !DILocation(line: 155, column: 7, scope: !219)
!223 = !DILocation(line: 157, column: 8, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !1, line: 157, column: 7)
!225 = !DILocation(line: 157, column: 7, scope: !219)
!226 = !DILocation(line: 158, column: 10, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !1, line: 157, column: 22)
!228 = !DILocation(line: 159, column: 10, scope: !227)
!229 = !DILocation(line: 161, column: 4, scope: !227)
!230 = !DILocation(line: 0, scope: !219)
!231 = !DILocation(line: 0, scope: !175)
!232 = !DILocation(line: 150, column: 42, scope: !202)
!233 = !DILocation(line: 150, column: 11, scope: !202)
!234 = !DILocation(line: 150, column: 38, scope: !202)
!235 = distinct !{!235, !203, !236}
!236 = !DILocation(line: 162, column: 12, scope: !197)
!237 = !DILocation(line: 129, column: 5, scope: !47)
!238 = !DILocation(line: 127, column: 8, scope: !175)
!239 = !DILocation(line: 164, column: 14, scope: !47)
!240 = !DILocation(line: 164, column: 13, scope: !47)
!241 = !DILocation(line: 164, column: 30, scope: !47)
!242 = !DILocation(line: 167, column: 8, scope: !243)
!243 = distinct !DILexicalBlock(scope: !17, file: !1, line: 167, column: 5)
!244 = !DILocation(line: 0, scope: !47)
!245 = !DILocation(line: 167, column: 5, scope: !17)
!246 = !DILocation(line: 167, column: 20, scope: !243)
!247 = !DILocation(line: 0, scope: !243)
!248 = !DILocation(line: 0, scope: !66)
!249 = !DILocation(line: 168, column: 1, scope: !17)
!250 = distinct !DISubprogram(name: "__ieee754_ynf", scope: !1, file: !1, line: 171, type: !18, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !251)
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !264, !266}
!252 = !DILocalVariable(name: "n", arg: 1, scope: !250, file: !1, line: 171, type: !20)
!253 = !DILocalVariable(name: "x", arg: 2, scope: !250, file: !1, line: 171, type: !4)
!254 = !DILocalVariable(name: "i", scope: !250, file: !1, line: 177, type: !25)
!255 = !DILocalVariable(name: "hx", scope: !250, file: !1, line: 177, type: !25)
!256 = !DILocalVariable(name: "ix", scope: !250, file: !1, line: 177, type: !25)
!257 = !DILocalVariable(name: "ib", scope: !250, file: !1, line: 177, type: !25)
!258 = !DILocalVariable(name: "sign", scope: !250, file: !1, line: 178, type: !25)
!259 = !DILocalVariable(name: "a", scope: !250, file: !1, line: 179, type: !4)
!260 = !DILocalVariable(name: "b", scope: !250, file: !1, line: 179, type: !4)
!261 = !DILocalVariable(name: "temp", scope: !250, file: !1, line: 179, type: !4)
!262 = !DILocalVariable(name: "gf_u", scope: !263, file: !1, line: 181, type: !38)
!263 = distinct !DILexicalBlock(scope: !250, file: !1, line: 181, column: 2)
!264 = !DILocalVariable(name: "gf_u", scope: !265, file: !1, line: 199, type: !38)
!265 = distinct !DILexicalBlock(scope: !250, file: !1, line: 199, column: 2)
!266 = !DILocalVariable(name: "gf_u", scope: !267, file: !1, line: 203, type: !38)
!267 = distinct !DILexicalBlock(scope: !268, file: !1, line: 203, column: 6)
!268 = distinct !DILexicalBlock(scope: !269, file: !1, line: 200, column: 34)
!269 = distinct !DILexicalBlock(scope: !270, file: !1, line: 200, column: 2)
!270 = distinct !DILexicalBlock(scope: !250, file: !1, line: 200, column: 2)
!271 = !DILocation(line: 171, column: 26, scope: !250)
!272 = !DILocation(line: 171, column: 35, scope: !250)
!273 = !DILocation(line: 181, column: 2, scope: !263)
!274 = !DILocation(line: 177, column: 14, scope: !250)
!275 = !DILocation(line: 182, column: 17, scope: !250)
!276 = !DILocation(line: 177, column: 17, scope: !250)
!277 = !DILocation(line: 184, column: 5, scope: !278)
!278 = distinct !DILexicalBlock(scope: !250, file: !1, line: 184, column: 5)
!279 = !DILocation(line: 184, column: 5, scope: !250)
!280 = !DILocation(line: 184, column: 35, scope: !278)
!281 = !DILocation(line: 184, column: 27, scope: !278)
!282 = !DILocation(line: 185, column: 5, scope: !283)
!283 = distinct !DILexicalBlock(scope: !250, file: !1, line: 185, column: 5)
!284 = !DILocation(line: 185, column: 5, scope: !250)
!285 = !DILocation(line: 186, column: 7, scope: !286)
!286 = distinct !DILexicalBlock(scope: !250, file: !1, line: 186, column: 5)
!287 = !DILocation(line: 186, column: 5, scope: !250)
!288 = !DILocation(line: 178, column: 12, scope: !250)
!289 = !DILocation(line: 188, column: 6, scope: !290)
!290 = distinct !DILexicalBlock(scope: !250, file: !1, line: 188, column: 5)
!291 = !DILocation(line: 188, column: 5, scope: !250)
!292 = !DILocation(line: 189, column: 7, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !1, line: 188, column: 9)
!294 = !DILocation(line: 190, column: 20, scope: !293)
!295 = !DILocation(line: 190, column: 12, scope: !293)
!296 = !DILocation(line: 191, column: 2, scope: !293)
!297 = !DILocation(line: 0, scope: !250)
!298 = !DILocation(line: 192, column: 6, scope: !299)
!299 = distinct !DILexicalBlock(scope: !250, file: !1, line: 192, column: 5)
!300 = !DILocation(line: 192, column: 5, scope: !250)
!301 = !DILocation(line: 192, column: 18, scope: !299)
!302 = !DILocation(line: 192, column: 11, scope: !299)
!303 = !DILocation(line: 193, column: 6, scope: !304)
!304 = distinct !DILexicalBlock(scope: !250, file: !1, line: 193, column: 5)
!305 = !DILocation(line: 193, column: 5, scope: !250)
!306 = !DILocation(line: 193, column: 18, scope: !304)
!307 = !DILocation(line: 193, column: 23, scope: !304)
!308 = !DILocation(line: 193, column: 22, scope: !304)
!309 = !DILocation(line: 193, column: 11, scope: !304)
!310 = !DILocation(line: 194, column: 5, scope: !311)
!311 = distinct !DILexicalBlock(scope: !250, file: !1, line: 194, column: 5)
!312 = !DILocation(line: 194, column: 5, scope: !250)
!313 = !DILocation(line: 196, column: 6, scope: !250)
!314 = !DILocation(line: 179, column: 8, scope: !250)
!315 = !DILocation(line: 197, column: 6, scope: !250)
!316 = !DILocation(line: 179, column: 11, scope: !250)
!317 = !DILocation(line: 177, column: 20, scope: !250)
!318 = !DILocation(line: 177, column: 12, scope: !250)
!319 = !DILocation(line: 200, column: 6, scope: !270)
!320 = !DILocation(line: 0, scope: !267)
!321 = !DILocation(line: 200, column: 11, scope: !269)
!322 = !DILocation(line: 200, column: 17, scope: !269)
!323 = !DILocation(line: 200, column: 13, scope: !269)
!324 = !DILocation(line: 200, column: 2, scope: !270)
!325 = !DILocation(line: 179, column: 14, scope: !250)
!326 = !DILocation(line: 202, column: 20, scope: !268)
!327 = !DILocation(line: 202, column: 11, scope: !268)
!328 = !DILocation(line: 202, column: 23, scope: !268)
!329 = !DILocation(line: 202, column: 26, scope: !268)
!330 = !DILocation(line: 202, column: 29, scope: !268)
!331 = !DILocation(line: 203, column: 6, scope: !267)
!332 = !DILocation(line: 200, column: 31, scope: !269)
!333 = !DILocation(line: 200, column: 2, scope: !269)
!334 = distinct !{!334, !324, !335}
!335 = !DILocation(line: 205, column: 2, scope: !270)
!336 = !DILocation(line: 0, scope: !268)
!337 = !DILocation(line: 206, column: 9, scope: !338)
!338 = distinct !DILexicalBlock(scope: !250, file: !1, line: 206, column: 5)
!339 = !DILocation(line: 206, column: 5, scope: !250)
!340 = !DILocation(line: 206, column: 35, scope: !338)
!341 = !DILocation(line: 0, scope: !338)
!342 = !DILocation(line: 0, scope: !278)
!343 = !DILocation(line: 207, column: 1, scope: !250)
