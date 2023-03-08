; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_erf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_erf.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @erf(double) local_unnamed_addr #0 !dbg !134 {
  %2 = bitcast double %0 to i64, !dbg !167
  %3 = lshr i64 %2, 32, !dbg !167
  %4 = trunc i64 %3 to i32, !dbg !167
  %5 = and i32 %4, 2147483647, !dbg !169
  %6 = icmp ugt i32 %5, 2146435071, !dbg !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  br i1 %6, label %7, label %15, !dbg !173

; <label>:7:                                      ; preds = %1
  %8 = lshr i64 %2, 62, !dbg !174
  %9 = trunc i64 %8 to i32, !dbg !174
  %10 = and i32 %9, 2, !dbg !174
  %11 = sub nsw i32 1, %10, !dbg !177
  %12 = sitofp i32 %11 to double, !dbg !178
  %13 = fdiv double 1.000000e+00, %0, !dbg !179
  %14 = fadd double %13, %12, !dbg !180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  br label %170, !dbg !181

; <label>:15:                                     ; preds = %1
  %16 = icmp ult i32 %5, 1072365568, !dbg !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  br i1 %16, label %17, label %52, !dbg !184

; <label>:17:                                     ; preds = %15
  %18 = icmp ult i32 %5, 1043333120, !dbg !185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !188
  br i1 %18, label %19, label %29, !dbg !188

; <label>:19:                                     ; preds = %17
  %20 = icmp ult i32 %5, 8388608, !dbg !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !192
  br i1 %20, label %21, label %26, !dbg !192

; <label>:21:                                     ; preds = %19
  %22 = fmul double %0, 8.000000e+00, !dbg !193
  %23 = fmul double %0, 0x3FF06EBA8214DB69, !dbg !194
  %24 = fadd double %22, %23, !dbg !195
  %25 = fmul double %24, 1.250000e-01, !dbg !196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !197
  br label %170, !dbg !197

; <label>:26:                                     ; preds = %19
  %27 = fmul double %0, 0x3FC06EBA8214DB69, !dbg !198
  %28 = fadd double %27, %0, !dbg !199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  br label %170, !dbg !200

; <label>:29:                                     ; preds = %17
  %30 = fmul double %0, %0, !dbg !201
  %31 = fmul double %30, 0x3EF8EAD6120016AC, !dbg !203
  %32 = fsub double 0xBF77A291236668E4, %31, !dbg !203
  %33 = fmul double %30, %32, !dbg !204
  %34 = fadd double %33, 0xBF9D2A51DBD7194F, !dbg !205
  %35 = fmul double %30, %34, !dbg !206
  %36 = fadd double %35, 0xBFD4CD7D691CB913, !dbg !207
  %37 = fmul double %30, %36, !dbg !208
  %38 = fadd double %37, 0x3FC06EBA8214DB68, !dbg !209
  %39 = fmul double %30, 0x3ED09C4342A26120, !dbg !211
  %40 = fsub double 0x3F215DC9221C1A10, %39, !dbg !211
  %41 = fmul double %30, %40, !dbg !212
  %42 = fadd double %41, 0x3F74D022C4D36B0F, !dbg !213
  %43 = fmul double %30, %42, !dbg !214
  %44 = fadd double %43, 0x3FB0A54C5536CEBA, !dbg !215
  %45 = fmul double %30, %44, !dbg !216
  %46 = fadd double %45, 0x3FD97779CDDADC09, !dbg !217
  %47 = fmul double %30, %46, !dbg !218
  %48 = fadd double %47, 1.000000e+00, !dbg !219
  %49 = fdiv double %38, %48, !dbg !221
  %50 = fmul double %49, %0, !dbg !223
  %51 = fadd double %50, %0, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  br label %170, !dbg !225

; <label>:52:                                     ; preds = %15
  %53 = icmp ult i32 %5, 1072955392, !dbg !226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !228
  br i1 %53, label %54, label %87, !dbg !228

; <label>:54:                                     ; preds = %52
  %55 = tail call double @fabs(double %0) #3, !dbg !229
  %56 = fadd double %55, -1.000000e+00, !dbg !231
  %57 = fmul double %56, 0x3F61BF380A96073F, !dbg !232
  %58 = fsub double 0x3FA22A36599795EB, %57, !dbg !232
  %59 = fmul double %56, %58, !dbg !233
  %60 = fadd double %59, 0xBFBC63983D3E28EC, !dbg !234
  %61 = fmul double %56, %60, !dbg !235
  %62 = fadd double %61, 0x3FD45FCA805120E4, !dbg !236
  %63 = fmul double %56, %62, !dbg !237
  %64 = fadd double %63, 0xBFD7D240FBB8C3F1, !dbg !238
  %65 = fmul double %56, %64, !dbg !239
  %66 = fadd double %65, 0x3FDA8D00AD92B34D, !dbg !240
  %67 = fmul double %56, %66, !dbg !241
  %68 = fadd double %67, 0xBF6359B8BEF77538, !dbg !242
  %69 = fmul double %56, 0x3F888B545735151D, !dbg !244
  %70 = fadd double %69, 0x3F8BEDC26B51DD1C, !dbg !245
  %71 = fmul double %56, %70, !dbg !246
  %72 = fadd double %71, 0x3FC02660E763351F, !dbg !247
  %73 = fmul double %56, %72, !dbg !248
  %74 = fadd double %73, 0x3FB2635CD99FE9A7, !dbg !249
  %75 = fmul double %56, %74, !dbg !250
  %76 = fadd double %75, 0x3FE14AF092EB6F33, !dbg !251
  %77 = fmul double %56, %76, !dbg !252
  %78 = fadd double %77, 0x3FBB3E6618EEE323, !dbg !253
  %79 = fmul double %56, %78, !dbg !254
  %80 = fadd double %79, 1.000000e+00, !dbg !255
  %81 = icmp sgt i32 %4, -1, !dbg !257
  %82 = fdiv double %68, %80, !dbg !259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  br i1 %81, label %83, label %85, !dbg !260

; <label>:83:                                     ; preds = %54
  %84 = fadd double %82, 0x3FEB0AC160000000, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br label %170, !dbg !262

; <label>:85:                                     ; preds = %54
  %86 = fsub double 0xBFEB0AC160000000, %82, !dbg !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  br label %170, !dbg !264

; <label>:87:                                     ; preds = %52
  %88 = icmp ugt i32 %5, 1075314687, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  br i1 %88, label %89, label %92, !dbg !267

; <label>:89:                                     ; preds = %87
  %90 = icmp sgt i32 %4, -1, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  %91 = select i1 %90, double 1.000000e+00, double -1.000000e+00, !dbg !273
  br label %170, !dbg !273

; <label>:92:                                     ; preds = %87
  %93 = tail call double @fabs(double %0) #3, !dbg !274
  %94 = fmul double %93, %93, !dbg !275
  %95 = fdiv double 1.000000e+00, %94, !dbg !276
  %96 = icmp ult i32 %5, 1074191214, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  br i1 %96, label %97, label %116, !dbg !279

; <label>:97:                                     ; preds = %92
  %98 = fmul double %95, 0x4023A0EFC69AC25C, !dbg !280
  %99 = fsub double 0xC054526557E4D2F2, %98, !dbg !280
  %100 = fmul double %95, %99, !dbg !282
  %101 = fadd double %100, 0xC067135CEBCCABB2, !dbg !283
  %102 = fmul double %95, %101, !dbg !284
  %103 = fadd double %102, 0xC0644CB184282266, !dbg !285
  %104 = fmul double %95, %103, !dbg !286
  %105 = fadd double %104, 0xC04F300AE4CBA38D, !dbg !287
  %106 = fmul double %95, %105, !dbg !288
  %107 = fadd double %106, 0xC0251E0441B0E726, !dbg !289
  %108 = fmul double %95, %107, !dbg !290
  %109 = fadd double %108, 0xBFE63416E4BA7360, !dbg !291
  %110 = fmul double %95, %109, !dbg !292
  %111 = fadd double %110, 0xBF843412600D6435, !dbg !293
  %112 = fmul double %95, 0x3FAEEFF2EE749A62, !dbg !295
  %113 = fsub double 0x401A47EF8E484A93, %112, !dbg !295
  %114 = fmul double %95, %113, !dbg !296
  %115 = fadd double %114, 0x405B28A3EE48AE2C, !dbg !297
  br label %131, !dbg !298

