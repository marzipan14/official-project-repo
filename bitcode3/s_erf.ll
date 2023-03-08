; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_erf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_erf.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local double @erf(double) local_unnamed_addr #0 !dbg !134 {
  %2 = bitcast double %0 to i64, !dbg !167
  %3 = lshr i64 %2, 32, !dbg !167
  %4 = trunc i64 %3 to i32, !dbg !167
  %5 = and i32 %4, 2147483647, !dbg !169
  %6 = icmp ugt i32 %5, 2146435071, !dbg !171
  br i1 %6, label %7, label %15, !dbg !173

; <label>:7:                                      ; preds = %1
  %8 = lshr i64 %2, 62, !dbg !174
  %9 = trunc i64 %8 to i32, !dbg !174
  %10 = and i32 %9, 2, !dbg !174
  %11 = sub nsw i32 1, %10, !dbg !177
  %12 = sitofp i32 %11 to double, !dbg !178
  %13 = fdiv double 1.000000e+00, %0, !dbg !179
  %14 = fadd double %13, %12, !dbg !180
  br label %170, !dbg !181

; <label>:15:                                     ; preds = %1
  %16 = icmp ult i32 %5, 1072365568, !dbg !182
  br i1 %16, label %17, label %52, !dbg !184

; <label>:17:                                     ; preds = %15
  %18 = icmp ult i32 %5, 1043333120, !dbg !185
  br i1 %18, label %19, label %29, !dbg !188

; <label>:19:                                     ; preds = %17
  %20 = icmp ult i32 %5, 8388608, !dbg !189
  br i1 %20, label %21, label %26, !dbg !192

; <label>:21:                                     ; preds = %19
  %22 = fmul double %0, 8.000000e+00, !dbg !193
  %23 = fmul double %0, 0x3FF06EBA8214DB69, !dbg !194
  %24 = fadd double %22, %23, !dbg !195
  %25 = fmul double %24, 1.250000e-01, !dbg !196
  br label %170, !dbg !197

; <label>:26:                                     ; preds = %19
  %27 = fmul double %0, 0x3FC06EBA8214DB69, !dbg !198
  %28 = fadd double %27, %0, !dbg !199
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
  br label %170, !dbg !225

; <label>:52:                                     ; preds = %15
  %53 = icmp ult i32 %5, 1072955392, !dbg !226
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
  br i1 %81, label %83, label %85, !dbg !260

; <label>:83:                                     ; preds = %54
  %84 = fadd double %82, 0x3FEB0AC160000000, !dbg !261
  br label %170, !dbg !262

; <label>:85:                                     ; preds = %54
  %86 = fsub double 0xBFEB0AC160000000, %82, !dbg !263
  br label %170, !dbg !264

; <label>:87:                                     ; preds = %52
  %88 = icmp ugt i32 %5, 1075314687, !dbg !265
  br i1 %88, label %89, label %92, !dbg !267

; <label>:89:                                     ; preds = %87
  %90 = icmp sgt i32 %4, -1, !dbg !268
  %91 = select i1 %90, double 1.000000e+00, double -1.000000e+00, !dbg !271
  br label %170, !dbg !271

; <label>:92:                                     ; preds = %87
  %93 = tail call double @fabs(double %0) #3, !dbg !272
  %94 = fmul double %93, %93, !dbg !273
  %95 = fdiv double 1.000000e+00, %94, !dbg !274
  %96 = icmp ult i32 %5, 1074191214, !dbg !275
  br i1 %96, label %97, label %116, !dbg !277

; <label>:97:                                     ; preds = %92
  %98 = fmul double %95, 0x4023A0EFC69AC25C, !dbg !278
  %99 = fsub double 0xC054526557E4D2F2, %98, !dbg !278
  %100 = fmul double %95, %99, !dbg !280
  %101 = fadd double %100, 0xC067135CEBCCABB2, !dbg !281
  %102 = fmul double %95, %101, !dbg !282
  %103 = fadd double %102, 0xC0644CB184282266, !dbg !283
  %104 = fmul double %95, %103, !dbg !284
  %105 = fadd double %104, 0xC04F300AE4CBA38D, !dbg !285
  %106 = fmul double %95, %105, !dbg !286
  %107 = fadd double %106, 0xC0251E0441B0E726, !dbg !287
  %108 = fmul double %95, %107, !dbg !288
  %109 = fadd double %108, 0xBFE63416E4BA7360, !dbg !289
  %110 = fmul double %95, %109, !dbg !290
  %111 = fadd double %110, 0xBF843412600D6435, !dbg !291
  %112 = fmul double %95, 0x3FAEEFF2EE749A62, !dbg !293
  %113 = fsub double 0x401A47EF8E484A93, %112, !dbg !293
  %114 = fmul double %95, %113, !dbg !294
  %115 = fadd double %114, 0x405B28A3EE48AE2C, !dbg !295
  br label %131, !dbg !296

