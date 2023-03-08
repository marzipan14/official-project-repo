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
  br i1 %5, label %6, label %8, !dbg !67

; <label>:6:                                      ; preds = %2
  %7 = fadd float %1, %1, !dbg !68
  br label %267, !dbg !69

; <label>:8:                                      ; preds = %2
  %9 = icmp slt i32 %0, 0, !dbg !70
  br i1 %9, label %10, label %14, !dbg !72

; <label>:10:                                     ; preds = %8
  %11 = sub nsw i32 0, %0, !dbg !73
  %12 = fsub float -0.000000e+00, %1, !dbg !75
  %13 = xor i32 %3, -2147483648, !dbg !76
  br label %14, !dbg !77

; <label>:14:                                     ; preds = %10, %8
  %15 = phi i32 [ %13, %10 ], [ %3, %8 ], !dbg !78
  %16 = phi float [ %12, %10 ], [ %1, %8 ]
  %17 = phi i32 [ %11, %10 ], [ %0, %8 ]
  switch i32 %17, label %22 [
    i32 0, label %18
    i32 1, label %20
  ], !dbg !79

; <label>:18:                                     ; preds = %14
  %19 = tail call float @__ieee754_j0f(float %16) #3, !dbg !80
  br label %267, !dbg !82

; <label>:20:                                     ; preds = %14
  %21 = tail call float @__ieee754_j1f(float %16) #3, !dbg !83
  br label %267, !dbg !85

; <label>:22:                                     ; preds = %14
  %23 = lshr i32 %15, 31, !dbg !86
  %24 = and i32 %23, %17, !dbg !87
  %25 = tail call float @fabsf(float %16) #3, !dbg !89
  %26 = trunc i32 %3 to i31, !dbg !90
  switch i31 %26, label %27 [
    i31 0, label %262
    i31 -8388608, label %262
  ], !dbg !90

; <label>:27:                                     ; preds = %22
  %28 = sitofp i32 %17 to float, !dbg !91
  %29 = fcmp ult float %25, %28, !dbg !92
  br i1 %29, label %59, label %30, !dbg !93

; <label>:30:                                     ; preds = %27
  %31 = tail call float @__ieee754_j0f(float %25) #3, !dbg !94
  %32 = tail call float @__ieee754_j1f(float %25) #3, !dbg !97
  %33 = icmp sgt i32 %17, 1, !dbg !100
  br i1 %33, label %34, label %262, !dbg !103

; <label>:34:                                     ; preds = %30
  %35 = add i32 %17, -1, !dbg !104
  %36 = and i32 %35, 1, !dbg !104
  %37 = icmp eq i32 %17, 2, !dbg !104
  br i1 %37, label %252, label %38, !dbg !104

; <label>:38:                                     ; preds = %34
  %39 = sub i32 %35, %36, !dbg !104
  br label %40, !dbg !104

; <label>:40:                                     ; preds = %40, %38
  %41 = phi i32 [ 1, %38 ], [ %56, %40 ]
  %42 = phi float [ %32, %38 ], [ %55, %40 ]
  %43 = phi float [ %31, %38 ], [ %49, %40 ]
  %44 = phi i32 [ %39, %38 ], [ %57, %40 ]
  %45 = shl nuw nsw i32 %41, 1, !dbg !104
  %46 = sitofp i32 %45 to float, !dbg !107
  %47 = fdiv float %46, %25, !dbg !108
  %48 = fmul float %42, %47, !dbg !109
  %49 = fsub float %48, %43, !dbg !110
  %50 = shl nuw i32 %41, 1, !dbg !104
  %51 = add i32 %50, 2, !dbg !104
  %52 = sitofp i32 %51 to float, !dbg !107
  %53 = fdiv float %52, %25, !dbg !108
  %54 = fmul float %49, %53, !dbg !109
  %55 = fsub float %54, %42, !dbg !110
  %56 = add nuw nsw i32 %41, 2, !dbg !111
  %57 = add i32 %44, -2, !dbg !103
  %58 = icmp eq i32 %57, 0, !dbg !103
  br i1 %58, label %249, label %40, !dbg !103, !llvm.loop !112

; <label>:59:                                     ; preds = %27
  %60 = icmp ult i32 %4, 813694976, !dbg !114
  br i1 %60, label %61, label %118, !dbg !115

; <label>:61:                                     ; preds = %59
  %62 = icmp sgt i32 %17, 33, !dbg !116
  br i1 %62, label %262, label %63, !dbg !119

; <label>:63:                                     ; preds = %61
  %64 = fmul float %25, 5.000000e-01, !dbg !120
  %65 = icmp slt i32 %17, 2, !dbg !122
  br i1 %65, label %114, label %66, !dbg !125

; <label>:66:                                     ; preds = %63
  %67 = add i32 %17, -1, !dbg !126
  %68 = add i32 %17, -2, !dbg !126
  %69 = and i32 %67, 3, !dbg !126
  %70 = icmp ult i32 %68, 3, !dbg !126
  br i1 %70, label %96, label %71, !dbg !126

; <label>:71:                                     ; preds = %66
  %72 = sub i32 %67, %69, !dbg !126
  br label %73, !dbg !126

