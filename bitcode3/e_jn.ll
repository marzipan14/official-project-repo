; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_jn.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_jn.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_jn(i32, double) local_unnamed_addr #0 !dbg !22 {
  %3 = bitcast double %1 to i64, !dbg !68
  %4 = lshr i64 %3, 32, !dbg !68
  %5 = trunc i64 %4 to i32, !dbg !68
  %6 = trunc i64 %3 to i32, !dbg !68
  %7 = and i32 %5, 2147483647, !dbg !71
  %8 = sub nsw i32 0, %6, !dbg !73
  %9 = or i32 %6, %8, !dbg !75
  %10 = lshr i32 %9, 31, !dbg !76
  %11 = or i32 %7, %10, !dbg !77
  %12 = icmp ugt i32 %11, 2146435072, !dbg !78
  br i1 %12, label %13, label %15, !dbg !79

; <label>:13:                                     ; preds = %2
  %14 = fadd double %1, %1, !dbg !80
  br label %304, !dbg !81

; <label>:15:                                     ; preds = %2
  %16 = icmp slt i32 %0, 0, !dbg !82
  br i1 %16, label %17, label %21, !dbg !84

; <label>:17:                                     ; preds = %15
  %18 = sub nsw i32 0, %0, !dbg !85
  %19 = fsub double -0.000000e+00, %1, !dbg !87
  %20 = xor i32 %5, -2147483648, !dbg !88
  br label %21, !dbg !89

; <label>:21:                                     ; preds = %17, %15
  %22 = phi i32 [ %20, %17 ], [ %5, %15 ], !dbg !90
  %23 = phi double [ %19, %17 ], [ %1, %15 ]
  %24 = phi i32 [ %18, %17 ], [ %0, %15 ]
  switch i32 %24, label %29 [
    i32 0, label %25
    i32 1, label %27
  ], !dbg !91

; <label>:25:                                     ; preds = %21
  %26 = tail call double @__ieee754_j0(double %23) #3, !dbg !92
  br label %304, !dbg !94

; <label>:27:                                     ; preds = %21
  %28 = tail call double @__ieee754_j1(double %23) #3, !dbg !95
  br label %304, !dbg !97

; <label>:29:                                     ; preds = %21
  %30 = lshr i32 %22, 31, !dbg !98
  %31 = and i32 %30, %24, !dbg !99
  %32 = tail call double @fabs(double %23) #3, !dbg !101
  %33 = or i32 %7, %6, !dbg !102
  %34 = icmp eq i32 %33, 0, !dbg !103
  %35 = icmp ugt i32 %7, 2146435071, !dbg !104
  %36 = or i1 %35, %34, !dbg !105
  br i1 %36, label %299, label %37, !dbg !105

; <label>:37:                                     ; preds = %29
  %38 = sitofp i32 %24 to double, !dbg !106
  %39 = fcmp ult double %32, %38, !dbg !107
  br i1 %39, label %96, label %40, !dbg !108

; <label>:40:                                     ; preds = %37
  %41 = icmp ugt i32 %7, 1389363199, !dbg !109
  br i1 %41, label %42, label %67, !dbg !112

; <label>:42:                                     ; preds = %40
  %43 = trunc i32 %24 to i2, !dbg !113
  switch i2 %43, label %61 [
    i2 0, label %44
    i2 1, label %48
    i2 -2, label %52
    i2 -1, label %57
  ], !dbg !113

; <label>:44:                                     ; preds = %42
  %45 = tail call double @cos(double %32) #3, !dbg !115
  %46 = tail call double @sin(double %32) #3, !dbg !117
  %47 = fadd double %45, %46, !dbg !118
  br label %62, !dbg !120

; <label>:48:                                     ; preds = %42
  %49 = tail call double @cos(double %32) #3, !dbg !121
  %50 = tail call double @sin(double %32) #3, !dbg !122
  %51 = fsub double %50, %49, !dbg !123
  br label %62, !dbg !124

; <label>:52:                                     ; preds = %42
  %53 = tail call double @cos(double %32) #3, !dbg !125
  %54 = fsub double -0.000000e+00, %53, !dbg !126
  %55 = tail call double @sin(double %32) #3, !dbg !127
  %56 = fsub double %54, %55, !dbg !128
  br label %62, !dbg !129

; <label>:57:                                     ; preds = %42
  %58 = tail call double @cos(double %32) #3, !dbg !130
  %59 = tail call double @sin(double %32) #3, !dbg !131
  %60 = fsub double %58, %59, !dbg !132
  br label %62, !dbg !133

; <label>:61:                                     ; preds = %42
  unreachable

; <label>:62:                                     ; preds = %57, %52, %48, %44
  %63 = phi double [ %60, %57 ], [ %56, %52 ], [ %51, %48 ], [ %47, %44 ], !dbg !134
  %64 = fmul double %63, 0x3FE20DD750429B6D, !dbg !135
  %65 = tail call double @__ieee754_sqrt(double %32) #3, !dbg !136
  %66 = fdiv double %64, %65, !dbg !137
  br label %299, !dbg !139

; <label>:67:                                     ; preds = %40
  %68 = tail call double @__ieee754_j0(double %32) #3, !dbg !140
  %69 = tail call double @__ieee754_j1(double %32) #3, !dbg !143
  %70 = icmp sgt i32 %24, 1, !dbg !145
  br i1 %70, label %71, label %299, !dbg !148

; <label>:71:                                     ; preds = %67
  %72 = add i32 %24, -1, !dbg !149
  %73 = and i32 %72, 1, !dbg !149
  %74 = icmp eq i32 %24, 2, !dbg !149
  br i1 %74, label %289, label %75, !dbg !149

; <label>:75:                                     ; preds = %71
  %76 = sub i32 %72, %73, !dbg !149
  br label %77, !dbg !149

; <label>:77:                                     ; preds = %77, %75
  %78 = phi i32 [ 1, %75 ], [ %93, %77 ]
  %79 = phi double [ %69, %75 ], [ %92, %77 ]
  %80 = phi double [ %68, %75 ], [ %86, %77 ]
  %81 = phi i32 [ %76, %75 ], [ %94, %77 ]
  %82 = shl nuw nsw i32 %78, 1, !dbg !149
  %83 = sitofp i32 %82 to double, !dbg !151
  %84 = fdiv double %83, %32, !dbg !152
  %85 = fmul double %79, %84, !dbg !153
  %86 = fsub double %85, %80, !dbg !154
  %87 = shl nuw i32 %78, 1, !dbg !149
  %88 = add i32 %87, 2, !dbg !149
  %89 = sitofp i32 %88 to double, !dbg !151
  %90 = fdiv double %89, %32, !dbg !152
  %91 = fmul double %86, %90, !dbg !153
  %92 = fsub double %91, %79, !dbg !154
  %93 = add nuw nsw i32 %78, 2, !dbg !155
  %94 = add i32 %81, -2, !dbg !148
  %95 = icmp eq i32 %94, 0, !dbg !148
  br i1 %95, label %286, label %77, !dbg !148, !llvm.loop !156

; <label>:96:                                     ; preds = %37
  %97 = icmp ult i32 %7, 1041235968, !dbg !158
  br i1 %97, label %98, label %155, !dbg !159