; <label>:116:                                    ; preds = %92
  %117 = fmul double %95, 0x407E384E9BDC383F, !dbg !297
  %118 = fsub double 0xC09004616A2E5992, %117, !dbg !297
  %119 = fmul double %95, %118, !dbg !299
  %120 = fadd double %119, 0xC083EC881375F228, !dbg !300
  %121 = fmul double %95, %120, !dbg !301
  %122 = fadd double %121, 0xC064145D43C5ED98, !dbg !302
  %123 = fmul double %95, %122, !dbg !303
  %124 = fadd double %123, 0xC031C209555F995A, !dbg !304
  %125 = fmul double %95, %124, !dbg !305
  %126 = fadd double %125, 0xBFE993BA70C285DE, !dbg !306
  %127 = fmul double %95, %126, !dbg !307
  %128 = fadd double %127, 0xBF84341239E86F4A, !dbg !308
  %129 = fmul double %95, 0x403670E242712D62, !dbg !309
  %130 = fsub double 0x407DA874E79FE763, %129, !dbg !309
  br label %131

; <label>:131:                                    ; preds = %116, %97
  %132 = phi double [ %130, %116 ], [ %115, %97 ]
  %133 = phi double [ 0x40A3F219CEDF3BE6, %116 ], [ 0x407AD02157700314, %97 ]
  %134 = phi double [ 0x40A8FFB7688C246A, %116 ], [ 0x40842B1921EC2868, %97 ]
  %135 = phi double [ 0x409802EB189D5118, %116 ], [ 0x407B290DD58A1A71, %97 ]
  %136 = phi double [ 0x40745CAE221B9F0A, %116 ], [ 0x4061350C526AE721, %97 ]
  %137 = phi double [ 0x403E568B261D5190, %116 ], [ 0x4033A6B9BD707687, %97 ]
  %138 = phi double [ %128, %116 ], [ %111, %97 ], !dbg !310
  %139 = fmul double %95, %132, !dbg !311
  %140 = fadd double %139, %133, !dbg !311
  %141 = fmul double %95, %140, !dbg !311
  %142 = fadd double %141, %134, !dbg !311
  %143 = fmul double %95, %142, !dbg !311
  %144 = fadd double %143, %135, !dbg !311
  %145 = fmul double %95, %144, !dbg !311
  %146 = fadd double %145, %136, !dbg !311
  %147 = fmul double %95, %146, !dbg !311
  %148 = fadd double %147, %137, !dbg !311
  %149 = fmul double %95, %148, !dbg !310
  %150 = fadd double %149, 1.000000e+00, !dbg !310
  %151 = bitcast double %93 to i64, !dbg !313
  %152 = and i64 %151, -4294967296, !dbg !313
  %153 = bitcast i64 %152 to double, !dbg !313
  %154 = fmul double %153, %153, !dbg !314
  %155 = fsub double -5.625000e-01, %154, !dbg !315
  %156 = tail call double @__ieee754_exp(double %155) #3, !dbg !316
  %157 = fsub double %153, %93, !dbg !317
  %158 = fadd double %93, %153, !dbg !318
  %159 = fmul double %157, %158, !dbg !319
  %160 = fdiv double %138, %150, !dbg !320
  %161 = fadd double %159, %160, !dbg !321
  %162 = tail call double @__ieee754_exp(double %161) #3, !dbg !322
  %163 = fmul double %156, %162, !dbg !323
  %164 = icmp sgt i32 %4, -1, !dbg !324
  %165 = fdiv double %163, %93, !dbg !326
  br i1 %164, label %166, label %168, !dbg !327

; <label>:166:                                    ; preds = %131
  %167 = fsub double 1.000000e+00, %165, !dbg !328
  br label %170, !dbg !329

; <label>:168:                                    ; preds = %131
  %169 = fadd double %165, -1.000000e+00, !dbg !330
  br label %170, !dbg !331

; <label>:170:                                    ; preds = %89, %168, %166, %85, %83, %29, %26, %21, %7
  %171 = phi double [ %14, %7 ], [ %25, %21 ], [ %28, %26 ], [ %51, %29 ], [ %84, %83 ], [ %86, %85 ], [ %167, %166 ], [ %169, %168 ], [ %91, %89 ], !dbg !326
  ret double %171, !dbg !332
}

