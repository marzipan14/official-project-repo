; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/k_rem_pio2.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/k_rem_pio2.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@init_jk = internal unnamed_addr constant [4 x i32] [i32 2, i32 3, i32 4, i32 6], align 16, !dbg !0
@PIo2 = internal unnamed_addr constant [8 x double] [double 0x3FF921FB40000000, double 0x3E74442D00000000, double 0x3CF8469880000000, double 0x3B78CC5160000000, double 0x39F01B8380000000, double 0x387A252040000000, double 0x36E3822280000000, double 0x3569F31D00000000], align 16, !dbg !20
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__kernel_rem_pio2(double* nocapture readonly, double* nocapture, i32, i32, i32, i32* nocapture readonly) local_unnamed_addr #0 !dbg !33 {
  %7 = alloca [20 x i32], align 16
  %8 = alloca [20 x double], align 16
  %9 = alloca [20 x double], align 16
  %10 = alloca [20 x double], align 16
  %11 = bitcast [20 x i32]* %7 to i8*, !dbg !75
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %11) #4, !dbg !75
  %12 = bitcast [20 x double]* %8 to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %12) #4, !dbg !77
  %13 = bitcast [20 x double]* %9 to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %13) #4, !dbg !77
  %14 = bitcast [20 x double]* %10 to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 160, i8* nonnull %14) #4, !dbg !77
  %15 = sext i32 %4 to i64, !dbg !81
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* @init_jk, i64 0, i64 %15, !dbg !81
  %17 = load i32, i32* %16, align 4, !dbg !81, !tbaa !82
  %18 = add nsw i32 %3, -1, !dbg !88
  %19 = add nsw i32 %2, -3, !dbg !90
  %20 = sdiv i32 %19, 24, !dbg !91
  %21 = icmp sgt i32 %20, 0, !dbg !93
  %22 = select i1 %21, i32 %20, i32 0, !dbg !93
  %23 = mul i32 %22, -24
  %24 = add i32 %2, -24, !dbg !94
  %25 = add i32 %24, %23, !dbg !95
  %26 = add nsw i32 %17, %18, !dbg !97
  %27 = icmp slt i32 %26, 0, !dbg !100
  br i1 %27, label %51, label %28, !dbg !103

; <label>:28:                                     ; preds = %6
  %29 = add nuw nsw i32 %22, 1, !dbg !104
  %30 = sub i32 %29, %3, !dbg !104
  %31 = sext i32 %30 to i64, !dbg !104
  %32 = add i32 %17, %3, !dbg !104
  %33 = zext i32 %32 to i64
  %34 = and i64 %33, 1, !dbg !104
  %35 = icmp eq i32 %32, 1, !dbg !104
  br i1 %35, label %38, label %36, !dbg !104

; <label>:36:                                     ; preds = %28
  %37 = sub nsw i64 %33, %34, !dbg !104
  br label %59, !dbg !104

; <label>:38:                                     ; preds = %685, %28
  %39 = phi i64 [ 0, %28 ], [ %688, %685 ]
  %40 = phi i64 [ %31, %28 ], [ %689, %685 ]
  %41 = icmp eq i64 %34, 0, !dbg !105
  br i1 %41, label %51, label %42, !dbg !105

; <label>:42:                                     ; preds = %38
  %43 = icmp slt i64 %40, 0, !dbg !104
  br i1 %43, label %48, label %44, !dbg !105

; <label>:44:                                     ; preds = %42
  %45 = getelementptr inbounds i32, i32* %5, i64 %40, !dbg !107
  %46 = load i32, i32* %45, align 4, !dbg !107, !tbaa !82
  %47 = sitofp i32 %46 to double, !dbg !108
  br label %48, !dbg !105

; <label>:48:                                     ; preds = %44, %42
  %49 = phi double [ %47, %44 ], [ 0.000000e+00, %42 ], !dbg !105
  %50 = getelementptr inbounds [20 x double], [20 x double]* %8, i64 0, i64 %39, !dbg !109
  store double %49, double* %50, align 8, !dbg !110, !tbaa !111
  br label %51

; <label>:51:                                     ; preds = %48, %38, %6
  %52 = icmp sgt i32 %3, 0
  %53 = sext i32 %17 to i64, !dbg !113
  %54 = zext i32 %3 to i64
  %55 = and i64 %54, 1
  %56 = icmp eq i32 %3, 1
  %57 = sub nsw i64 %54, %55
  %58 = icmp eq i64 %55, 0
  br label %73, !dbg !113

; <label>:59:                                     ; preds = %685, %36
  %60 = phi i64 [ 0, %36 ], [ %688, %685 ]
  %61 = phi i64 [ %31, %36 ], [ %689, %685 ]
  %62 = phi i64 [ %37, %36 ], [ %690, %685 ]
  %63 = icmp slt i64 %61, 0, !dbg !104
  br i1 %63, label %68, label %64, !dbg !105

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i32, i32* %5, i64 %61, !dbg !107
  %66 = load i32, i32* %65, align 4, !dbg !107, !tbaa !82
  %67 = sitofp i32 %66 to double, !dbg !108
  br label %68, !dbg !105

; <label>:68:                                     ; preds = %59, %64
  %69 = phi double [ %67, %64 ], [ 0.000000e+00, %59 ], !dbg !105
  %70 = getelementptr inbounds [20 x double], [20 x double]* %8, i64 0, i64 %60, !dbg !109
  store double %69, double* %70, align 16, !dbg !110, !tbaa !111
  %71 = or i64 %60, 1, !dbg !115
  %72 = icmp slt i64 %61, -1, !dbg !104
  br i1 %72, label %685, label %680, !dbg !105

; <label>:73:                                     ; preds = %130, %51
  %74 = phi i64 [ %133, %130 ], [ 0, %51 ]
  br i1 %52, label %75, label %130, !dbg !117

; <label>:75:                                     ; preds = %73
  %76 = trunc i64 %74 to i32
  %77 = add nsw i32 %18, %76
  br i1 %56, label %116, label %90, !dbg !117

; <label>:78:                                     ; preds = %130
  %79 = icmp sgt i32 %25, 0
  %80 = sub nsw i32 24, %25
  %81 = sub nsw i32 23, %25
  %82 = icmp eq i32 %25, 0
  %83 = icmp sgt i32 %3, 0
  %84 = zext i32 %22 to i64, !dbg !121
  %85 = zext i32 %3 to i64
  %86 = and i64 %85, 1
  %87 = icmp eq i32 %3, 1
  %88 = sub nsw i64 %85, %86
  %89 = icmp eq i64 %86, 0
  br label %135, !dbg !121

; <label>:90:                                     ; preds = %75, %90
  %91 = phi i64 [ %113, %90 ], [ 0, %75 ]
  %92 = phi double [ %112, %90 ], [ 0.000000e+00, %75 ]
  %93 = phi i64 [ %114, %90 ], [ %57, %75 ]
  %94 = getelementptr inbounds double, double* %0, i64 %91, !dbg !123
  %95 = load double, double* %94, align 8, !dbg !123, !tbaa !111
  %96 = trunc i64 %91 to i32, !dbg !125
  %97 = sub i32 %77, %96, !dbg !125
  %98 = sext i32 %97 to i64, !dbg !126
  %99 = getelementptr inbounds [20 x double], [20 x double]* %8, i64 0, i64 %98, !dbg !126
  %100 = load double, double* %99, align 8, !dbg !126, !tbaa !111
  %101 = fmul double %95, %100, !dbg !127
  %102 = fadd double %92, %101, !dbg !128
  %103 = or i64 %91, 1, !dbg !129
  %104 = getelementptr inbounds double, double* %0, i64 %103, !dbg !123
  %105 = load double, double* %104, align 8, !dbg !123, !tbaa !111
  %106 = trunc i64 %103 to i32, !dbg !125
  %107 = sub i32 %77, %106, !dbg !125
  %108 = sext i32 %107 to i64, !dbg !126
  %109 = getelementptr inbounds [20 x double], [20 x double]* %8, i64 0, i64 %108, !dbg !126
  %110 = load double, double* %109, align 8, !dbg !126, !tbaa !111
  %111 = fmul double %105, %110, !dbg !127
  %112 = fadd double %102, %111, !dbg !128
  %113 = add nuw nsw i64 %91, 2, !dbg !129
  %114 = add i64 %93, -2, !dbg !117
  %115 = icmp eq i64 %114, 0, !dbg !117
  br i1 %115, label %116, label %90, !dbg !117, !llvm.loop !130

; <label>:116:                                    ; preds = %90, %75
  %117 = phi double [ undef, %75 ], [ %112, %90 ]
  %118 = phi i64 [ 0, %75 ], [ %113, %90 ]
  %119 = phi double [ 0.000000e+00, %75 ], [ %112, %90 ]
  br i1 %58, label %130, label %120, !dbg !117

; <label>:120:                                    ; preds = %116
  %121 = getelementptr inbounds double, double* %0, i64 %118, !dbg !123
  %122 = load double, double* %121, align 8, !dbg !123, !tbaa !111
  %123 = trunc i64 %118 to i32, !dbg !125
  %124 = sub i32 %77, %123, !dbg !125
  %125 = sext i32 %124 to i64, !dbg !126
  %126 = getelementptr inbounds [20 x double], [20 x double]* %8, i64 0, i64 %125, !dbg !126
  %127 = load double, double* %126, align 8, !dbg !126, !tbaa !111
  %128 = fmul double %122, %127, !dbg !127
  %129 = fadd double %119, %128, !dbg !128
  br label %130, !dbg !132

; <label>:130:                                    ; preds = %120, %116, %73
  %131 = phi double [ 0.000000e+00, %73 ], [ %117, %116 ], [ %129, %120 ], !dbg !133
  %132 = getelementptr inbounds [20 x double], [20 x double]* %10, i64 0, i64 %74, !dbg !132
  store double %131, double* %132, align 8, !dbg !134, !tbaa !111
  %133 = add nuw nsw i64 %74, 1, !dbg !135
  %134 = icmp slt i64 %74, %53, !dbg !136
  br i1 %134, label %73, label %78, !dbg !113, !llvm.loop !137

; <label>:135:                                    ; preds = %421, %78
  %136 = phi i32 [ %17, %78 ], [ %367, %421 ], !dbg !139
  %137 = sext i32 %136 to i64, !dbg !121
  %138 = getelementptr inbounds [20 x double], [20 x double]* %10, i64 0, i64 %137, !dbg !121
  %139 = load double, double* %138, align 8, !dbg !121, !tbaa !111
  %140 = icmp sgt i32 %136, 0, !dbg !146
  br i1 %140, label %141, label %158, !dbg !148

