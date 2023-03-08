; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_jn.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_jn.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
  br i1 %12, label %13, label %15, !dbg !79

; <label>:13:                                     ; preds = %2
  %14 = fadd double %1, %1, !dbg !80
  br label %282, !dbg !81

; <label>:15:                                     ; preds = %2
  %16 = icmp slt i32 %0, 0, !dbg !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  br i1 %16, label %17, label %21, !dbg !84

; <label>:17:                                     ; preds = %15
  %18 = sub nsw i32 0, %0, !dbg !85
  %19 = fsub double -0.000000e+00, %1, !dbg !87
  %20 = xor i32 %5, -2147483648, !dbg !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  br label %21, !dbg !89

; <label>:21:                                     ; preds = %17, %15
  %22 = phi i32 [ %20, %17 ], [ %5, %15 ], !dbg !90
  %23 = phi double [ %19, %17 ], [ %1, %15 ]
  %24 = phi i32 [ %18, %17 ], [ %0, %15 ]
  %25 = icmp eq i32 %24, 0, !dbg !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
  br i1 %25, label %26, label %28, !dbg !93

; <label>:26:                                     ; preds = %21
  %27 = tail call double @__ieee754_j0(double %23) #3, !dbg !94
  br label %282, !dbg !95

; <label>:28:                                     ; preds = %21
  %29 = icmp eq i32 %24, 1, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  br i1 %29, label %30, label %32, !dbg !98

; <label>:30:                                     ; preds = %28
  %31 = tail call double @__ieee754_j1(double %23) #3, !dbg !99
  br label %282, !dbg !100

; <label>:32:                                     ; preds = %28
  %33 = lshr i32 %22, 31, !dbg !101
  %34 = and i32 %33, %24, !dbg !102
  %35 = tail call double @fabs(double %23) #3, !dbg !104
  %36 = or i32 %7, %6, !dbg !105
  %37 = icmp eq i32 %36, 0, !dbg !106
  %38 = icmp ugt i32 %7, 2146435071, !dbg !107
  %39 = or i1 %38, %37, !dbg !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  br i1 %39, label %40, label %41, !dbg !108

; <label>:40:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !110
  br label %277, !dbg !110

; <label>:41:                                     ; preds = %32
  %42 = sitofp i32 %24 to double, !dbg !111
  %43 = fcmp ult double %35, %42, !dbg !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !113
  br i1 %43, label %100, label %44, !dbg !113

; <label>:44:                                     ; preds = %41
  %45 = icmp ugt i32 %7, 1389363199, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  br i1 %45, label %46, label %71, !dbg !117

; <label>:46:                                     ; preds = %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  %47 = trunc i32 %24 to i2, !dbg !118
  switch i2 %47, label %65 [
    i2 0, label %48
    i2 1, label %52
    i2 -2, label %56
    i2 -1, label %61
  ], !dbg !118

; <label>:48:                                     ; preds = %46
  %49 = tail call double @cos(double %35) #3, !dbg !120
  %50 = tail call double @sin(double %35) #3, !dbg !122
  %51 = fadd double %49, %50, !dbg !123
  br label %66, !dbg !125

; <label>:52:                                     ; preds = %46
  %53 = tail call double @cos(double %35) #3, !dbg !126
  %54 = tail call double @sin(double %35) #3, !dbg !127
  %55 = fsub double %54, %53, !dbg !128
  br label %66, !dbg !129

; <label>:56:                                     ; preds = %46
  %57 = tail call double @cos(double %35) #3, !dbg !130
  %58 = fsub double -0.000000e+00, %57, !dbg !131
  %59 = tail call double @sin(double %35) #3, !dbg !132
  %60 = fsub double %58, %59, !dbg !133
  br label %66, !dbg !134

; <label>:61:                                     ; preds = %46
  %62 = tail call double @cos(double %35) #3, !dbg !135
  %63 = tail call double @sin(double %35) #3, !dbg !136
  %64 = fsub double %62, %63, !dbg !137
  br label %66, !dbg !138

; <label>:65:                                     ; preds = %46
  unreachable

; <label>:66:                                     ; preds = %61, %56, %52, %48
  %67 = phi double [ %64, %61 ], [ %60, %56 ], [ %55, %52 ], [ %51, %48 ], !dbg !139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  %68 = fmul double %67, 0x3FE20DD750429B6D, !dbg !140
  %69 = tail call double @__ieee754_sqrt(double %35) #3, !dbg !141
  %70 = fdiv double %68, %69, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  br label %277, !dbg !143

; <label>:71:                                     ; preds = %44
  %72 = tail call double @__ieee754_j0(double %35) #3, !dbg !144
  %73 = tail call double @__ieee754_j1(double %35) #3, !dbg !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  %74 = icmp sgt i32 %24, 1, !dbg !151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  br i1 %74, label %75, label %277, !dbg !153

; <label>:75:                                     ; preds = %71
  %76 = add i32 %24, -1, !dbg !154
  %77 = and i32 %76, 1, !dbg !154
  %78 = icmp eq i32 %24, 2, !dbg !154
  br i1 %78, label %267, label %79, !dbg !154

; <label>:79:                                     ; preds = %75
  %80 = sub i32 %76, %77, !dbg !154
  br label %81, !dbg !154

; <label>:81:                                     ; preds = %81, %79
  %82 = phi i32 [ 1, %79 ], [ %97, %81 ]
  %83 = phi double [ %73, %79 ], [ %96, %81 ]
  %84 = phi double [ %72, %79 ], [ %90, %81 ]
  %85 = phi i32 [ %80, %79 ], [ %98, %81 ]
  %86 = shl nuw nsw i32 %82, 1, !dbg !154
  %87 = sitofp i32 %86 to double, !dbg !156
  %88 = fdiv double %87, %35, !dbg !157
  %89 = fmul double %83, %88, !dbg !158
  %90 = fsub double %89, %84, !dbg !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  %91 = shl nuw i32 %82, 1, !dbg !154
  %92 = add i32 %91, 2, !dbg !154
  %93 = sitofp i32 %92 to double, !dbg !156
  %94 = fdiv double %93, %35, !dbg !157
  %95 = fmul double %90, %94, !dbg !158
  %96 = fsub double %95, %83, !dbg !159
  %97 = add nuw nsw i32 %82, 2, !dbg !161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  %98 = add i32 %85, -2, !dbg !153
  %99 = icmp eq i32 %98, 0, !dbg !153
  br i1 %99, label %264, label %81, !dbg !153, !llvm.loop !162

