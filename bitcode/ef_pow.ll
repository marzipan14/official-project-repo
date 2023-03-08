; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_pow.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_pow.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@bp = internal unnamed_addr constant [2 x float] [float 1.000000e+00, float 1.500000e+00], align 4, !dbg !0
@dp_l = internal unnamed_addr constant [2 x float] [float 0.000000e+00, float 0x3EBA39FB80000000], align 4, !dbg !67
@dp_h = internal unnamed_addr constant [2 x float] [float 0.000000e+00, float 0x3FE2B80000000000], align 4, !dbg !72
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @__ieee754_powf(float, float) local_unnamed_addr #0 !dbg !78 {
  %3 = bitcast float %0 to i32, !dbg !177
  %4 = bitcast float %1 to i32, !dbg !179
  %5 = and i32 %3, 2147483647, !dbg !181
  %6 = and i32 %4, 2147483647, !dbg !183
  %7 = icmp eq i32 %6, 0, !dbg !185
  br i1 %7, label %330, label %8, !dbg !187

; <label>:8:                                      ; preds = %2
  %9 = icmp ugt i32 %5, 2139095040, !dbg !188
  %10 = icmp ugt i32 %6, 2139095040, !dbg !190
  %11 = or i1 %9, %10, !dbg !191
  br i1 %11, label %12, label %16, !dbg !191

; <label>:12:                                     ; preds = %8
  %13 = icmp eq i32 %5, 1065353216, !dbg !192
  br i1 %13, label %330, label %14, !dbg !195