; <label>:141:                                    ; preds = %135, %141
  %142 = phi i64 [ %156, %141 ], [ 0, %135 ]
  %143 = phi i64 [ %152, %141 ], [ %137, %135 ]
  %144 = phi double [ %155, %141 ], [ %139, %135 ]
  %145 = fmul double %144, 0x3E70000000000000, !dbg !149
  %146 = fptosi double %145 to i32, !dbg !151
  %147 = sitofp i32 %146 to double, !dbg !152
  %148 = fmul double %147, 0x4170000000000000, !dbg !153
  %149 = fsub double %144, %148, !dbg !154
  %150 = fptosi double %149 to i32, !dbg !155
  %151 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %142, !dbg !156
  store i32 %150, i32* %151, align 4, !dbg !157, !tbaa !82
  %152 = add nsw i64 %143, -1, !dbg !158
  %153 = getelementptr inbounds [20 x double], [20 x double]* %10, i64 0, i64 %152, !dbg !159
  %154 = load double, double* %153, align 8, !dbg !159, !tbaa !111
  %155 = fadd double %154, %147, !dbg !160
  %156 = add nuw nsw i64 %142, 1, !dbg !161
  %157 = icmp sgt i64 %143, 1, !dbg !146
  br i1 %157, label %141, label %158, !dbg !148, !llvm.loop !162

; <label>:158:                                    ; preds = %141, %135
  %159 = phi double [ %139, %135 ], [ %155, %141 ], !dbg !164
  %160 = tail call double @scalbn(double %159, i32 %25) #5, !dbg !165
  %161 = fmul double %160, 1.250000e-01, !dbg !166
  %162 = tail call double @floor(double %161) #5, !dbg !167
  %163 = fmul double %162, 8.000000e+00, !dbg !168
  %164 = fsub double %160, %163, !dbg !169
  %165 = fptosi double %164 to i32, !dbg !170
  %166 = sitofp i32 %165 to double, !dbg !172
  %167 = fsub double %164, %166, !dbg !173
  br i1 %79, label %168, label %178, !dbg !175

; <label>:168:                                    ; preds = %158
  %169 = add nsw i32 %136, -1, !dbg !176
  %170 = sext i32 %169 to i64, !dbg !179
  %171 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %170, !dbg !179
  %172 = load i32, i32* %171, align 4, !dbg !179, !tbaa !82
  %173 = ashr i32 %172, %80, !dbg !180
  %174 = add nsw i32 %173, %165, !dbg !181
  %175 = shl i32 %173, %80, !dbg !182
  %176 = sub nsw i32 %172, %175, !dbg !183
  store i32 %176, i32* %171, align 4, !dbg !183, !tbaa !82
  %177 = ashr i32 %176, %81, !dbg !184
  br label %187, !dbg !185

; <label>:178:                                    ; preds = %158
  br i1 %82, label %179, label %185, !dbg !186

; <label>:179:                                    ; preds = %178
  %180 = add nsw i32 %136, -1, !dbg !187
  %181 = sext i32 %180 to i64, !dbg !189
  %182 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %181, !dbg !189
  %183 = load i32, i32* %182, align 4, !dbg !189, !tbaa !82
  %184 = ashr i32 %183, 23, !dbg !190
  br label %187, !dbg !191

; <label>:185:                                    ; preds = %178
  %186 = fcmp ult double %167, 5.000000e-01, !dbg !192
  br i1 %186, label %258, label %191, !dbg !194

; <label>:187:                                    ; preds = %179, %168
  %188 = phi i32 [ %174, %168 ], [ %165, %179 ], !dbg !195
  %189 = phi i32 [ %177, %168 ], [ %184, %179 ], !dbg !195
  %190 = icmp sgt i32 %189, 0, !dbg !196
  br i1 %190, label %191, label %258, !dbg !198

; <label>:191:                                    ; preds = %185, %187
  %192 = phi i32 [ %189, %187 ], [ 2, %185 ]
  %193 = phi i32 [ %188, %187 ], [ %165, %185 ]
  %194 = add nsw i32 %193, 1, !dbg !199
  br i1 %140, label %195, label %235, !dbg !202

; <label>:195:                                    ; preds = %191
  %196 = zext i32 %136 to i64
  %197 = and i64 %196, 1, !dbg !204
  %198 = icmp eq i32 %136, 1, !dbg !204
  br i1 %198, label %220, label %199, !dbg !204

; <label>:199:                                    ; preds = %195
  %200 = sub nsw i64 %196, %197, !dbg !204
  br label %201, !dbg !204

; <label>:201:                                    ; preds = %675, %199
  %202 = phi i64 [ 0, %199 ], [ %677, %675 ]
  %203 = phi i32 [ 0, %199 ], [ %676, %675 ]
  %204 = phi i64 [ %200, %199 ], [ %678, %675 ]
  %205 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %202, !dbg !204
  %206 = load i32, i32* %205, align 8, !dbg !204, !tbaa !82
  %207 = icmp eq i32 %203, 0, !dbg !207
  br i1 %207, label %208, label %210, !dbg !209

; <label>:208:                                    ; preds = %201
  %209 = icmp eq i32 %206, 0, !dbg !210
  br i1 %209, label %214, label %210, !dbg !213

; <label>:210:                                    ; preds = %201, %208
  %211 = phi i32 [ 16777216, %208 ], [ 16777215, %201 ]
  %212 = phi i32 [ 1, %208 ], [ %203, %201 ]
  %213 = sub nsw i32 %211, %206, !dbg !214
  store i32 %213, i32* %205, align 8, !dbg !214, !tbaa !82
  br label %214, !dbg !216

; <label>:214:                                    ; preds = %210, %208
  %215 = phi i32 [ 0, %208 ], [ %212, %210 ], !dbg !217
  %216 = or i64 %202, 1, !dbg !216
  %217 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %216, !dbg !204
  %218 = load i32, i32* %217, align 4, !dbg !204, !tbaa !82
  %219 = icmp eq i32 %215, 0, !dbg !207
  br i1 %219, label %669, label %671, !dbg !209

; <label>:220:                                    ; preds = %675, %195
  %221 = phi i32 [ undef, %195 ], [ %676, %675 ]
  %222 = phi i64 [ 0, %195 ], [ %677, %675 ]
  %223 = phi i32 [ 0, %195 ], [ %676, %675 ]
  %224 = icmp eq i64 %197, 0, !dbg !209
  br i1 %224, label %235, label %225, !dbg !209

; <label>:225:                                    ; preds = %220
  %226 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %222, !dbg !204
  %227 = load i32, i32* %226, align 4, !dbg !204, !tbaa !82
  %228 = icmp eq i32 %223, 0, !dbg !207
  br i1 %228, label %229, label %231, !dbg !209

; <label>:229:                                    ; preds = %225
  %230 = icmp eq i32 %227, 0, !dbg !210
  br i1 %230, label %235, label %231, !dbg !213

; <label>:231:                                    ; preds = %229, %225
  %232 = phi i32 [ 16777216, %229 ], [ 16777215, %225 ]
  %233 = phi i32 [ 1, %229 ], [ %223, %225 ]
  %234 = sub nsw i32 %232, %227, !dbg !214
  store i32 %234, i32* %226, align 4, !dbg !214, !tbaa !82
  br label %235, !dbg !216

; <label>:235:                                    ; preds = %220, %229, %231, %191
  %236 = phi i32 [ 0, %191 ], [ %221, %220 ], [ 0, %229 ], [ %233, %231 ], !dbg !214
  br i1 %79, label %237, label %250, !dbg !218

; <label>:237:                                    ; preds = %235
  switch i32 %25, label %250 [
    i32 1, label %238
    i32 2, label %244
  ], !dbg !219

; <label>:238:                                    ; preds = %237
  %239 = add nsw i32 %136, -1, !dbg !222
  %240 = sext i32 %239 to i64, !dbg !224
  %241 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %240, !dbg !224
  %242 = load i32, i32* %241, align 4, !dbg !225, !tbaa !82
  %243 = and i32 %242, 8388607, !dbg !225
  store i32 %243, i32* %241, align 4, !dbg !225, !tbaa !82
  br label %250, !dbg !226

; <label>:244:                                    ; preds = %237
  %245 = add nsw i32 %136, -1, !dbg !227
  %246 = sext i32 %245 to i64, !dbg !228
  %247 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %246, !dbg !228
  %248 = load i32, i32* %247, align 4, !dbg !229, !tbaa !82
  %249 = and i32 %248, 4194303, !dbg !229
  store i32 %249, i32* %247, align 4, !dbg !229, !tbaa !82
  br label %250, !dbg !230

; <label>:250:                                    ; preds = %238, %244, %237, %235
  %251 = icmp eq i32 %192, 2, !dbg !231
  br i1 %251, label %252, label %258, !dbg !233

; <label>:252:                                    ; preds = %250
  %253 = fsub double 1.000000e+00, %167, !dbg !234
  %254 = icmp eq i32 %236, 0, !dbg !236
  br i1 %254, label %258, label %255, !dbg !238

; <label>:255:                                    ; preds = %252
  %256 = tail call double @scalbn(double 1.000000e+00, i32 %25) #5, !dbg !239
  %257 = fsub double %253, %256, !dbg !240
  br label %258, !dbg !241

; <label>:258:                                    ; preds = %185, %252, %250, %255, %187
  %259 = phi i32 [ 2, %255 ], [ 2, %252 ], [ %192, %250 ], [ %189, %187 ], [ 0, %185 ]
  %260 = phi i32 [ %194, %255 ], [ %194, %252 ], [ %194, %250 ], [ %188, %187 ], [ %165, %185 ], !dbg !242
  %261 = phi double [ %257, %255 ], [ %253, %252 ], [ %167, %250 ], [ %167, %187 ], [ %167, %185 ], !dbg !195
  %262 = fcmp oeq double %261, 0.000000e+00, !dbg !243
  br i1 %262, label %263, label %433, !dbg !244

; <label>:263:                                    ; preds = %258
  %264 = icmp sgt i32 %136, %17, !dbg !245
  br i1 %264, label %265, label %357, !dbg !248

; <label>:265:                                    ; preds = %263
  %266 = sub nsw i64 %137, %53, !dbg !249
  %267 = icmp ult i64 %266, 8, !dbg !249
  br i1 %267, label %343, label %268, !dbg !249

; <label>:268:                                    ; preds = %265
  %269 = and i64 %266, -8, !dbg !249
  %270 = sub nsw i64 %137, %269, !dbg !249
  %271 = add nsw i64 %269, -8, !dbg !249
  %272 = lshr exact i64 %271, 3, !dbg !249
  %273 = add nuw nsw i64 %272, 1, !dbg !249
  %274 = and i64 %273, 1, !dbg !249
  %275 = icmp eq i64 %271, 0, !dbg !249
  br i1 %275, label %312, label %276, !dbg !249