; <label>:73:                                     ; preds = %73, %71
  %74 = phi i32 [ 2, %71 ], [ %93, %73 ]
  %75 = phi float [ %64, %71 ], [ %92, %73 ]
  %76 = phi float [ 1.000000e+00, %71 ], [ %91, %73 ]
  %77 = phi i32 [ %72, %71 ], [ %94, %73 ]
  %78 = sitofp i32 %74 to float, !dbg !126
  %79 = fmul float %76, %78, !dbg !128
  %80 = fmul float %64, %75, !dbg !129
  %81 = or i32 %74, 1, !dbg !130
  %82 = sitofp i32 %81 to float, !dbg !126
  %83 = fmul float %79, %82, !dbg !128
  %84 = fmul float %64, %80, !dbg !129
  %85 = add nuw nsw i32 %74, 2, !dbg !130
  %86 = sitofp i32 %85 to float, !dbg !126
  %87 = fmul float %83, %86, !dbg !128
  %88 = fmul float %64, %84, !dbg !129
  %89 = add nuw nsw i32 %74, 3, !dbg !130
  %90 = sitofp i32 %89 to float, !dbg !126
  %91 = fmul float %87, %90, !dbg !128
  %92 = fmul float %64, %88, !dbg !129
  %93 = add nuw nsw i32 %74, 4, !dbg !130
  %94 = add i32 %77, -4, !dbg !125
  %95 = icmp eq i32 %94, 0, !dbg !125
  br i1 %95, label %96, label %73, !dbg !125, !llvm.loop !131

; <label>:96:                                     ; preds = %73, %66
  %97 = phi float [ undef, %66 ], [ %91, %73 ]
  %98 = phi float [ undef, %66 ], [ %92, %73 ]
  %99 = phi i32 [ 2, %66 ], [ %93, %73 ]
  %100 = phi float [ %64, %66 ], [ %92, %73 ]
  %101 = phi float [ 1.000000e+00, %66 ], [ %91, %73 ]
  %102 = icmp eq i32 %69, 0, !dbg !125
  br i1 %102, label %114, label %103, !dbg !125

; <label>:103:                                    ; preds = %96, %103
  %104 = phi i32 [ %111, %103 ], [ %99, %96 ]
  %105 = phi float [ %110, %103 ], [ %100, %96 ]
  %106 = phi float [ %109, %103 ], [ %101, %96 ]
  %107 = phi i32 [ %112, %103 ], [ %69, %96 ]
  %108 = sitofp i32 %104 to float, !dbg !126
  %109 = fmul float %106, %108, !dbg !128
  %110 = fmul float %64, %105, !dbg !129
  %111 = add nuw nsw i32 %104, 1, !dbg !130
  %112 = add i32 %107, -1, !dbg !125
  %113 = icmp eq i32 %112, 0, !dbg !125
  br i1 %113, label %114, label %103, !dbg !125, !llvm.loop !133

; <label>:114:                                    ; preds = %96, %103, %63
  %115 = phi float [ 1.000000e+00, %63 ], [ %97, %96 ], [ %109, %103 ], !dbg !135
  %116 = phi float [ %64, %63 ], [ %98, %96 ], [ %110, %103 ], !dbg !135
  %117 = fdiv float %116, %115, !dbg !136
  br label %262

; <label>:118:                                    ; preds = %59
  %119 = shl nsw i32 %17, 1, !dbg !137
  %120 = sitofp i32 %119 to float, !dbg !138
  %121 = insertelement <2 x float> <float undef, float 2.000000e+00>, float %120, i32 0, !dbg !140
  %122 = insertelement <2 x float> undef, float %25, i32 0, !dbg !140
  %123 = shufflevector <2 x float> %122, <2 x float> undef, <2 x i32> zeroinitializer, !dbg !140
  %124 = fdiv <2 x float> %121, %123, !dbg !140
  %125 = extractelement <2 x float> %124, i32 0, !dbg !143
  %126 = extractelement <2 x float> %124, i32 1, !dbg !143
  %127 = fadd float %125, %126, !dbg !143
  %128 = fmul float %125, %127, !dbg !145
  %129 = fadd float %128, -1.000000e+00, !dbg !146
  %130 = fcmp olt float %129, 1.000000e+09, !dbg !149
  br i1 %130, label %131, label %141, !dbg !150

; <label>:131:                                    ; preds = %118, %131
  %132 = phi i32 [ %136, %131 ], [ 1, %118 ]
  %133 = phi float [ %139, %131 ], [ %129, %118 ]
  %134 = phi float [ %133, %131 ], [ %125, %118 ]
  %135 = phi float [ %137, %131 ], [ %127, %118 ]
  %136 = add nuw nsw i32 %132, 1, !dbg !151
  %137 = fadd float %126, %135, !dbg !153
  %138 = fmul float %137, %133, !dbg !154
  %139 = fsub float %138, %134, !dbg !155
  %140 = fcmp olt float %139, 1.000000e+09, !dbg !149
  br i1 %140, label %131, label %141, !dbg !150, !llvm.loop !157

