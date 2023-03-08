; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/kf_rem_pio2.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/kf_rem_pio2.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@init_jk = internal unnamed_addr constant [3 x i32] [i32 4, i32 7, i32 9], align 4, !dbg !0
@PIo2 = internal unnamed_addr constant [11 x float] [float 0x3FF9200000000000, float 0x3F3E000000000000, float 0x3EFB400000000000, float 0x3E74400000000000, float 0x3DD0800000000000, float 0x3D6A000000000000, float 0x3CF8400000000000, float 0x3C5A000000000000, float 0x3BF8800000000000, float 0x3B78C00000000000, float 0x3AE8800000000000], align 16, !dbg !20

; Function Attrs: noredzone nounwind
define dso_local i32 @__kernel_rem_pio2f(float* nocapture readonly, float* nocapture, i32, i32, i32, i32* nocapture readonly) local_unnamed_addr #0 !dbg !33 {
  %7 = alloca [20 x i32], align 16
  %8 = alloca [20 x float], align 16
  %9 = alloca [20 x float], align 16
  %10 = alloca [20 x float], align 16
  %11 = bitcast [20 x i32]* %7 to i8*, !dbg !75
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %11) #4, !dbg !75
  %12 = bitcast [20 x float]* %8 to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %12) #4, !dbg !77
  %13 = bitcast [20 x float]* %9 to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %13) #4, !dbg !77
  %14 = bitcast [20 x float]* %10 to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %14) #4, !dbg !77
  %15 = sext i32 %4 to i64, !dbg !81
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* @init_jk, i64 0, i64 %15, !dbg !81
  %17 = load i32, i32* %16, align 4, !dbg !81, !tbaa !82
  %18 = add nsw i32 %3, -1, !dbg !88
  %19 = add nsw i32 %2, -3, !dbg !90
  %20 = sdiv i32 %19, 8, !dbg !91
  %21 = icmp sgt i32 %20, 0, !dbg !93
  %22 = select i1 %21, i32 %20, i32 0, !dbg !93
  %23 = mul nsw i32 %22, -8
  %24 = add i32 %2, -8, !dbg !94
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
  %47 = sitofp i32 %46 to float, !dbg !108
  br label %48, !dbg !105

; <label>:48:                                     ; preds = %44, %42
  %49 = phi float [ %47, %44 ], [ 0.000000e+00, %42 ], !dbg !105
  %50 = getelementptr inbounds [20 x float], [20 x float]* %8, i64 0, i64 %39, !dbg !109
  store float %49, float* %50, align 4, !dbg !110, !tbaa !111
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
  %67 = sitofp i32 %66 to float, !dbg !108
  br label %68, !dbg !105

; <label>:68:                                     ; preds = %59, %64
  %69 = phi float [ %67, %64 ], [ 0.000000e+00, %59 ], !dbg !105
  %70 = getelementptr inbounds [20 x float], [20 x float]* %8, i64 0, i64 %60, !dbg !109
  store float %69, float* %70, align 8, !dbg !110, !tbaa !111
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
  %80 = sub nsw i32 8, %25
  %81 = sub nsw i32 7, %25
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
  %92 = phi float [ %112, %90 ], [ 0.000000e+00, %75 ]
  %93 = phi i64 [ %114, %90 ], [ %57, %75 ]
  %94 = getelementptr inbounds float, float* %0, i64 %91, !dbg !123
  %95 = load float, float* %94, align 4, !dbg !123, !tbaa !111
  %96 = trunc i64 %91 to i32, !dbg !125
  %97 = sub i32 %77, %96, !dbg !125
  %98 = sext i32 %97 to i64, !dbg !126
  %99 = getelementptr inbounds [20 x float], [20 x float]* %8, i64 0, i64 %98, !dbg !126
  %100 = load float, float* %99, align 4, !dbg !126, !tbaa !111
  %101 = fmul float %95, %100, !dbg !127
  %102 = fadd float %92, %101, !dbg !128
  %103 = or i64 %91, 1, !dbg !129
  %104 = getelementptr inbounds float, float* %0, i64 %103, !dbg !123
  %105 = load float, float* %104, align 4, !dbg !123, !tbaa !111
  %106 = trunc i64 %103 to i32, !dbg !125
  %107 = sub i32 %77, %106, !dbg !125
  %108 = sext i32 %107 to i64, !dbg !126
  %109 = getelementptr inbounds [20 x float], [20 x float]* %8, i64 0, i64 %108, !dbg !126
  %110 = load float, float* %109, align 4, !dbg !126, !tbaa !111
  %111 = fmul float %105, %110, !dbg !127
  %112 = fadd float %102, %111, !dbg !128
  %113 = add nuw nsw i64 %91, 2, !dbg !129
  %114 = add i64 %93, -2, !dbg !117
  %115 = icmp eq i64 %114, 0, !dbg !117
  br i1 %115, label %116, label %90, !dbg !117, !llvm.loop !130

; <label>:116:                                    ; preds = %90, %75
  %117 = phi float [ undef, %75 ], [ %112, %90 ]
  %118 = phi i64 [ 0, %75 ], [ %113, %90 ]
  %119 = phi float [ 0.000000e+00, %75 ], [ %112, %90 ]
  br i1 %58, label %130, label %120, !dbg !117

; <label>:120:                                    ; preds = %116
  %121 = getelementptr inbounds float, float* %0, i64 %118, !dbg !123
  %122 = load float, float* %121, align 4, !dbg !123, !tbaa !111
  %123 = trunc i64 %118 to i32, !dbg !125
  %124 = sub i32 %77, %123, !dbg !125
  %125 = sext i32 %124 to i64, !dbg !126
  %126 = getelementptr inbounds [20 x float], [20 x float]* %8, i64 0, i64 %125, !dbg !126
  %127 = load float, float* %126, align 4, !dbg !126, !tbaa !111
  %128 = fmul float %122, %127, !dbg !127
  %129 = fadd float %119, %128, !dbg !128
  br label %130, !dbg !132

; <label>:130:                                    ; preds = %120, %116, %73
  %131 = phi float [ 0.000000e+00, %73 ], [ %117, %116 ], [ %129, %120 ], !dbg !133
  %132 = getelementptr inbounds [20 x float], [20 x float]* %10, i64 0, i64 %74, !dbg !132
  store float %131, float* %132, align 4, !dbg !134, !tbaa !111
  %133 = add nuw nsw i64 %74, 1, !dbg !135
  %134 = icmp slt i64 %74, %53, !dbg !136
  br i1 %134, label %73, label %78, !dbg !113, !llvm.loop !137

; <label>:135:                                    ; preds = %421, %78
  %136 = phi i32 [ %17, %78 ], [ %367, %421 ], !dbg !139
  %137 = sext i32 %136 to i64, !dbg !121
  %138 = getelementptr inbounds [20 x float], [20 x float]* %10, i64 0, i64 %137, !dbg !121
  %139 = load float, float* %138, align 4, !dbg !121, !tbaa !111
  %140 = icmp sgt i32 %136, 0, !dbg !146
  br i1 %140, label %141, label %158, !dbg !148

; <label>:141:                                    ; preds = %135, %141
  %142 = phi i64 [ %156, %141 ], [ 0, %135 ]
  %143 = phi i64 [ %152, %141 ], [ %137, %135 ]
  %144 = phi float [ %155, %141 ], [ %139, %135 ]
  %145 = fmul float %144, 3.906250e-03, !dbg !149
  %146 = fptosi float %145 to i32, !dbg !151
  %147 = sitofp i32 %146 to float, !dbg !152
  %148 = fmul float %147, 2.560000e+02, !dbg !153
  %149 = fsub float %144, %148, !dbg !154
  %150 = fptosi float %149 to i32, !dbg !155
  %151 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %142, !dbg !156
  store i32 %150, i32* %151, align 4, !dbg !157, !tbaa !82
  %152 = add nsw i64 %143, -1, !dbg !158
  %153 = getelementptr inbounds [20 x float], [20 x float]* %10, i64 0, i64 %152, !dbg !159
  %154 = load float, float* %153, align 4, !dbg !159, !tbaa !111
  %155 = fadd float %154, %147, !dbg !160
  %156 = add nuw nsw i64 %142, 1, !dbg !161
  %157 = icmp sgt i64 %143, 1, !dbg !146
  br i1 %157, label %141, label %158, !dbg !148, !llvm.loop !162