; <label>:100:                                    ; preds = %41
  %101 = icmp ult i32 %7, 1041235968, !dbg !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !165
  br i1 %101, label %102, label %160, !dbg !165

; <label>:102:                                    ; preds = %100
  %103 = icmp sgt i32 %24, 33, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  br i1 %103, label %104, label %105, !dbg !169

; <label>:104:                                    ; preds = %102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  br label %277, !dbg !170

; <label>:105:                                    ; preds = %102
  %106 = fmul double %35, 5.000000e-01, !dbg !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  %107 = icmp slt i32 %24, 2, !dbg !175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  br i1 %107, label %156, label %108, !dbg !177

; <label>:108:                                    ; preds = %105
  %109 = add i32 %24, -1, !dbg !178
  %110 = add i32 %24, -2, !dbg !178
  %111 = and i32 %109, 3, !dbg !178
  %112 = icmp ult i32 %110, 3, !dbg !178
  br i1 %112, label %138, label %113, !dbg !178

; <label>:113:                                    ; preds = %108
  %114 = sub i32 %109, %111, !dbg !178
  br label %115, !dbg !178

; <label>:115:                                    ; preds = %115, %113
  %116 = phi i32 [ 2, %113 ], [ %135, %115 ]
  %117 = phi double [ %106, %113 ], [ %134, %115 ]
  %118 = phi double [ 1.000000e+00, %113 ], [ %133, %115 ]
  %119 = phi i32 [ %114, %113 ], [ %136, %115 ]
  %120 = sitofp i32 %116 to double, !dbg !178
  %121 = fmul double %118, %120, !dbg !180
  %122 = fmul double %106, %117, !dbg !181
  %123 = or i32 %116, 1, !dbg !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  %124 = sitofp i32 %123 to double, !dbg !178
  %125 = fmul double %121, %124, !dbg !180
  %126 = fmul double %106, %122, !dbg !181
  %127 = add nuw nsw i32 %116, 2, !dbg !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  %128 = sitofp i32 %127 to double, !dbg !178
  %129 = fmul double %125, %128, !dbg !180
  %130 = fmul double %106, %126, !dbg !181
  %131 = add nuw nsw i32 %116, 3, !dbg !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  %132 = sitofp i32 %131 to double, !dbg !178
  %133 = fmul double %129, %132, !dbg !180
  %134 = fmul double %106, %130, !dbg !181
  %135 = add nuw nsw i32 %116, 4, !dbg !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  %136 = add i32 %119, -4, !dbg !177
  %137 = icmp eq i32 %136, 0, !dbg !177
  br i1 %137, label %138, label %115, !dbg !177, !llvm.loop !184

; <label>:138:                                    ; preds = %115, %108
  %139 = phi double [ undef, %108 ], [ %133, %115 ]
  %140 = phi double [ undef, %108 ], [ %134, %115 ]
  %141 = phi i32 [ 2, %108 ], [ %135, %115 ]
  %142 = phi double [ %106, %108 ], [ %134, %115 ]
  %143 = phi double [ 1.000000e+00, %108 ], [ %133, %115 ]
  %144 = icmp eq i32 %111, 0, !dbg !177
  br i1 %144, label %156, label %145, !dbg !177

; <label>:145:                                    ; preds = %138, %145
  %146 = phi i32 [ %153, %145 ], [ %141, %138 ]
  %147 = phi double [ %152, %145 ], [ %142, %138 ]
  %148 = phi double [ %151, %145 ], [ %143, %138 ]
  %149 = phi i32 [ %154, %145 ], [ %111, %138 ]
  %150 = sitofp i32 %146 to double, !dbg !178
  %151 = fmul double %148, %150, !dbg !180
  %152 = fmul double %106, %147, !dbg !181
  %153 = add nuw nsw i32 %146, 1, !dbg !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  %154 = add i32 %149, -1, !dbg !177
  %155 = icmp eq i32 %154, 0, !dbg !177
  br i1 %155, label %156, label %145, !dbg !177, !llvm.loop !186

; <label>:156:                                    ; preds = %138, %145, %105
  %157 = phi double [ 1.000000e+00, %105 ], [ %139, %138 ], [ %151, %145 ], !dbg !188
  %158 = phi double [ %106, %105 ], [ %140, %138 ], [ %152, %145 ], !dbg !188
  %159 = fdiv double %158, %157, !dbg !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %277

; <label>:160:                                    ; preds = %100
  %161 = shl nsw i32 %24, 1, !dbg !190
  %162 = sitofp i32 %161 to double, !dbg !191
  %163 = insertelement <2 x double> <double undef, double 2.000000e+00>, double %162, i32 0, !dbg !193
  %164 = insertelement <2 x double> undef, double %35, i32 0, !dbg !193
  %165 = shufflevector <2 x double> %164, <2 x double> undef, <2 x i32> zeroinitializer, !dbg !193
  %166 = fdiv <2 x double> %163, %165, !dbg !193
  %167 = extractelement <2 x double> %166, i32 0, !dbg !196
  %168 = extractelement <2 x double> %166, i32 1, !dbg !196
  %169 = fadd double %167, %168, !dbg !196
  %170 = fmul double %167, %169, !dbg !198
  %171 = fadd double %170, -1.000000e+00, !dbg !199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  %172 = fcmp olt double %171, 1.000000e+09, !dbg !203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  br i1 %172, label %173, label %183, !dbg !202

; <label>:173:                                    ; preds = %160, %173
  %174 = phi i32 [ %178, %173 ], [ 1, %160 ]
  %175 = phi double [ %181, %173 ], [ %171, %160 ]
  %176 = phi double [ %175, %173 ], [ %167, %160 ]
  %177 = phi double [ %179, %173 ], [ %169, %160 ]
  %178 = add nuw nsw i32 %174, 1, !dbg !204
  %179 = fadd double %168, %177, !dbg !206
  %180 = fmul double %179, %175, !dbg !207
  %181 = fsub double %180, %176, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  %182 = fcmp olt double %181, 1.000000e+09, !dbg !203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  br i1 %182, label %173, label %183, !dbg !202, !llvm.loop !210

; <label>:183:                                    ; preds = %173, %160
  %184 = phi i32 [ 1, %160 ], [ %178, %173 ], !dbg !212
  %185 = add nsw i32 %184, %24, !dbg !215
  %186 = shl nsw i32 %185, 1, !dbg !217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !219
  br label %187, !dbg !219