; <label>:141:                                    ; preds = %131, %118
  %142 = phi i32 [ 1, %118 ], [ %136, %131 ], !dbg !159
  %143 = add nsw i32 %142, %17, !dbg !162
  %144 = shl nsw i32 %143, 1, !dbg !164
  %145 = add i32 %17, %142, !dbg !165
  %146 = mul i32 %145, -2, !dbg !165
  %147 = shl i32 %17, 1, !dbg !165
  %148 = xor i32 %147, -1, !dbg !165
  %149 = icmp sgt i32 %146, %148, !dbg !165
  %150 = select i1 %149, i32 %146, i32 %148, !dbg !165
  %151 = shl i32 %145, 1, !dbg !165
  %152 = add i32 %150, %151, !dbg !165
  %153 = add i32 %152, 1, !dbg !165
  %154 = and i32 %153, 2, !dbg !165
  %155 = icmp eq i32 %154, 0, !dbg !165
  br i1 %155, label %156, label %161, !dbg !165

; <label>:156:                                    ; preds = %141
  %157 = sitofp i32 %144 to float, !dbg !166
  %158 = fdiv float %157, %25, !dbg !168
  %159 = fdiv float 1.000000e+00, %158, !dbg !169
  %160 = add nsw i32 %144, -2, !dbg !170
  br label %161, !dbg !165

; <label>:161:                                    ; preds = %156, %141
  %162 = phi float [ undef, %141 ], [ %159, %156 ]
  %163 = phi float [ 0.000000e+00, %141 ], [ %159, %156 ]
  %164 = phi i32 [ %144, %141 ], [ %160, %156 ]
  %165 = icmp ult i32 %153, 2, !dbg !165
  br i1 %165, label %180, label %166, !dbg !165

; <label>:166:                                    ; preds = %161, %166
  %167 = phi float [ %177, %166 ], [ %163, %161 ]
  %168 = phi i32 [ %178, %166 ], [ %164, %161 ]
  %169 = sitofp i32 %168 to float, !dbg !166
  %170 = fdiv float %169, %25, !dbg !168
  %171 = fsub float %170, %167, !dbg !171
  %172 = fdiv float 1.000000e+00, %171, !dbg !169
  %173 = add nsw i32 %168, -2, !dbg !170
  %174 = sitofp i32 %173 to float, !dbg !166
  %175 = fdiv float %174, %25, !dbg !168
  %176 = fsub float %175, %172, !dbg !171
  %177 = fdiv float 1.000000e+00, %176, !dbg !169
  %178 = add nsw i32 %168, -4, !dbg !170
  %179 = icmp slt i32 %178, %119, !dbg !172
  br i1 %179, label %180, label %166, !dbg !165, !llvm.loop !173

; <label>:180:                                    ; preds = %166, %161
  %181 = phi float [ %162, %161 ], [ %177, %166 ], !dbg !169
  %182 = fmul float %126, %28, !dbg !176
  %183 = tail call float @fabsf(float %182) #3, !dbg !177
  %184 = tail call float @__ieee754_logf(float %183) #3, !dbg !178
  %185 = fmul float %184, %28, !dbg !179
  %186 = fcmp olt float %185, 0x40562E3000000000, !dbg !180
  %187 = add nsw i32 %17, -1, !dbg !182
  %188 = shl nsw i32 %187, 1, !dbg !182
  %189 = sitofp i32 %188 to float, !dbg !182
  %190 = icmp sgt i32 %17, 1, !dbg !186
  br i1 %186, label %192, label %191, !dbg !188

; <label>:191:                                    ; preds = %180
  br i1 %190, label %223, label %243, !dbg !189

; <label>:192:                                    ; preds = %180
  br i1 %190, label %193, label %243, !dbg !190

; <label>:193:                                    ; preds = %192
  %194 = and i32 %17, 1, !dbg !193
  %195 = icmp eq i32 %194, 0, !dbg !193
  br i1 %195, label %196, label %201, !dbg !193

; <label>:196:                                    ; preds = %193
  %197 = fdiv float %189, %25, !dbg !196
  %198 = fsub float %197, %181, !dbg !197
  %199 = fadd float %189, -2.000000e+00, !dbg !198
  %200 = add nsw i32 %17, -2, !dbg !199
  br label %201, !dbg !190

; <label>:201:                                    ; preds = %196, %193
  %202 = phi i32 [ %187, %193 ], [ %200, %196 ]
  %203 = phi float [ %189, %193 ], [ %199, %196 ]
  %204 = phi float [ 1.000000e+00, %193 ], [ %198, %196 ]
  %205 = phi float [ %181, %193 ], [ 1.000000e+00, %196 ]
  %206 = phi float [ undef, %193 ], [ %198, %196 ]
  %207 = icmp eq i32 %17, 2, !dbg !193
  br i1 %207, label %243, label %208, !dbg !193