; <label>:116:                                    ; preds = %92
  %117 = fmul double %95, 0x407E384E9BDC383F, !dbg !299
  %118 = fsub double 0xC09004616A2E5992, %117, !dbg !299
  %119 = fmul double %95, %118, !dbg !301
  %120 = fadd double %119, 0xC083EC881375F228, !dbg !302
  %121 = fmul double %95, %120, !dbg !303
  %122 = fadd double %121, 0xC064145D43C5ED98, !dbg !304
  %123 = fmul double %95, %122, !dbg !305
  %124 = fadd double %123, 0xC031C209555F995A, !dbg !306
  %125 = fmul double %95, %124, !dbg !307
  %126 = fadd double %125, 0xBFE993BA70C285DE, !dbg !308
  %127 = fmul double %95, %126, !dbg !309
  %128 = fadd double %127, 0xBF84341239E86F4A, !dbg !310
  %129 = fmul double %95, 0x403670E242712D62, !dbg !311
  %130 = fsub double 0x407DA874E79FE763, %129, !dbg !311
  br label %131

; <label>:131:                                    ; preds = %116, %97
  %132 = phi double [ %130, %116 ], [ %115, %97 ]
  %133 = phi double [ 0x40A3F219CEDF3BE6, %116 ], [ 0x407AD02157700314, %97 ]
  %134 = phi double [ 0x40A8FFB7688C246A, %116 ], [ 0x40842B1921EC2868, %97 ]
  %135 = phi double [ 0x409802EB189D5118, %116 ], [ 0x407B290DD58A1A71, %97 ]
  %136 = phi double [ 0x40745CAE221B9F0A, %116 ], [ 0x4061350C526AE721, %97 ]
  %137 = phi double [ 0x403E568B261D5190, %116 ], [ 0x4033A6B9BD707687, %97 ]
  %138 = phi double [ %128, %116 ], [ %111, %97 ], !dbg !312
  %139 = fmul double %95, %132, !dbg !313
  %140 = fadd double %139, %133, !dbg !313
  %141 = fmul double %95, %140, !dbg !313
  %142 = fadd double %141, %134, !dbg !313
  %143 = fmul double %95, %142, !dbg !313
  %144 = fadd double %143, %135, !dbg !313
  %145 = fmul double %95, %144, !dbg !313
  %146 = fadd double %145, %136, !dbg !313
  %147 = fmul double %95, %146, !dbg !313
  %148 = fadd double %147, %137, !dbg !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %149 = fmul double %95, %148, !dbg !312
  %150 = fadd double %149, 1.000000e+00, !dbg !312
  %151 = bitcast double %93 to i64, !dbg !315
  %152 = and i64 %151, -4294967296, !dbg !315
  %153 = bitcast i64 %152 to double, !dbg !315
  %154 = fmul double %153, %153, !dbg !316
  %155 = fsub double -5.625000e-01, %154, !dbg !317
  %156 = tail call double @__ieee754_exp(double %155) #3, !dbg !318
  %157 = fsub double %153, %93, !dbg !319
  %158 = fadd double %93, %153, !dbg !320
  %159 = fmul double %157, %158, !dbg !321
  %160 = fdiv double %138, %150, !dbg !322
  %161 = fadd double %159, %160, !dbg !323
  %162 = tail call double @__ieee754_exp(double %161) #3, !dbg !324
  %163 = fmul double %156, %162, !dbg !325
  %164 = icmp sgt i32 %4, -1, !dbg !326
  %165 = fdiv double %163, %93, !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  br i1 %164, label %166, label %168, !dbg !329

; <label>:166:                                    ; preds = %131
  %167 = fsub double 1.000000e+00, %165, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  br label %170, !dbg !331

; <label>:168:                                    ; preds = %131
  %169 = fadd double %165, -1.000000e+00, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  br label %170, !dbg !333

; <label>:170:                                    ; preds = %89, %168, %166, %85, %83, %29, %26, %21, %7
  %171 = phi double [ %14, %7 ], [ %25, %21 ], [ %28, %26 ], [ %51, %29 ], [ %84, %83 ], [ %86, %85 ], [ %167, %166 ], [ %169, %168 ], [ %91, %89 ], !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  ret double %171, !dbg !334
}