; <label>:14:                                     ; preds = %12
  %15 = tail call float @nanf(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #3, !dbg !196
  br label %330, !dbg !197

; <label>:16:                                     ; preds = %8
  %17 = icmp slt i32 %3, 0, !dbg !199
  br i1 %17, label %18, label %31, !dbg !201

; <label>:18:                                     ; preds = %16
  %19 = icmp ugt i32 %6, 1266679807, !dbg !202
  br i1 %19, label %31, label %20, !dbg !205

; <label>:20:                                     ; preds = %18
  %21 = icmp ugt i32 %6, 1065353215, !dbg !206
  br i1 %21, label %22, label %31, !dbg !208

; <label>:22:                                     ; preds = %20
  %23 = lshr i32 %6, 23, !dbg !209
  %24 = sub nsw i32 150, %23, !dbg !212
  %25 = lshr i32 %6, %24, !dbg !213
  %26 = shl i32 %25, %24, !dbg !215
  %27 = icmp eq i32 %26, %6, !dbg !217
  br i1 %27, label %28, label %31, !dbg !218

; <label>:28:                                     ; preds = %22
  %29 = and i32 %25, 1, !dbg !219
  %30 = sub nsw i32 2, %29, !dbg !220
  br label %31, !dbg !221

; <label>:31:                                     ; preds = %18, %22, %28, %20, %16
  %32 = phi i32 [ %30, %28 ], [ 0, %22 ], [ 0, %20 ], [ 0, %16 ], [ 2, %18 ], !dbg !222
  %33 = trunc i32 %4 to i31, !dbg !223
  switch i31 %33, label %49 [
    i31 -8388608, label %34
    i31 1065353216, label %45
  ], !dbg !223

; <label>:34:                                     ; preds = %31
  %35 = icmp eq i32 %5, 1065353216, !dbg !224
  br i1 %35, label %330, label %36, !dbg !228

; <label>:36:                                     ; preds = %34
  %37 = icmp ugt i32 %5, 1065353216, !dbg !229
  br i1 %37, label %38, label %41, !dbg !231

; <label>:38:                                     ; preds = %36
  %39 = icmp sgt i32 %4, -1, !dbg !232
  %40 = select i1 %39, float %1, float 0.000000e+00, !dbg !233
  br label %330, !dbg !234

; <label>:41:                                     ; preds = %36
  %42 = icmp slt i32 %4, 0, !dbg !235
  %43 = fsub float -0.000000e+00, %1, !dbg !236
  %44 = select i1 %42, float %43, float 0.000000e+00, !dbg !237
  br label %330, !dbg !238

; <label>:45:                                     ; preds = %31
  %46 = icmp slt i32 %4, 0, !dbg !239
  br i1 %46, label %47, label %330, !dbg !243

; <label>:47:                                     ; preds = %45
  %48 = fdiv float 1.000000e+00, %0, !dbg !244
  br label %330, !dbg !245

; <label>:49:                                     ; preds = %31
  %50 = icmp eq i32 %4, 1073741824, !dbg !246
  br i1 %50, label %51, label %53, !dbg !248

; <label>:51:                                     ; preds = %49
  %52 = fmul float %0, %0, !dbg !249
  br label %330, !dbg !250

; <label>:53:                                     ; preds = %49
  %54 = icmp eq i32 %4, 1056964608, !dbg !251
  %55 = icmp sgt i32 %3, -1, !dbg !253
  %56 = and i1 %55, %54, !dbg !256
  br i1 %56, label %57, label %59, !dbg !256

; <label>:57:                                     ; preds = %53
  %58 = tail call float @__ieee754_sqrtf(float %0) #3, !dbg !257
  br label %330, !dbg !258

; <label>:59:                                     ; preds = %53
  %60 = tail call float @fabsf(float %0) #3, !dbg !259
  %61 = icmp eq i32 %5, 0, !dbg !261
  %62 = or i32 %5, 1073741824, !dbg !263
  %63 = icmp eq i32 %62, 2139095040, !dbg !263
  %64 = or i1 %61, %63, !dbg !263
  br i1 %64, label %65, label %80, !dbg !263

; <label>:65:                                     ; preds = %59
  %66 = icmp slt i32 %4, 0, !dbg !265
  %67 = fdiv float 1.000000e+00, %60, !dbg !268
  %68 = select i1 %66, float %67, float %60, !dbg !269
  br i1 %17, label %69, label %330, !dbg !270

; <label>:69:                                     ; preds = %65
  %70 = add nsw i32 %5, -1065353216, !dbg !271
  %71 = or i32 %32, %70, !dbg !275
  %72 = icmp eq i32 %71, 0, !dbg !276
  br i1 %72, label %73, label %76, !dbg !277

; <label>:73:                                     ; preds = %69
  %74 = fsub float %68, %68, !dbg !278
  %75 = fdiv float %74, %74, !dbg !280
  br label %330, !dbg !281

; <label>:76:                                     ; preds = %69
  %77 = icmp eq i32 %32, 1, !dbg !282
  %78 = fsub float -0.000000e+00, %68, !dbg !284
  %79 = select i1 %77, float %78, float %68, !dbg !285
  br label %330, !dbg !285

; <label>:80:                                     ; preds = %59
  %81 = lshr i32 %3, 31, !dbg !286
  %82 = add nsw i32 %81, -1, !dbg !288
  %83 = or i32 %32, %82, !dbg !289
  %84 = icmp eq i32 %83, 0, !dbg !290
  br i1 %84, label %85, label %88, !dbg !291

; <label>:85:                                     ; preds = %80
  %86 = fsub float %0, %0, !dbg !292
  %87 = fdiv float %86, %86, !dbg !293
  br label %330, !dbg !294

; <label>:88:                                     ; preds = %80
  %89 = icmp ugt i32 %6, 1291845632, !dbg !295
  br i1 %89, label %90, label %117, !dbg !296

; <label>:90:                                     ; preds = %88
  %91 = icmp ult i32 %5, 1065353208, !dbg !297
  br i1 %91, label %92, label %95, !dbg !299

; <label>:92:                                     ; preds = %90
  %93 = icmp slt i32 %4, 0, !dbg !300
  %94 = select i1 %93, float 0x7FF0000000000000, float 0.000000e+00, !dbg !301
  br label %330, !dbg !302

; <label>:95:                                     ; preds = %90
  %96 = icmp ugt i32 %5, 1065353223, !dbg !303
  br i1 %96, label %97, label %100, !dbg !305

; <label>:97:                                     ; preds = %95
  %98 = icmp sgt i32 %4, 0, !dbg !306
  %99 = select i1 %98, float 0x7FF0000000000000, float 0.000000e+00, !dbg !307
  br label %330, !dbg !308

; <label>:100:                                    ; preds = %95
  %101 = fadd float %60, -1.000000e+00, !dbg !309
  %102 = fmul float %101, %101, !dbg !311
  %103 = fmul float %101, 2.500000e-01, !dbg !312
  %104 = fsub float 0x3FD5555560000000, %103, !dbg !313
  %105 = fmul float %101, %104, !dbg !314
  %106 = fsub float 5.000000e-01, %105, !dbg !315
  %107 = fmul float %102, %106, !dbg !316
  %108 = fmul float %101, 0x3FF7154000000000, !dbg !318
  %109 = fmul float %101, 0x3EDD94AE00000000, !dbg !320
  %110 = fmul float %107, 0x3FF7154760000000, !dbg !321
  %111 = fsub float %109, %110, !dbg !322
  %112 = fadd float %108, %111, !dbg !324
  %113 = bitcast float %112 to i32, !dbg !326
  %114 = and i32 %113, -4096, !dbg !328
  %115 = bitcast i32 %114 to float, !dbg !328
  %116 = fsub float %115, %108, !dbg !329
  br label %215, !dbg !330

; <label>:117:                                    ; preds = %88
  %118 = icmp ult i32 %5, 8388608, !dbg !332
  %119 = fmul float %60, 0x4170000000000000, !dbg !333
  %120 = bitcast float %119 to i32, !dbg !334
  %121 = select i1 %118, i32 %120, i32 %5, !dbg !335
  %122 = ashr i32 %121, 23, !dbg !336
  %123 = select i1 %118, i32 -151, i32 -127, !dbg !337
  %124 = add nsw i32 %123, %122, !dbg !338
  %125 = and i32 %121, 8388607, !dbg !339
  %126 = or i32 %125, 1065353216, !dbg !340
  %127 = icmp ult i32 %125, 1885298, !dbg !341
  br i1 %127, label %133, label %128, !dbg !343

; <label>:128:                                    ; preds = %117
  %129 = icmp ult i32 %125, 6140887, !dbg !344
  br i1 %129, label %133, label %130, !dbg !346

; <label>:130:                                    ; preds = %128
  %131 = add nsw i32 %124, 1, !dbg !347
  %132 = add nsw i32 %126, -8388608, !dbg !349
  br label %133

; <label>:133:                                    ; preds = %128, %117, %130
  %134 = phi i32 [ %132, %130 ], [ %126, %117 ], [ %126, %128 ], !dbg !350
  %135 = phi i32 [ %131, %130 ], [ %124, %117 ], [ %124, %128 ], !dbg !350
  %136 = phi i32 [ 0, %130 ], [ 0, %117 ], [ 1, %128 ], !dbg !350
  %137 = bitcast i32 %134 to float, !dbg !351
  %138 = zext i32 %136 to i64, !dbg !352
  %139 = getelementptr inbounds [2 x float], [2 x float]* @bp, i64 0, i64 %138, !dbg !352
  %140 = load float, float* %139, align 4, !dbg !352, !tbaa !353
  %141 = fsub float %137, %140, !dbg !357
  %142 = fadd float %140, %137, !dbg !358
  %143 = fdiv float 1.000000e+00, %142, !dbg !359
  %144 = fmul float %141, %143, !dbg !360
  %145 = bitcast float %144 to i32, !dbg !363
  %146 = and i32 %145, -4096, !dbg !364
  %147 = bitcast i32 %146 to float, !dbg !364
  %148 = ashr i32 %134, 1, !dbg !365
  %149 = or i32 %148, 536870912, !dbg !365
  %150 = add nsw i32 %149, 262144, !dbg !365
  %151 = shl nuw nsw i32 %136, 21, !dbg !365
  %152 = add nsw i32 %150, %151, !dbg !365
  %153 = bitcast i32 %152 to float, !dbg !365
  %154 = fsub float %153, %140, !dbg !367
  %155 = fsub float %137, %154, !dbg !368
  %156 = fmul float %153, %147, !dbg !370
  %157 = fsub float %141, %156, !dbg !371
  %158 = fmul float %155, %147, !dbg !372
  %159 = fsub float %157, %158, !dbg !373
  %160 = fmul float %143, %159, !dbg !374
  %161 = fmul float %144, %144, !dbg !376
  %162 = fmul float %161, %161, !dbg !378
  %163 = fmul float %161, 0x3FCA7E2840000000, !dbg !379
  %164 = fadd float %163, 0x3FCD864AA0000000, !dbg !380
  %165 = fmul float %161, %164, !dbg !381
  %166 = fadd float %165, 0x3FD17460A0000000, !dbg !382
  %167 = fmul float %161, %166, !dbg !383
  %168 = fadd float %167, 0x3FD5555560000000, !dbg !384
  %169 = fmul float %161, %168, !dbg !385
  %170 = fadd float %169, 0x3FDB6DB6E0000000, !dbg !386
  %171 = fmul float %161, %170, !dbg !387
  %172 = fadd float %171, 0x3FE3333340000000, !dbg !388
  %173 = fmul float %162, %172, !dbg !389
  %174 = fadd float %144, %147, !dbg !391
  %175 = fmul float %174, %160, !dbg !392
  %176 = fadd float %175, %173, !dbg !393
  %177 = fmul float %147, %147, !dbg !394
  %178 = fadd float %177, 3.000000e+00, !dbg !395
  %179 = fadd float %178, %176, !dbg !396
  %180 = bitcast float %179 to i32, !dbg !397
  %181 = and i32 %180, -4096, !dbg !398
  %182 = bitcast i32 %181 to float, !dbg !398
  %183 = fadd float %182, -3.000000e+00, !dbg !399
  %184 = fsub float %183, %177, !dbg !400
  %185 = fsub float %176, %184, !dbg !401
  %186 = fmul float %147, %182, !dbg !402
  %187 = fmul float %160, %182, !dbg !403
  %188 = fmul float %144, %185, !dbg !404
  %189 = fadd float %187, %188, !dbg !405
  %190 = fadd float %186, %189, !dbg !406
  %191 = bitcast float %190 to i32, !dbg !408
  %192 = and i32 %191, -4096, !dbg !409
  %193 = bitcast i32 %192 to float, !dbg !409
  %194 = fsub float %193, %186, !dbg !410
  %195 = fsub float %189, %194, !dbg !411
  %196 = fmul float %193, 0x3FEEC70000000000, !dbg !413
  %197 = fmul float %193, 0x3ED3B87400000000, !dbg !415
  %198 = fmul float %195, 0x3FEEC709E0000000, !dbg !416
  %199 = fadd float %197, %198, !dbg !417
  %200 = getelementptr inbounds [2 x float], [2 x float]* @dp_l, i64 0, i64 %138, !dbg !418
  %201 = load float, float* %200, align 4, !dbg !418, !tbaa !353
  %202 = fadd float %201, %199, !dbg !419
  %203 = sitofp i32 %135 to float, !dbg !421
  %204 = fadd float %196, %202, !dbg !422
  %205 = getelementptr inbounds [2 x float], [2 x float]* @dp_h, i64 0, i64 %138, !dbg !423
  %206 = load float, float* %205, align 4, !dbg !423, !tbaa !353
  %207 = fadd float %206, %204, !dbg !424
  %208 = fadd float %207, %203, !dbg !425
  %209 = bitcast float %208 to i32, !dbg !426
  %210 = and i32 %209, -4096, !dbg !427
  %211 = bitcast i32 %210 to float, !dbg !427
  %212 = fsub float %211, %203, !dbg !428
  %213 = fsub float %212, %206, !dbg !429
  %214 = fsub float %213, %196, !dbg !430
  br label %215

; <label>:215:                                    ; preds = %133, %100
  %216 = phi float [ %214, %133 ], [ %116, %100 ]
  %217 = phi float [ %202, %133 ], [ %111, %100 ]
  %218 = phi float [ %211, %133 ], [ %115, %100 ], !dbg !432
  %219 = fsub float %217, %216, !dbg !433
  %220 = add nsw i32 %32, -1, !dbg !434
  %221 = or i32 %220, %82, !dbg !436
  %222 = icmp eq i32 %221, 0, !dbg !437
  %223 = select i1 %222, float -1.000000e+00, float 1.000000e+00, !dbg !438
  %224 = and i32 %4, -4096, !dbg !439
  %225 = bitcast i32 %224 to float, !dbg !439
  %226 = fsub float %1, %225, !dbg !441
  %227 = fmul float %226, %218, !dbg !442
  %228 = fmul float %219, %1, !dbg !443
  %229 = fadd float %228, %227, !dbg !444
  %230 = fmul float %218, %225, !dbg !445
  %231 = fadd float %230, %229, !dbg !446
  %232 = bitcast float %231 to i32, !dbg !447
  %233 = and i32 %232, 2147483647, !dbg !448
  %234 = icmp sgt i32 %232, 0, !dbg !450
  br i1 %234, label %235, label %249, !dbg !452

; <label>:235:                                    ; preds = %215
  %236 = icmp ugt i32 %233, 1124073472, !dbg !453
  br i1 %236, label %237, label %240, !dbg !456

; <label>:237:                                    ; preds = %235
  %238 = fmul float %223, 0x46293E5940000000, !dbg !457
  %239 = fmul float %238, 0x46293E5940000000, !dbg !458
  br label %330, !dbg !459

; <label>:240:                                    ; preds = %235
  %241 = icmp eq i32 %233, 1124073472, !dbg !460
  br i1 %241, label %242, label %262, !dbg !462

; <label>:242:                                    ; preds = %240
  %243 = fadd float %229, 0x3E67154780000000, !dbg !463
  %244 = fsub float %231, %230, !dbg !465
  %245 = fcmp ogt float %243, %244, !dbg !466
  br i1 %245, label %246, label %264, !dbg !467

; <label>:246:                                    ; preds = %242
  %247 = fmul float %223, 0x46293E5940000000, !dbg !468
  %248 = fmul float %247, 0x46293E5940000000, !dbg !469
  br label %330, !dbg !470

; <label>:249:                                    ; preds = %215
  %250 = icmp ugt i32 %233, 1125515264, !dbg !471
  br i1 %250, label %251, label %254, !dbg !474

; <label>:251:                                    ; preds = %249
  %252 = fmul float %223, 0x39B4484C00000000, !dbg !475
  %253 = fmul float %252, 0x39B4484C00000000, !dbg !476
  br label %330, !dbg !477

; <label>:254:                                    ; preds = %249
  %255 = icmp ne i32 %233, 1125515264, !dbg !478
  %256 = fsub float %231, %230, !dbg !480
  %257 = fcmp ugt float %229, %256, !dbg !482
  %258 = or i1 %257, %255, !dbg !483
  br i1 %258, label %262, label %259, !dbg !483

; <label>:259:                                    ; preds = %254
  %260 = fmul float %223, 0x39B4484C00000000, !dbg !484
  %261 = fmul float %260, 0x39B4484C00000000, !dbg !485
  br label %330, !dbg !486

; <label>:262:                                    ; preds = %254, %240
  %263 = icmp ugt i32 %233, 1056964608, !dbg !487
  br i1 %263, label %264, label %285, !dbg !488

; <label>:264:                                    ; preds = %242, %262
  %265 = lshr i32 %233, 23, !dbg !489
  %266 = add nsw i32 %265, -126, !dbg !490
  %267 = lshr i32 8388608, %266, !dbg !491
  %268 = add nsw i32 %267, %232, !dbg !492
  %269 = lshr i32 %268, 23, !dbg !493
  %270 = and i32 %269, 255, !dbg !493
  %271 = add nsw i32 %270, -127, !dbg !494
  %272 = ashr i32 -8388608, %271, !dbg !495
  %273 = and i32 %272, %268, !dbg !495
  %274 = bitcast i32 %273 to float, !dbg !495
  %275 = and i32 %268, 8388607, !dbg !496
  %276 = or i32 %275, 8388608, !dbg !497
  %277 = sub nsw i32 150, %270, !dbg !498
  %278 = lshr i32 %276, %277, !dbg !499
  %279 = icmp slt i32 %232, 0, !dbg !500
  %280 = sub nsw i32 0, %278, !dbg !502
  %281 = select i1 %279, i32 %280, i32 %278, !dbg !503
  %282 = fsub float %230, %274, !dbg !504
  %283 = fadd float %229, %282, !dbg !505
  %284 = bitcast float %283 to i32, !dbg !506
  br label %285, !dbg !507

; <label>:285:                                    ; preds = %264, %262
  %286 = phi i32 [ %284, %264 ], [ %232, %262 ], !dbg !506
  %287 = phi i32 [ %281, %264 ], [ 0, %262 ], !dbg !222
  %288 = phi float [ %282, %264 ], [ %230, %262 ], !dbg !222
  %289 = and i32 %286, -4096, !dbg !508
  %290 = bitcast i32 %289 to float, !dbg !508
  %291 = fmul float %290, 0x3FE62E4000000000, !dbg !509
  %292 = fsub float %290, %288, !dbg !510
  %293 = fsub float %229, %292, !dbg !511
  %294 = fmul float %293, 0x3FE62E4300000000, !dbg !512
  %295 = fmul float %290, 0x3EB7F7D180000000, !dbg !513
  %296 = fadd float %295, %294, !dbg !514
  %297 = fadd float %291, %296, !dbg !515
  %298 = fsub float %297, %291, !dbg !516
  %299 = fsub float %296, %298, !dbg !517
  %300 = fmul float %297, %297, !dbg !518
  %301 = fmul float %300, 0x3E66376980000000, !dbg !519
  %302 = fadd float %301, 0xBEBBBD41C0000000, !dbg !520
  %303 = fmul float %300, %302, !dbg !521
  %304 = fadd float %303, 0x3F11566AA0000000, !dbg !522
  %305 = fmul float %300, %304, !dbg !523
  %306 = fadd float %305, 0xBF66C16C20000000, !dbg !524
  %307 = fmul float %300, %306, !dbg !525
  %308 = fadd float %307, 0x3FC5555560000000, !dbg !526
  %309 = fmul float %300, %308, !dbg !527
  %310 = fsub float %297, %309, !dbg !528
  %311 = fmul float %297, %310, !dbg !529
  %312 = fadd float %310, -2.000000e+00, !dbg !530
  %313 = fdiv float %311, %312, !dbg !531
  %314 = fmul float %297, %299, !dbg !532
  %315 = fadd float %299, %314, !dbg !533
  %316 = fsub float %313, %315, !dbg !534
  %317 = fsub float %297, %316, !dbg !535
  %318 = fadd float %317, 1.000000e+00, !dbg !535
  %319 = bitcast float %318 to i32, !dbg !536
  %320 = shl i32 %287, 23, !dbg !537
  %321 = add nsw i32 %320, %319, !dbg !538
  %322 = icmp slt i32 %321, 8388608, !dbg !539
  br i1 %322, label %323, label %325, !dbg !540

; <label>:323:                                    ; preds = %285
  %324 = tail call float @scalbnf(float %318, i32 %287) #3, !dbg !541
  br label %327, !dbg !542

; <label>:325:                                    ; preds = %285
  %326 = bitcast i32 %321 to float, !dbg !543
  br label %327

; <label>:327:                                    ; preds = %325, %323
  %328 = phi float [ %324, %323 ], [ %326, %325 ], !dbg !544
  %329 = fmul float %223, %328, !dbg !545
  br label %330, !dbg !546

; <label>:330:                                    ; preds = %76, %65, %73, %45, %34, %12, %2, %327, %259, %251, %246, %237, %97, %92, %85, %57, %51, %47, %41, %38, %14
  %331 = phi float [ %15, %14 ], [ %40, %38 ], [ %44, %41 ], [ %48, %47 ], [ %52, %51 ], [ %58, %57 ], [ %87, %85 ], [ %94, %92 ], [ %99, %97 ], [ %239, %237 ], [ %248, %246 ], [ %329, %327 ], [ %253, %251 ], [ %261, %259 ], [ 1.000000e+00, %2 ], [ 1.000000e+00, %12 ], [ 1.000000e+00, %34 ], [ %0, %45 ], [ %75, %73 ], [ %68, %65 ], [ %79, %76 ], !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  ret float %331, !dbg !548
}