; <label>:208:                                    ; preds = %201, %208
  %209 = phi i32 [ %221, %208 ], [ %202, %201 ]
  %210 = phi float [ %220, %208 ], [ %203, %201 ]
  %211 = phi float [ %219, %208 ], [ %204, %201 ]
  %212 = phi float [ %215, %208 ], [ %205, %201 ]
  %213 = fmul float %211, %210, !dbg !193
  %214 = fdiv float %213, %25, !dbg !196
  %215 = fsub float %214, %212, !dbg !197
  %216 = fadd float %210, -2.000000e+00, !dbg !198
  %217 = fmul float %215, %216, !dbg !193
  %218 = fdiv float %217, %25, !dbg !196
  %219 = fsub float %218, %211, !dbg !197
  %220 = fadd float %216, -2.000000e+00, !dbg !198
  %221 = add nsw i32 %209, -2, !dbg !199
  %222 = icmp sgt i32 %209, 2, !dbg !200
  br i1 %222, label %208, label %243, !dbg !190, !llvm.loop !201

; <label>:223:                                    ; preds = %191, %237
  %224 = phi float [ %240, %237 ], [ %181, %191 ]
  %225 = phi i32 [ %241, %237 ], [ %187, %191 ]
  %226 = phi float [ %232, %237 ], [ %189, %191 ]
  %227 = phi float [ %239, %237 ], [ 1.000000e+00, %191 ]
  %228 = phi float [ %238, %237 ], [ %181, %191 ]
  %229 = fmul float %227, %226, !dbg !203
  %230 = fdiv float %229, %25, !dbg !205
  %231 = fsub float %230, %228, !dbg !206
  %232 = fadd float %226, -2.000000e+00, !dbg !207
  %233 = fcmp ogt float %231, 1.000000e+10, !dbg !208
  br i1 %233, label %234, label %237, !dbg !210

; <label>:234:                                    ; preds = %223
  %235 = fdiv float %227, %231, !dbg !211
  %236 = fdiv float %224, %231, !dbg !213
  br label %237, !dbg !214

; <label>:237:                                    ; preds = %223, %234
  %238 = phi float [ %235, %234 ], [ %227, %223 ], !dbg !215
  %239 = phi float [ 1.000000e+00, %234 ], [ %231, %223 ], !dbg !215
  %240 = phi float [ %236, %234 ], [ %224, %223 ], !dbg !216
  %241 = add nsw i32 %225, -1, !dbg !217
  %242 = icmp sgt i32 %225, 1, !dbg !218
  br i1 %242, label %223, label %243, !dbg !189, !llvm.loop !219

; <label>:243:                                    ; preds = %237, %201, %208, %191, %192
  %244 = phi float [ 1.000000e+00, %192 ], [ 1.000000e+00, %191 ], [ %206, %201 ], [ %219, %208 ], [ %239, %237 ], !dbg !221
  %245 = phi float [ %181, %192 ], [ %181, %191 ], [ %181, %208 ], [ %181, %201 ], [ %240, %237 ], !dbg !222
  %246 = tail call float @__ieee754_j0f(float %25) #3, !dbg !223
  %247 = fmul float %245, %246, !dbg !224
  %248 = fdiv float %247, %244, !dbg !225
  br label %262

; <label>:249:                                    ; preds = %40
  %250 = shl nuw i32 %56, 1, !dbg !103
  %251 = sitofp i32 %250 to float, !dbg !103
  br label %252, !dbg !103

; <label>:252:                                    ; preds = %249, %34
  %253 = phi float [ undef, %34 ], [ %55, %249 ]
  %254 = phi float [ 2.000000e+00, %34 ], [ %251, %249 ]
  %255 = phi float [ %32, %34 ], [ %55, %249 ]
  %256 = phi float [ %31, %34 ], [ %49, %249 ]
  %257 = icmp eq i32 %36, 0, !dbg !103
  br i1 %257, label %262, label %258, !dbg !103

; <label>:258:                                    ; preds = %252
  %259 = fdiv float %254, %25, !dbg !108
  %260 = fmul float %255, %259, !dbg !109
  %261 = fsub float %260, %256, !dbg !110
  br label %262, !dbg !226

; <label>:262:                                    ; preds = %258, %252, %30, %61, %22, %22, %114, %243
  %263 = phi float [ %117, %114 ], [ %248, %243 ], [ 0.000000e+00, %22 ], [ 0.000000e+00, %22 ], [ 0.000000e+00, %61 ], [ %32, %30 ], [ %253, %252 ], [ %261, %258 ], !dbg !228
  %264 = icmp eq i32 %24, 1, !dbg !226
  %265 = fsub float -0.000000e+00, %263, !dbg !229
  %266 = select i1 %264, float %265, float %263, !dbg !230
  br label %267, !dbg !230

; <label>:267:                                    ; preds = %262, %20, %18, %6
  %268 = phi float [ %7, %6 ], [ %19, %18 ], [ %21, %20 ], [ %266, %262 ], !dbg !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  ret float %268, !dbg !232
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
define dso_local float @__ieee754_ynf(i32, float) local_unnamed_addr #0 !dbg !233 {
  %3 = bitcast float %1 to i32, !dbg !256
  %4 = and i32 %3, 2147483647, !dbg !258
  %5 = icmp ugt i32 %4, 2139095040, !dbg !260
  br i1 %5, label %6, label %8, !dbg !262

; <label>:6:                                      ; preds = %2
  %7 = fadd float %1, %1, !dbg !263
  br label %56, !dbg !264

; <label>:8:                                      ; preds = %2
  %9 = icmp eq i32 %4, 0, !dbg !265
  br i1 %9, label %56, label %10, !dbg !267