; <label>:98:                                     ; preds = %96
  %99 = icmp sgt i32 %24, 33, !dbg !160
  br i1 %99, label %299, label %100, !dbg !163

; <label>:100:                                    ; preds = %98
  %101 = fmul double %32, 5.000000e-01, !dbg !164
  %102 = icmp slt i32 %24, 2, !dbg !166
  br i1 %102, label %151, label %103, !dbg !169

; <label>:103:                                    ; preds = %100
  %104 = add i32 %24, -1, !dbg !170
  %105 = add i32 %24, -2, !dbg !170
  %106 = and i32 %104, 3, !dbg !170
  %107 = icmp ult i32 %105, 3, !dbg !170
  br i1 %107, label %133, label %108, !dbg !170

; <label>:108:                                    ; preds = %103
  %109 = sub i32 %104, %106, !dbg !170
  br label %110, !dbg !170

; <label>:110:                                    ; preds = %110, %108
  %111 = phi i32 [ 2, %108 ], [ %130, %110 ]
  %112 = phi double [ %101, %108 ], [ %129, %110 ]
  %113 = phi double [ 1.000000e+00, %108 ], [ %128, %110 ]
  %114 = phi i32 [ %109, %108 ], [ %131, %110 ]
  %115 = sitofp i32 %111 to double, !dbg !170
  %116 = fmul double %113, %115, !dbg !172
  %117 = fmul double %101, %112, !dbg !173
  %118 = or i32 %111, 1, !dbg !174
  %119 = sitofp i32 %118 to double, !dbg !170
  %120 = fmul double %116, %119, !dbg !172
  %121 = fmul double %101, %117, !dbg !173
  %122 = add nuw nsw i32 %111, 2, !dbg !174
  %123 = sitofp i32 %122 to double, !dbg !170
  %124 = fmul double %120, %123, !dbg !172
  %125 = fmul double %101, %121, !dbg !173
  %126 = add nuw nsw i32 %111, 3, !dbg !174
  %127 = sitofp i32 %126 to double, !dbg !170
  %128 = fmul double %124, %127, !dbg !172
  %129 = fmul double %101, %125, !dbg !173
  %130 = add nuw nsw i32 %111, 4, !dbg !174
  %131 = add i32 %114, -4, !dbg !169
  %132 = icmp eq i32 %131, 0, !dbg !169
  br i1 %132, label %133, label %110, !dbg !169, !llvm.loop !175

; <label>:133:                                    ; preds = %110, %103
  %134 = phi double [ undef, %103 ], [ %128, %110 ]
  %135 = phi double [ undef, %103 ], [ %129, %110 ]
  %136 = phi i32 [ 2, %103 ], [ %130, %110 ]
  %137 = phi double [ %101, %103 ], [ %129, %110 ]
  %138 = phi double [ 1.000000e+00, %103 ], [ %128, %110 ]
  %139 = icmp eq i32 %106, 0, !dbg !169
  br i1 %139, label %151, label %140, !dbg !169

; <label>:140:                                    ; preds = %133, %140
  %141 = phi i32 [ %148, %140 ], [ %136, %133 ]
  %142 = phi double [ %147, %140 ], [ %137, %133 ]
  %143 = phi double [ %146, %140 ], [ %138, %133 ]
  %144 = phi i32 [ %149, %140 ], [ %106, %133 ]
  %145 = sitofp i32 %141 to double, !dbg !170
  %146 = fmul double %143, %145, !dbg !172
  %147 = fmul double %101, %142, !dbg !173
  %148 = add nuw nsw i32 %141, 1, !dbg !174
  %149 = add i32 %144, -1, !dbg !169
  %150 = icmp eq i32 %149, 0, !dbg !169
  br i1 %150, label %151, label %140, !dbg !169, !llvm.loop !177

; <label>:151:                                    ; preds = %133, %140, %100
  %152 = phi double [ 1.000000e+00, %100 ], [ %134, %133 ], [ %146, %140 ], !dbg !179
  %153 = phi double [ %101, %100 ], [ %135, %133 ], [ %147, %140 ], !dbg !179
  %154 = fdiv double %153, %152, !dbg !180
  br label %299

; <label>:155:                                    ; preds = %96
  %156 = shl nsw i32 %24, 1, !dbg !181
  %157 = sitofp i32 %156 to double, !dbg !182
  %158 = insertelement <2 x double> <double undef, double 2.000000e+00>, double %157, i32 0, !dbg !184
  %159 = insertelement <2 x double> undef, double %32, i32 0, !dbg !184
  %160 = shufflevector <2 x double> %159, <2 x double> undef, <2 x i32> zeroinitializer, !dbg !184
  %161 = fdiv <2 x double> %158, %160, !dbg !184
  %162 = extractelement <2 x double> %161, i32 0, !dbg !187
  %163 = extractelement <2 x double> %161, i32 1, !dbg !187
  %164 = fadd double %162, %163, !dbg !187
  %165 = fmul double %162, %164, !dbg !189
  %166 = fadd double %165, -1.000000e+00, !dbg !190
  %167 = fcmp olt double %166, 1.000000e+09, !dbg !193
  br i1 %167, label %168, label %178, !dbg !194

; <label>:168:                                    ; preds = %155, %168
  %169 = phi i32 [ %173, %168 ], [ 1, %155 ]
  %170 = phi double [ %176, %168 ], [ %166, %155 ]
  %171 = phi double [ %170, %168 ], [ %162, %155 ]
  %172 = phi double [ %174, %168 ], [ %164, %155 ]
  %173 = add nuw nsw i32 %169, 1, !dbg !195
  %174 = fadd double %163, %172, !dbg !197
  %175 = fmul double %174, %170, !dbg !198
  %176 = fsub double %175, %171, !dbg !199
  %177 = fcmp olt double %176, 1.000000e+09, !dbg !193
  br i1 %177, label %168, label %178, !dbg !194, !llvm.loop !201

; <label>:178:                                    ; preds = %168, %155
  %179 = phi i32 [ 1, %155 ], [ %173, %168 ], !dbg !203
  %180 = add nsw i32 %179, %24, !dbg !206
  %181 = shl nsw i32 %180, 1, !dbg !208
  %182 = add i32 %24, %179, !dbg !209
  %183 = mul i32 %182, -2, !dbg !209
  %184 = shl i32 %24, 1, !dbg !209
  %185 = xor i32 %184, -1, !dbg !209
  %186 = icmp sgt i32 %183, %185, !dbg !209
  %187 = select i1 %186, i32 %183, i32 %185, !dbg !209
  %188 = shl i32 %182, 1, !dbg !209
  %189 = add i32 %187, %188, !dbg !209
  %190 = add i32 %189, 1, !dbg !209
  %191 = and i32 %190, 2, !dbg !209
  %192 = icmp eq i32 %191, 0, !dbg !209
  br i1 %192, label %193, label %198, !dbg !209

; <label>:193:                                    ; preds = %178
  %194 = sitofp i32 %181 to double, !dbg !210
  %195 = fdiv double %194, %32, !dbg !212
  %196 = fdiv double 1.000000e+00, %195, !dbg !213
  %197 = add nsw i32 %181, -2, !dbg !214
  br label %198, !dbg !209

