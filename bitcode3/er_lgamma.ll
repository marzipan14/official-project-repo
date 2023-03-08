; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/er_lgamma.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/er_lgamma.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_lgamma_r(double, i32* nocapture) local_unnamed_addr #0 !dbg !146 {
  %3 = bitcast double %0 to i64, !dbg !185
  %4 = lshr i64 %3, 32, !dbg !185
  %5 = trunc i64 %4 to i32, !dbg !185
  %6 = trunc i64 %3 to i32, !dbg !185
  store i32 1, i32* %1, align 4, !dbg !188, !tbaa !189
  %7 = and i32 %5, 2147483647, !dbg !193
  %8 = icmp ugt i32 %7, 2146435071, !dbg !195
  br i1 %8, label %9, label %11, !dbg !197

; <label>:9:                                      ; preds = %2
  %10 = fmul double %0, %0, !dbg !198
  br label %297, !dbg !199

; <label>:11:                                     ; preds = %2
  %12 = or i32 %7, %6, !dbg !200
  %13 = icmp eq i32 %12, 0, !dbg !202
  br i1 %13, label %297, label %14, !dbg !203

; <label>:14:                                     ; preds = %11
  %15 = icmp ult i32 %7, 999292928, !dbg !204
  %16 = icmp slt i32 %5, 0, !dbg !206
  br i1 %15, label %17, label %25, !dbg !208

; <label>:17:                                     ; preds = %14
  br i1 %16, label %18, label %22, !dbg !209

; <label>:18:                                     ; preds = %17
  store i32 -1, i32* %1, align 4, !dbg !211, !tbaa !189
  %19 = fsub double -0.000000e+00, %0, !dbg !214
  %20 = tail call double @__ieee754_log(double %19) #3, !dbg !215
  %21 = fsub double -0.000000e+00, %20, !dbg !216
  br label %297, !dbg !217

; <label>:22:                                     ; preds = %17
  %23 = tail call double @__ieee754_log(double %0) #3, !dbg !218
  %24 = fsub double -0.000000e+00, %23, !dbg !219
  br label %297, !dbg !220

; <label>:25:                                     ; preds = %14
  br i1 %16, label %26, label %89, !dbg !221

; <label>:26:                                     ; preds = %25
  %27 = icmp ugt i32 %7, 1127219199, !dbg !222
  br i1 %27, label %297, label %28, !dbg !225

; <label>:28:                                     ; preds = %26
  %29 = icmp ult i32 %7, 1070596096, !dbg !246
  br i1 %29, label %30, label %33, !dbg !248

; <label>:30:                                     ; preds = %28
  %31 = fmul double %0, 0x400921FB54442D18, !dbg !249
  %32 = tail call double @__kernel_sin(double %31, double 0.000000e+00, i32 0) #3, !dbg !250
  br label %77, !dbg !251

; <label>:33:                                     ; preds = %28
  %34 = fsub double -0.000000e+00, %0, !dbg !252
  %35 = tail call double @floor(double %34) #3, !dbg !254
  %36 = fcmp une double %35, %34, !dbg !256
  br i1 %36, label %37, label %44, !dbg !257

; <label>:37:                                     ; preds = %33
  %38 = fmul double %0, -5.000000e-01, !dbg !258
  %39 = tail call double @floor(double %38) #3, !dbg !260
  %40 = fsub double %38, %39, !dbg !261
  %41 = fmul double %40, 2.000000e+00, !dbg !262
  %42 = fmul double %41, 4.000000e+00, !dbg !263
  %43 = fptosi double %42 to i32, !dbg !264
  br label %51, !dbg !266

; <label>:44:                                     ; preds = %33
  %45 = fsub double 0x4330000000000000, %0, !dbg !267
  %46 = bitcast double %45 to i64, !dbg !269
  %47 = trunc i64 %46 to i32, !dbg !269
  %48 = and i32 %47, 1, !dbg !270
  %49 = sitofp i32 %48 to double, !dbg !271
  %50 = shl nuw nsw i32 %48, 2, !dbg !272
  br label %51

; <label>:51:                                     ; preds = %44, %37
  %52 = phi i32 [ %43, %37 ], [ %50, %44 ], !dbg !273
  %53 = phi double [ %41, %37 ], [ %49, %44 ], !dbg !273
  switch i32 %52, label %70 [
    i32 0, label %54
    i32 1, label %57
    i32 2, label %57
    i32 3, label %61
    i32 4, label %61
    i32 5, label %65
    i32 6, label %65
  ], !dbg !274

; <label>:54:                                     ; preds = %51
  %55 = fmul double %53, 0x400921FB54442D18, !dbg !275
  %56 = tail call double @__kernel_sin(double %55, double 0.000000e+00, i32 0) #3, !dbg !277
  br label %74, !dbg !278

; <label>:57:                                     ; preds = %51, %51
  %58 = fsub double 5.000000e-01, %53, !dbg !279
  %59 = fmul double %58, 0x400921FB54442D18, !dbg !280
  %60 = tail call double @__kernel_cos(double %59, double 0.000000e+00) #3, !dbg !281
  br label %74, !dbg !282

; <label>:61:                                     ; preds = %51, %51
  %62 = fsub double 1.000000e+00, %53, !dbg !283
  %63 = fmul double %62, 0x400921FB54442D18, !dbg !284
  %64 = tail call double @__kernel_sin(double %63, double 0.000000e+00, i32 0) #3, !dbg !285
  br label %74, !dbg !286

; <label>:65:                                     ; preds = %51, %51
  %66 = fadd double %53, -1.500000e+00, !dbg !287
  %67 = fmul double %66, 0x400921FB54442D18, !dbg !288
  %68 = tail call double @__kernel_cos(double %67, double 0.000000e+00) #3, !dbg !289
  %69 = fsub double -0.000000e+00, %68, !dbg !290
  br label %74, !dbg !291

; <label>:70:                                     ; preds = %51
  %71 = fadd double %53, -2.000000e+00, !dbg !292
  %72 = fmul double %71, 0x400921FB54442D18, !dbg !293
  %73 = tail call double @__kernel_sin(double %72, double 0.000000e+00, i32 0) #3, !dbg !294
  br label %74, !dbg !295

; <label>:74:                                     ; preds = %70, %65, %61, %57, %54
  %75 = phi double [ %73, %70 ], [ %69, %65 ], [ %64, %61 ], [ %60, %57 ], [ %56, %54 ], !dbg !296
  %76 = fsub double -0.000000e+00, %75, !dbg !297
  br label %77, !dbg !298

; <label>:77:                                     ; preds = %30, %74
  %78 = phi double [ %32, %30 ], [ %76, %74 ], !dbg !299
  %79 = fcmp oeq double %78, 0.000000e+00, !dbg !301
  br i1 %79, label %297, label %80, !dbg !303

; <label>:80:                                     ; preds = %77
  %81 = fmul double %78, %0, !dbg !304
  %82 = tail call double @fabs(double %81) #3, !dbg !305
  %83 = fdiv double 0x400921FB54442D18, %82, !dbg !306
  %84 = tail call double @__ieee754_log(double %83) #3, !dbg !307
  %85 = fcmp olt double %78, 0.000000e+00, !dbg !308
  br i1 %85, label %86, label %87, !dbg !310

; <label>:86:                                     ; preds = %80
  store i32 -1, i32* %1, align 4, !dbg !311, !tbaa !189
  br label %87, !dbg !312

; <label>:87:                                     ; preds = %86, %80
  %88 = fsub double -0.000000e+00, %0, !dbg !313
  br label %89, !dbg !314

; <label>:89:                                     ; preds = %87, %25
  %90 = phi double [ %84, %87 ], [ 0.000000e+00, %25 ], !dbg !315
  %91 = phi double [ %88, %87 ], [ %0, %25 ]
  %92 = add nsw i32 %7, -1072693248, !dbg !316
  %93 = or i32 %92, %6, !dbg !318
  %94 = icmp eq i32 %93, 0, !dbg !319
  br i1 %94, label %293, label %95, !dbg !320