; <label>:187:                                    ; preds = %183, %187
  %188 = phi double [ 0.000000e+00, %183 ], [ %193, %187 ]
  %189 = phi i32 [ %186, %183 ], [ %194, %187 ]
  %190 = sitofp i32 %189 to double, !dbg !220
  %191 = fdiv double %190, %35, !dbg !222
  %192 = fsub double %191, %188, !dbg !223
  %193 = fdiv double 1.000000e+00, %192, !dbg !224
  %194 = add nsw i32 %189, -2, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !226
  %195 = icmp slt i32 %194, %161, !dbg !227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !219
  br i1 %195, label %196, label %187, !dbg !219, !llvm.loop !228

; <label>:196:                                    ; preds = %187
  %197 = fmul double %168, %42, !dbg !231
  %198 = tail call double @fabs(double %197) #3, !dbg !232
  %199 = tail call double @__ieee754_log(double %198) #3, !dbg !233
  %200 = fmul double %199, %42, !dbg !234
  %201 = fcmp olt double %200, 0x40862E42FEFA39EF, !dbg !235
  %202 = add nsw i32 %24, -1, !dbg !237
  %203 = shl nsw i32 %202, 1, !dbg !237
  %204 = sitofp i32 %203 to double, !dbg !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !241
  %205 = icmp sgt i32 %24, 1, !dbg !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !237
  br i1 %201, label %207, label %206, !dbg !241

; <label>:206:                                    ; preds = %196
  br i1 %205, label %238, label %258, !dbg !244

; <label>:207:                                    ; preds = %196
  br i1 %205, label %208, label %258, !dbg !245

; <label>:208:                                    ; preds = %207
  %209 = and i32 %24, 1, !dbg !248
  %210 = icmp eq i32 %209, 0, !dbg !248
  br i1 %210, label %211, label %216, !dbg !248

; <label>:211:                                    ; preds = %208
  %212 = fdiv double %204, %35, !dbg !251
  %213 = fsub double %212, %193, !dbg !252
  %214 = fadd double %204, -2.000000e+00, !dbg !253
  %215 = add nsw i32 %24, -2, !dbg !254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  br label %216, !dbg !245

; <label>:216:                                    ; preds = %211, %208
  %217 = phi i32 [ %202, %208 ], [ %215, %211 ]
  %218 = phi double [ %204, %208 ], [ %214, %211 ]
  %219 = phi double [ 1.000000e+00, %208 ], [ %213, %211 ]
  %220 = phi double [ %193, %208 ], [ 1.000000e+00, %211 ]
  %221 = phi double [ undef, %208 ], [ %213, %211 ]
  %222 = icmp eq i32 %24, 2, !dbg !248
  br i1 %222, label %258, label %223, !dbg !248

; <label>:223:                                    ; preds = %216, %223
  %224 = phi i32 [ %236, %223 ], [ %217, %216 ]
  %225 = phi double [ %235, %223 ], [ %218, %216 ]
  %226 = phi double [ %234, %223 ], [ %219, %216 ]
  %227 = phi double [ %230, %223 ], [ %220, %216 ]
  %228 = fmul double %226, %225, !dbg !248
  %229 = fdiv double %228, %35, !dbg !251
  %230 = fsub double %229, %227, !dbg !252
  %231 = fadd double %225, -2.000000e+00, !dbg !253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  %232 = fmul double %230, %231, !dbg !248
  %233 = fdiv double %232, %35, !dbg !251
  %234 = fsub double %233, %226, !dbg !252
  %235 = fadd double %231, -2.000000e+00, !dbg !253
  %236 = add nsw i32 %224, -2, !dbg !254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  %237 = icmp sgt i32 %224, 2, !dbg !256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  br i1 %237, label %223, label %258, !dbg !245, !llvm.loop !257

; <label>:238:                                    ; preds = %206, %252
  %239 = phi double [ %255, %252 ], [ %193, %206 ]
  %240 = phi i32 [ %256, %252 ], [ %202, %206 ]
  %241 = phi double [ %247, %252 ], [ %204, %206 ]
  %242 = phi double [ %254, %252 ], [ 1.000000e+00, %206 ]
  %243 = phi double [ %253, %252 ], [ %193, %206 ]
  %244 = fmul double %242, %241, !dbg !259
  %245 = fdiv double %244, %35, !dbg !261
  %246 = fsub double %245, %243, !dbg !262
  %247 = fadd double %241, -2.000000e+00, !dbg !263
  %248 = fcmp ogt double %246, 1.000000e+100, !dbg !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  br i1 %248, label %249, label %252, !dbg !266

; <label>:249:                                    ; preds = %238
  %250 = fdiv double %242, %246, !dbg !267
  %251 = fdiv double %239, %246, !dbg !269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  br label %252, !dbg !270

; <label>:252:                                    ; preds = %238, %249
  %253 = phi double [ %250, %249 ], [ %242, %238 ], !dbg !271
  %254 = phi double [ 1.000000e+00, %249 ], [ %246, %238 ], !dbg !271
  %255 = phi double [ %251, %249 ], [ %239, %238 ], !dbg !272
  %256 = add nsw i32 %240, -1, !dbg !273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !274
  %257 = icmp sgt i32 %240, 1, !dbg !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  br i1 %257, label %238, label %258, !dbg !244, !llvm.loop !276

; <label>:258:                                    ; preds = %252, %216, %223, %206, %207
  %259 = phi double [ 1.000000e+00, %207 ], [ 1.000000e+00, %206 ], [ %221, %216 ], [ %234, %223 ], [ %254, %252 ], !dbg !278
  %260 = phi double [ %193, %207 ], [ %193, %206 ], [ %193, %223 ], [ %193, %216 ], [ %255, %252 ], !dbg !279
  %261 = tail call double @__ieee754_j0(double %35) #3, !dbg !280
  %262 = fmul double %260, %261, !dbg !281
  %263 = fdiv double %262, %259, !dbg !282
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %277

; <label>:264:                                    ; preds = %81
  %265 = shl nuw i32 %97, 1, !dbg !153
  %266 = sitofp i32 %265 to double, !dbg !153
  br label %267, !dbg !153

