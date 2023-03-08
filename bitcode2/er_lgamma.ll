; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/er_lgamma.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/er_lgamma.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_lgamma_r(double, i32* nocapture) local_unnamed_addr #0 !dbg !146 {
  %3 = bitcast double %0 to i64, !dbg !185
  %4 = lshr i64 %3, 32, !dbg !185
  %5 = trunc i64 %4 to i32, !dbg !185
  %6 = trunc i64 %3 to i32, !dbg !185
  store i32 1, i32* %1, align 4, !dbg !188, !tbaa !189
  %7 = and i32 %5, 2147483647, !dbg !193
  %8 = icmp ugt i32 %7, 2146435071, !dbg !195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !197
  br i1 %8, label %9, label %11, !dbg !197

; <label>:9:                                      ; preds = %2
  %10 = fmul double %0, %0, !dbg !198
  br label %297, !dbg !199

; <label>:11:                                     ; preds = %2
  %12 = or i32 %7, %6, !dbg !200
  %13 = icmp eq i32 %12, 0, !dbg !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !203
  br i1 %13, label %297, label %14, !dbg !203

; <label>:14:                                     ; preds = %11
  %15 = icmp ult i32 %7, 999292928, !dbg !204
  %16 = icmp slt i32 %5, 0, !dbg !206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  br i1 %15, label %17, label %25, !dbg !208

; <label>:17:                                     ; preds = %14
  br i1 %16, label %18, label %22, !dbg !210

; <label>:18:                                     ; preds = %17
  store i32 -1, i32* %1, align 4, !dbg !212, !tbaa !189
  %19 = fsub double -0.000000e+00, %0, !dbg !215
  %20 = tail call double @__ieee754_log(double %19) #3, !dbg !216
  %21 = fsub double -0.000000e+00, %20, !dbg !217
  br label %297, !dbg !218

; <label>:22:                                     ; preds = %17
  %23 = tail call double @__ieee754_log(double %0) #3, !dbg !219
  %24 = fsub double -0.000000e+00, %23, !dbg !220
  br label %297, !dbg !221

; <label>:25:                                     ; preds = %14
  br i1 %16, label %26, label %89, !dbg !222

; <label>:26:                                     ; preds = %25
  %27 = icmp ugt i32 %7, 1127219199, !dbg !223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !226
  br i1 %27, label %297, label %28, !dbg !226

; <label>:28:                                     ; preds = %26
  %29 = icmp ult i32 %7, 1070596096, !dbg !247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  br i1 %29, label %30, label %33, !dbg !249

; <label>:30:                                     ; preds = %28
  %31 = fmul double %0, 0x400921FB54442D18, !dbg !250
  %32 = tail call double @__kernel_sin(double %31, double 0.000000e+00, i32 0) #3, !dbg !251
  br label %77, !dbg !252

; <label>:33:                                     ; preds = %28
  %34 = fsub double -0.000000e+00, %0, !dbg !253
  %35 = tail call double @floor(double %34) #3, !dbg !255
  %36 = fcmp une double %35, %34, !dbg !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !258
  br i1 %36, label %37, label %44, !dbg !258

; <label>:37:                                     ; preds = %33
  %38 = fmul double %0, -5.000000e-01, !dbg !259
  %39 = tail call double @floor(double %38) #3, !dbg !261
  %40 = fsub double %38, %39, !dbg !262
  %41 = fmul double %40, 2.000000e+00, !dbg !263
  %42 = fmul double %41, 4.000000e+00, !dbg !264
  %43 = fptosi double %42 to i32, !dbg !265
  br label %51, !dbg !267

; <label>:44:                                     ; preds = %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  %45 = fsub double 0x4330000000000000, %0, !dbg !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  %46 = bitcast double %45 to i64, !dbg !273
  %47 = trunc i64 %46 to i32, !dbg !273
  %48 = and i32 %47, 1, !dbg !274
  %49 = sitofp i32 %48 to double, !dbg !275
  %50 = shl nuw nsw i32 %48, 2, !dbg !276
  br label %51

; <label>:51:                                     ; preds = %44, %37
  %52 = phi i32 [ %43, %37 ], [ %50, %44 ], !dbg !277
  %53 = phi double [ %41, %37 ], [ %49, %44 ], !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  switch i32 %52, label %70 [
    i32 0, label %54
    i32 1, label %57
    i32 2, label %57
    i32 3, label %61
    i32 4, label %61
    i32 5, label %65
    i32 6, label %65
  ], !dbg !278

; <label>:54:                                     ; preds = %51
  %55 = fmul double %53, 0x400921FB54442D18, !dbg !279
  %56 = tail call double @__kernel_sin(double %55, double 0.000000e+00, i32 0) #3, !dbg !281
  br label %74, !dbg !282

; <label>:57:                                     ; preds = %51, %51
  %58 = fsub double 5.000000e-01, %53, !dbg !283
  %59 = fmul double %58, 0x400921FB54442D18, !dbg !284
  %60 = tail call double @__kernel_cos(double %59, double 0.000000e+00) #3, !dbg !285
  br label %74, !dbg !286

; <label>:61:                                     ; preds = %51, %51
  %62 = fsub double 1.000000e+00, %53, !dbg !287
  %63 = fmul double %62, 0x400921FB54442D18, !dbg !288
  %64 = tail call double @__kernel_sin(double %63, double 0.000000e+00, i32 0) #3, !dbg !289
  br label %74, !dbg !290

; <label>:65:                                     ; preds = %51, %51
  %66 = fadd double %53, -1.500000e+00, !dbg !291
  %67 = fmul double %66, 0x400921FB54442D18, !dbg !292
  %68 = tail call double @__kernel_cos(double %67, double 0.000000e+00) #3, !dbg !293
  %69 = fsub double -0.000000e+00, %68, !dbg !294
  br label %74, !dbg !295

; <label>:70:                                     ; preds = %51
  %71 = fadd double %53, -2.000000e+00, !dbg !296
  %72 = fmul double %71, 0x400921FB54442D18, !dbg !297
  %73 = tail call double @__kernel_sin(double %72, double 0.000000e+00, i32 0) #3, !dbg !298
  br label %74, !dbg !299