; Function Attrs: noredzone
declare dso_local double @fabs(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_exp(double) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local double @erfc(double) local_unnamed_addr #0 !dbg !333 {
  %2 = bitcast double %0 to i64, !dbg !353
  %3 = lshr i64 %2, 32, !dbg !353
  %4 = trunc i64 %3 to i32, !dbg !353
  %5 = and i32 %4, 2147483647, !dbg !355
  %6 = icmp ugt i32 %5, 2146435071, !dbg !357
  br i1 %6, label %7, label %14, !dbg !359

; <label>:7:                                      ; preds = %1
  %8 = lshr i64 %2, 62, !dbg !360
  %9 = trunc i64 %8 to i32, !dbg !360
  %10 = and i32 %9, 2, !dbg !360
  %11 = uitofp i32 %10 to double, !dbg !362
  %12 = fdiv double 1.000000e+00, %0, !dbg !363
  %13 = fadd double %12, %11, !dbg !364
  br label %171, !dbg !365

; <label>:14:                                     ; preds = %1
  %15 = icmp ult i32 %5, 1072365568, !dbg !366
  br i1 %15, label %16, label %50, !dbg !368

; <label>:16:                                     ; preds = %14
  %17 = icmp ult i32 %5, 1013972992, !dbg !369
  br i1 %17, label %18, label %20, !dbg !372

; <label>:18:                                     ; preds = %16
  %19 = fsub double 1.000000e+00, %0, !dbg !373
  br label %171, !dbg !374

; <label>:20:                                     ; preds = %16
  %21 = fmul double %0, %0, !dbg !375
  %22 = fmul double %21, 0x3EF8EAD6120016AC, !dbg !377
  %23 = fsub double 0xBF77A291236668E4, %22, !dbg !377
  %24 = fmul double %21, %23, !dbg !378
  %25 = fadd double %24, 0xBF9D2A51DBD7194F, !dbg !379
  %26 = fmul double %21, %25, !dbg !380
  %27 = fadd double %26, 0xBFD4CD7D691CB913, !dbg !381
  %28 = fmul double %21, %27, !dbg !382
  %29 = fadd double %28, 0x3FC06EBA8214DB68, !dbg !383
  %30 = fmul double %21, 0x3ED09C4342A26120, !dbg !385
  %31 = fsub double 0x3F215DC9221C1A10, %30, !dbg !385
  %32 = fmul double %21, %31, !dbg !386
  %33 = fadd double %32, 0x3F74D022C4D36B0F, !dbg !387
  %34 = fmul double %21, %33, !dbg !388
  %35 = fadd double %34, 0x3FB0A54C5536CEBA, !dbg !389
  %36 = fmul double %21, %35, !dbg !390
  %37 = fadd double %36, 0x3FD97779CDDADC09, !dbg !391
  %38 = fmul double %21, %37, !dbg !392
  %39 = fadd double %38, 1.000000e+00, !dbg !393
  %40 = fdiv double %29, %39, !dbg !395
  %41 = icmp slt i32 %4, 1070596096, !dbg !397
  %42 = fmul double %40, %0, !dbg !399
  br i1 %41, label %43, label %46, !dbg !401

; <label>:43:                                     ; preds = %20
  %44 = fadd double %42, %0, !dbg !402
  %45 = fsub double 1.000000e+00, %44, !dbg !404
  br label %171, !dbg !405

; <label>:46:                                     ; preds = %20
  %47 = fadd double %0, -5.000000e-01, !dbg !406
  %48 = fadd double %47, %42, !dbg !407
  %49 = fsub double 5.000000e-01, %48, !dbg !408
  br label %171, !dbg !409

; <label>:50:                                     ; preds = %14
  %51 = icmp ult i32 %5, 1072955392, !dbg !410
  br i1 %51, label %52, label %86, !dbg !412

; <label>:52:                                     ; preds = %50
  %53 = tail call double @fabs(double %0) #3, !dbg !413
  %54 = fadd double %53, -1.000000e+00, !dbg !415
  %55 = fmul double %54, 0x3F61BF380A96073F, !dbg !416
  %56 = fsub double 0x3FA22A36599795EB, %55, !dbg !416
  %57 = fmul double %54, %56, !dbg !417
  %58 = fadd double %57, 0xBFBC63983D3E28EC, !dbg !418
  %59 = fmul double %54, %58, !dbg !419
  %60 = fadd double %59, 0x3FD45FCA805120E4, !dbg !420
  %61 = fmul double %54, %60, !dbg !421
  %62 = fadd double %61, 0xBFD7D240FBB8C3F1, !dbg !422
  %63 = fmul double %54, %62, !dbg !423
  %64 = fadd double %63, 0x3FDA8D00AD92B34D, !dbg !424
  %65 = fmul double %54, %64, !dbg !425
  %66 = fadd double %65, 0xBF6359B8BEF77538, !dbg !426
  %67 = fmul double %54, 0x3F888B545735151D, !dbg !428
  %68 = fadd double %67, 0x3F8BEDC26B51DD1C, !dbg !429
  %69 = fmul double %54, %68, !dbg !430
  %70 = fadd double %69, 0x3FC02660E763351F, !dbg !431
  %71 = fmul double %54, %70, !dbg !432
  %72 = fadd double %71, 0x3FB2635CD99FE9A7, !dbg !433
  %73 = fmul double %54, %72, !dbg !434
  %74 = fadd double %73, 0x3FE14AF092EB6F33, !dbg !435
  %75 = fmul double %54, %74, !dbg !436
  %76 = fadd double %75, 0x3FBB3E6618EEE323, !dbg !437
  %77 = fmul double %54, %76, !dbg !438
  %78 = fadd double %77, 1.000000e+00, !dbg !439
  %79 = icmp sgt i32 %4, -1, !dbg !441
  %80 = fdiv double %66, %78, !dbg !443
  br i1 %79, label %81, label %83, !dbg !445

; <label>:81:                                     ; preds = %52
  %82 = fsub double 0x3FC3D4FA80000000, %80, !dbg !446
  br label %171, !dbg !448

; <label>:83:                                     ; preds = %52
  %84 = fadd double %80, 0x3FEB0AC160000000, !dbg !449
  %85 = fadd double %84, 1.000000e+00, !dbg !450
  br label %171, !dbg !451

; <label>:86:                                     ; preds = %50
  %87 = icmp ult i32 %5, 1077673984, !dbg !452
  br i1 %87, label %88, label %168, !dbg !453

; <label>:88:                                     ; preds = %86
  %89 = tail call double @fabs(double %0) #3, !dbg !454
  %90 = fmul double %89, %89, !dbg !455
  %91 = fdiv double 1.000000e+00, %90, !dbg !456
  %92 = icmp ult i32 %5, 1074191213, !dbg !457
  br i1 %92, label %93, label %112, !dbg !459

; <label>:93:                                     ; preds = %88
  %94 = fmul double %91, 0x4023A0EFC69AC25C, !dbg !460
  %95 = fsub double 0xC054526557E4D2F2, %94, !dbg !460
  %96 = fmul double %91, %95, !dbg !462
  %97 = fadd double %96, 0xC067135CEBCCABB2, !dbg !463
  %98 = fmul double %91, %97, !dbg !464
  %99 = fadd double %98, 0xC0644CB184282266, !dbg !465
  %100 = fmul double %91, %99, !dbg !466
  %101 = fadd double %100, 0xC04F300AE4CBA38D, !dbg !467
  %102 = fmul double %91, %101, !dbg !468
  %103 = fadd double %102, 0xC0251E0441B0E726, !dbg !469
  %104 = fmul double %91, %103, !dbg !470
  %105 = fadd double %104, 0xBFE63416E4BA7360, !dbg !471
  %106 = fmul double %91, %105, !dbg !472
  %107 = fadd double %106, 0xBF843412600D6435, !dbg !473
  %108 = fmul double %91, 0x3FAEEFF2EE749A62, !dbg !475
  %109 = fsub double 0x401A47EF8E484A93, %108, !dbg !475
  %110 = fmul double %91, %109, !dbg !476
  %111 = fadd double %110, 0x405B28A3EE48AE2C, !dbg !477
  br label %131, !dbg !478

; <label>:112:                                    ; preds = %88
  %113 = icmp slt i32 %4, 0, !dbg !479
  %114 = icmp ugt i32 %5, 1075314687, !dbg !482
  %115 = and i1 %113, %114, !dbg !483
  br i1 %115, label %171, label %116, !dbg !483

; <label>:116:                                    ; preds = %112
  %117 = fmul double %91, 0x407E384E9BDC383F, !dbg !484
  %118 = fsub double 0xC09004616A2E5992, %117, !dbg !484
  %119 = fmul double %91, %118, !dbg !485
  %120 = fadd double %119, 0xC083EC881375F228, !dbg !486
  %121 = fmul double %91, %120, !dbg !487
  %122 = fadd double %121, 0xC064145D43C5ED98, !dbg !488
  %123 = fmul double %91, %122, !dbg !489
  %124 = fadd double %123, 0xC031C209555F995A, !dbg !490
  %125 = fmul double %91, %124, !dbg !491
  %126 = fadd double %125, 0xBFE993BA70C285DE, !dbg !492
  %127 = fmul double %91, %126, !dbg !493
  %128 = fadd double %127, 0xBF84341239E86F4A, !dbg !494
  %129 = fmul double %91, 0x403670E242712D62, !dbg !495
  %130 = fsub double 0x407DA874E79FE763, %129, !dbg !495
  br label %131

; <label>:131:                                    ; preds = %116, %93
  %132 = phi double [ %130, %116 ], [ %111, %93 ]
  %133 = phi double [ 0x40A3F219CEDF3BE6, %116 ], [ 0x407AD02157700314, %93 ]
  %134 = phi double [ 0x40A8FFB7688C246A, %116 ], [ 0x40842B1921EC2868, %93 ]
  %135 = phi double [ 0x409802EB189D5118, %116 ], [ 0x407B290DD58A1A71, %93 ]
  %136 = phi double [ 0x40745CAE221B9F0A, %116 ], [ 0x4061350C526AE721, %93 ]
  %137 = phi double [ 0x403E568B261D5190, %116 ], [ 0x4033A6B9BD707687, %93 ]
  %138 = phi double [ %128, %116 ], [ %107, %93 ], !dbg !496
  %139 = fmul double %91, %132, !dbg !497
  %140 = fadd double %139, %133, !dbg !497
  %141 = fmul double %91, %140, !dbg !497
  %142 = fadd double %141, %134, !dbg !497
  %143 = fmul double %91, %142, !dbg !497
  %144 = fadd double %143, %135, !dbg !497
  %145 = fmul double %91, %144, !dbg !497
  %146 = fadd double %145, %136, !dbg !497
  %147 = fmul double %91, %146, !dbg !497
  %148 = fadd double %147, %137, !dbg !497
  %149 = fmul double %91, %148, !dbg !496
  %150 = fadd double %149, 1.000000e+00, !dbg !496
  %151 = bitcast double %89 to i64, !dbg !499
  %152 = and i64 %151, -4294967296, !dbg !499
  %153 = bitcast i64 %152 to double, !dbg !499
  %154 = fmul double %153, %153, !dbg !500
  %155 = fsub double -5.625000e-01, %154, !dbg !501
  %156 = tail call double @__ieee754_exp(double %155) #3, !dbg !502
  %157 = fsub double %153, %89, !dbg !503
  %158 = fadd double %89, %153, !dbg !504
  %159 = fmul double %157, %158, !dbg !505
  %160 = fdiv double %138, %150, !dbg !506
  %161 = fadd double %159, %160, !dbg !507
  %162 = tail call double @__ieee754_exp(double %161) #3, !dbg !508
  %163 = fmul double %156, %162, !dbg !509
  %164 = icmp sgt i32 %4, 0, !dbg !510
  %165 = fdiv double %163, %89, !dbg !512
  %166 = fsub double 2.000000e+00, %165, !dbg !513
  %167 = select i1 %164, double %165, double %166, !dbg !514
  ret double %167, !dbg !514

; <label>:168:                                    ; preds = %86
  %169 = icmp sgt i32 %4, 0, !dbg !515
  %170 = select i1 %169, double 0.000000e+00, double 2.000000e+00, !dbg !518
  br label %171, !dbg !518

; <label>:171:                                    ; preds = %168, %112, %83, %81, %46, %43, %18, %7
  %172 = phi double [ %13, %7 ], [ %19, %18 ], [ %45, %43 ], [ %49, %46 ], [ %82, %81 ], [ %85, %83 ], [ 2.000000e+00, %112 ], [ %170, %168 ], !dbg !519
  ret double %172, !dbg !520
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
!271 = !DILocation(line: 286, column: 16, scope: !269)
!272 = !DILocation(line: 288, column: 6, scope: !134)
!273 = !DILocation(line: 289, column: 13, scope: !134)
!274 = !DILocation(line: 289, column: 10, scope: !134)
!275 = !DILocation(line: 290, column: 7, scope: !276)
!276 = distinct !DILexicalBlock(scope: !134, file: !1, line: 290, column: 5)
!277 = !DILocation(line: 290, column: 5, scope: !134)
!278 = !DILocation(line: 292, column: 17, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !1, line: 290, column: 21)
!280 = !DILocation(line: 292, column: 10, scope: !279)
!281 = !DILocation(line: 292, column: 8, scope: !279)
!282 = !DILocation(line: 291, column: 41, scope: !279)
!283 = !DILocation(line: 291, column: 39, scope: !279)
!284 = !DILocation(line: 291, column: 34, scope: !279)
!285 = !DILocation(line: 291, column: 32, scope: !279)
!286 = !DILocation(line: 291, column: 27, scope: !279)
!287 = !DILocation(line: 291, column: 25, scope: !279)
!288 = !DILocation(line: 291, column: 20, scope: !279)
!289 = !DILocation(line: 291, column: 18, scope: !279)
!290 = !DILocation(line: 291, column: 13, scope: !279)
!291 = !DILocation(line: 291, column: 11, scope: !279)
!292 = !DILocation(line: 259, column: 9, scope: !134)
!293 = !DILocation(line: 294, column: 24, scope: !279)
!294 = !DILocation(line: 294, column: 17, scope: !279)
!295 = !DILocation(line: 294, column: 15, scope: !279)
!296 = !DILocation(line: 295, column: 2, scope: !279)
!297 = !DILocation(line: 297, column: 10, scope: !298)
!298 = distinct !DILexicalBlock(scope: !276, file: !1, line: 295, column: 9)
!299 = !DILocation(line: 296, column: 41, scope: !298)
!300 = !DILocation(line: 296, column: 39, scope: !298)
!301 = !DILocation(line: 296, column: 34, scope: !298)
!302 = !DILocation(line: 296, column: 32, scope: !298)
!303 = !DILocation(line: 296, column: 27, scope: !298)
!304 = !DILocation(line: 296, column: 25, scope: !298)
!305 = !DILocation(line: 296, column: 20, scope: !298)
!306 = !DILocation(line: 296, column: 18, scope: !298)
!307 = !DILocation(line: 296, column: 13, scope: !298)
!308 = !DILocation(line: 296, column: 11, scope: !298)
!309 = !DILocation(line: 299, column: 17, scope: !298)
!310 = !DILocation(line: 0, scope: !298)
!311 = !DILocation(line: 0, scope: !279)
!312 = !DILocation(line: 259, column: 11, scope: !134)
!313 = !DILocation(line: 302, column: 2, scope: !165)
!314 = !DILocation(line: 303, column: 24, scope: !134)
!315 = !DILocation(line: 303, column: 26, scope: !134)
!316 = !DILocation(line: 303, column: 8, scope: !134)
!317 = !DILocation(line: 303, column: 51, scope: !134)
!318 = !DILocation(line: 303, column: 57, scope: !134)
!319 = !DILocation(line: 303, column: 54, scope: !134)
!320 = !DILocation(line: 303, column: 62, scope: !134)
!321 = !DILocation(line: 303, column: 60, scope: !134)
!322 = !DILocation(line: 303, column: 35, scope: !134)
!323 = !DILocation(line: 303, column: 34, scope: !134)
!324 = !DILocation(line: 304, column: 7, scope: !325)
!325 = distinct !DILexicalBlock(scope: !134, file: !1, line: 304, column: 5)
!326 = !DILocation(line: 0, scope: !325)
!327 = !DILocation(line: 304, column: 5, scope: !134)
!328 = !DILocation(line: 304, column: 22, scope: !325)
!329 = !DILocation(line: 304, column: 12, scope: !325)
!330 = !DILocation(line: 304, column: 44, scope: !325)
!331 = !DILocation(line: 304, column: 33, scope: !325)
!332 = !DILocation(line: 305, column: 1, scope: !134)
!333 = distinct !DISubprogram(name: "erfc", scope: !1, file: !1, line: 308, type: !135, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !334)
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !348}
!335 = !DILocalVariable(name: "x", arg: 1, scope: !333, file: !1, line: 308, type: !7)
!336 = !DILocalVariable(name: "hx", scope: !333, file: !1, line: 314, type: !140)
!337 = !DILocalVariable(name: "ix", scope: !333, file: !1, line: 314, type: !140)
!338 = !DILocalVariable(name: "R", scope: !333, file: !1, line: 315, type: !7)
!339 = !DILocalVariable(name: "S", scope: !333, file: !1, line: 315, type: !7)
!340 = !DILocalVariable(name: "P", scope: !333, file: !1, line: 315, type: !7)
!341 = !DILocalVariable(name: "Q", scope: !333, file: !1, line: 315, type: !7)
!342 = !DILocalVariable(name: "s", scope: !333, file: !1, line: 315, type: !7)
!343 = !DILocalVariable(name: "y", scope: !333, file: !1, line: 315, type: !7)
!344 = !DILocalVariable(name: "z", scope: !333, file: !1, line: 315, type: !7)
!345 = !DILocalVariable(name: "r", scope: !333, file: !1, line: 315, type: !7)
!346 = !DILocalVariable(name: "gh_u", scope: !347, file: !1, line: 316, type: !154)
!347 = distinct !DILexicalBlock(scope: !333, file: !1, line: 316, column: 2)
!348 = !DILocalVariable(name: "sl_u", scope: !349, file: !1, line: 364, type: !154)
!349 = distinct !DILexicalBlock(scope: !350, file: !1, line: 364, column: 6)
!350 = distinct !DILexicalBlock(scope: !351, file: !1, line: 348, column: 23)
!351 = distinct !DILexicalBlock(scope: !333, file: !1, line: 348, column: 6)
!352 = !DILocation(line: 308, column: 21, scope: !333)
!353 = !DILocation(line: 316, column: 2, scope: !347)
!354 = !DILocation(line: 314, column: 12, scope: !333)
!355 = !DILocation(line: 317, column: 9, scope: !333)
!356 = !DILocation(line: 314, column: 15, scope: !333)
!357 = !DILocation(line: 318, column: 7, scope: !358)
!358 = distinct !DILexicalBlock(scope: !333, file: !1, line: 318, column: 5)
!359 = !DILocation(line: 318, column: 5, scope: !333)
!360 = !DILocation(line: 320, column: 42, scope: !361)
!361 = distinct !DILexicalBlock(scope: !358, file: !1, line: 318, column: 21)
!362 = !DILocation(line: 320, column: 13, scope: !361)
!363 = !DILocation(line: 320, column: 50, scope: !361)
!364 = !DILocation(line: 320, column: 46, scope: !361)
!365 = !DILocation(line: 320, column: 6, scope: !361)
!366 = !DILocation(line: 323, column: 8, scope: !367)
!367 = distinct !DILexicalBlock(scope: !333, file: !1, line: 323, column: 5)
!368 = !DILocation(line: 323, column: 5, scope: !333)
!369 = !DILocation(line: 324, column: 12, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !1, line: 324, column: 9)
!371 = distinct !DILexicalBlock(scope: !367, file: !1, line: 323, column: 22)
!372 = !DILocation(line: 324, column: 9, scope: !371)
!373 = !DILocation(line: 325, column: 13, scope: !370)
!374 = !DILocation(line: 325, column: 3, scope: !370)
!375 = !DILocation(line: 326, column: 11, scope: !371)
!376 = !DILocation(line: 315, column: 21, scope: !333)
!377 = !DILocation(line: 327, column: 36, scope: !371)
!378 = !DILocation(line: 327, column: 29, scope: !371)
!379 = !DILocation(line: 327, column: 27, scope: !371)
!380 = !DILocation(line: 327, column: 22, scope: !371)
!381 = !DILocation(line: 327, column: 20, scope: !371)
!382 = !DILocation(line: 327, column: 15, scope: !371)
!383 = !DILocation(line: 327, column: 13, scope: !371)
!384 = !DILocation(line: 315, column: 23, scope: !333)
!385 = !DILocation(line: 328, column: 43, scope: !371)
!386 = !DILocation(line: 328, column: 36, scope: !371)
!387 = !DILocation(line: 328, column: 34, scope: !371)
!388 = !DILocation(line: 328, column: 29, scope: !371)
!389 = !DILocation(line: 328, column: 27, scope: !371)
!390 = !DILocation(line: 328, column: 22, scope: !371)
!391 = !DILocation(line: 328, column: 20, scope: !371)
!392 = !DILocation(line: 328, column: 15, scope: !371)
!393 = !DILocation(line: 328, column: 13, scope: !371)
!394 = !DILocation(line: 315, column: 17, scope: !333)
!395 = !DILocation(line: 329, column: 11, scope: !371)
!396 = !DILocation(line: 315, column: 19, scope: !333)
!397 = !DILocation(line: 330, column: 12, scope: !398)
!398 = distinct !DILexicalBlock(scope: !371, file: !1, line: 330, column: 9)
!399 = !DILocation(line: 0, scope: !400)
!400 = distinct !DILexicalBlock(scope: !398, file: !1, line: 332, column: 13)
!401 = !DILocation(line: 330, column: 9, scope: !371)
!402 = !DILocation(line: 331, column: 16, scope: !403)
!403 = distinct !DILexicalBlock(scope: !398, file: !1, line: 330, column: 26)
!404 = !DILocation(line: 331, column: 13, scope: !403)
!405 = !DILocation(line: 331, column: 3, scope: !403)
!406 = !DILocation(line: 334, column: 10, scope: !400)
!407 = !DILocation(line: 334, column: 5, scope: !400)
!408 = !DILocation(line: 335, column: 22, scope: !400)
!409 = !DILocation(line: 335, column: 10, scope: !400)
!410 = !DILocation(line: 338, column: 8, scope: !411)
!411 = distinct !DILexicalBlock(scope: !333, file: !1, line: 338, column: 5)
!412 = !DILocation(line: 338, column: 5, scope: !333)
!413 = !DILocation(line: 339, column: 10, scope: !414)
!414 = distinct !DILexicalBlock(scope: !411, file: !1, line: 338, column: 22)
!415 = !DILocation(line: 339, column: 17, scope: !414)
!416 = !DILocation(line: 340, column: 50, scope: !414)
!417 = !DILocation(line: 340, column: 43, scope: !414)
!418 = !DILocation(line: 340, column: 41, scope: !414)
!419 = !DILocation(line: 340, column: 36, scope: !414)
!420 = !DILocation(line: 340, column: 34, scope: !414)
!421 = !DILocation(line: 340, column: 29, scope: !414)
!422 = !DILocation(line: 340, column: 27, scope: !414)
!423 = !DILocation(line: 340, column: 22, scope: !414)
!424 = !DILocation(line: 340, column: 20, scope: !414)
!425 = !DILocation(line: 340, column: 15, scope: !414)
!426 = !DILocation(line: 340, column: 13, scope: !414)
!427 = !DILocation(line: 315, column: 13, scope: !333)
!428 = !DILocation(line: 341, column: 50, scope: !414)
!429 = !DILocation(line: 341, column: 48, scope: !414)
!430 = !DILocation(line: 341, column: 43, scope: !414)
!431 = !DILocation(line: 341, column: 41, scope: !414)
!432 = !DILocation(line: 341, column: 36, scope: !414)
!433 = !DILocation(line: 341, column: 34, scope: !414)
!434 = !DILocation(line: 341, column: 29, scope: !414)
!435 = !DILocation(line: 341, column: 27, scope: !414)
!436 = !DILocation(line: 341, column: 22, scope: !414)
!437 = !DILocation(line: 341, column: 20, scope: !414)
!438 = !DILocation(line: 341, column: 15, scope: !414)
!439 = !DILocation(line: 341, column: 13, scope: !414)
!440 = !DILocation(line: 315, column: 15, scope: !333)
!441 = !DILocation(line: 342, column: 11, scope: !442)
!442 = distinct !DILexicalBlock(scope: !414, file: !1, line: 342, column: 9)
!443 = !DILocation(line: 0, scope: !444)
!444 = distinct !DILexicalBlock(scope: !442, file: !1, line: 344, column: 13)
!445 = !DILocation(line: 342, column: 9, scope: !414)
!446 = !DILocation(line: 343, column: 33, scope: !447)
!447 = distinct !DILexicalBlock(scope: !442, file: !1, line: 342, column: 16)
!448 = !DILocation(line: 343, column: 24, scope: !447)
!449 = !DILocation(line: 345, column: 10, scope: !444)
!450 = !DILocation(line: 345, column: 26, scope: !444)
!451 = !DILocation(line: 345, column: 16, scope: !444)
!452 = !DILocation(line: 348, column: 9, scope: !351)
!453 = !DILocation(line: 348, column: 6, scope: !333)
!454 = !DILocation(line: 349, column: 10, scope: !350)
!455 = !DILocation(line: 350, column: 17, scope: !350)
!456 = !DILocation(line: 350, column: 14, scope: !350)
!457 = !DILocation(line: 351, column: 11, scope: !458)
!458 = distinct !DILexicalBlock(scope: !350, file: !1, line: 351, column: 9)
!459 = !DILocation(line: 351, column: 9, scope: !350)
!460 = !DILocation(line: 353, column: 17, scope: !461)
!461 = distinct !DILexicalBlock(scope: !458, file: !1, line: 351, column: 25)
!462 = !DILocation(line: 353, column: 10, scope: !461)
!463 = !DILocation(line: 353, column: 8, scope: !461)
!464 = !DILocation(line: 352, column: 45, scope: !461)
!465 = !DILocation(line: 352, column: 43, scope: !461)
!466 = !DILocation(line: 352, column: 38, scope: !461)
!467 = !DILocation(line: 352, column: 36, scope: !461)
!468 = !DILocation(line: 352, column: 31, scope: !461)
!469 = !DILocation(line: 352, column: 29, scope: !461)
!470 = !DILocation(line: 352, column: 24, scope: !461)
!471 = !DILocation(line: 352, column: 22, scope: !461)
!472 = !DILocation(line: 352, column: 17, scope: !461)
!473 = !DILocation(line: 352, column: 15, scope: !461)
!474 = !DILocation(line: 315, column: 9, scope: !333)
!475 = !DILocation(line: 355, column: 24, scope: !461)
!476 = !DILocation(line: 355, column: 17, scope: !461)
!477 = !DILocation(line: 355, column: 15, scope: !461)
!478 = !DILocation(line: 356, column: 6, scope: !461)
!479 = !DILocation(line: 357, column: 8, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !1, line: 357, column: 6)
!481 = distinct !DILexicalBlock(scope: !458, file: !1, line: 356, column: 13)
!482 = !DILocation(line: 357, column: 14, scope: !480)
!483 = !DILocation(line: 357, column: 10, scope: !480)
!484 = !DILocation(line: 359, column: 10, scope: !481)
!485 = !DILocation(line: 358, column: 45, scope: !481)
!486 = !DILocation(line: 358, column: 43, scope: !481)
!487 = !DILocation(line: 358, column: 38, scope: !481)
!488 = !DILocation(line: 358, column: 36, scope: !481)
!489 = !DILocation(line: 358, column: 31, scope: !481)
!490 = !DILocation(line: 358, column: 29, scope: !481)
!491 = !DILocation(line: 358, column: 24, scope: !481)
!492 = !DILocation(line: 358, column: 22, scope: !481)
!493 = !DILocation(line: 358, column: 17, scope: !481)
!494 = !DILocation(line: 358, column: 15, scope: !481)
!495 = !DILocation(line: 361, column: 17, scope: !481)
!496 = !DILocation(line: 0, scope: !481)
!497 = !DILocation(line: 0, scope: !461)
!498 = !DILocation(line: 315, column: 11, scope: !333)
!499 = !DILocation(line: 364, column: 6, scope: !349)
!500 = !DILocation(line: 365, column: 28, scope: !350)
!501 = !DILocation(line: 365, column: 30, scope: !350)
!502 = !DILocation(line: 365, column: 12, scope: !350)
!503 = !DILocation(line: 366, column: 20, scope: !350)
!504 = !DILocation(line: 366, column: 26, scope: !350)
!505 = !DILocation(line: 366, column: 23, scope: !350)
!506 = !DILocation(line: 366, column: 31, scope: !350)
!507 = !DILocation(line: 366, column: 29, scope: !350)
!508 = !DILocation(line: 366, column: 4, scope: !350)
!509 = !DILocation(line: 365, column: 38, scope: !350)
!510 = !DILocation(line: 367, column: 11, scope: !511)
!511 = distinct !DILexicalBlock(scope: !350, file: !1, line: 367, column: 9)
!512 = !DILocation(line: 0, scope: !511)
!513 = !DILocation(line: 367, column: 42, scope: !511)
!514 = !DILocation(line: 367, column: 9, scope: !350)
!515 = !DILocation(line: 369, column: 11, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !1, line: 369, column: 9)
!517 = distinct !DILexicalBlock(scope: !351, file: !1, line: 368, column: 9)
!518 = !DILocation(line: 369, column: 15, scope: !516)
!519 = !DILocation(line: 0, scope: !516)
!520 = !DILocation(line: 371, column: 1, scope: !333)