; <label>:158:                                    ; preds = %141, %135
  %159 = phi float [ %139, %135 ], [ %155, %141 ], !dbg !164
  %160 = tail call float @scalbnf(float %159, i32 %25) #5, !dbg !165
  %161 = fmul float %160, 1.250000e-01, !dbg !166
  %162 = tail call float @floorf(float %161) #5, !dbg !167
  %163 = fmul float %162, 8.000000e+00, !dbg !168
  %164 = fsub float %160, %163, !dbg !169
  %165 = fptosi float %164 to i32, !dbg !170
  %166 = sitofp i32 %165 to float, !dbg !172
  %167 = fsub float %164, %166, !dbg !173
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
  %184 = ashr i32 %183, 8, !dbg !190
  br label %187, !dbg !191

; <label>:185:                                    ; preds = %178
  %186 = fcmp ult float %167, 5.000000e-01, !dbg !192
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
  %211 = phi i32 [ 256, %208 ], [ 255, %201 ]
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
  %232 = phi i32 [ 256, %229 ], [ 255, %225 ]
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
  %243 = and i32 %242, 127, !dbg !225
  store i32 %243, i32* %241, align 4, !dbg !225, !tbaa !82
  br label %250, !dbg !226

; <label>:244:                                    ; preds = %237
  %245 = add nsw i32 %136, -1, !dbg !227
  %246 = sext i32 %245 to i64, !dbg !228
  %247 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %246, !dbg !228
  %248 = load i32, i32* %247, align 4, !dbg !229, !tbaa !82
  %249 = and i32 %248, 63, !dbg !229
  store i32 %249, i32* %247, align 4, !dbg !229, !tbaa !82
  br label %250, !dbg !230

; <label>:250:                                    ; preds = %238, %244, %237, %235
  %251 = icmp eq i32 %192, 2, !dbg !231
  br i1 %251, label %252, label %258, !dbg !233

; <label>:252:                                    ; preds = %250
  %253 = fsub float 1.000000e+00, %167, !dbg !234
  %254 = icmp eq i32 %236, 0, !dbg !236
  br i1 %254, label %258, label %255, !dbg !238

; <label>:255:                                    ; preds = %252
  %256 = tail call float @scalbnf(float 1.000000e+00, i32 %25) #5, !dbg !239
  %257 = fsub float %253, %256, !dbg !240
  br label %258, !dbg !241

; <label>:258:                                    ; preds = %185, %252, %250, %255, %187
  %259 = phi i32 [ 2, %255 ], [ 2, %252 ], [ %192, %250 ], [ %189, %187 ], [ 0, %185 ]
  %260 = phi i32 [ %194, %255 ], [ %194, %252 ], [ %194, %250 ], [ %188, %187 ], [ %165, %185 ], !dbg !242
  %261 = phi float [ %257, %255 ], [ %253, %252 ], [ %167, %250 ], [ %167, %187 ], [ %167, %185 ], !dbg !195
  %262 = fcmp oeq float %261, 0.000000e+00, !dbg !243
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
  %375 = sitofp i32 %374 to float, !dbg !278
  %376 = trunc i64 %370 to i32, !dbg !279
  %377 = add i32 %376, %3, !dbg !279
  %378 = sext i32 %377 to i64, !dbg !280
  %379 = getelementptr inbounds [20 x float], [20 x float]* %8, i64 0, i64 %378, !dbg !280
  store float %375, float* %379, align 4, !dbg !281, !tbaa !111
  br i1 %83, label %380, label %421, !dbg !282

; <label>:380:                                    ; preds = %369
  br i1 %87, label %407, label %381, !dbg !284

; <label>:381:                                    ; preds = %380, %381
  %382 = phi i64 [ %404, %381 ], [ 0, %380 ]
  %383 = phi float [ %403, %381 ], [ 0.000000e+00, %380 ]
  %384 = phi i64 [ %405, %381 ], [ %88, %380 ]
  %385 = getelementptr inbounds float, float* %0, i64 %382, !dbg !284
  %386 = load float, float* %385, align 4, !dbg !284, !tbaa !111
  %387 = trunc i64 %382 to i32, !dbg !286
  %388 = sub nsw i32 %377, %387, !dbg !286
  %389 = sext i32 %388 to i64, !dbg !287
  %390 = getelementptr inbounds [20 x float], [20 x float]* %8, i64 0, i64 %389, !dbg !287
  %391 = load float, float* %390, align 4, !dbg !287, !tbaa !111
  %392 = fmul float %386, %391, !dbg !288
  %393 = fadd float %383, %392, !dbg !289
  %394 = or i64 %382, 1, !dbg !290
  %395 = getelementptr inbounds float, float* %0, i64 %394, !dbg !284
  %396 = load float, float* %395, align 4, !dbg !284, !tbaa !111
  %397 = trunc i64 %394 to i32, !dbg !286
  %398 = sub nsw i32 %377, %397, !dbg !286
  %399 = sext i32 %398 to i64, !dbg !287
  %400 = getelementptr inbounds [20 x float], [20 x float]* %8, i64 0, i64 %399, !dbg !287
  %401 = load float, float* %400, align 4, !dbg !287, !tbaa !111
  %402 = fmul float %396, %401, !dbg !288
  %403 = fadd float %393, %402, !dbg !289
  %404 = add nuw nsw i64 %382, 2, !dbg !290
  %405 = add i64 %384, -2, !dbg !282
  %406 = icmp eq i64 %405, 0, !dbg !282
  br i1 %406, label %407, label %381, !dbg !282, !llvm.loop !291

; <label>:407:                                    ; preds = %381, %380
  %408 = phi float [ undef, %380 ], [ %403, %381 ]
  %409 = phi i64 [ 0, %380 ], [ %404, %381 ]
  %410 = phi float [ 0.000000e+00, %380 ], [ %403, %381 ]
  br i1 %89, label %421, label %411, !dbg !282

; <label>:411:                                    ; preds = %407
  %412 = getelementptr inbounds float, float* %0, i64 %409, !dbg !284
  %413 = load float, float* %412, align 4, !dbg !284, !tbaa !111
  %414 = trunc i64 %409 to i32, !dbg !286
  %415 = sub nsw i32 %377, %414, !dbg !286
  %416 = sext i32 %415 to i64, !dbg !287
  %417 = getelementptr inbounds [20 x float], [20 x float]* %8, i64 0, i64 %416, !dbg !287
  %418 = load float, float* %417, align 4, !dbg !287, !tbaa !111
  %419 = fmul float %413, %418, !dbg !288
  %420 = fadd float %410, %419, !dbg !289
  br label %421, !dbg !293

; <label>:421:                                    ; preds = %411, %407, %369
  %422 = phi float [ 0.000000e+00, %369 ], [ %408, %407 ], [ %420, %411 ], !dbg !294
  %423 = getelementptr inbounds [20 x float], [20 x float]* %10, i64 0, i64 %371, !dbg !293
  store float %422, float* %423, align 4, !dbg !295, !tbaa !111
  %424 = icmp slt i64 %371, %368, !dbg !296
  br i1 %424, label %369, label %135, !dbg !273, !llvm.loop !297

; <label>:425:                                    ; preds = %354, %425
  %426 = phi i64 [ %429, %425 ], [ %137, %354 ]
  %427 = phi i32 [ %428, %425 ], [ %25, %354 ]
  %428 = add nsw i32 %427, -8, !dbg !299
  %429 = add nsw i64 %426, -1, !dbg !299
  %430 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %429, !dbg !303
  %431 = load i32, i32* %430, align 4, !dbg !303, !tbaa !82
  %432 = icmp eq i32 %431, 0, !dbg !304
  br i1 %432, label %425, label %453, !dbg !305, !llvm.loop !306

; <label>:433:                                    ; preds = %258
  %434 = sub nsw i32 0, %25, !dbg !308
  %435 = tail call float @scalbnf(float %261, i32 %434) #5, !dbg !310
  %436 = fcmp ult float %435, 2.560000e+02, !dbg !311
  br i1 %436, label %450, label %437, !dbg !313

; <label>:437:                                    ; preds = %433
  %438 = fmul float %435, 3.906250e-03, !dbg !314
  %439 = fptosi float %438 to i32, !dbg !316
  %440 = sitofp i32 %439 to float, !dbg !317
  %441 = fmul float %440, 2.560000e+02, !dbg !318
  %442 = fsub float %435, %441, !dbg !319
  %443 = fptosi float %442 to i32, !dbg !320
  %444 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %137, !dbg !321
  store i32 %443, i32* %444, align 4, !dbg !322, !tbaa !82
  %445 = add nsw i32 %136, 1, !dbg !323
  %446 = add i32 %23, %2, !dbg !324
  %447 = fptosi float %440 to i32, !dbg !325
  %448 = sext i32 %445 to i64, !dbg !326
  %449 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %448, !dbg !326
  store i32 %447, i32* %449, align 4, !dbg !327, !tbaa !82
  br label %455, !dbg !328