; <label>:74:                                     ; preds = %70, %65, %61, %57, %54
  %75 = phi double [ %73, %70 ], [ %69, %65 ], [ %64, %61 ], [ %60, %57 ], [ %56, %54 ], !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  %76 = fsub double -0.000000e+00, %75, !dbg !302
  br label %77, !dbg !303

; <label>:77:                                     ; preds = %30, %74
  %78 = phi double [ %32, %30 ], [ %76, %74 ], !dbg !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  %79 = fcmp oeq double %78, 0.000000e+00, !dbg !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  br i1 %79, label %297, label %80, !dbg !309

; <label>:80:                                     ; preds = %77
  %81 = fmul double %78, %0, !dbg !310
  %82 = tail call double @fabs(double %81) #3, !dbg !311
  %83 = fdiv double 0x400921FB54442D18, %82, !dbg !312
  %84 = tail call double @__ieee754_log(double %83) #3, !dbg !313
  %85 = fcmp olt double %78, 0.000000e+00, !dbg !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  br i1 %85, label %86, label %87, !dbg !316

; <label>:86:                                     ; preds = %80
  store i32 -1, i32* %1, align 4, !dbg !317, !tbaa !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  br label %87, !dbg !318

; <label>:87:                                     ; preds = %86, %80
  %88 = fsub double -0.000000e+00, %0, !dbg !319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br label %89, !dbg !320

; <label>:89:                                     ; preds = %87, %25
  %90 = phi double [ %84, %87 ], [ 0.000000e+00, %25 ], !dbg !209
  %91 = phi double [ %88, %87 ], [ %0, %25 ]
  %92 = add nsw i32 %7, -1072693248, !dbg !321
  %93 = or i32 %92, %6, !dbg !323
  %94 = icmp eq i32 %93, 0, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  br i1 %94, label %291, label %95, !dbg !325

; <label>:95:                                     ; preds = %89
  %96 = add nsw i32 %7, -1073741824, !dbg !326
  %97 = or i32 %96, %6, !dbg !327
  %98 = icmp eq i32 %97, 0, !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  br i1 %98, label %291, label %99, !dbg !329

; <label>:99:                                     ; preds = %95
  %100 = icmp ult i32 %7, 1073741824, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  br i1 %100, label %101, label %212, !dbg !332

; <label>:101:                                    ; preds = %99
  %102 = icmp ult i32 %7, 1072483533, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  br i1 %102, label %103, label %109, !dbg !336

; <label>:103:                                    ; preds = %101
  %104 = tail call double @__ieee754_log(double %91) #3, !dbg !337
  %105 = fsub double -0.000000e+00, %104, !dbg !339
  %106 = icmp ugt i32 %7, 1072130371, !dbg !341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  br i1 %106, label %115, label %107, !dbg !343

; <label>:107:                                    ; preds = %103
  %108 = icmp ugt i32 %7, 1070442080, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  br i1 %108, label %146, label %184, !dbg !346

; <label>:109:                                    ; preds = %101
  %110 = icmp ugt i32 %7, 1073460418, !dbg !347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  br i1 %110, label %115, label %111, !dbg !350

; <label>:111:                                    ; preds = %109
  %112 = icmp ugt i32 %7, 1072936131, !dbg !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  br i1 %112, label %146, label %113, !dbg !353

; <label>:113:                                    ; preds = %111
  %114 = fadd double %91, -1.000000e+00, !dbg !354
  br label %184