; <label>:198:                                    ; preds = %193, %178
  %199 = phi double [ undef, %178 ], [ %196, %193 ]
  %200 = phi double [ 0.000000e+00, %178 ], [ %196, %193 ]
  %201 = phi i32 [ %181, %178 ], [ %197, %193 ]
  %202 = icmp ult i32 %190, 2, !dbg !209
  br i1 %202, label %217, label %203, !dbg !209

; <label>:203:                                    ; preds = %198, %203
  %204 = phi double [ %214, %203 ], [ %200, %198 ]
  %205 = phi i32 [ %215, %203 ], [ %201, %198 ]
  %206 = sitofp i32 %205 to double, !dbg !210
  %207 = fdiv double %206, %32, !dbg !212
  %208 = fsub double %207, %204, !dbg !215
  %209 = fdiv double 1.000000e+00, %208, !dbg !213
  %210 = add nsw i32 %205, -2, !dbg !214
  %211 = sitofp i32 %210 to double, !dbg !210
  %212 = fdiv double %211, %32, !dbg !212
  %213 = fsub double %212, %209, !dbg !215
  %214 = fdiv double 1.000000e+00, %213, !dbg !213
  %215 = add nsw i32 %205, -4, !dbg !214
  %216 = icmp slt i32 %215, %156, !dbg !216
  br i1 %216, label %217, label %203, !dbg !209, !llvm.loop !217

; <label>:217:                                    ; preds = %203, %198
  %218 = phi double [ %199, %198 ], [ %214, %203 ], !dbg !213
  %219 = fmul double %163, %38, !dbg !220
  %220 = tail call double @fabs(double %219) #3, !dbg !221
  %221 = tail call double @__ieee754_log(double %220) #3, !dbg !222
  %222 = fmul double %221, %38, !dbg !223
  %223 = fcmp olt double %222, 0x40862E42FEFA39EF, !dbg !224
  %224 = add nsw i32 %24, -1, !dbg !226
  %225 = shl nsw i32 %224, 1, !dbg !226
  %226 = sitofp i32 %225 to double, !dbg !226
  %227 = icmp sgt i32 %24, 1, !dbg !230
  br i1 %223, label %229, label %228, !dbg !232

; <label>:228:                                    ; preds = %217
  br i1 %227, label %260, label %280, !dbg !233

; <label>:229:                                    ; preds = %217
  br i1 %227, label %230, label %280, !dbg !234

; <label>:230:                                    ; preds = %229
  %231 = and i32 %24, 1, !dbg !237
  %232 = icmp eq i32 %231, 0, !dbg !237
  br i1 %232, label %233, label %238, !dbg !237

; <label>:233:                                    ; preds = %230
  %234 = fdiv double %226, %32, !dbg !240
  %235 = fsub double %234, %218, !dbg !241
  %236 = fadd double %226, -2.000000e+00, !dbg !242
  %237 = add nsw i32 %24, -2, !dbg !243
  br label %238, !dbg !234

; <label>:238:                                    ; preds = %233, %230
  %239 = phi i32 [ %224, %230 ], [ %237, %233 ]
  %240 = phi double [ %226, %230 ], [ %236, %233 ]
  %241 = phi double [ 1.000000e+00, %230 ], [ %235, %233 ]
  %242 = phi double [ %218, %230 ], [ 1.000000e+00, %233 ]
  %243 = phi double [ undef, %230 ], [ %235, %233 ]
  %244 = icmp eq i32 %24, 2, !dbg !237
  br i1 %244, label %280, label %245, !dbg !237

; <label>:245:                                    ; preds = %238, %245
  %246 = phi i32 [ %258, %245 ], [ %239, %238 ]
  %247 = phi double [ %257, %245 ], [ %240, %238 ]
  %248 = phi double [ %256, %245 ], [ %241, %238 ]
  %249 = phi double [ %252, %245 ], [ %242, %238 ]
  %250 = fmul double %248, %247, !dbg !237
  %251 = fdiv double %250, %32, !dbg !240
  %252 = fsub double %251, %249, !dbg !241
  %253 = fadd double %247, -2.000000e+00, !dbg !242
  %254 = fmul double %252, %253, !dbg !237
  %255 = fdiv double %254, %32, !dbg !240
  %256 = fsub double %255, %248, !dbg !241
  %257 = fadd double %253, -2.000000e+00, !dbg !242
  %258 = add nsw i32 %246, -2, !dbg !243
  %259 = icmp sgt i32 %246, 2, !dbg !244
  br i1 %259, label %245, label %280, !dbg !234, !llvm.loop !245

; <label>:260:                                    ; preds = %228, %274
  %261 = phi double [ %277, %274 ], [ %218, %228 ]
  %262 = phi i32 [ %278, %274 ], [ %224, %228 ]
  %263 = phi double [ %269, %274 ], [ %226, %228 ]
  %264 = phi double [ %276, %274 ], [ 1.000000e+00, %228 ]
  %265 = phi double [ %275, %274 ], [ %218, %228 ]
  %266 = fmul double %264, %263, !dbg !247
  %267 = fdiv double %266, %32, !dbg !249
  %268 = fsub double %267, %265, !dbg !250
  %269 = fadd double %263, -2.000000e+00, !dbg !251
  %270 = fcmp ogt double %268, 1.000000e+100, !dbg !252
  br i1 %270, label %271, label %274, !dbg !254

; <label>:271:                                    ; preds = %260
  %272 = fdiv double %264, %268, !dbg !255
  %273 = fdiv double %261, %268, !dbg !257
  br label %274, !dbg !258

; <label>:274:                                    ; preds = %260, %271
  %275 = phi double [ %272, %271 ], [ %264, %260 ], !dbg !259
  %276 = phi double [ 1.000000e+00, %271 ], [ %268, %260 ], !dbg !259
  %277 = phi double [ %273, %271 ], [ %261, %260 ], !dbg !260
  %278 = add nsw i32 %262, -1, !dbg !261
  %279 = icmp sgt i32 %262, 1, !dbg !262
  br i1 %279, label %260, label %280, !dbg !233, !llvm.loop !263

; <label>:280:                                    ; preds = %274, %238, %245, %228, %229
  %281 = phi double [ 1.000000e+00, %229 ], [ 1.000000e+00, %228 ], [ %243, %238 ], [ %256, %245 ], [ %276, %274 ], !dbg !265
  %282 = phi double [ %218, %229 ], [ %218, %228 ], [ %218, %245 ], [ %218, %238 ], [ %277, %274 ], !dbg !266
  %283 = tail call double @__ieee754_j0(double %32) #3, !dbg !267
  %284 = fmul double %282, %283, !dbg !268
  %285 = fdiv double %284, %281, !dbg !269
  br label %299

; <label>:286:                                    ; preds = %77
  %287 = shl nuw i32 %93, 1, !dbg !148
  %288 = sitofp i32 %287 to double, !dbg !148
  br label %289, !dbg !148