; <label>:450:                                    ; preds = %433
  %451 = fptosi float %435 to i32, !dbg !329
  %452 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %137, !dbg !330
  store i32 %451, i32* %452, align 4, !dbg !331, !tbaa !82
  br label %455

; <label>:453:                                    ; preds = %425
  %454 = trunc i64 %429 to i32, !dbg !332
  br label %455, !dbg !332

; <label>:455:                                    ; preds = %453, %437, %450
  %456 = phi i32 [ %445, %437 ], [ %136, %450 ], [ %454, %453 ], !dbg !195
  %457 = phi i32 [ %446, %437 ], [ %25, %450 ], [ %428, %453 ], !dbg !195
  %458 = tail call float @scalbnf(float 1.000000e+00, i32 %457) #5, !dbg !332
  %459 = icmp sgt i32 %456, -1, !dbg !333
  br i1 %459, label %460, label %497, !dbg !336

; <label>:460:                                    ; preds = %455
  %461 = sext i32 %456 to i64, !dbg !337
  br label %465, !dbg !337

; <label>:462:                                    ; preds = %465
  br i1 %459, label %463, label %497, !dbg !339

; <label>:463:                                    ; preds = %462
  %464 = sext i32 %456 to i64, !dbg !339
  br label %476, !dbg !339

; <label>:465:                                    ; preds = %460, %465
  %466 = phi i64 [ %461, %460 ], [ %474, %465 ]
  %467 = phi float [ %458, %460 ], [ %473, %465 ]
  %468 = getelementptr inbounds [20 x i32], [20 x i32]* %7, i64 0, i64 %466, !dbg !337
  %469 = load i32, i32* %468, align 4, !dbg !337, !tbaa !82
  %470 = sitofp i32 %469 to float, !dbg !341
  %471 = fmul float %467, %470, !dbg !342
  %472 = getelementptr inbounds [20 x float], [20 x float]* %10, i64 0, i64 %466, !dbg !343
  store float %471, float* %472, align 4, !dbg !344, !tbaa !111
  %473 = fmul float %467, 3.906250e-03, !dbg !345
  %474 = add nsw i64 %466, -1, !dbg !346
  %475 = icmp sgt i64 %466, 0, !dbg !333
  br i1 %475, label %465, label %462, !dbg !336, !llvm.loop !347

; <label>:476:                                    ; preds = %493, %463
  %477 = phi i64 [ %464, %463 ], [ %495, %493 ]
  %478 = sub nuw nsw i64 %464, %477, !dbg !349
  br label %479, !dbg !354

; <label>:479:                                    ; preds = %476, %479
  %480 = phi i64 [ 0, %476 ], [ %489, %479 ]
  %481 = phi float [ 0.000000e+00, %476 ], [ %488, %479 ]
  %482 = getelementptr inbounds [11 x float], [11 x float]* @PIo2, i64 0, i64 %480, !dbg !354
  %483 = load float, float* %482, align 4, !dbg !354, !tbaa !111
  %484 = add nsw i64 %480, %477, !dbg !355
  %485 = getelementptr inbounds [20 x float], [20 x float]* %10, i64 0, i64 %484, !dbg !356
  %486 = load float, float* %485, align 4, !dbg !356, !tbaa !111
  %487 = fmul float %483, %486, !dbg !357
  %488 = fadd float %481, %487, !dbg !358
  %489 = add nuw nsw i64 %480, 1, !dbg !359
  %490 = icmp sge i64 %480, %53, !dbg !360
  %491 = icmp uge i64 %480, %478, !dbg !361
  %492 = or i1 %490, %491, !dbg !362
  br i1 %492, label %493, label %479, !dbg !362, !llvm.loop !363

; <label>:493:                                    ; preds = %479
  %494 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 %478, !dbg !366
  store float %488, float* %494, align 4, !dbg !367, !tbaa !111
  %495 = add nsw i64 %477, -1, !dbg !368
  %496 = icmp sgt i64 %477, 0, !dbg !369
  br i1 %496, label %476, label %497, !dbg !339, !llvm.loop !370

; <label>:497:                                    ; preds = %493, %455, %462
  switch i32 %4, label %667 [
    i32 0, label %504
    i32 1, label %520
    i32 2, label %520
    i32 3, label %498
  ], !dbg !372

; <label>:498:                                    ; preds = %497
  %499 = icmp sgt i32 %456, 0, !dbg !373
  br i1 %499, label %500, label %647, !dbg !377

; <label>:500:                                    ; preds = %498
  %501 = sext i32 %456 to i64, !dbg !378
  %502 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 %501
  %503 = load float, float* %502, align 4, !dbg !380, !tbaa !111
  br label %614, !dbg !378

; <label>:504:                                    ; preds = %497
  br i1 %459, label %505, label %515, !dbg !381

; <label>:505:                                    ; preds = %504
  %506 = sext i32 %456 to i64, !dbg !383
  br label %507, !dbg !383

; <label>:507:                                    ; preds = %505, %507
  %508 = phi i64 [ %506, %505 ], [ %513, %507 ]
  %509 = phi float [ 0.000000e+00, %505 ], [ %512, %507 ]
  %510 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 %508, !dbg !383
  %511 = load float, float* %510, align 4, !dbg !383, !tbaa !111
  %512 = fadd float %509, %511, !dbg !385
  %513 = add nsw i64 %508, -1, !dbg !386
  %514 = icmp sgt i64 %508, 0, !dbg !387
  br i1 %514, label %507, label %515, !dbg !381, !llvm.loop !388

; <label>:515:                                    ; preds = %507, %504
  %516 = phi float [ 0.000000e+00, %504 ], [ %512, %507 ], !dbg !390
  %517 = icmp eq i32 %259, 0, !dbg !391
  %518 = fsub float -0.000000e+00, %516, !dbg !392
  %519 = select i1 %517, float %516, float %518, !dbg !393
  store float %519, float* %1, align 4, !dbg !394, !tbaa !111
  br label %667, !dbg !395

; <label>:520:                                    ; preds = %497, %497
  br i1 %459, label %521, label %531, !dbg !396

; <label>:521:                                    ; preds = %520
  %522 = sext i32 %456 to i64, !dbg !398
  br label %523, !dbg !398

; <label>:523:                                    ; preds = %521, %523
  %524 = phi i64 [ %522, %521 ], [ %529, %523 ]
  %525 = phi float [ 0.000000e+00, %521 ], [ %528, %523 ]
  %526 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 %524, !dbg !398
  %527 = load float, float* %526, align 4, !dbg !398, !tbaa !111
  %528 = fadd float %525, %527, !dbg !400
  %529 = add nsw i64 %524, -1, !dbg !401
  %530 = icmp sgt i64 %524, 0, !dbg !402
  br i1 %530, label %523, label %531, !dbg !396, !llvm.loop !403

; <label>:531:                                    ; preds = %523, %520
  %532 = phi float [ 0.000000e+00, %520 ], [ %528, %523 ], !dbg !405
  %533 = icmp eq i32 %259, 0, !dbg !406
  %534 = fsub float -0.000000e+00, %532, !dbg !407
  %535 = select i1 %533, float %532, float %534, !dbg !408
  store float %535, float* %1, align 4, !dbg !409, !tbaa !111
  %536 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 0, !dbg !410
  %537 = load float, float* %536, align 16, !dbg !410, !tbaa !111
  %538 = fsub float %537, %532, !dbg !411
  %539 = icmp slt i32 %456, 1, !dbg !412
  br i1 %539, label %603, label %540, !dbg !415

; <label>:540:                                    ; preds = %531
  %541 = add i32 %456, 1, !dbg !416
  %542 = zext i32 %541 to i64
  %543 = add nsw i64 %542, -2, !dbg !416
  %544 = and i32 %456, 7, !dbg !416
  %545 = zext i32 %544 to i64, !dbg !416
  %546 = icmp ult i64 %543, 7, !dbg !416
  br i1 %546, label %588, label %547, !dbg !416

; <label>:547:                                    ; preds = %540
  %548 = xor i64 %545, -1, !dbg !416
  %549 = add nsw i64 %548, %542, !dbg !416
  br label %550, !dbg !416