; <label>:267:                                    ; preds = %264, %75
  %268 = phi double [ undef, %75 ], [ %96, %264 ]
  %269 = phi double [ 2.000000e+00, %75 ], [ %266, %264 ]
  %270 = phi double [ %73, %75 ], [ %96, %264 ]
  %271 = phi double [ %72, %75 ], [ %90, %264 ]
  %272 = icmp eq i32 %77, 0, !dbg !153
  br i1 %272, label %277, label %273, !dbg !153

; <label>:273:                                    ; preds = %267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  %274 = fdiv double %269, %35, !dbg !157
  %275 = fmul double %270, %274, !dbg !158
  %276 = fsub double %275, %271, !dbg !159
  br label %277, !dbg !283

; <label>:277:                                    ; preds = %273, %267, %71, %66, %104, %156, %258, %40
  %278 = phi double [ 0.000000e+00, %40 ], [ %70, %66 ], [ 0.000000e+00, %104 ], [ %159, %156 ], [ %263, %258 ], [ %73, %71 ], [ %268, %267 ], [ %276, %273 ], !dbg !285
  %279 = icmp eq i32 %34, 1, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  %280 = fsub double -0.000000e+00, %278, !dbg !287
  %281 = select i1 %279, double %280, double %278, !dbg !286
  br label %282, !dbg !286

; <label>:282:                                    ; preds = %277, %30, %26, %13
  %283 = phi double [ %14, %13 ], [ %27, %26 ], [ %31, %30 ], [ %281, %277 ], !dbg !288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  ret double %283, !dbg !290
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
define dso_local double @__ieee754_yn(i32, double) local_unnamed_addr #0 !dbg !291 {
  %3 = bitcast double %1 to i64, !dbg !317
  %4 = lshr i64 %3, 32, !dbg !317
  %5 = trunc i64 %4 to i32, !dbg !317
  %6 = trunc i64 %3 to i32, !dbg !317
  %7 = and i32 %5, 2147483647, !dbg !320
  %8 = sub nsw i32 0, %6, !dbg !322
  %9 = or i32 %6, %8, !dbg !324
  %10 = lshr i32 %9, 31, !dbg !325
  %11 = or i32 %7, %10, !dbg !326
  %12 = icmp ugt i32 %11, 2146435072, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  br i1 %12, label %13, label %15, !dbg !328

; <label>:13:                                     ; preds = %2
  %14 = fadd double %1, %1, !dbg !329
  br label %96, !dbg !330

; <label>:15:                                     ; preds = %2
  %16 = or i32 %7, %6, !dbg !331
  %17 = icmp eq i32 %16, 0, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br i1 %17, label %96, label %18, !dbg !334

; <label>:18:                                     ; preds = %15
  %19 = icmp slt i32 %5, 0, !dbg !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  br i1 %19, label %96, label %20, !dbg !337

; <label>:20:                                     ; preds = %18
  %21 = icmp slt i32 %0, 0, !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !341
  br i1 %21, label %22, label %27, !dbg !341

; <label>:22:                                     ; preds = %20
  %23 = sub nsw i32 0, %0, !dbg !342
  %24 = shl i32 %23, 1, !dbg !344
  %25 = and i32 %24, 2, !dbg !344
  %26 = sub nsw i32 1, %25, !dbg !345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  br label %27, !dbg !346

; <label>:27:                                     ; preds = %22, %20
  %28 = phi i32 [ %26, %22 ], [ 1, %20 ], !dbg !347
  %29 = phi i32 [ %23, %22 ], [ %0, %20 ]
  %30 = icmp eq i32 %29, 0, !dbg !348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  br i1 %30, label %31, label %33, !dbg !350

; <label>:31:                                     ; preds = %27
  %32 = tail call double @__ieee754_y0(double %1) #3, !dbg !351
  br label %96, !dbg !352

; <label>:33:                                     ; preds = %27
  %34 = icmp eq i32 %29, 1, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br i1 %34, label %35, label %39, !dbg !355

; <label>:35:                                     ; preds = %33
  %36 = sitofp i32 %28 to double, !dbg !356
  %37 = tail call double @__ieee754_y1(double %1) #3, !dbg !357
  %38 = fmul double %37, %36, !dbg !358
  br label %96, !dbg !359

; <label>:39:                                     ; preds = %33
  %40 = icmp eq i32 %7, 2146435072, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  br i1 %40, label %96, label %41, !dbg !362

; <label>:41:                                     ; preds = %39
  %42 = icmp ugt i32 %7, 1389363199, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br i1 %42, label %43, label %68, !dbg !364

; <label>:43:                                     ; preds = %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  %44 = trunc i32 %29 to i2, !dbg !365
  switch i2 %44, label %62 [
    i2 0, label %45
    i2 1, label %49
    i2 -2, label %54
    i2 -1, label %58
  ], !dbg !365

; <label>:45:                                     ; preds = %43
  %46 = tail call double @sin(double %1) #3, !dbg !367
  %47 = tail call double @cos(double %1) #3, !dbg !369
  %48 = fsub double %46, %47, !dbg !370
  br label %63, !dbg !372

; <label>:49:                                     ; preds = %43
  %50 = tail call double @sin(double %1) #3, !dbg !373
  %51 = fsub double -0.000000e+00, %50, !dbg !374
  %52 = tail call double @cos(double %1) #3, !dbg !375
  %53 = fsub double %51, %52, !dbg !376
  br label %63, !dbg !377

; <label>:54:                                     ; preds = %43
  %55 = tail call double @sin(double %1) #3, !dbg !378
  %56 = tail call double @cos(double %1) #3, !dbg !379
  %57 = fsub double %56, %55, !dbg !380
  br label %63, !dbg !381

; <label>:58:                                     ; preds = %43
  %59 = tail call double @sin(double %1) #3, !dbg !382
  %60 = tail call double @cos(double %1) #3, !dbg !383
  %61 = fadd double %59, %60, !dbg !384
  br label %63, !dbg !385

; <label>:62:                                     ; preds = %43
  unreachable

; <label>:63:                                     ; preds = %58, %54, %49, %45
  %64 = phi double [ %61, %58 ], [ %57, %54 ], [ %53, %49 ], [ %48, %45 ], !dbg !386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  %65 = fmul double %64, 0x3FE20DD750429B6D, !dbg !387
  %66 = tail call double @__ieee754_sqrt(double %1) #3, !dbg !388
  %67 = fdiv double %65, %66, !dbg !389
  br label %91, !dbg !391