; <label>:10:                                     ; preds = %8
  %11 = icmp slt i32 %3, 0, !dbg !268
  br i1 %11, label %56, label %12, !dbg !270

; <label>:12:                                     ; preds = %10
  %13 = icmp slt i32 %0, 0, !dbg !272
  br i1 %13, label %14, label %19, !dbg !274

; <label>:14:                                     ; preds = %12
  %15 = sub nsw i32 0, %0, !dbg !275
  %16 = shl i32 %15, 1, !dbg !277
  %17 = and i32 %16, 2, !dbg !277
  %18 = sub nsw i32 1, %17, !dbg !278
  br label %19, !dbg !279

; <label>:19:                                     ; preds = %14, %12
  %20 = phi i32 [ %18, %14 ], [ 1, %12 ], !dbg !280
  %21 = phi i32 [ %15, %14 ], [ %0, %12 ]
  switch i32 %21, label %28 [
    i32 0, label %22
    i32 1, label %24
  ], !dbg !281

; <label>:22:                                     ; preds = %19
  %23 = tail call float @__ieee754_y0f(float %1) #3, !dbg !282
  br label %56, !dbg !284

; <label>:24:                                     ; preds = %19
  %25 = sitofp i32 %20 to float, !dbg !285
  %26 = tail call float @__ieee754_y1f(float %1) #3, !dbg !287
  %27 = fmul float %26, %25, !dbg !288
  br label %56, !dbg !289

; <label>:28:                                     ; preds = %19
  %29 = icmp eq i32 %4, 2139095040, !dbg !290
  br i1 %29, label %56, label %30, !dbg !292

; <label>:30:                                     ; preds = %28
  %31 = tail call float @__ieee754_y0f(float %1) #3, !dbg !293
  %32 = tail call float @__ieee754_y1f(float %1) #3, !dbg !295
  %33 = bitcast float %32 to i32, !dbg !299
  %34 = icmp sgt i32 %21, 1, !dbg !300
  %35 = icmp ne i32 %33, -8388608, !dbg !301
  %36 = and i1 %34, %35, !dbg !302
  br i1 %36, label %37, label %51, !dbg !303

; <label>:37:                                     ; preds = %30, %37
  %38 = phi i32 [ %46, %37 ], [ 1, %30 ]
  %39 = phi float [ %45, %37 ], [ %32, %30 ]
  %40 = phi float [ %39, %37 ], [ %31, %30 ]
  %41 = shl nuw nsw i32 %38, 1, !dbg !305
  %42 = sitofp i32 %41 to float, !dbg !306
  %43 = fdiv float %42, %1, !dbg !307
  %44 = fmul float %39, %43, !dbg !308
  %45 = fsub float %44, %40, !dbg !309
  %46 = add nuw nsw i32 %38, 1, !dbg !311
  %47 = bitcast float %45 to i32, !dbg !299
  %48 = icmp slt i32 %46, %21, !dbg !300
  %49 = icmp ne i32 %47, -8388608, !dbg !301
  %50 = and i1 %48, %49, !dbg !302
  br i1 %50, label %37, label %51, !dbg !303, !llvm.loop !312

; <label>:51:                                     ; preds = %37, %30
  %52 = phi float [ %32, %30 ], [ %45, %37 ], !dbg !314
  %53 = icmp sgt i32 %20, 0, !dbg !315
  %54 = fsub float -0.000000e+00, %52, !dbg !317
  %55 = select i1 %53, float %52, float %54, !dbg !318
  br label %56, !dbg !318