; <label>:95:                                     ; preds = %89
  %96 = add nsw i32 %7, -1073741824, !dbg !321
  %97 = or i32 %96, %6, !dbg !322
  %98 = icmp eq i32 %97, 0, !dbg !323
  br i1 %98, label %293, label %99, !dbg !324

; <label>:99:                                     ; preds = %95
  %100 = icmp ult i32 %7, 1073741824, !dbg !325
  br i1 %100, label %101, label %214, !dbg !327

; <label>:101:                                    ; preds = %99
  %102 = icmp ult i32 %7, 1072483533, !dbg !328
  br i1 %102, label %103, label %107, !dbg !331

; <label>:103:                                    ; preds = %101
  %104 = tail call double @__ieee754_log(double %91) #3, !dbg !332
  %105 = fsub double -0.000000e+00, %104, !dbg !334
  %106 = icmp ugt i32 %7, 1072130371, !dbg !336
  br i1 %106, label %118, label %115, !dbg !338

; <label>:107:                                    ; preds = %101
  %108 = icmp ugt i32 %7, 1073460418, !dbg !339
  br i1 %108, label %118, label %109, !dbg !342

; <label>:109:                                    ; preds = %107
  %110 = icmp ugt i32 %7, 1072936131, !dbg !343
  br i1 %110, label %111, label %113, !dbg !345

; <label>:111:                                    ; preds = %109
  %112 = fadd double %91, 0xBFF762D86356BE3F, !dbg !346
  br label %149, !dbg !350

; <label>:113:                                    ; preds = %109
  %114 = fadd double %91, -1.000000e+00, !dbg !351
  br label %186, !dbg !350

; <label>:115:                                    ; preds = %103
  %116 = icmp ugt i32 %7, 1070442080, !dbg !353
  %117 = fadd double %91, 0xBFDD8B618D5AF8FC, !dbg !355
  br i1 %116, label %149, label %186, !dbg !350

; <label>:118:                                    ; preds = %107, %103
  %119 = phi double [ 1.000000e+00, %103 ], [ 2.000000e+00, %107 ]
  %120 = phi double [ %105, %103 ], [ 0.000000e+00, %107 ]
  %121 = fsub double %119, %91, !dbg !357
  %122 = fmul double %121, %121, !dbg !359
  %123 = fmul double %122, 0x3EFA7074428CFA52, !dbg !362
  %124 = fadd double %123, 0x3F2CF2ECED10E54D, !dbg !363
  %125 = fmul double %122, %124, !dbg !364
  %126 = fadd double %125, 0x3F538A94116F3F5D, !dbg !365
  %127 = fmul double %122, %126, !dbg !366
  %128 = fadd double %127, 0x3F7E404FB68FEFE8, !dbg !367
  %129 = fmul double %122, %128, !dbg !368
  %130 = fadd double %129, 0x3FB13E001A5562A7, !dbg !369
  %131 = fmul double %122, %130, !dbg !370
  %132 = fadd double %131, 0x3FB3C467E37DB0C8, !dbg !371
  %133 = fmul double %122, 0x3F07858E90A45837, !dbg !373
  %134 = fadd double %133, 0x3F1C5088987DFB07, !dbg !374
  %135 = fmul double %122, %134, !dbg !375
  %136 = fadd double %135, 0x3F40B6C689B99C00, !dbg !376
  %137 = fmul double %122, %136, !dbg !377
  %138 = fadd double %137, 0x3F67ADD8CCB7926B, !dbg !378
  %139 = fmul double %122, %138, !dbg !379
  %140 = fadd double %139, 0x3F951322AC92547B, !dbg !380
  %141 = fmul double %122, %140, !dbg !381
  %142 = fadd double %141, 0x3FD4A34CC4A60FAD, !dbg !382
  %143 = fmul double %122, %142, !dbg !383
  %144 = fmul double %121, %132, !dbg !385
  %145 = fadd double %144, %143, !dbg !386
  %146 = fmul double %121, 5.000000e-01, !dbg !388
  %147 = fsub double %145, %146, !dbg !389
  %148 = fadd double %120, %147, !dbg !390
  br label %293, !dbg !391

; <label>:149:                                    ; preds = %115, %111
  %150 = phi double [ %112, %111 ], [ %117, %115 ]
  %151 = phi double [ 0.000000e+00, %111 ], [ %105, %115 ]
  %152 = fmul double %150, %150, !dbg !392
  %153 = fmul double %150, %152, !dbg !393
  %154 = fmul double %153, 0x3F34AF6D6C0EBBF7, !dbg !395
  %155 = fadd double %154, 0xBF56FE8EBF2D1AF1, !dbg !396
  %156 = fmul double %153, %155, !dbg !397
  %157 = fadd double %156, 0x3F78FCE0E370E344, !dbg !398
  %158 = fmul double %153, %157, !dbg !399
  %159 = fadd double %158, 0xBFA0C9A8DF35B713, !dbg !400
  %160 = fmul double %153, %159, !dbg !401
  %161 = fadd double %160, 0x3FDEF72BC8EE38A2, !dbg !402
  %162 = fmul double %153, 0x3F347F24ECC38C38, !dbg !403
  %163 = fsub double 0x3F4CDF0CEF61A8E9, %162, !dbg !403
  %164 = fmul double %153, %163, !dbg !404
  %165 = fadd double %164, 0xBF6E2EFFB3E914D7, !dbg !405
  %166 = fmul double %153, %165, !dbg !406
  %167 = fadd double %166, 0x3F9266E7970AF9EC, !dbg !407
  %168 = fmul double %153, %167, !dbg !408
  %169 = fadd double %168, 0xBFC2E4278DC6C509, !dbg !409
  %170 = fmul double %153, 0x3F35FD3EE8C2D3F4, !dbg !410
  %171 = fadd double %170, 0xBF41A6109C73E0EC, !dbg !411
  %172 = fmul double %153, %171, !dbg !412
  %173 = fadd double %172, 0x3F6282D32E15C915, !dbg !413
  %174 = fmul double %153, %173, !dbg !414
  %175 = fadd double %174, 0xBF851F9FBA91EC6A, !dbg !415
  %176 = fmul double %153, %175, !dbg !416
  %177 = fadd double %176, 0x3FB08B4294D5419B, !dbg !417
  %178 = fmul double %152, %161, !dbg !419
  %179 = fmul double %150, %177, !dbg !420
  %180 = fadd double %169, %179, !dbg !421
  %181 = fmul double %153, %180, !dbg !422
  %182 = fsub double 0xBC50C7CAA48A971F, %181, !dbg !423
  %183 = fsub double %178, %182, !dbg !424
  %184 = fadd double %183, 0xBFBF19B9BCC38A42, !dbg !425
  %185 = fadd double %151, %184, !dbg !426
  br label %293, !dbg !427

; <label>:186:                                    ; preds = %115, %113
  %187 = phi double [ %114, %113 ], [ %91, %115 ]
  %188 = phi double [ 0.000000e+00, %113 ], [ %105, %115 ]
  %189 = fmul double %187, 0x3F8B678BBF2BAB09, !dbg !428
  %190 = fadd double %189, 0x3FCD4EAEF6010924, !dbg !429
  %191 = fmul double %187, %190, !dbg !430
  %192 = fadd double %191, 0x3FEF497644EA8450, !dbg !431
  %193 = fmul double %187, %192, !dbg !432
  %194 = fadd double %193, 0x3FF7475CD119BD6F, !dbg !433
  %195 = fmul double %187, %194, !dbg !434
  %196 = fadd double %195, 0x3FE4401E8B005DFF, !dbg !435
  %197 = fmul double %187, %196, !dbg !436
  %198 = fadd double %197, 0xBFB3C467E37DB0C8, !dbg !437
  %199 = fmul double %187, %198, !dbg !438
  %200 = fmul double %187, 0x3F6A5ABB57D0CF61, !dbg !439
  %201 = fadd double %200, 0x3FBAAE55D6537C88, !dbg !440
  %202 = fmul double %187, %201, !dbg !441
  %203 = fadd double %202, 0x3FE89DFBE45050AF, !dbg !442
  %204 = fmul double %187, %203, !dbg !443
  %205 = fadd double %204, 0x40010725A42B18F5, !dbg !444
  %206 = fmul double %187, %205, !dbg !445
  %207 = fadd double %206, 0x4003A5D7C2BD619C, !dbg !446
  %208 = fmul double %187, %207, !dbg !447
  %209 = fadd double %208, 1.000000e+00, !dbg !448
  %210 = fmul double %187, 5.000000e-01, !dbg !449
  %211 = fdiv double %199, %209, !dbg !450
  %212 = fsub double %211, %210, !dbg !449
  %213 = fadd double %188, %212, !dbg !451
  br label %293, !dbg !452