; <label>:276:                                    ; preds = %268
  %277 = sub nsw i64 %273, %274, !dbg !249
  br label %278, !dbg !249

; <label>:278:                                    ; preds = %278, %276
  %279 = phi i64 [ 0, %276 ], [ %309, %278 ]
  %280 = phi <4 x i32> [ zeroinitializer, %276 ], [ %307, %278 ]
  %281 = phi <4 x i32> [ zeroinitializer, %276 ], [ %308, %278 ]
  %282 = phi i64 [ %277, %276 ], [ %310, %278 ]
  %283 = xor i64 %279, -1, !dbg !249
  %284 = add i64 %283, %137, !dbg !249
  %285 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %284, !dbg !250
  %286 = getelementptr inbounds i32, i32* %285, i64 -3, !dbg !250
  %287 = bitcast i32* %286 to <4 x i32>*, !dbg !250
  %288 = load <4 x i32>, <4 x i32>* %287, align 4, !dbg !250, !tbaa !82
  %289 = shufflevector <4 x i32> %288, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !250
  %290 = getelementptr inbounds i32, i32* %285, i64 -7, !dbg !250
  %291 = bitcast i32* %290 to <4 x i32>*, !dbg !250
  %292 = load <4 x i32>, <4 x i32>* %291, align 4, !dbg !250, !tbaa !82
  %293 = shufflevector <4 x i32> %292, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !250
  %294 = or <4 x i32> %289, %280, !dbg !251
  %295 = or <4 x i32> %293, %281, !dbg !251
  %296 = sub i64 -9, %279, !dbg !249
  %297 = add i64 %296, %137, !dbg !249
  %298 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %297, !dbg !250
  %299 = getelementptr inbounds i32, i32* %298, i64 -3, !dbg !250
  %300 = bitcast i32* %299 to <4 x i32>*, !dbg !250
  %301 = load <4 x i32>, <4 x i32>* %300, align 4, !dbg !250, !tbaa !82
  %302 = shufflevector <4 x i32> %301, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !250
  %303 = getelementptr inbounds i32, i32* %298, i64 -7, !dbg !250
  %304 = bitcast i32* %303 to <4 x i32>*, !dbg !250
  %305 = load <4 x i32>, <4 x i32>* %304, align 4, !dbg !250, !tbaa !82
  %306 = shufflevector <4 x i32> %305, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !250
  %307 = or <4 x i32> %302, %294, !dbg !251
  %308 = or <4 x i32> %306, %295, !dbg !251
  %309 = add i64 %279, 16
  %310 = add i64 %282, -2
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %312, label %278, !llvm.loop !252

; <label>:312:                                    ; preds = %278, %268
  %313 = phi <4 x i32> [ undef, %268 ], [ %307, %278 ]
  %314 = phi <4 x i32> [ undef, %268 ], [ %308, %278 ]
  %315 = phi i64 [ 0, %268 ], [ %309, %278 ]
  %316 = phi <4 x i32> [ zeroinitializer, %268 ], [ %307, %278 ]
  %317 = phi <4 x i32> [ zeroinitializer, %268 ], [ %308, %278 ]
  %318 = icmp eq i64 %274, 0
  br i1 %318, label %333, label %319

; <label>:319:                                    ; preds = %312
  %320 = xor i64 %315, -1, !dbg !249
  %321 = add i64 %320, %137, !dbg !249
  %322 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %321, !dbg !250
  %323 = getelementptr inbounds i32, i32* %322, i64 -7, !dbg !250
  %324 = bitcast i32* %323 to <4 x i32>*, !dbg !250
  %325 = load <4 x i32>, <4 x i32>* %324, align 4, !dbg !250, !tbaa !82
  %326 = shufflevector <4 x i32> %325, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !250
  %327 = or <4 x i32> %326, %317, !dbg !251
  %328 = getelementptr inbounds i32, i32* %322, i64 -3, !dbg !250
  %329 = bitcast i32* %328 to <4 x i32>*, !dbg !250
  %330 = load <4 x i32>, <4 x i32>* %329, align 4, !dbg !250, !tbaa !82
  %331 = shufflevector <4 x i32> %330, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !250
  %332 = or <4 x i32> %331, %316, !dbg !251
  br label %333, !dbg !251

; <label>:333:                                    ; preds = %312, %319
  %334 = phi <4 x i32> [ %313, %312 ], [ %332, %319 ], !dbg !251
  %335 = phi <4 x i32> [ %314, %312 ], [ %327, %319 ], !dbg !251
  %336 = or <4 x i32> %335, %334, !dbg !251
  %337 = shufflevector <4 x i32> %336, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !251
  %338 = or <4 x i32> %336, %337, !dbg !251
  %339 = shufflevector <4 x i32> %338, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !251
  %340 = or <4 x i32> %338, %339, !dbg !251
  %341 = extractelement <4 x i32> %340, i32 0, !dbg !251
  %342 = icmp eq i64 %266, %269
  br i1 %342, label %354, label %343, !dbg !249

; <label>:343:                                    ; preds = %333, %265
  %344 = phi i64 [ %137, %265 ], [ %270, %333 ]
  %345 = phi i32 [ 0, %265 ], [ %341, %333 ]
  br label %346, !dbg !249

; <label>:346:                                    ; preds = %343, %346
  %347 = phi i64 [ %349, %346 ], [ %344, %343 ]
  %348 = phi i32 [ %352, %346 ], [ %345, %343 ]
  %349 = add nsw i64 %347, -1, !dbg !249
  %350 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %349, !dbg !250
  %351 = load i32, i32* %350, align 4, !dbg !250, !tbaa !82
  %352 = or i32 %351, %348, !dbg !251
  %353 = icmp sgt i64 %349, %53, !dbg !245
  br i1 %353, label %346, label %354, !dbg !248, !llvm.loop !255

; <label>:354:                                    ; preds = %346, %333
  %355 = phi i32 [ %341, %333 ], [ %352, %346 ], !dbg !251
  %356 = icmp eq i32 %355, 0, !dbg !257
  br i1 %356, label %357, label %425, !dbg !258

; <label>:357:                                    ; preds = %263, %354
  br label %358, !dbg !259

; <label>:358:                                    ; preds = %357, %358
  %359 = phi i64 [ %364, %358 ], [ 1, %357 ], !dbg !262
  %360 = sub nsw i64 %53, %359, !dbg !259
  %361 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %360, !dbg !264
  %362 = load i32, i32* %361, align 4, !dbg !264, !tbaa !82
  %363 = icmp eq i32 %362, 0, !dbg !265
  %364 = add nuw i64 %359, 1, !dbg !266
  br i1 %363, label %358, label %365, !dbg !267, !llvm.loop !268

; <label>:365:                                    ; preds = %358
  %366 = trunc i64 %359 to i32, !dbg !263
  %367 = add nsw i32 %136, %366, !dbg !270
  %368 = sext i32 %367 to i64, !dbg !273
  br label %369, !dbg !273

; <label>:369:                                    ; preds = %365, %421
  %370 = phi i64 [ %137, %365 ], [ %371, %421 ]
  %371 = add nsw i64 %370, 1, !dbg !274
  %372 = add nsw i64 %371, %84, !dbg !275
  %373 = getelementptr inbounds i32, i32* %5, i64 %372, !dbg !277
  %374 = load i32, i32* %373, align 4, !dbg !277, !tbaa !82
  %375 = sitofp i32 %374 to double, !dbg !278
  %376 = trunc i64 %370 to i32, !dbg !279
  %377 = add i32 %376, %3, !dbg !279
  %378 = sext i32 %377 to i64, !dbg !280
  %379 = getelementptr inbounds [20 x double], [20 x double]* %8, i64 0, i64 %378, !dbg !280
  store double %375, double* %379, align 8, !dbg !281, !tbaa !111
  br i1 %83, label %380, label %421, !dbg !282

; <label>:380:                                    ; preds = %369
  br i1 %87, label %407, label %381, !dbg !284

; <label>:381:                                    ; preds = %380, %381
  %382 = phi i64 [ %404, %381 ], [ 0, %380 ]
  %383 = phi double [ %403, %381 ], [ 0.000000e+00, %380 ]
  %384 = phi i64 [ %405, %381 ], [ %88, %380 ]
  %385 = getelementptr inbounds double, double* %0, i64 %382, !dbg !284
  %386 = load double, double* %385, align 8, !dbg !284, !tbaa !111
  %387 = trunc i64 %382 to i32, !dbg !286
  %388 = sub nsw i32 %377, %387, !dbg !286
  %389 = sext i32 %388 to i64, !dbg !287
  %390 = getelementptr inbounds [20 x double], [20 x double]* %8, i64 0, i64 %389, !dbg !287
  %391 = load double, double* %390, align 8, !dbg !287, !tbaa !111
  %392 = fmul double %386, %391, !dbg !288
  %393 = fadd double %383, %392, !dbg !289
  %394 = or i64 %382, 1, !dbg !290
  %395 = getelementptr inbounds double, double* %0, i64 %394, !dbg !284
  %396 = load double, double* %395, align 8, !dbg !284, !tbaa !111
  %397 = trunc i64 %394 to i32, !dbg !286
  %398 = sub nsw i32 %377, %397, !dbg !286
  %399 = sext i32 %398 to i64, !dbg !287
  %400 = getelementptr inbounds [20 x double], [20 x double]* %8, i64 0, i64 %399, !dbg !287
  %401 = load double, double* %400, align 8, !dbg !287, !tbaa !111
  %402 = fmul double %396, %401, !dbg !288
  %403 = fadd double %393, %402, !dbg !289
  %404 = add nuw nsw i64 %382, 2, !dbg !290
  %405 = add i64 %384, -2, !dbg !282
  %406 = icmp eq i64 %405, 0, !dbg !282
  br i1 %406, label %407, label %381, !dbg !282, !llvm.loop !291

; <label>:407:                                    ; preds = %381, %380
  %408 = phi double [ undef, %380 ], [ %403, %381 ]
  %409 = phi i64 [ 0, %380 ], [ %404, %381 ]
  %410 = phi double [ 0.000000e+00, %380 ], [ %403, %381 ]
  br i1 %89, label %421, label %411, !dbg !282

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds double, double* %0, i64 %409, !dbg !284
  %413 = load double, double* %412, align 8, !dbg !284, !tbaa !111
  %414 = trunc i64 %409 to i32, !dbg !286
  %415 = sub nsw i32 %377, %414, !dbg !286
  %416 = sext i32 %415 to i64, !dbg !287
  %417 = getelementptr inbounds [20 x double], [20 x double]* %8, i64 0, i64 %416, !dbg !287
  %418 = load double, double* %417, align 8, !dbg !287, !tbaa !111
  %419 = fmul double %413, %418, !dbg !288
  %420 = fadd double %410, %419, !dbg !289
  br label %421, !dbg !293