; <label>:289:                                    ; preds = %286, %71
  %290 = phi double [ undef, %71 ], [ %92, %286 ]
  %291 = phi double [ 2.000000e+00, %71 ], [ %288, %286 ]
  %292 = phi double [ %69, %71 ], [ %92, %286 ]
  %293 = phi double [ %68, %71 ], [ %86, %286 ]
  %294 = icmp eq i32 %73, 0, !dbg !148
  br i1 %294, label %299, label %295, !dbg !148

; <label>:295:                                    ; preds = %289
  %296 = fdiv double %291, %32, !dbg !152
  %297 = fmul double %292, %296, !dbg !153
  %298 = fsub double %297, %293, !dbg !154
  br label %299, !dbg !270

; <label>:299:                                    ; preds = %295, %289, %67, %98, %29, %62, %151, %280
  %300 = phi double [ %66, %62 ], [ %154, %151 ], [ %285, %280 ], [ 0.000000e+00, %29 ], [ 0.000000e+00, %98 ], [ %69, %67 ], [ %290, %289 ], [ %298, %295 ], !dbg !272
  %301 = icmp eq i32 %31, 1, !dbg !270
  %302 = fsub double -0.000000e+00, %300, !dbg !273
  %303 = select i1 %301, double %302, double %300, !dbg !274
  ret double %303, !dbg !274

; <label>:304:                                    ; preds = %27, %25, %13
  %305 = phi double [ %14, %13 ], [ %26, %25 ], [ %28, %27 ], !dbg !275
  ret double %305, !dbg !276
}