; <label>:214:                                    ; preds = %99
  %215 = icmp ult i32 %7, 1075838976, !dbg !453
  br i1 %215, label %216, label %268, !dbg !455

; <label>:216:                                    ; preds = %214
  %217 = fptosi double %91 to i32, !dbg !456
  %218 = sitofp i32 %217 to double, !dbg !458
  %219 = fsub double %91, %218, !dbg !459
  %220 = fmul double %219, 0x3F00BFECDD17E945, !dbg !460
  %221 = fadd double %220, 0x3F5E26B67368F239, !dbg !461
  %222 = fmul double %219, %221, !dbg !462
  %223 = fadd double %222, 0x3F9B481C7E939961, !dbg !463
  %224 = fmul double %219, %223, !dbg !464
  %225 = fadd double %224, 0x3FC2BB9CBEE5F2F7, !dbg !465
  %226 = fmul double %219, %225, !dbg !466
  %227 = fadd double %226, 0x3FD4D98F4F139F59, !dbg !467
  %228 = fmul double %219, %227, !dbg !468
  %229 = fadd double %228, 0x3FCB848B36E20878, !dbg !469
  %230 = fmul double %219, %229, !dbg !470
  %231 = fadd double %230, 0xBFB3C467E37DB0C8, !dbg !471
  %232 = fmul double %219, %231, !dbg !472
  %233 = fmul double %219, 0x3EDEBAF7A5B38140, !dbg !473
  %234 = fadd double %233, 0x3F497DDACA41A95B, !dbg !474
  %235 = fmul double %219, %234, !dbg !475
  %236 = fadd double %235, 0x3F9317EA742ED475, !dbg !476
  %237 = fmul double %219, %236, !dbg !477
  %238 = fadd double %237, 0x3FC601EDCCFBDF27, !dbg !478
  %239 = fmul double %219, %238, !dbg !479
  %240 = fadd double %239, 0x3FE71A1893D3DCDC, !dbg !480
  %241 = fmul double %219, %240, !dbg !481
  %242 = fadd double %241, 0x3FF645A762C4AB74, !dbg !482
  %243 = fmul double %219, %242, !dbg !483
  %244 = fadd double %243, 1.000000e+00, !dbg !484
  %245 = fmul double %219, 5.000000e-01, !dbg !486
  %246 = fdiv double %232, %244, !dbg !487
  %247 = fadd double %245, %246, !dbg !488
  switch i32 %217, label %293 [
    i32 7, label %248
    i32 6, label %250
    i32 5, label %254
    i32 4, label %258
    i32 3, label %262
  ], !dbg !489

; <label>:248:                                    ; preds = %216
  %249 = fadd double %219, 6.000000e+00, !dbg !490
  br label %250, !dbg !492

; <label>:250:                                    ; preds = %216, %248
  %251 = phi double [ 1.000000e+00, %216 ], [ %249, %248 ], !dbg !493
  %252 = fadd double %219, 5.000000e+00, !dbg !494
  %253 = fmul double %252, %251, !dbg !495
  br label %254, !dbg !496

; <label>:254:                                    ; preds = %216, %250
  %255 = phi double [ 1.000000e+00, %216 ], [ %253, %250 ], !dbg !493
  %256 = fadd double %219, 4.000000e+00, !dbg !497
  %257 = fmul double %256, %255, !dbg !498
  br label %258, !dbg !499

; <label>:258:                                    ; preds = %216, %254
  %259 = phi double [ 1.000000e+00, %216 ], [ %257, %254 ], !dbg !493
  %260 = fadd double %219, 3.000000e+00, !dbg !500
  %261 = fmul double %260, %259, !dbg !501
  br label %262, !dbg !502

; <label>:262:                                    ; preds = %216, %258
  %263 = phi double [ 1.000000e+00, %216 ], [ %261, %258 ], !dbg !493
  %264 = fadd double %219, 2.000000e+00, !dbg !503
  %265 = fmul double %264, %263, !dbg !504
  %266 = tail call double @__ieee754_log(double %265) #3, !dbg !505
  %267 = fadd double %247, %266, !dbg !506
  br label %293, !dbg !507

; <label>:268:                                    ; preds = %214
  %269 = icmp ult i32 %7, 1133510656, !dbg !508
  %270 = tail call double @__ieee754_log(double %91) #3, !dbg !510
  br i1 %269, label %271, label %290, !dbg !511

; <label>:271:                                    ; preds = %268
  %272 = fdiv double 1.000000e+00, %91, !dbg !512
  %273 = fmul double %272, %272, !dbg !514
  %274 = fmul double %273, 0x3F5AB89D0B9E43E4, !dbg !515
  %275 = fsub double 0x3F4B67BA4CDAD5D1, %274, !dbg !515
  %276 = fmul double %273, %275, !dbg !516
  %277 = fadd double %276, 0xBF4380CB8C0FE741, !dbg !517
  %278 = fmul double %273, %277, !dbg !518
  %279 = fadd double %278, 0x3F4A019F98CF38B6, !dbg !519
  %280 = fmul double %273, %279, !dbg !520
  %281 = fadd double %280, 0xBF66C16C16B02E5C, !dbg !521
  %282 = fmul double %273, %281, !dbg !522
  %283 = fadd double %282, 0x3FB555555555553B, !dbg !523
  %284 = fmul double %272, %283, !dbg !524
  %285 = fadd double %284, 0x3FDACFE390C97D69, !dbg !525
  %286 = fadd double %91, -5.000000e-01, !dbg !526
  %287 = fadd double %270, -1.000000e+00, !dbg !527
  %288 = fmul double %286, %287, !dbg !528
  %289 = fadd double %285, %288, !dbg !529
  br label %293, !dbg !530

; <label>:290:                                    ; preds = %268
  %291 = fadd double %270, -1.000000e+00, !dbg !531
  %292 = fmul double %91, %291, !dbg !532
  br label %293

; <label>:293:                                    ; preds = %89, %95, %186, %149, %118, %271, %290, %262, %216
  %294 = phi double [ %213, %186 ], [ %185, %149 ], [ %148, %118 ], [ %247, %216 ], [ %267, %262 ], [ %289, %271 ], [ %292, %290 ], [ 0.000000e+00, %95 ], [ 0.000000e+00, %89 ], !dbg !510
  %295 = fsub double %90, %294, !dbg !533
  %296 = select i1 %16, double %295, double %294, !dbg !535
  br label %297, !dbg !536

; <label>:297:                                    ; preds = %77, %26, %11, %293, %22, %18, %9
  %298 = phi double [ %10, %9 ], [ %21, %18 ], [ %24, %22 ], [ %296, %293 ], [ 0x7FF0000000000000, %11 ], [ 0x7FF0000000000000, %26 ], [ 0x7FF0000000000000, %77 ], !dbg !315
  ret double %298, !dbg !537
}