; <label>:550:                                    ; preds = %550, %547
  %551 = phi i64 [ 1, %547 ], [ %585, %550 ]
  %552 = phi float [ %538, %547 ], [ %584, %550 ]
  %553 = phi i64 [ %549, %547 ], [ %586, %550 ]
  %554 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 %551, !dbg !416
  %555 = load float, float* %554, align 4, !dbg !416, !tbaa !111
  %556 = fadd float %552, %555, !dbg !417
  %557 = add nuw nsw i64 %551, 1, !dbg !418
  %558 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 %557, !dbg !416
  %559 = load float, float* %558, align 4, !dbg !416, !tbaa !111
  %560 = fadd float %556, %559, !dbg !417
  %561 = add nuw nsw i64 %551, 2, !dbg !418
  %562 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 %561, !dbg !416
  %563 = load float, float* %562, align 4, !dbg !416, !tbaa !111
  %564 = fadd float %560, %563, !dbg !417
  %565 = add nuw nsw i64 %551, 3, !dbg !418
  %566 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 %565, !dbg !416
  %567 = load float, float* %566, align 4, !dbg !416, !tbaa !111
  %568 = fadd float %564, %567, !dbg !417
  %569 = add nuw nsw i64 %551, 4, !dbg !418
  %570 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 %569, !dbg !416
  %571 = load float, float* %570, align 4, !dbg !416, !tbaa !111
  %572 = fadd float %568, %571, !dbg !417
  %573 = add nuw nsw i64 %551, 5, !dbg !418
  %574 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 %573, !dbg !416
  %575 = load float, float* %574, align 4, !dbg !416, !tbaa !111
  %576 = fadd float %572, %575, !dbg !417
  %577 = add nuw nsw i64 %551, 6, !dbg !418
  %578 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 %577, !dbg !416
  %579 = load float, float* %578, align 4, !dbg !416, !tbaa !111
  %580 = fadd float %576, %579, !dbg !417
  %581 = add nuw nsw i64 %551, 7, !dbg !418
  %582 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 %581, !dbg !416
  %583 = load float, float* %582, align 4, !dbg !416, !tbaa !111
  %584 = fadd float %580, %583, !dbg !417
  %585 = add nuw nsw i64 %551, 8, !dbg !418
  %586 = add i64 %553, -8, !dbg !415
  %587 = icmp eq i64 %586, 0, !dbg !415
  br i1 %587, label %588, label %550, !dbg !415, !llvm.loop !419

; <label>:588:                                    ; preds = %550, %540
  %589 = phi float [ undef, %540 ], [ %584, %550 ]
  %590 = phi i64 [ 1, %540 ], [ %585, %550 ]
  %591 = phi float [ %538, %540 ], [ %584, %550 ]
  %592 = icmp eq i32 %544, 0, !dbg !415
  br i1 %592, label %603, label %593, !dbg !415

; <label>:593:                                    ; preds = %588, %593
  %594 = phi i64 [ %600, %593 ], [ %590, %588 ]
  %595 = phi float [ %599, %593 ], [ %591, %588 ]
  %596 = phi i64 [ %601, %593 ], [ %545, %588 ]
  %597 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 %594, !dbg !416
  %598 = load float, float* %597, align 4, !dbg !416, !tbaa !111
  %599 = fadd float %595, %598, !dbg !417
  %600 = add nuw nsw i64 %594, 1, !dbg !418
  %601 = add i64 %596, -1, !dbg !415
  %602 = icmp eq i64 %601, 0, !dbg !415
  br i1 %602, label %603, label %593, !dbg !415, !llvm.loop !421

; <label>:603:                                    ; preds = %588, %593, %531
  %604 = phi float [ %538, %531 ], [ %589, %588 ], [ %599, %593 ], !dbg !423
  %605 = fsub float -0.000000e+00, %604, !dbg !424
  %606 = select i1 %533, float %604, float %605, !dbg !425
  %607 = getelementptr inbounds float, float* %1, i64 1, !dbg !426
  store float %606, float* %607, align 4, !dbg !427, !tbaa !111
  br label %667, !dbg !428

; <label>:608:                                    ; preds = %614
  %609 = icmp sgt i32 %456, 1, !dbg !429
  br i1 %609, label %610, label %647, !dbg !432

; <label>:610:                                    ; preds = %608
  %611 = sext i32 %456 to i64, !dbg !433
  %612 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 %611
  %613 = load float, float* %612, align 4, !dbg !435, !tbaa !111
  br label %628, !dbg !433

; <label>:614:                                    ; preds = %500, %614
  %615 = phi float [ %503, %500 ], [ %621, %614 ], !dbg !380
  %616 = phi i64 [ %501, %500 ], [ %617, %614 ]
  %617 = add nsw i64 %616, -1, !dbg !378
  %618 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 %617, !dbg !436
  %619 = load float, float* %618, align 4, !dbg !436, !tbaa !111
  %620 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 %616, !dbg !380
  %621 = fadd float %619, %615, !dbg !437
  %622 = fsub float %619, %621, !dbg !438
  %623 = fadd float %615, %622, !dbg !439
  store float %623, float* %620, align 4, !dbg !439, !tbaa !111
  store float %621, float* %618, align 4, !dbg !440, !tbaa !111
  %624 = icmp sgt i64 %616, 1, !dbg !373
  br i1 %624, label %614, label %608, !dbg !377, !llvm.loop !441

; <label>:625:                                    ; preds = %628
  br i1 %609, label %626, label %647, !dbg !443

; <label>:626:                                    ; preds = %625
  %627 = sext i32 %456 to i64, !dbg !445
  br label %639, !dbg !445

; <label>:628:                                    ; preds = %610, %628
  %629 = phi float [ %613, %610 ], [ %635, %628 ], !dbg !435
  %630 = phi i64 [ %611, %610 ], [ %631, %628 ]
  %631 = add nsw i64 %630, -1, !dbg !433
  %632 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 %631, !dbg !447
  %633 = load float, float* %632, align 4, !dbg !447, !tbaa !111
  %634 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 %630, !dbg !435
  %635 = fadd float %633, %629, !dbg !448
  %636 = fsub float %633, %635, !dbg !449
  %637 = fadd float %629, %636, !dbg !450
  store float %637, float* %634, align 4, !dbg !450, !tbaa !111
  store float %635, float* %632, align 4, !dbg !451, !tbaa !111
  %638 = icmp sgt i64 %630, 2, !dbg !429
  br i1 %638, label %628, label %625, !dbg !432, !llvm.loop !452

; <label>:639:                                    ; preds = %626, %639
  %640 = phi i64 [ %627, %626 ], [ %645, %639 ]
  %641 = phi float [ 0.000000e+00, %626 ], [ %644, %639 ]
  %642 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 %640, !dbg !445
  %643 = load float, float* %642, align 4, !dbg !445, !tbaa !111
  %644 = fadd float %641, %643, !dbg !454
  %645 = add nsw i64 %640, -1, !dbg !455
  %646 = icmp sgt i64 %640, 2, !dbg !456
  br i1 %646, label %639, label %647, !dbg !443, !llvm.loop !457

; <label>:647:                                    ; preds = %639, %608, %498, %625
  %648 = phi float [ 0.000000e+00, %625 ], [ 0.000000e+00, %498 ], [ 0.000000e+00, %608 ], [ %644, %639 ], !dbg !459
  %649 = icmp eq i32 %259, 0, !dbg !460
  %650 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 0, !dbg !462
  %651 = load float, float* %650, align 16, !dbg !462, !tbaa !111
  br i1 %649, label %652, label %659, !dbg !464

; <label>:652:                                    ; preds = %647
  store float %651, float* %1, align 4, !dbg !465, !tbaa !111
  %653 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 1, !dbg !467
  %654 = bitcast float* %653 to i32*, !dbg !467
  %655 = load i32, i32* %654, align 4, !dbg !467, !tbaa !111
  %656 = getelementptr inbounds float, float* %1, i64 1, !dbg !468
  %657 = bitcast float* %656 to i32*, !dbg !469
  store i32 %655, i32* %657, align 4, !dbg !469, !tbaa !111
  %658 = getelementptr inbounds float, float* %1, i64 2, !dbg !470
  store float %648, float* %658, align 4, !dbg !471, !tbaa !111
  br label %667, !dbg !472

; <label>:659:                                    ; preds = %647
  %660 = fsub float -0.000000e+00, %651, !dbg !473
  store float %660, float* %1, align 4, !dbg !474, !tbaa !111
  %661 = getelementptr inbounds [20 x float], [20 x float]* %9, i64 0, i64 1, !dbg !475
  %662 = load float, float* %661, align 4, !dbg !475, !tbaa !111
  %663 = fsub float -0.000000e+00, %662, !dbg !476
  %664 = getelementptr inbounds float, float* %1, i64 1, !dbg !477
  store float %663, float* %664, align 4, !dbg !478, !tbaa !111
  %665 = fsub float -0.000000e+00, %648, !dbg !479
  %666 = getelementptr inbounds float, float* %1, i64 2, !dbg !480
  store float %665, float* %666, align 4, !dbg !481, !tbaa !111
  br label %667