; Function Attrs: noredzone
declare dso_local double @fabs(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_exp(double) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local double @erfc(double) local_unnamed_addr #0 !dbg !335 {
  %2 = bitcast double %0 to i64, !dbg !355
  %3 = lshr i64 %2, 32, !dbg !355
  %4 = trunc i64 %3 to i32, !dbg !355
  %5 = and i32 %4, 2147483647, !dbg !357
  %6 = icmp ugt i32 %5, 2146435071, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  br i1 %6, label %7, label %14, !dbg !361

; <label>:7:                                      ; preds = %1
  %8 = lshr i64 %2, 62, !dbg !362
  %9 = trunc i64 %8 to i32, !dbg !362
  %10 = and i32 %9, 2, !dbg !362
  %11 = uitofp i32 %10 to double, !dbg !364
  %12 = fdiv double 1.000000e+00, %0, !dbg !365
  %13 = fadd double %12, %11, !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  br label %173, !dbg !367

; <label>:14:                                     ; preds = %1
  %15 = icmp ult i32 %5, 1072365568, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br i1 %15, label %16, label %50, !dbg !370

; <label>:16:                                     ; preds = %14
  %17 = icmp ult i32 %5, 1013972992, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  br i1 %17, label %18, label %20, !dbg !374

; <label>:18:                                     ; preds = %16
  %19 = fsub double 1.000000e+00, %0, !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  br label %173, !dbg !376

; <label>:20:                                     ; preds = %16
  %21 = fmul double %0, %0, !dbg !377
  %22 = fmul double %21, 0x3EF8EAD6120016AC, !dbg !379
  %23 = fsub double 0xBF77A291236668E4, %22, !dbg !379
  %24 = fmul double %21, %23, !dbg !380
  %25 = fadd double %24, 0xBF9D2A51DBD7194F, !dbg !381
  %26 = fmul double %21, %25, !dbg !382
  %27 = fadd double %26, 0xBFD4CD7D691CB913, !dbg !383
  %28 = fmul double %21, %27, !dbg !384
  %29 = fadd double %28, 0x3FC06EBA8214DB68, !dbg !385
  %30 = fmul double %21, 0x3ED09C4342A26120, !dbg !387
  %31 = fsub double 0x3F215DC9221C1A10, %30, !dbg !387
  %32 = fmul double %21, %31, !dbg !388
  %33 = fadd double %32, 0x3F74D022C4D36B0F, !dbg !389
  %34 = fmul double %21, %33, !dbg !390
  %35 = fadd double %34, 0x3FB0A54C5536CEBA, !dbg !391
  %36 = fmul double %21, %35, !dbg !392
  %37 = fadd double %36, 0x3FD97779CDDADC09, !dbg !393
  %38 = fmul double %21, %37, !dbg !394
  %39 = fadd double %38, 1.000000e+00, !dbg !395
  %40 = fdiv double %29, %39, !dbg !397
  %41 = icmp slt i32 %4, 1070596096, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  %42 = fmul double %40, %0, !dbg !402
  br i1 %41, label %43, label %46, !dbg !401

; <label>:43:                                     ; preds = %20
  %44 = fadd double %42, %0, !dbg !404
  %45 = fsub double 1.000000e+00, %44, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  br label %173, !dbg !407

; <label>:46:                                     ; preds = %20
  %47 = fadd double %0, -5.000000e-01, !dbg !408
  %48 = fadd double %47, %42, !dbg !409
  %49 = fsub double 5.000000e-01, %48, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  br label %173, !dbg !411

; <label>:50:                                     ; preds = %14
  %51 = icmp ult i32 %5, 1072955392, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  br i1 %51, label %52, label %86, !dbg !414

; <label>:52:                                     ; preds = %50
  %53 = tail call double @fabs(double %0) #3, !dbg !415
  %54 = fadd double %53, -1.000000e+00, !dbg !417
  %55 = fmul double %54, 0x3F61BF380A96073F, !dbg !418
  %56 = fsub double 0x3FA22A36599795EB, %55, !dbg !418
  %57 = fmul double %54, %56, !dbg !419
  %58 = fadd double %57, 0xBFBC63983D3E28EC, !dbg !420
  %59 = fmul double %54, %58, !dbg !421
  %60 = fadd double %59, 0x3FD45FCA805120E4, !dbg !422
  %61 = fmul double %54, %60, !dbg !423
  %62 = fadd double %61, 0xBFD7D240FBB8C3F1, !dbg !424
  %63 = fmul double %54, %62, !dbg !425
  %64 = fadd double %63, 0x3FDA8D00AD92B34D, !dbg !426
  %65 = fmul double %54, %64, !dbg !427
  %66 = fadd double %65, 0xBF6359B8BEF77538, !dbg !428
  %67 = fmul double %54, 0x3F888B545735151D, !dbg !430
  %68 = fadd double %67, 0x3F8BEDC26B51DD1C, !dbg !431
  %69 = fmul double %54, %68, !dbg !432
  %70 = fadd double %69, 0x3FC02660E763351F, !dbg !433
  %71 = fmul double %54, %70, !dbg !434
  %72 = fadd double %71, 0x3FB2635CD99FE9A7, !dbg !435
  %73 = fmul double %54, %72, !dbg !436
  %74 = fadd double %73, 0x3FE14AF092EB6F33, !dbg !437
  %75 = fmul double %54, %74, !dbg !438
  %76 = fadd double %75, 0x3FBB3E6618EEE323, !dbg !439
  %77 = fmul double %54, %76, !dbg !440
  %78 = fadd double %77, 1.000000e+00, !dbg !441
  %79 = icmp sgt i32 %4, -1, !dbg !443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !445
  %80 = fdiv double %66, %78, !dbg !446
  br i1 %79, label %81, label %83, !dbg !445

; <label>:81:                                     ; preds = %52
  %82 = fsub double 0x3FC3D4FA80000000, %80, !dbg !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  br label %173, !dbg !450

; <label>:83:                                     ; preds = %52
  %84 = fadd double %80, 0x3FEB0AC160000000, !dbg !451
  %85 = fadd double %84, 1.000000e+00, !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  br label %173, !dbg !453

; <label>:86:                                     ; preds = %50
  %87 = icmp ult i32 %5, 1077673984, !dbg !454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br i1 %87, label %88, label %170, !dbg !455

; <label>:88:                                     ; preds = %86
  %89 = tail call double @fabs(double %0) #3, !dbg !456
  %90 = fmul double %89, %89, !dbg !457
  %91 = fdiv double 1.000000e+00, %90, !dbg !458
  %92 = icmp ult i32 %5, 1074191213, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  br i1 %92, label %93, label %112, !dbg !461

; <label>:93:                                     ; preds = %88
  %94 = fmul double %91, 0x4023A0EFC69AC25C, !dbg !462
  %95 = fsub double 0xC054526557E4D2F2, %94, !dbg !462
  %96 = fmul double %91, %95, !dbg !464
  %97 = fadd double %96, 0xC067135CEBCCABB2, !dbg !465
  %98 = fmul double %91, %97, !dbg !466
  %99 = fadd double %98, 0xC0644CB184282266, !dbg !467
  %100 = fmul double %91, %99, !dbg !468
  %101 = fadd double %100, 0xC04F300AE4CBA38D, !dbg !469
  %102 = fmul double %91, %101, !dbg !470
  %103 = fadd double %102, 0xC0251E0441B0E726, !dbg !471
  %104 = fmul double %91, %103, !dbg !472
  %105 = fadd double %104, 0xBFE63416E4BA7360, !dbg !473
  %106 = fmul double %91, %105, !dbg !474
  %107 = fadd double %106, 0xBF843412600D6435, !dbg !475
  %108 = fmul double %91, 0x3FAEEFF2EE749A62, !dbg !477
  %109 = fsub double 0x401A47EF8E484A93, %108, !dbg !477
  %110 = fmul double %91, %109, !dbg !478
  %111 = fadd double %110, 0x405B28A3EE48AE2C, !dbg !479
  br label %132, !dbg !480

; <label>:112:                                    ; preds = %88
  %113 = icmp slt i32 %4, 0, !dbg !481
  %114 = icmp ugt i32 %5, 1075314687, !dbg !484
  %115 = and i1 %113, %114, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  br i1 %115, label %116, label %117, !dbg !485

; <label>:116:                                    ; preds = %112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  br label %173, !dbg !486

; <label>:117:                                    ; preds = %112
  %118 = fmul double %91, 0x407E384E9BDC383F, !dbg !487
  %119 = fsub double 0xC09004616A2E5992, %118, !dbg !487
  %120 = fmul double %91, %119, !dbg !488
  %121 = fadd double %120, 0xC083EC881375F228, !dbg !489
  %122 = fmul double %91, %121, !dbg !490
  %123 = fadd double %122, 0xC064145D43C5ED98, !dbg !491
  %124 = fmul double %91, %123, !dbg !492
  %125 = fadd double %124, 0xC031C209555F995A, !dbg !493
  %126 = fmul double %91, %125, !dbg !494
  %127 = fadd double %126, 0xBFE993BA70C285DE, !dbg !495
  %128 = fmul double %91, %127, !dbg !496
  %129 = fadd double %128, 0xBF84341239E86F4A, !dbg !497
  %130 = fmul double %91, 0x403670E242712D62, !dbg !498
  %131 = fsub double 0x407DA874E79FE763, %130, !dbg !498
  br label %132

; <label>:132:                                    ; preds = %117, %93
  %133 = phi double [ %131, %117 ], [ %111, %93 ]
  %134 = phi double [ 0x40A3F219CEDF3BE6, %117 ], [ 0x407AD02157700314, %93 ]
  %135 = phi double [ 0x40A8FFB7688C246A, %117 ], [ 0x40842B1921EC2868, %93 ]
  %136 = phi double [ 0x409802EB189D5118, %117 ], [ 0x407B290DD58A1A71, %93 ]
  %137 = phi double [ 0x40745CAE221B9F0A, %117 ], [ 0x4061350C526AE721, %93 ]
  %138 = phi double [ 0x403E568B261D5190, %117 ], [ 0x4033A6B9BD707687, %93 ]
  %139 = phi double [ %129, %117 ], [ %107, %93 ], !dbg !499
  %140 = fmul double %91, %133, !dbg !500
  %141 = fadd double %140, %134, !dbg !500
  %142 = fmul double %91, %141, !dbg !500
  %143 = fadd double %142, %135, !dbg !500
  %144 = fmul double %91, %143, !dbg !500
  %145 = fadd double %144, %136, !dbg !500
  %146 = fmul double %91, %145, !dbg !500
  %147 = fadd double %146, %137, !dbg !500
  %148 = fmul double %91, %147, !dbg !500
  %149 = fadd double %148, %138, !dbg !500
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %150 = fmul double %91, %149, !dbg !499
  %151 = fadd double %150, 1.000000e+00, !dbg !499
  %152 = bitcast double %89 to i64, !dbg !502
  %153 = and i64 %152, -4294967296, !dbg !502
  %154 = bitcast i64 %153 to double, !dbg !502
  %155 = fmul double %154, %154, !dbg !503
  %156 = fsub double -5.625000e-01, %155, !dbg !504
  %157 = tail call double @__ieee754_exp(double %156) #3, !dbg !505
  %158 = fsub double %154, %89, !dbg !506
  %159 = fadd double %89, %154, !dbg !507
  %160 = fmul double %158, %159, !dbg !508
  %161 = fdiv double %139, %151, !dbg !509
  %162 = fadd double %160, %161, !dbg !510
  %163 = tail call double @__ieee754_exp(double %162) #3, !dbg !511
  %164 = fmul double %157, %163, !dbg !512
  %165 = icmp sgt i32 %4, 0, !dbg !513
  %166 = fdiv double %164, %89, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  br i1 %165, label %167, label %168, !dbg !516

; <label>:167:                                    ; preds = %132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  br label %173, !dbg !517

; <label>:168:                                    ; preds = %132
  %169 = fsub double 2.000000e+00, %166, !dbg !518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !519
  br label %173, !dbg !519

; <label>:170:                                    ; preds = %86
  %171 = icmp sgt i32 %4, 0, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !524
  %172 = select i1 %171, double 0.000000e+00, double 2.000000e+00, !dbg !525
  br label %173, !dbg !525

; <label>:173:                                    ; preds = %170, %168, %167, %116, %83, %81, %46, %43, %18, %7
  %174 = phi double [ %13, %7 ], [ %19, %18 ], [ %45, %43 ], [ %49, %46 ], [ %82, %81 ], [ %85, %83 ], [ %166, %167 ], [ %169, %168 ], [ 2.000000e+00, %116 ], [ %172, %170 ], !dbg !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !526
  ret double %174, !dbg !526
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!130, !131, !132}
!llvm.ident = !{!133}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !8)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_erf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !7}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !5, line: 79, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !{!9, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 179, type: !11, isLocal: true, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4607304166125394793, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "efx8", scope: !0, file: !1, line: 187, type: !11, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4593793367243283305, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "efx", scope: !0, file: !1, line: 186, type: !11, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4593793367243283304, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "pp0", scope: !0, file: !1, line: 188, type: !11, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 13822899094824990995, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "pp1", scope: !0, file: !1, line: 189, type: !11, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 13807238563656833359, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "pp2", scope: !0, file: !1, line: 190, type: !11, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 13796674727720675556, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "pp3", scope: !0, file: !1, line: 191, type: !11, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 13761006866576447148, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "pp4", scope: !0, file: !1, line: 192, type: !11, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_constu, 4600839859364092937, DW_OP_stack_value))
!27 = distinct !DIGlobalVariable(name: "qq1", scope: !0, file: !1, line: 193, type: !11, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 4589349767556288186, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "qq2", scope: !0, file: !1, line: 194, type: !11, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression(DW_OP_constu, 4572508369437551375, DW_OP_stack_value))
!31 = distinct !DIGlobalVariable(name: "qq3", scope: !0, file: !1, line: 195, type: !11, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression(DW_OP_constu, 4549020217062988304, DW_OP_stack_value))
!33 = distinct !DIGlobalVariable(name: "qq4", scope: !0, file: !1, line: 196, type: !11, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression(DW_OP_constu, 13749661475056804128, DW_OP_stack_value))
!35 = distinct !DIGlobalVariable(name: "qq5", scope: !0, file: !1, line: 197, type: !11, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression(DW_OP_constu, 13790965133951333688, DW_OP_stack_value))
!37 = distinct !DIGlobalVariable(name: "pa0", scope: !0, file: !1, line: 201, type: !11, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression(DW_OP_constu, 4601145003363971917, DW_OP_stack_value))
!39 = distinct !DIGlobalVariable(name: "pa1", scope: !0, file: !1, line: 202, type: !11, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression(DW_OP_constu, 13823748757779956721, DW_OP_stack_value))
!41 = distinct !DIGlobalVariable(name: "pa2", scope: !0, file: !1, line: 203, type: !11, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression(DW_OP_constu, 4599406442792952036, DW_OP_stack_value))
!43 = distinct !DIGlobalVariable(name: "pa3", scope: !0, file: !1, line: 204, type: !11, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression(DW_OP_constu, 13816027262379501804, DW_OP_stack_value))
!45 = distinct !DIGlobalVariable(name: "pa4", scope: !0, file: !1, line: 205, type: !11, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression(DW_OP_constu, 4585273783536293355, DW_OP_stack_value))
!47 = distinct !DIGlobalVariable(name: "pa5", scope: !0, file: !1, line: 206, type: !11, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression(DW_OP_constu, 13790513781401847615, DW_OP_stack_value))
!49 = distinct !DIGlobalVariable(name: "pa6", scope: !0, file: !1, line: 207, type: !11, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression(DW_OP_constu, 4592332853260247843, DW_OP_stack_value))
!51 = distinct !DIGlobalVariable(name: "qa1", scope: !0, file: !1, line: 208, type: !11, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression(DW_OP_constu, 4603042691266866995, DW_OP_stack_value))
!53 = distinct !DIGlobalVariable(name: "qa2", scope: !0, file: !1, line: 209, type: !11, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression(DW_OP_constu, 4589840220683233703, DW_OP_stack_value))
!55 = distinct !DIGlobalVariable(name: "qa3", scope: !0, file: !1, line: 210, type: !11, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression(DW_OP_constu, 4593713817558660383, DW_OP_stack_value))
!57 = distinct !DIGlobalVariable(name: "qa4", scope: !0, file: !1, line: 211, type: !11, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression(DW_OP_constu, 4579014865432206620, DW_OP_stack_value))
!59 = distinct !DIGlobalVariable(name: "qa5", scope: !0, file: !1, line: 212, type: !11, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression(DW_OP_constu, 4578062215578719517, DW_OP_stack_value))
!61 = distinct !DIGlobalVariable(name: "qa6", scope: !0, file: !1, line: 213, type: !11, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression(DW_OP_constu, 4605786869572042752, DW_OP_stack_value))
!63 = distinct !DIGlobalVariable(name: "erx", scope: !0, file: !1, line: 182, type: !11, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression(DW_OP_constu, 118622047889322841, DW_OP_stack_value))
!65 = distinct !DIGlobalVariable(name: "tiny", scope: !0, file: !1, line: 177, type: !11, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression(DW_OP_constu, 13800212411695588405, DW_OP_stack_value))
!67 = distinct !DIGlobalVariable(name: "ra0", scope: !0, file: !1, line: 217, type: !11, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression(DW_OP_constu, 13827796978819036000, DW_OP_stack_value))
!69 = distinct !DIGlobalVariable(name: "ra1", scope: !0, file: !1, line: 218, type: !11, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression(DW_OP_constu, 13845505633051272998, DW_OP_stack_value))
!71 = distinct !DIGlobalVariable(name: "ra2", scope: !0, file: !1, line: 219, type: !11, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression(DW_OP_constu, 13857347401788662669, DW_OP_stack_value))
!73 = distinct !DIGlobalVariable(name: "ra3", scope: !0, file: !1, line: 220, type: !11, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression(DW_OP_constu, 13863289878263374438, DW_OP_stack_value))
!75 = distinct !DIGlobalVariable(name: "ra4", scope: !0, file: !1, line: 221, type: !11, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression(DW_OP_constu, 13864071267697339314, DW_OP_stack_value))
!77 = distinct !DIGlobalVariable(name: "ra5", scope: !0, file: !1, line: 222, type: !11, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression(DW_OP_constu, 13858792548545647346, DW_OP_stack_value))
!79 = distinct !DIGlobalVariable(name: "ra6", scope: !0, file: !1, line: 223, type: !11, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression(DW_OP_constu, 13845086631156695644, DW_OP_stack_value))
!81 = distinct !DIGlobalVariable(name: "ra7", scope: !0, file: !1, line: 224, type: !11, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression(DW_OP_constu, 4626224558917056135, DW_OP_stack_value))
!83 = distinct !DIGlobalVariable(name: "sa1", scope: !0, file: !1, line: 225, type: !11, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression(DW_OP_constu, 4639047418206938913, DW_OP_stack_value))
!85 = distinct !DIGlobalVariable(name: "sa2", scope: !0, file: !1, line: 226, type: !11, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression(DW_OP_constu, 4646352579956710001, DW_OP_stack_value))
!87 = distinct !DIGlobalVariable(name: "sa3", scope: !0, file: !1, line: 227, type: !11, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression(DW_OP_constu, 4648888102296496232, DW_OP_stack_value))
!89 = distinct !DIGlobalVariable(name: "sa4", scope: !0, file: !1, line: 228, type: !11, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression(DW_OP_constu, 4646254807205544724, DW_OP_stack_value))
!91 = distinct !DIGlobalVariable(name: "sa5", scope: !0, file: !1, line: 229, type: !11, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression(DW_OP_constu, 4637344925850578476, DW_OP_stack_value))
!93 = distinct !DIGlobalVariable(name: "sa6", scope: !0, file: !1, line: 230, type: !11, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression(DW_OP_constu, 4619083462031723155, DW_OP_stack_value))
!95 = distinct !DIGlobalVariable(name: "sa7", scope: !0, file: !1, line: 231, type: !11, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression(DW_OP_constu, 13812240933853633122, DW_OP_stack_value))
!97 = distinct !DIGlobalVariable(name: "sa8", scope: !0, file: !1, line: 232, type: !11, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression(DW_OP_constu, 13800212411055632202, DW_OP_stack_value))
!99 = distinct !DIGlobalVariable(name: "rb0", scope: !0, file: !1, line: 236, type: !11, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression(DW_OP_constu, 13828746559782815198, DW_OP_stack_value))
!101 = distinct !DIGlobalVariable(name: "rb1", scope: !0, file: !1, line: 237, type: !11, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression(DW_OP_constu, 13849063674483808602, DW_OP_stack_value))
!103 = distinct !DIGlobalVariable(name: "rb2", scope: !0, file: !1, line: 238, type: !11, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression(DW_OP_constu, 13863227943754788248, DW_OP_stack_value))
!105 = distinct !DIGlobalVariable(name: "rb3", scope: !0, file: !1, line: 239, type: !11, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression(DW_OP_constu, 13872191346417463848, DW_OP_stack_value))
!107 = distinct !DIGlobalVariable(name: "rb4", scope: !0, file: !1, line: 240, type: !11, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression(DW_OP_constu, 13875595268368259474, DW_OP_stack_value))
!109 = distinct !DIGlobalVariable(name: "rb5", scope: !0, file: !1, line: 241, type: !11, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression(DW_OP_constu, 13870585812621211711, DW_OP_stack_value))
!111 = distinct !DIGlobalVariable(name: "rb6", scope: !0, file: !1, line: 242, type: !11, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression(DW_OP_constu, 4629232622623347088, DW_OP_stack_value))
!113 = distinct !DIGlobalVariable(name: "sb1", scope: !0, file: !1, line: 243, type: !11, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression(DW_OP_constu, 4644439018692124426, DW_OP_stack_value))
!115 = distinct !DIGlobalVariable(name: "sb2", scope: !0, file: !1, line: 244, type: !11, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression(DW_OP_constu, 4654473423640940824, DW_OP_stack_value))
!117 = distinct !DIGlobalVariable(name: "sb3", scope: !0, file: !1, line: 245, type: !11, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression(DW_OP_constu, 4659254977712890986, DW_OP_stack_value))
!119 = distinct !DIGlobalVariable(name: "sb4", scope: !0, file: !1, line: 246, type: !11, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression(DW_OP_constu, 4657832632290065382, DW_OP_stack_value))
!121 = distinct !DIGlobalVariable(name: "sb5", scope: !0, file: !1, line: 247, type: !11, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression(DW_OP_constu, 4647055610571908963, DW_OP_stack_value))
!123 = distinct !DIGlobalVariable(name: "sb6", scope: !0, file: !1, line: 248, type: !11, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression(DW_OP_constu, 13850381821104172386, DW_OP_stack_value))
!125 = distinct !DIGlobalVariable(name: "sb7", scope: !0, file: !1, line: 249, type: !11, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression(DW_OP_constu, 4602678819172646912, DW_OP_stack_value))
!127 = distinct !DIGlobalVariable(name: "half", scope: !0, file: !1, line: 178, type: !11, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression(DW_OP_constu, 4611686018427387904, DW_OP_stack_value))
!129 = distinct !DIGlobalVariable(name: "two", scope: !0, file: !1, line: 180, type: !11, isLocal: true, isDefinition: true)
!130 = !{i32 2, !"Dwarf Version", i32 4}
!131 = !{i32 2, !"Debug Info Version", i32 3}
!132 = !{i32 1, !"wchar_size", i32 4}
!133 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!134 = distinct !DISubprogram(name: "erf", scope: !1, file: !1, line: 252, type: !135, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !137)
!135 = !DISubroutineType(types: !136)
!136 = !{!7, !7}
!137 = !{!138, !139, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !164}
!138 = !DILocalVariable(name: "x", arg: 1, scope: !134, file: !1, line: 252, type: !7)
!139 = !DILocalVariable(name: "hx", scope: !134, file: !1, line: 258, type: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !5, line: 77, baseType: !141)
!141 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!142 = !DILocalVariable(name: "ix", scope: !134, file: !1, line: 258, type: !140)
!143 = !DILocalVariable(name: "i", scope: !134, file: !1, line: 258, type: !140)
!144 = !DILocalVariable(name: "R", scope: !134, file: !1, line: 259, type: !7)
!145 = !DILocalVariable(name: "S", scope: !134, file: !1, line: 259, type: !7)
!146 = !DILocalVariable(name: "P", scope: !134, file: !1, line: 259, type: !7)
!147 = !DILocalVariable(name: "Q", scope: !134, file: !1, line: 259, type: !7)
!148 = !DILocalVariable(name: "s", scope: !134, file: !1, line: 259, type: !7)
!149 = !DILocalVariable(name: "y", scope: !134, file: !1, line: 259, type: !7)
!150 = !DILocalVariable(name: "z", scope: !134, file: !1, line: 259, type: !7)
!151 = !DILocalVariable(name: "r", scope: !134, file: !1, line: 259, type: !7)
!152 = !DILocalVariable(name: "gh_u", scope: !153, file: !1, line: 260, type: !154)
!153 = distinct !DILexicalBlock(scope: !134, file: !1, line: 260, column: 2)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !155, line: 278, baseType: !156)
!155 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !155, line: 270, size: 64, elements: !157)
!157 = !{!158, !159}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !156, file: !155, line: 272, baseType: !7, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !156, file: !155, line: 277, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !156, file: !155, line: 273, size: 64, elements: !161)
!161 = !{!162, !163}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !160, file: !155, line: 275, baseType: !4, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !160, file: !155, line: 276, baseType: !4, size: 32, offset: 32)
!164 = !DILocalVariable(name: "sl_u", scope: !165, file: !1, line: 302, type: !154)
!165 = distinct !DILexicalBlock(scope: !134, file: !1, line: 302, column: 2)
!166 = !DILocation(line: 252, column: 20, scope: !134)
!167 = !DILocation(line: 260, column: 2, scope: !153)
!168 = !DILocation(line: 258, column: 12, scope: !134)
!169 = !DILocation(line: 261, column: 9, scope: !134)
!170 = !DILocation(line: 258, column: 15, scope: !134)
!171 = !DILocation(line: 262, column: 7, scope: !172)
!172 = distinct !DILexicalBlock(scope: !134, file: !1, line: 262, column: 5)
!173 = !DILocation(line: 262, column: 5, scope: !134)
!174 = !DILocation(line: 263, column: 30, scope: !175)
!175 = distinct !DILexicalBlock(scope: !172, file: !1, line: 262, column: 21)
!176 = !DILocation(line: 258, column: 18, scope: !134)
!177 = !DILocation(line: 264, column: 23, scope: !175)
!178 = !DILocation(line: 264, column: 13, scope: !175)
!179 = !DILocation(line: 264, column: 30, scope: !175)
!180 = !DILocation(line: 264, column: 26, scope: !175)
!181 = !DILocation(line: 264, column: 6, scope: !175)
!182 = !DILocation(line: 267, column: 8, scope: !183)
!183 = distinct !DILexicalBlock(scope: !134, file: !1, line: 267, column: 5)
!184 = !DILocation(line: 267, column: 5, scope: !134)
!185 = !DILocation(line: 268, column: 12, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 268, column: 9)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 267, column: 22)
!188 = !DILocation(line: 268, column: 9, scope: !187)
!189 = !DILocation(line: 269, column: 17, scope: !190)
!190 = distinct !DILexicalBlock(scope: !191, file: !1, line: 269, column: 14)
!191 = distinct !DILexicalBlock(scope: !186, file: !1, line: 268, column: 26)
!192 = !DILocation(line: 269, column: 14, scope: !191)
!193 = !DILocation(line: 270, column: 24, scope: !190)
!194 = !DILocation(line: 270, column: 31, scope: !190)
!195 = !DILocation(line: 270, column: 26, scope: !190)
!196 = !DILocation(line: 270, column: 19, scope: !190)
!197 = !DILocation(line: 270, column: 7, scope: !190)
!198 = !DILocation(line: 271, column: 17, scope: !191)
!199 = !DILocation(line: 271, column: 12, scope: !191)
!200 = !DILocation(line: 271, column: 3, scope: !191)
!201 = !DILocation(line: 273, column: 11, scope: !187)
!202 = !DILocation(line: 259, column: 21, scope: !134)
!203 = !DILocation(line: 274, column: 36, scope: !187)
!204 = !DILocation(line: 274, column: 29, scope: !187)
!205 = !DILocation(line: 274, column: 27, scope: !187)
!206 = !DILocation(line: 274, column: 22, scope: !187)
!207 = !DILocation(line: 274, column: 20, scope: !187)
!208 = !DILocation(line: 274, column: 15, scope: !187)
!209 = !DILocation(line: 274, column: 13, scope: !187)
!210 = !DILocation(line: 259, column: 23, scope: !134)
!211 = !DILocation(line: 275, column: 43, scope: !187)
!212 = !DILocation(line: 275, column: 36, scope: !187)
!213 = !DILocation(line: 275, column: 34, scope: !187)
!214 = !DILocation(line: 275, column: 29, scope: !187)
!215 = !DILocation(line: 275, column: 27, scope: !187)
!216 = !DILocation(line: 275, column: 22, scope: !187)
!217 = !DILocation(line: 275, column: 20, scope: !187)
!218 = !DILocation(line: 275, column: 15, scope: !187)
!219 = !DILocation(line: 275, column: 13, scope: !187)
!220 = !DILocation(line: 259, column: 17, scope: !134)
!221 = !DILocation(line: 276, column: 11, scope: !187)
!222 = !DILocation(line: 259, column: 19, scope: !134)
!223 = !DILocation(line: 277, column: 18, scope: !187)
!224 = !DILocation(line: 277, column: 15, scope: !187)
!225 = !DILocation(line: 277, column: 6, scope: !187)
!226 = !DILocation(line: 279, column: 8, scope: !227)
!227 = distinct !DILexicalBlock(scope: !134, file: !1, line: 279, column: 5)
!228 = !DILocation(line: 279, column: 5, scope: !134)
!229 = !DILocation(line: 280, column: 10, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !1, line: 279, column: 22)
!231 = !DILocation(line: 280, column: 17, scope: !230)
!232 = !DILocation(line: 281, column: 50, scope: !230)
!233 = !DILocation(line: 281, column: 43, scope: !230)
!234 = !DILocation(line: 281, column: 41, scope: !230)
!235 = !DILocation(line: 281, column: 36, scope: !230)
!236 = !DILocation(line: 281, column: 34, scope: !230)
!237 = !DILocation(line: 281, column: 29, scope: !230)
!238 = !DILocation(line: 281, column: 27, scope: !230)
!239 = !DILocation(line: 281, column: 22, scope: !230)
!240 = !DILocation(line: 281, column: 20, scope: !230)
!241 = !DILocation(line: 281, column: 15, scope: !230)
!242 = !DILocation(line: 281, column: 13, scope: !230)
!243 = !DILocation(line: 259, column: 13, scope: !134)
!244 = !DILocation(line: 282, column: 50, scope: !230)
!245 = !DILocation(line: 282, column: 48, scope: !230)
!246 = !DILocation(line: 282, column: 43, scope: !230)
!247 = !DILocation(line: 282, column: 41, scope: !230)
!248 = !DILocation(line: 282, column: 36, scope: !230)
!249 = !DILocation(line: 282, column: 34, scope: !230)
!250 = !DILocation(line: 282, column: 29, scope: !230)
!251 = !DILocation(line: 282, column: 27, scope: !230)
!252 = !DILocation(line: 282, column: 22, scope: !230)
!253 = !DILocation(line: 282, column: 20, scope: !230)
!254 = !DILocation(line: 282, column: 15, scope: !230)
!255 = !DILocation(line: 282, column: 13, scope: !230)
!256 = !DILocation(line: 259, column: 15, scope: !134)
!257 = !DILocation(line: 283, column: 11, scope: !258)
!258 = distinct !DILexicalBlock(scope: !230, file: !1, line: 283, column: 9)
!259 = !DILocation(line: 0, scope: !258)
!260 = !DILocation(line: 283, column: 9, scope: !230)
!261 = !DILocation(line: 283, column: 27, scope: !258)
!262 = !DILocation(line: 283, column: 16, scope: !258)
!263 = !DILocation(line: 283, column: 51, scope: !258)
!264 = !DILocation(line: 283, column: 39, scope: !258)
!265 = !DILocation(line: 285, column: 9, scope: !266)
!266 = distinct !DILexicalBlock(scope: !134, file: !1, line: 285, column: 6)
!267 = !DILocation(line: 285, column: 6, scope: !134)
!268 = !DILocation(line: 286, column: 11, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !1, line: 286, column: 9)
!270 = distinct !DILexicalBlock(scope: !266, file: !1, line: 285, column: 24)
!271 = !DILocation(line: 286, column: 9, scope: !270)
!272 = !DILocation(line: 0, scope: !269)
!273 = !DILocation(line: 286, column: 16, scope: !269)
!274 = !DILocation(line: 288, column: 6, scope: !134)
!275 = !DILocation(line: 289, column: 13, scope: !134)
!276 = !DILocation(line: 289, column: 10, scope: !134)
!277 = !DILocation(line: 290, column: 7, scope: !278)
!278 = distinct !DILexicalBlock(scope: !134, file: !1, line: 290, column: 5)
!279 = !DILocation(line: 290, column: 5, scope: !134)
!280 = !DILocation(line: 292, column: 17, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !1, line: 290, column: 21)
!282 = !DILocation(line: 292, column: 10, scope: !281)
!283 = !DILocation(line: 292, column: 8, scope: !281)
!284 = !DILocation(line: 291, column: 41, scope: !281)
!285 = !DILocation(line: 291, column: 39, scope: !281)
!286 = !DILocation(line: 291, column: 34, scope: !281)
!287 = !DILocation(line: 291, column: 32, scope: !281)
!288 = !DILocation(line: 291, column: 27, scope: !281)
!289 = !DILocation(line: 291, column: 25, scope: !281)
!290 = !DILocation(line: 291, column: 20, scope: !281)
!291 = !DILocation(line: 291, column: 18, scope: !281)
!292 = !DILocation(line: 291, column: 13, scope: !281)
!293 = !DILocation(line: 291, column: 11, scope: !281)
!294 = !DILocation(line: 259, column: 9, scope: !134)
!295 = !DILocation(line: 294, column: 24, scope: !281)
!296 = !DILocation(line: 294, column: 17, scope: !281)
!297 = !DILocation(line: 294, column: 15, scope: !281)
!298 = !DILocation(line: 295, column: 2, scope: !281)
!299 = !DILocation(line: 297, column: 10, scope: !300)
!300 = distinct !DILexicalBlock(scope: !278, file: !1, line: 295, column: 9)
!301 = !DILocation(line: 296, column: 41, scope: !300)
!302 = !DILocation(line: 296, column: 39, scope: !300)
!303 = !DILocation(line: 296, column: 34, scope: !300)
!304 = !DILocation(line: 296, column: 32, scope: !300)
!305 = !DILocation(line: 296, column: 27, scope: !300)
!306 = !DILocation(line: 296, column: 25, scope: !300)
!307 = !DILocation(line: 296, column: 20, scope: !300)
!308 = !DILocation(line: 296, column: 18, scope: !300)
!309 = !DILocation(line: 296, column: 13, scope: !300)
!310 = !DILocation(line: 296, column: 11, scope: !300)
!311 = !DILocation(line: 299, column: 17, scope: !300)
!312 = !DILocation(line: 0, scope: !300)
!313 = !DILocation(line: 0, scope: !281)
!314 = !DILocation(line: 259, column: 11, scope: !134)
!315 = !DILocation(line: 302, column: 2, scope: !165)
!316 = !DILocation(line: 303, column: 24, scope: !134)
!317 = !DILocation(line: 303, column: 26, scope: !134)
!318 = !DILocation(line: 303, column: 8, scope: !134)
!319 = !DILocation(line: 303, column: 51, scope: !134)
!320 = !DILocation(line: 303, column: 57, scope: !134)
!321 = !DILocation(line: 303, column: 54, scope: !134)
!322 = !DILocation(line: 303, column: 62, scope: !134)
!323 = !DILocation(line: 303, column: 60, scope: !134)
!324 = !DILocation(line: 303, column: 35, scope: !134)
!325 = !DILocation(line: 303, column: 34, scope: !134)
!326 = !DILocation(line: 304, column: 7, scope: !327)
!327 = distinct !DILexicalBlock(scope: !134, file: !1, line: 304, column: 5)
!328 = !DILocation(line: 0, scope: !327)
!329 = !DILocation(line: 304, column: 5, scope: !134)
!330 = !DILocation(line: 304, column: 22, scope: !327)
!331 = !DILocation(line: 304, column: 12, scope: !327)
!332 = !DILocation(line: 304, column: 44, scope: !327)
!333 = !DILocation(line: 304, column: 33, scope: !327)
!334 = !DILocation(line: 305, column: 1, scope: !134)
!335 = distinct !DISubprogram(name: "erfc", scope: !1, file: !1, line: 308, type: !135, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !336)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !350}
!337 = !DILocalVariable(name: "x", arg: 1, scope: !335, file: !1, line: 308, type: !7)
!338 = !DILocalVariable(name: "hx", scope: !335, file: !1, line: 314, type: !140)
!339 = !DILocalVariable(name: "ix", scope: !335, file: !1, line: 314, type: !140)
!340 = !DILocalVariable(name: "R", scope: !335, file: !1, line: 315, type: !7)
!341 = !DILocalVariable(name: "S", scope: !335, file: !1, line: 315, type: !7)
!342 = !DILocalVariable(name: "P", scope: !335, file: !1, line: 315, type: !7)
!343 = !DILocalVariable(name: "Q", scope: !335, file: !1, line: 315, type: !7)
!344 = !DILocalVariable(name: "s", scope: !335, file: !1, line: 315, type: !7)
!345 = !DILocalVariable(name: "y", scope: !335, file: !1, line: 315, type: !7)
!346 = !DILocalVariable(name: "z", scope: !335, file: !1, line: 315, type: !7)
!347 = !DILocalVariable(name: "r", scope: !335, file: !1, line: 315, type: !7)
!348 = !DILocalVariable(name: "gh_u", scope: !349, file: !1, line: 316, type: !154)
!349 = distinct !DILexicalBlock(scope: !335, file: !1, line: 316, column: 2)
!350 = !DILocalVariable(name: "sl_u", scope: !351, file: !1, line: 364, type: !154)
!351 = distinct !DILexicalBlock(scope: !352, file: !1, line: 364, column: 6)
!352 = distinct !DILexicalBlock(scope: !353, file: !1, line: 348, column: 23)
!353 = distinct !DILexicalBlock(scope: !335, file: !1, line: 348, column: 6)
!354 = !DILocation(line: 308, column: 21, scope: !335)
!355 = !DILocation(line: 316, column: 2, scope: !349)
!356 = !DILocation(line: 314, column: 12, scope: !335)
!357 = !DILocation(line: 317, column: 9, scope: !335)
!358 = !DILocation(line: 314, column: 15, scope: !335)
!359 = !DILocation(line: 318, column: 7, scope: !360)
!360 = distinct !DILexicalBlock(scope: !335, file: !1, line: 318, column: 5)
!361 = !DILocation(line: 318, column: 5, scope: !335)
!362 = !DILocation(line: 320, column: 42, scope: !363)
!363 = distinct !DILexicalBlock(scope: !360, file: !1, line: 318, column: 21)
!364 = !DILocation(line: 320, column: 13, scope: !363)
!365 = !DILocation(line: 320, column: 50, scope: !363)
!366 = !DILocation(line: 320, column: 46, scope: !363)
!367 = !DILocation(line: 320, column: 6, scope: !363)
!368 = !DILocation(line: 323, column: 8, scope: !369)
!369 = distinct !DILexicalBlock(scope: !335, file: !1, line: 323, column: 5)
!370 = !DILocation(line: 323, column: 5, scope: !335)
!371 = !DILocation(line: 324, column: 12, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !1, line: 324, column: 9)
!373 = distinct !DILexicalBlock(scope: !369, file: !1, line: 323, column: 22)
!374 = !DILocation(line: 324, column: 9, scope: !373)
!375 = !DILocation(line: 325, column: 13, scope: !372)
!376 = !DILocation(line: 325, column: 3, scope: !372)
!377 = !DILocation(line: 326, column: 11, scope: !373)
!378 = !DILocation(line: 315, column: 21, scope: !335)
!379 = !DILocation(line: 327, column: 36, scope: !373)
!380 = !DILocation(line: 327, column: 29, scope: !373)
!381 = !DILocation(line: 327, column: 27, scope: !373)
!382 = !DILocation(line: 327, column: 22, scope: !373)
!383 = !DILocation(line: 327, column: 20, scope: !373)
!384 = !DILocation(line: 327, column: 15, scope: !373)
!385 = !DILocation(line: 327, column: 13, scope: !373)
!386 = !DILocation(line: 315, column: 23, scope: !335)
!387 = !DILocation(line: 328, column: 43, scope: !373)
!388 = !DILocation(line: 328, column: 36, scope: !373)
!389 = !DILocation(line: 328, column: 34, scope: !373)
!390 = !DILocation(line: 328, column: 29, scope: !373)
!391 = !DILocation(line: 328, column: 27, scope: !373)
!392 = !DILocation(line: 328, column: 22, scope: !373)
!393 = !DILocation(line: 328, column: 20, scope: !373)
!394 = !DILocation(line: 328, column: 15, scope: !373)
!395 = !DILocation(line: 328, column: 13, scope: !373)
!396 = !DILocation(line: 315, column: 17, scope: !335)
!397 = !DILocation(line: 329, column: 11, scope: !373)
!398 = !DILocation(line: 315, column: 19, scope: !335)
!399 = !DILocation(line: 330, column: 12, scope: !400)
!400 = distinct !DILexicalBlock(scope: !373, file: !1, line: 330, column: 9)
!401 = !DILocation(line: 330, column: 9, scope: !373)
!402 = !DILocation(line: 0, scope: !403)
!403 = distinct !DILexicalBlock(scope: !400, file: !1, line: 332, column: 13)
!404 = !DILocation(line: 331, column: 16, scope: !405)
!405 = distinct !DILexicalBlock(scope: !400, file: !1, line: 330, column: 26)
!406 = !DILocation(line: 331, column: 13, scope: !405)
!407 = !DILocation(line: 331, column: 3, scope: !405)
!408 = !DILocation(line: 334, column: 10, scope: !403)
!409 = !DILocation(line: 334, column: 5, scope: !403)
!410 = !DILocation(line: 335, column: 22, scope: !403)
!411 = !DILocation(line: 335, column: 10, scope: !403)
!412 = !DILocation(line: 338, column: 8, scope: !413)
!413 = distinct !DILexicalBlock(scope: !335, file: !1, line: 338, column: 5)
!414 = !DILocation(line: 338, column: 5, scope: !335)
!415 = !DILocation(line: 339, column: 10, scope: !416)
!416 = distinct !DILexicalBlock(scope: !413, file: !1, line: 338, column: 22)
!417 = !DILocation(line: 339, column: 17, scope: !416)
!418 = !DILocation(line: 340, column: 50, scope: !416)
!419 = !DILocation(line: 340, column: 43, scope: !416)
!420 = !DILocation(line: 340, column: 41, scope: !416)
!421 = !DILocation(line: 340, column: 36, scope: !416)
!422 = !DILocation(line: 340, column: 34, scope: !416)
!423 = !DILocation(line: 340, column: 29, scope: !416)
!424 = !DILocation(line: 340, column: 27, scope: !416)
!425 = !DILocation(line: 340, column: 22, scope: !416)
!426 = !DILocation(line: 340, column: 20, scope: !416)
!427 = !DILocation(line: 340, column: 15, scope: !416)
!428 = !DILocation(line: 340, column: 13, scope: !416)
!429 = !DILocation(line: 315, column: 13, scope: !335)
!430 = !DILocation(line: 341, column: 50, scope: !416)
!431 = !DILocation(line: 341, column: 48, scope: !416)
!432 = !DILocation(line: 341, column: 43, scope: !416)
!433 = !DILocation(line: 341, column: 41, scope: !416)
!434 = !DILocation(line: 341, column: 36, scope: !416)
!435 = !DILocation(line: 341, column: 34, scope: !416)
!436 = !DILocation(line: 341, column: 29, scope: !416)
!437 = !DILocation(line: 341, column: 27, scope: !416)
!438 = !DILocation(line: 341, column: 22, scope: !416)
!439 = !DILocation(line: 341, column: 20, scope: !416)
!440 = !DILocation(line: 341, column: 15, scope: !416)
!441 = !DILocation(line: 341, column: 13, scope: !416)
!442 = !DILocation(line: 315, column: 15, scope: !335)
!443 = !DILocation(line: 342, column: 11, scope: !444)
!444 = distinct !DILexicalBlock(scope: !416, file: !1, line: 342, column: 9)
!445 = !DILocation(line: 342, column: 9, scope: !416)
!446 = !DILocation(line: 0, scope: !447)
!447 = distinct !DILexicalBlock(scope: !444, file: !1, line: 344, column: 13)
!448 = !DILocation(line: 343, column: 33, scope: !449)
!449 = distinct !DILexicalBlock(scope: !444, file: !1, line: 342, column: 16)
!450 = !DILocation(line: 343, column: 24, scope: !449)
!451 = !DILocation(line: 345, column: 10, scope: !447)
!452 = !DILocation(line: 345, column: 26, scope: !447)
!453 = !DILocation(line: 345, column: 16, scope: !447)
!454 = !DILocation(line: 348, column: 9, scope: !353)
!455 = !DILocation(line: 348, column: 6, scope: !335)
!456 = !DILocation(line: 349, column: 10, scope: !352)
!457 = !DILocation(line: 350, column: 17, scope: !352)
!458 = !DILocation(line: 350, column: 14, scope: !352)
!459 = !DILocation(line: 351, column: 11, scope: !460)
!460 = distinct !DILexicalBlock(scope: !352, file: !1, line: 351, column: 9)
!461 = !DILocation(line: 351, column: 9, scope: !352)
!462 = !DILocation(line: 353, column: 17, scope: !463)
!463 = distinct !DILexicalBlock(scope: !460, file: !1, line: 351, column: 25)
!464 = !DILocation(line: 353, column: 10, scope: !463)
!465 = !DILocation(line: 353, column: 8, scope: !463)
!466 = !DILocation(line: 352, column: 45, scope: !463)
!467 = !DILocation(line: 352, column: 43, scope: !463)
!468 = !DILocation(line: 352, column: 38, scope: !463)
!469 = !DILocation(line: 352, column: 36, scope: !463)
!470 = !DILocation(line: 352, column: 31, scope: !463)
!471 = !DILocation(line: 352, column: 29, scope: !463)
!472 = !DILocation(line: 352, column: 24, scope: !463)
!473 = !DILocation(line: 352, column: 22, scope: !463)
!474 = !DILocation(line: 352, column: 17, scope: !463)
!475 = !DILocation(line: 352, column: 15, scope: !463)
!476 = !DILocation(line: 315, column: 9, scope: !335)
!477 = !DILocation(line: 355, column: 24, scope: !463)
!478 = !DILocation(line: 355, column: 17, scope: !463)
!479 = !DILocation(line: 355, column: 15, scope: !463)
!480 = !DILocation(line: 356, column: 6, scope: !463)
!481 = !DILocation(line: 357, column: 8, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !1, line: 357, column: 6)
!483 = distinct !DILexicalBlock(scope: !460, file: !1, line: 356, column: 13)
!484 = !DILocation(line: 357, column: 14, scope: !482)
!485 = !DILocation(line: 357, column: 10, scope: !482)
!486 = !DILocation(line: 357, column: 28, scope: !482)
!487 = !DILocation(line: 359, column: 10, scope: !483)
!488 = !DILocation(line: 358, column: 45, scope: !483)
!489 = !DILocation(line: 358, column: 43, scope: !483)
!490 = !DILocation(line: 358, column: 38, scope: !483)
!491 = !DILocation(line: 358, column: 36, scope: !483)
!492 = !DILocation(line: 358, column: 31, scope: !483)
!493 = !DILocation(line: 358, column: 29, scope: !483)
!494 = !DILocation(line: 358, column: 24, scope: !483)
!495 = !DILocation(line: 358, column: 22, scope: !483)
!496 = !DILocation(line: 358, column: 17, scope: !483)
!497 = !DILocation(line: 358, column: 15, scope: !483)
!498 = !DILocation(line: 361, column: 17, scope: !483)
!499 = !DILocation(line: 0, scope: !483)
!500 = !DILocation(line: 0, scope: !463)
!501 = !DILocation(line: 315, column: 11, scope: !335)
!502 = !DILocation(line: 364, column: 6, scope: !351)
!503 = !DILocation(line: 365, column: 28, scope: !352)
!504 = !DILocation(line: 365, column: 30, scope: !352)
!505 = !DILocation(line: 365, column: 12, scope: !352)
!506 = !DILocation(line: 366, column: 20, scope: !352)
!507 = !DILocation(line: 366, column: 26, scope: !352)
!508 = !DILocation(line: 366, column: 23, scope: !352)
!509 = !DILocation(line: 366, column: 31, scope: !352)
!510 = !DILocation(line: 366, column: 29, scope: !352)
!511 = !DILocation(line: 366, column: 4, scope: !352)
!512 = !DILocation(line: 365, column: 38, scope: !352)
!513 = !DILocation(line: 367, column: 11, scope: !514)
!514 = distinct !DILexicalBlock(scope: !352, file: !1, line: 367, column: 9)
!515 = !DILocation(line: 0, scope: !514)
!516 = !DILocation(line: 367, column: 9, scope: !352)
!517 = !DILocation(line: 367, column: 15, scope: !514)
!518 = !DILocation(line: 367, column: 42, scope: !514)
!519 = !DILocation(line: 367, column: 32, scope: !514)
!520 = !DILocation(line: 369, column: 11, scope: !521)
!521 = distinct !DILexicalBlock(scope: !522, file: !1, line: 369, column: 9)
!522 = distinct !DILexicalBlock(scope: !353, file: !1, line: 368, column: 9)
!523 = !DILocation(line: 369, column: 9, scope: !522)
!524 = !DILocation(line: 0, scope: !521)
!525 = !DILocation(line: 369, column: 15, scope: !521)
!526 = !DILocation(line: 371, column: 1, scope: !335)