; Function Attrs: noredzone
declare dso_local float @nanf(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_sqrtf(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @fabsf(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @scalbnf(float, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!74, !75, !76}
!llvm.ident = !{!77}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "bp", scope: !2, file: !3, line: 27, type: !69, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_pow.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !9, !10}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !7, line: 79, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !0, !67, !72}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 1065353216, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !3, line: 31, type: !14, isLocal: true, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!16 = distinct !DIGlobalVariable(name: "zero", scope: !2, file: !3, line: 30, type: !14, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression(DW_OP_constu, 1900671690, DW_OP_stack_value))
!18 = distinct !DIGlobalVariable(name: "huge", scope: !2, file: !3, line: 34, type: !14, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression(DW_OP_constu, 228737632, DW_OP_stack_value))
!20 = distinct !DIGlobalVariable(name: "tiny", scope: !2, file: !3, line: 35, type: !14, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression(DW_OP_constu, 1069066752, DW_OP_stack_value))
!22 = distinct !DIGlobalVariable(name: "ivln2_h", scope: !2, file: !3, line: 56, type: !14, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression(DW_OP_constu, 921478512, DW_OP_stack_value))
!24 = distinct !DIGlobalVariable(name: "ivln2_l", scope: !2, file: !3, line: 57, type: !14, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression(DW_OP_constu, 1069066811, DW_OP_stack_value))
!26 = distinct !DIGlobalVariable(name: "ivln2", scope: !2, file: !3, line: 55, type: !14, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression(DW_OP_constu, 1266679808, DW_OP_stack_value))
!28 = distinct !DIGlobalVariable(name: "two24", scope: !2, file: !3, line: 33, type: !14, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression(DW_OP_constu, 1058642330, DW_OP_stack_value))
!30 = distinct !DIGlobalVariable(name: "L1", scope: !2, file: !3, line: 37, type: !14, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression(DW_OP_constu, 1054567863, DW_OP_stack_value))
!32 = distinct !DIGlobalVariable(name: "L2", scope: !2, file: !3, line: 38, type: !14, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression(DW_OP_constu, 1051372203, DW_OP_stack_value))
!34 = distinct !DIGlobalVariable(name: "L3", scope: !2, file: !3, line: 39, type: !14, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression(DW_OP_constu, 1049338629, DW_OP_stack_value))
!36 = distinct !DIGlobalVariable(name: "L4", scope: !2, file: !3, line: 40, type: !14, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression(DW_OP_constu, 1047278165, DW_OP_stack_value))
!38 = distinct !DIGlobalVariable(name: "L5", scope: !2, file: !3, line: 41, type: !14, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression(DW_OP_constu, 1045688642, DW_OP_stack_value))
!40 = distinct !DIGlobalVariable(name: "L6", scope: !2, file: !3, line: 42, type: !14, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression(DW_OP_constu, 1064712192, DW_OP_stack_value))
!42 = distinct !DIGlobalVariable(name: "cp_h", scope: !2, file: !3, line: 53, type: !14, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression(DW_OP_constu, 916308896, DW_OP_stack_value))
!44 = distinct !DIGlobalVariable(name: "cp_l", scope: !2, file: !3, line: 54, type: !14, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression(DW_OP_constu, 1064712271, DW_OP_stack_value))
!46 = distinct !DIGlobalVariable(name: "cp", scope: !2, file: !3, line: 52, type: !14, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression(DW_OP_constu, 859351612, DW_OP_stack_value))
!48 = distinct !DIGlobalVariable(name: "ovt", scope: !2, file: !3, line: 51, type: !14, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression(DW_OP_constu, 1060205056, DW_OP_stack_value))
!50 = distinct !DIGlobalVariable(name: "lg2_h", scope: !2, file: !3, line: 49, type: !14, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression(DW_OP_constu, 1060205080, DW_OP_stack_value))
!52 = distinct !DIGlobalVariable(name: "lg2", scope: !2, file: !3, line: 48, type: !14, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression(DW_OP_constu, 901758604, DW_OP_stack_value))
!54 = distinct !DIGlobalVariable(name: "lg2_l", scope: !2, file: !3, line: 50, type: !14, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression(DW_OP_constu, 1042983595, DW_OP_stack_value))
!56 = distinct !DIGlobalVariable(name: "P1", scope: !2, file: !3, line: 43, type: !14, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression(DW_OP_constu, 3140881249, DW_OP_stack_value))
!58 = distinct !DIGlobalVariable(name: "P2", scope: !2, file: !3, line: 44, type: !14, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression(DW_OP_constu, 948613973, DW_OP_stack_value))
!60 = distinct !DIGlobalVariable(name: "P3", scope: !2, file: !3, line: 45, type: !14, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression(DW_OP_constu, 3051219470, DW_OP_stack_value))
!62 = distinct !DIGlobalVariable(name: "P4", scope: !2, file: !3, line: 46, type: !14, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression(DW_OP_constu, 858897228, DW_OP_stack_value))
!64 = distinct !DIGlobalVariable(name: "P5", scope: !2, file: !3, line: 47, type: !14, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression(DW_OP_constu, 1073741824, DW_OP_stack_value))
!66 = distinct !DIGlobalVariable(name: "two", scope: !2, file: !3, line: 32, type: !14, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "dp_l", scope: !2, file: !3, line: 29, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 2)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "dp_h", scope: !2, file: !3, line: 28, type: !69, isLocal: true, isDefinition: true)
!74 = !{i32 2, !"Dwarf Version", i32 4}
!75 = !{i32 2, !"Debug Info Version", i32 3}
!76 = !{i32 1, !"wchar_size", i32 4}
!77 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!78 = distinct !DISubprogram(name: "__ieee754_powf", scope: !3, file: !3, line: 60, type: !79, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !81)
!79 = !DISubroutineType(types: !80)
!80 = !{!9, !9, !9}
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !118, !120, !124, !126, !128, !129, !130, !131, !132, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !166, !168, !170, !172}
!82 = !DILocalVariable(name: "x", arg: 1, scope: !78, file: !3, line: 60, type: !9)
!83 = !DILocalVariable(name: "y", arg: 2, scope: !78, file: !3, line: 60, type: !9)
!84 = !DILocalVariable(name: "z", scope: !78, file: !3, line: 66, type: !9)
!85 = !DILocalVariable(name: "ax", scope: !78, file: !3, line: 66, type: !9)
!86 = !DILocalVariable(name: "z_h", scope: !78, file: !3, line: 66, type: !9)
!87 = !DILocalVariable(name: "z_l", scope: !78, file: !3, line: 66, type: !9)
!88 = !DILocalVariable(name: "p_h", scope: !78, file: !3, line: 66, type: !9)
!89 = !DILocalVariable(name: "p_l", scope: !78, file: !3, line: 66, type: !9)
!90 = !DILocalVariable(name: "y1", scope: !78, file: !3, line: 67, type: !9)
!91 = !DILocalVariable(name: "t1", scope: !78, file: !3, line: 67, type: !9)
!92 = !DILocalVariable(name: "t2", scope: !78, file: !3, line: 67, type: !9)
!93 = !DILocalVariable(name: "r", scope: !78, file: !3, line: 67, type: !9)
!94 = !DILocalVariable(name: "s", scope: !78, file: !3, line: 67, type: !9)
!95 = !DILocalVariable(name: "t", scope: !78, file: !3, line: 67, type: !9)
!96 = !DILocalVariable(name: "u", scope: !78, file: !3, line: 67, type: !9)
!97 = !DILocalVariable(name: "v", scope: !78, file: !3, line: 67, type: !9)
!98 = !DILocalVariable(name: "w", scope: !78, file: !3, line: 67, type: !9)
!99 = !DILocalVariable(name: "i", scope: !78, file: !3, line: 68, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !7, line: 77, baseType: !10)
!101 = !DILocalVariable(name: "j", scope: !78, file: !3, line: 68, type: !100)
!102 = !DILocalVariable(name: "k", scope: !78, file: !3, line: 68, type: !100)
!103 = !DILocalVariable(name: "yisint", scope: !78, file: !3, line: 68, type: !100)
!104 = !DILocalVariable(name: "n", scope: !78, file: !3, line: 68, type: !100)
!105 = !DILocalVariable(name: "hx", scope: !78, file: !3, line: 69, type: !100)
!106 = !DILocalVariable(name: "hy", scope: !78, file: !3, line: 69, type: !100)
!107 = !DILocalVariable(name: "ix", scope: !78, file: !3, line: 69, type: !100)
!108 = !DILocalVariable(name: "iy", scope: !78, file: !3, line: 69, type: !100)
!109 = !DILocalVariable(name: "is", scope: !78, file: !3, line: 69, type: !100)
!110 = !DILocalVariable(name: "gf_u", scope: !111, file: !3, line: 71, type: !112)
!111 = distinct !DILexicalBlock(scope: !78, file: !3, line: 71, column: 2)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !113, line: 347, baseType: !114)
!113 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!114 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !113, line: 343, size: 32, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !114, file: !113, line: 345, baseType: !9, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !114, file: !113, line: 346, baseType: !6, size: 32)
!118 = !DILocalVariable(name: "gf_u", scope: !119, file: !3, line: 72, type: !112)
!119 = distinct !DILexicalBlock(scope: !78, file: !3, line: 72, column: 2)
!120 = !DILocalVariable(name: "gf_u", scope: !121, file: !3, line: 147, type: !112)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 147, column: 6)
!122 = distinct !DILexicalBlock(scope: !123, file: !3, line: 136, column: 20)
!123 = distinct !DILexicalBlock(scope: !78, file: !3, line: 136, column: 5)
!124 = !DILocalVariable(name: "sf_u", scope: !125, file: !3, line: 148, type: !112)
!125 = distinct !DILexicalBlock(scope: !122, file: !3, line: 148, column: 6)
!126 = !DILocalVariable(name: "s2", scope: !127, file: !3, line: 151, type: !9)
!127 = distinct !DILexicalBlock(scope: !123, file: !3, line: 150, column: 9)
!128 = !DILocalVariable(name: "s_h", scope: !127, file: !3, line: 151, type: !9)
!129 = !DILocalVariable(name: "s_l", scope: !127, file: !3, line: 151, type: !9)
!130 = !DILocalVariable(name: "t_h", scope: !127, file: !3, line: 151, type: !9)
!131 = !DILocalVariable(name: "t_l", scope: !127, file: !3, line: 151, type: !9)
!132 = !DILocalVariable(name: "gf_u", scope: !133, file: !3, line: 155, type: !112)
!133 = distinct !DILexicalBlock(scope: !134, file: !3, line: 155, column: 26)
!134 = distinct !DILexicalBlock(scope: !135, file: !3, line: 155, column: 3)
!135 = distinct !DILexicalBlock(scope: !127, file: !3, line: 154, column: 9)
!136 = !DILocalVariable(name: "sf_u", scope: !137, file: !3, line: 163, type: !112)
!137 = distinct !DILexicalBlock(scope: !127, file: !3, line: 163, column: 6)
!138 = !DILocalVariable(name: "gf_u", scope: !139, file: !3, line: 170, type: !112)
!139 = distinct !DILexicalBlock(scope: !127, file: !3, line: 170, column: 6)
!140 = !DILocalVariable(name: "sf_u", scope: !141, file: !3, line: 171, type: !112)
!141 = distinct !DILexicalBlock(scope: !127, file: !3, line: 171, column: 6)
!142 = !DILocalVariable(name: "sf_u", scope: !143, file: !3, line: 173, type: !112)
!143 = distinct !DILexicalBlock(scope: !127, file: !3, line: 173, column: 6)
!144 = !DILocalVariable(name: "gf_u", scope: !145, file: !3, line: 182, type: !112)
!145 = distinct !DILexicalBlock(scope: !127, file: !3, line: 182, column: 6)
!146 = !DILocalVariable(name: "sf_u", scope: !147, file: !3, line: 183, type: !112)
!147 = distinct !DILexicalBlock(scope: !127, file: !3, line: 183, column: 6)
!148 = !DILocalVariable(name: "gf_u", scope: !149, file: !3, line: 190, type: !112)
!149 = distinct !DILexicalBlock(scope: !127, file: !3, line: 190, column: 6)
!150 = !DILocalVariable(name: "sf_u", scope: !151, file: !3, line: 191, type: !112)
!151 = distinct !DILexicalBlock(scope: !127, file: !3, line: 191, column: 6)
!152 = !DILocalVariable(name: "gf_u", scope: !153, file: !3, line: 198, type: !112)
!153 = distinct !DILexicalBlock(scope: !127, file: !3, line: 198, column: 6)
!154 = !DILocalVariable(name: "sf_u", scope: !155, file: !3, line: 199, type: !112)
!155 = distinct !DILexicalBlock(scope: !127, file: !3, line: 199, column: 6)
!156 = !DILocalVariable(name: "gf_u", scope: !157, file: !3, line: 208, type: !112)
!157 = distinct !DILexicalBlock(scope: !78, file: !3, line: 208, column: 2)
!158 = !DILocalVariable(name: "sf_u", scope: !159, file: !3, line: 209, type: !112)
!159 = distinct !DILexicalBlock(scope: !78, file: !3, line: 209, column: 2)
!160 = !DILocalVariable(name: "gf_u", scope: !161, file: !3, line: 213, type: !112)
!161 = distinct !DILexicalBlock(scope: !78, file: !3, line: 213, column: 2)
!162 = !DILocalVariable(name: "sf_u", scope: !163, file: !3, line: 234, type: !112)
!163 = distinct !DILexicalBlock(scope: !164, file: !3, line: 234, column: 6)
!164 = distinct !DILexicalBlock(scope: !165, file: !3, line: 231, column: 19)
!165 = distinct !DILexicalBlock(scope: !78, file: !3, line: 231, column: 5)
!166 = !DILocalVariable(name: "gf_u", scope: !167, file: !3, line: 240, type: !112)
!167 = distinct !DILexicalBlock(scope: !78, file: !3, line: 240, column: 2)
!168 = !DILocalVariable(name: "sf_u", scope: !169, file: !3, line: 241, type: !112)
!169 = distinct !DILexicalBlock(scope: !78, file: !3, line: 241, column: 2)
!170 = !DILocalVariable(name: "gf_u", scope: !171, file: !3, line: 250, type: !112)
!171 = distinct !DILexicalBlock(scope: !78, file: !3, line: 250, column: 2)
!172 = !DILocalVariable(name: "sf_u", scope: !173, file: !3, line: 253, type: !112)
!173 = distinct !DILexicalBlock(scope: !174, file: !3, line: 253, column: 7)
!174 = distinct !DILexicalBlock(scope: !78, file: !3, line: 252, column: 5)
!175 = !DILocation(line: 60, column: 29, scope: !78)
!176 = !DILocation(line: 60, column: 38, scope: !78)
!177 = !DILocation(line: 71, column: 2, scope: !111)
!178 = !DILocation(line: 69, column: 12, scope: !78)
!179 = !DILocation(line: 72, column: 2, scope: !119)
!180 = !DILocation(line: 69, column: 15, scope: !78)
!181 = !DILocation(line: 73, column: 9, scope: !78)
!182 = !DILocation(line: 69, column: 18, scope: !78)
!183 = !DILocation(line: 73, column: 30, scope: !78)
!184 = !DILocation(line: 69, column: 21, scope: !78)
!185 = !DILocation(line: 76, column: 5, scope: !186)
!186 = distinct !DILexicalBlock(scope: !78, file: !3, line: 76, column: 5)
!187 = !DILocation(line: 76, column: 5, scope: !78)
!188 = !DILocation(line: 79, column: 5, scope: !189)
!189 = distinct !DILexicalBlock(scope: !78, file: !3, line: 79, column: 5)
!190 = !DILocation(line: 80, column: 5, scope: !189)
!191 = !DILocation(line: 79, column: 26, scope: !189)
!192 = !DILocation(line: 81, column: 11, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !3, line: 81, column: 9)
!194 = distinct !DILexicalBlock(scope: !189, file: !3, line: 80, column: 27)
!195 = !DILocation(line: 81, column: 9, scope: !194)
!196 = !DILocation(line: 82, column: 18, scope: !193)
!197 = !DILocation(line: 82, column: 11, scope: !193)
!198 = !DILocation(line: 68, column: 18, scope: !78)
!199 = !DILocation(line: 91, column: 7, scope: !200)
!200 = distinct !DILexicalBlock(scope: !78, file: !3, line: 91, column: 5)
!201 = !DILocation(line: 91, column: 5, scope: !78)
!202 = !DILocation(line: 92, column: 11, scope: !203)
!203 = distinct !DILexicalBlock(scope: !204, file: !3, line: 92, column: 9)
!204 = distinct !DILexicalBlock(scope: !200, file: !3, line: 91, column: 11)
!205 = !DILocation(line: 92, column: 9, scope: !204)
!206 = !DILocation(line: 93, column: 16, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !3, line: 93, column: 14)
!208 = !DILocation(line: 93, column: 14, scope: !203)
!209 = !DILocation(line: 94, column: 10, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !3, line: 93, column: 30)
!211 = !DILocation(line: 68, column: 16, scope: !78)
!212 = !DILocation(line: 95, column: 14, scope: !210)
!213 = !DILocation(line: 95, column: 9, scope: !210)
!214 = !DILocation(line: 68, column: 14, scope: !78)
!215 = !DILocation(line: 96, column: 8, scope: !216)
!216 = distinct !DILexicalBlock(scope: !210, file: !3, line: 96, column: 6)
!217 = !DILocation(line: 96, column: 17, scope: !216)
!218 = !DILocation(line: 96, column: 6, scope: !210)
!219 = !DILocation(line: 96, column: 36, scope: !216)
!220 = !DILocation(line: 96, column: 33, scope: !216)
!221 = !DILocation(line: 96, column: 23, scope: !216)
!222 = !DILocation(line: 0, scope: !78)
!223 = !DILocation(line: 101, column: 6, scope: !78)
!224 = !DILocation(line: 102, column: 12, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !3, line: 102, column: 10)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 101, column: 33)
!227 = distinct !DILexicalBlock(scope: !78, file: !3, line: 101, column: 6)
!228 = !DILocation(line: 102, column: 10, scope: !226)
!229 = !DILocation(line: 104, column: 18, scope: !230)
!230 = distinct !DILexicalBlock(scope: !225, file: !3, line: 104, column: 15)
!231 = !DILocation(line: 104, column: 15, scope: !225)
!232 = !DILocation(line: 105, column: 20, scope: !230)
!233 = !DILocation(line: 105, column: 17, scope: !230)
!234 = !DILocation(line: 105, column: 10, scope: !230)
!235 = !DILocation(line: 107, column: 20, scope: !230)
!236 = !DILocation(line: 107, column: 24, scope: !230)
!237 = !DILocation(line: 107, column: 17, scope: !230)
!238 = !DILocation(line: 107, column: 10, scope: !230)
!239 = !DILocation(line: 110, column: 11, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !3, line: 110, column: 9)
!241 = distinct !DILexicalBlock(scope: !242, file: !3, line: 109, column: 21)
!242 = distinct !DILexicalBlock(scope: !78, file: !3, line: 109, column: 5)
!243 = !DILocation(line: 110, column: 9, scope: !241)
!244 = !DILocation(line: 110, column: 25, scope: !240)
!245 = !DILocation(line: 110, column: 15, scope: !240)
!246 = !DILocation(line: 112, column: 7, scope: !247)
!247 = distinct !DILexicalBlock(scope: !78, file: !3, line: 112, column: 5)
!248 = !DILocation(line: 112, column: 5, scope: !78)
!249 = !DILocation(line: 112, column: 29, scope: !247)
!250 = !DILocation(line: 112, column: 21, scope: !247)
!251 = !DILocation(line: 113, column: 7, scope: !252)
!252 = distinct !DILexicalBlock(scope: !78, file: !3, line: 113, column: 5)
!253 = !DILocation(line: 114, column: 11, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !3, line: 114, column: 9)
!255 = distinct !DILexicalBlock(scope: !252, file: !3, line: 113, column: 21)
!256 = !DILocation(line: 113, column: 5, scope: !78)
!257 = !DILocation(line: 115, column: 13, scope: !254)
!258 = !DILocation(line: 115, column: 6, scope: !254)
!259 = !DILocation(line: 118, column: 9, scope: !78)
!260 = !DILocation(line: 66, column: 10, scope: !78)
!261 = !DILocation(line: 120, column: 32, scope: !262)
!262 = distinct !DILexicalBlock(scope: !78, file: !3, line: 120, column: 5)
!263 = !DILocation(line: 120, column: 30, scope: !262)
!264 = !DILocation(line: 66, column: 8, scope: !78)
!265 = !DILocation(line: 122, column: 11, scope: !266)
!266 = distinct !DILexicalBlock(scope: !267, file: !3, line: 122, column: 9)
!267 = distinct !DILexicalBlock(scope: !262, file: !3, line: 120, column: 70)
!268 = !DILocation(line: 122, column: 22, scope: !266)
!269 = !DILocation(line: 122, column: 9, scope: !267)
!270 = !DILocation(line: 123, column: 9, scope: !267)
!271 = !DILocation(line: 124, column: 10, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !3, line: 124, column: 6)
!273 = distinct !DILexicalBlock(scope: !274, file: !3, line: 123, column: 15)
!274 = distinct !DILexicalBlock(scope: !267, file: !3, line: 123, column: 9)
!275 = !DILocation(line: 124, column: 22, scope: !272)
!276 = !DILocation(line: 124, column: 30, scope: !272)
!277 = !DILocation(line: 124, column: 6, scope: !273)
!278 = !DILocation(line: 125, column: 13, scope: !279)
!279 = distinct !DILexicalBlock(scope: !272, file: !3, line: 124, column: 35)
!280 = !DILocation(line: 125, column: 16, scope: !279)
!281 = !DILocation(line: 126, column: 3, scope: !279)
!282 = !DILocation(line: 126, column: 19, scope: !283)
!283 = distinct !DILexicalBlock(scope: !272, file: !3, line: 126, column: 13)
!284 = !DILocation(line: 127, column: 11, scope: !283)
!285 = !DILocation(line: 126, column: 13, scope: !272)
!286 = !DILocation(line: 133, column: 22, scope: !287)
!287 = distinct !DILexicalBlock(scope: !78, file: !3, line: 133, column: 5)
!288 = !DILocation(line: 133, column: 27, scope: !287)
!289 = !DILocation(line: 133, column: 30, scope: !287)
!290 = !DILocation(line: 133, column: 38, scope: !287)
!291 = !DILocation(line: 133, column: 5, scope: !78)
!292 = !DILocation(line: 133, column: 52, scope: !287)
!293 = !DILocation(line: 133, column: 55, scope: !287)
!294 = !DILocation(line: 133, column: 43, scope: !287)
!295 = !DILocation(line: 136, column: 7, scope: !123)
!296 = !DILocation(line: 136, column: 5, scope: !78)
!297 = !DILocation(line: 138, column: 11, scope: !298)
!298 = distinct !DILexicalBlock(scope: !122, file: !3, line: 138, column: 9)
!299 = !DILocation(line: 138, column: 9, scope: !122)
!300 = !DILocation(line: 138, column: 34, scope: !298)
!301 = !DILocation(line: 138, column: 31, scope: !298)
!302 = !DILocation(line: 138, column: 24, scope: !298)
!303 = !DILocation(line: 139, column: 11, scope: !304)
!304 = distinct !DILexicalBlock(scope: !122, file: !3, line: 139, column: 9)
!305 = !DILocation(line: 139, column: 9, scope: !122)
!306 = !DILocation(line: 139, column: 34, scope: !304)
!307 = !DILocation(line: 139, column: 31, scope: !304)
!308 = !DILocation(line: 139, column: 24, scope: !304)
!309 = !DILocation(line: 142, column: 12, scope: !122)
!310 = !DILocation(line: 67, column: 21, scope: !78)
!311 = !DILocation(line: 143, column: 12, scope: !122)
!312 = !DILocation(line: 143, column: 54, scope: !122)
!313 = !DILocation(line: 143, column: 52, scope: !122)
!314 = !DILocation(line: 143, column: 29, scope: !122)
!315 = !DILocation(line: 143, column: 27, scope: !122)
!316 = !DILocation(line: 143, column: 15, scope: !122)
!317 = !DILocation(line: 67, column: 27, scope: !78)
!318 = !DILocation(line: 144, column: 17, scope: !122)
!319 = !DILocation(line: 67, column: 23, scope: !78)
!320 = !DILocation(line: 145, column: 11, scope: !122)
!321 = !DILocation(line: 145, column: 21, scope: !122)
!322 = !DILocation(line: 145, column: 19, scope: !122)
!323 = !DILocation(line: 67, column: 25, scope: !78)
!324 = !DILocation(line: 146, column: 12, scope: !122)
!325 = !DILocation(line: 67, column: 11, scope: !78)
!326 = !DILocation(line: 147, column: 6, scope: !121)
!327 = !DILocation(line: 69, column: 24, scope: !78)
!328 = !DILocation(line: 148, column: 6, scope: !125)
!329 = !DILocation(line: 149, column: 16, scope: !122)
!330 = !DILocation(line: 150, column: 2, scope: !122)
!331 = !DILocation(line: 68, column: 25, scope: !78)
!332 = !DILocation(line: 154, column: 9, scope: !135)
!333 = !DILocation(line: 155, column: 7, scope: !134)
!334 = !DILocation(line: 155, column: 26, scope: !133)
!335 = !DILocation(line: 154, column: 9, scope: !127)
!336 = !DILocation(line: 156, column: 17, scope: !127)
!337 = !DILocation(line: 156, column: 22, scope: !127)
!338 = !DILocation(line: 156, column: 9, scope: !127)
!339 = !DILocation(line: 157, column: 13, scope: !127)
!340 = !DILocation(line: 159, column: 12, scope: !127)
!341 = !DILocation(line: 160, column: 10, scope: !342)
!342 = distinct !DILexicalBlock(scope: !127, file: !3, line: 160, column: 9)
!343 = !DILocation(line: 160, column: 9, scope: !127)
!344 = !DILocation(line: 161, column: 15, scope: !345)
!345 = distinct !DILexicalBlock(scope: !342, file: !3, line: 161, column: 14)
!346 = !DILocation(line: 161, column: 14, scope: !342)
!347 = !DILocation(line: 162, column: 17, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !3, line: 162, column: 11)
!349 = !DILocation(line: 162, column: 24, scope: !348)
!350 = !DILocation(line: 0, scope: !348)
!351 = !DILocation(line: 163, column: 6, scope: !137)
!352 = !DILocation(line: 166, column: 13, scope: !127)
!353 = !{!354, !354, i64 0}
!354 = !{!"float", !355, i64 0}
!355 = !{!"omnipotent char", !356, i64 0}
!356 = !{!"Simple C/C++ TBAA"}
!357 = !DILocation(line: 166, column: 12, scope: !127)
!358 = !DILocation(line: 167, column: 17, scope: !127)
!359 = !DILocation(line: 167, column: 13, scope: !127)
!360 = !DILocation(line: 168, column: 11, scope: !127)
!361 = !DILocation(line: 67, column: 19, scope: !78)
!362 = !DILocation(line: 151, column: 15, scope: !127)
!363 = !DILocation(line: 170, column: 6, scope: !139)
!364 = !DILocation(line: 171, column: 6, scope: !141)
!365 = !DILocation(line: 173, column: 6, scope: !143)
!366 = !DILocation(line: 151, column: 23, scope: !127)
!367 = !DILocation(line: 174, column: 21, scope: !127)
!368 = !DILocation(line: 174, column: 15, scope: !127)
!369 = !DILocation(line: 151, column: 27, scope: !127)
!370 = !DILocation(line: 175, column: 21, scope: !127)
!371 = !DILocation(line: 175, column: 17, scope: !127)
!372 = !DILocation(line: 175, column: 30, scope: !127)
!373 = !DILocation(line: 175, column: 26, scope: !127)
!374 = !DILocation(line: 175, column: 13, scope: !127)
!375 = !DILocation(line: 151, column: 19, scope: !127)
!376 = !DILocation(line: 177, column: 12, scope: !127)
!377 = !DILocation(line: 151, column: 12, scope: !127)
!378 = !DILocation(line: 178, column: 12, scope: !127)
!379 = !DILocation(line: 178, column: 50, scope: !127)
!380 = !DILocation(line: 178, column: 47, scope: !127)
!381 = !DILocation(line: 178, column: 43, scope: !127)
!382 = !DILocation(line: 178, column: 40, scope: !127)
!383 = !DILocation(line: 178, column: 36, scope: !127)
!384 = !DILocation(line: 178, column: 33, scope: !127)
!385 = !DILocation(line: 178, column: 29, scope: !127)
!386 = !DILocation(line: 178, column: 26, scope: !127)
!387 = !DILocation(line: 178, column: 22, scope: !127)
!388 = !DILocation(line: 178, column: 19, scope: !127)
!389 = !DILocation(line: 178, column: 15, scope: !127)
!390 = !DILocation(line: 67, column: 17, scope: !78)
!391 = !DILocation(line: 179, column: 19, scope: !127)
!392 = !DILocation(line: 179, column: 14, scope: !127)
!393 = !DILocation(line: 179, column: 8, scope: !127)
!394 = !DILocation(line: 180, column: 15, scope: !127)
!395 = !DILocation(line: 181, column: 22, scope: !127)
!396 = !DILocation(line: 181, column: 25, scope: !127)
!397 = !DILocation(line: 182, column: 6, scope: !145)
!398 = !DILocation(line: 183, column: 6, scope: !147)
!399 = !DILocation(line: 184, column: 19, scope: !127)
!400 = !DILocation(line: 184, column: 31, scope: !127)
!401 = !DILocation(line: 184, column: 13, scope: !127)
!402 = !DILocation(line: 186, column: 13, scope: !127)
!403 = !DILocation(line: 187, column: 13, scope: !127)
!404 = !DILocation(line: 187, column: 21, scope: !127)
!405 = !DILocation(line: 187, column: 17, scope: !127)
!406 = !DILocation(line: 189, column: 13, scope: !127)
!407 = !DILocation(line: 66, column: 21, scope: !78)
!408 = !DILocation(line: 190, column: 6, scope: !149)
!409 = !DILocation(line: 191, column: 6, scope: !151)
!410 = !DILocation(line: 192, column: 18, scope: !127)
!411 = !DILocation(line: 192, column: 13, scope: !127)
!412 = !DILocation(line: 66, column: 25, scope: !78)
!413 = !DILocation(line: 193, column: 16, scope: !127)
!414 = !DILocation(line: 66, column: 13, scope: !78)
!415 = !DILocation(line: 194, column: 16, scope: !127)
!416 = !DILocation(line: 194, column: 24, scope: !127)
!417 = !DILocation(line: 194, column: 20, scope: !127)
!418 = !DILocation(line: 194, column: 28, scope: !127)
!419 = !DILocation(line: 194, column: 27, scope: !127)
!420 = !DILocation(line: 66, column: 17, scope: !78)
!421 = !DILocation(line: 196, column: 10, scope: !127)
!422 = !DILocation(line: 197, column: 17, scope: !127)
!423 = !DILocation(line: 197, column: 23, scope: !127)
!424 = !DILocation(line: 197, column: 22, scope: !127)
!425 = !DILocation(line: 197, column: 31, scope: !127)
!426 = !DILocation(line: 198, column: 6, scope: !153)
!427 = !DILocation(line: 199, column: 6, scope: !155)
!428 = !DILocation(line: 200, column: 20, scope: !127)
!429 = !DILocation(line: 200, column: 23, scope: !127)
!430 = !DILocation(line: 200, column: 32, scope: !127)
!431 = !DILocation(line: 67, column: 14, scope: !78)
!432 = !DILocation(line: 0, scope: !155)
!433 = !DILocation(line: 0, scope: !122)
!434 = !DILocation(line: 204, column: 38, scope: !435)
!435 = distinct !DILexicalBlock(scope: !78, file: !3, line: 204, column: 5)
!436 = !DILocation(line: 204, column: 30, scope: !435)
!437 = !DILocation(line: 204, column: 42, scope: !435)
!438 = !DILocation(line: 204, column: 5, scope: !78)
!439 = !DILocation(line: 209, column: 2, scope: !159)
!440 = !DILocation(line: 67, column: 8, scope: !78)
!441 = !DILocation(line: 210, column: 10, scope: !78)
!442 = !DILocation(line: 210, column: 14, scope: !78)
!443 = !DILocation(line: 210, column: 19, scope: !78)
!444 = !DILocation(line: 210, column: 17, scope: !78)
!445 = !DILocation(line: 211, column: 10, scope: !78)
!446 = !DILocation(line: 212, column: 9, scope: !78)
!447 = !DILocation(line: 213, column: 2, scope: !161)
!448 = !DILocation(line: 214, column: 7, scope: !78)
!449 = !DILocation(line: 68, column: 12, scope: !78)
!450 = !DILocation(line: 215, column: 7, scope: !451)
!451 = distinct !DILexicalBlock(scope: !78, file: !3, line: 215, column: 6)
!452 = !DILocation(line: 215, column: 6, scope: !78)
!453 = !DILocation(line: 216, column: 11, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !3, line: 216, column: 10)
!455 = distinct !DILexicalBlock(scope: !451, file: !3, line: 215, column: 11)
!456 = !DILocation(line: 216, column: 10, scope: !455)
!457 = !DILocation(line: 217, column: 18, scope: !454)
!458 = !DILocation(line: 217, column: 23, scope: !454)
!459 = !DILocation(line: 217, column: 10, scope: !454)
!460 = !DILocation(line: 218, column: 16, scope: !461)
!461 = distinct !DILexicalBlock(scope: !454, file: !3, line: 218, column: 15)
!462 = !DILocation(line: 218, column: 15, scope: !454)
!463 = !DILocation(line: 219, column: 16, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !3, line: 219, column: 13)
!465 = !DILocation(line: 219, column: 22, scope: !464)
!466 = !DILocation(line: 219, column: 20, scope: !464)
!467 = !DILocation(line: 219, column: 13, scope: !461)
!468 = !DILocation(line: 219, column: 36, scope: !464)
!469 = !DILocation(line: 219, column: 41, scope: !464)
!470 = !DILocation(line: 219, column: 28, scope: !464)
!471 = !DILocation(line: 221, column: 11, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !3, line: 221, column: 10)
!473 = distinct !DILexicalBlock(scope: !451, file: !3, line: 220, column: 16)
!474 = !DILocation(line: 221, column: 10, scope: !473)
!475 = !DILocation(line: 222, column: 18, scope: !472)
!476 = !DILocation(line: 222, column: 23, scope: !472)
!477 = !DILocation(line: 222, column: 10, scope: !472)
!478 = !DILocation(line: 223, column: 16, scope: !479)
!479 = distinct !DILexicalBlock(scope: !472, file: !3, line: 223, column: 15)
!480 = !DILocation(line: 224, column: 19, scope: !481)
!481 = distinct !DILexicalBlock(scope: !479, file: !3, line: 224, column: 13)
!482 = !DILocation(line: 224, column: 16, scope: !481)
!483 = !DILocation(line: 223, column: 15, scope: !472)
!484 = !DILocation(line: 224, column: 33, scope: !481)
!485 = !DILocation(line: 224, column: 38, scope: !481)
!486 = !DILocation(line: 224, column: 25, scope: !481)
!487 = !DILocation(line: 231, column: 6, scope: !165)
!488 = !DILocation(line: 231, column: 5, scope: !78)
!489 = !DILocation(line: 229, column: 8, scope: !78)
!490 = !DILocation(line: 232, column: 27, scope: !164)
!491 = !DILocation(line: 232, column: 23, scope: !164)
!492 = !DILocation(line: 232, column: 11, scope: !164)
!493 = !DILocation(line: 233, column: 25, scope: !164)
!494 = !DILocation(line: 233, column: 30, scope: !164)
!495 = !DILocation(line: 234, column: 6, scope: !163)
!496 = !DILocation(line: 235, column: 13, scope: !164)
!497 = !DILocation(line: 235, column: 25, scope: !164)
!498 = !DILocation(line: 235, column: 42, scope: !164)
!499 = !DILocation(line: 235, column: 37, scope: !164)
!500 = !DILocation(line: 236, column: 10, scope: !501)
!501 = distinct !DILexicalBlock(scope: !164, file: !3, line: 236, column: 9)
!502 = !DILocation(line: 236, column: 18, scope: !501)
!503 = !DILocation(line: 236, column: 9, scope: !164)
!504 = !DILocation(line: 237, column: 10, scope: !164)
!505 = !DILocation(line: 239, column: 9, scope: !78)
!506 = !DILocation(line: 240, column: 2, scope: !167)
!507 = !DILocation(line: 238, column: 2, scope: !164)
!508 = !DILocation(line: 241, column: 2, scope: !169)
!509 = !DILocation(line: 242, column: 7, scope: !78)
!510 = !DILocation(line: 243, column: 13, scope: !78)
!511 = !DILocation(line: 243, column: 10, scope: !78)
!512 = !DILocation(line: 243, column: 19, scope: !78)
!513 = !DILocation(line: 243, column: 25, scope: !78)
!514 = !DILocation(line: 243, column: 23, scope: !78)
!515 = !DILocation(line: 244, column: 7, scope: !78)
!516 = !DILocation(line: 245, column: 10, scope: !78)
!517 = !DILocation(line: 245, column: 7, scope: !78)
!518 = !DILocation(line: 246, column: 8, scope: !78)
!519 = !DILocation(line: 247, column: 37, scope: !78)
!520 = !DILocation(line: 247, column: 35, scope: !78)
!521 = !DILocation(line: 247, column: 31, scope: !78)
!522 = !DILocation(line: 247, column: 29, scope: !78)
!523 = !DILocation(line: 247, column: 25, scope: !78)
!524 = !DILocation(line: 247, column: 23, scope: !78)
!525 = !DILocation(line: 247, column: 19, scope: !78)
!526 = !DILocation(line: 247, column: 17, scope: !78)
!527 = !DILocation(line: 247, column: 13, scope: !78)
!528 = !DILocation(line: 247, column: 10, scope: !78)
!529 = !DILocation(line: 248, column: 9, scope: !78)
!530 = !DILocation(line: 248, column: 17, scope: !78)
!531 = !DILocation(line: 248, column: 13, scope: !78)
!532 = !DILocation(line: 248, column: 27, scope: !78)
!533 = !DILocation(line: 248, column: 25, scope: !78)
!534 = !DILocation(line: 248, column: 22, scope: !78)
!535 = !DILocation(line: 249, column: 10, scope: !78)
!536 = !DILocation(line: 250, column: 2, scope: !171)
!537 = !DILocation(line: 251, column: 9, scope: !78)
!538 = !DILocation(line: 251, column: 4, scope: !78)
!539 = !DILocation(line: 252, column: 12, scope: !174)
!540 = !DILocation(line: 252, column: 5, scope: !78)
!541 = !DILocation(line: 252, column: 21, scope: !174)
!542 = !DILocation(line: 252, column: 17, scope: !174)
!543 = !DILocation(line: 253, column: 7, scope: !173)
!544 = !DILocation(line: 0, scope: !173)
!545 = !DILocation(line: 254, column: 10, scope: !78)
!546 = !DILocation(line: 254, column: 2, scope: !78)
!547 = !DILocation(line: 0, scope: !481)
!548 = !DILocation(line: 255, column: 1, scope: !78)