; <label>:667:                                    ; preds = %652, %659, %497, %603, %515
  %668 = and i32 %260, 7, !dbg !482
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %14) #4, !dbg !483
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %13) #4, !dbg !483
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %12) #4, !dbg !483
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %11) #4, !dbg !483
  ret i32 %668, !dbg !484

; <label>:669:                                    ; preds = %214
  %670 = icmp eq i32 %218, 0, !dbg !210
  br i1 %670, label %675, label %671, !dbg !213

; <label>:671:                                    ; preds = %669, %214
  %672 = phi i32 [ 256, %669 ], [ 255, %214 ]
  %673 = phi i32 [ 1, %669 ], [ %215, %214 ]
  %674 = sub nsw i32 %672, %218, !dbg !214
  store i32 %674, i32* %217, align 4, !dbg !214, !tbaa !82
  br label %675, !dbg !216

; <label>:675:                                    ; preds = %671, %669
  %676 = phi i32 [ 0, %669 ], [ %673, %671 ], !dbg !217
  %677 = add nuw nsw i64 %202, 2, !dbg !216
  %678 = add i64 %204, -2, !dbg !202
  %679 = icmp eq i64 %678, 0, !dbg !202
  br i1 %679, label %220, label %201, !dbg !202, !llvm.loop !485

; <label>:680:                                    ; preds = %68
  %681 = add nsw i64 %61, 1, !dbg !487
  %682 = getelementptr inbounds i32, i32* %5, i64 %681, !dbg !107
  %683 = load i32, i32* %682, align 4, !dbg !107, !tbaa !82
  %684 = sitofp i32 %683 to float, !dbg !108
  br label %685, !dbg !105