; Function Attrs: noredzone
declare dso_local double @__ieee754_log(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @fabs(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @__kernel_sin(double, double, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @floor(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @__kernel_cos(double, double) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!142, !143, !144}
!llvm.ident = !{!145}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !8)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/er_lgamma.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !7}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !5, line: 77, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !{!9, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 91, type: !11, isLocal: true, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "zero", scope: !0, file: !1, line: 157, type: !11, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4614256656552045848, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "pi", scope: !0, file: !1, line: 92, type: !11, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4609261425156079167, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "tc", scope: !0, file: !1, line: 105, type: !11, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 4590228395698008264, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "a0", scope: !0, file: !1, line: 93, type: !11, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 4589517665429971623, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "a2", scope: !0, file: !1, line: 95, type: !11, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 4575164982564483048, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "a4", scope: !0, file: !1, line: 97, type: !11, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 4563143216008740701, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "a6", scope: !0, file: !1, line: 99, type: !11, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_constu, 4552280422768239949, DW_OP_stack_value))
!27 = distinct !DIGlobalVariable(name: "a8", scope: !0, file: !1, line: 101, type: !11, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 4538063219164248658, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "a10", scope: !0, file: !1, line: 103, type: !11, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression(DW_OP_constu, 4599480669564178349, DW_OP_stack_value))
!31 = distinct !DIGlobalVariable(name: "a1", scope: !0, file: !1, line: 94, type: !11, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression(DW_OP_constu, 4581589235564434555, DW_OP_stack_value))
!33 = distinct !DIGlobalVariable(name: "a3", scope: !0, file: !1, line: 96, type: !11, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression(DW_OP_constu, 4568811493649781355, DW_OP_stack_value))
!35 = distinct !DIGlobalVariable(name: "a5", scope: !0, file: !1, line: 98, type: !11, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression(DW_OP_constu, 4557843786729364480, DW_OP_stack_value))
!37 = distinct !DIGlobalVariable(name: "a7", scope: !0, file: !1, line: 100, type: !11, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression(DW_OP_constu, 4547598271341525767, DW_OP_stack_value))
!39 = distinct !DIGlobalVariable(name: "a9", scope: !0, file: !1, line: 102, type: !11, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression(DW_OP_constu, 4541745596584974391, DW_OP_stack_value))
!41 = distinct !DIGlobalVariable(name: "a11", scope: !0, file: !1, line: 104, type: !11, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression(DW_OP_constu, 4602387636645935266, DW_OP_stack_value))
!43 = distinct !DIGlobalVariable(name: "t0", scope: !0, file: !1, line: 109, type: !11, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression(DW_OP_constu, 13808258184654468883, DW_OP_stack_value))
!45 = distinct !DIGlobalVariable(name: "t3", scope: !0, file: !1, line: 112, type: !11, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression(DW_OP_constu, 4573683464413438788, DW_OP_stack_value))
!47 = distinct !DIGlobalVariable(name: "t6", scope: !0, file: !1, line: 115, type: !11, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression(DW_OP_constu, 13787487198287567601, DW_OP_stack_value))
!49 = distinct !DIGlobalVariable(name: "t9", scope: !0, file: !1, line: 118, type: !11, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression(DW_OP_constu, 4554458007677615095, DW_OP_stack_value))
!51 = distinct !DIGlobalVariable(name: "t12", scope: !0, file: !1, line: 121, type: !11, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression(DW_OP_constu, 13817857465259574537, DW_OP_stack_value))
!53 = distinct !DIGlobalVariable(name: "t1", scope: !0, file: !1, line: 110, type: !11, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression(DW_OP_constu, 4580836915846773228, DW_OP_stack_value))
!55 = distinct !DIGlobalVariable(name: "t4", scope: !0, file: !1, line: 113, type: !11, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression(DW_OP_constu, 13794014384452342999, DW_OP_stack_value))
!57 = distinct !DIGlobalVariable(name: "t7", scope: !0, file: !1, line: 116, type: !11, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression(DW_OP_constu, 4561265769268226281, DW_OP_stack_value))
!59 = distinct !DIGlobalVariable(name: "t10", scope: !0, file: !1, line: 119, type: !11, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression(DW_OP_constu, 13777776956600978488, DW_OP_stack_value))
!61 = distinct !DIGlobalVariable(name: "t13", scope: !0, file: !1, line: 122, type: !11, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression(DW_OP_constu, 4589321138371641755, DW_OP_stack_value))
!63 = distinct !DIGlobalVariable(name: "t2", scope: !0, file: !1, line: 111, type: !11, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression(DW_OP_constu, 13800471404037139562, DW_OP_stack_value))
!65 = distinct !DIGlobalVariable(name: "t5", scope: !0, file: !1, line: 114, type: !11, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression(DW_OP_constu, 4567356815629994261, DW_OP_stack_value))
!67 = distinct !DIGlobalVariable(name: "t8", scope: !0, file: !1, line: 117, type: !11, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression(DW_OP_constu, 13781478925004955884, DW_OP_stack_value))
!69 = distinct !DIGlobalVariable(name: "t11", scope: !0, file: !1, line: 120, type: !11, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression(DW_OP_constu, 4554825044790006772, DW_OP_stack_value))
!71 = distinct !DIGlobalVariable(name: "t14", scope: !0, file: !1, line: 123, type: !11, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression(DW_OP_constu, 13569565350425171743, DW_OP_stack_value))
!73 = distinct !DIGlobalVariable(name: "tt", scope: !0, file: !1, line: 108, type: !11, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression(DW_OP_constu, 13816790467322546754, DW_OP_stack_value))
!75 = distinct !DIGlobalVariable(name: "tf", scope: !0, file: !1, line: 106, type: !11, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression(DW_OP_constu, 13813600432552784072, DW_OP_stack_value))
!77 = distinct !DIGlobalVariable(name: "u0", scope: !0, file: !1, line: 124, type: !11, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression(DW_OP_constu, 4603875219004743167, DW_OP_stack_value))
!79 = distinct !DIGlobalVariable(name: "u1", scope: !0, file: !1, line: 125, type: !11, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression(DW_OP_constu, 4609231207607680367, DW_OP_stack_value))
!81 = distinct !DIGlobalVariable(name: "u2", scope: !0, file: !1, line: 126, type: !11, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression(DW_OP_constu, 4606981716134495312, DW_OP_stack_value))
!83 = distinct !DIGlobalVariable(name: "u3", scope: !0, file: !1, line: 127, type: !11, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression(DW_OP_constu, 4597417307973683492, DW_OP_stack_value))
!85 = distinct !DIGlobalVariable(name: "u4", scope: !0, file: !1, line: 128, type: !11, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression(DW_OP_constu, 4578867296057666313, DW_OP_stack_value))
!87 = distinct !DIGlobalVariable(name: "u5", scope: !0, file: !1, line: 129, type: !11, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression(DW_OP_constu, 4612712789461262748, DW_OP_stack_value))
!89 = distinct !DIGlobalVariable(name: "v1", scope: !0, file: !1, line: 130, type: !11, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression(DW_OP_constu, 4611975351653570805, DW_OP_stack_value))
!91 = distinct !DIGlobalVariable(name: "v2", scope: !0, file: !1, line: 131, type: !11, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression(DW_OP_constu, 4605104324179153071, DW_OP_stack_value))
!93 = distinct !DIGlobalVariable(name: "v3", scope: !0, file: !1, line: 132, type: !11, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression(DW_OP_constu, 4592174453748890760, DW_OP_stack_value))
!95 = distinct !DIGlobalVariable(name: "v4", scope: !0, file: !1, line: 133, type: !11, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression(DW_OP_constu, 4569564532599476065, DW_OP_stack_value))
!97 = distinct !DIGlobalVariable(name: "v5", scope: !0, file: !1, line: 134, type: !11, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression(DW_OP_constu, 13813600432552784072, DW_OP_stack_value))
!99 = distinct !DIGlobalVariable(name: "s0", scope: !0, file: !1, line: 135, type: !11, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression(DW_OP_constu, 4596913578117826680, DW_OP_stack_value))
!101 = distinct !DIGlobalVariable(name: "s1", scope: !0, file: !1, line: 136, type: !11, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression(DW_OP_constu, 4599540328982355801, DW_OP_stack_value))
!103 = distinct !DIGlobalVariable(name: "s2", scope: !0, file: !1, line: 137, type: !11, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression(DW_OP_constu, 4594440851763360503, DW_OP_stack_value))
!105 = distinct !DIGlobalVariable(name: "s3", scope: !0, file: !1, line: 138, type: !11, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression(DW_OP_constu, 4583336332999498081, DW_OP_stack_value))
!107 = distinct !DIGlobalVariable(name: "s4", scope: !0, file: !1, line: 139, type: !11, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression(DW_OP_constu, 4566129637262422585, DW_OP_stack_value))
!109 = distinct !DIGlobalVariable(name: "s5", scope: !0, file: !1, line: 140, type: !11, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression(DW_OP_constu, 4539839448431978821, DW_OP_stack_value))
!111 = distinct !DIGlobalVariable(name: "s6", scope: !0, file: !1, line: 141, type: !11, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression(DW_OP_constu, 4608947853879192436, DW_OP_stack_value))
!113 = distinct !DIGlobalVariable(name: "r1", scope: !0, file: !1, line: 142, type: !11, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression(DW_OP_constu, 4604677836871294172, DW_OP_stack_value))
!115 = distinct !DIGlobalVariable(name: "r2", scope: !0, file: !1, line: 143, type: !11, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression(DW_OP_constu, 4595362590636105511, DW_OP_stack_value))
!117 = distinct !DIGlobalVariable(name: "r3", scope: !0, file: !1, line: 144, type: !11, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression(DW_OP_constu, 4581031541704938613, DW_OP_stack_value))
!119 = distinct !DIGlobalVariable(name: "r4", scope: !0, file: !1, line: 145, type: !11, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression(DW_OP_constu, 4560314476338981211, DW_OP_stack_value))
!121 = distinct !DIGlobalVariable(name: "r5", scope: !0, file: !1, line: 146, type: !11, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression(DW_OP_constu, 4530263847980990784, DW_OP_stack_value))
!123 = distinct !DIGlobalVariable(name: "r6", scope: !0, file: !1, line: 147, type: !11, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression(DW_OP_constu, 4602678819172646912, DW_OP_stack_value))
!125 = distinct !DIGlobalVariable(name: "half", scope: !0, file: !1, line: 90, type: !11, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression(DW_OP_constu, 4601218545606032745, DW_OP_stack_value))
!127 = distinct !DIGlobalVariable(name: "w0", scope: !0, file: !1, line: 148, type: !11, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression(DW_OP_constu, 4590669220166325563, DW_OP_stack_value))
!129 = distinct !DIGlobalVariable(name: "w1", scope: !0, file: !1, line: 149, type: !11, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression(DW_OP_constu, 13791923578849996380, DW_OP_stack_value))
!131 = distinct !DIGlobalVariable(name: "w2", scope: !0, file: !1, line: 150, type: !11, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression(DW_OP_constu, 4560459357641193654, DW_OP_stack_value))
!133 = distinct !DIGlobalVariable(name: "w3", scope: !0, file: !1, line: 151, type: !11, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression(DW_OP_constu, 13782000896400418625, DW_OP_stack_value))
!135 = distinct !DIGlobalVariable(name: "w4", scope: !0, file: !1, line: 152, type: !11, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression(DW_OP_constu, 4560853097493747153, DW_OP_stack_value))
!137 = distinct !DIGlobalVariable(name: "w5", scope: !0, file: !1, line: 153, type: !11, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression(DW_OP_constu, 13788536193792492516, DW_OP_stack_value))
!139 = distinct !DIGlobalVariable(name: "w6", scope: !0, file: !1, line: 154, type: !11, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression(DW_OP_constu, 4841369599423283200, DW_OP_stack_value))
!141 = distinct !DIGlobalVariable(name: "two52", scope: !0, file: !1, line: 89, type: !11, isLocal: true, isDefinition: true)
!142 = !{i32 2, !"Dwarf Version", i32 4}
!143 = !{i32 2, !"Debug Info Version", i32 3}
!144 = !{i32 1, !"wchar_size", i32 4}
!145 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!146 = distinct !DISubprogram(name: "__ieee754_lgamma_r", scope: !1, file: !1, line: 213, type: !147, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !150)
!147 = !DISubroutineType(types: !148)
!148 = !{!7, !7, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!151 = !DILocalVariable(name: "x", arg: 1, scope: !146, file: !1, line: 213, type: !7)
!152 = !DILocalVariable(name: "signgamp", arg: 2, scope: !146, file: !1, line: 213, type: !149)
!153 = !DILocalVariable(name: "t", scope: !146, file: !1, line: 219, type: !7)
!154 = !DILocalVariable(name: "y", scope: !146, file: !1, line: 219, type: !7)
!155 = !DILocalVariable(name: "z", scope: !146, file: !1, line: 219, type: !7)
!156 = !DILocalVariable(name: "nadj", scope: !146, file: !1, line: 219, type: !7)
!157 = !DILocalVariable(name: "p", scope: !146, file: !1, line: 219, type: !7)
!158 = !DILocalVariable(name: "p1", scope: !146, file: !1, line: 219, type: !7)
!159 = !DILocalVariable(name: "p2", scope: !146, file: !1, line: 219, type: !7)
!160 = !DILocalVariable(name: "p3", scope: !146, file: !1, line: 219, type: !7)
!161 = !DILocalVariable(name: "q", scope: !146, file: !1, line: 219, type: !7)
!162 = !DILocalVariable(name: "r", scope: !146, file: !1, line: 219, type: !7)
!163 = !DILocalVariable(name: "w", scope: !146, file: !1, line: 219, type: !7)
!164 = !DILocalVariable(name: "i", scope: !146, file: !1, line: 220, type: !4)
!165 = !DILocalVariable(name: "hx", scope: !146, file: !1, line: 220, type: !4)
!166 = !DILocalVariable(name: "lx", scope: !146, file: !1, line: 220, type: !4)
!167 = !DILocalVariable(name: "ix", scope: !146, file: !1, line: 220, type: !4)
!168 = !DILocalVariable(name: "ew_u", scope: !169, file: !1, line: 222, type: !170)
!169 = distinct !DILexicalBlock(scope: !146, file: !1, line: 222, column: 2)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !171, line: 278, baseType: !172)
!171 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !171, line: 270, size: 64, elements: !173)
!173 = !{!174, !175}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !172, file: !171, line: 272, baseType: !7, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !172, file: !171, line: 277, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !172, file: !171, line: 273, size: 64, elements: !177)
!177 = !{!178, !181}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !176, file: !171, line: 275, baseType: !179, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !5, line: 79, baseType: !180)
!180 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !176, file: !171, line: 276, baseType: !179, size: 32, offset: 32)
!182 = !DILocation(line: 213, column: 35, scope: !146)
!183 = !DILocation(line: 213, column: 43, scope: !146)
!184 = !DILocation(line: 219, column: 15, scope: !146)
!185 = !DILocation(line: 222, column: 2, scope: !169)
!186 = !DILocation(line: 220, column: 14, scope: !146)
!187 = !DILocation(line: 220, column: 17, scope: !146)
!188 = !DILocation(line: 225, column: 12, scope: !146)
!189 = !{!190, !190, i64 0}
!190 = !{!"int", !191, i64 0}
!191 = !{!"omnipotent char", !192, i64 0}
!192 = !{!"Simple C/C++ TBAA"}
!193 = !DILocation(line: 226, column: 9, scope: !146)
!194 = !DILocation(line: 220, column: 20, scope: !146)
!195 = !DILocation(line: 227, column: 7, scope: !196)
!196 = distinct !DILexicalBlock(scope: !146, file: !1, line: 227, column: 5)
!197 = !DILocation(line: 227, column: 5, scope: !146)
!198 = !DILocation(line: 227, column: 29, scope: !196)
!199 = !DILocation(line: 227, column: 21, scope: !196)
!200 = !DILocation(line: 228, column: 8, scope: !201)
!201 = distinct !DILexicalBlock(scope: !146, file: !1, line: 228, column: 5)
!202 = !DILocation(line: 228, column: 12, scope: !201)
!203 = !DILocation(line: 228, column: 5, scope: !146)
!204 = !DILocation(line: 229, column: 7, scope: !205)
!205 = distinct !DILexicalBlock(scope: !146, file: !1, line: 229, column: 5)
!206 = !DILocation(line: 0, scope: !207)
!207 = distinct !DILexicalBlock(scope: !146, file: !1, line: 235, column: 5)
!208 = !DILocation(line: 229, column: 5, scope: !146)
!209 = !DILocation(line: 230, column: 9, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !1, line: 229, column: 20)
!211 = !DILocation(line: 231, column: 20, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !1, line: 230, column: 15)
!213 = distinct !DILexicalBlock(scope: !210, file: !1, line: 230, column: 9)
!214 = !DILocation(line: 232, column: 32, scope: !212)
!215 = !DILocation(line: 232, column: 18, scope: !212)
!216 = !DILocation(line: 232, column: 17, scope: !212)
!217 = !DILocation(line: 232, column: 10, scope: !212)
!218 = !DILocation(line: 233, column: 21, scope: !213)
!219 = !DILocation(line: 233, column: 20, scope: !213)
!220 = !DILocation(line: 233, column: 13, scope: !213)
!221 = !DILocation(line: 235, column: 5, scope: !146)
!222 = !DILocation(line: 236, column: 11, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !1, line: 236, column: 9)
!224 = distinct !DILexicalBlock(scope: !207, file: !1, line: 235, column: 11)
!225 = !DILocation(line: 236, column: 9, scope: !224)
!226 = !DILocalVariable(name: "x", arg: 1, scope: !227, file: !1, line: 163, type: !7)
!227 = distinct !DISubprogram(name: "sin_pi", scope: !1, file: !1, line: 163, type: !228, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{!7, !7}
!230 = !{!226, !231, !232, !233, !234, !235, !237}
!231 = !DILocalVariable(name: "y", scope: !227, file: !1, line: 169, type: !7)
!232 = !DILocalVariable(name: "z", scope: !227, file: !1, line: 169, type: !7)
!233 = !DILocalVariable(name: "n", scope: !227, file: !1, line: 170, type: !4)
!234 = !DILocalVariable(name: "ix", scope: !227, file: !1, line: 170, type: !4)
!235 = !DILocalVariable(name: "gh_u", scope: !236, file: !1, line: 172, type: !170)
!236 = distinct !DILexicalBlock(scope: !227, file: !1, line: 172, column: 2)
!237 = !DILocalVariable(name: "gl_u", scope: !238, file: !1, line: 192, type: !170)
!238 = distinct !DILexicalBlock(scope: !239, file: !1, line: 192, column: 3)
!239 = distinct !DILexicalBlock(scope: !240, file: !1, line: 190, column: 20)
!240 = distinct !DILexicalBlock(scope: !241, file: !1, line: 188, column: 16)
!241 = distinct !DILexicalBlock(scope: !242, file: !1, line: 187, column: 9)
!242 = distinct !DILexicalBlock(scope: !227, file: !1, line: 183, column: 5)
!243 = !DILocation(line: 163, column: 30, scope: !227, inlinedAt: !244)
!244 = distinct !DILocation(line: 238, column: 10, scope: !224)
!245 = !DILocation(line: 170, column: 14, scope: !227, inlinedAt: !244)
!246 = !DILocation(line: 175, column: 7, scope: !247, inlinedAt: !244)
!247 = distinct !DILexicalBlock(scope: !227, file: !1, line: 175, column: 5)
!248 = !DILocation(line: 175, column: 5, scope: !227, inlinedAt: !244)
!249 = !DILocation(line: 175, column: 42, scope: !247, inlinedAt: !244)
!250 = !DILocation(line: 175, column: 27, scope: !247, inlinedAt: !244)
!251 = !DILocation(line: 175, column: 20, scope: !247, inlinedAt: !244)
!252 = !DILocation(line: 176, column: 6, scope: !227, inlinedAt: !244)
!253 = !DILocation(line: 169, column: 9, scope: !227, inlinedAt: !244)
!254 = !DILocation(line: 182, column: 6, scope: !227, inlinedAt: !244)
!255 = !DILocation(line: 169, column: 11, scope: !227, inlinedAt: !244)
!256 = !DILocation(line: 183, column: 6, scope: !242, inlinedAt: !244)
!257 = !DILocation(line: 183, column: 5, scope: !227, inlinedAt: !244)
!258 = !DILocation(line: 184, column: 9, scope: !259, inlinedAt: !244)
!259 = distinct !DILexicalBlock(scope: !242, file: !1, line: 183, column: 11)
!260 = !DILocation(line: 185, column: 21, scope: !259, inlinedAt: !244)
!261 = !DILocation(line: 185, column: 19, scope: !259, inlinedAt: !244)
!262 = !DILocation(line: 185, column: 15, scope: !259, inlinedAt: !244)
!263 = !DILocation(line: 186, column: 26, scope: !259, inlinedAt: !244)
!264 = !DILocation(line: 186, column: 12, scope: !259, inlinedAt: !244)
!265 = !DILocation(line: 170, column: 12, scope: !227, inlinedAt: !244)
!266 = !DILocation(line: 187, column: 2, scope: !259, inlinedAt: !244)
!267 = !DILocation(line: 191, column: 40, scope: !268, inlinedAt: !244)
!268 = distinct !DILexicalBlock(scope: !239, file: !1, line: 191, column: 20)
!269 = !DILocation(line: 192, column: 3, scope: !238, inlinedAt: !244)
!270 = !DILocation(line: 193, column: 5, scope: !239, inlinedAt: !244)
!271 = !DILocation(line: 194, column: 22, scope: !239, inlinedAt: !244)
!272 = !DILocation(line: 195, column: 18, scope: !239, inlinedAt: !244)
!273 = !DILocation(line: 0, scope: !239, inlinedAt: !244)
!274 = !DILocation(line: 198, column: 2, scope: !227, inlinedAt: !244)
!275 = !DILocation(line: 199, column: 36, scope: !276, inlinedAt: !244)
!276 = distinct !DILexicalBlock(scope: !227, file: !1, line: 198, column: 13)
!277 = !DILocation(line: 199, column: 21, scope: !276, inlinedAt: !244)
!278 = !DILocation(line: 199, column: 48, scope: !276, inlinedAt: !244)
!279 = !DILocation(line: 201, column: 41, scope: !276, inlinedAt: !244)
!280 = !DILocation(line: 201, column: 36, scope: !276, inlinedAt: !244)
!281 = !DILocation(line: 201, column: 21, scope: !276, inlinedAt: !244)
!282 = !DILocation(line: 201, column: 52, scope: !276, inlinedAt: !244)
!283 = !DILocation(line: 203, column: 41, scope: !276, inlinedAt: !244)
!284 = !DILocation(line: 203, column: 36, scope: !276, inlinedAt: !244)
!285 = !DILocation(line: 203, column: 21, scope: !276, inlinedAt: !244)
!286 = !DILocation(line: 203, column: 54, scope: !276, inlinedAt: !244)
!287 = !DILocation(line: 205, column: 39, scope: !276, inlinedAt: !244)
!288 = !DILocation(line: 205, column: 36, scope: !276, inlinedAt: !244)
!289 = !DILocation(line: 205, column: 21, scope: !276, inlinedAt: !244)
!290 = !DILocation(line: 205, column: 20, scope: !276, inlinedAt: !244)
!291 = !DILocation(line: 205, column: 52, scope: !276, inlinedAt: !244)
!292 = !DILocation(line: 206, column: 39, scope: !276, inlinedAt: !244)
!293 = !DILocation(line: 206, column: 36, scope: !276, inlinedAt: !244)
!294 = !DILocation(line: 206, column: 21, scope: !276, inlinedAt: !244)
!295 = !DILocation(line: 206, column: 54, scope: !276, inlinedAt: !244)
!296 = !DILocation(line: 0, scope: !276, inlinedAt: !244)
!297 = !DILocation(line: 208, column: 9, scope: !227, inlinedAt: !244)
!298 = !DILocation(line: 208, column: 2, scope: !227, inlinedAt: !244)
!299 = !DILocation(line: 0, scope: !227, inlinedAt: !244)
!300 = !DILocation(line: 219, column: 9, scope: !146)
!301 = !DILocation(line: 239, column: 10, scope: !302)
!302 = distinct !DILexicalBlock(scope: !224, file: !1, line: 239, column: 9)
!303 = !DILocation(line: 239, column: 9, scope: !224)
!304 = !DILocation(line: 240, column: 36, scope: !224)
!305 = !DILocation(line: 240, column: 30, scope: !224)
!306 = !DILocation(line: 240, column: 29, scope: !224)
!307 = !DILocation(line: 240, column: 13, scope: !224)
!308 = !DILocation(line: 241, column: 10, scope: !309)
!309 = distinct !DILexicalBlock(scope: !224, file: !1, line: 241, column: 9)
!310 = !DILocation(line: 241, column: 9, scope: !224)
!311 = !DILocation(line: 241, column: 27, scope: !309)
!312 = !DILocation(line: 241, column: 17, scope: !309)
!313 = !DILocation(line: 242, column: 10, scope: !224)
!314 = !DILocation(line: 243, column: 2, scope: !224)
!315 = !DILocation(line: 0, scope: !146)
!316 = !DILocation(line: 246, column: 10, scope: !317)
!317 = distinct !DILexicalBlock(scope: !146, file: !1, line: 246, column: 5)
!318 = !DILocation(line: 246, column: 22, scope: !317)
!319 = !DILocation(line: 246, column: 26, scope: !317)
!320 = !DILocation(line: 246, column: 30, scope: !317)
!321 = !DILocation(line: 246, column: 37, scope: !317)
!322 = !DILocation(line: 246, column: 49, scope: !317)
!323 = !DILocation(line: 246, column: 53, scope: !317)
!324 = !DILocation(line: 246, column: 5, scope: !146)
!325 = !DILocation(line: 248, column: 12, scope: !326)
!326 = distinct !DILexicalBlock(scope: !317, file: !1, line: 248, column: 10)
!327 = !DILocation(line: 248, column: 10, scope: !317)
!328 = !DILocation(line: 249, column: 11, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !1, line: 249, column: 9)
!330 = distinct !DILexicalBlock(scope: !326, file: !1, line: 248, column: 25)
!331 = !DILocation(line: 249, column: 9, scope: !330)
!332 = !DILocation(line: 250, column: 8, scope: !333)
!333 = distinct !DILexicalBlock(scope: !329, file: !1, line: 249, column: 25)
!334 = !DILocation(line: 250, column: 7, scope: !333)
!335 = !DILocation(line: 219, column: 39, scope: !146)
!336 = !DILocation(line: 251, column: 8, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !1, line: 251, column: 6)
!338 = !DILocation(line: 251, column: 6, scope: !333)
!339 = !DILocation(line: 256, column: 15, scope: !340)
!340 = distinct !DILexicalBlock(scope: !341, file: !1, line: 256, column: 13)
!341 = distinct !DILexicalBlock(scope: !329, file: !1, line: 254, column: 13)
!342 = !DILocation(line: 256, column: 13, scope: !341)
!343 = !DILocation(line: 257, column: 20, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !1, line: 257, column: 18)
!345 = !DILocation(line: 257, column: 18, scope: !340)
!346 = !DILocation(line: 257, column: 38, scope: !347)
!347 = distinct !DILexicalBlock(scope: !344, file: !1, line: 257, column: 34)
!348 = !DILocation(line: 219, column: 11, scope: !146)
!349 = !DILocation(line: 220, column: 12, scope: !146)
!350 = !DILocation(line: 260, column: 6, scope: !330)
!351 = !DILocation(line: 258, column: 12, scope: !352)
!352 = distinct !DILexicalBlock(scope: !344, file: !1, line: 258, column: 8)
!353 = !DILocation(line: 252, column: 13, scope: !354)
!354 = distinct !DILexicalBlock(scope: !337, file: !1, line: 252, column: 11)
!355 = !DILocation(line: 252, column: 32, scope: !356)
!356 = distinct !DILexicalBlock(scope: !354, file: !1, line: 252, column: 27)
!357 = !DILocation(line: 0, scope: !358)
!358 = distinct !DILexicalBlock(scope: !337, file: !1, line: 251, column: 22)
!359 = !DILocation(line: 262, column: 8, scope: !360)
!360 = distinct !DILexicalBlock(scope: !330, file: !1, line: 260, column: 16)
!361 = !DILocation(line: 219, column: 13, scope: !146)
!362 = !DILocation(line: 263, column: 36, scope: !360)
!363 = !DILocation(line: 263, column: 34, scope: !360)
!364 = !DILocation(line: 263, column: 30, scope: !360)
!365 = !DILocation(line: 263, column: 28, scope: !360)
!366 = !DILocation(line: 263, column: 24, scope: !360)
!367 = !DILocation(line: 263, column: 22, scope: !360)
!368 = !DILocation(line: 263, column: 18, scope: !360)
!369 = !DILocation(line: 263, column: 16, scope: !360)
!370 = !DILocation(line: 263, column: 12, scope: !360)
!371 = !DILocation(line: 263, column: 10, scope: !360)
!372 = !DILocation(line: 219, column: 28, scope: !146)
!373 = !DILocation(line: 264, column: 39, scope: !360)
!374 = !DILocation(line: 264, column: 37, scope: !360)
!375 = !DILocation(line: 264, column: 33, scope: !360)
!376 = !DILocation(line: 264, column: 31, scope: !360)
!377 = !DILocation(line: 264, column: 27, scope: !360)
!378 = !DILocation(line: 264, column: 25, scope: !360)
!379 = !DILocation(line: 264, column: 21, scope: !360)
!380 = !DILocation(line: 264, column: 19, scope: !360)
!381 = !DILocation(line: 264, column: 15, scope: !360)
!382 = !DILocation(line: 264, column: 13, scope: !360)
!383 = !DILocation(line: 264, column: 9, scope: !360)
!384 = !DILocation(line: 219, column: 31, scope: !146)
!385 = !DILocation(line: 265, column: 9, scope: !360)
!386 = !DILocation(line: 265, column: 12, scope: !360)
!387 = !DILocation(line: 219, column: 26, scope: !146)
!388 = !DILocation(line: 266, column: 15, scope: !360)
!389 = !DILocation(line: 266, column: 11, scope: !360)
!390 = !DILocation(line: 266, column: 6, scope: !360)
!391 = !DILocation(line: 266, column: 20, scope: !360)
!392 = !DILocation(line: 268, column: 8, scope: !360)
!393 = !DILocation(line: 269, column: 8, scope: !360)
!394 = !DILocation(line: 219, column: 41, scope: !146)
!395 = !DILocation(line: 270, column: 31, scope: !360)
!396 = !DILocation(line: 270, column: 29, scope: !360)
!397 = !DILocation(line: 270, column: 24, scope: !360)
!398 = !DILocation(line: 270, column: 22, scope: !360)
!399 = !DILocation(line: 270, column: 18, scope: !360)
!400 = !DILocation(line: 270, column: 16, scope: !360)
!401 = !DILocation(line: 270, column: 12, scope: !360)
!402 = !DILocation(line: 270, column: 10, scope: !360)
!403 = !DILocation(line: 271, column: 31, scope: !360)
!404 = !DILocation(line: 271, column: 24, scope: !360)
!405 = !DILocation(line: 271, column: 22, scope: !360)
!406 = !DILocation(line: 271, column: 18, scope: !360)
!407 = !DILocation(line: 271, column: 16, scope: !360)
!408 = !DILocation(line: 271, column: 12, scope: !360)
!409 = !DILocation(line: 271, column: 10, scope: !360)
!410 = !DILocation(line: 272, column: 31, scope: !360)
!411 = !DILocation(line: 272, column: 29, scope: !360)
!412 = !DILocation(line: 272, column: 24, scope: !360)
!413 = !DILocation(line: 272, column: 22, scope: !360)
!414 = !DILocation(line: 272, column: 18, scope: !360)
!415 = !DILocation(line: 272, column: 16, scope: !360)
!416 = !DILocation(line: 272, column: 12, scope: !360)
!417 = !DILocation(line: 272, column: 10, scope: !360)
!418 = !DILocation(line: 219, column: 34, scope: !146)
!419 = !DILocation(line: 273, column: 9, scope: !360)
!420 = !DILocation(line: 273, column: 24, scope: !360)
!421 = !DILocation(line: 273, column: 22, scope: !360)
!422 = !DILocation(line: 273, column: 18, scope: !360)
!423 = !DILocation(line: 273, column: 16, scope: !360)
!424 = !DILocation(line: 273, column: 12, scope: !360)
!425 = !DILocation(line: 274, column: 12, scope: !360)
!426 = !DILocation(line: 274, column: 5, scope: !360)
!427 = !DILocation(line: 274, column: 18, scope: !360)
!428 = !DILocation(line: 276, column: 39, scope: !360)
!429 = !DILocation(line: 276, column: 37, scope: !360)
!430 = !DILocation(line: 276, column: 33, scope: !360)
!431 = !DILocation(line: 276, column: 31, scope: !360)
!432 = !DILocation(line: 276, column: 27, scope: !360)
!433 = !DILocation(line: 276, column: 25, scope: !360)
!434 = !DILocation(line: 276, column: 21, scope: !360)
!435 = !DILocation(line: 276, column: 19, scope: !360)
!436 = !DILocation(line: 276, column: 15, scope: !360)
!437 = !DILocation(line: 276, column: 13, scope: !360)
!438 = !DILocation(line: 276, column: 9, scope: !360)
!439 = !DILocation(line: 277, column: 37, scope: !360)
!440 = !DILocation(line: 277, column: 35, scope: !360)
!441 = !DILocation(line: 277, column: 31, scope: !360)
!442 = !DILocation(line: 277, column: 29, scope: !360)
!443 = !DILocation(line: 277, column: 25, scope: !360)
!444 = !DILocation(line: 277, column: 23, scope: !360)
!445 = !DILocation(line: 277, column: 19, scope: !360)
!446 = !DILocation(line: 277, column: 17, scope: !360)
!447 = !DILocation(line: 277, column: 13, scope: !360)
!448 = !DILocation(line: 277, column: 11, scope: !360)
!449 = !DILocation(line: 278, column: 13, scope: !360)
!450 = !DILocation(line: 278, column: 20, scope: !360)
!451 = !DILocation(line: 278, column: 5, scope: !360)
!452 = !DILocation(line: 279, column: 6, scope: !360)
!453 = !DILocation(line: 281, column: 12, scope: !454)
!454 = distinct !DILexicalBlock(scope: !326, file: !1, line: 281, column: 10)
!455 = !DILocation(line: 281, column: 10, scope: !326)
!456 = !DILocation(line: 282, column: 10, scope: !457)
!457 = distinct !DILexicalBlock(scope: !454, file: !1, line: 281, column: 25)
!458 = !DILocation(line: 284, column: 12, scope: !457)
!459 = !DILocation(line: 284, column: 11, scope: !457)
!460 = !DILocation(line: 285, column: 47, scope: !457)
!461 = !DILocation(line: 285, column: 45, scope: !457)
!462 = !DILocation(line: 285, column: 41, scope: !457)
!463 = !DILocation(line: 285, column: 39, scope: !457)
!464 = !DILocation(line: 285, column: 35, scope: !457)
!465 = !DILocation(line: 285, column: 33, scope: !457)
!466 = !DILocation(line: 285, column: 29, scope: !457)
!467 = !DILocation(line: 285, column: 27, scope: !457)
!468 = !DILocation(line: 285, column: 23, scope: !457)
!469 = !DILocation(line: 285, column: 21, scope: !457)
!470 = !DILocation(line: 285, column: 17, scope: !457)
!471 = !DILocation(line: 285, column: 15, scope: !457)
!472 = !DILocation(line: 285, column: 11, scope: !457)
!473 = !DILocation(line: 286, column: 45, scope: !457)
!474 = !DILocation(line: 286, column: 43, scope: !457)
!475 = !DILocation(line: 286, column: 39, scope: !457)
!476 = !DILocation(line: 286, column: 37, scope: !457)
!477 = !DILocation(line: 286, column: 33, scope: !457)
!478 = !DILocation(line: 286, column: 31, scope: !457)
!479 = !DILocation(line: 286, column: 27, scope: !457)
!480 = !DILocation(line: 286, column: 25, scope: !457)
!481 = !DILocation(line: 286, column: 21, scope: !457)
!482 = !DILocation(line: 286, column: 19, scope: !457)
!483 = !DILocation(line: 286, column: 15, scope: !457)
!484 = !DILocation(line: 286, column: 13, scope: !457)
!485 = !DILocation(line: 219, column: 37, scope: !146)
!486 = !DILocation(line: 287, column: 14, scope: !457)
!487 = !DILocation(line: 287, column: 18, scope: !457)
!488 = !DILocation(line: 287, column: 16, scope: !457)
!489 = !DILocation(line: 289, column: 6, scope: !457)
!490 = !DILocation(line: 290, column: 21, scope: !491)
!491 = distinct !DILexicalBlock(scope: !457, file: !1, line: 289, column: 16)
!492 = !DILocation(line: 290, column: 14, scope: !491)
!493 = !DILocation(line: 0, scope: !491)
!494 = !DILocation(line: 291, column: 21, scope: !491)
!495 = !DILocation(line: 291, column: 16, scope: !491)
!496 = !DILocation(line: 291, column: 14, scope: !491)
!497 = !DILocation(line: 292, column: 21, scope: !491)
!498 = !DILocation(line: 292, column: 16, scope: !491)
!499 = !DILocation(line: 292, column: 14, scope: !491)
!500 = !DILocation(line: 293, column: 21, scope: !491)
!501 = !DILocation(line: 293, column: 16, scope: !491)
!502 = !DILocation(line: 293, column: 14, scope: !491)
!503 = !DILocation(line: 294, column: 21, scope: !491)
!504 = !DILocation(line: 294, column: 16, scope: !491)
!505 = !DILocation(line: 295, column: 12, scope: !491)
!506 = !DILocation(line: 295, column: 9, scope: !491)
!507 = !DILocation(line: 295, column: 30, scope: !491)
!508 = !DILocation(line: 298, column: 16, scope: !509)
!509 = distinct !DILexicalBlock(scope: !454, file: !1, line: 298, column: 13)
!510 = !DILocation(line: 0, scope: !509)
!511 = !DILocation(line: 298, column: 13, scope: !454)
!512 = !DILocation(line: 300, column: 13, scope: !513)
!513 = distinct !DILexicalBlock(scope: !509, file: !1, line: 298, column: 30)
!514 = !DILocation(line: 301, column: 11, scope: !513)
!515 = !DILocation(line: 302, column: 44, scope: !513)
!516 = !DILocation(line: 302, column: 38, scope: !513)
!517 = !DILocation(line: 302, column: 36, scope: !513)
!518 = !DILocation(line: 302, column: 32, scope: !513)
!519 = !DILocation(line: 302, column: 30, scope: !513)
!520 = !DILocation(line: 302, column: 26, scope: !513)
!521 = !DILocation(line: 302, column: 24, scope: !513)
!522 = !DILocation(line: 302, column: 20, scope: !513)
!523 = !DILocation(line: 302, column: 18, scope: !513)
!524 = !DILocation(line: 302, column: 14, scope: !513)
!525 = !DILocation(line: 302, column: 12, scope: !513)
!526 = !DILocation(line: 303, column: 12, scope: !513)
!527 = !DILocation(line: 303, column: 21, scope: !513)
!528 = !DILocation(line: 303, column: 18, scope: !513)
!529 = !DILocation(line: 303, column: 26, scope: !513)
!530 = !DILocation(line: 304, column: 2, scope: !513)
!531 = !DILocation(line: 306, column: 30, scope: !509)
!532 = !DILocation(line: 306, column: 12, scope: !509)
!533 = !DILocation(line: 307, column: 20, scope: !534)
!534 = distinct !DILexicalBlock(scope: !146, file: !1, line: 307, column: 5)
!535 = !DILocation(line: 307, column: 5, scope: !146)
!536 = !DILocation(line: 308, column: 2, scope: !146)
!537 = !DILocation(line: 309, column: 1, scope: !146)