; <label>:68:                                     ; preds = %41
  %69 = tail call double @__ieee754_y0(double %1) #3, !dbg !392
  %70 = tail call double @__ieee754_y1(double %1) #3, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  %71 = bitcast double %70 to i64, !dbg !397
  %72 = icmp sgt i32 %29, 1, !dbg !398
  %73 = and i64 %71, -4294967296, !dbg !399
  %74 = icmp ne i64 %73, -4503599627370496, !dbg !399
  %75 = and i1 %72, %74, !dbg !400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  br i1 %75, label %76, label %91, !dbg !401

; <label>:76:                                     ; preds = %68, %76
  %77 = phi i32 [ %85, %76 ], [ 1, %68 ]
  %78 = phi double [ %84, %76 ], [ %70, %68 ]
  %79 = phi double [ %78, %76 ], [ %69, %68 ]
  %80 = shl nuw nsw i32 %77, 1, !dbg !402
  %81 = sitofp i32 %80 to double, !dbg !403
  %82 = fdiv double %81, %1, !dbg !404
  %83 = fmul double %78, %82, !dbg !405
  %84 = fsub double %83, %79, !dbg !406
  %85 = add nuw nsw i32 %77, 1, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  %86 = bitcast double %84 to i64, !dbg !397
  %87 = icmp slt i32 %85, %29, !dbg !398
  %88 = and i64 %86, -4294967296, !dbg !399
  %89 = icmp ne i64 %88, -4503599627370496, !dbg !399
  %90 = and i1 %87, %89, !dbg !400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  br i1 %90, label %76, label %91, !dbg !401, !llvm.loop !410

; <label>:91:                                     ; preds = %76, %68, %63
  %92 = phi double [ %67, %63 ], [ %70, %68 ], [ %84, %76 ], !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %93 = icmp sgt i32 %28, 0, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  %94 = fsub double -0.000000e+00, %92, !dbg !416
  %95 = select i1 %93, double %92, double %94, !dbg !415
  br label %96, !dbg !415