; <label>:115:                                    ; preds = %109, %103
  %116 = phi double [ %105, %103 ], [ 0.000000e+00, %109 ]
  %117 = phi double [ 1.000000e+00, %103 ], [ 2.000000e+00, %109 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  %118 = fsub double %117, %91, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  %119 = fmul double %118, %118, !dbg !363
  %120 = fmul double %119, 0x3EFA7074428CFA52, !dbg !366
  %121 = fadd double %120, 0x3F2CF2ECED10E54D, !dbg !367
  %122 = fmul double %119, %121, !dbg !368
  %123 = fadd double %122, 0x3F538A94116F3F5D, !dbg !369
  %124 = fmul double %119, %123, !dbg !370
  %125 = fadd double %124, 0x3F7E404FB68FEFE8, !dbg !371
  %126 = fmul double %119, %125, !dbg !372
  %127 = fadd double %126, 0x3FB13E001A5562A7, !dbg !373
  %128 = fmul double %119, %127, !dbg !374
  %129 = fadd double %128, 0x3FB3C467E37DB0C8, !dbg !375
  %130 = fmul double %119, 0x3F07858E90A45837, !dbg !377
  %131 = fadd double %130, 0x3F1C5088987DFB07, !dbg !378
  %132 = fmul double %119, %131, !dbg !379
  %133 = fadd double %132, 0x3F40B6C689B99C00, !dbg !380
  %134 = fmul double %119, %133, !dbg !381
  %135 = fadd double %134, 0x3F67ADD8CCB7926B, !dbg !382
  %136 = fmul double %119, %135, !dbg !383
  %137 = fadd double %136, 0x3F951322AC92547B, !dbg !384
  %138 = fmul double %119, %137, !dbg !385
  %139 = fadd double %138, 0x3FD4A34CC4A60FAD, !dbg !386
  %140 = fmul double %119, %139, !dbg !387
  %141 = fmul double %118, %129, !dbg !389
  %142 = fadd double %141, %140, !dbg !390
  %143 = fmul double %118, 5.000000e-01, !dbg !392
  %144 = fsub double %142, %143, !dbg !393
  %145 = fadd double %116, %144, !dbg !394
  br label %291, !dbg !395

; <label>:146:                                    ; preds = %111, %107
  %147 = phi double [ 0xBFDD8B618D5AF8FC, %107 ], [ 0xBFF762D86356BE3F, %111 ]
  %148 = phi double [ %105, %107 ], [ 0.000000e+00, %111 ]
  %149 = fadd double %91, %147, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  %150 = fmul double %149, %149, !dbg !398
  %151 = fmul double %149, %150, !dbg !399
  %152 = fmul double %151, 0x3F34AF6D6C0EBBF7, !dbg !401
  %153 = fadd double %152, 0xBF56FE8EBF2D1AF1, !dbg !402
  %154 = fmul double %151, %153, !dbg !403
  %155 = fadd double %154, 0x3F78FCE0E370E344, !dbg !404
  %156 = fmul double %151, %155, !dbg !405
  %157 = fadd double %156, 0xBFA0C9A8DF35B713, !dbg !406
  %158 = fmul double %151, %157, !dbg !407
  %159 = fadd double %158, 0x3FDEF72BC8EE38A2, !dbg !408
  %160 = fmul double %151, 0x3F347F24ECC38C38, !dbg !409
  %161 = fsub double 0x3F4CDF0CEF61A8E9, %160, !dbg !409
  %162 = fmul double %151, %161, !dbg !410
  %163 = fadd double %162, 0xBF6E2EFFB3E914D7, !dbg !411
  %164 = fmul double %151, %163, !dbg !412
  %165 = fadd double %164, 0x3F9266E7970AF9EC, !dbg !413
  %166 = fmul double %151, %165, !dbg !414
  %167 = fadd double %166, 0xBFC2E4278DC6C509, !dbg !415
  %168 = fmul double %151, 0x3F35FD3EE8C2D3F4, !dbg !416
  %169 = fadd double %168, 0xBF41A6109C73E0EC, !dbg !417
  %170 = fmul double %151, %169, !dbg !418
  %171 = fadd double %170, 0x3F6282D32E15C915, !dbg !419
  %172 = fmul double %151, %171, !dbg !420
  %173 = fadd double %172, 0xBF851F9FBA91EC6A, !dbg !421
  %174 = fmul double %151, %173, !dbg !422
  %175 = fadd double %174, 0x3FB08B4294D5419B, !dbg !423
  %176 = fmul double %150, %159, !dbg !425
  %177 = fmul double %149, %175, !dbg !426
  %178 = fadd double %167, %177, !dbg !427
  %179 = fmul double %151, %178, !dbg !428
  %180 = fsub double 0xBC50C7CAA48A971F, %179, !dbg !429
  %181 = fsub double %176, %180, !dbg !430
  %182 = fadd double %181, 0xBFBF19B9BCC38A42, !dbg !431
  %183 = fadd double %148, %182, !dbg !432
  br label %291, !dbg !433

; <label>:184:                                    ; preds = %107, %113
  %185 = phi double [ 0.000000e+00, %113 ], [ %105, %107 ], !dbg !434
  %186 = phi double [ %114, %113 ], [ %91, %107 ], !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  %187 = fmul double %186, 0x3F8B678BBF2BAB09, !dbg !436
  %188 = fadd double %187, 0x3FCD4EAEF6010924, !dbg !437
  %189 = fmul double %186, %188, !dbg !438
  %190 = fadd double %189, 0x3FEF497644EA8450, !dbg !439
  %191 = fmul double %186, %190, !dbg !440
  %192 = fadd double %191, 0x3FF7475CD119BD6F, !dbg !441
  %193 = fmul double %186, %192, !dbg !442
  %194 = fadd double %193, 0x3FE4401E8B005DFF, !dbg !443
  %195 = fmul double %186, %194, !dbg !444
  %196 = fadd double %195, 0xBFB3C467E37DB0C8, !dbg !445
  %197 = fmul double %186, %196, !dbg !446
  %198 = fmul double %186, 0x3F6A5ABB57D0CF61, !dbg !447
  %199 = fadd double %198, 0x3FBAAE55D6537C88, !dbg !448
  %200 = fmul double %186, %199, !dbg !449
  %201 = fadd double %200, 0x3FE89DFBE45050AF, !dbg !450
  %202 = fmul double %186, %201, !dbg !451
  %203 = fadd double %202, 0x40010725A42B18F5, !dbg !452
  %204 = fmul double %186, %203, !dbg !453
  %205 = fadd double %204, 0x4003A5D7C2BD619C, !dbg !454
  %206 = fmul double %186, %205, !dbg !455
  %207 = fadd double %206, 1.000000e+00, !dbg !456
  %208 = fmul double %186, 5.000000e-01, !dbg !457
  %209 = fdiv double %197, %207, !dbg !458
  %210 = fsub double %209, %208, !dbg !457
  %211 = fadd double %185, %210, !dbg !459
  br label %291, !dbg !460

; <label>:212:                                    ; preds = %99
  %213 = icmp ult i32 %7, 1075838976, !dbg !461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  br i1 %213, label %214, label %266, !dbg !463

; <label>:214:                                    ; preds = %212
  %215 = fptosi double %91 to i32, !dbg !464
  %216 = sitofp i32 %215 to double, !dbg !466
  %217 = fsub double %91, %216, !dbg !467
  %218 = fmul double %217, 0x3F00BFECDD17E945, !dbg !468
  %219 = fadd double %218, 0x3F5E26B67368F239, !dbg !469
  %220 = fmul double %217, %219, !dbg !470
  %221 = fadd double %220, 0x3F9B481C7E939961, !dbg !471
  %222 = fmul double %217, %221, !dbg !472
  %223 = fadd double %222, 0x3FC2BB9CBEE5F2F7, !dbg !473
  %224 = fmul double %217, %223, !dbg !474
  %225 = fadd double %224, 0x3FD4D98F4F139F59, !dbg !475
  %226 = fmul double %217, %225, !dbg !476
  %227 = fadd double %226, 0x3FCB848B36E20878, !dbg !477
  %228 = fmul double %217, %227, !dbg !478
  %229 = fadd double %228, 0xBFB3C467E37DB0C8, !dbg !479
  %230 = fmul double %217, %229, !dbg !480
  %231 = fmul double %217, 0x3EDEBAF7A5B38140, !dbg !481
  %232 = fadd double %231, 0x3F497DDACA41A95B, !dbg !482
  %233 = fmul double %217, %232, !dbg !483
  %234 = fadd double %233, 0x3F9317EA742ED475, !dbg !484
  %235 = fmul double %217, %234, !dbg !485
  %236 = fadd double %235, 0x3FC601EDCCFBDF27, !dbg !486
  %237 = fmul double %217, %236, !dbg !487
  %238 = fadd double %237, 0x3FE71A1893D3DCDC, !dbg !488
  %239 = fmul double %217, %238, !dbg !489
  %240 = fadd double %239, 0x3FF645A762C4AB74, !dbg !490
  %241 = fmul double %217, %240, !dbg !491
  %242 = fadd double %241, 1.000000e+00, !dbg !492
  %243 = fmul double %217, 5.000000e-01, !dbg !494
  %244 = fdiv double %230, %242, !dbg !495
  %245 = fadd double %243, %244, !dbg !496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !497
  switch i32 %215, label %293 [
    i32 7, label %246
    i32 6, label %248
    i32 5, label %252
    i32 4, label %256
    i32 3, label %260
  ], !dbg !497

; <label>:246:                                    ; preds = %214
  %247 = fadd double %217, 6.000000e+00, !dbg !498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  br label %248, !dbg !500

; <label>:248:                                    ; preds = %214, %246
  %249 = phi double [ 1.000000e+00, %214 ], [ %247, %246 ], !dbg !501
  %250 = fadd double %217, 5.000000e+00, !dbg !502
  %251 = fmul double %250, %249, !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  br label %252, !dbg !504

; <label>:252:                                    ; preds = %214, %248
  %253 = phi double [ 1.000000e+00, %214 ], [ %251, %248 ], !dbg !501
  %254 = fadd double %217, 4.000000e+00, !dbg !505
  %255 = fmul double %254, %253, !dbg !506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  br label %256, !dbg !507

; <label>:256:                                    ; preds = %214, %252
  %257 = phi double [ 1.000000e+00, %214 ], [ %255, %252 ], !dbg !501
  %258 = fadd double %217, 3.000000e+00, !dbg !508
  %259 = fmul double %258, %257, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  br label %260, !dbg !510

; <label>:260:                                    ; preds = %214, %256
  %261 = phi double [ 1.000000e+00, %214 ], [ %259, %256 ], !dbg !501
  %262 = fadd double %217, 2.000000e+00, !dbg !511
  %263 = fmul double %262, %261, !dbg !512
  %264 = tail call double @__ieee754_log(double %263) #3, !dbg !513
  %265 = fadd double %245, %264, !dbg !514
  br label %291, !dbg !515

; <label>:266:                                    ; preds = %212
  %267 = icmp ult i32 %7, 1133510656, !dbg !516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !518
  %268 = tail call double @__ieee754_log(double %91) #3, !dbg !519
  br i1 %267, label %269, label %288, !dbg !518

; <label>:269:                                    ; preds = %266
  %270 = fdiv double 1.000000e+00, %91, !dbg !520
  %271 = fmul double %270, %270, !dbg !522
  %272 = fmul double %271, 0x3F5AB89D0B9E43E4, !dbg !523
  %273 = fsub double 0x3F4B67BA4CDAD5D1, %272, !dbg !523
  %274 = fmul double %271, %273, !dbg !524
  %275 = fadd double %274, 0xBF4380CB8C0FE741, !dbg !525
  %276 = fmul double %271, %275, !dbg !526
  %277 = fadd double %276, 0x3F4A019F98CF38B6, !dbg !527
  %278 = fmul double %271, %277, !dbg !528
  %279 = fadd double %278, 0xBF66C16C16B02E5C, !dbg !529
  %280 = fmul double %271, %279, !dbg !530
  %281 = fadd double %280, 0x3FB555555555553B, !dbg !531
  %282 = fmul double %270, %281, !dbg !532
  %283 = fadd double %282, 0x3FDACFE390C97D69, !dbg !533
  %284 = fadd double %91, -5.000000e-01, !dbg !534
  %285 = fadd double %268, -1.000000e+00, !dbg !535
  %286 = fmul double %284, %285, !dbg !536
  %287 = fadd double %283, %286, !dbg !537
  br label %291, !dbg !538

; <label>:288:                                    ; preds = %266
  %289 = fadd double %268, -1.000000e+00, !dbg !539
  %290 = fmul double %91, %289, !dbg !540
  br label %291

; <label>:291:                                    ; preds = %89, %95, %260, %288, %269, %115, %146, %184
  %292 = phi double [ %290, %288 ], [ %287, %269 ], [ %265, %260 ], [ %145, %115 ], [ %183, %146 ], [ %211, %184 ], [ 0.000000e+00, %95 ], [ 0.000000e+00, %89 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %293, !dbg !541

; <label>:293:                                    ; preds = %291, %214
  %294 = phi double [ %245, %214 ], [ %292, %291 ], !dbg !519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  br i1 %16, label %295, label %297, !dbg !541

; <label>:295:                                    ; preds = %293
  %296 = fsub double %90, %294, !dbg !542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  br label %297, !dbg !544

; <label>:297:                                    ; preds = %293, %295, %77, %26, %11, %22, %18, %9
  %298 = phi double [ %10, %9 ], [ %21, %18 ], [ %24, %22 ], [ 0x7FF0000000000000, %11 ], [ 0x7FF0000000000000, %26 ], [ 0x7FF0000000000000, %77 ], [ %296, %295 ], [ %294, %293 ], !dbg !209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  ret double %298, !dbg !546
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
!209 = !DILocation(line: 0, scope: !146)
!210 = !DILocation(line: 230, column: 9, scope: !211)
!211 = distinct !DILexicalBlock(scope: !205, file: !1, line: 229, column: 20)
!212 = !DILocation(line: 231, column: 20, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !1, line: 230, column: 15)
!214 = distinct !DILexicalBlock(scope: !211, file: !1, line: 230, column: 9)
!215 = !DILocation(line: 232, column: 32, scope: !213)
!216 = !DILocation(line: 232, column: 18, scope: !213)
!217 = !DILocation(line: 232, column: 17, scope: !213)
!218 = !DILocation(line: 232, column: 10, scope: !213)
!219 = !DILocation(line: 233, column: 21, scope: !214)
!220 = !DILocation(line: 233, column: 20, scope: !214)
!221 = !DILocation(line: 233, column: 13, scope: !214)
!222 = !DILocation(line: 235, column: 5, scope: !146)
!223 = !DILocation(line: 236, column: 11, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !1, line: 236, column: 9)
!225 = distinct !DILexicalBlock(scope: !207, file: !1, line: 235, column: 11)
!226 = !DILocation(line: 236, column: 9, scope: !225)
!227 = !DILocalVariable(name: "x", arg: 1, scope: !228, file: !1, line: 163, type: !7)
!228 = distinct !DISubprogram(name: "sin_pi", scope: !1, file: !1, line: 163, type: !229, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !231)
!229 = !DISubroutineType(types: !230)
!230 = !{!7, !7}
!231 = !{!227, !232, !233, !234, !235, !236, !238}
!232 = !DILocalVariable(name: "y", scope: !228, file: !1, line: 169, type: !7)
!233 = !DILocalVariable(name: "z", scope: !228, file: !1, line: 169, type: !7)
!234 = !DILocalVariable(name: "n", scope: !228, file: !1, line: 170, type: !4)
!235 = !DILocalVariable(name: "ix", scope: !228, file: !1, line: 170, type: !4)
!236 = !DILocalVariable(name: "gh_u", scope: !237, file: !1, line: 172, type: !170)
!237 = distinct !DILexicalBlock(scope: !228, file: !1, line: 172, column: 2)
!238 = !DILocalVariable(name: "gl_u", scope: !239, file: !1, line: 192, type: !170)
!239 = distinct !DILexicalBlock(scope: !240, file: !1, line: 192, column: 3)
!240 = distinct !DILexicalBlock(scope: !241, file: !1, line: 190, column: 20)
!241 = distinct !DILexicalBlock(scope: !242, file: !1, line: 188, column: 16)
!242 = distinct !DILexicalBlock(scope: !243, file: !1, line: 187, column: 9)
!243 = distinct !DILexicalBlock(scope: !228, file: !1, line: 183, column: 5)
!244 = !DILocation(line: 163, column: 30, scope: !228, inlinedAt: !245)
!245 = distinct !DILocation(line: 238, column: 10, scope: !225)
!246 = !DILocation(line: 170, column: 14, scope: !228, inlinedAt: !245)
!247 = !DILocation(line: 175, column: 7, scope: !248, inlinedAt: !245)
!248 = distinct !DILexicalBlock(scope: !228, file: !1, line: 175, column: 5)
!249 = !DILocation(line: 175, column: 5, scope: !228, inlinedAt: !245)
!250 = !DILocation(line: 175, column: 42, scope: !248, inlinedAt: !245)
!251 = !DILocation(line: 175, column: 27, scope: !248, inlinedAt: !245)
!252 = !DILocation(line: 175, column: 20, scope: !248, inlinedAt: !245)
!253 = !DILocation(line: 176, column: 6, scope: !228, inlinedAt: !245)
!254 = !DILocation(line: 169, column: 9, scope: !228, inlinedAt: !245)
!255 = !DILocation(line: 182, column: 6, scope: !228, inlinedAt: !245)
!256 = !DILocation(line: 169, column: 11, scope: !228, inlinedAt: !245)
!257 = !DILocation(line: 183, column: 6, scope: !243, inlinedAt: !245)
!258 = !DILocation(line: 183, column: 5, scope: !228, inlinedAt: !245)
!259 = !DILocation(line: 184, column: 9, scope: !260, inlinedAt: !245)
!260 = distinct !DILexicalBlock(scope: !243, file: !1, line: 183, column: 11)
!261 = !DILocation(line: 185, column: 21, scope: !260, inlinedAt: !245)
!262 = !DILocation(line: 185, column: 19, scope: !260, inlinedAt: !245)
!263 = !DILocation(line: 185, column: 15, scope: !260, inlinedAt: !245)
!264 = !DILocation(line: 186, column: 26, scope: !260, inlinedAt: !245)
!265 = !DILocation(line: 186, column: 12, scope: !260, inlinedAt: !245)
!266 = !DILocation(line: 170, column: 12, scope: !228, inlinedAt: !245)
!267 = !DILocation(line: 187, column: 2, scope: !260, inlinedAt: !245)
!268 = !DILocation(line: 188, column: 16, scope: !242, inlinedAt: !245)
!269 = !DILocation(line: 191, column: 20, scope: !240, inlinedAt: !245)
!270 = !DILocation(line: 191, column: 40, scope: !271, inlinedAt: !245)
!271 = distinct !DILexicalBlock(scope: !240, file: !1, line: 191, column: 20)
!272 = !DILocation(line: 191, column: 35, scope: !271, inlinedAt: !245)
!273 = !DILocation(line: 192, column: 3, scope: !239, inlinedAt: !245)
!274 = !DILocation(line: 193, column: 5, scope: !240, inlinedAt: !245)
!275 = !DILocation(line: 194, column: 22, scope: !240, inlinedAt: !245)
!276 = !DILocation(line: 195, column: 18, scope: !240, inlinedAt: !245)
!277 = !DILocation(line: 0, scope: !240, inlinedAt: !245)
!278 = !DILocation(line: 198, column: 2, scope: !228, inlinedAt: !245)
!279 = !DILocation(line: 199, column: 36, scope: !280, inlinedAt: !245)
!280 = distinct !DILexicalBlock(scope: !228, file: !1, line: 198, column: 13)
!281 = !DILocation(line: 199, column: 21, scope: !280, inlinedAt: !245)
!282 = !DILocation(line: 199, column: 48, scope: !280, inlinedAt: !245)
!283 = !DILocation(line: 201, column: 41, scope: !280, inlinedAt: !245)
!284 = !DILocation(line: 201, column: 36, scope: !280, inlinedAt: !245)
!285 = !DILocation(line: 201, column: 21, scope: !280, inlinedAt: !245)
!286 = !DILocation(line: 201, column: 52, scope: !280, inlinedAt: !245)
!287 = !DILocation(line: 203, column: 41, scope: !280, inlinedAt: !245)
!288 = !DILocation(line: 203, column: 36, scope: !280, inlinedAt: !245)
!289 = !DILocation(line: 203, column: 21, scope: !280, inlinedAt: !245)
!290 = !DILocation(line: 203, column: 54, scope: !280, inlinedAt: !245)
!291 = !DILocation(line: 205, column: 39, scope: !280, inlinedAt: !245)
!292 = !DILocation(line: 205, column: 36, scope: !280, inlinedAt: !245)
!293 = !DILocation(line: 205, column: 21, scope: !280, inlinedAt: !245)
!294 = !DILocation(line: 205, column: 20, scope: !280, inlinedAt: !245)
!295 = !DILocation(line: 205, column: 52, scope: !280, inlinedAt: !245)
!296 = !DILocation(line: 206, column: 39, scope: !280, inlinedAt: !245)
!297 = !DILocation(line: 206, column: 36, scope: !280, inlinedAt: !245)
!298 = !DILocation(line: 206, column: 21, scope: !280, inlinedAt: !245)
!299 = !DILocation(line: 206, column: 54, scope: !280, inlinedAt: !245)
!300 = !DILocation(line: 0, scope: !280, inlinedAt: !245)
!301 = !DILocation(line: 0, scope: !225)
!302 = !DILocation(line: 208, column: 9, scope: !228, inlinedAt: !245)
!303 = !DILocation(line: 208, column: 2, scope: !228, inlinedAt: !245)
!304 = !DILocation(line: 0, scope: !228, inlinedAt: !245)
!305 = !DILocation(line: 209, column: 1, scope: !228, inlinedAt: !245)
!306 = !DILocation(line: 219, column: 9, scope: !146)
!307 = !DILocation(line: 239, column: 10, scope: !308)
!308 = distinct !DILexicalBlock(scope: !225, file: !1, line: 239, column: 9)
!309 = !DILocation(line: 239, column: 9, scope: !225)
!310 = !DILocation(line: 240, column: 36, scope: !225)
!311 = !DILocation(line: 240, column: 30, scope: !225)
!312 = !DILocation(line: 240, column: 29, scope: !225)
!313 = !DILocation(line: 240, column: 13, scope: !225)
!314 = !DILocation(line: 241, column: 10, scope: !315)
!315 = distinct !DILexicalBlock(scope: !225, file: !1, line: 241, column: 9)
!316 = !DILocation(line: 241, column: 9, scope: !225)
!317 = !DILocation(line: 241, column: 27, scope: !315)
!318 = !DILocation(line: 241, column: 17, scope: !315)
!319 = !DILocation(line: 242, column: 10, scope: !225)
!320 = !DILocation(line: 243, column: 2, scope: !225)
!321 = !DILocation(line: 246, column: 10, scope: !322)
!322 = distinct !DILexicalBlock(scope: !146, file: !1, line: 246, column: 5)
!323 = !DILocation(line: 246, column: 22, scope: !322)
!324 = !DILocation(line: 246, column: 26, scope: !322)
!325 = !DILocation(line: 246, column: 30, scope: !322)
!326 = !DILocation(line: 246, column: 37, scope: !322)
!327 = !DILocation(line: 246, column: 49, scope: !322)
!328 = !DILocation(line: 246, column: 53, scope: !322)
!329 = !DILocation(line: 246, column: 5, scope: !146)
!330 = !DILocation(line: 248, column: 12, scope: !331)
!331 = distinct !DILexicalBlock(scope: !322, file: !1, line: 248, column: 10)
!332 = !DILocation(line: 248, column: 10, scope: !322)
!333 = !DILocation(line: 249, column: 11, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !1, line: 249, column: 9)
!335 = distinct !DILexicalBlock(scope: !331, file: !1, line: 248, column: 25)
!336 = !DILocation(line: 249, column: 9, scope: !335)
!337 = !DILocation(line: 250, column: 8, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !1, line: 249, column: 25)
!339 = !DILocation(line: 250, column: 7, scope: !338)
!340 = !DILocation(line: 219, column: 39, scope: !146)
!341 = !DILocation(line: 251, column: 8, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !1, line: 251, column: 6)
!343 = !DILocation(line: 251, column: 6, scope: !338)
!344 = !DILocation(line: 252, column: 13, scope: !345)
!345 = distinct !DILexicalBlock(scope: !342, file: !1, line: 252, column: 11)
!346 = !DILocation(line: 252, column: 11, scope: !342)
!347 = !DILocation(line: 256, column: 15, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !1, line: 256, column: 13)
!349 = distinct !DILexicalBlock(scope: !334, file: !1, line: 254, column: 13)
!350 = !DILocation(line: 256, column: 13, scope: !349)
!351 = !DILocation(line: 257, column: 20, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !1, line: 257, column: 18)
!353 = !DILocation(line: 257, column: 18, scope: !348)
!354 = !DILocation(line: 258, column: 12, scope: !355)
!355 = distinct !DILexicalBlock(scope: !352, file: !1, line: 258, column: 8)
!356 = !DILocation(line: 219, column: 11, scope: !146)
!357 = !DILocation(line: 220, column: 12, scope: !146)
!358 = !DILocation(line: 0, scope: !359)
!359 = distinct !DILexicalBlock(scope: !348, file: !1, line: 256, column: 29)
!360 = !DILocation(line: 0, scope: !361)
!361 = distinct !DILexicalBlock(scope: !342, file: !1, line: 251, column: 22)
!362 = !DILocation(line: 260, column: 6, scope: !335)
!363 = !DILocation(line: 262, column: 8, scope: !364)
!364 = distinct !DILexicalBlock(scope: !335, file: !1, line: 260, column: 16)
!365 = !DILocation(line: 219, column: 13, scope: !146)
!366 = !DILocation(line: 263, column: 36, scope: !364)
!367 = !DILocation(line: 263, column: 34, scope: !364)
!368 = !DILocation(line: 263, column: 30, scope: !364)
!369 = !DILocation(line: 263, column: 28, scope: !364)
!370 = !DILocation(line: 263, column: 24, scope: !364)
!371 = !DILocation(line: 263, column: 22, scope: !364)
!372 = !DILocation(line: 263, column: 18, scope: !364)
!373 = !DILocation(line: 263, column: 16, scope: !364)
!374 = !DILocation(line: 263, column: 12, scope: !364)
!375 = !DILocation(line: 263, column: 10, scope: !364)
!376 = !DILocation(line: 219, column: 28, scope: !146)
!377 = !DILocation(line: 264, column: 39, scope: !364)
!378 = !DILocation(line: 264, column: 37, scope: !364)
!379 = !DILocation(line: 264, column: 33, scope: !364)
!380 = !DILocation(line: 264, column: 31, scope: !364)
!381 = !DILocation(line: 264, column: 27, scope: !364)
!382 = !DILocation(line: 264, column: 25, scope: !364)
!383 = !DILocation(line: 264, column: 21, scope: !364)
!384 = !DILocation(line: 264, column: 19, scope: !364)
!385 = !DILocation(line: 264, column: 15, scope: !364)
!386 = !DILocation(line: 264, column: 13, scope: !364)
!387 = !DILocation(line: 264, column: 9, scope: !364)
!388 = !DILocation(line: 219, column: 31, scope: !146)
!389 = !DILocation(line: 265, column: 9, scope: !364)
!390 = !DILocation(line: 265, column: 12, scope: !364)
!391 = !DILocation(line: 219, column: 26, scope: !146)
!392 = !DILocation(line: 266, column: 15, scope: !364)
!393 = !DILocation(line: 266, column: 11, scope: !364)
!394 = !DILocation(line: 266, column: 6, scope: !364)
!395 = !DILocation(line: 266, column: 20, scope: !364)
!396 = !DILocation(line: 0, scope: !397)
!397 = distinct !DILexicalBlock(scope: !352, file: !1, line: 257, column: 34)
!398 = !DILocation(line: 268, column: 8, scope: !364)
!399 = !DILocation(line: 269, column: 8, scope: !364)
!400 = !DILocation(line: 219, column: 41, scope: !146)
!401 = !DILocation(line: 270, column: 31, scope: !364)
!402 = !DILocation(line: 270, column: 29, scope: !364)
!403 = !DILocation(line: 270, column: 24, scope: !364)
!404 = !DILocation(line: 270, column: 22, scope: !364)
!405 = !DILocation(line: 270, column: 18, scope: !364)
!406 = !DILocation(line: 270, column: 16, scope: !364)
!407 = !DILocation(line: 270, column: 12, scope: !364)
!408 = !DILocation(line: 270, column: 10, scope: !364)
!409 = !DILocation(line: 271, column: 31, scope: !364)
!410 = !DILocation(line: 271, column: 24, scope: !364)
!411 = !DILocation(line: 271, column: 22, scope: !364)
!412 = !DILocation(line: 271, column: 18, scope: !364)
!413 = !DILocation(line: 271, column: 16, scope: !364)
!414 = !DILocation(line: 271, column: 12, scope: !364)
!415 = !DILocation(line: 271, column: 10, scope: !364)
!416 = !DILocation(line: 272, column: 31, scope: !364)
!417 = !DILocation(line: 272, column: 29, scope: !364)
!418 = !DILocation(line: 272, column: 24, scope: !364)
!419 = !DILocation(line: 272, column: 22, scope: !364)
!420 = !DILocation(line: 272, column: 18, scope: !364)
!421 = !DILocation(line: 272, column: 16, scope: !364)
!422 = !DILocation(line: 272, column: 12, scope: !364)
!423 = !DILocation(line: 272, column: 10, scope: !364)
!424 = !DILocation(line: 219, column: 34, scope: !146)
!425 = !DILocation(line: 273, column: 9, scope: !364)
!426 = !DILocation(line: 273, column: 24, scope: !364)
!427 = !DILocation(line: 273, column: 22, scope: !364)
!428 = !DILocation(line: 273, column: 18, scope: !364)
!429 = !DILocation(line: 273, column: 16, scope: !364)
!430 = !DILocation(line: 273, column: 12, scope: !364)
!431 = !DILocation(line: 274, column: 12, scope: !364)
!432 = !DILocation(line: 274, column: 5, scope: !364)
!433 = !DILocation(line: 274, column: 18, scope: !364)
!434 = !DILocation(line: 0, scope: !349)
!435 = !DILocation(line: 0, scope: !355)
!436 = !DILocation(line: 276, column: 39, scope: !364)
!437 = !DILocation(line: 276, column: 37, scope: !364)
!438 = !DILocation(line: 276, column: 33, scope: !364)
!439 = !DILocation(line: 276, column: 31, scope: !364)
!440 = !DILocation(line: 276, column: 27, scope: !364)
!441 = !DILocation(line: 276, column: 25, scope: !364)
!442 = !DILocation(line: 276, column: 21, scope: !364)
!443 = !DILocation(line: 276, column: 19, scope: !364)
!444 = !DILocation(line: 276, column: 15, scope: !364)
!445 = !DILocation(line: 276, column: 13, scope: !364)
!446 = !DILocation(line: 276, column: 9, scope: !364)
!447 = !DILocation(line: 277, column: 37, scope: !364)
!448 = !DILocation(line: 277, column: 35, scope: !364)
!449 = !DILocation(line: 277, column: 31, scope: !364)
!450 = !DILocation(line: 277, column: 29, scope: !364)
!451 = !DILocation(line: 277, column: 25, scope: !364)
!452 = !DILocation(line: 277, column: 23, scope: !364)
!453 = !DILocation(line: 277, column: 19, scope: !364)
!454 = !DILocation(line: 277, column: 17, scope: !364)
!455 = !DILocation(line: 277, column: 13, scope: !364)
!456 = !DILocation(line: 277, column: 11, scope: !364)
!457 = !DILocation(line: 278, column: 13, scope: !364)
!458 = !DILocation(line: 278, column: 20, scope: !364)
!459 = !DILocation(line: 278, column: 5, scope: !364)
!460 = !DILocation(line: 279, column: 6, scope: !364)
!461 = !DILocation(line: 281, column: 12, scope: !462)
!462 = distinct !DILexicalBlock(scope: !331, file: !1, line: 281, column: 10)
!463 = !DILocation(line: 281, column: 10, scope: !331)
!464 = !DILocation(line: 282, column: 10, scope: !465)
!465 = distinct !DILexicalBlock(scope: !462, file: !1, line: 281, column: 25)
!466 = !DILocation(line: 284, column: 12, scope: !465)
!467 = !DILocation(line: 284, column: 11, scope: !465)
!468 = !DILocation(line: 285, column: 47, scope: !465)
!469 = !DILocation(line: 285, column: 45, scope: !465)
!470 = !DILocation(line: 285, column: 41, scope: !465)
!471 = !DILocation(line: 285, column: 39, scope: !465)
!472 = !DILocation(line: 285, column: 35, scope: !465)
!473 = !DILocation(line: 285, column: 33, scope: !465)
!474 = !DILocation(line: 285, column: 29, scope: !465)
!475 = !DILocation(line: 285, column: 27, scope: !465)
!476 = !DILocation(line: 285, column: 23, scope: !465)
!477 = !DILocation(line: 285, column: 21, scope: !465)
!478 = !DILocation(line: 285, column: 17, scope: !465)
!479 = !DILocation(line: 285, column: 15, scope: !465)
!480 = !DILocation(line: 285, column: 11, scope: !465)
!481 = !DILocation(line: 286, column: 45, scope: !465)
!482 = !DILocation(line: 286, column: 43, scope: !465)
!483 = !DILocation(line: 286, column: 39, scope: !465)
!484 = !DILocation(line: 286, column: 37, scope: !465)
!485 = !DILocation(line: 286, column: 33, scope: !465)
!486 = !DILocation(line: 286, column: 31, scope: !465)
!487 = !DILocation(line: 286, column: 27, scope: !465)
!488 = !DILocation(line: 286, column: 25, scope: !465)
!489 = !DILocation(line: 286, column: 21, scope: !465)
!490 = !DILocation(line: 286, column: 19, scope: !465)
!491 = !DILocation(line: 286, column: 15, scope: !465)
!492 = !DILocation(line: 286, column: 13, scope: !465)
!493 = !DILocation(line: 219, column: 37, scope: !146)
!494 = !DILocation(line: 287, column: 14, scope: !465)
!495 = !DILocation(line: 287, column: 18, scope: !465)
!496 = !DILocation(line: 287, column: 16, scope: !465)
!497 = !DILocation(line: 289, column: 6, scope: !465)
!498 = !DILocation(line: 290, column: 21, scope: !499)
!499 = distinct !DILexicalBlock(scope: !465, file: !1, line: 289, column: 16)
!500 = !DILocation(line: 290, column: 14, scope: !499)
!501 = !DILocation(line: 0, scope: !499)
!502 = !DILocation(line: 291, column: 21, scope: !499)
!503 = !DILocation(line: 291, column: 16, scope: !499)
!504 = !DILocation(line: 291, column: 14, scope: !499)
!505 = !DILocation(line: 292, column: 21, scope: !499)
!506 = !DILocation(line: 292, column: 16, scope: !499)
!507 = !DILocation(line: 292, column: 14, scope: !499)
!508 = !DILocation(line: 293, column: 21, scope: !499)
!509 = !DILocation(line: 293, column: 16, scope: !499)
!510 = !DILocation(line: 293, column: 14, scope: !499)
!511 = !DILocation(line: 294, column: 21, scope: !499)
!512 = !DILocation(line: 294, column: 16, scope: !499)
!513 = !DILocation(line: 295, column: 12, scope: !499)
!514 = !DILocation(line: 295, column: 9, scope: !499)
!515 = !DILocation(line: 295, column: 30, scope: !499)
!516 = !DILocation(line: 298, column: 16, scope: !517)
!517 = distinct !DILexicalBlock(scope: !462, file: !1, line: 298, column: 13)
!518 = !DILocation(line: 298, column: 13, scope: !462)
!519 = !DILocation(line: 0, scope: !517)
!520 = !DILocation(line: 300, column: 13, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !1, line: 298, column: 30)
!522 = !DILocation(line: 301, column: 11, scope: !521)
!523 = !DILocation(line: 302, column: 44, scope: !521)
!524 = !DILocation(line: 302, column: 38, scope: !521)
!525 = !DILocation(line: 302, column: 36, scope: !521)
!526 = !DILocation(line: 302, column: 32, scope: !521)
!527 = !DILocation(line: 302, column: 30, scope: !521)
!528 = !DILocation(line: 302, column: 26, scope: !521)
!529 = !DILocation(line: 302, column: 24, scope: !521)
!530 = !DILocation(line: 302, column: 20, scope: !521)
!531 = !DILocation(line: 302, column: 18, scope: !521)
!532 = !DILocation(line: 302, column: 14, scope: !521)
!533 = !DILocation(line: 302, column: 12, scope: !521)
!534 = !DILocation(line: 303, column: 12, scope: !521)
!535 = !DILocation(line: 303, column: 21, scope: !521)
!536 = !DILocation(line: 303, column: 18, scope: !521)
!537 = !DILocation(line: 303, column: 26, scope: !521)
!538 = !DILocation(line: 304, column: 2, scope: !521)
!539 = !DILocation(line: 306, column: 30, scope: !517)
!540 = !DILocation(line: 306, column: 12, scope: !517)
!541 = !DILocation(line: 307, column: 5, scope: !146)
!542 = !DILocation(line: 307, column: 20, scope: !543)
!543 = distinct !DILexicalBlock(scope: !146, file: !1, line: 307, column: 5)
!544 = !DILocation(line: 307, column: 11, scope: !543)
!545 = !DILocation(line: 0, scope: !196)
!546 = !DILocation(line: 309, column: 1, scope: !146)