; Function Attrs: noredzone
declare dso_local double @__ieee754_j0(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_j1(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @fabs(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @cos(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @sin(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_sqrt(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_log(double) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_yn(i32, double) local_unnamed_addr #0 !dbg !277 {
  %3 = bitcast double %1 to i64, !dbg !303
  %4 = lshr i64 %3, 32, !dbg !303
  %5 = trunc i64 %4 to i32, !dbg !303
  %6 = trunc i64 %3 to i32, !dbg !303
  %7 = and i32 %5, 2147483647, !dbg !306
  %8 = sub nsw i32 0, %6, !dbg !308
  %9 = or i32 %6, %8, !dbg !310
  %10 = lshr i32 %9, 31, !dbg !311
  %11 = or i32 %7, %10, !dbg !312
  %12 = icmp ugt i32 %11, 2146435072, !dbg !313
  br i1 %12, label %13, label %15, !dbg !314

; <label>:13:                                     ; preds = %2
  %14 = fadd double %1, %1, !dbg !315
  br label %93, !dbg !316

; <label>:15:                                     ; preds = %2
  %16 = or i32 %7, %6, !dbg !317
  %17 = icmp eq i32 %16, 0, !dbg !319
  br i1 %17, label %93, label %18, !dbg !320

; <label>:18:                                     ; preds = %15
  %19 = icmp slt i32 %5, 0, !dbg !321
  br i1 %19, label %93, label %20, !dbg !323

; <label>:20:                                     ; preds = %18
  %21 = icmp slt i32 %0, 0, !dbg !325
  br i1 %21, label %22, label %27, !dbg !327

; <label>:22:                                     ; preds = %20
  %23 = sub nsw i32 0, %0, !dbg !328
  %24 = shl i32 %23, 1, !dbg !330
  %25 = and i32 %24, 2, !dbg !330
  %26 = sub nsw i32 1, %25, !dbg !331
  br label %27, !dbg !332

; <label>:27:                                     ; preds = %22, %20
  %28 = phi i32 [ %26, %22 ], [ 1, %20 ], !dbg !333
  %29 = phi i32 [ %23, %22 ], [ %0, %20 ]
  switch i32 %29, label %36 [
    i32 0, label %30
    i32 1, label %32
  ], !dbg !334

; <label>:30:                                     ; preds = %27
  %31 = tail call double @__ieee754_y0(double %1) #3, !dbg !335
  br label %93, !dbg !337

; <label>:32:                                     ; preds = %27
  %33 = sitofp i32 %28 to double, !dbg !338
  %34 = tail call double @__ieee754_y1(double %1) #3, !dbg !340
  %35 = fmul double %34, %33, !dbg !341
  br label %93, !dbg !342

; <label>:36:                                     ; preds = %27
  %37 = icmp eq i32 %7, 2146435072, !dbg !343
  br i1 %37, label %93, label %38, !dbg !345

; <label>:38:                                     ; preds = %36
  %39 = icmp ugt i32 %7, 1389363199, !dbg !346
  br i1 %39, label %40, label %65, !dbg !347

; <label>:40:                                     ; preds = %38
  %41 = trunc i32 %29 to i2, !dbg !348
  switch i2 %41, label %59 [
    i2 0, label %42
    i2 1, label %46
    i2 -2, label %51
    i2 -1, label %55
  ], !dbg !348

; <label>:42:                                     ; preds = %40
  %43 = tail call double @sin(double %1) #3, !dbg !350
  %44 = tail call double @cos(double %1) #3, !dbg !352
  %45 = fsub double %43, %44, !dbg !353
  br label %60, !dbg !355

; <label>:46:                                     ; preds = %40
  %47 = tail call double @sin(double %1) #3, !dbg !356
  %48 = fsub double -0.000000e+00, %47, !dbg !357
  %49 = tail call double @cos(double %1) #3, !dbg !358
  %50 = fsub double %48, %49, !dbg !359
  br label %60, !dbg !360

; <label>:51:                                     ; preds = %40
  %52 = tail call double @sin(double %1) #3, !dbg !361
  %53 = tail call double @cos(double %1) #3, !dbg !362
  %54 = fsub double %53, %52, !dbg !363
  br label %60, !dbg !364

; <label>:55:                                     ; preds = %40
  %56 = tail call double @sin(double %1) #3, !dbg !365
  %57 = tail call double @cos(double %1) #3, !dbg !366
  %58 = fadd double %56, %57, !dbg !367
  br label %60, !dbg !368

; <label>:59:                                     ; preds = %40
  unreachable

; <label>:60:                                     ; preds = %55, %51, %46, %42
  %61 = phi double [ %58, %55 ], [ %54, %51 ], [ %50, %46 ], [ %45, %42 ], !dbg !369
  %62 = fmul double %61, 0x3FE20DD750429B6D, !dbg !370
  %63 = tail call double @__ieee754_sqrt(double %1) #3, !dbg !371
  %64 = fdiv double %62, %63, !dbg !372
  br label %88, !dbg !374

; <label>:65:                                     ; preds = %38
  %66 = tail call double @__ieee754_y0(double %1) #3, !dbg !375
  %67 = tail call double @__ieee754_y1(double %1) #3, !dbg !377
  %68 = bitcast double %67 to i64, !dbg !379
  %69 = icmp sgt i32 %29, 1, !dbg !380
  %70 = and i64 %68, -4294967296, !dbg !381
  %71 = icmp ne i64 %70, -4503599627370496, !dbg !381
  %72 = and i1 %69, %71, !dbg !382
  br i1 %72, label %73, label %88, !dbg !383

; <label>:73:                                     ; preds = %65, %73
  %74 = phi i32 [ %82, %73 ], [ 1, %65 ]
  %75 = phi double [ %81, %73 ], [ %67, %65 ]
  %76 = phi double [ %75, %73 ], [ %66, %65 ]
  %77 = shl nuw nsw i32 %74, 1, !dbg !384
  %78 = sitofp i32 %77 to double, !dbg !385
  %79 = fdiv double %78, %1, !dbg !386
  %80 = fmul double %75, %79, !dbg !387
  %81 = fsub double %80, %76, !dbg !388
  %82 = add nuw nsw i32 %74, 1, !dbg !390
  %83 = bitcast double %81 to i64, !dbg !379
  %84 = icmp slt i32 %82, %29, !dbg !380
  %85 = and i64 %83, -4294967296, !dbg !381
  %86 = icmp ne i64 %85, -4503599627370496, !dbg !381
  %87 = and i1 %84, %86, !dbg !382
  br i1 %87, label %73, label %88, !dbg !383, !llvm.loop !391

; <label>:88:                                     ; preds = %73, %65, %60
  %89 = phi double [ %64, %60 ], [ %67, %65 ], [ %81, %73 ], !dbg !393
  %90 = icmp sgt i32 %28, 0, !dbg !394
  %91 = fsub double -0.000000e+00, %89, !dbg !396
  %92 = select i1 %90, double %89, double %91, !dbg !397
  ret double %92, !dbg !397

; <label>:93:                                     ; preds = %36, %18, %15, %32, %30, %13
  %94 = phi double [ %14, %13 ], [ %31, %30 ], [ %35, %32 ], [ 0xFFF0000000000000, %15 ], [ 0x7FF8000000000000, %18 ], [ 0.000000e+00, %36 ], !dbg !398
  ret double %94, !dbg !399
}

; Function Attrs: noredzone
declare dso_local double @__ieee754_y0(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_y1(double) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !8)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_jn.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !7}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !5, line: 79, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !{!9, !12, !14, !16}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "zero", scope: !0, file: !1, line: 54, type: !11, isLocal: true, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4603256987541740397, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "invsqrtpi", scope: !0, file: !1, line: 49, type: !11, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 51, type: !11, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4611686018427387904, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "two", scope: !0, file: !1, line: 50, type: !11, isLocal: true, isDefinition: true)
!18 = !{i32 2, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!22 = distinct !DISubprogram(name: "__ieee754_jn", scope: !1, file: !1, line: 60, type: !23, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !26)
!23 = !DISubroutineType(types: !24)
!24 = !{!7, !25, !7}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !{!27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !53, !59, !60, !61, !62, !63, !64, !65}
!27 = !DILocalVariable(name: "n", arg: 1, scope: !22, file: !1, line: 60, type: !25)
!28 = !DILocalVariable(name: "x", arg: 2, scope: !22, file: !1, line: 60, type: !7)
!29 = !DILocalVariable(name: "i", scope: !22, file: !1, line: 66, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !5, line: 77, baseType: !25)
!31 = !DILocalVariable(name: "hx", scope: !22, file: !1, line: 66, type: !30)
!32 = !DILocalVariable(name: "ix", scope: !22, file: !1, line: 66, type: !30)
!33 = !DILocalVariable(name: "lx", scope: !22, file: !1, line: 66, type: !30)
!34 = !DILocalVariable(name: "sgn", scope: !22, file: !1, line: 66, type: !30)
!35 = !DILocalVariable(name: "a", scope: !22, file: !1, line: 67, type: !7)
!36 = !DILocalVariable(name: "b", scope: !22, file: !1, line: 67, type: !7)
!37 = !DILocalVariable(name: "temp", scope: !22, file: !1, line: 67, type: !7)
!38 = !DILocalVariable(name: "di", scope: !22, file: !1, line: 67, type: !7)
!39 = !DILocalVariable(name: "z", scope: !22, file: !1, line: 68, type: !7)
!40 = !DILocalVariable(name: "w", scope: !22, file: !1, line: 68, type: !7)
!41 = !DILocalVariable(name: "ew_u", scope: !42, file: !1, line: 73, type: !43)
!42 = distinct !DILexicalBlock(scope: !22, file: !1, line: 73, column: 2)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !44, line: 278, baseType: !45)
!44 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!45 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !44, line: 270, size: 64, elements: !46)
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !45, file: !44, line: 272, baseType: !7, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !45, file: !44, line: 277, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !45, file: !44, line: 273, size: 64, elements: !50)
!50 = !{!51, !52}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !49, file: !44, line: 275, baseType: !4, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !49, file: !44, line: 276, baseType: !4, size: 32, offset: 32)
!53 = !DILocalVariable(name: "t", scope: !54, file: !1, line: 165, type: !7)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 135, column: 13)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 121, column: 9)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 120, column: 9)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 88, column: 10)
!58 = distinct !DILexicalBlock(scope: !22, file: !1, line: 86, column: 5)
!59 = !DILocalVariable(name: "v", scope: !54, file: !1, line: 165, type: !7)
!60 = !DILocalVariable(name: "q0", scope: !54, file: !1, line: 166, type: !7)
!61 = !DILocalVariable(name: "q1", scope: !54, file: !1, line: 166, type: !7)
!62 = !DILocalVariable(name: "h", scope: !54, file: !1, line: 166, type: !7)
!63 = !DILocalVariable(name: "tmp", scope: !54, file: !1, line: 166, type: !7)
!64 = !DILocalVariable(name: "k", scope: !54, file: !1, line: 166, type: !30)
!65 = !DILocalVariable(name: "m", scope: !54, file: !1, line: 166, type: !30)
!66 = !DILocation(line: 60, column: 26, scope: !22)
!67 = !DILocation(line: 60, column: 36, scope: !22)
!68 = !DILocation(line: 73, column: 2, scope: !42)
!69 = !DILocation(line: 66, column: 14, scope: !22)
!70 = !DILocation(line: 66, column: 20, scope: !22)
!71 = !DILocation(line: 74, column: 17, scope: !22)
!72 = !DILocation(line: 66, column: 17, scope: !22)
!73 = !DILocation(line: 76, column: 26, scope: !74)
!74 = distinct !DILexicalBlock(scope: !22, file: !1, line: 76, column: 5)
!75 = !DILocation(line: 76, column: 25, scope: !74)
!76 = !DILocation(line: 76, column: 31, scope: !74)
!77 = !DILocation(line: 76, column: 8, scope: !74)
!78 = !DILocation(line: 76, column: 36, scope: !74)
!79 = !DILocation(line: 76, column: 5, scope: !22)
!80 = !DILocation(line: 76, column: 57, scope: !74)
!81 = !DILocation(line: 76, column: 49, scope: !74)
!82 = !DILocation(line: 77, column: 6, scope: !83)
!83 = distinct !DILexicalBlock(scope: !22, file: !1, line: 77, column: 5)
!84 = !DILocation(line: 77, column: 5, scope: !22)
!85 = !DILocation(line: 78, column: 7, scope: !86)
!86 = distinct !DILexicalBlock(scope: !83, file: !1, line: 77, column: 9)
!87 = !DILocation(line: 79, column: 7, scope: !86)
!88 = !DILocation(line: 80, column: 6, scope: !86)
!89 = !DILocation(line: 81, column: 2, scope: !86)
!90 = !DILocation(line: 0, scope: !42)
!91 = !DILocation(line: 82, column: 5, scope: !22)
!92 = !DILocation(line: 82, column: 18, scope: !93)
!93 = distinct !DILexicalBlock(scope: !22, file: !1, line: 82, column: 5)
!94 = !DILocation(line: 82, column: 11, scope: !93)
!95 = !DILocation(line: 83, column: 18, scope: !96)
!96 = distinct !DILexicalBlock(scope: !22, file: !1, line: 83, column: 5)
!97 = !DILocation(line: 83, column: 11, scope: !96)
!98 = !DILocation(line: 84, column: 17, scope: !22)
!99 = !DILocation(line: 84, column: 13, scope: !22)
!100 = !DILocation(line: 66, column: 24, scope: !22)
!101 = !DILocation(line: 85, column: 6, scope: !22)
!102 = !DILocation(line: 86, column: 8, scope: !58)
!103 = !DILocation(line: 86, column: 12, scope: !58)
!104 = !DILocation(line: 86, column: 19, scope: !58)
!105 = !DILocation(line: 86, column: 15, scope: !58)
!106 = !DILocation(line: 88, column: 10, scope: !57)
!107 = !DILocation(line: 88, column: 19, scope: !57)
!108 = !DILocation(line: 88, column: 10, scope: !58)
!109 = !DILocation(line: 90, column: 11, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !1, line: 90, column: 9)
!111 = distinct !DILexicalBlock(scope: !57, file: !1, line: 88, column: 24)
!112 = !DILocation(line: 90, column: 9, scope: !111)
!113 = !DILocation(line: 104, column: 3, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !1, line: 90, column: 25)
!115 = !DILocation(line: 105, column: 23, scope: !116)
!116 = distinct !DILexicalBlock(scope: !114, file: !1, line: 104, column: 15)
!117 = !DILocation(line: 105, column: 30, scope: !116)
!118 = !DILocation(line: 105, column: 29, scope: !116)
!119 = !DILocation(line: 67, column: 15, scope: !22)
!120 = !DILocation(line: 105, column: 38, scope: !116)
!121 = !DILocation(line: 106, column: 23, scope: !116)
!122 = !DILocation(line: 106, column: 30, scope: !116)
!123 = !DILocation(line: 106, column: 29, scope: !116)
!124 = !DILocation(line: 106, column: 38, scope: !116)
!125 = !DILocation(line: 107, column: 23, scope: !116)
!126 = !DILocation(line: 107, column: 22, scope: !116)
!127 = !DILocation(line: 107, column: 30, scope: !116)
!128 = !DILocation(line: 107, column: 29, scope: !116)
!129 = !DILocation(line: 107, column: 38, scope: !116)
!130 = !DILocation(line: 108, column: 23, scope: !116)
!131 = !DILocation(line: 108, column: 30, scope: !116)
!132 = !DILocation(line: 108, column: 29, scope: !116)
!133 = !DILocation(line: 108, column: 38, scope: !116)
!134 = !DILocation(line: 0, scope: !116)
!135 = !DILocation(line: 110, column: 16, scope: !114)
!136 = !DILocation(line: 110, column: 22, scope: !114)
!137 = !DILocation(line: 110, column: 21, scope: !114)
!138 = !DILocation(line: 67, column: 12, scope: !22)
!139 = !DILocation(line: 111, column: 6, scope: !114)
!140 = !DILocation(line: 112, column: 14, scope: !141)
!141 = distinct !DILexicalBlock(scope: !110, file: !1, line: 111, column: 13)
!142 = !DILocation(line: 67, column: 9, scope: !22)
!143 = !DILocation(line: 113, column: 14, scope: !141)
!144 = !DILocation(line: 66, column: 12, scope: !22)
!145 = !DILocation(line: 114, column: 19, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !1, line: 114, column: 10)
!147 = distinct !DILexicalBlock(scope: !141, file: !1, line: 114, column: 10)
!148 = !DILocation(line: 114, column: 10, scope: !147)
!149 = !DILocation(line: 116, column: 24, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !1, line: 114, column: 26)
!151 = !DILocation(line: 116, column: 14, scope: !150)
!152 = !DILocation(line: 116, column: 27, scope: !150)
!153 = !DILocation(line: 116, column: 12, scope: !150)
!154 = !DILocation(line: 116, column: 31, scope: !150)
!155 = !DILocation(line: 114, column: 23, scope: !146)
!156 = distinct !{!156, !148, !157}
!157 = !DILocation(line: 118, column: 10, scope: !147)
!158 = !DILocation(line: 121, column: 11, scope: !55)
!159 = !DILocation(line: 121, column: 9, scope: !56)
!160 = !DILocation(line: 125, column: 7, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !1, line: 125, column: 6)
!162 = distinct !DILexicalBlock(scope: !55, file: !1, line: 121, column: 24)
!163 = !DILocation(line: 125, column: 6, scope: !162)
!164 = !DILocation(line: 128, column: 15, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !1, line: 127, column: 8)
!166 = !DILocation(line: 129, column: 23, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 129, column: 7)
!168 = distinct !DILexicalBlock(scope: !165, file: !1, line: 129, column: 7)
!169 = !DILocation(line: 129, column: 7, scope: !168)
!170 = !DILocation(line: 130, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !1, line: 129, column: 32)
!172 = !DILocation(line: 130, column: 6, scope: !171)
!173 = !DILocation(line: 131, column: 6, scope: !171)
!174 = !DILocation(line: 129, column: 28, scope: !167)
!175 = distinct !{!175, !169, !176}
!176 = !DILocation(line: 132, column: 7, scope: !168)
!177 = distinct !{!177, !178}
!178 = !{!"llvm.loop.unroll.disable"}
!179 = !DILocation(line: 0, scope: !171)
!180 = !DILocation(line: 133, column: 12, scope: !165)
!181 = !DILocation(line: 167, column: 10, scope: !54)
!182 = !DILocation(line: 167, column: 8, scope: !54)
!183 = !DILocation(line: 68, column: 12, scope: !22)
!184 = !DILocation(line: 167, column: 13, scope: !54)
!185 = !DILocation(line: 166, column: 16, scope: !54)
!186 = !DILocation(line: 166, column: 10, scope: !54)
!187 = !DILocation(line: 168, column: 17, scope: !54)
!188 = !DILocation(line: 68, column: 9, scope: !22)
!189 = !DILocation(line: 168, column: 27, scope: !54)
!190 = !DILocation(line: 168, column: 30, scope: !54)
!191 = !DILocation(line: 166, column: 13, scope: !54)
!192 = !DILocation(line: 166, column: 33, scope: !54)
!193 = !DILocation(line: 169, column: 11, scope: !54)
!194 = !DILocation(line: 169, column: 3, scope: !54)
!195 = !DILocation(line: 170, column: 6, scope: !196)
!196 = distinct !DILexicalBlock(scope: !54, file: !1, line: 169, column: 19)
!197 = !DILocation(line: 170, column: 14, scope: !196)
!198 = !DILocation(line: 171, column: 11, scope: !196)
!199 = !DILocation(line: 171, column: 15, scope: !196)
!200 = !DILocation(line: 166, column: 18, scope: !54)
!201 = distinct !{!201, !194, !202}
!202 = !DILocation(line: 174, column: 3, scope: !54)
!203 = !DILocation(line: 0, scope: !196)
!204 = !DILocation(line: 166, column: 35, scope: !54)
!205 = !DILocation(line: 165, column: 10, scope: !54)
!206 = !DILocation(line: 176, column: 23, scope: !207)
!207 = distinct !DILexicalBlock(scope: !54, file: !1, line: 176, column: 3)
!208 = !DILocation(line: 176, column: 20, scope: !207)
!209 = !DILocation(line: 176, column: 3, scope: !207)
!210 = !DILocation(line: 176, column: 51, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !1, line: 176, column: 3)
!212 = !DILocation(line: 176, column: 52, scope: !211)
!213 = !DILocation(line: 176, column: 49, scope: !211)
!214 = !DILocation(line: 176, column: 36, scope: !211)
!215 = !DILocation(line: 176, column: 54, scope: !211)
!216 = !DILocation(line: 176, column: 29, scope: !211)
!217 = distinct !{!217, !209, !218}
!218 = !DILocation(line: 176, column: 56, scope: !207)
!219 = !DILocation(line: 165, column: 12, scope: !54)
!220 = !DILocation(line: 189, column: 33, scope: !54)
!221 = !DILocation(line: 189, column: 27, scope: !54)
!222 = !DILocation(line: 189, column: 13, scope: !54)
!223 = !DILocation(line: 189, column: 12, scope: !54)
!224 = !DILocation(line: 190, column: 9, scope: !225)
!225 = distinct !DILexicalBlock(scope: !54, file: !1, line: 190, column: 6)
!226 = !DILocation(line: 0, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 199, column: 11)
!228 = distinct !DILexicalBlock(scope: !225, file: !1, line: 198, column: 10)
!229 = !DILocation(line: 67, column: 21, scope: !22)
!230 = !DILocation(line: 0, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !1, line: 199, column: 11)
!232 = !DILocation(line: 190, column: 6, scope: !54)
!233 = !DILocation(line: 199, column: 11, scope: !227)
!234 = !DILocation(line: 191, column: 11, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !1, line: 191, column: 11)
!236 = distinct !DILexicalBlock(scope: !225, file: !1, line: 190, column: 38)
!237 = !DILocation(line: 193, column: 6, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !1, line: 191, column: 46)
!239 = distinct !DILexicalBlock(scope: !235, file: !1, line: 191, column: 11)
!240 = !DILocation(line: 194, column: 10, scope: !238)
!241 = !DILocation(line: 194, column: 13, scope: !238)
!242 = !DILocation(line: 196, column: 7, scope: !238)
!243 = !DILocation(line: 191, column: 43, scope: !239)
!244 = !DILocation(line: 191, column: 39, scope: !239)
!245 = distinct !{!245, !234, !246}
!246 = !DILocation(line: 197, column: 12, scope: !235)
!247 = !DILocation(line: 201, column: 6, scope: !248)
!248 = distinct !DILexicalBlock(scope: !231, file: !1, line: 199, column: 46)
!249 = !DILocation(line: 202, column: 10, scope: !248)
!250 = !DILocation(line: 202, column: 13, scope: !248)
!251 = !DILocation(line: 204, column: 7, scope: !248)
!252 = !DILocation(line: 206, column: 8, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !1, line: 206, column: 7)
!254 = !DILocation(line: 206, column: 7, scope: !248)
!255 = !DILocation(line: 207, column: 10, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !1, line: 206, column: 16)
!257 = !DILocation(line: 208, column: 10, scope: !256)
!258 = !DILocation(line: 210, column: 4, scope: !256)
!259 = !DILocation(line: 0, scope: !248)
!260 = !DILocation(line: 0, scope: !207)
!261 = !DILocation(line: 199, column: 43, scope: !231)
!262 = !DILocation(line: 199, column: 39, scope: !231)
!263 = distinct !{!263, !233, !264}
!264 = !DILocation(line: 211, column: 12, scope: !227)
!265 = !DILocation(line: 178, column: 5, scope: !54)
!266 = !DILocation(line: 176, column: 8, scope: !207)
!267 = !DILocation(line: 213, column: 14, scope: !54)
!268 = !DILocation(line: 213, column: 13, scope: !54)
!269 = !DILocation(line: 213, column: 29, scope: !54)
!270 = !DILocation(line: 216, column: 8, scope: !271)
!271 = distinct !DILexicalBlock(scope: !22, file: !1, line: 216, column: 5)
!272 = !DILocation(line: 0, scope: !54)
!273 = !DILocation(line: 216, column: 20, scope: !271)
!274 = !DILocation(line: 216, column: 5, scope: !22)
!275 = !DILocation(line: 0, scope: !271)
!276 = !DILocation(line: 217, column: 1, scope: !22)
!277 = distinct !DISubprogram(name: "__ieee754_yn", scope: !1, file: !1, line: 220, type: !23, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !278)
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !291, !294, !296}
!279 = !DILocalVariable(name: "n", arg: 1, scope: !277, file: !1, line: 220, type: !25)
!280 = !DILocalVariable(name: "x", arg: 2, scope: !277, file: !1, line: 220, type: !7)
!281 = !DILocalVariable(name: "i", scope: !277, file: !1, line: 226, type: !30)
!282 = !DILocalVariable(name: "hx", scope: !277, file: !1, line: 226, type: !30)
!283 = !DILocalVariable(name: "ix", scope: !277, file: !1, line: 226, type: !30)
!284 = !DILocalVariable(name: "lx", scope: !277, file: !1, line: 226, type: !30)
!285 = !DILocalVariable(name: "sign", scope: !277, file: !1, line: 227, type: !30)
!286 = !DILocalVariable(name: "a", scope: !277, file: !1, line: 228, type: !7)
!287 = !DILocalVariable(name: "b", scope: !277, file: !1, line: 228, type: !7)
!288 = !DILocalVariable(name: "temp", scope: !277, file: !1, line: 228, type: !7)
!289 = !DILocalVariable(name: "ew_u", scope: !290, file: !1, line: 230, type: !43)
!290 = distinct !DILexicalBlock(scope: !277, file: !1, line: 230, column: 2)
!291 = !DILocalVariable(name: "high", scope: !292, file: !1, line: 266, type: !4)
!292 = distinct !DILexicalBlock(scope: !293, file: !1, line: 265, column: 9)
!293 = distinct !DILexicalBlock(scope: !277, file: !1, line: 244, column: 5)
!294 = !DILocalVariable(name: "gh_u", scope: !295, file: !1, line: 270, type: !43)
!295 = distinct !DILexicalBlock(scope: !292, file: !1, line: 270, column: 6)
!296 = !DILocalVariable(name: "gh_u", scope: !297, file: !1, line: 274, type: !43)
!297 = distinct !DILexicalBlock(scope: !298, file: !1, line: 274, column: 3)
!298 = distinct !DILexicalBlock(scope: !299, file: !1, line: 271, column: 40)
!299 = distinct !DILexicalBlock(scope: !300, file: !1, line: 271, column: 6)
!300 = distinct !DILexicalBlock(scope: !292, file: !1, line: 271, column: 6)
!301 = !DILocation(line: 220, column: 26, scope: !277)
!302 = !DILocation(line: 220, column: 36, scope: !277)
!303 = !DILocation(line: 230, column: 2, scope: !290)
!304 = !DILocation(line: 226, column: 14, scope: !277)
!305 = !DILocation(line: 226, column: 20, scope: !277)
!306 = !DILocation(line: 231, column: 17, scope: !277)
!307 = !DILocation(line: 226, column: 17, scope: !277)
!308 = !DILocation(line: 233, column: 26, scope: !309)
!309 = distinct !DILexicalBlock(scope: !277, file: !1, line: 233, column: 5)
!310 = !DILocation(line: 233, column: 25, scope: !309)
!311 = !DILocation(line: 233, column: 31, scope: !309)
!312 = !DILocation(line: 233, column: 8, scope: !309)
!313 = !DILocation(line: 233, column: 36, scope: !309)
!314 = !DILocation(line: 233, column: 5, scope: !277)
!315 = !DILocation(line: 233, column: 57, scope: !309)
!316 = !DILocation(line: 233, column: 49, scope: !309)
!317 = !DILocation(line: 234, column: 8, scope: !318)
!318 = distinct !DILexicalBlock(scope: !277, file: !1, line: 234, column: 5)
!319 = !DILocation(line: 234, column: 12, scope: !318)
!320 = !DILocation(line: 234, column: 5, scope: !277)
!321 = !DILocation(line: 235, column: 7, scope: !322)
!322 = distinct !DILexicalBlock(scope: !277, file: !1, line: 235, column: 5)
!323 = !DILocation(line: 235, column: 5, scope: !277)
!324 = !DILocation(line: 227, column: 12, scope: !277)
!325 = !DILocation(line: 237, column: 6, scope: !326)
!326 = distinct !DILexicalBlock(scope: !277, file: !1, line: 237, column: 5)
!327 = !DILocation(line: 237, column: 5, scope: !277)
!328 = !DILocation(line: 238, column: 7, scope: !329)
!329 = distinct !DILexicalBlock(scope: !326, file: !1, line: 237, column: 9)
!330 = !DILocation(line: 239, column: 20, scope: !329)
!331 = !DILocation(line: 239, column: 12, scope: !329)
!332 = !DILocation(line: 240, column: 2, scope: !329)
!333 = !DILocation(line: 0, scope: !277)
!334 = !DILocation(line: 241, column: 5, scope: !277)
!335 = !DILocation(line: 241, column: 18, scope: !336)
!336 = distinct !DILexicalBlock(scope: !277, file: !1, line: 241, column: 5)
!337 = !DILocation(line: 241, column: 11, scope: !336)
!338 = !DILocation(line: 242, column: 18, scope: !339)
!339 = distinct !DILexicalBlock(scope: !277, file: !1, line: 242, column: 5)
!340 = !DILocation(line: 242, column: 23, scope: !339)
!341 = !DILocation(line: 242, column: 22, scope: !339)
!342 = !DILocation(line: 242, column: 11, scope: !339)
!343 = !DILocation(line: 243, column: 7, scope: !344)
!344 = distinct !DILexicalBlock(scope: !277, file: !1, line: 243, column: 5)
!345 = !DILocation(line: 243, column: 5, scope: !277)
!346 = !DILocation(line: 244, column: 7, scope: !293)
!347 = !DILocation(line: 244, column: 5, scope: !277)
!348 = !DILocation(line: 258, column: 3, scope: !349)
!349 = distinct !DILexicalBlock(scope: !293, file: !1, line: 244, column: 21)
!350 = !DILocation(line: 259, column: 23, scope: !351)
!351 = distinct !DILexicalBlock(scope: !349, file: !1, line: 258, column: 15)
!352 = !DILocation(line: 259, column: 30, scope: !351)
!353 = !DILocation(line: 259, column: 29, scope: !351)
!354 = !DILocation(line: 228, column: 15, scope: !277)
!355 = !DILocation(line: 259, column: 38, scope: !351)
!356 = !DILocation(line: 260, column: 23, scope: !351)
!357 = !DILocation(line: 260, column: 22, scope: !351)
!358 = !DILocation(line: 260, column: 30, scope: !351)
!359 = !DILocation(line: 260, column: 29, scope: !351)
!360 = !DILocation(line: 260, column: 38, scope: !351)
!361 = !DILocation(line: 261, column: 23, scope: !351)
!362 = !DILocation(line: 261, column: 30, scope: !351)
!363 = !DILocation(line: 261, column: 29, scope: !351)
!364 = !DILocation(line: 261, column: 38, scope: !351)
!365 = !DILocation(line: 262, column: 23, scope: !351)
!366 = !DILocation(line: 262, column: 30, scope: !351)
!367 = !DILocation(line: 262, column: 29, scope: !351)
!368 = !DILocation(line: 262, column: 38, scope: !351)
!369 = !DILocation(line: 0, scope: !351)
!370 = !DILocation(line: 264, column: 16, scope: !349)
!371 = !DILocation(line: 264, column: 22, scope: !349)
!372 = !DILocation(line: 264, column: 21, scope: !349)
!373 = !DILocation(line: 228, column: 12, scope: !277)
!374 = !DILocation(line: 265, column: 2, scope: !349)
!375 = !DILocation(line: 267, column: 10, scope: !292)
!376 = !DILocation(line: 228, column: 9, scope: !277)
!377 = !DILocation(line: 268, column: 10, scope: !292)
!378 = !DILocation(line: 226, column: 12, scope: !277)
!379 = !DILocation(line: 0, scope: !297)
!380 = !DILocation(line: 271, column: 15, scope: !299)
!381 = !DILocation(line: 271, column: 23, scope: !299)
!382 = !DILocation(line: 271, column: 17, scope: !299)
!383 = !DILocation(line: 271, column: 6, scope: !300)
!384 = !DILocation(line: 273, column: 18, scope: !298)
!385 = !DILocation(line: 273, column: 8, scope: !298)
!386 = !DILocation(line: 273, column: 21, scope: !298)
!387 = !DILocation(line: 273, column: 24, scope: !298)
!388 = !DILocation(line: 273, column: 27, scope: !298)
!389 = !DILocation(line: 274, column: 3, scope: !297)
!390 = !DILocation(line: 271, column: 37, scope: !299)
!391 = distinct !{!391, !383, !392}
!392 = !DILocation(line: 276, column: 6, scope: !300)
!393 = !DILocation(line: 0, scope: !292)
!394 = !DILocation(line: 278, column: 9, scope: !395)
!395 = distinct !DILexicalBlock(scope: !277, file: !1, line: 278, column: 5)
!396 = !DILocation(line: 278, column: 35, scope: !395)
!397 = !DILocation(line: 278, column: 5, scope: !277)
!398 = !DILocation(line: 0, scope: !395)
!399 = !DILocation(line: 279, column: 1, scope: !277)