; <label>:56:                                     ; preds = %51, %28, %10, %8, %24, %22, %6
  %57 = phi float [ %7, %6 ], [ %23, %22 ], [ %27, %24 ], [ 0xFFF0000000000000, %8 ], [ 0x7FF8000000000000, %10 ], [ 0.000000e+00, %28 ], [ %55, %51 ], !dbg !319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  ret float %57, !dbg !320
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
!79 = !DILocation(line: 56, column: 5, scope: !17)
!80 = !DILocation(line: 56, column: 18, scope: !81)
!81 = distinct !DILexicalBlock(scope: !17, file: !1, line: 56, column: 5)
!82 = !DILocation(line: 56, column: 11, scope: !81)
!83 = !DILocation(line: 57, column: 18, scope: !84)
!84 = distinct !DILexicalBlock(scope: !17, file: !1, line: 57, column: 5)
!85 = !DILocation(line: 57, column: 11, scope: !84)
!86 = !DILocation(line: 58, column: 17, scope: !17)
!87 = !DILocation(line: 58, column: 13, scope: !17)
!88 = !DILocation(line: 40, column: 21, scope: !17)
!89 = !DILocation(line: 59, column: 6, scope: !17)
!90 = !DILocation(line: 60, column: 26, scope: !51)
!91 = !DILocation(line: 62, column: 10, scope: !50)
!92 = !DILocation(line: 62, column: 18, scope: !50)
!93 = !DILocation(line: 62, column: 10, scope: !51)
!94 = !DILocation(line: 64, column: 10, scope: !95)
!95 = distinct !DILexicalBlock(scope: !50, file: !1, line: 62, column: 23)
!96 = !DILocation(line: 41, column: 8, scope: !17)
!97 = !DILocation(line: 65, column: 10, scope: !95)
!98 = !DILocation(line: 41, column: 11, scope: !17)
!99 = !DILocation(line: 40, column: 12, scope: !17)
!100 = !DILocation(line: 66, column: 15, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 66, column: 6)
!102 = distinct !DILexicalBlock(scope: !95, file: !1, line: 66, column: 6)
!103 = !DILocation(line: 66, column: 6, scope: !102)
!104 = !DILocation(line: 68, column: 19, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 66, column: 22)
!106 = !DILocation(line: 41, column: 14, scope: !17)
!107 = !DILocation(line: 68, column: 10, scope: !105)
!108 = !DILocation(line: 68, column: 22, scope: !105)
!109 = !DILocation(line: 68, column: 8, scope: !105)
!110 = !DILocation(line: 68, column: 26, scope: !105)
!111 = !DILocation(line: 66, column: 19, scope: !101)
!112 = distinct !{!112, !103, !113}
!113 = !DILocation(line: 70, column: 6, scope: !102)
!114 = !DILocation(line: 72, column: 11, scope: !48)
!115 = !DILocation(line: 72, column: 9, scope: !49)
!116 = !DILocation(line: 76, column: 7, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !1, line: 76, column: 6)
!118 = distinct !DILexicalBlock(scope: !48, file: !1, line: 72, column: 24)
!119 = !DILocation(line: 76, column: 6, scope: !118)
!120 = !DILocation(line: 79, column: 15, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 78, column: 8)
!122 = !DILocation(line: 80, column: 23, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !1, line: 80, column: 7)
!124 = distinct !DILexicalBlock(scope: !121, file: !1, line: 80, column: 7)
!125 = !DILocation(line: 80, column: 7, scope: !124)
!126 = !DILocation(line: 81, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 80, column: 32)
!128 = !DILocation(line: 81, column: 6, scope: !127)
!129 = !DILocation(line: 82, column: 6, scope: !127)
!130 = !DILocation(line: 80, column: 28, scope: !123)
!131 = distinct !{!131, !125, !132}
!132 = !DILocation(line: 83, column: 7, scope: !124)
!133 = distinct !{!133, !134}
!134 = !{!"llvm.loop.unroll.disable"}
!135 = !DILocation(line: 0, scope: !127)
!136 = !DILocation(line: 84, column: 12, scope: !121)
!137 = !DILocation(line: 118, column: 10, scope: !47)
!138 = !DILocation(line: 118, column: 8, scope: !47)
!139 = !DILocation(line: 42, column: 11, scope: !17)
!140 = !DILocation(line: 118, column: 13, scope: !47)
!141 = !DILocation(line: 117, column: 15, scope: !47)
!142 = !DILocation(line: 117, column: 9, scope: !47)
!143 = !DILocation(line: 119, column: 17, scope: !47)
!144 = !DILocation(line: 42, column: 8, scope: !17)
!145 = !DILocation(line: 119, column: 27, scope: !47)
!146 = !DILocation(line: 119, column: 30, scope: !47)
!147 = !DILocation(line: 117, column: 12, scope: !47)
!148 = !DILocation(line: 117, column: 32, scope: !47)
!149 = !DILocation(line: 120, column: 11, scope: !47)
!150 = !DILocation(line: 120, column: 3, scope: !47)
!151 = !DILocation(line: 121, column: 6, scope: !152)
!152 = distinct !DILexicalBlock(scope: !47, file: !1, line: 120, column: 26)
!153 = !DILocation(line: 121, column: 14, scope: !152)
!154 = !DILocation(line: 122, column: 11, scope: !152)
!155 = !DILocation(line: 122, column: 15, scope: !152)
!156 = !DILocation(line: 117, column: 17, scope: !47)
!157 = distinct !{!157, !150, !158}
!158 = !DILocation(line: 125, column: 3, scope: !47)
!159 = !DILocation(line: 0, scope: !152)
!160 = !DILocation(line: 117, column: 34, scope: !47)
!161 = !DILocation(line: 116, column: 9, scope: !47)
!162 = !DILocation(line: 127, column: 23, scope: !163)
!163 = distinct !DILexicalBlock(scope: !47, file: !1, line: 127, column: 3)
!164 = !DILocation(line: 127, column: 20, scope: !163)
!165 = !DILocation(line: 127, column: 3, scope: !163)
!166 = !DILocation(line: 127, column: 51, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !1, line: 127, column: 3)
!168 = !DILocation(line: 127, column: 52, scope: !167)
!169 = !DILocation(line: 127, column: 49, scope: !167)
!170 = !DILocation(line: 127, column: 36, scope: !167)
!171 = !DILocation(line: 127, column: 54, scope: !167)
!172 = !DILocation(line: 127, column: 29, scope: !167)
!173 = distinct !{!173, !165, !174}
!174 = !DILocation(line: 127, column: 56, scope: !163)
!175 = !DILocation(line: 116, column: 11, scope: !47)
!176 = !DILocation(line: 140, column: 35, scope: !47)
!177 = !DILocation(line: 140, column: 28, scope: !47)
!178 = !DILocation(line: 140, column: 13, scope: !47)
!179 = !DILocation(line: 140, column: 12, scope: !47)
!180 = !DILocation(line: 141, column: 9, scope: !181)
!181 = distinct !DILexicalBlock(scope: !47, file: !1, line: 141, column: 6)
!182 = !DILocation(line: 0, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 150, column: 11)
!184 = distinct !DILexicalBlock(scope: !181, file: !1, line: 149, column: 10)
!185 = !DILocation(line: 41, column: 20, scope: !17)
!186 = !DILocation(line: 0, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 150, column: 11)
!188 = !DILocation(line: 141, column: 6, scope: !47)
!189 = !DILocation(line: 150, column: 11, scope: !183)
!190 = !DILocation(line: 142, column: 11, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 142, column: 11)
!192 = distinct !DILexicalBlock(scope: !181, file: !1, line: 141, column: 35)
!193 = !DILocation(line: 144, column: 6, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !1, line: 142, column: 45)
!195 = distinct !DILexicalBlock(scope: !191, file: !1, line: 142, column: 11)
!196 = !DILocation(line: 145, column: 10, scope: !194)
!197 = !DILocation(line: 145, column: 13, scope: !194)
!198 = !DILocation(line: 147, column: 7, scope: !194)
!199 = !DILocation(line: 142, column: 42, scope: !195)
!200 = !DILocation(line: 142, column: 38, scope: !195)
!201 = distinct !{!201, !190, !202}
!202 = !DILocation(line: 148, column: 12, scope: !191)
!203 = !DILocation(line: 152, column: 6, scope: !204)
!204 = distinct !DILexicalBlock(scope: !187, file: !1, line: 150, column: 45)
!205 = !DILocation(line: 153, column: 10, scope: !204)
!206 = !DILocation(line: 153, column: 13, scope: !204)
!207 = !DILocation(line: 155, column: 7, scope: !204)
!208 = !DILocation(line: 157, column: 8, scope: !209)
!209 = distinct !DILexicalBlock(scope: !204, file: !1, line: 157, column: 7)
!210 = !DILocation(line: 157, column: 7, scope: !204)
!211 = !DILocation(line: 158, column: 10, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !1, line: 157, column: 22)
!213 = !DILocation(line: 159, column: 10, scope: !212)
!214 = !DILocation(line: 161, column: 4, scope: !212)
!215 = !DILocation(line: 0, scope: !204)
!216 = !DILocation(line: 0, scope: !163)
!217 = !DILocation(line: 150, column: 42, scope: !187)
!218 = !DILocation(line: 150, column: 38, scope: !187)
!219 = distinct !{!219, !189, !220}
!220 = !DILocation(line: 162, column: 12, scope: !183)
!221 = !DILocation(line: 129, column: 5, scope: !47)
!222 = !DILocation(line: 127, column: 8, scope: !163)
!223 = !DILocation(line: 164, column: 14, scope: !47)
!224 = !DILocation(line: 164, column: 13, scope: !47)
!225 = !DILocation(line: 164, column: 30, scope: !47)
!226 = !DILocation(line: 167, column: 8, scope: !227)
!227 = distinct !DILexicalBlock(scope: !17, file: !1, line: 167, column: 5)
!228 = !DILocation(line: 0, scope: !47)
!229 = !DILocation(line: 167, column: 20, scope: !227)
!230 = !DILocation(line: 167, column: 5, scope: !17)
!231 = !DILocation(line: 0, scope: !227)
!232 = !DILocation(line: 168, column: 1, scope: !17)
!233 = distinct !DISubprogram(name: "__ieee754_ynf", scope: !1, file: !1, line: 171, type: !18, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !234)
!234 = !{!235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !247, !249}
!235 = !DILocalVariable(name: "n", arg: 1, scope: !233, file: !1, line: 171, type: !20)
!236 = !DILocalVariable(name: "x", arg: 2, scope: !233, file: !1, line: 171, type: !4)
!237 = !DILocalVariable(name: "i", scope: !233, file: !1, line: 177, type: !25)
!238 = !DILocalVariable(name: "hx", scope: !233, file: !1, line: 177, type: !25)
!239 = !DILocalVariable(name: "ix", scope: !233, file: !1, line: 177, type: !25)
!240 = !DILocalVariable(name: "ib", scope: !233, file: !1, line: 177, type: !25)
!241 = !DILocalVariable(name: "sign", scope: !233, file: !1, line: 178, type: !25)
!242 = !DILocalVariable(name: "a", scope: !233, file: !1, line: 179, type: !4)
!243 = !DILocalVariable(name: "b", scope: !233, file: !1, line: 179, type: !4)
!244 = !DILocalVariable(name: "temp", scope: !233, file: !1, line: 179, type: !4)
!245 = !DILocalVariable(name: "gf_u", scope: !246, file: !1, line: 181, type: !38)
!246 = distinct !DILexicalBlock(scope: !233, file: !1, line: 181, column: 2)
!247 = !DILocalVariable(name: "gf_u", scope: !248, file: !1, line: 199, type: !38)
!248 = distinct !DILexicalBlock(scope: !233, file: !1, line: 199, column: 2)
!249 = !DILocalVariable(name: "gf_u", scope: !250, file: !1, line: 203, type: !38)
!250 = distinct !DILexicalBlock(scope: !251, file: !1, line: 203, column: 6)
!251 = distinct !DILexicalBlock(scope: !252, file: !1, line: 200, column: 34)
!252 = distinct !DILexicalBlock(scope: !253, file: !1, line: 200, column: 2)
!253 = distinct !DILexicalBlock(scope: !233, file: !1, line: 200, column: 2)
!254 = !DILocation(line: 171, column: 26, scope: !233)
!255 = !DILocation(line: 171, column: 35, scope: !233)
!256 = !DILocation(line: 181, column: 2, scope: !246)
!257 = !DILocation(line: 177, column: 14, scope: !233)
!258 = !DILocation(line: 182, column: 17, scope: !233)
!259 = !DILocation(line: 177, column: 17, scope: !233)
!260 = !DILocation(line: 184, column: 5, scope: !261)
!261 = distinct !DILexicalBlock(scope: !233, file: !1, line: 184, column: 5)
!262 = !DILocation(line: 184, column: 5, scope: !233)
!263 = !DILocation(line: 184, column: 35, scope: !261)
!264 = !DILocation(line: 184, column: 27, scope: !261)
!265 = !DILocation(line: 185, column: 5, scope: !266)
!266 = distinct !DILexicalBlock(scope: !233, file: !1, line: 185, column: 5)
!267 = !DILocation(line: 185, column: 5, scope: !233)
!268 = !DILocation(line: 186, column: 7, scope: !269)
!269 = distinct !DILexicalBlock(scope: !233, file: !1, line: 186, column: 5)
!270 = !DILocation(line: 186, column: 5, scope: !233)
!271 = !DILocation(line: 178, column: 12, scope: !233)
!272 = !DILocation(line: 188, column: 6, scope: !273)
!273 = distinct !DILexicalBlock(scope: !233, file: !1, line: 188, column: 5)
!274 = !DILocation(line: 188, column: 5, scope: !233)
!275 = !DILocation(line: 189, column: 7, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !1, line: 188, column: 9)
!277 = !DILocation(line: 190, column: 20, scope: !276)
!278 = !DILocation(line: 190, column: 12, scope: !276)
!279 = !DILocation(line: 191, column: 2, scope: !276)
!280 = !DILocation(line: 0, scope: !233)
!281 = !DILocation(line: 192, column: 5, scope: !233)
!282 = !DILocation(line: 192, column: 18, scope: !283)
!283 = distinct !DILexicalBlock(scope: !233, file: !1, line: 192, column: 5)
!284 = !DILocation(line: 192, column: 11, scope: !283)
!285 = !DILocation(line: 193, column: 18, scope: !286)
!286 = distinct !DILexicalBlock(scope: !233, file: !1, line: 193, column: 5)
!287 = !DILocation(line: 193, column: 23, scope: !286)
!288 = !DILocation(line: 193, column: 22, scope: !286)
!289 = !DILocation(line: 193, column: 11, scope: !286)
!290 = !DILocation(line: 194, column: 5, scope: !291)
!291 = distinct !DILexicalBlock(scope: !233, file: !1, line: 194, column: 5)
!292 = !DILocation(line: 194, column: 5, scope: !233)
!293 = !DILocation(line: 196, column: 6, scope: !233)
!294 = !DILocation(line: 179, column: 8, scope: !233)
!295 = !DILocation(line: 197, column: 6, scope: !233)
!296 = !DILocation(line: 179, column: 11, scope: !233)
!297 = !DILocation(line: 177, column: 20, scope: !233)
!298 = !DILocation(line: 177, column: 12, scope: !233)
!299 = !DILocation(line: 0, scope: !250)
!300 = !DILocation(line: 200, column: 11, scope: !252)
!301 = !DILocation(line: 200, column: 17, scope: !252)
!302 = !DILocation(line: 200, column: 13, scope: !252)
!303 = !DILocation(line: 200, column: 2, scope: !253)
!304 = !DILocation(line: 179, column: 14, scope: !233)
!305 = !DILocation(line: 202, column: 20, scope: !251)
!306 = !DILocation(line: 202, column: 11, scope: !251)
!307 = !DILocation(line: 202, column: 23, scope: !251)
!308 = !DILocation(line: 202, column: 26, scope: !251)
!309 = !DILocation(line: 202, column: 29, scope: !251)
!310 = !DILocation(line: 203, column: 6, scope: !250)
!311 = !DILocation(line: 200, column: 31, scope: !252)
!312 = distinct !{!312, !303, !313}
!313 = !DILocation(line: 205, column: 2, scope: !253)
!314 = !DILocation(line: 0, scope: !251)
!315 = !DILocation(line: 206, column: 9, scope: !316)
!316 = distinct !DILexicalBlock(scope: !233, file: !1, line: 206, column: 5)
!317 = !DILocation(line: 206, column: 35, scope: !316)
!318 = !DILocation(line: 206, column: 5, scope: !233)
!319 = !DILocation(line: 0, scope: !316)
!320 = !DILocation(line: 207, column: 1, scope: !233)