; <label>:421:                                    ; preds = %411, %407, %369
  %422 = phi double [ 0.000000e+00, %369 ], [ %408, %407 ], [ %420, %411 ], !dbg !294
  %423 = getelementptr inbounds [20 x double], [20 x double]* %10, i64 0, i64 %371, !dbg !293
  store double %422, double* %423, align 8, !dbg !295, !tbaa !111
  %424 = icmp slt i64 %371, %368, !dbg !296
  br i1 %424, label %369, label %135, !dbg !273, !llvm.loop !297

; <label>:425:                                    ; preds = %354, %425
  %426 = phi i64 [ %429, %425 ], [ %137, %354 ]
  %427 = phi i32 [ %428, %425 ], [ %25, %354 ]
  %428 = add nsw i32 %427, -24, !dbg !299
  %429 = add nsw i64 %426, -1, !dbg !299
  %430 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %429, !dbg !303
  %431 = load i32, i32* %430, align 4, !dbg !303, !tbaa !82
  %432 = icmp eq i32 %431, 0, !dbg !304
  br i1 %432, label %425, label %452, !dbg !305, !llvm.loop !306

; <label>:433:                                    ; preds = %258
  %434 = sub nsw i32 0, %25, !dbg !308
  %435 = tail call double @scalbn(double %261, i32 %434) #5, !dbg !310
  %436 = fcmp ult double %435, 0x4170000000000000, !dbg !311
  br i1 %436, label %449, label %437, !dbg !313

; <label>:437:                                    ; preds = %433
  %438 = fmul double %435, 0x3E70000000000000, !dbg !314
  %439 = fptosi double %438 to i32, !dbg !316
  %440 = sitofp i32 %439 to double, !dbg !317
  %441 = fmul double %440, 0x4170000000000000, !dbg !318
  %442 = fsub double %435, %441, !dbg !319
  %443 = fptosi double %442 to i32, !dbg !320
  %444 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %137, !dbg !321
  store i32 %443, i32* %444, align 4, !dbg !322, !tbaa !82
  %445 = add nsw i32 %136, 1, !dbg !323
  %446 = add i32 %23, %2, !dbg !324
  %447 = sext i32 %445 to i64, !dbg !325
  %448 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %447, !dbg !325
  store i32 %439, i32* %448, align 4, !dbg !326, !tbaa !82
  br label %454, !dbg !327

; <label>:449:                                    ; preds = %433
  %450 = fptosi double %435 to i32, !dbg !328
  %451 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %137, !dbg !329
  store i32 %450, i32* %451, align 4, !dbg !330, !tbaa !82
  br label %454

; <label>:452:                                    ; preds = %425
  %453 = trunc i64 %429 to i32, !dbg !331
  br label %454, !dbg !331

; <label>:454:                                    ; preds = %452, %437, %449
  %455 = phi i32 [ %445, %437 ], [ %136, %449 ], [ %453, %452 ], !dbg !195
  %456 = phi i32 [ %446, %437 ], [ %25, %449 ], [ %428, %452 ], !dbg !195
  %457 = tail call double @scalbn(double 1.000000e+00, i32 %456) #5, !dbg !331
  %458 = icmp sgt i32 %455, -1, !dbg !332
  br i1 %458, label %459, label %496, !dbg !335

; <label>:459:                                    ; preds = %454
  %460 = sext i32 %455 to i64, !dbg !336
  br label %464, !dbg !336

; <label>:461:                                    ; preds = %464
  br i1 %458, label %462, label %496, !dbg !338

; <label>:462:                                    ; preds = %461
  %463 = sext i32 %455 to i64, !dbg !338
  br label %475, !dbg !338

; <label>:464:                                    ; preds = %459, %464
  %465 = phi i64 [ %460, %459 ], [ %473, %464 ]
  %466 = phi double [ %457, %459 ], [ %472, %464 ]
  %467 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %465, !dbg !336
  %468 = load i32, i32* %467, align 4, !dbg !336, !tbaa !82
  %469 = sitofp i32 %468 to double, !dbg !340
  %470 = fmul double %466, %469, !dbg !341
  %471 = getelementptr inbounds [20 x double], [20 x double]* %10, i64 0, i64 %465, !dbg !342
  store double %470, double* %471, align 8, !dbg !343, !tbaa !111
  %472 = fmul double %466, 0x3E70000000000000, !dbg !344
  %473 = add nsw i64 %465, -1, !dbg !345
  %474 = icmp sgt i64 %465, 0, !dbg !332
  br i1 %474, label %464, label %461, !dbg !335, !llvm.loop !346

; <label>:475:                                    ; preds = %492, %462
  %476 = phi i64 [ %463, %462 ], [ %494, %492 ]
  %477 = sub nuw nsw i64 %463, %476, !dbg !348
  br label %478, !dbg !353

; <label>:478:                                    ; preds = %475, %478
  %479 = phi i64 [ 0, %475 ], [ %488, %478 ]
  %480 = phi double [ 0.000000e+00, %475 ], [ %487, %478 ]
  %481 = getelementptr inbounds [8 x double], [8 x double]* @PIo2, i64 0, i64 %479, !dbg !353
  %482 = load double, double* %481, align 8, !dbg !353, !tbaa !111
  %483 = add nsw i64 %479, %476, !dbg !354
  %484 = getelementptr inbounds [20 x double], [20 x double]* %10, i64 0, i64 %483, !dbg !355
  %485 = load double, double* %484, align 8, !dbg !355, !tbaa !111
  %486 = fmul double %482, %485, !dbg !356
  %487 = fadd double %480, %486, !dbg !357
  %488 = add nuw nsw i64 %479, 1, !dbg !358
  %489 = icmp sge i64 %479, %53, !dbg !359
  %490 = icmp uge i64 %479, %477, !dbg !360
  %491 = or i1 %489, %490, !dbg !361
  br i1 %491, label %492, label %478, !dbg !361, !llvm.loop !362

; <label>:492:                                    ; preds = %478
  %493 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %477, !dbg !365
  store double %487, double* %493, align 8, !dbg !366, !tbaa !111
  %494 = add nsw i64 %476, -1, !dbg !367
  %495 = icmp sgt i64 %476, 0, !dbg !368
  br i1 %495, label %475, label %496, !dbg !338, !llvm.loop !369

; <label>:496:                                    ; preds = %492, %454, %461
  switch i32 %4, label %667 [
    i32 0, label %503
    i32 1, label %519
    i32 2, label %519
    i32 3, label %497
  ], !dbg !371

; <label>:497:                                    ; preds = %496
  %498 = icmp sgt i32 %455, 0, !dbg !372
  br i1 %498, label %499, label %646, !dbg !376

; <label>:499:                                    ; preds = %497
  %500 = sext i32 %455 to i64, !dbg !377
  %501 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %500
  %502 = load double, double* %501, align 8, !dbg !379, !tbaa !111
  br label %613, !dbg !377

; <label>:503:                                    ; preds = %496
  br i1 %458, label %504, label %514, !dbg !380

; <label>:504:                                    ; preds = %503
  %505 = sext i32 %455 to i64, !dbg !382
  br label %506, !dbg !382

; <label>:506:                                    ; preds = %504, %506
  %507 = phi i64 [ %505, %504 ], [ %512, %506 ]
  %508 = phi double [ 0.000000e+00, %504 ], [ %511, %506 ]
  %509 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %507, !dbg !382
  %510 = load double, double* %509, align 8, !dbg !382, !tbaa !111
  %511 = fadd double %508, %510, !dbg !384
  %512 = add nsw i64 %507, -1, !dbg !385
  %513 = icmp sgt i64 %507, 0, !dbg !386
  br i1 %513, label %506, label %514, !dbg !380, !llvm.loop !387

; <label>:514:                                    ; preds = %506, %503
  %515 = phi double [ 0.000000e+00, %503 ], [ %511, %506 ], !dbg !389
  %516 = icmp eq i32 %259, 0, !dbg !390
  %517 = fsub double -0.000000e+00, %515, !dbg !391
  %518 = select i1 %516, double %515, double %517, !dbg !392
  store double %518, double* %1, align 8, !dbg !393, !tbaa !111
  br label %667, !dbg !394

; <label>:519:                                    ; preds = %496, %496
  br i1 %458, label %520, label %530, !dbg !395

; <label>:520:                                    ; preds = %519
  %521 = sext i32 %455 to i64, !dbg !397
  br label %522, !dbg !397

; <label>:522:                                    ; preds = %520, %522
  %523 = phi i64 [ %521, %520 ], [ %528, %522 ]
  %524 = phi double [ 0.000000e+00, %520 ], [ %527, %522 ]
  %525 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %523, !dbg !397
  %526 = load double, double* %525, align 8, !dbg !397, !tbaa !111
  %527 = fadd double %524, %526, !dbg !399
  %528 = add nsw i64 %523, -1, !dbg !400
  %529 = icmp sgt i64 %523, 0, !dbg !401
  br i1 %529, label %522, label %530, !dbg !395, !llvm.loop !402

; <label>:530:                                    ; preds = %522, %519
  %531 = phi double [ 0.000000e+00, %519 ], [ %527, %522 ], !dbg !404
  %532 = icmp eq i32 %259, 0, !dbg !405
  %533 = fsub double -0.000000e+00, %531, !dbg !406
  %534 = select i1 %532, double %531, double %533, !dbg !407
  store double %534, double* %1, align 8, !dbg !408, !tbaa !111
  %535 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 0, !dbg !409
  %536 = load double, double* %535, align 16, !dbg !409, !tbaa !111
  %537 = fsub double %536, %531, !dbg !410
  %538 = icmp slt i32 %455, 1, !dbg !411
  br i1 %538, label %602, label %539, !dbg !414

; <label>:539:                                    ; preds = %530
  %540 = add i32 %455, 1, !dbg !415
  %541 = zext i32 %540 to i64
  %542 = add nsw i64 %541, -2, !dbg !415
  %543 = and i32 %455, 7, !dbg !415
  %544 = zext i32 %543 to i64, !dbg !415
  %545 = icmp ult i64 %542, 7, !dbg !415
  br i1 %545, label %587, label %546, !dbg !415

; <label>:546:                                    ; preds = %539
  %547 = xor i64 %544, -1, !dbg !415
  %548 = add nsw i64 %547, %541, !dbg !415
  br label %549, !dbg !415