; <label>:96:                                     ; preds = %91, %39, %18, %15, %35, %31, %13
  %97 = phi double [ %14, %13 ], [ %32, %31 ], [ %38, %35 ], [ 0xFFF0000000000000, %15 ], [ 0x7FF8000000000000, %18 ], [ 0.000000e+00, %39 ], [ %95, %91 ], !dbg !417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  ret double %97, !dbg !419
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
!91 = !DILocation(line: 82, column: 6, scope: !92)
!92 = distinct !DILexicalBlock(scope: !22, file: !1, line: 82, column: 5)
!93 = !DILocation(line: 82, column: 5, scope: !22)
!94 = !DILocation(line: 82, column: 18, scope: !92)
!95 = !DILocation(line: 82, column: 11, scope: !92)
!96 = !DILocation(line: 83, column: 6, scope: !97)
!97 = distinct !DILexicalBlock(scope: !22, file: !1, line: 83, column: 5)
!98 = !DILocation(line: 83, column: 5, scope: !22)
!99 = !DILocation(line: 83, column: 18, scope: !97)
!100 = !DILocation(line: 83, column: 11, scope: !97)
!101 = !DILocation(line: 84, column: 17, scope: !22)
!102 = !DILocation(line: 84, column: 13, scope: !22)
!103 = !DILocation(line: 66, column: 24, scope: !22)
!104 = !DILocation(line: 85, column: 6, scope: !22)
!105 = !DILocation(line: 86, column: 8, scope: !58)
!106 = !DILocation(line: 86, column: 12, scope: !58)
!107 = !DILocation(line: 86, column: 19, scope: !58)
!108 = !DILocation(line: 86, column: 15, scope: !58)
!109 = !DILocation(line: 67, column: 12, scope: !22)
!110 = !DILocation(line: 87, column: 6, scope: !58)
!111 = !DILocation(line: 88, column: 10, scope: !57)
!112 = !DILocation(line: 88, column: 19, scope: !57)
!113 = !DILocation(line: 88, column: 10, scope: !58)
!114 = !DILocation(line: 90, column: 11, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !1, line: 90, column: 9)
!116 = distinct !DILexicalBlock(scope: !57, file: !1, line: 88, column: 24)
!117 = !DILocation(line: 90, column: 9, scope: !116)
!118 = !DILocation(line: 104, column: 3, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 90, column: 25)
!120 = !DILocation(line: 105, column: 23, scope: !121)
!121 = distinct !DILexicalBlock(scope: !119, file: !1, line: 104, column: 15)
!122 = !DILocation(line: 105, column: 30, scope: !121)
!123 = !DILocation(line: 105, column: 29, scope: !121)
!124 = !DILocation(line: 67, column: 15, scope: !22)
!125 = !DILocation(line: 105, column: 38, scope: !121)
!126 = !DILocation(line: 106, column: 23, scope: !121)
!127 = !DILocation(line: 106, column: 30, scope: !121)
!128 = !DILocation(line: 106, column: 29, scope: !121)
!129 = !DILocation(line: 106, column: 38, scope: !121)
!130 = !DILocation(line: 107, column: 23, scope: !121)
!131 = !DILocation(line: 107, column: 22, scope: !121)
!132 = !DILocation(line: 107, column: 30, scope: !121)
!133 = !DILocation(line: 107, column: 29, scope: !121)
!134 = !DILocation(line: 107, column: 38, scope: !121)
!135 = !DILocation(line: 108, column: 23, scope: !121)
!136 = !DILocation(line: 108, column: 30, scope: !121)
!137 = !DILocation(line: 108, column: 29, scope: !121)
!138 = !DILocation(line: 108, column: 38, scope: !121)
!139 = !DILocation(line: 0, scope: !121)
!140 = !DILocation(line: 110, column: 16, scope: !119)
!141 = !DILocation(line: 110, column: 22, scope: !119)
!142 = !DILocation(line: 110, column: 21, scope: !119)
!143 = !DILocation(line: 111, column: 6, scope: !119)
!144 = !DILocation(line: 112, column: 14, scope: !145)
!145 = distinct !DILexicalBlock(scope: !115, file: !1, line: 111, column: 13)
!146 = !DILocation(line: 67, column: 9, scope: !22)
!147 = !DILocation(line: 113, column: 14, scope: !145)
!148 = !DILocation(line: 66, column: 12, scope: !22)
!149 = !DILocation(line: 114, column: 14, scope: !150)
!150 = distinct !DILexicalBlock(scope: !145, file: !1, line: 114, column: 10)
!151 = !DILocation(line: 114, column: 19, scope: !152)
!152 = distinct !DILexicalBlock(scope: !150, file: !1, line: 114, column: 10)
!153 = !DILocation(line: 114, column: 10, scope: !150)
!154 = !DILocation(line: 116, column: 24, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !1, line: 114, column: 26)
!156 = !DILocation(line: 116, column: 14, scope: !155)
!157 = !DILocation(line: 116, column: 27, scope: !155)
!158 = !DILocation(line: 116, column: 12, scope: !155)
!159 = !DILocation(line: 116, column: 31, scope: !155)
!160 = !DILocation(line: 114, column: 10, scope: !152)
!161 = !DILocation(line: 114, column: 23, scope: !152)
!162 = distinct !{!162, !153, !163}
!163 = !DILocation(line: 118, column: 10, scope: !150)
!164 = !DILocation(line: 121, column: 11, scope: !55)
!165 = !DILocation(line: 121, column: 9, scope: !56)
!166 = !DILocation(line: 125, column: 7, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 125, column: 6)
!168 = distinct !DILexicalBlock(scope: !55, file: !1, line: 121, column: 24)
!169 = !DILocation(line: 125, column: 6, scope: !168)
!170 = !DILocation(line: 126, column: 7, scope: !167)
!171 = !DILocation(line: 128, column: 15, scope: !172)
!172 = distinct !DILexicalBlock(scope: !167, file: !1, line: 127, column: 8)
!173 = !DILocation(line: 129, column: 12, scope: !174)
!174 = distinct !DILexicalBlock(scope: !172, file: !1, line: 129, column: 7)
!175 = !DILocation(line: 129, column: 23, scope: !176)
!176 = distinct !DILexicalBlock(scope: !174, file: !1, line: 129, column: 7)
!177 = !DILocation(line: 129, column: 7, scope: !174)
!178 = !DILocation(line: 130, column: 9, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !1, line: 129, column: 32)
!180 = !DILocation(line: 130, column: 6, scope: !179)
!181 = !DILocation(line: 131, column: 6, scope: !179)
!182 = !DILocation(line: 129, column: 28, scope: !176)
!183 = !DILocation(line: 129, column: 7, scope: !176)
!184 = distinct !{!184, !177, !185}
!185 = !DILocation(line: 132, column: 7, scope: !174)
!186 = distinct !{!186, !187}
!187 = !{!"llvm.loop.unroll.disable"}
!188 = !DILocation(line: 0, scope: !179)
!189 = !DILocation(line: 133, column: 12, scope: !172)
!190 = !DILocation(line: 167, column: 10, scope: !54)
!191 = !DILocation(line: 167, column: 8, scope: !54)
!192 = !DILocation(line: 68, column: 12, scope: !22)
!193 = !DILocation(line: 167, column: 13, scope: !54)
!194 = !DILocation(line: 166, column: 16, scope: !54)
!195 = !DILocation(line: 166, column: 10, scope: !54)
!196 = !DILocation(line: 168, column: 17, scope: !54)
!197 = !DILocation(line: 68, column: 9, scope: !22)
!198 = !DILocation(line: 168, column: 27, scope: !54)
!199 = !DILocation(line: 168, column: 30, scope: !54)
!200 = !DILocation(line: 166, column: 13, scope: !54)
!201 = !DILocation(line: 166, column: 33, scope: !54)
!202 = !DILocation(line: 169, column: 3, scope: !54)
!203 = !DILocation(line: 169, column: 11, scope: !54)
!204 = !DILocation(line: 170, column: 6, scope: !205)
!205 = distinct !DILexicalBlock(scope: !54, file: !1, line: 169, column: 19)
!206 = !DILocation(line: 170, column: 14, scope: !205)
!207 = !DILocation(line: 171, column: 11, scope: !205)
!208 = !DILocation(line: 171, column: 15, scope: !205)
!209 = !DILocation(line: 166, column: 18, scope: !54)
!210 = distinct !{!210, !202, !211}
!211 = !DILocation(line: 174, column: 3, scope: !54)
!212 = !DILocation(line: 0, scope: !205)
!213 = !DILocation(line: 166, column: 35, scope: !54)
!214 = !DILocation(line: 165, column: 10, scope: !54)
!215 = !DILocation(line: 176, column: 23, scope: !216)
!216 = distinct !DILexicalBlock(scope: !54, file: !1, line: 176, column: 3)
!217 = !DILocation(line: 176, column: 20, scope: !216)
!218 = !DILocation(line: 176, column: 7, scope: !216)
!219 = !DILocation(line: 176, column: 3, scope: !216)
!220 = !DILocation(line: 176, column: 51, scope: !221)
!221 = distinct !DILexicalBlock(scope: !216, file: !1, line: 176, column: 3)
!222 = !DILocation(line: 176, column: 52, scope: !221)
!223 = !DILocation(line: 176, column: 54, scope: !221)
!224 = !DILocation(line: 176, column: 49, scope: !221)
!225 = !DILocation(line: 176, column: 36, scope: !221)
!226 = !DILocation(line: 176, column: 3, scope: !221)
!227 = !DILocation(line: 176, column: 29, scope: !221)
!228 = distinct !{!228, !219, !229}
!229 = !DILocation(line: 176, column: 56, scope: !216)
!230 = !DILocation(line: 165, column: 12, scope: !54)
!231 = !DILocation(line: 189, column: 33, scope: !54)
!232 = !DILocation(line: 189, column: 27, scope: !54)
!233 = !DILocation(line: 189, column: 13, scope: !54)
!234 = !DILocation(line: 189, column: 12, scope: !54)
!235 = !DILocation(line: 190, column: 9, scope: !236)
!236 = distinct !DILexicalBlock(scope: !54, file: !1, line: 190, column: 6)
!237 = !DILocation(line: 0, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !1, line: 199, column: 11)
!239 = distinct !DILexicalBlock(scope: !236, file: !1, line: 198, column: 10)
!240 = !DILocation(line: 67, column: 21, scope: !22)
!241 = !DILocation(line: 190, column: 6, scope: !54)
!242 = !DILocation(line: 0, scope: !243)
!243 = distinct !DILexicalBlock(scope: !238, file: !1, line: 199, column: 11)
!244 = !DILocation(line: 199, column: 11, scope: !238)
!245 = !DILocation(line: 191, column: 11, scope: !246)
!246 = distinct !DILexicalBlock(scope: !247, file: !1, line: 191, column: 11)
!247 = distinct !DILexicalBlock(scope: !236, file: !1, line: 190, column: 38)
!248 = !DILocation(line: 193, column: 6, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !1, line: 191, column: 46)
!250 = distinct !DILexicalBlock(scope: !246, file: !1, line: 191, column: 11)
!251 = !DILocation(line: 194, column: 10, scope: !249)
!252 = !DILocation(line: 194, column: 13, scope: !249)
!253 = !DILocation(line: 196, column: 7, scope: !249)
!254 = !DILocation(line: 191, column: 43, scope: !250)
!255 = !DILocation(line: 191, column: 11, scope: !250)
!256 = !DILocation(line: 191, column: 39, scope: !250)
!257 = distinct !{!257, !245, !258}
!258 = !DILocation(line: 197, column: 12, scope: !246)
!259 = !DILocation(line: 201, column: 6, scope: !260)
!260 = distinct !DILexicalBlock(scope: !243, file: !1, line: 199, column: 46)
!261 = !DILocation(line: 202, column: 10, scope: !260)
!262 = !DILocation(line: 202, column: 13, scope: !260)
!263 = !DILocation(line: 204, column: 7, scope: !260)
!264 = !DILocation(line: 206, column: 8, scope: !265)
!265 = distinct !DILexicalBlock(scope: !260, file: !1, line: 206, column: 7)
!266 = !DILocation(line: 206, column: 7, scope: !260)
!267 = !DILocation(line: 207, column: 10, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !1, line: 206, column: 16)
!269 = !DILocation(line: 208, column: 10, scope: !268)
!270 = !DILocation(line: 210, column: 4, scope: !268)
!271 = !DILocation(line: 0, scope: !260)
!272 = !DILocation(line: 0, scope: !216)
!273 = !DILocation(line: 199, column: 43, scope: !243)
!274 = !DILocation(line: 199, column: 11, scope: !243)
!275 = !DILocation(line: 199, column: 39, scope: !243)
!276 = distinct !{!276, !244, !277}
!277 = !DILocation(line: 211, column: 12, scope: !238)
!278 = !DILocation(line: 178, column: 5, scope: !54)
!279 = !DILocation(line: 176, column: 8, scope: !216)
!280 = !DILocation(line: 213, column: 14, scope: !54)
!281 = !DILocation(line: 213, column: 13, scope: !54)
!282 = !DILocation(line: 213, column: 29, scope: !54)
!283 = !DILocation(line: 216, column: 8, scope: !284)
!284 = distinct !DILexicalBlock(scope: !22, file: !1, line: 216, column: 5)
!285 = !DILocation(line: 0, scope: !54)
!286 = !DILocation(line: 216, column: 5, scope: !22)
!287 = !DILocation(line: 216, column: 20, scope: !284)
!288 = !DILocation(line: 0, scope: !284)
!289 = !DILocation(line: 0, scope: !74)
!290 = !DILocation(line: 217, column: 1, scope: !22)
!291 = distinct !DISubprogram(name: "__ieee754_yn", scope: !1, file: !1, line: 220, type: !23, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !292)
!292 = !{!293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !305, !308, !310}
!293 = !DILocalVariable(name: "n", arg: 1, scope: !291, file: !1, line: 220, type: !25)
!294 = !DILocalVariable(name: "x", arg: 2, scope: !291, file: !1, line: 220, type: !7)
!295 = !DILocalVariable(name: "i", scope: !291, file: !1, line: 226, type: !30)
!296 = !DILocalVariable(name: "hx", scope: !291, file: !1, line: 226, type: !30)
!297 = !DILocalVariable(name: "ix", scope: !291, file: !1, line: 226, type: !30)
!298 = !DILocalVariable(name: "lx", scope: !291, file: !1, line: 226, type: !30)
!299 = !DILocalVariable(name: "sign", scope: !291, file: !1, line: 227, type: !30)
!300 = !DILocalVariable(name: "a", scope: !291, file: !1, line: 228, type: !7)
!301 = !DILocalVariable(name: "b", scope: !291, file: !1, line: 228, type: !7)
!302 = !DILocalVariable(name: "temp", scope: !291, file: !1, line: 228, type: !7)
!303 = !DILocalVariable(name: "ew_u", scope: !304, file: !1, line: 230, type: !43)
!304 = distinct !DILexicalBlock(scope: !291, file: !1, line: 230, column: 2)
!305 = !DILocalVariable(name: "high", scope: !306, file: !1, line: 266, type: !4)
!306 = distinct !DILexicalBlock(scope: !307, file: !1, line: 265, column: 9)
!307 = distinct !DILexicalBlock(scope: !291, file: !1, line: 244, column: 5)
!308 = !DILocalVariable(name: "gh_u", scope: !309, file: !1, line: 270, type: !43)
!309 = distinct !DILexicalBlock(scope: !306, file: !1, line: 270, column: 6)
!310 = !DILocalVariable(name: "gh_u", scope: !311, file: !1, line: 274, type: !43)
!311 = distinct !DILexicalBlock(scope: !312, file: !1, line: 274, column: 3)
!312 = distinct !DILexicalBlock(scope: !313, file: !1, line: 271, column: 40)
!313 = distinct !DILexicalBlock(scope: !314, file: !1, line: 271, column: 6)
!314 = distinct !DILexicalBlock(scope: !306, file: !1, line: 271, column: 6)
!315 = !DILocation(line: 220, column: 26, scope: !291)
!316 = !DILocation(line: 220, column: 36, scope: !291)
!317 = !DILocation(line: 230, column: 2, scope: !304)
!318 = !DILocation(line: 226, column: 14, scope: !291)
!319 = !DILocation(line: 226, column: 20, scope: !291)
!320 = !DILocation(line: 231, column: 17, scope: !291)
!321 = !DILocation(line: 226, column: 17, scope: !291)
!322 = !DILocation(line: 233, column: 26, scope: !323)
!323 = distinct !DILexicalBlock(scope: !291, file: !1, line: 233, column: 5)
!324 = !DILocation(line: 233, column: 25, scope: !323)
!325 = !DILocation(line: 233, column: 31, scope: !323)
!326 = !DILocation(line: 233, column: 8, scope: !323)
!327 = !DILocation(line: 233, column: 36, scope: !323)
!328 = !DILocation(line: 233, column: 5, scope: !291)
!329 = !DILocation(line: 233, column: 57, scope: !323)
!330 = !DILocation(line: 233, column: 49, scope: !323)
!331 = !DILocation(line: 234, column: 8, scope: !332)
!332 = distinct !DILexicalBlock(scope: !291, file: !1, line: 234, column: 5)
!333 = !DILocation(line: 234, column: 12, scope: !332)
!334 = !DILocation(line: 234, column: 5, scope: !291)
!335 = !DILocation(line: 235, column: 7, scope: !336)
!336 = distinct !DILexicalBlock(scope: !291, file: !1, line: 235, column: 5)
!337 = !DILocation(line: 235, column: 5, scope: !291)
!338 = !DILocation(line: 227, column: 12, scope: !291)
!339 = !DILocation(line: 237, column: 6, scope: !340)
!340 = distinct !DILexicalBlock(scope: !291, file: !1, line: 237, column: 5)
!341 = !DILocation(line: 237, column: 5, scope: !291)
!342 = !DILocation(line: 238, column: 7, scope: !343)
!343 = distinct !DILexicalBlock(scope: !340, file: !1, line: 237, column: 9)
!344 = !DILocation(line: 239, column: 20, scope: !343)
!345 = !DILocation(line: 239, column: 12, scope: !343)
!346 = !DILocation(line: 240, column: 2, scope: !343)
!347 = !DILocation(line: 0, scope: !291)
!348 = !DILocation(line: 241, column: 6, scope: !349)
!349 = distinct !DILexicalBlock(scope: !291, file: !1, line: 241, column: 5)
!350 = !DILocation(line: 241, column: 5, scope: !291)
!351 = !DILocation(line: 241, column: 18, scope: !349)
!352 = !DILocation(line: 241, column: 11, scope: !349)
!353 = !DILocation(line: 242, column: 6, scope: !354)
!354 = distinct !DILexicalBlock(scope: !291, file: !1, line: 242, column: 5)
!355 = !DILocation(line: 242, column: 5, scope: !291)
!356 = !DILocation(line: 242, column: 18, scope: !354)
!357 = !DILocation(line: 242, column: 23, scope: !354)
!358 = !DILocation(line: 242, column: 22, scope: !354)
!359 = !DILocation(line: 242, column: 11, scope: !354)
!360 = !DILocation(line: 243, column: 7, scope: !361)
!361 = distinct !DILexicalBlock(scope: !291, file: !1, line: 243, column: 5)
!362 = !DILocation(line: 243, column: 5, scope: !291)
!363 = !DILocation(line: 244, column: 7, scope: !307)
!364 = !DILocation(line: 244, column: 5, scope: !291)
!365 = !DILocation(line: 258, column: 3, scope: !366)
!366 = distinct !DILexicalBlock(scope: !307, file: !1, line: 244, column: 21)
!367 = !DILocation(line: 259, column: 23, scope: !368)
!368 = distinct !DILexicalBlock(scope: !366, file: !1, line: 258, column: 15)
!369 = !DILocation(line: 259, column: 30, scope: !368)
!370 = !DILocation(line: 259, column: 29, scope: !368)
!371 = !DILocation(line: 228, column: 15, scope: !291)
!372 = !DILocation(line: 259, column: 38, scope: !368)
!373 = !DILocation(line: 260, column: 23, scope: !368)
!374 = !DILocation(line: 260, column: 22, scope: !368)
!375 = !DILocation(line: 260, column: 30, scope: !368)
!376 = !DILocation(line: 260, column: 29, scope: !368)
!377 = !DILocation(line: 260, column: 38, scope: !368)
!378 = !DILocation(line: 261, column: 23, scope: !368)
!379 = !DILocation(line: 261, column: 30, scope: !368)
!380 = !DILocation(line: 261, column: 29, scope: !368)
!381 = !DILocation(line: 261, column: 38, scope: !368)
!382 = !DILocation(line: 262, column: 23, scope: !368)
!383 = !DILocation(line: 262, column: 30, scope: !368)
!384 = !DILocation(line: 262, column: 29, scope: !368)
!385 = !DILocation(line: 262, column: 38, scope: !368)
!386 = !DILocation(line: 0, scope: !368)
!387 = !DILocation(line: 264, column: 16, scope: !366)
!388 = !DILocation(line: 264, column: 22, scope: !366)
!389 = !DILocation(line: 264, column: 21, scope: !366)
!390 = !DILocation(line: 228, column: 12, scope: !291)
!391 = !DILocation(line: 265, column: 2, scope: !366)
!392 = !DILocation(line: 267, column: 10, scope: !306)
!393 = !DILocation(line: 228, column: 9, scope: !291)
!394 = !DILocation(line: 268, column: 10, scope: !306)
!395 = !DILocation(line: 226, column: 12, scope: !291)
!396 = !DILocation(line: 271, column: 10, scope: !314)
!397 = !DILocation(line: 0, scope: !311)
!398 = !DILocation(line: 271, column: 15, scope: !313)
!399 = !DILocation(line: 271, column: 23, scope: !313)
!400 = !DILocation(line: 271, column: 17, scope: !313)
!401 = !DILocation(line: 271, column: 6, scope: !314)
!402 = !DILocation(line: 273, column: 18, scope: !312)
!403 = !DILocation(line: 273, column: 8, scope: !312)
!404 = !DILocation(line: 273, column: 21, scope: !312)
!405 = !DILocation(line: 273, column: 24, scope: !312)
!406 = !DILocation(line: 273, column: 27, scope: !312)
!407 = !DILocation(line: 274, column: 3, scope: !311)
!408 = !DILocation(line: 271, column: 37, scope: !313)
!409 = !DILocation(line: 271, column: 6, scope: !313)
!410 = distinct !{!410, !401, !411}
!411 = !DILocation(line: 276, column: 6, scope: !314)
!412 = !DILocation(line: 0, scope: !306)
!413 = !DILocation(line: 278, column: 9, scope: !414)
!414 = distinct !DILexicalBlock(scope: !291, file: !1, line: 278, column: 5)
!415 = !DILocation(line: 278, column: 5, scope: !291)
!416 = !DILocation(line: 278, column: 35, scope: !414)
!417 = !DILocation(line: 0, scope: !414)
!418 = !DILocation(line: 0, scope: !323)
!419 = !DILocation(line: 279, column: 1, scope: !291)