; <label>:685:                                    ; preds = %680, %68
  %686 = phi float [ %684, %680 ], [ 0.000000e+00, %68 ], !dbg !105
  %687 = getelementptr inbounds [20 x float], [20 x float]* %8, i64 0, i64 %71, !dbg !109
  store float %686, float* %687, align 4, !dbg !110, !tbaa !111
  %688 = add nuw nsw i64 %60, 2, !dbg !115
  %689 = add nsw i64 %61, 2, !dbg !487
  %690 = add i64 %62, -2, !dbg !103
  %691 = icmp eq i64 %690, 0, !dbg !103
  br i1 %691, label %38, label %59, !dbg !103, !llvm.loop !488
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local float @scalbnf(float, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local float @floorf(float) local_unnamed_addr #3

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
!1 = distinct !DIGlobalVariable(name: "init_jk", scope: !2, file: !3, line: 22, type: !25, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/kf_rem_pio2.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7, !9}
!6 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !8, line: 77, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{!11, !14, !16, !18, !0, !20}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!12 = distinct !DIGlobalVariable(name: "zero", scope: !2, file: !3, line: 50, type: !13, isLocal: true, isDefinition: true)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 998244352, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "twon8", scope: !2, file: !3, line: 53, type: !13, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 1132462080, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "two8", scope: !2, file: !3, line: 52, type: !13, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 1065353216, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !3, line: 51, type: !13, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "PIo2", scope: !2, file: !3, line: 28, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 352, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 11)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 96, elements: !27)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!27 = !{!28}
!28 = !DISubrange(count: 3)
!29 = !{i32 2, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!33 = distinct !DISubprogram(name: "__kernel_rem_pio2f", scope: !3, file: !3, line: 56, type: !34, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !39)
!34 = !DISubroutineType(types: !35)
!35 = !{!9, !36, !36, !9, !9, !9, !37}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !57, !58, !59, !60, !61, !62, !63, !64, !65, !67, !68}
!40 = !DILocalVariable(name: "x", arg: 1, scope: !33, file: !3, line: 56, type: !36)
!41 = !DILocalVariable(name: "y", arg: 2, scope: !33, file: !3, line: 56, type: !36)
!42 = !DILocalVariable(name: "e0", arg: 3, scope: !33, file: !3, line: 56, type: !9)
!43 = !DILocalVariable(name: "nx", arg: 4, scope: !33, file: !3, line: 56, type: !9)
!44 = !DILocalVariable(name: "prec", arg: 5, scope: !33, file: !3, line: 56, type: !9)
!45 = !DILocalVariable(name: "ipio2", arg: 6, scope: !33, file: !3, line: 56, type: !37)
!46 = !DILocalVariable(name: "jz", scope: !33, file: !3, line: 62, type: !7)
!47 = !DILocalVariable(name: "jx", scope: !33, file: !3, line: 62, type: !7)
!48 = !DILocalVariable(name: "jv", scope: !33, file: !3, line: 62, type: !7)
!49 = !DILocalVariable(name: "jp", scope: !33, file: !3, line: 62, type: !7)
!50 = !DILocalVariable(name: "jk", scope: !33, file: !3, line: 62, type: !7)
!51 = !DILocalVariable(name: "carry", scope: !33, file: !3, line: 62, type: !7)
!52 = !DILocalVariable(name: "n", scope: !33, file: !3, line: 62, type: !7)
!53 = !DILocalVariable(name: "iq", scope: !33, file: !3, line: 62, type: !54)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 640, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 20)
!57 = !DILocalVariable(name: "i", scope: !33, file: !3, line: 62, type: !7)
!58 = !DILocalVariable(name: "j", scope: !33, file: !3, line: 62, type: !7)
!59 = !DILocalVariable(name: "k", scope: !33, file: !3, line: 62, type: !7)
!60 = !DILocalVariable(name: "m", scope: !33, file: !3, line: 62, type: !7)
!61 = !DILocalVariable(name: "q0", scope: !33, file: !3, line: 62, type: !7)
!62 = !DILocalVariable(name: "ih", scope: !33, file: !3, line: 62, type: !7)
!63 = !DILocalVariable(name: "z", scope: !33, file: !3, line: 63, type: !6)
!64 = !DILocalVariable(name: "fw", scope: !33, file: !3, line: 63, type: !6)
!65 = !DILocalVariable(name: "f", scope: !33, file: !3, line: 63, type: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !55)
!67 = !DILocalVariable(name: "fq", scope: !33, file: !3, line: 63, type: !66)
!68 = !DILocalVariable(name: "q", scope: !33, file: !3, line: 63, type: !66)
!69 = !DILocation(line: 56, column: 32, scope: !33)
!70 = !DILocation(line: 56, column: 42, scope: !33)
!71 = !DILocation(line: 56, column: 49, scope: !33)
!72 = !DILocation(line: 56, column: 57, scope: !33)
!73 = !DILocation(line: 56, column: 65, scope: !33)
!74 = !DILocation(line: 56, column: 88, scope: !33)
!75 = !DILocation(line: 62, column: 2, scope: !33)
!76 = !DILocation(line: 62, column: 35, scope: !33)
!77 = !DILocation(line: 63, column: 2, scope: !33)
!78 = !DILocation(line: 63, column: 13, scope: !33)
!79 = !DILocation(line: 63, column: 19, scope: !33)
!80 = !DILocation(line: 63, column: 26, scope: !33)
!81 = !DILocation(line: 66, column: 7, scope: !33)
!82 = !{!83, !83, i64 0}
!83 = !{!"int", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C/C++ TBAA"}
!86 = !DILocation(line: 62, column: 24, scope: !33)
!87 = !DILocation(line: 62, column: 21, scope: !33)
!88 = !DILocation(line: 70, column: 10, scope: !33)
!89 = !DILocation(line: 62, column: 15, scope: !33)
!90 = !DILocation(line: 71, column: 10, scope: !33)
!91 = !DILocation(line: 71, column: 13, scope: !33)
!92 = !DILocation(line: 62, column: 18, scope: !33)
!93 = !DILocation(line: 71, column: 20, scope: !33)
!94 = !DILocation(line: 72, column: 12, scope: !33)
!95 = !DILocation(line: 72, column: 10, scope: !33)
!96 = !DILocation(line: 62, column: 50, scope: !33)
!97 = !DILocation(line: 75, column: 19, scope: !33)
!98 = !DILocation(line: 62, column: 48, scope: !33)
!99 = !DILocation(line: 62, column: 42, scope: !33)
!100 = !DILocation(line: 76, column: 11, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !3, line: 76, column: 2)
!102 = distinct !DILexicalBlock(scope: !33, file: !3, line: 76, column: 2)
!103 = !DILocation(line: 76, column: 2, scope: !102)
!104 = !DILocation(line: 76, column: 33, scope: !101)
!105 = !DILocation(line: 76, column: 31, scope: !101)
!106 = !DILocation(line: 62, column: 44, scope: !33)
!107 = !DILocation(line: 76, column: 53, scope: !101)
!108 = !DILocation(line: 76, column: 45, scope: !101)
!109 = !DILocation(line: 76, column: 24, scope: !101)
!110 = !DILocation(line: 76, column: 29, scope: !101)
!111 = !{!112, !112, i64 0}
!112 = !{!"float", !84, i64 0}
!113 = !DILocation(line: 79, column: 2, scope: !114)
!114 = distinct !DILexicalBlock(scope: !33, file: !3, line: 79, column: 2)
!115 = !DILocation(line: 76, column: 16, scope: !101)
!116 = !DILocation(line: 63, column: 10, scope: !33)
!117 = !DILocation(line: 80, column: 6, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !3, line: 80, column: 6)
!119 = distinct !DILexicalBlock(scope: !120, file: !3, line: 79, column: 22)
!120 = distinct !DILexicalBlock(scope: !114, file: !3, line: 79, column: 2)
!121 = !DILocation(line: 86, column: 17, scope: !122)
!122 = distinct !DILexicalBlock(scope: !33, file: !3, line: 86, column: 2)
!123 = !DILocation(line: 80, column: 38, scope: !124)
!124 = distinct !DILexicalBlock(scope: !118, file: !3, line: 80, column: 6)
!125 = !DILocation(line: 80, column: 49, scope: !124)
!126 = !DILocation(line: 80, column: 43, scope: !124)
!127 = !DILocation(line: 80, column: 42, scope: !124)
!128 = !DILocation(line: 80, column: 35, scope: !124)
!129 = !DILocation(line: 80, column: 28, scope: !124)
!130 = distinct !{!130, !117, !131}
!131 = !DILocation(line: 80, column: 51, scope: !118)
!132 = !DILocation(line: 80, column: 54, scope: !119)
!133 = !DILocation(line: 0, scope: !124)
!134 = !DILocation(line: 80, column: 59, scope: !119)
!135 = !DILocation(line: 79, column: 18, scope: !120)
!136 = !DILocation(line: 79, column: 12, scope: !120)
!137 = distinct !{!137, !113, !138}
!138 = !DILocation(line: 81, column: 2, scope: !114)
!139 = !DILocation(line: 0, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !3, line: 134, column: 15)
!141 = distinct !DILexicalBlock(scope: !142, file: !3, line: 134, column: 9)
!142 = distinct !DILexicalBlock(scope: !143, file: !3, line: 131, column: 14)
!143 = distinct !DILexicalBlock(scope: !33, file: !3, line: 131, column: 5)
!144 = !DILocation(line: 62, column: 12, scope: !33)
!145 = !DILocation(line: 63, column: 8, scope: !33)
!146 = !DILocation(line: 86, column: 24, scope: !147)
!147 = distinct !DILexicalBlock(scope: !122, file: !3, line: 86, column: 2)
!148 = !DILocation(line: 86, column: 2, scope: !122)
!149 = !DILocation(line: 87, column: 40, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !3, line: 86, column: 36)
!151 = !DILocation(line: 87, column: 23, scope: !150)
!152 = !DILocation(line: 87, column: 15, scope: !150)
!153 = !DILocation(line: 88, column: 33, scope: !150)
!154 = !DILocation(line: 88, column: 28, scope: !150)
!155 = !DILocation(line: 88, column: 15, scope: !150)
!156 = !DILocation(line: 88, column: 6, scope: !150)
!157 = !DILocation(line: 88, column: 12, scope: !150)
!158 = !DILocation(line: 89, column: 18, scope: !150)
!159 = !DILocation(line: 89, column: 15, scope: !150)
!160 = !DILocation(line: 89, column: 21, scope: !150)
!161 = !DILocation(line: 86, column: 28, scope: !147)
!162 = distinct !{!162, !148, !163}
!163 = !DILocation(line: 90, column: 2, scope: !122)
!164 = !DILocation(line: 0, scope: !150)
!165 = !DILocation(line: 93, column: 7, scope: !33)
!166 = !DILocation(line: 94, column: 26, scope: !33)
!167 = !DILocation(line: 94, column: 18, scope: !33)
!168 = !DILocation(line: 94, column: 17, scope: !33)
!169 = !DILocation(line: 94, column: 4, scope: !33)
!170 = !DILocation(line: 95, column: 7, scope: !33)
!171 = !DILocation(line: 62, column: 33, scope: !33)
!172 = !DILocation(line: 96, column: 7, scope: !33)
!173 = !DILocation(line: 96, column: 4, scope: !33)
!174 = !DILocation(line: 62, column: 53, scope: !33)
!175 = !DILocation(line: 98, column: 5, scope: !33)
!176 = !DILocation(line: 99, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !3, line: 98, column: 11)
!178 = distinct !DILexicalBlock(scope: !33, file: !3, line: 98, column: 5)
!179 = !DILocation(line: 99, column: 12, scope: !177)
!180 = !DILocation(line: 99, column: 20, scope: !177)
!181 = !DILocation(line: 99, column: 33, scope: !177)
!182 = !DILocation(line: 100, column: 19, scope: !177)
!183 = !DILocation(line: 100, column: 15, scope: !177)
!184 = !DILocation(line: 101, column: 19, scope: !177)
!185 = !DILocation(line: 102, column: 2, scope: !177)
!186 = !DILocation(line: 103, column: 10, scope: !178)
!187 = !DILocation(line: 103, column: 27, scope: !188)
!188 = distinct !DILexicalBlock(scope: !178, file: !3, line: 103, column: 10)
!189 = !DILocation(line: 103, column: 22, scope: !188)
!190 = !DILocation(line: 103, column: 30, scope: !188)
!191 = !DILocation(line: 103, column: 17, scope: !188)
!192 = !DILocation(line: 104, column: 11, scope: !193)
!193 = distinct !DILexicalBlock(scope: !188, file: !3, line: 104, column: 10)
!194 = !DILocation(line: 104, column: 10, scope: !188)
!195 = !DILocation(line: 0, scope: !33)
!196 = !DILocation(line: 106, column: 7, scope: !197)
!197 = distinct !DILexicalBlock(scope: !33, file: !3, line: 106, column: 5)
!198 = !DILocation(line: 106, column: 5, scope: !33)
!199 = !DILocation(line: 107, column: 8, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !3, line: 106, column: 11)
!201 = !DILocation(line: 62, column: 27, scope: !33)
!202 = !DILocation(line: 108, column: 6, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !3, line: 108, column: 6)
!204 = !DILocation(line: 109, column: 7, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 108, column: 25)
!206 = distinct !DILexicalBlock(scope: !203, file: !3, line: 108, column: 6)
!207 = !DILocation(line: 110, column: 11, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !3, line: 110, column: 6)
!209 = !DILocation(line: 110, column: 6, scope: !205)
!210 = !DILocation(line: 111, column: 11, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !3, line: 111, column: 10)
!212 = distinct !DILexicalBlock(scope: !208, file: !3, line: 110, column: 16)
!213 = !DILocation(line: 111, column: 10, scope: !212)
!214 = !DILocation(line: 0, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !3, line: 111, column: 16)
!216 = !DILocation(line: 108, column: 21, scope: !206)
!217 = !DILocation(line: 0, scope: !200)
!218 = !DILocation(line: 116, column: 9, scope: !200)
!219 = !DILocation(line: 117, column: 10, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !3, line: 116, column: 15)
!221 = distinct !DILexicalBlock(scope: !200, file: !3, line: 116, column: 9)
!222 = !DILocation(line: 119, column: 15, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !3, line: 117, column: 21)
!224 = !DILocation(line: 119, column: 10, scope: !223)
!225 = !DILocation(line: 119, column: 19, scope: !223)
!226 = !DILocation(line: 119, column: 28, scope: !223)
!227 = !DILocation(line: 121, column: 15, scope: !223)
!228 = !DILocation(line: 121, column: 10, scope: !223)
!229 = !DILocation(line: 121, column: 19, scope: !223)
!230 = !DILocation(line: 121, column: 28, scope: !223)
!231 = !DILocation(line: 124, column: 11, scope: !232)
!232 = distinct !DILexicalBlock(scope: !200, file: !3, line: 124, column: 9)
!233 = !DILocation(line: 124, column: 9, scope: !200)
!234 = !DILocation(line: 125, column: 11, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !3, line: 124, column: 16)
!236 = !DILocation(line: 126, column: 11, scope: !237)
!237 = distinct !DILexicalBlock(scope: !235, file: !3, line: 126, column: 6)
!238 = !DILocation(line: 126, column: 6, scope: !235)
!239 = !DILocation(line: 126, column: 21, scope: !237)
!240 = !DILocation(line: 126, column: 18, scope: !237)
!241 = !DILocation(line: 126, column: 16, scope: !237)
!242 = !DILocation(line: 0, scope: !177)
!243 = !DILocation(line: 131, column: 6, scope: !143)
!244 = !DILocation(line: 131, column: 5, scope: !33)
!245 = !DILocation(line: 133, column: 19, scope: !246)
!246 = distinct !DILexicalBlock(scope: !247, file: !3, line: 133, column: 6)
!247 = distinct !DILexicalBlock(scope: !142, file: !3, line: 133, column: 6)
!248 = !DILocation(line: 133, column: 6, scope: !247)
!249 = !DILocation(line: 0, scope: !246)
!250 = !DILocation(line: 133, column: 34, scope: !246)
!251 = !DILocation(line: 133, column: 31, scope: !246)
!252 = distinct !{!252, !248, !253, !254}
!253 = !DILocation(line: 133, column: 38, scope: !247)
!254 = !{!"llvm.loop.isvectorized", i32 1}
!255 = distinct !{!255, !248, !253, !256, !254}
!256 = !{!"llvm.loop.unroll.runtime.disable"}
!257 = !DILocation(line: 134, column: 10, scope: !141)
!258 = !DILocation(line: 134, column: 9, scope: !142)
!259 = !DILocation(line: 135, column: 16, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !3, line: 135, column: 3)
!261 = distinct !DILexicalBlock(scope: !140, file: !3, line: 135, column: 3)
!262 = !DILocation(line: 0, scope: !260)
!263 = !DILocation(line: 62, column: 46, scope: !33)
!264 = !DILocation(line: 135, column: 11, scope: !260)
!265 = !DILocation(line: 135, column: 19, scope: !260)
!266 = !DILocation(line: 135, column: 24, scope: !260)
!267 = !DILocation(line: 135, column: 3, scope: !261)
!268 = distinct !{!268, !267, !269}
!269 = !DILocation(line: 135, column: 27, scope: !261)
!270 = !DILocation(line: 137, column: 19, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !3, line: 137, column: 3)
!272 = distinct !DILexicalBlock(scope: !140, file: !3, line: 137, column: 3)
!273 = !DILocation(line: 137, column: 3, scope: !272)
!274 = !DILocation(line: 0, scope: !271)
!275 = !DILocation(line: 138, column: 33, scope: !276)
!276 = distinct !DILexicalBlock(scope: !271, file: !3, line: 137, column: 27)
!277 = !DILocation(line: 138, column: 25, scope: !276)
!278 = !DILocation(line: 138, column: 17, scope: !276)
!279 = !DILocation(line: 138, column: 11, scope: !276)
!280 = !DILocation(line: 138, column: 7, scope: !276)
!281 = !DILocation(line: 138, column: 15, scope: !276)
!282 = !DILocation(line: 139, column: 7, scope: !283)
!283 = distinct !DILexicalBlock(scope: !276, file: !3, line: 139, column: 7)
!284 = !DILocation(line: 139, column: 39, scope: !285)
!285 = distinct !DILexicalBlock(scope: !283, file: !3, line: 139, column: 7)
!286 = !DILocation(line: 139, column: 50, scope: !285)
!287 = !DILocation(line: 139, column: 44, scope: !285)
!288 = !DILocation(line: 139, column: 43, scope: !285)
!289 = !DILocation(line: 139, column: 36, scope: !285)
!290 = !DILocation(line: 139, column: 29, scope: !285)
!291 = distinct !{!291, !282, !292}
!292 = !DILocation(line: 139, column: 52, scope: !283)
!293 = !DILocation(line: 140, column: 7, scope: !276)
!294 = !DILocation(line: 0, scope: !285)
!295 = !DILocation(line: 140, column: 12, scope: !276)
!296 = !DILocation(line: 137, column: 15, scope: !271)
!297 = distinct !{!297, !273, !298}
!298 = !DILocation(line: 141, column: 3, scope: !272)
!299 = !DILocation(line: 0, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !3, line: 150, column: 23)
!301 = distinct !DILexicalBlock(scope: !302, file: !3, line: 148, column: 20)
!302 = distinct !DILexicalBlock(scope: !33, file: !3, line: 148, column: 5)
!303 = !DILocation(line: 150, column: 12, scope: !301)
!304 = !DILocation(line: 150, column: 18, scope: !301)
!305 = !DILocation(line: 150, column: 6, scope: !301)
!306 = distinct !{!306, !305, !307}
!307 = !DILocation(line: 150, column: 37, scope: !301)
!308 = !DILocation(line: 152, column: 20, scope: !309)
!309 = distinct !DILexicalBlock(scope: !302, file: !3, line: 151, column: 9)
!310 = !DILocation(line: 152, column: 10, scope: !309)
!311 = !DILocation(line: 153, column: 10, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !3, line: 153, column: 9)
!313 = !DILocation(line: 153, column: 9, scope: !309)
!314 = !DILocation(line: 154, column: 33, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !3, line: 153, column: 18)
!316 = !DILocation(line: 154, column: 16, scope: !315)
!317 = !DILocation(line: 154, column: 8, scope: !315)
!318 = !DILocation(line: 155, column: 30, scope: !315)
!319 = !DILocation(line: 155, column: 25, scope: !315)
!320 = !DILocation(line: 155, column: 12, scope: !315)
!321 = !DILocation(line: 155, column: 3, scope: !315)
!322 = !DILocation(line: 155, column: 10, scope: !315)
!323 = !DILocation(line: 156, column: 6, scope: !315)
!324 = !DILocation(line: 156, column: 15, scope: !315)
!325 = !DILocation(line: 157, column: 12, scope: !315)
!326 = !DILocation(line: 157, column: 3, scope: !315)
!327 = !DILocation(line: 157, column: 10, scope: !315)
!328 = !DILocation(line: 158, column: 6, scope: !315)
!329 = !DILocation(line: 158, column: 22, scope: !312)
!330 = !DILocation(line: 158, column: 13, scope: !312)
!331 = !DILocation(line: 158, column: 20, scope: !312)
!332 = !DILocation(line: 162, column: 7, scope: !33)
!333 = !DILocation(line: 163, column: 12, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !3, line: 163, column: 2)
!335 = distinct !DILexicalBlock(scope: !33, file: !3, line: 163, column: 2)
!336 = !DILocation(line: 163, column: 2, scope: !335)
!337 = !DILocation(line: 164, column: 23, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !3, line: 163, column: 21)
!339 = !DILocation(line: 168, column: 2, scope: !340)
!340 = distinct !DILexicalBlock(scope: !33, file: !3, line: 168, column: 2)
!341 = !DILocation(line: 164, column: 16, scope: !338)
!342 = !DILocation(line: 164, column: 15, scope: !338)
!343 = !DILocation(line: 164, column: 6, scope: !338)
!344 = !DILocation(line: 164, column: 11, scope: !338)
!345 = !DILocation(line: 164, column: 32, scope: !338)
!346 = !DILocation(line: 163, column: 17, scope: !334)
!347 = distinct !{!347, !336, !348}
!348 = !DILocation(line: 165, column: 2, scope: !335)
!349 = !DILocation(line: 169, column: 33, scope: !350)
!350 = distinct !DILexicalBlock(scope: !351, file: !3, line: 169, column: 6)
!351 = distinct !DILexicalBlock(scope: !352, file: !3, line: 169, column: 6)
!352 = distinct !DILexicalBlock(scope: !353, file: !3, line: 168, column: 21)
!353 = distinct !DILexicalBlock(scope: !340, file: !3, line: 168, column: 2)
!354 = !DILocation(line: 169, column: 47, scope: !350)
!355 = !DILocation(line: 169, column: 58, scope: !350)
!356 = !DILocation(line: 169, column: 55, scope: !350)
!357 = !DILocation(line: 169, column: 54, scope: !350)
!358 = !DILocation(line: 169, column: 44, scope: !350)
!359 = !DILocation(line: 169, column: 37, scope: !350)
!360 = !DILocation(line: 169, column: 22, scope: !350)
!361 = !DILocation(line: 169, column: 29, scope: !350)
!362 = !DILocation(line: 169, column: 26, scope: !350)
!363 = distinct !{!363, !364, !365}
!364 = !DILocation(line: 169, column: 6, scope: !351)
!365 = !DILocation(line: 169, column: 60, scope: !351)
!366 = !DILocation(line: 170, column: 6, scope: !352)
!367 = !DILocation(line: 170, column: 15, scope: !352)
!368 = !DILocation(line: 168, column: 17, scope: !353)
!369 = !DILocation(line: 168, column: 12, scope: !353)
!370 = distinct !{!370, !339, !371}
!371 = !DILocation(line: 171, column: 2, scope: !340)
!372 = !DILocation(line: 174, column: 2, scope: !33)
!373 = !DILocation(line: 190, column: 14, scope: !374)
!374 = distinct !DILexicalBlock(scope: !375, file: !3, line: 190, column: 3)
!375 = distinct !DILexicalBlock(scope: !376, file: !3, line: 190, column: 3)
!376 = distinct !DILexicalBlock(scope: !33, file: !3, line: 174, column: 15)
!377 = !DILocation(line: 190, column: 3, scope: !375)
!378 = !DILocation(line: 191, column: 21, scope: !379)
!379 = distinct !DILexicalBlock(scope: !374, file: !3, line: 190, column: 22)
!380 = !DILocation(line: 191, column: 25, scope: !379)
!381 = !DILocation(line: 177, column: 3, scope: !382)
!382 = distinct !DILexicalBlock(scope: !376, file: !3, line: 177, column: 3)
!383 = !DILocation(line: 177, column: 29, scope: !384)
!384 = distinct !DILexicalBlock(scope: !382, file: !3, line: 177, column: 3)
!385 = !DILocation(line: 177, column: 26, scope: !384)
!386 = !DILocation(line: 177, column: 19, scope: !384)
!387 = !DILocation(line: 177, column: 14, scope: !384)
!388 = distinct !{!388, !381, !389}
!389 = !DILocation(line: 177, column: 33, scope: !382)
!390 = !DILocation(line: 0, scope: !384)
!391 = !DILocation(line: 178, column: 13, scope: !376)
!392 = !DILocation(line: 178, column: 23, scope: !376)
!393 = !DILocation(line: 178, column: 10, scope: !376)
!394 = !DILocation(line: 178, column: 8, scope: !376)
!395 = !DILocation(line: 179, column: 3, scope: !376)
!396 = !DILocation(line: 183, column: 3, scope: !397)
!397 = distinct !DILexicalBlock(scope: !376, file: !3, line: 183, column: 3)
!398 = !DILocation(line: 183, column: 29, scope: !399)
!399 = distinct !DILexicalBlock(scope: !397, file: !3, line: 183, column: 3)
!400 = !DILocation(line: 183, column: 26, scope: !399)
!401 = !DILocation(line: 183, column: 19, scope: !399)
!402 = !DILocation(line: 183, column: 14, scope: !399)
!403 = distinct !{!403, !396, !404}
!404 = !DILocation(line: 183, column: 33, scope: !397)
!405 = !DILocation(line: 0, scope: !399)
!406 = !DILocation(line: 184, column: 13, scope: !376)
!407 = !DILocation(line: 184, column: 23, scope: !376)
!408 = !DILocation(line: 184, column: 10, scope: !376)
!409 = !DILocation(line: 184, column: 8, scope: !376)
!410 = !DILocation(line: 185, column: 8, scope: !376)
!411 = !DILocation(line: 185, column: 13, scope: !376)
!412 = !DILocation(line: 186, column: 13, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !3, line: 186, column: 3)
!414 = distinct !DILexicalBlock(scope: !376, file: !3, line: 186, column: 3)
!415 = !DILocation(line: 186, column: 3, scope: !414)
!416 = !DILocation(line: 186, column: 29, scope: !413)
!417 = !DILocation(line: 186, column: 26, scope: !413)
!418 = !DILocation(line: 186, column: 19, scope: !413)
!419 = distinct !{!419, !415, !420}
!420 = !DILocation(line: 186, column: 33, scope: !414)
!421 = distinct !{!421, !422}
!422 = !{!"llvm.loop.unroll.disable"}
!423 = !DILocation(line: 0, scope: !413)
!424 = !DILocation(line: 187, column: 23, scope: !376)
!425 = !DILocation(line: 187, column: 10, scope: !376)
!426 = !DILocation(line: 187, column: 3, scope: !376)
!427 = !DILocation(line: 187, column: 8, scope: !376)
!428 = !DILocation(line: 188, column: 3, scope: !376)
!429 = !DILocation(line: 195, column: 14, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !3, line: 195, column: 3)
!431 = distinct !DILexicalBlock(scope: !376, file: !3, line: 195, column: 3)
!432 = !DILocation(line: 195, column: 3, scope: !431)
!433 = !DILocation(line: 196, column: 21, scope: !434)
!434 = distinct !DILexicalBlock(scope: !430, file: !3, line: 195, column: 22)
!435 = !DILocation(line: 196, column: 25, scope: !434)
!436 = !DILocation(line: 191, column: 17, scope: !379)
!437 = !DILocation(line: 191, column: 24, scope: !379)
!438 = !DILocation(line: 192, column: 24, scope: !379)
!439 = !DILocation(line: 192, column: 14, scope: !379)
!440 = !DILocation(line: 193, column: 15, scope: !379)
!441 = distinct !{!441, !377, !442}
!442 = !DILocation(line: 194, column: 3, scope: !375)
!443 = !DILocation(line: 200, column: 3, scope: !444)
!444 = distinct !DILexicalBlock(scope: !376, file: !3, line: 200, column: 3)
!445 = !DILocation(line: 200, column: 36, scope: !446)
!446 = distinct !DILexicalBlock(scope: !444, file: !3, line: 200, column: 3)
!447 = !DILocation(line: 196, column: 17, scope: !434)
!448 = !DILocation(line: 196, column: 24, scope: !434)
!449 = !DILocation(line: 197, column: 24, scope: !434)
!450 = !DILocation(line: 197, column: 14, scope: !434)
!451 = !DILocation(line: 198, column: 15, scope: !434)
!452 = distinct !{!452, !432, !453}
!453 = !DILocation(line: 199, column: 3, scope: !431)
!454 = !DILocation(line: 200, column: 33, scope: !446)
!455 = !DILocation(line: 200, column: 26, scope: !446)
!456 = !DILocation(line: 200, column: 21, scope: !446)
!457 = distinct !{!457, !443, !458}
!458 = !DILocation(line: 200, column: 40, scope: !444)
!459 = !DILocation(line: 0, scope: !446)
!460 = !DILocation(line: 201, column: 8, scope: !461)
!461 = distinct !DILexicalBlock(scope: !376, file: !3, line: 201, column: 6)
!462 = !DILocation(line: 0, scope: !463)
!463 = distinct !DILexicalBlock(scope: !461, file: !3, line: 203, column: 10)
!464 = !DILocation(line: 201, column: 6, scope: !376)
!465 = !DILocation(line: 202, column: 12, scope: !466)
!466 = distinct !DILexicalBlock(scope: !461, file: !3, line: 201, column: 13)
!467 = !DILocation(line: 202, column: 30, scope: !466)
!468 = !DILocation(line: 202, column: 22, scope: !466)
!469 = !DILocation(line: 202, column: 27, scope: !466)
!470 = !DILocation(line: 202, column: 37, scope: !466)
!471 = !DILocation(line: 202, column: 42, scope: !466)
!472 = !DILocation(line: 203, column: 3, scope: !466)
!473 = !DILocation(line: 204, column: 14, scope: !463)
!474 = !DILocation(line: 204, column: 12, scope: !463)
!475 = !DILocation(line: 204, column: 30, scope: !463)
!476 = !DILocation(line: 204, column: 29, scope: !463)
!477 = !DILocation(line: 204, column: 22, scope: !463)
!478 = !DILocation(line: 204, column: 27, scope: !463)
!479 = !DILocation(line: 204, column: 44, scope: !463)
!480 = !DILocation(line: 204, column: 37, scope: !463)
!481 = !DILocation(line: 204, column: 42, scope: !463)
!482 = !DILocation(line: 207, column: 10, scope: !33)
!483 = !DILocation(line: 208, column: 1, scope: !33)
!484 = !DILocation(line: 207, column: 2, scope: !33)
!485 = distinct !{!485, !202, !486}
!486 = !DILocation(line: 115, column: 6, scope: !203)
!487 = !DILocation(line: 76, column: 20, scope: !101)
!488 = distinct !{!488, !103, !489}
!489 = !DILocation(line: 76, column: 60, scope: !102)