; <label>:549:                                    ; preds = %549, %546
  %550 = phi i64 [ 1, %546 ], [ %584, %549 ]
  %551 = phi double [ %537, %546 ], [ %583, %549 ]
  %552 = phi i64 [ %548, %546 ], [ %585, %549 ]
  %553 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %550, !dbg !415
  %554 = load double, double* %553, align 8, !dbg !415, !tbaa !111
  %555 = fadd double %551, %554, !dbg !416
  %556 = add nuw nsw i64 %550, 1, !dbg !417
  %557 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %556, !dbg !415
  %558 = load double, double* %557, align 8, !dbg !415, !tbaa !111
  %559 = fadd double %555, %558, !dbg !416
  %560 = add nuw nsw i64 %550, 2, !dbg !417
  %561 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %560, !dbg !415
  %562 = load double, double* %561, align 8, !dbg !415, !tbaa !111
  %563 = fadd double %559, %562, !dbg !416
  %564 = add nuw nsw i64 %550, 3, !dbg !417
  %565 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %564, !dbg !415
  %566 = load double, double* %565, align 8, !dbg !415, !tbaa !111
  %567 = fadd double %563, %566, !dbg !416
  %568 = add nuw nsw i64 %550, 4, !dbg !417
  %569 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %568, !dbg !415
  %570 = load double, double* %569, align 8, !dbg !415, !tbaa !111
  %571 = fadd double %567, %570, !dbg !416
  %572 = add nuw nsw i64 %550, 5, !dbg !417
  %573 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %572, !dbg !415
  %574 = load double, double* %573, align 8, !dbg !415, !tbaa !111
  %575 = fadd double %571, %574, !dbg !416
  %576 = add nuw nsw i64 %550, 6, !dbg !417
  %577 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %576, !dbg !415
  %578 = load double, double* %577, align 8, !dbg !415, !tbaa !111
  %579 = fadd double %575, %578, !dbg !416
  %580 = add nuw nsw i64 %550, 7, !dbg !417
  %581 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %580, !dbg !415
  %582 = load double, double* %581, align 8, !dbg !415, !tbaa !111
  %583 = fadd double %579, %582, !dbg !416
  %584 = add nuw nsw i64 %550, 8, !dbg !417
  %585 = add i64 %552, -8, !dbg !414
  %586 = icmp eq i64 %585, 0, !dbg !414
  br i1 %586, label %587, label %549, !dbg !414, !llvm.loop !418

; <label>:587:                                    ; preds = %549, %539
  %588 = phi double [ undef, %539 ], [ %583, %549 ]
  %589 = phi i64 [ 1, %539 ], [ %584, %549 ]
  %590 = phi double [ %537, %539 ], [ %583, %549 ]
  %591 = icmp eq i32 %543, 0, !dbg !414
  br i1 %591, label %602, label %592, !dbg !414

; <label>:592:                                    ; preds = %587, %592
  %593 = phi i64 [ %599, %592 ], [ %589, %587 ]
  %594 = phi double [ %598, %592 ], [ %590, %587 ]
  %595 = phi i64 [ %600, %592 ], [ %544, %587 ]
  %596 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %593, !dbg !415
  %597 = load double, double* %596, align 8, !dbg !415, !tbaa !111
  %598 = fadd double %594, %597, !dbg !416
  %599 = add nuw nsw i64 %593, 1, !dbg !417
  %600 = add i64 %595, -1, !dbg !414
  %601 = icmp eq i64 %600, 0, !dbg !414
  br i1 %601, label %602, label %592, !dbg !414, !llvm.loop !420

; <label>:602:                                    ; preds = %587, %592, %530
  %603 = phi double [ %537, %530 ], [ %588, %587 ], [ %598, %592 ], !dbg !422
  %604 = fsub double -0.000000e+00, %603, !dbg !423
  %605 = select i1 %532, double %603, double %604, !dbg !424
  %606 = getelementptr inbounds double, double* %1, i64 1, !dbg !425
  store double %605, double* %606, align 8, !dbg !426, !tbaa !111
  br label %667, !dbg !427

; <label>:607:                                    ; preds = %613
  %608 = icmp sgt i32 %455, 1, !dbg !428
  br i1 %608, label %609, label %646, !dbg !431

; <label>:609:                                    ; preds = %607
  %610 = sext i32 %455 to i64, !dbg !432
  %611 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %610
  %612 = load double, double* %611, align 8, !dbg !434, !tbaa !111
  br label %627, !dbg !432

; <label>:613:                                    ; preds = %499, %613
  %614 = phi double [ %502, %499 ], [ %620, %613 ], !dbg !379
  %615 = phi i64 [ %500, %499 ], [ %616, %613 ]
  %616 = add nsw i64 %615, -1, !dbg !377
  %617 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %616, !dbg !435
  %618 = load double, double* %617, align 8, !dbg !435, !tbaa !111
  %619 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %615, !dbg !379
  %620 = fadd double %618, %614, !dbg !436
  %621 = fsub double %618, %620, !dbg !437
  %622 = fadd double %614, %621, !dbg !438
  store double %622, double* %619, align 8, !dbg !438, !tbaa !111
  store double %620, double* %617, align 8, !dbg !439, !tbaa !111
  %623 = icmp sgt i64 %615, 1, !dbg !372
  br i1 %623, label %613, label %607, !dbg !376, !llvm.loop !440

; <label>:624:                                    ; preds = %627
  br i1 %608, label %625, label %646, !dbg !442

; <label>:625:                                    ; preds = %624
  %626 = sext i32 %455 to i64, !dbg !444
  br label %638, !dbg !444

; <label>:627:                                    ; preds = %609, %627
  %628 = phi double [ %612, %609 ], [ %634, %627 ], !dbg !434
  %629 = phi i64 [ %610, %609 ], [ %630, %627 ]
  %630 = add nsw i64 %629, -1, !dbg !432
  %631 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %630, !dbg !446
  %632 = load double, double* %631, align 8, !dbg !446, !tbaa !111
  %633 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %629, !dbg !434
  %634 = fadd double %632, %628, !dbg !447
  %635 = fsub double %632, %634, !dbg !448
  %636 = fadd double %628, %635, !dbg !449
  store double %636, double* %633, align 8, !dbg !449, !tbaa !111
  store double %634, double* %631, align 8, !dbg !450, !tbaa !111
  %637 = icmp sgt i64 %629, 2, !dbg !428
  br i1 %637, label %627, label %624, !dbg !431, !llvm.loop !451

; <label>:638:                                    ; preds = %625, %638
  %639 = phi i64 [ %626, %625 ], [ %644, %638 ]
  %640 = phi double [ 0.000000e+00, %625 ], [ %643, %638 ]
  %641 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 %639, !dbg !444
  %642 = load double, double* %641, align 8, !dbg !444, !tbaa !111
  %643 = fadd double %640, %642, !dbg !453
  %644 = add nsw i64 %639, -1, !dbg !454
  %645 = icmp sgt i64 %639, 2, !dbg !455
  br i1 %645, label %638, label %646, !dbg !442, !llvm.loop !456

; <label>:646:                                    ; preds = %638, %607, %497, %624
  %647 = phi double [ 0.000000e+00, %624 ], [ 0.000000e+00, %497 ], [ 0.000000e+00, %607 ], [ %643, %638 ], !dbg !458
  %648 = icmp eq i32 %259, 0, !dbg !459
  %649 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 0, !dbg !461
  %650 = load double, double* %649, align 16, !dbg !461, !tbaa !111
  br i1 %648, label %651, label %658, !dbg !463

; <label>:651:                                    ; preds = %646
  store double %650, double* %1, align 8, !dbg !464, !tbaa !111
  %652 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 1, !dbg !466
  %653 = bitcast double* %652 to i64*, !dbg !466
  %654 = load i64, i64* %653, align 8, !dbg !466, !tbaa !111
  %655 = getelementptr inbounds double, double* %1, i64 1, !dbg !467
  %656 = bitcast double* %655 to i64*, !dbg !468
  store i64 %654, i64* %656, align 8, !dbg !468, !tbaa !111
  %657 = getelementptr inbounds double, double* %1, i64 2, !dbg !469
  store double %647, double* %657, align 8, !dbg !470, !tbaa !111
  br label %667, !dbg !471

; <label>:658:                                    ; preds = %646
  %659 = getelementptr inbounds [20 x double], [20 x double]* %9, i64 0, i64 1, !dbg !472
  %660 = load double, double* %659, align 8, !dbg !472, !tbaa !111
  %661 = insertelement <2 x double> undef, double %650, i32 0, !dbg !473
  %662 = insertelement <2 x double> %661, double %660, i32 1, !dbg !473
  %663 = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %662, !dbg !473
  %664 = bitcast double* %1 to <2 x double>*, !dbg !474
  store <2 x double> %663, <2 x double>* %664, align 8, !dbg !474, !tbaa !111
  %665 = fsub double -0.000000e+00, %647, !dbg !475
  %666 = getelementptr inbounds double, double* %1, i64 2, !dbg !476
  store double %665, double* %666, align 8, !dbg !477, !tbaa !111
  br label %667

; <label>:667:                                    ; preds = %651, %658, %496, %602, %514
  %668 = and i32 %260, 7, !dbg !478
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %14) #4, !dbg !479
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %13) #4, !dbg !479
  call void @llvm.lifetime.end.p0i8(i64 160, i8* nonnull %12) #4, !dbg !479
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %11) #4, !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !480
  ret i32 %668, !dbg !480

; <label>:669:                                    ; preds = %214
  %670 = icmp eq i32 %218, 0, !dbg !210
  br i1 %670, label %675, label %671, !dbg !213

; <label>:671:                                    ; preds = %669, %214
  %672 = phi i32 [ 16777216, %669 ], [ 16777215, %214 ]
  %673 = phi i32 [ 1, %669 ], [ %215, %214 ]
  %674 = sub nsw i32 %672, %218, !dbg !214
  store i32 %674, i32* %217, align 4, !dbg !214, !tbaa !82
  br label %675, !dbg !216

; <label>:675:                                    ; preds = %671, %669
  %676 = phi i32 [ 0, %669 ], [ %673, %671 ], !dbg !217
  %677 = add nuw nsw i64 %202, 2, !dbg !216
  %678 = add i64 %204, -2, !dbg !202
  %679 = icmp eq i64 %678, 0, !dbg !202
  br i1 %679, label %220, label %201, !dbg !202, !llvm.loop !481

; <label>:680:                                    ; preds = %68
  %681 = add nsw i64 %61, 1, !dbg !483
  %682 = getelementptr inbounds i32, i32* %5, i64 %681, !dbg !107
  %683 = load i32, i32* %682, align 4, !dbg !107, !tbaa !82
  %684 = sitofp i32 %683 to double, !dbg !108
  br label %685, !dbg !105

; <label>:685:                                    ; preds = %680, %68
  %686 = phi double [ %684, %680 ], [ 0.000000e+00, %68 ], !dbg !105
  %687 = getelementptr inbounds [20 x double], [20 x double]* %8, i64 0, i64 %71, !dbg !109
  store double %686, double* %687, align 8, !dbg !110, !tbaa !111
  %688 = add nuw nsw i64 %60, 2, !dbg !115
  %689 = add nsw i64 %61, 2, !dbg !483
  %690 = add i64 %62, -2, !dbg !103
  %691 = icmp eq i64 %690, 0, !dbg !103
  br i1 %691, label %38, label %59, !dbg !103, !llvm.loop !484
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local double @scalbn(double, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @floor(double) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!29, !30, !31}
!llvm.ident = !{!32}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "init_jk", scope: !2, file: !3, line: 135, type: !25, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/k_rem_pio2.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7, !9}
!6 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !8, line: 77, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{!11, !14, !16, !18, !0, !20}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!12 = distinct !DIGlobalVariable(name: "zero", scope: !2, file: !3, line: 160, type: !13, isLocal: true, isDefinition: true)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4499096027743125504, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "twon24", scope: !2, file: !3, line: 163, type: !13, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4715268809856909312, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "two24", scope: !2, file: !3, line: 162, type: !13, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !3, line: 161, type: !13, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "PIo2", scope: !2, file: !3, line: 141, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 8)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 128, elements: !27)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!27 = !{!28}
!28 = !DISubrange(count: 4)
!29 = !{i32 2, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!33 = distinct !DISubprogram(name: "__kernel_rem_pio2", scope: !3, file: !3, line: 166, type: !34, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !39)
!34 = !DISubroutineType(types: !35)
!35 = !{!9, !36, !36, !9, !9, !9, !37}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !57, !58, !59, !60, !61, !62, !63, !64, !65, !67, !68}
!40 = !DILocalVariable(name: "x", arg: 1, scope: !33, file: !3, line: 166, type: !36)
!41 = !DILocalVariable(name: "y", arg: 2, scope: !33, file: !3, line: 166, type: !36)
!42 = !DILocalVariable(name: "e0", arg: 3, scope: !33, file: !3, line: 166, type: !9)
!43 = !DILocalVariable(name: "nx", arg: 4, scope: !33, file: !3, line: 166, type: !9)
!44 = !DILocalVariable(name: "prec", arg: 5, scope: !33, file: !3, line: 166, type: !9)
!45 = !DILocalVariable(name: "ipio2", arg: 6, scope: !33, file: !3, line: 166, type: !37)
!46 = !DILocalVariable(name: "jz", scope: !33, file: !3, line: 172, type: !7)
!47 = !DILocalVariable(name: "jx", scope: !33, file: !3, line: 172, type: !7)
!48 = !DILocalVariable(name: "jv", scope: !33, file: !3, line: 172, type: !7)
!49 = !DILocalVariable(name: "jp", scope: !33, file: !3, line: 172, type: !7)
!50 = !DILocalVariable(name: "jk", scope: !33, file: !3, line: 172, type: !7)
!51 = !DILocalVariable(name: "carry", scope: !33, file: !3, line: 172, type: !7)
!52 = !DILocalVariable(name: "n", scope: !33, file: !3, line: 172, type: !7)
!53 = !DILocalVariable(name: "iq", scope: !33, file: !3, line: 172, type: !54)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 640, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 20)
!57 = !DILocalVariable(name: "i", scope: !33, file: !3, line: 172, type: !7)
!58 = !DILocalVariable(name: "j", scope: !33, file: !3, line: 172, type: !7)
!59 = !DILocalVariable(name: "k", scope: !33, file: !3, line: 172, type: !7)
!60 = !DILocalVariable(name: "m", scope: !33, file: !3, line: 172, type: !7)
!61 = !DILocalVariable(name: "q0", scope: !33, file: !3, line: 172, type: !7)
!62 = !DILocalVariable(name: "ih", scope: !33, file: !3, line: 172, type: !7)
!63 = !DILocalVariable(name: "z", scope: !33, file: !3, line: 173, type: !6)
!64 = !DILocalVariable(name: "fw", scope: !33, file: !3, line: 173, type: !6)
!65 = !DILocalVariable(name: "f", scope: !33, file: !3, line: 173, type: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1280, elements: !55)
!67 = !DILocalVariable(name: "fq", scope: !33, file: !3, line: 173, type: !66)
!68 = !DILocalVariable(name: "q", scope: !33, file: !3, line: 173, type: !66)
!69 = !DILocation(line: 166, column: 32, scope: !33)
!70 = !DILocation(line: 166, column: 43, scope: !33)
!71 = !DILocation(line: 166, column: 50, scope: !33)
!72 = !DILocation(line: 166, column: 58, scope: !33)
!73 = !DILocation(line: 166, column: 66, scope: !33)
!74 = !DILocation(line: 166, column: 89, scope: !33)
!75 = !DILocation(line: 172, column: 2, scope: !33)
!76 = !DILocation(line: 172, column: 35, scope: !33)
!77 = !DILocation(line: 173, column: 2, scope: !33)
!78 = !DILocation(line: 173, column: 14, scope: !33)
!79 = !DILocation(line: 173, column: 20, scope: !33)
!80 = !DILocation(line: 173, column: 27, scope: !33)
!81 = !DILocation(line: 176, column: 7, scope: !33)
!82 = !{!83, !83, i64 0}
!83 = !{!"int", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C/C++ TBAA"}
!86 = !DILocation(line: 172, column: 24, scope: !33)
!87 = !DILocation(line: 172, column: 21, scope: !33)
!88 = !DILocation(line: 180, column: 10, scope: !33)
!89 = !DILocation(line: 172, column: 15, scope: !33)
!90 = !DILocation(line: 181, column: 10, scope: !33)
!91 = !DILocation(line: 181, column: 13, scope: !33)
!92 = !DILocation(line: 172, column: 18, scope: !33)
!93 = !DILocation(line: 181, column: 21, scope: !33)
!94 = !DILocation(line: 182, column: 13, scope: !33)
!95 = !DILocation(line: 182, column: 10, scope: !33)
!96 = !DILocation(line: 172, column: 50, scope: !33)
!97 = !DILocation(line: 185, column: 19, scope: !33)
!98 = !DILocation(line: 172, column: 48, scope: !33)
!99 = !DILocation(line: 172, column: 42, scope: !33)
!100 = !DILocation(line: 186, column: 11, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !3, line: 186, column: 2)
!102 = distinct !DILexicalBlock(scope: !33, file: !3, line: 186, column: 2)
!103 = !DILocation(line: 186, column: 2, scope: !102)
!104 = !DILocation(line: 186, column: 33, scope: !101)
!105 = !DILocation(line: 186, column: 31, scope: !101)
!106 = !DILocation(line: 172, column: 44, scope: !33)
!107 = !DILocation(line: 186, column: 54, scope: !101)
!108 = !DILocation(line: 186, column: 45, scope: !101)
!109 = !DILocation(line: 186, column: 24, scope: !101)
!110 = !DILocation(line: 186, column: 29, scope: !101)
!111 = !{!112, !112, i64 0}
!112 = !{!"double", !84, i64 0}
!113 = !DILocation(line: 189, column: 2, scope: !114)
!114 = distinct !DILexicalBlock(scope: !33, file: !3, line: 189, column: 2)
!115 = !DILocation(line: 186, column: 16, scope: !101)
!116 = !DILocation(line: 173, column: 11, scope: !33)
!117 = !DILocation(line: 190, column: 6, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !3, line: 190, column: 6)
!119 = distinct !DILexicalBlock(scope: !120, file: !3, line: 189, column: 22)
!120 = distinct !DILexicalBlock(scope: !114, file: !3, line: 189, column: 2)
!121 = !DILocation(line: 196, column: 17, scope: !122)
!122 = distinct !DILexicalBlock(scope: !33, file: !3, line: 196, column: 2)
!123 = !DILocation(line: 190, column: 38, scope: !124)
!124 = distinct !DILexicalBlock(scope: !118, file: !3, line: 190, column: 6)
!125 = !DILocation(line: 190, column: 49, scope: !124)
!126 = !DILocation(line: 190, column: 43, scope: !124)
!127 = !DILocation(line: 190, column: 42, scope: !124)
!128 = !DILocation(line: 190, column: 35, scope: !124)
!129 = !DILocation(line: 190, column: 28, scope: !124)
!130 = distinct !{!130, !117, !131}
!131 = !DILocation(line: 190, column: 51, scope: !118)
!132 = !DILocation(line: 190, column: 54, scope: !119)
!133 = !DILocation(line: 0, scope: !124)
!134 = !DILocation(line: 190, column: 59, scope: !119)
!135 = !DILocation(line: 189, column: 18, scope: !120)
!136 = !DILocation(line: 189, column: 12, scope: !120)
!137 = distinct !{!137, !113, !138}
!138 = !DILocation(line: 191, column: 2, scope: !114)
!139 = !DILocation(line: 0, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !3, line: 244, column: 15)
!141 = distinct !DILexicalBlock(scope: !142, file: !3, line: 244, column: 9)
!142 = distinct !DILexicalBlock(scope: !143, file: !3, line: 241, column: 14)
!143 = distinct !DILexicalBlock(scope: !33, file: !3, line: 241, column: 5)
!144 = !DILocation(line: 172, column: 12, scope: !33)
!145 = !DILocation(line: 173, column: 9, scope: !33)
!146 = !DILocation(line: 196, column: 24, scope: !147)
!147 = distinct !DILexicalBlock(scope: !122, file: !3, line: 196, column: 2)
!148 = !DILocation(line: 196, column: 2, scope: !122)
!149 = !DILocation(line: 197, column: 42, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !3, line: 196, column: 36)
!151 = !DILocation(line: 197, column: 24, scope: !150)
!152 = !DILocation(line: 197, column: 15, scope: !150)
!153 = !DILocation(line: 198, column: 34, scope: !150)
!154 = !DILocation(line: 198, column: 28, scope: !150)
!155 = !DILocation(line: 198, column: 15, scope: !150)
!156 = !DILocation(line: 198, column: 6, scope: !150)
!157 = !DILocation(line: 198, column: 12, scope: !150)
!158 = !DILocation(line: 199, column: 18, scope: !150)
!159 = !DILocation(line: 199, column: 15, scope: !150)
!160 = !DILocation(line: 199, column: 21, scope: !150)
!161 = !DILocation(line: 196, column: 28, scope: !147)
!162 = distinct !{!162, !148, !163}
!163 = !DILocation(line: 200, column: 2, scope: !122)
!164 = !DILocation(line: 0, scope: !150)
!165 = !DILocation(line: 203, column: 7, scope: !33)
!166 = !DILocation(line: 204, column: 18, scope: !33)
!167 = !DILocation(line: 204, column: 11, scope: !33)
!168 = !DILocation(line: 204, column: 10, scope: !33)
!169 = !DILocation(line: 204, column: 4, scope: !33)
!170 = !DILocation(line: 205, column: 7, scope: !33)
!171 = !DILocation(line: 172, column: 33, scope: !33)
!172 = !DILocation(line: 206, column: 7, scope: !33)
!173 = !DILocation(line: 206, column: 4, scope: !33)
!174 = !DILocation(line: 172, column: 53, scope: !33)
!175 = !DILocation(line: 208, column: 5, scope: !33)
!176 = !DILocation(line: 209, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !3, line: 208, column: 11)
!178 = distinct !DILexicalBlock(scope: !33, file: !3, line: 208, column: 5)
!179 = !DILocation(line: 209, column: 12, scope: !177)
!180 = !DILocation(line: 209, column: 20, scope: !177)
!181 = !DILocation(line: 209, column: 34, scope: !177)
!182 = !DILocation(line: 210, column: 19, scope: !177)
!183 = !DILocation(line: 210, column: 15, scope: !177)
!184 = !DILocation(line: 211, column: 19, scope: !177)
!185 = !DILocation(line: 212, column: 2, scope: !177)
!186 = !DILocation(line: 213, column: 10, scope: !178)
!187 = !DILocation(line: 213, column: 27, scope: !188)
!188 = distinct !DILexicalBlock(scope: !178, file: !3, line: 213, column: 10)
!189 = !DILocation(line: 213, column: 22, scope: !188)
!190 = !DILocation(line: 213, column: 30, scope: !188)
!191 = !DILocation(line: 213, column: 17, scope: !188)
!192 = !DILocation(line: 214, column: 11, scope: !193)
!193 = distinct !DILexicalBlock(scope: !188, file: !3, line: 214, column: 10)
!194 = !DILocation(line: 214, column: 10, scope: !188)
!195 = !DILocation(line: 0, scope: !33)
!196 = !DILocation(line: 216, column: 7, scope: !197)
!197 = distinct !DILexicalBlock(scope: !33, file: !3, line: 216, column: 5)
!198 = !DILocation(line: 216, column: 5, scope: !33)
!199 = !DILocation(line: 217, column: 8, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !3, line: 216, column: 11)
!201 = !DILocation(line: 172, column: 27, scope: !33)
!202 = !DILocation(line: 218, column: 6, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !3, line: 218, column: 6)
!204 = !DILocation(line: 219, column: 7, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 218, column: 25)
!206 = distinct !DILexicalBlock(scope: !203, file: !3, line: 218, column: 6)
!207 = !DILocation(line: 220, column: 11, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !3, line: 220, column: 6)
!209 = !DILocation(line: 220, column: 6, scope: !205)
!210 = !DILocation(line: 221, column: 11, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !3, line: 221, column: 10)
!212 = distinct !DILexicalBlock(scope: !208, file: !3, line: 220, column: 16)
!213 = !DILocation(line: 221, column: 10, scope: !212)
!214 = !DILocation(line: 0, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !3, line: 221, column: 16)
!216 = !DILocation(line: 218, column: 21, scope: !206)
!217 = !DILocation(line: 0, scope: !200)
!218 = !DILocation(line: 226, column: 9, scope: !200)
!219 = !DILocation(line: 227, column: 10, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !3, line: 226, column: 15)
!221 = distinct !DILexicalBlock(scope: !200, file: !3, line: 226, column: 9)
!222 = !DILocation(line: 229, column: 15, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !3, line: 227, column: 21)
!224 = !DILocation(line: 229, column: 10, scope: !223)
!225 = !DILocation(line: 229, column: 19, scope: !223)
!226 = !DILocation(line: 229, column: 32, scope: !223)
!227 = !DILocation(line: 231, column: 15, scope: !223)
!228 = !DILocation(line: 231, column: 10, scope: !223)
!229 = !DILocation(line: 231, column: 19, scope: !223)
!230 = !DILocation(line: 231, column: 32, scope: !223)
!231 = !DILocation(line: 234, column: 11, scope: !232)
!232 = distinct !DILexicalBlock(scope: !200, file: !3, line: 234, column: 9)
!233 = !DILocation(line: 234, column: 9, scope: !200)
!234 = !DILocation(line: 235, column: 11, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !3, line: 234, column: 16)
!236 = !DILocation(line: 236, column: 11, scope: !237)
!237 = distinct !DILexicalBlock(scope: !235, file: !3, line: 236, column: 6)
!238 = !DILocation(line: 236, column: 6, scope: !235)
!239 = !DILocation(line: 236, column: 21, scope: !237)
!240 = !DILocation(line: 236, column: 18, scope: !237)
!241 = !DILocation(line: 236, column: 16, scope: !237)
!242 = !DILocation(line: 0, scope: !177)
!243 = !DILocation(line: 241, column: 6, scope: !143)
!244 = !DILocation(line: 241, column: 5, scope: !33)
!245 = !DILocation(line: 243, column: 19, scope: !246)
!246 = distinct !DILexicalBlock(scope: !247, file: !3, line: 243, column: 6)
!247 = distinct !DILexicalBlock(scope: !142, file: !3, line: 243, column: 6)
!248 = !DILocation(line: 243, column: 6, scope: !247)
!249 = !DILocation(line: 0, scope: !246)
!250 = !DILocation(line: 243, column: 34, scope: !246)
!251 = !DILocation(line: 243, column: 31, scope: !246)
!252 = distinct !{!252, !248, !253, !254}
!253 = !DILocation(line: 243, column: 38, scope: !247)
!254 = !{!"llvm.loop.isvectorized", i32 1}
!255 = distinct !{!255, !248, !253, !256, !254}
!256 = !{!"llvm.loop.unroll.runtime.disable"}
!257 = !DILocation(line: 244, column: 10, scope: !141)
!258 = !DILocation(line: 244, column: 9, scope: !142)
!259 = !DILocation(line: 245, column: 16, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !3, line: 245, column: 3)
!261 = distinct !DILexicalBlock(scope: !140, file: !3, line: 245, column: 3)
!262 = !DILocation(line: 0, scope: !260)
!263 = !DILocation(line: 172, column: 46, scope: !33)
!264 = !DILocation(line: 245, column: 11, scope: !260)
!265 = !DILocation(line: 245, column: 19, scope: !260)
!266 = !DILocation(line: 245, column: 24, scope: !260)
!267 = !DILocation(line: 245, column: 3, scope: !261)
!268 = distinct !{!268, !267, !269}
!269 = !DILocation(line: 245, column: 27, scope: !261)
!270 = !DILocation(line: 247, column: 19, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !3, line: 247, column: 3)
!272 = distinct !DILexicalBlock(scope: !140, file: !3, line: 247, column: 3)
!273 = !DILocation(line: 247, column: 3, scope: !272)
!274 = !DILocation(line: 0, scope: !271)
!275 = !DILocation(line: 248, column: 34, scope: !276)
!276 = distinct !DILexicalBlock(scope: !271, file: !3, line: 247, column: 27)
!277 = !DILocation(line: 248, column: 26, scope: !276)
!278 = !DILocation(line: 248, column: 17, scope: !276)
!279 = !DILocation(line: 248, column: 11, scope: !276)
!280 = !DILocation(line: 248, column: 7, scope: !276)
!281 = !DILocation(line: 248, column: 15, scope: !276)
!282 = !DILocation(line: 249, column: 7, scope: !283)
!283 = distinct !DILexicalBlock(scope: !276, file: !3, line: 249, column: 7)
!284 = !DILocation(line: 249, column: 39, scope: !285)
!285 = distinct !DILexicalBlock(scope: !283, file: !3, line: 249, column: 7)
!286 = !DILocation(line: 249, column: 50, scope: !285)
!287 = !DILocation(line: 249, column: 44, scope: !285)
!288 = !DILocation(line: 249, column: 43, scope: !285)
!289 = !DILocation(line: 249, column: 36, scope: !285)
!290 = !DILocation(line: 249, column: 29, scope: !285)
!291 = distinct !{!291, !282, !292}
!292 = !DILocation(line: 249, column: 52, scope: !283)
!293 = !DILocation(line: 250, column: 7, scope: !276)
!294 = !DILocation(line: 0, scope: !285)
!295 = !DILocation(line: 250, column: 12, scope: !276)
!296 = !DILocation(line: 247, column: 15, scope: !271)
!297 = distinct !{!297, !273, !298}
!298 = !DILocation(line: 251, column: 3, scope: !272)
!299 = !DILocation(line: 0, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !3, line: 260, column: 23)
!301 = distinct !DILexicalBlock(scope: !302, file: !3, line: 258, column: 13)
!302 = distinct !DILexicalBlock(scope: !33, file: !3, line: 258, column: 5)
!303 = !DILocation(line: 260, column: 12, scope: !301)
!304 = !DILocation(line: 260, column: 18, scope: !301)
!305 = !DILocation(line: 260, column: 6, scope: !301)
!306 = distinct !{!306, !305, !307}
!307 = !DILocation(line: 260, column: 38, scope: !301)
!308 = !DILocation(line: 262, column: 19, scope: !309)
!309 = distinct !DILexicalBlock(scope: !302, file: !3, line: 261, column: 9)
!310 = !DILocation(line: 262, column: 10, scope: !309)
!311 = !DILocation(line: 263, column: 10, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !3, line: 263, column: 9)
!313 = !DILocation(line: 263, column: 9, scope: !309)
!314 = !DILocation(line: 264, column: 35, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !3, line: 263, column: 19)
!316 = !DILocation(line: 264, column: 17, scope: !315)
!317 = !DILocation(line: 264, column: 8, scope: !315)
!318 = !DILocation(line: 265, column: 31, scope: !315)
!319 = !DILocation(line: 265, column: 25, scope: !315)
!320 = !DILocation(line: 265, column: 12, scope: !315)
!321 = !DILocation(line: 265, column: 3, scope: !315)
!322 = !DILocation(line: 265, column: 10, scope: !315)
!323 = !DILocation(line: 266, column: 6, scope: !315)
!324 = !DILocation(line: 266, column: 15, scope: !315)
!325 = !DILocation(line: 267, column: 3, scope: !315)
!326 = !DILocation(line: 267, column: 10, scope: !315)
!327 = !DILocation(line: 268, column: 6, scope: !315)
!328 = !DILocation(line: 268, column: 22, scope: !312)
!329 = !DILocation(line: 268, column: 13, scope: !312)
!330 = !DILocation(line: 268, column: 20, scope: !312)
!331 = !DILocation(line: 272, column: 7, scope: !33)
!332 = !DILocation(line: 273, column: 12, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !3, line: 273, column: 2)
!334 = distinct !DILexicalBlock(scope: !33, file: !3, line: 273, column: 2)
!335 = !DILocation(line: 273, column: 2, scope: !334)
!336 = !DILocation(line: 274, column: 24, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !3, line: 273, column: 21)
!338 = !DILocation(line: 278, column: 2, scope: !339)
!339 = distinct !DILexicalBlock(scope: !33, file: !3, line: 278, column: 2)
!340 = !DILocation(line: 274, column: 16, scope: !337)
!341 = !DILocation(line: 274, column: 15, scope: !337)
!342 = !DILocation(line: 274, column: 6, scope: !337)
!343 = !DILocation(line: 274, column: 11, scope: !337)
!344 = !DILocation(line: 274, column: 33, scope: !337)
!345 = !DILocation(line: 273, column: 17, scope: !333)
!346 = distinct !{!346, !335, !347}
!347 = !DILocation(line: 275, column: 2, scope: !334)
!348 = !DILocation(line: 279, column: 33, scope: !349)
!349 = distinct !DILexicalBlock(scope: !350, file: !3, line: 279, column: 6)
!350 = distinct !DILexicalBlock(scope: !351, file: !3, line: 279, column: 6)
!351 = distinct !DILexicalBlock(scope: !352, file: !3, line: 278, column: 21)
!352 = distinct !DILexicalBlock(scope: !339, file: !3, line: 278, column: 2)
!353 = !DILocation(line: 279, column: 47, scope: !349)
!354 = !DILocation(line: 279, column: 58, scope: !349)
!355 = !DILocation(line: 279, column: 55, scope: !349)
!356 = !DILocation(line: 279, column: 54, scope: !349)
!357 = !DILocation(line: 279, column: 44, scope: !349)
!358 = !DILocation(line: 279, column: 37, scope: !349)
!359 = !DILocation(line: 279, column: 22, scope: !349)
!360 = !DILocation(line: 279, column: 29, scope: !349)
!361 = !DILocation(line: 279, column: 26, scope: !349)
!362 = distinct !{!362, !363, !364}
!363 = !DILocation(line: 279, column: 6, scope: !350)
!364 = !DILocation(line: 279, column: 60, scope: !350)
!365 = !DILocation(line: 280, column: 6, scope: !351)
!366 = !DILocation(line: 280, column: 15, scope: !351)
!367 = !DILocation(line: 278, column: 17, scope: !352)
!368 = !DILocation(line: 278, column: 12, scope: !352)
!369 = distinct !{!369, !338, !370}
!370 = !DILocation(line: 281, column: 2, scope: !339)
!371 = !DILocation(line: 284, column: 2, scope: !33)
!372 = !DILocation(line: 300, column: 14, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !3, line: 300, column: 3)
!374 = distinct !DILexicalBlock(scope: !375, file: !3, line: 300, column: 3)
!375 = distinct !DILexicalBlock(scope: !33, file: !3, line: 284, column: 15)
!376 = !DILocation(line: 300, column: 3, scope: !374)
!377 = !DILocation(line: 301, column: 21, scope: !378)
!378 = distinct !DILexicalBlock(scope: !373, file: !3, line: 300, column: 22)
!379 = !DILocation(line: 301, column: 25, scope: !378)
!380 = !DILocation(line: 287, column: 3, scope: !381)
!381 = distinct !DILexicalBlock(scope: !375, file: !3, line: 287, column: 3)
!382 = !DILocation(line: 287, column: 29, scope: !383)
!383 = distinct !DILexicalBlock(scope: !381, file: !3, line: 287, column: 3)
!384 = !DILocation(line: 287, column: 26, scope: !383)
!385 = !DILocation(line: 287, column: 19, scope: !383)
!386 = !DILocation(line: 287, column: 14, scope: !383)
!387 = distinct !{!387, !380, !388}
!388 = !DILocation(line: 287, column: 33, scope: !381)
!389 = !DILocation(line: 0, scope: !383)
!390 = !DILocation(line: 288, column: 13, scope: !375)
!391 = !DILocation(line: 288, column: 23, scope: !375)
!392 = !DILocation(line: 288, column: 10, scope: !375)
!393 = !DILocation(line: 288, column: 8, scope: !375)
!394 = !DILocation(line: 289, column: 3, scope: !375)
!395 = !DILocation(line: 293, column: 3, scope: !396)
!396 = distinct !DILexicalBlock(scope: !375, file: !3, line: 293, column: 3)
!397 = !DILocation(line: 293, column: 29, scope: !398)
!398 = distinct !DILexicalBlock(scope: !396, file: !3, line: 293, column: 3)
!399 = !DILocation(line: 293, column: 26, scope: !398)
!400 = !DILocation(line: 293, column: 19, scope: !398)
!401 = !DILocation(line: 293, column: 14, scope: !398)
!402 = distinct !{!402, !395, !403}
!403 = !DILocation(line: 293, column: 33, scope: !396)
!404 = !DILocation(line: 0, scope: !398)
!405 = !DILocation(line: 294, column: 13, scope: !375)
!406 = !DILocation(line: 294, column: 23, scope: !375)
!407 = !DILocation(line: 294, column: 10, scope: !375)
!408 = !DILocation(line: 294, column: 8, scope: !375)
!409 = !DILocation(line: 295, column: 8, scope: !375)
!410 = !DILocation(line: 295, column: 13, scope: !375)
!411 = !DILocation(line: 296, column: 13, scope: !412)
!412 = distinct !DILexicalBlock(scope: !413, file: !3, line: 296, column: 3)
!413 = distinct !DILexicalBlock(scope: !375, file: !3, line: 296, column: 3)
!414 = !DILocation(line: 296, column: 3, scope: !413)
!415 = !DILocation(line: 296, column: 29, scope: !412)
!416 = !DILocation(line: 296, column: 26, scope: !412)
!417 = !DILocation(line: 296, column: 19, scope: !412)
!418 = distinct !{!418, !414, !419}
!419 = !DILocation(line: 296, column: 33, scope: !413)
!420 = distinct !{!420, !421}
!421 = !{!"llvm.loop.unroll.disable"}
!422 = !DILocation(line: 0, scope: !412)
!423 = !DILocation(line: 297, column: 23, scope: !375)
!424 = !DILocation(line: 297, column: 10, scope: !375)
!425 = !DILocation(line: 297, column: 3, scope: !375)
!426 = !DILocation(line: 297, column: 8, scope: !375)
!427 = !DILocation(line: 298, column: 3, scope: !375)
!428 = !DILocation(line: 305, column: 14, scope: !429)
!429 = distinct !DILexicalBlock(scope: !430, file: !3, line: 305, column: 3)
!430 = distinct !DILexicalBlock(scope: !375, file: !3, line: 305, column: 3)
!431 = !DILocation(line: 305, column: 3, scope: !430)
!432 = !DILocation(line: 306, column: 21, scope: !433)
!433 = distinct !DILexicalBlock(scope: !429, file: !3, line: 305, column: 22)
!434 = !DILocation(line: 306, column: 25, scope: !433)
!435 = !DILocation(line: 301, column: 17, scope: !378)
!436 = !DILocation(line: 301, column: 24, scope: !378)
!437 = !DILocation(line: 302, column: 24, scope: !378)
!438 = !DILocation(line: 302, column: 14, scope: !378)
!439 = !DILocation(line: 303, column: 15, scope: !378)
!440 = distinct !{!440, !376, !441}
!441 = !DILocation(line: 304, column: 3, scope: !374)
!442 = !DILocation(line: 310, column: 3, scope: !443)
!443 = distinct !DILexicalBlock(scope: !375, file: !3, line: 310, column: 3)
!444 = !DILocation(line: 310, column: 36, scope: !445)
!445 = distinct !DILexicalBlock(scope: !443, file: !3, line: 310, column: 3)
!446 = !DILocation(line: 306, column: 17, scope: !433)
!447 = !DILocation(line: 306, column: 24, scope: !433)
!448 = !DILocation(line: 307, column: 24, scope: !433)
!449 = !DILocation(line: 307, column: 14, scope: !433)
!450 = !DILocation(line: 308, column: 15, scope: !433)
!451 = distinct !{!451, !431, !452}
!452 = !DILocation(line: 309, column: 3, scope: !430)
!453 = !DILocation(line: 310, column: 33, scope: !445)
!454 = !DILocation(line: 310, column: 26, scope: !445)
!455 = !DILocation(line: 310, column: 21, scope: !445)
!456 = distinct !{!456, !442, !457}
!457 = !DILocation(line: 310, column: 40, scope: !443)
!458 = !DILocation(line: 0, scope: !445)
!459 = !DILocation(line: 311, column: 8, scope: !460)
!460 = distinct !DILexicalBlock(scope: !375, file: !3, line: 311, column: 6)
!461 = !DILocation(line: 0, scope: !462)
!462 = distinct !DILexicalBlock(scope: !460, file: !3, line: 313, column: 10)
!463 = !DILocation(line: 311, column: 6, scope: !375)
!464 = !DILocation(line: 312, column: 12, scope: !465)
!465 = distinct !DILexicalBlock(scope: !460, file: !3, line: 311, column: 13)
!466 = !DILocation(line: 312, column: 30, scope: !465)
!467 = !DILocation(line: 312, column: 22, scope: !465)
!468 = !DILocation(line: 312, column: 27, scope: !465)
!469 = !DILocation(line: 312, column: 37, scope: !465)
!470 = !DILocation(line: 312, column: 42, scope: !465)
!471 = !DILocation(line: 313, column: 3, scope: !465)
!472 = !DILocation(line: 314, column: 30, scope: !462)
!473 = !DILocation(line: 314, column: 14, scope: !462)
!474 = !DILocation(line: 314, column: 12, scope: !462)
!475 = !DILocation(line: 314, column: 44, scope: !462)
!476 = !DILocation(line: 314, column: 37, scope: !462)
!477 = !DILocation(line: 314, column: 42, scope: !462)
!478 = !DILocation(line: 317, column: 10, scope: !33)
!479 = !DILocation(line: 318, column: 1, scope: !33)
!480 = !DILocation(line: 317, column: 2, scope: !33)
!481 = distinct !{!481, !202, !482}
!482 = !DILocation(line: 225, column: 6, scope: !203)
!483 = !DILocation(line: 186, column: 20, scope: !101)
!484 = distinct !{!484, !103, !485}
!485 = !DILocation(line: 186, column: 61, scope: !102)
